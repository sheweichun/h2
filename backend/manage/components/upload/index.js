
import React, { Component } from 'react'
import { Upload, Button, Message } from '@alife/next'
import apiMap from '../../util/apiMap'
import s from './index.less'

function getFileSize(val) {
  if (!val || typeof val === 'string') {
    return 1
  }
  return val
}

export default class Uploader extends Component {
  constructor(props) {
    super(props)
    this.beforeUpload = this.beforeUpload.bind(this)
    this.onChange = this.onChange.bind(this)
    this.onSuccess = this.onSuccess.bind(this)
    this.onError = this.onError.bind(this)
    this.state = {
      value: props.value
    }
  }
  beforeUpload(file) {
    const fileSize = getFileSize(this.props.fsize)
    // const { size } = this.props
    // console.log('fsize :', file.size, this.props.size, fileSize * 1024 * 1024)
    // return false
    if (file.size > fileSize * 1024 * 1024) {
//   if (file.size > size) {
      Message.warning(`文件超过${fileSize}M，请调整大小再上传`)
      return false
    }
    // if (size) {

    // }
  }
  onChange(info) {
    if (info && info[0]) {
      const f = info[0]
      const fRes = f.response || {}
      if (fRes.error) {
        // console.log('fRes.error :', fRes.error)
        Message.error(`上传失败 ${fRes.error || '网络错误'}`)
        this.setState({
          value: []
        })
      } else if (fRes.data) {
        const { imgUrl } = fRes.data
        const {onChange} = this.props
        // f.imgUrl = imgUrl
        const newVal = [
          {
            name: f.name,
            url: imgUrl
          }
        ]
        this.setState({
          value: newVal
        })
        onChange && onChange(newVal)
      }
    } else {
      this.setState({
        value: info || []
      })
    }
  }
  componentWillReceiveProps(nextProps) {
    const { value } = nextProps
    this.setState({
      value
    })
  }
  onSuccess(info) {
    const {onSuccess, onError} = this.props
    const { error } = info.response
    if (error) {
      info.error = error
      onError && onError(info)
    } else {
      onSuccess && onSuccess(info)
      Message.success('上传成功')
    }
  }
  onError(info) {
    const {onError} = this.props
    onError && onError(info)
    this.setState({
      value: this.state.value
    })
  }
  render() {
    const { value } = this.state
    const { children, fsize, otherProps, accept = 'image/png, image/jpg', url } = this.props
    return <Upload
        {...otherProps}
        action={url || apiMap.upload.param.url}
        // beforeUpload={beforeUpload}
        // onChange={onChange}
        accept={accept}
        limit={1}
        beforeUpload={this.beforeUpload}
        name="file"
        size={getFileSize(fsize)}
        listType="image"
        // multiple
        onChange={this.onChange}
        onSuccess={this.onSuccess}
        onError={this.onError}
        value={value}
    >
        {children || <Button type="primary" style={{padding: '0 12px'}}>上传文件</Button>}
    </Upload>
  }
}
