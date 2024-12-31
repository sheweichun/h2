import { handleActions } from 'redux-actions'
import { CHANGE_TAB } from './action'

export default handleActions({
  [CHANGE_TAB] (state, {payload}) {
    // console.log('curTab :', curTab, state)
    return {
      ...state,
      curTab: payload
    }
  }
}, {
  curTab: 0
})
