const Koa = require('koa')
const app = new Koa()
const path = require('path')
const debug = require('debug')('koa-weapp-demo')
const koaMount = require('koa-mount')
const response = require('./middlewares/response')
const bodyParser = require('koa-bodyparser')

const config = require('./config')
const static = require('koa-static')
const session = require('koa-session');

app.keys = ['luodanhealthyhelper'];

const CONFIG = {
  key: 'koa:sess', /** (string) cookie key (default is koa:sess) */
  /** (number || 'session') maxAge in ms (default is 1 days) */
  /** 'session' will result in a cookie that expires when session/browser is closed */
  /** Warning: If a session cookie is stolen, this cookie will never expire */
  maxAge: 86400000 * 7,
  // maxAge:5000,
  signed:false
  // overwrite: true, /** (boolean) can overwrite or not (default true) */
  // httpOnly: true, /** (boolean) httpOnly or not (default true) */
  // signed: true, /** (boolean) signed or not (default true) */
  // rolling: false, /** (boolean) Force a session identifier cookie to be set on every response. The expiration is reset to the original maxAge, resetting the expiration countdown. (default is false) */
  // renew: false, /** (boolean) renew session when session is nearly expired, so we can always keep user logged in. (default is false)*/
};

app.use(session(CONFIG, app));

// 使用响应处理中间件
app.use(response)

// 解析请求体
app.use(bodyParser({
  jsonLimit: '2mb',
  formLimit: '2mb',
}))
// app.use(koaBody({
//   multipart: true,
//   formidable: {
//     maxFieldsSize : 10 * 1024 * 1024, //最大文件为10兆
//     multipart: true
//   }
// }))

app.use(koaMount(`/${config.uploadPrefix}`, static(config.uploaderDir)))
app.use(koaMount('/', static(path.join(__dirname,'public'))))

// app.use(static(path.join(__dirname,'public')));

// app.use(static(config.uploaderDir));
// 引入路由分发
const router = require('./routes')
app.use(router.routes())

// 启动程序，监听端口
app.listen(config.port, () => debug(`listening on port ${config.port}`))
