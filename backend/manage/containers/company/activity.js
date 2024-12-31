
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
    const {onSubmit, onClose, data = {}} = this.props
    return (
            <div>
                <Form {...formItemLayout} size={this.state.size} style={{minWidth: '660px'}}>
                    <FormItem label="活动名称：">
                        <Input defaultValue={data.activity_name} placeholder="请输入活动名称" id="activity_name" name="activity_name"/>
                    </FormItem>
                    <FormItem label="开启活动">
                        <Switch defaultChecked={data.enable_activity} id="enable_activity" name="enable_activity" autoWidth />
                    </FormItem>
                    <FormItem label="活动邀请码：">
                        <Input defaultValue={data.activity_code} placeholder="请输入活动邀请码" id="activity_code" name="activity_code"/>
                    </FormItem>
                    <FormItem wrapperCol={{ offset: 5 }} >
                        <Form.Submit validate type="primary" onClick={(v, e) => {
                          if (v.enable_activity && !v.activity_name) {
                            return Message.warning('活动名不能为空')
                          }
                        //   console.log('v :', v)
                          v.enable_activity = v.enable_activity ? 1 : 0
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
