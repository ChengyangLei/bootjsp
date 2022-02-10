/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : baseplatform

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2019-05-08 17:10:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_sys_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_dictionary`;
CREATE TABLE `t_sys_dictionary` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID',
  `CODE` varchar(100) NOT NULL COMMENT '数据项code',
  `NAME` varchar(100) NOT NULL COMMENT '数据项名称',
  `ORDER_INDEX` decimal(65,30) NOT NULL COMMENT '数据项顺序',
  `STATUS` char(1) NOT NULL COMMENT '状态(0-未启用;已启用)',
  `PID` varchar(32) NOT NULL COMMENT '父数据项',
  `DESCRIPTION` varchar(200) DEFAULT NULL COMMENT '说明',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `CREATOR` varchar(32) NOT NULL COMMENT '创建者',
  `LAST_UPDATE_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `LAST_UPDATOR` varchar(32) DEFAULT NULL COMMENT '修改者',
  `DEL_FLAG` char(1) NOT NULL COMMENT '删除标识(0-未删除;1-已删除)',
  `VALUE` text COMMENT '数据项值',
  `LEV` decimal(65,30) DEFAULT NULL COMMENT '树形结构层次',
  `SUBSIDIARY` varchar(32) DEFAULT NULL COMMENT '所属公司',
  PRIMARY KEY (`ID`),
  KEY `INDEX_T_SYS_DICTIONARY_PID` (`PID`) USING BTREE,
  KEY `UNIQUE_CODE` (`CODE`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用于记录系统的基本数据信息';
