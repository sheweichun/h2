const CheckNoService = require('../services/checkno')

// 登录授权接口
module.exports = {
    getCheckNo: async (ctx, next) => {
        const {phone} = ctx.request.body
        if(phone == null){
            ctx.state.data = '手机号不能为空'
            ctx.state.code = 1
            return
        }
        if(!/^\d*$/.test(phone)){
            ctx.state.data = '手机号无效'
            ctx.state.code = 1
            return
        }
        try{
            const ret = await CheckNoService.getCheckNo(phone)
            if(ret.success){
                ctx.state.data = ret.checkNo
            }else{
                ctx.state.data = errorMsg
                ctx.state.code = 1
            }
        }catch(e){
            ctx.state.data = '短信发送失败'
            ctx.state.code = 1
        }
    }
}
