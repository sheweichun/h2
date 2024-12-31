import React, { Component } from 'react'
import {Table, Button, Dialog, Message} from '@alife/next'
import {Fetch} from '../../util/request'
import ApiMap from '../../util/apiMap'
import CodeForm from './form'
import ActivityForm from './activity'
import {Link} from 'react-router-dom'
import dayjs from 'dayjs'

class Company extends Component {
  constructor(props) {
    super(props)
    this.state = {
      data: [],
      adminMap: {},
      adminSource: []
    }
    this.COLUMNS = [{
      title: 'id',
      dataIndex: 'cid'
    }, {
      title: '邀请码',
      dataIndex: 'code'
    }, {
      title: '公司名',
      dataIndex: 'name'
    }, {
      title: 'HR',
      dataIndex: 'hr'
    }, {
      title: 'HR联系方式',
      dataIndex: 'hr_phone'
    }, {
      title: '活动信息',
      dataIndex: 'enable_activity',
      cell: function(value, index, record) {
        if (value) {
          return `【${record.activity_name || ''}活动】已开启，邀请码是【${record.activity_code}】`
        } else {
          return '未开启活动'
        }
      }
    }, {
      dataIndex: 'update_time',
      title: '对接人员信息',
      cell: function(value, index, record) {
        return <div style={{
          display: 'inline-flex',
          flexDirection: 'row'
        }}>
          <div style={{marginRight: '12px'}}>
            <img style={{height: '40px', width: '40px', marginBottom: '8px', borderRadius: '50%'}} src={record.manage_logo}/>
            <div>{record.manage_name}</div>
          </div>
          <div>
            <img style={{height: '60px'}} src={record.manage_mask}/>
          </div>
        </div>
      }
    }, {
      title: '是否开启个人健康告知问卷',
      dataIndex: 'need_qus',
      cell: function(value) {
        return value ? '已开启' : '未开启'
      }
    }, {
      title: '创建时间',
      dataIndex: 'create_time',
      cell: function(value) {
        return dayjs(new Date(value)).format('YYYY-MM-DD HH:mm')
      }
    }, {
      title: '管理员信息',
      dataIndex: 'aid',
      cell: (value) => {
        const { adminMap } = this.state
        const target = adminMap[value]
        return target ? target.name : '--'
      }
    }, {
      title: '最近一次清零时间',
      dataIndex: 'reset_time',
      cell: function(value) {
        if (value == null) return '- -'
        return dayjs(new Date(value)).format('YYYY-MM-DD HH:mm')
      }
    }, {
      title: '操作',
      dataIndex: '',
      cell: (value, index, record) => {
        return <div>
        <Button onClick={this.editCompany.bind(this, record)}>修改</Button>
        <a target="_blank" href={`${ApiMap['exportHealthCustomersByCid'].param.url}?qid=2&cid=${record.cid}`} style={{marginLeft: '8px'}}>导出健康信息告知问卷</a>
        <Button style={{marginLeft: '8px'}} type="primary" warning onClick={this.resetBonus.bind(this, record)}>积分清零</Button>
        <Link style={{marginLeft: '8px'}} to={{
          pathname: '/companybonustype',
          search: `cid=${record.cid}&name=${record.name}`
        }}>积分规则</Link>
        <Link style={{marginLeft: '8px'}} to={{
          pathname: '/exchange',
          search: `cid=${record.cid}&name=${record.name}`
        }}>积分兑换</Link>
        <Button style={{marginLeft: '8px'}} type="primary">
          <Link style={{color: 'white'}} to={{
            pathname: '/exchange',
            search: `cid=${record.cid}&name=${record.name}`
          }}>用户兑换记录</Link>
        </Button>

        <Button style={{marginLeft: '8px'}} type="primary" onClick={this.onManageActivity.bind(this, record)}>
          活动管理
        </Button>
        
        </div>
      }
    }]
  }
  resetBonus=(record) => {
    Dialog.confirm({
      title: `【${record.name}】积分清零`,
      content: '确定要将该公司下所有员工积分清零?',
      onOk: () => {
        Fetch('resetBonusByCid', {
          cid: record.cid
        }).then(() => {
          this.loadList()
          Message.success('积分清零成功')
        })
      }
    })
  }
  onManageActivity=(record) => {
    // console.log('record :', record);
    const instance = Dialog.show({
      title: '活动管理',
      content: <ActivityForm onClose={() => {
        instance.hide()
      }} data={record} onSubmit={async(data) => {
        // console.log('data :', data);
        await Fetch('editCompany', Object.assign({}, data, {cid: record.cid, name: record.name, code: record.code}))
        await this.loadList()
        instance.hide()
      }}></ActivityForm>,
      footer: false
    })
  }
  componentDidMount() {
    // this.loadAdmins().
    this.loadAdmins().then(() => {
      this.loadList()
    })
  }
  goExchange(record) {

  }
  editCompany(record) {
    const instance = Dialog.show({
      title: '修改邀请码',
      content: <CodeForm onClose={() => {
        instance.hide()
      }} data={record} adminSource={this.state.adminSource} onSubmit={async(data) => {
        await Fetch('editCompany', data)
        await this.loadList()
        instance.hide()
      }}></CodeForm>,
      footer: false
    })
  }
  loadAdmins() {
    return Fetch('getAllAdmins').then((resp) => {
      // console.log('resp :', resp.data)
      const list = resp.data || []
      this.setState({
        adminMap: list.reduce((result, item) => {
          result[item.aid] = item
          return result
        }, {}),
        adminSource: list.map((item) => {
          return {
            label: item.name,
            value: item.aid
          }
        })
      })
    })
  }
  loadList() {
    return Fetch('getAllCompany').then((resp) => {
      this.setState({
        data: resp.data
      })
    })
  }
  addCode=() => {
    const instance = Dialog.show({
      title: '新增邀请码',
      content: <CodeForm onClose={() => {
        instance.hide()
      }} adminSource={this.state.adminSource} onSubmit={async(data) => {
        await Fetch('addCompany', data)
        await this.loadList()
        instance.hide()
      }}></CodeForm>,
      footer: false
    })
  }
  render() {
    const {data} = this.state
    return (
            <div style={{padding: '16px'}}>
                <div style={{margin: '4px 0 8px'}}>
                  <Button type="primary" onClick={this.addCode}>新增邀请码</Button>
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

export default Company
