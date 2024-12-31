
import React, { Component } from 'react'
import {Table, Button, Dialog, Pagination} from '@alife/next'
import {Fetch} from '../../util/request'
import {parse} from '../../util/querystring'
import dayjs from 'dayjs'
class BonusRecord extends Component {
  constructor(props) {
    super(props)
    this.state = {
      data: [],
      pageSize: 20,
      current: 1,
      total: 0
    }
    this.query = {}
    this.COLUMNS = [{
      dataIndex: 'type_name',
      title: '积分类型'
    }, {
      dataIndex: 'origin_bonus',
      title: '上一次积分'
    }, {
      dataIndex: 'add_bonus',
      title: '新增积分'
    }, {
      dataIndex: 'new_bonus',
      title: '新的积分'
    }, {
      dataIndex: 'readed',
      title: '已读',
      cell: function(value) {
        return value ? '是' : '否'
      }
    }, {
      dataIndex: 'create_time',
      title: '积分变化时间',
      cell: function(value) {
        return dayjs(new Date(value)).format('YYYY-MM-DD HH:mm')
      }
    }]
  }
  async componentDidMount() {
    const {location} = this.props
    this.query = parse(location.search)
    this.uid = parseInt(this.query.uid)
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
    return Fetch('getAllBonusInfo', {
      pageSize,
      current,
      where: JSON.stringify({uid: this.uid})
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
