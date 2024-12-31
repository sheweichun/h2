
import React, { Component } from 'react'
import {Table, Button, Dialog} from '@alife/next'
import {Fetch} from '../../util/request'
import {Link} from 'react-router-dom'
import dayjs from 'dayjs'
class Share extends Component {
  constructor(props) {
    super(props)
    this.state = {
      data: []
    }
    this.query = {}
    this.COLUMNS = [{
      dataIndex: 'share_customer_id',
      title: '分享者id'
    }, {
      dataIndex: 'enter_customer_id',
      title: '被分享者的id'
    }, {
      dataIndex: 'enter_name',
      title: '被分享者的姓名'
    }, {
      dataIndex: 'type',
      title: '分享类型',
      cell: function(val) {
        if (val === 1) {
          return '转发'
        }
        return '朋友圈分享'
      }
    }, {
      dataIndex: 'flag',
      title: '被分享者是否完成注册',
      cell: function(val) {
        if (val === 1) {
          return '是'
        }
        return '否'
      }
    }, {
      dataIndex: 'create_time',
      title: '分享时间',
      cell: function(value) {
        return dayjs(new Date(value)).format('YYYY-MM-DD HH:mm')
      }
    } 
    // {
    //   dataIndex: '',
    //   title: '操作',
    //   cell: (value) => {
    //     return <div>
    //         操作
    //     </div>
    //   }
    // }
    ]
  }
  async componentDidMount() {
    this.loadList()
  }

  loadList() {
    return Fetch('getShareList', {
      where: JSON.stringify({
        
      })
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

export default Share
