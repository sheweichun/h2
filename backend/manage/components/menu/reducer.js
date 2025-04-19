import {LOCATION_CHANGE} from 'react-router-redux/es/reducer'
// console.log('LOCATION_CHANGE :', LOCATION_CHANGE)
import CreateReducer from '../../reducer/createReducer'
const ITEM_HEIGHT = 40
const LINK_MAP = {}

export const CHANGE_MENU = 'CHANGE_MENU'
export const TOGGLE_MENU = 'TOGGLE_MENU'

export function changeMenu(menu) {
  return {
    type: CHANGE_MENU,
    data: menu
  }
}

export function toggleMenu(menu) {
  return {
    type: TOGGLE_MENU,
    data: menu
  }
}

function item2BreadCrumb(data) {
  let arr = []
  while (data) {
    arr.unshift({
      title: data.breadCrumbTitle || data.title,
      href: data.href
    })
    data = data.parent
  }
//   arr.unshift({title: '首页', href: '/dashboard'})
  return arr
}

function handleData(data = [], parent) {
  data.forEach((item) => {
    if (item.href) {
      LINK_MAP[item.href] = item
    }
    item.parent = parent
    if (item.parent) {
      item.rootEl = parent.rootEl
    } else {
      item.root = true
      item.rootEl = item
    }
    item.height = ITEM_HEIGHT
    item.childrens && handleData(item.childrens, item)
  })
  return data
}

function getChildHeight(items) {
  let height = 0
  items && items.forEach((ch) => {
    if (!ch.hidden) {
      ch.height = ITEM_HEIGHT + getChildHeight(ch.childrens)
      height += ch.height
    }
  })
  return height
}

const handler = {
  // [TOGGLE_MENU]: (state, {data}) => {
  //   console.log('data :', data, data.selected);
  //   data.expanded = !data.expanded
  //   data.selected = !data.selected
  //   return state
  // },
  [LOCATION_CHANGE]: (state, {payload = {}}) => {
    const {pathname, query = {}} = payload
    const {breadCrumbTitle} = query
    // const {data, activeItem} = state
    let item = LINK_MAP[pathname]
    item && (item.breadCrumbTitle = breadCrumbTitle)
    let changeItem = item
    while (item && item.hidden) {
      item = item.parent
    }
    state.breadCrumb = item2BreadCrumb(changeItem, breadCrumbTitle)
    return handler[CHANGE_MENU](state, {
      data: item
    })
  },
  [CHANGE_MENU]: (state, {data}) => {
    const item = data
    let activeItem = state.activeItem,
      menuData = state.data
    if (!item) {
      if (activeItem) {
        activeItem.selected = false
        activeItem.active = false
        activeItem.rootEl.selected = false
      }
      menuData.forEach((dt) => {
        dt.expanded = false
        dt.height = ITEM_HEIGHT
      })
      return state
    }

    if (item.root) {  // 点击根节点
      item.expanded = !item.expanded
      if (item.expanded) {
        if (!item.childHeight) {
          item.childHeight = getChildHeight(item.childrens)
        }
        item.height = item.childHeight + ITEM_HEIGHT
      } else {
        item.height = ITEM_HEIGHT
      }
      if (!item.href) {
        return state
      }
    }
    if (activeItem) {
      activeItem.selected = false
      activeItem.active = false
      activeItem.rootEl.selected = false
    }
    menuData.forEach((dt) => {
      if (dt !== item.rootEl) {
        dt.expanded = false
        dt.height = ITEM_HEIGHT
      }
    })
    item.selected = true
    item.active = true
    let rootEl = item.rootEl
    rootEl.selected = true
    rootEl.expanded = true
    if (!rootEl.childHeight) {
      rootEl.childHeight = getChildHeight(rootEl.childrens)
    }
    rootEl.height = rootEl.childHeight + ITEM_HEIGHT
    state.activeItem = item
    return state
  }
}

export default CreateReducer({
  data: handleData([{
    title: '邀请码管理',
    href: '/company',
    hiddenChildren: true,
    childrens: [
      {
        title: '积分兑换',
        href: '/exchange',
        hidden: true
      }, {
        title: '积分规则',
        href: '/companybonustype',
        hidden: true
      }
    ]
  }, {
    title: '奖品兑换审核',
    href: '/userexchange'
  }, {
    title: '上传积分审核',
    href: '/bonus'
  }, {
    title: '用户列表',
    href: '/userList',
    hiddenChildren: true,
    childrens: [
      {
        title: '用户积分记录',
        href: '/bonusRecord',
        hidden: true
      }, {
        title: '保单托管报告',
        href: '/reportRecord',
        hidden: true
      }, {
        title: '会员积分记录',
        href: '/memberBonusRecord',
        hidden: true
      }, {
        title: '会员权益',
        href: '/memberRightsRecord',
        hidden: true
      }, {
        title: '会员权益兑换',
        href: '/memberRightsExchangeRecord',
        hidden: true
      }
    ]
  }, {
    title: '会员管理',
    root: true,
    childrens: [
      {
        title: '会员等级',
        href: '/members'
      },
      {
        title: '会员权益分类',
        href: '/rightsGroup'
      },
      {
        title: '会员权益',
        href: '/rights'
      }
    ]
    // href: '/member'
  }, {
    title: '分享记录',
    href: '/share'
  },{
    title: '健康问卷',
    href: '/healthqus'
  }, {
    title: '文章管理',
    href: '/article'
  }, {
    title: '后台人员管理',
    href: '/manager'
  }, {
    title: '数据导出',
    href: '/exportdata'
  }]),
  activeItem: null,
  breadCrumb: []
}, handler)
