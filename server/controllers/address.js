const AddressService = require('../services/address')
// 登录授权接口
module.exports = {
    getAllAddresss: async (ctx, next) => {
        const {uid} = ctx.session.userinfo
        const ret = await AddressService.getList(uid)
        ctx.state.data = ret
    },
    getAddressById: async (ctx, next) => {
        const {id} = ctx.request.query
        const {uid} = ctx.session.userinfo
        const ret = await AddressService.getAddressById(uid, parseInt(id))
        // console.log('ret :',ret);
        ctx.state.data = ret
    },
    addAddress: async (ctx, next) => {
        const {data} = ctx.request.body
        const {uid} = ctx.session.userinfo
        const ret = await AddressService.addAddress(Object.assign({}, data, {uid}))
        ctx.state.data = ret
    },
    editAddress: async(ctx, next) => {
        const {data} = ctx.request.body
        const {uid} = ctx.session.userinfo
        if (uid !== data.uid) {
            ctx.state.code = 1
            ctx.state.data = '无权更改他人的收货地址'
            return
        }
        const ret = await AddressService.editAddress(data)
        ctx.state.data = ret
    },
    removeAddress: async(ctx, next) => {
        const {data} = ctx.request.body
        const ret = await AddressService.deleteAddress(data)
        ctx.state.data = ret
    }
}
