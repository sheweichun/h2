
const QuestionnaireService = require('../services/questionnaire')
// const { mysql } = require('../qcloud')
module.exports = {
    getAllActivityQuestionnairesByType: async(ctx) => {
        const {type} = ctx.request.query
        const result = await QuestionnaireService.getAllActivityQuestionnairesByType(type)
        ctx.state.data = result
        ctx.state.code = 0
    },
    getAllShowQuestionnairesByType: async(ctx) => {
        const {type} = ctx.request.query
        const result = await QuestionnaireService.getAllShowQuestionnairesByType(type)
        ctx.state.data = result
        ctx.state.code = 0
    },

    createQuestionnaire: async(ctx) => {
        const {data} = ctx.request.body
        const result = await QuestionnaireService.createQuestionnaire(data)
        ctx.state.data = result
        ctx.state.code = 0
    },
    updateQuestionnaire: async(ctx) => {
        const {data} = ctx.request.body
        const {id, ...others} = data
        const result = await QuestionnaireService.updateQuestionnaire(others, id)
        ctx.state.data = result
        ctx.state.code = 0
    },
    hasValidQuestionnaire: async(ctx) => {
        const {type} = ctx.request.query
        const result = await QuestionnaireService.hasValidQuestionnaire(type)
        ctx.state.data = result
        ctx.state.code = 0
    },

    // Questionnaire Items Management
    getQuestionnaireItems: async(ctx) => {
        const {data} = ctx.request.query
        const dataObj = JSON.parse(data)
        // console.log('dataObj :', dataObj, dataObj.qid)
        const result = await QuestionnaireService.getQuestionnaireItems(dataObj.qid)
        ctx.state.data = result
        ctx.state.code = 0
    },

    addQuestionnaireItem: async(ctx) => {
        const {qid, data} = ctx.request.body
        const result = await QuestionnaireService.addQuestionnaireItem(qid, data)
        ctx.state.data = result
        ctx.state.code = 0
    },

    updateQuestionnaireItem: async(ctx) => {
        const {data} = ctx.request.body
        const {id, ...others} = data
        const result = await QuestionnaireService.updateQuestionnaireItem(others, id)
        ctx.state.data = result
        ctx.state.code = 0
    },

    deleteQuestionnaireItem: async(ctx) => {
        const {id, qid} = ctx.request.body
        const result = await QuestionnaireService.deleteQuestionnaireItem(qid, id)
        ctx.state.data = result
        ctx.state.code = 0
    },
    getQuestionnaireDetail: async(ctx) => {
        const {id} = ctx.request.query
        const result = await QuestionnaireService.getQuestionnaireDetail(id)
        ctx.state.data = result
        ctx.state.code = 0
    },
    getQuestionnaireAnswer: async(ctx) => {
        const {uid} = ctx.session.userinfo
        const {qid} = ctx.request.query
        const result = await QuestionnaireService.getQuestionnaireAnswer(uid,qid)
        ctx.state.data = result
        ctx.state.code = 0
    },
    saveQuestionnaireAnswersV2: async(ctx) => {
        const {answers,qid,notneedBonus=0} = ctx.request.body
        const {uid} = ctx.session.userinfo
        const newAnswers = answers.map((answer)=>{
            answer.uid = uid;
            return answer;
        })
        try{
            const result = await QuestionnaireService.saveQuestionnaireAnswersV2(qid,uid,newAnswers,notneedBonus)
            ctx.state.data = result
            ctx.state.code = 0
        }catch(e){
            ctx.state.code = 1
            ctx.state.data = '操作失败'
            return;
        }
    },
    saveQuestionnaireAnswers: async(ctx) => {
        const {answers,qid,notneedBonus=0} = ctx.request.body
        const {uid} = ctx.session.userinfo
        const newAnswers = answers.map((answer)=>{
            answer.uid = uid;
            return answer;
        })
        try{
            const result = await QuestionnaireService.saveQuestionnaireAnswers(qid,uid,newAnswers,notneedBonus)
            ctx.state.data = result
            ctx.state.code = 0
        }catch(e){
            ctx.state.code = 1
            ctx.state.data = '操作失败'
            return;
        }
    }
}
