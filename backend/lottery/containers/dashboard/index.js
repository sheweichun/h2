import React from 'react';
import s from './index.less'


const ratio = 453 / 500;
const width = 200;
const height = Math.round(width / ratio);

export default class Dashboard extends React.Component{
    constructor(props){
        super(props)
        const {names} = props;
        this.records = []
        this.state = {
            rewardIndex:0,
            startFlag:false,
            selecteIndex:null,
            selected:null,
            isLottery:false,
            names:[].concat(names)
        }
        this.toggle = this.toggle.bind(this)
        this.run = this.run.bind(this)
        this.start = this.start.bind(this)
        this.startLottery = this.startLottery.bind(this)
        this.runCount = 0
    }
    updateSelected(){
        const {names} = this.state;
        const len = names.length;
        const index = Math.floor(Math.random() * len);
        const selected = names[index];
        this.state.selected = selected;
        this.state.selecteIndex = index;
        this.setState({
            startFlag:true
        })
    }
    // setTimeout(fn,tm){
    //     return setTimeout(()=>{
    //         fn()
    //     },tm)
    // }
    run(){
        const {interval = 1000 / 60,space} = this.props
        this.updateSelected();
        this.runCount--;
        if(this.runCount === 0){
            const {rewards} = this.props;
            let {selecteIndex,selected,names,rewardIndex} = this.state;
            const item = rewards[rewardIndex];
            names.splice(selecteIndex,1); //中奖名单移出
            item.count--;
            const newRecord = {
                name:selected.name,
                value:selected.value,
                title:item.title,
                reward_name:item.name
            }
            this.records.push(newRecord)
            this.setState({
                isLottery:false
            })
            console.log('newRecord :',newRecord,item.count);
            if(item.count === 0){
                rewardIndex++
                if(rewardIndex >= rewards.length){
                    //抽奖结束
                    this.setState({
                        startFlag:false
                    })
                    return;
                }
                
                this.timeId = setTimeout(()=>{
                    this.setState({
                        selected:null,
                        selecteIndex:null,
                        rewardIndex
                    })
                    this.timeId = setTimeout(this.start,space)
                },space);
            }else{
                this.timeId = setTimeout(this.start,space);
            }
        }else{
            this.timeId = setTimeout(this.run,interval)
        }
    }
    startLottery(){
        if(this.state.startFlag) return;
        this.start();
    }
    start(){
        const {intervalCount} = this.props;
        this.runCount = Math.floor(Math.random() * intervalCount) + Math.floor(Math.random() * (intervalCount / 2))+ intervalCount / 2;
        this.setState({
            isLottery:true
        })
        this.run();
    }
    stop(){
        if(this.timeId != null){
            clearTimeout(this.timeId)
            this.timeId = null;
        }
        this.setState({
            startFlag:false
        })
    }
    toggle(){
        if(this.state.startFlag){
            this.stop()
        }else{
            this.start();
        }
    }
    render(){
        const {rewards} = this.props;
        const {selected,rewardIndex,isLottery} = this.state;
        const rewardItem = rewards[rewardIndex];
        return <div className={s.container} style={{
            backgroundImage:`url(https://img.alicdn.com/imgextra/i3/O1CN01iTnvO31MjIru0GiPg_!!6000000001470-0-tps-4724-6299.jpg)`,
            backgroundSize: '100% auto',
            backgroundPosition: 'center',
            backgroundRepeat: 'no-repeat',
            display:'flex',
            alignItems:'center',
            justifyContent:'center'
        }} onClick={this.startLottery}>
            <div style={{
                backgroundSize: '100% auto',
                backgroundPosition: 'center',
                backgroundRepeat: 'no-repeat',
                width:`${width}px`,
                height:`${height}px`,
                paddingBottom:'38px',
                position:'relative'
            }}>
                <div style={{
                    height:'60px',
                    lineHeight:'60px',
                    textAlign:'center',
                    fontSize:'24px'
                }}>
                    {selected ? selected.name : ''}
                </div>
                {rewardItem && <div style={{
                    marginTop:'66px',
                    height:'52px',
                    display:'flex',
                    fontSize:'14px',
                    alignItems:'center',
                    justifyContent:'center',
                    flexDirection:'column'
                }}>
                    <div>
                        {rewardItem.name}
                    </div>
                    <div>
                        {rewardItem.title}
                    </div>
                   
                </div>}
                {isLottery ? 
                <img style={{
                    width: '30px',
                    position: 'absolute',
                    top: '28px',
                    right: '-3px'
                }} src="https://gw.alicdn.com/imgextra/i2/O1CN01TFvACR1UpjLx5jyAt_!!6000000002567-2-tps-305-863.png"/> :
                <img style={{
                    width: '30px',
                    position: 'absolute',
                    top: '-20px',
                    right: '-3px'
                }} src="https://gw.alicdn.com/imgextra/i4/O1CN01E2veKG1xnYKMu4f3l_!!6000000006488-2-tps-305-864.png"/>
                }
            </div>
        </div>
    }
}