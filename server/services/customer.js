/* eslint-disable no-undef */
const { mysql } = require('../qcloud')
// const MessageService = require('./message');
const TABLE_NAME = 'cUserInfo'

const MEMBER_TABLE_NAME = 'cMember'
const MEMEBER_RIGHTS_TABLE_NAME = 'cMemeberRight'
const USER_MEMEBER_RIGHTS_TABLE = 'cUserMember'
const SHARE_INFO_TABLE = 'cShareInfo'

const COMPANY_BONUS_TYPE_NAME = 'cCompanyBonusType'

const COMPANY_INFO = 'cCompanyInfo'
const RUN_INFO_TABLE = 'cRunInfo'
const BONUSE_INFO_TABLE = 'cBonusInfo'
const BONUSE_TYPE_TABLE = 'cBonustype'
const EXCHANGE_TABLE_NAME = 'cExchange'

const CQuestionnaireAns_Table = 'cQuestionnaireAns'
const CQuestionnaireItem_Table = 'cQuestionnaireItem'
const CQuestionnaireAndItem_Table = 'cQuestionnaireAndItem'
const CQuestionnaireOption_Table = 'cQuestionnaireOption'
const Questionnaire_Bonus_table = 'cquestionnairebonus'
// const cQuestionnaireItem_Table = 'cQuestionnaireItem'

const ATTR_LIST = ['timestamp', 'step', 'bonus_flag', 'uid']

const UPDATE_RAW = ATTR_LIST.map((name) => {
    return name + '=values(' + name + ')'
}).join(',')
function list2Values (data) {
    return data.map((item) => {
        return `(${ATTR_LIST.map(() => {
            return '?'
        })
        })`
    }).join(',')
}

function flatternObj2List (data) {
    return data.reduce((ret, item) => {
        return ret.concat(ATTR_LIST.map((attr) => {
            return item[attr]
        }))
    }, [])
}

function normalizeTime (tm) {
    const newTm = tm * 1000
    const d = new Date(newTm)
    d.setHours(0, 0, 0, 0)
    return d.getTime() / 1000
}

function normalizeDatetime (dt) {
    const d = new Date(dt)
    d.setHours(0, 0, 0, 0)
    return d.getTime() / 1000
}

function isSameDay (src, dest) {
    return src.getFullYear() === dest.getFullYear() &&
    src.getMonth() === dest.getMonth() &&
    src.getDate() === dest.getDate()
}

function isInValidDaka (src, dt, type) {
    if (!isSameDay(src, dt)) return false
    const hour = dt.getHours()
    if (type === 1 && hour < 12) {
        return false
    } else if (type === 2 && hour > 12) {
        return false
    }
    return true
}

function parseNum (val, defaultVal) {
    try {
        const n = parseInt(val)
        if (isNaN(n)) return defaultVal
        return n
    } catch (e) {

    }
    return defaultVal
}
// function transactionUpdateRunInfoList(unBonusRecords,bonusList,newBonus,uid){
//     return new Promise((resolve,reject)=>{
//         mysql.transaction(async function(trx){
//             //更新用户跑步记录
//             await mysql.raw(
//                 'insert into test_tbl (timestamp,step,bonus_flag) values ' + list2Values(unBonusRecords) + ' on duplicate key update timestamp=values(timestamp);',
//                 flatternObj2List(unBonusRecords)
//             )
//             if(bonusList && bonusList.length > 0){
//                 //插入积分记录
//                 await mysql(BONUSE_INFO_TABLE).insert(bonusList)
//                 //更新用户积分
//                 await mysql(TABLE_NAME).update('bonus',newBonus).where({
//                     uid
//                 })
//             }
//             return resolve()
//         })
//     })
// }

module.exports = {
    getCompanyById: async function (id) {
        return await mysql(COMPANY_INFO).where({
            cid: id
        }).first()
    },
    insertCustomer: async function (customer) {
        const ret = await mysql(TABLE_NAME).where({
            openId: customer.openId
        })

        // console.log('member :', member)
        if (!ret || ret.length === 0) {
            const queryRet = await mysql(TABLE_NAME).where({
                nickName: customer.nickName,
                openId: customer.openId
            })
            if (!queryRet || queryRet.length === 0) {
                return await mysql.transaction(function (trx) {
                    return new Promise(async(resolve, reject) => {
                        try {
                            const insertIds = await trx(TABLE_NAME).insert(customer)
                            if (insertIds && insertIds.length > 0) {
                                const uid = insertIds[0]
                                customer.uid = uid
                                // const memberRights = await trx(MEMEBER_RIGHTS_TABLE_NAME).where({
                                //     mid: member.id
                                // }) // id mid rid num
                                // if (memberRights.length > 0) {
                                //     const now = new Date()
                                //     const newRights = memberRights.map((item) => {
                                //         return {
                                //             uid,
                                //             mid: item.mid,
                                //             rid: item.rid,
                                //             display: item.display,
                                //             reserved_num: item.num,
                                //             create_time: now
                                //         }
                                //     })
                                //     await trx(USER_MEMEBER_RIGHTS_TABLE).insert(newRights)
                                // }
                            }
                            return resolve(customer)
                        } catch (e) {
                            return reject(e)
                        }
                    })
                })
            } else {
                const exsitCustomer = queryRet[0]
                exsitCustomer.openId = customer.openId
                exsitCustomer.avatarUrl = customer.avatarUrl
                await mysql(TABLE_NAME).update({
                    openId: customer.openId,
                    avatarUrl: customer.avatarUrl
                }).where({
                    uid: exsitCustomer.uid
                })
                return exsitCustomer
            }
        } else {
            const target = ret[0]
            if (target && (target.nickName !== customer.nickName || target.avatarUrl !== customer.avatarUrl)) {
                try {
                    await mysql(TABLE_NAME).update({
                        nickName: customer.nickName,
                        avatarUrl: customer.avatarUrl
                    }).where({
                        openId: customer.openId
                    })
                    return Object.assign({}, target, {
                        nickName: customer.nickName,
                        avatarUrl: customer.avatarUrl
                    })
                } catch (e) {

                }
            }
            return ret[0]
        }
    },
    updateCustomerActivityBonus: async function (uid, cid, code) { // 公司活动打卡积分 type固定为13
        const _this = this
        const type = 13
        return await mysql.transaction(function (trx) {
            return new Promise(async(resolve, reject) => {
                try {
                    let bonusItem
                    let companyBonusItem = await trx(COMPANY_BONUS_TYPE_NAME).select().where({
                        cid: cid,
                        tid: type
                    }).first()
                    if (companyBonusItem == null) {
                        bonusItem = await trx(BONUSE_TYPE_TABLE).where({
                            value: type
                        }).first()
                    } else {
                        bonusItem = {
                            value: companyBonusItem.tid,
                            name: companyBonusItem.tname,
                            bonuse: companyBonusItem.bonuse
                        }
                    }
                    if (bonusItem == null) return reject('积分类型数据异常')

                    const companyInfo = await trx(COMPANY_INFO).select().where({
                        cid: cid
                    }).first()
                    // console.log('companyInfo :', companyInfo, companyInfo.activity_code, code, !(!code && !companyInfo.activity_code), companyInfo.activity_code !== code)
                    if (companyInfo == null) return reject('公司数据异常')
                    if (!companyInfo.enable_activity) return reject('公司未开启活动')
                    if (companyInfo.activity_code !== code && (code && companyInfo.activity_code)) {
                        return reject('您填写的活动邀请码不匹配')
                    }
                    const activityName = companyInfo.activity_name
                    if (!activityName) return reject('公司未设置活动名称')
                    const item = await trx(BONUSE_INFO_TABLE).where({ // 如果活动名已打卡 则不允许再打卡
                        uid,
                        type,
                        type_name: activityName
                    }).orderBy('create_time', 'desc').first()
                    // if (item && item.create_time && isInValidDaka(new Date(), item.create_time)) {
                    //     return reject('已打卡')
                    // }
                    if (item) {
                        return reject(`${activityName}已打卡`)
                    }
                    const ret = await _this.updateBonus(uid, bonusItem.bonuse, bonusItem.value, activityName)
                    return resolve(ret)
                } catch (e) {
                    return reject(e.message)
                }
            })
        })
    },
    updateCustomerDakaInfo: async function (type, uid) {
        const _this = this
        return await mysql.transaction(function (trx) {
            return new Promise(async(resolve, reject) => {
                try {
                    const bonusItem = await trx(BONUSE_TYPE_TABLE).where({
                        value: type
                    }).first()
                    if (bonusItem == null) return reject('数据异常')
                    const item = await trx(BONUSE_INFO_TABLE).where({
                        uid,
                        type
                    }).orderBy('create_time', 'desc').first()
                    if (item && item.create_time && isInValidDaka(new Date(), item.create_time)) {
                        return reject('已打卡')
                    }
                    const ret = await _this.updateBonus(uid, bonusItem.bonuse, type, bonusItem.name)
                    return resolve(ret)
                } catch (e) {
                    return reject(e.message)
                }
            })
        })
    },
    getCustomerByUid: async function (uid) {
        const ret = await mysql(TABLE_NAME).where({
            uid: uid
        })
        if (ret && ret[0]) {
            return ret[0]
        }
    },
    getCustomerByOpenId: async function (openId) {
        return await mysql(TABLE_NAME).where({
            openId: openId
        }).first()
    },
    changeCompanyIdAndName: async function (uid, companyName, companyid) {
        await mysql(TABLE_NAME).update({
            companyid,
            companyName
        }).where({
            uid
        })
    },
    openMember: async function (uid) {
        const members = await mysql(MEMBER_TABLE_NAME).where('level', 0)
        const member = (members || [])[0]
        const userList = await mysql(TABLE_NAME).where({uid})
        if (!userList || userList.length === 0) return
        const curUser = userList[0]
        if (curUser.member_level != null && curUser.member_level >= 0) {
            throw new Error('用户已经是会员了')
        }
        const userRights = await mysql(USER_MEMEBER_RIGHTS_TABLE).where({
            uid
        })
        if (userRights && userRights.length > 0) {
            throw new Error('用户有存量权益')
        }
        return await mysql.transaction(function (trx) {
            return new Promise(async(resolve, reject) => {
                try {
                    const now = new Date()
                    const oprMem = (member || {})
                    await trx(TABLE_NAME).update({
                        member: 0,
                        member_update: now,
                        member_level: oprMem.id
                    }).where({
                        uid
                    })
                    curUser.member = 0
                    curUser.member_update = now
                    curUser.member_level = oprMem.id
                    // const insertIds = await trx(TABLE_NAME).insert(customer)
                    if (member) {
                        const memberRights = await trx(MEMEBER_RIGHTS_TABLE_NAME).where({
                            mid: member.id
                        }) // id mid rid num
                        if (memberRights.length > 0) {
                            const now = new Date()
                            const newRights = memberRights.map((item) => {
                                return {
                                    uid,
                                    mid: item.mid,
                                    rid: item.rid,
                                    display: item.display,
                                    reserved_num: item.num,
                                    create_time: now
                                }
                            })
                            await trx(USER_MEMEBER_RIGHTS_TABLE).insert(newRights)
                        }
                    }
                    return resolve(curUser)
                } catch (e) {
                    return reject(e)
                }
            })
        })
    },
    changePhone: async function (phone, uid) {
        const members = await mysql(MEMBER_TABLE_NAME).where('level', 0)
        const member = (members || [])[0]
        await mysql.transaction(function (trx) {
            return new Promise(async(resolve, reject) => {
                try {
                    await trx(TABLE_NAME).update({
                        phone,
                        member: 0,
                        member_update: new Date(),
                        member_level: (member || {}).id
                    }).where({
                        uid
                    })
                    // const insertIds = await trx(TABLE_NAME).insert(customer)
                    if (member) {
                        const memberRights = await trx(MEMEBER_RIGHTS_TABLE_NAME).where({
                            mid: member.id
                        }) // id mid rid num
                        if (memberRights.length > 0) {
                            const now = new Date()
                            const newRights = memberRights.map((item) => {
                                return {
                                    uid,
                                    mid: item.mid,
                                    rid: item.rid,
                                    display: item.display,
                                    reserved_num: item.num,
                                    create_time: now
                                }
                            })
                            await trx(USER_MEMEBER_RIGHTS_TABLE).insert(newRights)
                        }
                    }
                    return resolve()
                } catch (e) {
                    return reject(e)
                }
            })
        })
        return {
            phone
        }
    },
    updateCompanyInfo: async function (realName, code, phone, openId, uid) { // 完成信息认证
        const _this = this
        const ret = await mysql(COMPANY_INFO).where({
            code
        })
        if (ret && ret[0]) {
            const cpa = ret[0]
            const pho = phone || cpa.phone
            return await mysql.transaction(function (trx) {
                return new Promise(async(resolve, reject) => {
                    try {
                        await trx(TABLE_NAME).update({
                            realName,
                            phone: pho,
                            companyid: cpa.cid,
                            companyName: cpa.name,
                            aid: cpa.aid
                        }).where({
                            openId
                        })
                        const shareInfo = await trx(SHARE_INFO_TABLE).select().where({
                            enter_customer_id: uid
                        }).first()
                        if (shareInfo && !shareInfo.flag) {
                            // 有分享者, 计算分享积分

                            const shareUserInfo = await trx(TABLE_NAME).select().where({
                                uid: shareInfo.share_customer_id
                            }).first()

                            const bonusType = await trx(BONUSE_TYPE_TABLE).select().where({
                                value: 14
                            }).first()
                            const bonuTypeInCompany = await trx(COMPANY_BONUS_TYPE_NAME).select().where({
                                cid: shareUserInfo.companyid,
                                tid: 14
                            }).first()

                            let curBonusType = bonuTypeInCompany || bonusType
                            if (curBonusType) {
                                await trx(SHARE_INFO_TABLE).update({
                                    flag: true,
                                    enter_name: realName
                                }).where({
                                    enter_customer_id: uid
                                })
                                await _this.updateBonus(shareInfo.share_customer_id, curBonusType.bonuse, curBonusType.value, curBonusType.name)
                            }
                        }
                        return resolve({
                            realName,
                            phone: pho,
                            companyName: cpa.name
                        })
                    } catch (e) {
                        return reject(e)
                    }
                })
            })
        }
        throw new Error('邀请码不存在')
    },
    // updatebonuse: async function (uid, bonus) {
    //     await mysql(TABLE_NAME).update({
    //         bonus
    //     }).where({
    //         uid
    //     }).andWhere()
    // },
    bactchUpdateBonus: async function (records) { // 管理员从后台批量更新积分
        if (!records || records.length === 0) {
            throw new Error('添加信息不能为空')
        }
        for (let j = 0; j < records.length; j++) {
            const jRec = records[j]
            if (!jRec.phone) {
                throw new Error(`${jRec.realName}-电话号码不能为空`)
            }
            const bonus = jRec.addBonus
            const numaddBonus = parseInt(bonus)
            if (isNaN(numaddBonus)) {
                throw new Error('积分不是数字')
            }
            jRec.addBonus = numaddBonus
        }
        const phonesMap = records.reduce((phoneMap, record) => {
            phoneMap[record.phone] = true
            return phoneMap
        }, {})
        const phones = Object.keys(phonesMap)
        const userList = await mysql(TABLE_NAME).select().whereIn('phone', phones)
        const userNameIdMap = {}
        const userMap = userList.reduce((ret, item) => {
            ret[item.uid] = item
            userNameIdMap[item.phone + item.realName] = item.uid
            return ret
        }, {})
        // if (phones.length !== userList.length) {

        // }
        const errorNames = []
        records.forEach((r) => {
            r.uid = userNameIdMap[r.phone + r.realName]
            if (!userNameIdMap[r.phone + r.realName]) {
                errorNames.push(r.realName)
            }
        })
        if (errorNames.length > 0) {
            throw new Error(`${errorNames.join('\n')}不存在，积分添加失败`)
        }
        // records.forEach((r) => {
        //     r.uid = userNameIdMap[r.phone + r.realName]
        // })
        // console.log('')
        await mysql.transaction(function (trx) {
            return new Promise(async(resolve, reject) => {
                try {
                    for (let i = 0; i < records.length; i++) {
                        const r = records[i]
                        const { addBonus = 0, type, typeName, uid } = r
                        // console.log('r :', r)
                        const curUser = userMap[uid]
                        if (addBonus === 0) continue
                        const curBonus = curUser.bonus || 0
                        let curTotalBonus = curUser.total_bonus || 0
                        const newBonus = curBonus + addBonus
                        if (addBonus > 0) {
                            curTotalBonus += addBonus
                        }
                        curUser.bonus = newBonus
                        curUser.total_bonus = curTotalBonus
                        await trx(BONUSE_INFO_TABLE).insert({
                            origin_bonus: curBonus,
                            add_bonus: addBonus,
                            new_bonus: newBonus,
                            type: type,
                            readed: false,
                            uid,
                            type_name: typeName
                        })
                        // 更新用户积分
                        await trx(TABLE_NAME).update({
                            bonus: newBonus,
                            total_bonus: curTotalBonus,
                            last_upload_run_time: Date.now()
                        }).where({
                            uid
                        })
                    }
                    return resolve()
                } catch (e) {
                    return reject(e)
                }
            })
        })
    },
    updateBonus: async function (uid, addBonus = 0, type, typeName) {
        const curUser = await mysql(TABLE_NAME).where({
            uid
        }).first()
        if (!curUser) return
        const curBonus = curUser.bonus || 0
        let curTotalBonus = curUser.total_bonus || 0
        const newBonus = curBonus + addBonus
        if (addBonus > 0) {
            curTotalBonus += addBonus
        }
        await mysql.transaction(function (trx) {
            return new Promise(async(resolve, reject) => {
                try {
                    await trx(BONUSE_INFO_TABLE).insert({
                        origin_bonus: curBonus,
                        add_bonus: addBonus,
                        new_bonus: newBonus,
                        type: type,
                        readed: false,
                        uid,
                        type_name: typeName
                    })
                    // 更新用户积分
                    await trx(TABLE_NAME).update({
                        bonus: newBonus,
                        total_bonus: curTotalBonus,
                        last_upload_run_time: Date.now()
                    }).where({
                        uid
                    })
                    return resolve()
                } catch (e) {
                    return reject(e)
                }
            })
        })
        return newBonus
    },
    // batchUpdateBonusByOpenIds: async function (openids, addBonus = 0, type, typeName) {
    batchUpdateBonusByOpenIds: async function (params) {
        let openids = params
        if (Object.prototype.toString.call(params) !== '[object Array]') {
            openids = Object.keys(params).map((name) => {
                return params[name]
            })
        }
        const batchList = openids || []
        const ids = []
        const openIdsMap = batchList.reduce((ret, item) => {
            const openid = item.openid
            ids.push(openid)
            ret[openid] = item
            return ret
        }, {})
        const userList = await mysql(TABLE_NAME).whereIn('openId', ids)
        if (!userList || userList.length === 0) return

        await mysql.transaction(function (trx) {
            return Promise.all(
                userList.map((curUser) => {
                    const curBonus = curUser.bonus || 0
                    const curTarget = openIdsMap[curUser.openId]
                    if (!curTarget) return
                    const { type, typeName } = curTarget
                    const addBonus = parseNum(curTarget.addBonus)
                    const uid = curUser.uid
                    let curTotalBonus = curUser.total_bonus || 0
                    const newBonus = curBonus + addBonus
                    if (addBonus > 0) {
                        curTotalBonus += addBonus
                    }
                    return new Promise(async(resolve, reject) => {
                        try {
                            await trx(BONUSE_INFO_TABLE).insert({
                                origin_bonus: curBonus,
                                add_bonus: addBonus,
                                new_bonus: newBonus,
                                type: type,
                                readed: false,
                                uid,
                                type_name: typeName
                            })
                            // 更新用户积分
                            await trx(TABLE_NAME).update({
                                bonus: newBonus,
                                total_bonus: curTotalBonus,
                                last_upload_run_time: Date.now()
                            }).where({
                                uid
                            })
                            return resolve()
                        } catch (e) {
                            return reject(e)
                        }
                    })
                })
            )
        })
    },
    batchUpdateRunInfoList: async function (data, uid) {
        // console.log(data)
        const bonusList = []
        const bonuseType = 5
        const now = Date.now()
        let addTotalBonus = 0
        data = data.slice(data.length - 7, data.length)
        data.forEach((item) => {
            item.timestamp = normalizeTime(item.timestamp)
        })
        const curUser = await mysql(TABLE_NAME).where({
            uid
        }).first()
        if (!curUser) return
        const userCreateTime = normalizeDatetime(curUser.create_time.getTime())
        const curBonus = curUser.bonus || 0
        const curTotalBonus = curUser.total_bonus || 0
        const bonusItem = await mysql(BONUSE_TYPE_TABLE).where({
            value: bonuseType
        }).first()
        const reservedRecords = await mysql(RUN_INFO_TABLE).whereIn('timestamp', data.map((item) => {
            return item.timestamp
        })).andWhere({
            uid
        })
        const recordMap = reservedRecords.reduce((ret, item) => {
            ret[item.timestamp] = item
            return ret
        }, {})
        let mutationRecords = []
        let tmpBonus = curBonus
        data.forEach((item) => {
            item.uid = uid
            const timestamp = item.timestamp

            const target = recordMap[timestamp] // 数据库的信息
            item.bonus_flag = 0
            if (target) {
                item.bonus_flag = target.bonus_flag
            }
            if (timestamp < userCreateTime) return
            if (item.bonus_flag === 1 || (target && item.step === target.step)) {
                return
            }
            // console.log('item :', item.step)
            if (item.step >= 10000) {
                bonusList.push({
                    origin_bonus: tmpBonus,
                    add_bonus: bonusItem.bonuse,
                    new_bonus: tmpBonus + bonusItem.bonuse,
                    type: bonuseType,
                    readed: true,
                    uid,
                    type_name: bonusItem.name
                })
                tmpBonus += (bonusItem.bonuse || 0)
                addTotalBonus += bonusItem.bonuse
                item.bonus_flag = 1
            }
            mutationRecords.push(item)
        })
        if (mutationRecords.length > 0) {
            await mysql.transaction(function (trx) {
                return new Promise(async(resolve, reject) => {
                    try {
                        const rawQuery = 'insert into ' + RUN_INFO_TABLE + ' (' + ATTR_LIST.join(',') + ') values ' + list2Values(mutationRecords) + ' on duplicate key update ' + UPDATE_RAW + ';'
                        // 更新用户跑步记录
                        await trx.raw(
                            rawQuery,
                            flatternObj2List(mutationRecords)
                        )
                        if (bonusList && bonusList.length > 0) {
                            // 插入积分记录
                            await trx(BONUSE_INFO_TABLE).insert(bonusList.reverse())
                            // 更新用户积分
                            await trx(TABLE_NAME).update({
                                bonus: curBonus + addTotalBonus,
                                total_bonus: curTotalBonus + addTotalBonus,
                                last_upload_run_time: now
                            }).where({
                                uid
                            })
                        }
                        return resolve()
                    } catch (e) {
                        return reject(e)
                    }
                })
            })
        } else {
            await mysql(TABLE_NAME).update({
                last_upload_run_time: now
            }).where({
                uid
            })
        }
        return {
            data,
            uploadTime: now,
            newBonus: curBonus + addTotalBonus
        }
    },
    markBonusInfoReaded: async function (ids) {
        return mysql(BONUSE_INFO_TABLE).update({
            readed: true
        }).whereIn('id', ids)
    },
    getExportHealthCustomersByCid: async function (param_id, cid) {
        const qid = param_id || 1
        const data = await mysql(TABLE_NAME).select().where({companyid: cid})
        const answers = await mysql(CQuestionnaireAns_Table).select().where({qid})
        const answerMap = answers.reduce((ret, ans) => {
            let ele = ret[ans.uid]
            if (ele == null) {
                ele = {}
                ret[ans.uid] = ele
            }
            let ansList = ele[ans.item_id]
            if (ansList == null) {
                ansList = []
                ele[ans.item_id] = ansList
            }
            ansList.push(ans)
            return ret
        }, {})
        // const item_indexes = await mysql(CQuestionnaireAndItem_Table).select().where({qid})
        const result = await mysql.raw(`SELECT a.qid,a.item_id,b.* FROM cAuth.cQuestionnaireAndItem as a  left join cQuestionnaireItem as b on a.item_id = b.id where qid = ?`, [qid])
        const items = result[0]
        const item_ids = items.map((item) => {
            // console.log('item :',item);
            return item.item_id
        })
        // console.log('item_ids :',item_ids);
        const options = await mysql(CQuestionnaireOption_Table).select().whereIn('item_id', item_ids)
        const optionMap = options.reduce((ret, opt) => {
            ret[opt.id] = opt
            return ret
        }, {})
        data.forEach((user) => {
            const user_answerMap = answerMap[user.uid] || {}
            items.forEach((item, index) => {
                const {title} = item
                const keyName = `${index + 1}.${title}`
                const ansList = user_answerMap[item.item_id]
                let curVal = ''
                if (ansList) {
                    // console.log('item :',item);
                    // console.log('ansList :',ansList,item.type);
                    curVal = ansList.map((ans) => {
                        let ansVal = ''
                        if (item.type == '1' || item.type == '5' || ans.oid == null) { // 填空题
                            ansVal = ans.value
                        } else {
                            // console.log('optionMap :',optionMap,ans.oid,ans);
                            const curOpt = optionMap[ans.oid]
                            // console.log('optionMap :',optionMap,ans.oid,ans,curOpt);
                            if (curOpt) {
                                // console.log('curOpt :',curOpt,ans);
                                ansVal = curOpt.name
                            }
                        }
                        return ansVal
                    }).join('|')
                }
                user[keyName] = curVal
            })
        })
        // throw new Error('test')
        return data
    },
    getExportHealthInfoByQus: async function (param_id) {
        const qid = param_id

        const uids = await mysql(Questionnaire_Bonus_table).select('uid').where({
            qid
        })
        const data = await mysql(TABLE_NAME).select().whereIn('uid', uids.map((item)=>{
            return item.uid
        }))
        const answers = await mysql(CQuestionnaireAns_Table).select().where({qid})
        const answerMap = answers.reduce((ret, ans) => {
            let ele = ret[ans.uid]
            if (ele == null) {
                ele = {}
                ret[ans.uid] = ele
            }
            let ansList = ele[ans.item_id]
            if (ansList == null) {
                ansList = []
                ele[ans.item_id] = ansList
            }
            ansList.push(ans)
            return ret
        }, {})
        // const item_indexes = await mysql(CQuestionnaireAndItem_Table).select().where({qid})
        const result = await mysql.raw(`SELECT a.qid,a.item_id,b.* FROM cAuth.cQuestionnaireAndItem as a  left join cQuestionnaireItem as b on a.item_id = b.id where qid = ?`, [qid])
        const items = result[0]
        const item_ids = items.map((item) => {
            // console.log('item :',item);
            return item.item_id
        })
        // console.log('item_ids :',item_ids);
        const options = await mysql(CQuestionnaireOption_Table).select().whereIn('item_id', item_ids)
        const optionMap = options.reduce((ret, opt) => {
            ret[opt.id] = opt
            return ret
        }, {})
        data.forEach((user) => {
            const user_answerMap = answerMap[user.uid] || {}
            items.forEach((item, index) => {
                const {title} = item
                const keyName = `${index + 1}.${title}`
                const ansList = user_answerMap[item.item_id]
                let curVal = ''
                if (ansList) {
                    // console.log('item :',item);
                    // console.log('ansList :',ansList,item.type);
                    curVal = ansList.map((ans) => {
                        let ansVal = ''
                        if (item.type == '1' || item.type == '5' || ans.oid == null) { // 填空题
                            ansVal = ans.value
                        } else {
                            // console.log('optionMap :',optionMap,ans.oid,ans);
                            const curOpt = optionMap[ans.oid]
                            // console.log('optionMap :',optionMap,ans.oid,ans,curOpt);
                            if (curOpt) {
                                // console.log('curOpt :',curOpt,ans);
                                ansVal = curOpt.name
                            }
                        }
                        return ansVal
                    }).join('|')
                }
                user[keyName] = curVal
            })
        })
        // throw new Error('test')
        return data
    },
    getExportCustomers: async function (param_id) {
        const qid = param_id || 1
        const data = await mysql(TABLE_NAME).select()
        const answers = await mysql(CQuestionnaireAns_Table).select().where({qid})
        const answerMap = answers.reduce((ret, ans) => {
            let ele = ret[ans.uid]
            if (ele == null) {
                ele = {}
                ret[ans.uid] = ele
            }
            let ansList = ele[ans.item_id]
            if (ansList == null) {
                ansList = []
                ele[ans.item_id] = ansList
            }
            ansList.push(ans)
            return ret
        }, {})
        // const item_indexes = await mysql(CQuestionnaireAndItem_Table).select().where({qid})
        const result = await mysql.raw(`SELECT a.qid,a.item_id,b.* FROM cAuth.cQuestionnaireAndItem as a  left join cQuestionnaireItem as b on a.item_id = b.id where qid = ?`, [qid])
        const items = result[0]
        const item_ids = items.map((item) => {
            // console.log('item :',item);
            return item.item_id
        })
        // console.log('item_ids :',item_ids);
        const options = await mysql(CQuestionnaireOption_Table).select().whereIn('item_id', item_ids)
        const optionMap = options.reduce((ret, opt) => {
            ret[opt.id] = opt
            return ret
        }, {})
        data.forEach((user) => {
            const user_answerMap = answerMap[user.uid] || {}
            items.forEach((item, index) => {
                const {title} = item
                const keyName = `${index + 1}.${title}`
                const ansList = user_answerMap[item.item_id]
                let curVal = ''
                if (ansList) {
                    // console.log('item :',item);
                    // console.log('ansList :',ansList,item.type);
                    curVal = ansList.map((ans) => {
                        let ansVal = ''
                        if (item.type == '1') { // 填空题
                            ansVal = ans.value
                        } else {
                            // console.log('optionMap :',optionMap,ans.oid,ans);
                            const curOpt = optionMap[ans.oid]
                            // console.log('optionMap :',optionMap,ans.oid,ans,curOpt);
                            if (curOpt) {
                                // console.log('curOpt :',curOpt,ans);
                                ansVal = curOpt.name
                            }
                        }
                        return ansVal
                    }).join('|')
                }
                user[keyName] = curVal
            })
        })
        // throw new Error('test')
        return data
    },
    getAllCustomers: async function (pageSize, current, filter, search, order = {}) {
        // whereRaw('id = ?', [1])
        let offset = current >= 1 ? ((current - 1) * pageSize) : 0
        let newQuery = mysql(TABLE_NAME).select()
        let countQuery = mysql(TABLE_NAME).count('* as total')
        let flag = false
        if (filter) {
            const bindings = []
            const filterQueyList = []
            filter.forEach((item) => {
                if (item.values && item.values.length > 0) {
                    filterQueyList.push(`${item.name} in (${item.values.map((val) => {
                        bindings.push(val)
                        return '?'
                    }).join(',')})`)
                } else if (item.value) {
                    filterQueyList.push(`${item.name} = ${item.value}`)
                } else if (item.content) {
                    filterQueyList.push(item.content)
                }
            })
            if (filterQueyList.length > 0) {
                flag = true
                countQuery = countQuery.whereRaw(filterQueyList.join(' and '), bindings)
                newQuery = newQuery.whereRaw(filterQueyList.join(' and '), bindings)
            }
        }
        if (search) {
            let fixSearch = `%${search}%`
            if (!flag) {
                countQuery = countQuery.whereRaw(`realName like ? or nickName like ?`, [fixSearch, fixSearch])
                newQuery = newQuery.whereRaw(`realName like ? or nickName like ?`, [fixSearch, fixSearch])
            } else {
                countQuery = countQuery.whereRaw(`(realName like ? or nickName like ?)`, [fixSearch, fixSearch])
                newQuery = newQuery.whereRaw(`(realName like ? or nickName like ?)`, [fixSearch, fixSearch])
            }
        }
        const count = await countQuery
        const result = await newQuery.orderBy(order.column || 'last_upload_run_time', order.order || 'desc').limit(pageSize).offset(offset)
        return {
            total: count[0].total,
            pageSize,
            current,
            data: result
        }
    },
    getAllBonusInfo: async function (pageSize, current, where) {
        let offset = current >= 1 ? ((current - 1) * pageSize) : 0
        const count = await mysql(BONUSE_INFO_TABLE).count('* as total').where(where)
        const result = await mysql(BONUSE_INFO_TABLE).select().where(where).orderBy('create_time', 'desc').limit(pageSize).offset(offset)
        return {
            total: count[0].total,
            pageSize,
            current,
            data: result
        }
    },
    getLastBonusInfos: async function (pageSize, current, where) {
        let offset = current >= 1 ? ((current - 1) * pageSize) : 0
        const result = await mysql(BONUSE_INFO_TABLE).select().where(where).orderBy('create_time', 'desc').limit(pageSize).offset(offset)
        return {
            pageSize,
            current,
            data: result
        }
    },
    getLatestUnreadMessage: async function (uid) {
        return await mysql(BONUSE_INFO_TABLE).select().where({
            uid,
            readed: false
        }).orderBy('create_time', 'desc').first()
    },
    doExchange: async function (uid, eid) {
        const curUser = await mysql(TABLE_NAME).select().where({
            uid: uid
        }).first()
        const curExchange = await mysql(EXCHANGE_TABLE_NAME).select().where({
            id: eid
        }).first()
        if (!curUser || !curExchange) {
            throw new Error('参数不正确')
        }
        if (curUser.bonus < curExchange.threshold) {
            throw new Error('用户积分不足')
        }
        const newBonus = curUser.bonus - curExchange.threshold
        await mysql.transaction(function (trx) {
            return new Promise(async(resolve, reject) => {
                try {
                    await mysql(BONUSE_INFO_TABLE).insert({
                        origin_bonus: curUser.bonus,
                        add_bonus: -curExchange.threshold,
                        new_bonus: newBonus,
                        type: 6,
                        readed: false,
                        uid,
                        type_name: `兑换【${curExchange.gift_name}】`
                    }).where({
                        uid: uid
                    })
                    await mysql(TABLE_NAME).update({
                        bonus: newBonus
                    }).where({
                        uid: uid
                    })
                    return resolve()
                } catch (e) {
                    return reject(e)
                }
            })
        })

        return newBonus
    }
}
