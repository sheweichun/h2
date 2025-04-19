
const { mysql } = require('../qcloud')
const dayjs = require('dayjs')
const Questionnaire_table = 'cQuestionnaire'
const Questionnaire_Bonus_table = 'cquestionnairebonus'
const QuestionnaireAndItem_table = 'cQuestionnaireAndItem'
const QuestionnaireAns_table = 'cQuestionnaireAns'
const QuestionnaireItem_table = 'cQuestionnaireItem'
const QuestionnaireOption_table = 'cQuestionnaireOption'

const CompanyBonusType_table = 'cCompanyBonusType'

const USER_TABLE_NAME = 'cUserInfo'
const CBONUS_TABLE_NAME = 'cBonusInfo'
const BONUS_TYPE_TABLE = 'cBonustype'
// const BONUS_TYPE_TABLE = 'cBonustype'
// const QuestionnaireType_table = 'cQuestionnaireType'

const UPDATE_ATTR_LIST = ['value','oid']
const ATTR_LIST = ['value','oid','qid','item_id','uid']

const UPDATE_RAW = UPDATE_ATTR_LIST.map((name) => {
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



module.exports = {
    getAllActivityQuestionnairesByType: async function (type) {
        const result = await mysql(Questionnaire_table).select().where({
            type:type || 1
        });
        return result
    },
    getAllShowQuestionnairesByType: async function (type) {
        const result = await mysql(Questionnaire_table).select().where({
            type:type || 1,
            flag: 1
        });
        const now = dayjs(new Date())
        result.forEach((item)=>{
            const startTm = dayjs(item.start)
            const endTm = dayjs(item.end)
            if((startTm.isBefore(now) || startTm.isSame(now)) && endTm.isAfter(now)){
                item.valid = true
            }
        })
        return result
    },

    createQuestionnaire: async function (data) {
        const result = await mysql(Questionnaire_table).insert(data);
        return result
    },
    updateQuestionnaire: async function (data, id) {
        const result = await mysql(Questionnaire_table).update(data).where({
            id: id
        });
        return result
    },

    hasValidQuestionnaire: async function (type) {
        // const nowTimeStr = new Dayjs().format('YYYY-MM-DD')
        // const result = await mysql.raw(
        //     `select * from ${Questionnaire_table} where sta`,
        //     [qid,uid]
        // )
        // return result
        const result = await mysql(Questionnaire_table).count('* as total').where({
            type: type || 1,
            flag: 1
        });
        return (result && result[0]) ? result[0].total : 0
    },

    // Questionnaire Items Management
    getQuestionnaireItems: async function (qid) {
        let items = await mysql(QuestionnaireItem_table).select();
        if (qid) {
            const relations = await mysql(QuestionnaireAndItem_table).select().where({ qid });
            const itemIds = relations.map(rel => rel.item_id);
            items =  items.filter(item => itemIds.includes(item.id));
        }

        const options = await mysql(QuestionnaireOption_table).select().whereIn('item_id', items.map(item => item.id))
        const optionsMap = options.reduce((ret, opt) => {
            const arr = ret[opt.item_id] || []
            arr.push(opt);
            ret[opt.item_id] = arr;
            return ret;
        }, {})
        items.forEach(item => {
            const target = optionsMap[item.id];
            target && (item.options = target)
        });
        return items;
    },

    addQuestionnaireItem: async function (qid, itemdata) {
        // console.log('data :', qid, itemdata)
        let itemId;
        const { options, ...data } = itemdata;
        await mysql.transaction(async (trx) => {
            // Insert the item
            const [id] = await trx(QuestionnaireItem_table).insert(data);
            itemId = id;

            // If qid is provided, create the relation
            if (qid) {
                await trx(QuestionnaireAndItem_table).insert({
                    qid,
                    item_id: id,
                    dep_item_id: data.dep_item_id || null,
                    dep_item_val: data.dep_item_val || null
                });
            }

            // If options are provided, insert them
            if (options && Array.isArray(options) && options.length > 0) {
                const optionsToInsert = options.map(opt => ({
                    item_id: id,
                    value: opt.value,
                    name: opt.name
                }));
                await trx(QuestionnaireOption_table).insert(optionsToInsert);
            }
        });

        return itemId;
    },

    updateQuestionnaireItem: async function (data, id) {
        const { options, ...itemData } = data;

        await mysql.transaction(async (trx) => {
            // Update the item
            await trx(QuestionnaireItem_table).update(itemData).where({ id });

            // If options are provided, update them
            if (options && Array.isArray(options)) {
                // Delete existing options
                await trx(QuestionnaireOption_table).where({ item_id: id }).del();

                // Insert new options
                if (options.length > 0) {
                    const optionsToInsert = options.map(opt => ({
                        item_id: id,
                        value: opt.value,
                        name: opt.name
                    }));
                    await trx(QuestionnaireOption_table).insert(optionsToInsert);
                }
            }
        });

        return id;
    },

    deleteQuestionnaireItem: async function (qid, id) {
        await mysql.transaction(async (trx) => {
            // Delete relations
            await trx(QuestionnaireAndItem_table).where({ item_id: id, qid: qid }).del();

            // Delete options
            await trx(QuestionnaireOption_table).where({ item_id: id }).del();

            // Delete the item
            await trx(QuestionnaireItem_table).where({ id }).del();
        });

        return id;
    },
    // getAllQuestionnaireList: async function (type) {
    //     const result = await mysql(Questionnaire_table).select().where({
    //         type: type || 1
    //     });
    //     return result
    // },
    getQuestionnaireDetail: async function (id) {
        const db = mysql
        // const questionnaire = await db(Questionnaire_table).select().where({
        //     id
        // })
        const result = await db(QuestionnaireAndItem_table).select().where({
            qid:id
        });
        // console.log('result :',result);
        const itemMap = {}
        const itemIdMap = {}
        const item_ids = result.map((item)=>{
            itemIdMap[item.item_id] = item;
            return item.item_id
        })
        const items = await db(QuestionnaireItem_table).select().whereIn('id', item_ids);
        items.forEach((item)=>{
            itemMap[item.id] = item;
            item.options = [];
            const target = itemIdMap[item.id];
            if(target){
                // console.log('target :',target);
                const {dep_item_id,dep_item_val} = target
                item.dep_item_id = dep_item_id;
                item.dep_item_val = dep_item_val;
                // if(dep_item_id != null){
                //     item
                // }
                // item = Object.assign({},item,{...others})
            }
        })
        const options = await db(QuestionnaireOption_table).select().whereIn('item_id', item_ids);
        options.forEach((opt)=>{
            const target = itemMap[opt.item_id];
            if(target == null) return;
            target.options.push(opt)
        })
        return items;
    },
    getQuestionnaireAnswer:async function(uid,qid){
        const answers = await mysql(QuestionnaireAns_table).select().where({
            qid,
            uid
        });
        return answers;
    },
    saveQuestionnaireAnswersV2:async function(qid,uid,answers,notneedBonus){ //{uid,qid,item_id,value,oid}
        if(answers && answers.length > 0){
            await mysql.transaction(function (trx) {
                return new Promise(async(resolve, reject) => {
                    try {
                        // console.log('notneedBonus :',notneedBonus);
                        if(!notneedBonus){
                            const info = await trx(Questionnaire_Bonus_table).select().where({
                                qid,
                                uid
                            }).first();
                            if(!info){ //已经计算了积分
                                const curQus = await trx(Questionnaire_table).select().where({
                                    id: qid
                                }).first()
                                const user = await trx(USER_TABLE_NAME).select().where({
                                    uid: uid
                                }).first()

                                let addBonus = (curQus.bonus || 0);
                                let curTotalBonus = user.total_bonus || 0;
                                curTotalBonus += addBonus;
                                const newBonus = user.bonus + addBonus
                                console.log('addBonus :',addBonus,newBonus);
                                await trx(CBONUS_TABLE_NAME).insert({
                                    origin_bonus: user.bonus,
                                    add_bonus: addBonus,
                                    new_bonus: newBonus,
                                    type: 15,
                                    readed: false,
                                    uid: uid,
                                    type_name: '健康问卷'
                                })
                                await trx(USER_TABLE_NAME).update({
                                    bonus: newBonus,
                                    total_bonus:curTotalBonus
                                }).where({
                                    uid
                                })
                                await trx(Questionnaire_Bonus_table).insert({
                                    qid,
                                    uid,
                                    bonus: addBonus
                                })
                            }
                        }
                        const rawQuery = 'insert into ' + QuestionnaireAns_table + ' (' + ATTR_LIST.join(',') + ') values ' + list2Values(answers)
                        // + ' on duplicate key update ' + UPDATE_RAW + ';'
                        // await trx(QuestionnaireAns_table).where()
                        await trx.raw(
                            `delete from ${QuestionnaireAns_table} where qid = ? and uid = ?`,
                            [qid,uid]
                        )
                        await trx.raw(
                            rawQuery,
                            flatternObj2List(answers)
                        )
                        return resolve();
                    }catch(e){
                        console.log(e)
                        return reject(e);
                    }
                })
            })
        }
    },
    saveQuestionnaireAnswers:async function(qid,uid,answers,notneedBonus){ //{uid,qid,item_id,value,oid}
        if(answers && answers.length > 0){
            await mysql.transaction(function (trx) {
                return new Promise(async(resolve, reject) => {
                    try {
                        // console.log('notneedBonus :',notneedBonus);
                        if(!notneedBonus){
                            const info = await trx(CBONUS_TABLE_NAME).select().where({
                                type:10,
                                uid
                            }).first();
                            console.log('info :',info);
                            if(!info){ //已经计算了积分
                                const user = await trx(USER_TABLE_NAME).select().where({
                                    uid: uid
                                }).first()
                                console.log('user :',user);
                                const bonusType = await trx(BONUS_TYPE_TABLE).select().where({
                                    value:10
                                }).first()
                                console.log('bonusType :',bonusType);
                                const bonuTypeInCompany = await trx(CompanyBonusType_table).select().where({
                                    cid:user.companyid,
                                    tid:10
                                }).first();
                                console.log('bonuTypeInCompany :',bonuTypeInCompany);
                                let curBonusType = bonuTypeInCompany || bonusType;
                                let addBonus = (curBonusType.bonuse || 0);
                                let curTotalBonus = user.total_bonus || 0;
                                curTotalBonus += addBonus;
                                const newBonus = user.bonus + addBonus
                                console.log('addBonus :',addBonus,newBonus);
                                await trx(CBONUS_TABLE_NAME).insert({
                                    origin_bonus: user.bonus,
                                    add_bonus: addBonus,
                                    new_bonus: newBonus,
                                    type: 10,
                                    readed: false,
                                    uid: uid,
                                    type_name: bonusType.name
                                })
                                await trx(USER_TABLE_NAME).update({
                                    bonus: newBonus,
                                    total_bonus:curTotalBonus
                                }).where({
                                    uid
                                })
                            }
                        }
                        const rawQuery = 'insert into ' + QuestionnaireAns_table + ' (' + ATTR_LIST.join(',') + ') values ' + list2Values(answers)
                        // + ' on duplicate key update ' + UPDATE_RAW + ';'
                        // await trx(QuestionnaireAns_table).where()
                        await trx.raw(
                            `delete from ${QuestionnaireAns_table} where qid = ? and uid = ?`,
                            [qid,uid]
                        )
                        await trx.raw(
                            rawQuery,
                            flatternObj2List(answers)
                        )
                        return resolve();
                    }catch(e){
                        return reject(e);
                    }
                })
            })
        }
    }
}
