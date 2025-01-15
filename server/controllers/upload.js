const Dayjs = require('dayjs')
const { mkdirp } = require('mkdirp')
const { uploader } = require('../qcloud')
const fs = require('fs')
const path = require('path')
const config = require('../config')
const uploadService = require('../services/upload')
const {Parser} = require('../services/json2csv/json2csv')
module.exports = {
    upload: async ctx => {
        // 获取上传之后的结果
        // 具体可以查看：
        const data = await uploader(ctx.req)

        ctx.state.data = data
    },
    saveUploadInfo: async (ctx, next) => {
        const data = ctx.request.body
        const ret = await uploadService.saveUploadInfo(data)
        ctx.state.data = ret
    },
    getUploadInfoList: async(ctx) => {
        const {type, cid} = ctx.request.query
        const ret = await uploadService.getUploadInfoByCidAndType(cid, type)
        ctx.state.data = ret
    },
    listWithQuery: async(ctx) => {
        const {param, pageSize = 10, current = 1} = ctx.request.query
        const {query, config, filterStr} = JSON.parse(param)
        const filter = filterStr ? JSON.parse(filterStr) : {}
        const {aid} = ctx.session.adminer
        const ret = await uploadService.listWithQuery(parseInt(pageSize), parseInt(current), Object.assign({aid}, query, filter), config)
        ctx.state.data = ret
    },
    exportAll: async(ctx) => {
        // const {param} = ctx.request.query
        const query = ctx.request.query
        const {aid} = ctx.session.adminer
        const ret = await uploadService.listAll(Object.assign({aid}, query))
        const parser = new Parser({
            // fields
        })
        // const {res} = ctx;
        ctx.set('Content-disposition', `attachment; filename=bonus_${(Math.random() + '').substring(2, 8)}.csv`) //attachment
        ctx.set('Content-type', 'text/plain')
        ctx.body = Buffer.from(parser.parse(ret), 'utf-8')
        return
        // ctx.state.data = ret
    },
    exportAllBonusInfo: async(ctx) => {
        const { query } = ctx.request.query
        // let queryObj = {}
        // if (query) {
            // queryObj = JSON.parse(query)
        // }
        // const {aid} = ctx.session.adminer
        const ret = await uploadService.listAllBonusInfo(query)
        const parser = new Parser({
            // fields
        })
        // const {res} = ctx;
        ctx.set('Content-disposition', `attachment; filename=bonus_${(Math.random() + '').substring(2, 8)}.csv`) //attachment
        ctx.set('Content-type', 'text/plain')
        ctx.body = Buffer.from(parser.parse(ret), 'utf-8')
        return
        // ctx.state.data = ret
    },
    changeUploadBonusFlag: async(ctx) => {
        let {uid, value, cid, reason} = ctx.request.body
        if (!uid || !value || !cid) {
            ctx.state.code = 1
            ctx.state.data = '参数无效'
            return
        }
        value = value + ''
        if (value === '2' && !reason) {
            ctx.state.code = 1
            ctx.state.data = '拒绝原因不能为空'
            return
        }
        const ret = await uploadService.changeUploadBonusFlag(uid, value, cid, reason)
        if (ret) {
            ctx.state.code = 0
            ctx.state.data = true
            return
        }
        ctx.state.code = 1
        ctx.state.data = '修改失败'
    },
    backendUpload: async(ctx) => {
        // throw new Error('nothing')
        const { file } = ctx.request.files
        // console.log('file :', file)
        const fileReader = fs.createReadStream(file.filepath)
        const fileExt = path.extname(file.originalFilename)
        const uploadDir = config.uploaderDir
        // const preFilePath = uploadPath ? path.resolve(__dirname, '../../', uploadPath) : ''
        const nowTimeStr = new Dayjs().format('YYYY-MM-DD')
        let fileName = file.newFilename
        if (fileName.indexOf('.') < 0) {
            fileName = fileName + fileExt
        }
        const cdnFilePath = path.join(nowTimeStr, fileName)
        const filePath = path.join(uploadDir, nowTimeStr)
        if (!fs.existsSync(filePath)) {
            await mkdirp(filePath)
        }
        const fileResPath = path.join(filePath, fileName)
        // console.log('fileResPath :', fileResPath)
        const writeSream = fs.createWriteStream(fileResPath)
        fileReader.pipe(writeSream)
        const imgUrl = `${config.uploaderCdNPath}/${cdnFilePath}`
        ctx.state.code = 0
        ctx.state.data = {
            imgKey: fileName,
            imgUrl: imgUrl,
            imgUrlv4: imgUrl,
            mimeType: file.mimeType,
            name: fileName,
            size: file.size
        }
        // try {
            
        //     // ctx.state.data = cdnFilePath
        // } catch (e) {
        //     console.error(e)
        //     ctx.state.code = -1
        //     ctx.state.error = '文件上传失败::' + e.message
        // }
        // if(!fs.existsSync(filePath))
    }
}
