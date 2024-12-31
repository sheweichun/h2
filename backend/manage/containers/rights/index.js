/* eslint-disable no-unused-vars */

import React, { Component } from 'react'
import {Table, Button, Dialog} from '@alife/next'
import {Fetch} from '../../util/request'
import {Link} from 'react-router-dom'
import Form from './form'
import { ONE_YEAR, formatValidDate } from '../../util/time'
import dayjs from 'dayjs'

function arr2Map(data) {
  return (data || []).reduce((ret, item) => {
    ret[item.mid] = item
    return ret
  }, {})
}

function map2Arr(data) {
  const target = data || {}
  return Object.keys(target).map((id) => {
    const item = target[id] || {}
    const newItem = {
      mid: item.mid,
      num: item.num
    }
    return newItem
  })
}

class Members extends Component {
  constructor(props) {
    super(props)
    this.state = {
      data: []
    }
    this.query = {}
    this.COLUMNS = [{
      dataIndex: 'cate_name',
      title: '权益类别'
    }, {
      dataIndex: 'name',
      title: '权益名'
    }, {
      dataIndex: 'description',
      title: '权益内容'
    }, {
      dataIndex: 'validdate',
      title: '有效期',
      cell: function(value) {
        if (value == null || value === '') return '-'
        if (value === 0) {
          return '终身'
        } else {
          return Math.floor(value / ONE_YEAR) + '年'
        }
      }
    }, {
      dataIndex: 'user',
      title: '使用人'
    }, {
      dataIndex: 'unit',
      title: '数量单位(比如份)'
      // cell: function(value, index, record) {
      //   return `${record.num}${record.unit}`
      // }
    }, {
      dataIndex: 'rights',
      title: '覆盖的会员等级',
      cell: function(value, index, record) {
        return <div>
          {
            (value || []).map((item) => {
              if (!item.display) {
                return ''
              }
              return <div>
                <span>{item.label}：</span>
                <span>{item.num}{record.unit}</span>
                {/* {!item.display && <span>(不展示)</span>} */}
              </div>
            })
          }
        </div>
      }
    }, {
      dataIndex: 'display',
      title: '是否展示',
      cell: (val) => {
        return val ? '是' : '否'
      }
    }, {
      dataIndex: '',
      title: '操作',
      cell: (value, index, record) => {
        return <div>
            <Button type="primary" onClick={this.onEdit.bind(this, record)}>修改</Button>
        </div>
      }
    }]
    this.onAdd = this.onAdd.bind(this)
  }
  onAdd() {
    const instance = Dialog.show({
      title: '新增权益',
      content: <Form
        onClose={() => {
          instance.hide()
        }} onSubmit={async(data) => {
          const newData = Object.assign({}, data)
          const members = map2Arr(newData.members)
          delete newData.members
          newData.validdate = Math.floor(ONE_YEAR * (newData.validdate || 0))
          await Fetch('addRights', {
            data: newData,
            list: members
          })
          await this.loadList()
          instance.hide()
        }}></Form>,
      footer: false
    })
  }
  onEdit(item) {
    const newItem = Object.assign({}, item)
    newItem.validdate = formatValidDate(newItem.validdate)
    newItem.members = arr2Map(newItem.rights)
    const instance = Dialog.show({
      title: '修改会员权益信息',
      content: <Form
        onClose={() => {
          instance.hide()
        }} data={newItem} onSubmit={async(data) => {
          const newData = Object.assign({}, data)
          const rid = item.id
          newData.id = rid
          const members = map2Arr(newData.members)
          delete newData.members
          newData.validdate = Math.floor(ONE_YEAR * (newData.validdate || 0))
          await Fetch('updateRights', {
            data: newData,
            list: members
          })
          await this.loadList()
          instance.hide()
        }}></Form>,
      footer: false
    })
  }
  async componentDidMount() {
    this.loadList()
  }

  loadList() {
    return Fetch('getRightsList').then((resp) => {
      this.setState({
        data: resp.data
      })
    })
  }
  render() {
    const {data} = this.state
    return (
      <div style={{padding: '16px'}}>
        <div style={{marginBottom: '16px'}}>
          <Button type="primary" style={{}} onClick={this.onAdd}>
            新增权益
          </Button>
        </div>
        <Table dataSource={data} >
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

export default Members
