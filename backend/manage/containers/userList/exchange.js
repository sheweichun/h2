
import React, { Component } from 'react'
import {Input, Form, Message, Select} from '@alife/next'
const FormItem = Form.Item
const Option = Select.Option

const formItemLayout = {
  labelCol: {span: 5},
  wrapperCol: {span: 19}
}

class CodeForm extends Component {
  constructor(props) {
    super(props)
    this.state = {
      size: 'medium',
      selectIndex: 0
    }
  }
  render() {
    const {selectIndex} = this.state
    const {onSubmit, onClose, data = []} = this.props
    const item = data[selectIndex]
    return (
            <div>
                <Form {...formItemLayout} size={this.state.size} style={{minWidth: '500px'}}>
                    <FormItem label="兑换规则：">
                        <Select style={{width: 150}} defaultValue={selectIndex} name="exchange_index" onChange={(val) => {
                          this.setState({
                            selectIndex: val
                          })
                        }}>
                            {
                                data && data.map((item, key) => {
                                  return <Option key={item.id} value={key}>{item.gift_name}</Option>
                                })
                            }
                        </Select>
                    </FormItem>
                    <FormItem label="兑换积分：">
                        <Input value={item.threshold} htmlType="number" disabled name="threshold"/>
                    </FormItem>
                    <FormItem label="奖品：">
                        <Input value={item.gift_name} disabled name="gift_name"/>
                    </FormItem>
                    <FormItem label="奖品说明：">
                        <Input value={item.gift_desc} disabled name="gift_desc"/>
                    </FormItem>
                    <FormItem wrapperCol={{ offset: 5 }} >
                        <Form.Submit validate type="primary" onClick={(v, e) => {
                          onSubmit && onSubmit(item)
                        }} style={{marginRight: 10}}>提交</Form.Submit>
                        <Form.Reset onClick={onClose}>取消</Form.Reset>
                    </FormItem>
                </Form>
            </div>
    )
  }
}

export default CodeForm
