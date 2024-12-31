
import React, { Component } from 'react'
import {Table, Button, Dialog, Input, Icon, Pagination, Select} from '@alife/next'
import {Fetch} from '../../util/request'
import ApiMap from '../../util/apiMap'
import {Link} from 'react-router-dom'
import Form from './form'

const Option = Select.Option
// import ExchangeForm from './exchange'
// import EditForm from './edit'
// import BonusForm from './bonus'
import dayjs from 'dayjs'

const NormalUserExchangeStatus = [
  {
    label: '待处理',
    value: 0
  }, {
    label: '已完成',  //需要真正扣除积分
    value: 1
  }
]

const CancelStatus = {
  label: '已取消',  //需要归还积分和奖品库存
  value: -1
}

const pages = [
  {
    label: '10',
    value: 10
  }, {
    label: '25',
    value: 25
  }, {
    label: '50',
    value: 50
  }, {
    label: '100',
    value: 100
  }, {
    label: '200',
    value: 200
  }, {
    label: '500',
    value: 500
  }
]


const UserExchangeStatus = [].concat(NormalUserExchangeStatus, [CancelStatus])
const UserExchangeStatusMap = UserExchangeStatus.reduce((ret, item) => {
  ret[item.value] = item
  return ret
}, {})


const SUB_COLUMNS = [
  {
    dataIndex: 'gift_name',
    title: '奖品名'
  }, {
    dataIndex: 'gift_desc',
    title: '奖品描述'
  }, {
    dataIndex: 'bonus',
    title: '奖品兑换所需积分'
  }, {
    dataIndex: 'num',
    title: '奖品兑换数量'
  }
]

class UserExchange extends Component {
  constructor(props) {
    super(props)
    this.state = {
      data: [],
      pageSize: 25,
      current: 1,
      total: 0,
      search: '',
      companies: [],
      filterParams: {},
      sort: {
        create_time: 'desc'
      }
    }
    this.sortColumn = 'create_time'
    this.sortOrder = 'desc'
    this.query = {}
    this.COLUMNS = [{
      dataIndex: 'avatarUrl',
      title: '兑换人头像',
      width: 100,
      cell: function(value) {
        return <img src={value} style={{width: '60px', height: '60px', borderRadius: '50%'}}/>
      }
    }, {
      dataIndex: 'nickName',
      title: '兑换人微信昵称'
    }, {
      dataIndex: 'realName',
      title: '兑换人姓名'
    }, {
      dataIndex: 'companyid',
      title: '兑换人公司',
      cell: (value, index, record) => {
        return record.companyName
      },
      filters: () => {
        return this.state.companies
      }
    }, {
      dataIndex: 'duihuanTotal',
      title: <div style={{color: 'red'}}>本次兑换积分</div>
    }, {
      dataIndex: 'addrName',
      title: '收货人姓名'
    }, {
      dataIndex: 'addrPhone',
      title: '收货人电话'
    }, {
      dataIndex: 'province',
      title: '收货人地址',
      cell: (value, index, record) => {
        return <div style={{maxWidth: '200px'}}>
            {record.province}-{record.city}-{record.region}-{record.info}
        </div>
      }
    }, {
      dataIndex: 'create_time',
      title: '兑换创建时间',
      sortable: true,
      cell: function(value) {
        if (value == null) return '--'
        return dayjs(new Date(value)).format('YYYY-MM-DD HH:mm')
      }
    }, {
      dataIndex: 'remark',
      title: '订单备注信息'
    }, {
      dataIndex: 'status',
      title: '兑换订单状态',
      cell: (value, index, record) => {
        return <div style={{color: value === -1 ? 'red' : ''}}>
          {UserExchangeStatusMap[value].label}
        </div>
      },
      filters: () => {
        return UserExchangeStatus
      }
    }, {
      dataIndex: 'uid',
      title: '操作',
      cell: (value, index, record) => {
        return <div>
            {record.status === 0 && <Button style={{marginRight: '8px'}} type="primary" onClick={this.confirmCompleteExchange.bind(this, record)}>完成</Button>}
            {record.status === 0 && <Button style={{marginRight: '8px'}} warning type="primary" onClick={this.confirmCancelExchange.bind(this, record)}>取消</Button>}
            <Button type="secondary" onClick={this.updateRemark.bind(this, record)}>修改订单备注</Button>
            {/* <Button style={{marginRight: '8px'}} type="primary" onClick={this.addBonus.bind(this, record)}>新增积分</Button>
            <Button style={{marginRight: '8px'}} onClick={this.doExchange.bind(this, record)}>兑换积分</Button>
            <Button onClick={this.onEdit.bind(this, record)}>调整公司</Button>
            <Link style={{marginLeft: '8px'}} to={{
              pathname: '/bonusRecord',
              search: `uid=${value}`
            }}>查看积分记录</Link>
            <Link style={{marginLeft: '8px'}} to={{
              pathname: '/reportRecord',
              search: `uid=${value}`
            }}>查看保单托管报告</Link> */}

        </div>
      }
    }]
  }
  updateRemark(record) {
    const instance = Dialog.show({
      title: '修改订单备注',
      content: <Form
        onClose={() => {
          instance.hide()
        }} data={{
          remark: record.remark
        }} onSubmit={async(data) => {
          await Fetch('updateExchangeRecordRemark', {
            infoId: record.id,
            remark: data.remark
          })
          // record.remark = data.remark
          await this.loadList()
          instance.hide()
        }}></Form>,
      footer: false
    })
  }
  changePageSize= async (value) => {
    this.state.pageSize = value
    this.setState({
      pageSize: value
    })
    await this.loadList()
  }
  // onEdit=(record) => {
  //   const {companies} = this.state
  //   const instance = Dialog.show({
  //     title: `调整【${record.nickName}】所属公司`,
  //     footer: false,
  //     content: <EditForm
  //       company={companies}
  //       defaultCid={record.companyid}
  //       onClose={() => {
  //         instance.hide()
  //       }}
  //       onSubmit={(curCompany) => {
  //         Fetch('changeCompany', {
  //           companyName: curCompany.label,
  //           companyid: curCompany.value,
  //           uid: record.uid
  //         }).then(() => {
  //           // record.companyName = curCompany.label
  //           // record.companyid = curCompany.companyid
  //           // this.setState({})
  //           this.loadList()
  //           instance.hide()
  //         })
  //       }}
  //     >
  //     </EditForm>
  //   })
  // }
  // cancelEdit=() => {
  //   this.setState({
  //     isEditing: false,
  //     editRecord: null
  //   })
  // }
  // doAddBonus(uid, typeName, addBonus) {
  //   return Fetch('addBonus', {
  //     uid,
  //     typeName,
  //     addBonus
  //   })
  // }
  // addBonus(record) {
  //   const instance = Dialog.show({
  //     title: `给【${record.realName || record.nickName}】新增积分`,
  //     content: <BonusForm
  //       onClose={() => { instance.hide() }}
  //       onSubmit={async(data) => {
  //         const {addBonus, typeName} = data
  //         await this.doAddBonus(record.uid, typeName, addBonus)
  //         // const ret = await this.confirmExchange(record)
  //         // if (!ret) {
  //         //   instance.hide()
  //         //   return
  //         // }
  //         // await Fetch('doExchange', {
  //         //   uid: record.uid,
  //         //   eid: data.id
  //         // })
  //         await this.loadList()
  //         instance.hide()
  //       }}
  //     >
  //     </BonusForm>,
  //     footer: false
  //   })
  // }
  // async doExchange(record) {
  //   const ret = await this.loadExchangeList(record.companyid)
  //   const instance = Dialog.show({
  //     title: `给【${record.realName || record.nickName}】兑换奖品`,
  //     content: <ExchangeForm
  //       data={ret.data}
  //       onClose={() => { instance.hide() }}
  //       onSubmit={async(data) => {
  //         const ret = await this.confirmExchange(record)
  //         if (!ret) {
  //           instance.hide()
  //           return
  //         }
  //         await Fetch('doExchange', {
  //           uid: record.uid,
  //           eid: data.id
  //         })
  //         await this.loadList()
  //         instance.hide()
  //       }}
  //     ></ExchangeForm>,
  //     footer: false
  //   })
  // }
  // confirmExchange(record) {
  //   return new Promise((resolve) => {
  //     Dialog.confirm({
  //       title: `你确定要给【${record.realName || record.nickName}】兑换积分?`,
  //       onOk: () => {
  //         resolve(true)
  //       },
  //       onCancel: () => {
  //         resolve()
  //       }
  //     })
  //   })
  // }
  confirmCompleteExchange(record) {
    Dialog.confirm({
      title: `你确定完成【${record.realName}】兑换积分${record.duihuanTotal}?`,
      onOk: () => {
        this.completeExchange(record)
      }
    })
  }
  confirmCancelExchange(record) {
    Dialog.confirm({
      title: `你确定取消【${record.realName}】兑换积分${record.duihuanTotal}?`,
      onOk: () => {
        this.cancelExchange(record)
      }
    })
  }
  async completeExchange(record) {
    await Fetch('completeUserExchange', {
      infoId: record.id,
      uid: record.uid
    })
    await this.loadList()
  }
  async cancelExchange(record) {
    await Fetch('cancelUserExchange', {
      infoId: record.id,
      uid: record.uid
    })
    await this.loadList()
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
  async componentDidMount() {
    await this.loadCompany()
    this.loadList()
  }
  loadExchangeList(cid) {
    return Fetch('getExchangeList', {code_id: cid})
  }
  loadList=() => {
    const {pageSize, current, filterParams, search} = this.state
    // console.log('filterParams :', filterParams)
    return Fetch('allUserExchange', {
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
      data.forEach((item) => {
        item.duihuanTotal = item.subItems.reduce((total, subItem) => {
          total += subItem.bonus * subItem.num
          return total
        }, 0)
      })
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
    // console.log('total :',total,current,pageSize);
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
                    {/* <Button type="primary" style={{float:'right'}}>
                      <a target="_blank" href={ApiMap['getExportCustomers'].param.url} style={{color:'white'}}>导出文件</a>
                    </Button> */}
                  </div>
                  <Table sort={sort} 
                  dataSource={data} 
                  onSort={this.onSort} 
                  expandedRowRender={(record) => {
                    return <Table dataSource={record.subItems} >
                      {
                        SUB_COLUMNS.map((subCol, subKey) => {
                          return <Table.Column
                          key={subKey}
                          title={subCol.title}
                          dataIndex={subCol.dataIndex}
                          ></Table.Column>
                        })
                      }
                    </Table>
                  }}
                  filterParams={filterParams} 
                  onFilter={this.onFilter}>
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
                    <div style={{display: 'flex', flexDirection: 'row', alignItems: 'center',marginRight: '20px'}}>
                      <div>每页</div>
                      <Select value={pageSize} onChange={this.changePageSize} hasClear style={{ margin: '0 12px' }}>
                        {
                          pages.map((pg, pindex) => {
                            return <Option value={pg.value} key={pindex}>{pg.label}</Option>
                          })
                        }
                      </Select>
                      <div>项</div>
                    </div>
                    <Pagination onChange={this.onPageChange} total={total} current={current} pageSize={pageSize}></Pagination>
                  </div>
                </div>
    )
  }
}

export default UserExchange
