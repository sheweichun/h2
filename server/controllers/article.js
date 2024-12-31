const ArticleService = require('../services/article')
const CompanayService = require('../services/company')


function getCidFilterItem (filterArr, companyMap) {
    if (filterArr) {
        for (let i = 0; i < filterArr.length; i++) {
            const item = filterArr[i]
            if(item.name === 'cid' && item.values) {
                item.values = item.values.filter((val) => {
                    return !!companyMap[val]
                })
            }
        }
    }
}
// 登录授权接口
module.exports = {
    getAllArticles: async (ctx, next) => {
        const { companyid } = ctx.session.userinfo
        const ret = await ArticleService.getList(companyid)
        ctx.state.data = ret
    },
    getListByCid: async (ctx, next) => {
        const adm = ctx.session.adminer
        const { filterStr } = ctx.request.query
        let filterStrArr = []
        try {
            filterStrArr = JSON.parse(filterStr)
        } catch (e) {

        }
        if (!adm.super) {
            const companies = await CompanayService.getList({aid: adm.aid})
            getCidFilterItem(filterStrArr, companies.reduce((result, item) => {
                result[item.cid] = item
                return result
            }, {}))
        }
        const ret = await ArticleService.getAllList(filterStrArr)
        ctx.state.data = ret
        // if (adm.super) {
        //     const ret = await ArticleService.getAllList(filterStrArr)
        //     ctx.state.data = ret
        //     return
        // } else {
        //     const companies = await CompanayService.getList({aid: adm.aid})
        //     const result = await ArticleService.getAllListByAids(companies.map((item) => {
        //         return item.cid
        //     }))
        //     ctx.state.data = result
        // }
    },
    addArticle: async (ctx, next) => {
        const {data} = ctx.request.body
        const ret = await ArticleService.addArticle(data)
        ctx.state.data = ret
    },
    editArticle: async(ctx, next) => {
        const {data} = ctx.request.body
        const ret = await ArticleService.editArticle(data)
        ctx.state.data = ret
    },
    removeArticle: async(ctx, next) => {
        const {data} = ctx.request.body
        const ret = await ArticleService.deleteArticle(data)
        ctx.state.data = ret
    }
}
