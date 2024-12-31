
import React from 'react'
import ReactDOM from 'react-dom'
import Dashboard from './containers/dashboard'
import {names,rewards} from './data'
// import './app.less'
// import './index.less'

ReactDOM.render(<Dashboard 
    names={names} 
    rewards={rewards}
    intervalCount={70}
    space={2000}
    interval={1000 / 30} >
</Dashboard>, document.getElementById('container'))