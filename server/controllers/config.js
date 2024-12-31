
const CompanyService = require('../services/company')
const CompanyBonusTypeService = require('../services/companyBonusType')

module.exports = {
    getCodeList: async(ctx) => {
        const adm = ctx.session.adminer
        const query = {}
        if (!adm.super) {
            query.aid = adm.aid
        }
        const ret = await CompanyService.getList(query)
        ctx.state.data = ret
    },
    getCodeById:async(ctx)=>{
        const {cid} = ctx.request.query
        const ret = await CompanyService.getList({
            cid
        })
        ctx.state.data = (ret && ret.length > 0) ? ret[0] : {}
    },
    generateCode: async(ctx) => {
        const data = ctx.request.body
        const {aid} = ctx.session.adminer
        if (!data.name || !data.code) {
            ctx.state.data = '参数有问题'
            ctx.state.code = 1
            return
        }
        const result = await CompanyService.addCode({
            code: data.code,
            name: data.name,
            aid: data.aid || aid,
            hr: data.hr,
            hr_phone: data.hr_phone,
            need_qus: !!data.need_qus
        })
        if (!result) {
            ctx.state.data = data.name + '已存在'
            ctx.state.code = 1
            return
        }
        ctx.state.data = result
    },
    modifyCode: async(ctx) => {
        const data = ctx.request.body
        if (!data.name || !data.code || !data.cid) {
            ctx.state.data = '参数有问题'
            ctx.state.code = 1
            return
        }
        const result = await CompanyService.editCode(data)
        ctx.state.data = result
    },
    getBonusType: async(ctx) => {
        ctx.state.data = await CompanyService.getBonusType()
    },
    getBonusInfoList: async(ctx) => {
        ctx.state.data = await CompanyService.getBonusInfoList()
    },
    resetBonus: async(ctx) => {
        const {cid} = ctx.request.body
        try {
            ctx.state.data = await CompanyService.resetBonus(cid)
        } catch (e) {
            ctx.state.code = 1
            ctx.state.data = e.message
        }
    },
    addCompanyBonusType: async(ctx) => {
        const {data} = ctx.request.body
        try {
            ctx.state.data = await CompanyBonusTypeService.addType(data)
        } catch (e) {
            ctx.state.code = 1
            ctx.state.data = e.message
        }
    },
    editCompanyBonusType: async(ctx) => {
        const {data} = ctx.request.body
        try {
            ctx.state.data = await CompanyBonusTypeService.changeType(data)
        } catch (e) {
            ctx.state.code = 1
            ctx.state.data = e.message
        }
    },
    loadBonusTypes: async(ctx) => {
        const {cid} = ctx.request.query
        try {
            ctx.state.data = await CompanyBonusTypeService.getList(cid)
        } catch (e) {
            ctx.state.code = 1
            ctx.state.data = e.message
        }
    }
}
