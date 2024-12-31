
const QuestionnaireService = require('../services/questionnaire')
// const { mysql } = require('../qcloud')
module.exports = {
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
