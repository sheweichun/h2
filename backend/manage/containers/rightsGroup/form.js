
import React, { Component } from 'react'
import {Input, Form, Message, Switch} from '@alife/next'
import Uploader from '../../components/upload'
const FormItem = Form.Item

const formItemLayout = {
  labelCol: {span: 5},
  wrapperCol: {span: 19}
}


function wrapUploadValue(url){
  return url ? [{url}]:[]
}

function unWrapUploadValue(data){
  return data && data[0] ? data[0].url : ''
}

class CodeForm extends Component {
  constructor(props) {
    super(props)
    this.state = {
      size: 'medium'
    }
  }
  render() {
    const {onSubmit, onClose, data = {}} = this.props
    return (
            <div>
                <Form {...formItemLayout} size={this.state.size} style={{minWidth: '500px'}}>
                    <FormItem label="会员权益分类名">
                        <Input defaultValue={data.name} id="name" placeholder="请输入会员权益分类名" name="name"/>
                    </FormItem>
                    <FormItem label="会员权益图标">
                        <Uploader defaultValue={wrapUploadValue(data.icon)} name="icon" id="icon"></Uploader>
                        {/* <Input defaultValue={data.icon} placeholder="请输入会员权益图标" id="icon" name="icon"/> */}
                    </FormItem>
  
                    <FormItem wrapperCol={{ offset: 5 }} >
                        <Form.Submit validate type="primary" onClick={(v, e) => {
                          if (!v.name) {
                            return Message.warning('会员权益分类名不能为空')
                          }
                          if (v.icon == null || v.icon === '' || v.icon.length === 0) {
                            return Message.warning('会员权益图标不能为空')
                          }
                          v.icon = unWrapUploadValue(v.icon)
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
