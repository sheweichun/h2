
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
    const {onSubmit, onClose, data = {}, name} = this.props
    return (
            <div>
                <Form {...formItemLayout} size={this.state.size} style={{minWidth: '500px'}}>
                    <FormItem label="会员等级">
                        <Input defaultValue={data.label} id="label" name="label"/>
                    </FormItem>
                    <FormItem label="会员积分门槛">
                        <Input defaultValue={data.bonus} htmlType="number" placeholder="请输入会员积分门槛" id="bonus" name="bonus"/>
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
                          if (!v.label) {
                            return Message.warning('会员等级不能为空')
                          }
                          // if (!v.name) {
                          //   return Message.warning('客服人员昵称不能为空')
                          // }
                          // if (!v.log || v.log.length === 0) {
                          //   return Message.warning('客服人员头像不能为空')
                          // }
                          // if (!v.mask || v.mask.length === 0) {
                          //   return Message.warning('客服人员微信二维码不能为空')
                          // }
                          if (v.bonus == null || v.bonus === '' || v.bonus < 0) {
                            return Message.warning('会员积分门槛不能为空或者负')
                          }
                          // v.log = unWrapUploadValue(v.log)
                          // v.mask = unWrapUploadValue(v.mask)
                          v.id = data.id
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
