import axios from 'axios'
import ApiMap from './apiMap'


export class Mio{
    constructor(config){
        this.apiMap = config.apiMap
        this.transform = config.transform
    }
    getApi(api, data, opt){
        let temp = api && api.indexOf('.') > -1 ? api.split('.'):[api]
        let apiMap = this.apiMap
        temp.forEach(element => {
            apiMap = apiMap[element]
        });
        if(!apiMap) return
        // apiMap = Object.assign({}, apiMap, {
        //     data: Object.assign({}, apiMap.data, data || {})
        // })
        return apiMap
    }
    parse(api, data, opt){
        let apiMap = this.getApi(api, data)
        let target = apiMap.param
        target.data = Object.assign(target.data || {}, data || {})
        let result = Object.assign({
            method: 'get',
            url:"",
            responseType: 'json'
        }, target)
        // console.log('result :', result, target)
        if(result.method === 'get'){
            result.params = result.data
            result.data = {}
        }
        return {
            param: result,
            option: Object.assign({}, apiMap.option, opt)
        }
    }
    request(api, data, opt){
       const { param, option } = this.parse(api, data, opt)
       const _this = this
       return new Promise((resolve, reject)=>{
        // console.log('param:', param)
        axios(param).then((resp)=>{
            // console.log('resp :'. resp, option.transform, this.transform)
            if(option.transform){
                resp = option.transform(resp.data)
            }else if(this.transform){
                // console.log('go transform', resp)
                resp = _this.transform(resp.data)
            }
            return resolve(resp)
           })
       }).catch((err)=>{
        return reject({
            status: err.status,
            statusText: err.statusText
        })
       })
    }
}


