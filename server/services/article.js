const { mysql } = require('../qcloud')
const TABLE_NAME = 'cArticleInfo'



function parseFilter (filter) {
    if (!filter || filter.length === 0) return
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
        // flag = true
        return {
            raw: filterQueyList.join(' and '),
            bindings
        }
        // querySql = querySql.whereRaw(filterQueyList.join(' and '), bindings)
    }
}


module.exports = {
    getList: function (cid) {
        return mysql(TABLE_NAME).where({
            cid
        }).select().orderBy('create_time', 'desc')
    },
    getAllList: function (filter) {
        let querySql = mysql(TABLE_NAME).select()
        const filterResult = parseFilter(filter)
        if (filterResult) {
            querySql = querySql.whereRaw(filterResult.raw, filterResult.bindings)
        }
        return querySql.orderBy('create_time', 'desc')
    },
    // getAllListByAids: function () {
    //     return mysql(TABLE_NAME).select().whereIn('aid', aids).orderBy('create_time', 'desc')
    // },
    addArticle: async function (item) {
        const ret = await mysql(TABLE_NAME).select().where({
            title: item.title,
            cid: item.cid,
            // subTitle: item.subTitle,
            // logo: item.logo,
            url: item.url
            // type: item.type
        })
        if (ret && ret.length > 0) {
            return
        }
        return mysql(TABLE_NAME).insert(item)
    },
    editArticle: function (item) {
        return mysql(TABLE_NAME).update(item).where({
            id: item.id
        })
    },
    deleteArticle: async function (id) {
        return mysql(TABLE_NAME).where({
            id: id
        }).del()
    }
    // getBonusInfoList: async function (cid) {
        // return mysql().select().where({})
    // }
}
