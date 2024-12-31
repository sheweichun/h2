
const MembersService = require('../services/members')
const CutomerService = require('../services/customer')

module.exports = {
    getMemberList: async function (ctx, next) {
        const {where} = ctx.request.query
        const ret = await MembersService.getMembersList(where)
        ctx.state.data = ret
    },
    update: async function (ctx, next) {
        const {data} = ctx.request.body
        const ret = await MembersService.updateMember(data)
        ctx.state.data = ret
    },
    getRightsGroupList: async function (ctx, next) {
        const {where} = ctx.request.query
        const ret = await MembersService.getRightsGroupList(where)
        ctx.state.data = ret
    },
    updateGroup: async function (ctx, next) {
        const {data} = ctx.request.body
        const ret = await MembersService.updateRightsGroup(data)
        ctx.state.data = ret
    },
    addGroup: async function (ctx, next) {
        const {data} = ctx.request.body
        const ret = await MembersService.addGroup(data)
        ctx.state.data = ret
    },
    getRights: async function (ctx, next) {
        const ret = await MembersService.getRights()
        ctx.state.data = ret
    },
    addRights: async function (ctx, next) {
        const {data, list} = ctx.request.body
        const ret = await MembersService.addRights(data, list)
        ctx.state.data = ret
    },
    updateRights: async function (ctx, next) {
        const {data, list} = ctx.request.body
        const ret = await MembersService.updateRights(data, list)
        ctx.state.data = ret
    },
    addUserMemberBonus: async function (ctx, next) {
        const {data} = ctx.request.body
        const ret = await MembersService.addUserMemberBonus(data)
        ctx.state.data = ret
    },
    getMemberBonusList: async function (ctx, next) {
        const {size, current, uid} = ctx.request.query
        const ret = await MembersService.getMemberBonusList({
            size,
            current,
            where: {
                uid
            }
        })
        ctx.state.data = ret
    },
    addMemberRightsExchange: async function (ctx, next) {
        const { data } = ctx.request.body
        ctx.state.data = await MembersService.addMemberRightsExchange(data)
    },
    getMemberRightsExchangeList: async function (ctx, next) {
        const {size, current, uid} = ctx.request.query
        const ret = await MembersService.getMemberRightsExchangeList({
            size,
            current,
            where: {
                uid
            }
        })
        ctx.state.data = ret
    },
    getAllMemberRightsExchange: async function (ctx, next) {
        const userinfo = ctx.session.userinfo
        const {size, current, rid} = ctx.request.query
        const ret = await MembersService.getMemberRightsExchangeList({
            size,
            current,
            where: {
                uid: userinfo.uid,
                rid
            }
        })
        ctx.state.data = ret
    },
    getAllMemberRights: async function (ctx, next) {
        const userinfo = ctx.session.userinfo
        // console.log('userinfo :', userinfo, userinfo.uid)
        const ret = await MembersService.getUserMemberRights(userinfo.uid)
        ctx.state.data = ret
    },
    getUserMemberRights: async function (ctx, next) {
        const {uid} = ctx.request.query
        const ret = await MembersService.getUserMemberRights(uid)
        ctx.state.data = ret
    },
    getMemberRights: async function (ctx, next) {
        const {mid} = ctx.request.query
        const ret = await MembersService.getMemberRights(mid)
        ctx.state.data = ret
    },
    openMember: async function (ctx, next) {
        const userinfo = ctx.session.userinfo
        // console.log('userinfo :', userinfo, userinfo.uid)
        const ret = await CutomerService.openMember(userinfo.uid)
        ctx.state.data = ret
    }
    // addUserMemberBonus: async function(ctx, next){

    // },
    // createShare: async function (ctx, next) {
    //     const userinfo = ctx.session.userinfo
    //     const {type, value} = ctx.request.body
    //     const ret = await ShareService.createShare({
    //         cid: userinfo.uid,
    //         type,
    //         value
    //     })
    //     ctx.state.data = ret
    // },
    // createShareInfo: async function (ctx, next) {
    //     const userinfo = ctx.session.userinfo
    //     const {cid, value} = ctx.request.body
    //     const ret = await ShareService.createShareInfo(cid, value, userinfo.uid)
    //     ctx.state.data = ret
    // }
}
