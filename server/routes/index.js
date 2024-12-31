/**
 * ajax 服务路由集合
 */
const router = require('koa-router')({
    prefix: '/weapp'
})
const controllers = require('../controllers')
const adminAuthMiddleware = require('../middlewares/auth')
const miniAuthMiddleware = require('../middlewares/miniAuth')
const uploadMiddleware = require('../middlewares/upload')

// 从 sdk 中取出中间件
// 这里展示如何使用 Koa 中间件完成登录态的颁发与验证
const { auth: { authorizationMiddleware, validationMiddleware } } = require('../qcloud')

// --- 登录与授权 Demo --- //
// 登录接口
router.get('/login', authorizationMiddleware, controllers.login.login)
router.post('/loginAdmin', controllers.login.loginAdmin)
router.get('/loginAdmin', controllers.login.judgeloginAdmin)
router.post('/loginAdminOut', controllers.login.loginAdminOut)
router.get('/session', controllers.login.session)
// 用户信息接口（可以用来验证登录态）
router.get('/user', validationMiddleware, controllers.user)

router.post('/getRunData', controllers.run)

// --- 图片上传 Demo --- //
// 图片上传接口，小程序端可以直接将 url 填入 wx.uploadFile 中
router.post('/upload', controllers.upload.upload)
router.post('/upload/save', controllers.upload.saveUploadInfo)
router.get('/upload/list', controllers.upload.getUploadInfoList)

// --- 信道服务接口 Demo --- //
// GET  用来响应请求信道地址的
router.get('/tunnel', controllers.tunnel.get)
// POST 用来处理信道传递过来的消息
router.post('/tunnel', controllers.tunnel.post)

// --- 客服消息接口 Demo --- //
// GET  用来响应小程序后台配置时发送的验证请求
router.get('/message', controllers.message.get)
// POST 用来处理微信转发过来的客服消息
router.post('/message', controllers.message.post)

router.get('/report/list', miniAuthMiddleware, controllers.report.list)
router.get('/article/list', miniAuthMiddleware, controllers.article.getAllArticles)

router.post('/customer/updateCompanyInfo', miniAuthMiddleware, controllers.customer.updateCompanyInfo)
router.post('/customer/updateCompanyPhone', miniAuthMiddleware, controllers.customer.updateCompanyPhone)

router.get('/customer/getCompany', miniAuthMiddleware, controllers.customer.getCompany)

router.post('/customer/getCheckNo', miniAuthMiddleware, controllers.checkno.getCheckNo) // 获取验证码
router.post('/customer/updateCustomerRunInfo', miniAuthMiddleware, controllers.customer.updateCustomerRunInfo)
router.post('/customer/updateCustomerDakaInfo', miniAuthMiddleware, controllers.customer.updateCustomerDakaInfo)
router.post('/customer/updateCustomerActivityBonus', miniAuthMiddleware, controllers.customer.updateCustomerActivityBonus)

router.get('/customer', miniAuthMiddleware, controllers.customer.getCustomerByUid)
router.get('/exchange/getAllExchangeByUser', miniAuthMiddleware, controllers.exchange.getAllExchangeByUser)
router.get('/config/getCodeById', miniAuthMiddleware, controllers.config.getCodeById)

router.post('/customer/getCheckNo1', controllers.checkno.getCheckNo)

router.get('/address/list', miniAuthMiddleware, controllers.address.getAllAddresss)
router.post('/address/add', miniAuthMiddleware, controllers.address.addAddress)
router.post('/address/edit', miniAuthMiddleware, controllers.address.editAddress)
router.post('/address/remove', miniAuthMiddleware, controllers.address.removeAddress)
router.get('/address/getAddressById', miniAuthMiddleware, controllers.address.getAddressById)

// Questionnaire
// router.get('/questionnaire/getQuestionnaireDetail', miniAuthMiddleware, controllers.questionnaire.getQuestionnaireDetail)
router.get('/questionnaire/getQuestionnaireDetail', miniAuthMiddleware, controllers.questionnaire.getQuestionnaireDetail)
router.get('/questionnaire/getQuestionnaireAnswer', miniAuthMiddleware, controllers.questionnaire.getQuestionnaireAnswer)
router.post('/questionnaire/saveQuestionnaireAnswers', miniAuthMiddleware, controllers.questionnaire.saveQuestionnaireAnswers)

router.post('/exchange/doexchange', miniAuthMiddleware, controllers.exchange.doExchange)
router.get('/exchange/queryexchange', miniAuthMiddleware, controllers.exchange.allUserExchangeByUid)
router.post('/exchange/cancelmyexchange', miniAuthMiddleware, controllers.exchange.cancelUserExchange)

router.post('/open/sendMessage', controllers.open.sendMessage)

router.get('/config/getBonusType', controllers.config.getBonusType)
router.get('/customer/getLatestUnreadMessage', controllers.customer.getLatestUnreadMessage)
router.post('/customer/markBonusInfoReaded', controllers.customer.markBonusInfoReaded)

// 分享接口
router.post('/share/createShare', controllers.share.createShare)
router.post('/share/createShareInfo', controllers.share.createShareInfo)

// 积分记录
router.get('/customer/getUserBonusInfo', controllers.customer.getLastBonusInfos)

// 后台管理系统接口
router.post('/config/generateCode', adminAuthMiddleware, controllers.config.generateCode)
router.post('/config/modifyCode', adminAuthMiddleware, controllers.config.modifyCode)

// 积分清零
router.post('/config/resetBonus', adminAuthMiddleware, controllers.config.resetBonus)
router.get('/config/loadBonusTypes', adminAuthMiddleware, controllers.config.loadBonusTypes)
router.post('/config/addBonusType', adminAuthMiddleware, controllers.config.addCompanyBonusType)
router.post('/config/editCompanyBonusType', adminAuthMiddleware, controllers.config.editCompanyBonusType)

router.get('/config/codeList', adminAuthMiddleware, controllers.config.getCodeList)
router.get('/upload/listWithQuery', adminAuthMiddleware, controllers.upload.listWithQuery)
router.get('/upload/getExportBonus', adminAuthMiddleware, controllers.upload.exportAll)
router.get('/upload/exportAllBonusInfo', adminAuthMiddleware, controllers.upload.exportAllBonusInfo)

router.post('/upload/changeUploadBonusFlag', adminAuthMiddleware, controllers.upload.changeUploadBonusFlag)
router.get('/customer/all', adminAuthMiddleware, controllers.customer.all)
router.get('/customer/exportCustomers', adminAuthMiddleware, controllers.customer.exportCustomers)
router.get('/customer/exportHealthCustomersByCid', adminAuthMiddleware, controllers.customer.exportHealthCustomersByCid)
router.get('/customer/getAllBonusInfo', adminAuthMiddleware, controllers.customer.getAllBonusInfo)
router.post('/customer/addBonus', adminAuthMiddleware, controllers.customer.addBonus)
router.post('/customer/batchAddBonus', adminAuthMiddleware, controllers.customer.batchAddBonus)

router.post('/customer/changeCompanyIdAndName', adminAuthMiddleware, controllers.customer.changeCompany)

router.get('/share/getShareList', adminAuthMiddleware, controllers.share.getShareList)
router.get('/share/getShareInfoList', miniAuthMiddleware, controllers.share.getShareInfoList)

router.get('/share/getAdminShareInfoList', adminAuthMiddleware, controllers.share.getShareInfoList)

router.get('/exchange/list', adminAuthMiddleware, controllers.exchange.getAllExchanges)
router.post('/exchange', adminAuthMiddleware, controllers.exchange.addExchange)
router.post('/exchange/edit', adminAuthMiddleware, controllers.exchange.editExchange)
router.post('/exchange/doCustomerExchange', adminAuthMiddleware, controllers.customer.doExchange)

router.get('/exchange/allUserExchange', adminAuthMiddleware, controllers.exchange.allUserExchange)

router.post('/exchange/cancelExchange', adminAuthMiddleware, controllers.exchange.cancelExchange)
router.post('/exchange/completeExchange', adminAuthMiddleware, controllers.exchange.completeExchange)
router.post('/exchange/updateExchangeRecordRemark', adminAuthMiddleware, controllers.exchange.updateExchangeRecordRemark)

router.get('/article/getListByCid', adminAuthMiddleware, controllers.article.getListByCid)
router.post('/article/add', adminAuthMiddleware, controllers.article.addArticle)
router.post('/article/edit', adminAuthMiddleware, controllers.article.editArticle)
router.post('/article/remove', adminAuthMiddleware, controllers.article.removeArticle)

router.get('/report/all', adminAuthMiddleware, controllers.report.all)
router.post('/report/add', adminAuthMiddleware, controllers.report.add)
router.post('/report/edit', adminAuthMiddleware, controllers.report.edit)
router.post('/report/remove', adminAuthMiddleware, controllers.report.remove)

// 会员信息C接口
router.get('/members/all', controllers.members.getMemberList)
router.get('/members/getAllMemberRights', miniAuthMiddleware, controllers.members.getAllMemberRights)
router.get('/members/getMemberRights', miniAuthMiddleware, controllers.members.getMemberRights) // 获取该会员等级下的权益列表
router.get('/members/getAllMemberRightsExchange', miniAuthMiddleware, controllers.members.getAllMemberRightsExchange) // 获取用户的权益列表
router.get('/members/openMember', miniAuthMiddleware, controllers.members.openMember) // 开通会员

// 会员信息B接口
router.get('/members/list', adminAuthMiddleware, controllers.members.getMemberList)
router.post('/members/update', adminAuthMiddleware, controllers.members.update)
router.get('/members/grouplist', controllers.members.getRightsGroupList)
router.post('/members/addgroup', adminAuthMiddleware, controllers.members.addGroup)
router.post('/members/updategroup', adminAuthMiddleware, controllers.members.updateGroup)

router.get('/members/rightslist', adminAuthMiddleware, controllers.members.getRights)
router.post('/members/addrights', adminAuthMiddleware, controllers.members.addRights)
router.post('/members/updaterights', adminAuthMiddleware, controllers.members.updateRights)

router.post('/members/addUserMemberBonus', adminAuthMiddleware, controllers.members.addUserMemberBonus)
router.get('/members/getMemberBonusList', adminAuthMiddleware, controllers.members.getMemberBonusList)
router.get('/members/getMemberRightsExchangeList', adminAuthMiddleware, controllers.members.getMemberRightsExchangeList) // 获取用户的权益列表
router.post('/members/addMemberRightsExchange', adminAuthMiddleware, controllers.members.addMemberRightsExchange) // 兑换用户权益

router.get('/members/getUserMemberRights', adminAuthMiddleware, controllers.members.getUserMemberRights)

router.post('/admin/add', adminAuthMiddleware, controllers.admin.addAdmin)
router.post('/admin/update', adminAuthMiddleware, controllers.admin.updateAdmin)
router.get('/admin/list', adminAuthMiddleware, controllers.admin.getAllAdmin)

router.post('/admin/batchUpdateBonusByOpenIds', adminAuthMiddleware, controllers.customer.batchUpdateBonusByOpenIds)

router.get('/test', controllers.test.test)

router.post('/backend-upload', adminAuthMiddleware, uploadMiddleware, controllers.upload.backendUpload)

router.get('/collectionque/list', adminAuthMiddleware, controllers.collectionque.getAll)
router.post('/collectionque/add', controllers.collectionque.addQue)

module.exports = router
