
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
    // const {data={}} = props;
    this.state = {
      size: 'medium'
    }
    this.types = [
      {
        label: '体检报告',
        value: 1
      }, {
        label: '洗牙报告',
        value: 3
      }, {
        label: '健康问卷',
        value: 10
      }, {
        label: '健康生活',
        value: 11
      }, {
        label: '健康运动',
        value: 12
      }, {
        label: '活动打卡',
        value: 13
      }
    ]
    // this.tid = data.tid;
    // this.tname = data.tname;
  }
  render() {
    const {types} = this
    const {onSubmit, onClose, data = {}} = this.props
    return (
            <div>
                <Form {...formItemLayout} size={this.state.size} style={{minWidth: '500px'}}>
                    <FormItem label="积类型：">
                       <Select style={{width: 150}} disabled={!!data.id} defaultValue={data.tid} name="tid" >
                            {
                                types && types.map((item) => {
                                  return <Option key={item.value} value={item.value}>{item.label}</Option>
                                })
                            }
                       </Select>
                    </FormItem>
                    <FormItem label="积分值：">
                        <Input defaultValue={data.bonuse} placeholder="输入积分制" id="bonuse" name="bonuse"/>
                    </FormItem>
                    <FormItem wrapperCol={{ offset: 5 }} >
                        <Form.Submit validate type="primary" onClick={(v, e) => {
                          const bonus = parseInt(v.bonuse)
                          if (isNaN(bonus)) {
                            return Message.warning('积分值必须为整数')
                          }
                          const target = types.filter((t) => {
                            return t.value === v.tid
                          })[0]
                          if (!target) {
                            return Message.warning('请选择积分类型')
                          }
                          onSubmit && onSubmit({
                            bonuse: bonus,
                            tid: target.value,
                            tname: target.label
                          })
                        }} style={{marginRight: 10}}>提交</Form.Submit>
                        <Form.Reset onClick={onClose}>取消</Form.Reset>
                    </FormItem>
                </Form>
            </div>
    )
  }
}

export default CodeForm
