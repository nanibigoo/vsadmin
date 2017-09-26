/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : fastadmin

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-09-26 22:15:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `fa_admin`
-- ----------------------------
DROP TABLE IF EXISTS `fa_admin`;
CREATE TABLE `fa_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) NOT NULL DEFAULT '' COMMENT '密码盐',
  `avatar` varchar(100) NOT NULL DEFAULT '' COMMENT '头像',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `loginfailure` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '失败次数',
  `logintime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录时间',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `token` varchar(59) NOT NULL DEFAULT '' COMMENT 'Session标识',
  `status` varchar(30) NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='管理员表';

-- ----------------------------
-- Records of fa_admin
-- ----------------------------
INSERT INTO `fa_admin` VALUES ('1', 'admin', 'Admin', '831e437cef976453fc6bd639fdfcfbbe', 'ybIToc', '/assets/img/avatar.png', 'admin@fastadmin.net', '0', '1506397939', '1492186163', '1506397939', '61915f3c-00ec-41a3-8a52-50d28326207f', 'normal');
INSERT INTO `fa_admin` VALUES ('2', 'admin2', 'admin2', '9a28ce07ce875fbd14172a9ca5357d3c', '2dHDmj', '/assets/img/avatar.png', 'admin2@fastadmin.net', '0', '1505450906', '1492186163', '1505450906', 'df45fdd5-26f4-45ca-83b3-47e4491a315a', 'normal');
INSERT INTO `fa_admin` VALUES ('3', 'admin3', 'admin3', '1c11f945dfcd808a130a8c2a8753fe62', 'WOKJEn', '/assets/img/avatar.png', 'admin3@fastadmin.net', '0', '1501980868', '1492186201', '1501982377', '', 'normal');
INSERT INTO `fa_admin` VALUES ('4', 'admin22', 'admin22', '1c1a0aa0c3c56a8c1a908aab94519648', 'Aybcn5', '/assets/img/avatar.png', 'admin22@fastadmin.net', '0', '0', '1492186240', '1492186240', '', 'normal');
INSERT INTO `fa_admin` VALUES ('5', 'admin32', 'admin32', 'ade94d5d7a7033afa7d84ac3066d0a02', 'FvYK0u', '/assets/img/avatar.png', 'admin32@fastadmin.net', '0', '0', '1492186263', '1492186263', '', 'normal');

-- ----------------------------
-- Table structure for `fa_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `fa_admin_log`;
CREATE TABLE `fa_admin_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `username` varchar(30) NOT NULL DEFAULT '' COMMENT '管理员名字',
  `url` varchar(100) NOT NULL DEFAULT '' COMMENT '操作页面',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '日志标题',
  `content` text NOT NULL COMMENT '内容',
  `ip` varchar(50) NOT NULL DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) NOT NULL DEFAULT '' COMMENT 'User-Agent',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`id`),
  KEY `name` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=1474 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员日志表';

-- ----------------------------
-- Records of fa_admin_log
-- ----------------------------
INSERT INTO `fa_admin_log` VALUES ('1317', '1', 'admin', '/admin/index/login.html', '登录', '{\"__token__\":\"44ab96f916d68bce8a874dd4e39badb4\",\"username\":\"admin\",\"keeplogin\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506350559');
INSERT INTO `fa_admin_log` VALUES ('1318', '1', 'admin', '/admin/general.profile/update', '常规管理 个人配置 更新个人信息', '{\"row\":{\"avatar\":\"\\/assets\\/img\\/avatar.png\",\"email\":\"admin@fastadmin.net\",\"nickname\":\"Admin\",\"password\":\"111111\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506350581');
INSERT INTO `fa_admin_log` VALUES ('1319', '1', 'admin', '/admin/category/edit/ids/13?dialog=1', '分类管理 编辑', '{\"dialog\":\"1\",\"row\":{\"type\":\"test\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd52\",\"nickname\":\"test2\",\"flag\":[\"hot\",\"index\",\"recommend\"],\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"\",\"description\":\"\",\"weigh\":\"13\",\"status\":\"normal\"},\"ids\":\"13\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506350918');
INSERT INTO `fa_admin_log` VALUES ('1320', '1', 'admin', '/admin/category/edit/ids/13?dialog=1', '分类管理 编辑', '{\"dialog\":\"1\",\"row\":{\"type\":\"test\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd52\",\"nickname\":\"test2\",\"flag\":[\"hot\",\"recommend\"],\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"\",\"description\":\"\",\"weigh\":\"13\",\"status\":\"normal\"},\"ids\":\"13\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506350940');
INSERT INTO `fa_admin_log` VALUES ('1321', '1', 'admin', '/admin/addon/install', '插件管理 安装', '{\"name\":\"wechat\",\"force\":\"0\",\"uid\":\"0\",\"token\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506350991');
INSERT INTO `fa_admin_log` VALUES ('1322', '1', 'admin', '/admin/addon/state', '插件管理 禁用启用', '{\"name\":\"wechat\",\"action\":\"disable\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506352081');
INSERT INTO `fa_admin_log` VALUES ('1323', '1', 'admin', '/admin/addon/state', '插件管理 禁用启用', '{\"name\":\"wechat\",\"action\":\"disable\",\"force\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506352083');
INSERT INTO `fa_admin_log` VALUES ('1324', '0', 'Unknown', '/admin/index/login', '登录', '{\"__token__\":\"1045e9d6070c9dbf9b8c1502788c599c\",\"username\":\"admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506389579');
INSERT INTO `fa_admin_log` VALUES ('1325', '1', 'admin', '/admin/index/login', '登录', '{\"__token__\":\"fee7fe5253060202792e65b76774bb68\",\"username\":\"admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506389583');
INSERT INTO `fa_admin_log` VALUES ('1326', '0', 'Unknown', '/admin/index/login', '', '{\"__token__\":\"685cd904f3358d4558a93d7fd73efa74\",\"username\":\"admin\",\"keeplogin\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506392781');
INSERT INTO `fa_admin_log` VALUES ('1327', '1', 'admin', '/admin/index/login', '登录', '{\"__token__\":\"215d5258aa78de8b1fbd83114fa9e3fd\",\"username\":\"admin\",\"keeplogin\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506392795');
INSERT INTO `fa_admin_log` VALUES ('1328', '0', 'Unknown', '/admin/index/login', '', '{\"__token__\":\"15c49ea2e6708ed096f78094f1bbeede\",\"username\":\"admin\",\"keeplogin\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506397936');
INSERT INTO `fa_admin_log` VALUES ('1329', '1', 'admin', '/admin/index/login', '登录', '{\"__token__\":\"c0e141dc32577604a9707066901a77e8\",\"username\":\"admin\",\"keeplogin\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506397939');
INSERT INTO `fa_admin_log` VALUES ('1330', '1', 'admin', '/admin/general.config/edit', '常规管理 系统配置 编辑', '{\"row\":{\"name\":\"FastAdmin\",\"beian\":\"\",\"cdnurl\":\"\",\"version\":\"1.0.1\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":{\"field\":{\"backend\":\"backend\",\"frontend\":\"frontend\"},\"value\":{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"}},\"fixedpage\":\"index\\/login\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506398337');
INSERT INTO `fa_admin_log` VALUES ('1331', '1', 'admin', '/admin/general.config/edit', '常规管理 系统配置 编辑', '{\"row\":{\"name\":\"FastAdmin\",\"beian\":\"\",\"cdnurl\":\"\",\"version\":\"1.0.1\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":{\"field\":{\"backend\":\"backend\",\"frontend\":\"frontend\"},\"value\":{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"}},\"fixedpage\":\"dashboard\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506398384');
INSERT INTO `fa_admin_log` VALUES ('1332', '1', 'admin', '/admin/general/config/check', '', '{\"row\":{\"name\":\"\\u6d4b\\u8bd5\\u914d\\u7f6e\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506403140');
INSERT INTO `fa_admin_log` VALUES ('1333', '1', 'admin', '/admin/general.config/add', '常规管理 系统配置 添加', '{\"row\":{\"type\":\"string\",\"group\":\"user\",\"name\":\"\\u6d4b\\u8bd5\\u914d\\u7f6e\",\"title\":\"demo\",\"value\":\"\",\"content\":\"key1|value1\\r\\nkey2|value2\",\"tip\":\"\",\"rule\":\"\",\"extend\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506403155');
INSERT INTO `fa_admin_log` VALUES ('1334', '1', 'admin', '/admin/general.config/add', '常规管理 系统配置 添加', '{\"row\":{\"type\":\"string\",\"group\":\"example\",\"name\":\"\\u6d4b\\u8bd5\\u914d\\u7f6e\",\"title\":\"demo\",\"value\":\"1\",\"content\":\"key1|value1\\r\\nkey2|value2\",\"tip\":\"qq\",\"rule\":\"\",\"extend\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506403212');
INSERT INTO `fa_admin_log` VALUES ('1335', '1', 'admin', '/admin/general.config/edit', '常规管理 系统配置 编辑', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506403215');
INSERT INTO `fa_admin_log` VALUES ('1336', '1', 'admin', '/admin/category/add/ids/8?dialog=1', '分类管理 添加', '{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"pid\":\"5\",\"name\":\"aa\",\"nickname\":\"aa\",\"flag\":[\"index\"],\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"a\",\"description\":\"\",\"weigh\":\"0\",\"status\":\"hidden\"},\"ids\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506403931');
INSERT INTO `fa_admin_log` VALUES ('1337', '1', 'admin', '/admin/category/edit/ids/14?dialog=1', '分类管理 编辑', '{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"pid\":\"5\",\"name\":\"aa\",\"nickname\":\"aa\",\"flag\":[\"index\"],\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"a\",\"description\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"14\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506403957');
INSERT INTO `fa_admin_log` VALUES ('1338', '1', 'admin', '/admin/category/del/ids/14', '分类管理 删除', '{\"action\":\"del\",\"ids\":\"14\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506403966');
INSERT INTO `fa_admin_log` VALUES ('1339', '1', 'admin', '/admin/category/edit/ids/6?dialog=1', '分类管理 编辑', '{\"dialog\":\"1\",\"row\":{\"type\":\"page\",\"pid\":\"5\",\"name\":\"\\u7f51\\u7ad9\\u5efa\\u7ad9\",\"nickname\":\"website\",\"flag\":[\"hot\",\"index\",\"recommend\"],\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"\",\"description\":\"\",\"weigh\":\"6\",\"status\":\"normal\"},\"ids\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506403985');
INSERT INTO `fa_admin_log` VALUES ('1340', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"2\",\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506404189');
INSERT INTO `fa_admin_log` VALUES ('1341', '1', 'admin', '/admin/addon/state', '插件管理 禁用启用', '{\"name\":\"wechat\",\"action\":\"enable\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506404447');
INSERT INTO `fa_admin_log` VALUES ('1342', '1', 'admin', '/admin/addon/state', '插件管理 禁用启用', '{\"name\":\"wechat\",\"action\":\"disable\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506404451');
INSERT INTO `fa_admin_log` VALUES ('1343', '1', 'admin', '/admin/addon/state', '插件管理 禁用启用', '{\"name\":\"wechat\",\"action\":\"disable\",\"force\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506404453');
INSERT INTO `fa_admin_log` VALUES ('1344', '1', 'admin', '/admin/addon/uninstall', '插件管理 卸载', '{\"name\":\"wechat\",\"force\":\"0\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506404457');
INSERT INTO `fa_admin_log` VALUES ('1345', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"5\",\"pid\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506404705');
INSERT INTO `fa_admin_log` VALUES ('1346', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"3\",\"pid\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506404751');
INSERT INTO `fa_admin_log` VALUES ('1347', '1', 'admin', '/admin/auth/group/roletree', '', '{\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506404769');
INSERT INTO `fa_admin_log` VALUES ('1348', '1', 'admin', '/admin/auth/group/add?dialog=1', '权限管理 角色组 添加', '{\"dialog\":\"1\",\"row\":{\"rules\":\"\",\"pid\":\"1\",\"name\":\"\\u533b\\u9662\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506404785');
INSERT INTO `fa_admin_log` VALUES ('1349', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"6\",\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506404789');
INSERT INTO `fa_admin_log` VALUES ('1350', '1', 'admin', '/admin/auth/group/edit/ids/6?dialog=1', '权限管理 角色组 编辑', '{\"dialog\":\"1\",\"row\":{\"rules\":\"1,13,14,15,16,17\",\"pid\":\"1\",\"name\":\"\\u533b\\u9662\",\"status\":\"normal\"},\"ids\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506404797');
INSERT INTO `fa_admin_log` VALUES ('1351', '1', 'admin', '/admin/auth/group/roletree', '', '{\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506404803');
INSERT INTO `fa_admin_log` VALUES ('1352', '1', 'admin', '/admin/auth/group/roletree', '', '{\"pid\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506404804');
INSERT INTO `fa_admin_log` VALUES ('1353', '1', 'admin', '/admin/auth/group/add?dialog=1', '权限管理 角色组 添加', '{\"dialog\":\"1\",\"row\":{\"rules\":\"13,14,16,15,1\",\"pid\":\"6\",\"name\":\"\\u62a4\\u58eb\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506404830');
INSERT INTO `fa_admin_log` VALUES ('1354', '1', 'admin', '/admin/auth/admin/add?dialog=1', '权限管理 管理员管理 添加', '{\"dialog\":\"1\",\"group\":[\"7\"],\"row\":{\"username\":\"aaa\",\"email\":\"aaa@126.com\",\"nickname\":\"adaaa\",\"password\":\"aaaasas\",\"status\":\"hidden\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506404956');
INSERT INTO `fa_admin_log` VALUES ('1355', '1', 'admin', '/admin/auth/admin/edit/ids/6?dialog=1', '权限管理 管理员管理 编辑', '{\"dialog\":\"1\",\"group\":[\"7\"],\"row\":{\"username\":\"aaa\",\"email\":\"aaa@126.com\",\"nickname\":\"adaaa\",\"password\":\"\",\"status\":\"normal\"},\"ids\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506404966');
INSERT INTO `fa_admin_log` VALUES ('1356', '1', 'admin', '/admin/auth/admin/del/ids/6', '权限管理 管理员管理 删除', '{\"action\":\"del\",\"ids\":\"6\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506404995');
INSERT INTO `fa_admin_log` VALUES ('1357', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"5\",\"pid\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506405283');
INSERT INTO `fa_admin_log` VALUES ('1358', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"5\",\"pid\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506405331');
INSERT INTO `fa_admin_log` VALUES ('1359', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"6\",\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506405469');
INSERT INTO `fa_admin_log` VALUES ('1360', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"6\",\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506405473');
INSERT INTO `fa_admin_log` VALUES ('1361', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"7\",\"pid\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506405476');
INSERT INTO `fa_admin_log` VALUES ('1362', '1', 'admin', '/admin/auth/group/del/ids/7', '权限管理 角色组 删除', '{\"action\":\"del\",\"ids\":\"7\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506407028');
INSERT INTO `fa_admin_log` VALUES ('1363', '1', 'admin', '/admin/auth/group/del/ids/6', '权限管理 角色组 删除', '{\"action\":\"del\",\"ids\":\"6\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506407030');
INSERT INTO `fa_admin_log` VALUES ('1364', '1', 'admin', '/admin/auth/group/roletree', '', '{\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506407055');
INSERT INTO `fa_admin_log` VALUES ('1365', '1', 'admin', '/admin/auth/group/add?dialog=1', '权限管理 角色组 添加', '{\"dialog\":\"1\",\"row\":{\"rules\":\"1,35,36,37,38,39,2,13,14,16,15,17,3,9,40,41,42,43,10,44,45,46,11,47,48,49,50,12,51,52,53,54,5,6,23,24,25,26,27,28,7,18,19,20,21,22,8,29,30,31,32,33,34,4,55,56,57,58,59,60,61,62,63,64,65\",\"pid\":\"1\",\"name\":\"\\u533b\\u9662\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506407076');
INSERT INTO `fa_admin_log` VALUES ('1366', '1', 'admin', '/admin/auth/group/roletree', '', '{\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506407079');
INSERT INTO `fa_admin_log` VALUES ('1367', '1', 'admin', '/admin/auth/group/roletree', '', '{\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506407081');
INSERT INTO `fa_admin_log` VALUES ('1368', '1', 'admin', '/admin/auth/group/add?dialog=1', '权限管理 角色组 添加', '{\"dialog\":\"1\",\"row\":{\"rules\":\"1,2,3,6,7,8,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39\",\"pid\":\"8\",\"name\":\"\\u7b2c\\u4e94\\u4eba\\u6c11\\u533b\\u9662\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506407104');
INSERT INTO `fa_admin_log` VALUES ('1369', '1', 'admin', '/admin/auth/group/roletree', '', '{\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506407108');
INSERT INTO `fa_admin_log` VALUES ('1370', '1', 'admin', '/admin/auth/group/roletree', '', '{\"pid\":\"9\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506407110');
INSERT INTO `fa_admin_log` VALUES ('1371', '1', 'admin', '/admin/auth/group/add?dialog=1', '权限管理 角色组 添加', '{\"dialog\":\"1\",\"row\":{\"rules\":\"1,2,6,7,8,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34\",\"pid\":\"9\",\"name\":\"\\u7b2c\\u4e94\\u4eba\\u6c11\\u533b\\u9662\\u2014\\u2014\\u62a4\\u58eb\\u7ec4\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506407214');
INSERT INTO `fa_admin_log` VALUES ('1372', '1', 'admin', '/admin/auth/group/roletree', '', '{\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506407217');
INSERT INTO `fa_admin_log` VALUES ('1373', '1', 'admin', '/admin/auth/group/roletree', '', '{\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506407229');
INSERT INTO `fa_admin_log` VALUES ('1374', '1', 'admin', '/admin/auth/group/roletree', '', '{\"pid\":\"9\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506407246');
INSERT INTO `fa_admin_log` VALUES ('1375', '1', 'admin', '/admin/auth/group/add?dialog=1', '权限管理 角色组 添加', '{\"dialog\":\"1\",\"row\":{\"rules\":\"1,2,3,6,7,8,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39\",\"pid\":\"9\",\"name\":\"\\u7b2c\\u4e94\\u4eba\\u6c11\\u533b\\u9662\\u2014\\u2014\\u9886\\u5bfc\\u7ec4\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506407251');
INSERT INTO `fa_admin_log` VALUES ('1376', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"2\",\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506408416');
INSERT INTO `fa_admin_log` VALUES ('1377', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"9\",\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506408444');
INSERT INTO `fa_admin_log` VALUES ('1378', '1', 'admin', '/admin/auth/group/roletree', '', '{\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506408447');
INSERT INTO `fa_admin_log` VALUES ('1379', '1', 'admin', '/admin/auth/group/roletree', '', '{\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506408585');
INSERT INTO `fa_admin_log` VALUES ('1380', '1', 'admin', '/admin/auth/group/roletree', '', '{\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506408623');
INSERT INTO `fa_admin_log` VALUES ('1381', '1', 'admin', '/admin/auth/group/roletree', '', '{\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506408698');
INSERT INTO `fa_admin_log` VALUES ('1382', '1', 'admin', '/admin/auth/group/roletree', '', '{\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506408733');
INSERT INTO `fa_admin_log` VALUES ('1383', '1', 'admin', '/admin/auth/group/roletree', '', '{\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506409854');
INSERT INTO `fa_admin_log` VALUES ('1384', '1', 'admin', '/admin/auth/group/roletree', '', '{\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506409858');
INSERT INTO `fa_admin_log` VALUES ('1385', '1', 'admin', '/admin/auth/group/del/ids/12', '权限管理 角色组 删除', '{\"action\":\"del\",\"ids\":\"12\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506409971');
INSERT INTO `fa_admin_log` VALUES ('1386', '1', 'admin', '/admin/auth/group/roletree', '', '{\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506409976');
INSERT INTO `fa_admin_log` VALUES ('1387', '1', 'admin', '/admin/auth/group/roletree', '', '{\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506409979');
INSERT INTO `fa_admin_log` VALUES ('1388', '1', 'admin', '/admin/auth/group/add?dialog=1', '权限管理 角色组 添加', '{\"dialog\":\"1\",\"row\":{\"rules\":\"1,35,36,37,38,39,2,13,14,16,15,17,3,6,23,24,25,26,27,28,7,18,19,20,21,22,8,29,30,31,32,33,34\",\"pid\":\"8\",\"name\":\"\\u9644\\u4e00\\u9662\",\"status\":\"normal\",\"is_hospital\":\"1\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506409989');
INSERT INTO `fa_admin_log` VALUES ('1389', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"13\",\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506410367');
INSERT INTO `fa_admin_log` VALUES ('1390', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"13\",\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506410375');
INSERT INTO `fa_admin_log` VALUES ('1391', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"13\",\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506410469');
INSERT INTO `fa_admin_log` VALUES ('1392', '1', 'admin', '/admin/auth/group/roletree', '', '{\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506410550');
INSERT INTO `fa_admin_log` VALUES ('1393', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"13\",\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506410559');
INSERT INTO `fa_admin_log` VALUES ('1394', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"9\",\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506410572');
INSERT INTO `fa_admin_log` VALUES ('1395', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"2\",\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506410578');
INSERT INTO `fa_admin_log` VALUES ('1396', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"13\",\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506410600');
INSERT INTO `fa_admin_log` VALUES ('1397', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"11\",\"pid\":\"9\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506410605');
INSERT INTO `fa_admin_log` VALUES ('1398', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"5\",\"pid\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506411281');
INSERT INTO `fa_admin_log` VALUES ('1399', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"10\",\"pid\":\"9\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506411345');
INSERT INTO `fa_admin_log` VALUES ('1400', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"13\",\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506411408');
INSERT INTO `fa_admin_log` VALUES ('1401', '1', 'admin', '/admin/auth/group/edit/ids/13?dialog=1', '权限管理 角色组 编辑', '{\"dialog\":\"1\",\"row\":{\"rules\":\"13,14,16,15,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,3,1,7,6,8,2\",\"pid\":\"8\",\"name\":\"\\u7b2c\\u4e00\\u4eba\\u6c11\\u533b\\u9662\",\"status\":\"normal\",\"is_hospital\":\"1\"},\"ids\":\"13\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506411429');
INSERT INTO `fa_admin_log` VALUES ('1402', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"13\",\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506411447');
INSERT INTO `fa_admin_log` VALUES ('1403', '1', 'admin', '/admin/auth/group/edit/ids/13?dialog=1', '权限管理 角色组 编辑', '{\"dialog\":\"1\",\"row\":{\"rules\":\"13,14,16,15,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,3,1,7,6,8,2\",\"pid\":\"8\",\"name\":\"\\u7b2c\\u4e00\\u4eba\\u6c11\\u533b\\u9662\",\"status\":\"normal\",\"is_hospital\":\"1\"},\"ids\":\"13\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506411542');
INSERT INTO `fa_admin_log` VALUES ('1404', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"13\",\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506411585');
INSERT INTO `fa_admin_log` VALUES ('1405', '1', 'admin', '/admin/auth/group/edit/ids/13?dialog=1', '权限管理 角色组 编辑', '{\"dialog\":\"1\",\"row\":{\"rules\":\"13,14,16,15,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,3,1,7,6,8,2\",\"pid\":\"8\",\"name\":\"\\u7b2c\\u4e00\\u4eba\\u6c11\\u533b\\u9662\",\"status\":\"normal\",\"is_hospital\":\"1\"},\"ids\":\"13\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506411586');
INSERT INTO `fa_admin_log` VALUES ('1406', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"13\",\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506411600');
INSERT INTO `fa_admin_log` VALUES ('1407', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"13\",\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506411634');
INSERT INTO `fa_admin_log` VALUES ('1408', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"13\",\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506411998');
INSERT INTO `fa_admin_log` VALUES ('1409', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"13\",\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506412047');
INSERT INTO `fa_admin_log` VALUES ('1410', '1', 'admin', '/admin/auth/group/edit/ids/13?dialog=1', '权限管理 角色组 编辑', '{\"dialog\":\"1\",\"row\":{\"rules\":\"13,14,16,15,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,3,1,7,6,8,2\",\"pid\":\"8\",\"name\":\"\\u7b2c\\u4e00\\u4eba\\u6c11\\u533b\\u9662\",\"status\":\"normal\",\"is_hospital\":\"1\"},\"ids\":\"13\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506412121');
INSERT INTO `fa_admin_log` VALUES ('1411', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"13\",\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506412165');
INSERT INTO `fa_admin_log` VALUES ('1412', '1', 'admin', '/admin/auth/group/edit/ids/13?dialog=1', '权限管理 角色组 编辑', '{\"dialog\":\"1\",\"row\":{\"rules\":\"13,14,16,15,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,3,1,7,6,8,2\",\"pid\":\"8\",\"name\":\"\\u7b2c\\u4e00\\u4eba\\u6c11\\u533b\\u9662\",\"status\":\"normal\",\"is_hospital\":\"1\"},\"ids\":\"13\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506412172');
INSERT INTO `fa_admin_log` VALUES ('1413', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"9\",\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506412176');
INSERT INTO `fa_admin_log` VALUES ('1414', '1', 'admin', '/admin/auth/group/edit/ids/9?dialog=1', '权限管理 角色组 编辑', '{\"dialog\":\"1\",\"row\":{\"rules\":\"13,14,16,15,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,3,1,7,6,8,2\",\"pid\":\"8\",\"name\":\"\\u7b2c\\u4e94\\u4eba\\u6c11\\u533b\\u9662\",\"status\":\"normal\",\"is_hospital\":\"1\"},\"ids\":\"9\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506412179');
INSERT INTO `fa_admin_log` VALUES ('1415', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"13\",\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506412251');
INSERT INTO `fa_admin_log` VALUES ('1416', '1', 'admin', '/admin/auth/group/edit/ids/13?dialog=1', '权限管理 角色组 编辑', '{\"dialog\":\"1\",\"row\":{\"rules\":\"13,14,16,15,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,3,1,7,6,8,2\",\"pid\":\"8\",\"name\":\"\\u7b2c\\u4e00\\u4eba\\u6c11\\u533b\\u9662\",\"status\":\"normal\",\"is_hospital\":\"0\"},\"ids\":\"13\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506412254');
INSERT INTO `fa_admin_log` VALUES ('1417', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"13\",\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506412258');
INSERT INTO `fa_admin_log` VALUES ('1418', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"13\",\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506412294');
INSERT INTO `fa_admin_log` VALUES ('1419', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"13\",\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506412394');
INSERT INTO `fa_admin_log` VALUES ('1420', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"13\",\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506412422');
INSERT INTO `fa_admin_log` VALUES ('1421', '1', 'admin', '/admin/auth/group/edit/ids/13?dialog=1', '权限管理 角色组 编辑', '{\"dialog\":\"1\",\"row\":{\"rules\":\"13,14,16,15,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,3,1,7,6,8,2\",\"pid\":\"8\",\"name\":\"\\u7b2c\\u4e00\\u4eba\\u6c11\\u533b\\u9662\",\"status\":\"normal\",\"is_hospital\":\"0\"},\"ids\":\"13\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506412483');
INSERT INTO `fa_admin_log` VALUES ('1422', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"13\",\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506412486');
INSERT INTO `fa_admin_log` VALUES ('1423', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"13\",\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506412869');
INSERT INTO `fa_admin_log` VALUES ('1424', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"13\",\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506412955');
INSERT INTO `fa_admin_log` VALUES ('1425', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"13\",\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506412980');
INSERT INTO `fa_admin_log` VALUES ('1426', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"13\",\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506413000');
INSERT INTO `fa_admin_log` VALUES ('1427', '1', 'admin', '/admin/auth/group/roletree', '', '{\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506413321');
INSERT INTO `fa_admin_log` VALUES ('1428', '1', 'admin', '/admin/auth/group/roletree', '', '{\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506413324');
INSERT INTO `fa_admin_log` VALUES ('1429', '1', 'admin', '/admin/auth/group/add?dialog=1', '权限管理 角色组 添加', '{\"dialog\":\"1\",\"row\":{\"rules\":\"1,35,36,37,38,39,2,13,14,16,15,17,3,9,40,41,42,43,10,44,45,46,11,47,48,49,50,12,51,52,53,54,5,6,23,24,25,26,27,28,7,18,19,20,21,22,8,29,30,31,32,33,34,4,55,56,57,58,59,60,61,62,63,64,65\",\"pid\":\"8\",\"name\":\"\\u9644\\u4e8c\\u9662\",\"status\":\"normal\",\"is_hospital\":\"1\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506413333');
INSERT INTO `fa_admin_log` VALUES ('1430', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"14\",\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506413336');
INSERT INTO `fa_admin_log` VALUES ('1431', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"14\",\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506413778');
INSERT INTO `fa_admin_log` VALUES ('1432', '1', 'admin', '/admin/auth/group/roletree', '', '{\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506413828');
INSERT INTO `fa_admin_log` VALUES ('1433', '1', 'admin', '/admin/auth/group/roletree', '', '{\"pid\":\"13\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506413835');
INSERT INTO `fa_admin_log` VALUES ('1434', '1', 'admin', '/admin/auth/group/roletree', '', '{\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506413838');
INSERT INTO `fa_admin_log` VALUES ('1435', '1', 'admin', '/admin/auth/group/add?dialog=1', '权限管理 角色组 添加', '{\"dialog\":\"1\",\"row\":{\"rules\":\"1,13,14,15,16,17\",\"pid\":\"8\",\"name\":\"\\u9644\\u4e09\\u9662\",\"status\":\"normal\",\"is_hospital\":\"1\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506413844');
INSERT INTO `fa_admin_log` VALUES ('1436', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"15\",\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506413847');
INSERT INTO `fa_admin_log` VALUES ('1437', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"15\",\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506413881');
INSERT INTO `fa_admin_log` VALUES ('1438', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"15\",\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506414259');
INSERT INTO `fa_admin_log` VALUES ('1439', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"15\",\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506414346');
INSERT INTO `fa_admin_log` VALUES ('1440', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"15\",\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506414409');
INSERT INTO `fa_admin_log` VALUES ('1441', '1', 'admin', '/admin/auth/group/edit/ids/15?dialog=1', '权限管理 角色组 编辑', '{\"dialog\":\"1\",\"row\":{\"rules\":\"13,14,16,15,17,1\",\"pid\":\"8\",\"name\":\"\\u9644\\u4e09\\u96622\",\"status\":\"normal\",\"is_hospital\":\"1\"},\"ids\":\"15\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506414420');
INSERT INTO `fa_admin_log` VALUES ('1442', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"15\",\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506414428');
INSERT INTO `fa_admin_log` VALUES ('1443', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"15\",\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506414449');
INSERT INTO `fa_admin_log` VALUES ('1444', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"15\",\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506414528');
INSERT INTO `fa_admin_log` VALUES ('1445', '1', 'admin', '/admin/auth/group/edit/ids/15?dialog=1', '权限管理 角色组 编辑', '{\"dialog\":\"1\",\"row\":{\"rules\":\"13,14,16,15,17,1\",\"pid\":\"8\",\"name\":\"\\u9644\\u4e09\\u96622\",\"status\":\"normal\",\"is_hospital\":\"1\"},\"ids\":\"15\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506414530');
INSERT INTO `fa_admin_log` VALUES ('1446', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"15\",\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506414533');
INSERT INTO `fa_admin_log` VALUES ('1447', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"15\",\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506414616');
INSERT INTO `fa_admin_log` VALUES ('1448', '1', 'admin', '/admin/auth/group/edit/ids/15?dialog=1', '权限管理 角色组 编辑', '{\"dialog\":\"1\",\"row\":{\"rules\":\"13,14,16,15,17,1\",\"pid\":\"8\",\"name\":\"\\u9644\\u4e09\\u9662\",\"status\":\"normal\",\"is_hospital\":\"1\"},\"ids\":\"15\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506414622');
INSERT INTO `fa_admin_log` VALUES ('1449', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"15\",\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506414625');
INSERT INTO `fa_admin_log` VALUES ('1450', '1', 'admin', '/admin/auth/group/edit/ids/15?dialog=1', '权限管理 角色组 编辑', '{\"dialog\":\"1\",\"row\":{\"rules\":\"13,14,16,15,17,1\",\"pid\":\"8\",\"name\":\"\\u9644\\u4e09\\u9662\",\"status\":\"normal\",\"is_hospital\":\"0\"},\"ids\":\"15\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506414630');
INSERT INTO `fa_admin_log` VALUES ('1451', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"15\",\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506414633');
INSERT INTO `fa_admin_log` VALUES ('1452', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"13\",\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506414639');
INSERT INTO `fa_admin_log` VALUES ('1453', '1', 'admin', '/admin/auth/group/edit/ids/13?dialog=1', '权限管理 角色组 编辑', '{\"dialog\":\"1\",\"row\":{\"rules\":\"13,14,16,15,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,3,1,7,6,8,2\",\"pid\":\"8\",\"name\":\"\\u7b2c\\u4e00\\u4eba\\u6c11\\u533b\\u9662\",\"status\":\"normal\",\"is_hospital\":\"1\"},\"ids\":\"13\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506414645');
INSERT INTO `fa_admin_log` VALUES ('1454', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"13\",\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506414648');
INSERT INTO `fa_admin_log` VALUES ('1455', '1', 'admin', '/admin/auth/group/del/ids/15', '权限管理 角色组 删除', '{\"action\":\"del\",\"ids\":\"15\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506414720');
INSERT INTO `fa_admin_log` VALUES ('1456', '1', 'admin', '/admin/auth/group/del/ids/14', '权限管理 角色组 删除', '{\"action\":\"del\",\"ids\":\"14\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506414723');
INSERT INTO `fa_admin_log` VALUES ('1457', '1', 'admin', '/admin/auth/group/roletree', '', '{\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506414736');
INSERT INTO `fa_admin_log` VALUES ('1458', '1', 'admin', '/admin/auth/group/add?dialog=1', '权限管理 角色组 添加', '{\"dialog\":\"1\",\"row\":{\"rules\":\"1,2,13,14,16,15,17,6,23,24,25,26,27,28,7,18,19,20,21,22,8,29,30,31,32,33,34\",\"pid\":\"1\",\"name\":\"\\u7b2c\\u4e8c\\u4eba\\u6c11\\u533b\\u9662\",\"status\":\"normal\",\"is_hospital\":\"1\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506414755');
INSERT INTO `fa_admin_log` VALUES ('1459', '1', 'admin', '/admin/auth/group/roletree', '', '{\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506414757');
INSERT INTO `fa_admin_log` VALUES ('1460', '1', 'admin', '/admin/auth/group/add?dialog=1', '权限管理 角色组 添加', '{\"dialog\":\"1\",\"row\":{\"rules\":\"1,3,13,14,15,16,17,35,36,37,38,39\",\"pid\":\"1\",\"name\":\"\\u7b2c\\u4e09\\u4eba\\u6c11\\u533b\\u9662\",\"status\":\"normal\",\"is_hospital\":\"0\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506414773');
INSERT INTO `fa_admin_log` VALUES ('1461', '1', 'admin', '/admin/auth/group/roletree', '', '{\"id\":\"17\",\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506414775');
INSERT INTO `fa_admin_log` VALUES ('1462', '1', 'admin', '/admin/auth/group/edit/ids/17?dialog=1', '权限管理 角色组 编辑', '{\"dialog\":\"1\",\"row\":{\"rules\":\"13,14,16,15,17,35,36,37,38,39,3,1\",\"pid\":\"1\",\"name\":\"\\u7b2c\\u4e09\\u4eba\\u6c11\\u533b\\u9662\",\"status\":\"normal\",\"is_hospital\":\"1\"},\"ids\":\"17\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506414784');
INSERT INTO `fa_admin_log` VALUES ('1463', '1', 'admin', '/admin/auth/group/del/ids/9', '权限管理 角色组 删除', '{\"action\":\"del\",\"ids\":\"9\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506415023');
INSERT INTO `fa_admin_log` VALUES ('1464', '1', 'admin', '/admin/auth/group/del/ids/17', '权限管理 角色组 删除', '{\"action\":\"del\",\"ids\":\"17\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506415299');
INSERT INTO `fa_admin_log` VALUES ('1465', '1', 'admin', '/admin/auth/group/del/ids/16', '权限管理 角色组 删除', '{\"action\":\"del\",\"ids\":\"16\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506415411');
INSERT INTO `fa_admin_log` VALUES ('1466', '1', 'admin', '/admin/auth/group/roletree', '', '{\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506415630');
INSERT INTO `fa_admin_log` VALUES ('1467', '1', 'admin', '/admin/auth/group/roletree', '', '{\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506415634');
INSERT INTO `fa_admin_log` VALUES ('1468', '1', 'admin', '/admin/auth/group/add?dialog=1', '权限管理 角色组 添加', '{\"dialog\":\"1\",\"row\":{\"rules\":\"1,13,14,15,16,17\",\"pid\":\"8\",\"name\":\"\\u7b2c\\u4e8c\\u4eba\\u6c11\\u533b\\u9662\",\"status\":\"normal\",\"is_hospital\":\"1\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506415644');
INSERT INTO `fa_admin_log` VALUES ('1469', '1', 'admin', '/admin/auth/group/roletree', '', '{\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506415646');
INSERT INTO `fa_admin_log` VALUES ('1470', '1', 'admin', '/admin/auth/group/roletree', '', '{\"pid\":\"8\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506415653');
INSERT INTO `fa_admin_log` VALUES ('1471', '1', 'admin', '/admin/auth/group/add?dialog=1', '权限管理 角色组 添加', '{\"dialog\":\"1\",\"row\":{\"rules\":\"1,13,14,15,16,17\",\"pid\":\"8\",\"name\":\"\\u7b2c\\u4e09\\u4eba\\u6c11\\u533b\\u9662\",\"status\":\"normal\",\"is_hospital\":\"1\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506415659');
INSERT INTO `fa_admin_log` VALUES ('1472', '1', 'admin', '/admin/auth/rule/add?dialog=1', '权限管理 规则管理 添加', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"2\",\"name\":\"general\\/hospital\",\"title\":\"\\u533b\\u9662\\u914d\\u7f6e\",\"icon\":\"fa fa-bank\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506418066');
INSERT INTO `fa_admin_log` VALUES ('1473', '1', 'admin', '/admin/auth/rule/add/ids/2?dialog=1', '权限管理 规则管理 添加', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"0\",\"pid\":\"93\",\"name\":\"general\\/hospital\\/index\",\"title\":\"\\u67e5\\u770b\",\"icon\":\"fa fa-dot\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '1506418178');

-- ----------------------------
-- Table structure for `fa_alipay`
-- ----------------------------
DROP TABLE IF EXISTS `fa_alipay`;
CREATE TABLE `fa_alipay` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hospital_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fa_alipay
-- ----------------------------

-- ----------------------------
-- Table structure for `fa_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `fa_attachment`;
CREATE TABLE `fa_attachment` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '物理路径',
  `imagewidth` varchar(30) NOT NULL DEFAULT '' COMMENT '宽度',
  `imageheight` varchar(30) NOT NULL DEFAULT '' COMMENT '宽度',
  `imagetype` varchar(30) NOT NULL DEFAULT '' COMMENT '图片类型',
  `imageframes` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '图片帧数',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `mimetype` varchar(30) NOT NULL DEFAULT '' COMMENT 'mime类型',
  `extparam` varchar(255) NOT NULL DEFAULT '' COMMENT '透传数据',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建日期',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `uploadtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `storage` enum('local','upyun','qiniu') NOT NULL DEFAULT 'local' COMMENT '存储位置',
  `sha1` varchar(40) NOT NULL DEFAULT '' COMMENT '文件 sha1编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='附件表';

-- ----------------------------
-- Records of fa_attachment
-- ----------------------------
INSERT INTO `fa_attachment` VALUES ('1', '/assets/img/qrcode.png', '150', '150', 'png', '0', '21859', 'image/png', '', '1499681848', '1499681848', '1499681848', 'local', '17163603d0263e4838b9387ff2cd4877e8b018f6');

-- ----------------------------
-- Table structure for `fa_auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_group`;
CREATE TABLE `fa_auth_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父组别',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '组名',
  `rules` text NOT NULL COMMENT '规则ID',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='分组表';

-- ----------------------------
-- Records of fa_auth_group
-- ----------------------------
INSERT INTO `fa_auth_group` VALUES ('1', '0', 'Admin group', '*', '1490883540', '149088354', 'normal');
INSERT INTO `fa_auth_group` VALUES ('2', '1', 'Second group', '13,14,16,15,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,1,9,10,11,7,6,8,2,4,5', '1490883540', '1505465692', 'normal');
INSERT INTO `fa_auth_group` VALUES ('3', '2', 'Third group', '1,4,9,10,11,13,14,15,16,17,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,5', '1490883540', '1502205322', 'normal');
INSERT INTO `fa_auth_group` VALUES ('4', '1', 'Second group 2', '1,4,13,14,15,16,17,55,56,57,58,59,60,61,62,63,64,65', '1490883540', '1502205350', 'normal');
INSERT INTO `fa_auth_group` VALUES ('5', '2', 'Third group 2', '1,2,6,7,8,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34', '1490883540', '1502205344', 'normal');
INSERT INTO `fa_auth_group` VALUES ('8', '1', '医院', '1,35,36,37,38,39,2,13,14,16,15,17,3,9,40,41,42,43,10,44,45,46,11,47,48,49,50,12,51,52,53,54,5,6,23,24,25,26,27,28,7,18,19,20,21,22,8,29,30,31,32,33,34,4,55,56,57,58,59,60,61,62,63,64,65', '1506407076', '1506407076', 'normal');
INSERT INTO `fa_auth_group` VALUES ('9', '8', '第五人民医院', '1,35,36,37,38,39,2,13,14,16,15,17,3,6,23,24,25,26,27,28,7,18,19,20,21,22,8,29,30,31,32,33,34', '1506407104', '1506407104', 'normal');
INSERT INTO `fa_auth_group` VALUES ('10', '9', '第五人民医院——护士组', '1,2,13,14,16,15,17,6,23,24,25,26,27,28,7,18,19,20,21,22,8,29,30,31,32,33,34', '1506407214', '1506407214', 'normal');
INSERT INTO `fa_auth_group` VALUES ('11', '9', '第五人民医院——领导组', '1,35,36,37,38,39,2,13,14,16,15,17,3,6,23,24,25,26,27,28,7,18,19,20,21,22,8,29,30,31,32,33,34', '1506407251', '1506407251', 'normal');
INSERT INTO `fa_auth_group` VALUES ('13', '8', '第一人民医院', '1,35,36,37,38,39,2,13,14,16,15,17,3,6,23,24,25,26,27,28,7,18,19,20,21,22,8,29,30,31,32,33,34', '1506409989', '1506411429', 'normal');
INSERT INTO `fa_auth_group` VALUES ('18', '8', '第二人民医院', '1,13,14,16,15,17', '1506415644', '1506415644', 'normal');
INSERT INTO `fa_auth_group` VALUES ('19', '8', '第三人民医院', '1,13,14,16,15,17', '1506415658', '1506415658', 'normal');

-- ----------------------------
-- Table structure for `fa_auth_group_access`
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_group_access`;
CREATE TABLE `fa_auth_group_access` (
  `uid` int(10) unsigned NOT NULL COMMENT '会员ID',
  `group_id` int(10) unsigned NOT NULL COMMENT '级别ID',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限分组表';

-- ----------------------------
-- Records of fa_auth_group_access
-- ----------------------------
INSERT INTO `fa_auth_group_access` VALUES ('1', '1');
INSERT INTO `fa_auth_group_access` VALUES ('2', '2');
INSERT INTO `fa_auth_group_access` VALUES ('3', '3');
INSERT INTO `fa_auth_group_access` VALUES ('4', '5');
INSERT INTO `fa_auth_group_access` VALUES ('5', '5');

-- ----------------------------
-- Table structure for `fa_auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_rule`;
CREATE TABLE `fa_auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('menu','file') NOT NULL DEFAULT 'file' COMMENT 'menu为菜单,file为权限节点',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则名称',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '规则名称',
  `icon` varchar(50) NOT NULL DEFAULT '' COMMENT '图标',
  `condition` varchar(255) NOT NULL DEFAULT '' COMMENT '条件',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为菜单',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `pid` (`pid`),
  KEY `weigh` (`weigh`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='节点表';

-- ----------------------------
-- Records of fa_auth_rule
-- ----------------------------
INSERT INTO `fa_auth_rule` VALUES ('1', 'file', '0', 'dashboard', 'Dashboard', 'fa fa-dashboard\r', '', 'Dashboard tips', '1', '1497429920', '1497429920', '143', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('2', 'file', '0', 'general', 'General', 'fa fa-cogs', '', '', '1', '1497429920', '1497430169', '137', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('3', 'file', '0', 'category', 'Category', 'fa fa-list\r', '', 'Category tips', '1', '1497429920', '1497429920', '119', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('4', 'file', '0', 'addon', 'Addon', 'fa fa-rocket', '', 'Addon tips', '1', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('5', 'file', '0', 'auth', 'Auth', 'fa fa-group', '', '', '1', '1497429920', '1497430092', '99', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('6', 'file', '2', 'general/config', 'Config', 'fa fa-cog', '', 'Config tips', '1', '1497429920', '1497430683', '60', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('7', 'file', '2', 'general/attachment', 'Attachment', 'fa fa-file-image-o', '', 'Attachment tips', '1', '1497429920', '1497430699', '53', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('8', 'file', '2', 'general/profile', 'Profile', 'fa fa-user\r', '', '', '1', '1497429920', '1497429920', '34', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('9', 'file', '5', 'auth/admin', 'Admin', 'fa fa-user', '', 'Admin tips', '1', '1497429920', '1497430320', '118', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('10', 'file', '5', 'auth/adminlog', 'Admin log', 'fa fa-list-alt', '', 'Admin log tips', '1', '1497429920', '1497430307', '113', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('11', 'file', '5', 'auth/group', 'Group', 'fa fa-group', '', 'Group tips', '1', '1497429920', '1497429920', '109', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('12', 'file', '5', 'auth/rule', 'Rule', 'fa fa-bars', '', 'Rule tips', '1', '1497429920', '1497430581', '104', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('13', 'file', '1', 'dashboard/index', 'View', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '136', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('14', 'file', '1', 'dashboard/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '135', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('15', 'file', '1', 'dashboard/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '133', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('16', 'file', '1', 'dashboard/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '134', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('17', 'file', '1', 'dashboard/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '132', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('18', 'file', '6', 'general/config/index', 'View', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '52', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('19', 'file', '6', 'general/config/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '51', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('20', 'file', '6', 'general/config/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '50', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('21', 'file', '6', 'general/config/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '49', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('22', 'file', '6', 'general/config/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '48', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('23', 'file', '7', 'general/attachment/index', 'View', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '59', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('24', 'file', '7', 'general/attachment/select', 'Select attachment', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '58', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('25', 'file', '7', 'general/attachment/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '57', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('26', 'file', '7', 'general/attachment/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '56', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('27', 'file', '7', 'general/attachment/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '55', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('28', 'file', '7', 'general/attachment/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '54', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('29', 'file', '8', 'general/profile/index', 'View', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '33', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('30', 'file', '8', 'general/profile/update', 'Update profile', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '32', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('31', 'file', '8', 'general/profile/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '31', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('32', 'file', '8', 'general/profile/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '30', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('33', 'file', '8', 'general/profile/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '29', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('34', 'file', '8', 'general/profile/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '28', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('35', 'file', '3', 'category/index', 'View', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '142', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('36', 'file', '3', 'category/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '141', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('37', 'file', '3', 'category/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '140', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('38', 'file', '3', 'category/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '139', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('39', 'file', '3', 'category/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '138', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('40', 'file', '9', 'auth/admin/index', 'View', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '117', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('41', 'file', '9', 'auth/admin/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '116', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('42', 'file', '9', 'auth/admin/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '115', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('43', 'file', '9', 'auth/admin/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '114', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('44', 'file', '10', 'auth/adminlog/index', 'View', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '112', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('45', 'file', '10', 'auth/adminlog/detail', 'Detail', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '111', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('46', 'file', '10', 'auth/adminlog/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '110', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('47', 'file', '11', 'auth/group/index', 'View', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '108', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('48', 'file', '11', 'auth/group/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '107', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('49', 'file', '11', 'auth/group/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '106', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('50', 'file', '11', 'auth/group/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '105', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('51', 'file', '12', 'auth/rule/index', 'View', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '103', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('52', 'file', '12', 'auth/rule/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '102', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('53', 'file', '12', 'auth/rule/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '101', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('54', 'file', '12', 'auth/rule/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '100', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('55', 'file', '4', 'addon/index', 'View', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('56', 'file', '4', 'addon/add', 'Add', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('57', 'file', '4', 'addon/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('58', 'file', '4', 'addon/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('59', 'file', '4', 'addon/local', 'Local install', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('60', 'file', '4', 'addon/state', 'Update state', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('61', 'file', '4', 'addon/install', 'Install', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('62', 'file', '4', 'addon/uninstall', 'Uninstall', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('63', 'file', '4', 'addon/config', 'Setting', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('64', 'file', '4', 'addon/refresh', 'Refresh', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('65', 'file', '4', 'addon/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('93', 'file', '2', 'general/hospital', '医院配置', 'fa fa-bank', '', '', '1', '1506418066', '1506418066', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('94', 'file', '93', 'general/hospital/index', '查看', 'fa fa-dot', '', '', '0', '1506418177', '1506418177', '0', 'normal');

-- ----------------------------
-- Table structure for `fa_category`
-- ----------------------------
DROP TABLE IF EXISTS `fa_category`;
CREATE TABLE `fa_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目类型',
  `name` varchar(30) NOT NULL DEFAULT '',
  `nickname` varchar(50) NOT NULL DEFAULT '',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT '',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `diyname` varchar(30) NOT NULL DEFAULT '' COMMENT '自定义名称',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `weigh` (`weigh`,`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='分类表';

-- ----------------------------
-- Records of fa_category
-- ----------------------------
INSERT INTO `fa_category` VALUES ('1', '0', 'page', '官方新闻', 'news', 'recommend', '/assets/img/qrcode.png', '', '', 'news', '1495262190', '1495262190', '1', 'normal');
INSERT INTO `fa_category` VALUES ('2', '0', 'page', '移动应用', 'mobileapp', 'hot', '/assets/img/qrcode.png', '', '', 'mobileapp', '1495262244', '1495262244', '2', 'normal');
INSERT INTO `fa_category` VALUES ('3', '2', 'page', '微信公众号', 'wechatpublic', 'index', '/assets/img/qrcode.png', '', '', 'wechatpublic', '1495262288', '1495262288', '3', 'normal');
INSERT INTO `fa_category` VALUES ('4', '2', 'page', 'Android开发', 'android', 'recommend', '/assets/img/qrcode.png', '', '', 'android', '1495262317', '1495262317', '4', 'normal');
INSERT INTO `fa_category` VALUES ('5', '0', 'page', '软件产品', 'software', 'recommend', '/assets/img/qrcode.png', '', '', 'software', '1495262336', '1499681850', '5', 'normal');
INSERT INTO `fa_category` VALUES ('6', '5', 'page', '网站建站', 'website', 'hot,index,recommend', '/assets/img/qrcode.png', '', '', 'website', '1495262357', '1506403985', '6', 'normal');
INSERT INTO `fa_category` VALUES ('7', '5', 'page', '企业管理软件', 'company', 'index', '/assets/img/qrcode.png', '', '', 'company', '1495262391', '1495262391', '7', 'normal');
INSERT INTO `fa_category` VALUES ('8', '6', 'page', 'PC端', 'website-pc', 'recommend', '/assets/img/qrcode.png', '', '', 'website-pc', '1495262424', '1495262424', '8', 'normal');
INSERT INTO `fa_category` VALUES ('9', '6', 'page', '移动端', 'website-mobile', 'recommend', '/assets/img/qrcode.png', '', '', 'website-mobile', '1495262456', '1495262456', '9', 'normal');
INSERT INTO `fa_category` VALUES ('10', '7', 'page', 'CRM系统 ', 'company-crm', 'recommend', '/assets/img/qrcode.png', '', '', 'company-crm', '1495262487', '1495262487', '10', 'normal');
INSERT INTO `fa_category` VALUES ('11', '7', 'page', 'SASS平台软件', 'company-sass', 'recommend', '/assets/img/qrcode.png', '', '', 'company-sass', '1495262515', '1495262515', '11', 'normal');
INSERT INTO `fa_category` VALUES ('12', '0', 'test', '测试1', 'test1', 'recommend', '/assets/img/qrcode.png', '', '', 'test1', '1497015727', '1497015727', '12', 'normal');
INSERT INTO `fa_category` VALUES ('13', '0', 'test', '测试2', 'test2', 'hot,recommend', '/assets/img/qrcode.png', '', '', 'test2', '1497015738', '1506350940', '13', 'normal');

-- ----------------------------
-- Table structure for `fa_config`
-- ----------------------------
DROP TABLE IF EXISTS `fa_config`;
CREATE TABLE `fa_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '变量名',
  `group` varchar(30) NOT NULL DEFAULT '' COMMENT '分组',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '变量标题',
  `tip` varchar(100) NOT NULL DEFAULT '' COMMENT '变量描述',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '类型:string,text,int,bool,array,datetime,date,file',
  `value` text NOT NULL COMMENT '变量值',
  `content` text NOT NULL COMMENT '变量字典数据',
  `rule` varchar(100) NOT NULL DEFAULT '' COMMENT '验证规则',
  `extend` varchar(255) NOT NULL DEFAULT '' COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='系统配置';

-- ----------------------------
-- Records of fa_config
-- ----------------------------
INSERT INTO `fa_config` VALUES ('1', 'name', 'basic', 'Site name', '请填写站点名称', 'string', 'FastAdmin', '', 'required', '');
INSERT INTO `fa_config` VALUES ('2', 'beian', 'basic', 'Beian', '粤ICP备15054802号-4', 'string', '', '', '', '');
INSERT INTO `fa_config` VALUES ('3', 'cdnurl', 'basic', 'Cdn url', '如果使用CDN云储存请配置该值', 'string', '', '', '', '');
INSERT INTO `fa_config` VALUES ('4', 'version', 'basic', 'Version', '如果静态资源有变动请重新配置该值', 'string', '1.0.1', '', 'required', '');
INSERT INTO `fa_config` VALUES ('5', 'timezone', 'basic', 'Timezone', '', 'string', 'Asia/Shanghai', '', 'required', '');
INSERT INTO `fa_config` VALUES ('6', 'forbiddenip', 'basic', 'Forbidden ip', '一行一条记录', 'text', '', '', '', '');
INSERT INTO `fa_config` VALUES ('7', 'languages', 'basic', 'Languages', '', 'array', '{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"}', '', 'required', '');
INSERT INTO `fa_config` VALUES ('8', 'fixedpage', 'basic', 'Fixed page', '请尽量输入左侧菜单栏存在的链接', 'string', 'dashboard', '', 'required', '');
INSERT INTO `fa_config` VALUES ('9', 'categorytype', 'dictionary', 'Cateogry type', '', 'array', '{\"default\":\"Default\",\"page\":\"Page\",\"article\":\"Article\",\"test\":\"Test\"}', '', '', '');
INSERT INTO `fa_config` VALUES ('10', 'configgroup', 'dictionary', 'Config group', '', 'array', '{\"basic\":\"Basic\",\"email\":\"Email\",\"dictionary\":\"Dictionary\",\"user\":\"User\",\"example\":\"Example\"}', '', '', '');
INSERT INTO `fa_config` VALUES ('11', 'mail_type', 'email', 'Mail type', '选择邮件发送方式', 'select', '1', '[\"Please select\",\"SMTP\",\"Mail\"]', '', '');
INSERT INTO `fa_config` VALUES ('12', 'mail_smtp_host', 'email', 'Mail smtp host', '错误的配置发送邮件会导致服务器超时', 'string', 'smtp.qq.com', '', '', '');
INSERT INTO `fa_config` VALUES ('13', 'mail_smtp_port', 'email', 'Mail smtp port', '(不加密默认25,SSL默认465,TLS默认587)', 'string', '465', '', '', '');
INSERT INTO `fa_config` VALUES ('14', 'mail_smtp_user', 'email', 'Mail smtp user', '（填写完整用户名）', 'string', '10000', '', '', '');
INSERT INTO `fa_config` VALUES ('15', 'mail_smtp_pass', 'email', 'Mail smtp password', '（填写您的密码）', 'string', 'password', '', '', '');
INSERT INTO `fa_config` VALUES ('16', 'mail_verify_type', 'email', 'Mail vertify type', '（SMTP验证方式[推荐SSL]）', 'select', '2', '[\"None\",\"TLS\",\"SSL\"]', '', '');
INSERT INTO `fa_config` VALUES ('17', 'mail_from', 'email', 'Mail from', '', 'string', '10000@qq.com', '', '', '');
INSERT INTO `fa_config` VALUES ('18', '测试配置', 'user', 'demo', '', 'string', '', '', '', '');

-- ----------------------------
-- Table structure for `fa_hospital`
-- ----------------------------
DROP TABLE IF EXISTS `fa_hospital`;
CREATE TABLE `fa_hospital` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(11) unsigned NOT NULL,
  `title` varchar(50) NOT NULL COMMENT '医院名字',
  `pid` int(11) NOT NULL DEFAULT '0',
  `is_set` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否对基础信息进行了设置',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `update_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fa_hospital
-- ----------------------------
INSERT INTO `fa_hospital` VALUES ('1', '13', '第一人民医院', '0', '0', '2017-09-26 16:30:45', '1', '2017-09-26 16:30:45', '0');
INSERT INTO `fa_hospital` VALUES ('2', '9', '第五人民医院', '0', '0', '2017-09-26 15:49:39', '1', null, '0');
INSERT INTO `fa_hospital` VALUES ('17', '16', '第二人民医院', '0', '0', '2017-09-26 16:43:31', '1', '2017-09-26 16:43:31', '1');
INSERT INTO `fa_hospital` VALUES ('18', '17', '第三人民医院', '0', '0', '2017-09-26 16:41:39', '0', '2017-09-26 16:41:39', '0');
INSERT INTO `fa_hospital` VALUES ('19', '18', '第二人民医院', '0', '0', '2017-09-26 16:47:24', '1', null, '0');
INSERT INTO `fa_hospital` VALUES ('20', '19', '第三人民医院', '0', '0', '2017-09-26 16:47:38', '1', null, '0');

-- ----------------------------
-- Table structure for `fa_hospital_detail`
-- ----------------------------
DROP TABLE IF EXISTS `fa_hospital_detail`;
CREATE TABLE `fa_hospital_detail` (
  `hospital_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `link_account` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`hospital_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fa_hospital_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `fa_test`
-- ----------------------------
DROP TABLE IF EXISTS `fa_test`;
CREATE TABLE `fa_test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) NOT NULL COMMENT '管理员ID',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID(单选)',
  `category_ids` varchar(100) NOT NULL COMMENT '分类ID(多选)',
  `week` enum('monday','tuesday','wednesday') NOT NULL COMMENT '星期(单选):monday=星期一,tuesday=星期二,wednesday=星期三',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT '' COMMENT '标志(多选):hot=热门,index=首页,recommend=推荐',
  `genderdata` enum('male','female') NOT NULL DEFAULT 'male' COMMENT '性别(单选):male=男,female=女',
  `hobbydata` set('music','reading','swimming') NOT NULL COMMENT '爱好(多选):music=音乐,reading=读书,swimming=游泳',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `images` varchar(1500) NOT NULL DEFAULT '' COMMENT '图片组',
  `attachfile` varchar(100) NOT NULL DEFAULT '' COMMENT '附件',
  `keywords` varchar(100) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `city` varchar(100) NOT NULL DEFAULT '' COMMENT '省市',
  `price` float(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '价格',
  `views` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击',
  `startdate` date DEFAULT NULL COMMENT '开始日期',
  `activitytime` datetime DEFAULT NULL COMMENT '活动时间(datetime)',
  `year` year(4) DEFAULT NULL COMMENT '年',
  `times` time DEFAULT NULL COMMENT '时间',
  `refreshtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '刷新时间(int)',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `switch` tinyint(1) NOT NULL DEFAULT '0' COMMENT '开关',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态',
  `state` enum('0','1','2') NOT NULL DEFAULT '1' COMMENT '状态值:0=禁用,1=正常,2=推荐',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='测试表';

-- ----------------------------
-- Records of fa_test
-- ----------------------------
INSERT INTO `fa_test` VALUES ('1', '0', '12', '12,13', 'monday', 'hot,index', 'male', 'music,reading', '我是一篇测试文章', '<p>我是测试内容</p>', '/assets/img/avatar.png', '/assets/img/avatar.png,/assets/img/qrcode.png', '/assets/img/avatar.png', '关键字', '描述', '广西壮族自治区/百色市/平果县', '0.00', '0', '2017-07-10', '2017-07-10 18:24:45', '2017', '18:24:45', '1499682285', '1499682526', '1499682526', '0', '1', 'normal', '1');

-- ----------------------------
-- Table structure for `fa_uninpay`
-- ----------------------------
DROP TABLE IF EXISTS `fa_uninpay`;
CREATE TABLE `fa_uninpay` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hospital_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fa_uninpay
-- ----------------------------

-- ----------------------------
-- Table structure for `fa_wechat_autoreply`
-- ----------------------------
DROP TABLE IF EXISTS `fa_wechat_autoreply`;
CREATE TABLE `fa_wechat_autoreply` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '标题',
  `text` varchar(100) NOT NULL DEFAULT '' COMMENT '触发文本',
  `eventkey` varchar(50) NOT NULL DEFAULT '' COMMENT '响应事件',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='微信自动回复表';

-- ----------------------------
-- Records of fa_wechat_autoreply
-- ----------------------------
INSERT INTO `fa_wechat_autoreply` VALUES ('1', '输入hello', 'hello', '58c7d908c4570', '123', '1493366855', '1493366855', 'normal');
INSERT INTO `fa_wechat_autoreply` VALUES ('2', '输入你好', '你好', '58fdfaa9e1965', 'sad', '1493704976', '1493704976', 'normal');

-- ----------------------------
-- Table structure for `fa_wechat_config`
-- ----------------------------
DROP TABLE IF EXISTS `fa_wechat_config`;
CREATE TABLE `fa_wechat_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '配置名称',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '配置标题',
  `value` text NOT NULL COMMENT '配置值',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='微信配置表';

-- ----------------------------
-- Records of fa_wechat_config
-- ----------------------------
INSERT INTO `fa_wechat_config` VALUES ('1', 'menu', '微信菜单', '[{\"name\":\"FastAdmin\",\"sub_button\":[{\"name\":\"官网\",\"type\":\"view\",\"url\":\"http:\\/\\/www.fastadmin.net\"},{\"name\":\"在线演示\",\"type\":\"click\",\"key\":\"\"},{\"name\":\"文档\",\"type\":\"view\",\"url\":\"http:\\/\\/doc.fastadmin.net\"}]},{\"name\":\"在线客服\",\"type\":\"click\",\"key\":\"58cb852984970\"},{\"name\":\"关于我们\",\"type\":\"click\",\"key\":\"58bf944aa0777\"}]', '1497398820', '1500538185');
INSERT INTO `fa_wechat_config` VALUES ('2', 'service', '客服配置', '{\"onlinetime\":\"09:00-18:00\",\"offlinemsg\":\"请在工作时间联系客服！\",\"nosessionmsg\":\"当前没有客服在线！请稍后重试！\",\"waitformsg\":\"请问有什么可以帮到您？\"}', '1497429674', '1497429674');
INSERT INTO `fa_wechat_config` VALUES ('3', 'signin', '连续登录配置', '{\"s1\":\"100\",\"s2\":\"200\",\"s3\":\"300\",\"sn\":\"500\"}', '1497429711', '1497429711');

-- ----------------------------
-- Table structure for `fa_wechat_context`
-- ----------------------------
DROP TABLE IF EXISTS `fa_wechat_context`;
CREATE TABLE `fa_wechat_context` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `openid` varchar(64) NOT NULL DEFAULT '',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '类型',
  `eventkey` varchar(64) NOT NULL DEFAULT '',
  `command` varchar(64) NOT NULL DEFAULT '',
  `message` varchar(255) NOT NULL DEFAULT '' COMMENT '内容',
  `refreshtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后刷新时间',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `openid` (`openid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='微信上下文表';

-- ----------------------------
-- Records of fa_wechat_context
-- ----------------------------

-- ----------------------------
-- Table structure for `fa_wechat_response`
-- ----------------------------
DROP TABLE IF EXISTS `fa_wechat_response`;
CREATE TABLE `fa_wechat_response` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '资源名',
  `eventkey` varchar(128) NOT NULL DEFAULT '' COMMENT '事件',
  `type` enum('text','image','news','voice','video','music','link','app') NOT NULL DEFAULT 'text' COMMENT '类型',
  `content` text NOT NULL COMMENT '内容',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `event` (`eventkey`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='微信资源表';

-- ----------------------------
-- Records of fa_wechat_response
-- ----------------------------
INSERT INTO `fa_wechat_response` VALUES ('1', '签到送积分', '58adaf7876aab', 'app', '{\"app\":\"signin\"}', '', '1487777656', '1487777656', 'normal');
INSERT INTO `fa_wechat_response` VALUES ('2', '关于我们', '58bf944aa0777', 'app', '{\"app\":\"page\",\"id\":\"1\"}', '', '1488950346', '1488950346', 'normal');
INSERT INTO `fa_wechat_response` VALUES ('3', '自动回复1', '58c7d908c4570', 'text', '{\"content\":\"world\"}', '', '1489492232', '1489492232', 'normal');
INSERT INTO `fa_wechat_response` VALUES ('4', '联系客服', '58cb852984970', 'app', '{\"app\":\"service\"}', '', '1489732905', '1489732905', 'normal');
INSERT INTO `fa_wechat_response` VALUES ('5', '自动回复2', '58fdfaa9e1965', 'text', '{\"content\":\"我是FastAdmin!\"}', '', '1493039785', '1493039785', 'normal');
