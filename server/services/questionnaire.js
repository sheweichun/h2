
const { mysql } = require('../qcloud')
const Questionnaire_table = 'cQuestionnaire'
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
