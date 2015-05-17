/*
Navicat MySQL Data Transfer

Source Server         : alkaidEcs1
Source Server Version : 50537
Source Host           : 120.25.204.232:3306
Source Database       : weplt

Target Server Type    : MYSQL
Target Server Version : 50537
File Encoding         : 65001

Date: 2015-05-18 02:11:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for wplt_custom_reply_news
-- ----------------------------
DROP TABLE IF EXISTS `wplt_custom_reply_news`;
CREATE TABLE `wplt_custom_reply_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `keyword` varchar(100) NOT NULL COMMENT '关键词',
  `keyword_type` tinyint(2) DEFAULT NULL COMMENT '关键词类型',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `intro` text COMMENT '简介',
  `cate_id` int(10) unsigned DEFAULT '0' COMMENT '所属类别',
  `cover` int(10) unsigned DEFAULT NULL COMMENT '封面图片',
  `content` text NOT NULL COMMENT '内容',
  `cTime` int(10) DEFAULT NULL COMMENT '发布时间',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序号',
  `view_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '浏览数',
  `token` varchar(255) NOT NULL COMMENT 'Token',
  `jump_url` varchar(2048) NOT NULL COMMENT '外链',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wplt_custom_reply_news
-- ----------------------------
INSERT INTO `wplt_custom_reply_news` VALUES ('1', 'test109', '0', 'test109', 'sdfsdf', '0', '367', '', '1431740601', '0', '0', 'gh_99be645d3d8f', 'https://open.weixin.qq.com/connect/oauth2/authorize?appid=wxd84c8b2f576aa65b&redirect_uri=http%3a%2f%2fwechatengine.com%2fwei%2fplt%2fwengine%2findex.php%3fs%3d%2faddon%2fLangerieCard1%2fLangerieCardPublic%2fdetail%2fid%2f109%2fmpid%2f109%2fcardid%2fpY5Fws4JV5pKaXnTxrbZeojhj8CA.html&response_type=code&scope=snsapi_base&state=123#wechat_redirect');
