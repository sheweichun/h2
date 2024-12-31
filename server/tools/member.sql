CREATE TABLE `cAuth`.`cMember` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `bonus` INT NULL,
  `level` INT NULL,
  `label` VARCHAR(45) NULL COMMENT '会员表',
  `create_time` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`));

CREATE TABLE `cAuth`.`cRights` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL COMMENT '权益名称',
  `description` VARCHAR(512) NULL COMMENT '权益说明',
  `categoryid` INT NULL COMMENT '权益分类ID',
  `validdate` BIGINT NULL COMMENT '有效期 单位s',
  `user` VARCHAR(45) NULL COMMENT '使用人说明',
  `num` INT NULL COMMENT '权益份额',
  `unit` VARCHAR(45) NULL COMMENT '份额单位',
  `display` INT NULL COMMENT '是否显示',
  `create_time` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`));

CREATE TABLE `cAuth`.`cMemeberRight` (
  `id` VARCHAR(32) NOT NULL,
  `mid` INT NOT NULL COMMENT '会员等级ID',
  `rid` INT NOT NULL COMMENT '权益id',
  `num` INT NOT NULL COMMENT '份额',
  `display` INT NULL COMMENT '是否显示',
  PRIMARY KEY (`mid`, `rid`));


CREATE TABLE `cAuth`.`cRightsGroup` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `icon` VARCHAR(80) NULL COMMENT '类别icon',
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE);


-- CREATE TABLE `cAuth`.`cMemberExchange` (
--   `id` INT NOT NULL AUTO_INCREMENT,
--   `uid` INT NOT NULL,
--   `rid` INT NOT NULL COMMENT '权益id',
--   `num` INT NOT NULL COMMENT '兑换份额',
--   `create_time` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
--   `mid` INT NOT NULL COMMENT '会员等级',
--   PRIMARY KEY (`id`));


CREATE TABLE `cAuth`.`cUserMember` (
  `uid` BIGINT NOT NULL,
  `mid` BIGINT NOT NULL,
  `rid` BIGINT NOT NULL,
  `reserved_num` INT NULL COMMENT '当前可兑换权益总份额',
  `create_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `display` INT NULL COMMENT '是否显示',
  PRIMARY KEY (`uid`, `mid`, `rid`));

CREATE TABLE `cAuth`.`cUserMemberExchange` (
  `uid` BIGINT NOT NULL,
  `mid` BIGINT NOT NULL,
  `rid` BIGINT NOT NULL,
  `exchange_num` INT NULL COMMENT '兑换权益份额',
  `description` VARCHAR(256) NULL COMMENT '兑换说明',
  `create_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP);


  CREATE TABLE `cAuth`.`cUserMemberBonus` (
  `uid` BIGINT NOT NULL,
  `bonus` INT NOT NULL,
  `pre_bonus` INT NOT NULL COMMENT '上一次积分',
  `new_bonus` INT NOT NULL COMMENT '最新积分',
  `description` VARCHAR(256) NOT NULL COMMENT '积分说明',
  `create_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP);



ALTER TABLE `cAuth`.`cUserInfo` 
ADD COLUMN `member` INT NULL DEFAULT 0 COMMENT '会员积分' AFTER `phone`,
ADD COLUMN `member_update` DATETIME NULL DEFAULT CURRENT_TIMESTAMP COMMENT '会员积分更新日期' AFTER `member`,
ADD COLUMN `member_level` VARCHAR(45) NULL COMMENT '会员等级' AFTER `member_update`;



update cAuth.cUserInfo set member = 0, member_update = CURRENT_TIMESTAMP, member_level = 1 where member_level is not null;


-- insert into cUserMember (select a.uid, b.* from cUserInfo as a full join (
-- 	select a.mid as mid , a.rid as rid, a.num as reserved_num,CURRENT_TIMESTAMP as create_time, a.display as display from cMemeberRight as a where a.mid = 1
-- ) as b on a.member_level = b.mid)


ALTER TABLE `cAuth`.`cUploadInfo` 
CHANGE COLUMN `qcloudAppId` `qcloudAppId` INT NULL ;



ALTER TABLE
  `cmember` DEFAULT CHARACTER SET = "utf8" COLLATE = "utf8_general_ci"
ALTER TABLE
  `crights` DEFAULT CHARACTER SET = "utf8" COLLATE = "utf8_general_ci"
ALTER TABLE
  `cmemeberright` DEFAULT CHARACTER SET = "utf8" COLLATE = "utf8_general_ci"
ALTER TABLE
  `crightsgroup` DEFAULT CHARACTER SET = "utf8" COLLATE = "utf8_general_ci"
ALTER TABLE
  `cusermember` DEFAULT CHARACTER SET = "utf8" COLLATE = "utf8_general_ci"
ALTER TABLE
  `cusermemberexchange` DEFAULT CHARACTER SET = "utf8" COLLATE = "utf8_general_ci"
ALTER TABLE
  `cusermemberbonus` DEFAULT CHARACTER SET = "utf8" COLLATE = "utf8_general_ci"



ALTER TABLE `cAuth`.`cUserMemberExchange` 
ADD COLUMN `prev_num` INT NULL COMMENT '变化前的份额' AFTER `create_time`,
ADD COLUMN `new_num` INT NULL COMMENT '变化后的份额' AFTER `prev_num`;


UPDATE `cAuth`.`cMember` SET `name` = '王某某1', `log` = 'https://gw.alicdn.com/imgextra/i2/O1CN01ANFefS1L1VQRgw6Oj_!!6000000001239-2-tps-78-32.png', `mask` = 'https://gw.alicdn.com/imgextra/i3/O1CN01dtWpMa25o1kAC8ev9_!!6000000007572-2-tps-128-128.png' WHERE (`id` = '1');
UPDATE `cAuth`.`cMember` SET `name` = '王某某', `log` = 'https://gw.alicdn.com/imgextra/i2/O1CN01ANFefS1L1VQRgw6Oj_!!6000000001239-2-tps-78-32.png', `mask` = 'https://gw.alicdn.com/imgextra/i3/O1CN01dtWpMa25o1kAC8ev9_!!6000000007572-2-tps-128-128.png' WHERE (`id` = '2');
UPDATE `cAuth`.`cMember` SET `name` = '王某某', `log` = 'https://gw.alicdn.com/imgextra/i2/O1CN01ANFefS1L1VQRgw6Oj_!!6000000001239-2-tps-78-32.png', `mask` = 'https://gw.alicdn.com/imgextra/i3/O1CN01dtWpMa25o1kAC8ev9_!!6000000007572-2-tps-128-128.png' WHERE (`id` = '3');
UPDATE `cAuth`.`cMember` SET `name` = '王某某', `log` = 'https://gw.alicdn.com/imgextra/i2/O1CN01ANFefS1L1VQRgw6Oj_!!6000000001239-2-tps-78-32.png', `mask` = 'https://gw.alicdn.com/imgextra/i3/O1CN01dtWpMa25o1kAC8ev9_!!6000000007572-2-tps-128-128.png' WHERE (`id` = '4');
UPDATE `cAuth`.`cMember` SET `name` = '王某某', `log` = 'https://gw.alicdn.com/imgextra/i2/O1CN01ANFefS1L1VQRgw6Oj_!!6000000001239-2-tps-78-32.png', `mask` = 'https://gw.alicdn.com/imgextra/i3/O1CN01dtWpMa25o1kAC8ev9_!!6000000007572-2-tps-128-128.png' WHERE (`id` = '8');


-- ===========
ALTER TABLE `cAuth`.`cRightsGroup` 
CHANGE COLUMN `icon` `icon` VARCHAR(128) NULL DEFAULT NULL COMMENT '类别icon' ;

ALTER TABLE `cAuth`.`cExchange` 
ADD COLUMN `icon` VARCHAR(128) NULL AFTER `reserve`;



delete from cAuth.cUserMember;
delete from cAuth.cUserMemberBonus;
delete from cAuth.cUserMemberExchange;

-- =========== 
ALTER TABLE `cAuth`.`cExchangeItemInfo` 
ADD COLUMN `gift_icon` VARCHAR(128) NULL AFTER `gift_desc`;


-- =========== 
ALTER TABLE `cAuth`.`cCompanyInfo` 
ADD COLUMN `manage_name` VARCHAR(45) NULL AFTER `need_qus`,
ADD COLUMN `manage_logo` VARCHAR(128) NULL AFTER `manage_name`,
ADD COLUMN `manage_mask` VARCHAR(128) NULL AFTER `manage_logo`;





-- ==================== 用户绑定公司的同时已经绑定了aid（管理员）
ALTER TABLE `cAuth`.`cArticleInfo` 
ADD COLUMN `cid` BIGINT NULL COMMENT '公司id' AFTER `update_time`;
ALTER TABLE `cAuth`.`cArticleInfo` 
ADD COLUMN `type` INT NULL COMMENT '文章类型 0-网页 1-pdf' AFTER `cid`;
ALTER TABLE `cAuth`.`cAdmin` 
ADD COLUMN `flag` TINYINT NULL COMMENT '是否启用1-启用 0-不启用' AFTER `super`;




-- ===================
ALTER TABLE `cAuth`.`cCompanyInfo` 
ADD COLUMN `enable_activity` TINYINT NULL AFTER `manage_mask`,
ADD COLUMN `activity_name` VARCHAR(16) NULL AFTER `enable_activity`;


-- ================================
ALTER TABLE `cAuth`.`cCompanyInfo` 
ADD COLUMN `activity_code` VARCHAR(16) NULL COMMENT '活动邀请码' AFTER `activity_name`;





-- ==================
ALTER TABLE `cAuth`.`cShareInfo` 
ADD COLUMN `flag` TINYINT NULL DEFAULT 积分是否已计算 AFTER `sid`;
