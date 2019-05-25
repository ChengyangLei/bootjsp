/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : baseplatform

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2019-05-08 17:11:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cm_upload_files
-- ----------------------------
DROP TABLE IF EXISTS `cm_upload_files`;
CREATE TABLE `cm_upload_files` (
  `FILE_ID` varchar(32) NOT NULL COMMENT '文件ID(主键)',
  `FILE_NAME` varchar(128) DEFAULT NULL COMMENT '文件名',
  `FILE_PATH` text COMMENT '文件路径',
  `FILE_SIZE` decimal(22,4) DEFAULT NULL COMMENT '文件大小(MB)',
  `FILE_TYPE` varchar(8) DEFAULT NULL COMMENT '文件类型\n如.jpg,.png,.txt',
  `FILE_TIME` datetime DEFAULT NULL COMMENT '上传时间',
  `FILE_BODY` longblob COMMENT '文件内容',
  `FILE_BIZ` varchar(32) DEFAULT NULL COMMENT '业务外键ID\n保存上传附件的业务主表主键ID',
  `FILE_FIRST` varchar(32) DEFAULT NULL COMMENT '逻辑编码 默认值:0\n当系统通过file_biz无法精确定位文件时再加上这个条件确定附件',
  `FILE_FIRST_NAME` varchar(64) DEFAULT NULL COMMENT '逻辑名称',
  `FILE_COMPRESS` text COMMENT '文件压缩路径(只有图片才会有压缩，其他文件没有)',
  `FILE_DELETED` char(1) DEFAULT NULL COMMENT '删除标志(逻辑删除时标志) \n0正常，1删除',
  `FILE_BODY_SAVE` char(1) DEFAULT NULL COMMENT '是否保存文件到数据库\n1:是，0否',
  `UPDATE_ORGID` varchar(32) DEFAULT NULL COMMENT '操作单位id',
  `UPDATE_USER_ID` varchar(32) DEFAULT NULL COMMENT '操作用户id',
  `KEYWORD` text COMMENT '关键字（类似备注）',
  `SDFL` varchar(50) DEFAULT NULL COMMENT '发送标示位\n见 工程名称与代码表(TB0001_PRNMSR_044) 同字段说明',
  `FILE_ROLE` char(1) DEFAULT NULL COMMENT '数据权限范围\n1：当前部门可以查看（默认）\n0：上传者可以查看\n\n数据查询条件应该是\nwhere   (\n (UPDATE_ORGID=‘部门ID’  and FILE_ROLE=''''1'''')\nor \n (UPDATE_USER_ID=‘用户ID’  and FILE_ROLE=''''0'''')\n)',
  PRIMARY KEY (`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='附件表';
