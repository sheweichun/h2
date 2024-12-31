'use strict'

import React from 'react'
import styles from './index.less'
import classnames from 'classnames'
import {Icon} from '@alife/next'
import {Link} from 'react-router-dom'
import {connect} from 'react-redux'
import {toggleMenu} from './reducer'
// import {MENU_DATA, handleData, changeMenu} from './util'
const BASE_PADDING = 20

class Menus extends React.Component {
  constructor(props) {
    super(props)
    // this.state = {
    //   menuData: handleData(MENU_DATA),
    //   activeItem: null
    // }
  }
  renderTree(data = [], parent = {}, level = 0) {
    // const {changeMenu} = this.props
    // const {activeItem, menuData} = this.props
    return (<ul className={styles.menuContainer} >
    {
        data.map((item, keyItem) => {
          if (item.hidden) return ''
          const hasChildrens = item.childrens && item.childrens.length > 0 && !item.hiddenChildren
          return (<li key={keyItem} className={classnames([styles.menuItem, {
            [styles.expanded]: !item.root || item.expanded,
            [styles.root]: item.root,
            [styles.rootSelected]: item.selected}])} style={{
              // height: item.height + 'px'
            }} onClick={(e) => {
              e.stopPropagation()
              // changeMenu && changeMenu(activeItem, menuData, item)
            }}>
                    {
                      (item.href) ? <Link className={classnames([styles.menuText, {
                        [styles.selected]: !!item.selected,
                        [styles.active]: item.active }])}
                        style={{
                          paddingLeft: (BASE_PADDING * level + 26) + 'px'
                        }}
                        to={{
                          pathname: item.href,
                          query: item.query
                        }}
                        >{item.title}
                            {hasChildrens && item.root && <Icon className={styles.arrow} size="xs" type="arrow-down" />}
                      </Link> : <a className={classnames([styles.menuText, {
                        [styles.selected]: !!item.selected,
                        [styles.active]: item.active }])}
                        style={{
                          paddingLeft: (BASE_PADDING * level + 26) + 'px'
                        }}
                        href="javascript:void(0);"
                        onClick={(e) => {
                          // item.selected = !item.selected
                          // this.setState({})
                          this.props.toggleMenu(item)
                        }}
                        >{item.title}
                            {/* {hasChildrens && item.root && <Icon className={styles.arrow} size="xs" type="arrow-down" />} */}
                      </a>
                    }
                    {hasChildrens && this.renderTree(item.childrens, item, level + 1)}
                </li>)
        })
    }
    </ul>)
  }
  // changeMenu=(activeItem, menuData, data) => {
  //   const newActiveItem = changeMenu(activeItem, menuData, data)
  //   this.setState({
  //     activeItem: newActiveItem
  //   })
  // }
  render() {
    const {menuData} = this.props
    return (<div className={styles.container} >
        <div className={styles.scrollContainer}>
          {
            menuData && this.renderTree(menuData)
          }
        </div>
    </div>)
  }
}
// console.log('changeMenu :', changeMenu)
export default connect((state) => {
  const menu = state.menu
  return {
    menuData: menu.data,
    activeItem: menu.activeItem
  }
}, {
  toggleMenu
  // changeMenu
})(Menus)
