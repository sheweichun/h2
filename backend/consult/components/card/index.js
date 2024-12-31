import React from 'react'
import s from './index.less'


function formatOrder(order){
    if(order < 10){
        return `0${order}`
    }
    return order
}

export default function(props){
    const { title, desc, order } = props
    return <div className={s.container}>
        <div className={s.left}>
            {formatOrder(order)}
        </div> 
        <div className={s.right}>
            <div className={s.title}>
                { title }
            </div>
            <div className={s.desc}>
                { desc }
            </div>
        </div>
    </div>
}