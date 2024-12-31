import React, { Component } from 'react'
import {Table, Button, Dialog} from '@alife/next'
import {Fetch} from '../../util/request'
import CodeForm from './form'
import {parse} from '../../util/querystring'
import dayjs from 'dayjs'

class CompanyBonusType extends Component {
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
      title: '积分类型',
      dataIndex: 'tname'
    }, {
      title: '积分制',
      dataIndex: 'bonuse'
    },
    {
      title: '操作',
      dataIndex: '',
      cell: (value, index, record) => {
        return <div>
          <Button onClick={this.editType.bind(this, record)}>修改</Button>
        </div>
      }
    }
    ]
  }
  loadList() {
    const {cid} = this.state
    return Fetch('getAllCompanyBonusType', {cid: cid}).then((resp) => {
      this.setState({
        data: resp.data
      })
    })
  }
  editType(record) {
    const {cid} = this.state
    const instance = Dialog.show({
      title: '修改积分规则',
      content: <CodeForm onClose={() => {
        instance.hide()
      }} data={record} onSubmit={async(data) => {
        await Fetch('editCompanyBonusType', {
          data: {
            id: record.id,
            tid: record.tid,
            tname: record.tname,
            bonuse: data.bonuse,
            cid
          }
        })
        await this.loadList()
        instance.hide()
      }}></CodeForm>,
      footer: false
    })
  }
  addType=() => {
    const {cid} = this.state
    const instance = Dialog.show({
      title: '新增积分规则',
      content: <CodeForm
      onClose={() => {
        instance.hide()
      }} onSubmit={async(data) => {
        await Fetch('addBonusType', {
          data: {
            tid: data.tid,
            tname: data.tname,
            bonuse: data.bonuse,
            cid
          }
        })
        await this.loadList()
        instance.hide()
      }}></CodeForm>,
      footer: false
    })
  }
  componentDidMount() {
    this.loadList()
  }

  render() {
    const {data, name} = this.state
    return (
            <div style={{padding: '16px'}}>
                <div style={{margin: '4px 0 8px'}}>
                  <span style={{marginRight: '8px'}}>公司名:{name}</span>
                  <Button type="primary" onClick={this.addType}>新增积分规则</Button>
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

export default CompanyBonusType
