const { mysql } = require('../qcloud')
const TABLE_NAME = 'cUploadInfo'
const USER_TABLE_NAME = 'cUserInfo'
const BONUS_TYPE_TABLE = 'cBonustype'
const COMPANY_BONUS_TYPE_NAME = 'cCompanyBonusType'
const CBONUS_TABLE_NAME = 'cBonusInfo'


// function where2Query (where) {
//     let whereList = []
//     let paramList = []
//     if (where == null || where.length === 0) {
//         return {
//             whereList,
//             paramList
//         }
//     }
//     where.forEach((item) => {
//         if (item.values && item.values.length > 0) {
//             whereList.push(`${item.name} in (${item.values.map((val) => {
//                 paramList.push(val)
//                 return '?'
//             }).join(',')})`)
//         } else if (item.value) {
//             whereList.push(`${item.name} = ?`)
//             paramList.push(item.value)
//         } else if (item.content) {
//             whereList.push(item.content)
//         }
//     })
//     return {
//         whereList,
//         paramList
//     }
// }

module.exports = {
    saveUploadInfo: async function (record) {
        const insertRet = await mysql(TABLE_NAME).insert(record)
        if (insertRet && insertRet.length > 0) {
            record.uid = insertRet[0]
            record.bonusFlag = 0
            record.create_time = Date.now()
            return record
        }
    },
    getUploadInfoByCidAndType: function (cid, type) {
        return mysql(TABLE_NAME).where({
            cid,
            type
        }).orderBy('create_time', 'desc')
    },
    listWithQuery: async function (pageSize, current, query, config) {
        let offset = current >= 1 ? ((current - 1) * pageSize) : 0
        const count = await mysql(`${TABLE_NAME} as a`).count('* as total').leftJoin(`${USER_TABLE_NAME} as b`, `a.cid`, `b.uid`).where(query)
        const retList = await mysql(`${TABLE_NAME} as a`).select('*').select('a.create_time as acreate_time').select('a.uid as auid').leftJoin(`${USER_TABLE_NAME} as b`, `a.cid`, `b.uid`).where(query).orderBy('acreate_time', 'desc').limit(pageSize).offset(offset)
        retList.forEach((item) => {
            item.uid = item.auid
        })
        return {
            total: count[0].total,
            pageSize,
            current,
            data: retList
        }
    },
    listAll: async function (query) {
        const retList = await mysql(`${TABLE_NAME} as a`).select('*').select('a.create_time as acreate_time').select('a.uid as auid').leftJoin(`${USER_TABLE_NAME} as b`, `a.cid`, `b.uid`).where(query || {}).orderBy('acreate_time', 'desc')
        retList.forEach((item) => {
            item.uid = item.auid
        })
        return retList
    },
    listAllBonusInfo: async function (query) {
        const retList = await mysql.raw(`select a.*, b.*, a.create_time as acreate_time, a.uid as auid from ${CBONUS_TABLE_NAME} as a left join ${USER_TABLE_NAME} as b on a.uid = b.uid ${query ? `where ${query}` : ''} order by acreate_time desc`)
        // const retList = await mysql(`${CBONUS_TABLE_NAME} as a`).select('*').select('a.create_time as acreate_time').select('a.uid as auid').leftJoin(`${USER_TABLE_NAME} as b`, `a.uid`, `b.uid`).whereRaw(query, []).orderBy('acreate_time', 'desc')
        // console.log('retList :', retList)
        // retList.forEach((item) => {
        //     item.uid = item.auid
        // })
        return retList[0] || []
    },
    changeUploadBonusFlag: async function (uid, value, cid, reason) {
        // console.log(uid, value, cid)
        const uploadInfo = await mysql(TABLE_NAME).select().where({
            uid
        }).first()
        if (!uploadInfo) {
            return false
        }
        if (uploadInfo.bonusFlag !== 0) {
            return false
        }
        const user = await mysql(USER_TABLE_NAME).select().where({
            uid: cid
        }).first()
        if (!user) return false
        const bonusTypes = await mysql(BONUS_TYPE_TABLE).select()
        const companyBonusTypes = await mysql(COMPANY_BONUS_TYPE_NAME).select().where({
            cid: user.companyid
        })
        const companyBonusTypeMap = companyBonusTypes.reduce((ret, item) => {
            ret[item.tid] = item
            return ret
        }, {})
        const bonusMap = bonusTypes.reduce((ret, item) => {
            const curCompanyType = companyBonusTypeMap[item.value]
            if (curCompanyType) {
                ret[item.value] = {
                    value: item.value,
                    name: item.name,
                    bonuse: curCompanyType.bonuse
                }
            } else {
                ret[item.value] = item
            }
            return ret
        }, {})
        if (value === '1') {
            await mysql.transaction(function (trx) {
                return new Promise(async(resolve, reject) => {
                    try {
                        let curTotalBonus = user.total_bonus || 0
                        await trx(TABLE_NAME).update({
                            bonusFlag: 1
                        }).where({
                            uid: uid
                        })
                        const curBonusType = bonusMap[uploadInfo.type] || {}
                        const addBonus = (curBonusType.bonuse || 0)
                        curTotalBonus += addBonus;
                        const newBonus = user.bonus + addBonus
                        await trx(CBONUS_TABLE_NAME).insert({
                            origin_bonus: user.bonus,
                            add_bonus: addBonus,
                            new_bonus: newBonus,
                            type: uploadInfo.type,
                            readed: false,
                            uid: cid,
                            type_name: curBonusType.name
                        })
                        await trx(USER_TABLE_NAME).update({
                            bonus: newBonus,
                            total_bonus:curTotalBonus
                        }).where({
                            uid: cid
                        })
                        return resolve()
                    } catch (e) {
                        return reject(e)
                    }
                })
            })
            return true
        } else {
            await mysql(TABLE_NAME).update({
                bonusFlag: 2,
                reason: reason || ''
            }).where({
                uid: uid
            })
            return true
        }
    }
}
