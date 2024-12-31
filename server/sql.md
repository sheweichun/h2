create table cBonusTest as select * from cBonusInfo as a left join (select uid as guid,max(create_time) as start_time from cBonusInfo where type_name like '%年度积分清零' group by uid) as b on a.uid = b.guid

转为临时表 cBonusTest




//不需要这条 select sum(add_bonus) as tbonus,uid as buid from cBonusTest where create_time > start_time and add_bonus > 0 group by buid

select sum(add_bonus) as tbonus,uid as buid from cBonusTest where (create_time > start_time or start_time is null) and add_bonus > 0 group by buid  

start_time is null 说明当前用户没有被执行积分清零操作 应该是清零后加入的






update cUserInfo as a inner join(
    select sum(add_bonus) as tbonus,uid as buid from cBonusTest where (create_time > start_time or start_time is null) and add_bonus > 0 group by buid  
) as b on a.uid = b.buid set a.total_bonus = b.tbonus




//新的sql

ALTER TABLE `cAuth`.`cQuestionnaireItem` 
CHANGE COLUMN `title` `title` VARCHAR(128) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NOT NULL COMMENT '题目标题' ,
CHANGE COLUMN `description` `description` VARCHAR(256) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NOT NULL COMMENT '题目说明' ;

ALTER TABLE `cAuth`.`cQuestionnaireOption` 
ADD COLUMN `name` VARCHAR(64) NULL AFTER `value`;


ALTER TABLE `cAuth`.`cQuestionnaireOption` 
CHANGE COLUMN `name` `name` VARCHAR(64) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NULL DEFAULT NULL ;

ALTER TABLE `cAuth`.`cQuestionnaireAns` 
CHANGE COLUMN `value` `value` VARCHAR(64) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NOT NULL COMMENT '用户自定义内容' ;

ALTER TABLE `cAuth`.`cQuestionnaire` 
CHANGE COLUMN `name` `name` VARCHAR(256) CHARACTER SET 'utf8' COLLATE 'utf8_bin' NOT NULL COMMENT '问卷名称' ;

ALTER TABLE `cAuth`.`cQuestionnaireAns` 
ADD COLUMN `oid` BIGINT NULL COMMENT '用户选项id' AFTER `value`,
ADD COLUMN `uid` BIGINT NULL COMMENT '用户id' AFTER `oid`;

ALTER TABLE `cAuth`.`cQuestionnaireAns` 
DROP COLUMN `id`,
CHANGE COLUMN `uid` `uid` BIGINT NOT NULL COMMENT '用户id' ,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`uid`, `qid`, `item_id`);
;
ALTER TABLE `cAuth`.`cQuestionnaireOption` 
CHANGE COLUMN `value` `value` VARCHAR(32) NOT NULL COMMENT '选项内容' ;






//表单项类型
insert into cQuestionnaireType(name) values("input");
insert into cQuestionnaireType(name) values("radio");
insert into cQuestionnaireType(name) values("checkbox");


//问题
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(1,2,true,'你的性别','',false);

insert into cQuestionnaireOption(item_id,value,name) values(1,1,'男');
insert into cQuestionnaireOption(item_id,value,name) values(1,0,'女');

insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(2,1,true,'你的年龄','',false);
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(3,2,true,'你的婚姻状态','',false);
insert into cQuestionnaireOption(item_id,value,name) values(3,0,'未婚');
insert into cQuestionnaireOption(item_id,value,name) values(3,1,'已婚');
insert into cQuestionnaireOption(item_id,value,name) values(3,2,'其他');


insert into cQuestionnaire(id,name ,start,end) values(1,'员工健康问卷',null,null);
insert into cQuestionnaireAndItem(qid,item_id) values(1,1);
insert into cQuestionnaireAndItem(qid,item_id) values(1,2);
insert into cQuestionnaireAndItem(qid,item_id) values(1,3);


//全部问题

insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(1,1,true,'您的姓名','',false);
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(2,2,true,'您的性别','',false);
insert into cQuestionnaireOption(item_id,value,name) values(2,1,'男');
insert into cQuestionnaireOption(item_id,value,name) values(2,0,'女');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(3,1,true,'您的年龄','',false);
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(4,2,true,'您的婚姻状态','',false);
insert into cQuestionnaireOption(item_id,value,name) values(4,0,'未婚');
insert into cQuestionnaireOption(item_id,value,name) values(4,1,'已婚');
insert into cQuestionnaireOption(item_id,value,name) values(4,2,'其他');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(5,2,true,'您的子女情况','',false);
insert into cQuestionnaireOption(item_id,value,name) values(5,0,'0个');
insert into cQuestionnaireOption(item_id,value,name) values(5,1,'1个');
insert into cQuestionnaireOption(item_id,value,name) values(5,2,'2个及以上');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(6,2,true,'您所在的行业','',false);
insert into cQuestionnaireOption(item_id,value,name) values(6,0,'制造业');
insert into cQuestionnaireOption(item_id,value,name) values(6,1,'汽车行业');
insert into cQuestionnaireOption(item_id,value,name) values(6,2,'信息行业');
insert into cQuestionnaireOption(item_id,value,name) values(6,3,'医药行业');
insert into cQuestionnaireOption(item_id,value,name) values(6,4,'房地产行业');
insert into cQuestionnaireOption(item_id,value,name) values(6,5,'电子行业');
insert into cQuestionnaireOption(item_id,value,name) values(6,6,'金融行业');
insert into cQuestionnaireOption(item_id,value,name) values(6,7,'批发零售业');
insert into cQuestionnaireOption(item_id,value,name) values(6,8,'其他');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(7,2,true,'您所在企业的性质为','',false);
insert into cQuestionnaireOption(item_id,value,name) values(7,0,'外资');
insert into cQuestionnaireOption(item_id,value,name) values(7,1,'中外合资');
insert into cQuestionnaireOption(item_id,value,name) values(7,2,'国企或央企');
insert into cQuestionnaireOption(item_id,value,name) values(7,3,'私营');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(8,1,true,'您的职场所在地','',false);
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(9,2,true,'您的办公地点多为','',false);
insert into cQuestionnaireOption(item_id,value,name) values(9,0,'办公室');
insert into cQuestionnaireOption(item_id,value,name) values(9,1,'常年外出');
insert into cQuestionnaireOption(item_id,value,name) values(9,2,'车间或工厂');
insert into cQuestionnaireOption(item_id,value,name) values(9,3,'其他');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(10,2,true,'您是否抽烟','',false);
insert into cQuestionnaireOption(item_id,value,name) values(10,0,'是');
insert into cQuestionnaireOption(item_id,value,name) values(10,1,'否');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(11,2,true,'您是否喝酒','',false);
insert into cQuestionnaireOption(item_id,value,name) values(11,0,'是');
insert into cQuestionnaireOption(item_id,value,name) values(11,1,'否');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(12,2,true,'您的起床时间普遍为','',false);
insert into cQuestionnaireOption(item_id,value,name) values(12,0,'06:00前');
insert into cQuestionnaireOption(item_id,value,name) values(12,1,'06:00-08:00');
insert into cQuestionnaireOption(item_id,value,name) values(12,2,'08:00-10:00');
insert into cQuestionnaireOption(item_id,value,name) values(12,3,'10:00-12:00');
insert into cQuestionnaireOption(item_id,value,name) values(12,4,'12:00以后');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(13,2,true,'您的入寝时间普遍为','',false);
insert into cQuestionnaireOption(item_id,value,name) values(13,0,'20:00-22:30');
insert into cQuestionnaireOption(item_id,value,name) values(13,1,'10:30-23:59');
insert into cQuestionnaireOption(item_id,value,name) values(13,2,'23:59以后');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(14,2,true,'您的睡眠时间平均为','',false);
insert into cQuestionnaireOption(item_id,value,name) values(14,0,'3-5小时');
insert into cQuestionnaireOption(item_id,value,name) values(14,2,'5-7小时');
insert into cQuestionnaireOption(item_id,value,name) values(14,3,'7-9小时');
insert into cQuestionnaireOption(item_id,value,name) values(14,4,'9小时以上');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(15,2,true,'您是否有健康行为计划','',false);
insert into cQuestionnaireOption(item_id,value,name) values(15,0,'是');
insert into cQuestionnaireOption(item_id,value,name) values(15,1,'否');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(16,2,true,'您是否完成定制的健康行为计划','',false);
insert into cQuestionnaireOption(item_id,value,name) values(16,0,'是');
insert into cQuestionnaireOption(item_id,value,name) values(16,1,'否');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(17,2,true,'您BMI体脂指数是否在18.5-23.9之间？BMI=体重千克数/身高/身高','',false);
insert into cQuestionnaireOption(item_id,value,name) values(17,0,'是');
insert into cQuestionnaireOption(item_id,value,name) values(17,1,'否');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(18,2,true,'您的运动频次','',false);
insert into cQuestionnaireOption(item_id,value,name) values(18,0,'超过5次/周');
insert into cQuestionnaireOption(item_id,value,name) values(18,1,'3-5次/周');
insert into cQuestionnaireOption(item_id,value,name) values(18,2,'2-3次/周');
insert into cQuestionnaireOption(item_id,value,name) values(18,3,'0-1次/周');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(19,3,true,'您认为自己常有的健康烦恼为(多选)','',true);
insert into cQuestionnaireOption(item_id,value,name) values(19,0,'失眠');
insert into cQuestionnaireOption(item_id,value,name) values(19,1,'脱发');
insert into cQuestionnaireOption(item_id,value,name) values(19,2,'肥胖');
insert into cQuestionnaireOption(item_id,value,name) values(19,3,'脊椎不适');
insert into cQuestionnaireOption(item_id,value,name) values(19,4,'肠胃不适');
insert into cQuestionnaireOption(item_id,value,name) values(19,5,'身体沉重');
insert into cQuestionnaireOption(item_id,value,name) values(19,6,'免疫力低下');
insert into cQuestionnaireOption(item_id,value,name) values(19,7,'便秘');
insert into cQuestionnaireOption(item_id,value,name) values(19,8,'头疼头晕');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(20,3,true,'您认为导致亚健康的原因有','',true);
insert into cQuestionnaireOption(item_id,value,name) values(20,0,'情绪压力大');
insert into cQuestionnaireOption(item_id,value,name) values(20,1,'休息时间不够');
insert into cQuestionnaireOption(item_id,value,name) values(20,2,'不健康生活习惯');
insert into cQuestionnaireOption(item_id,value,name) values(20,3,'活力状态低');
insert into cQuestionnaireOption(item_id,value,name) values(20,4,'缺少运动');
insert into cQuestionnaireOption(item_id,value,name) values(20,5,'经济压力大');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(21,2,true,'您体检的频次','',false);
insert into cQuestionnaireOption(item_id,value,name) values(21,0,'一年一次');
insert into cQuestionnaireOption(item_id,value,name) values(21,1,'两年一次');
insert into cQuestionnaireOption(item_id,value,name) values(21,2,'两年以上没有体检');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(22,2,true,'您洁牙的频次','',false);
insert into cQuestionnaireOption(item_id,value,name) values(22,0,'半年一次');
insert into cQuestionnaireOption(item_id,value,name) values(22,1,'一年一次');
insert into cQuestionnaireOption(item_id,value,name) values(22,2,'两年一次');
insert into cQuestionnaireOption(item_id,value,name) values(22,3,'两年以上没有洗牙');
insert into cQuestionnaireOption(item_id,value,name) values(22,4,'从未洗牙');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(23,2,true,'您参与企业组织的健康活动频次','',false);
insert into cQuestionnaireOption(item_id,value,name) values(23,0,'从未参加过');
insert into cQuestionnaireOption(item_id,value,name) values(23,1,'1-2次/年');
insert into cQuestionnaireOption(item_id,value,name) values(23,2,'3-5次/年');
insert into cQuestionnaireOption(item_id,value,name) values(23,3,'5次/年以上');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(24,2,true,'您的健康状况打分（5分表示很健康，1分表示极度不健康）','',false);
insert into cQuestionnaireOption(item_id,value,name) values(24,0,'1');
insert into cQuestionnaireOption(item_id,value,name) values(24,1,'2');
insert into cQuestionnaireOption(item_id,value,name) values(24,2,'3');
insert into cQuestionnaireOption(item_id,value,name) values(24,3,'4');
insert into cQuestionnaireOption(item_id,value,name) values(24,4,'5');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(25,2,true,'（上一题3分及以下的需要填写此问题）您的问题为','',false);
insert into cQuestionnaireOption(item_id,value,name) values(25,0,'呼吸道疾病');
insert into cQuestionnaireOption(item_id,value,name) values(25,1,'内分泌类疾病');
insert into cQuestionnaireOption(item_id,value,name) values(25,2,'消化系统疾病');
insert into cQuestionnaireOption(item_id,value,name) values(25,3,'骨关节疾病');
insert into cQuestionnaireOption(item_id,value,name) values(25,4,'颈椎腰椎疾病');
insert into cQuestionnaireOption(item_id,value,name) values(25,5,'心脑血管疾病：例如高血压，冠心病等');
insert into cQuestionnaireOption(item_id,value,name) values(25,6,'血糖血脂类：糖尿病、高血脂等');
insert into cQuestionnaireOption(item_id,value,name) values(25,7,'肿瘤、癌症');
insert into cQuestionnaireOption(item_id,value,name) values(25,8,'精神类疾病抑郁症');
insert into cQuestionnaireOption(item_id,value,name) values(25,9,'其他');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(26,3,true,'您主要忧虑的问题(多选)','',true);
insert into cQuestionnaireOption(item_id,value,name) values(26,0,'生理健康');
insert into cQuestionnaireOption(item_id,value,name) values(26,1,'心理健康');
insert into cQuestionnaireOption(item_id,value,name) values(26,2,'生活方式行为');
insert into cQuestionnaireOption(item_id,value,name) values(26,3,'财务健康');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(27,2,true,'您认为您的生理健康是否影响到您的工作与活动','',false);
insert into cQuestionnaireOption(item_id,value,name) values(27,0,'没有影响');
insert into cQuestionnaireOption(item_id,value,name) values(27,1,'有较小影响');
insert into cQuestionnaireOption(item_id,value,name) values(27,2,'有较大影响');
insert into cQuestionnaireOption(item_id,value,name) values(27,3,'严重影响');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(28,2,true,'您是否在调研前四周内发生过疼痛或其他身体不适','',false);
insert into cQuestionnaireOption(item_id,value,name) values(28,0,'是');
insert into cQuestionnaireOption(item_id,value,name) values(28,1,'否');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(29,2,true,'您是否在调研前四周内存在过心理感受不良','',false);
insert into cQuestionnaireOption(item_id,value,name) values(29,0,'是');
insert into cQuestionnaireOption(item_id,value,name) values(29,1,'否');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(30,2,true,'您是否在调研四周前内明显情绪低落','',false);
insert into cQuestionnaireOption(item_id,value,name) values(30,0,'是');
insert into cQuestionnaireOption(item_id,value,name) values(30,1,'否');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(31,2,true,'您是否因财务压力出现过焦虑症状','',false);
insert into cQuestionnaireOption(item_id,value,name) values(31,0,'是');
insert into cQuestionnaireOption(item_id,value,name) values(31,1,'否');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(32,2,true,'您是否认为自己能很好的掌握自身的财务状况','',false);
insert into cQuestionnaireOption(item_id,value,name) values(32,0,'是');
insert into cQuestionnaireOption(item_id,value,name) values(32,1,'否');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(33,2,true,'您是否经常使用信用卡或花呗透支','',false);
insert into cQuestionnaireOption(item_id,value,name) values(33,0,'是');
insert into cQuestionnaireOption(item_id,value,name) values(33,1,'否');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(34,2,true,'您是否对自己的非预期支出存在信心','',false);
insert into cQuestionnaireOption(item_id,value,name) values(34,0,'是');
insert into cQuestionnaireOption(item_id,value,name) values(34,1,'否');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(35,2,true,'您是否认为自己能承担大额医疗费用','',false);
insert into cQuestionnaireOption(item_id,value,name) values(35,0,'是');
insert into cQuestionnaireOption(item_id,value,name) values(35,1,'否');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(36,2,true,'您是否认为子女教育支出会使日常开支紧张','',false);
insert into cQuestionnaireOption(item_id,value,name) values(36,0,'是');
insert into cQuestionnaireOption(item_id,value,name) values(36,1,'否');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(37,2,true,'您是否为养老金储备感到担忧','',false);
insert into cQuestionnaireOption(item_id,value,name) values(37,0,'是');
insert into cQuestionnaireOption(item_id,value,name) values(37,1,'否');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(38,2,true,'您是否对赡养父母的开支感到担忧','',false);
insert into cQuestionnaireOption(item_id,value,name) values(38,0,'是');
insert into cQuestionnaireOption(item_id,value,name) values(38,1,'否');


insert into cQuestionnaireAndItem(qid,item_id) values(1,1);
insert into cQuestionnaireAndItem(qid,item_id) values(1,2);
insert into cQuestionnaireAndItem(qid,item_id) values(1,3);
insert into cQuestionnaireAndItem(qid,item_id) values(1,4);
insert into cQuestionnaireAndItem(qid,item_id) values(1,5);
insert into cQuestionnaireAndItem(qid,item_id) values(1,6);
insert into cQuestionnaireAndItem(qid,item_id) values(1,7);
insert into cQuestionnaireAndItem(qid,item_id) values(1,8);
insert into cQuestionnaireAndItem(qid,item_id) values(1,9);
insert into cQuestionnaireAndItem(qid,item_id) values(1,10);
insert into cQuestionnaireAndItem(qid,item_id) values(1,11);
insert into cQuestionnaireAndItem(qid,item_id) values(1,12);
insert into cQuestionnaireAndItem(qid,item_id) values(1,13);
insert into cQuestionnaireAndItem(qid,item_id) values(1,14);
insert into cQuestionnaireAndItem(qid,item_id) values(1,15);
insert into cQuestionnaireAndItem(qid,item_id) values(1,16);
insert into cQuestionnaireAndItem(qid,item_id) values(1,17);
insert into cQuestionnaireAndItem(qid,item_id) values(1,18);
insert into cQuestionnaireAndItem(qid,item_id) values(1,19);
insert into cQuestionnaireAndItem(qid,item_id) values(1,20);
insert into cQuestionnaireAndItem(qid,item_id) values(1,21);
insert into cQuestionnaireAndItem(qid,item_id) values(1,22);
insert into cQuestionnaireAndItem(qid,item_id) values(1,23);
insert into cQuestionnaireAndItem(qid,item_id) values(1,24);
insert into cQuestionnaireAndItem(qid,item_id) values(1,25);
insert into cQuestionnaireAndItem(qid,item_id) values(1,26);
insert into cQuestionnaireAndItem(qid,item_id) values(1,27);
insert into cQuestionnaireAndItem(qid,item_id) values(1,28);
insert into cQuestionnaireAndItem(qid,item_id) values(1,29);
insert into cQuestionnaireAndItem(qid,item_id) values(1,30);
insert into cQuestionnaireAndItem(qid,item_id) values(1,31);
insert into cQuestionnaireAndItem(qid,item_id) values(1,32);
insert into cQuestionnaireAndItem(qid,item_id) values(1,33);
insert into cQuestionnaireAndItem(qid,item_id) values(1,34);
insert into cQuestionnaireAndItem(qid,item_id) values(1,35);
insert into cQuestionnaireAndItem(qid,item_id) values(1,36);
insert into cQuestionnaireAndItem(qid,item_id) values(1,37);
insert into cQuestionnaireAndItem(qid,item_id) values(1,38);




ALTER TABLE `cAuth`.`cQuestionnaireAns` 
ADD COLUMN `id` BIGINT NOT NULL AUTO_INCREMENT AFTER `uid`,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`id`);
;




insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(40,1,true,'您的身份证号','',false);
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(41,2,true,'您是否目前吸烟','',false);
insert into cQuestionnaireOption(item_id,value,name) values(41,1,'是');
insert into cQuestionnaireOption(item_id,value,name) values(41,0,'否');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(42,4,true,'吸烟的话，请告知您每日吸烟量和吸烟年限','',false);
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(43,2,true,'您是否曾有药物滥用或服用毒品','',false);
insert into cQuestionnaireOption(item_id,value,name) values(43,1,'是');
insert into cQuestionnaireOption(item_id,value,name) values(43,0,'否');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(44,4,true,'有药物滥用或毒品服用的话，请告知连续使用的时间及使用品种','',false);
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(45,2,true,'您目前或过去是否进行过以下检查或治疗','一年内去医院进行过门诊的检查、服药、手术或其他治疗;过去三年内曾有医学检查（包括健康体检）结果异常;过去五年曾住院治疗检查或治疗（包括入住疗养院、康复医院等医疗机构）',false);
insert into cQuestionnaireOption(item_id,value,name) values(45,1,'是');
insert into cQuestionnaireOption(item_id,value,name) values(45,2,'否');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(46,4,true,'过去有上述检查和治疗的话，请告知具体情况','',false);

insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(47,2,true,'您是否目前或过去患有下列疾病、症候(选是的话，可以在下面附件中上传说明情况):','恶性肿瘤、心脏病（心功能不全Ⅱ级及以上）、心肌梗塞、白血病、高血压病（Ⅱ级及以上）、肝硬化、慢性阻塞性支气管疾病、脑血管疾病、慢性肾脏疾病、糖尿病、再生障碍性贫血、先天性疾病、精神病、癫痫、特定传染病、艾滋病、性传播疾病',false);
insert into cQuestionnaireOption(item_id,value,name) values(47,1,'是');
insert into cQuestionnaireOption(item_id,value,name) values(47,0,'否');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(48,4,true,'过去有上述疾病的话，请告知具体情况','',false);
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(49,2,true,'您是否有智能障碍。','',false);
insert into cQuestionnaireOption(item_id,value,name) values(49,1,'是');
insert into cQuestionnaireOption(item_id,value,name) values(49,0,'否');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(50,4,true,'有智能障碍的话，请告知智能障碍等级','',false);

insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(51,2,true,'您是否有五官、脊柱、胸廓、四肢、手指、足趾缺损、畸形或功能障碍','',false);
insert into cQuestionnaireOption(item_id,value,name) values(51,1,'是');
insert into cQuestionnaireOption(item_id,value,name) values(51,0,'否');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(52,4,true,'有残疾的话，请告知残疾部位（哪侧）、原因、有无功能障碍、是否使用辅助器械','',false);
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(53,2,true,'您目前是否怀孕','',false);
insert into cQuestionnaireOption(item_id,value,name) values(53,1,'是');
insert into cQuestionnaireOption(item_id,value,name) values(53,0,'否');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(54,4,true,'怀孕的话，请告知怀孕的孕周','',false);
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(55,2,true,'您目前或既往怀孕及生产期间是否有合并症？例如：蛋白尿、血尿、高血压、糖尿病等','',false);
insert into cQuestionnaireOption(item_id,value,name) values(55,1,'是');
insert into cQuestionnaireOption(item_id,value,name) values(55,0,'否');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(56,4,true,'有合并症的话，请告知具体状况','',false);
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(57,2,true,'您是否曾有阴道不规则流血、乳房肿块、溢乳、腋下淋巴结肿大、乳腺增生或纤维瘤、其他乳腺疾病','',false);
insert into cQuestionnaireOption(item_id,value,name) values(57,1,'是');
insert into cQuestionnaireOption(item_id,value,name) values(57,0,'否');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(58,4,true,'有上述疾病的话，请告知具体状况','',false);
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(59,2,true,'您是否曾有子宫肌瘤、内膜异位症、子宫颈上皮不典型增生、卵巢囊肿、畸胎瘤等','',false);
insert into cQuestionnaireOption(item_id,value,name) values(59,1,'是');
insert into cQuestionnaireOption(item_id,value,name) values(59,0,'否');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(60,4,true,'有上述情况的话，请告知具体状况','',false);
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(61,2,true,'您是否有参加赛车、赛马、搏击类运动、蹦极、滑雪、攀岩、潜水、探险或特技活动及其他高风险活动的爱好','',false);
insert into cQuestionnaireOption(item_id,value,name) values(61,1,'是');
insert into cQuestionnaireOption(item_id,value,name) values(61,0,'否');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(62,4,true,'有高风险活动的话，请告知参加的项目以及每年大约的次数','',false);
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(63,2,true,'您的父母、子女、兄弟姐妹是否患有癌症、白血病、血友病、心脑血管疾病、糖尿病、病毒性肝炎或病毒携带、多囊肝肾、肠息肉、其他遗传性疾病等','',false);
insert into cQuestionnaireOption(item_id,value,name) values(63,1,'是');
insert into cQuestionnaireOption(item_id,value,name) values(63,0,'否');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(64,4,true,'有上述疾病的话，请告知具体情况','',false);
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(65,2,true,'您是否在投保其他保险公司的产品（重大疾病、医疗险、意外险）产品，被非标准承保（拒保、延期、附加条件或加费承保）或申请过理赔','',false);
insert into cQuestionnaireOption(item_id,value,name) values(65,1,'是');
insert into cQuestionnaireOption(item_id,value,name) values(65,0,'否');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(66,4,true,'有上述情况的话，请告知具体情况','',false);
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(67,2,true,'您在保险期间内是否有计划长期居住或逗留在中国大陆以外的国家或地区累计超过6个月的','',false);
insert into cQuestionnaireOption(item_id,value,name) values(67,1,'是');
insert into cQuestionnaireOption(item_id,value,name) values(67,0,'否');

insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(68,1,true,'有计划去的话，请告知计划去的国家或地区','',false);
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(69,1,true,'有计划去的话，请告知计划去的目的地','',false);
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(70,1,true,'有计划去的话，请告知计划居住时间(几个月)','',false);

insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(71,2,true,'用户信息确认','本人对上述各项内容均已理解，并同意将此告知书作为保险合同的一部分，本人上述健康及其他告知内容均属真实且无重大遗漏，与此告知书有关的问卷、体检报告书及对体检医生的各项陈述均确实无误且无重大遗漏，如有不实告知，贵司有权依法解除保险合同，并对合同解除前发生的保险事故不承担保险责任。所有告知事项以书面告知为准，口头告知无效。本人授权贵公司可以从任何单位、组织和个人就有关保险事宜查询、索取与本人相关的资料或证明，贵公司对个人资料承担保密义务。如果本投保单的中英文表述不一致，以中文表述为准',false);
insert into cQuestionnaireOption(item_id,value,name) values(71,1,'同意');
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(72,5,false,'可以上传图片补充上述问题资料','',false);




insert into cQuestionnaire(id,name ,start,end) values(2,'个人健康告知','2021-06-12', '2021-06-12');
insert into cQuestionnaireAndItem(qid,item_id) values(2,40);
insert into cQuestionnaireAndItem(qid,item_id) values(2,41);
insert into cQuestionnaireAndItem(qid,item_id,dep_item_id,dep_item_val) values(2,42,41,1);
insert into cQuestionnaireAndItem(qid,item_id) values(2,43);
insert into cQuestionnaireAndItem(qid,item_id,dep_item_id,dep_item_val) values(2,44,43,1);
insert into cQuestionnaireAndItem(qid,item_id) values(2,45);
insert into cQuestionnaireAndItem(qid,item_id,dep_item_id,dep_item_val) values(2,46,45,1);
insert into cQuestionnaireAndItem(qid,item_id) values(2,47);
insert into cQuestionnaireAndItem(qid,item_id,dep_item_id,dep_item_val) values(2,48,47,1);
insert into cQuestionnaireAndItem(qid,item_id) values(2,49);
insert into cQuestionnaireAndItem(qid,item_id,dep_item_id,dep_item_val) values(2,50,49,1);
insert into cQuestionnaireAndItem(qid,item_id) values(2,51);
insert into cQuestionnaireAndItem(qid,item_id,dep_item_id,dep_item_val) values(2,52,51,1);
insert into cQuestionnaireAndItem(qid,item_id) values(2,53);
insert into cQuestionnaireAndItem(qid,item_id,dep_item_id,dep_item_val) values(2,54,53,1);
insert into cQuestionnaireAndItem(qid,item_id) values(2,55);
insert into cQuestionnaireAndItem(qid,item_id,dep_item_id,dep_item_val) values(2,56,55,1);
insert into cQuestionnaireAndItem(qid,item_id) values(2,57);
insert into cQuestionnaireAndItem(qid,item_id,dep_item_id,dep_item_val) values(2,58,57,1);
insert into cQuestionnaireAndItem(qid,item_id) values(2,59);
insert into cQuestionnaireAndItem(qid,item_id,dep_item_id,dep_item_val) values(2,60,59,1);
insert into cQuestionnaireAndItem(qid,item_id) values(2,61);
insert into cQuestionnaireAndItem(qid,item_id,dep_item_id,dep_item_val) values(2,62,61,1);
insert into cQuestionnaireAndItem(qid,item_id) values(2,63);
insert into cQuestionnaireAndItem(qid,item_id,dep_item_id,dep_item_val) values(2,64,63,1);
insert into cQuestionnaireAndItem(qid,item_id) values(2,65);
insert into cQuestionnaireAndItem(qid,item_id,dep_item_id,dep_item_val) values(2,66,65,1);
insert into cQuestionnaireAndItem(qid,item_id) values(2,67);
insert into cQuestionnaireAndItem(qid,item_id,dep_item_id,dep_item_val) values(2,68,67,1);
insert into cQuestionnaireAndItem(qid,item_id,dep_item_id,dep_item_val) values(2,69,67,1);
insert into cQuestionnaireAndItem(qid,item_id,dep_item_id,dep_item_val) values(2,70,67,1);
insert into cQuestionnaireAndItem(qid,item_id) values(2,71);
insert into cQuestionnaireAndItem(qid,item_id) values(2,72);
















insert into cQuestionnaireOption(item_id,value,name) values(46,1,'恶性肿瘤');
insert into cQuestionnaireOption(item_id,value,name) values(46,2,'心脏病（心功能不全Ⅱ级及以上）');
insert into cQuestionnaireOption(item_id,value,name) values(46,3,'心肌梗塞');
insert into cQuestionnaireOption(item_id,value,name) values(46,4,'白血病');
insert into cQuestionnaireOption(item_id,value,name) values(46,5,'高血压病（Ⅱ级及以上）');
insert into cQuestionnaireOption(item_id,value,name) values(46,6,'肝硬化');
insert into cQuestionnaireOption(item_id,value,name) values(46,7,'慢性阻塞性支气管疾病');
insert into cQuestionnaireOption(item_id,value,name) values(46,8,'脑血管疾病');
insert into cQuestionnaireOption(item_id,value,name) values(46,9,'慢性肾脏疾病');
insert into cQuestionnaireOption(item_id,value,name) values(46,10,'糖尿病');
insert into cQuestionnaireOption(item_id,value,name) values(46,11,'再生障碍性贫血');
insert into cQuestionnaireOption(item_id,value,name) values(46,12,'先天性疾病');
insert into cQuestionnaireOption(item_id,value,name) values(46,13,'精神病');
insert into cQuestionnaireOption(item_id,value,name) values(46,14,'癫痫');
insert into cQuestionnaireOption(item_id,value,name) values(46,15,'特定传染病');
insert into cQuestionnaireOption(item_id,value,name) values(46,16,'艾滋病');
insert into cQuestionnaireOption(item_id,value,name) values(46,17,'性传播疾病');

insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(48,3,true,'您是否目前或过去患有下列疾病、症候','',false);






insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(2,1,true,'你的年龄','',false);
insert into cQuestionnaireItem(id,type,required,title,description,is_mult) values(3,2,true,'你的婚姻状态','',false);
insert into cQuestionnaireOption(item_id,value,name) values(3,0,'未婚');
insert into cQuestionnaireOption(item_id,value,name) values(3,1,'已婚');
insert into cQuestionnaireOption(item_id,value,name) values(3,2,'其他');


insert into cQuestionnaire(id,name ,start,end) values(1,'员工健康问卷',null,null);
insert into cQuestionnaireAndItem(qid,item_id) values(1,1);
insert into cQuestionnaireAndItem(qid,item_id) values(1,2);
insert into cQuestionnaireAndItem(qid,item_id) values(1,3);