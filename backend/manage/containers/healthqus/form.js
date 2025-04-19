
import React, { Component } from 'react'
import {Input, Form, Message, DatePicker, Switch} from '@alife/next'
import Uploader from '../../components/upload'
import apiMap from '../../util/apiMap'
const FormItem = Form.Item

const formItemLayout = {
  labelCol: {span: 5},
  wrapperCol: {span: 19}
}

function wrapUploadValue(url) {
  return url ? [{url}] : []
}

function wrapTimeValue(val){
  return val ? moment(val) : undefined
}

function wrapUploadPdfValue(url) {
  return url ? [{url, name: url}] : []
}

const ArticelTypeSource = [
  {
    label: '网页',
    value: 0
  }, {
    label: 'PDF',
    value: 1
  }
]

class CodeForm extends Component {
  constructor(props) {
    super(props)
    const data = props.data || {}
    // const type = data.type || ArticelTypeSource[0].value
    // const icon = data.url
    const newVal = Object.assign({}, data, {
      // isshow: data.flag === 1
      // type,
      // icon
    })
    // newVal.start = moment(newVal.start)
    // newVal.end = moment(newVal.end)
    // console.log('start :', newVal.start)
    this.state = {
      size: 'medium',
      value: newVal 
    }
  }
  render() {
    const {onSubmit, onClose, data = {}, companySource} = this.props
    // const dataIcon = data.url
    const { value } = this.state
    // const dataType = value.type || ArticelTypeSource[0].value
    // console.log('go here!!', dataType === 0, this.state.value)
    // console.log('value1 :', value, data.flag === 1)
    return (
            <div>
                <Form {...formItemLayout} value={this.state.value} size={this.state.size} style={{minWidth: '500px'}} onChange={(val) => {
                  this.setState({value: val})
                }}>
                    <FormItem label="标题：">
                        <Input defaultValue={data.name} placeholder="输入标题" id="name" name="name"/>
                        <Input defaultValue={data.id} htmlType="hidden" id="id" name="id"/>
                    </FormItem>
                    <FormItem label="问卷积分：">
                        <Input defaultValue={data.bonus} htmlType="number" placeholder="输入问卷积分" id="bonus" name="bonus"/>
                    </FormItem>
                    <FormItem label="生效时间：">
                        <DatePicker defaultValue={wrapTimeValue(data.start)}  id="start_tm" name="start_tm"/>
                    </FormItem>
                    <FormItem label="结束时间：">
                        <DatePicker defaultValue={wrapTimeValue(data.end)}  id="end_tm" name="end_tm"/>
                    </FormItem>
                    <FormItem label="是否展示：">
                        <Switch autoWidth defaultChecked={data.flag === 1} id="isshow" name="isshow"/>
                    </FormItem>
                    <FormItem label="生效封面图：">
                        {/* <Input defaultValue={data.logo} placeholder="请输入图片链接" id="logo" name="logo"/> */}
                        <Uploader defaultValue={wrapUploadValue(data.active_cover)} url={apiMap.uploadBackend.param.url} name="active_covers" id="active_covers"></Uploader>
                    </FormItem>
                    <FormItem label="失效封面图：">
                        {/* <Input defaultValue={data.logo} placeholder="请输入图片链接" id="logo" name="logo"/> */}
                        <Uploader defaultValue={wrapUploadValue(data.cover)} url={apiMap.uploadBackend.param.url} name="covers" id="covers"></Uploader>
                    </FormItem>
                    {/* <FormItem label="文章跳转地址：">
                        {
                          dataType === 0 ? <Input defaultValue={data.url} placeholder="请输入文章跳转地址" id="url" name="url"/> :
                          <Uploader fsize={100} accept="application/pdf" url={apiMap.uploadBackend.param.url} defaultValue={wrapUploadPdfValue(dataIcon)} name="icon" id="icon"></Uploader>
                        }
                    </FormItem> */}
                    <FormItem wrapperCol={{ offset: 5 }} >
                        <Form.Submit validate type="primary" onClick={(v, e) => {
                          
                          // console.log('v :', v)
                          // return 
                          // v.active_covers = ['111']
                          // v.covers = ['222']
                          if (!v.name || !v.start_tm || !v.end_tm || !v.bonus || !v.active_covers || !v.covers || v.active_covers.length === 0 || v.covers.length === 0) {
                            return Message.warning('参数未填写完整,请检查')
                          }
                          v.active_cover = v.active_covers
                          v.cover = v.covers
                          if (Array.isArray(v.active_cover)) {
                            v.active_cover = v.active_covers[0].url
                          }
                          if (Array.isArray(v.cover)) {
                            v.cover = v.covers[0].url
                          }
                          if(v.end_tm.isBefore(v.start_tm)){
                            return Message.warning('结束时间不能小于开始时间')
                          }
                          const num = parseInt(v.bonus)
                          if(isNaN(num)){
                            return Message.warning('问卷积分必须是数字')
                          }
                          v.start = v.start_tm.format('YYYY-MM-DD HH:mm:ss')
                          v.end = v.end_tm.format('YYYY-MM-DD HH:mm:ss')
                          if(v.isshow == null){
                            v.flag = data.flag
                          }else{
                            v.flag = v.isshow ? 1 : 0
                          }
                          
                          console.log('v :', v)
                          // if (v.type === ArticelTypeSource[0].value) { // 网页
                          //   v.url = [{url: v.url}]
                          // } else {
                          //   v.url = v.icon
                          // }
                          
                         
                          // v.logo = v.logo[0].url
                          // v.url = v.url[0].url
                          onSubmit && onSubmit(v)
                        }} style={{marginRight: 10}}>提交</Form.Submit>
                        <Form.Reset onClick={onClose}>取消</Form.Reset>
                    </FormItem>
                </Form>
            </div>
    )
  }
}

export default CodeForm
