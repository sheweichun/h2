
import React, { Component } from 'react'
import {Table, Button, Dialog} from '@alife/next'
import {Fetch} from '../../util/request'
import ArticleForm from './form'
import {Link} from 'react-router-dom'
import dayjs from 'dayjs'





class Share extends Component {
  constructor(props) {
    super(props)
    this.state = {
      data: [],
      companyMap: {},
      filterParams: {},
      companySource: []
    }
    this.query = {}
    this.onFilter = this.onFilter.bind(this)
    this.COLUMNS = [{
      dataIndex: 'title',
      title: '标题'
    }, {
      dataIndex: 'subTitle',
      title: '描述'
    }, {
      dataIndex: 'logo',
      title: '文章图片',
      cell: function(val) {
        return <img src={val} style={{height: '80px'}}></img>
      }
    }, {
      dataIndex: 'cid',
      title: '所属公司',
      cell: (val) => {
        const { companyMap } = this.state
        const target = companyMap[val]
        return target ? target.name : '--'
      },
      filters: () => {
        return this.state.companySource
      }
    }, {
      dataIndex: 'url',
      title: '跳转链接',
      cell: (val) => {
        return <a style={{color: '#333333'}} href={val} target="blank">{val}</a>
      }
    }, {
      dataIndex: 'create_time',
      title: '创建时间',
      cell: function(value) {
        return dayjs(new Date(value)).format('YYYY-MM-DD HH:mm')
      }
    }, {
      dataIndex: 'update_time',
      title: '更新时间',
      cell: function(value) {
        return dayjs(new Date(value)).format('YYYY-MM-DD HH:mm')
      }
    }, {
      dataIndex: '',
      title: '操作',
      cell: (value, index, record) => {
        return <div>
            <Button onClick={this.editArticle.bind(this, record)}>修改</Button>
            <Button style={{marginLeft: '12px'}} type="primary" warning onClick={this.removeArticle.bind(this, record)}>删除</Button>
        </div>
      }
    }]
  }
  async componentDidMount() {
    this.loadCompanyList().then(() => {
      this.loadList()
    })
  }

  loadCompanyList() {
    return Fetch('getAllCompany').then((resp) => {
      const list = resp.data || []
      this.setState({
        companyMap: list.reduce((ret, item) => {
          ret[item.cid] = item
          return ret
        }, {}),
        companySource: list.map((item) => {
          return {
            label: item.name,
            value: item.cid
          }
        })
      })
    })
  }
  onFilter(filterParams) {
    // console.log('filterParams :', filterParams)
    this.state.filterParams = filterParams
    this.loadList()
    this.setState({
      filterParams
    })
  }
  loadList() {
    const { filterParams } = this.state
    return Fetch('getArticleList', {
      filterStr: JSON.stringify(Object.keys(filterParams).map((name) => {
        return {
          name,
          values: filterParams[name].selectedKeys
        }
      }))
    }).then((resp) => {
      this.setState({
        data: resp.data
      })
    })
  }
  removeArticle=(record) => {
    Dialog.confirm({
      title: `你确定要删除【${record.title}】`,
      onOk: async() => {
        await Fetch('removeArticle', {
          data: record.id
        })
        await this.loadList()
      }
    })
  }
  addArticle=() => {
    const instance = Dialog.show({
      title: '创建文章',
      content: <ArticleForm onClose={() => {
        instance.hide()
      }} companySource={this.state.companySource} onSubmit={async(data) => {
        const newData = Object.assign({}, data)
        delete newData.id
        delete newData.icon
        await Fetch('addArticle', {
          data: newData
        })
        await this.loadList()
        instance.hide()
      }}></ArticleForm>,
      footer: false
    })
  }
  editArticle(record) {
    const instance = Dialog.show({
      title: '修改文章',
      content: <ArticleForm onClose={() => {
        instance.hide()
      }} companySource={this.state.companySource} data={record} onSubmit={async(data) => {
        const newData = Object.assign({}, data)
        delete newData.icon
        await Fetch('editArticle', {
          data: newData
        })
        await this.loadList()
        instance.hide()
      }}></ArticleForm>,
      footer: false
    })
  }
  render() {
    const {data, filterParams} = this.state
    return (
                <div style={{padding: '16px'}}>
                  <div style={{margin: '4px 0 8px'}}>
                    <Button type="primary" onClick={this.addArticle}>创建文章</Button>
                  </div>
                  <Table dataSource={data} filterParams={filterParams} onFilter={this.onFilter}>
                    {
                      this.COLUMNS.map((item, key) => {
                        return <Table.Column
                        key={key}
                        title={item.title}
                        cell={item.cell}
                        width={item.width}
                        filters={item.filters && item.filters()}
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
