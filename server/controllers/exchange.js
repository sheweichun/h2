const ExchangeService = require('../services/exchange')
const {Parser} = require('../services/json2csv/json2csv')
// 登录授权接口
module.exports = {
    getAllExchanges: async (ctx, next) => {
        // const {where} = ctx.request.query
        const ret = await ExchangeService.getList(ctx.request.query)
        ctx.state.data = ret
    },
    getAllExchangeByUser: async (ctx, next) => {
        const {companyid} = ctx.session.userinfo
        if (!companyid) {
            ctx.state.data = []
            return
        }
        const ret = await ExchangeService.getList({
            code_id: companyid
        })
        ctx.state.data = ret
    },
    doExchange: async(ctx, next) => { // 兑换奖品
        const {records, addressId} = ctx.request.body
        const {uid} = ctx.session.userinfo
        try {
            const ret = await ExchangeService.doExchange(records, uid, addressId)
            ctx.state.data = ret
        } catch (e) {
            ctx.state.code = 1
            ctx.state.data = e.message
        }
    },
    addExchange: async(ctx, next) => {
        const {data} = ctx.request.body
        const ret = await ExchangeService.addExchange(data)
        ctx.state.data = ret
    },
    editExchange: async(ctx, next) => {
        const {data} = ctx.request.body
        const ret = await ExchangeService.editExchange(data)
        ctx.state.data = ret
    },
    allUserExchange: async(ctx) => {
        const {pageSize = 10, current = 1, filterStr, search, sortOrder, sortColumn, startTime, endTime } = ctx.request.query
        const filter = filterStr ? JSON.parse(filterStr) : []
        const {aid} = ctx.session.adminer
        const superFlag = ctx.session.adminer.super
        if (superFlag) {
            filter.push({content: `(aid = ${aid} or aid is null)`})
        } else {
            filter.push({name: 'aid', value: aid})
        }
        filter.push({
            content: ` a.create_time < "${endTime}" `
        })
        filter.push({
            content: ` a.create_time >= "${startTime}" `
        })
        ctx.state.data = await ExchangeService.getExchangeRecordListFromAdmin(parseInt(pageSize), parseInt(current), filter, search, {
            column: sortColumn,
            order: sortOrder
        })
    },
    allUserExchangeExportAll: async(ctx) => {
        const {filterStr, search, sortOrder, sortColumn, startTime, endTime} = ctx.request.query
        const filter = filterStr ? JSON.parse(filterStr) : []
        const {aid} = ctx.session.adminer
        const superFlag = ctx.session.adminer.super
        if (superFlag) {
            filter.push({content: `(aid = ${aid} or aid is null)`})
        } else {
            filter.push({name: 'aid', value: aid})
        }
        filter.push({
            content: ` a.create_time < "${endTime}" `
        })
        filter.push({
            content: ` a.create_time >= "${startTime}" `
        })
        // console.log('startTime :', startTime, endTime)
        const ret = await ExchangeService.getAllExchangeRecordListFromAdmin(filter, search, {
            column: sortColumn,
            order: sortOrder
        })

        const parser = new Parser({
            // fields
        })
        // const {res} = ctx;
        ctx.set('Content-disposition', `attachment; filename=bonus_${(Math.random() + '').substring(2, 8)}.csv`) //attachment
        ctx.set('Content-type', 'text/plain')
        ctx.body = Buffer.from(parser.parse(ret), 'utf-8')

        // ctx.state.data ={a:3}
        return
    },
    allUserExchangeByUid: async(ctx) => {
        const { uid } = ctx.session.userinfo
        const {pageSize = 10, current = 1} = ctx.request.query
        const filter = [{name: 'a.uid', value: uid}]
        ctx.state.data = await ExchangeService.getExchangeRecordListFromAdmin(parseInt(pageSize), parseInt(current), filter)
    },
    completeExchange: async(ctx) => {
        try {
            const {infoId, uid} = ctx.request.body
            const ret = await ExchangeService.completeExchange(infoId, uid)
            ctx.state.data = ret
        } catch (e) {
            ctx.state.code = 1
            ctx.state.data = e.message
        }
    },
    cancelUserExchange: async(ctx) => {
        try {
            const { uid } = ctx.session.userinfo
            const {infoId} = ctx.request.body
            const ret = await ExchangeService.cancelExchange(infoId, uid)
            ctx.state.data = ret
        } catch (e) {
            ctx.state.code = 1
            ctx.state.data = e.message
        }
    },
    cancelExchange: async(ctx) => {
        try {
            const {infoId, uid} = ctx.request.body
            const ret = await ExchangeService.cancelExchange(infoId, uid)
            ctx.state.data = ret
        } catch (e) {
            ctx.state.code = 1
            ctx.state.data = e.message
        }
    },
    updateExchangeRecordRemark: async(ctx) => {
        try {
            const {infoId, remark} = ctx.request.body
            const ret = await ExchangeService.updateExchangeRecordRemark(infoId, remark)
            ctx.state.data = ret
        } catch (e) {
            ctx.state.code = 1
            ctx.state.data = e.message
        }
    }
}
