const { mysql } = require('../qcloud')
const TABLE_NAME = 'cExchange'
const TABLE_INFO_NAME = 'cExchangeInfo'
const USER_TABLE_NAME = 'cUserInfo'
const TABLE_ITEM_INFO_NAME = 'cExchangeItemInfo'
const BONUSE_INFO_TABLE = 'cBonusInfo'
const ADDRESS_TABLE = 'cAddress'
// const COMPANY_TABLE = 'cCompanyInfo'

function where2Query (where) {
    let whereList = []
    let paramList = []
    if (where == null || where.length === 0) {
        return {
            whereList,
            paramList
        }
    }
    where.forEach((item) => {
        if (item.values && item.values.length > 0) {
            whereList.push(`${item.name} in (${item.values.map((val) => {
                paramList.push(val)
                return '?'
            }).join(',')})`)
        } else if (item.value) {
            whereList.push(`${item.name} = ?`)
            paramList.push(item.value)
        } else if (item.content) {
            whereList.push(item.content)
        }
    })
    return {
        whereList,
        paramList
    }
}

const ATTR_LIST = ['bonus', 'gid', 'gift_desc', 'gift_name', 'gift_icon', 'num', 'rid']

// const UPDATE_RAW = ATTR_LIST.map((name) => {
//     return name + '=values(' + name + ')'
// }).join(',')
function list2Values (data) {
    return data.map((item) => {
        return `(${ATTR_LIST.map(() => {
            return '?'
        })
        })`
    }).join(',')
}

function flatternObj2List (data) {
    return data.reduce((ret, item) => {
        return ret.concat(ATTR_LIST.map((attr) => {
            return item[attr]
        }))
    }, [])
}

module.exports = {
    getList: function (where) {
        return mysql(TABLE_NAME).select().where(Object.assign({}, where, {
            flag: true
        })).orderBy('flag', 'desc').orderBy('threshold', 'asc')
        
        // .orderByRaw('threshold desc,')
    },
    addExchange: async function (item) {
        item.flag = true
        const ret = await mysql(TABLE_NAME).select().where({
            gift_name: item.gift_name,
            code_id: item.code_id
        })
        if (ret && ret.length > 0) {
            return
        }
        return mysql(TABLE_NAME).insert(item)
    },
    editExchange: async function (item) {
        return mysql(TABLE_NAME).update(item).where({
            id: item.id
        })
    },
    /* 用户积分兑换 */
    doExchange: async function (exchangeRecords, uid, addressId) {
        const exchangeInfo = {
            addressId,
            uid,
            status: 0 // 0 - 待兑换
        }
        const exchangeInfoMap = {}
        const userInfo = await mysql(USER_TABLE_NAME).select().where({uid})
        const records = exchangeRecords.filter((item) => {
            return item.num > 0
        })
        const user = userInfo[0]
        const totalExchangeBonus = records.reduce((total, item) => {
            total += item.bonus * (item.num)
            return total
        }, 0)
        if (totalExchangeBonus > user.bonus) {
            throw new Error('兑换积分超过当前积分')
        }
        const newBonus = user.bonus - totalExchangeBonus
        return await mysql.transaction(function (trx) {
            return new Promise(async(resolve, reject) => {
                try {
                    /* 确保奖品兑换库存足够 */
                    const gids = records.map((item) => {
                        exchangeInfoMap[item.gid] = item
                        return item.gid
                    })
                    const exchangeInfoQueryRet = await mysql(TABLE_NAME).select().whereIn('id', gids)
                    const exchangeList = exchangeInfoQueryRet
                    exchangeList.forEach((item) => {
                        const red = exchangeInfoMap[item.id]
                        const newReservce = item.reserve - red.num
                        if (newReservce < 0) {
                            return reject(new Error(`${item.gift_name}库存不足`))
                        }
                        item.reserve = newReservce
                    })
                    //更新库存
                    for (let i = 0; i < exchangeList.length; i++) {
                        const exchangeItem = exchangeList[i]
                        await trx(TABLE_NAME).update('reserve', exchangeItem.reserve).where({
                            id: exchangeItem.id
                        })
                    }
                    const result = await trx(TABLE_INFO_NAME).insert(exchangeInfo)
                    const rid = result[0]
                    exchangeInfo.id = rid
                    records.forEach((item) => {
                        item.rid = rid
                        item.gift_icon = item.gift_icon || ''
                    })
                    const list = await trx.raw(
                        `insert into ${TABLE_ITEM_INFO_NAME} (${ATTR_LIST.join(',')}) values ${list2Values(records)};`,
                        flatternObj2List(records)
                    )
                    exchangeInfo.subItems = list
                    await trx(USER_TABLE_NAME).update({
                        bonus: newBonus
                    }).where({
                        uid
                    })
                    return resolve(exchangeInfo)
                } catch (e) {
                    return reject(e)
                }
            })
        })
    },
    completeExchange: async function (id, uid) { //完成兑换订单
        const userInfo = await mysql(USER_TABLE_NAME).select().where({uid})
        const user = userInfo[0]
        const exchangeInfoRet = await mysql(TABLE_INFO_NAME).select().where({id})
        const exchangeInfo = exchangeInfoRet[0]
        if (exchangeInfo.status === 1) {
            throw new Error('该订单已完成')
        }
        const subResult = await mysql(TABLE_ITEM_INFO_NAME).select().where({rid: exchangeInfo.id})
        const addBonus = subResult.reduce((ret, item) => {
            ret += item.bonus * item.num
            return ret
        }, 0)
        const curBonus = user.bonus + addBonus
        return await mysql.transaction(function (trx) {
            return new Promise(async(resolve, reject) => {
                try {
                    await trx(TABLE_INFO_NAME).update('status', 1).where({ //修改订单为已完成状态
                        id
                    })
                    await trx(BONUSE_INFO_TABLE).insert({
                        origin_bonus: curBonus,
                        add_bonus: -addBonus,
                        new_bonus: user.bonus,
                        type: 6, //积分兑换
                        readed: false,
                        uid,
                        type_name: '积分兑换'
                    })
                    return resolve()
                } catch (e) {
                    return reject(e)
                }
            })
        })
    },
    cancelExchange: async function (id, uid) { //取消兑换订单
        const userInfo = await mysql(USER_TABLE_NAME).select().where({uid})
        const user = userInfo[0]
        const exchangeInfoRet = await mysql(TABLE_INFO_NAME).select().where({id})
        const exchangeInfo = exchangeInfoRet[0]
        if(exchangeInfo.status === -1) {
            throw new Error('该订单已被取消')
        }
        const subResult = await mysql(TABLE_ITEM_INFO_NAME).select().where({rid: exchangeInfo.id})
        const gids = []
        const gidMap = {}
        const addBonus = subResult.reduce((ret, item) => {
            gids.push(item.gid)
            gidMap[item.gid] = item
            ret += item.bonus * item.num
            return ret
        }, 0)
        return await mysql.transaction(function (trx) {
            return new Promise(async(resolve, reject) => {
                try {
                    await trx(TABLE_INFO_NAME).update('status', -1).where({ //修改订单为已完成状态
                        id
                    })
                    await trx(USER_TABLE_NAME).update('bonus', user.bonus + addBonus).where({uid})
    
                    const exchangeList = await mysql(TABLE_NAME).select().whereIn('id', gids)
                    /* 更新库存 */
                    for (let i = 0; i < exchangeList.length; i++) {
                        const exchangeItem = exchangeList[i]
                        const gidItem = gidMap[exchangeItem.id]
                        exchangeItem.reserve += gidItem.num
                        await trx(TABLE_NAME).update('reserve', exchangeItem.reserve).where({
                            id: exchangeItem.id
                        })
                    }
                    return resolve()
                } catch (e) {
                    return reject(e)
                }
            })
        })
    },
    updateExchangeRecordRemark: async function (id, remark) { // 修改兑换订单的备注信息
        return await mysql(TABLE_INFO_NAME).update({
            remark
        }).where({
            id
        })
    },
    getExchangeRecordListFromAdmin: async function (pageSize, current, where, search, order = {}) {
        const {whereList, paramList} = where2Query(where)
        const offset = current >= 1 ? ((current - 1) * pageSize) : 0
        const selectSchema = `a.*,b.companyName,b.avatarUrl,b.companyid,b.nickName,b.realName,b.total_bonus,b.bonus,b.aid,c.name as addrName,c.phone as addrPhone,c.province,c.city,c.region,c.info`
        const totalSchema = `count(*) as total`
        if (search) {
            const searchVal = `%${search}%`
            paramList.push(searchVal, searchVal)
            whereList.push(`(realName like ? or nickName like ?)`)
        }
        const whereStr = `${whereList.length > 0 ? 'where' : ''} ${whereList.join('and')}`
        const totalResult = await mysql.raw(`SELECT ${totalSchema} FROM cAuth.${TABLE_INFO_NAME} as a  left join cAuth.${USER_TABLE_NAME} as b on a.uid = b.uid left join cAuth.${ADDRESS_TABLE} as c on a.addressId = c.id  ${whereStr}`, paramList)
        const resultInfos = await mysql.raw(`SELECT ${selectSchema} FROM cAuth.${TABLE_INFO_NAME} as a  left join cAuth.${USER_TABLE_NAME} as b on a.uid = b.uid left join cAuth.${ADDRESS_TABLE} as c on a.addressId = c.id
        ${whereStr} order by ${order.column || 'create_time'} ${order.order || 'desc'} limit ${pageSize} offset ${offset}`, paramList)
        const resultMap = {}
        const result = resultInfos[0]
        // console.log('result :',result);
        const ridList = result.map((item) => {
            item.subItems = []
            resultMap[item.id] = item
            return item.id
        })
        if (ridList.length > 0) {
            const subResult = await mysql(TABLE_ITEM_INFO_NAME).select().whereIn('rid', ridList)
            subResult.forEach((subItem) => {
                const { rid } = subItem
                const item = resultMap[rid]
                if (item) {
                    item.subItems.push(subItem)
                }
            })
        }
        // console.log('totalResult :',totalResult);
        return {
            total: totalResult[0][0].total,
            pageSize,
            current,
            data: result
        }
    }
}
