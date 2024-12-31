
import React, { Component } from 'react'
import {Input, Form, Message, Select} from '@alife/next'
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
    const type = data.type || ArticelTypeSource[0].value
    const icon = data.url
    this.state = {
      size: 'medium',
      value: Object.assign({}, data, {
        type,
        icon
      })
    }
  }
  render() {
    const {onSubmit, onClose, data = {}, companySource} = this.props
    const dataIcon = data.url
    const { value } = this.state
    const dataType = value.type || ArticelTypeSource[0].value
    console.log('go here!!', dataType === 0, this.state.value)
    return (
            <div>
                <Form {...formItemLayout} value={this.state.value} size={this.state.size} style={{minWidth: '500px'}} onChange={(val) => {
                  // console.log('val :', val);
                  this.setState({value: val})
                }}>
                    <FormItem label="标题：">
                        <Input defaultValue={data.title} placeholder="输入标题" id="title" name="title"/>
                        <Input defaultValue={data.id} htmlType="hidden" id="id" name="id"/>
                    </FormItem>
                    <FormItem label="描述：">
                        <Input defaultValue={data.subTitle} placeholder="输入描述" id="subTitle" name="subTitle"/>
                    </FormItem>
                    <FormItem label="所属公司：">
                        <Select showSearch defaultValue={data.cid} dataSource={companySource} id="cid" name="cid"/>
                    </FormItem>
                    <FormItem label="文章类型：">
                        <Select defaultValue={dataType} dataSource={ArticelTypeSource} id="type" name="type"/>
                    </FormItem>
                    <FormItem label="文章图片链接：">
                        {/* <Input defaultValue={data.logo} placeholder="请输入图片链接" id="logo" name="logo"/> */}
                        <Uploader defaultValue={wrapUploadValue(data.logo)} url={apiMap.uploadBackend.param.url} name="logo" id="logo"></Uploader>
                    </FormItem>
                    <FormItem label="文章跳转地址：">
                        {
                          dataType === 0 ? <Input defaultValue={data.url} placeholder="请输入文章跳转地址" id="url" name="url"/> :
                          <Uploader fsize={100} accept="application/pdf" url={apiMap.uploadBackend.param.url} defaultValue={wrapUploadPdfValue(dataIcon)} name="icon" id="icon"></Uploader>
                        }
                    </FormItem>
                    <FormItem wrapperCol={{ offset: 5 }} >
                        <Form.Submit validate type="primary" onClick={(v, e) => {
                          // console.log('ho:', v)
                          if (v.type == null) {
                            v.type = ArticelTypeSource[0].value
                          }
                          if (v.type === ArticelTypeSource[0].value) { // 网页
                            v.url = [{url: v.url}]
                          } else {
                            v.url = v.icon
                          }
                          if (!v.title || !v.subTitle || !v.logo || !v.url || v.logo.length === 0 || v.url.length === 0) {
                            return Message.warning('参数未填写完整,请检查')
                          }
                         
                          v.logo = v.logo[0].url
                          v.url = v.url[0].url
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
