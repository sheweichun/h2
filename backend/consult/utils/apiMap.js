
const env = window.CFG.env || 'online'

const domain = env === 'local' ? '//localhost:5757' : '//826625173.ehpp.club'
// const domain = '//826625173.ehpp.club'


function addWithCredentials(val){
    // Object.keys(val).forEach((name)=>{
    //   const item = val[name];
    //   item.param && (item.param.withCredentials = true)
    // })
    return val
}

export default addWithCredentials({
  getCheckNo: {
    param: {
      url: `${domain}/weapp/customer/getCheckNo1`,
      method: 'post'
    }
  },
  addQue: {
    param: {
      url: `${domain}/weapp/collectionque/add`,
      method: 'post'
    }
  }
})
