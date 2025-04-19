const {Parser} = require('../services/json2csv/json2csv')
const CustomerService = require('../services/customer')
const WXBizDataCrypt = require('../services/bizDataCrypt')
// const authService = require('wafer-node-sdk/lib/mysql/AuthDbService')
const authService = require('../services/wafer-node-sdk/lib/mysql/AuthDbService')
const AppConfig = require('../config')

// 登录授权接口
module.exports = {
    updateCompanyInfo: async (ctx, next) => {
        // 通过 Koa 中间件进行登录之后
        // 登录信息会被存储到 ctx.state.$wxInfo
        // 具体查看：
        const {openId, uid} = ctx.session.userinfo
        const body = ctx.request.body
        const {realName, code, phone} = body
        try {
            const ret = await CustomerService.updateCompanyInfo(realName, code, phone, openId, uid)
            ctx.state.data = ret
        } catch (e) {
            ctx.state.code = 1
            ctx.state.data = e.message
        }
    },
    updateCompanyPhone: async (ctx, next) => {
        // 通过 Koa 中间件进行登录之后
        // 登录信息会被存储到 ctx.state.$wxInfo
        // 具体查看：
        const {uid} = ctx.session.userinfo
        const body = ctx.request.body
        const {phone} = body
        try {
            const ret = await CustomerService.changePhone(phone, uid)
            ctx.state.data = ret
        } catch (e) {
            ctx.state.code = 1
            ctx.state.data = e.message
        }
    },
    changeCompany: async(ctx) => {
        const {companyName, companyid, uid} = ctx.request.body
        if (companyName == null || companyid == null || uid == null) {
            ctx.state.code = 1
            ctx.state.data = '参数错误'
            return
        }
        const ret = await CustomerService.changeCompanyIdAndName(uid, companyName, companyid)
        ctx.state.data = ret
    },
    getCustomerByUid: async(ctx, next) => {
        const {uid} = ctx.session.userinfo
        // const {uid} = ctx.request.query
        const ret = await CustomerService.getCustomerByUid(uid)
        ctx.state.data = ret
    },
    updateCustomerActivityBonus: async(ctx, next) => {
        const {uid, companyid} = ctx.session.userinfo
        const {code} = ctx.request.body
        try {
            ctx.state.data = await CustomerService.updateCustomerActivityBonus(uid, companyid, code)
        } catch (e) {
            ctx.state.code = 1
            ctx.state.data = e.message ? e.message : e
        }
        return
    },
    updateCustomerDakaInfo: async(ctx, next) => {
        const {uid} = ctx.session.userinfo
        const {type} = ctx.request.body
        const curHour = new Date().getHours()
        try {
            if (type === 1 && (curHour >= 6 && curHour < 8)) {
                ctx.state.data = await CustomerService.updateCustomerDakaInfo(8, uid)
                return
            } else if (type === 2 && (curHour >= 21 && curHour < 23)) {
                ctx.state.data = await CustomerService.updateCustomerDakaInfo(9, uid)
                return
            }
            ctx.state.code = 1
            ctx.state.data = '打卡时间无效'
        } catch (e) {
            ctx.state.code = 1
            ctx.state.data = e.message ? e.message : e
            return
        }
    },
    updateCustomerRunInfo: async(ctx) => {
        const appId = AppConfig.appId
        const body = ctx.request.body
        const skey = ctx.session.skey
        // console.log('sess :===>', ctx.session)
        const {encryptedData, iv} = body
        let runData
        const {uid} = ctx.session.userinfo
        // const {data} = ctx.request.body
        try {
            const recordList = await authService.getUserInfoBySKey(skey)
            if (recordList && recordList.length > 0) {
                const {session_key} = recordList[0] || {}
                // const session_key = 'uTP6K87OD/du6LCsJWckgQ==';
                const pc = new WXBizDataCrypt(appId, session_key)
                runData = pc.decryptData(encryptedData, iv).stepInfoList || []
                const ret = await CustomerService.batchUpdateRunInfoList(runData, uid)
                ctx.state.data = ret
            } else {
                ctx.state.code = 1
                ctx.state.data = '数据异常,工程师紧急修复中'
                return
            }
        } catch (e) {
            // console.log(e)
            ctx.state.code = 1
            ctx.state.data = '数据更新失败'
        }
    },
    all: async(ctx) => {
        const {pageSize = 10, current = 1, filterStr, search, sortOrder, sortColumn} = ctx.request.query
        const filter = filterStr ? JSON.parse(filterStr) : []
        const {aid} = ctx.session.adminer
        const superFlag = ctx.session.adminer.super
        if (superFlag) {
            // filter.push({content: `(aid = ${aid} or aid is null)`}) //超级管理可以看所有用户
        } else {
            filter.push({name: 'aid', value: aid})
        }
        ctx.state.data = await CustomerService.getAllCustomers(parseInt(pageSize), parseInt(current), filter, search, {
            column: sortColumn,
            order: sortOrder
        })
    },
    exportCustomers: async(ctx) => {
        const {qid = 1} = ctx.request.query
        const data = await CustomerService.getExportCustomers(qid)
        // const fields = [
        //     ''
        // ]
        const parser = new Parser({
            // fields
        })
        // const {res} = ctx;
        ctx.set('Content-disposition', `attachment; filename=${'user'}.csv`)// attachment
        ctx.set('Content-type', 'text/plain')
        return ctx.body = Buffer.from(parser.parse(data), 'utf-8')
        // console.log('ctx :',ctx);
    },
    exportHealthInfoByQus: async(ctx) => {
        const {qid } = ctx.request.query
        if (qid == null) {
            ctx.state.code = 1
            ctx.state.data = 'cid 不能为空'
            return
        }
        const data = await CustomerService.getExportHealthInfoByQus(qid)


        // const fields = [
        //     ''
        // ]
        const parser = new Parser({
            // fields
        })
        // const {res} = ctx;
        ctx.set('Content-disposition', `attachment; filename=${'health_qus'}.csv`)// attachment
        ctx.set('Content-type', 'text/plain')
        return ctx.body = Buffer.from(parser.parse(data), 'utf-8')
        // console.log('ctx :',ctx);
    },
    exportHealthCustomersByCid: async(ctx) => {
        const {qid = 2, cid} = ctx.request.query
        if (cid == null) {
            ctx.state.code = 1
            ctx.state.data = 'cid 不能为空'
            return
        }
        const data = await CustomerService.getExportHealthCustomersByCid(qid, cid)
        // const fields = [
        //     ''
        // ]
        const parser = new Parser({
            // fields
        })
        // const {res} = ctx;
        ctx.set('Content-disposition', `attachment; filename=${'user'}.csv`)// attachment
        ctx.set('Content-type', 'text/plain')
        return ctx.body = Buffer.from(parser.parse(data), 'utf-8')
        // console.log('ctx :',ctx);
    },
    getAllBonusInfo: async(ctx) => {
        const {where, pageSize = 20, current = 1} = ctx.request.query
        const whereQuery = where ? JSON.parse(where) : {}
        ctx.state.data = await CustomerService.getAllBonusInfo(parseInt(pageSize), parseInt(current), whereQuery)
    },
    getLastBonusInfos: async(ctx) => {
        const {uid} = ctx.request.query
        // const whereQuery = where ? JSON.parse(where) : {}
        const result = await CustomerService.getLastBonusInfos(14, 1, {
            uid
        })
        ctx.state.data = result.data
    },
    batchUpdateBonusByOpenIds: async(ctx) => { // {openid, addBonus, type, typeName}
        const {items} = ctx.request.body
        // const ret = await CustomerService.batchUpdateBonusByOpenIds(ids, addbonus, type, typename)
        const ret = await CustomerService.batchUpdateBonusByOpenIds(items)
        ctx.state.data = ret
    },
    markBonusInfoReaded: async(ctx) => {
        const {ids} = ctx.request.body
        const ret = await CustomerService.markBonusInfoReaded(ids)
        ctx.state.data = ret
    },
    getLatestUnreadMessage: async(ctx) => {
        const {uid} = ctx.request.query
        ctx.state.data = await CustomerService.getLatestUnreadMessage(uid)
    },
    doExchange: async(ctx) => {
        const {uid, eid} = ctx.request.body
        try {
            const bonus = await CustomerService.doExchange(uid, eid)
            ctx.state.data = bonus
        } catch (e) {
            ctx.state.code = 1
            ctx.state.data = e.message
        }
    },
    addBonus: async(ctx) => {
        const {uid, addBonus, type, typeName} = ctx.request.body
        try {
            const newBonus = await CustomerService.updateBonus(uid, parseInt(addBonus), type, typeName)
            ctx.state.data = newBonus
        } catch (e) {
            ctx.state.code = 1
            ctx.state.data = e.message
        }
    },
    batchAddBonus: async(ctx) => {
        const {records} = ctx.request.body
        try {
            await CustomerService.bactchUpdateBonus(JSON.parse(records))
            // ctx.state.data = newBonus
        } catch (e) {
            ctx.state.code = 1
            ctx.state.data = e.message
        }
    },
    getCompany: async(ctx) => {
        const { id } = ctx.request.query
        try {
            const newBonus = await CustomerService.getCompanyById(id)
            ctx.state.data = newBonus
        } catch (e) {
            ctx.state.code = 1
            ctx.state.data = e.message
        }
    }

}
