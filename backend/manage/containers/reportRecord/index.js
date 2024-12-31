
import React, { Component } from 'react'
import {Table, Button, Dialog, Pagination, Message} from '@alife/next'
import CodeForm from './form'
import {Fetch} from '../../util/request'
import {parse} from '../../util/querystring'
import dayjs from 'dayjs'
class ReportRecord extends Component {
  constructor(props) {
    super(props)
    this.state = {
      data: []
      // pageSize: 20,
      // current: 1,
      // total: 0
    }
    this.query = {}
    this.COLUMNS = [{
      dataIndex: 'url',
      title: '保单图片',
      cell: (val) => {
        return <div style={{textAlign: 'center'}} onClick={this.showImage.bind(this, val)} >
          <img style={{height: '200px'}} src={val}></img>
        </div>
      }
    }, {
      dataIndex: 'name',
      title: '保单名'
    }, {
      dataIndex: 'create_time',
      title: '积分变化时间',
      cell: function(value) {
        return dayjs(new Date(value)).format('YYYY-MM-DD HH:mm')
      }
    }, {
      dataIndex: 'id',
      title: '操作',
      cell: (value, index, record) => {
        return <div>
          <Button style={{marginRight: '8px'}} type="primary" onClick={this.edit.bind(this, record)}>修改</Button>
          <Button style={{marginRight: '8px'}} type="primary" warning onClick={this.remove.bind(this, record)}>删除</Button>
        </div>
      }
    }]
  }
  edit(record) {
    const instance = Dialog.show({
      title: '修改保单托管报告',
      content: <CodeForm onClose={() => {
        instance.hide()
      }} data={record} onSubmit={async(data) => {
        // data.uid = this.uid
        await Fetch('editReport', data)
        Message.success('修改成功')
        await this.loadList()
        instance.hide()
      }}></CodeForm>,
      footer: false
    })
  }
  remove(record) {
    Dialog.confirm({
      title: `确定要删除报告【${record.name}】?`,
      onOk: async () => {
        await Fetch('removeReport', {
          id: record.id
        })
        Message.success('删除成功')
        this.loadList()
      }
    })
  }
  onAdd=() => {
    const instance = Dialog.show({
      title: '新增保单托管报告',
      content: <CodeForm onClose={() => {
        instance.hide()
      }} onSubmit={async(data) => {
        data.uid = this.uid
        await Fetch('addReport', data)
        Message.success('新增成功')
        await this.loadList()
        instance.hide()
      }}></CodeForm>,
      footer: false
    })
  }
  async componentDidMount() {
    const {location} = this.props
    this.query = parse(location.search)
    this.uid = parseInt(this.query.uid)
    this.loadList()
  }
  showImage(url) {
    Dialog.show({
      title: '图片',
      content: <div style={{width: '70vw', overflowX: 'hidden', overflowY: 'auto'}}>
        <img src={url} style={{width: '100%'}}/>
      </div>
    })
  }
  // onPageChange=(current) => {
  //   this.state.current = current
  //   this.loadList()
  //   this.setState({
  //     current
  //   })
  // }
  loadList() {
    // const {location} = this.props
    // const {pageSize, current} = this.state
    return Fetch('allReport', {
      // pageSize,
      // current,
      uid: this.uid
    }).then((resp) => {
      console.log('resp :', resp)
      this.setState({
        data: resp.data || []
      })
      // const {total, data} = resp.data
      // this.setState({
      //   data: data,
      //   total
      // })
    })
  }
  render() {
    const {data} = this.state
    return (
                <div style={{padding: '16px'}}>
                  <div style={{marginBottom: '12px'}}>
                    <Button type="primary" onClick={this.onAdd}>新增报告</Button>
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

export default ReportRecord
