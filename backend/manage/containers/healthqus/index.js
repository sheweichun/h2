
import React, { Component } from 'react'
import {Table, Button, Dialog, Message} from '@alife/next'
import {Fetch} from '../../util/request'
import ApiMap from '../../util/apiMap'
import ArticleForm from './form'
import QuestionnaireItems from './items'
import {Link} from 'react-router-dom'
import dayjs from 'dayjs'





class Share extends Component {
  constructor(props) {
    super(props)
    this.state = {
      data: [],
      companyMap: {},
      filterParams: {},
      companySource: [],
      showItemsManagement: false,
      selectedQuestionnaire: null,
      questionnaireItems: []
    }
    this.query = {}
    this.onFilter = this.onFilter.bind(this)
    this.COLUMNS = [{
      dataIndex: 'id',
      title: 'id'
    },{
      dataIndex: 'name',
      title: '标题'
    }, {
      dataIndex: 'bonus',
      title: '问卷积分'
    }, {
      dataIndex: 'active_cover',
      title: '问卷生效封面',
      cell: function(val) {
        return <img src={val} style={{height: '80px'}}></img>
      }
    }, {
      dataIndex: 'cover',
      title: '问卷失效封面',
      cell: function(val) {
        return <img src={val} style={{height: '80px'}}></img>
      }
    },  {
      dataIndex: 'start',
      title: '生效时间',
      cell: function(value) {
        return dayjs(new Date(value)).format('YYYY-MM-DD')
      }
    }, {
      dataIndex: 'end',
      title: '失效时间',
      cell: function(value) {
        return dayjs(new Date(value)).format('YYYY-MM-DD')
      }
    }, {
      dataIndex: 'flag',
      title: '是否展示',
      cell: function(value) {
        return value === 1 ? '是' : '否'
      }
    },  {
      dataIndex: '',
      title: '操作',
      cell: (value, index, record) => {
        return <div>
            <Button onClick={this.editArticle.bind(this, record)}>修改</Button>
            <Button style={{marginLeft: '8px'}} type="primary" onClick={this.manageQuestionnaireItems.bind(this, record)}>管理题目</Button>
            <a target="_blank" href={`${ApiMap['exportHealthInfoByQus'].param.url}?qid=${record.id}`} style={{marginLeft: '8px'}}>导出健康信息告知问卷</a>
            {/* <Button style={{marginLeft: '12px'}} type="primary" warning onClick={this.removeArticle.bind(this, record)}>删除</Button> */}
        </div>
      }
    }]
  }
  async componentDidMount() {
    // this.loadCompanyList().then(() => {
    //   this.loadList()
    // })
    this.loadList()
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
    // console.log('ion loadlist!!!!!!!!!!!!!222223333')
    // Fetch('hasValidQuestionnaire').then((resp)=>{
    //   console.log('resp :', resp)
    // })
    return Fetch('getAllActivityQuestionnairesByType', {
      type: '1'
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
      title: '创建问卷',
      content: <ArticleForm onClose={() => {
        instance.hide()
      }} companySource={this.state.companySource} onSubmit={async(data) => {
        const newData = Object.assign({}, data)
        await Fetch('createQuestionnaire', {
          data: {
            name: newData.name,
            bonus: parseInt(newData.bonus),
            cover: newData.cover,
            active_cover: newData.active_cover,
            start: newData.start,
            end: newData.end,
            flag: newData.flag,
            type: 1
          }
        })
        await this.loadList()
        instance.hide()
      }}></ArticleForm>,
      footer: false
    })
  }
  editArticle(record) {
    const instance = Dialog.show({
      title: '修改问卷',
      content: <ArticleForm onClose={() => {
        instance.hide()
      }} companySource={this.state.companySource} data={record} onSubmit={async(data) => {
        const newData = Object.assign({}, data)
        await Fetch('updateQuestionnaire', {
          data: {
            name: newData.name,
            bonus: parseInt(newData.bonus),
            cover: newData.cover,
            active_cover: newData.active_cover,
            start: newData.start,
            end: newData.end,
            flag: newData.flag,
            id: newData.id,
            type: 1
        }})
        await this.loadList()
        instance.hide()
      }}></ArticleForm>,
      footer: false
    })
  }

  manageQuestionnaireItems(record) {
    this.setState({
      showItemsManagement: true,
      selectedQuestionnaire: record
    }, () => {
      // this.loadQuestionnaireItems(record.id)
    })
  }

  // loadQuestionnaireItems(qid) {
  //   Fetch('getQuestionnaireItems', {
  //     data: { qid }
  //   }).then((resp) => {
  //     this.setState({
  //       questionnaireItems: resp.data || []
  //     })
  //   }).catch(err => {
  //     Message.error('加载题目失败')
  //   })
  // }

  handleItemsChanged = () => {
    const { selectedQuestionnaire } = this.state
    if (selectedQuestionnaire) {
      // this.loadQuestionnaireItems(selectedQuestionnaire.id)
    }
  }

  backToQuestionnaireList = () => {
    this.setState({
      showItemsManagement: false,
      selectedQuestionnaire: null
    })
  }
  render() {
    const { data, filterParams, showItemsManagement, selectedQuestionnaire, questionnaireItems } = this.state

    if (showItemsManagement && selectedQuestionnaire) {
      return (
        <div style={{padding: '16px'}}>
          <h2>{selectedQuestionnaire.name} - 题目管理</h2>
          <QuestionnaireItems
            questionnaireId={selectedQuestionnaire.id}
            questionnaireItems={questionnaireItems}
            onItemsChanged={this.handleItemsChanged}
            onBack={this.backToQuestionnaireList}
          />
        </div>
      )
    }

    return (
      <div style={{padding: '16px'}}>
        <div style={{margin: '4px 0 8px'}}>
          <Button type="primary" onClick={this.addArticle}>创建问卷</Button>
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
