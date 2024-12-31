
const data = new Map()

const USER = 'USER'

export default {
  getUser() {
    return data.get(USER)
  },
  setUser(val) {
    return data.set(USER, val)
  }
}
