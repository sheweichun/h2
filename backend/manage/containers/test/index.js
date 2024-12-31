
import React, { Component } from 'react'
import {
    Route,
    Switch
  } from 'react-router-dom'
import {Fetch} from '../../util/request'
// import { Button } from 'zarm'
import { Upload, Button, Input, Message } from '@alife/next'
// // import apiMap from '../../util/apiMap'
// import Uploader from '../../components/upload'
// import apiMap from '../../util/apiMap'

// const defaultValue = [{
// //   name: 'IMG.png',
// //   downloadURL: 'https://img.alicdn.com/tps/TB19O79MVXXXXcZXVXXXXXXXXXX-1024-1024.jpg',
// //   fileURL: 'https://img.alicdn.com/tps/TB19O79MVXXXXcZXVXXXXXXXXXX-1024-1024.jpg',
//   url: 'https://img.alicdn.com/tps/TB19O79MVXXXXcZXVXXXXXXXXXX-1024-1024.jpg'
// }]

class Test extends Component {
  constructor(props) {
    super(props)
    this.onSuccess = this.onSuccess.bind(this)
    this.onError = this.onError.bind(this)
    this.beforeUpload = this.beforeUpload.bind(this)
    this.onSubmit = this.onSubmit.bind(this)
    this.initEl = this.initEl.bind(this)
    this.onSubmitIds = this.onSubmitIds.bind(this)
    this.state = {
      type: '',
      typeName: ''
    }
  }
  onSuccess(file, value) {
    console.log('succes :', file, value)
  }
  onError(file, error) {
    console.log('error :', file, error)
  }
  beforeUpload(file) {
    console.log('file :', file)
    // return false;
  }
  initEl(el) {
    this.inputEl = el
  }
  onSubmit() {
    if (!this.inputEl) return
    const val = this.inputEl.value
    try {
      const items = JSON.parse(val)
      Fetch('batchUpdateBonusByOpenIds', {
        items
      }).then((resp) => {
        console.log('resp', resp)
      })
    } catch (e) {
      console.error(e)
    }
    // const el = document
  }
  onSubmitIds() {
    if (!this.inputEl) return
    const val = this.inputEl.value
    if (!val) return
    const { type, typeName, bonus} = this.state
    try {
      const addBonus = parseInt(bonus)
      if (isNaN(addBonus)) return
      if (!type || !typeName) return
      const items = val.replace(/[\\'|\\"|\n|\s]*/g, '').split(',').map((openid) => {
        return {
          openid,
          type,
          typeName,
          addBonus
        }
      })
      console.log('items :', items);
      Fetch('batchUpdateBonusByOpenIds', {
        items
      }).then((resp) => {
        if(resp && resp.success){
          Message.success('添加成功')
        }
        console.log('resp', resp)
      })
    } catch (e) {
      console.error(e)
    }
  }
  render() {
    const {type, typeName, bonus} = this.state
    return (
            <div>
                {/* Test
                <Switch>
                    <Route exact path="/test" component={() => <div>hello1</div>}></Route>
                    <Route exact path="/test/hello1" component={() => <div>hello1</div>}></Route>
                    <Route exact path="/test/hello2" component={() => <div>hello2</div>}></Route>
                </Switch>
                <Uploader accept="application/pdf" fsize={100} defaultValue={defaultValue} url={apiMap.uploadBackend.param.url}>

                </Uploader> */}
                <textarea ref={this.initEl} style={{width: '400px', height: '200px'}}>

                </textarea>
                <div>
                  <Button type="primary" onClick={this.onSubmit}>提交</Button>
                </div>
                <div>
                  <Button type="primary" onClick={this.onSubmitIds}>提交(只需要填ids)</Button>
                  <Input label="积分类型" value={type} onChange={(val) => {
                    this.setState(Object.assign({}, this.state, {
                      type: val
                    }))
                  }}></Input>
                  <Input label="积分类型名称" value={typeName} onChange={(val) => {
                    this.setState(Object.assign({}, this.state, {
                      typeName: val
                    }))
                  }}></Input>
                  <Input label="添加积分" value={bonus} onChange={(val) => {
                    this.setState(Object.assign({}, this.state, {
                      bonus: val
                    }))
                  }}></Input>
                </div>
            </div>
    )
  }
}

export default Test
