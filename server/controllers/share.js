
const ShareService = require('../services/share')

module.exports = {
    createShare: async function (ctx, next) {
        const userinfo = ctx.session.userinfo
        const {type, value} = ctx.request.body
        const ret = await ShareService.createShare({
            cid: userinfo.uid,
            type,
            value
        })
        ctx.state.data = ret
    },
    createShareInfo: async function (ctx, next) {
        const userinfo = ctx.session.userinfo
        const {cid, value} = ctx.request.body
        if (userinfo.realName || userinfo.phone) {
            ctx.state.code = 1
            ctx.state.data = '该用户已完成注册'
            return
        }
        const ret = await ShareService.createShareInfo(cid, value, userinfo.uid)
        ctx.state.data = ret
    },
    getShareList: async function (ctx, next) {
        const {where} = ctx.request.query
        const ret = await ShareService.getShareList(where)
        ctx.state.data = ret
    },
    getShareInfoList: async function (ctx, next) {
        const {where} = ctx.request.query
        const whereQuery = JSON.parse(where || '')
        const ret = await ShareService.getShareInfoList(whereQuery)
        ctx.state.data = ret
    }
}
