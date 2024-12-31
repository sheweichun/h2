/* eslint-disable camelcase */
/* eslint-disable no-unused-vars */
const { mysql } = require('../qcloud')
const USER_TABLE = 'cUserInfo'
const TABLE_NAME = 'cMember' // 会员等级
const GROUP_TABLE_NAME = 'cRightsGroup' // 权益类别
const RRIGHTS_TABLE_NAME = 'cRights' // 权益
const MEMEBER_RIGHTS_TABLE_NAME = 'cMemeberRight' // 会员的权益列表

// ALTER TABLE `cAuth`.`cUserInfo`
// ADD COLUMN `member` INT NULL DEFAULT 0 COMMENT '会员积分' AFTER `phone`,
// ADD COLUMN `member_update` DATETIME NULL DEFAULT CURRENT_TIMESTAMP COMMENT '会员积分更新日期' AFTER `member`,
// ADD COLUMN `member_level` VARCHAR(45) NULL COMMENT '会员等级' AFTER `member_update`;

const USER_MEMEBER_TABLE = 'cUserMember' // 用户拥有的权益

const USER_MEMBER_BONUS_TABLE = 'cUserMemberBonus' // 用户积分变化情况
const USER_MEMBER_EXCHANGE_TABLE = 'cUserMemberExchange' // 用户积分兑换

// const SHARE_INFO_TABLE = 'cShareInfo'
// const USER_TABLE_NAME = 'cUserInfo'

const ATTR_LIST = ['mid', 'rid', 'num', 'display', 'id']

const USER_RIGHTS_ATTR_LIST = ['uid', 'mid', 'rid', 'reserved_num', 'create_time', 'display']

function getMemeberFromMemberBonus (value, memebers) {
    let target;
    (memebers || []).forEach((mem) => {
        const {bonus} = mem
        if (value >= bonus) {
            if (!target) {
                target = mem
            } else {
                if (bonus >= target.bonus) {
                    target = mem
                }
            }
        }
    })
    return target
}

// const UPDATE_RAW = ATTR_LIST.map((name) => {
//     return name + '=values(' + name + ')'
// }).join(',')

function where2QueryAndParams (where, scope) {
    const queryList = []
    const paramList = []
    Object.keys(where).forEach((name) => {
        const value = where[name]
        queryList.push(`${scope ? `${scope}.${name}` : name} = ?`)
        paramList.push(value)
    })
    return {
        query: queryList.length > 0 ? `where ${queryList.join(' and ')}` : '',
        params: paramList
    }
}

function isNull (target, names) {
    if (!target) return true
    if (Array.isArray(names)) {
        return names.some((name) => {
            const val = target[name]
            if (val == null || val === '') {
                return true
            }
            return false
        })
    } else {
        const val = target[names]
        if (val == null || val === '') {
            return true
        }
        return false
    }
}

function list2Values (data, attrList) {
    return data.map((item) => {
        return `(${(attrList || ATTR_LIST).map(() => {
            return '?'
        })
        })`
    }).join(',')
}

// const UPDATE_RAW = ATTR_LIST.map((name) => {
//     return name + '=values(' + name + ')'
// }).join(',')

function getUpdateRaw (attrList) {
    return (attrList || ATTR_LIST).map((name) => {
        return name + '=values(' + name + ')'
    }).join(',')
}

function flatternObj2List (data, attrList) {
    return data.reduce((ret, item) => {
        return ret.concat((attrList || ATTR_LIST).map((attr) => {
            return item[attr]
        }))
    }, [])
}

module.exports = {
    getMembersList: async function (where) {
        return await mysql(TABLE_NAME).select().where(where || {})
    },
    updateMember: async function (item) {
        item.update_time = new Date()
        return await mysql(TABLE_NAME).update(item).where({
            id: item.id
        })
    },
    addGroup: async function (item) {
        return await mysql(GROUP_TABLE_NAME).insert(item)
    },
    addUserMemberBonus: async function (item) {
        if (!item || !item.bonus) return
        item.bonus = parseInt(item.bonus)
        if (isNaN(item.bonus)) return
        const now = new Date()
        item.create_time = now
        const { uid } = item

        return await mysql.transaction(function (trx) {
            return new Promise(async (resolve, reject) => {
                try {
                    const users = await mysql(USER_TABLE).select().where({
                        uid
                    })
                    const user = users[0]
                    const members = await mysql(TABLE_NAME).select()
                    const curBonus = (user.member || 0)
                    item.pre_bonus = curBonus
                    const newBonus = (user.member || 0) + item.bonus
                    item.new_bonus = newBonus
                    const target = getMemeberFromMemberBonus(newBonus, members)
                    if (!target) {
                        return reject(new Error('取不到对应的会员等级信息'))
                    }
                    if ((user.member_level + '') !== (target.id + '')) { // 会员发生变化
                        // console.log('会员等级发生变化 : ', user.member_level, target.id, user.member_level !== target.id)
                        // const de
                        const userRightExchanges = await trx(USER_MEMBER_EXCHANGE_TABLE).select().where({
                            uid
                        }) // 该用户之前的积分兑换情况
                        const userRightExchangeMap = userRightExchanges.reduce((ret, item) => {
                            if (!ret[item.rid]) {
                                ret[item.rid] = 0
                            }
                            ret[item.rid] += item.exchange_num
                            return ret
                        }, {})
                        const memberRights = await trx(MEMEBER_RIGHTS_TABLE_NAME).select().where({
                            mid: target.id
                        })
                        if (!memberRights || memberRights.length === 0) {
                            return reject(new Error('取不到当前会员的权益信息'))
                        }
                        // const needUpdateUserMemberRights = []
                        // const needInsertUserMemberRights = []
                        const needUpdateOrInsertUserMemberRights = []
                        memberRights.forEach((m) => {
                            const usedNum = userRightExchangeMap[m.rid]
                            const newItem = {
                                uid,
                                mid: target.id,
                                rid: m.rid,
                                reserved_num: m.num,
                                create_time: new Date(),
                                display: 1
                            }
                            if (usedNum != null) {
                                m.num -= usedNum
                                if (m.num < 0) {
                                    m.num = 0
                                }
                                newItem.reserved_num = m.num
                                // needUpdateUserMemberRights.push(newItem) // 需要更新的
                            }
                            // else {
                            //     needInsertUserMemberRights.push(newItem) // 需要新增的
                            // }
                            needUpdateOrInsertUserMemberRights.push(newItem)
                        })
                        await trx(USER_MEMEBER_TABLE).update({ // 让用户当前所有的权益失效
                            display: 0
                        }).where({
                            uid
                        })
                        const rawQuery = 'insert into ' + USER_MEMEBER_TABLE + ' (' + USER_RIGHTS_ATTR_LIST.join(',') + ') values ' + list2Values(needUpdateOrInsertUserMemberRights, USER_RIGHTS_ATTR_LIST) + ' on duplicate key update ' + getUpdateRaw(USER_RIGHTS_ATTR_LIST) + ';'
                        // console.log('rawQuery :', rawQuery)
                        // console.log('abc :', flatternObj2List(needUpdateOrInsertUserMemberRights));
                        await trx.raw(
                            rawQuery,
                            flatternObj2List(needUpdateOrInsertUserMemberRights, USER_RIGHTS_ATTR_LIST)
                        )
                    }
                    // todo 如果会员等级有变化 需要重新处理该用户的会员权益信息
                    await trx(USER_TABLE).update({
                        member: newBonus,
                        member_update: now,
                        member_level: target.id
                    }).where({ // 修改用户会员积分和等级
                        uid: uid
                    })

                    await trx(USER_MEMBER_BONUS_TABLE).insert(item)
                    return resolve()
                } catch (e) {
                    return reject(e)
                }
            })
        })
    },
    // initUserMemberRights: async function (user) { //初始化权益
    //     if(!user || user.member_level !== null && user.member_level !== '') return
    //     return await mysql.transaction(function (trx) {
    //         return new Promise(async (resolve, reject) => {
    //             try {
    //                 const members = await trx(TABLE_NAME).where('bonus', 0)
    //                 const member = members[0]
    //                 if(!member) return resolve()

    //                 resolve()
    //             }catch( e ){
    //                 reject(e)
    //             }
    //         })
    //     })
    // },
    getMemberBonusList: async function (params) {
        const { size, current, where } = params || {}
        let offset = current >= 1 ? ((current - 1) * size) : 0
        const count = await mysql(USER_MEMBER_BONUS_TABLE).count('* as total').where(where)
        const result = await mysql(USER_MEMBER_BONUS_TABLE).select().where(where).orderBy('create_time', 'desc').limit(size).offset(offset)
        return {
            total: count[0].total,
            size,
            current,
            data: result
        }
    },
    addMemberRightsExchange: async function (item) {
        if (isNull(item, ['uid', 'mid', 'rid', 'exchange_num'])) {
            return Promise.reject('参数不全')
        }
        item.exchange_num = parseInt(item.exchange_num)
        if (isNaN(item.exchange_num) || item.exchange_num <= 0) {
            return Promise.reject('参数exchange_num校验失败')
        }
        item.create_time = new Date()
        return await mysql.transaction(function (trx) {
            return new Promise(async (resolve, reject) => {
                try {
                    const whereQuery = {
                        uid: item.uid,
                        mid: item.mid,
                        rid: item.rid
                    }
                    const resp = await trx(USER_MEMEBER_TABLE).select().where(whereQuery)
                    const userMember = (resp || [])[0]
                    if (!userMember) {
                        return reject('无该权益')
                    }
                    const { reserved_num } = userMember
                    if (item.exchange_num > reserved_num) {
                        return reject('兑换份额超出')
                    }
                    item.prev_num = reserved_num
                    const newNum = userMember.reserved_num - item.exchange_num
                    item.new_num = newNum
                    await trx(USER_MEMEBER_TABLE).update({
                        reserved_num: newNum
                    }).where(whereQuery)
                    const result = await trx(USER_MEMBER_EXCHANGE_TABLE).insert(item)
                    return resolve(result)
                } catch (e) {
                    return reject(e)
                }
            })
        })
    },
    getMemberRightsExchangeList: async function (params) {
        const { size, current, where } = params || {}
        let offset = current >= 1 ? ((current - 1) * size) : 0
        const count = await mysql(USER_MEMBER_EXCHANGE_TABLE).count('* as total').where(where)
        const ret = where2QueryAndParams(where || {}, 'a')
        const result = await mysql.raw(`SELECT a.exchange_num, a.prev_num, a.new_num, a.create_time as exchange_time, b.name, b.description, b.unit, c.label FROM ${USER_MEMBER_EXCHANGE_TABLE} as a left join ${RRIGHTS_TABLE_NAME} as b on a.rid = b.id left join ${TABLE_NAME} as c on a.mid = c.id ${ret.query}  order by exchange_time desc limit ${size} offset ${offset}`, ret.params)
        return {
            total: count[0].total,
            size,
            current,
            data: result[0]
        }
    },
    getRightsGroupList: async function (where) {
        return await mysql(GROUP_TABLE_NAME).select().where(where || {})
    },
    updateRightsGroup: async function (item) {
        return await mysql(GROUP_TABLE_NAME).update(item).where({
            id: item.id
        })
    },
    getRights: async function () {
        const result = (await mysql.raw(`select a.*, b.name as cate_name, b.icon as icon from ${RRIGHTS_TABLE_NAME} as a left join ${GROUP_TABLE_NAME} as b on a.categoryid = b.id;`) || [])[0] || []
        const data = (await mysql.raw(`select a.*, b.* from ${MEMEBER_RIGHTS_TABLE_NAME} as a left join ${TABLE_NAME} as b on a.mid = b.id`) || [])[0] || []
        const dataMap = data.reduce((ret, el) => {
            let target = ret[el.rid]
            if (!target) {
                target = []
                ret[el.rid] = target
            }
            target.push(el)
            return ret
        }, {})
        result.forEach((item) => {
            item.rights = dataMap[item.id] || []
        })
        return result
    },
    addRights: async function (item, memRights) {
        return await mysql.transaction(function (trx) {
            return new Promise(async (resolve, reject) => {
                try {
                    memRights = memRights.filter((m) => {
                        return m.mid != null && m.num != null
                    })
                    if (memRights.length === 0) {
                        reject('未设置任何会员登记')
                    }
                    const insertIds = await trx(RRIGHTS_TABLE_NAME).insert(item)
                    const itemId = insertIds.length > 0 ? insertIds[0] : ''
                    memRights.forEach((r) => {
                        r.rid = itemId
                        r.id = `${r.rid}-${r.mid}`
                        r.display = item.display
                    })
                    await trx.raw(
                        `insert into ${MEMEBER_RIGHTS_TABLE_NAME} (${ATTR_LIST.join(',')}) values ${list2Values(memRights)};`,
                        flatternObj2List(memRights)
                    )
                    for (let i = 0; i < memRights.length; i++) {
                        const m = memRights[i]
                        // console.log('m :', m.mid)
                        await trx.raw(`
                        insert into ${USER_MEMEBER_TABLE} (select a.uid, b.* from ${USER_TABLE} as a left join (
                            select a.mid as mid , a.rid as rid, a.num as reserved_num,CURRENT_TIMESTAMP as create_time, a.display as display from ${MEMEBER_RIGHTS_TABLE_NAME} as a where a.mid = ? and a.rid = ?
                        ) as b on a.member_level = b.mid where mid is not null)
                        `, [m.mid, itemId])  // 新增的权益同时赋予同会员等级的用户
                    }
                    // USER_MEMEBER_TABLE
                    return resolve()
                } catch (e) {
                    return reject(e)
                }
            })
        })
    },
    updateRights: async function (item, memRights) {
        return await mysql.transaction(function (trx) {
            return new Promise(async (resolve, reject) => {
                try {
                    const rid = item.id
                    await trx(RRIGHTS_TABLE_NAME).update(item).where({
                        id: rid
                    })
                    await trx(USER_MEMEBER_TABLE).update({
                        display: item.display
                    }).where('rid', rid) // 把该权益所涵盖的会员等级都置为对应的可见维度
                    const memRightMap = {}
                    let flag = true
                    memRights.forEach((mr) => {
                        mr.num = parseInt(mr.num)
                        mr.rid = rid
                        mr.id = `${mr.rid}-${mr.mid}`
                        mr.display = item.display
                        if (isNaN(mr.num) || mr.num < 0) {
                            flag = false
                        }
                        memRightMap[mr.mid] = {
                            data: mr,
                            flag: 0 // 0-新增， 1-修改
                        }
                    })
                    if (!flag) {
                        reject('参数有误')
                    }
                    const mRights = await trx(MEMEBER_RIGHTS_TABLE_NAME).select().where({
                        rid: rid
                    })
                    const updateItems = []
                    const deleteIds = []
                    const deleteMIds = []
                    const inertItems = []
                    mRights.forEach((m) => {
                        const target = memRightMap[m.mid]
                        if (target) { // 表示需要更新
                            target.flag = 1
                            updateItems.push(target.data)
                        } else { // 表示需要删除
                            deleteIds.push(m.id)
                            deleteMIds.push(m.mid)
                        }
                    })
                    Object.keys(memRightMap).forEach((m) => {
                        const target = memRightMap[m]
                        if (target.flag === 0) {
                            inertItems.push(target.data)
                        }
                    })
                    if (deleteIds.length) {
                        await trx(MEMEBER_RIGHTS_TABLE_NAME).update({
                            display: 0
                        }).whereIn('id', deleteIds) // 置为不可见
                        await trx(USER_MEMEBER_TABLE).update({
                            display: 0
                        }).whereIn('mid', deleteMIds).andWhere('rid', rid) // 把该权益所涵盖的会员等级都置为不可见
                    }
                    if (updateItems.length) {
                        for (let j = 0; j < updateItems.length; j++) {
                            const uItem = updateItems[j]
                            await trx(MEMEBER_RIGHTS_TABLE_NAME).update(uItem).where({
                                id: uItem.id
                            })
                        }
                    }
                    if (inertItems.length) {
                        await trx(MEMEBER_RIGHTS_TABLE_NAME).insert(inertItems)
                        for (let i = 0; i < inertItems.length; i++) {
                            const m = inertItems[i]
                            // console.log('m :', m.mid)
                            await trx.raw(`
                            insert into ${USER_MEMEBER_TABLE} (select a.uid, b.* from ${USER_TABLE} as a left join (
                                select a.mid as mid , a.rid as rid, a.num as reserved_num,CURRENT_TIMESTAMP as create_time, a.display as display from ${MEMEBER_RIGHTS_TABLE_NAME} as a where a.mid = ? and a.rid = ?
                            ) as b on a.member_level = b.mid where mid is not null)
                            `, [m.mid, rid])  // 新增的权益同时赋予同会员等级的用户
                        }
                    }

                    // await trx(MEMEBER_RIGHTS_TABLE_NAME).where({
                    //     rid: rid
                    // }).del()
                    // await trx.raw(
                    //     `insert into ${MEMEBER_RIGHTS_TABLE_NAME} (${ATTR_LIST.join(',')}) values ${list2Values(memRights)};`,
                    //     flatternObj2List(memRights)
                    // )
                    return resolve()
                } catch (e) {
                    return reject(e)
                }
            })
        })
    },
    getUserMemberRights: async function (uid) {
        return (await mysql.raw(`SELECT a.uid, a.mid, a.rid, a.create_time as time, a.reserved_num as reserved_num, c.*, b.label, a.display as display FROM ${USER_MEMEBER_TABLE} as a left join ${TABLE_NAME} as b on a.mid = b.id left join ${RRIGHTS_TABLE_NAME} as c on a.rid = c.id WHERE uid = ? and a.display = 1 order by time desc`, [uid]))[0]
    },
    getMemberRights: async function (mid) {
        return (await mysql.raw(`SELECT a.mid, a.num, a.display, c.*, b.label, a.display as display FROM ${MEMEBER_RIGHTS_TABLE_NAME} as a left join ${TABLE_NAME} as b on a.mid = b.id left join ${RRIGHTS_TABLE_NAME} as c on a.rid = c.id WHERE a.mid = ? and a.display = 1 order by c.create_time desc`, [mid]))[0]
    }
    // createShare: async(share) => {
    //     const ret = await mysql(TABLE_NAME).select().where({
    //         cid: share.cid,
    //         value: share.value
    //     }).first()
    //     if (ret) return
    //     return await mysql(TABLE_NAME).insert(share)
    // },
    // createShareInfo: async(cid, value, enterId) => {
    //     const share = await mysql(TABLE_NAME).select().where({
    //         cid,
    //         value
    //     }).first()
    //     if (!share) {
    //         return
    //     }
    //     const shareInfo = await mysql(SHARE_INFO_TABLE).select().where({
    //         sid: share.id
    //     }).first()
    //     if (shareInfo) return
    //     return await mysql.transaction(function (trx) {
    //         return new Promise(async(resolve, reject) => {
    //             try {
    //                 await mysql(SHARE_INFO_TABLE).insert({
    //                     share_customer_id: cid,
    //                     enter_customer_id: enterId,
    //                     type: share.type,
    //                     sid: share.id
    //                 })
    //                 const result = await mysql(TABLE_NAME).update({
    //                     count: share.count + 1
    //                 }).where({
    //                     id: share.id
    //                 })
    //                 return resolve(result)
    //             } catch (e) {
    //                 return reject(e)
    //             }
    //         })
    //     })
    // },

}
