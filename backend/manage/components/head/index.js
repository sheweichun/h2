
import React, { Component } from 'react'
import './index.less'

class Head extends Component {
  render() {
    const {data, onLoginOut} = this.props
    return (
            <div styleName="container">
                <div styleName="left">
                  <img style={{width: '40px'}} src="https://img.alicdn.com/tfs/TB1t7u2q77mBKNjSZFyXXbydFXa-1181-1181.png"/>
                </div>
                <div styleName="middle"></div>
                <div styleName="right">
                  <span style={{fontSize: '12px'}}>欢迎</span>
                  <span style={{marginLeft: '6px'}}>{data && data.name},</span>
                  <span onClick={onLoginOut} style={{fontSize: '12px', marginLeft: '12px', cursor: 'pointer'}}>退出</span>
                </div>
            </div>
    )
  }
}

export default Head
