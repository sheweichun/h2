```社保与个人养老——问卷调查 基本信息 1、您的性别： □ 男 □ 女 2、您的年龄： □ 18-25岁 □ 26-35岁 □ 36-45岁 □ 46岁以上 3、您的婚姻状况： □ 未婚 □ 已婚 4、您是否有子女： □ 0个 □ 1个 □ 2个 □ 3个及以上 5、您对社保养老金（基本养老保险）的覆盖范围和替代率了解程度如何？ □ 非常了解 □ 大致了解 □ 略有耳闻 □ 完全不了解 6、您预计退休后的主要经济来源是？（多选题） □ 社保养老金 □ 个人储蓄或投资 □ 商业养老保险金 □ 子女赡养 □ 继续工作收入 □ 其他（如房产租金等） 7、您是否已配置商业养老保险（如年金险、增额终身寿险等）？ ○ 是 ○ 否 8、配置商业养老保险，您最关注的因素是？（多选题） □ 长期收益稳定性 □ 资金灵活性（如部分领取功能） □ 附加服务（如高端养老社区入住资格） □ 保险公司品牌与安全性 □ 保单传承功能 9、您退休后更倾向哪种养老方式？（多选题） □ 居家养老（依靠家人或保姆） □ 社区互助养老（如老年活动中心） □ 中高端养老社区 □ 普通养老院 □ 其他 10、您是否了解保险公司推出的中高端养老社区？ □ 非常了解 □ 大致了解 □ 听说过但不清楚细节 □ 完全不了解 11、您通常通过哪些渠道获取养老相关信息？（多选） □ 政府官方网站 □ 社交媒体平台 □ 专业金融/保险机构 □ 朋友/家人 □ 电视/广播/报纸等传统媒体 12、您认为当前获取到的养老资讯是否足够满足您的需求？ □ 完全满足 □ 基本满足 □ 不太满足 □ 完全不满足 13、面对未来的养老生活，您是否感到焦虑，主要原因是？（多选） □ 养老金不足，担心生活质量下降 □ 医疗保障不确定，担心健康问题 □ 养老服务与设施不足，担心生活不便 □ 对个人养老金投资缺乏信心 □ 不焦虑，对养老生活很有信心 □ 其他 14、您认为以下哪些因素能够提升您的养老水平或改善您的养老焦虑（多选） □ 增加个人养老金储蓄 □ 了解更多养老资讯，做好规划 □ 政府提供更多养老保障政策 □ 提升个人健康管理水平 □ 建立更完善的养老服务体系 15) 您是否希望有专业的保险从业人员为您进行个人养老规划建议？ □ 是 □ 否```
这是问卷信息，需要把它转成sql，以下是前面3个问题转化出来的
```
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
```
请输出完整的，其中cQuestionnaireItem的中type可以取值1,2,3; 1-input，2-radio，3-checkbox, 4-textarea,5-attachment,is_mult表示是否多选







```科学减重，健康享瘦——调研问卷
基本信息
1、您的性别：
□ 男 □ 女 
2、您的年龄：
□ 18-25岁 □ 26-35岁 □ 36-45岁 □ 46岁以上
3、您的婚姻状况：
□ 未婚 □ 已婚 
4、您是否有子女：
□ 0个
□ 1个
□ 2个
□ 3个及以上
5、您目前的运动频率是？（单选）
□ 几乎不运动
□ 每周1-2次
□ 每周3-4次
□ 每周5次及以上
6、您更倾向于哪种运动方式？（多选）
□ 有氧运动（如跑步、跳绳）
□ 力量训练（如哑铃、弹力带）
□ 瑜伽/普拉提
□ 户外活动（如飞盘、骑行）
□ 球类运动
7、您认为减重过程中最大的阻碍是？（多选）
□ 缺乏时间
□ 难以坚持
□ 饮食控制困难
□ 缺乏科学指导
□ 运动设施不足
8、您是否使用过健康行为打卡类工具（如小程序）？（单选）
□ 是，经常使用
□ 偶尔尝试
□ 从未使用
9、若有一款健康打卡小程序，以下哪些功能最吸引您？（多选）
□ 每日运动/饮食记录
□ 每日健康习惯打卡
□ 社群互动与排名
□ 积分兑换礼品（如跳绳、瑜伽带）
10、您希望通过打卡行为获得哪些健康礼品？（多选）
□ 无绳跳绳
□ 瑜伽弹力带
□ 户外飞盘
□ 运动水壶
□ 健康食谱手册
11、您认为科学减重的核心是？（多选）
□ 合理饮食
□ 规律运动
□ 充足睡眠
□ 心理调节
□ 长期坚持
12、您是否有兴趣通过社群活动打卡培养您的运动习惯？（单选）
□ 非常愿意
□ 可以考虑
□ 暂不感兴趣
13、您是否愿意通过打卡累计积分兑换健康礼品？（单选）
□ 愿意，能激励我坚持
□ 视礼品吸引力而定
□ 不感兴趣
14、您希望在职场中有以下哪些健康活动？（多选）
□ 午休时间健身课程
□ 健康挑战赛（如步数挑战、减重挑战）
□ 运动相关的团队建设活动
□ 定期邀请专家进行健康知识讲座```
这是问卷信息，需要把它转成sql，以下是前面3个问题转化出来的
```
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(95,2,true,'您的性别','',false);
insert into cQuestionnaireOption(item_id,value,name) values(95,1,'男');
insert into cQuestionnaireOption(item_id,value,name) values(95,0,'女');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(96,2,true,'您的年龄','',false);
insert into cQuestionnaireOption(item_id,value,name) values(96,0,'18-25岁');
insert into cQuestionnaireOption(item_id,value,name) values(96,1,'26-35岁');
insert into cQuestionnaireOption(item_id,value,name) values(96,2,'36-45岁');
insert into cQuestionnaireOption(item_id,value,name) values(96,3,'46以上');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(97,2,true,'您的婚姻状况','',false);
insert into cQuestionnaireOption(item_id,value,name) values(97,0,'未婚');
insert into cQuestionnaireOption(item_id,value,name) values(97,1,'已婚');
```
请输出完整的，其中cQuestionnaireItem的中type可以取值1,2,3; 1-input，2-radio，3-checkbox, 4-textarea,5-attachment,is_mult表示是否多选