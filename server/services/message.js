
const { mysql } = require('../qcloud')
const TABLE_NAME = 'cMessage'

module.exports = {
    addMessage: function (message, trx) {
        let db = trx || mysql
        return db(TABLE_NAME).insert(message)
    }
}
