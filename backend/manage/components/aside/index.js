
import React, { Component } from 'react'
import Menu from '../menu'
import './index.less'

class Aside extends Component {
  render() {
    return (
        <div styleName="container">
            <Menu></Menu>
        </div>
    )
  }
}

export default Aside
