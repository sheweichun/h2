const AdminService = require('../services/admin')
// 登录授权接口
module.exports = {
    addAdmin: async (ctx, next) => {
        const adm = ctx.session.adminer
        if (!adm.super) {
            ctx.state.data = '非管理员，没有权限'
            ctx.state.code = 1
            return
        }
        const {data} = ctx.request.body
        const ret = await AdminService.addAdmin(data)
        ctx.state.data = ret
    },
    updateAdmin: async (ctx, next) => {
        const adm = ctx.session.adminer
        if (!adm.super) {
            ctx.state.data = '非管理员，没有权限'
            ctx.state.code = 1
            return
        }
        const {data} = ctx.request.body
        const ret = await AdminService.updateAdmin(data)
        ctx.state.data = ret
    },
    getAllAdmin: async (ctx, next) => {
        const adm = ctx.session.adminer
        if (!adm.super) {
            ctx.state.data = '非管理员，没有权限'
            ctx.state.code = 1
            return
        }
        const ret = await AdminService.getAllAdmins()
        ctx.state.data = ret
    }
}
