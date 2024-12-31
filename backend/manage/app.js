
import React from 'react'
import ReactDOM from 'react-dom'
import { Provider } from 'react-redux'
import store from './store/index'
import Routes from './routes'
import moment from 'moment'


moment && moment.locale('zh-cn');
const history = History.createHashHistory()
// import './index.less'

ReactDOM.render(<Provider store={store(history)}>
    {Routes(history)}
</Provider>, document.getElementById('container'))
