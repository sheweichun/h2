import React, {useState, useEffect} from 'react'
import { Radio, Input } from '@alife/next'
import {Fetch} from '../../util/request'
const RadioGroup = Radio.Group
import s from './memberItem.less'

export default class MemberItem extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      members: [],
      value: props.value || props.defaultValue || {}
    }
  }
  static getDerivedStateFromProps(newProps, prevState) {
    return Object.assign({}, prevState, {
      value: newProps.value || newProps.defaultValue || {}
    })
  }
  componentDidMount() {
    Fetch('getMembers').then((resp) => {
      this.setState({
        members: resp.data
      })
    })
  }
  onChangeMemberNum(item, val) {
    const { value } = this.state
    const { onChange } = this.props
    const target = value[item.id]
    if (!target) return
    target.num = val
    if (onChange) {
      onChange(value)
    } else {
      // this.setState({
      //   value
      // })
    }
    this.setState({
      value
    })
  }
  onChangeMember(item, val) {
    const { value } = this.state
    const { onChange } = this.props
    if (val === '1') {
      value[item.id] = {
        mid: item.id,
        display: 1
      }
    } else {
      delete value[item.id]
      // value[item.id] = null
    }
    if (onChange) {
      onChange(value)
    } else {
      this.setState({
        value
      })
    }
  }
  render() {
    const {members, value} = this.state
    const {unit} = this.props
    return <div className={s.container}>
      {
        (members || []).map((item) => {
          const target = value[item.id]
          const selected = !!target && target.display
          return <div className={s.item}>
            <div className={s.label}>
              {item.label}
            </div>
            <div style={{marginLeft: '10px'}}>
              <RadioGroup
                value={selected ? '1' : '0'}
                onChange={this.onChangeMember.bind(this, item)}
              >
                <Radio id="0" value="0">
                  不提供
                </Radio>
                <Radio id="1" value="1">
                  提供
                </Radio>
              </RadioGroup>
            </div>
            {selected && <div style={{marginLeft: '6px'}}>
              <Input placeholder="请填写权益数目" value={target.num} onChange={this.onChangeMemberNum.bind(this, item)} htmlType="number" addonTextAfter={unit}></Input>
            </div>}
          </div>
        })
      }
    </div>
  }
}
