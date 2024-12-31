
const request = require('request')

const Util = {
    req (url, method, data) {
        return new Promise((resolve, reject) => {
            request({
                url: url,
                method: method,
                json: true,
                headers: {
                    'content-type': 'application/json'
                },
                body: data ? JSON.stringify(data) : null
            }, function (error, response, body) {
                if (error) {
                    return reject(error)
                }
                resolve(body)
            })
        })
    },
    get (url) {
        return Util.req(url, 'GET')
    },
    post (url, data) {
        return Util.req(url, 'POST', data)
    }
}

module.exports = Util
