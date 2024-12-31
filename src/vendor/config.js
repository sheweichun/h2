/**
 * 小程序配置文件
 */

// 此处主机域名修改成腾讯云解决方案分配的域名
// const host = 'https://omxtejvk.qcloud.la'
// const host = 'https://826625173.ehpp.club' // 线上
const host = 'http://localhost:5757'
// console.log('host :', host)
const config = {

    // 下面的地址配合云端 Demo 工作
  service: {
    host,

        // 登录地址，用于建立会话
    loginUrl: `${host}/weapp/login`,
    sessionUrl: `${host}/weapp/session`,

        // 测试的请求地址，用于测试会话
    requestUrl: `${host}/weapp/user`,

        // 测试的信道服务地址
    tunnelUrl: `${host}/weapp/tunnel`,
    reportUrl: `${host}/weapp/report/list`,

        // 上传图片接口
    uploadUrl: `${host}/weapp/upload`,
    uploadSaveUrl: `${host}/weapp/upload/save`,
    uploadListUrl: `${host}/weapp/upload/list`,

    parseRunDataUrl: `${host}/weapp/getRunData`,
    getCustomer: `${host}/weapp/customer`,
    updateCustomerCompay: `${host}/weapp/customer/updateCompanyInfo`,
    updateCustomerRunInfo: `${host}/weapp/customer/updateCustomerRunInfo`,
    updateCustomerDakaInfo: `${host}/weapp/customer/updateCustomerDakaInfo`,
    getLatestUnreadMessage: `${host}/weapp/customer/getLatestUnreadMessage`,
    getAllBousRecord: `${host}/weapp/customer/getUserBonusInfo`,
    markBonusInfoReaded: `${host}/weapp/customer/markBonusInfoReaded`,

    createShare: `${host}/weapp/share/createShare`,
    createShareInfo: `${host}/weapp/share/createShareInfo`,
    getAllExchangeByUser: `${host}/weapp/exchange/getAllExchangeByUser`,
    getArticles: `${host}/weapp/article/list`,
    sendMessage: `${host}/weapp/open/sendMessage`
  }
}

module.exports = config
