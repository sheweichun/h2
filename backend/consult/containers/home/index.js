import React from 'react'
import { Carousel, Button } from 'zarm'
import { Link } from 'react-router-dom'
import Card from '../../components/card'


// function Carousel(){
//     return <div></div>
// }

// function Button(){
//     return <div></div>
// }

import s from './index.less'
// const ITEMS = [
//     'https://static.zhongan.com/website/health/zarm/images/banners/1.png',
//     'https://static.zhongan.com/website/health/zarm/images/banners/2.png',
//     'https://static.zhongan.com/website/health/zarm/images/banners/3.png',
// ];


const CardDataSources = [
    {
        title: '专属保险顾问咨询',
        desc: '提供一对一专属服务，根据您的年龄、身体等情况，定制适合你的保障方案，并为您提供全家保单梳理服务， 家庭保障及风险情况一手掌握'
    },{
        title: '客观公正指导，没有误导',
        desc: '保险经纪人基于第三方客观立场视角，为您提供咨询、风险排查服务；手把手教您健康告知，协助您做好核保、投保、理赔，帮您省时省心'
    },{
        title: '只做推荐，不做推销',
        desc: '根据您的需求，帮您搭配选择最优保险组合，获得充足的保障，不花冤枉钱'
    }
]
  
const contentRender = () => {
    return CardDataSources.map((item, i) => {
        return (
        <div className="carousel__item__pic" key={+i}>
            <Card title={item.title} desc={item.desc} order={i + 1}></Card>
            {/* <img style={{width:'100%'}} src={item} alt="" draggable={false} /> */}
        </div>
        )
    })
}

export default function(){
    return <div>
        <div style={{paddingBottom:'43px'}}>
            <div>
                <img src="https://gw.alicdn.com/imgextra/i1/O1CN01KSqft51sX00v6CVhD_!!6000000005775-2-tps-662-768.png" style={{
                    width:'100%'
                }}></img>
            </div>
            <div>
                <Carousel
                    onChange={(index) => {
                        console.log(`onChange: ${index}`);
                    }}
                >
                    {contentRender()}
                </Carousel>
            </div>
        </div>
        <div style={{position:'fixed', bottom: 0, left: 0, right: 0}}>
            <div className="primary-btn">
                <Link to="/info">立即咨询</Link>
            </div>
        </div>
    </div>
}