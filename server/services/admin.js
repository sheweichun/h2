const { mysql } = require('../qcloud')
const TABLE_NAME = 'cAdmin'

module.exports = {
    getAdmin: function (userName, password) {
        return mysql(TABLE_NAME).select().where({
            user_name: userName,
            password
        }).first()
    },
    getAllAdmins: function () {
        return mysql(TABLE_NAME).select()
    },
    addAdmin: function (data) {
        return mysql(TABLE_NAME).insert(data)
    },
    updateAdmin: function (data) {
        return mysql(TABLE_NAME).update(data).where({
            aid: data.aid
        })
    }
}
