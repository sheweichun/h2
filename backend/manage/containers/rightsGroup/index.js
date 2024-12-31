/* eslint-disable no-unused-vars */

import React, { Component } from 'react'
import {Table, Button, Dialog} from '@alife/next'
import {Fetch} from '../../util/request'
import {Link} from 'react-router-dom'
import Form from './form'
import dayjs from 'dayjs'
class Members extends Component {
  constructor(props) {
    super(props)
    this.state = {
      data: []
    }
    this.query = {}
    this.COLUMNS = [{
      dataIndex: 'name',
      title: '权益类别'
    }, {
      dataIndex: 'icon',
      title: '权益类别图标',
      cell: (value) => {
        return <img src={value} style={{
          width: '40px'
        }}/>
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
  onAdd(){
    const instance = Dialog.show({
      title: '新增会员权益类别',
      content: <Form
        onClose={() => {
          instance.hide()
        }} onSubmit={async(data) => {
          await Fetch('addGroup', {
            data
          })
          await this.loadList()
          instance.hide()
        }}></Form>,
      footer: false
    })
  }
  onEdit(item) {
    const instance = Dialog.show({
      title: '修改会员权益类别',
      content: <Form
        onClose={() => {
          instance.hide()
        }} data={item} onSubmit={async(data) => {
          data.id = item.id
          await Fetch('updateRightsGroup', {
            data
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
    return Fetch('getGrouplist').then((resp) => {
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
            新增权益类别
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
