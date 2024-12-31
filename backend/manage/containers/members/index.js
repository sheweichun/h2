/* eslint-disable no-unused-vars */

import React, { Component } from 'react'
import {Table, Button, Dialog, Message} from '@alife/next'
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
    this.COLUMNS = [{
      dataIndex: 'label',
      title: '会员等级'
    }, {
      dataIndex: 'bonus',
      title: '会员积分门槛'
    }, {
      dataIndex: 'update_time',
      title: '最新更新时间',
      cell: function(value) {
        return dayjs(new Date(value)).format('YYYY-MM-DD HH:mm')
      }
    }, {
      dataIndex: 'update_time',
      title: '样式',
      cell: function(value, index, record) {
        return <div style={{
          display: 'inline-flex',
          alignItems: 'center',
          color: record.textColor,
          borderRadius: '12px',
          padding: '4px 12px',
          backgroundImage: `linear-gradient(to right, ${record.lightColor}, ${record.darkColor})`
        }}>
          <img style={{height: '20px', marginRight: '4px'}} src={record.logo}/>
          <span>{record.label}会员</span>
        </div>
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
  onEdit(item) {
    const instance = Dialog.show({
      title: '修改会员等级信息',
      content: <Form
        onClose={() => {
          instance.hide()
        }} data={item} onSubmit={async(data) => {
          await Fetch('updateMember', {
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
    return Fetch('getMembers').then((resp) => {
      // console.log('resp :', resp)
      this.setState({
        data: resp.data
      })
    })
  }
  render() {
    const {data} = this.state
    return (
                <div style={{padding: '16px'}}>
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
