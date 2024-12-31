
import React, { Component } from 'react'
import {Input, Form, Message} from '@alife/next'
const FormItem = Form.Item

const formItemLayout = {
  labelCol: {span: 5},
  wrapperCol: {span: 19}
}

class BonusForm extends Component {
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
                    <FormItem label="新增积分：">
                        <Input placeholder="新增积分" htmlType="number" name="addBonus"/>
                    </FormItem>
                    <FormItem label="新增积分原因：">
                        <Input placeholder="新增积分原因" name="typeName"/>
                    </FormItem>
                    <FormItem wrapperCol={{ offset: 5 }} >
                        <Form.Submit validate type="primary" onClick={(v, e) => {
                          if (v.addBonus == null) {
                            return Message.warning('新增积分不能为空')
                          }
                          if (v.typeName == null) {
                            return Message.warning('新增积分原因不能为空')
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

export default BonusForm
