
import React from 'react'
import ReactDOM from 'react-dom'
import { ConfigProvider, Button } from 'zarm';
import zhCN from 'zarm/lib/config-provider/locale/zh_CN';
import 'zarm/dist/zarm.css';
import Dashboard from './containers/dashboard'
import './app.less'
// import './index.less'

ReactDOM.render(<ConfigProvider locale={zhCN}>
    <Dashboard></Dashboard>
</ConfigProvider>, document.getElementById('container'))

// ReactDOM.render(<Dashboard></Dashboard>, document.getElementById('container'))