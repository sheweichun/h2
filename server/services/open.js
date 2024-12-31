
const APPID = 'wx10456ccd8ac36129'
const APP_SECRET = 'c28371cb4ba84256439ac99417463a24'
const request = require('../util/request')

let curToken

const OpenService = {
    getToken: async function () {
        const dt = Date.now()
        if (curToken && curToken.validtime > dt) {
            return curToken.access_token
        }
        const ret = await request.get(`https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=${APPID}&secret=${APP_SECRET}`)
        curToken = {
            access_token: ret.access_token,
            validtime: dt + ret.expires_in * 1000
        }
        return curToken.access_token
    },
    sendMessage: async function (openId) {
        const token = await OpenService.getToken()
        const ret = await request.post(`https://api.weixin.qq.com/cgi-bin/message/wxopen/template/uniform_send?access_token=${token}`, {
            'touser': 'OPENID',
            'weapp_template_msg': {
                'template_id': 'TEMPLATE_ID',
                'page': 'pages/index',
                'form_id': 'FORMID',
                'data': {
                    'keyword1': {
                        'value': '339208499'
                    },
                    'keyword2': {
                        'value': '2015年01月05日 12:30'
                    },
                    'keyword3': {
                        'value': '粤海喜来登酒店'
                    },
                    'keyword4': {
                        'value': '广州市天河区天河路208号'
                    }
                },
                'emphasis_keyword': 'keyword1.DATA'
            }
        })
        return ret
    }
}

module.exports = OpenService
