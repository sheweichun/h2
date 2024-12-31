
import React, { Component } from 'react'
import {Message} from '@alife/next'
import s from './index.less'

class Copy extends Component {
  onCopy=(e) => {
    e.stopPropagation()
    const target = this.inputEl
    if (target == null) return
    target.select()
    document.execCommand('copy')
    Message.success({
      title: '复制成功',
      shape: 'toast',
      duration: 500
    })
  }
  initInput=(el) => {
    this.inputEl = el
  }
  render() {
    const {children, value, style, className} = this.props
    return (
            <span styleName="copy-text" onClick={this.onCopy} style={style} className={className}>
                <input ref={this.initInput} className="hidden-input" value={value}></input>
                {children}
            </span>
    )
  }
}

export default Copy
