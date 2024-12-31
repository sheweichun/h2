
import React, { Component } from 'react'
import {Input, Form, Message, Select} from '@alife/next'
const FormItem = Form.Item
const Option = Select.Option

const formItemLayout = {
  labelCol: {span: 5},
  wrapperCol: {span: 19}
}

class EditRecord extends Component {
  constructor(props) {
    super(props)
    this.state = {
    //   size: 'medium',
      curCompany: props.defaultCid
    }
  }
  render() {
    const {curCompany} = this.state
    const {onSubmit, onClose, company = []} = this.props
    // const item = data[selectIndex]
    return (
            <div>
                <Form {...formItemLayout} size="medium" style={{minWidth: '500px'}}>
                    <FormItem label="所属公司">
                        <Select style={{width: 150}} value={curCompany} name="exchange_index" onChange={(val) => {
                          this.setState({
                            curCompany: val
                          })
                        }}>
                            {
                                company && company.map((item, key) => {
                                  return <Option key={item.value} value={item.value}>{item.label}</Option>
                                })
                            }
                        </Select>
                    </FormItem>
                    <FormItem wrapperCol={{ offset: 5 }} >
                        <Form.Submit validate type="primary" onClick={(v, e) => {
                          const item = company.filter((rec) => {
                            return rec.value === curCompany
                          })
                          onSubmit && onSubmit(item ? item[0] : null)
                        }} style={{marginRight: 10}}>提交</Form.Submit>
                        <Form.Reset onClick={onClose}>取消</Form.Reset>
                    </FormItem>
                </Form>
            </div>
    )
  }
}

export default EditRecord
