
import React, { Component } from 'react'
import {Table, Button, Dialog, Pagination} from '@alife/next'
import {Fetch} from '../../../util/request'
import {parse} from '../../../util/querystring'
import dayjs from 'dayjs'

function renderNumAndUnit(val, index, record) {
  return `${val}${record.unit}`
}

class BonusRecord extends Component {
  constructor(props) {
    super(props)
    this.state = {
      data: [],
      groupMap: {},
      pageSize: 20,
      current: 1,
      total: 0
    }
    this.query = {}
    this.COLUMNS = [{
      dataIndex: 'name',
      title: '会员权益'
    }, {
      dataIndex: 'prev_num',
      title: '兑换前剩余份额',
      cell: renderNumAndUnit
    }, {
      dataIndex: 'exchange_num',
      title: '兑换份额',
      cell: renderNumAndUnit
    }, {
      dataIndex: 'new_num',
      title: '兑换后剩余份额',
      cell: renderNumAndUnit
    }, {
      dataIndex: 'exchange_time',
      title: '兑换时间',
      cell: function(value) {
        return dayjs(new Date(value)).format('YYYY-MM-DD HH:mm')
      }
    }]
  }
  async componentDidMount() {
    const {location} = this.props
    this.query = parse(location.search)
    this.uid = parseInt(this.query.uid)
    // Fetch('getGrouplist').then((resp) => {
    //   this.setState({
    //     groupMap: resp.data.reduce((ret, item) => {
    //       ret[item.id] = item
    //       return ret
    //     }, {})
    //   })
    // })
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
    const {pageSize, current} = this.state
    return Fetch('getMemberRightsExchangeList', {
      uid: this.uid,
      size: pageSize,
      current
    }).then((resp) => {
      const {total, data} = resp.data
      this.setState({
        data: data,
        total
      })
    })
  }
  render() {
    const {data, total, current, pageSize} = this.state
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
                  <div style={{marginTop: '8px', display: 'flex', justifyContent: 'flex-end'}}>
                    <Pagination onChange={this.onPageChange} total={total} current={current} pageSize={pageSize}></Pagination>
                  </div>
                </div>
    )
  }
}

export default BonusRecord
