import React, { useState, useCallback, useRef, useMemo } from 'react'
import { Input, Button } from 'zarm'
import { Fetch } from '../../utils/request'
import s from './index.less'

const INTERVAL = 1000
const TOTAL_INTERVAL = 60 * 1000



export default function(props){
    const { className, value, onChange } = props
    const tmRef = useRef()
    const [ codeData, setCodeData ] = useState({hasCode:false, code:''})
    const [ tm , setTm ] = useState(TOTAL_INTERVAL)

    const statusValue = value || {}

    const startTm = useCallback((val)=>{
        if( val <= 0) {
            setCodeData({
                hasCode: false,
                code: ''
            })
            onChange(Object.assign({}, statusValue, {code:'', inputCode:''}))
            setTm(TOTAL_INTERVAL)
            return;
        }
        tmRef.current = setTimeout(()=>{
            const newVal = val - INTERVAL
            setTm(newVal)
            startTm(newVal)
        }, 1000)
    }, [ codeData, statusValue ])

    const onClickBtn = useCallback(()=>{
        Fetch('getCheckNo', {
            phone: statusValue.value
        }).then((resp) => {
            if(!resp.success){
                return
            }
            const code = resp.data
            setCodeData({
                hasCode: true,
                code: code
            })
            onChange(Object.assign({}, statusValue, {code}))
            setTm(TOTAL_INTERVAL)
            startTm(TOTAL_INTERVAL)
    
        })
      
    }, [ startTm, statusValue ])


    function onPhoneNoChange(val){
        if(val && !/\d+/.test(val)) return
        return onChange(Object.assign({}, value, {
            value:val
        }))
    }

    function onChangeInputCode(val){
        if(val && !/\d+/.test(val)) return
        return onChange(Object.assign({}, value, {
            inputCode:val
        }))
    }

    return <div className={className}>
        <div style={{flex: '1', width: '100%'}}>
            <div style={{marginTop: '12px'}}>
                <Input placeholder="请输入手机号" value={statusValue.value} onChange={onPhoneNoChange}></Input>
            </div>
            <div className={s.checkcode}>
                <Input placeholder="请输入验证码" value={statusValue.inputCode} onChange={onChangeInputCode} disabled={!statusValue.value || !codeData.hasCode}></Input>
                <Button size="sm" style={{overflow: 'unset', whiteSpace: 'nowrap'}} disabled={codeData.hasCode || !statusValue.value} onClick={onClickBtn}>
                    {codeData.hasCode ? `重新获取(${tm / 1000}s)` : '获取验证码'}
                </Button>
            </div>
        </div>
    </div>
}