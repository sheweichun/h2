
import React, { Component } from 'react'
import {Input, Form, Message, Switch} from '@alife/next'
// import Uploader from '../../components/upload'
const FormItem = Form.Item

const formItemLayout = {
  labelCol: {span: 5},
  wrapperCol: {span: 19}
}

// function wrapUploadValue(url){
//   return url ? [{url}]:[]
// }

// function unWrapUploadValue(data){
//   return data && data[0] ? data[0].url : ''
// }

class CodeForm extends Component {
  constructor(props) {
    super(props)
    this.state = {
      size: 'medium'
    }
  }
  render() {
    const {onSubmit, onClose, data = {}} = this.props
    // console.log('data :', data, !!data.super)
    return (
            <div>
                <Form {...formItemLayout} size={this.state.size} style={{minWidth: '500px'}}>
                    <FormItem label="姓名">
                        <Input defaultValue={data.name} id="name" name="name" placeholder="请输入姓名"/>
                    </FormItem>
                    <FormItem label="用户名">
                        <Input defaultValue={data.user_name} placeholder="请输入用户名" id="user_name" name="user_name"/>
                    </FormItem>
                    <FormItem label="密码">
                        <Input defaultValue={data.password} htmlType="password" placeholder="请输入密码" id="password" name="password"/>
                    </FormItem>
                    <FormItem label="是否管理员">
                        <Switch defaultChecked={!!data.super} defaultValue={!!data.super} id="super" name="super"/>
                    </FormItem>
                    <FormItem label="是否启用">
                        <Switch defaultChecked={data.flag == null ? true : !!data.flag} defaultValue={data.flag == null ? true : !!data.flag} id="flag" name="flag"/>
                    </FormItem>
                    {/* <FormItem label="客服人员昵称">
                        <Input defaultValue={data.name} placeholder="请输入客服人员昵称" id="name" name="name"/>
                    </FormItem>

                    <FormItem label="客服人员头像">
                        <Uploader defaultValue={wrapUploadValue(data.log)} name="log" id="log"></Uploader>
                    </FormItem>

                    <FormItem label="客服人员微信二维码">
                        <Uploader defaultValue={wrapUploadValue(data.mask)} name="mask" id="mask"></Uploader>
                    </FormItem> */}
  
                    <FormItem wrapperCol={{ offset: 5 }} >
                        <Form.Submit validate type="primary" onClick={(v, e) => {
                          if (v.flag == null) {
                            v.flag = true
                          }
                          v.flag = v.flag ? 1 : 0
                          v.super = v.super ? 1 : 0
                          if (!v.name) {
                            return Message.warning('姓名不能为空')
                          }
                          if (!v.user_name) {
                            return Message.warning('用户名不能为空')
                          }
                          if (!v.password) {
                            return Message.warning('密码不能为空')
                          }
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
