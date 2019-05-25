/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : baseplatform

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2019-05-08 17:11:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_sys_struct
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_struct`;
CREATE TABLE `t_sys_struct` (
  `ID` varchar(32) NOT NULL,
  `CODE` varchar(14) NOT NULL,
  `PID` varchar(32) DEFAULT NULL,
  `NAME` varchar(60) NOT NULL,
  `GRAD` char(1) DEFAULT NULL,
  `ORGANIZATION_ID` varchar(32) NOT NULL,
  `RESP` text,
  `ORDER_INDEX` decimal(65,30) DEFAULT NULL,
  `STATUS` char(1) NOT NULL,
  `DESCRIPTION` text,
  `CREATOR` varchar(32) NOT NULL,
  `CREATE_TIME` datetime NOT NULL,
  `LAST_UPDATOR` varchar(32) DEFAULT NULL,
  `LAST_UPDATE_TIME` datetime DEFAULT NULL,
  `DEL_FLAG` char(1) NOT NULL,
  `LEV` decimal(65,30) DEFAULT NULL,
  `POSITION` varchar(50) DEFAULT NULL COMMENT '地理位置'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
