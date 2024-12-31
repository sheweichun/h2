'use strict'

var stringifyPrimitive = function(v) {
  switch (typeof v) {
    case 'string':
      return v

    case 'boolean':
      return v ? 'true' : 'false'

    case 'number':
      return isFinite(v) ? v : ''
    case 'object':
      return JSON.stringify(v)
    default:
      return ''
  }
}

export function parse(str) {
  if (str == null) return {}
  if (str.indexOf('?') === 0) {
    str = str.substring(1)
  }
  return str.split('&').reduce((ret, item) => {
    const arr = item.split('=')
    ret[arr[0]] = decodeURIComponent(arr[1])
    return ret
  }, {})
}

export default function(obj, sep, eq, name) {
  sep = sep || '&'
  eq = eq || '='
  if (obj === null) {
    obj = undefined
  }
  if (typeof obj === 'object') {
    return Object.keys(obj).map(function(k) {
      var ks = encodeURIComponent(stringifyPrimitive(k)) + eq
      if (Array.isArray(obj[k])) {
        return obj[k].map(function(v) {
          return ks + encodeURIComponent(stringifyPrimitive(v))
        }).join(sep)
      } else {
        return ks + encodeURIComponent(stringifyPrimitive(obj[k]))
      }
    }).join(sep)
  }

  if (!name) return ''
  return encodeURIComponent(stringifyPrimitive(name)) + eq +
         encodeURIComponent(stringifyPrimitive(obj))
}
