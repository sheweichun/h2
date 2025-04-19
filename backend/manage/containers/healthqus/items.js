import React, { Component } from 'react'
import { Table, Button, Dialog, Message } from '@alife/next'
import { Fetch } from '../../util/request'
import ItemForm from './itemForm'

class QuestionnaireItems extends Component {
  constructor(props) {
    super(props)
    this.state = {
      data: [],
      loading: false
    }
    this.COLUMNS = [{
      dataIndex: 'id',
      title: 'ID'
    }, {
      dataIndex: 'title',
      title: '题目标题'
    }, {
      dataIndex: 'description',
      title: '题目说明'
    }, {
      dataIndex: 'type',
      title: '题目类型',
      cell: (value) => {
        switch (value) {
          case 1: return '文本输入'
          case 2: return '单选'
          case 3: return '多选'
          case 4: return '文本域'
          case 5: return '附件'
          default: return '未知'
        }
      }
    }, {
      dataIndex: 'required',
      title: '是否必填',
      cell: (value) => {
        return value === 1 ? '是' : '否'
      }
    },, {
      dataIndex: 'options',
      title: '选项值',
      cell: (value) => {
        return <pre>
          {(value || []).map((item, index)=>{
          return `选项${index+1}: ${item.name}`
        }).join('\n')}
        </pre>
        // return JSON.stringify(value || [], null, '  ')
      }
    }, {
      dataIndex: 'is_mult',
      title: '是否多选',
      cell: (value) => {
        return value === 1 ? '是' : '否'
      }
    }, {
      dataIndex: '',
      title: '操作',
      cell: (value, index, record) => {
        return <div>
          <Button onClick={this.editItem.bind(this, record)}>修改</Button>
          <Button style={{ marginLeft: '12px' }} type="primary" warning onClick={this.removeItem.bind(this, record)}>删除</Button>
          {/* {!this.isItemInQuestionnaire(record.id) && (
            <Button style={{ marginLeft: '12px' }} type="primary" onClick={this.addToQuestionnaire.bind(this, record)}>添加到问卷</Button>
          )} */}
        </div>
      }
    }]
  }

  async componentDidMount() {
    this.loadItems()
  }

  isItemInQuestionnaire(itemId) {
    const { questionnaireItems } = this.props
    return questionnaireItems && questionnaireItems.some(item => item.id === itemId)
  }

  loadItems() {
    this.setState({ loading: true })
    return Fetch('getQuestionnaireItems', {
      data: {
        qid: this.props.questionnaireId
      }
    }).then((resp) => {
      console.log('resp :', resp)
      this.setState({
        data: resp.data || [],
        loading: false
      })
    }).catch(err => {
      Message.error('加载题目失败')
      this.setState({ loading: false })
    })
  }

  removeItem(record) {
    const _this = this
    Dialog.confirm({
      title: `你确定要删除【${record.title}】，请谨慎操作!!!!`,
      onOk: async () => {
        try {
          await Fetch('deleteQuestionnaireItem', {
            id: record.id,
            qid: _this.props.questionnaireId
          })
          Message.success('删除成功')
          await this.loadItems()
          // Refresh parent if needed
          if (this.props.onItemsChanged) {
            this.props.onItemsChanged()
          }
        } catch (err) {
          Message.error('删除失败')
        }
      }
    })
  }

  addItem = () => {
    const _this = this
    const instance = Dialog.show({
      title: '创建题目',
      content: <ItemForm onClose={() => {
        instance.hide()
      }} onSubmit={async (data) => {
        try {
          await Fetch('addQuestionnaireItem', {
            qid: _this.props.questionnaireId,
            data: data
          })
          Message.success('创建成功')
          await this.loadItems()
          // Refresh parent if needed
          if (this.props.onItemsChanged) {
            this.props.onItemsChanged()
          }
          instance.hide()
        } catch (err) {
          Message.error('创建失败')
        }
      }}></ItemForm>,
      footer: false
    })
  }

  editItem(record) {
    // First, get the item with options
    const itemWithOptions = record
      
    const instance = Dialog.show({
      title: '修改题目',
      content: <ItemForm onClose={() => {
        instance.hide()
      }} data={itemWithOptions} onSubmit={async (data) => {
        try {
          await Fetch('updateQuestionnaireItem', {
            data
          })
          Message.success('修改成功')
          await this.loadItems()
          // Refresh parent if needed
          if (this.props.onItemsChanged) {
            this.props.onItemsChanged()
          }
          instance.hide()
        } catch (err) {
          Message.error('修改失败')
        }
      }}></ItemForm>,
      footer: false
    })
  }

  addToQuestionnaire(record) {
    const { questionnaireId } = this.props
    if (!questionnaireId) {
      Message.error('问卷ID不存在')
      return
    }

    Fetch('addQuestionnaireItem', {
      data: {
        qid: questionnaireId,
        item_id: record.id
      }
    }).then(() => {
      Message.success('添加到问卷成功')
      if (this.props.onItemsChanged) {
        this.props.onItemsChanged()
      }
    }).catch(err => {
      Message.error('添加到问卷失败')
    })
  }

  render() {
    const { data, loading } = this.state
    return (
      <div style={{ padding: '16px' }}>
        <div style={{ margin: '4px 0 8px' }}>
          <Button type="primary" onClick={this.addItem}>创建题目</Button>
          {this.props.onBack && (
            <Button style={{ marginLeft: '12px' }} onClick={this.props.onBack}>返回问卷列表</Button>
          )}
        </div>
        <Table dataSource={data} loading={loading}>
          {
            this.COLUMNS.map((item, key) => {
              return <Table.Column
                key={key}
                title={item.title}
                cell={item.cell}
                width={item.width}
                dataIndex={item.dataIndex}
              ></Table.Column>
            })
          }
        </Table>
      </div>
    )
  }
}

export default QuestionnaireItems
