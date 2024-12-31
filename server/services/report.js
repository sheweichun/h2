
const { mysql } = require('../qcloud')
const TABLE_NAME = 'cReport'

module.exports = {
    list: async function (uid) {
        const ret = await mysql(TABLE_NAME).where({
            uid: uid
        }).orderBy('create_time', 'desc').limit(100).offset(0)
        return ret
    },
    add: async function (report) {
        const insertIds = await mysql(TABLE_NAME).insert(report)
        if (insertIds.length === 1) {
            return Object.assign({}, report, {
                id: insertIds[0]
            })
        }
    },
    edit: async function (report) {
        await mysql(TABLE_NAME).update(report).where({
            id: report.id
        })
    },
    remove: async function (id) {
        await mysql(TABLE_NAME).where('id', id)
        .del()
    }
}
