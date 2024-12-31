
import React, { Component } from 'react'
import {Input, Form, Message} from '@alife/next'
const FormItem = Form.Item

const formItemLayout = {
  labelCol: {span: 5},
  wrapperCol: {span: 19}
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
                    <FormItem label="保单报告url：">
                        <Input defaultValue={data.url} placeholder="输入url" id="url" name="url"/>
                        <Input defaultValue={data.id} htmlType="hidden" id="id" name="id"/>
                    </FormItem>
                    <FormItem label="保单名：">
                        <Input defaultValue={data.name} placeholder="输入保单名" id="name" name="name"/>
                    </FormItem>
                    <FormItem wrapperCol={{ offset: 5 }} >
                        <Form.Submit validate type="primary" onClick={(v, e) => {
                          if (!v.url || !v.name) {
                            return Message.warning('报告url或者报告名不能为空')
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
