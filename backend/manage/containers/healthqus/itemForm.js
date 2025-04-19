import React, { Component } from 'react'
import { Input, Form, Message, Select, Switch, Button } from '@alife/next'
const FormItem = Form.Item

const formItemLayout = {
  labelCol: { span: 5 },
  wrapperCol: { span: 19 }
}

const QuestionTypeSource = [
  {
    label: '文本输入',
    value: 1
  },
  {
    label: '单选',
    value: 2
  },
  {
    label: '多选',
    value: 3
  },
  {
    label: '文本域',
    value: 4
  }
]

class ItemForm extends Component {
  constructor(props) {
    super(props)
    const data = props.data || {}
    const newVal = Object.assign({}, data, {
      options: data.options || []
    })
    this.state = {
      size: 'medium',
      value: newVal,
      options: data.options || []
    }
  }

  addOption = () => {
    const { options } = this.state
    this.setState({
      options: [...options, { value: '', name: '' }]
    })
  }

  removeOption = (index) => {
    const { options } = this.state
    const newOptions = [...options]
    newOptions.splice(index, 1)
    this.setState({
      options: newOptions
    })
  }

  handleOptionChange = (index, field, value) => {
    const { options } = this.state
    const newOptions = [...options]
    newOptions[index][field] = value
    this.setState({
      options: newOptions
    })
  }

  render() {
    const { onSubmit, onClose, data = {} } = this.props
    const { value, options } = this.state
    const showOptions = value.type === 2 || value.type === 3 // Show options for radio and checkbox types

    return (
      <div>
        <Form {...formItemLayout} value={this.state.value} size={this.state.size} style={{ minWidth: '500px' }} onChange={(val) => {
          this.setState({ value: val })
        }}>
          <FormItem label="题目标题：">
            <Input defaultValue={data.title} placeholder="输入题目标题" id="title" name="title" />
            <Input defaultValue={data.id} htmlType="hidden" id="id" name="id" />
          </FormItem>
          <FormItem label="题目说明：">
            <Input defaultValue={data.description} placeholder="输入题目说明" id="description" name="description" />
          </FormItem>
          <FormItem label="题目类型：">
            <Select dataSource={QuestionTypeSource} defaultValue={data.type || 1} id="type" name="type" />
          </FormItem>
          <FormItem label="是否必填：">
            <Switch autoWidth defaultChecked={data.required === 1} id="required" name="required" />
          </FormItem>
          {/* <FormItem label="是否多选：">
            <Switch autoWidth defaultChecked={data.is_mult === 1} id="is_mult" name="is_mult" />
          </FormItem> */}

          {showOptions && (
            <div>
              <FormItem label="选项：">
                <Button type="primary" onClick={this.addOption}>添加选项</Button>
              </FormItem>
              {options.map((option, index) => (
                <div key={index} style={{ display: 'flex', marginBottom: '10px' }}>
                  
                  <FormItem label={`选项${index + 1}名称：`} style={{ flex: 1 }}>
                    <Input 
                      value={option.name} 
                      placeholder="选项名称" 
                      onChange={(value) => this.handleOptionChange(index, 'name', value)} 
                    />
                  </FormItem>
                  {/* <FormItem label={`选项${index + 1}值：`} style={{ flex: 1 }}>
                    <Input 
                      value={option.value} 
                      placeholder="选项值" 
                      onChange={(value) => this.handleOptionChange(index, 'value', value)} 
                    />
                  </FormItem> */}
                  <Button type="primary" warning onClick={() => this.removeOption(index)} style={{ marginLeft: '10px' }}>删除</Button>
                </div>
              ))}
            </div>
          )}

          <FormItem wrapperCol={{ offset: 5 }} >
            <Form.Submit validate type="primary" onClick={(v, e) => {
              if (!v.title || !v.description || !v.type) {
                return Message.warning('参数未填写完整,请检查')
              }

              // Prepare data for submission
              v.required = v.required ? 1 : 0
              v.is_mult = v.type === 3 ? 1 : 0
              
              // Add options if applicable
              if (showOptions) {
                v.options = this.state.options
                v.options.forEach((option, index) => {
                  option.value = index
                })
                if (v.options.length === 0) {
                  return Message.warning('请添加至少一个选项')
                }
                
                // Validate options
                for (const option of v.options) {
                  if (option.value == null  || !option.name) {
                    return Message.warning('选项不能为空')
                  }
                }
              }

              onSubmit && onSubmit(v)
            }} style={{ marginRight: 10 }}>提交</Form.Submit>
            <Form.Reset onClick={onClose}>取消</Form.Reset>
          </FormItem>
        </Form>
      </div>
    )
  }
}

export default ItemForm
