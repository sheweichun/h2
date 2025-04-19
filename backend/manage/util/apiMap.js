
const env = window.CFG.env || 'online'

const domain = env === 'local' ? '//localhost:5757' : '//' + window.location.host
// const domain = '//localhost:5757'

// console.log('domain1 :', domain);
function addWithCredentials(val) {
    // Object.keys(val).forEach((name)=>{
    //   const item = val[name];
    //   item.param && (item.param.withCredentials = true)
    // })
  return val
}

export default addWithCredentials({
  upload: {
    param: {
      url: `${domain}/weapp/upload`,
      method: 'post'
    }
  },
  login: {
    param: {
      url: `${domain}/weapp/loginAdmin`,
      method: 'post'
    }
  },
  loginOut: {
    param: {
      url: `${domain}/weapp/loginAdminOut`,
      method: 'post'
    }
  },
  isLogin: {
    param: {
      url: `${domain}/weapp/loginAdmin`,
      method: 'get'
    }
  },
  getAllCompany: {
    param: {
      url: `${domain}/weapp/config/codeList`,
      method: 'get'
    }
  },
  getAllCompanyBonusType: {
    param: {
      url: `${domain}/weapp/config/loadBonusTypes`,
      method: 'get'
    }
  },
  addBonusType: {
    param: {
      url: `${domain}/weapp/config/addBonusType`,
      method: 'post'
    }
  },
  editCompanyBonusType: {
    param: {
      url: `${domain}/weapp/config/editCompanyBonusType`,
      method: 'post'
    }
  },
  addCompany: {
    param: {
      url: `${domain}/weapp/config/generateCode`,
      method: 'post'
    }
  },
  editCompany: {
    param: {
      url: `${domain}/weapp/config/modifyCode`,
      method: 'post'
    }
  },
  getUploadList: {
    param: {
      url: `${domain}/weapp/upload/listWithQuery`,
      method: 'get'
    }
  },
  getBonusType: {
    param: {
      url: `${domain}/weapp/config/getBonusType`
    }
  },
  resetBonusByCid: {
    param: {
      url: `${domain}/weapp/config/resetBonus`,
      method: 'post'
    }
  },
  changeUploadBonusFlag: {
    param: {
      url: `${domain}/weapp/upload/changeUploadBonusFlag`,
      method: 'post'
    }
  },
  getExportCustomers: {
    param: {
      url: `${domain}/weapp/customer/exportCustomers`,
      method: 'post'
    }
  },
  getExportBonus: {
    param: {
      url: `${domain}/weapp/upload/getExportBonus`,
      method: 'post'
    }
  },
  exportHealthCustomersByCid: {
    param: {
      url: `${domain}/weapp/customer/exportHealthCustomersByCid`,
      method: 'post'
    }
  },
  exportHealthInfoByQus: {
    param: {
      url: `${domain}/weapp/customer/exportHealthInfoByQus`,
      method: 'get'
    }
  },
  getAllCustomers: {
    param: {
      url: `${domain}/weapp/customer/all`
    }
  },
  allUserExchange: {
    param: {
      url: `${domain}/weapp/exchange/allUserExchange`
    }
  },
  allUserExchangeExportAll: {
    param: {
      url: `${domain}/weapp/exchange/allUserExchangeExportAll`
    }
  },
  completeUserExchange: {
    param: {
      url: `${domain}/weapp/exchange/completeExchange`,
      method: 'post'
    }
  },
  cancelUserExchange: {
    param: {
      url: `${domain}/weapp/exchange/cancelExchange`,
      method: 'post'
    }
  },
  updateExchangeRecordRemark: {
    param: {
      url: `${domain}/weapp/exchange/updateExchangeRecordRemark`,
      method: 'post'
    }
  },
  getAllBonusInfo: {
    param: {
      url: `${domain}/weapp/customer/getAllBonusInfo`
    }
  },
  getShareList: {
    param: {
      url: `${domain}/weapp/share/getAdminShareInfoList`
    }
  },
  getExchangeList: {
    param: {
      url: `${domain}/weapp/exchange/list`
    }
  },
  addExchange: {
    param: {
      url: `${domain}/weapp/exchange`,
      method: 'post'
    }
  },
  editExchange: {
    param: {
      url: `${domain}/weapp/exchange/edit`,
      method: 'post'
    }
  },
  doExchange: {
    param: {
      url: `${domain}/weapp/exchange/doCustomerExchange`,
      method: 'post'
    }
  },
  addBonus: {
    param: {
      url: `${domain}/weapp/customer/addBonus`,
      method: 'post',
      data: {
        type: 7
      }
    }
  },
  batchAddBonus: {
    param: {
      url: `${domain}/weapp/customer/batchAddBonus`,
      method: 'post'
    }
  },
  changeCompany: {
    param: {
      url: `${domain}/weapp/customer/changeCompanyIdAndName`,
      method: 'post',
      data: {
      }
    }
  },
  getArticleList: {
    param: {
      url: `${domain}/weapp/article/getListByCid`,
      method: 'get',
      data: {

      }
    }
  },
  addArticle: {
    param: {
      url: `${domain}/weapp/article/add`,
      method: 'post',
      data: {

      }
    }
  },
  editArticle: {
    param: {
      url: `${domain}/weapp/article/edit`,
      method: 'post',
      data: {

      }
    }
  },
  removeArticle: {
    param: {
      url: `${domain}/weapp/article/remove`,
      method: 'post',
      data: {

      }
    }
  },
  allReport: {
    param: {
      url: `${domain}/weapp/report/all`,
      method: 'get'
    }
  },
  addReport: {
    param: {
      url: `${domain}/weapp/report/add`,
      method: 'get'
    }
  },
  editReport: {
    param: {
      url: `${domain}/weapp/report/edit`,
      method: 'post'
    }
  },
  removeReport: {
    param: {
      url: `${domain}/weapp/report/remove`,
      method: 'post'
    }
  },
  getMembers: {
    param: {
      url: `${domain}/weapp/members/list`,
      method: 'get'
    }
  },
  updateMember: {
    param: {
      url: `${domain}/weapp/members/update`,
      method: 'post'
    }
  },
  getGrouplist: {
    param: {
      url: `${domain}/weapp/members/grouplist`
    }
  },
  updateRightsGroup: {
    param: {
      url: `${domain}/weapp/members/updategroup`,
      method: 'post'
    }
  },
  addGroup: {
    param: {
      url: `${domain}/weapp/members/addgroup`,
      method: 'post'
    }
  },
  getRightsList: {
    param: {
      url: `${domain}/weapp/members/rightslist`,
      method: 'get'
    }
  },
  addRights: {
    param: {
      url: `${domain}/weapp/members/addrights`,
      method: 'post'
    }
  },
  updateRights: {
    param: {
      url: `${domain}/weapp/members/updaterights`,
      method: 'post'
    }
  },
  addMemberBonus: {
    param: {
      url: `${domain}/weapp/members/addUserMemberBonus`,
      method: 'post'
    }
  },
  getMemberBonusList: {
    param: {
      url: `${domain}/weapp/members/getMemberBonusList`,
      method: 'get'
    }
  },
  getUserMemberRights: {
    param: {
      url: `${domain}/weapp/members/getUserMemberRights`,
      method: 'get'
    }
  },
  addMemberRightsExchange: {
    param: {
      url: `${domain}/weapp/members/addMemberRightsExchange`,
      method: 'post'
    }
  },
  getMemberRightsExchangeList: {
    param: {
      url: `${domain}/weapp/members/getMemberRightsExchangeList`,
      method: 'get'
    }
  },
  exportAllBonusInfo: {
    param: {
      url: `${domain}/weapp/upload/exportAllBonusInfo`,
      method: 'get'
    }
  },
  getAllAdmins: {
    param: {
      url: `${domain}/weapp/admin/list`,
      method: 'get'
    }
  },
  addAdmin: {
    param: {
      url: `${domain}/weapp/admin/add`,
      method: 'post'
    }
  },
  updateAdmin: {
    param: {
      url: `${domain}/weapp/admin/update`,
      method: 'post'
    }
  },
  uploadBackend: {
    param: {
      url: `${domain}/weapp/backend-upload`,
      method: 'post'
    }
  },
  batchUpdateBonusByOpenIds: {
    param: {
      url: `${domain}/weapp/admin/batchUpdateBonusByOpenIds`,
      method: 'post'
    }
  },
  getAllActivityQuestionnairesByType: {
    param: {
      url: `${domain}/weapp/questionnaire/getAllActivityQuestionnairesByType`,
      method: 'get'
    }
  },
  createQuestionnaire: {
    param: {
      url: `${domain}/weapp/questionnaire/createQuestionnaire`,
      method: 'post'
    }
  },
  updateQuestionnaire: {
    param: {
      url: `${domain}/weapp/questionnaire/updateQuestionnaire`,
      method: 'post'
    }
  },

  hasValidQuestionnaire: {
    param: {
      url: `${domain}/weapp/questionnaire/hasValidQuestionnaire`,
      method: 'get'
    }
  }


})
