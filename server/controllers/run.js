const WXBizDataCrypt = require('../services/bizDataCrypt')
// const authService = require('wafer-node-sdk/lib/mysql/AuthDbService')
const authService = require('../services/wafer-node-sdk/lib/mysql/AuthDbService')
const AppConfig = require('../config')
module.exports = async function (ctx, next) {
    const appId = AppConfig.appId
    const body = ctx.request.body
    const skey = ctx.session.skey
    // console.log('sess :===>', ctx.session)
    const {encryptedData, iv} = body
    const recordList = await authService.getUserInfoBySKey(skey)
    if (recordList && recordList.length > 0) {
        const {session_key} = recordList[0] || {}
        // const session_key = 'uTP6K87OD/du6LCsJWckgQ==';
        const pc = new WXBizDataCrypt(appId, session_key)
        const data = pc.decryptData(encryptedData, iv)
        ctx.state.data = data
    }

// 解密后的数据为
//
// data = {
//   "nickName": "Band",
//   "gender": 1,
//   "language": "zh_CN",
//   "city": "Guangzhou",
//   "province": "Guangdong",
//   "country": "CN",
//   "avatarUrl": "http://wx.qlogo.cn/mmopen/vi_32/aSKcBBPpibyKNicHNTMM0qJVh8Kjgiak2AHWr8MHM4WgMEm7GFhsf8OYrySdbvAMvTsw3mo8ibKicsnfN5pRjl1p8HQ/0",
//   "unionId": "ocMvos6NjeKLIBqg5Mr9QjxrP1FA",
//   "watermark": {
//     "timestamp": 1477314187,
//     "appid": "wx4f4bc4dec97d474b"
//   }
// }
}
