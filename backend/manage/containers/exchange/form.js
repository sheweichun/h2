
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
    const {onSubmit, onClose, data = {}, name, isEdit} = this.props
    return (
            <div>
                <Form {...formItemLayout} size={this.state.size} style={{minWidth: '500px'}}>
                    <FormItem label="公司名：">
                        <Input defaultValue={name} id="code_name" name="code_name" disabled/>
                    </FormItem>
                    <FormItem label="兑换积分：">
                        <Input defaultValue={data.threshold} htmlType="number" placeholder="请输入积分值" id="threshold" name="threshold"/>
                    </FormItem>
                    <FormItem label="奖品：">
                        <Input defaultValue={data.gift_name} placeholder="请输入奖品" id="gift_name" name="gift_name"/>
                    </FormItem>
                    <FormItem label="奖品图片：">
                        <Uploader defaultValue={wrapUploadValue(data.icon)} name="icon" id="icon"></Uploader>
                        {/* <Input defaultValue={data.gift_name} placeholder="请输入奖品" id="gift_name" name="gift_name"/> */}
                    </FormItem>
                    <FormItem label="奖品说明：">
                        <Input defaultValue={data.gift_desc} placeholder="请输入奖品说明" id="gift_desc" name="gift_desc"/>
                    </FormItem>
                    <FormItem label="库存">
                        <Input defaultValue={data.reserve} placeholder="请输入库存" id="reserve" name="reserve"/>
                    </FormItem>
                    {isEdit && <FormItem label="启用规则">
                        <Switch defaultChecked={data.flag} name="flag"/>
                    </FormItem>}
                    <FormItem wrapperCol={{ offset: 5 }} >
                        <Form.Submit validate type="primary" onClick={(v, e) => {
                          if (!v.threshold) {
                            return Message.warning('兑换积分不能为空')
                          }
                          if (!v.gift_name) {
                            return Message.warning('奖品不能为空')
                          }
                          if (!v.gift_desc) {
                            return Message.warning('奖品说明不能为空')
                          }
                          if (!v.icon || v.icon.length === 0) {
                            return Message.warning('奖品图片不能为空')
                          }
                          const reserve = v.reserve
                          if (!reserve) {
                            return Message.warning('库存不能为空')
                          }
                          const reserveNum = parseInt(reserve)
                          if (isNaN(reserveNum)) {
                            return Message.warning('库存必须为数字')
                          }
                          v.reserve = parseInt(v.reserve)
                          if (v.flag == null) {
                            v.flag = data.flag
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
