
export const MENU_DATA = [
  {
    title: '邀请码管理',
    href: '/company'
  }, {
    title: '上传积分审核',
    href: '/bonus'
  }, {
    title: '奖品兑换审核',
    href: '/userexchange'
  }, {
    title: '积分记录',
    href: '/bonusRecord'
  }, {
    title: '用户列表',
    href: '/userList'
  }, {
    title: '文章管理',
    href: '/article'
  }
  // {
  //   title: '营销中心',
  //   childrens: [
  //     {
  //       title: '营销活动发布',
  //       href: '/dashboard/marketCreate',
  //       childrens: [
  //         {
  //           title: '新建赠送优惠券活动',
  //           href: '/dashboard/marketCreate/couponCreate',
  //           hidden: true
  //         }, {
  //           title: '修改赠送优惠券活动',
  //           href: '/dashboard/marketCreate/couponEdit',
  //           hidden: true
  //         }
  //       ]
  //     }, {
  //       title: '营销活动列表',
  //       href: '/dashboard/marketList'
  //     }, {
  //       title: '客户列表',
  //       href: '/dashboard/customerList'
  //     }, {
  //       title: '任务中心',
  //       href: '/dashboard/taskList',
  //       childrens: [
  //         {
  //           title: '详情',
  //           hidden: true,
  //           href: '/dashboard/taskInstance'
  //         }
  //       ]
  //     }
  //   ]
  // },
  // {
  //   title: '数据看板',
  //   childrens: [
  //     {
  //       title: '整体分析',
  //       href: '/dashboard/wholeanalysis'
  //     }, {
  //       title: '服务分析',
  //       href: '/dashboard/serviceAnalysis',
  //       childrens: [
  //         {
  //           title: '详情分析',
  //           href: '/dashboard/serviceAnalysis/serviceDetail',
  //           hidden: true
  //         }
  //       ]
  //     }
  //   ]
  // }
]
const LINK_MAP = {}
const ITEM_HEIGHT = 40
export function handleData(data = [], parent) {
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

export function changeMenu(activeItem, menuData, data) {
  const item = data
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
    return activeItem
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
      return activeItem
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
  return item
}
