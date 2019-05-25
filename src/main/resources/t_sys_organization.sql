/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : baseplatform

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2019-05-08 17:10:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_sys_organization
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_organization`;
CREATE TABLE `t_sys_organization` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID',
  `CODE` varchar(9) NOT NULL COMMENT '组织机构代码',
  `NAME` varchar(60) NOT NULL COMMENT '机构名称',
  `PID` varchar(32) DEFAULT NULL COMMENT '父ID只管理机构的ID',
  `DIVISION_ID` varchar(32) NOT NULL COMMENT '行政层级代码ID(数据交换时转换为行政区划代码)',
  `SHORT_NAME` varchar(60) DEFAULT NULL COMMENT '机构简称',
  `TYPE` char(1) DEFAULT NULL COMMENT '机构类型',
  `CORPORATION` varchar(40) NOT NULL COMMENT '法人代表',
  `SPECIALFICATION` char(1) DEFAULT NULL COMMENT '机构规格',
  `BELONG` char(1) DEFAULT NULL COMMENT '隶属关系',
  `STATUS` char(1) NOT NULL COMMENT '状态(0-未启用 1-启用)',
  `ORDER_INDEX` decimal(65,30) NOT NULL COMMENT '顺序号',
  `URL` varchar(150) DEFAULT NULL COMMENT '网站',
  `EMAIL` varchar(150) DEFAULT NULL COMMENT '邮箱',
  `ADDRESS` varchar(150) DEFAULT NULL COMMENT '地址',
  `ZIP` varchar(6) DEFAULT NULL COMMENT '邮政编码',
  `TELEPHONE` varchar(33) DEFAULT NULL COMMENT '办公室电话',
  `FAX` varchar(33) DEFAULT NULL COMMENT '传真号码',
  `DESCRIPTION` text COMMENT '备注',
  `CREATOR` varchar(32) NOT NULL COMMENT '创建者',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `LAST_UPDATOR` varchar(32) DEFAULT NULL COMMENT '修改者',
  `LAST_UPDATE_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `DEL_FLAG` char(1) NOT NULL COMMENT '删除标识',
  `LEV` decimal(65,30) DEFAULT NULL COMMENT '树形结构层次',
  `LTTD` decimal(18,9) DEFAULT NULL COMMENT '纬度',
  `LGTD` decimal(18,9) DEFAULT NULL COMMENT '经度',
  `POSITION` varchar(50) DEFAULT NULL COMMENT '地理位置',
  PRIMARY KEY (`ID`),
  KEY `AK_ORGANIZATION_AK_T_SYS_OR` (`CODE`) USING BTREE,
  KEY `INDEX_ORGANIZATION_NAME` (`NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='组织机构的基本信息，包括水行政主管部门、水利事业单位、乡镇水利管理单位，以及为水利提供服务的企业、社会团体等单位的基本信息';
