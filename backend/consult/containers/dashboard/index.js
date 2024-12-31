import React from 'react'
import {
    HashRouter as Router,
    Route,
    Link
  } from 'react-router-dom'
import Home from '../home'
import Info from '../info'
import s from './index.less'

export default function(props) {
    return <Router>
         <Route component={Home} path="/" exact></Route>
        {/* <Route component={Info} path="/" exact></Route> */}
        <Route component={Info} path="/info"></Route>
    </Router>
}
