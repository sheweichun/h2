

-- 问卷 社保与个人养老——问卷调查

insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(80,2,true,'您的性别','',false);
insert into cQuestionnaireOption(item_id,value,name) values(80,1,'男');
insert into cQuestionnaireOption(item_id,value,name) values(80,0,'女');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(81,2,true,'您的年龄','',false);
insert into cQuestionnaireOption(item_id,value,name) values(81,0,'18-25岁');
insert into cQuestionnaireOption(item_id,value,name) values(81,1,'26-35岁');
insert into cQuestionnaireOption(item_id,value,name) values(81,2,'36-45岁');
insert into cQuestionnaireOption(item_id,value,name) values(81,3,'46以上');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(82,2,true,'您的婚姻状况','',false);
insert into cQuestionnaireOption(item_id,value,name) values(82,0,'未婚');
insert into cQuestionnaireOption(item_id,value,name) values(82,1,'已婚');
-- 问题4: 您是否有子女
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(83,2,true,'您是否有子女','',false);
insert into cQuestionnaireOption(item_id,value,name) values(83,0,'0个');
insert into cQuestionnaireOption(item_id,value,name) values(83,1,'1个');
insert into cQuestionnaireOption(item_id,value,name) values(83,2,'2个');
insert into cQuestionnaireOption(item_id,value,name) values(83,3,'3个及以上');

-- 问题5: 社保养老金了解程度
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(84,2,true,'您对社保养老金（基本养老保险）的覆盖范围和替代率了解程度如何','',false);
insert into cQuestionnaireOption(item_id,value,name) values(84,0,'非常了解');
insert into cQuestionnaireOption(item_id,value,name) values(84,1,'大致了解');
insert into cQuestionnaireOption(item_id,value,name) values(84,2,'略有耳闻');
insert into cQuestionnaireOption(item_id,value,name) values(84,3,'完全不了解');

-- 问题6: 预计退休经济来源（多选）
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(85,3,true,'您预计退休后的主要经济来源是','',true);
insert into cQuestionnaireOption(item_id,value,name) values(85,0,'社保养老金');
insert into cQuestionnaireOption(item_id,value,name) values(85,1,'个人储蓄或投资');
insert into cQuestionnaireOption(item_id,value,name) values(85,2,'商业养老保险金');
insert into cQuestionnaireOption(item_id,value,name) values(85,3,'子女赡养');
insert into cQuestionnaireOption(item_id,value,name) values(85,4,'继续工作收入');
insert into cQuestionnaireOption(item_id,value,name) values(85,5,'其他（如房产租金等）');

-- 问题7: 是否配置商业养老保险
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(86,2,true,'您是否已配置商业养老保险（如年金险、增额终身寿险等）','',false);
insert into cQuestionnaireOption(item_id,value,name) values(86,0,'是');
insert into cQuestionnaireOption(item_id,value,name) values(86,1,'否');

-- 问题8: 商业保险关注因素（多选）
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(87,3,true,'配置商业养老保险，您最关注的因素是','',true);
insert into cQuestionnaireOption(item_id,value,name) values(87,0,'长期收益稳定性');
insert into cQuestionnaireOption(item_id,value,name) values(87,1,'资金灵活性（如部分领取功能）');
insert into cQuestionnaireOption(item_id,value,name) values(87,2,'附加服务（如高端养老社区入住资格）');
insert into cQuestionnaireOption(item_id,value,name) values(87,3,'保险公司品牌与安全性');
insert into cQuestionnaireOption(item_id,value,name) values(87,4,'保单传承功能');

-- 问题9: 倾向养老方式（多选）
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(88,3,true,'您退休后更倾向哪种养老方式','',true);
insert into cQuestionnaireOption(item_id,value,name) values(88,0,'居家养老（依靠家人或保姆）');
insert into cQuestionnaireOption(item_id,value,name) values(88,1,'社区互助养老（如老年活动中心）');
insert into cQuestionnaireOption(item_id,value,name) values(88,2,'中高端养老社区');
insert into cQuestionnaireOption(item_id,value,name) values(88,3,'普通养老院');
insert into cQuestionnaireOption(item_id,value,name) values(88,4,'其他');

-- 问题10: 是否了解养老社区
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(89,2,true,'您是否了解保险公司推出的中高端养老社区','',false);
insert into cQuestionnaireOption(item_id,value,name) values(89,0,'非常了解');
insert into cQuestionnaireOption(item_id,value,name) values(89,1,'大致了解');
insert into cQuestionnaireOption(item_id,value,name) values(89,2,'听说过但不清楚细节');
insert into cQuestionnaireOption(item_id,value,name) values(89,3,'完全不了解');

-- 问题11: 养老信息渠道（多选）
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(90,3,true,'您通常通过哪些渠道获取养老相关信息','',true);
insert into cQuestionnaireOption(item_id,value,name) values(90,0,'政府官方网站');
insert into cQuestionnaireOption(item_id,value,name) values(90,1,'社交媒体平台');
insert into cQuestionnaireOption(item_id,value,name) values(90,2,'专业金融/保险机构');
insert into cQuestionnaireOption(item_id,value,name) values(90,3,'朋友/家人');
insert into cQuestionnaireOption(item_id,value,name) values(90,4,'电视/广播/报纸等传统媒体');

-- 问题12: 资讯是否满足需求
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(91,2,true,'您认为当前获取到的养老资讯是否足够满足您的需求','',false);
insert into cQuestionnaireOption(item_id,value,name) values(91,0,'完全满足');
insert into cQuestionnaireOption(item_id,value,name) values(91,1,'基本满足');
insert into cQuestionnaireOption(item_id,value,name) values(91,2,'不太满足');
insert into cQuestionnaireOption(item_id,value,name) values(91,3,'完全不满足');

-- 问题13: 养老焦虑原因（多选）
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(92,3,true,'面对未来的养老生活，您是否感到焦虑，主要原因是','',true);
insert into cQuestionnaireOption(item_id,value,name) values(92,0,'养老金不足，担心生活质量下降');
insert into cQuestionnaireOption(item_id,value,name) values(92,1,'医疗保障不确定，担心健康问题');
insert into cQuestionnaireOption(item_id,value,name) values(92,2,'养老服务与设施不足，担心生活不便');
insert into cQuestionnaireOption(item_id,value,name) values(92,3,'对个人养老金投资缺乏信心');
insert into cQuestionnaireOption(item_id,value,name) values(92,4,'不焦虑，对养老生活很有信心');
insert into cQuestionnaireOption(item_id,value,name) values(92,5,'其他');

-- 问题14: 提升养老水平因素（多选）
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(93,3,true,'您认为以下哪些因素能够提升您的养老水平或改善您的养老焦虑','',true);
insert into cQuestionnaireOption(item_id,value,name) values(93,0,'增加个人养老金储蓄');
insert into cQuestionnaireOption(item_id,value,name) values(93,1,'了解更多养老资讯，做好规划');
insert into cQuestionnaireOption(item_id,value,name) values(93,2,'政府提供更多养老保障政策');
insert into cQuestionnaireOption(item_id,value,name) values(93,3,'提升个人健康管理水平');
insert into cQuestionnaireOption(item_id,value,name) values(93,4,'建立更完善的养老服务体系');

-- 问题15: 是否需要专业建议
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(94,2,true,'您是否希望有专业的保险从业人员为您进行个人养老规划建议','',false);
insert into cQuestionnaireOption(item_id,value,name) values(94,0,'是');
insert into cQuestionnaireOption(item_id,value,name) values(94,1,'否');




insert into cQuestionnaireAndItem(qid,item_id) values(3,80);
insert into cQuestionnaireAndItem(qid,item_id) values(3,81);
insert into cQuestionnaireAndItem(qid,item_id) values(3,82);
insert into cQuestionnaireAndItem(qid,item_id) values(3,83);
insert into cQuestionnaireAndItem(qid,item_id) values(3,84);
insert into cQuestionnaireAndItem(qid,item_id) values(3,85);
insert into cQuestionnaireAndItem(qid,item_id) values(3,86);
insert into cQuestionnaireAndItem(qid,item_id) values(3,87);
insert into cQuestionnaireAndItem(qid,item_id) values(3,88);
insert into cQuestionnaireAndItem(qid,item_id) values(3,89);
insert into cQuestionnaireAndItem(qid,item_id) values(3,90);
insert into cQuestionnaireAndItem(qid,item_id) values(3,91);
insert into cQuestionnaireAndItem(qid,item_id) values(3,92);
insert into cQuestionnaireAndItem(qid,item_id) values(3,93);
insert into cQuestionnaireAndItem(qid,item_id) values(3,94);


-- 问卷： 科学减重，健康享瘦——调研问卷




-- 问题1-3已存在，从问题4开始

INSERT INTO cQuestionnaireItem(id,type,required,title,description,is_mult) VALUES(99,2,true,'您目前的运动频率是？（单选）','',false);
INSERT INTO cQuestionnaireOption(item_id,value,name) VALUES(99,0,'几乎不运动');
INSERT INTO cQuestionnaireOption(item_id,value,name) VALUES(99,1,'每周1-2次');
INSERT INTO cQuestionnaireOption(item_id,value,name) VALUES(99,2,'每周3-4次');
INSERT INTO cQuestionnaireOption(item_id,value,name) VALUES(99,3,'每周5次及以上');

INSERT INTO cQuestionnaireItem(id,type,required,title,description,is_mult) VALUES(100,3,true,'您更倾向于哪种运动方式？（多选）','',true);
INSERT INTO cQuestionnaireOption(item_id,value,name) VALUES(100,0,'有氧运动（如跑步、跳绳）');
INSERT INTO cQuestionnaireOption(item_id,value,name) VALUES(100,1,'力量训练（如哑铃、弹力带）');
INSERT INTO cQuestionnaireOption(item_id,value,name) VALUES(100,2,'瑜伽/普拉提');
INSERT INTO cQuestionnaireOption(item_id,value,name) VALUES(100,3,'户外活动（如飞盘、骑行）');
INSERT INTO cQuestionnaireOption(item_id,value,name) VALUES(100,4,'球类运动');

INSERT INTO cQuestionnaireItem(id,type,required,title,description,is_mult) VALUES(101,3,true,'您认为减重过程中最大的阻碍是？（多选）','',true);
INSERT INTO cQuestionnaireOption(item_id,value,name) VALUES(101,0,'缺乏时间');
INSERT INTO cQuestionnaireOption(item_id,value,name) VALUES(101,1,'难以坚持');
INSERT INTO cQuestionnaireOption(item_id,value,name) VALUES(101,2,'饮食控制困难');
INSERT INTO cQuestionnaireOption(item_id,value,name) VALUES(101,3,'缺乏科学指导');
INSERT INTO cQuestionnaireOption(item_id,value,name) VALUES(101,4,'运动设施不足');

INSERT INTO cQuestionnaireItem(id,type,required,title,description,is_mult) VALUES(102,2,true,'您是否使用过健康行为打卡类工具（如小程序）？（单选）','',false);
INSERT INTO cQuestionnaireOption(item_id,value,name) VALUES(102,0,'是，经常使用');
INSERT INTO cQuestionnaireOption(item_id,value,name) VALUES(102,1,'偶尔尝试');
INSERT INTO cQuestionnaireOption(item_id,value,name) VALUES(102,2,'从未使用');

INSERT INTO cQuestionnaireItem(id,type,required,title,description,is_mult) VALUES(103,3,true,'若有一款健康打卡小程序，以下哪些功能最吸引您？（多选）','',true);
INSERT INTO cQuestionnaireOption(item_id,value,name) VALUES(103,0,'每日运动/饮食记录');
INSERT INTO cQuestionnaireOption(item_id,value,name) VALUES(103,1,'每日健康习惯打卡');
INSERT INTO cQuestionnaireOption(item_id,value,name) VALUES(103,2,'社群互动与排名');
INSERT INTO cQuestionnaireOption(item_id,value,name) VALUES(103,3,'积分兑换礼品（如跳绳、瑜伽带）');

INSERT INTO cQuestionnaireItem(id,type,required,title,description,is_mult) VALUES(104,3,true,'您希望通过打卡行为获得哪些健康礼品？（多选）','',true);
INSERT INTO cQuestionnaireOption(item_id,value,name) VALUES(104,0,'无绳跳绳');
INSERT INTO cQuestionnaireOption(item_id,value,name) VALUES(104,1,'瑜伽弹力带');
INSERT INTO cQuestionnaireOption(item_id,value,name) VALUES(104,2,'户外飞盘');
INSERT INTO cQuestionnaireOption(item_id,value,name) VALUES(104,3,'运动水壶');
INSERT INTO cQuestionnaireOption(item_id,value,name) VALUES(104,4,'健康食谱手册');

INSERT INTO cQuestionnaireItem(id,type,required,title,description,is_mult) VALUES(105,3,true,'您认为科学减重的核心是？（多选）','',true);
INSERT INTO cQuestionnaireOption(item_id,value,name) VALUES(105,0,'合理饮食');
INSERT INTO cQuestionnaireOption(item_id,value,name) VALUES(105,1,'规律运动');
INSERT INTO cQuestionnaireOption(item_id,value,name) VALUES(105,2,'充足睡眠');
INSERT INTO cQuestionnaireOption(item_id,value,name) VALUES(105,3,'心理调节');
INSERT INTO cQuestionnaireOption(item_id,value,name) VALUES(105,4,'长期坚持');

INSERT INTO cQuestionnaireItem(id,type,required,title,description,is_mult) VALUES(106,2,true,'您是否有兴趣通过社群活动打卡培养您的运动习惯？（单选）','',false);
INSERT INTO cQuestionnaireOption(item_id,value,name) VALUES(106,0,'非常愿意');
INSERT INTO cQuestionnaireOption(item_id,value,name) VALUES(106,1,'可以考虑');
INSERT INTO cQuestionnaireOption(item_id,value,name) VALUES(106,2,'暂不感兴趣');

INSERT INTO cQuestionnaireItem(id,type,required,title,description,is_mult) VALUES(107,2,true,'您是否愿意通过打卡累计积分兑换健康礼品？（单选）','',false);
INSERT INTO cQuestionnaireOption(item_id,value,name) VALUES(107,0,'愿意，能激励我坚持');
INSERT INTO cQuestionnaireOption(item_id,value,name) VALUES(107,1,'视礼品吸引力而定');
INSERT INTO cQuestionnaireOption(item_id,value,name) VALUES(107,2,'不感兴趣');

INSERT INTO cQuestionnaireItem(id,type,required,title,description,is_mult) VALUES(108,3,true,'您希望在职场中有以下哪些健康活动？（多选）','',true);
INSERT INTO cQuestionnaireOption(item_id,value,name) VALUES(108,0,'午休时间健身课程');
INSERT INTO cQuestionnaireOption(item_id,value,name) VALUES(108,1,'健康挑战赛（如步数挑战、减重挑战）');
INSERT INTO cQuestionnaireOption(item_id,value,name) VALUES(108,2,'运动相关的团队建设活动');
INSERT INTO cQuestionnaireOption(item_id,value,name) VALUES(108,3,'定期邀请专家进行健康知识讲座');


insert into cQuestionnaireAndItem(qid,item_id) values(4,80);
insert into cQuestionnaireAndItem(qid,item_id) values(4,81);
insert into cQuestionnaireAndItem(qid,item_id) values(4,82);
insert into cQuestionnaireAndItem(qid,item_id) values(4,83);
insert into cQuestionnaireAndItem(qid,item_id) values(4,99);
insert into cQuestionnaireAndItem(qid,item_id) values(4,100);
insert into cQuestionnaireAndItem(qid,item_id) values(4,101);
insert into cQuestionnaireAndItem(qid,item_id) values(4,102);
insert into cQuestionnaireAndItem(qid,item_id) values(4,103);
insert into cQuestionnaireAndItem(qid,item_id) values(4,104);
insert into cQuestionnaireAndItem(qid,item_id) values(4,105);
insert into cQuestionnaireAndItem(qid,item_id) values(4,106);
insert into cQuestionnaireAndItem(qid,item_id) values(4,107);
insert into cQuestionnaireAndItem(qid,item_id) values(4,108);