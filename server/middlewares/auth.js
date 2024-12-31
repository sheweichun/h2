
/**
 * 响应处理模块
 */
module.exports = async function validationMiddleware (ctx, next) {
    if (!ctx.session || !ctx.session.adminer) {
        ctx.state.code = 401
        ctx.state.data = '请先登录'
        return
    }
    await next()
}
