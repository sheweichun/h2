
import reducers from '../reducer/index';
import { createStore, combineReducers, applyMiddleware } from 'redux'
import { routerReducer, routerMiddleware } from 'react-router-redux'




export default (history)=>{
    const middleware = routerMiddleware(history)
    return createStore(
        combineReducers({
          ...reducers,
          router: routerReducer
        }),
        applyMiddleware(middleware)
      )
};