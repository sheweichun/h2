const { mysql } = require('../qcloud')
const TABLE_NAME = 'cCompanyInfo'
const BONUS_TYPE_TABLE = 'cBonustype'
const USER_TABLE_NAME = 'cUserInfo'
const BONUSE_INFO_TABLE = 'cBonusInfo'

// const ATTR_LIST = ['bonus', 'uid']
// const UPDATE_RAW = ATTR_LIST.map((name) => {
//     return name + '=values(' + name + ')'
// }).join(',')
// function list2Values (data) {
//     return data.map((item) => {
//         return `(${ATTR_LIST.map(() => {
//             return '?'
//         })
//         })`
//     }).join(',')
// }
// function flatternObj2List (data) {
//     return data.reduce((ret, item) => {
//         return ret.concat(ATTR_LIST.map((attr) => {
//             return item[attr]
//         }))
//     }, [])
// }
const ONE_YEAR = 365 * 24 * 3600 * 1000

module.exports = {
    getList: function (query) {
        return mysql(TABLE_NAME).select().where(query || {}).orderBy('create_time', 'desc')
    },
    addCode: async function (item) {
        const ret = await mysql(TABLE_NAME).select().where({
            name: item.name
        })
        if (ret && ret.length > 0) {
            return
        }
        return mysql(TABLE_NAME).insert(item)
    },
    editCode: async function (item) {
        return mysql(TABLE_NAME).update(item).where({
            cid: item.cid
        })
    },
    getBonusType: async function () {
        return mysql(BONUS_TYPE_TABLE).select()
    },
    resetBonus: async function (cid) {
        const ret = await mysql(TABLE_NAME).select().where({
            cid: cid
        })
        if (!ret || ret.length === 0) {
            throw new Error('公司不存在')
        }
        const company = ret[0]
        const now = Date.now()
        // if (company.reset_time && (now - company.reset_time) < ONE_YEAR) {
        //     throw new Error('距离上次积分清零不足一年')
        // }
        const users = await mysql(USER_TABLE_NAME).select().where({
            companyid: cid
        })
        const uids = []
        const userBonusChangeList = users.map((user) => {
            const userbonus = user.bonus || 0
            uids.push(user.uid)
            return {
                origin_bonus: userbonus,
                add_bonus: -userbonus,
                new_bonus: 0,
                type: 7,
                readed: false,
                uid: user.uid,
                type_name: `【${company.name}】年度积分清零`
            }
        })
        await mysql.transaction(function (trx) {
            return new Promise(async(resolve, reject) => {
                try {
                    await trx(TABLE_NAME).update({
                        reset_time: now
                    }).where({
                        cid
                    })
                    await trx.batchInsert(BONUSE_INFO_TABLE, userBonusChangeList, 1000)
                    await trx(USER_TABLE_NAME).update({
                        bonus: 0,
                        total_bonus: 0,
                    }).whereIn('uid', uids)
                    return resolve()
                } catch (e) {
                    return reject(e)
                }
            })
        })
    }
    // getBonusInfoList: async function (cid) {
        // return mysql().select().where({})
    // }
}
