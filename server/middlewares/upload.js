
const { koaBody } = require('koa-body')

module.exports = koaBody({
    multipart: true,
    formidable: {
        maxFieldsSize: 10 * 1024 * 1024, // 最大文件为10兆
        multipart: true
    }
})
