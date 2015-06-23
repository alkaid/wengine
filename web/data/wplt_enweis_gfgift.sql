/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50538
Source Host           : localhost:3306
Source Database       : weplt

Target Server Type    : MYSQL
Target Server Version : 50538
File Encoding         : 65001

Date: 2015-06-24 01:35:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for wplt_enweis_gfgift
-- ----------------------------
DROP TABLE IF EXISTS `wplt_enweis_gfgift`;
CREATE TABLE `wplt_enweis_gfgift` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vip_phone` varchar(255) NOT NULL COMMENT '邀请者电话',
  `gf_openid` varchar(255) NOT NULL COMMENT '被邀请的闺蜜',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='伊维斯闺蜜礼邀请者和被邀请者记录';

-- ----------------------------
-- Records of wplt_enweis_gfgift
-- ----------------------------
