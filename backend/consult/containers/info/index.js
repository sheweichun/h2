import React, { useState } from 'react'
import { Input, Modal } from 'zarm'
import Picker from '../../components/picker'
import CheckCode from '../../components/check-code'
import { Fetch } from '../../utils/request'
import s from './index.less'



const QUES = [
    {
        label: '保险产品咨询',
        value: 0
    },
    {
        label: '家庭保单梳理',
        value: 1
    },
    {
        label: '保险服务协助',
        value: 2
    },
    {
        label: '其他',
        value: 3
    }
]

export default function(){
    const [ data, setData ] = useState({})


    function onChangePhoneInfo(val){
        onChangeItemVal('phoneInfo', val)
    }
    function onChangeItemVal(name, val){
        setData(Object.assign({},data,{
            [name]:val
        }))
    }


    function alert(msg){
        return Modal.alert({
            content: msg || '',
        });
    }

    function onSubmit(){
        let submitData = {}
        if(!data.name){
            return alert('请输入姓名')
        }
        submitData.name = data.name
        if(!data.phoneInfo){
            return alert('请输入手机号')
        }else{
            const { value, code, inputCode} = data.phoneInfo
            if(!value){
                return alert('请输入手机号')
            }
            if(!code){
                return alert('请获取验证码')
            }
            if(!inputCode){
                return alert('请输入验证码')
            }
            if(inputCode !== code){
                return alert('验证码错误，重新输入或重新获取')
            }
        }
        submitData.phone = data.phoneInfo.value
        if(!data.que){
            return alert('请选择你要咨询的问题')
        }
        submitData.question = data.que.label
        // console.log('submitData :', submitData);
        Fetch('addQue', {
            data: submitData
        }).then((resp) => {
            console.log('resp :', resp);
            if(resp.success){
                if(resp.data && resp.data.length){
                    Modal.alert({
                        title:'提交成功',
                        content:'请等待工作人员后续联系您'
                    })
                }else{
                    Modal.alert({
                        title:'您的信息已提交',
                        content:'请等待工作人员后续联系您'
                    })
                }
            }
           
        })
    }

    return <div className={s.container}>
        <div className={s.top}>
            <div style={{marginBottom: '8px'}}>
                留下您的联系方式
            </div>
            <div>
                我们的专属保险顾问会联系您
            </div>
        </div>
        <div className={s.body}>
            <div className={s.formItem}>
                <div className={s.formItemLabel}>
                您的姓名
                </div>
                <div className={s.formItemContent}>
                    <Input value={data.name} onChange={(val)=>{
                        onChangeItemVal('name', val)
                    }} style={{marginTop: '8px'}} placeholder="请输入姓名"></Input>
                </div>
            </div>
            <div className={s.formItem}>
                <div className={s.formItemLabel}>
                您的手机号
                </div>
                <CheckCode value={data.phoneInfo} className={s.formItemContent} onChange={onChangePhoneInfo}></CheckCode>
                {/* <div className={s.formItemContent}>
                    <Input placeholder="请输入手机号"></Input>
                    <Button size="sm" style={{width: '120px'}}>验证码</Button>
                </div> */}
            </div>
            <div className={s.formItem}>
                <div className={s.formItemLabel}>
                    您想咨询的问题
                </div>
                <div className={s.formItemContent}>
                    <Picker dataSource={QUES} visible placeholder="请选择" value={data.que} onChange={(val)=>{
                        onChangeItemVal('que', val)
                    }}>

                    </Picker>
                </div>
            </div>
            <div className={s.formItem}>
                <div className={s.formItemLabel}>
                    您也可以添加保险专属顾问，进一步咨询
                </div>
                <div className={s.formItemContent}>

                </div>
            </div>
        </div>
        <div style={{position:'fixed', bottom: 0, left: 0, right: 0}}>
            <div className="primary-btn" onClick={onSubmit}>
                提交
            </div>
        </div>
    </div>
}