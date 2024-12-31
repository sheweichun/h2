
import React, { Component } from 'react'
import {Table, Button, Dialog, Input, Icon, Pagination} from '@alife/next'
import {Fetch} from '../../util/request'
import ApiMap from '../../util/apiMap'
import {Link} from 'react-router-dom'
import ExchangeForm from './exchange'
import EditForm from './edit'
import BonusForm from './bonus'
import MemberBonusForm from './member_bonus'
import dayjs from 'dayjs'
class UserList extends Component {
  constructor(props) {
    super(props)
    this.state = {
      data: [],
      pageSize: 10,
      current: 1,
      total: 0,
      search: '',
      companies: [],
      filterParams: {},
      memberMap: {},
      sort: {
        last_upload_run_time: 'desc'
      }
    }
    this.sortColumn = 'last_upload_run_time'
    this.sortOrder = 'desc'
    this.query = {}
    this.COLUMNS = [{
      dataIndex: 'avatarUrl',
      title: '头像',
      width: 100,
      cell: function(value) {
        return <img src={value} style={{width: '60px', height: '60px', borderRadius: '50%'}}/>
      }
    }, {
      dataIndex: 'nickName',
      title: '微信昵称'
    }, {
      dataIndex: 'realName',
      title: '姓名'
    }, {
      dataIndex: 'companyid',
      title: '公司',
      cell: (value, index, record) => {
        return record.companyName
      },
      filters: () => {
        return this.state.companies
      }
    }, {
      dataIndex: 'phone',
      title: '手机号'
    }, {
      dataIndex: 'bonus',
      title: '积分',
      sortable: true
    }, {
      dataIndex: 'total_bonus',
      title: '年度总积分',
      sortable: true
    }, {
      dataIndex: 'member',
      title: '会员积分',
      sortable: true
    }, {
      dataIndex: 'member_level',
      title: '会员等级',
      cell: (value) => {
        if (value == null) return '--'
        const target = this.state.memberMap[value]
        return target ? target.label : '--'
      },
      filters: () => {
        return this.state.members
      }
    }, {
      dataIndex: 'member_update',
      title: '会员积分更新日期',
      sortable: true,
      cell: function(value) {
        if (value == null) return '--'
        return dayjs(new Date(value)).format('YYYY-MM-DD HH:mm')
      }
    }, {
      dataIndex: 'create_time',
      title: '创建时间',
      sortable: true,
      cell: function(value) {
        if (value == null) return '--'
        return dayjs(new Date(value)).format('YYYY-MM-DD HH:mm')
      }
    }, {
      dataIndex: 'last_upload_run_time',
      title: '最近上传时间',
      sortable: true,
      cell: function(value) {
        if (value == null) return '未上传过'
        return dayjs(new Date(value)).format('YYYY-MM-DD HH:mm')
      }
    }, {
      dataIndex: 'uid',
      title: '操作',
      cell: (value, index, record) => {
        return <div>
            <div>
              <Button style={{marginRight: '8px'}} type="secondary" onClick={this.addBonus.bind(this, record)}>新增积分</Button>
              <Button style={{marginRight: '8px'}} onClick={this.doExchange.bind(this, record)}>兑换积分</Button>
              <Button onClick={this.onEdit.bind(this, record)}>调整公司</Button>
              <Link style={{marginLeft: '8px'}} to={{
                pathname: '/bonusRecord',
                search: `uid=${value}`
              }}>查看积分记录</Link>
              <Link style={{marginLeft: '8px'}} to={{
                pathname: '/reportRecord',
                search: `uid=${value}`
              }}>查看保单托管报告</Link>
            </div>
            { (record.member_level > 0) && <div style={{marginTop: '12px'}}>
              <Button style={{marginRight: '8px'}} type="primary" onClick={this.addMemberBonus.bind(this, record)}>会员积分调整</Button>
              <Link style={{marginRight: '8px'}} to={{
                pathname: '/memberBonusRecord',
                search: `uid=${value}`
              }}>会员积分记录</Link>
              {/* <Button style={{marginRight: '8px'}} onClick={this.doExchange.bind(this, record)}>查看会员积分</Button> */}
              <Button style={{marginRight: '8px'}} >
                <Link style={{color: '#333'}} to={{
                  pathname: '/memberRightsRecord',
                  search: `uid=${value}`
                }}>会员权益</Link>
              </Button>
              {/* <Button onClick={this.onEdit.bind(this, record)}>会员权益兑换记录</Button> */}
              <Link to={{
                pathname: '/memberRightsExchangeRecord',
                search: `uid=${value}`
              }}>会员权益兑换记录</Link>
            </div>}
        </div>
      }
    }]
  }
  onEdit=(record) => {
    const {companies} = this.state
    const instance = Dialog.show({
      title: `调整【${record.nickName}】所属公司`,
      footer: false,
      content: <EditForm
        company={companies}
        defaultCid={record.companyid}
        onClose={() => {
          instance.hide()
        }}
        onSubmit={(curCompany) => {
          Fetch('changeCompany', {
            companyName: curCompany.label,
            companyid: curCompany.value,
            uid: record.uid
          }).then(() => {
            // record.companyName = curCompany.label
            // record.companyid = curCompany.companyid
            // this.setState({})
            this.loadList()
            instance.hide()
          })
        }}
      >
      </EditForm>
    })
  }
  cancelEdit=() => {
    this.setState({
      isEditing: false,
      editRecord: null
    })
  }
  doAddBonus(uid, typeName, addBonus) {
    return Fetch('addBonus', {
      uid,
      typeName,
      addBonus
    })
  }
  doAddMemberBonus(uid, bonus, description) {
    return Fetch('addMemberBonus', {
      data: {
        uid,
        bonus,
        description
      }
    })
  }
  addMemberBonus(record) {
    const instance = Dialog.show({
      title: `给【${record.realName || record.nickName}】新增【会员积分】`,
      content: <MemberBonusForm
        onClose={() => { instance.hide() }}
        onSubmit={async(data) => {
          const {bonus, description} = data
          await this.doAddMemberBonus(record.uid, bonus, description)
          await this.loadList()
          instance.hide()
        }}
      >
      </MemberBonusForm>,
      footer: false
    })
  }
  addBonus(record) {
    const instance = Dialog.show({
      title: `给【${record.realName || record.nickName}】新增积分`,
      content: <BonusForm
        onClose={() => { instance.hide() }}
        onSubmit={async(data) => {
          const {addBonus, typeName} = data
          await this.doAddBonus(record.uid, typeName, addBonus)
          // const ret = await this.confirmExchange(record)
          // if (!ret) {
          //   instance.hide()
          //   return
          // }
          // await Fetch('doExchange', {
          //   uid: record.uid,
          //   eid: data.id
          // })
          await this.loadList()
          instance.hide()
        }}
      >
      </BonusForm>,
      footer: false
    })
  }
  async doExchange(record) {
    const ret = await this.loadExchangeList(record.companyid)
    const instance = Dialog.show({
      title: `给【${record.realName || record.nickName}】兑换奖品`,
      content: <ExchangeForm
        data={ret.data}
        onClose={() => { instance.hide() }}
        onSubmit={async(data) => {
          const ret = await this.confirmExchange(record)
          if (!ret) {
            instance.hide()
            return
          }
          await Fetch('doExchange', {
            uid: record.uid,
            eid: data.id
          })
          await this.loadList()
          instance.hide()
        }}
      ></ExchangeForm>,
      footer: false
    })
  }
  confirmExchange(record) {
    return new Promise((resolve) => {
      Dialog.confirm({
        title: `你确定要给【${record.realName || record.nickName}】兑换积分?`,
        onOk: () => {
          resolve(true)
        },
        onCancel: () => {
          resolve()
        }
      })
    })
  }
  loadCompany() {
    return Fetch('getAllCompany').then((resp) => {
      this.state.companies = resp.data.map((item) => {
        return {
          label: item.name,
          value: item.cid
        }
      })
    })
  }
  loadMembers() {
    return Fetch('getMembers').then((resp) => {
      const data = resp.data || []
      this.setState({
        memberMap: data.reduce((ret, item) => {
          ret[item.id] = item
          return ret
        }, {}),
        members: data.map((item) => {
          return {
            label: item.label,
            value: item.id
          }
        })
      })
    })
  }
  async componentDidMount() {
    this.loadCompany()
    this.loadMembers()
    this.loadList()
  }
  loadExchangeList(cid) {
    return Fetch('getExchangeList', {code_id: cid})
  }
  loadList=() => {
    const {pageSize, current, filterParams, search} = this.state
    // console.log('filterParams :', filterParams)
    return Fetch('getAllCustomers', {
      pageSize,
      current,
      search,
      sortColumn: this.sortColumn,
      sortOrder: this.sortOrder,
      filterStr: JSON.stringify(Object.keys(filterParams).map((name) => {
        return {
          name,
          values: filterParams[name].selectedKeys
        }
      }))
    }).then((resp) => {
      const {data, total} = resp.data
      this.setState({
        data: data,
        total
      })
    })
  }
  onFilter=(filterParams) => {
    // console.log('filterParams :', filterParams)
    this.state.filterParams = filterParams
    this.loadList()
    this.setState({
      filterParams
    })
  }
  onPageChange=(current) => {
    this.state.current = current
    this.loadList()
    this.setState({
      current
    })
  }
  changeSearch=(val) => {
    this.setState({
      search: val
    })
  }
  onSort=(dataIndex, order) => {
    // console.log(dataIndex, order)
    this.sortColumn = dataIndex
    this.sortOrder = order
    this.loadList()
    this.setState({
      sort: {
        [dataIndex]: order
      }
    })
  }
  loadlistBySearch=() => {
    this.state.current = 1
    this.loadList()
  }
  // onExportFile=()=>{
  //   return Fetch('getExportCustomers')
  // }
  render() {
    const {data, total, current, pageSize, filterParams, search, sort} = this.state
    return (
                <div style={{padding: '16px'}}>
                  <div style={{marginBottom: '16px'}}>
                    <Input
                    value={search}
                    onChange={this.changeSearch}
                    onPressEnter={this.loadlistBySearch}
                    placeholder="要搜索的姓名"
                    innerAfter={<Icon type="search" size="xs" onClick={this.loadlistBySearch} style={{margin: 4}}/>}
                    ></Input>
                    <Button type="primary" style={{float: 'right'}}>
                      <a target="_blank" href={ApiMap['getExportCustomers'].param.url} style={{color: 'white'}}>导出文件</a>
                    </Button>
                  </div>
                  <Table sort={sort} dataSource={data} onSort={this.onSort} filterParams={filterParams} onFilter={this.onFilter}>
                    {
                      this.COLUMNS.map((item, key) => {
                        return <Table.Column
                        key={key}
                        title={item.title}
                        cell={item.cell}
                        filters={item.filters && item.filters()}
                        width={item.width}
                        sortable={item.sortable}
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

export default UserList
