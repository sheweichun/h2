
const ReportService = require('../services/report')
// const AppConfig = require('../config');

module.exports = {
    list: async (ctx, next) => {
        const {uid} = ctx.session.userinfo
        try {
            const ret = await ReportService.list(uid)
            ctx.state.data = ret
        } catch (e) {
            ctx.state.code = 1
            ctx.state.data = e.message
        }
    },
    all: async (ctx, next) => {
        const {uid} = ctx.request.query
        try {
            const ret = await ReportService.list(uid)
            ctx.state.data = ret
        } catch (e) {
            ctx.state.code = 1
            ctx.state.data = e.message
        }
    },
    add: async (ctx, next) => {
        const {uid, url, name} = ctx.request.body
        try {
            const ret = await ReportService.add({
                uid, url, name
            })
            ctx.state.data = ret
        } catch (e) {
            ctx.state.code = 1
            ctx.state.data = e.message
        }
    },
    edit: async (ctx, next) => {
        const {uid, url, name, id} = ctx.request.body
        try {
            const ret = await ReportService.edit({
                uid, url, name, id
            })
            ctx.state.data = ret
        } catch (e) {
            ctx.state.code = 1
            ctx.state.data = e.message
        }
    },
    remove: async (ctx, next) => {
        const {id} = ctx.request.body
        try {
            const ret = await ReportService.remove(id)
            ctx.state.data = ret
        } catch (e) {
            ctx.state.code = 1
            ctx.state.data = e.message
        }
    }

}
