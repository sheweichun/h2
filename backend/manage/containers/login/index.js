
import React, { Component } from 'react'
import { Form, Input, Button, Checkbox, Field, Message} from '@alife/next'
import {Fetch} from '../../util/request'
import GlobalData from '../../util/global'
import {compile, uncompile} from '../../util/safe'
import './index.less'
const FormItem = Form.Item

const Storage = window.localStorage

const formItemLayout = {
  labelCol: {
    span: 6
  },
  wrapperCol: {
    span: 18
  }
}
class Login extends Component {
  constructor(props) {
    super(props)
    this.field = new Field(this)
    this.username = Storage.getItem('username')
    this.password = uncompile(Storage.getItem('password'))
    this.rememberme = Storage.getItem('rememberme') === 'true'
  }
  handleSubmit=() => {
    const data = this.field.getValues()
    if (!data.username) {
      Message.warning('用户名不能为空')
      return
    }
    if (!data.password) {
      Message.warning('密码不能为空')
    }
    if (data.rememberme) {
      Storage.setItem('username', data.username)
      Storage.setItem('password', compile(data.password))
      Storage.setItem('rememberme', data.rememberme)
    } else {
      Storage.removeItem('username')
      Storage.removeItem('password')
      Storage.removeItem('rememberme')
    }
    Fetch('login', {
      username: data.username,
      password: data.password
    }).then((resp) => {
      GlobalData.setUser(resp.data)
      this.props.history.push({
        pathname: '/'
      })
    })
  }
  render() {
    const init = this.field.init
    return (
            <div styleName="container">
                <div styleName="wrapper">
                    <div styleName="logo">
                        <img src="//gw.alicdn.com/tfs/TB1t7u2q77mBKNjSZFyXXbydFXa-1181-1181.png"/>
                    </div>
                    <div styleName="form">
                        <Form direction="ver" field={this.field} >
                            <FormItem label="账号：" {...formItemLayout} required>
                                <Input htmlType="username" {...init('username', {
                                  initValue: this.username
                                })} placeholder="请输入用户名"/>
                            </FormItem>
                            <FormItem label="密码：" required {...formItemLayout}>
                                <Input htmlType="password" {...init('password', {
                                  initValue: this.password
                                })} placeholder="请输入密码"/>
                            </FormItem>
                            <FormItem label="记住账号：" {...formItemLayout}>
                                <Checkbox style={{marginTop: '6px', display: 'inline-block'}} {...init('rememberme', {
                                  valueName: 'checked',
                                  initValue: this.rememberme
                                })} />
                            </FormItem>
                            <Button style={{width: '100%'}} type="primary" onClick={this.handleSubmit}>确定</Button>
                        </Form>
                    </div>
                </div>
            </div>
    )
  }
}

export default Login
