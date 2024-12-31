
import React, { Component } from 'react'
import {Input, Form, Message,Switch, Select} from '@alife/next'
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
    const {onSubmit, onClose, data = {}, adminSource} = this.props
    return (
            <div>
                <Form {...formItemLayout} size={this.state.size} style={{minWidth: '660px'}}>
                    <FormItem label="邀请码：">
                        <Input defaultValue={data.code} placeholder="输入邀请码" id="code" name="code"/>
                        <Input defaultValue={data.cid} htmlType="hidden" id="cid" name="cid"/>
                    </FormItem>
                    <FormItem label="公司名：">
                        <Input defaultValue={data.name} placeholder="输入公司名" id="name" name="name"/>
                    </FormItem>
                    <FormItem label="HR：">
                        <Input defaultValue={data.hr} placeholder="请输入HR姓名" id="hr" name="hr"/>
                    </FormItem>
                    <FormItem label="HR联系方式：">
                        <Input defaultValue={data.hr_phone} placeholder="请输入HR联系方式" id="hr_phone" name="hr_phone"/>
                    </FormItem>
                    <FormItem label="管理员">
                        <Select defaultValue={data.aid} dataSource={adminSource} id="aid" name="aid"/>
                    </FormItem>
                    <FormItem label="对接人员昵称">
                        <Input defaultValue={data.manage_name} placeholder="请输入对接人员昵称" id="manage_name" name="manage_name"/>
                    </FormItem>

                    <FormItem label="对接人员头像">
                        <Uploader defaultValue={wrapUploadValue(data.manage_logo)} name="manage_logo" id="manage_logo"></Uploader>
                    </FormItem>

                    <FormItem label="对接人员微信二维码">
                        <Uploader defaultValue={wrapUploadValue(data.manage_mask)} name="manage_mask" id="manage_mask"></Uploader>
                    </FormItem>
                    <FormItem label="开启个人健康告知问卷">
                        <Switch defaultChecked={data.need_qus} id="need_qus" name="need_qus" autoWidth />
                    </FormItem>
                    <FormItem wrapperCol={{ offset: 5 }} >
                        <Form.Submit validate type="primary" onClick={(v, e) => {
                          if (!v.code || !v.name) {
                            return Message.warning('邀请码或者公司名不能为空')
                          }
                          if (!v.manage_name) {
                            return Message.warning('客服人员昵称不能为空')
                          }
                          if (!v.manage_logo || v.manage_logo.length === 0) {
                            return Message.warning('客服人员头像不能为空')
                          }
                          if (!v.manage_mask || v.manage_mask.length === 0) {
                            return Message.warning('客服人员微信二维码不能为空')
                          }
                          v.manage_logo = unWrapUploadValue(v.manage_logo)
                          v.manage_mask = unWrapUploadValue(v.manage_mask)
                          v.need_qus = v.need_qus ? 1 : 0
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
