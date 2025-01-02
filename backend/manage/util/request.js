// import Mio from '@ali/mio'
// import MioAjax from '@ali/mio-ajax'
// import {Message} from '@alife/next'
import ApiMap from './apiMap'
// import ToastPlugin from '@ali/mio-plugin-toast'
// // const Toast = Feedback.toast

// let io = new Mio({
//   apiMap: ApiMap,
//   transform: function(resp) {
//     if (resp.code === 401) {
//       location.hash = '/login'
//     }
//     if (resp.code === 0) {
//       return {
//         success: true,
//         data: resp.data
//       }
//     }
//     return {
//       success: false,
//       errMsg: resp.data
//     }
//   }
// }, MioAjax, [
//     // RetCodePlugin({needParam:true}),
//   ToastPlugin({toast: Message})
// ])

// export const Fetch = io.request.bind(io)
import { Mio } from './mio'

const mio = new Mio({
  apiMap: ApiMap,
  transform: function(resp) {
    // console.log('resp transorm :',resp)
      if (resp.code === 401) {
        //   console.log('go here')
          setTimeout(()=>{
            location.hash = '/login'
          })
      }
      if (resp.code === 0) {
          return {
            success: true,
            data: resp.data
          }
      }
      return {
          success: false,
          errMsg: resp.data
      }
  }
})

export const Fetch = mio.request.bind(mio)

// io.request('sadas.test',{
//     a:3,
//     b:4
// },{
//  successTip:'加载成功',
//  showLoading:true,
//  hideError:true
// }).then((resp)=>{
//     this.show('Ajax success :',resp);
// },(err)=>{
//     this.show('Ajax error :',err);
// })
