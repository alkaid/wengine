-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- 主机: localhost:8080
-- 生成日期: 2015-06-20 10:44:42
-- 服务器版本: 5.1.73
-- PHP 版本: 5.3.3

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `weplt`
--

-- --------------------------------------------------------

-- ----------------------------
-- Table structure for wplt_attribute
-- ----------------------------
DROP TABLE IF EXISTS `wplt_attribute`;
CREATE TABLE `wplt_attribute` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '字段名',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '字段注释',
  `field` varchar(100) NOT NULL DEFAULT '' COMMENT '字段定义',
  `type` varchar(20) NOT NULL DEFAULT '' COMMENT '数据类型',
  `value` varchar(100) NOT NULL DEFAULT '' COMMENT '字段默认值',
  `remark` varchar(100) NOT NULL DEFAULT '' COMMENT '备注',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `extra` text NOT NULL COMMENT '参数',
  `model_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '模型id',
  `is_must` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否必填',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `validate_rule` varchar(255) NOT NULL,
  `validate_time` tinyint(1) unsigned NOT NULL,
  `error_info` varchar(100) NOT NULL,
  `validate_type` varchar(25) NOT NULL,
  `auto_rule` varchar(100) NOT NULL,
  `auto_time` tinyint(1) unsigned NOT NULL,
  `auto_type` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1420 DEFAULT CHARSET=utf8 COMMENT='模型属性表';

-- ----------------------------
-- Records of wplt_attribute
-- ----------------------------
INSERT INTO `wplt_attribute` VALUES ('1338', 'status', '数据状态', 'tinyint(4) NOT NULL ', 'radio', '0', '', '0', '-1:删除\r\n0:禁用\r\n1:正常\r\n2:待审核\r\n3:草稿', '152', '0', '1', '1384508496', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('1337', 'update_time', '更新时间', 'int(10) unsigned NOT NULL ', 'datetime', '0', '', '0', '', '152', '0', '1', '1384508277', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('1336', 'create_time', '创建时间', 'int(10) unsigned NOT NULL ', 'datetime', '0', '', '1', '', '152', '0', '1', '1383895903', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('1335', 'level', '优先级', 'int(10) NOT NULL ', 'num', '0', '越高排序越靠前', '1', '', '152', '0', '1', '1383895894', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('1334', 'extend', '扩展统计字段', 'int(10) unsigned NOT NULL ', 'num', '0', '根据需求自行使用', '0', '', '152', '0', '1', '1384508264', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('1332', 'view', '浏览量', 'int(10) unsigned NOT NULL ', 'num', '0', '', '1', '', '152', '0', '1', '1383895835', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('1333', 'comment', '评论数', 'int(10) unsigned NOT NULL ', 'num', '0', '', '1', '', '152', '0', '1', '1383895846', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('1331', 'attach', '附件数量', 'tinyint(3) unsigned NOT NULL ', 'num', '0', '', '0', '', '152', '0', '1', '1387260355', '1383891233', '', '0', '', 'regex', '', '0', 'function');
INSERT INTO `wplt_attribute` VALUES ('1330', 'deadline', '截至时间', 'int(10) unsigned NOT NULL ', 'datetime', '0', '0-永久有效', '1', '', '152', '0', '1', '1387163248', '1383891233', '', '0', '', 'regex', '', '0', 'function');
INSERT INTO `wplt_attribute` VALUES ('1329', 'display', '可见性', 'tinyint(3) unsigned NOT NULL ', 'radio', '1', '', '1', '0:不可见\r\n1:所有人可见', '152', '0', '1', '1386662271', '1383891233', '', '0', '', 'regex', '', '0', 'function');
INSERT INTO `wplt_attribute` VALUES ('1328', 'cover_id', '封面', 'int(10) unsigned NOT NULL ', 'picture', '0', '0-无封面，大于0-封面图片ID，需要函数处理', '1', '', '152', '0', '1', '1384147827', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('1327', 'link_id', '外链', 'int(10) unsigned NOT NULL ', 'num', '0', '0-非外链，大于0-外链ID,需要函数进行链接与编号的转换', '1', '', '152', '0', '1', '1383895757', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('1323', 'pid', '所属ID', 'int(10) unsigned NOT NULL ', 'num', '0', '父文档编号', '0', '', '152', '0', '1', '1384508543', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('1324', 'model_id', '内容模型ID', 'tinyint(3) unsigned NOT NULL ', 'num', '0', '该文档所对应的模型', '0', '', '152', '0', '1', '1384508350', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('1325', 'type', '内容类型', 'tinyint(3) unsigned NOT NULL ', 'select', '2', '', '1', '1:目录\r\n2:主题\r\n3:段落', '152', '0', '1', '1384511157', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('1326', 'position', '推荐位', 'smallint(5) unsigned NOT NULL ', 'checkbox', '0', '多个推荐则将其推荐值相加', '1', '1:列表推荐\r\n2:频道页推荐\r\n4:首页推荐', '152', '0', '1', '1383895640', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('1321', 'description', '描述', 'char(140) NOT NULL ', 'textarea', '', '', '1', '', '152', '0', '1', '1383894927', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('1322', 'root', '根节点', 'int(10) unsigned NOT NULL ', 'num', '0', '该文档的顶级文档编号', '0', '', '152', '0', '1', '1384508323', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('1320', 'category_id', '所属分类', 'int(10) unsigned NOT NULL ', 'string', '', '', '0', '', '152', '0', '1', '1384508336', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('1319', 'title', '标题', 'char(80) NOT NULL ', 'string', '', '文档标题', '1', '', '152', '0', '1', '1383894778', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('1318', 'name', '标识', 'char(40) NOT NULL ', 'string', '', '同一根节点下标识不重复', '1', '', '152', '0', '1', '1383894743', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('1317', 'uid', '用户ID', 'int(10) NULL ', 'num', '0', '', '0', '', '152', '0', '1', '1384508362', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('34', 'keyword', '关键词', 'varchar(100) NOT NULL ', 'string', '', '', '1', '', '5', '1', '1', '1388815953', '1388815953', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('35', 'addon', '关键词所属插件', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '5', '1', '1', '1388816207', '1388816207', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('36', 'aim_id', '插件表里的ID值', 'int(10) unsigned NOT NULL ', 'num', '', '', '1', '', '5', '1', '1', '1388816287', '1388816287', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('37', 'cTime', '创建时间', 'int(10) NOT NULL', 'datetime', '', '', '0', '', '5', '0', '1', '1407251221', '1388816392', '', '1', '', 'regex', 'time', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('38', 'keyword', '关键词', 'varchar(50) NOT NULL', 'string', '', '用户在微信里回复此关键词将会触发此投票。', '1', '', '6', '1', '1', '1392969972', '1388930888', 'keyword_unique', '1', '此关键词已经存在，请换成别的关键词再试试', 'function', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('39', 'title', '投票标题', 'varchar(100) NOT NULL', 'string', '', '', '1', '', '6', '1', '1', '1388931041', '1388931041', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('40', 'description', '投票描述', 'text NOT NULL', 'textarea', '', '', '1', '', '6', '0', '1', '1400633517', '1388931173', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('41', 'picurl', '封面图片', 'int(10) unsigned NOT NULL ', 'picture', '', '支持JPG、PNG格式，较好的效果为大图360*200，小图200*200', '1', '', '6', '0', '1', '1388931285', '1388931285', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('42', 'type', '选择类型', 'char(10) NOT NULL', 'radio', '0', '', '1', '0:单选\r\n1:多选', '6', '1', '1', '1388936429', '1388931487', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('43', 'start_date', '开始日期', 'int(10) NOT NULL', 'datetime', '', '', '1', '', '6', '0', '1', '1388931734', '1388931734', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('44', 'end_date', '结束日期', 'int(10) NOT NULL', 'datetime', '', '', '1', '', '6', '0', '1', '1388931769', '1388931769', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('45', 'is_img', '文字/图片投票', 'tinyint(2) NOT NULL', 'radio', '0', '', '0', '0:文字投票\r\n1:图片投票', '6', '1', '1', '1389081985', '1388931941', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('46', 'vote_count', '投票数', 'int(10) unsigned NOT NULL ', 'num', '0', '', '0', '', '6', '0', '1', '1388932035', '1388932035', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('47', 'cTime', '投票创建时间', 'int(10) NOT NULL', 'datetime', '', '', '0', '', '6', '1', '1', '1388932128', '1388932128', '', '1', '', 'regex', 'time', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('48', 'vote_id', '投票ID', 'int(10) unsigned NOT NULL ', 'num', '', '', '4', '', '7', '1', '1', '1388982678', '1388933478', '', '3', '', 'regex', '$_REQUEST[\'vote_id\']', '3', 'string');
INSERT INTO `wplt_attribute` VALUES ('49', 'name', '选项标题', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '7', '1', '1', '1388933552', '1388933552', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('50', 'image', '图片选项', 'int(10) unsigned NOT NULL ', 'picture', '', '', '5', '', '7', '0', '1', '1388984467', '1388933679', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('51', 'opt_count', '当前选项投票数', 'int(10) unsigned NOT NULL ', 'num', '0', '', '0', '', '7', '0', '1', '1388933860', '1388933860', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('52', 'order', '选项排序', 'int(10) unsigned NOT NULL ', 'num', '0', '', '1', '', '7', '0', '1', '1388933951', '1388933951', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('53', 'vote_id', '投票ID', 'int(10) unsigned NOT NULL ', 'num', '', '', '0', '', '8', '1', '1', '1388934189', '1388934189', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('54', 'user_id', '用户ID', 'int(10) NOT NULL ', 'num', '', '', '0', '', '8', '0', '1', '1388934265', '1388934265', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('55', 'token', '用户TOKEN', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '8', '0', '1', '1388934296', '1388934296', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('56', 'options', '选择选项', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '8', '1', '1', '1388934351', '1388934351', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('57', 'cTime', '创建时间', 'int(10) NOT NULL', 'datetime', '', '', '0', '', '8', '0', '1', '1388934413', '1388934392', '', '3', '', 'regex', 'time', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('58', 'mTime', '更新时间', 'int(10) NOT NULL', 'datetime', '', '', '0', '', '6', '0', '1', '1390634006', '1390634006', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('77', 'token', 'Token', 'varchar(100) NOT NULL', 'string', '', '', '0', '', '11', '0', '1', '1402453598', '1391597344', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('66', 'token', 'Token', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '6', '0', '1', '1391397388', '1391397388', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('67', 'token', 'Token', 'varchar(100) NOT NULL ', 'string', '', '', '0', '', '5', '0', '1', '1408945788', '1391399528', '', '3', '', 'regex', 'get_token', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('68', 'uid', '用户ID', 'int(10) NULL ', 'num', '', '', '0', '', '11', '1', '1', '1391575873', '1391575210', '', '3', '', 'regex', 'get_mid', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('69', 'public_name', '公众号名称', 'varchar(50) NOT NULL', 'string', '', '', '1', '', '11', '1', '1', '1391576452', '1391575955', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('70', 'public_id', '公众号原始id', 'varchar(100) NOT NULL', 'string', '', '请正确填写，保存后不能再修改，且无法接收到微信的信息', '1', '', '11', '1', '1', '1402453976', '1391576015', '', '1', '公众号原始ID已经存在，请不要重复增加', 'unique', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('71', 'wechat', '微信号', 'varchar(100) NOT NULL', 'string', '', '', '1', '', '11', '1', '1', '1391576484', '1391576144', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('72', 'interface_url', '接口地址', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '11', '0', '1', '1392946881', '1391576234', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('73', 'headface_url', '公众号头像', 'varchar(255) NOT NULL', 'picture', '', '', '0', '', '11', '0', '1', '1416920109', '1391576300', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('74', 'area', '地区', 'varchar(50) NOT NULL', 'string', '', '', '0', '', '11', '0', '1', '1392946934', '1391576435', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('75', 'addon_config', '插件配置', 'text NOT NULL', 'textarea', '', '', '0', '', '11', '0', '1', '1391576537', '1391576537', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('76', 'addon_status', '插件状态', 'text NOT NULL', 'textarea', '', '', '0', '', '11', '0', '1', '1391576571', '1391576571', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('187', 'cTime', '发布时间', 'int(10) NULL', 'datetime', '', '', '0', '', '31', '0', '1', '1395485303', '1395485303', '', '3', '', 'regex', 'time', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('186', 'content', '通知内容', 'text NOT NULL', 'editor', '', '', '1', '', '31', '0', '1', '1395485247', '1395485247', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('185', 'title', '标题', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '31', '0', '1', '1395485192', '1395485192', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('183', 'number', '卡号', 'varchar(50) NULL', 'string', '', '', '3', '', '30', '0', '1', '1395484806', '1395483310', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('184', 'cTime', '加入时间', 'int(10) NULL', 'datetime', '', '', '0', '', '30', '0', '1', '1395484366', '1395484366', '', '3', '', 'regex', 'time', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('182', 'phone', '手机号', 'varchar(30) NULL', 'string', '', '', '1', '', '30', '0', '1', '1395483248', '1395483248', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('181', 'username', '姓名', 'varchar(100) NULL', 'string', '', '', '1', '', '30', '0', '1', '1395483048', '1395483048', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('180', 'uid', '用户UID', 'int(10) NULL ', 'num', '', '', '0', '', '30', '0', '1', '1395482973', '1395482973', '', '3', '', 'regex', 'get_mid', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('90', 'type', '公众号类型', 'char(10) NOT NULL', 'radio', '0', '', '1', '0:普通订阅号\r\n1:认证订阅号/普通服务号\r\n2:认证服务号', '11', '0', '1', '1416904702', '1393718575', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('91', 'appid', 'AppID', 'varchar(255) NOT NULL', 'string', '', '应用ID', '1', '', '11', '0', '1', '1416904750', '1393718735', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('92', 'secret', 'AppSecret', 'varchar(255) NOT NULL', 'string', '', '应用密钥', '1', '', '11', '0', '1', '1416904771', '1393718806', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('93', 'group_id', '等级', 'int(10) unsigned NOT NULL ', 'select', '0', '', '0', '', '11', '0', '1', '1393753499', '1393724468', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('94', 'title', '等级名', 'varchar(50) NOT NULL', 'string', '', '', '1', '', '13', '0', '1', '1393724854', '1393724854', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('95', 'addon_status', '插件权限', 'text NOT NULL', 'checkbox', '', '', '1', '1:好人\r\n2:环境', '13', '0', '1', '1393731903', '1393725072', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('96', 'version', '版本号', 'int(10) unsigned NOT NULL ', 'num', '', '', '1', '', '14', '1', '1', '1393770457', '1393770457', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('97', 'title', '升级包名', 'varchar(50) NOT NULL', 'string', '', '', '1', '', '14', '1', '1', '1393770499', '1393770499', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('98', 'description', '描述', 'text NOT NULL', 'textarea', '', '', '1', '', '14', '0', '1', '1393770546', '1393770546', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('99', 'create_date', '创建时间', 'int(10) NOT NULL', 'datetime', '', '', '1', '', '14', '0', '1', '1393770591', '1393770591', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('100', 'download_count', '下载统计', 'int(10) unsigned NOT NULL ', 'num', '0', '', '0', '', '14', '0', '1', '1393770659', '1393770659', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('101', 'package', '升级包地址', 'varchar(255) NOT NULL', 'textarea', '', '', '1', '', '14', '1', '1', '1393812247', '1393770727', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('166', 'keyword', '关键词', 'varchar(255) NOT NULL', 'string', '', '多个关键词请用空格格开', '1', '', '22', '1', '1', '1393912492', '1393911842', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('165', 'keyword_filter', '关键词过滤', 'tinyint(2) NOT NULL', 'bool', '0', '如设置电影为触发词,用户输入 电影 美国派 时，如果启用过滤只将美国派这个词发送到的你的接口，如果不过滤 就是整个 电影 美国派全部发送到的接口', '1', '0:不过滤\r\n1:过滤', '22', '0', '1', '1394268410', '1393912057', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('161', 'api_token', 'Token', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '22', '0', '1', '1393922455', '1393912408', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('162', 'cTime', '创建时间', 'int(10) NOT NULL', 'datetime', '', '', '0', '', '22', '0', '1', '1393913608', '1393913608', '', '3', '', 'regex', 'time', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('108', 'keyword_length', '关键词长度', 'int(10) unsigned NULL ', 'num', '0', '', '1', '', '5', '0', '1', '1407251147', '1393918566', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('109', 'keyword_type', '匹配类型', 'tinyint(2) NULL ', 'select', '0', '', '1', '0:完全匹配\r\n1:左边匹配\r\n2:右边匹配\r\n3:模糊匹配', '5', '0', '1', '1393979962', '1393919686', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('110', 'extra_text', '文本扩展', 'text NULL ', 'textarea', '', '', '0', '', '5', '0', '1', '1407251248', '1393919736', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('111', 'extra_int', '数字扩展', 'int(10) NULL ', 'num', '', '', '0', '', '5', '0', '1', '1407251240', '1393919798', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('163', 'api_url', '第三方URL', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '22', '0', '1', '1393912354', '1393912354', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('164', 'output_format', '数据输出格式', 'tinyint(1) NULL', 'select', '0', '', '1', '0:标准微信xml\r\n1:json格式', '22', '0', '1', '1394268422', '1393912288', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('113', 'title', '标题', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '16', '1', '1', '1394068622', '1394033402', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('114', 'uid', '用户ID', 'int(10) NULL ', 'num', '0', '', '0', '', '16', '0', '1', '1394087760', '1394033447', '', '3', '', 'regex', 'get_mid', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('115', 'content', '内容', 'text NULL ', 'editor', '', '', '1', '', '16', '1', '1', '1394033484', '1394033484', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('116', 'cTime', '发布时间', 'int(10) NULL ', 'datetime', '', '', '0', '', '16', '0', '1', '1394033571', '1394033571', '', '3', '', 'regex', 'time', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('117', 'attach', '附件', 'varchar(255) NULL ', 'file', '', '', '1', '', '16', '0', '1', '1394033674', '1394033674', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('118', 'is_top', '置顶', 'int(10) NULL', 'num', '0', '0表示不置顶，否则其它值表示置顶且值是置顶的时间', '0', '0:不置顶\r\n1:置顶', '16', '0', '1', '1394068971', '1394068787', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('119', 'cid', '分类', 'tinyint(4) NULL ', 'select', '', '', '1', '1:安装使用\r\n2:BUG反馈\r\n3:发展建议\r\n4:微信需求\r\n5:微信开发\r\n6:微信运营\r\n7:站内公告', '16', '1', '1', '1394069964', '1394069964', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('120', 'view_count', '浏览数', 'int(11) unsigned NULL ', 'num', '0', '', '0', '', '16', '0', '1', '1394072168', '1394072168', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('121', 'reply_count', '回复数', 'int(11) unsigned NULL ', 'num', '0', '', '0', '', '16', '0', '1', '1394072217', '1394072217', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('122', 'title', '应用标题', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '17', '1', '1', '1402758132', '1394033402', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('123', 'uid', '用户ID', 'int(10) NULL ', 'num', '0', '', '0', '', '17', '0', '1', '1394087733', '1394033447', '', '3', '', 'regex', 'get_mid', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('124', 'content', '应用详细介绍', 'text NULL ', 'editor', '', '', '1', '', '17', '1', '1', '1402758118', '1394033484', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('125', 'cTime', '发布时间', 'int(10) NULL ', 'datetime', '', '', '0', '', '17', '0', '1', '1394033571', '1394033571', '', '3', '', 'regex', 'time', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('126', 'attach', '应用压缩包', 'varchar(255) NULL ', 'file', '', '需要上传zip文件', '1', '', '17', '0', '1', '1402758100', '1394033674', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('127', 'is_top', '置顶', 'int(10) NULL ', 'bool', '0', '0表示不置顶，否则其它值表示置顶且值是置顶的时间', '1', '0:不置顶\r\n1:置顶', '17', '0', '1', '1402800009', '1394068787', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('128', 'cid', '分类', 'tinyint(4) NULL ', 'select', '', '', '0', '1:基础模块\r\n2:行业模块\r\n3:会议活动\r\n4:娱乐模块\r\n5:其它模块', '17', '0', '1', '1402758069', '1394069964', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('129', 'view_count', '浏览数', 'int(11) unsigned NULL ', 'num', '0', '', '0', '', '17', '0', '1', '1394072168', '1394072168', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('135', 'download_count', '下载数', 'int(10) unsigned NULL ', 'num', '0', '', '0', '', '17', '0', '1', '1394085763', '1394085763', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('132', 'img_2', '应用截图2', 'int(10) unsigned NULL ', 'picture', '', '', '1', '', '17', '0', '1', '1402758035', '1394084714', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('131', 'img_1', '应用截图1', 'int(10) unsigned NULL ', 'picture', '', '', '1', '', '17', '0', '1', '1402758046', '1394084635', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('133', 'img_3', '应用截图3', 'int(10) unsigned NULL ', 'picture', '', '', '1', '', '17', '0', '1', '1402758021', '1394084757', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('134', 'img_4', '应用截图4', 'int(10) unsigned NULL ', 'picture', '', '', '1', '', '17', '0', '1', '1402758011', '1394084797', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('136', 'cTime', '创建时间', 'int(10) NOT NULL', 'datetime', '', '', '0', '', '18', '0', '1', '1393234678', '1393234678', '', '3', '', 'regex', 'time', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('137', 'content', '内容', 'text NOT NULL', 'textarea', '', '', '1', '', '18', '1', '1', '1393234583', '1393234583', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('138', 'uid', '用户ID', 'int(10) NULL ', 'num', '0', '', '0', '', '18', '0', '1', '1393234534', '1393234534', '', '3', '', 'regex', 'get_mid', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('160', 'keyword_type', '关键词类型', 'tinyint(2) NULL', 'select', '0', '', '1', '0:完全匹配\r\n1:左边匹配\r\n2:右边匹配\r\n3:模糊匹配', '22', '0', '1', '1394268247', '1393921586', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('652', 'sort', '排序号', 'tinyint(4) NULL ', 'num', '0', '数值越小越靠前', '1', '', '85', '0', '1', '1394523288', '1394519175', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('651', 'pid', '一级菜单', 'int(10) NULL', 'select', '0', '如果是一级菜单，选择“无”即可', '1', '0:无', '85', '0', '1', '1416810279', '1394518930', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('650', 'title', '菜单名', 'varchar(50) NOT NULL', 'string', '', '可创建最多 3 个一级菜单，每个一级菜单下可创建最多 5 个二级菜单。编辑中的菜单不会马上被用户看到，请放心调试。', '1', '', '85', '1', '1', '1408951570', '1394518988', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('649', 'keyword', '关联关键词', 'varchar(100) NULL', 'string', '', '', '1', '', '85', '0', '1', '1416812109', '1394519054', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('648', 'url', '关联URL', 'varchar(255) NULL ', 'string', '', '', '1', '', '85', '0', '1', '1394519090', '1394519090', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('194', 'token', 'Token', 'varchar(100) NOT NULL', 'string', '', '', '0', '', '31', '0', '1', '1395911896', '1395911896', '', '3', '', 'regex', 'get_token', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('195', 'token', 'Token', 'varchar(100) NOT NULL', 'string', '', '', '0', '', '30', '0', '1', '1395973788', '1395912028', '', '3', '', 'regex', 'get_token', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('197', 'title', '分类标题', 'varchar(100) NOT NULL', 'string', '', '', '1', '', '33', '1', '1', '1408950771', '1395988016', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('198', 'icon', '分类图片', 'int(10) unsigned NULL ', 'picture', '', '', '1', '', '33', '0', '1', '1395988966', '1395988966', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('199', 'url', '外链', 'varchar(255) NOT NULL', 'string', '', '为空时默认跳转到该分类的文章列表页面', '1', '', '33', '0', '1', '1401408363', '1395989660', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('200', 'is_show', '显示', 'tinyint(2) NOT NULL', 'bool', '1', '', '1', '0: 不显示\r\n1: 显示', '33', '0', '1', '1395989709', '1395989709', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('201', 'token', 'Token', 'varchar(100) NULL ', 'string', '', '', '0', '', '33', '0', '1', '1395989760', '1395989760', '', '3', '', 'regex', 'get_token', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('202', 'keyword', '关键词', 'varchar(100) NOT NULL', 'string', '', '', '1', '', '34', '1', '1', '1396061575', '1396061575', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('203', 'keyword_type', '关键词类型', 'tinyint(2) NULL', 'select', '', '', '1', '0:完全匹配\r\n1:左边匹配\r\n2:右边匹配\r\n3:模糊匹配', '34', '0', '1', '1396061814', '1396061765', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('204', 'title', '标题', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '34', '1', '1', '1396061877', '1396061859', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('205', 'intro', '简介', 'text NULL', 'textarea', '', '', '1', '', '34', '0', '1', '1396061947', '1396061947', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('206', 'cate_id', '所属类别', 'int(10) unsigned NULL ', 'select', '0', '要先在微官网分类里配置好分类才可选择', '1', '0:请选择分类', '34', '0', '1', '1396078914', '1396062003', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('207', 'cover', '封面图片', 'int(10) unsigned NULL ', 'picture', '', '', '1', '', '34', '0', '1', '1396062093', '1396062093', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('208', 'content', '内容', 'text NOT NULL', 'editor', '', '', '1', '', '34', '0', '1', '1396062146', '1396062146', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('209', 'cTime', '发布时间', 'int(10) NULL', 'datetime', '', '', '0', '', '34', '0', '1', '1396075102', '1396075102', '', '3', '', 'regex', 'time', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('210', 'title', '标题', 'varchar(255) NULL', 'string', '', '可为空', '1', '', '35', '0', '1', '1396098316', '1396098316', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('211', 'img', '图片', 'int(10) unsigned NOT NULL ', 'picture', '', '', '1', '', '35', '1', '1', '1396098349', '1396098349', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('212', 'url', '链接地址', 'varchar(255) NULL', 'string', '', '', '1', '', '35', '0', '1', '1396098380', '1396098380', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('213', 'is_show', '是否显示', 'tinyint(2) NULL', 'bool', '1', '', '1', '0:不显示\r\n1:显示', '35', '0', '1', '1396098464', '1396098464', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('214', 'sort', '排序', 'int(10) unsigned NULL ', 'num', '0', '值越小越靠前', '1', '', '35', '0', '1', '1396098682', '1396098682', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('215', 'token', 'Token', 'varchar(100) NULL', 'string', '', '', '0', '', '35', '0', '1', '1396098747', '1396098747', '', '3', '', 'regex', 'get_token', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('216', 'url', '关联URL', 'varchar(255) NULL ', 'string', '', '', '1', '', '36', '0', '1', '1394519090', '1394519090', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('218', 'title', '菜单名', 'varchar(50) NOT NULL', 'string', '', '可创建最多 3 个一级菜单，每个一级菜单下可创建最多 5 个二级菜单。编辑中的菜单不会马上被用户看到，请放心调试。', '1', '', '36', '1', '1', '1408950832', '1394518988', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('219', 'pid', '一级菜单', 'tinyint(2) NULL', 'select', '0', '如果是一级菜单，选择“无”即可', '1', '0:无', '36', '0', '1', '1409045931', '1394518930', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('220', 'sort', '排序号', 'tinyint(4) NULL ', 'num', '0', '数值越小越靠前', '1', '', '36', '0', '1', '1394523288', '1394519175', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('221', 'token', 'Token', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '36', '0', '1', '1394526820', '1394526820', '', '3', '', 'regex', 'get_token', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('423', 'sort', '排序号', 'int(10) NULL ', 'num', '0', '数值越小越靠前', '1', '', '33', '0', '1', '1396340334', '1396340334', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('424', 'icon', '图标', 'int(10) unsigned NULL ', 'picture', '', '根据选择的底部模板决定是否需要上传图标', '1', '', '36', '0', '1', '1396506297', '1396506297', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('425', 'sort', '排序号', 'int(10) unsigned NOT NULL ', 'num', '0', '数值越小越靠前', '1', '', '34', '0', '1', '1396510508', '1396510508', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('426', 'view_count', '浏览数', 'int(10) unsigned NOT NULL ', 'num', '0', '', '0', '', '34', '0', '1', '1396510630', '1396510630', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('427', 'keyword', '关键词', 'varchar(255) NOT NULL', 'string', '', '多个关键词请用空格分开：例如: 高 富 帅', '1', '', '62', '0', '1', '1396578460', '1396578212', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('428', 'keyword_type', '关键词类型', 'tinyint(2) NOT NULL', 'select', '0', '', '1', '0:完全匹配\r\n1:左边匹配\r\n2:右边匹配\r\n3:模糊匹配', '62', '0', '1', '1396623302', '1396578249', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('429', 'content', '回复内容', 'text NOT NULL', 'textarea', '', '请不要多于1000字否则无法发送。支持加超链接，但URL必须带http://', '1', '', '62', '0', '1', '1396607362', '1396578597', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('430', 'keyword', '关键词', 'varchar(100) NOT NULL', 'string', '', '', '1', '', '64', '1', '1', '1396061575', '1396061575', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('431', 'keyword_type', '关键词类型', 'tinyint(2) NULL', 'select', '', '', '1', '0:完全匹配\r\n1:左边匹配\r\n2:右边匹配\r\n3:模糊匹配', '64', '0', '1', '1396061814', '1396061765', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('432', 'title', '标题', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '64', '1', '1', '1396061877', '1396061859', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('433', 'intro', '简介', 'text NULL', 'textarea', '', '', '1', '', '64', '0', '1', '1396061947', '1396061947', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('434', 'cate_id', '所属类别', 'int(10) unsigned NULL ', 'select', '0', '要先在微官网分类里配置好分类才可选择', '1', '0:请选择分类', '64', '0', '1', '1396078914', '1396062003', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('435', 'cover', '封面图片', 'int(10) unsigned NULL ', 'picture', '', '', '1', '', '64', '0', '1', '1396062093', '1396062093', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('436', 'content', '内容', 'text NOT NULL', 'editor', '', '', '1', '', '64', '0', '1', '1396062146', '1396062146', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('437', 'cTime', '发布时间', 'int(10) NULL', 'datetime', '', '', '0', '', '64', '0', '1', '1396075102', '1396075102', '', '3', '', 'regex', 'time', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('438', 'sort', '排序号', 'int(10) unsigned NOT NULL ', 'num', '0', '数值越小越靠前', '1', '', '64', '0', '1', '1396510508', '1396510508', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('439', 'view_count', '浏览数', 'int(10) unsigned NOT NULL ', 'num', '0', '', '0', '', '64', '0', '1', '1396510630', '1396510630', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('440', 'view_count', '浏览数', 'int(10) unsigned NULL ', 'num', '0', '', '0', '', '62', '0', '1', '1396580643', '1396580643', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('441', 'sort', '排序号', 'int(10) unsigned NULL ', 'num', '0', '', '1', '', '62', '0', '1', '1396580674', '1396580674', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('444', 'keyword', '关键词', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '65', '0', '1', '1396602514', '1396602514', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('445', 'keyword_type', '关键词类型', 'tinyint(2) NOT NULL', 'select', '0', '', '1', '0:完全匹配\r\n1:左边匹配\r\n2:右边匹配\r\n3:模糊匹配', '65', '0', '1', '1396602706', '1396602548', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('446', 'mult_ids', '多图文ID', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '65', '0', '1', '1396602601', '1396602578', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('447', 'token', 'Token', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '65', '0', '1', '1396602821', '1396602821', '', '3', '', 'regex', 'get_token', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('448', 'token', 'Token', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '64', '0', '1', '1396602871', '1396602859', '', '3', '', 'regex', 'get_token', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('449', 'token', 'Token', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '62', '0', '1', '1396603007', '1396603007', '', '3', '', 'regex', 'get_token', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('481', 'finish_tip', '用户提交后提示内容', 'text NOT NULL', 'textarea', '', '为空默认为：提交成功，谢谢参与', '1', '', '69', '0', '1', '1396676366', '1396673689', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('478', 'cTime', '发布时间', 'int(10) unsigned NOT NULL ', 'datetime', '', '', '0', '', '69', '0', '1', '1396624612', '1396075102', '', '3', '', 'regex', 'time', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('479', 'token', 'Token', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '69', '0', '1', '1396602871', '1396602859', '', '3', '', 'regex', 'get_token', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('480', 'password', '表单密码', 'varchar(255) NOT NULL', 'string', '', '如要用户输入密码才能进入表单，则填写此项。否则留空，用户可直接进入表单', '0', '', '69', '0', '1', '1396871497', '1396672643', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('472', 'keyword_type', '关键词类型', 'tinyint(2) NOT NULL', 'select', '0', '', '1', '0:完全匹配\r\n1:左边匹配\r\n2:右边匹配\r\n3:模糊匹配', '69', '1', '1', '1396624426', '1396061765', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('473', 'title', '标题', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '69', '1', '1', '1396624461', '1396061859', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('474', 'intro', '封面简介', 'text NOT NULL', 'textarea', '', '', '1', '', '69', '0', '1', '1396624505', '1396061947', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('475', 'mTime', '修改时间', 'int(10) NOT NULL', 'datetime', '', '', '0', '', '69', '0', '1', '1396624664', '1396624664', '', '3', '', 'regex', 'time', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('476', 'cover', '封面图片', 'int(10) unsigned NOT NULL ', 'picture', '', '', '1', '', '69', '0', '1', '1396624534', '1396062093', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('471', 'keyword', '关键词', 'varchar(100) NOT NULL', 'string', '', '', '1', '', '69', '1', '1', '1396866048', '1396061575', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('493', 'type', '字段类型', 'char(50) NOT NULL', 'select', 'string', '用于表单中的展示方式', '1', 'string:单行输入\r\ntextarea:多行输入\r\nradio:单选\r\ncheckbox:多选\r\nselect:下拉选择\r\ndatetime:时间\r\npicture:上传图片\r\ncascade:级联', '70', '1', '1', '1398742035', '1396683600', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('492', 'title', '字段标题', 'varchar(255) NOT NULL', 'string', '', '请输入字段标题，用于表单显示', '1', '', '70', '1', '1', '1396676830', '1396676830', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('486', 'mTime', '修改时间', 'int(10) NOT NULL', 'datetime', '', '', '0', '', '70', '0', '1', '1396624664', '1396624664', '', '3', '', 'regex', 'time', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('511', 'keyword', '关键词', 'varchar(100) NOT NULL', 'string', '', '', '1', '', '73', '1', '1', '1396624337', '1396061575', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('494', 'extra', '参数', 'text NOT NULL', 'textarea', '', '字段类型为单选、多选、下拉选择和级联选择时的定义数据，其它字段类型为空', '1', '', '70', '0', '1', '1396835020', '1396685105', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('495', 'value', '默认值', 'varchar(255) NOT NULL', 'string', '', '字段的默认值', '1', '', '70', '0', '1', '1396685291', '1396685291', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('490', 'token', 'Token', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '70', '0', '1', '1396602871', '1396602859', '', '3', '', 'regex', 'get_token', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('491', 'name', '字段名', 'varchar(100) NOT NULL', 'string', '', '请输入字段名 英文字母开头，长度不超过30', '1', '', '70', '1', '1', '1396676840', '1396676792', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('496', 'remark', '字段备注', 'varchar(255) NOT NULL', 'string', '', '用于表单中的提示', '1', '', '70', '0', '1', '1396685482', '1396685482', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('497', 'is_must', '是否必填', 'tinyint(2) NOT NULL', 'bool', '', '用于自动验证', '1', '0:否\r\n1:是', '70', '0', '1', '1396685579', '1396685579', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('498', 'validate_rule', '正则验证', 'varchar(255) NOT NULL', 'string', '', '为空表示不作验证', '1', '', '70', '0', '1', '1396685776', '1396685776', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('499', 'sort', '排序号', 'int(10) unsigned NOT NULL ', 'num', '0', '值越小越靠前', '1', '', '70', '0', '1', '1396685825', '1396685825', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('500', 'error_info', '出错提示', 'varchar(255) NOT NULL', 'string', '', '验证不通过时的提示语', '1', '', '70', '0', '1', '1396685920', '1396685920', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('501', 'uid', '用户ID', 'int(10) NULL ', 'num', '', '', '0', '', '71', '0', '1', '1396688042', '1396688042', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('502', 'openid', 'OpenId', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '71', '0', '1', '1396688187', '1396688187', '', '3', '', 'regex', 'get_openid', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('503', 'forms_id', '表单ID', 'int(10) unsigned NOT NULL ', 'num', '', '', '4', '', '71', '0', '1', '1396710064', '1396688308', '', '3', '', 'regex', '', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('504', 'value', '表单值', 'text NOT NULL', 'textarea', '', '', '0', '', '71', '0', '1', '1396688355', '1396688355', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('505', 'cTime', '增加时间', 'int(10) NOT NULL', 'datetime', '', '', '0', '', '71', '0', '1', '1396688434', '1396688434', '', '3', '', 'regex', 'time', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('506', 'can_edit', '是否允许编辑', 'tinyint(2) NOT NULL', 'bool', '0', '用户提交表单是否可以再编辑', '1', '0:不允许\r\n1:允许', '69', '0', '1', '1396688624', '1396688624', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('507', 'forms_id', '表单ID', 'int(10) unsigned NOT NULL ', 'num', '', '', '4', '', '70', '0', '1', '1396710040', '1396690613', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('508', 'token', 'Token', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '71', '0', '1', '1396690911', '1396690911', '', '3', '', 'regex', 'get_token', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('509', 'is_show', '是否显示', 'tinyint(2) NOT NULL', 'select', '1', '是否显示在表单中', '1', '1:显示\r\n0:不显示', '70', '0', '1', '1396848437', '1396848437', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('510', 'content', '详细介绍', 'text NOT NULL', 'editor', '', '可不填', '1', '', '69', '0', '1', '1396865295', '1396865295', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('512', 'keyword_type', '关键词类型', 'tinyint(2) NOT NULL', 'select', '0', '', '1', '0:完全匹配\r\n1:左边匹配\r\n2:右边匹配\r\n3:模糊匹配', '73', '1', '1', '1396624426', '1396061765', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('513', 'title', '标题', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '73', '1', '1', '1396624461', '1396061859', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('514', 'intro', '封面简介', 'text NOT NULL', 'textarea', '', '', '1', '', '73', '0', '1', '1396624505', '1396061947', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('515', 'mTime', '修改时间', 'int(10) NOT NULL', 'datetime', '', '', '0', '', '73', '0', '1', '1396624664', '1396624664', '', '3', '', 'regex', 'time', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('516', 'cover', '封面图片', 'int(10) unsigned NOT NULL ', 'picture', '', '', '1', '', '73', '0', '1', '1396624534', '1396062093', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('518', 'cTime', '发布时间', 'int(10) unsigned NOT NULL ', 'datetime', '', '', '0', '', '73', '0', '1', '1396624612', '1396075102', '', '3', '', 'regex', 'time', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('519', 'token', 'Token', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '73', '0', '1', '1396602871', '1396602859', '', '3', '', 'regex', 'get_token', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('520', 'finish_tip', '结束语', 'text NOT NULL', 'textarea', '', '为空默认为：调研完成，谢谢参与', '1', '', '73', '0', '1', '1396953940', '1396953940', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('523', 'title', '标题', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '74', '1', '1', '1396624461', '1396061859', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('524', 'intro', '问题描述', 'text NOT NULL', 'textarea', '', '', '1', '', '74', '0', '1', '1396954176', '1396061947', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('528', 'cTime', '发布时间', 'int(10) unsigned NOT NULL ', 'datetime', '', '', '0', '', '74', '0', '1', '1396624612', '1396075102', '', '3', '', 'regex', 'time', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('529', 'token', 'Token', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '74', '0', '1', '1396602871', '1396602859', '', '3', '', 'regex', 'get_token', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('533', 'is_must', '是否必填', 'tinyint(2) NOT NULL', 'bool', '0', '', '1', '0:否\r\n1:是', '74', '0', '1', '1396954649', '1396954649', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('532', 'extra', '参数', 'text NOT NULL', 'textarea', '', '类型为单选、多选时的定义数据，格式见上面的提示', '1', '', '74', '0', '1', '1396954558', '1396954558', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('531', 'type', '问题类型', 'char(50) NOT NULL', 'radio', 'radio', '', '1', 'radio:单选题\r\ncheckbox:多选题\r\ntextarea:简答题', '74', '1', '1', '1396962517', '1396954463', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('530', 'survey_id', 'survey_id', 'int(10) unsigned NOT NULL ', 'num', '', '', '4', '', '74', '1', '1', '1396954240', '1396954240', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('534', 'sort', '排序号', 'int(10) unsigned NOT NULL ', 'num', '0', '值越小越靠前', '1', '', '74', '0', '1', '1396955010', '1396955010', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('548', 'answer', '回答内容', 'text NOT NULL', 'textarea', '', '', '0', '', '75', '0', '1', '1396955766', '1396955766', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('547', 'openid', 'OpenId', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '75', '0', '1', '1396955581', '1396955581', '', '3', '', 'regex', 'get_openid', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('546', 'uid', '用户UID', 'int(10) NULL ', 'num', '', '', '0', '', '75', '0', '1', '1396955530', '1396955530', '', '3', '', 'regex', 'get_mid', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('545', 'question_id', 'question_id', 'int(10) unsigned NOT NULL ', 'num', '', '', '4', '', '75', '1', '1', '1396955412', '1396955392', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('542', 'cTime', '发布时间', 'int(10) unsigned NOT NULL ', 'datetime', '', '', '0', '', '75', '0', '1', '1396624612', '1396075102', '', '3', '', 'regex', 'time', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('543', 'token', 'Token', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '75', '0', '1', '1396602871', '1396602859', '', '3', '', 'regex', 'get_token', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('544', 'survey_id', 'survey_id', 'int(10) unsigned NOT NULL ', 'num', '', '', '4', '', '75', '1', '1', '1396955403', '1396955369', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('549', 'keyword', '关键词', 'varchar(100) NOT NULL', 'string', '', '', '1', '', '76', '1', '1', '1396624337', '1396061575', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('550', 'keyword_type', '关键词类型', 'tinyint(2) NOT NULL', 'select', '0', '', '0', '0:完全匹配\r\n1:左边匹配\r\n2:右边匹配\r\n3:模糊匹配', '76', '1', '1', '1404310840', '1396061765', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('551', 'title', '试卷标题', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '76', '1', '1', '1396624461', '1396061859', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('552', 'intro', '封面简介', 'text NOT NULL', 'textarea', '', '', '1', '', '76', '0', '1', '1396624505', '1396061947', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('553', 'mTime', '修改时间', 'int(10) NOT NULL', 'datetime', '', '', '0', '', '76', '0', '1', '1396624664', '1396624664', '', '3', '', 'regex', 'time', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('554', 'cover', '封面图片', 'int(10) unsigned NOT NULL ', 'picture', '', '', '0', '', '76', '0', '1', '1404311362', '1396062093', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('555', 'cTime', '发布时间', 'int(10) unsigned NOT NULL ', 'datetime', '', '', '0', '', '76', '0', '1', '1396624612', '1396075102', '', '3', '', 'regex', 'time', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('556', 'token', 'Token', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '76', '0', '1', '1396602871', '1396602859', '', '3', '', 'regex', 'get_token', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('557', 'finish_tip', '结束语', 'text NOT NULL', 'textarea', '', '为空默认为：考试完成，谢谢参与', '0', '', '76', '0', '1', '1404313025', '1396953940', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('558', 'title', '题目标题', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '77', '1', '1', '1397037377', '1396061859', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('559', 'intro', '题目描述', 'text NOT NULL', 'textarea', '', '', '1', '', '77', '0', '1', '1396954176', '1396061947', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('560', 'cTime', '发布时间', 'int(10) unsigned NOT NULL ', 'datetime', '', '', '0', '', '77', '0', '1', '1396624612', '1396075102', '', '3', '', 'regex', 'time', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('561', 'token', 'Token', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '77', '0', '1', '1396602871', '1396602859', '', '3', '', 'regex', 'get_token', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('562', 'is_must', '是否必填', 'tinyint(2) NOT NULL', 'bool', '1', '', '0', '0:否\r\n1:是', '77', '0', '1', '1397035513', '1396954649', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('563', 'extra', '参数', 'text NOT NULL', 'textarea', '', '每个选项换一行，每项输入格式如：A:男人', '1', '', '77', '0', '1', '1397036210', '1396954558', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('564', 'type', '题目类型', 'char(50) NOT NULL', 'radio', 'radio', '', '1', 'radio:单选题\r\ncheckbox:多选题', '77', '1', '1', '1397036281', '1396954463', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('565', 'exam_id', 'exam_id', 'int(10) unsigned NOT NULL ', 'num', '', '', '4', '', '77', '1', '1', '1396954240', '1396954240', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('566', 'sort', '排序号', 'int(10) unsigned NOT NULL ', 'num', '0', '值越小越靠前', '1', '', '77', '0', '1', '1396955010', '1396955010', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('576', 'start_time', '考试开始时间', 'int(10) NOT NULL', 'datetime', '', '为空表示什么时候开始都可以', '1', '', '76', '0', '1', '1397036762', '1397036762', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('567', 'answer', '回答内容', 'text NOT NULL', 'textarea', '', '', '0', '', '78', '0', '1', '1396955766', '1396955766', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('568', 'openid', 'OpenId', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '78', '0', '1', '1396955581', '1396955581', '', '3', '', 'regex', 'get_openid', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('569', 'uid', '用户UID', 'int(10) NULL ', 'num', '', '', '0', '', '78', '0', '1', '1396955530', '1396955530', '', '3', '', 'regex', 'get_mid', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('570', 'question_id', 'question_id', 'int(10) unsigned NOT NULL ', 'num', '', '', '4', '', '78', '1', '1', '1396955412', '1396955392', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('571', 'cTime', '发布时间', 'int(10) unsigned NOT NULL ', 'datetime', '', '', '0', '', '78', '0', '1', '1396624612', '1396075102', '', '3', '', 'regex', 'time', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('572', 'token', 'Token', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '78', '0', '1', '1396602871', '1396602859', '', '3', '', 'regex', 'get_token', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('573', 'exam_id', 'exam_id', 'int(10) unsigned NOT NULL ', 'num', '', '', '4', '', '78', '1', '1', '1396955403', '1396955369', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('574', 'score', '分值', 'int(10) unsigned NOT NULL ', 'num', '0', '考生答对此题的得分数', '1', '', '77', '0', '1', '1397035609', '1397035609', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('575', 'answer', '标准答案', 'varchar(255) NOT NULL', 'string', '', '多个答案用空格分开，如： A B C', '1', '', '77', '0', '1', '1397035889', '1397035889', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('577', 'end_time', '考试结束时间', 'int(10) NOT NULL', 'datetime', '', '为空表示不限制结束时间', '1', '', '76', '0', '1', '1397036831', '1397036831', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('578', 'score', '得分', 'int(10) unsigned NOT NULL ', 'num', '0', '', '0', '', '78', '0', '1', '1397040133', '1397040133', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('579', 'keyword', '关键词', 'varchar(100) NOT NULL', 'string', '', '', '1', '', '79', '1', '1', '1396624337', '1396061575', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('580', 'keyword_type', '关键词类型', 'tinyint(2) NOT NULL', 'select', '0', '', '1', '0:完全匹配\r\n1:左边匹配\r\n2:右边匹配\r\n3:模糊匹配', '79', '1', '1', '1396624426', '1396061765', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('581', 'title', '问卷标题', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '79', '1', '1', '1396624461', '1396061859', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('582', 'intro', '封面简介', 'text NOT NULL', 'textarea', '', '', '1', '', '79', '0', '1', '1396624505', '1396061947', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('583', 'mTime', '修改时间', 'int(10) NOT NULL', 'datetime', '', '', '0', '', '79', '0', '1', '1396624664', '1396624664', '', '3', '', 'regex', 'time', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('584', 'cover', '封面图片', 'int(10) unsigned NOT NULL ', 'picture', '', '', '1', '', '79', '0', '1', '1396624534', '1396062093', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('586', 'token', 'Token', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '79', '0', '1', '1396602871', '1396602859', '', '3', '', 'regex', 'get_token', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('587', 'finish_tip', '评论语', 'text NOT NULL', 'textarea', '', '详细说明见上面的提示，配置格式：[0-59]不合格', '1', '', '79', '0', '1', '1397142371', '1396953940', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('590', 'title', '题目标题', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '80', '1', '1', '1397037377', '1396061859', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('591', 'intro', '题目描述', 'text NOT NULL', 'textarea', '', '', '1', '', '80', '0', '1', '1396954176', '1396061947', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('592', 'cTime', '发布时间', 'int(10) unsigned NOT NULL ', 'datetime', '', '', '0', '', '80', '0', '1', '1396624612', '1396075102', '', '3', '', 'regex', 'time', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('593', 'token', 'Token', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '80', '0', '1', '1396602871', '1396602859', '', '3', '', 'regex', 'get_token', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('594', 'is_must', '是否必填', 'tinyint(2) NOT NULL', 'bool', '1', '', '0', '0:否\r\n1:是', '80', '0', '1', '1397035513', '1396954649', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('595', 'extra', '参数', 'text NOT NULL', 'textarea', '', '输入格式见上面的提示', '1', '', '80', '0', '1', '1397142592', '1396954558', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('596', 'type', '题目类型', 'char(50) NOT NULL', 'radio', 'radio', '', '0', 'radio:单选题', '80', '1', '1', '1397142548', '1396954463', '', '3', '', 'regex', 'radio', '1', 'string');
INSERT INTO `wplt_attribute` VALUES ('597', 'test_id', 'test_id', 'int(10) unsigned NOT NULL ', 'num', '', '', '4', '', '80', '1', '1', '1396954240', '1396954240', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('598', 'sort', '排序号', 'int(10) unsigned NOT NULL ', 'num', '0', '值越小越靠前', '1', '', '80', '0', '1', '1396955010', '1396955010', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('601', 'answer', '回答内容', 'text NOT NULL', 'textarea', '', '', '0', '', '81', '0', '1', '1396955766', '1396955766', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('602', 'openid', 'OpenId', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '81', '0', '1', '1396955581', '1396955581', '', '3', '', 'regex', 'get_openid', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('603', 'uid', '用户UID', 'int(10) NULL ', 'num', '', '', '0', '', '81', '0', '1', '1396955530', '1396955530', '', '3', '', 'regex', 'get_mid', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('604', 'question_id', 'question_id', 'int(10) unsigned NOT NULL ', 'num', '', '', '4', '', '81', '1', '1', '1396955412', '1396955392', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('605', 'cTime', '发布时间', 'int(10) unsigned NOT NULL ', 'datetime', '', '', '0', '', '81', '0', '1', '1396624612', '1396075102', '', '3', '', 'regex', 'time', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('606', 'token', 'Token', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '81', '0', '1', '1396602871', '1396602859', '', '3', '', 'regex', 'get_token', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('607', 'test_id', 'test_id', 'int(10) unsigned NOT NULL ', 'num', '', '', '4', '', '81', '1', '1', '1396955403', '1396955369', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('608', 'score', '得分', 'int(10) unsigned NOT NULL ', 'num', '0', '', '0', '', '81', '0', '1', '1397040133', '1397040133', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('984', 'opercode', '会话状态', 'int(10) NOT NULL', 'num', '', '', '1', '', '120', '0', '1', '1406094322', '1406094322', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('678', 'img_1', '商品图片1', 'int(10) unsigned NOT NULL ', 'picture', '', '', '1', '', '83', '0', '1', '1398598870', '1398598870', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('679', 'img_2', '商品图片2', 'int(10) unsigned NOT NULL ', 'picture', '', '', '1', '', '83', '0', '1', '1398598904', '1398598904', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('625', 'title', '商品名称', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '83', '1', '1', '1397520732', '1396061859', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('626', 'intro', '商品简介', 'text NOT NULL', 'textarea', '', '', '1', '', '83', '0', '1', '1397521079', '1396061947', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('627', 'mTime', '修改时间', 'int(10) NOT NULL', 'datetime', '', '', '0', '', '83', '0', '1', '1396624664', '1396624664', '', '3', '', 'regex', 'time', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('628', 'cover', '商品封面图片', 'int(10) unsigned NOT NULL ', 'picture', '', '', '1', '', '83', '0', '1', '1397521134', '1396062093', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('629', 'content', '商品详情', 'text NOT NULL', 'editor', '', '', '1', '', '83', '0', '1', '1397521004', '1396062146', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('630', 'cTime', '发布时间', 'int(10) unsigned NOT NULL ', 'datetime', '', '', '0', '', '83', '0', '1', '1396624612', '1396075102', '', '3', '', 'regex', 'time', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('631', 'token', 'Token', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '83', '0', '1', '1396602871', '1396602859', '', '3', '', 'regex', 'get_token', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('632', 'param', '商品参数', 'text NOT NULL', 'editor', '', '', '1', '', '83', '0', '1', '1397521446', '1397521446', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('633', 'ad_url', '商品广告页面', 'varchar(255) NOT NULL', 'string', '', '可为空，填写商品广告页面的地址', '1', '', '83', '0', '1', '1397521579', '1397521579', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('634', 'buy_url', '购买地址', 'varchar(255) NOT NULL', 'string', '', '用户点击购买按钮时跳转的地址，可以是淘宝等网店的购买地址', '1', '', '83', '0', '1', '1397524287', '1397524287', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('635', 'cate_id_1', '商品一级分类', 'int(10) unsigned NOT NULL ', 'num', '0', '', '0', '', '83', '0', '1', '1397524477', '1397524433', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('636', 'cate_id_2', '商品二级分类', 'int(10) unsigned NOT NULL ', 'num', '0', '', '0', '', '83', '0', '1', '1397524466', '1397524466', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('637', 'market_price', '市场价', 'int(10) unsigned NOT NULL ', 'num', '0', '', '1', '', '83', '0', '1', '1397525480', '1397525480', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('638', 'discount_price', '打折价', 'int(10) unsigned NOT NULL ', 'num', '0', '为空时只显示市场价', '1', '', '83', '0', '1', '1397525579', '1397525579', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('639', 'view_count', '浏览数', 'int(10) unsigned NOT NULL ', 'num', '0', '', '0', '', '83', '0', '1', '1397525660', '1397525660', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('640', 'name', '分类标识', 'varchar(255) NOT NULL', 'string', '', '只能使用英文', '0', '', '84', '0', '1', '1403711345', '1397529355', '', '3', '只能输入由数字、26个英文字母或者下划线组成的标识名', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('641', 'title', '分类标题', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '84', '1', '1', '1397529407', '1397529407', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('642', 'icon', '分类图标', 'int(10) unsigned NOT NULL ', 'picture', '', '', '1', '', '84', '0', '1', '1397529461', '1397529461', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('643', 'pid', '上一级分类', 'int(10) unsigned NOT NULL ', 'select', '0', '如果你要增加一级分类，这里选择“无”即可', '1', '0:无', '84', '0', '1', '1398266132', '1397529555', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('644', 'path', '分类路径', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '84', '0', '1', '1397529604', '1397529604', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('645', 'module', '分类所属功能', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '84', '0', '1', '1397529671', '1397529671', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('646', 'sort', '排序号', 'int(10) unsigned NOT NULL ', 'num', '0', '数值越小越靠前', '1', '', '84', '0', '1', '1397529705', '1397529705', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('647', 'is_show', '是否显示', 'tinyint(2) NOT NULL', 'bool', '1', '', '1', '0:不显示\r\n1:显示', '84', '0', '1', '1397532496', '1397529809', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('653', 'token', 'Token', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '85', '0', '1', '1394526820', '1394526820', '', '3', '', 'regex', 'get_token', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('835', 'cTime', '发布时间', 'int(10) UNSIGNED NOT NULL', 'datetime', '', '', '0', '', '97', '0', '1', '1396624612', '1396075102', '', '3', '', 'regex', 'time', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('655', 'intro', '分类描述', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '84', '0', '1', '1398414247', '1398414247', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('656', 'url', '关联URL', 'varchar(255) NULL ', 'string', '', '可用{site_url}代表当前网站根地址', '1', '', '86', '0', '1', '1399083504', '1394519090', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('657', 'title', '菜单名', 'varchar(50) NOT NULL', 'string', '', '可创建最多 3 个一级菜单，每个一级菜单下可创建最多 5 个二级菜单。编辑中的菜单不会马上被用户看到，请放心调试。', '1', '', '86', '0', '1', '1394519941', '1394518988', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('658', 'pid', '一级菜单', 'tinyint(2) NULL', 'select', '0', '如果是一级菜单，选择“无”即可', '1', '0:无', '86', '0', '1', '1394519296', '1394518930', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('659', 'sort', '排序号', 'tinyint(4) NULL ', 'num', '0', '数值越小越靠前', '1', '', '86', '0', '1', '1394523288', '1394519175', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('660', 'token', 'Token', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '86', '0', '1', '1394526820', '1394526820', '', '3', '', 'regex', 'get_token', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('661', 'icon', '图标', 'int(10) unsigned NULL ', 'picture', '', '根据选择的底部模板决定是否需要上传图标', '1', '', '86', '0', '1', '1396506297', '1396506297', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('662', 'token', 'Token', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '84', '0', '1', '1398593086', '1398523502', '', '3', '', 'regex', 'get_token', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('665', 'title', '积分描述', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '87', '1', '1', '1398563786', '1396061859', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('666', 'name', '积分标识', 'varchar(50) NULL', 'string', '', '', '0', '', '87', '0', '1', '1407659485', '1396061947', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('667', 'mTime', '修改时间', 'int(10) NOT NULL', 'datetime', '', '', '0', '', '87', '0', '1', '1396624664', '1396624664', '', '3', '', 'regex', 'time', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('668', 'experience', '经验值', 'int(10) NOT NULL', 'num', '0', '可以是正数，也可以是负数，如 -10 表示减10个经验值', '1', '', '87', '0', '1', '1398564024', '1396062093', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('669', 'score', '财富值', 'int(10) NOT NULL', 'num', '0', '可以是正数，也可以是负数，如 -10 表示减10个财富值', '1', '', '87', '0', '1', '1398564097', '1396062146', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('671', 'token', 'Token', 'varchar(255) NOT NULL', 'string', '0', '', '0', '', '87', '0', '1', '1398564146', '1396602859', '', '3', '', 'regex', '', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('673', 'credit_name', '积分标识', 'varchar(50) NOT NULL', 'string', '', '', '1', '', '88', '0', '1', '1398564405', '1398564405', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('672', 'uid', '用户ID', 'int(10) NOT NULL', 'num', '0', '', '1', '', '88', '0', '1', '1398564351', '1398564351', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('674', 'experience', '经验值', 'int(10) NOT NULL', 'num', '0', '', '1', '', '88', '0', '1', '1398564448', '1398564448', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('675', 'score', '财富值', 'int(10) NOT NULL', 'num', '0', '', '1', '', '88', '0', '1', '1398564486', '1398564486', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('676', 'cTime', '记录时间', 'int(10) NOT NULL', 'datetime', '', '', '0', '', '88', '0', '1', '1398564567', '1398564567', '', '3', '', 'regex', 'time', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('677', 'admin_uid', '操作者UID', 'int(10) NOT NULL', 'num', '0', '', '0', '', '88', '0', '1', '1398564629', '1398564629', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('680', 'img_3', '商品图片3', 'int(10) unsigned NOT NULL ', 'picture', '', '', '1', '', '83', '0', '1', '1398598938', '1398598938', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('681', 'img_4', '商品图片4', 'int(10) unsigned NOT NULL ', 'picture', '', '', '1', '', '83', '0', '1', '1398598960', '1398598960', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('682', 'img_5', '商品图片5', 'int(10) unsigned NOT NULL ', 'picture', '', '', '1', '', '83', '0', '1', '1398598981', '1398598981', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('683', 'cate_id', '商品分类', 'char(50) NOT NULL', 'cascade', '', '', '1', 'type=db&table=common_category&module=shop_category', '83', '0', '1', '1398693036', '1398599395', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('684', 'token', '公众号', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '89', '0', '1', '1398845862', '1398845862', '', '3', '', 'regex', 'get_token', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('685', 'openid', 'OpenId', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '89', '0', '1', '1398845911', '1398845911', '', '3', '', 'regex', 'get_openid', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('686', 'nickname', '昵称', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '89', '0', '1', '1398845957', '1398845957', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('687', 'sex', '性别', 'tinyint(1) unsigned NOT NULL ', 'select', '0', '', '1', '0:保密 \r\n1:男性\r\n2:女性', '89', '0', '1', '1398846138', '1398846138', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('688', 'city', '城市', 'varchar(100) NOT NULL', 'string', '', '', '1', '', '89', '0', '1', '1398846223', '1398846223', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('689', 'province', '省份', 'varchar(100) NOT NULL', 'string', '', '', '1', '', '89', '0', '1', '1398846249', '1398846249', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('690', 'country', '国家', 'varchar(100) NOT NULL', 'string', '', '', '1', '', '89', '0', '1', '1398846270', '1398846270', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('691', 'language', '语言', 'varchar(50) NOT NULL', 'string', 'zh_CN', '', '1', '', '89', '0', '1', '1398846305', '1398846305', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('692', 'headimgurl', '头像', 'varchar(255) NOT NULL', 'picture', '', '', '1', '', '89', '0', '1', '1398846357', '1398846357', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('693', 'subscribe_time', '关注时间', 'int(10) NOT NULL', 'datetime', '', '', '0', '', '89', '0', '1', '1398846406', '1398846406', '', '3', '', 'regex', 'time', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('694', 'mobile', '手机号', 'varchar(30) NOT NULL', 'string', '', '', '1', '', '89', '0', '1', '1398848001', '1398848001', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('695', 'status', '用户状态', 'tinyint(1) NULL', 'select', '1', '', '0', '0:未关注\r\n1:已关注\r\n2:已绑定\r\n3:会员卡成员', '89', '0', '1', '1398924711', '1398924711', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('696', 'uid', '管理员UID', 'int(10) NULL ', 'num', '', '可以在用户>用户信息页面的列表第一找到管理员的UID', '1', '', '90', '1', '1', '1398944756', '1398933236', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('697', 'mp_id', '公众号ID', 'int(10) unsigned NOT NULL ', 'num', '', '', '4', '', '90', '1', '1', '1398933300', '1398933300', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('698', 'is_creator', '是否为创建者', 'tinyint(2) NOT NULL', 'bool', '0', '', '0', '0:不是\r\n1:是', '90', '0', '1', '1398933380', '1398933380', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('699', 'addon_status', '插件权限', 'text NOT NULL', 'checkbox', '', '', '1', '', '90', '0', '1', '1398933475', '1398933475', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('700', 'is_use', '是否为当前管理的公众号', 'tinyint(2) NOT NULL', 'bool', '0', '', '0', '0:不是\r\n1:是', '90', '0', '1', '1398996982', '1398996975', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('701', 'bug_count', '成交量', 'int(10) unsigned NOT NULL ', 'num', '0', '', '0', '', '83', '0', '1', '1399002900', '1399002900', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('702', 'keyword', '关键词', 'varchar(100) NOT NULL', 'string', '', '', '1', '', '91', '1', '1', '1396624337', '1396061575', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('713', 'use_tips', '使用说明', 'varchar(255) NOT NULL', 'textarea', '', '用户获取优惠券后显示的提示信息', '1', '', '91', '1', '1', '1399274330', '1399259489', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('704', 'title', '标题', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '91', '1', '1', '1396624461', '1396061859', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('705', 'intro', '封面简介', 'text NOT NULL', 'textarea', '', '', '1', '', '91', '0', '1', '1396624505', '1396061947', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('712', 'end_time', '结束时间', 'int(10) NOT NULL', 'datetime', '', '', '1', '', '91', '0', '1', '1399259433', '1399259433', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('707', 'cover', '封面图片', 'int(10) unsigned NOT NULL ', 'picture', '', '', '1', '', '91', '0', '1', '1396624534', '1396062093', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('709', 'cTime', '发布时间', 'int(10) unsigned NOT NULL ', 'datetime', '', '', '0', '', '91', '0', '1', '1396624612', '1396075102', '', '3', '', 'regex', 'time', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('710', 'token', 'Token', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '91', '0', '1', '1396602871', '1396602859', '', '3', '', 'regex', 'get_token', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('711', 'start_time', '开始时间', 'int(10) NOT NULL', 'datetime', '', '', '1', '', '91', '0', '1', '1399259416', '1399259416', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('714', 'end_tips', '过期说明', 'text NOT NULL', 'textarea', '', '活动过期或者结束说明', '1', '', '91', '0', '1', '1399259570', '1399259570', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('778', 'end_img', '过期提示图片', 'int(10) unsigned NOT NULL ', 'picture', '', '可为空', '1', '', '91', '0', '1', '1400989793', '1400989793', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('717', 'num', '优惠券数量', 'int(10) unsigned NOT NULL ', 'num', '0', '0表示不限制数量', '1', '', '91', '0', '1', '1399259838', '1399259808', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('719', 'max_num', '每人最多允许获取次数', 'int(10) unsigned NOT NULL ', 'num', '1', '0表示不限制数量', '1', '', '91', '0', '1', '1400992221', '1399260079', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('720', 'follower_condtion', '粉丝状态', 'char(50) NOT NULL', 'select', '1', '粉丝达到设置的状态才能获取', '1', '0:不限制\r\n1:已关注\r\n2:已绑定信息\r\n3:会员卡成员', '91', '0', '1', '1399260479', '1399260479', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('721', 'credit_conditon', '积分限制', 'int(10) unsigned NOT NULL ', 'num', '0', '粉丝达到多少积分后才能领取，领取后不扣积分', '1', '', '91', '0', '1', '1399260618', '1399260618', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('722', 'credit_bug', '积分消费', 'int(10) unsigned NOT NULL ', 'num', '0', '用积分中的财富兑换、兑换后扣除相应的积分财富', '1', '', '91', '0', '1', '1399260764', '1399260764', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('723', 'addon_condition', '插件场景限制', 'varchar(255) NOT NULL', 'string', '', '格式：[插件名:id值]，如[投票:10]表示对ID为10的投票投完才能领取，更多的说明见表单上的提示', '1', '', '91', '0', '1', '1399274022', '1399261026', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('724', 'collect_count', '已领取数', 'int(10) unsigned NOT NULL ', 'num', '0', '', '0', '', '91', '0', '1', '1400992246', '1399270900', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('725', 'view_count', '浏览人数', 'int(10) unsigned NOT NULL ', 'num', '0', '', '0', '', '91', '0', '1', '1399270926', '1399270926', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('726', 'sn', 'SN码', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '92', '0', '1', '1399272236', '1399272228', '', '3', '', 'regex', 'uniqid', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('727', 'uid', '粉丝UID', 'int(10) NOT NULL', 'num', '', '', '0', '', '92', '0', '1', '1399772738', '1399272401', '', '3', '', 'regex', 'get_mid', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('728', 'cTime', '创建时间', 'int(10) NOT NULL', 'datetime', '', '', '0', '', '92', '0', '1', '1399272456', '1399272456', '', '3', '', 'regex', 'time', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('729', 'is_use', '是否已使用', 'tinyint(2) NOT NULL', 'bool', '0', '', '0', '0:未使用\r\n1:已使用', '92', '0', '1', '1400601159', '1399272514', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('730', 'use_time', '使用时间', 'int(10) NOT NULL', 'datetime', '', '', '0', '', '92', '0', '1', '1399272560', '1399272537', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('731', 'addon', '来自的插件', 'varchar(255) NOT NULL', 'string', 'Coupon', '', '4', '', '92', '0', '1', '1399272651', '1399272651', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('732', 'target_id', '来源ID', 'int(10) unsigned NOT NULL ', 'num', '', '', '4', '', '92', '0', '1', '1399272705', '1399272705', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('733', 'keyword', '关键词', 'varchar(100) NOT NULL', 'string', '', '', '1', '', '93', '1', '1', '1396624337', '1396061575', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('734', 'use_tips', '使用说明', 'varchar(255) NOT NULL', 'textarea', '', '用户获取刮刮卡后显示的提示信息', '1', '', '93', '1', '1', '1399274330', '1399259489', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('735', 'title', '标题', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '93', '1', '1', '1396624461', '1396061859', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('736', 'intro', '封面简介', 'text NOT NULL', 'textarea', '', '', '1', '', '93', '0', '1', '1396624505', '1396061947', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('737', 'end_time', '结束时间', 'int(10) NOT NULL', 'datetime', '', '', '1', '', '93', '0', '1', '1399259433', '1399259433', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('738', 'cover', '封面图片', 'int(10) unsigned NOT NULL ', 'picture', '', '可为空', '1', '', '93', '0', '1', '1399710705', '1396062093', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('739', 'cTime', '发布时间', 'int(10) unsigned NOT NULL ', 'datetime', '', '', '0', '', '93', '0', '1', '1396624612', '1396075102', '', '3', '', 'regex', 'time', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('740', 'token', 'Token', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '93', '0', '1', '1396602871', '1396602859', '', '3', '', 'regex', 'get_token', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('741', 'start_time', '开始时间', 'int(10) NOT NULL', 'datetime', '', '', '1', '', '93', '0', '1', '1399259416', '1399259416', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('742', 'end_tips', '过期说明', 'text NOT NULL', 'textarea', '', '活动过期或者结束说明', '1', '', '93', '0', '1', '1399259570', '1399259570', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('764', 'end_img', '过期提示图片', 'int(10) unsigned NOT NULL ', 'picture', '', '可为空', '1', '', '93', '0', '1', '1399712676', '1399711987', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('746', 'predict_num', '预计参与人数', 'int(10) unsigned NOT NULL ', 'num', '', '预计人数直接影响抽奖概率：中奖概率 = 奖品总数/(预估活动人数*每人抽奖次数) 要确保100%中奖可设置为1', '1', '', '93', '1', '1', '1399710446', '1399259992', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('747', 'max_num', '每人最多允许抽奖次数', 'int(10) unsigned NOT NULL ', 'num', '1', '0表示不限制数量', '1', '', '93', '0', '1', '1399260079', '1399260079', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('748', 'follower_condtion', '粉丝状态', 'char(50) NOT NULL', 'select', '1', '粉丝达到设置的状态才能获取', '1', '0:不限制\r\n1:已关注\r\n2:已绑定信息\r\n3:会员卡成员', '93', '0', '1', '1399260479', '1399260479', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('749', 'credit_conditon', '积分限制', 'int(10) unsigned NOT NULL ', 'num', '0', '粉丝达到多少积分后才能领取，领取后不扣积分', '1', '', '93', '0', '1', '1399260618', '1399260618', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('750', 'credit_bug', '积分消费', 'int(10) unsigned NOT NULL ', 'num', '0', '用积分中的财富兑换、兑换后扣除相应的积分财富', '1', '', '93', '0', '1', '1399260764', '1399260764', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('751', 'addon_condition', '插件场景限制', 'varchar(255) NOT NULL', 'string', '', '格式：[插件名:id值]，如[投票:10]表示对ID为10的投票投完才能领取，更多的说明见表单上的提示', '1', '', '93', '0', '1', '1399274022', '1399261026', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('752', 'collect_count', '已领取人数', 'int(10) unsigned NOT NULL ', 'num', '0', '', '0', '', '93', '0', '1', '1399270900', '1399270900', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('753', 'view_count', '浏览人数', 'int(10) unsigned NOT NULL ', 'num', '0', '', '0', '', '93', '0', '1', '1399270926', '1399270926', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('754', 'addon', '来源插件', 'varchar(255) NOT NULL', 'string', 'Scratch', '', '0', '', '94', '0', '1', '1399348676', '1399348676', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('755', 'target_id', '来源ID', 'int(10) unsigned NOT NULL ', '', '', '', '4', '', '94', '0', '1', '1399557884', '1399348699', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('756', 'title', '奖项标题', 'varchar(255) NOT NULL', 'string', '', '如特等奖、一等奖。。。', '1', '', '94', '0', '1', '1399557606', '1399348734', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('757', 'name', '奖项', 'varchar(255) NOT NULL', 'string', '', '如iphone、吹风机等', '1', '', '94', '0', '1', '1399557624', '1399348785', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('758', 'num', '名额数量', 'int(10) unsigned NOT NULL ', 'num', '', '', '1', '', '94', '0', '1', '1399557753', '1399348843', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('759', 'update_time', '更新时间', 'int(10) NOT NULL', 'datetime', '', '', '0', '', '93', '0', '1', '1399562468', '1399359204', '', '3', '', 'regex', 'time', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('760', 'sort', '排序号', 'int(10) unsigned NOT NULL ', 'num', '0', '值越小越靠前', '1', '', '94', '0', '1', '1399557716', '1399557716', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('761', 'img', '奖品图片', 'int(10) unsigned NOT NULL ', 'picture', '', '', '1', '', '94', '0', '1', '1399557997', '1399557997', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('762', 'prize_id', '奖项ID', 'int(10) unsigned NOT NULL ', 'num', '', '', '0', '', '92', '0', '1', '1399686317', '1399686317', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('766', 'prize_title', '奖项', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '92', '0', '1', '1399790367', '1399790367', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('767', 'jump_url', '提交后跳转的地址', 'varchar(255) NOT NULL', 'string', '', '要以http://开头的完整地址，为空时不跳转', '1', '', '69', '0', '1', '1399800276', '1399800276', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('768', 'icon', '分类图标', 'int(10) unsigned NOT NULL ', 'picture', '', '', '1', '', '95', '0', '1', '1400047745', '1400047745', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('769', 'title', '分类名', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '95', '0', '1', '1400047764', '1400047764', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('770', 'sort', '排序号', 'int(10) NOT NULL', 'num', '0', '值越小越靠前', '1', '', '95', '0', '1', '1400050453', '1400047786', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('772', 'score', '财富值', 'int(10) NOT NULL', 'num', '0', '', '1', '', '89', '0', '1', '1400054524', '1400054524', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('773', 'experience', '经验值', 'int(10) NOT NULL', 'num', '0', '', '1', '', '89', '0', '1', '1400054551', '1400054551', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('774', 'token', 'Token', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '88', '0', '1', '1400603451', '1400603451', '', '3', '', 'regex', 'get_token', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('775', 'nickname', '用户昵称', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '18', '0', '1', '1400687052', '1400687052', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('776', 'mobile', '手机号', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '18', '0', '1', '1400687075', '1400687075', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('777', 'token', 'Token', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '18', '0', '1', '1400687900', '1400687900', '', '3', '', 'regex', 'get_token', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('779', 'token', 'Token', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '96', '0', '1', '1401371165', '1401371165', '', '3', '', 'regex', 'get_token', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('780', 'month', '月份', 'int(10) NOT NULL', 'num', '', '', '1', '', '96', '0', '1', '1401371192', '1401371192', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('781', 'day', '日期', 'int(10) NOT NULL', 'num', '', '', '1', '', '96', '0', '1', '1401371209', '1401371209', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('782', 'content', '统计数据', 'text NOT NULL', 'textarea', '', '', '1', '', '96', '0', '1', '1401371292', '1401371292', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('783', 'request_count', '请求数', 'int(10) NOT NULL', 'num', '0', '用户回复的次数', '0', '', '5', '0', '1', '1401938983', '1401938983', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('784', 'token', 'Token', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '22', '0', '1', '1402454223', '1402454223', '', '3', '', 'regex', 'get_token', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('785', 'jump_url', '外链', 'varchar(255) NOT NULL', 'string', '', '如需跳转填写网址(记住必须有http://)如果填写了图文详细内容，这里请留空，不要设置！', '1', '', '64', '0', '1', '1402482073', '1402482073', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('786', 'name', '分组标识', 'varchar(100) NOT NULL', 'string', '', '英文字母或者下划线，长度不超过30', '1', '', '97', '1', '1', '1403624543', '1396061575', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('787', 'title', '分组标题', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '97', '1', '1', '1403624556', '1396061859', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('842', 'name', '客服昵称', 'varchar(60) NOT NULL ', 'string', '', '', '1', '', '104', '0', '1', '1403959775', '1403947255', '', '0', '', 'regex', '', '0', 'function');
INSERT INTO `wplt_attribute` VALUES ('843', 'token', 'token', 'varchar(60) NOT NULL ', 'string', '', '', '0', '', '104', '0', '1', '1403959638', '1403947256', '', '3', '', 'regex', 'get_token', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('844', 'userName', '客服帐号', 'varchar(60) NOT NULL ', 'string', '', '', '1', '', '104', '0', '1', '1403959752', '1403947256', '', '3', '', 'regex', '', '0', 'function');
INSERT INTO `wplt_attribute` VALUES ('845', 'userPwd', '客服密码', 'varchar(32) NOT NULL ', 'string', '', '', '1', '', '104', '0', '1', '1403959722', '1403947257', '', '0', '', 'regex', '', '0', 'function');
INSERT INTO `wplt_attribute` VALUES ('846', 'endJoinDate', '客服加入时间', 'int(11) NOT NULL ', 'string', '', '', '0', '', '104', '0', '1', '1403959825', '1403947257', '', '3', '', 'regex', 'time', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('847', 'status', '客服在线状态', 'tinyint(1) NOT NULL ', 'bool', '0', '', '0', '0:离线\r\n1:在线', '104', '0', '1', '1404016782', '1403947258', '', '0', '', 'regex', '', '0', 'function');
INSERT INTO `wplt_attribute` VALUES ('848', 'pid', '', 'int(11) NOT NULL ', 'string', '', '', '1', '', '105', '0', '1', '1403947272', '1403947272', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('849', 'openid', '', 'varchar(60) NOT NULL ', 'string', '', '', '1', '', '105', '0', '1', '1403947273', '1403947273', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('850', 'enddate', '', 'int(11) NOT NULL ', 'string', '', '', '1', '', '105', '0', '1', '1403947273', '1403947273', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('851', 'keyword', '', 'varchar(200) NOT NULL ', 'string', '', '', '1', '', '105', '0', '1', '1403947274', '1403947274', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('852', 'status', '', 'tinyint(1) NOT NULL ', 'string', '2', '', '1', '', '105', '0', '1', '1403947274', '1403947274', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('853', 'state', '客服状态', 'tinyint(2) NOT NULL', 'bool', '0', '', '1', '0:停用\r\n1:启用', '104', '0', '1', '1404016877', '1404016877', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('854', 'isdelete', '是否删除', 'tinyint(2) NOT NULL', 'bool', '0', '', '0', '0:正常\r\n1:已被删除', '104', '0', '1', '1404016931', '1404016931', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('855', 'openid', '', 'varchar(60) NOT NULL ', 'string', '', '', '1', '', '106', '0', '1', '1404026716', '1404026716', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('856', 'enddate', '', 'int(11) NOT NULL ', 'string', '', '', '1', '', '106', '0', '1', '1404026716', '1404026716', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('857', 'joinUpDate', '', 'int(11) NOT NULL ', 'string', '0', '', '1', '', '106', '0', '1', '1404026716', '1404026716', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('858', 'uid', '', 'int(11) NOT NULL ', 'string', '0', '', '1', '', '106', '0', '1', '1404026717', '1404026717', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('859', 'token', '', 'varchar(40) NOT NULL ', 'string', '', '', '1', '', '106', '0', '1', '1404026717', '1404026717', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('860', 'g_id', '', 'varchar(20) NOT NULL ', 'string', '', '', '1', '', '107', '0', '1', '1404027302', '1404027302', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('861', 'nickname', '', 'varchar(60) NOT NULL ', 'string', '', '', '1', '', '107', '0', '1', '1404027302', '1404027302', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('862', 'sex', '', 'tinyint(1) NOT NULL ', 'string', '', '', '1', '', '107', '0', '1', '1404027303', '1404027303', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('863', 'province', '', 'varchar(20) NOT NULL ', 'string', '', '', '1', '', '107', '0', '1', '1404027303', '1404027303', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('864', 'city', '', 'varchar(30) NOT NULL ', 'string', '', '', '1', '', '107', '0', '1', '1404027303', '1404027303', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('865', 'headimgurl', '', 'varchar(200) NOT NULL ', 'string', '', '', '1', '', '107', '0', '1', '1404027304', '1404027304', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('866', 'subscribe_time', '', 'int(11) NOT NULL ', 'string', '', '', '1', '', '107', '0', '1', '1404027304', '1404027304', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('867', 'token', '', 'varchar(30) NOT NULL ', 'string', '', '', '1', '', '107', '0', '1', '1404027305', '1404027305', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('868', 'openid', '', 'varchar(60) NOT NULL ', 'string', '', '', '1', '', '107', '0', '1', '1404027305', '1404027305', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('869', 'status', '', 'tinyint(1) NOT NULL ', 'string', '', '', '1', '', '107', '0', '1', '1404027305', '1404027305', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('870', 'fid', '', 'int(11) NOT NULL ', 'string', '', '', '1', '', '108', '0', '1', '1404033503', '1404033503', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('871', 'token', '', 'varchar(60) NOT NULL ', 'string', '', '', '1', '', '108', '0', '1', '1404033503', '1404033503', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('872', 'openid', '', 'varchar(60) NOT NULL ', 'string', '', '', '1', '', '108', '0', '1', '1404033503', '1404033503', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('873', 'date', '', 'varchar(11) NOT NULL ', 'string', '', '', '1', '', '108', '0', '1', '1404033504', '1404033504', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('874', 'enddate', '', 'int(11) NOT NULL ', 'string', '', '', '1', '', '108', '0', '1', '1404033504', '1404033504', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('875', 'model', '', 'varchar(60) NOT NULL ', 'string', '', '', '1', '', '108', '0', '1', '1404033504', '1404033504', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('876', 'num', '', 'int(11) NOT NULL ', 'string', '', '', '1', '', '108', '0', '1', '1404033505', '1404033505', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('877', 'keyword', '', 'varchar(60) NOT NULL ', 'string', '', '', '1', '', '108', '0', '1', '1404033505', '1404033505', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('878', 'type', '', 'tinyint(1) NOT NULL ', 'string', '', '', '1', '', '108', '0', '1', '1404033505', '1404033505', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('897', 'code', '分类扩展编号', 'varchar(255) NOT NULL', 'string', '', '原分类或者导入分类的扩展编号', '0', '', '84', '0', '1', '1404182741', '1404182630', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('898', 'level', '最多级数', 'tinyint(1) unsigned NOT NULL', 'select', '3', '', '1', '1:1级\r\n2:2级\r\n3:3级\r\n4:4级\r\n5:5级\r\n6:6级\r\n7:7级', '97', '0', '1', '1404193097', '1404192897', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('912', 'tooltype', '工具类型', 'tinyint(2) NOT NULL', 'bool', '0', '', '2', '0:微信消息\r\n1:单独页面', '115', '0', '1', '1404273343', '1404273343', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('913', 'keyword', ' 关键词 ', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '115', '0', '1', '1404273406', '1404273406', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('915', 'cTime', '创建时间', 'int(10) NOT NULL', 'datetime', '', '', '0', '', '115', '0', '1', '1404273542', '1404273542', '', '3', '', 'regex', 'time', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('916', 'toolname', '工具名称', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '115', '0', '1', '1404273609', '1404273609', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('918', 'tooldes', '工具描述', 'text NOT NULL', 'textarea', '', '', '1', '', '115', '0', '1', '1404273652', '1404273652', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('920', 'toolnum', '工具唯一编号', 'varchar(255) NOT NULL', 'string', '', '', '2', '', '115', '0', '1', '1404274841', '1404273757', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('921', 'toolstate', '工具状态', 'tinyint(2) NOT NULL', 'bool', '0', '', '1', '0:启用\r\n1:停用', '115', '0', '1', '1404273809', '1404273809', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('922', 'token', 'Token', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '115', '0', '1', '1404273958', '1404273958', '', '3', '', 'regex', 'get_token', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('934', 'kfid', '客服编号', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '104', '0', '1', '1404398387', '1404398387', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('935', 'msgkeyword', '消息关键字', 'varchar(555) NOT NULL', 'string', '', '当用户发送的消息中含有关键字时,将自动转到分配的客服人员', '1', '', '116', '0', '1', '1404399336', '1404399336', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('936', 'msgkeyword_type', '关键字类型', 'char(50) NOT NULL', 'select', '3', '选择关键字匹配的类型', '1', '0:完全匹配\r\n1:左边匹配\r\n2:右边匹配\r\n3:模糊匹配', '116', '0', '1', '1404399466', '1404399466', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('937', 'msgkfaccount', '接待的客服人员', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '116', '0', '1', '1404403340', '1404399587', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('938', 'cTime', '创建时间', 'int(10) NOT NULL', 'date', '', '', '0', '', '116', '0', '1', '1404399629', '1404399629', '', '3', '', 'regex', 'time', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('939', 'token', 'token', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '116', '0', '1', '1404399656', '1404399656', '', '3', '', 'regex', 'get_token', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('940', 'msgstate', '关键字状态', 'tinyint(2) NOT NULL', 'bool', '1', '停用后用户将不会触发此关键词', '1', '0:停用\r\n1:启用', '116', '0', '1', '1404399749', '1404399749', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('941', 'zjnum', '转接次数', 'int(10) NOT NULL', 'num', '', '', '0', '', '116', '0', '1', '1404399784', '1404399784', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('942', 'zdtype', '指定类型', 'char(10) NOT NULL', 'radio', '0', '选择关键字匹配时是按指定人员或者指定客服组', '1', '0:指定客服人员\r\n1:指定客服组', '116', '0', '1', '1404474672', '1404474672', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('943', 'kfgroupid', '客服分组id', 'int(10) NOT NULL', 'num', '0', '', '0', '', '116', '0', '1', '1404474777', '1404474777', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('944', 'token', 'token', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '117', '0', '1', '1404485505', '1404475530', '', '3', '', 'regex', 'get_token', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('945', 'groupname', '分组名称', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '117', '0', '1', '1404475556', '1404475556', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('946', 'groupdata', '分组数据源', 'text NOT NULL', 'textarea', '', '', '0', '', '117', '0', '1', '1404476127', '1404476127', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('947', 'token', 'Token', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '94', '0', '1', '1404525428', '1404525428', '', '3', '', 'regex', 'get_token', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('948', 'token', 'Token', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '92', '0', '1', '1404525481', '1404525481', '', '3', '', 'regex', 'get_token', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('986', 'text', '消息', 'text NOT NULL', 'textarea', '', '', '1', '', '120', '0', '1', '1406094387', '1406094387', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1222', 'attach', '上传文件', 'int(10) unsigned NOT NULL ', 'file', '', '支持xls,xlsx两种格式', '1', '', '143', '1', '1', '1407554177', '1407554177', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('985', 'time', '时间', 'int(10) NOT NULL', 'datetime', '', '', '1', '', '120', '0', '1', '1406094341', '1406094341', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('983', 'openid', 'openid', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '120', '0', '1', '1406094276', '1406094276', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('981', 'token', 'token', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '120', '0', '1', '1406094177', '1406094177', '', '3', '', 'regex', 'get_token', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('982', 'worker', '客服名称', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '120', '0', '1', '1406094257', '1406094257', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('987', 'qr_code', '二维码', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '121', '1', '1', '1406127577', '1388815953', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('988', 'addon', '二维码所属插件', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '121', '1', '1', '1406127594', '1388816207', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('989', 'aim_id', '插件表里的ID值', 'int(10) unsigned NOT NULL ', 'num', '', '', '1', '', '121', '1', '1', '1388816287', '1388816287', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('990', 'cTime', '创建时间', 'int(10) NOT NULL', 'datetime', '', '', '1', '', '121', '0', '1', '1388816392', '1388816392', '', '1', '', 'regex', 'time', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('991', 'token', 'Token', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '121', '0', '1', '1391399528', '1391399528', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('993', 'action_name', '二维码类型', 'char(30) NOT NULL', 'select', 'QR_SCENE', 'QR_SCENE为临时,QR_LIMIT_SCENE为永久 ', '1', 'QR_SCENE:临时二维码\r\nQR_LIMIT_SCENE:永久二维码', '121', '0', '1', '1406130162', '1393919686', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('994', 'extra_text', '文本扩展', 'text NULL ', 'textarea', '', '', '1', '', '121', '0', '1', '1393919736', '1393919736', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('995', 'extra_int', '数字扩展', 'int(10) NULL ', 'num', '', '', '1', '', '121', '0', '1', '1393919798', '1393919798', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('996', 'request_count', '请求数', 'int(10) NOT NULL', 'num', '0', '用户回复的次数', '0', '', '121', '0', '1', '1402547625', '1401938983', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('997', 'scene_id', '场景ID', 'int(10) NOT NULL', 'num', '0', '', '1', '', '121', '0', '1', '1406127542', '1406127542', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1316', 'mTime', '更新时间', 'int(10) NOT NULL', 'datetime', '', '', '0', '', '89', '0', '1', '1408939657', '1408939657', '', '3', '', 'regex', 'time', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('836', 'token', 'Token', 'varchar(100) NOT NULL', 'string', '', '', '0', '', '97', '1', '1', '1408947244', '1396602859', '', '3', '', 'regex', 'get_token', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1339', 'type', '类型', 'varchar(30) NOT NULL', 'bool', 'click', '', '1', 'click:点击推事件|keyword@show,url@hide\r\nview:跳转URL|keyword@hide,url@show\r\nscancode_push:扫码推事件|keyword@show,url@hide\r\nscancode_waitmsg:扫码带提示|keyword@show,url@hide\r\npic_sysphoto:弹出系统拍照发图|keyword@show,url@hide\r\npic_photo_or_album:弹出拍照或者相册发图|keyword@show,url@hide\r\npic_weixin:弹出微信相册发图器|keyword@show,url@hide\r\nlocation_select:弹出地理位置选择器|keyword@show,url@hide\r\nnone:无事件的一级菜单|keyword@hide,url@hide', '85', '0', '1', '1416812039', '1416810588', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1341', 'encodingaeskey', 'EncodingAESKey', 'varchar(255) NOT NULL', 'string', '', '安全模式下必填', '1', '', '11', '0', '1', '1416817970', '1416817924', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1343', 'mp_id', '公众号ID', 'int(10) unsigned NOT NULL ', 'num', '', '', '4', '', '154', '1', '1', '1430664600', '1430660958', '', '1', '公众号原始ID已经存在，请不要重复增加', 'unique', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1344', 'input_switch', 'Accesstoken输入开关', 'tinyint(2) NOT NULL', 'bool', '0', '', '1', '0:关\r\n1:开', '154', '1', '1', '1430661109', '1430661109', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1345', 'input_url', 'Accesstoken来源接口', 'varchar(1024) NULL', 'string', '', '', '1', '', '154', '0', '1', '1430663088', '1430661696', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1347', 'output_switch', 'Accesstoken输出开关', 'tinyint(2) NOT NULL', 'bool', '0', '', '1', '0:关\r\n1:开', '154', '1', '1', '1430661863', '1430661836', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1348', 'output_url', 'Accesstoken推送接口', 'varchar(1024) NULL', 'string', '', '', '1', '', '154', '0', '1', '1430663102', '1430661987', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1350', 'output_secret', 'AppSecret(输出)', 'varchar(255) NULL', 'string', '', '应用密钥', '1', '', '154', '0', '1', '1430878779', '1430671232', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1351', 'input_secret', 'AppSecret(输入)', 'varchar(255) NULL', 'string', '', '应用密钥', '1', '', '154', '0', '1', '1430878869', '1430878850', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1352', 'wxdata_output_switch', '微信数据转发开关', 'tinyint(2) NOT NULL', 'bool', '0', '是否将收到的微信数据推送给第三方', '1', '0:关闭\r\n1:打开', '154', '1', '1', '1430897913', '1430897913', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1353', 'wxdata_output_url', '微信数据转发地址', 'varchar(255) NULL', 'string', '', '转发微信数据给第三方地址', '1', '', '154', '0', '1', '1430897996', '1430897996', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1408', 'card_id', '卡券ID', 'varchar(255) NOT NULL', 'string', '', '外键,对应wxcard表card_id', '1', '', '159', '1', '1', '1431858861', '1431858861', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1409', 'quantity', '卡券核销量', 'int(10) NOT NULL', 'num', '', '', '1', '', '159', '1', '1', '1431858957', '1431858957', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1410', 'token', '微信原始id', 'varchar(50) NOT NULL', 'string', '', '', '0', '', '157', '1', '1', '1431859266', '1431859199', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1411', 'token', '微信原始ID', 'varchar(50) NOT NULL', 'string', '', '', '0', '', '158', '1', '1', '1431859250', '1431859242', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1412', 'token', '微信原始ID', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '159', '1', '1', '1431859307', '1431859307', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1398', 'token', '微信原始ID', 'varchar(50) NOT NULL', 'string', '', '微信原始ID', '0', '', '155', '1', '1', '1431855923', '1431855658', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1399', 'data', '卡券数据', 'text NOT NULL', 'textarea', '', '卡券数据,为json格式', '0', '', '155', '1', '1', '1431855906', '1431855906', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1400', 'changes', '改动项数据', 'text NULL', 'textarea', '', '卡券改动项数据,json格式', '0', '', '155', '0', '1', '1431856365', '1431856365', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1401', 'token', '微信原始ID', 'varchar(50) NOT NULL', 'string', '', '微信原始ID', '0', '', '156', '1', '1', '1431876728', '1431856987', '', '3', '', 'regex', 'get_token', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('1402', 'shop', '门店名称', 'varchar(1024) NOT NULL', 'string', '', '门店名称', '1', '', '156', '1', '1', '1431857088', '1431857088', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1403', 'pwd', '核销码', 'varchar(20) NOT NULL', 'string', '', '核销码', '1', '', '156', '1', '1', '1431875297', '1431857211', '', '3', '核销码不能重复', 'unique', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1404', 'name', '活动名称', 'varchar(1024) NOT NULL', 'string', '', '卡券活动名', '1', '', '157', '1', '1', '1431857663', '1431857645', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1405', 'activity_id', '活动ID', 'int(10) NOT NULL', 'num', '', '外键,对应card_activity表主键', '1', '', '158', '1', '1', '1431859004', '1431857994', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1406', 'card_id', '卡券ID', 'varchar(255) NOT NULL', 'string', '', '外键 关联wxcard表的card_id', '1', '', '158', '1', '1', '1431859023', '1431858179', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1407', 'pwd_id', '核销码ID', 'int(10) NOT NULL', 'num', '', '外键,对应card_consume_pwd主键', '1', '', '159', '1', '1', '1431858733', '1431858733', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1365', 'title', '券名', 'varchar(50) NOT NULL', 'string', '', '券名，字数上限为9 个汉字。(建 议涵盖卡券属性、服务及金额)', '1', '', '155', '1', '1', '1431048799', '1431048799', '1,9', '3', '不能超过9个汉字', 'length', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1386', 'card_id', 'card_id', 'varchar(255) NULL', 'string', '', 'card_id', '0', '', '155', '0', '1', '1431053205', '1431053197', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1387', 'status', '卡券状态', 'varchar(100) NOT NULL', 'string', 'CARD_STATUS_NOT_VERIFY', '卡券状态(包括:待审核,审核失败,通过审核,已删除,已投放)', '1', 'CARD_STATUS_NOT_VERIFY:待审核\r\nCARD_STATUS_VERIFY_FALL:审核失败\r\nCARD_STATUS_VERIFY_OK:通过审核\r\nCARD_STATUS_USER_DELETE:卡券被用户删除\r\nCARD_STATUS_USER_DISPATCH:在公众平台投放过的卡券', '155', '0', '1', '1431053896', '1431053896', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1394', 'jsticket_iurl', 'jsapi_ticket来源接口', 'varchar(255) NULL', 'string', '', 'jsapi_ticket来源接口', '1', '', '154', '0', '1', '1431535372', '1431508084', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1413', 'alias', '备注名', 'varchar(100) NULL', 'string', '', '', '1', '', '155', '0', '1', '1434884845', '1434884518', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1414', 'activity_id', '所属活动', 'int(10) NULL', 'num', '', '外键,关联card_activity表主键', '0', '', '155', '0', '1', '1434884834', '1434884834', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1415', 'card_id', '卡券ID', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '160', '1', '1', '1434944120', '1434944120', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1416', 'token', '微信原始ID', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '160', '1', '1', '1434944155', '1434944155', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1417', 'openid', '微信用户openid', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '160', '1', '1', '1434944230', '1434944230', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1418', 'count', '已领取张数', 'int(10) NOT NULL', 'num', '1', '', '1', '', '160', '1', '1', '1434944302', '1434944302', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1419', 'remark', '备注', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '157', '0', '1', '1434948663', '1434948663', '', '3', '', 'regex', '', '3', 'function');


-- ----------------------------
-- Table structure for wplt_card_activity
-- ----------------------------
DROP TABLE IF EXISTS `wplt_card_activity`;
CREATE TABLE `wplt_card_activity` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(1024) NOT NULL COMMENT '活动名称',
  `token` varchar(50) NOT NULL COMMENT '微信原始id',
  `remark` varchar(255) NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of wplt_card_activity
-- ----------------------------
INSERT INTO `wplt_card_activity` VALUES ('1', '关注礼', 'gh_767657cbed71', '伊维斯关注礼');



-- ----------------------------
-- Table structure for wplt_card_obtain
-- ----------------------------
DROP TABLE IF EXISTS `wplt_card_obtain`;
CREATE TABLE `wplt_card_obtain` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `card_id` varchar(255) NOT NULL COMMENT '卡券ID',
  `token` varchar(255) NOT NULL COMMENT '微信原始ID',
  `openid` varchar(255) NOT NULL COMMENT '微信用户openid',
  `count` int(10) NOT NULL DEFAULT '1' COMMENT '已领取张数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of wplt_card_obtain
-- ----------------------------


-- ----------------------------
-- Table structure for wplt_model
-- ----------------------------
DROP TABLE IF EXISTS `wplt_model`;
CREATE TABLE `wplt_model` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '模型ID',
  `name` char(30) NOT NULL DEFAULT '' COMMENT '模型标识',
  `title` char(30) NOT NULL DEFAULT '' COMMENT '模型名称',
  `extend` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '继承的模型',
  `relation` varchar(30) NOT NULL DEFAULT '' COMMENT '继承与被继承模型的关联字段',
  `need_pk` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '新建表时是否需要主键字段',
  `field_sort` text NOT NULL COMMENT '表单字段排序',
  `field_group` varchar(255) NOT NULL DEFAULT '1:基础' COMMENT '字段分组',
  `attribute_list` text NOT NULL COMMENT '属性列表（表的字段）',
  `template_list` varchar(100) NOT NULL DEFAULT '' COMMENT '列表模板',
  `template_add` varchar(100) NOT NULL DEFAULT '' COMMENT '新增模板',
  `template_edit` varchar(100) NOT NULL DEFAULT '' COMMENT '编辑模板',
  `list_grid` text NOT NULL COMMENT '列表定义',
  `list_row` smallint(2) unsigned NOT NULL DEFAULT '10' COMMENT '列表数据长度',
  `search_key` varchar(50) NOT NULL DEFAULT '' COMMENT '默认搜索字段',
  `search_list` varchar(255) NOT NULL DEFAULT '' COMMENT '高级搜索的字段',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `engine_type` varchar(25) NOT NULL DEFAULT 'MyISAM' COMMENT '数据库引擎',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=161 DEFAULT CHARSET=utf8 COMMENT='文档模型表';

-- ----------------------------
-- Records of wplt_model
-- ----------------------------
INSERT INTO `wplt_model` VALUES ('6', 'vote', '投票', '0', '', '1', '{\"1\":[\"keyword\",\"title\",\"description\",\"picurl\",\"type\",\"start_date\",\"end_date\"]}', '1:基础', '', '', '', '', 'id:投票ID\r\nkeyword:关键词\r\ntitle:投票标题\r\ntype|get_name_by_status:类型\r\nis_img|get_name_by_status:状态\r\nvote_count:投票数\r\nids:操作:show&id=[id]|预览,[EDIT]&id=[id]|编辑,[DELETE]|删除', '20', 'title', 'description', '1388930292', '1401017026', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('152', 'document', '基础文档', '0', '', '1', '{\"1\":[\"uid\",\"name\",\"title\",\"category_id\",\"description\",\"root\",\"pid\",\"model_id\",\"type\",\"position\",\"link_id\",\"cover_id\",\"display\",\"deadline\",\"attach\",\"view\",\"comment\",\"extend\",\"level\",\"create_time\",\"update_time\",\"status\"]}', '1:基础', '', '', '', '', 'id:编号\r\ntitle:标题:article/index?cate_id=[category_id]&pid=[id]\r\ntype|get_document_type:类型\r\nlevel:优先级\r\nupdate_time|time_format:最后更新\r\nstatus_text:状态\r\nview:浏览\r\nid:操作:[EDIT]&cate_id=[category_id]|编辑,article/setstatus?status=-1&ids=[id]|删除', '0', '', '', '1383891233', '1384507827', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('5', 'keyword', '关键词表', '0', '', '1', '{\"1\":[\"keyword\",\"keyword_type\",\"addon\",\"aim_id\",\"keyword_length\",\"cTime\",\"extra_text\",\"extra_int\"]}', '1:基础', '', '', '', '', 'id:编号\r\nkeyword:关键词\r\naddon:所属插件\r\naim_id:插件数据ID\r\ncTime|time_format:增加时间\r\nrequest_count|intval:请求数\r\nid:操作:[EDIT]|编辑,[DELETE]|删除', '10', 'keyword', '', '1388815871', '1407251192', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('7', 'vote_option', '投票选项', '0', '', '1', '', '1:基础', '', '', '', '', '', '10', '', '', '1388933346', '1388933346', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('8', 'vote_log', '投票记录', '0', '', '1', '', '1:基础', '', '', '', '', '', '10', '', '', '1388934136', '1388934136', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('11', 'member_public', '公众号管理', '0', '', '1', '{\"1\":[\"public_name\",\"public_id\",\"wechat\",\"type\",\"appid\",\"secret\",\"encodingaeskey\"]}', '1:基础', '', '', '', '', 'id:公众号ID\r\npublic_name:公众号名称\r\ntype|get_name_by_status:类型\r\ngroup_id|get_public_group_name:等级\r\ntoken:Token\r\nuid:管理员\r\nids:操作:[EDIT]|编辑,[DELETE]|删除,changPublic&id=[id]|切换为当前公众号,help&public_id=[id]#weixin_set|接口配置', '20', 'public_name', '', '1391575109', '1416973450', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('30', 'card_member', '会员卡成员', '0', '', '1', '{\"1\":[\"username\",\"phone\"]}', '1:基础', '', '', '', '', 'number:卡号\r\nusername:姓名\r\nphone:手机号\r\ncTime|time_format:加入时间\r\nid:操作:[EDIT]|编辑,[DELETE]|删除', '10', 'username', '', '1395482804', '1395484751', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('13', 'member_public_group', '公众号等级', '0', '', '1', '{\"1\":[\"title\",\"addon_status\"]}', '1:基础', '', '', '', '', 'id:等级ID\r\ntitle:等级名\r\naddon_status:授权的插件\r\npublic_count:公众号数\r\nid:操作:editPublicGroup&id=[id]|编辑,delPublicGroup&id=[id]|删除', '10', 'title', '', '1393724788', '1393730663', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('14', 'update_version', '系统版本升级', '0', '', '1', '{\"1\":[\"version\",\"title\",\"description\",\"create_date\",\"package\"]}', '1:基础', '', '', '', '', 'version:版本号\r\ntitle:升级包名\r\ndescription:描述\r\ncreate_date|time_format:创建时间\r\ndownload_count:下载统计数\r\nid:操作:[EDIT]&id=[id]|编辑,[DELETE]&id=[id]|删除', '10', '', '', '1393770420', '1393771807', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('22', 'extensions', '融合第三方', '0', '', '1', '{\"1\":[\"keyword\",\"keyword_type\",\"keyword_filter\",\"output_format\",\"api_url\",\"api_token\"]}', '1:基础', '', '', '', '', 'keyword:关键词\r\nkeyword_filter|get_name_by_status:关键词过滤\r\noutput_format|get_name_by_status:数据输出格式\r\napi_url:第三方地址\r\napi_token:Token\r\ncTime|time_format:增加时间\r\nid:操作:[EDIT]|编辑,[DELETE]|删除', '10', 'keyword', '', '1393911774', '1394721892', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('16', 'forum', '论坛区', '0', '', '1', '', '1:基础', '', '', '', '', '', '10', '', '', '1394033250', '1394033250', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('17', 'store', '应用商店', '0', '', '1', '{\"1\":[\"type\",\"title\",\"price\",\"attach\",\"logo\",\"content\",\"img_1\",\"img_2\",\"img_3\",\"img_4\",\"is_top\",\"audit\",\"audit_time\"]}', '1:基础', '', '', '', '', 'id:ID值\r\ntype|get_name_by_status:应用类型\r\ntitle:应用标题\r\nprice:价格\r\nlogo|get_img_html:应用LOGO\r\nmTime|time_format:更新时间\r\naudit|get_name_by_status:审核状态\r\naudit_time|time_format:审核时间\r\nid:操作:[EDIT]|编辑,[DELETE]|删除', '10', 'title', '', '1394033250', '1402885526', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('18', 'suggestions', '建议意见', '0', '', '1', '{\"1\":[\"content\",\"nickname\",\"mobile\"]}', '1:基础', '', '', '', '', 'nickname:昵称\r\ncontent:内容\r\nmobile:联系方式\r\ncTime|time_format:创建时间\r\nid:操作:[EDIT]&id=[id]|编辑,[DELETE]&id=[id]|删除', '10', 'content', '', '1393234169', '1400687145', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('85', 'custom_menu', '自定义菜单', '0', '', '1', '{\"1\":[\"sort\",\"pid\",\"title\",\"type\",\"keyword\",\"url\"]}', '1:基础', '', '', '', '', 'title:10%菜单名\r\ntype|get_name_by_status:类型\r\nkeyword:10%关联关键词\r\nurl:50%关联URL\r\nsort:5%排序号\r\nid:10%操作:[EDIT]|编辑,[DELETE]|删除', '10', 'title', '', '1394518309', '1416811657', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('31', 'card_notice', '会员卡通知', '0', '', '1', '{\"1\":[\"title\",\"content\"]}', '1:基础', '', '', '', '', 'title:标题\r\ncTime|time_format:发布时间\r\nid:操作:[EDIT]|编辑,[DELETE]|删除', '10', 'title', '', '1395485156', '1395485486', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('33', 'weisite_category', '微官网分类', '0', '', '1', '{\"1\":[\"title\",\"icon\",\"url\",\"is_show\",\"sort\"]}', '1:基础', '', '', '', '', 'title:15%分类标题\r\nicon|get_img_html:分类图片\r\nurl:30%外链\r\nsort:10%排序号\r\nis_show|get_name_by_status:10%显示\r\nid:10%操作:[EDIT]|编辑,[DELETE]|删除', '10', 'title', '', '1395987942', '1417401746', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('34', 'weisite_cms', '文章管理', '0', '', '1', '{\"1\":[\"keyword\",\"keyword_type\",\"title\",\"intro\",\"cate_id\",\"cover\",\"content\",\"sort\"]}', '1:基础', '', '', '', '', 'keyword:关键词\r\nkeyword_type|get_name_by_status:关键词类型\r\ntitle:标题\r\ncate_id:所属分类\r\nsort:排序号\r\nview_count:浏览数\r\nid:操作:[EDIT]&module_id=[pid]|编辑,[DELETE]|删除', '10', 'title', '', '1396061373', '1408326292', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('35', 'weisite_slideshow', '幻灯片', '0', '', '1', '{\"1\":[\"title\",\"img\",\"url\",\"is_show\",\"sort\"]}', '1:基础', '', '', '', '', 'title:标题\r\nimg:图片\r\nurl:链接地址\r\nis_show|get_name_by_status:显示\r\nsort:排序\r\nid:操作:[EDIT]&module_id=[pid]|编辑,[DELETE]|删除', '10', 'title', '', '1396098264', '1408323347', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('36', 'weisite_footer', '底部导航', '0', '', '1', '{\"1\":[\"pid\",\"title\",\"url\",\"sort\"]}', '1:基础', '', '', '', '', 'title:菜单名\r\nicon:图标\r\nurl:关联URL\r\nsort:排序号\r\nid:操作:[EDIT]|编辑,[DELETE]|删除', '10', 'title', '', '1394518309', '1396507698', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('62', 'custom_reply_text', '文本回复', '0', '', '1', '{\"1\":[\"keyword\",\"keyword_type\",\"content\",\"sort\"]}', '1:基础', '', '', '', '', 'id:ID\r\nkeyword:关键词\r\nkeyword_type|get_name_by_status:关键词类型\r\nsort:排序号\r\nview_count:浏览数\r\nid:操作:[EDIT]|编辑,[DELETE]|删除', '10', 'keyword', '', '1396578172', '1401017369', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('64', 'custom_reply_news', '图文回复', '0', '', '1', '{\"1\":[\"keyword\",\"keyword_type\",\"title\",\"intro\",\"cate_id\",\"cover\",\"content\",\"sort\"]}', '1:基础', '', '', '', '', 'id:5%ID\r\nkeyword:10%关键词\r\nkeyword_type|get_name_by_status:20%关键词类型\r\ntitle:30%标题\r\ncate_id:10%所属分类\r\nsort:7%排序号\r\nview_count:8%浏览数\r\nid:10%操作:[EDIT]|编辑,[DELETE]|删除', '10', 'title', '', '1396061373', '1401368247', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('65', 'custom_reply_mult', '多图文配置', '0', '', '1', '', '1:基础', '', '', '', '', '', '10', '', '', '1396602475', '1396602475', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('69', 'forms', '通用表单', '0', '', '1', '{\"1\":[\"keyword\",\"keyword_type\",\"title\",\"intro\",\"cover\",\"can_edit\",\"finish_tip\",\"jump_url\",\"content\"]}', '1:基础', '', '', '', '', 'id:通用表单ID\r\nkeyword:关键词\r\nkeyword_type|get_name_by_status:关键词类型\r\ntitle:标题\r\ncTime|time_format:发布时间\r\nid:操作:[EDIT]|编辑,[DELETE]|删除,forms_attribute&id=[id]|字段管理,forms_value&id=[id]|数据管理,preview&id=[id]|预览', '10', 'title', '', '1396061373', '1401017094', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('70', 'forms_attribute', '表单字段', '0', '', '1', '{\"1\":[\"name\",\"title\",\"type\",\"extra\",\"value\",\"remark\",\"is_must\",\"validate_rule\",\"error_info\",\"sort\"]}', '1:基础', '', '', '', '', 'title:字段标题\r\nname:字段名\r\ntype|get_name_by_status:字段类型\r\nid:操作:[EDIT]&forms_id=[forms_id]|编辑,[DELETE]|删除', '10', 'title', '', '1396061373', '1396710959', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('71', 'forms_value', '通用表单数据', '0', '', '1', '', '1:基础', '', '', '', '', '', '10', '', '', '1396687959', '1396687959', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('73', 'survey', '调研问卷', '0', '', '1', '{\"1\":[\"keyword\",\"keyword_type\",\"title\",\"cover\",\"intro\",\"finish_tip\"]}', '1:基础', '', '', '', '', 'id:微调研ID\r\nkeyword:关键词\r\nkeyword_type|get_name_by_status:关键词类型\r\ntitle:标题\r\ncTime|time_format:发布时间\r\nid:操作:[EDIT]|编辑,[DELETE]|删除,survey_question&id=[id]|问题管理,survey_answer&id=[id]|数据管理,preview&id=[id]|预览', '10', 'title', '', '1396061373', '1401017145', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('74', 'survey_question', '调研问题', '0', '', '1', '{\"1\":[\"title\",\"type\",\"extra\",\"intro\",\"is_must\",\"sort\"]}', '1:基础', '', '', '', '', 'title:标题\r\ntype|get_name_by_status:问题类型\r\nis_must|get_name_by_status:是否必填\r\nid:操作:[EDIT]|编辑,[DELETE]|删除', '10', 'title', '', '1396061373', '1396955090', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('75', 'survey_answer', '调研回答', '0', '', '1', '', '1:基础', '', '', '', '', 'openid:OpenId\r\ntruename:姓名\r\nmobile:手机号\r\ncTime|time_format:发布时间\r\nid:操作:detail?uid=[uid]&survey_id=[survey_id]|回答内容', '10', 'title', '', '1396061373', '1397011511', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('76', 'exam', '考试试卷', '0', '', '1', '{\"1\":[\"keyword\",\"keyword_type\",\"title\",\"cover\",\"intro\",\"start_time\",\"end_time\",\"finish_tip\"]}', '1:基础', '', '', '', '', 'id:微考试ID\r\nkeyword:关键词\r\nkeyword_type|get_name_by_status:关键词类型\r\ntitle:试卷标题\r\nstart_time|time_format:开始时间\r\nend_time|time_format:结束时间\r\nid:操作:[EDIT]|编辑,[DELETE]|删除,exam_question&id=[id]|题目管理,exam_answer&id=[id]|考生成绩,preview&id=[id]|试卷预览', '10', 'title', '', '1396061373', '1401017190', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('77', 'exam_question', '考试题目', '0', '', '1', '{\"1\":[\"title\",\"type\",\"extra\",\"intro\",\"is_must\",\"sort\"]}', '1:基础', '', '', '', '', 'title:标题\r\ntype|get_name_by_status:题目类型\r\nscore:分值\r\nid:操作:[EDIT]|编辑,[DELETE]|删除', '10', 'title', '', '1396061373', '1397035409', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('78', 'exam_answer', '考试回答', '0', '', '1', '', '1:基础', '', '', '', '', 'openid:OpenId\r\ntruename:姓名\r\nmobile:手机号\r\nscore:成绩\r\ncTime|time_format:考试时间\r\nid:操作:detail?uid=[uid]&exam_id=[exam_id]|答题详情', '10', 'title', '', '1396061373', '1397036455', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('79', 'test', '测试问卷', '0', '', '1', '{\"1\":[\"keyword\",\"keyword_type\",\"title\",\"cover\",\"intro\",\"finish_tip\"]}', '1:基础', '', '', '', '', 'id:微测试ID\r\nkeyword:关键词\r\nkeyword_type|get_name_by_status:关键词类型\r\ntitle:问卷标题\r\nid:操作:[EDIT]|编辑,[DELETE]|删除,test_question&id=[id]|题目管理,test_answer&id=[id]|用户记录,preview&id=[id]|问卷预览', '10', 'title', '', '1396061373', '1401017218', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('80', 'test_question', '测试题目', '0', '', '1', '{\"1\":[\"title\",\"extra\",\"intro\",\"sort\"]}', '1:基础', '', '', '', '', 'id:问题编号\r\ntitle:标题\r\nextra:参数\r\nids:操作:[EDIT]|编辑,[DELETE]|删除', '10', 'title', '', '1396061373', '1397145854', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('81', 'test_answer', '测试回答', '0', '', '1', '', '1:基础', '', '', '', '', 'openid:OpenId\r\ntruename:姓名\r\nmobile:手机号\r\nscore:得分\r\ncTime|time_format:测试时间\r\nid:操作:detail?uid=[uid]&test_id=[test_id]|答题详情', '10', 'title', '', '1396061373', '1397145984', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('83', 'shop_product', '微商店商品', '0', '', '1', '{\"1\":[\"title\",\"cover\",\"intro\",\"cate_id\",\"market_price\",\"discount_price\",\"buy_url\",\"ad_url\",\"content\",\"param\",\"img_1\",\"img_2\",\"img_3\",\"img_4\",\"img_5\"]}', '1:基础', '', '', '', '', 'id:商品ID\r\ncover|get_img_html:图片\r\ntitle:商品名称\r\ncate_id|getCommonCategoryTitle:分类\r\nmarket_price:市场价\r\ndiscount_price:市场价\r\nview_count:浏览数\r\nids:操作:[EDIT]|编辑,[DELETE]|删除', '10', 'title', '', '1396061373', '1398741409', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('84', 'common_category', '通用分类', '0', '', '1', '{\"1\":[\"pid\",\"title\",\"icon\",\"intro\",\"sort\",\"is_show\"]}', '1:基础', '', '', '', '', 'code:编号\r\ntitle:标题\r\nicon|get_img_html:图标\r\nsort:排序号\r\nis_show|get_name_by_status:显示\r\nids:操作:[EDIT]|编辑,[DELETE]|删除', '10', 'title', '', '1397529095', '1404182789', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('86', 'shop_footer', '底部导航', '0', '', '1', '{\"1\":[\"pid\",\"title\",\"url\",\"sort\"]}', '1:基础', '', '', '', '', 'title:菜单名\r\nicon:图标\r\nurl:关联URL\r\nsort:排序号\r\nid:操作:[EDIT]|编辑,[DELETE]|删除', '10', 'title', '', '1394518309', '1396507698', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('87', 'credit_config', '积分配置', '0', '', '1', '{\"1\":[\"title\",\"name\",\"experience\",\"score\"]}', '1:基础', '', '', '', '', 'title:积分描述\r\nname:积分标识\r\nexperience:经验值\r\nscore:财富值\r\nid:操作:[EDIT]|编辑,[DELETE]|删除', '10', 'title', '', '1396061373', '1398564809', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('88', 'credit_data', '用户积分记录', '0', '', '1', '{\"1\":[\"credit_name\",\"uid\",\"experience\",\"score\"]}', '1:基础', '', '', '', '', 'uid:用户\r\ncredit_name:积分标识\r\nexperience:经验值\r\nscore:财富值\r\ncTime|time_format:记录时间\r\nid:操作:[EDIT]|编辑,[DELETE]|删除', '10', 'uid', '', '1398564291', '1400117739', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('89', 'follow', '粉丝管理', '0', '', '1', '{\"1\":[\"nickname\",\"sex\",\"headimgurl\",\"city\",\"province\",\"country\",\"language\"]}', '1:基础', '', '', '', '', 'id:粉丝编号\r\nopenid:OpenId\r\nnickname:昵称\r\nsex|get_name_by_status:性别\r\nsubscribe_time|time_format:关注时间\r\nids:操作:[EDIT]|编辑', '10', 'nickname', '', '1398845737', '1398846740', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('90', 'member_public_link', '公众号与管理员的关联关系', '0', '', '1', '{\"1\":[\"uid\",\"addon_status\"]}', '1:基础', '', '', '', '', 'uid|get_nickname:管理员\r\naddon_status:授权的插件\r\nids:操作:[EDIT]|编辑,[DELETE]|删除', '10', '', '', '1398933192', '1398947067', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('91', 'coupon', '优惠券', '0', '', '1', '{\"1\":[\"keyword\",\"title\",\"intro\",\"cover\",\"use_tips\",\"start_time\",\"end_time\",\"end_img\",\"end_tips\",\"num\",\"max_num\",\"follower_condtion\",\"credit_conditon\",\"credit_bug\",\"addon_condition\"]}', '1:基础', '', '', '', '', 'id:优惠券ID\r\nkeyword:关键词\r\ntitle:标题\r\ncollect_count:获取人数\r\ncTime|time_format:发布时间\r\nid:操作:[EDIT]|编辑,[DELETE]|删除,lists?target_id=[id]&target=_blank&_controller=Sn|成员管理,preview?id=[id]&target=_blank|预览', '10', 'title', '', '1396061373', '1401017265', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('92', 'sn_code', 'SN码', '0', '', '1', '{\"1\":[\"prize_title\"]}', '1:基础', '', '', '', '', 'sn:SN码\r\nuid|get_nickname:昵称\r\nprize_title:奖项\r\ncTime|time_format:创建时间\r\nis_use|get_name_by_status:是否已使用\r\nuse_time|time_format:使用时间\r\nid:操作:[DELETE]|删除,set_use?id=[id]|改变使用状态', '10', 'sn', '', '1399272054', '1401013099', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('93', 'scratch', '刮刮卡', '0', '', '1', '{\"1\":[\"keyword\",\"title\",\"intro\",\"cover\",\"use_tips\",\"start_time\",\"end_time\",\"end_tips\",\"end_img\",\"predict_num\",\"max_num\",\"follower_condtion\",\"credit_conditon\",\"credit_bug\",\"addon_condition\"]}', '1:基础', '', '', '', '', 'id:刮刮卡ID\r\nkeyword:关键词\r\ntitle:标题\r\ncollect_count:获取人数\r\ncTime|time_format:发布时间\r\nid:操作:[EDIT]|编辑,[DELETE]|删除,lists?target_id=[id]&target=_blank&_controller=Sn|中奖管理,lists?target_id=[id]&target=_blank&_controller=Prize|奖品管理,preview?id=[id]&target=_blank|预览', '10', 'title', '', '1396061373', '1404142036', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('94', 'prize', '奖项设置', '0', '', '1', '{\"1\":[\"title\",\"name\",\"num\",\"img\",\"sort\"]}', '1:基础', '', '', '', '', 'title:奖项标题\r\nname:奖项\r\nnum:名额数量\r\nimg|get_img_html:奖品图片\r\nid:操作:[EDIT]|编辑,[DELETE]|删除', '10', 'title', '', '1399348610', '1399702991', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('95', 'addon_category', '插件分类', '0', '', '1', '{\"1\":[\"icon\",\"title\",\"sort\"]}', '1:基础', '', '', '', '', 'icon|get_img_html:分类图标\r\ntitle:分类名\r\nsort:排序号\r\nid:操作:[EDIT]|编辑,[DELETE]|删除', '10', 'title', '', '1400047655', '1400048130', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('96', 'tongji', '运营统计', '0', '', '1', '{\"1\":[\"month\",\"day\",\"content\"]}', '1:基础', '', '', '', '', 'day:日期', '10', 'day', '', '1401371050', '1401371409', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('97', 'common_category_group', '通用分类分组', '0', '', '1', '{\"1\":[\"name\",\"title\"]}', '1:基础', '', '', '', '', 'name:分组标识\r\ntitle:分组标题\r\nid:操作:cascade?target=_blank&module=[name]|数据管理,[EDIT]|编辑,[DELETE]|删除', '10', 'title', '', '1396061373', '1403664378', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('104', 'youaskservice_user', '你问我答-客服工号', '0', '', '1', '{\"1\":[\"name\",\"userName\",\"userPwd\",\"state\",\"kfid\"]}', '1:基础', '', '', '', '', 'kfid:编号\r\nname:客服昵称\r\nuserName:客服帐号', '10', 'name', 'userName', '1403947253', '1404398415', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('105', 'youaskservice_logs', '你问我答-聊天记录管理', '0', '', '1', '{\"1\":[\"pid\",\"openid\",\"enddate\",\"keyword\",\"status\"]}', '1:基础', '', '', '', '', 'id:编号\r\nkeyword:回复内容\r\nenddate:回复时间', '10', 'keyword', '', '1403947270', '1404060187', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('116', 'youaskservice_keyword', '你问我答-关键词指配', '0', '', '1', '{\"1\":[\"msgkeyword\",\"msgkeyword_type\",\"zdtype\",\"msgstate\"]}', '1:基础', '', '', '', '', 'id:编号\r\nmsgkeyword:关键字\r\nmsgkeyword_type|get_name_by_status:匹配类型\r\nmsgkfaccount:指定的接待客服或分组\r\nmsgstate|get_name_by_status:状态\r\nid:操作:[EDIT]|编辑,[DELETE]|删除', '10', 'msgkeyword', '', '1404399143', '1404493938', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('106', 'youaskservice_wechat_enddate', 'youaskservice_wechat_enddate', '0', '', '1', '', '1:基础', '', '', '', '', '', '10', '', '', '1404026714', '1404026714', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('107', 'youaskservice_wechat_grouplist', 'youaskservice_wechat_grouplist', '0', '', '1', '', '1:基础', '', '', '', '', '', '10', '', '', '1404027300', '1404027300', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('108', 'youaskservice_behavior', 'youaskservice_behavior', '0', '', '1', '', '1:基础', '', '', '', '', '', '10', '', '', '1404033501', '1404033501', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('115', 'smalltools', '小工具-管理', '0', '', '1', '{\"1\":[\"keyword\",\"toolname\",\"tooldes\",\"toolstate\"]}', '1:基础', '', '', '', '', 'id:编号\r\nkeyword:关键词\r\ntoolname:名称\r\ntooldes:描述\r\ntooltype|get_name_by_status:类型\r\ntoolstate|get_name_by_status:状态', '10', 'toolname', 'tooldes', '1404273263', '1404277639', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('117', 'youaskservice_group', '你问我答-客服分组', '0', '', '1', '{\"1\":[\"groupname\"]}', '1:基础', '', '', '', '', 'id:编号\r\ngroupname:分组名称\r\nid:操作:[EDIT]|编辑,[DELETE]|删除', '10', 'groupname', '', '1404475456', '1404491410', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('120', 'youaskservice_wxlogs', '你问我答- 微信聊天记录', '0', '', '1', '', '1:基础', '', '', '', '', '', '10', '', '', '1406094050', '1406094093', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('121', 'qr_code', '二维码表', '0', '', '1', '{\"1\":[\"qr_code\",\"addon\",\"aim_id\",\"cTime\",\"extra_text\",\"extra_int\",\"scene_id\",\"action_name\"]}', '1:基础', '', '', '', '', 'scene_id:事件KEY值\r\nqr_code|get_code_img:二维码\r\naction_name|get_name_by_status: 	二维码类型\r\naddon:所属插件\r\naim_id:插件数据ID\r\ncTime|time_format:增加时间\r\nrequest_count|intval:请求数\r\nid:操作:[EDIT]|编辑,[DELETE]|删除', '10', 'qr_code', '', '1388815871', '1406130247', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('143', 'import', '导入数据', '0', '', '1', '', '1:基础', '', '', '', '', '', '10', '', '', '1407554076', '1407554076', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('154', 'member_public_token_io', '公众号Accesstoken输入输出', '0', '', '1', '', '1:基础', '', '', '', '', '', '10', '', '', '1430660576', '1430660576', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('155', 'wxcard', '微信卡券', '0', '', '1', '', '1:基础', '', '', '', '', '', '10', '', '', '1430992691', '1430992691', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('156', 'card_consume_pwd', '核销码管理', '0', '', '1', '{\"1\":[\"shop\",\"pwd\"]}', '1:基础', '', '', '', '', 'shop:门店\r\npwd:核销码\r\nid:操作:[EDIT]|编辑,[DELETE]|删除', '100', 'shop', '', '1431856869', '1431876225', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('157', 'card_activity', '卡券活动', '0', '', '1', '', '1:基础', '', '', '', '', '', '10', '', '', '1431857393', '1431857393', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('158', 'card_activity_bind', '活动与卡券关系表', '0', '', '1', '', '1:基础', '', '', '', '', '', '10', '', '', '1431857842', '1431857842', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('159', 'card_consume_statistics', '核销统计', '0', '', '1', '', '1:基础', '', '', '', '', '', '10', '', '', '1431858575', '1431858575', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('160', 'card_obtain', '卡券领取记录', '0', '', '1', '', '1:基础', '', '', '', '', '', '10', '', '', '1434943922', '1434943922', '1', 'MyISAM');


-- ----------------------------
-- Table structure for wplt_wxcard
-- ----------------------------
DROP TABLE IF EXISTS `wplt_wxcard`;
CREATE TABLE `wplt_wxcard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(50) NOT NULL COMMENT '券名',
  `card_id` varchar(255) DEFAULT NULL COMMENT 'card_id',
  `status` varchar(100) NOT NULL DEFAULT 'CARD_STATUS_NOT_VERIFY' COMMENT '卡券状态',
  `token` varchar(50) NOT NULL COMMENT '微信原始ID',
  `data` text NOT NULL COMMENT '卡券数据',
  `changes` text COMMENT '改动项数据',
  `alias` varchar(100) DEFAULT NULL COMMENT '备注名',
  `activity_id` int(10) DEFAULT NULL COMMENT '所属活动',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of wplt_wxcard
-- ----------------------------
INSERT INTO `wplt_wxcard` VALUES ('1', '五维数码1元代金券', 'pY5Fws4JV5pKaXnTxrbZeojhj8CA', 'CARD_STATUS_VERIFY_OK', 'gh_99be645d3d8f', '{\"errcode\":0,\"errmsg\":\"ok\",\"card\":{\"card_type\":\"CASH\",\"cash\":{\"base_info\":{\"id\":\"pY5Fws4JV5pKaXnTxrbZeojhj8CA\",\"logo_url\":\"https:\\/\\/mmbiz.qlogo.cn\\/mmbiz\\/8N0DCyeic0icxScSK0RK0tXMuS2MFV7c67c52wzsibVViaM3ceZeRLd396Uvm5sDkia88ibjh01vNqgicyr5bw9NZjwEQ\\/0?wx_fmt=jpeg\",\"code_type\":\"CODE_TYPE_TEXT\",\"brand_name\":\"五维\",\"title\":\"五维数码1元代金券\",\"sub_title\":\"全国专柜适用\",\"date_info\":{\"type\":1,\"begin_timestamp\":1427817600,\"end_timestamp\":1451577600},\"color\":\"#d54036\",\"notice\":\"使用时请出示给收银员MM\",\"description\":\"此券消费任意商品产品满一百元即可直接抵扣1元\",\"location_id_list\":[],\"get_limit\":100,\"can_share\":false,\"can_give_friend\":false,\"use_custom_code\":false,\"bind_openid\":false,\"status\":\"CARD_STATUS_VERIFY_OK\",\"sku\":{\"quantity\":89999996,\"total_quantity\":90000000},\"create_time\":1431780139,\"update_time\":1431780139,\"custom_url_name\":\"立即使用\",\"custom_url\":\"http:\\/\\/wechatengine.com\\/wei\\/plt\\/wengine\\/index.php?s=\\/addon\\/LangerieCard1\\/LangerieCardPublic\\/consume\\/id\\/109.html\",\"js_oauth_uin_list\":[]},\"reduce_cost\":100}}}', null, '', null);
INSERT INTO `wplt_wxcard` VALUES ('2', '10元代金券', 'pn0s-t0Qd6eiXDtNSSVQ6Vcjd7nA', 'CARD_STATUS_VERIFY_OK', 'gh_9a02b12868ff', '{\"errcode\":0,\"errmsg\":\"ok\",\"card\":{\"card_type\":\"CASH\",\"cash\":{\"base_info\":{\"id\":\"pn0s-t0Qd6eiXDtNSSVQ6Vcjd7nA\",\"logo_url\":\"https:\\/\\/mmbiz.qlogo.cn\\/mmbiz\\/MKEdQ52IP2NiafI3znI4lAjWk2DKkxZEYCHbJbKibPicVc9pFEVPFlCjjoJt4hfiaGMjvxJ5Q7DjE4HE94oeiaib0Sibw\\/0?wx_fmt=jpeg\",\"code_type\":\"CODE_TYPE_TEXT\",\"brand_name\":\"兰卓丽\",\"title\":\"10元代金券\",\"sub_title\":\"全国专柜适用\",\"date_info\":{\"type\":1,\"begin_timestamp\":1431878400,\"end_timestamp\":1454083200},\"color\":\"#55bd47\",\"notice\":\"使用时请出示给收银员MM\",\"service_phone\":\"400-889-9925\",\"description\":\"适用于全国兰卓丽直营专柜及门店，\\r消费任意商品即可直接抵扣10元，每笔消费仅限使用一张代金券.2016年1月30日前均可使用.\",\"location_id_list\":[],\"get_limit\":1,\"can_share\":false,\"can_give_friend\":false,\"use_custom_code\":false,\"bind_openid\":false,\"status\":\"CARD_STATUS_VERIFY_OK\",\"sku\":{\"quantity\":90000000,\"total_quantity\":90000000},\"create_time\":1431919488,\"update_time\":1431942876,\"custom_url_name\":\"立即使用\",\"custom_url\":\"http:\\/\\/weixin.maniform.cn\\/wei\\/plt\\/wengine\\/index.php?s=\\/addon\\/LangerieCard1\\/LangerieCardPublic\\/consume\\/id\\/110.html\",\"js_oauth_uin_list\":[]},\"reduce_cost\":1000}}}', null, '兰卓丽关注礼', null);
INSERT INTO `wplt_wxcard` VALUES ('3', '50元代金券', 'pn0s-t6jGl3ByDgb3Wz0wnLfSGH8', 'CARD_STATUS_VERIFY_OK', 'gh_9a02b12868ff', '{\"errcode\":0,\"errmsg\":\"ok\",\"card\":{\"card_type\":\"CASH\",\"cash\":{\"base_info\":{\"id\":\"pn0s-t6jGl3ByDgb3Wz0wnLfSGH8\",\"logo_url\":\"http:\\/\\/weixin.maniform.cn\\/wei\\/plt\\/wengine\\/Public\\/Home\\/images\\/langerie\\/logo.jpg\",\"code_type\":\"CODE_TYPE_TEXT\",\"brand_name\":\"兰卓丽\",\"title\":\"50元代金券\",\"sub_title\":\"全国直营专柜适用\",\"date_info\":{\"type\":1,\"begin_timestamp\":1434729600,\"end_timestamp\":1440086399},\"color\":\"#63b359\",\"notice\":\"使用时请出示给收银员MM\",\"service_phone\":\"400-889-9925\",\"description\":\"适用于全国兰卓丽直营专柜及门店，仅限购买无钢圈产品时使用，可直接抵扣50元，每笔消费仅限使用一张代金券. 不可与其他优惠共用使用.有效期：2015年6月20日-2015年8月20日.\",\"location_id_list\":[],\"get_limit\":1,\"can_share\":false,\"can_give_friend\":false,\"use_custom_code\":false,\"bind_openid\":false,\"status\":\"CARD_STATUS_VERIFY_OK\",\"sku\":{\"quantity\":89999982,\"total_quantity\":90000000},\"create_time\":1433941814,\"update_time\":1434348572,\"custom_url_name\":\"立即使用\",\"custom_url\":\"http:\\/\\/weixin.maniform.cn\\/wei\\/plt\\/wengine\\/index.php?s=\\/addon\\/LangerieCard1\\/LangerieCardPublic\\/consume\\/id\\/110.html\",\"js_oauth_uin_list\":[]},\"reduce_cost\":5000}}}', null, '兰卓丽视频卡券', null);
INSERT INTO `wplt_wxcard` VALUES ('4', '50元代金券', 'pnBYvtwD0lj7jv02LbD8N6i3ewIY', 'CARD_STATUS_VERIFY_OK', 'gh_767657cbed71', '', null, '伊维斯关注礼金银卡', '1');
INSERT INTO `wplt_wxcard` VALUES ('5', '50元代金券', 'pnBYvt50NLqtX7yqMq_sxc93hngU', 'CARD_STATUS_VERIFY_OK', 'gh_767657cbed71', '', null, '测试伊维斯关注礼金银卡', '1');
INSERT INTO `wplt_wxcard` VALUES ('6', '20元代金券', 'pnBYvt4OCAfIqbgQWrPVrBMs-VYY', 'CARD_STATUS_VERIFY_OK', 'gh_767657cbed71', '', null, '伊维斯关注礼普卡', '1');
INSERT INTO `wplt_wxcard` VALUES ('7', '20元代金券', 'pnBYvt1RJ4kAcmJsspTQfewxd-l8', 'CARD_STATUS_VERIFY_OK', 'gh_767657cbed71', '', null, '测试伊维斯关注礼普卡', '1');
INSERT INTO `wplt_wxcard` VALUES ('8', '50元代金券', 'pnBYvt0aJPPeY4MgYEIYkAa3UUZg', 'CARD_STATUS_VERIFY_OK', 'gh_767657cbed71', '', null, '伊维斯闺蜜礼', null);
INSERT INTO `wplt_wxcard` VALUES ('9', '50元代金券', 'pnBYvtwMKhvYSKRvSX3xPoNHYSek', 'CARD_STATUS_VERIFY_OK', 'gh_767657cbed71', '', null, '测试伊维斯闺蜜礼', null);

-- ----------------------------
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
