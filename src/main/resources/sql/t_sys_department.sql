/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : baseplatform

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2019-05-08 17:10:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_sys_department
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_department`;
CREATE TABLE `t_sys_department` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID',
  `CODE` varchar(14) NOT NULL COMMENT '部门代码(组织机构代码+自定义码)',
  `PID` varchar(32) DEFAULT NULL COMMENT '父ID(数据交换时需转换为上级部门代码)',
  `NAME` varchar(60) NOT NULL COMMENT '部门名称',
  `GRAD` char(1) DEFAULT NULL COMMENT '部门级别',
  `ORGANIZATION_ID` varchar(32) NOT NULL COMMENT '所属机构ID（数据交换时需转换为所属机构代码）',
  `RESP` text NOT NULL COMMENT '部门职责',
  `ORDER_INDEX` decimal(65,30) DEFAULT NULL COMMENT '顺序号',
  `STATUS` char(1) NOT NULL COMMENT '状态(0-未启用 1-启用)',
  `DESCRIPTION` text COMMENT '备注',
  `CREATOR` varchar(32) NOT NULL COMMENT '创建者',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `LAST_UPDATOR` varchar(32) DEFAULT NULL COMMENT '修改者',
  `LAST_UPDATE_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `DEL_FLAG` char(1) NOT NULL COMMENT '删除标识',
  `LEV` decimal(65,30) DEFAULT NULL COMMENT '树形结构层次',
  PRIMARY KEY (`ID`),
  KEY `INDEX_DEPARTMENT_NAME` (`NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='描述系统的部门信息';
