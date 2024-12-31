
/**
 * 小程序登录鉴别模块
 */
module.exports = async function validationMiddleware (ctx, next) {
    if (!ctx.session || !ctx.session.userinfo) {
        ctx.state.code = 401
        ctx.state.data = '请先登录'
        return
    }
    await next()
}
