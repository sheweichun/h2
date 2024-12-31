const { mysql } = require('../qcloud')
const TABLE_NAME = 'cCompanyBonusType'
const BONUS_TYPE_TABLE = 'cBonustype'

module.exports = {
    getList: function (cid) {
        return mysql(TABLE_NAME).select().where({
            cid
        })
    },
    addType: async function (item) {
        const ret = await mysql(BONUS_TYPE_TABLE).select().where({
            value: item.tid
        })
        // console.log('item :', item)
        if (!ret || ret.length === 0) {
            throw new Error(`tid:${item.tid}不存在`)
        }
        const result = await mysql(TABLE_NAME).select().where({
            tid: item.tid,
            cid: item.cid
        })
        if (result && result.length > 0) {
            throw new Error(`【${item.tname}】积分已存在`)
        }
        return await mysql(TABLE_NAME).insert(item)
    },
    changeType: async function (item) {
        return mysql(TABLE_NAME).update(item).where({
            id: item.id
        })
    }

}
