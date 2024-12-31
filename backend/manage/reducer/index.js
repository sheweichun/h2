
import menu from '../components/menu/reducer'
import home from '../containers/home/reducer'
import { routerReducer } from 'react-router-redux'
export default {
//   dashboard,
  home,
  menu,
  routing: routerReducer
}
