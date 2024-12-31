
const OpenService = require('../services/open')

module.exports = {
    sendMessage: async (ctx, next) => {
        // const {where} = ctx.request.query
        // const ret = await ExchangeService.getList(ctx.request.query)
        console.log('sendMessage !!!!!!!!!!!')
        const ret = await OpenService.sendMessage()
        ctx.state.data = ret
    }
}
