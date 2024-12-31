'use strict'

import { Breadcrumb } from '@alife/next'
import React from 'react'
import {connect} from 'react-redux'
class BreadCrumbComponent extends React.Component {
  constructor(props) {
    super(props)
  }
  shouldComponentUpdate(nextProps) {
    if (this.props.data === nextProps.data) return false
    return true
  }
  render() {
    const {data} = this.props
    return <div style={{
      padding: '8px 16px',
      borderBottom: '1px solid #ccc'
    }}>
        <Breadcrumb separator="/">
            {
                data && data.map((item, key) => {
                  let link
                  if (key === data.length - 1) {
                    link = 'javascript:void(0);'
                  } else {
                    link = item.href ? '#' + item.href : 'javascript:void(0);'
                  }
                  return <Breadcrumb.Item key={key} link={link}>{item.title}</Breadcrumb.Item>
                })
            }
        </Breadcrumb>
    </div>
  }
}

export default connect((state) => {
  return {
    data: state.menu.breadCrumb
  }
}, {

})(BreadCrumbComponent)
