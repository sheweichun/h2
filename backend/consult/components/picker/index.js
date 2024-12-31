import React, { useState, useCallback } from 'react'
import { Picker } from 'zarm'
import s from './index.less'


export default function(props){
    const { placeholder, dataSource, value, onChange } = props;
    const [ visible, setVisible ] = useState(false); 

    const onClick = useCallback(()=>{
        setVisible(true)
    }, [ visible ])

    const onCancel = useCallback(()=>{
        setVisible(false)
    },[ visible ])

    const onOk = useCallback((selected)=>{
        // console.log('selected :', selected);
        onChange && onChange(selected ? selected[0]: null)
        setVisible(false)
    },[ visible ])
    
    return <div className={s.container} onClick={onClick}>
        <div style={{width: '100%'}}>
            {
                value ? <span>{value.label}</span> : <span className={s.placeholder} >{placeholder}</span>
            }
        </div>
        <Picker dataSource={dataSource} visible={visible} onCancel={onCancel} onOk={onOk}></Picker>
    </div>
}