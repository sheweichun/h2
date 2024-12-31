
import React, { Component } from 'react'
import {
    Route,
    Switch
  } from 'react-router-dom'
import { DatePicker, Button, Message, Input } from '@alife/next'
import moment from 'moment'
import ApiMap from '../../util/apiMap'
import { Fetch } from '../../util/request'
const { RangePicker } = DatePicker

function parseInputVal(val) {
  const lines = val.split('\n')
  const records = []
  for (let i = 0; i < lines.length; i++) {
    const l = lines[i]
    // const arr = l.split('\t')
    const arr = l.split(/\s+/)
    if (arr.length !== 4) {
      Message.error('积分信息格式不正确, 少于四列')
      return []
    }
    records.push({realName: arr[0], phone: arr[1], type: 7, addBonus: arr[2], typeName: arr[3]})
  }
  return records
}

class ExportData extends Component {
  constructor(props) {
    super(props)
    this.state = {
      range: [moment().subtract(7, 'days'), moment()],
      batchBonus: '',
      batchBonusList: [],
      batchErrMsg: ''
    }
    this.onChangeTime = this.onChangeTime.bind(this)
    this.onExportBonus = this.onExportBonus.bind(this)
    this.onBatchAddBonus = this.onBatchAddBonus.bind(this)
  }
  onChangeTime(val) {
    console.log('val :', val)
    this.setState({
      range: val
    })
  }
  onExportBonus() {
    const {range} = this.state
    if (!range || range.length !== 2 || !range[0] || !range[1]) {
      return Message.warning('请选择日期')
    }
    const start = range[0].format('YYYY-MM-DD HH:mm:ss')
    const end = range[1].format('YYYY-MM-DD HH:mm:ss')
    console.log('go here!!')
    window.open(`${ApiMap['exportAllBonusInfo'].param.url}?query=a.create_time >= '${start}' and a.create_time <= '${end}'`)
  }
  onBatchAddBonus() {
    // Message.loading('批量添加中...')
    Message.show({
      type: 'loading',
      content: '批量添加中...',
      duration: 0
    })
    this.setState({
      batchErrMsg: ''
    })
    Fetch('batchAddBonus', {
      records: JSON.stringify(this.state.batchBonusList)
    }).then((resp) => {
      Message.success('批量添加成功')
      this.setState({
        batchBonus: '',
        batchBonusList: []
      })
    }, (err) => {
      console.error(err)
      Message.error('批量添加失败 :' + err.statusText)
      this.setState({
        batchErrMsg: err.statusText
      })
    })
  }
  render() {
    const { range, batchBonus, batchBonusList, batchErrMsg } = this.state
    return (
            <div>
               export
               <RangePicker showTime value={range} onChange={this.onChangeTime}></RangePicker>
               {/* <a target="_blank" href={ApiMap['exportAllBonusInfo'].param.url} onClick={this.onExportBonus}> */}
                <Button type="primary" onClick={this.onExportBonus}>
                    导出积分信息
                </Button>
               {/* </a> */}

               <div>
                  <div>
                    批量添加积分，请填入信息【请慎用】
                  </div>
                  <Input.TextArea placeholder="请输入积分信息" value={batchBonus} onChange={(val) => {
                    this.setState({
                      batchBonus: val,
                      batchBonusList: parseInputVal(val)
                    })
                  }}/>
                  <div>
                    记录数： {batchBonusList.length}
                  </div>
                  <pre style={{height: '400px', overflow: 'auto'}}>
                    {JSON.stringify(batchBonusList, null, '\t')}
                  </pre>
                  <div>
                    <div>错误信息：</div>
                    <pre style={{color: 'red', height: '100px', overflow: 'auto'}}>
                    {batchErrMsg}
                    </pre>
                  </div>
                  <Button type="primary" onClick={this.onBatchAddBonus}>
                      批量添加
                  </Button>

               </div>
            </div>
    )
  }
}

export default ExportData
