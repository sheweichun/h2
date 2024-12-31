-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2018-08-18 06:13:01
-- 服务器版本： 5.7.18
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cAuth`
--

-- --------------------------------------------------------

--
-- 表的结构 `cAppinfo`
--

CREATE TABLE IF NOT EXISTS `cAppinfo` (
  `appid` char(36) DEFAULT NULL,
  `secret` char(64) DEFAULT NULL,
  `ip` char(20) DEFAULT NULL,
  `login_duration` int(11) DEFAULT NULL,
  `qcloud_appid` char(64) DEFAULT NULL,
  `session_duration` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-------------------------------------------------

--
-- 表的结构 `cBonusInfo`
--

CREATE TABLE `cBonusInfo` (
  `type` int(11) NOT NULL,
  `add_bonus` int(11) NOT NULL,
  `origin_bonus` int(11) NOT NULL,
  `new_bonus` int(11) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL,
  `type_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `uid` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='积分记录';

-- --------------------------------------------------------

--
-- 表的结构 `cBonustype`
--

CREATE TABLE `cBonustype` (
  `value` int(11) NOT NULL,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `bonuse` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cBonustype`
--

INSERT INTO `cBonustype` (`value`, `name`, `bonuse`) VALUES
(1, '体检报告', 20),
(2, '单月无理赔', 10),
(3, '洗牙', 20),
(4, '购买产品', 30),
(5, '跑步', 1);

-- --------------------------------------------------------

--
-- 表的结构 `cCompanyInfo`
--

CREATE TABLE `cCompanyInfo` (
  `cid` bigint(20) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '邀请码',
  `startTm` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `hr` varchar(100) DEFAULT NULL,
  `hr_phone` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cCompanyInfo`
--


-- --------------------------------------------------------

--
-- 表的结构 `cRunInfo`
--

CREATE TABLE `cRunInfo` (
  `timestamp` int(11) NOT NULL,
  `step` int(11) NOT NULL,
  `bonus_flag` tinyint(1) NOT NULL COMMENT '是否计算过积分',
  `uid` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录用户每日步数';

-- --------------------------------------------------------

--
-- 表的结构 `cSessionInfo`
--

CREATE TABLE IF NOT EXISTS `cSessionInfo` (
  `open_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uuid` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skey` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_visit_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `session_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_info` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会话管理用户信息';

--
-- 转存表中的数据 `cSessionInfo`
--


-- --------------------------------------------------------

--
-- 表的结构 `cUploadInfo`
--

CREATE TABLE `cUploadInfo` (
  `uid` bigint(20) NOT NULL,
  `imgUrl` varchar(256) NOT NULL,
  `size` bigint(20) NOT NULL,
  `uploadFolder` varchar(100) NOT NULL,
  `type` int(11) NOT NULL,
  `fileBucket` varchar(100) NOT NULL,
  `qcloudAppId` int(11) NOT NULL,
  `imgUrlv4` varchar(256) NOT NULL,
  `uploadTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `imgKey` varchar(100) NOT NULL,
  `cid` bigint(20) NOT NULL,
  `bonusFlag` tinyint(1) DEFAULT '0' COMMENT '状态0-审核中 1-已兑换 2-无效'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cUploadInfo`
--

-- --------------------------------------------------------

--
-- 表的结构 `cUserInfo`
--

CREATE TABLE `cUserInfo` (
  `uid` bigint(20) NOT NULL,
  `openId` varchar(100) NOT NULL,
  `nickName` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `avatarUrl` varchar(300) NOT NULL,
  `realName` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `gender` tinyint(1) NOT NULL,
  `province` varchar(64) NOT NULL,
  `country` varchar(64) NOT NULL,
  `city` varchar(64) NOT NULL,
  `companyName` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `companyid` bigint(20) DEFAULT NULL,
  `bonus` int(11) DEFAULT '0' COMMENT '积分'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

--
-- 转存表中的数据 `cUserInfo`
--


--
-- Indexes for dumped tables
--

--
-- Indexes for table `cBonusInfo`
--
ALTER TABLE `cBonusInfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cBonustype`
--
ALTER TABLE `cBonustype`
  ADD PRIMARY KEY (`value`);

--
-- Indexes for table `cCompanyInfo`
--
ALTER TABLE `cCompanyInfo`
  ADD PRIMARY KEY (`cid`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `cRunInfo`
--
ALTER TABLE `cRunInfo`
  ADD PRIMARY KEY (`timestamp`);

--
-- Indexes for table `cSessionInfo`
--
ALTER TABLE `cSessionInfo`
  ADD PRIMARY KEY (`open_id`),
  ADD KEY `openid` (`open_id`) USING BTREE,
  ADD KEY `skey` (`skey`) USING BTREE;

--
-- Indexes for table `cUploadInfo`
--
ALTER TABLE `cUploadInfo`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `search` (`cid`,`type`) USING BTREE;

--
-- Indexes for table `cUserInfo`
--
ALTER TABLE `cUserInfo`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `open_id` (`openId`) USING BTREE;

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `cBonusInfo`
--
ALTER TABLE `cBonusInfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `cCompanyInfo`
--
ALTER TABLE `cCompanyInfo`
  MODIFY `cid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `cUploadInfo`
--
ALTER TABLE `cUploadInfo`
  MODIFY `uid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `cUserInfo`
--
ALTER TABLE `cUserInfo`
  MODIFY `uid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
