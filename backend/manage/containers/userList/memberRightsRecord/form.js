
import React, { Component } from 'react'
import {Input, Form, Message, Switch} from '@alife/next'
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
    const {onSubmit, onClose, data = {}, unit, name, num } = this.props
    return (
            <div>
                <Form {...formItemLayout} size={this.state.size} style={{minWidth: '500px'}}>
                    <FormItem wrapperCol={{ offset: 5 }}>
                        <div style={{lineHeight: '28px', color: '#333', fontSize: '20px'}}>
                          {name}
                        </div>
                    </FormItem>
                    <FormItem label="当前可使用权益">
                        <div style={{lineHeight: '28px'}}>
                          {num}{unit}
                        </div>
                    </FormItem>
                    <FormItem label="消耗权益">
                        <Input defaultValue={data.exchange_num} id="exchange_num" placeholder="请输入消耗数量" name="exchange_num" addonTextAfter={unit}/>
                    </FormItem>
  
                    <FormItem wrapperCol={{ offset: 5 }} >
                        <Form.Submit validate type="primary" onClick={(v, e) => {
                          const num = parseInt(v.exchange_num)
                          if (isNaN(num) || num <= 0) {
                            return Message.warning('份额输入有误')
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
