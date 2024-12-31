// Depends on tencentcloud-sdk-nodejs version 4.0.3 or higher

const tencentcloud = require("./tencentcloud/index");

  const SmsClient = tencentcloud.sms.v20190711.Client;

  const retData = {
    checkNo:'',
    success:false,
    errorMsg:'未知短信发送错误'
  }
  const clientConfig = {
    credential: {
      secretId: "AKIDc4LN8vsHtfU2Jdhe9M9AzXAcoof3BXqx",
      secretKey: "99092vXrc6JHJ6tQzXwA7eu0RbdNlsOf",
    },
    region: "",
    profile: {
      httpProfile: {
        endpoint: "sms.tencentcloudapi.com",
      },
    },
  };
  const client = new SmsClient(clientConfig);



function getRandom(n) {
  const arr = [];
  for(let i = 0; i < n; i++){
      arr.push(Math.floor(Math.random()*10))
  }
  return arr.join('')
}

async function getCheckNo(phone){
  const checkNo = getRandom(4);
  const params = {
      "PhoneNumberSet": [
          "+86"+phone
      ],
      "TemplateID": "878082",
      "Sign": "健康促进计划",
      "TemplateParamSet": [
          checkNo
      ],
      "SmsSdkAppid": "1400489557"
  };
  const result = await client.SendSms(params)
  // console.log('result :', result);
  if(result.SendStatusSet && result.SendStatusSet[0] && result.SendStatusSet[0].Code == 'Ok'){
      if(result.SendStatusSet[0].Code == 'Ok'){
        retData.success = true;
        retData.checkNo = checkNo
      }else{
        retData.errorMsg = result.SendStatusSet[0].Message
      }
  }
  return retData
}

module.exports = {
    getCheckNo:getCheckNo
}




// function testDemo(phone){
//   const checkNo = getRandom(4);
//   const params = {
//       "PhoneNumberSet": [
//           "+86"+phone
//       ],
//       "TemplateID": "878082",
//       "Sign": "健康促进计划",
//       "TemplateParamSet": [
//           checkNo
//       ],
//       "SmsSdkAppid": "1400489557"
//   };
//   client.SendSms(params).then(function(result){
//     if(result.SendStatusSet && result.SendStatusSet[0] && result.SendStatusSet[0].Code == 'Ok'){
//       if(result.SendStatusSet[0].Code == 'Ok'){
//         retData.success = true;
//         retData.checkNo = checkNo
//       }else{
//         retData.errorMsg = result.SendStatusSet[0].Message
//       }
//     }
//   })
  
// }
// try{
//   testDemo('18521068045')
// }catch(e){
//   console.error(e)
// }

