import {
    HashRouter as Router,
    Route,
    Redirect,
    Switch,
    Link
  } from 'react-router-dom'
import { ConnectedRouter} from 'react-router-redux'
import React, {Component} from 'react'
import Bundle from './mixin/bundle'
import Head from './components/head'
import Aside from './components/aside'
import BreadCrumb from './components/breadCrumb'
import GlobalData from './util/global'
import {Fetch} from './util/request'
import Login from './containers/login'
import './index.less'

class Layout extends Component {
  constructor(props) {
    super(props)
    const user = GlobalData.getUser()
    this.state = {
      isLogin: !!user,
      user
    }
  }
  onLoginOut=async () => {
    await Fetch('loginOut')
    const {history} = this.props
    history.push({
      pathname: '/login'
    })
  }
  async componentDidMount() {
    const {isLogin} = this.state
    if (!isLogin) {
      const ret = await Fetch('isLogin')
      GlobalData.setUser(ret.data)
      this.setState({
        isLogin: true,
        user: ret.data
      })
    }
  }
  render() {
    const {isLogin, user} = this.state
    return <div styleName="layout-container">
      <Head data={user} onLoginOut={this.onLoginOut}></Head>
      {isLogin && <div styleName="layout-body">
        <Aside></Aside>
        <div styleName="layout-content">
          <BreadCrumb></BreadCrumb>
          <div style={{flex: 1}}>
            <Switch>
              <Route exact path="/" render={() => {
                return <Redirect to="/home"></Redirect>
              }}></Route>
              <Route component={Bundle(() => import(/* webpackChunkName: "dashboard" */'./containers/home'))} path="/home"></Route>
              <Route component={Bundle(() => import(/* webpackChunkName: "company" */'./containers/company'))} path="/company"></Route>
              <Route component={Bundle(() => import(/* webpackChunkName: "bonus" */'./containers/bonus'))} path="/bonus"></Route>
              <Route component={Bundle(() => import(/* webpackChunkName: "userList" */'./containers/userList'))} path="/userList"></Route>
              <Route component={Bundle(() => import(/* webpackChunkName: "bonusRecord" */'./containers/bonusRecord'))} path="/bonusRecord"></Route>
              <Route component={Bundle(() => import(/* webpackChunkName: "reportRecord" */'./containers/reportRecord'))} path="/reportRecord"></Route>
              <Route component={Bundle(() => import(/* webpackChunkName: "share" */'./containers/share'))} path="/share"></Route>
              <Route component={Bundle(() => import(/* webpackChunkName: "exchange" */'./containers/exchange'))} path="/exchange"></Route>
              <Route component={Bundle(() => import(/* webpackChunkName: "companyBonusType" */'./containers/companyBonusType'))} path="/companybonustype"></Route>
              <Route component={Bundle(() => import(/* webpackChunkName: "article" */'./containers/article'))} path="/article"></Route>
              <Route component={Bundle(() => import(/* webpackChunkName: "questionnaire" */'./containers/questionnaire'))} path="/questionnaire"></Route>
              <Route component={Bundle(() => import(/* webpackChunkName: "userExchange" */'./containers/userExchange'))} path="/userexchange"></Route>
              <Route component={Bundle(() => import(/* webpackChunkName: "members" */'./containers/members'))} path="/members"></Route>
              <Route component={Bundle(() => import(/* webpackChunkName: "rights" */'./containers/rights'))} path="/rights"></Route>
              <Route component={Bundle(() => import(/* webpackChunkName: "rightsGroup" */'./containers/rightsGroup'))} path="/rightsGroup"></Route>
              <Route component={Bundle(() => import(/* webpackChunkName: "memberBonusRecord" */'./containers/userList/memberBonusRecord'))} path="/memberBonusRecord"></Route>
              <Route component={Bundle(() => import(/* webpackChunkName: "memberRightsRecord" */'./containers/userList/memberRightsRecord'))} path="/memberRightsRecord"></Route>
              <Route component={Bundle(() => import(/* webpackChunkName: "memberRightsExchangeRecord" */'./containers/userList/memberRightsExchangeRecord'))} path="/memberRightsExchangeRecord"></Route>
              <Route component={Bundle(() => import(/* webpackChunkName: "article" */'./containers/test'))} path="/test"></Route>
              <Route component={Bundle(() => import(/* webpackChunkName: "exportData" */'./containers/exportData'))} path="/exportdata"></Route>
              <Route component={Bundle(() => import(/* webpackChunkName: "manager" */'./containers/manager'))} path="/manager"></Route>
              <Route component={Bundle(() => import(/* webpackChunkName: "healthqus" */'./containers/healthqus'))} path="/healthqus"></Route>
              
            </Switch>
          </div>
        </div>
      </div>}
    </div>
  }
}

export default (history) => {
  return <ConnectedRouter history={history}>
    <Switch>
      <Route component={Login} path="/login"></Route>
      <Route component={Layout} path="/"></Route>
    </Switch>
  </ConnectedRouter>
}
