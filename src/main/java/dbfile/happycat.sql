/*
Navicat MySQL Data Transfer

Source Server         : LocalMySQL
Source Server Version : 50703
Source Host           : localhost:3306
Source Database       : happycat

Target Server Type    : MYSQL
Target Server Version : 50703
File Encoding         : 65001

Date: 2017-02-26 16:41:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for joke
-- ----------------------------
DROP TABLE IF EXISTS `joke`;
CREATE TABLE `joke` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) DEFAULT '',
  `content` text,
  `status` tinyint(2) NOT NULL DEFAULT '1',
  `type` varchar(50) NOT NULL DEFAULT 'other',
  `createdate` datetime NOT NULL,
  `user_id` bigint(1) NOT NULL DEFAULT '1',
  `good` bigint(19) NOT NULL DEFAULT '0',
  `bad` bigint(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COMMENT='joke';

-- ----------------------------
-- Records of joke
-- ----------------------------
INSERT INTO `joke` VALUES ('26', '段子', '课堂上，老师在讲第7章，小明把书随便打开，就低头玩手机，结果被老师发现了。 老师质问他：“讲的7章，怎么把书翻到8章？”小明淡淡的答到：“我是在前面等着你。”“下课去办公室等我”', '1', 'other', '2016-06-30 09:17:26', '1', '32', '125');
INSERT INTO `joke` VALUES ('27', '段子', '“怎么才能一年赚到100万啊？不犯罪干啥都可以！”\r\n\r\n“往银行存6000万，一年利息就差不多了。”\r\n\r\n“我有6000万还用问你！说实在的！”\r\n\r\n“赚6000万的方法我也有。”\r\n\r\n“怎么做？”\r\n\r\n“往银行存40亿。”', '1', 'other', '2016-06-29 09:18:15', '1', '120', '12');
INSERT INTO `joke` VALUES ('28', '段子', '“皇上，你准备把皇位传给谁？” “传……传……传太医……呃……', '1', 'other', '2016-06-16 09:18:52', '2', '123', '45');
INSERT INTO `joke` VALUES ('29', '读者', '在花一样的年纪里，我却长成了一棵多肉植物', '1', 'other', '2016-06-09 09:19:28', '1', '32', '111');
INSERT INTO `joke` VALUES ('30', '奈何桥', '如果Java能实现真的垃圾回收，那大部分的程序都会在执行时删除自己', '1', 'other', '2016-06-17 09:19:54', '1', '22', '1');
INSERT INTO `joke` VALUES ('31', '段子', '永远不要让女孩子一个人出门，对银行卡来说太危险了', '1', 'other', '2016-06-10 09:20:31', '1', '0', '0');
INSERT INTO `joke` VALUES ('32', '段子', '我发觉我们是最玩物丧志的一代，你看阿基米德用来撬动地球的那根杠杆，被我们用来玩自拍。', '1', 'other', '2016-06-02 09:21:38', '2', '0', '0');
INSERT INTO `joke` VALUES ('33', '段子', '长得丑是种怎样的体验？\r\n\r\n全班45个人，44个男生和我，班花竟然不是我，是一伪娘。\r\n\r\n全班三对gay，我竟然还是单身。', '1', 'other', '2016-06-11 09:22:03', '1', '0', '0');
INSERT INTO `joke` VALUES ('34', '段子', '一个漂亮学妹问我：学长，你有女朋友吗？我心一激动，如实回答：没有。学妹拎起裙脚，原地转了一圈，问道我：学长，漂亮吗？我心跳加速，狂点头说：漂亮。学妹开心的说：我男朋友送我的。', '1', 'other', '2016-06-18 09:23:30', '3', '0', '0');
INSERT INTO `joke` VALUES ('35', '段子', '秦淮河畔风花雪', '1', 'other', '2016-06-25 09:24:15', '1', '0', '0');
INSERT INTO `joke` VALUES ('36', '段子', '如果白雪公主后妈，拥有的是面普通镜子，也就没这么多破事儿了。', '1', 'other', '2016-06-03 09:24:46', '2', '333', '24');
INSERT INTO `joke` VALUES ('37', '段子', '春困秋乏夏打盹，收拾书包就冬眠。', '1', 'other', '2016-06-24 09:25:08', '1', '0', '0');
INSERT INTO `joke` VALUES ('38', '段子', '春天不是读书天\r\n夏日炎炎正好眠\r\n秋有寒霜冬有雪\r\n重拾书包待来年', '1', 'other', '2016-06-14 09:25:40', '1', '0', '0');
INSERT INTO `joke` VALUES ('39', '段子', '每当我找到成功的钥匙，他们就换了锁。\r\n', '1', 'other', '2016-06-01 09:26:19', '1', '258', '142');
INSERT INTO `joke` VALUES ('40', '段子', '我想你一定很忙，所以看前三个字就好。', '1', 'other', '2016-06-03 09:26:37', '2', '0', '0');
INSERT INTO `joke` VALUES ('41', '段子', '收养了一直流浪猫，我对他说：“我们都是流浪动物，今后互相照顾吧', '1', 'other', '2016-06-02 09:29:01', '1', '0', '0');
INSERT INTO `joke` VALUES ('42', '段子', '晚上感冒了 老妈给拿了几片药让我吃 睡到半夜老爸喊了我几声 我问咋了 他说“没事，你妈说给你拿错药了，让我看看你还在不在”。', '1', 'other', '2016-06-02 09:29:19', '2', '0', '0');
INSERT INTO `joke` VALUES ('43', '段子', '不然你想怎样，不然你能怎样。', '1', 'other', '2016-06-10 09:29:52', '1', '0', '0');
INSERT INTO `joke` VALUES ('44', '段子', '月薪三千，我只取一瓢饮，因为两瓢太贵。', '1', 'other', '2016-06-01 09:30:21', '1', '25', '85');
INSERT INTO `joke` VALUES ('45', '段子', '我们有一安卓培训课，那老师把 Widget 念成 W-I-D-Get，还有各种拼音读法，好想打他', '1', 'other', '2016-06-10 09:31:31', '3', '0', '0');
INSERT INTO `joke` VALUES ('46', '段子', '每当良心上有所亏欠的时候，\r\n我都安慰自己:你又不是什么好人。\r\n\r\n', '1', 'other', '2016-06-08 09:33:05', '1', '3214', '125');
INSERT INTO `joke` VALUES ('47', '段子', '任何时候都别放弃努力，别忘记你曾经也是“第一名。。”', '1', 'other', '2016-06-10 09:35:17', '2', '0', '0');
INSERT INTO `joke` VALUES ('48', '段子', '读点书还是有用的，你想想，假如你生病死了，打架死了，跳楼死了，都可以黑学校一笔钱啊。九年义务教育简直是一份免费保险啊。', '1', 'other', '2016-06-08 09:37:32', '1', '0', '0');
INSERT INTO `joke` VALUES ('49', '段子', '数学课老师问我：“如果你有5000块钱，你的好朋友小强找你借了3500块，你还剩多少？” 我想了想说：“一个好朋友都不剩了。”', '1', 'other', '2016-06-17 09:38:51', '1', '30', '1');
INSERT INTO `joke` VALUES ('50', '光消失的地方', '百毒不侵的内心，往往会被一句简单的安慰打败，刀枪不入的伪装，常常在懂你人的面前彻底投降。', '1', 'other', '2016-06-10 09:49:43', '1', '0', '0');
INSERT INTO `joke` VALUES ('51', '段子', '多年前，AMD有款驱动，列了一堆新功能，然后列了一个已知bug，叫做新功能都无法使用。', '1', 'other', '2016-06-16 09:55:30', '2', '14', '2');
INSERT INTO `joke` VALUES ('52', '段子', '标着“必看”“必转”的往往是无关紧要的烂文，街边喊的“特大喜讯”也一般不是什么喜讯，网上一堆女神男神，其实也就是路人略带颜的水平。一堆喧嚣的假消息，只有单身狗，是真的。。。', '1', 'other', '2016-06-09 10:11:00', '1', '0', '0');
INSERT INTO `joke` VALUES ('56', '', 'gfgdgdgdgdgdgd', '1', 'other', '2016-06-30 14:31:38', '1', '0', '0');
INSERT INTO `joke` VALUES ('57', '', 'okllkllkkl', '1', 'other', '2016-10-14 21:32:19', '1', '0', '0');

-- ----------------------------
-- Table structure for menu_info
-- ----------------------------
DROP TABLE IF EXISTS `menu_info`;
CREATE TABLE `menu_info` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `level` int(11) NOT NULL,
  `pid` bigint(19) NOT NULL,
  `fullpath` varchar(100) DEFAULT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='菜单';

-- ----------------------------
-- Records of menu_info
-- ----------------------------
INSERT INTO `menu_info` VALUES ('1', '食物', '1', '0', '0', '1');
INSERT INTO `menu_info` VALUES ('2', '水果', '2', '1', '1', '1');
INSERT INTO `menu_info` VALUES ('3', '苹果', '3', '2', '1-2', '1');
INSERT INTO `menu_info` VALUES ('4', '西瓜', '3', '2', '1-2', '1');
INSERT INTO `menu_info` VALUES ('5', '肉', '2', '1', '1', '1');
INSERT INTO `menu_info` VALUES ('6', '猪肉', '3', '5', '1-5', '1');
INSERT INTO `menu_info` VALUES ('7', '牛肉', '3', '5', '1-5', '1');

-- ----------------------------
-- Table structure for resource
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `icon` varchar(32) DEFAULT NULL,
  `pid` bigint(19) DEFAULT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `resourcetype` tinyint(2) NOT NULL DEFAULT '0',
  `createdate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='资源';

-- ----------------------------
-- Records of resource
-- ----------------------------
INSERT INTO `resource` VALUES ('1', '主页', '/index', '用户主页', 'null', null, '1', '1', '2016-05-27 22:07:42');
INSERT INTO `resource` VALUES ('2', '管理', '/man/manage', '管理员框架页面', null, null, '1', '1', '2016-05-27 22:09:33');
INSERT INTO `resource` VALUES ('3', '信息', '/info', '信息展示', null, null, '0', '1', '2016-05-26 22:12:25');
INSERT INTO `resource` VALUES ('4', '认证失败', '/unauth', '认证失败', null, null, '1', '1', '2016-05-28 15:16:52');
INSERT INTO `resource` VALUES ('5', '退出', '/logout', '退出', null, null, '1', '1', '2016-05-28 15:56:50');
INSERT INTO `resource` VALUES ('6', '用户管理', '/man/user_man', '用户管理', 'null', null, '1', '2', '2016-05-29 20:24:12');
INSERT INTO `resource` VALUES ('7', '角色管理', '/man/role_man', '角色管理', null, null, '1', '1', '2016-05-30 17:28:38');
INSERT INTO `resource` VALUES ('8', '分页获取用户', '/user/getPageUser', '分页获取整页用户', null, null, '1', '1', '2016-05-31 00:45:04');
INSERT INTO `resource` VALUES ('9', '分页获取角色', '/role/getPageRole', '分页获取整页角色', null, null, '1', '1', '2016-06-22 10:07:07');
INSERT INTO `resource` VALUES ('10', '资源管理', '/man/resource_man', '资源管理', null, null, '1', '1', '2016-06-22 10:46:55');
INSERT INTO `resource` VALUES ('11', '分页获取资源', '/resource/getPageResource', '分页获取资源', null, null, '1', '1', '2016-06-22 10:48:13');
INSERT INTO `resource` VALUES ('12', '更新资源', '/resource/updateResource', '更新资源', null, null, '1', '1', '2016-06-25 17:25:32');
INSERT INTO `resource` VALUES ('13', '更新用户', '/user/updateUser', '更新用户', null, null, '1', '1', '2016-06-25 22:06:06');
INSERT INTO `resource` VALUES ('14', '更新角色', '/role/updateRole', '更新角色', null, null, '1', '1', '2016-06-25 22:07:05');
INSERT INTO `resource` VALUES ('15', '获取所有角色', '/role/getAllRole', '获取所有状态非0的角色', null, null, '1', '1', '2016-06-27 08:57:08');
INSERT INTO `resource` VALUES ('16', '获取用户拥有的角色', '/user/findUserRoleByUserId', '获取用户拥有的角色', null, null, '1', '1', '2016-06-27 09:41:18');
INSERT INTO `resource` VALUES ('17', '获取分页joke', '/joke/getPageJoke', '获取分页joke', null, null, '1', '1', '2016-06-28 22:09:44');
INSERT INTO `resource` VALUES ('18', '获取随机joke', '/Anno/getRandomPageJoke', '获取随机joke', null, null, '1', '1', '2016-06-29 09:29:11');
INSERT INTO `resource` VALUES ('19', '发布笑话', '/joke/releaseJoke', '发布笑话', null, null, '1', '1', '2016-06-29 20:07:32');
INSERT INTO `resource` VALUES ('20', '发布一则笑话', '/joke/releaseOneJoke', '发布一则笑话', null, null, '1', '1', '2016-06-29 21:24:13');
INSERT INTO `resource` VALUES ('21', '保存userRole', '/user/saveUserRole', '保存userRole', null, null, '1', '1', '2016-06-30 09:13:13');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '管理员', '具有管理员权限1', '1');
INSERT INTO `role` VALUES ('2', '普通用户', '普通用户q', '1');

-- ----------------------------
-- Table structure for role_resource
-- ----------------------------
DROP TABLE IF EXISTS `role_resource`;
CREATE TABLE `role_resource` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(19) NOT NULL,
  `resource_id` bigint(19) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=442 DEFAULT CHARSET=utf8 COMMENT='角色资源';

-- ----------------------------
-- Records of role_resource
-- ----------------------------
INSERT INTO `role_resource` VALUES ('1', '1', '1');
INSERT INTO `role_resource` VALUES ('410', '1', '2');
INSERT INTO `role_resource` VALUES ('411', '2', '1');
INSERT INTO `role_resource` VALUES ('412', '1', '3');
INSERT INTO `role_resource` VALUES ('413', '2', '3');
INSERT INTO `role_resource` VALUES ('414', '1', '4');
INSERT INTO `role_resource` VALUES ('415', '2', '4');
INSERT INTO `role_resource` VALUES ('416', '1', '5');
INSERT INTO `role_resource` VALUES ('417', '2', '5');
INSERT INTO `role_resource` VALUES ('418', '1', '6');
INSERT INTO `role_resource` VALUES ('419', '1', '7');
INSERT INTO `role_resource` VALUES ('420', '1', '8');
INSERT INTO `role_resource` VALUES ('421', '1', '9');
INSERT INTO `role_resource` VALUES ('422', '1', '10');
INSERT INTO `role_resource` VALUES ('423', '1', '11');
INSERT INTO `role_resource` VALUES ('424', '1', '12');
INSERT INTO `role_resource` VALUES ('425', '1', '13');
INSERT INTO `role_resource` VALUES ('426', '1', '14');
INSERT INTO `role_resource` VALUES ('427', '1', '15');
INSERT INTO `role_resource` VALUES ('428', '1', '16');
INSERT INTO `role_resource` VALUES ('429', '1', '17');
INSERT INTO `role_resource` VALUES ('430', '1', '18');
INSERT INTO `role_resource` VALUES ('431', '1', '19');
INSERT INTO `role_resource` VALUES ('432', '1', '20');
INSERT INTO `role_resource` VALUES ('433', '2', '9');
INSERT INTO `role_resource` VALUES ('434', '2', '11');
INSERT INTO `role_resource` VALUES ('435', '2', '16');
INSERT INTO `role_resource` VALUES ('436', '2', '17');
INSERT INTO `role_resource` VALUES ('437', '2', '18');
INSERT INTO `role_resource` VALUES ('438', '2', '19');
INSERT INTO `role_resource` VALUES ('439', '2', '20');
INSERT INTO `role_resource` VALUES ('440', '1', '21');
INSERT INTO `role_resource` VALUES ('441', '2', '21');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `sex` tinyint(2) NOT NULL DEFAULT '0',
  `age` tinyint(2) DEFAULT '0',
  `usertype` tinyint(2) NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `createdate` datetime NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `icon` varchar(255) DEFAULT 'static/img/guest.jpg',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'hendy', 'Daniel', 'e10adc3949ba59abbe56e057f20f883e', '1', '18', '1', '1', '2016-05-27 00:00:00', '15851732142', '87026928@qq.com', 'http://localhost:8080/HappyCat/static/img/user/1.jpg');
INSERT INTO `user` VALUES ('2', 'tom', 'sacukra', 'e10adc3949ba59abbe56e057f20f883e', '1', '18', '1', '1', '2016-05-27 00:00:00', '123456', '18888@qq.com', 'http://localhost:8080/HappyCat/static/img/user/2.jpg');
INSERT INTO `user` VALUES ('3', 'James', 'James', 'e10adc3949ba59abbe56e057f20f883e', '1', '19', '1', '1', '2016-06-30 08:27:39', '786312', '134321354545', 'http://localhost:8080/HappyCat/static/img/user/2.jpg');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(19) NOT NULL,
  `role_id` bigint(19) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='用户角色';

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('13', '2', '1');
INSERT INTO `user_role` VALUES ('14', '2', '2');
INSERT INTO `user_role` VALUES ('34', '1', '1');
