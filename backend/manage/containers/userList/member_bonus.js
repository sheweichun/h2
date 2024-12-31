
import React, { Component } from 'react'
import {Input, Form, Message} from '@alife/next'
const FormItem = Form.Item

const formItemLayout = {
  labelCol: {span: 8},
  wrapperCol: {span: 16}
}

class MemberBonusForm extends Component {
  constructor(props) {
    super(props)
    this.state = {
      size: 'medium'
    }
  }
  render() {
    const {onSubmit, onClose} = this.props
    return (
            <div>
                <Form {...formItemLayout} size={this.state.size} style={{minWidth: '500px'}}>
                    <FormItem label="新增会员积分：">
                        <Input placeholder="新增会员积分" htmlType="number" name="bonus"/>
                    </FormItem>
                    <FormItem label="新增会员积分原因：">
                        <Input placeholder="新增积分原因" name="description"/>
                    </FormItem>
                    <FormItem wrapperCol={{ offset: 5 }} >
                        <Form.Submit validate type="primary" onClick={(v, e) => {
                          if (v.bonus == null) {
                            return Message.warning('新增会员积分不能为空')
                          }
                          if (v.description == null) {
                            return Message.warning('新增会员积分原因不能为空')
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

export default MemberBonusForm
