
const CustomerService = require('../services/customer')
// const authService = require('wafer-node-sdk/lib/mysql/AuthDbService')
const authService = require('../services/wafer-node-sdk/lib/mysql/AuthDbService')

const adminService = require('../services/admin')
// 登录授权接口
module.exports = {
    login: async (ctx, next) => {
        // 通过 Koa 中间件进行登录之后
        // 登录信息会被存储到 ctx.state.$wxInfo
        // 具体查看：
        if (ctx.state.$wxInfo.loginState) {
            const data = ctx.state.$wxInfo.userinfo
            const userInfo = data.userinfo
            const customer = await CustomerService.insertCustomer({
                avatarUrl: userInfo.avatarUrl,
                city: userInfo.city,
                country: userInfo.country,
                gender: userInfo.gender,
                nickName: userInfo.nickName,
                phone:'',
                openId: userInfo.openId,
                bonus: 0,
                province: userInfo.province
            })
            data.userinfo = customer
            ctx.session.skey = data.skey
            ctx.session.userinfo = customer
            ctx.state.data = data
            ctx.state.data['time'] = Math.floor(Date.now() / 1000)
        }
    },
    session: async(ctx, next) => {
        const {openId} = ctx.request.query
        const authRet = await authService.getUserInfoByOpenId(openId)
        const userInfo = await CustomerService.getCustomerByOpenId(openId)
        const retData = {
            skey: authRet.skey,
            userinfo: userInfo
        }
        ctx.session.skey = authRet.skey
        ctx.session.userinfo = userInfo
        // console.log('session :', ctx.session)
        ctx.state.data = retData
    },
    judgeloginAdmin: async(ctx, next) => {
        if (!ctx.session || !ctx.session.adminer) {
            ctx.state.code = 401
            ctx.state.data = '请先登录'
            return
        }
        ctx.state.data = ctx.session.adminer
    },
    loginAdmin: async(ctx, next) => {
        const {username, password} = ctx.request.body
        const adminer = await adminService.getAdmin(username, password)
        if (adminer == null) {
            ctx.state.code = 1
            ctx.state.data = '账号或密码不正确'
        } else {
            ctx.session.adminer = adminer
            ctx.state.data = adminer
        }
    },
    loginAdminOut: async(ctx, next) => {
        ctx.session.adminer = null
        ctx.state.data = '成功'
    }
}
