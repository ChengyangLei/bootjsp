/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : baseplatform

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2019-05-08 17:05:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_sys_user
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user`;
CREATE TABLE `t_sys_user` (
  `ID` varchar(32) NOT NULL COMMENT '主键ID',
  `USER_NAME` varchar(40) NOT NULL COMMENT '用户名',
  `PASSWORD` varchar(40) NOT NULL COMMENT '密码',
  `NAME` varchar(40) NOT NULL COMMENT '姓名',
  `CARD_ID` varchar(18) DEFAULT NULL COMMENT '身份证号码',
  `SEX` char(1) NOT NULL COMMENT '性别(下拉)',
  `DUTY_LEVEL` char(2) DEFAULT NULL COMMENT '职务级别(下拉)',
  `TECH_TITLE` text COMMENT '技术职称(手动填写)',
  `DEGREE` char(1) DEFAULT NULL COMMENT '学历(下拉)',
  `TELEPHONE` varchar(15) DEFAULT NULL COMMENT '电话号码',
  `MOBILE` varchar(11) DEFAULT NULL COMMENT '手机号码',
  `EMAIL` varchar(40) DEFAULT NULL COMMENT '电子邮件',
  `BIRTHDAY` datetime DEFAULT NULL COMMENT '出生年月',
  `START_WORKDATE` datetime DEFAULT NULL COMMENT '开始工作时间',
  `SCHOOL` varchar(100) DEFAULT NULL COMMENT '毕业院校',
  `STUDY_MAJOR` varchar(100) DEFAULT NULL COMMENT '所学专业',
  `ADDRESS` varchar(100) DEFAULT NULL COMMENT '家庭住址',
  `BORN_PLACE` varchar(100) DEFAULT NULL COMMENT '出生地',
  `POLITICAL_STATUS` varchar(32) DEFAULT NULL COMMENT '政治面貌',
  `NATIONALITY` varchar(32) DEFAULT NULL COMMENT '用户民族',
  `ORDER_INDEX` decimal(65,30) NOT NULL COMMENT '顺序号',
  `DESCRIPTION` text COMMENT '备注',
  `STATUS` decimal(65,30) NOT NULL COMMENT '账号启用状态(0-禁用 1-启用)',
  `LOGIN_TIME` datetime DEFAULT NULL COMMENT '登录时间',
  `LOGOUT_TIME` datetime DEFAULT NULL COMMENT '登出时间',
  `LINE_STATUS` char(1) DEFAULT NULL COMMENT '登录状态(0-退出状态1-登录状态)',
  `CREATOR` varchar(32) NOT NULL COMMENT '创建者',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `LAST_UPDATOR` varchar(32) DEFAULT NULL COMMENT '修改者',
  `LAST_UPDATE_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `DEL_FLAG` char(1) NOT NULL COMMENT '删除标识(0-未删除;1-已删除)',
  `TYPE` char(1) DEFAULT NULL COMMENT '类型（是否管理员0-非管理员 1-管理员）',
  `HOUSE_NUM` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `AK_UK_USER_T_SYS_US` (`USER_NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录系统的用户信息包括账号信息，用户相关信息,登录登出等';
