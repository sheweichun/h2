const CollectionQueService = require('../services/collectionQue')
// 登录授权接口
module.exports = {
    getAll: async (ctx, next) => {
        const ret = await CollectionQueService.getList()
        ctx.state.data = ret
    },
    addQue: async (ctx, next) => {
        const {data} = ctx.request.body
        const ret = await CollectionQueService.addQue(data)
        ctx.state.data = ret
    }
    // editArticle: async(ctx, next) => {
    //     const {data} = ctx.request.body
    //     const ret = await ArticleService.editArticle(data)
    //     ctx.state.data = ret
    // },
    // removeArticle: async(ctx, next) => {
    //     const {data} = ctx.request.body
    //     const ret = await ArticleService.deleteArticle(data)
    //     ctx.state.data = ret
    // }
}
