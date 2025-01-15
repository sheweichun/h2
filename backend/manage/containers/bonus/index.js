
import React, { Component } from 'react'
import {Table, Button, Dialog, Input, Pagination, Icon} from '@alife/next'
import {Fetch} from '../../util/request'
import ApiMap from '../../util/apiMap'
import Copy from '../../components/copy'
import dayjs from 'dayjs'
import './index.less'

class Upload extends Component {
  constructor(props) {
    super(props)
    this.state = {
      data: [],
      pageSize: 10,
      current: 1,
      total: 0,
      searchName: '',
      filterParams: {}
    }
    this.query = {}
    this.bonusTypeMap = {}
    this.COLUMNS = [{
      dataIndex: 'imgUrl',
      title: '上传内容',
      cell: (value) => {
        return <div style={{textAlign: 'center'}} onClick={this.showImage.bind(this, value)}>
          <img style={{height: '100px'}} src={value}/>
          <div>
            <Copy value={value}>复制链接</Copy>
          </div>
        </div>
      }
    }, {
      dataIndex: 'nickName',
      title: '上传者',
      cell: (value, index, record) => {
        return record.realName || value
      }
    }, {
      dataIndex: 'companyName',
      title: '上传者公司'
    }, {
      dataIndex: 'type',
      title: '类型',
      cell: (value) => {
        const curBonusType = this.bonusTypeMap[value]
        return curBonusType ? curBonusType.name : ''
      },
      filters: () => {
        return this.bonusTypeList
      }
    }, {
      dataIndex: 'acreate_time',
      title: '上传时间',
      cell: function(value) {
        return dayjs(new Date(value)).format('YYYY-MM-DD HH:mm')
      }
    }, {
      dataIndex: 'type',
      title: '可获积分',
      cell: (value) => {
        const curBonusType = this.bonusTypeMap[value]
        return curBonusType ? curBonusType.bonuse : ''
      }
    }, {
      dataIndex: 'bonusFlag',
      title: '状态',
      cell: function(bonusFlag) {
        if (bonusFlag === 0) {
          return '审核中'
        } else if (bonusFlag === 1) {
          return <span style={{color: '#0acc85'}}>审核通过</span>
        } else if (bonusFlag === 2) {
          return <span style={{color: '#f31c1c'}}>审核不通过</span>
        }
      }
    }, {
      dataIndex: 'reason',
      title: '拒绝原因',
      cell: (value, index, record) => {
        return value
      }
    }, {
      dataIndex: 'bonusFlag',
      title: '操作',
      cell: (value, index, record) => {
        return value === 0 ? <div style={{textAlign: 'center'}}>
          <Button onClick={this.changeUploadBonusFlag.bind(this, record.uid, 1, record.cid, record)} type="primary" style={{marginRight: '4px'}}>通过</Button>
          <Button onClick={this.changeUploadBonusFlag.bind(this, record.uid, 2, record.cid, record)}>拒绝</Button>
        </div> : ''
      }
    }]
  }
  changeSearch= (val) => {
    this.setState({
      searchName: val
    })
  }
  showImage(url) {
    Dialog.show({
      title: '图片',
      content: <div style={{width: '70vw', overflowX: 'hidden', overflowY: 'auto'}}>
        <img src={url} style={{width: '100%'}}/>
      </div>
    })
  }
  changeUploadBonusFlag(uid, value, cid, record) {
    let reason = '本年度已上传过'
    Dialog.confirm({
      title: '审核',
      content: <div style={{display: 'flex', alignItems: 'center'}}>
        <div style={{ paddingTop: '14px',
          marginRight: '8px'}}>
          <img style={{width: '80px', marginBottom: '8px'}} src={record.imgUrl}/>
        </div>
        <div>
          {value !== 1 && <div style={{padding: '4px 0 8px'}}>
          <span>拒绝原因：</span>
          <Input defaultValue={reason} onChange={(val) => {
            reason = val
          }}/>
          </div>}
          <div>确定要{value === 1 ? <span style={{color: '#0acc85'}} >通过</span> : <span style={{color: '#f31c1c'}}>拒绝</span>}这条记录么?</div>
        </div>
      </div>,
      onOk: async () => {
        await Fetch('changeUploadBonusFlag', {
          uid, value, cid, reason
        })
        this.loadList()
      }
    })
  }
  async componentDidMount() {
    const bonusTypeList = []
    this.bonusTypeMap = await Fetch('getBonusType').then((resp) => {
      return resp.data.reduce((ret, item) => {
        bonusTypeList.push({
          label: item.name,
          value: item.value
        })
        ret[item.value] = item
        return ret
      }, {})
    })
    this.bonusTypeList = bonusTypeList
    this.loadList()
  }

  onFilter=(filterParams) => {
    console.log('filterParams :', filterParams)
    this.state.filterParams = filterParams
    this.loadList()
    this.setState({
      filterParams
    })
  }
  loadlistBySearch = () => {
    const { searchName } = this.state
    if (!searchName) {
      delete this.query.realName
    } else {
      this.query.realName = searchName
    }
    this.state.current = 1
    return this.loadList()
  }
  loadList() {
    const {pageSize, current, filterParams} = this.state
    return Fetch('getUploadList', {
      pageSize,
      current,
      param: JSON.stringify({
        query: this.query,
        config: {
          needUserInfo: true
        },
        filterStr: JSON.stringify(Object.keys(filterParams).reduce((ret, name) => {
          ret[name] = filterParams[name].selectedKeys
          return ret
          // return {
          //   name,
          //   values: filterParams[name].selectedKeys
          // }

        }, {}))
      })
    }).then((resp) => {
      const {data, total} = resp.data
      this.setState({
        data,
        total
      })
    })
  }
  onPageChange=(current) => {
    this.state.current = current
    this.loadList()
    this.setState({
      current
    })
  }
  render() {
    const {data, pageSize, total, current, filterParams, searchName} = this.state
    return (
            <div style={{padding: '16px'}}>
              <div style={{margin: '0 0 12px 0', overflow: 'hidden'}}>
                <div style={{marginBottom: '16px', display: 'inline-block'}}>
                      <Input
                      value={searchName}
                      onChange={this.changeSearch}
                      onPressEnter={this.loadlistBySearch}
                      placeholder="要搜索的姓名"
                      innerAfter={<Icon type="search" size="xs" onClick={this.loadlistBySearch} style={{margin: 4}}/>}
                      ></Input>
                      {/* <Button type="primary" style={{float:'right'}}>
                        <a target="_blank" href={ApiMap['getExportCustomers'].param.url} style={{color:'white'}}>导出文件</a>
                      </Button> */}
                  </div>
                {data.length > 0 ? <Button type="primary" style={{float: 'right'}}>
                  <a target="_blank" href={ApiMap['getExportBonus'].param.url} style={{color: 'white'}}>导出信息</a>
                </Button> : ''}
              </div>
              <Table dataSource={data} filterParams={filterParams} 
                  onFilter={this.onFilter}>
                {
                  this.COLUMNS.map((item, key) => {
                    return <Table.Column
                    key={key}
                    title={item.title}
                    cell={item.cell}
                    dataIndex={item.dataIndex}
                    filters={item.filters && item.filters()}
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

export default Upload
