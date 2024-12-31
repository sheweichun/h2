
const qcloud = require('../vendor/wafer2-client-sdk/index');
// const Promise = require('./promise');
const formatTime = date => {
    const year = date.getFullYear()
    const month = date.getMonth() + 1
    const day = date.getDate()
    const hour = date.getHours()
    const minute = date.getMinutes()
    const second = date.getSeconds()
  
    return [year, month, day].map(formatNumber).join('/') + ' ' + [hour, minute, second].map(formatNumber).join(':')
  }
  
  const formatNumber = n => {
    n = n.toString()
    return n[1] ? n : '0' + n
  }
  
  
  // 显示繁忙提示
  var showBusy = text => wx.showToast({
      title: text,
      icon: 'loading',
      duration: 10000
  })
  
  // 显示成功提示
  var showSuccess = text => wx.showToast({
      title: text,
      icon: 'success'
  })
  
  // 显示失败提示
  var showModel = (title, content,success) => {
      wx.hideToast();
  
      wx.showModal({
          title,
          content: JSON.stringify(content),
          success,
          showCancel: false
      })
  }

function assign(obj,...args) {
    for(let i = 0; i < args.length; i++){
        const newObj = args[i];
        if(newObj){
            for (let i in newObj) obj[i] = newObj[i];
        }
    }
    return obj
}

function req(option){
    return new Promise((resolve,reject)=>{
        // showModel('req',JSON.stringify(option));
        qcloud.request(assign({},{
            header: {
                'Content-Type': 'application/json', // 默认值
                'Cookie':wx.getStorageSync('weCookie') || ''
            },
            method:'GET',
            success:function(resp){
                const header = resp.header;
                const setCookie = header['Set-Cookie'];
                if(setCookie){
                    wx.setStorageSync('weCookie',setCookie);
                }
                if(resp.data && resp.data.code === 0){
                    resolve(resp.data.data);
                }else{
                    reject(new Error(resp.data.data || '未知错误'));
                }
            },
            fail:function(err){
                // showModel('req fail',JSON.stringify(err));
                // showModel('req fail',err.errMsg);
                reject(new Error(err.errMsg || err.message))
            }
        },option))
    })
}
 
function checkUserInfo(user){
    if(!user.realName || !user.companyName){
        showModel('注意','上传积分需要完善个人信息',()=>{
            wx.navigateTo({
              url:`personInfo?uid=${user.uid}`
            })
        });
        return false;
    }
    return true;
}
  
module.exports = { formatTime,req, showBusy, showSuccess, showModel,checkUserInfo }
  