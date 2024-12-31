const { mysql } = require('../qcloud')
const TABLE_NAME = 'cShare'
const SHARE_INFO_TABLE = 'cShareInfo'
const USER_TABLE_NAME = 'cUserInfo'

module.exports = {
    createShare: async(share) => {
        const ret = await mysql(TABLE_NAME).select().where({
            cid: share.cid,
            value: share.value
        }).first()
        if (ret) return
        return await mysql(TABLE_NAME).insert(share)
    },
    createShareInfo: async(cid, value, enterId) => {
        const shareInfo = await mysql(SHARE_INFO_TABLE).select().where({
            enter_customer_id: enterId
        }).first()
        if (!shareInfo) {
            await mysql(SHARE_INFO_TABLE).insert({
                share_customer_id: cid,
                enter_customer_id: enterId,
                type: value,
                sid: cid
            })
        } else {
            await mysql(SHARE_INFO_TABLE).update({
                share_customer_id: cid,
                type: value
            }).where({
                enter_customer_id: enterId
            })
        }
    },
    getShareList: async function (where) {
        const shareList = await mysql(TABLE_NAME).select().where(where || {})
        const shareMap = {}
        const userIdList = shareList.reduce((retList, item) => {
            if (!shareMap[item.cid]) {
                shareMap[item.cid] = []
                retList.push(item.cid)
            }
            shareMap[item.cid].push(item)
            return retList
        }, [])
        const userList = await mysql(USER_TABLE_NAME).select().whereIn('uid', userIdList)
        // console.log('userList :', userList, userIdList)
        userList.forEach((user) => {
            const uid = user.uid
            const targetList = shareMap[uid]
            targetList.forEach((tShare) => {
                tShare.share_real_name = user.realName
                tShare.share_company_name = user.companyName
            })
        })
        return shareList
    },
    getShareInfoList (where) {
        return mysql(SHARE_INFO_TABLE).select().where(where || {}).orderBy('create_time', 'desc').limit(1000).offset(0)
    }
}







// const { mysql } = require('../qcloud')
// const TABLE_NAME = 'cShare'
// const SHARE_INFO_TABLE = 'cShareInfo'
// const USER_TABLE_NAME = 'cUserInfo'

// module.exports = {
//     createShare: async(share) => {
//         const ret = await mysql(TABLE_NAME).select().where({
//             cid: share.cid,
//             value: share.value
//         }).first()
//         if (ret) return
//         return await mysql(TABLE_NAME).insert(share)
//     },
//     createShareInfo: async(cid, value, enterId) => {
//         const share = await mysql(TABLE_NAME).select().where({
//             cid,
//             value
//         }).first()
//         if (!share) {
//             return
//         }
//         const shareInfo = await mysql(SHARE_INFO_TABLE).select().where({
//             sid: share.id
//         }).first()
//         if (shareInfo) return
//         return await mysql.transaction(function (trx) {
//             return new Promise(async(resolve, reject) => {
//                 try {
//                     await mysql(SHARE_INFO_TABLE).insert({
//                         share_customer_id: cid,
//                         enter_customer_id: enterId,
//                         type: share.type,
//                         sid: share.id
//                     })
//                     const result = await mysql(TABLE_NAME).update({
//                         count: share.count + 1
//                     }).where({
//                         id: share.id
//                     })
//                     return resolve(result)
//                 } catch (e) {
//                     return reject(e)
//                 }
//             })
//         })
//     },
//     getShareList: async function (where) {
//         const shareList = await mysql(TABLE_NAME).select().where(where || {})
//         const shareMap = {}
//         const userIdList = shareList.reduce((retList, item) => {
//             if (!shareMap[item.cid]) {
//                 shareMap[item.cid] = []
//                 retList.push(item.cid)
//             }
//             shareMap[item.cid].push(item)
//             return retList
//         }, [])
//         const userList = await mysql(USER_TABLE_NAME).select().whereIn('uid', userIdList)
//         // console.log('userList :', userList, userIdList)
//         userList.forEach((user) => {
//             const uid = user.uid
//             const targetList = shareMap[uid]
//             targetList.forEach((tShare) => {
//                 tShare.share_real_name = user.realName
//                 tShare.share_company_name = user.companyName
//             })
//         })
//         return shareList
//     },
//     getShareInfoList (where) {
//         return mysql(SHARE_INFO_TABLE).select().where(where || {})
//     }
// }
