const CONF = {
    port: '5757',
    rootPathname: '',

    // 微信小程序 App ID
    appId: 'wx10456ccd8ac36129',

    // 微信小程序 App Secret
    appSecret: 'c28371cb4ba84256439ac99417463a24',

    // 是否使用腾讯云代理登录小程序
    useQcloudLogin: false,

    /**
     * MySQL 配置，用来存储 session 和用户信息
     * 若使用了腾讯云微信小程序解决方案
     * 开发环境下，MySQL 的初始密码为您的微信小程序 appid
     */
    uploadPrefix: 'res',
    uploaderDir: '/Users/luodan/uploadertestplace', // 本地开发
    uploaderCdNPath: 'http://localhost:5757/res',

    // uploaderDir: '/home/lighthouse/uploadres', // 生产环境
    // uploaderCdNPath: 'https://826625173.ehpp.club/res',
    mysql: {
        host: 'localhost', // 10.0.4.16
        // host: '10.0.4.16',
        port: 3306,
        user: 'root',
        db: 'cAuth',
        pass: 'JJAdegxC1',
        // pass: '123456',
        // pass: 'wx82abd1b5ab833f2d',
        char: 'utf8mb4'
    },
    qcloudSecretId: 'AKIDHOHvKUQ6XjgOq31sUqwnPnwqVv50f4D7',
    qcloudSecretKey: 'iCRRCiz1oLceRzIL9i27wWszqTqxpSpx',
    cos: {
        /**
         * 地区简称
         * @查看 https://cloud.tencent.com/document/product/436/6224
         *  SecretId
         * @查看 https://console.cloud.tencent.com/cam/capi
         */
        // region: 'ap-guangzhou',
        // // Bucket 名称
        // fileBucket: 'qcloudtest',
        // // 文件夹
        // uploadFolder: ''
        maxSize: 30,
        region: 'ap-shanghai',
        // Bucket 名称
        fileBucket: 'lg-ick5yu5q-1257296211',
        // 文件夹
        uploadFolder: ''
    },

    // 微信登录态有效期
    wxLoginExpires: 7200,
    wxMessageToken: 'abcdefgh'
}

module.exports = CONF
