
import React, { Component } from 'react'
import {Table, Button, Dialog, Pagination, Message} from '@alife/next'
import {Link} from 'react-router-dom'
import {Fetch} from '../../../util/request'
import {parse} from '../../../util/querystring'
import Form from './form'
import dayjs from 'dayjs'
class BonusRecord extends Component {
  constructor(props) {
    super(props)
    this.state = {
      data: [],
      groupMap: {}
      // pageSize: 20,
      // current: 1,
      // total: 0
    }
    this.query = {}
    this.COLUMNS = [{
      dataIndex: 'categoryid',
      title: '权益分类',
      cell: (value) => {
        const gp = this.state.groupMap[value]
        return gp ? gp.name : ''
      }
    }, {
      dataIndex: 'name',
      title: '会员权益'
    }, {
      dataIndex: 'description',
      title: '权益内容'
    }, {
      dataIndex: 'validdate',
      title: '有效期'
    }, {
      dataIndex: 'user',
      title: '使用人'
    }, {
      dataIndex: 'label',
      title: '会员等级'
    }, {
      dataIndex: 'display',
      title: '是否展示',
      cell: (val) => {
        return val ? '是' : '否'
      }
    }, {
      dataIndex: 'reserved_num',
      title: '剩余使用权益'
    }, {
      dataIndex: 'create_time',
      title: '创建时间',
      cell: function(value) {
        return dayjs(new Date(value)).format('YYYY-MM-DD HH:mm')
      }
    }, {
      dataIndex: 'id',
      title: '操作',
      cell: (id, index, record) => {
        return <div>
          <Button style={{marginRight: '8px'}} type="primary" onClick={this.onExchangeRights.bind(this, record)}>兑换</Button>
        </div>
      }
    }]
  }
  onExchangeRights(item) {
    console.log('item :', item)
    const instance = Dialog.show({
      title: '兑换权益',
      content: <Form
        name={item.name}
        unit={item.unit}
        num={item.reserved_num}
        onClose={() => {
          instance.hide()
        }} onSubmit={async(data) => {
          if (data.exchange_num > item.reserved_num) {
            return Message.warning('兑换份额超过剩余权益份额')
          }

          await Fetch('addMemberRightsExchange', {
            data: {
              uid: item.uid,
              mid: item.mid,
              rid: item.rid,
              exchange_num: data.exchange_num
            }
          })
          await this.loadList()
          instance.hide()
        }}></Form>,
      footer: false
    })
  }
  async componentDidMount() {
    const {location} = this.props
    this.query = parse(location.search)
    this.uid = parseInt(this.query.uid)
    Fetch('getGrouplist').then((resp) => {
      this.setState({
        groupMap: resp.data.reduce((ret, item) => {
          ret[item.id] = item
          return ret
        }, {})
      })
    })
    this.loadList()
  }
  onPageChange=(current) => {
    this.state.current = current
    this.loadList()
    this.setState({
      current
    })
  }
  loadList() {
    // const {location} = this.props
    return Fetch('getUserMemberRights', {
      uid: this.uid
    }).then((resp) => {
      this.setState({
        data: resp.data
      })
    })
  }
  render() {
    const {data} = this.state
    return (
      <div style={{padding: '16px'}}>
        <div style={{textAlign: 'right', paddingBottom: '8px'}}>
          <Link to={{
            pathname: '/memberRightsExchangeRecord',
            search: `uid=${this.query.uid}`
          }}><Button type="primary">查看权益兑换</Button></Link>
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
        { /* <div style={{marginTop: '8px', display: 'flex', justifyContent: 'flex-end'}}>
          <Pagination onChange={this.onPageChange} total={total} current={current} pageSize={pageSize}></Pagination>
        </div> */}
      </div>
    )
  }
}

export default BonusRecord
