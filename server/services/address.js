const { mysql } = require('../qcloud')
const TABLE_NAME = 'cAddress'

module.exports = {
    getList: function (uid) {
        return mysql(TABLE_NAME).select().where({
            uid
        }).orderBy('create_time', 'desc')
    },
    getAddressById: async function (uid, id) {
        const result = await mysql(TABLE_NAME).select().where({
            uid,
            id
        })
        return result && result.length > 0 ? result[0] : null
    },
    addAddress: function (item) {
        // console.log('item :',item);
        if (item == null || item.id != null) {
            return Promise.resolve()
        }
        return mysql(TABLE_NAME).insert(item)
    },
    editAddress: function (item) {
        return mysql(TABLE_NAME).update(item).where({
            id: item.id
        })
    },
    deleteAddress: async function (id) {
        return mysql(TABLE_NAME).where({
            id: id
        }).del()
    }
}
