-- -----------------------------
-- Think MySQL Data Transfer 
-- 
-- Host     : 127.0.0.1
-- Port     : 3306
-- Database : weplt
-- 
-- Part : #1
-- Date : 2015-05-04 03:51:09
-- -----------------------------

SET FOREIGN_KEY_CHECKS = 0;


-- -----------------------------
-- Table structure for `wplt_action`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_action`;
;

-- -----------------------------
-- Records of `wplt_action`
-- -----------------------------
INSERT INTO `wplt_action` VALUES ('1', 'user_login', '用户登录', '积分+10，每天一次', 'table:member|field:score|condition:uid={$self} AND status>-1|rule:score+10|cycle:24|max:1;', '[user|get_nickname]在[time|time_format]登录了管理中心', '1', '0', '1393685660');
INSERT INTO `wplt_action` VALUES ('2', 'add_article', '发布文章', '积分+5，每天上限5次', 'table:member|field:score|condition:uid={$self}|rule:score+5|cycle:24|max:5', '', '2', '0', '1380173180');
INSERT INTO `wplt_action` VALUES ('3', 'review', '评论', '评论积分+1，无限制', 'table:member|field:score|condition:uid={$self}|rule:score+1', '', '2', '0', '1383285646');
INSERT INTO `wplt_action` VALUES ('4', 'add_document', '发表文档', '积分+10，每天上限5次', 'table:member|field:score|condition:uid={$self}|rule:score+10|cycle:24|max:5', '[user|get_nickname]在[time|time_format]发表了一篇文章。
表[model]，记录编号[record]。', '2', '0', '1386139726');
INSERT INTO `wplt_action` VALUES ('5', 'add_document_topic', '发表讨论', '积分+5，每天上限10次', 'table:member|field:score|condition:uid={$self}|rule:score+5|cycle:24|max:10', '', '2', '0', '1383285551');
INSERT INTO `wplt_action` VALUES ('6', 'update_config', '更新配置', '新增或修改或删除配置', '', '', '1', '1', '1383294988');
INSERT INTO `wplt_action` VALUES ('7', 'update_model', '更新模型', '新增或修改模型', '', '', '1', '1', '1383295057');
INSERT INTO `wplt_action` VALUES ('8', 'update_attribute', '更新属性', '新增或更新或删除属性', '', '', '1', '1', '1383295963');
INSERT INTO `wplt_action` VALUES ('9', 'update_channel', '更新导航', '新增或修改或删除导航', '', '', '1', '1', '1383296301');
INSERT INTO `wplt_action` VALUES ('10', 'update_menu', '更新菜单', '新增或修改或删除菜单', '', '', '1', '1', '1383296392');
INSERT INTO `wplt_action` VALUES ('11', 'update_category', '更新分类', '新增或修改或删除分类', '', '', '1', '1', '1383296765');
INSERT INTO `wplt_action` VALUES ('12', 'admin_login', '登录后台', '管理员登录后台', '', '[user|get_nickname]在[time|time_format]登录了后台', '2', '1', '1393685618');

-- -----------------------------
-- Table structure for `wplt_action_log`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_action_log`;
;

-- -----------------------------
-- Records of `wplt_action_log`
-- -----------------------------
INSERT INTO `wplt_action_log` VALUES ('1447', '12', '1', '0', 'member', '1', 'alkaid在2015-05-01 21:16登录了后台', '1', '1430486194');
INSERT INTO `wplt_action_log` VALUES ('1448', '7', '1', '0', 'model', '153', '操作url：/wengine/web/wengine/index.php?s=/Admin/Model/update.html', '1', '1430637565');
INSERT INTO `wplt_action_log` VALUES ('1449', '12', '1', '0', 'member', '1', 'alkaid在2015-05-03 15:54登录了后台', '1', '1430639655');
INSERT INTO `wplt_action_log` VALUES ('1450', '7', '1', '0', 'model', '154', '操作url：/wengine/web/wengine/index.php?s=/Admin/Model/update.html', '1', '1430660576');
INSERT INTO `wplt_action_log` VALUES ('1451', '8', '1', '0', 'attribute', '1343', '操作url：/wengine/web/wengine/index.php?s=/Admin/Attribute/update.html', '1', '1430660958');
INSERT INTO `wplt_action_log` VALUES ('1452', '8', '1', '0', 'attribute', '1344', '操作url：/wengine/web/wengine/index.php?s=/Admin/Attribute/update.html', '1', '1430661109');
INSERT INTO `wplt_action_log` VALUES ('1453', '8', '1', '0', 'attribute', '1345', '操作url：/wengine/web/wengine/index.php?s=/Admin/Attribute/update.html', '1', '1430661696');
INSERT INTO `wplt_action_log` VALUES ('1454', '8', '1', '0', 'attribute', '1346', '操作url：/wengine/web/wengine/index.php?s=/Admin/Attribute/update.html', '1', '1430661758');
INSERT INTO `wplt_action_log` VALUES ('1455', '8', '1', '0', 'attribute', '1347', '操作url：/wengine/web/wengine/index.php?s=/Admin/Attribute/update.html', '1', '1430661836');
INSERT INTO `wplt_action_log` VALUES ('1456', '8', '1', '0', 'attribute', '1347', '操作url：/wengine/web/wengine/index.php?s=/Admin/Attribute/update.html', '1', '1430661862');
INSERT INTO `wplt_action_log` VALUES ('1457', '8', '1', '0', 'attribute', '1348', '操作url：/wengine/web/wengine/index.php?s=/Admin/Attribute/update.html', '1', '1430661987');
INSERT INTO `wplt_action_log` VALUES ('1458', '8', '1', '0', 'attribute', '1349', '操作url：/wengine/web/wengine/index.php?s=/Admin/Attribute/update.html', '1', '1430662095');
INSERT INTO `wplt_action_log` VALUES ('1459', '8', '1', '0', 'attribute', '1348', '操作url：/wengine/web/wengine/index.php?s=/Admin/Attribute/update.html', '1', '1430662128');
INSERT INTO `wplt_action_log` VALUES ('1460', '8', '1', '0', 'attribute', '1346', '操作url：/wengine/web/wengine/index.php?s=/Admin/Attribute/update.html', '1', '1430662138');
INSERT INTO `wplt_action_log` VALUES ('1461', '8', '1', '0', 'attribute', '1345', '操作url：/wengine/web/wengine/index.php?s=/Admin/Attribute/update.html', '1', '1430662147');
INSERT INTO `wplt_action_log` VALUES ('1462', '8', '1', '0', 'attribute', '1346', '操作url：/wengine/web/wengine/index.php?s=/Admin/Attribute/remove/id/1346.html', '1', '1430663042');
INSERT INTO `wplt_action_log` VALUES ('1463', '8', '1', '0', 'attribute', '1349', '操作url：/wengine/web/wengine/index.php?s=/Admin/Attribute/remove/id/1349.html', '1', '1430663054');
INSERT INTO `wplt_action_log` VALUES ('1464', '8', '1', '0', 'attribute', '1345', '操作url：/wengine/web/wengine/index.php?s=/Admin/Attribute/update.html', '1', '1430663087');
INSERT INTO `wplt_action_log` VALUES ('1465', '8', '1', '0', 'attribute', '1348', '操作url：/wengine/web/wengine/index.php?s=/Admin/Attribute/update.html', '1', '1430663102');
INSERT INTO `wplt_action_log` VALUES ('1466', '8', '1', '0', 'attribute', '1343', '操作url：/wengine/web/wengine/index.php?s=/Admin/Attribute/update.html', '1', '1430664600');
INSERT INTO `wplt_action_log` VALUES ('1467', '8', '1', '0', 'attribute', '1350', '操作url：/wengine/web/wengine/index.php?s=/Admin/Attribute/update.html', '1', '1430671232');

-- -----------------------------
-- Table structure for `wplt_addon_category`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_addon_category`;
;

-- -----------------------------
-- Records of `wplt_addon_category`
-- -----------------------------
INSERT INTO `wplt_addon_category` VALUES ('1', '74', '教育行业', '2');
INSERT INTO `wplt_addon_category` VALUES ('2', '74', '基础插件', '0');
INSERT INTO `wplt_addon_category` VALUES ('3', '74', '互动类', '1');
INSERT INTO `wplt_addon_category` VALUES ('4', '74', '高级插件', '3');

-- -----------------------------
-- Table structure for `wplt_addons`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_addons`;
;

-- -----------------------------
-- Records of `wplt_addons`
-- -----------------------------
INSERT INTO `wplt_addons` VALUES ('15', 'EditorForAdmin', '后台编辑器', '用于增强整站长文本的输入和显示', '1', '{\"editor_type\":\"2\",\"editor_wysiwyg\":\"2\",\"editor_height\":\"500px\",\"editor_resize_type\":\"1\"}', 'thinkphp', '0.1', '1383126253', '0', '0', '');
INSERT INTO `wplt_addons` VALUES ('2', 'SiteStat', '站点统计信息', '统计站点的基础信息', '0', '{\"title\":\"\\u7cfb\\u7edf\\u4fe1\\u606f\",\"width\":\"2\",\"display\":\"1\"}', 'thinkphp', '0.1', '1379512015', '0', '0', '');
INSERT INTO `wplt_addons` VALUES ('22', 'DevTeam', '开发团队信息', '开发团队成员信息', '0', '{\"title\":\"OneThink\\u5f00\\u53d1\\u56e2\\u961f\",\"width\":\"2\",\"display\":\"1\"}', 'thinkphp', '0.1', '1391687096', '0', '0', '');
INSERT INTO `wplt_addons` VALUES ('4', 'SystemInfo', '系统环境信息', '用于显示一些服务器的信息', '1', '{\"title\":\"\\u7cfb\\u7edf\\u4fe1\\u606f\",\"width\":\"2\",\"display\":\"1\"}', 'thinkphp', '0.1', '1379512036', '0', '0', '');
INSERT INTO `wplt_addons` VALUES ('5', 'Editor', '前台编辑器', '用于增强整站长文本的输入和显示', '1', '{\"editor_type\":\"2\",\"editor_wysiwyg\":\"1\",\"editor_height\":\"300px\",\"editor_resize_type\":\"1\"}', 'thinkphp', '0.1', '1379830910', '0', '0', '');
INSERT INTO `wplt_addons` VALUES ('6', 'Attachment', '附件', '用于文档模型上传附件', '0', 'null', 'thinkphp', '0.1', '1379842319', '1', '0', '');
INSERT INTO `wplt_addons` VALUES ('9', 'SocialComment', '通用社交化评论', '集成了各种社交化评论插件，轻松集成到系统中。', '1', '{\"comment_type\":\"1\",\"comment_uid_youyan\":\"1669260\",\"comment_short_name_duoshuo\":\"\",\"comment_form_pos_duoshuo\":\"buttom\",\"comment_data_list_duoshuo\":\"10\",\"comment_data_order_duoshuo\":\"asc\"}', 'thinkphp', '0.1', '1380273962', '0', '0', '');
INSERT INTO `wplt_addons` VALUES ('16', 'Vote', '投票', '支持文本和图片两类的投票功能', '1', '{\"random\":\"1\"}', '地下凡星', '0.1', '1388811198', '1', '1', '3');
INSERT INTO `wplt_addons` VALUES ('17', 'Chat', '智能聊天', '通过网络上支持的智能API，实现：天气、翻译、藏头诗、笑话、歌词、计算、域名信息/备案/收录查询、IP查询、手机号码归属、人工智能聊天等功能', '1', '{\"tuling_key\":\"d812d695a5e0df258df952698faca6cc\",\"tuling_url\":\"http:\\/\\/www.tuling123.com\\/openapi\\/api\",\"simsim_key\":\"41250a68-3cb5-43c8-9aa2-d7b3caf519b1\",\"simsim_url\":\"http:\\/\\/sandbox.api.simsimi.com\\/request.p\",\"i9_url\":\"http:\\/\\/www.xiaojo.com\\/bot\\/chata.php\",\"rand_reply\":\"\\u6211\\u4eca\\u5929\\u7d2f\\u4e86\\uff0c\\u660e\\u5929\\u518d\\u966a\\u4f60\\u804a\\u5929\\u5427\\r\\n\\u54c8\\u54c8~~\\r\\n\\u4f60\\u8bdd\\u597d\\u591a\\u554a\\uff0c\\u4e0d\\u8ddf\\u4f60\\u804a\\u4e86\\r\\n\\u867d\\u7136\\u4e0d\\u61c2\\uff0c\\u4f46\\u89c9\\u5f97\\u4f60\\u8bf4\\u5f97\\u5f88\\u5bf9\"}', '地下凡星', '0.1', '1389454867', '0', '1', '2');
INSERT INTO `wplt_addons` VALUES ('18', 'Wecome', '欢迎语', '用户关注公众号时发送的欢迎信息，支持文本，图片，图文的信息', '1', '{\"type\":\"1\",\"title\":\"\",\"description\":\"欢迎关注，请<a href=\"[follow]\">绑定帐号</a>后体验更多功能\",\"pic_url\":\"\",\"url\":\"\"}', '地下凡星', '0.1', '1389620372', '0', '1', '2');
INSERT INTO `wplt_addons` VALUES ('19', 'UserCenter', '微信用户中心', '实现3G首页、微信登录，微信用户绑定，微信用户信息初始化等基本功能', '1', '{\"random\":\"1\"}', '地下凡星', '0.1', '1390660425', '1', '1', '2');
INSERT INTO `wplt_addons` VALUES ('65', 'HelloWorld', '微信入门案例', '这是一个简单的入门案例', '1', 'null', '凡星', '0.1', '1404133803', '0', '1', '');
INSERT INTO `wplt_addons` VALUES ('24', 'BaiduStatistics', '百度统计', '这是百度统计功能，只要开启插件并设置统计代码，就可以使用统计功能了', '1', '{\"code\":\"\"}', 'weiphp.cn', '1.0', '1393116011', '0', '0', '');
INSERT INTO `wplt_addons` VALUES ('56', 'CustomMenu', '自定义菜单', '自定义菜单能够帮助公众号丰富界面，让用户更好更快地理解公众号的功能', '1', 'null', '凡星', '0.1', '1398264735', '1', '1', '2');
INSERT INTO `wplt_addons` VALUES ('31', 'Robot', '机器人聊天', '实现的效果如下
用户输入：“机器人学习时间”
微信回复：“你的问题是？”
用户输入：“这个世界上谁最美？”
微信回复： “你的答案是？”
用户回复： “当然是你啦！”
微信回复：“我明白啊，不信你可以问问我”
用户回复：“这个世界上谁最美？”
微信回复：“当然是你啦！”', '1', 'null', '地下凡星', '0.1', '1393987090', '0', '1', '4');
INSERT INTO `wplt_addons` VALUES ('36', 'Extensions', '融合第三方', '第三方功能扩展', '1', 'null', '地下凡星', '0.1', '1394268715', '1', '1', '4');
INSERT INTO `wplt_addons` VALUES ('32', 'Suggestions', '建议意见', '用户在微信里输入“建议意见”四个字时，返回一个图文信息，引导用户进入填写建议意见的3G页面，用户填写信息提交后显示感谢之意并提示关闭页面返回微信
管理员可以在管理中心里看到用户反馈的内容列表，并对内容进行编辑，删除操作', '1', '{\"need_truename\":\"0\",\"need_mobile\":\"0\"}', '地下凡星', '0.1', '1394264272', '1', '1', '3');
INSERT INTO `wplt_addons` VALUES ('38', 'Card', '会员卡', '这是一个临时描述', '1', 'null', '无名', '0.1', '1395235360', '0', '1', '2');
INSERT INTO `wplt_addons` VALUES ('39', 'WeiSite', '微官网', '微官网', '1', 'null', '凡星', '0.1', '1395326578', '0', '1', '4');
INSERT INTO `wplt_addons` VALUES ('42', 'Leaflets', '微信宣传页', '微信公众号二维码推广页面，用作推广或者制作广告易拉宝，可以发布到QQ群微博博客论坛等等...', '1', '{\"random\":\"1\"}', '凡星', '0.1', '1396056935', '0', '1', '2');
INSERT INTO `wplt_addons` VALUES ('48', 'CustomReply', '自定义回复', '这是一个临时描述', '1', 'null', '凡星', '0.1', '1396578089', '1', '1', '2');
INSERT INTO `wplt_addons` VALUES ('49', 'Forms', '通用表单', '管理员可以轻松地增加一个表单用于收集用户的信息，如活动报名、调查反馈、预约填单等', '1', 'null', '凡星', '0.1', '1396688995', '1', '1', '4');
INSERT INTO `wplt_addons` VALUES ('50', 'Survey', '微调研', '这是一个临时描述', '1', 'null', '凡星', '0.1', '1396883644', '1', '1', '3');
INSERT INTO `wplt_addons` VALUES ('51', 'Exam', '微考试', '主要功能有试卷管理，题目录入管理，考生信息和考分汇总管理。', '1', 'null', '凡星', '0.1', '1397035112', '1', '1', '1');
INSERT INTO `wplt_addons` VALUES ('53', 'Test', '微测试', '主要功能有问卷管理，题目录入管理，用户信息和得分汇总管理。', '1', 'null', '凡星', '0.1', '1397142151', '1', '1', '1');
INSERT INTO `wplt_addons` VALUES ('58', 'Cascade', '级联菜单', '支持无级级联菜单，用于地区选择、多层分类选择等场景。菜单的数据来源支持查询数据库和直接用户按格式输入两种方式', '1', 'null', '凡星', '0.1', '1398694996', '0', '0', '');
INSERT INTO `wplt_addons` VALUES ('59', 'Coupon', '优惠券', '配合粉丝圈子，打造粉丝互动的运营激励基础', '1', 'null', '凡星', '0.1', '1399259217', '1', '1', '3');
INSERT INTO `wplt_addons` VALUES ('60', 'Scratch', '刮刮卡', '刮刮卡', '1', 'null', '凡星', '0.1', '1399273157', '1', '1', '3');
INSERT INTO `wplt_addons` VALUES ('64', 'Tongji', '运营统计', '统计每个插件使用情况', '1', 'null', '凡星', '0.1', '1401371025', '1', '1', '2');
INSERT INTO `wplt_addons` VALUES ('83', 'YouaskService', '你问我答客服系统', '一个支持你问我答,关键词制定客服的客服系统', '1', 'null', '陌路生人', '0.1', '1403947448', '1', '1', '1');

-- -----------------------------
-- Table structure for `wplt_attachment`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_attachment`;
;


-- -----------------------------
-- Table structure for `wplt_attribute`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_attribute`;
;

-- -----------------------------
-- Records of `wplt_attribute`
-- -----------------------------
INSERT INTO `wplt_attribute` VALUES ('1338', 'status', '数据状态', 'tinyint(4) NOT NULL ', 'radio', '0', '', '0', '-1:删除
0:禁用
1:正常
2:待审核
3:草稿', '152', '0', '1', '1384508496', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('1337', 'update_time', '更新时间', 'int(10) unsigned NOT NULL ', 'datetime', '0', '', '0', '', '152', '0', '1', '1384508277', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('1336', 'create_time', '创建时间', 'int(10) unsigned NOT NULL ', 'datetime', '0', '', '1', '', '152', '0', '1', '1383895903', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('1335', 'level', '优先级', 'int(10) NOT NULL ', 'num', '0', '越高排序越靠前', '1', '', '152', '0', '1', '1383895894', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('1334', 'extend', '扩展统计字段', 'int(10) unsigned NOT NULL ', 'num', '0', '根据需求自行使用', '0', '', '152', '0', '1', '1384508264', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('1332', 'view', '浏览量', 'int(10) unsigned NOT NULL ', 'num', '0', '', '1', '', '152', '0', '1', '1383895835', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('1333', 'comment', '评论数', 'int(10) unsigned NOT NULL ', 'num', '0', '', '1', '', '152', '0', '1', '1383895846', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('1331', 'attach', '附件数量', 'tinyint(3) unsigned NOT NULL ', 'num', '0', '', '0', '', '152', '0', '1', '1387260355', '1383891233', '', '0', '', 'regex', '', '0', 'function');
INSERT INTO `wplt_attribute` VALUES ('1330', 'deadline', '截至时间', 'int(10) unsigned NOT NULL ', 'datetime', '0', '0-永久有效', '1', '', '152', '0', '1', '1387163248', '1383891233', '', '0', '', 'regex', '', '0', 'function');
INSERT INTO `wplt_attribute` VALUES ('1329', 'display', '可见性', 'tinyint(3) unsigned NOT NULL ', 'radio', '1', '', '1', '0:不可见
1:所有人可见', '152', '0', '1', '1386662271', '1383891233', '', '0', '', 'regex', '', '0', 'function');
INSERT INTO `wplt_attribute` VALUES ('1328', 'cover_id', '封面', 'int(10) unsigned NOT NULL ', 'picture', '0', '0-无封面，大于0-封面图片ID，需要函数处理', '1', '', '152', '0', '1', '1384147827', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('1327', 'link_id', '外链', 'int(10) unsigned NOT NULL ', 'num', '0', '0-非外链，大于0-外链ID,需要函数进行链接与编号的转换', '1', '', '152', '0', '1', '1383895757', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('1323', 'pid', '所属ID', 'int(10) unsigned NOT NULL ', 'num', '0', '父文档编号', '0', '', '152', '0', '1', '1384508543', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('1324', 'model_id', '内容模型ID', 'tinyint(3) unsigned NOT NULL ', 'num', '0', '该文档所对应的模型', '0', '', '152', '0', '1', '1384508350', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('1325', 'type', '内容类型', 'tinyint(3) unsigned NOT NULL ', 'select', '2', '', '1', '1:目录
2:主题
3:段落', '152', '0', '1', '1384511157', '1383891233', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('1326', 'position', '推荐位', 'smallint(5) unsigned NOT NULL ', 'checkbox', '0', '多个推荐则将其推荐值相加', '1', '1:列表推荐
2:频道页推荐
4:首页推荐', '152', '0', '1', '1383895640', '1383891233', '', '0', '', '', '', '0', '');
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
INSERT INTO `wplt_attribute` VALUES ('42', 'type', '选择类型', 'char(10) NOT NULL', 'radio', '0', '', '1', '0:单选
1:多选', '6', '1', '1', '1388936429', '1388931487', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('43', 'start_date', '开始日期', 'int(10) NOT NULL', 'datetime', '', '', '1', '', '6', '0', '1', '1388931734', '1388931734', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('44', 'end_date', '结束日期', 'int(10) NOT NULL', 'datetime', '', '', '1', '', '6', '0', '1', '1388931769', '1388931769', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('45', 'is_img', '文字/图片投票', 'tinyint(2) NOT NULL', 'radio', '0', '', '0', '0:文字投票
1:图片投票', '6', '1', '1', '1389081985', '1388931941', '', '3', '', 'regex', '', '3', 'function');
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
INSERT INTO `wplt_attribute` VALUES ('90', 'type', '公众号类型', 'char(10) NOT NULL', 'radio', '0', '', '1', '0:普通订阅号
1:认证订阅号/普通服务号
2:认证服务号', '11', '0', '1', '1416904702', '1393718575', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('91', 'appid', 'AppID', 'varchar(255) NOT NULL', 'string', '', '应用ID', '1', '', '11', '0', '1', '1416904750', '1393718735', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('92', 'secret', 'AppSecret', 'varchar(255) NOT NULL', 'string', '', '应用密钥', '1', '', '11', '0', '1', '1416904771', '1393718806', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('93', 'group_id', '等级', 'int(10) unsigned NOT NULL ', 'select', '0', '', '0', '', '11', '0', '1', '1393753499', '1393724468', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('94', 'title', '等级名', 'varchar(50) NOT NULL', 'string', '', '', '1', '', '13', '0', '1', '1393724854', '1393724854', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('95', 'addon_status', '插件权限', 'text NOT NULL', 'checkbox', '', '', '1', '1:好人
2:环境', '13', '0', '1', '1393731903', '1393725072', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('96', 'version', '版本号', 'int(10) unsigned NOT NULL ', 'num', '', '', '1', '', '14', '1', '1', '1393770457', '1393770457', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('97', 'title', '升级包名', 'varchar(50) NOT NULL', 'string', '', '', '1', '', '14', '1', '1', '1393770499', '1393770499', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('98', 'description', '描述', 'text NOT NULL', 'textarea', '', '', '1', '', '14', '0', '1', '1393770546', '1393770546', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('99', 'create_date', '创建时间', 'int(10) NOT NULL', 'datetime', '', '', '1', '', '14', '0', '1', '1393770591', '1393770591', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('100', 'download_count', '下载统计', 'int(10) unsigned NOT NULL ', 'num', '0', '', '0', '', '14', '0', '1', '1393770659', '1393770659', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('101', 'package', '升级包地址', 'varchar(255) NOT NULL', 'textarea', '', '', '1', '', '14', '1', '1', '1393812247', '1393770727', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('166', 'keyword', '关键词', 'varchar(255) NOT NULL', 'string', '', '多个关键词请用空格格开', '1', '', '22', '1', '1', '1393912492', '1393911842', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('165', 'keyword_filter', '关键词过滤', 'tinyint(2) NOT NULL', 'bool', '0', '如设置电影为触发词,用户输入 电影 美国派 时，如果启用过滤只将美国派这个词发送到的你的接口，如果不过滤 就是整个 电影 美国派全部发送到的接口', '1', '0:不过滤
1:过滤', '22', '0', '1', '1394268410', '1393912057', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('161', 'api_token', 'Token', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '22', '0', '1', '1393922455', '1393912408', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('162', 'cTime', '创建时间', 'int(10) NOT NULL', 'datetime', '', '', '0', '', '22', '0', '1', '1393913608', '1393913608', '', '3', '', 'regex', 'time', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('108', 'keyword_length', '关键词长度', 'int(10) unsigned NULL ', 'num', '0', '', '1', '', '5', '0', '1', '1407251147', '1393918566', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('109', 'keyword_type', '匹配类型', 'tinyint(2) NULL ', 'select', '0', '', '1', '0:完全匹配
1:左边匹配
2:右边匹配
3:模糊匹配', '5', '0', '1', '1393979962', '1393919686', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('110', 'extra_text', '文本扩展', 'text NULL ', 'textarea', '', '', '0', '', '5', '0', '1', '1407251248', '1393919736', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('111', 'extra_int', '数字扩展', 'int(10) NULL ', 'num', '', '', '0', '', '5', '0', '1', '1407251240', '1393919798', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('163', 'api_url', '第三方URL', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '22', '0', '1', '1393912354', '1393912354', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('164', 'output_format', '数据输出格式', 'tinyint(1) NULL', 'select', '0', '', '1', '0:标准微信xml
1:json格式', '22', '0', '1', '1394268422', '1393912288', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('113', 'title', '标题', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '16', '1', '1', '1394068622', '1394033402', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('114', 'uid', '用户ID', 'int(10) NULL ', 'num', '0', '', '0', '', '16', '0', '1', '1394087760', '1394033447', '', '3', '', 'regex', 'get_mid', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('115', 'content', '内容', 'text NULL ', 'editor', '', '', '1', '', '16', '1', '1', '1394033484', '1394033484', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('116', 'cTime', '发布时间', 'int(10) NULL ', 'datetime', '', '', '0', '', '16', '0', '1', '1394033571', '1394033571', '', '3', '', 'regex', 'time', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('117', 'attach', '附件', 'varchar(255) NULL ', 'file', '', '', '1', '', '16', '0', '1', '1394033674', '1394033674', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('118', 'is_top', '置顶', 'int(10) NULL', 'num', '0', '0表示不置顶，否则其它值表示置顶且值是置顶的时间', '0', '0:不置顶
1:置顶', '16', '0', '1', '1394068971', '1394068787', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('119', 'cid', '分类', 'tinyint(4) NULL ', 'select', '', '', '1', '1:安装使用
2:BUG反馈
3:发展建议
4:微信需求
5:微信开发
6:微信运营
7:站内公告', '16', '1', '1', '1394069964', '1394069964', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('120', 'view_count', '浏览数', 'int(11) unsigned NULL ', 'num', '0', '', '0', '', '16', '0', '1', '1394072168', '1394072168', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('121', 'reply_count', '回复数', 'int(11) unsigned NULL ', 'num', '0', '', '0', '', '16', '0', '1', '1394072217', '1394072217', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('122', 'title', '应用标题', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '17', '1', '1', '1402758132', '1394033402', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('123', 'uid', '用户ID', 'int(10) NULL ', 'num', '0', '', '0', '', '17', '0', '1', '1394087733', '1394033447', '', '3', '', 'regex', 'get_mid', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('124', 'content', '应用详细介绍', 'text NULL ', 'editor', '', '', '1', '', '17', '1', '1', '1402758118', '1394033484', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('125', 'cTime', '发布时间', 'int(10) NULL ', 'datetime', '', '', '0', '', '17', '0', '1', '1394033571', '1394033571', '', '3', '', 'regex', 'time', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('126', 'attach', '应用压缩包', 'varchar(255) NULL ', 'file', '', '需要上传zip文件', '1', '', '17', '0', '1', '1402758100', '1394033674', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('127', 'is_top', '置顶', 'int(10) NULL ', 'bool', '0', '0表示不置顶，否则其它值表示置顶且值是置顶的时间', '1', '0:不置顶
1:置顶', '17', '0', '1', '1402800009', '1394068787', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('128', 'cid', '分类', 'tinyint(4) NULL ', 'select', '', '', '0', '1:基础模块
2:行业模块
3:会议活动
4:娱乐模块
5:其它模块', '17', '0', '1', '1402758069', '1394069964', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('129', 'view_count', '浏览数', 'int(11) unsigned NULL ', 'num', '0', '', '0', '', '17', '0', '1', '1394072168', '1394072168', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('135', 'download_count', '下载数', 'int(10) unsigned NULL ', 'num', '0', '', '0', '', '17', '0', '1', '1394085763', '1394085763', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('132', 'img_2', '应用截图2', 'int(10) unsigned NULL ', 'picture', '', '', '1', '', '17', '0', '1', '1402758035', '1394084714', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('131', 'img_1', '应用截图1', 'int(10) unsigned NULL ', 'picture', '', '', '1', '', '17', '0', '1', '1402758046', '1394084635', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('133', 'img_3', '应用截图3', 'int(10) unsigned NULL ', 'picture', '', '', '1', '', '17', '0', '1', '1402758021', '1394084757', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('134', 'img_4', '应用截图4', 'int(10) unsigned NULL ', 'picture', '', '', '1', '', '17', '0', '1', '1402758011', '1394084797', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('136', 'cTime', '创建时间', 'int(10) NOT NULL', 'datetime', '', '', '0', '', '18', '0', '1', '1393234678', '1393234678', '', '3', '', 'regex', 'time', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('137', 'content', '内容', 'text NOT NULL', 'textarea', '', '', '1', '', '18', '1', '1', '1393234583', '1393234583', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('138', 'uid', '用户ID', 'int(10) NULL ', 'num', '0', '', '0', '', '18', '0', '1', '1393234534', '1393234534', '', '3', '', 'regex', 'get_mid', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('160', 'keyword_type', '关键词类型', 'tinyint(2) NULL', 'select', '0', '', '1', '0:完全匹配
1:左边匹配
2:右边匹配
3:模糊匹配', '22', '0', '1', '1394268247', '1393921586', '', '3', '', 'regex', '', '3', 'function');
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
INSERT INTO `wplt_attribute` VALUES ('200', 'is_show', '显示', 'tinyint(2) NOT NULL', 'bool', '1', '', '1', '0: 不显示
1: 显示', '33', '0', '1', '1395989709', '1395989709', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('201', 'token', 'Token', 'varchar(100) NULL ', 'string', '', '', '0', '', '33', '0', '1', '1395989760', '1395989760', '', '3', '', 'regex', 'get_token', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('202', 'keyword', '关键词', 'varchar(100) NOT NULL', 'string', '', '', '1', '', '34', '1', '1', '1396061575', '1396061575', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('203', 'keyword_type', '关键词类型', 'tinyint(2) NULL', 'select', '', '', '1', '0:完全匹配
1:左边匹配
2:右边匹配
3:模糊匹配', '34', '0', '1', '1396061814', '1396061765', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('204', 'title', '标题', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '34', '1', '1', '1396061877', '1396061859', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('205', 'intro', '简介', 'text NULL', 'textarea', '', '', '1', '', '34', '0', '1', '1396061947', '1396061947', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('206', 'cate_id', '所属类别', 'int(10) unsigned NULL ', 'select', '0', '要先在微官网分类里配置好分类才可选择', '1', '0:请选择分类', '34', '0', '1', '1396078914', '1396062003', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('207', 'cover', '封面图片', 'int(10) unsigned NULL ', 'picture', '', '', '1', '', '34', '0', '1', '1396062093', '1396062093', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('208', 'content', '内容', 'text NOT NULL', 'editor', '', '', '1', '', '34', '0', '1', '1396062146', '1396062146', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('209', 'cTime', '发布时间', 'int(10) NULL', 'datetime', '', '', '0', '', '34', '0', '1', '1396075102', '1396075102', '', '3', '', 'regex', 'time', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('210', 'title', '标题', 'varchar(255) NULL', 'string', '', '可为空', '1', '', '35', '0', '1', '1396098316', '1396098316', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('211', 'img', '图片', 'int(10) unsigned NOT NULL ', 'picture', '', '', '1', '', '35', '1', '1', '1396098349', '1396098349', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('212', 'url', '链接地址', 'varchar(255) NULL', 'string', '', '', '1', '', '35', '0', '1', '1396098380', '1396098380', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('213', 'is_show', '是否显示', 'tinyint(2) NULL', 'bool', '1', '', '1', '0:不显示
1:显示', '35', '0', '1', '1396098464', '1396098464', '', '3', '', 'regex', '', '3', 'function');
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
INSERT INTO `wplt_attribute` VALUES ('428', 'keyword_type', '关键词类型', 'tinyint(2) NOT NULL', 'select', '0', '', '1', '0:完全匹配
1:左边匹配
2:右边匹配
3:模糊匹配', '62', '0', '1', '1396623302', '1396578249', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('429', 'content', '回复内容', 'text NOT NULL', 'textarea', '', '请不要多于1000字否则无法发送。支持加超链接，但URL必须带http://', '1', '', '62', '0', '1', '1396607362', '1396578597', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('430', 'keyword', '关键词', 'varchar(100) NOT NULL', 'string', '', '', '1', '', '64', '1', '1', '1396061575', '1396061575', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('431', 'keyword_type', '关键词类型', 'tinyint(2) NULL', 'select', '', '', '1', '0:完全匹配
1:左边匹配
2:右边匹配
3:模糊匹配', '64', '0', '1', '1396061814', '1396061765', '', '3', '', 'regex', '', '3', 'function');
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
INSERT INTO `wplt_attribute` VALUES ('445', 'keyword_type', '关键词类型', 'tinyint(2) NOT NULL', 'select', '0', '', '1', '0:完全匹配
1:左边匹配
2:右边匹配
3:模糊匹配', '65', '0', '1', '1396602706', '1396602548', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('446', 'mult_ids', '多图文ID', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '65', '0', '1', '1396602601', '1396602578', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('447', 'token', 'Token', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '65', '0', '1', '1396602821', '1396602821', '', '3', '', 'regex', 'get_token', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('448', 'token', 'Token', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '64', '0', '1', '1396602871', '1396602859', '', '3', '', 'regex', 'get_token', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('449', 'token', 'Token', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '62', '0', '1', '1396603007', '1396603007', '', '3', '', 'regex', 'get_token', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('481', 'finish_tip', '用户提交后提示内容', 'text NOT NULL', 'textarea', '', '为空默认为：提交成功，谢谢参与', '1', '', '69', '0', '1', '1396676366', '1396673689', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('478', 'cTime', '发布时间', 'int(10) unsigned NOT NULL ', 'datetime', '', '', '0', '', '69', '0', '1', '1396624612', '1396075102', '', '3', '', 'regex', 'time', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('479', 'token', 'Token', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '69', '0', '1', '1396602871', '1396602859', '', '3', '', 'regex', 'get_token', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('480', 'password', '表单密码', 'varchar(255) NOT NULL', 'string', '', '如要用户输入密码才能进入表单，则填写此项。否则留空，用户可直接进入表单', '0', '', '69', '0', '1', '1396871497', '1396672643', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('472', 'keyword_type', '关键词类型', 'tinyint(2) NOT NULL', 'select', '0', '', '1', '0:完全匹配
1:左边匹配
2:右边匹配
3:模糊匹配', '69', '1', '1', '1396624426', '1396061765', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('473', 'title', '标题', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '69', '1', '1', '1396624461', '1396061859', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('474', 'intro', '封面简介', 'text NOT NULL', 'textarea', '', '', '1', '', '69', '0', '1', '1396624505', '1396061947', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('475', 'mTime', '修改时间', 'int(10) NOT NULL', 'datetime', '', '', '0', '', '69', '0', '1', '1396624664', '1396624664', '', '3', '', 'regex', 'time', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('476', 'cover', '封面图片', 'int(10) unsigned NOT NULL ', 'picture', '', '', '1', '', '69', '0', '1', '1396624534', '1396062093', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('471', 'keyword', '关键词', 'varchar(100) NOT NULL', 'string', '', '', '1', '', '69', '1', '1', '1396866048', '1396061575', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('493', 'type', '字段类型', 'char(50) NOT NULL', 'select', 'string', '用于表单中的展示方式', '1', 'string:单行输入
textarea:多行输入
radio:单选
checkbox:多选
select:下拉选择
datetime:时间
picture:上传图片
cascade:级联', '70', '1', '1', '1398742035', '1396683600', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('492', 'title', '字段标题', 'varchar(255) NOT NULL', 'string', '', '请输入字段标题，用于表单显示', '1', '', '70', '1', '1', '1396676830', '1396676830', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('486', 'mTime', '修改时间', 'int(10) NOT NULL', 'datetime', '', '', '0', '', '70', '0', '1', '1396624664', '1396624664', '', '3', '', 'regex', 'time', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('511', 'keyword', '关键词', 'varchar(100) NOT NULL', 'string', '', '', '1', '', '73', '1', '1', '1396624337', '1396061575', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('494', 'extra', '参数', 'text NOT NULL', 'textarea', '', '字段类型为单选、多选、下拉选择和级联选择时的定义数据，其它字段类型为空', '1', '', '70', '0', '1', '1396835020', '1396685105', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('495', 'value', '默认值', 'varchar(255) NOT NULL', 'string', '', '字段的默认值', '1', '', '70', '0', '1', '1396685291', '1396685291', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('490', 'token', 'Token', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '70', '0', '1', '1396602871', '1396602859', '', '3', '', 'regex', 'get_token', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('491', 'name', '字段名', 'varchar(100) NOT NULL', 'string', '', '请输入字段名 英文字母开头，长度不超过30', '1', '', '70', '1', '1', '1396676840', '1396676792', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('496', 'remark', '字段备注', 'varchar(255) NOT NULL', 'string', '', '用于表单中的提示', '1', '', '70', '0', '1', '1396685482', '1396685482', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('497', 'is_must', '是否必填', 'tinyint(2) NOT NULL', 'bool', '', '用于自动验证', '1', '0:否
1:是', '70', '0', '1', '1396685579', '1396685579', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('498', 'validate_rule', '正则验证', 'varchar(255) NOT NULL', 'string', '', '为空表示不作验证', '1', '', '70', '0', '1', '1396685776', '1396685776', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('499', 'sort', '排序号', 'int(10) unsigned NOT NULL ', 'num', '0', '值越小越靠前', '1', '', '70', '0', '1', '1396685825', '1396685825', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('500', 'error_info', '出错提示', 'varchar(255) NOT NULL', 'string', '', '验证不通过时的提示语', '1', '', '70', '0', '1', '1396685920', '1396685920', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('501', 'uid', '用户ID', 'int(10) NULL ', 'num', '', '', '0', '', '71', '0', '1', '1396688042', '1396688042', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('502', 'openid', 'OpenId', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '71', '0', '1', '1396688187', '1396688187', '', '3', '', 'regex', 'get_openid', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('503', 'forms_id', '表单ID', 'int(10) unsigned NOT NULL ', 'num', '', '', '4', '', '71', '0', '1', '1396710064', '1396688308', '', '3', '', 'regex', '', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('504', 'value', '表单值', 'text NOT NULL', 'textarea', '', '', '0', '', '71', '0', '1', '1396688355', '1396688355', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('505', 'cTime', '增加时间', 'int(10) NOT NULL', 'datetime', '', '', '0', '', '71', '0', '1', '1396688434', '1396688434', '', '3', '', 'regex', 'time', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('506', 'can_edit', '是否允许编辑', 'tinyint(2) NOT NULL', 'bool', '0', '用户提交表单是否可以再编辑', '1', '0:不允许
1:允许', '69', '0', '1', '1396688624', '1396688624', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('507', 'forms_id', '表单ID', 'int(10) unsigned NOT NULL ', 'num', '', '', '4', '', '70', '0', '1', '1396710040', '1396690613', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('508', 'token', 'Token', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '71', '0', '1', '1396690911', '1396690911', '', '3', '', 'regex', 'get_token', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('509', 'is_show', '是否显示', 'tinyint(2) NOT NULL', 'select', '1', '是否显示在表单中', '1', '1:显示
0:不显示', '70', '0', '1', '1396848437', '1396848437', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('510', 'content', '详细介绍', 'text NOT NULL', 'editor', '', '可不填', '1', '', '69', '0', '1', '1396865295', '1396865295', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('512', 'keyword_type', '关键词类型', 'tinyint(2) NOT NULL', 'select', '0', '', '1', '0:完全匹配
1:左边匹配
2:右边匹配
3:模糊匹配', '73', '1', '1', '1396624426', '1396061765', '', '3', '', 'regex', '', '3', 'function');
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
INSERT INTO `wplt_attribute` VALUES ('533', 'is_must', '是否必填', 'tinyint(2) NOT NULL', 'bool', '0', '', '1', '0:否
1:是', '74', '0', '1', '1396954649', '1396954649', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('532', 'extra', '参数', 'text NOT NULL', 'textarea', '', '类型为单选、多选时的定义数据，格式见上面的提示', '1', '', '74', '0', '1', '1396954558', '1396954558', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('531', 'type', '问题类型', 'char(50) NOT NULL', 'radio', 'radio', '', '1', 'radio:单选题
checkbox:多选题
textarea:简答题', '74', '1', '1', '1396962517', '1396954463', '', '3', '', 'regex', '', '3', 'function');
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
INSERT INTO `wplt_attribute` VALUES ('550', 'keyword_type', '关键词类型', 'tinyint(2) NOT NULL', 'select', '0', '', '0', '0:完全匹配
1:左边匹配
2:右边匹配
3:模糊匹配', '76', '1', '1', '1404310840', '1396061765', '', '3', '', 'regex', '', '3', 'function');
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
INSERT INTO `wplt_attribute` VALUES ('562', 'is_must', '是否必填', 'tinyint(2) NOT NULL', 'bool', '1', '', '0', '0:否
1:是', '77', '0', '1', '1397035513', '1396954649', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('563', 'extra', '参数', 'text NOT NULL', 'textarea', '', '每个选项换一行，每项输入格式如：A:男人', '1', '', '77', '0', '1', '1397036210', '1396954558', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('564', 'type', '题目类型', 'char(50) NOT NULL', 'radio', 'radio', '', '1', 'radio:单选题
checkbox:多选题', '77', '1', '1', '1397036281', '1396954463', '', '3', '', 'regex', '', '3', 'function');
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
INSERT INTO `wplt_attribute` VALUES ('580', 'keyword_type', '关键词类型', 'tinyint(2) NOT NULL', 'select', '0', '', '1', '0:完全匹配
1:左边匹配
2:右边匹配
3:模糊匹配', '79', '1', '1', '1396624426', '1396061765', '', '3', '', 'regex', '', '3', 'function');
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
INSERT INTO `wplt_attribute` VALUES ('594', 'is_must', '是否必填', 'tinyint(2) NOT NULL', 'bool', '1', '', '0', '0:否
1:是', '80', '0', '1', '1397035513', '1396954649', '', '3', '', 'regex', '', '3', 'function');
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
INSERT INTO `wplt_attribute` VALUES ('647', 'is_show', '是否显示', 'tinyint(2) NOT NULL', 'bool', '1', '', '1', '0:不显示
1:显示', '84', '0', '1', '1397532496', '1397529809', '', '3', '', 'regex', '', '3', 'function');
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
INSERT INTO `wplt_attribute` VALUES ('687', 'sex', '性别', 'tinyint(1) unsigned NOT NULL ', 'select', '0', '', '1', '0:保密 
1:男性
2:女性', '89', '0', '1', '1398846138', '1398846138', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('688', 'city', '城市', 'varchar(100) NOT NULL', 'string', '', '', '1', '', '89', '0', '1', '1398846223', '1398846223', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('689', 'province', '省份', 'varchar(100) NOT NULL', 'string', '', '', '1', '', '89', '0', '1', '1398846249', '1398846249', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('690', 'country', '国家', 'varchar(100) NOT NULL', 'string', '', '', '1', '', '89', '0', '1', '1398846270', '1398846270', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('691', 'language', '语言', 'varchar(50) NOT NULL', 'string', 'zh_CN', '', '1', '', '89', '0', '1', '1398846305', '1398846305', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('692', 'headimgurl', '头像', 'varchar(255) NOT NULL', 'picture', '', '', '1', '', '89', '0', '1', '1398846357', '1398846357', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('693', 'subscribe_time', '关注时间', 'int(10) NOT NULL', 'datetime', '', '', '0', '', '89', '0', '1', '1398846406', '1398846406', '', '3', '', 'regex', 'time', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('694', 'mobile', '手机号', 'varchar(30) NOT NULL', 'string', '', '', '1', '', '89', '0', '1', '1398848001', '1398848001', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('695', 'status', '用户状态', 'tinyint(1) NULL', 'select', '1', '', '0', '0:未关注
1:已关注
2:已绑定
3:会员卡成员', '89', '0', '1', '1398924711', '1398924711', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('696', 'uid', '管理员UID', 'int(10) NULL ', 'num', '', '可以在用户>用户信息页面的列表第一找到管理员的UID', '1', '', '90', '1', '1', '1398944756', '1398933236', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('697', 'mp_id', '公众号ID', 'int(10) unsigned NOT NULL ', 'num', '', '', '4', '', '90', '1', '1', '1398933300', '1398933300', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('698', 'is_creator', '是否为创建者', 'tinyint(2) NOT NULL', 'bool', '0', '', '0', '0:不是
1:是', '90', '0', '1', '1398933380', '1398933380', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('699', 'addon_status', '插件权限', 'text NOT NULL', 'checkbox', '', '', '1', '', '90', '0', '1', '1398933475', '1398933475', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('700', 'is_use', '是否为当前管理的公众号', 'tinyint(2) NOT NULL', 'bool', '0', '', '0', '0:不是
1:是', '90', '0', '1', '1398996982', '1398996975', '', '3', '', 'regex', '', '3', 'function');
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
INSERT INTO `wplt_attribute` VALUES ('720', 'follower_condtion', '粉丝状态', 'char(50) NOT NULL', 'select', '1', '粉丝达到设置的状态才能获取', '1', '0:不限制
1:已关注
2:已绑定信息
3:会员卡成员', '91', '0', '1', '1399260479', '1399260479', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('721', 'credit_conditon', '积分限制', 'int(10) unsigned NOT NULL ', 'num', '0', '粉丝达到多少积分后才能领取，领取后不扣积分', '1', '', '91', '0', '1', '1399260618', '1399260618', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('722', 'credit_bug', '积分消费', 'int(10) unsigned NOT NULL ', 'num', '0', '用积分中的财富兑换、兑换后扣除相应的积分财富', '1', '', '91', '0', '1', '1399260764', '1399260764', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('723', 'addon_condition', '插件场景限制', 'varchar(255) NOT NULL', 'string', '', '格式：[插件名:id值]，如[投票:10]表示对ID为10的投票投完才能领取，更多的说明见表单上的提示', '1', '', '91', '0', '1', '1399274022', '1399261026', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('724', 'collect_count', '已领取数', 'int(10) unsigned NOT NULL ', 'num', '0', '', '0', '', '91', '0', '1', '1400992246', '1399270900', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('725', 'view_count', '浏览人数', 'int(10) unsigned NOT NULL ', 'num', '0', '', '0', '', '91', '0', '1', '1399270926', '1399270926', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('726', 'sn', 'SN码', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '92', '0', '1', '1399272236', '1399272228', '', '3', '', 'regex', 'uniqid', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('727', 'uid', '粉丝UID', 'int(10) NOT NULL', 'num', '', '', '0', '', '92', '0', '1', '1399772738', '1399272401', '', '3', '', 'regex', 'get_mid', '1', 'function');
INSERT INTO `wplt_attribute` VALUES ('728', 'cTime', '创建时间', 'int(10) NOT NULL', 'datetime', '', '', '0', '', '92', '0', '1', '1399272456', '1399272456', '', '3', '', 'regex', 'time', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('729', 'is_use', '是否已使用', 'tinyint(2) NOT NULL', 'bool', '0', '', '0', '0:未使用
1:已使用', '92', '0', '1', '1400601159', '1399272514', '', '3', '', 'regex', '', '3', 'function');
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
INSERT INTO `wplt_attribute` VALUES ('748', 'follower_condtion', '粉丝状态', 'char(50) NOT NULL', 'select', '1', '粉丝达到设置的状态才能获取', '1', '0:不限制
1:已关注
2:已绑定信息
3:会员卡成员', '93', '0', '1', '1399260479', '1399260479', '', '3', '', 'regex', '', '3', 'function');
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
INSERT INTO `wplt_attribute` VALUES ('847', 'status', '客服在线状态', 'tinyint(1) NOT NULL ', 'bool', '0', '', '0', '0:离线
1:在线', '104', '0', '1', '1404016782', '1403947258', '', '0', '', 'regex', '', '0', 'function');
INSERT INTO `wplt_attribute` VALUES ('848', 'pid', '', 'int(11) NOT NULL ', 'string', '', '', '1', '', '105', '0', '1', '1403947272', '1403947272', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('849', 'openid', '', 'varchar(60) NOT NULL ', 'string', '', '', '1', '', '105', '0', '1', '1403947273', '1403947273', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('850', 'enddate', '', 'int(11) NOT NULL ', 'string', '', '', '1', '', '105', '0', '1', '1403947273', '1403947273', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('851', 'keyword', '', 'varchar(200) NOT NULL ', 'string', '', '', '1', '', '105', '0', '1', '1403947274', '1403947274', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('852', 'status', '', 'tinyint(1) NOT NULL ', 'string', '2', '', '1', '', '105', '0', '1', '1403947274', '1403947274', '', '0', '', '', '', '0', '');
INSERT INTO `wplt_attribute` VALUES ('853', 'state', '客服状态', 'tinyint(2) NOT NULL', 'bool', '0', '', '1', '0:停用
1:启用', '104', '0', '1', '1404016877', '1404016877', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('854', 'isdelete', '是否删除', 'tinyint(2) NOT NULL', 'bool', '0', '', '0', '0:正常
1:已被删除', '104', '0', '1', '1404016931', '1404016931', '', '3', '', 'regex', '', '3', 'function');
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
INSERT INTO `wplt_attribute` VALUES ('898', 'level', '最多级数', 'tinyint(1) unsigned NOT NULL', 'select', '3', '', '1', '1:1级
2:2级
3:3级
4:4级
5:5级
6:6级
7:7级', '97', '0', '1', '1404193097', '1404192897', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('912', 'tooltype', '工具类型', 'tinyint(2) NOT NULL', 'bool', '0', '', '2', '0:微信消息
1:单独页面', '115', '0', '1', '1404273343', '1404273343', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('913', 'keyword', ' 关键词 ', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '115', '0', '1', '1404273406', '1404273406', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('915', 'cTime', '创建时间', 'int(10) NOT NULL', 'datetime', '', '', '0', '', '115', '0', '1', '1404273542', '1404273542', '', '3', '', 'regex', 'time', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('916', 'toolname', '工具名称', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '115', '0', '1', '1404273609', '1404273609', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('918', 'tooldes', '工具描述', 'text NOT NULL', 'textarea', '', '', '1', '', '115', '0', '1', '1404273652', '1404273652', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('920', 'toolnum', '工具唯一编号', 'varchar(255) NOT NULL', 'string', '', '', '2', '', '115', '0', '1', '1404274841', '1404273757', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('921', 'toolstate', '工具状态', 'tinyint(2) NOT NULL', 'bool', '0', '', '1', '0:启用
1:停用', '115', '0', '1', '1404273809', '1404273809', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('922', 'token', 'Token', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '115', '0', '1', '1404273958', '1404273958', '', '3', '', 'regex', 'get_token', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('934', 'kfid', '客服编号', 'varchar(255) NOT NULL', 'string', '', '', '1', '', '104', '0', '1', '1404398387', '1404398387', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('935', 'msgkeyword', '消息关键字', 'varchar(555) NOT NULL', 'string', '', '当用户发送的消息中含有关键字时,将自动转到分配的客服人员', '1', '', '116', '0', '1', '1404399336', '1404399336', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('936', 'msgkeyword_type', '关键字类型', 'char(50) NOT NULL', 'select', '3', '选择关键字匹配的类型', '1', '0:完全匹配
1:左边匹配
2:右边匹配
3:模糊匹配', '116', '0', '1', '1404399466', '1404399466', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('937', 'msgkfaccount', '接待的客服人员', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '116', '0', '1', '1404403340', '1404399587', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('938', 'cTime', '创建时间', 'int(10) NOT NULL', 'date', '', '', '0', '', '116', '0', '1', '1404399629', '1404399629', '', '3', '', 'regex', 'time', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('939', 'token', 'token', 'varchar(255) NOT NULL', 'string', '', '', '0', '', '116', '0', '1', '1404399656', '1404399656', '', '3', '', 'regex', 'get_token', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('940', 'msgstate', '关键字状态', 'tinyint(2) NOT NULL', 'bool', '1', '停用后用户将不会触发此关键词', '1', '0:停用
1:启用', '116', '0', '1', '1404399749', '1404399749', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('941', 'zjnum', '转接次数', 'int(10) NOT NULL', 'num', '', '', '0', '', '116', '0', '1', '1404399784', '1404399784', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('942', 'zdtype', '指定类型', 'char(10) NOT NULL', 'radio', '0', '选择关键字匹配时是按指定人员或者指定客服组', '1', '0:指定客服人员
1:指定客服组', '116', '0', '1', '1404474672', '1404474672', '', '3', '', 'regex', '', '3', 'function');
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
INSERT INTO `wplt_attribute` VALUES ('993', 'action_name', '二维码类型', 'char(30) NOT NULL', 'select', 'QR_SCENE', 'QR_SCENE为临时,QR_LIMIT_SCENE为永久 ', '1', 'QR_SCENE:临时二维码
QR_LIMIT_SCENE:永久二维码', '121', '0', '1', '1406130162', '1393919686', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('994', 'extra_text', '文本扩展', 'text NULL ', 'textarea', '', '', '1', '', '121', '0', '1', '1393919736', '1393919736', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('995', 'extra_int', '数字扩展', 'int(10) NULL ', 'num', '', '', '1', '', '121', '0', '1', '1393919798', '1393919798', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('996', 'request_count', '请求数', 'int(10) NOT NULL', 'num', '0', '用户回复的次数', '0', '', '121', '0', '1', '1402547625', '1401938983', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('997', 'scene_id', '场景ID', 'int(10) NOT NULL', 'num', '0', '', '1', '', '121', '0', '1', '1406127542', '1406127542', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1316', 'mTime', '更新时间', 'int(10) NOT NULL', 'datetime', '', '', '0', '', '89', '0', '1', '1408939657', '1408939657', '', '3', '', 'regex', 'time', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('836', 'token', 'Token', 'varchar(100) NOT NULL', 'string', '', '', '0', '', '97', '1', '1', '1408947244', '1396602859', '', '3', '', 'regex', 'get_token', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1339', 'type', '类型', 'varchar(30) NOT NULL', 'bool', 'click', '', '1', 'click:点击推事件|keyword@show,url@hide
view:跳转URL|keyword@hide,url@show
scancode_push:扫码推事件|keyword@show,url@hide
scancode_waitmsg:扫码带提示|keyword@show,url@hide
pic_sysphoto:弹出系统拍照发图|keyword@show,url@hide
pic_photo_or_album:弹出拍照或者相册发图|keyword@show,url@hide
pic_weixin:弹出微信相册发图器|keyword@show,url@hide
location_select:弹出地理位置选择器|keyword@show,url@hide
none:无事件的一级菜单|keyword@hide,url@hide', '85', '0', '1', '1416812039', '1416810588', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1341', 'encodingaeskey', 'EncodingAESKey', 'varchar(255) NOT NULL', 'string', '', '安全模式下必填', '1', '', '11', '0', '1', '1416817970', '1416817924', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1343', 'mp_id', '公众号ID', 'int(10) unsigned NOT NULL ', 'num', '', '', '4', '', '154', '1', '1', '1430664600', '1430660958', '', '1', '公众号原始ID已经存在，请不要重复增加', 'unique', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1344', 'input_switch', 'Accesstoken输入开关', 'tinyint(2) NOT NULL', 'bool', '0', '', '1', '0:关
1:开', '154', '1', '1', '1430661109', '1430661109', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1345', 'input_url', 'Accesstoken来源接口', 'varchar(1024) NULL', 'string', '', '', '1', '', '154', '0', '1', '1430663088', '1430661696', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1347', 'output_switch', 'Accesstoken输出开关', 'tinyint(2) NOT NULL', 'bool', '0', '', '1', '0:关
1:开', '154', '1', '1', '1430661863', '1430661836', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1348', 'output_url', 'Accesstoken推送接口', 'varchar(1024) NULL', 'string', '', '', '1', '', '154', '0', '1', '1430663102', '1430661987', '', '3', '', 'regex', '', '3', 'function');
INSERT INTO `wplt_attribute` VALUES ('1350', 'secrect', 'AppSecret', 'varchar(255) NOT NULL', 'string', '', '应用密钥', '1', '', '154', '0', '1', '1430671232', '1430671232', '', '3', '', 'regex', '', '3', 'function');

-- -----------------------------
-- Table structure for `wplt_auth_extend`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_auth_extend`;
;

-- -----------------------------
-- Records of `wplt_auth_extend`
-- -----------------------------
INSERT INTO `wplt_auth_extend` VALUES ('1', '1', '1');
INSERT INTO `wplt_auth_extend` VALUES ('1', '1', '2');
INSERT INTO `wplt_auth_extend` VALUES ('1', '2', '1');
INSERT INTO `wplt_auth_extend` VALUES ('1', '2', '2');
INSERT INTO `wplt_auth_extend` VALUES ('1', '3', '1');
INSERT INTO `wplt_auth_extend` VALUES ('1', '3', '2');
INSERT INTO `wplt_auth_extend` VALUES ('1', '4', '1');
INSERT INTO `wplt_auth_extend` VALUES ('1', '37', '1');

-- -----------------------------
-- Table structure for `wplt_auth_group`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_auth_group`;
;

-- -----------------------------
-- Records of `wplt_auth_group`
-- -----------------------------
INSERT INTO `wplt_auth_group` VALUES ('1', 'admin', '1', '默认用户组', '', '1', '1,2,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,79,80,81,82,83,84,86,87,88,89,90,91,92,93,94,95,96,97,100,102,103,105,106');
INSERT INTO `wplt_auth_group` VALUES ('2', 'admin', '1', '测试用户', '测试用户', '1', '1,2,5,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,79,80,82,83,84,88,89,90,91,92,93,96,97,100,102,103,195');

-- -----------------------------
-- Table structure for `wplt_auth_group_access`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_auth_group_access`;
;


-- -----------------------------
-- Table structure for `wplt_auth_rule`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_auth_rule`;
;

-- -----------------------------
-- Records of `wplt_auth_rule`
-- -----------------------------
INSERT INTO `wplt_auth_rule` VALUES ('1', 'admin', '2', 'Admin/Index/index', '首页', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('2', 'admin', '2', 'Admin/Article/mydocument', '内容', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('3', 'admin', '2', 'Admin/User/index', '用户', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('4', 'admin', '2', 'Admin/Addons/index', '扩展', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('5', 'admin', '2', 'Admin/Config/group', '系统', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('6', 'admin', '1', 'Admin/Index/index', '首页', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('7', 'admin', '1', 'Admin/article/add', '新增', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('8', 'admin', '1', 'Admin/article/edit', '编辑', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('9', 'admin', '1', 'Admin/article/setStatus', '改变状态', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('10', 'admin', '1', 'Admin/article/update', '保存', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('11', 'admin', '1', 'Admin/article/autoSave', '保存草稿', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('12', 'admin', '1', 'Admin/article/move', '移动', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('13', 'admin', '1', 'Admin/article/copy', '复制', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('14', 'admin', '1', 'Admin/article/paste', '粘贴', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('15', 'admin', '1', 'Admin/article/permit', '还原', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('16', 'admin', '1', 'Admin/article/clear', '清空', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('17', 'admin', '1', 'Admin/article/index', '文档列表', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('18', 'admin', '1', 'Admin/article/recycle', '回收站', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('19', 'admin', '1', 'Admin/User/addaction', '新增用户行为', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('20', 'admin', '1', 'Admin/User/editaction', '编辑用户行为', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('21', 'admin', '1', 'Admin/User/saveAction', '保存用户行为', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('22', 'admin', '1', 'Admin/User/setStatus', '变更行为状态', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('23', 'admin', '1', 'Admin/User/changeStatus?method=forbidUser', '禁用会员', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('24', 'admin', '1', 'Admin/User/changeStatus?method=resumeUser', '启用会员', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('25', 'admin', '1', 'Admin/User/changeStatus?method=deleteUser', '删除会员', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('26', 'admin', '1', 'Admin/User/index', '用户信息', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('27', 'admin', '1', 'Admin/User/action', '用户行为', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('28', 'admin', '1', 'Admin/AuthManager/changeStatus?method=deleteGroup', '删除', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('29', 'admin', '1', 'Admin/AuthManager/changeStatus?method=forbidGroup', '禁用', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('30', 'admin', '1', 'Admin/AuthManager/changeStatus?method=resumeGroup', '恢复', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('31', 'admin', '1', 'Admin/AuthManager/createGroup', '新增', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('32', 'admin', '1', 'Admin/AuthManager/editGroup', '编辑', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('33', 'admin', '1', 'Admin/AuthManager/writeGroup', '保存用户组', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('34', 'admin', '1', 'Admin/AuthManager/group', '授权', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('35', 'admin', '1', 'Admin/AuthManager/access', '访问授权', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('36', 'admin', '1', 'Admin/AuthManager/user', '成员授权', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('37', 'admin', '1', 'Admin/AuthManager/removeFromGroup', '解除授权', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('38', 'admin', '1', 'Admin/AuthManager/addToGroup', '保存成员授权', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('39', 'admin', '1', 'Admin/AuthManager/category', '分类授权', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('40', 'admin', '1', 'Admin/AuthManager/addToCategory', '保存分类授权', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('41', 'admin', '1', 'Admin/AuthManager/index', '权限管理', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('42', 'admin', '1', 'Admin/Addons/create', '创建', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('43', 'admin', '1', 'Admin/Addons/checkForm', '检测创建', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('44', 'admin', '1', 'Admin/Addons/preview', '预览', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('45', 'admin', '1', 'Admin/Addons/build', '快速生成插件', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('46', 'admin', '1', 'Admin/Addons/config', '设置', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('47', 'admin', '1', 'Admin/Addons/disable', '禁用', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('48', 'admin', '1', 'Admin/Addons/enable', '启用', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('49', 'admin', '1', 'Admin/Addons/install', '安装', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('50', 'admin', '1', 'Admin/Addons/uninstall', '卸载', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('51', 'admin', '1', 'Admin/Addons/saveconfig', '更新配置', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('52', 'admin', '1', 'Admin/Addons/adminList', '插件后台列表', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('53', 'admin', '1', 'Admin/Addons/execute', 'URL方式访问插件', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('54', 'admin', '1', 'Admin/Addons/index', '插件管理', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('55', 'admin', '1', 'Admin/Addons/hooks', '钩子管理', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('56', 'admin', '1', 'Admin/model/add', '新增', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('57', 'admin', '1', 'Admin/model/edit', '编辑', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('58', 'admin', '1', 'Admin/model/setStatus', '改变状态', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('59', 'admin', '1', 'Admin/model/update', '保存数据', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('60', 'admin', '1', 'Admin/Model/index', '模型管理', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('61', 'admin', '1', 'Admin/Config/edit', '编辑', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('62', 'admin', '1', 'Admin/Config/del', '删除', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('63', 'admin', '1', 'Admin/Config/add', '新增', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('64', 'admin', '1', 'Admin/Config/save', '保存', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('65', 'admin', '1', 'Admin/Config/group', '网站设置', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('66', 'admin', '1', 'Admin/Config/index', '配置管理', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('67', 'admin', '1', 'Admin/Channel/add', '新增', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('68', 'admin', '1', 'Admin/Channel/edit', '编辑', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('69', 'admin', '1', 'Admin/Channel/del', '删除', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('70', 'admin', '1', 'Admin/Channel/index', '导航管理', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('71', 'admin', '1', 'Admin/Category/edit', '编辑', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('72', 'admin', '1', 'Admin/Category/add', '新增', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('73', 'admin', '1', 'Admin/Category/remove', '删除', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('74', 'admin', '1', 'Admin/Category/index', '分类管理', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('75', 'admin', '1', 'Admin/file/upload', '上传控件', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('76', 'admin', '1', 'Admin/file/uploadPicture', '上传图片', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('77', 'admin', '1', 'Admin/file/download', '下载', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('94', 'admin', '1', 'Admin/AuthManager/modelauth', '模型授权', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('79', 'admin', '1', 'Admin/article/batchOperate', '导入', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('80', 'admin', '1', 'Admin/Database/index?type=export', '备份数据库', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('81', 'admin', '1', 'Admin/Database/index?type=import', '还原数据库', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('82', 'admin', '1', 'Admin/Database/export', '备份', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('83', 'admin', '1', 'Admin/Database/optimize', '优化表', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('84', 'admin', '1', 'Admin/Database/repair', '修复表', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('86', 'admin', '1', 'Admin/Database/import', '恢复', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('87', 'admin', '1', 'Admin/Database/del', '删除', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('88', 'admin', '1', 'Admin/User/add', '新增用户', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('89', 'admin', '1', 'Admin/Attribute/index', '属性管理', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('90', 'admin', '1', 'Admin/Attribute/add', '新增', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('91', 'admin', '1', 'Admin/Attribute/edit', '编辑', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('92', 'admin', '1', 'Admin/Attribute/setStatus', '改变状态', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('93', 'admin', '1', 'Admin/Attribute/update', '保存数据', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('95', 'admin', '1', 'Admin/AuthManager/addToModel', '保存模型授权', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('96', 'admin', '1', 'Admin/Category/move', '移动', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('97', 'admin', '1', 'Admin/Category/merge', '合并', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('98', 'admin', '1', 'Admin/Config/menu', '后台菜单管理', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('99', 'admin', '1', 'Admin/Article/mydocument', '内容', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('100', 'admin', '1', 'Admin/Menu/index', '菜单管理', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('101', 'admin', '1', 'Admin/other', '其他', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('102', 'admin', '1', 'Admin/Menu/add', '新增', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('103', 'admin', '1', 'Admin/Menu/edit', '编辑', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('104', 'admin', '1', 'Admin/Think/lists?model=article', '文章管理', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('105', 'admin', '1', 'Admin/Think/lists?model=download', '下载管理', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('106', 'admin', '1', 'Admin/Think/lists?model=config', '配置管理', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('107', 'admin', '1', 'Admin/Action/actionlog', '行为日志', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('108', 'admin', '1', 'Admin/User/updatePassword', '修改密码', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('109', 'admin', '1', 'Admin/User/updateNickname', '修改昵称', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('110', 'admin', '1', 'Admin/action/edit', '查看行为日志', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('205', 'admin', '1', 'Admin/think/add', '新增数据', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('111', 'admin', '2', 'Admin/article/index', '文档列表', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('112', 'admin', '2', 'Admin/article/add', '新增', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('113', 'admin', '2', 'Admin/article/edit', '编辑', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('114', 'admin', '2', 'Admin/article/setStatus', '改变状态', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('115', 'admin', '2', 'Admin/article/update', '保存', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('116', 'admin', '2', 'Admin/article/autoSave', '保存草稿', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('117', 'admin', '2', 'Admin/article/move', '移动', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('118', 'admin', '2', 'Admin/article/copy', '复制', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('119', 'admin', '2', 'Admin/article/paste', '粘贴', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('120', 'admin', '2', 'Admin/article/batchOperate', '导入', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('121', 'admin', '2', 'Admin/article/recycle', '回收站', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('122', 'admin', '2', 'Admin/article/permit', '还原', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('123', 'admin', '2', 'Admin/article/clear', '清空', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('124', 'admin', '2', 'Admin/User/add', '新增用户', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('125', 'admin', '2', 'Admin/User/action', '用户行为', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('126', 'admin', '2', 'Admin/User/addAction', '新增用户行为', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('127', 'admin', '2', 'Admin/User/editAction', '编辑用户行为', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('128', 'admin', '2', 'Admin/User/saveAction', '保存用户行为', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('129', 'admin', '2', 'Admin/User/setStatus', '变更行为状态', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('130', 'admin', '2', 'Admin/User/changeStatus?method=forbidUser', '禁用会员', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('131', 'admin', '2', 'Admin/User/changeStatus?method=resumeUser', '启用会员', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('132', 'admin', '2', 'Admin/User/changeStatus?method=deleteUser', '删除会员', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('133', 'admin', '2', 'Admin/AuthManager/index', '权限管理', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('134', 'admin', '2', 'Admin/AuthManager/changeStatus?method=deleteGroup', '删除', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('135', 'admin', '2', 'Admin/AuthManager/changeStatus?method=forbidGroup', '禁用', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('136', 'admin', '2', 'Admin/AuthManager/changeStatus?method=resumeGroup', '恢复', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('137', 'admin', '2', 'Admin/AuthManager/createGroup', '新增', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('138', 'admin', '2', 'Admin/AuthManager/editGroup', '编辑', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('139', 'admin', '2', 'Admin/AuthManager/writeGroup', '保存用户组', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('140', 'admin', '2', 'Admin/AuthManager/group', '授权', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('141', 'admin', '2', 'Admin/AuthManager/access', '访问授权', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('142', 'admin', '2', 'Admin/AuthManager/user', '成员授权', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('143', 'admin', '2', 'Admin/AuthManager/removeFromGroup', '解除授权', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('144', 'admin', '2', 'Admin/AuthManager/addToGroup', '保存成员授权', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('145', 'admin', '2', 'Admin/AuthManager/category', '分类授权', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('146', 'admin', '2', 'Admin/AuthManager/addToCategory', '保存分类授权', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('147', 'admin', '2', 'Admin/AuthManager/modelauth', '模型授权', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('148', 'admin', '2', 'Admin/AuthManager/addToModel', '保存模型授权', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('149', 'admin', '2', 'Admin/Addons/create', '创建', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('150', 'admin', '2', 'Admin/Addons/checkForm', '检测创建', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('151', 'admin', '2', 'Admin/Addons/preview', '预览', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('152', 'admin', '2', 'Admin/Addons/build', '快速生成插件', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('153', 'admin', '2', 'Admin/Addons/config', '设置', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('154', 'admin', '2', 'Admin/Addons/disable', '禁用', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('155', 'admin', '2', 'Admin/Addons/enable', '启用', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('156', 'admin', '2', 'Admin/Addons/install', '安装', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('157', 'admin', '2', 'Admin/Addons/uninstall', '卸载', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('158', 'admin', '2', 'Admin/Addons/saveconfig', '更新配置', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('159', 'admin', '2', 'Admin/Addons/adminList', '插件后台列表', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('160', 'admin', '2', 'Admin/Addons/execute', 'URL方式访问插件', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('161', 'admin', '2', 'Admin/Addons/hooks', '钩子管理', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('162', 'admin', '2', 'Admin/Model/index', '模型管理', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('163', 'admin', '2', 'Admin/model/add', '新增', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('164', 'admin', '2', 'Admin/model/edit', '编辑', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('165', 'admin', '2', 'Admin/model/setStatus', '改变状态', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('166', 'admin', '2', 'Admin/model/update', '保存数据', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('167', 'admin', '2', 'Admin/Attribute/index', '属性管理', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('168', 'admin', '2', 'Admin/Attribute/add', '新增', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('169', 'admin', '2', 'Admin/Attribute/edit', '编辑', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('170', 'admin', '2', 'Admin/Attribute/setStatus', '改变状态', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('171', 'admin', '2', 'Admin/Attribute/update', '保存数据', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('172', 'admin', '2', 'Admin/Config/index', '配置管理', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('173', 'admin', '2', 'Admin/Config/edit', '编辑', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('174', 'admin', '2', 'Admin/Config/del', '删除', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('175', 'admin', '2', 'Admin/Config/add', '新增', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('176', 'admin', '2', 'Admin/Config/save', '保存', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('177', 'admin', '2', 'Admin/Menu/index', '菜单管理', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('178', 'admin', '2', 'Admin/Channel/index', '导航管理', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('179', 'admin', '2', 'Admin/Channel/add', '新增', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('180', 'admin', '2', 'Admin/Channel/edit', '编辑', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('181', 'admin', '2', 'Admin/Channel/del', '删除', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('182', 'admin', '2', 'Admin/Category/index', '分类管理', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('183', 'admin', '2', 'Admin/Category/edit', '编辑', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('184', 'admin', '2', 'Admin/Category/add', '新增', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('185', 'admin', '2', 'Admin/Category/remove', '删除', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('186', 'admin', '2', 'Admin/Category/move', '移动', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('187', 'admin', '2', 'Admin/Category/merge', '合并', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('188', 'admin', '2', 'Admin/Database/index?type=export', '备份数据库', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('189', 'admin', '2', 'Admin/Database/export', '备份', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('190', 'admin', '2', 'Admin/Database/optimize', '优化表', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('191', 'admin', '2', 'Admin/Database/repair', '修复表', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('192', 'admin', '2', 'Admin/Database/index?type=import', '还原数据库', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('193', 'admin', '2', 'Admin/Database/import', '恢复', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('194', 'admin', '2', 'Admin/Database/del', '删除', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('195', 'admin', '2', 'Admin/other', '其他', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('196', 'admin', '2', 'Admin/Menu/add', '新增', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('197', 'admin', '2', 'Admin/Menu/edit', '编辑', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('198', 'admin', '2', 'Admin/Think/lists?model=article', '应用', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('199', 'admin', '2', 'Admin/Think/lists?model=download', '下载管理', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('200', 'admin', '2', 'Admin/Think/lists?model=config', '应用', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('201', 'admin', '2', 'Admin/Action/actionlog', '行为日志', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('202', 'admin', '2', 'Admin/User/updatePassword', '修改密码', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('203', 'admin', '2', 'Admin/User/updateNickname', '修改昵称', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('204', 'admin', '2', 'Admin/action/edit', '查看行为日志', '-1', '');
INSERT INTO `wplt_auth_rule` VALUES ('206', 'admin', '1', 'Admin/think/edit', '编辑数据', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('207', 'admin', '1', 'Admin/Menu/import', '导入', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('208', 'admin', '1', 'Admin/Model/generate', '生成', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('209', 'admin', '1', 'Admin/Addons/addHook', '新增钩子', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('210', 'admin', '1', 'Admin/Addons/edithook', '编辑钩子', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('211', 'admin', '1', 'Admin/Article/sort', '文档排序', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('212', 'admin', '1', 'Admin/Config/sort', '排序', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('213', 'admin', '1', 'Admin/Menu/sort', '排序', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('214', 'admin', '1', 'Admin/Channel/sort', '排序', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('215', 'admin', '1', 'Admin/Category/operate/type/move', '移动', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('216', 'admin', '1', 'Admin/Category/operate/type/merge', '合并', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('217', 'admin', '1', 'admin/addons/weixin', '微信插件', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('218', 'admin', '2', 'Admin/Addons/weixin', '插件管理', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('219', 'admin', '1', 'admin/PublicGroup/PublicGroup', '公众号等级', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('220', 'admin', '1', 'admin/PublicGroup/PublicAdmin', '公众号管理', '1', '');
INSERT INTO `wplt_auth_rule` VALUES ('221', 'admin', '1', 'admin/update/index', '在线升级', '1', '');

-- -----------------------------
-- Table structure for `wplt_card_member`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_card_member`;
;


-- -----------------------------
-- Table structure for `wplt_card_notice`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_card_notice`;
;


-- -----------------------------
-- Table structure for `wplt_category`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_category`;
;

-- -----------------------------
-- Records of `wplt_category`
-- -----------------------------
INSERT INTO `wplt_category` VALUES ('1', 'blog', '博客', '0', '0', '10', '', '', '', '', '', '', '', '2', '2,1', '0', '0', '1', '0', '0', '1', '', '1379474947', '1382701539', '1', '0');

-- -----------------------------
-- Table structure for `wplt_channel`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_channel`;
;


-- -----------------------------
-- Table structure for `wplt_common_category`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_common_category`;
;


-- -----------------------------
-- Table structure for `wplt_common_category_group`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_common_category_group`;
;


-- -----------------------------
-- Table structure for `wplt_config`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_config`;
;

-- -----------------------------
-- Records of `wplt_config`
-- -----------------------------
INSERT INTO `wplt_config` VALUES ('1', 'WEB_SITE_TITLE', '1', '网站标题', '1', '', '网站标题前台显示标题', '1378898976', '1379235274', '1', 'WeiPHP微信开发框架', '0');
INSERT INTO `wplt_config` VALUES ('2', 'WEB_SITE_DESCRIPTION', '2', '网站描述', '1', '', '网站搜索引擎描述', '1378898976', '1379235841', '1', 'WeiPHP微信开发框架', '1');
INSERT INTO `wplt_config` VALUES ('3', 'WEB_SITE_KEYWORD', '2', '网站关键字', '1', '', '网站搜索引擎关键字', '1378898976', '1381390100', '1', 'WeiPHP,ThinkPHP,OneThink', '8');
INSERT INTO `wplt_config` VALUES ('4', 'WEB_SITE_CLOSE', '4', '关闭站点', '1', '0:关闭
1:开启', '站点关闭后其他用户不能访问，管理员可以正常访问', '1378898976', '1406859591', '1', '1', '1');
INSERT INTO `wplt_config` VALUES ('9', 'CONFIG_TYPE_LIST', '3', '配置类型列表', '4', '', '主要用于数据解析和页面表单的生成', '1378898976', '1379235348', '1', '0:数字
1:字符
2:文本
3:数组
4:枚举', '2');
INSERT INTO `wplt_config` VALUES ('10', 'WEB_SITE_ICP', '1', '网站备案号', '1', '', '设置在网站底部显示的备案号，如“沪ICP备12007941号-2', '1378900335', '1379235859', '1', '苏ICP备14004339号', '9');
INSERT INTO `wplt_config` VALUES ('11', 'DOCUMENT_POSITION', '3', '文档推荐位', '2', '', '文档推荐位，推荐到多个位置KEY值相加即可', '1379053380', '1379235329', '1', '1:列表页推荐
2:频道页推荐
4:网站首页推荐', '3');
INSERT INTO `wplt_config` VALUES ('12', 'DOCUMENT_DISPLAY', '3', '文档可见性', '2', '', '文章可见性仅影响前台显示，后台不收影响', '1379056370', '1379235322', '1', '0:所有人可见
1:仅注册会员可见
2:仅管理员可见', '4');
INSERT INTO `wplt_config` VALUES ('13', 'COLOR_STYLE', '4', '后台色系', '1', 'default_color:默认
blue_color:紫罗兰', '后台颜色风格', '1379122533', '1379235904', '1', 'default_color', '10');
INSERT INTO `wplt_config` VALUES ('20', 'CONFIG_GROUP_LIST', '3', '配置分组', '4', '', '配置分组', '1379228036', '1384418383', '1', '1:基本
3:用户
4:系统
5:站点', '4');
INSERT INTO `wplt_config` VALUES ('21', 'HOOKS_TYPE', '3', '钩子的类型', '4', '', '类型 1-用于扩展显示内容，2-用于扩展业务处理', '1379313397', '1379313407', '1', '1:视图
2:控制器', '6');
INSERT INTO `wplt_config` VALUES ('22', 'AUTH_CONFIG', '3', 'Auth配置', '4', '', '自定义Auth.class.php类配置', '1379409310', '1379409564', '1', 'AUTH_ON:1
AUTH_TYPE:2', '8');
INSERT INTO `wplt_config` VALUES ('23', 'OPEN_DRAFTBOX', '4', '是否开启草稿功能', '2', '0:关闭草稿功能
1:开启草稿功能
', '新增文章时的草稿功能配置', '1379484332', '1379484591', '1', '1', '1');
INSERT INTO `wplt_config` VALUES ('24', 'DRAFT_AOTOSAVE_INTERVAL', '0', '自动保存草稿时间', '2', '', '自动保存草稿的时间间隔，单位：秒', '1379484574', '1386143323', '1', '60', '2');
INSERT INTO `wplt_config` VALUES ('25', 'LIST_ROWS', '0', '后台每页记录数', '4', '', '后台数据每页显示记录数', '1379503896', '1391938052', '1', '20', '10');
INSERT INTO `wplt_config` VALUES ('26', 'USER_ALLOW_REGISTER', '4', '是否允许用户注册', '3', '0:关闭注册
1:允许注册', '是否开放用户注册', '1379504487', '1379504580', '1', '1', '3');
INSERT INTO `wplt_config` VALUES ('27', 'CODEMIRROR_THEME', '4', '预览插件的CodeMirror主题', '4', '3024-day:3024 day
3024-night:3024 night
ambiance:ambiance
base16-dark:base16 dark
base16-light:base16 light
blackboard:blackboard
cobalt:cobalt
eclipse:eclipse
elegant:elegant
erlang-dark:erlang-dark
lesser-dark:lesser-dark
midnight:midnight', '详情见CodeMirror官网', '1379814385', '1384740813', '1', 'ambiance', '3');
INSERT INTO `wplt_config` VALUES ('28', 'DATA_BACKUP_PATH', '1', '数据库备份根路径', '4', '', '路径必须以 / 结尾', '1381482411', '1381482411', '1', './Data/', '5');
INSERT INTO `wplt_config` VALUES ('29', 'DATA_BACKUP_PART_SIZE', '0', '数据库备份卷大小', '4', '', '该值用于限制压缩后的分卷最大长度。单位：B；建议设置20M', '1381482488', '1381729564', '1', '20971520', '7');
INSERT INTO `wplt_config` VALUES ('30', 'DATA_BACKUP_COMPRESS', '4', '数据库备份文件是否启用压缩', '4', '0:不压缩
1:启用压缩', '压缩备份文件需要PHP环境支持gzopen,gzwrite函数', '1381713345', '1381729544', '1', '1', '9');
INSERT INTO `wplt_config` VALUES ('31', 'DATA_BACKUP_COMPRESS_LEVEL', '4', '数据库备份文件压缩级别', '4', '1:普通
4:一般
9:最高', '数据库备份文件的压缩级别，该配置在开启压缩时生效', '1381713408', '1381713408', '1', '9', '10');
INSERT INTO `wplt_config` VALUES ('32', 'DEVELOP_MODE', '4', '开启开发者模式', '4', '0:关闭
1:开启', '是否开启开发者模式', '1383105995', '1383291877', '1', '1', '11');
INSERT INTO `wplt_config` VALUES ('33', 'ALLOW_VISIT', '3', '不受限控制器方法', '0', '', '', '1386644047', '1386644741', '1', '0:article/draftbox
1:article/mydocument
2:Category/tree
3:Index/verify
4:file/upload
5:file/download
6:user/updatePassword
7:user/updateNickname
8:user/submitPassword
9:user/submitNickname', '0');
INSERT INTO `wplt_config` VALUES ('34', 'DENY_VISIT', '3', '超管专限控制器方法', '0', '', '仅超级管理员可访问的控制器方法', '1386644141', '1386644659', '1', '0:Addons/addhook
1:Addons/edithook
2:Addons/delhook
3:Addons/updateHook
4:Admin/getMenus
5:Admin/recordList
6:AuthManager/updateRules
7:AuthManager/tree', '0');
INSERT INTO `wplt_config` VALUES ('35', 'REPLY_LIST_ROWS', '0', '回复列表每页条数', '2', '', '', '1386645376', '1387178083', '1', '20', '0');
INSERT INTO `wplt_config` VALUES ('36', 'ADMIN_ALLOW_IP', '2', '后台允许访问IP', '4', '', '多个用逗号分隔，如果不配置表示不限制IP访问', '1387165454', '1387165553', '1', '', '12');
INSERT INTO `wplt_config` VALUES ('37', 'SHOW_PAGE_TRACE', '4', '是否显示页面Trace', '4', '0:关闭
1:开启', '是否显示页面Trace信息', '1387165685', '1387165685', '1', '0', '1');
INSERT INTO `wplt_config` VALUES ('38', 'WEB_SITE_VERIFY', '4', '登录验证码', '1', '0:关闭
1:开启', '登录时是否需要验证码', '1378898976', '1406859544', '1', '1', '2');
INSERT INTO `wplt_config` VALUES ('42', 'ACCESS', '2', '未登录时可访问的页面', '4', '', '不区分大小写', '1390656601', '1390664079', '1', 'Home/User/*
Home/Index/*
home/weixin/*
admin/File/*
home/File/*
home/Forum/*', '0');
INSERT INTO `wplt_config` VALUES ('44', 'DEFAULT_PUBLIC_GROUP_ID', '0', '公众号默认等级ID', '3', '', '前台新增加的公众号的默认等级，值为0表示不做权限控制，公众号拥有全部插件的权限', '1393759885', '1393759981', '1', '0', '1');
INSERT INTO `wplt_config` VALUES ('45', 'SYSTEM_UPDATE_REMIND', '4', '系统升级提醒', '4', '0:关闭
1:开启', '开启后官方有新升级信息会及时在后台的网站设置页面头部显示升级提醒', '1393764263', '1393764263', '1', '1', '5');
INSERT INTO `wplt_config` VALUES ('46', 'SYSTEM_UPDATRE_VERSION', '0', '系统升级最新版本号', '4', '', '记录当前系统的版本号，这是与官方比较是否有升级包的唯一标识，不熟悉者只勿改变其数值', '1393764702', '1394337646', '1', '20141202', '0');
INSERT INTO `wplt_config` VALUES ('47', 'FOLLOW_YOUKE_UID', '0', '粉丝游客ID', '0', '', '', '1398927704', '1398927704', '1', '-3349', '0');
INSERT INTO `wplt_config` VALUES ('48', 'DEFAULT_PUBLIC', '0', '注册后默认可管理的公众号ID', '3', '', '可为空。配置用户注册后即可管理的公众号ID，多个时用英文逗号分割', '1398928794', '1398929088', '1', '', '0');
INSERT INTO `wplt_config` VALUES ('49', 'DEFAULT_PUBLIC_CREATE_MAX_NUMB', '0', '默认用户最多可创建的公众号数', '3', '', '注册用户最多的创建数，也可以在用户管理里对每个用户设置不同的值', '1398949652', '1398950115', '1', '5', '0');
INSERT INTO `wplt_config` VALUES ('50', 'COPYRIGHT', '1', '版权信息', '1', '', '', '1401018910', '1401018910', '1', 'WeiPHP 版权所有', '3');
INSERT INTO `wplt_config` VALUES ('51', 'WEIPHP_STORE_LICENSE', '1', '应用商店授权许可证', '1', '', '要与 应用商店》网站信息 里的授权许可证保持一致', '1402972720', '1402977473', '1', '', '0');
INSERT INTO `wplt_config` VALUES ('52', 'SYSTEM_LOGO', '1', '网站LOGO', '5', '', '填写LOGO的网址，为空时默认显示weiphp的logo', '1403566699', '1403566746', '1', '', '0');
INSERT INTO `wplt_config` VALUES ('53', 'SYSTEM_CLOSE_REGISTER', '4', '前台注册开关', '5', '0:不关闭
1:关闭', '关闭后在登录页面不再显示注册链接', '1403568006', '1403568006', '1', '0', '0');
INSERT INTO `wplt_config` VALUES ('54', 'SYSTEM_CLOSE_ADMIN', '4', '后台管理开关', '5', '0:不关闭
1:关闭', '关闭后在登录页面不再显示后台登录链接', '1403568006', '1403568006', '1', '0', '0');
INSERT INTO `wplt_config` VALUES ('55', 'SYSTEM_CLOSE_WIKI', '4', '二次开发开关', '5', '0:不关闭
1:关闭', '关闭后在登录页面不再显示二次开发链接', '1403568006', '1403568006', '1', '0', '0');
INSERT INTO `wplt_config` VALUES ('56', 'SYSTEM_CLOSE_BBS', '4', '官方论坛开关', '5', '0:不关闭
1:关闭', '关闭后在登录页面不再显示官方论坛链接', '1403568006', '1403568006', '1', '0', '0');
INSERT INTO `wplt_config` VALUES ('57', 'LOGIN_BACKGROUP', '1', '登录界面背景图', '5', '', '请输入图片网址，为空时默认使用自带的背景图', '1403568006', '1403570059', '1', '', '0');

-- -----------------------------
-- Table structure for `wplt_coupon`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_coupon`;
;


-- -----------------------------
-- Table structure for `wplt_credit_config`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_credit_config`;
;

-- -----------------------------
-- Records of `wplt_credit_config`
-- -----------------------------
INSERT INTO `wplt_credit_config` VALUES ('1', '关注公众号', 'subscribe', '1398565037', '10', '10', '0');
INSERT INTO `wplt_credit_config` VALUES ('2', '取消关注公众号', 'unsubscribe', '1398565077', '-10', '-10', '0');
INSERT INTO `wplt_credit_config` VALUES ('3', '参与投票', 'vote', '1398565597', '0', '0', '0');
INSERT INTO `wplt_credit_config` VALUES ('4', '参与调研', 'survey', '1398565640', '0', '0', '0');
INSERT INTO `wplt_credit_config` VALUES ('5', '参与考试', 'exam', '1398565659', '0', '0', '0');
INSERT INTO `wplt_credit_config` VALUES ('6', '参与测试', 'test', '1398565681', '0', '0', '0');
INSERT INTO `wplt_credit_config` VALUES ('7', '微信聊天', 'chat', '1398565740', '0', '0', '0');
INSERT INTO `wplt_credit_config` VALUES ('8', '建议意见反馈', 'suggestions', '1398565798', '0', '0', '0');
INSERT INTO `wplt_credit_config` VALUES ('9', '会员卡绑定', 'card_bind', '1398565875', '0', '0', '0');
INSERT INTO `wplt_credit_config` VALUES ('10', '获取优惠卷', 'coupons', '1398565926', '0', '0', '0');
INSERT INTO `wplt_credit_config` VALUES ('11', '访问微网站', 'weisite', '1398565973', '0', '0', '0');
INSERT INTO `wplt_credit_config` VALUES ('12', '查看自定义回复内容', 'custom_reply', '1398566068', '0', '0', '0');
INSERT INTO `wplt_credit_config` VALUES ('13', '填写通用表单', 'forms', '1398566118', '0', '0', '0');
INSERT INTO `wplt_credit_config` VALUES ('14', '访问微商店', 'shop', '1398566206', '0', '0', '0');
INSERT INTO `wplt_credit_config` VALUES ('15', '参与投票', 'vote', '1398758905', '10', '50', 'gh_a23e6c0ae2e3');
INSERT INTO `wplt_credit_config` VALUES ('16', '参与调研', 'survey', '1398759248', '1', '2', 'gh_a23e6c0ae2e3');
INSERT INTO `wplt_credit_config` VALUES ('17', '关注公众号', 'subscribe', '1400145471', '10', '10', '-1');
INSERT INTO `wplt_credit_config` VALUES ('18', '取消关注公众号', 'unsubscribe', '1399989514', '-10', '-10', '-1');
INSERT INTO `wplt_credit_config` VALUES ('19', '获取优惠卷', 'coupons', '1400059943', '0', '0', '-1');

-- -----------------------------
-- Table structure for `wplt_credit_data`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_credit_data`;
;


-- -----------------------------
-- Table structure for `wplt_custom_menu`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_custom_menu`;
;


-- -----------------------------
-- Table structure for `wplt_custom_reply_mult`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_custom_reply_mult`;
;


-- -----------------------------
-- Table structure for `wplt_custom_reply_news`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_custom_reply_news`;
;


-- -----------------------------
-- Table structure for `wplt_custom_reply_text`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_custom_reply_text`;
;


-- -----------------------------
-- Table structure for `wplt_document`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_document`;
;


-- -----------------------------
-- Table structure for `wplt_document_article`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_document_article`;
;

-- -----------------------------
-- Records of `wplt_document_article`
-- -----------------------------
INSERT INTO `wplt_document_article` VALUES ('1', '0', '<h1>
	OneThink1.0正式版发布&nbsp;
</h1>
<p>
	<br />
</p>
<p>
	<strong>OneThink是一个开源的内容管理框架，基于最新的ThinkPHP3.2版本开发，提供更方便、更安全的WEB应用开发体验，采用了全新的架构设计和命名空间机制，融合了模块化、驱动化和插件化的设计理念于一体，开启了国内WEB应用傻瓜式开发的新潮流。&nbsp;</strong> 
</p>
<h2>
	主要特性：
</h2>
<p>
	1. 基于ThinkPHP最新3.2版本。
</p>
<p>
	2. 模块化：全新的架构和模块化的开发机制，便于灵活扩展和二次开发。&nbsp;
</p>
<p>
	3. 文档模型/分类体系：通过和文档模型绑定，以及不同的文档类型，不同分类可以实现差异化的功能，轻松实现诸如资讯、下载、讨论和图片等功能。
</p>
<p>
	4. 开源免费：OneThink遵循Apache2开源协议,免费提供使用。&nbsp;
</p>
<p>
	5. 用户行为：支持自定义用户行为，可以对单个用户或者群体用户的行为进行记录及分享，为您的运营决策提供有效参考数据。
</p>
<p>
	6. 云端部署：通过驱动的方式可以轻松支持平台的部署，让您的网站无缝迁移，内置已经支持SAE和BAE3.0。
</p>
<p>
	7. 云服务支持：即将启动支持云存储、云安全、云过滤和云统计等服务，更多贴心的服务让您的网站更安心。
</p>
<p>
	8. 安全稳健：提供稳健的安全策略，包括备份恢复、容错、防止恶意攻击登录，网页防篡改等多项安全管理功能，保证系统安全，可靠、稳定的运行。&nbsp;
</p>
<p>
	9. 应用仓库：官方应用仓库拥有大量来自第三方插件和应用模块、模板主题，有众多来自开源社区的贡献，让您的网站“One”美无缺。&nbsp;
</p>
<p>
	<br />
</p>
<p>
	<strong>&nbsp;OneThink集成了一个完善的后台管理体系和前台模板标签系统，让你轻松管理数据和进行前台网站的标签式开发。&nbsp;</strong> 
</p>
<p>
	<br />
</p>
<h2>
	后台主要功能：
</h2>
<p>
	1. 用户Passport系统
</p>
<p>
	2. 配置管理系统&nbsp;
</p>
<p>
	3. 权限控制系统
</p>
<p>
	4. 后台建模系统&nbsp;
</p>
<p>
	5. 多级分类系统&nbsp;
</p>
<p>
	6. 用户行为系统&nbsp;
</p>
<p>
	7. 钩子和插件系统
</p>
<p>
	8. 系统日志系统&nbsp;
</p>
<p>
	9. 数据备份和还原
</p>
<p>
	<br />
</p>
<p>
	&nbsp;[ 官方下载：&nbsp;<a href=\"http://www.onethink.cn/download.html\" target=\"_blank\">http://www.onethink.cn/download.html</a>&nbsp;&nbsp;开发手册：<a href=\"http://document.onethink.cn/\" target=\"_blank\">http://document.onethink.cn/</a>&nbsp;]&nbsp;
</p>
<p>
	<br />
</p>
<p>
	<strong>OneThink开发团队 2013</strong> 
</p>', '', '0');

-- -----------------------------
-- Table structure for `wplt_document_download`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_document_download`;
;


-- -----------------------------
-- Table structure for `wplt_exam`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_exam`;
;


-- -----------------------------
-- Table structure for `wplt_exam_answer`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_exam_answer`;
;


-- -----------------------------
-- Table structure for `wplt_exam_question`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_exam_question`;
;


-- -----------------------------
-- Table structure for `wplt_extensions`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_extensions`;
;


-- -----------------------------
-- Table structure for `wplt_file`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_file`;
;


-- -----------------------------
-- Table structure for `wplt_follow`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_follow`;
;


-- -----------------------------
-- Table structure for `wplt_forms`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_forms`;
;


-- -----------------------------
-- Table structure for `wplt_forms_attribute`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_forms_attribute`;
;


-- -----------------------------
-- Table structure for `wplt_forms_value`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_forms_value`;
;


-- -----------------------------
-- Table structure for `wplt_forum`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_forum`;
;


-- -----------------------------
-- Table structure for `wplt_hooks`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_hooks`;
;

-- -----------------------------
-- Records of `wplt_hooks`
-- -----------------------------
INSERT INTO `wplt_hooks` VALUES ('1', 'pageHeader', '页面header钩子，一般用于加载插件CSS文件和代码', '1', '0', '');
INSERT INTO `wplt_hooks` VALUES ('2', 'pageFooter', '页面footer钩子，一般用于加载插件JS文件和JS代码', '1', '0', 'ReturnTop,BaiduStatistics');
INSERT INTO `wplt_hooks` VALUES ('3', 'documentEditForm', '添加编辑表单的 扩展内容钩子', '1', '0', 'Attachment');
INSERT INTO `wplt_hooks` VALUES ('4', 'documentDetailAfter', '文档末尾显示', '1', '0', 'Attachment,SocialComment');
INSERT INTO `wplt_hooks` VALUES ('5', 'documentDetailBefore', '页面内容前显示用钩子', '1', '0', '');
INSERT INTO `wplt_hooks` VALUES ('6', 'documentSaveComplete', '保存文档数据后的扩展钩子', '2', '0', 'Attachment');
INSERT INTO `wplt_hooks` VALUES ('7', 'documentEditFormContent', '添加编辑表单的内容显示钩子', '1', '0', 'Editor');
INSERT INTO `wplt_hooks` VALUES ('8', 'adminArticleEdit', '后台内容编辑页编辑器', '1', '1378982734', 'EditorForAdmin');
INSERT INTO `wplt_hooks` VALUES ('13', 'AdminIndex', '首页小格子个性化显示', '1', '1382596073', 'SiteStat,SystemInfo,DevTeam');
INSERT INTO `wplt_hooks` VALUES ('14', 'topicComment', '评论提交方式扩展钩子。', '1', '1380163518', 'Editor');
INSERT INTO `wplt_hooks` VALUES ('16', 'app_begin', '应用开始', '2', '1384481614', '');
INSERT INTO `wplt_hooks` VALUES ('17', 'weixin', '微信插件必须加载的钩子', '1', '1388810858', 'Vote,Chat,Wecome,UserCenter,Robot,Suggestions,Extensions,Card,WeiSite,Hitegg,Leaflets,CustomReply,Forms,Survey,Exam,Test,Diy,Shop,CustomMenu,Coupon,Scratch,Juhe,Tongji,HelloWorld');
INSERT INTO `wplt_hooks` VALUES ('18', 'cascade', '级联菜单', '1', '1398694587', 'Cascade');
INSERT INTO `wplt_hooks` VALUES ('19', 'page_diy', '万能页面的钩子', '1', '1399040364', 'Diy');

-- -----------------------------
-- Table structure for `wplt_import`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_import`;
;


-- -----------------------------
-- Table structure for `wplt_keyword`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_keyword`;
;


-- -----------------------------
-- Table structure for `wplt_member`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_member`;
;

-- -----------------------------
-- Records of `wplt_member`
-- -----------------------------
INSERT INTO `wplt_member` VALUES ('1', 'alkaid', '0', '0000-00-00', '', '0', '3', '0', '1430486033', '0', '1430639655', '1', '', '');
INSERT INTO `wplt_member` VALUES ('363', 'test', '0', '0000-00-00', '', '0', '1', '0', '1430638108', '0', '1430638108', '1', '', '');

-- -----------------------------
-- Table structure for `wplt_member_public`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_member_public`;
;

-- -----------------------------
-- Records of `wplt_member_public`
-- -----------------------------
INSERT INTO `wplt_member_public` VALUES ('107', '363', 'test', 'gh_8006af1d66c7', 'gh_8006af1d66c7', '', '', '', '', '', 'gh_8006af1d66c7', '2', 'wx3fa9c7e89fd2ea45', '9017bcac9f55a4dc2cbf2c04c124c5c9', '0', '');
INSERT INTO `wplt_member_public` VALUES ('108', '363', 'test2', 'gh_8006af1d66c8', 'aiweier', '', '', '', '', '', 'gh_8006af1d66c8', '2', 'sfdsdf', '', '0', '');

-- -----------------------------
-- Table structure for `wplt_member_public_group`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_member_public_group`;
;


-- -----------------------------
-- Table structure for `wplt_member_public_link`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_member_public_link`;
;

-- -----------------------------
-- Records of `wplt_member_public_link`
-- -----------------------------
INSERT INTO `wplt_member_public_link` VALUES ('114', '363', '107', '1', '', '0');
INSERT INTO `wplt_member_public_link` VALUES ('115', '363', '108', '1', '', '1');

-- -----------------------------
-- Table structure for `wplt_member_public_token_io`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_member_public_token_io`;
;


-- -----------------------------
-- Table structure for `wplt_menu`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_menu`;
;

-- -----------------------------
-- Records of `wplt_menu`
-- -----------------------------
INSERT INTO `wplt_menu` VALUES ('1', '首页', '0', '0', 'Index/index', '1', '', '', '1');
INSERT INTO `wplt_menu` VALUES ('2', '内容', '0', '2', 'Article/mydocument', '1', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('3', '文档列表', '2', '0', 'article/index', '1', '', '内容', '0');
INSERT INTO `wplt_menu` VALUES ('4', '新增', '3', '0', 'article/add', '0', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('5', '编辑', '3', '0', 'article/edit', '0', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('6', '改变状态', '3', '0', 'article/setStatus', '0', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('7', '保存', '3', '0', 'article/update', '0', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('8', '保存草稿', '3', '0', 'article/autoSave', '0', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('9', '移动', '3', '0', 'article/move', '0', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('10', '复制', '3', '0', 'article/copy', '0', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('11', '粘贴', '3', '0', 'article/paste', '0', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('12', '导入', '3', '0', 'article/batchOperate', '0', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('13', '回收站', '2', '0', 'article/recycle', '1', '', '内容', '0');
INSERT INTO `wplt_menu` VALUES ('14', '还原', '13', '0', 'article/permit', '0', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('15', '清空', '13', '0', 'article/clear', '0', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('16', '用户', '0', '2', 'User/index', '0', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('17', '用户信息', '16', '0', 'User/index', '0', '', '用户管理', '0');
INSERT INTO `wplt_menu` VALUES ('18', '新增用户', '17', '0', 'User/add', '0', '添加新用户', '', '0');
INSERT INTO `wplt_menu` VALUES ('19', '用户行为', '16', '0', 'User/action', '0', '', '行为管理', '0');
INSERT INTO `wplt_menu` VALUES ('20', '新增用户行为', '19', '0', 'User/addaction', '0', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('21', '编辑用户行为', '19', '0', 'User/editaction', '0', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('22', '保存用户行为', '19', '0', 'User/saveAction', '0', '\"用户->用户行为\"保存编辑和新增的用户行为', '', '0');
INSERT INTO `wplt_menu` VALUES ('23', '变更行为状态', '19', '0', 'User/setStatus', '0', '\"用户->用户行为\"中的启用,禁用和删除权限', '', '0');
INSERT INTO `wplt_menu` VALUES ('24', '禁用会员', '19', '0', 'User/changeStatus?method=forbidUser', '0', '\"用户->用户信息\"中的禁用', '', '0');
INSERT INTO `wplt_menu` VALUES ('25', '启用会员', '19', '0', 'User/changeStatus?method=resumeUser', '0', '\"用户->用户信息\"中的启用', '', '0');
INSERT INTO `wplt_menu` VALUES ('26', '删除会员', '19', '0', 'User/changeStatus?method=deleteUser', '0', '\"用户->用户信息\"中的删除', '', '0');
INSERT INTO `wplt_menu` VALUES ('27', '权限管理', '16', '0', 'AuthManager/index', '1', '', '用户管理', '0');
INSERT INTO `wplt_menu` VALUES ('28', '删除', '27', '0', 'AuthManager/changeStatus?method=deleteGroup', '0', '删除用户组', '', '0');
INSERT INTO `wplt_menu` VALUES ('29', '禁用', '27', '0', 'AuthManager/changeStatus?method=forbidGroup', '0', '禁用用户组', '', '0');
INSERT INTO `wplt_menu` VALUES ('30', '恢复', '27', '0', 'AuthManager/changeStatus?method=resumeGroup', '0', '恢复已禁用的用户组', '', '0');
INSERT INTO `wplt_menu` VALUES ('31', '新增', '27', '0', 'AuthManager/createGroup', '0', '创建新的用户组', '', '0');
INSERT INTO `wplt_menu` VALUES ('32', '编辑', '27', '0', 'AuthManager/editGroup', '0', '编辑用户组名称和描述', '', '0');
INSERT INTO `wplt_menu` VALUES ('33', '保存用户组', '27', '0', 'AuthManager/writeGroup', '0', '新增和编辑用户组的\"保存\"按钮', '', '0');
INSERT INTO `wplt_menu` VALUES ('34', '授权', '27', '0', 'AuthManager/group', '0', '\"后台 \\ 用户 \\ 用户信息\"列表页的\"授权\"操作按钮,用于设置用户所属用户组', '', '0');
INSERT INTO `wplt_menu` VALUES ('35', '访问授权', '27', '0', 'AuthManager/access', '0', '\"后台 \\ 用户 \\ 权限管理\"列表页的\"访问授权\"操作按钮', '', '0');
INSERT INTO `wplt_menu` VALUES ('36', '成员授权', '27', '0', 'AuthManager/user', '0', '\"后台 \\ 用户 \\ 权限管理\"列表页的\"成员授权\"操作按钮', '', '0');
INSERT INTO `wplt_menu` VALUES ('37', '解除授权', '27', '0', 'AuthManager/removeFromGroup', '0', '\"成员授权\"列表页内的解除授权操作按钮', '', '0');
INSERT INTO `wplt_menu` VALUES ('38', '保存成员授权', '27', '0', 'AuthManager/addToGroup', '0', '\"用户信息\"列表页\"授权\"时的\"保存\"按钮和\"成员授权\"里右上角的\"添加\"按钮)', '', '0');
INSERT INTO `wplt_menu` VALUES ('39', '分类授权', '27', '0', 'AuthManager/category', '0', '\"后台 \\ 用户 \\ 权限管理\"列表页的\"分类授权\"操作按钮', '', '0');
INSERT INTO `wplt_menu` VALUES ('40', '保存分类授权', '27', '0', 'AuthManager/addToCategory', '0', '\"分类授权\"页面的\"保存\"按钮', '', '0');
INSERT INTO `wplt_menu` VALUES ('41', '模型授权', '27', '0', 'AuthManager/modelauth', '0', '\"后台 \\ 用户 \\ 权限管理\"列表页的\"模型授权\"操作按钮', '', '0');
INSERT INTO `wplt_menu` VALUES ('42', '保存模型授权', '27', '0', 'AuthManager/addToModel', '0', '\"分类授权\"页面的\"保存\"按钮', '', '0');
INSERT INTO `wplt_menu` VALUES ('43', '插件管理', '0', '7', 'Addons/weixin', '0', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('44', '插件管理', '43', '1', 'Addons/index', '0', '', '扩展', '0');
INSERT INTO `wplt_menu` VALUES ('45', '创建', '44', '0', 'Addons/create', '0', '服务器上创建插件结构向导', '', '0');
INSERT INTO `wplt_menu` VALUES ('46', '检测创建', '44', '0', 'Addons/checkForm', '0', '检测插件是否可以创建', '', '0');
INSERT INTO `wplt_menu` VALUES ('47', '预览', '44', '0', 'Addons/preview', '0', '预览插件定义类文件', '', '0');
INSERT INTO `wplt_menu` VALUES ('48', '快速生成插件', '44', '0', 'Addons/build', '0', '开始生成插件结构', '', '0');
INSERT INTO `wplt_menu` VALUES ('49', '设置', '44', '0', 'Addons/config', '0', '设置插件配置', '', '0');
INSERT INTO `wplt_menu` VALUES ('50', '禁用', '44', '0', 'Addons/disable', '0', '禁用插件', '', '0');
INSERT INTO `wplt_menu` VALUES ('51', '启用', '44', '0', 'Addons/enable', '0', '启用插件', '', '0');
INSERT INTO `wplt_menu` VALUES ('52', '安装', '44', '0', 'Addons/install', '0', '安装插件', '', '0');
INSERT INTO `wplt_menu` VALUES ('53', '卸载', '44', '0', 'Addons/uninstall', '0', '卸载插件', '', '0');
INSERT INTO `wplt_menu` VALUES ('54', '更新配置', '44', '0', 'Addons/saveconfig', '0', '更新插件配置处理', '', '0');
INSERT INTO `wplt_menu` VALUES ('55', '插件后台列表', '44', '0', 'Addons/adminList', '0', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('56', 'URL方式访问插件', '44', '0', 'Addons/execute', '0', '控制是否有权限通过url访问插件控制器方法', '', '0');
INSERT INTO `wplt_menu` VALUES ('57', '钩子管理', '43', '3', 'Addons/hooks', '0', '', '扩展', '0');
INSERT INTO `wplt_menu` VALUES ('58', '模型管理', '68', '3', 'Model/index', '0', '', '系统设置', '0');
INSERT INTO `wplt_menu` VALUES ('59', '新增', '58', '0', 'model/add', '1', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('60', '编辑', '58', '0', 'model/edit', '1', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('61', '改变状态', '58', '0', 'model/setStatus', '1', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('62', '保存数据', '58', '0', 'model/update', '1', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('63', '属性管理', '68', '0', 'Attribute/index', '1', '网站属性配置。', '', '0');
INSERT INTO `wplt_menu` VALUES ('64', '新增', '63', '0', 'Attribute/add', '0', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('65', '编辑', '63', '0', 'Attribute/edit', '0', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('66', '改变状态', '63', '0', 'Attribute/setStatus', '0', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('67', '保存数据', '63', '0', 'Attribute/update', '0', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('68', '系统', '0', '1', 'Config/group', '0', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('69', '网站设置', '68', '1', 'Config/group', '0', '', '系统设置', '0');
INSERT INTO `wplt_menu` VALUES ('70', '配置管理', '68', '4', 'Config/index', '0', '', '系统设置', '0');
INSERT INTO `wplt_menu` VALUES ('71', '编辑', '70', '0', 'Config/edit', '0', '新增编辑和保存配置', '', '0');
INSERT INTO `wplt_menu` VALUES ('72', '删除', '70', '0', 'Config/del', '0', '删除配置', '', '0');
INSERT INTO `wplt_menu` VALUES ('73', '新增', '70', '0', 'Config/add', '0', '新增配置', '', '0');
INSERT INTO `wplt_menu` VALUES ('74', '保存', '70', '0', 'Config/save', '0', '保存配置', '', '0');
INSERT INTO `wplt_menu` VALUES ('75', '菜单管理', '68', '5', 'Menu/index', '0', '', '系统设置', '0');
INSERT INTO `wplt_menu` VALUES ('76', '导航管理', '68', '6', 'Channel/index', '1', '', '系统设置', '0');
INSERT INTO `wplt_menu` VALUES ('77', '新增', '76', '0', 'Channel/add', '0', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('78', '编辑', '76', '0', 'Channel/edit', '0', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('79', '删除', '76', '0', 'Channel/del', '0', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('80', '分类管理', '68', '2', 'Category/index', '1', '', '系统设置', '0');
INSERT INTO `wplt_menu` VALUES ('81', '编辑', '80', '0', 'Category/edit', '0', '编辑和保存栏目分类', '', '0');
INSERT INTO `wplt_menu` VALUES ('82', '新增', '80', '0', 'Category/add', '0', '新增栏目分类', '', '0');
INSERT INTO `wplt_menu` VALUES ('83', '删除', '80', '0', 'Category/remove', '0', '删除栏目分类', '', '0');
INSERT INTO `wplt_menu` VALUES ('84', '移动', '80', '0', 'Category/operate/type/move', '0', '移动栏目分类', '', '0');
INSERT INTO `wplt_menu` VALUES ('85', '合并', '80', '0', 'Category/operate/type/merge', '0', '合并栏目分类', '', '0');
INSERT INTO `wplt_menu` VALUES ('86', '备份数据库', '68', '0', 'Database/index?type=export', '0', '', '数据备份', '0');
INSERT INTO `wplt_menu` VALUES ('87', '备份', '86', '0', 'Database/export', '0', '备份数据库', '', '0');
INSERT INTO `wplt_menu` VALUES ('88', '优化表', '86', '0', 'Database/optimize', '0', '优化数据表', '', '0');
INSERT INTO `wplt_menu` VALUES ('89', '修复表', '86', '0', 'Database/repair', '0', '修复数据表', '', '0');
INSERT INTO `wplt_menu` VALUES ('90', '还原数据库', '68', '0', 'Database/index?type=import', '0', '', '数据备份', '0');
INSERT INTO `wplt_menu` VALUES ('91', '恢复', '90', '0', 'Database/import', '0', '数据库恢复', '', '0');
INSERT INTO `wplt_menu` VALUES ('92', '删除', '90', '0', 'Database/del', '0', '删除备份文件', '', '0');
INSERT INTO `wplt_menu` VALUES ('93', '其他', '0', '5', 'other', '1', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('96', '新增', '75', '0', 'Menu/add', '0', '', '系统设置', '0');
INSERT INTO `wplt_menu` VALUES ('98', '编辑', '75', '0', 'Menu/edit', '0', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('104', '下载管理', '102', '0', 'Think/lists?model=download', '0', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('105', '配置管理', '102', '0', 'Think/lists?model=config', '0', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('106', '行为日志', '16', '0', 'Action/actionlog', '0', '', '行为管理', '0');
INSERT INTO `wplt_menu` VALUES ('108', '修改密码', '16', '0', 'User/updatePassword', '1', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('109', '修改昵称', '16', '0', 'User/updateNickname', '1', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('110', '查看行为日志', '106', '0', 'action/edit', '1', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('112', '新增数据', '58', '0', 'think/add', '1', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('113', '编辑数据', '58', '0', 'think/edit', '1', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('114', '导入', '75', '0', 'Menu/import', '0', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('115', '生成', '58', '0', 'Model/generate', '1', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('116', '新增钩子', '57', '0', 'Addons/addHook', '0', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('117', '编辑钩子', '57', '0', 'Addons/edithook', '0', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('118', '文档排序', '3', '0', 'Article/sort', '1', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('119', '排序', '70', '0', 'Config/sort', '1', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('120', '排序', '75', '0', 'Menu/sort', '1', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('121', '排序', '76', '0', 'Channel/sort', '1', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('124', '微信插件', '43', '0', 'admin/addons/weixin', '0', '', '扩展', '0');
INSERT INTO `wplt_menu` VALUES ('126', '公众号等级', '16', '0', 'admin/PublicGroup/PublicGroup', '0', '', '公众号管理', '0');
INSERT INTO `wplt_menu` VALUES ('127', '公众号管理', '16', '1', 'admin/PublicGroup/PublicAdmin', '0', '', '公众号管理', '0');
INSERT INTO `wplt_menu` VALUES ('128', '在线升级', '68', '5', 'admin/update/index', '0', '', '系统设置', '0');
INSERT INTO `wplt_menu` VALUES ('129', '清除缓存', '68', '10', 'admin/Update/delcache', '0', '', '系统设置', '0');
INSERT INTO `wplt_menu` VALUES ('130', '应用商店', '0', '8', 'admin/store/index', '0', '', '', '0');
INSERT INTO `wplt_menu` VALUES ('131', '素材图标', '130', '2', 'admin/store/index?type=material', '0', '', '应用类型', '0');
INSERT INTO `wplt_menu` VALUES ('132', '微站模板', '130', '1', 'admin/store/index?type=template', '0', '', '应用类型', '0');
INSERT INTO `wplt_menu` VALUES ('133', '我是开发者', '130', '1', '/index.php?s=/home/developer/myApps', '0', '', '开发者', '0');
INSERT INTO `wplt_menu` VALUES ('134', '新手安装指南', '130', '0', 'admin/store/index?type=help', '0', '', '我是站长', '0');
INSERT INTO `wplt_menu` VALUES ('135', '万能页面', '130', '3', 'admin/store/index?type=diy', '0', '', '应用类型', '0');
INSERT INTO `wplt_menu` VALUES ('136', '上传新应用', '130', '2', '/index.php?s=/home/developer/submitApp', '0', '', '开发者', '0');
INSERT INTO `wplt_menu` VALUES ('137', '二次开发教程', '130', '3', '/wiki', '0', '', '开发者', '0');
INSERT INTO `wplt_menu` VALUES ('138', '网站信息', '130', '0', 'admin/store/index?type=home', '0', '', '我是站长', '0');
INSERT INTO `wplt_menu` VALUES ('139', '充值记录', '130', '0', 'admin/store/index?type=recharge', '0', '', '我是站长', '0');
INSERT INTO `wplt_menu` VALUES ('140', '消费记录', '130', '0', 'admin/store/index?type=bug', '0', '', '我是站长', '0');
INSERT INTO `wplt_menu` VALUES ('141', '官方交流论坛', '130', '4', '/bbs', '0', '', '开发者', '0');
INSERT INTO `wplt_menu` VALUES ('142', '在线充值', '130', '0', 'admin/store/index?type=online_recharge', '0', '', '我是站长', '0');
INSERT INTO `wplt_menu` VALUES ('143', '微信插件', '130', '0', 'admin/store/index?type=addon', '0', '', '应用类型', '0');

-- -----------------------------
-- Table structure for `wplt_model`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_model`;
;

-- -----------------------------
-- Records of `wplt_model`
-- -----------------------------
INSERT INTO `wplt_model` VALUES ('6', 'vote', '投票', '0', '', '1', '{\"1\":[\"keyword\",\"title\",\"description\",\"picurl\",\"type\",\"start_date\",\"end_date\"]}', '1:基础', '', '', '', '', 'id:投票ID
keyword:关键词
title:投票标题
type|get_name_by_status:类型
is_img|get_name_by_status:状态
vote_count:投票数
ids:操作:show&id=[id]|预览,[EDIT]&id=[id]|编辑,[DELETE]|删除', '20', 'title', 'description', '1388930292', '1401017026', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('152', 'document', '基础文档', '0', '', '1', '{\"1\":[\"uid\",\"name\",\"title\",\"category_id\",\"description\",\"root\",\"pid\",\"model_id\",\"type\",\"position\",\"link_id\",\"cover_id\",\"display\",\"deadline\",\"attach\",\"view\",\"comment\",\"extend\",\"level\",\"create_time\",\"update_time\",\"status\"]}', '1:基础', '', '', '', '', 'id:编号
title:标题:article/index?cate_id=[category_id]&pid=[id]
type|get_document_type:类型
level:优先级
update_time|time_format:最后更新
status_text:状态
view:浏览
id:操作:[EDIT]&cate_id=[category_id]|编辑,article/setstatus?status=-1&ids=[id]|删除', '0', '', '', '1383891233', '1384507827', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('5', 'keyword', '关键词表', '0', '', '1', '{\"1\":[\"keyword\",\"keyword_type\",\"addon\",\"aim_id\",\"keyword_length\",\"cTime\",\"extra_text\",\"extra_int\"]}', '1:基础', '', '', '', '', 'id:编号
keyword:关键词
addon:所属插件
aim_id:插件数据ID
cTime|time_format:增加时间
request_count|intval:请求数
id:操作:[EDIT]|编辑,[DELETE]|删除', '10', 'keyword', '', '1388815871', '1407251192', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('7', 'vote_option', '投票选项', '0', '', '1', '', '1:基础', '', '', '', '', '', '10', '', '', '1388933346', '1388933346', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('8', 'vote_log', '投票记录', '0', '', '1', '', '1:基础', '', '', '', '', '', '10', '', '', '1388934136', '1388934136', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('11', 'member_public', '公众号管理', '0', '', '1', '{\"1\":[\"public_name\",\"public_id\",\"wechat\",\"type\",\"appid\",\"secret\",\"encodingaeskey\"]}', '1:基础', '', '', '', '', 'id:公众号ID
public_name:公众号名称
type|get_name_by_status:类型
group_id|get_public_group_name:等级
token:Token
uid:管理员
ids:操作:[EDIT]|编辑,[DELETE]|删除,changPublic&id=[id]|切换为当前公众号,help&public_id=[id]#weixin_set|接口配置', '20', 'public_name', '', '1391575109', '1416973450', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('30', 'card_member', '会员卡成员', '0', '', '1', '{\"1\":[\"username\",\"phone\"]}', '1:基础', '', '', '', '', 'number:卡号
username:姓名
phone:手机号
cTime|time_format:加入时间
id:操作:[EDIT]|编辑,[DELETE]|删除', '10', 'username', '', '1395482804', '1395484751', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('13', 'member_public_group', '公众号等级', '0', '', '1', '{\"1\":[\"title\",\"addon_status\"]}', '1:基础', '', '', '', '', 'id:等级ID
title:等级名
addon_status:授权的插件
public_count:公众号数
id:操作:editPublicGroup&id=[id]|编辑,delPublicGroup&id=[id]|删除', '10', 'title', '', '1393724788', '1393730663', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('14', 'update_version', '系统版本升级', '0', '', '1', '{\"1\":[\"version\",\"title\",\"description\",\"create_date\",\"package\"]}', '1:基础', '', '', '', '', 'version:版本号
title:升级包名
description:描述
create_date|time_format:创建时间
download_count:下载统计数
id:操作:[EDIT]&id=[id]|编辑,[DELETE]&id=[id]|删除', '10', '', '', '1393770420', '1393771807', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('22', 'extensions', '融合第三方', '0', '', '1', '{\"1\":[\"keyword\",\"keyword_type\",\"keyword_filter\",\"output_format\",\"api_url\",\"api_token\"]}', '1:基础', '', '', '', '', 'keyword:关键词
keyword_filter|get_name_by_status:关键词过滤
output_format|get_name_by_status:数据输出格式
api_url:第三方地址
api_token:Token
cTime|time_format:增加时间
id:操作:[EDIT]|编辑,[DELETE]|删除', '10', 'keyword', '', '1393911774', '1394721892', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('16', 'forum', '论坛区', '0', '', '1', '', '1:基础', '', '', '', '', '', '10', '', '', '1394033250', '1394033250', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('17', 'store', '应用商店', '0', '', '1', '{\"1\":[\"type\",\"title\",\"price\",\"attach\",\"logo\",\"content\",\"img_1\",\"img_2\",\"img_3\",\"img_4\",\"is_top\",\"audit\",\"audit_time\"]}', '1:基础', '', '', '', '', 'id:ID值
type|get_name_by_status:应用类型
title:应用标题
price:价格
logo|get_img_html:应用LOGO
mTime|time_format:更新时间
audit|get_name_by_status:审核状态
audit_time|time_format:审核时间
id:操作:[EDIT]|编辑,[DELETE]|删除', '10', 'title', '', '1394033250', '1402885526', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('18', 'suggestions', '建议意见', '0', '', '1', '{\"1\":[\"content\",\"nickname\",\"mobile\"]}', '1:基础', '', '', '', '', 'nickname:昵称
content:内容
mobile:联系方式
cTime|time_format:创建时间
id:操作:[EDIT]&id=[id]|编辑,[DELETE]&id=[id]|删除', '10', 'content', '', '1393234169', '1400687145', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('85', 'custom_menu', '自定义菜单', '0', '', '1', '{\"1\":[\"sort\",\"pid\",\"title\",\"type\",\"keyword\",\"url\"]}', '1:基础', '', '', '', '', 'title:10%菜单名
type|get_name_by_status:类型
keyword:10%关联关键词
url:50%关联URL
sort:5%排序号
id:10%操作:[EDIT]|编辑,[DELETE]|删除', '10', 'title', '', '1394518309', '1416811657', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('31', 'card_notice', '会员卡通知', '0', '', '1', '{\"1\":[\"title\",\"content\"]}', '1:基础', '', '', '', '', 'title:标题
cTime|time_format:发布时间
id:操作:[EDIT]|编辑,[DELETE]|删除', '10', 'title', '', '1395485156', '1395485486', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('33', 'weisite_category', '微官网分类', '0', '', '1', '{\"1\":[\"title\",\"icon\",\"url\",\"is_show\",\"sort\"]}', '1:基础', '', '', '', '', 'title:15%分类标题
icon|get_img_html:分类图片
url:30%外链
sort:10%排序号
is_show|get_name_by_status:10%显示
id:10%操作:[EDIT]|编辑,[DELETE]|删除', '10', 'title', '', '1395987942', '1417401746', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('34', 'weisite_cms', '文章管理', '0', '', '1', '{\"1\":[\"keyword\",\"keyword_type\",\"title\",\"intro\",\"cate_id\",\"cover\",\"content\",\"sort\"]}', '1:基础', '', '', '', '', 'keyword:关键词
keyword_type|get_name_by_status:关键词类型
title:标题
cate_id:所属分类
sort:排序号
view_count:浏览数
id:操作:[EDIT]&module_id=[pid]|编辑,[DELETE]|删除', '10', 'title', '', '1396061373', '1408326292', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('35', 'weisite_slideshow', '幻灯片', '0', '', '1', '{\"1\":[\"title\",\"img\",\"url\",\"is_show\",\"sort\"]}', '1:基础', '', '', '', '', 'title:标题
img:图片
url:链接地址
is_show|get_name_by_status:显示
sort:排序
id:操作:[EDIT]&module_id=[pid]|编辑,[DELETE]|删除', '10', 'title', '', '1396098264', '1408323347', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('36', 'weisite_footer', '底部导航', '0', '', '1', '{\"1\":[\"pid\",\"title\",\"url\",\"sort\"]}', '1:基础', '', '', '', '', 'title:菜单名
icon:图标
url:关联URL
sort:排序号
id:操作:[EDIT]|编辑,[DELETE]|删除', '10', 'title', '', '1394518309', '1396507698', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('62', 'custom_reply_text', '文本回复', '0', '', '1', '{\"1\":[\"keyword\",\"keyword_type\",\"content\",\"sort\"]}', '1:基础', '', '', '', '', 'id:ID
keyword:关键词
keyword_type|get_name_by_status:关键词类型
sort:排序号
view_count:浏览数
id:操作:[EDIT]|编辑,[DELETE]|删除', '10', 'keyword', '', '1396578172', '1401017369', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('64', 'custom_reply_news', '图文回复', '0', '', '1', '{\"1\":[\"keyword\",\"keyword_type\",\"title\",\"intro\",\"cate_id\",\"cover\",\"content\",\"sort\"]}', '1:基础', '', '', '', '', 'id:5%ID
keyword:10%关键词
keyword_type|get_name_by_status:20%关键词类型
title:30%标题
cate_id:10%所属分类
sort:7%排序号
view_count:8%浏览数
id:10%操作:[EDIT]|编辑,[DELETE]|删除', '10', 'title', '', '1396061373', '1401368247', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('65', 'custom_reply_mult', '多图文配置', '0', '', '1', '', '1:基础', '', '', '', '', '', '10', '', '', '1396602475', '1396602475', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('69', 'forms', '通用表单', '0', '', '1', '{\"1\":[\"keyword\",\"keyword_type\",\"title\",\"intro\",\"cover\",\"can_edit\",\"finish_tip\",\"jump_url\",\"content\"]}', '1:基础', '', '', '', '', 'id:通用表单ID
keyword:关键词
keyword_type|get_name_by_status:关键词类型
title:标题
cTime|time_format:发布时间
id:操作:[EDIT]|编辑,[DELETE]|删除,forms_attribute&id=[id]|字段管理,forms_value&id=[id]|数据管理,preview&id=[id]|预览', '10', 'title', '', '1396061373', '1401017094', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('70', 'forms_attribute', '表单字段', '0', '', '1', '{\"1\":[\"name\",\"title\",\"type\",\"extra\",\"value\",\"remark\",\"is_must\",\"validate_rule\",\"error_info\",\"sort\"]}', '1:基础', '', '', '', '', 'title:字段标题
name:字段名
type|get_name_by_status:字段类型
id:操作:[EDIT]&forms_id=[forms_id]|编辑,[DELETE]|删除', '10', 'title', '', '1396061373', '1396710959', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('71', 'forms_value', '通用表单数据', '0', '', '1', '', '1:基础', '', '', '', '', '', '10', '', '', '1396687959', '1396687959', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('73', 'survey', '调研问卷', '0', '', '1', '{\"1\":[\"keyword\",\"keyword_type\",\"title\",\"cover\",\"intro\",\"finish_tip\"]}', '1:基础', '', '', '', '', 'id:微调研ID
keyword:关键词
keyword_type|get_name_by_status:关键词类型
title:标题
cTime|time_format:发布时间
id:操作:[EDIT]|编辑,[DELETE]|删除,survey_question&id=[id]|问题管理,survey_answer&id=[id]|数据管理,preview&id=[id]|预览', '10', 'title', '', '1396061373', '1401017145', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('74', 'survey_question', '调研问题', '0', '', '1', '{\"1\":[\"title\",\"type\",\"extra\",\"intro\",\"is_must\",\"sort\"]}', '1:基础', '', '', '', '', 'title:标题
type|get_name_by_status:问题类型
is_must|get_name_by_status:是否必填
id:操作:[EDIT]|编辑,[DELETE]|删除', '10', 'title', '', '1396061373', '1396955090', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('75', 'survey_answer', '调研回答', '0', '', '1', '', '1:基础', '', '', '', '', 'openid:OpenId
truename:姓名
mobile:手机号
cTime|time_format:发布时间
id:操作:detail?uid=[uid]&survey_id=[survey_id]|回答内容', '10', 'title', '', '1396061373', '1397011511', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('76', 'exam', '考试试卷', '0', '', '1', '{\"1\":[\"keyword\",\"keyword_type\",\"title\",\"cover\",\"intro\",\"start_time\",\"end_time\",\"finish_tip\"]}', '1:基础', '', '', '', '', 'id:微考试ID
keyword:关键词
keyword_type|get_name_by_status:关键词类型
title:试卷标题
start_time|time_format:开始时间
end_time|time_format:结束时间
id:操作:[EDIT]|编辑,[DELETE]|删除,exam_question&id=[id]|题目管理,exam_answer&id=[id]|考生成绩,preview&id=[id]|试卷预览', '10', 'title', '', '1396061373', '1401017190', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('77', 'exam_question', '考试题目', '0', '', '1', '{\"1\":[\"title\",\"type\",\"extra\",\"intro\",\"is_must\",\"sort\"]}', '1:基础', '', '', '', '', 'title:标题
type|get_name_by_status:题目类型
score:分值
id:操作:[EDIT]|编辑,[DELETE]|删除', '10', 'title', '', '1396061373', '1397035409', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('78', 'exam_answer', '考试回答', '0', '', '1', '', '1:基础', '', '', '', '', 'openid:OpenId
truename:姓名
mobile:手机号
score:成绩
cTime|time_format:考试时间
id:操作:detail?uid=[uid]&exam_id=[exam_id]|答题详情', '10', 'title', '', '1396061373', '1397036455', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('79', 'test', '测试问卷', '0', '', '1', '{\"1\":[\"keyword\",\"keyword_type\",\"title\",\"cover\",\"intro\",\"finish_tip\"]}', '1:基础', '', '', '', '', 'id:微测试ID
keyword:关键词
keyword_type|get_name_by_status:关键词类型
title:问卷标题
id:操作:[EDIT]|编辑,[DELETE]|删除,test_question&id=[id]|题目管理,test_answer&id=[id]|用户记录,preview&id=[id]|问卷预览', '10', 'title', '', '1396061373', '1401017218', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('80', 'test_question', '测试题目', '0', '', '1', '{\"1\":[\"title\",\"extra\",\"intro\",\"sort\"]}', '1:基础', '', '', '', '', 'id:问题编号
title:标题
extra:参数
ids:操作:[EDIT]|编辑,[DELETE]|删除', '10', 'title', '', '1396061373', '1397145854', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('81', 'test_answer', '测试回答', '0', '', '1', '', '1:基础', '', '', '', '', 'openid:OpenId
truename:姓名
mobile:手机号
score:得分
cTime|time_format:测试时间
id:操作:detail?uid=[uid]&test_id=[test_id]|答题详情', '10', 'title', '', '1396061373', '1397145984', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('83', 'shop_product', '微商店商品', '0', '', '1', '{\"1\":[\"title\",\"cover\",\"intro\",\"cate_id\",\"market_price\",\"discount_price\",\"buy_url\",\"ad_url\",\"content\",\"param\",\"img_1\",\"img_2\",\"img_3\",\"img_4\",\"img_5\"]}', '1:基础', '', '', '', '', 'id:商品ID
cover|get_img_html:图片
title:商品名称
cate_id|getCommonCategoryTitle:分类
market_price:市场价
discount_price:市场价
view_count:浏览数
ids:操作:[EDIT]|编辑,[DELETE]|删除', '10', 'title', '', '1396061373', '1398741409', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('84', 'common_category', '通用分类', '0', '', '1', '{\"1\":[\"pid\",\"title\",\"icon\",\"intro\",\"sort\",\"is_show\"]}', '1:基础', '', '', '', '', 'code:编号
title:标题
icon|get_img_html:图标
sort:排序号
is_show|get_name_by_status:显示
ids:操作:[EDIT]|编辑,[DELETE]|删除', '10', 'title', '', '1397529095', '1404182789', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('86', 'shop_footer', '底部导航', '0', '', '1', '{\"1\":[\"pid\",\"title\",\"url\",\"sort\"]}', '1:基础', '', '', '', '', 'title:菜单名
icon:图标
url:关联URL
sort:排序号
id:操作:[EDIT]|编辑,[DELETE]|删除', '10', 'title', '', '1394518309', '1396507698', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('87', 'credit_config', '积分配置', '0', '', '1', '{\"1\":[\"title\",\"name\",\"experience\",\"score\"]}', '1:基础', '', '', '', '', 'title:积分描述
name:积分标识
experience:经验值
score:财富值
id:操作:[EDIT]|编辑,[DELETE]|删除', '10', 'title', '', '1396061373', '1398564809', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('88', 'credit_data', '用户积分记录', '0', '', '1', '{\"1\":[\"credit_name\",\"uid\",\"experience\",\"score\"]}', '1:基础', '', '', '', '', 'uid:用户
credit_name:积分标识
experience:经验值
score:财富值
cTime|time_format:记录时间
id:操作:[EDIT]|编辑,[DELETE]|删除', '10', 'uid', '', '1398564291', '1400117739', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('89', 'follow', '粉丝管理', '0', '', '1', '{\"1\":[\"nickname\",\"sex\",\"headimgurl\",\"city\",\"province\",\"country\",\"language\"]}', '1:基础', '', '', '', '', 'id:粉丝编号
openid:OpenId
nickname:昵称
sex|get_name_by_status:性别
subscribe_time|time_format:关注时间
ids:操作:[EDIT]|编辑', '10', 'nickname', '', '1398845737', '1398846740', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('90', 'member_public_link', '公众号与管理员的关联关系', '0', '', '1', '{\"1\":[\"uid\",\"addon_status\"]}', '1:基础', '', '', '', '', 'uid|get_nickname:管理员
addon_status:授权的插件
ids:操作:[EDIT]|编辑,[DELETE]|删除', '10', '', '', '1398933192', '1398947067', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('91', 'coupon', '优惠券', '0', '', '1', '{\"1\":[\"keyword\",\"title\",\"intro\",\"cover\",\"use_tips\",\"start_time\",\"end_time\",\"end_img\",\"end_tips\",\"num\",\"max_num\",\"follower_condtion\",\"credit_conditon\",\"credit_bug\",\"addon_condition\"]}', '1:基础', '', '', '', '', 'id:优惠券ID
keyword:关键词
title:标题
collect_count:获取人数
cTime|time_format:发布时间
id:操作:[EDIT]|编辑,[DELETE]|删除,lists?target_id=[id]&target=_blank&_controller=Sn|成员管理,preview?id=[id]&target=_blank|预览', '10', 'title', '', '1396061373', '1401017265', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('92', 'sn_code', 'SN码', '0', '', '1', '{\"1\":[\"prize_title\"]}', '1:基础', '', '', '', '', 'sn:SN码
uid|get_nickname:昵称
prize_title:奖项
cTime|time_format:创建时间
is_use|get_name_by_status:是否已使用
use_time|time_format:使用时间
id:操作:[DELETE]|删除,set_use?id=[id]|改变使用状态', '10', 'sn', '', '1399272054', '1401013099', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('93', 'scratch', '刮刮卡', '0', '', '1', '{\"1\":[\"keyword\",\"title\",\"intro\",\"cover\",\"use_tips\",\"start_time\",\"end_time\",\"end_tips\",\"end_img\",\"predict_num\",\"max_num\",\"follower_condtion\",\"credit_conditon\",\"credit_bug\",\"addon_condition\"]}', '1:基础', '', '', '', '', 'id:刮刮卡ID
keyword:关键词
title:标题
collect_count:获取人数
cTime|time_format:发布时间
id:操作:[EDIT]|编辑,[DELETE]|删除,lists?target_id=[id]&target=_blank&_controller=Sn|中奖管理,lists?target_id=[id]&target=_blank&_controller=Prize|奖品管理,preview?id=[id]&target=_blank|预览', '10', 'title', '', '1396061373', '1404142036', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('94', 'prize', '奖项设置', '0', '', '1', '{\"1\":[\"title\",\"name\",\"num\",\"img\",\"sort\"]}', '1:基础', '', '', '', '', 'title:奖项标题
name:奖项
num:名额数量
img|get_img_html:奖品图片
id:操作:[EDIT]|编辑,[DELETE]|删除', '10', 'title', '', '1399348610', '1399702991', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('95', 'addon_category', '插件分类', '0', '', '1', '{\"1\":[\"icon\",\"title\",\"sort\"]}', '1:基础', '', '', '', '', 'icon|get_img_html:分类图标
title:分类名
sort:排序号
id:操作:[EDIT]|编辑,[DELETE]|删除', '10', 'title', '', '1400047655', '1400048130', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('96', 'tongji', '运营统计', '0', '', '1', '{\"1\":[\"month\",\"day\",\"content\"]}', '1:基础', '', '', '', '', 'day:日期', '10', 'day', '', '1401371050', '1401371409', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('97', 'common_category_group', '通用分类分组', '0', '', '1', '{\"1\":[\"name\",\"title\"]}', '1:基础', '', '', '', '', 'name:分组标识
title:分组标题
id:操作:cascade?target=_blank&module=[name]|数据管理,[EDIT]|编辑,[DELETE]|删除', '10', 'title', '', '1396061373', '1403664378', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('104', 'youaskservice_user', '你问我答-客服工号', '0', '', '1', '{\"1\":[\"name\",\"userName\",\"userPwd\",\"state\",\"kfid\"]}', '1:基础', '', '', '', '', 'kfid:编号
name:客服昵称
userName:客服帐号', '10', 'name', 'userName', '1403947253', '1404398415', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('105', 'youaskservice_logs', '你问我答-聊天记录管理', '0', '', '1', '{\"1\":[\"pid\",\"openid\",\"enddate\",\"keyword\",\"status\"]}', '1:基础', '', '', '', '', 'id:编号
keyword:回复内容
enddate:回复时间', '10', 'keyword', '', '1403947270', '1404060187', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('116', 'youaskservice_keyword', '你问我答-关键词指配', '0', '', '1', '{\"1\":[\"msgkeyword\",\"msgkeyword_type\",\"zdtype\",\"msgstate\"]}', '1:基础', '', '', '', '', 'id:编号
msgkeyword:关键字
msgkeyword_type|get_name_by_status:匹配类型
msgkfaccount:指定的接待客服或分组
msgstate|get_name_by_status:状态
id:操作:[EDIT]|编辑,[DELETE]|删除', '10', 'msgkeyword', '', '1404399143', '1404493938', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('106', 'youaskservice_wechat_enddate', 'youaskservice_wechat_enddate', '0', '', '1', '', '1:基础', '', '', '', '', '', '10', '', '', '1404026714', '1404026714', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('107', 'youaskservice_wechat_grouplist', 'youaskservice_wechat_grouplist', '0', '', '1', '', '1:基础', '', '', '', '', '', '10', '', '', '1404027300', '1404027300', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('108', 'youaskservice_behavior', 'youaskservice_behavior', '0', '', '1', '', '1:基础', '', '', '', '', '', '10', '', '', '1404033501', '1404033501', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('115', 'smalltools', '小工具-管理', '0', '', '1', '{\"1\":[\"keyword\",\"toolname\",\"tooldes\",\"toolstate\"]}', '1:基础', '', '', '', '', 'id:编号
keyword:关键词
toolname:名称
tooldes:描述
tooltype|get_name_by_status:类型
toolstate|get_name_by_status:状态', '10', 'toolname', 'tooldes', '1404273263', '1404277639', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('117', 'youaskservice_group', '你问我答-客服分组', '0', '', '1', '{\"1\":[\"groupname\"]}', '1:基础', '', '', '', '', 'id:编号
groupname:分组名称
id:操作:[EDIT]|编辑,[DELETE]|删除', '10', 'groupname', '', '1404475456', '1404491410', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('120', 'youaskservice_wxlogs', '你问我答- 微信聊天记录', '0', '', '1', '', '1:基础', '', '', '', '', '', '10', '', '', '1406094050', '1406094093', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('121', 'qr_code', '二维码表', '0', '', '1', '{\"1\":[\"qr_code\",\"addon\",\"aim_id\",\"cTime\",\"extra_text\",\"extra_int\",\"scene_id\",\"action_name\"]}', '1:基础', '', '', '', '', 'scene_id:事件KEY值
qr_code|get_code_img:二维码
action_name|get_name_by_status: 	二维码类型
addon:所属插件
aim_id:插件数据ID
cTime|time_format:增加时间
request_count|intval:请求数
id:操作:[EDIT]|编辑,[DELETE]|删除', '10', 'qr_code', '', '1388815871', '1406130247', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('143', 'import', '导入数据', '0', '', '1', '', '1:基础', '', '', '', '', '', '10', '', '', '1407554076', '1407554076', '1', 'MyISAM');
INSERT INTO `wplt_model` VALUES ('154', 'member_public_token_io', '公众号Accesstoken输入输出', '0', '', '1', '', '1:基础', '', '', '', '', '', '10', '', '', '1430660576', '1430660576', '1', 'MyISAM');

-- -----------------------------
-- Table structure for `wplt_picture`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_picture`;
;


-- -----------------------------
-- Table structure for `wplt_prize`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_prize`;
;


-- -----------------------------
-- Table structure for `wplt_qr_code`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_qr_code`;
;


-- -----------------------------
-- Table structure for `wplt_scratch`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_scratch`;
;


-- -----------------------------
-- Table structure for `wplt_shop_footer`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_shop_footer`;
;


-- -----------------------------
-- Table structure for `wplt_shop_product`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_shop_product`;
;


-- -----------------------------
-- Table structure for `wplt_smalltools`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_smalltools`;
;


-- -----------------------------
-- Table structure for `wplt_sn_code`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_sn_code`;
;


-- -----------------------------
-- Table structure for `wplt_store`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_store`;
;


-- -----------------------------
-- Table structure for `wplt_suggestions`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_suggestions`;
;


-- -----------------------------
-- Table structure for `wplt_survey`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_survey`;
;


-- -----------------------------
-- Table structure for `wplt_survey_answer`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_survey_answer`;
;


-- -----------------------------
-- Table structure for `wplt_survey_question`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_survey_question`;
;


-- -----------------------------
-- Table structure for `wplt_test`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_test`;
;


-- -----------------------------
-- Table structure for `wplt_test_answer`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_test_answer`;
;


-- -----------------------------
-- Table structure for `wplt_test_question`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_test_question`;
;


-- -----------------------------
-- Table structure for `wplt_tongji`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_tongji`;
;


-- -----------------------------
-- Table structure for `wplt_ucenter_admin`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_ucenter_admin`;
;


-- -----------------------------
-- Table structure for `wplt_ucenter_app`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_ucenter_app`;
;


-- -----------------------------
-- Table structure for `wplt_ucenter_member`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_ucenter_member`;
;

-- -----------------------------
-- Records of `wplt_ucenter_member`
-- -----------------------------
INSERT INTO `wplt_ucenter_member` VALUES ('1', 'alkaid', '6e67f5e7487f0dbc69bf84b20d7b4b47', 'muliangcong@163.com', '', '1430486033', '0', '1430639655', '0', '1430486033', '1', '', '');
INSERT INTO `wplt_ucenter_member` VALUES ('363', 'test', '330e4acc6d83693d1ec57b71e172c310', 'test@126.com', '', '1430638087', '0', '1430638108', '0', '1430638087', '1', '', '');

-- -----------------------------
-- Table structure for `wplt_ucenter_setting`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_ucenter_setting`;
;


-- -----------------------------
-- Table structure for `wplt_update_version`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_update_version`;
;


-- -----------------------------
-- Table structure for `wplt_url`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_url`;
;


-- -----------------------------
-- Table structure for `wplt_userdata`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_userdata`;
;


-- -----------------------------
-- Table structure for `wplt_vote`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_vote`;
;


-- -----------------------------
-- Table structure for `wplt_vote_log`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_vote_log`;
;


-- -----------------------------
-- Table structure for `wplt_vote_option`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_vote_option`;
;


-- -----------------------------
-- Table structure for `wplt_weisite_category`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_weisite_category`;
;


-- -----------------------------
-- Table structure for `wplt_weisite_cms`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_weisite_cms`;
;


-- -----------------------------
-- Table structure for `wplt_weisite_footer`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_weisite_footer`;
;


-- -----------------------------
-- Table structure for `wplt_weisite_slideshow`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_weisite_slideshow`;
;


-- -----------------------------
-- Table structure for `wplt_weixin_log`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_weixin_log`;
;


-- -----------------------------
-- Table structure for `wplt_youaskservice_behavior`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_youaskservice_behavior`;
;


-- -----------------------------
-- Table structure for `wplt_youaskservice_group`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_youaskservice_group`;
;


-- -----------------------------
-- Table structure for `wplt_youaskservice_keyword`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_youaskservice_keyword`;
;


-- -----------------------------
-- Table structure for `wplt_youaskservice_logs`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_youaskservice_logs`;
;


-- -----------------------------
-- Table structure for `wplt_youaskservice_user`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_youaskservice_user`;
;


-- -----------------------------
-- Table structure for `wplt_youaskservice_wechat_enddate`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_youaskservice_wechat_enddate`;
;


-- -----------------------------
-- Table structure for `wplt_youaskservice_wechat_grouplist`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_youaskservice_wechat_grouplist`;
;


-- -----------------------------
-- Table structure for `wplt_youaskservice_wxlogs`
-- -----------------------------
DROP TABLE IF EXISTS `wplt_youaskservice_wxlogs`;
;
