
import React, { Component } from 'react'
import {Input, Form, Message, Select, Switch} from '@alife/next'
import {Fetch} from '../../util/request'
import MemberItem from './memberItem'

const FormItem = Form.Item

const formItemLayout = {
  labelCol: {span: 5},
  wrapperCol: {span: 19}
}

class CodeForm extends Component {
  constructor(props) {
    super(props)
    this.state = {
      size: 'medium',
      groups: [],
      members: []
    }
  }
  componentDidMount() {
    Fetch('getGrouplist').then((resp) => {
      this.setState({
        groups: resp.data
      })
    })
    Fetch('getMembers').then((resp) => {
      this.setState({
        members: resp.data
      })
    })
  }
  render() {
    const { groups } = this.state
    const {onSubmit, onClose, data = {}} = this.props
    return (
            <div>
                <Form {...formItemLayout} size={this.state.size} style={{minWidth: '500px'}}>
                    <FormItem label="权益分类">
                        <Select style={{width: 150}} defaultValue={data.categoryid} name="categoryid" >
                            {
                                groups && groups.map((item) => {
                                  return <Select.Option key={item.id} value={item.id}>{item.name}</Select.Option>
                                })
                            }
                       </Select>
                    </FormItem>
                    <FormItem label="会员权益名">
                        <Input defaultValue={data.name} id="name" name="name"/>
                    </FormItem>
                    <FormItem label="会员权益内容">
                        <Input.TextArea defaultValue={data.description} id="description" name="description"/>
                    </FormItem>
                    <FormItem label="有效期">
                        <Input defaultValue={data.validdate} htmlType="number" id="validdate" name="validdate" addonTextAfter="年"/>
                    </FormItem>
                    <FormItem label="使用人">
                        <Input defaultValue={data.user} id="user" name="user"/>
                    </FormItem>
                    {/* <FormItem label="数量">
                        <Input defaultValue={data.num} htmlType="number" id="num" name="num"/>
                    </FormItem> */}
                    <FormItem label="数量单位">
                        <Input defaultValue={data.unit} id="unit" name="unit"/>
                    </FormItem>
                    <FormItem label="会员等级">
                        <MemberItem defaultValue={data.members} unit={data.unit} id="members" name="members"/>
                    </FormItem>
                    <FormItem label="是否展示">
                        <Switch autoWidth defaultChecked={data.display == null ? true : !!data.display} id="display" name="display"/>
                    </FormItem>
                    <FormItem wrapperCol={{ offset: 5 }} >
                        <Form.Submit validate type="primary" onClick={(v, e) => {
                          if (!v.categoryid) {
                            return Message.warning('权益分类不能为空')
                          }
                          if (!v.name) {
                            return Message.warning('权益名不能为空')
                          }
                          if (!v.description) {
                            return Message.warning('权益内容不能为空')
                          }
                          if (!v.validdate) {
                            return Message.warning('有效期不能为空')
                          }
                          if (!v.user) {
                            return Message.warning('使用人不能为空')
                          }
                          if (!v.unit) {
                            return Message.warning('数量单位不能为空')
                          }
                          if (!v.members || Object.keys(v.members).length === 0) {
                            return Message.warning('会员等级不能为空')
                          } else {
                            const mKeys = Object.keys(v.members)
                            for (let i = 0; i < mKeys.length; i++) {
                              const item = v.members[mKeys[i]]
                              if (typeof item.num !== 'number' || item.num < 0) {
                                return Message.warning('权益份额不能为空')
                              }
                            }
                          }
                          if (v.display == null) {
                            v.display = 1
                          } else {
                            v.display = v.display ? 1 : 0
                          }
                          // v.id = data.id
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
