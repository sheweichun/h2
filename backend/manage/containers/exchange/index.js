import React, { Component } from 'react'
import {Table, Button, Dialog} from '@alife/next'
import {Fetch} from '../../util/request'
import CodeForm from './form'
import {parse} from '../../util/querystring'
import dayjs from 'dayjs'

class Exchange extends Component {
  constructor(props) {
    super(props)
    const {location} = props
    const query = parse(location.search)
    this.state = {
      data: [],
      name: query.name,
      cid: query.cid
    }
    this.COLUMNS = [{
      title: 'id',
      dataIndex: 'id'
    }, {
      title: '消耗积分',
      dataIndex: 'threshold'
    }, {
      title: '奖品',
      dataIndex: 'gift_name'
    }, {
      title: '奖品图片',
      dataIndex: 'icon',
      cell: function(val) {
        return <img src={val} style={{width: '80px', height: '80px'}}/>
      }
    }, {
      title: '库存',
      dataIndex: 'reserve'
    }, {
      title: '是否启用',
      dataIndex: 'flag',
      cell:function(value){
        return value ? '已启用' : '未启用'
      }
    }, {
      title: '奖品说明',
      dataIndex: 'gift_desc'
    }, {
      title: '创建时间',
      dataIndex: 'create_time',
      cell: function(value) {
        return dayjs(new Date(value)).format('YYYY-MM-DD HH:mm')
      }
    },
    {
      title: '操作',
      dataIndex: '',
      cell: (value, index, record) => {
        return <div>
          <Button onClick={this.editExchange.bind(this, record)}>修改</Button>
        </div>
      }
    }
    ]
  }
  areYouSure(record) {
    return new Promise((resolve, reject) => {
      Dialog.confirm({
        title: '你确定要废弃该规则?',
        onOk: () => {
          resolve(true)
        },
        onCancel: () => {
          resolve()
        }
      })
    })
  }
  doExchange() {

  }
  componentDidMount() {
    this.loadList()
  }
  editExchange(record) {
    const {name, cid} = this.state
    const instance = Dialog.show({
      title: '修改兑换积分规则',
      content: <CodeForm
      name={name}
      cid={cid}
      onClose={() => {
        instance.hide()
      }} isEdit data={record} onSubmit={async(data) => {
        if (!data.flag) {
          const ret = await this.areYouSure(data)
          if (!ret) {
            instance.hide()
            return
          }
        }
        data.flag = data.flag ? 1 : 0
        await Fetch('editExchange', {
          data: Object.assign({}, data, {
            id: record.id
          })
        })
        await this.loadList()
        instance.hide()
      }}></CodeForm>,
      footer: false
    })
  }
  loadList() {
    const {cid} = this.state
    return Fetch('getExchangeList', {code_id: cid}).then((resp) => {
      this.setState({
        data: resp.data
      })
    })
  }
  addExchange=() => {
    const {name, cid} = this.state
    const instance = Dialog.show({
      title: '新增积分兑换规则',
      content: <CodeForm
      name={name}
      cid={cid}
      onClose={() => {
        instance.hide()
      }} onSubmit={async(data) => {
        await Fetch('addExchange', {
          data: Object.assign({}, data, {
            code_id: cid
          })
        })
        await this.loadList()
        instance.hide()
      }}></CodeForm>,
      footer: false
    })
  }
  render() {
    const {data, name} = this.state
    return (
            <div style={{padding: '16px'}}>
                <div style={{margin: '4px 0 8px'}}>
                  <span style={{marginRight: '8px'}}>公司名:{name}</span>
                  <Button type="primary" onClick={this.addExchange}>新增兑换规则</Button>
                </div>
                <Table dataSource={data} >
                  {
                    this.COLUMNS.map((item, key) => {
                      return <Table.Column
                      key={key}
                      title={item.title}
                      cell={item.cell}
                      dataIndex={item.dataIndex}
                      ></Table.Column>
                    })
                  }
                </Table>
            </div>
    )
  }
}

export default Exchange
