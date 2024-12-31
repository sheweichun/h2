/* eslint-disable no-unused-vars */

import React, { Component } from 'react'
import {Table, Button, Dialog, Message, Switch} from '@alife/next'
import {Fetch} from '../../util/request'
import {Link} from 'react-router-dom'
import Form from './form'
import dayjs from 'dayjs'

// const { } = Message

class Members extends Component {
  constructor(props) {
    super(props)
    this.state = {
      data: []
    }
    this.query = {}
    this.onAdd = this.onAdd.bind(this)
    this.COLUMNS = [{
      dataIndex: 'name',
      title: '姓名'
    }, {
      dataIndex: 'user_name',
      title: '用户名'
    }, {
      dataIndex: 'super',
      title: '是否超级管理员',
      cell: function(value) {
        return value ? '是' : '否'
      }
    }, {
      dataIndex: 'flag',
      title: '是否启用',
      cell: function(value) {
        return value ? '是' : '否'
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
  }
  onAdd() {
    const instance = Dialog.show({
      title: '新增管理员信息',
      content: <Form
        onClose={() => {
          instance.hide()
        }} onSubmit={async(data) => {
          await Fetch('addAdmin', {
            data
          })
          await this.loadList()
          Message.success('修改成功')
          instance.hide()

        }}></Form>,
      footer: false
    })
  }
  onEdit(item) {
    // console.log('item :', item);
    const instance = Dialog.show({
      title: '修改管理员信息',
      content: <Form
        onClose={() => {
          instance.hide()
        }} data={item} onSubmit={async(data) => {
          data.aid = item.aid
          await Fetch('updateAdmin', {
            data
          })
          await this.loadList()
          Message.success('修改成功')
          instance.hide()

        }}></Form>,
      footer: false
    })
  }
  async componentDidMount() {
    this.loadList()
  }

  loadList() {
    return Fetch('getAllAdmins').then((resp) => {
      // console.log('resp :', resp.data)
      this.setState({
        data: resp.data
      })
    })
  }
  render() {
    const {data} = this.state
    return (
                <div style={{padding: '16px'}}>
                  <div style={{padding: '16px'}}>
                    <Button type="primary" onClick={this.onAdd}>新增</Button>
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
