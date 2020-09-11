/*
Navicat MariaDB Data Transfer

Source Server         : localhost
Source Server Version : 50565
Source Host           : localhost:3308
Source Database       : yii2_admin

Target Server Type    : MariaDB
Target Server Version : 50565
File Encoding         : 65001

Date: 2020-09-11 22:41:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'zhBcsZn1hLStm6-eqdU0H1Fv9MctRK0T', '$2y$13$G4elR6hluQ4OeeEr9SmiUuI4lZvLtkzut11nIlCqAkUcs3DXAc/ai', null, 'liu.lipeng@newsnow.com.cn', '10', '0', '1599834495');
INSERT INTO `admin` VALUES ('2', 'hy', 'fm_jqCbPAdJonfJAccUdX5takKHJmW31', '$2y$13$maGoVUfye6sQGYPpyJSQSObXTmCJ8HuxCjX7qHsFrOKU0W/NihtSS', null, 'hy@loveyou.com', '10', '1599834353', '1599834353');

-- ----------------------------
-- Table structure for admin_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_log`;
CREATE TABLE `admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `route` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gets` text COLLATE utf8_unicode_ci,
  `posts` text COLLATE utf8_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of admin_log
-- ----------------------------
INSERT INTO `admin_log` VALUES ('1', 'sys/sysuser/index', 'http://local.yii2.admin:8080/sys/sysuser/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '[]', '1', 'liu.lipeng@newsnow.com.cn', '10.0.2.2', '1599834065', '1599834065');
INSERT INTO `admin_log` VALUES ('2', 'sys/sysuser/view', 'http://local.yii2.admin:8080/sys/sysuser/view?id=1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"id\":\"1\"}', '[]', '1', 'liu.lipeng@newsnow.com.cn', '10.0.2.2', '1599834068', '1599834068');
INSERT INTO `admin_log` VALUES ('3', 'sys/role/index', 'http://local.yii2.admin:8080/sys/role/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '[]', '1', 'liu.lipeng@newsnow.com.cn', '10.0.2.2', '1599834071', '1599834071');
INSERT INTO `admin_log` VALUES ('4', 'sys/role/view', 'http://local.yii2.admin:8080/sys/role/view?id=Admin', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"id\":\"Admin\"}', '[]', '1', 'liu.lipeng@newsnow.com.cn', '10.0.2.2', '1599834270', '1599834270');
INSERT INTO `admin_log` VALUES ('5', 'sys/role/index', 'http://local.yii2.admin:8080/sys/role/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '[]', '1', 'liu.lipeng@newsnow.com.cn', '10.0.2.2', '1599834294', '1599834294');
INSERT INTO `admin_log` VALUES ('6', 'sys/role/create', 'http://local.yii2.admin:8080/sys/role/create', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '[]', '1', 'liu.lipeng@newsnow.com.cn', '10.0.2.2', '1599834296', '1599834296');
INSERT INTO `admin_log` VALUES ('7', 'sys/role/create', 'http://local.yii2.admin:8080/sys/role/create', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '{\"_csrf\":\"9Itp8yM2FOm-PZ2tR-hB_MeBxjol3pj8zFdw_hrpYK-k6TGnRg9fruQPrJ8tsHO3kfmOA1OwwpapOwCQXKNN2A==\",\"AuthItem\":{\"name\":\"Manger\",\"description\":\"Manger\",\"ruleName\":\"\",\"data\":\"\"}}', '1', 'liu.lipeng@newsnow.com.cn', '10.0.2.2', '1599834308', '1599834308');
INSERT INTO `admin_log` VALUES ('8', 'sys/role/view', 'http://local.yii2.admin:8080/sys/role/view?id=Manger', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"id\":\"Manger\"}', '[]', '1', 'liu.lipeng@newsnow.com.cn', '10.0.2.2', '1599834308', '1599834308');
INSERT INTO `admin_log` VALUES ('9', 'sys/role/view', 'http://local.yii2.admin:8080/sys/role/view?id=Manger', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"id\":\"Manger\"}', '{\"_csrf\":\"9KuBldLfI0-Mc0-t3T5HA5BvhsgqqGl1FFqkg6TQibOkydnBt-ZoCNZBfp-3ZnVIxhfO8VzGMx9xNtTt4pqkxA==\",\"items\":{\"\\u65e5\\u5fd7\\u7ba1\\u7406\":\"885_886\",\"\\u67e5\\u770b\\u5217\\u8868\":\"885_886_887\",\"\\u67e5\\u770b\\u65e5\\u5fd7\\u8be6\\u60c5\":\"885_886_889\",\"\\u7528\\u6237\\u5217\\u8868\":\"885_902_903\"}}', '1', 'liu.lipeng@newsnow.com.cn', '10.0.2.2', '1599834321', '1599834321');
INSERT INTO `admin_log` VALUES ('10', 'sys/role/view', 'http://local.yii2.admin:8080/sys/role/view?id=Manger', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"id\":\"Manger\"}', '[]', '1', 'liu.lipeng@newsnow.com.cn', '10.0.2.2', '1599834322', '1599834322');
INSERT INTO `admin_log` VALUES ('11', 'sys/role/index', 'http://local.yii2.admin:8080/sys/role/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '[]', '1', 'liu.lipeng@newsnow.com.cn', '10.0.2.2', '1599834324', '1599834324');
INSERT INTO `admin_log` VALUES ('12', 'sys/role/view', 'http://local.yii2.admin:8080/sys/role/view?id=Manger', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"id\":\"Manger\"}', '[]', '1', 'liu.lipeng@newsnow.com.cn', '10.0.2.2', '1599834327', '1599834327');
INSERT INTO `admin_log` VALUES ('13', 'sys/role/index', 'http://local.yii2.admin:8080/sys/role/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '[]', '1', 'liu.lipeng@newsnow.com.cn', '10.0.2.2', '1599834329', '1599834329');
INSERT INTO `admin_log` VALUES ('14', 'sys/sysuser/index', 'http://local.yii2.admin:8080/sys/sysuser/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '[]', '1', 'liu.lipeng@newsnow.com.cn', '10.0.2.2', '1599834332', '1599834332');
INSERT INTO `admin_log` VALUES ('15', 'sys/sysuser/create', 'http://local.yii2.admin:8080/sys/sysuser/create', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '[]', '1', 'liu.lipeng@newsnow.com.cn', '10.0.2.2', '1599834335', '1599834335');
INSERT INTO `admin_log` VALUES ('16', 'sys/sysuser/create', 'http://local.yii2.admin:8080/sys/sysuser/create', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '{\"_csrf\":\"-ZlBXGAXcnJ9SLmrfpWx5i_OZGK73oJO57T7GEZTAUup-xkIBS45NSd6iJkUzYOtebYsW82w2CSC2It2ABksPA==\",\"AdminModel\":{\"username\":\"hy\",\"email\":\"hy@loveyou.com\",\"password\":\"111111\"}}', '1', 'liu.lipeng@newsnow.com.cn', '10.0.2.2', '1599834353', '1599834353');
INSERT INTO `admin_log` VALUES ('17', 'sys/sysuser/index', 'http://local.yii2.admin:8080/sys/sysuser/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '[]', '1', 'liu.lipeng@newsnow.com.cn', '10.0.2.2', '1599834353', '1599834353');
INSERT INTO `admin_log` VALUES ('18', 'sys/sysuser/view', 'http://local.yii2.admin:8080/sys/sysuser/view?id=2', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"id\":\"2\"}', '[]', '1', 'liu.lipeng@newsnow.com.cn', '10.0.2.2', '1599834355', '1599834355');
INSERT INTO `admin_log` VALUES ('19', 'sys/sysuser/assign', 'http://local.yii2.admin:8080/sys/sysuser/assign?id=2', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"id\":\"2\"}', '{\"action\":\"assign\",\"roles\":[\"Manger\"]}', '1', 'liu.lipeng@newsnow.com.cn', '10.0.2.2', '1599834358', '1599834358');
INSERT INTO `admin_log` VALUES ('20', 'sys/log/index', 'http://local.yii2.admin:8080/sys/log/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '[]', '2', 'hy@loveyou.com', '10.0.2.2', '1599834379', '1599834379');
INSERT INTO `admin_log` VALUES ('21', 'sys/log/view', 'http://local.yii2.admin:8080/sys/log/view?id=19', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"id\":\"19\"}', '[]', '2', 'hy@loveyou.com', '10.0.2.2', '1599834381', '1599834381');
INSERT INTO `admin_log` VALUES ('22', 'sys/sysuser/index', 'http://local.yii2.admin:8080/sys/sysuser/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '[]', '2', 'hy@loveyou.com', '10.0.2.2', '1599834383', '1599834383');
INSERT INTO `admin_log` VALUES ('23', 'sys/sysuser/index', 'http://local.yii2.admin:8080/sys/sysuser/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '[]', '2', 'hy@loveyou.com', '10.0.2.2', '1599834385', '1599834385');
INSERT INTO `admin_log` VALUES ('24', 'sys/sysuser/index', 'http://local.yii2.admin:8080/sys/sysuser/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '[]', '2', 'hy@loveyou.com', '10.0.2.2', '1599834390', '1599834390');
INSERT INTO `admin_log` VALUES ('25', 'sys/sysuser/index', 'http://local.yii2.admin:8080/sys/sysuser/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '[]', '2', 'hy@loveyou.com', '10.0.2.2', '1599834446', '1599834446');
INSERT INTO `admin_log` VALUES ('26', 'sys/sysuser/index', 'http://local.yii2.admin:8080/sys/sysuser/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '[]', '1', 'liu.lipeng@newsnow.com.cn', '10.0.2.2', '1599834474', '1599834474');
INSERT INTO `admin_log` VALUES ('27', 'sys/sysuser/update', 'http://local.yii2.admin:8080/sys/sysuser/update?id=1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"id\":\"1\"}', '[]', '1', 'liu.lipeng@newsnow.com.cn', '10.0.2.2', '1599834487', '1599834487');
INSERT INTO `admin_log` VALUES ('28', 'sys/sysuser/update', 'http://local.yii2.admin:8080/sys/sysuser/update?id=1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '{\"id\":\"1\"}', '{\"_csrf\":\"tVrVQrZjL4O4ZPx1w3YOHDrihGMD9pLqGlskc8hMzQDcL4oIgTNNxYkdxBaGPE0oYtrPDVHb99lcC1IV5Xn4Wg==\",\"AdminModel\":{\"username\":\"admin\",\"email\":\"liu.lipeng@newsnow.com.cn\",\"password\":\"111111\"}}', '1', 'liu.lipeng@newsnow.com.cn', '10.0.2.2', '1599834495', '1599834495');
INSERT INTO `admin_log` VALUES ('29', 'sys/sysuser/index', 'http://local.yii2.admin:8080/sys/sysuser/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36', '[]', '[]', '1', 'liu.lipeng@newsnow.com.cn', '10.0.2.2', '1599834495', '1599834495');

-- ----------------------------
-- Table structure for auth_assignment
-- ----------------------------
DROP TABLE IF EXISTS `auth_assignment`;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`) USING BTREE,
  KEY `idx-auth_assignment-user_id` (`user_id`) USING BTREE,
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of auth_assignment
-- ----------------------------
INSERT INTO `auth_assignment` VALUES ('Admin', '1', null);
INSERT INTO `auth_assignment` VALUES ('Manger', '2', '1599834358');

-- ----------------------------
-- Table structure for auth_item
-- ----------------------------
DROP TABLE IF EXISTS `auth_item`;
CREATE TABLE `auth_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT '0',
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_menu` smallint(255) DEFAULT '0',
  `menu_level` smallint(6) DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`,`id`) USING BTREE,
  UNIQUE KEY `id` (`id`) USING BTREE,
  KEY `rule_name` (`rule_name`) USING BTREE,
  KEY `idx-auth_item-type` (`type`) USING BTREE,
  KEY `name` (`name`) USING BTREE,
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=918 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT COMMENT='url 主要是模块和控制器用到，对应前端vue的url';

-- ----------------------------
-- Records of auth_item
-- ----------------------------
INSERT INTO `auth_item` VALUES ('888', '887', '/sys/log/index', '2', '', '0', '0', null, null, null, null, null);
INSERT INTO `auth_item` VALUES ('890', '889', '/sys/log/view', '2', '', '0', '0', null, null, null, null, null);
INSERT INTO `auth_item` VALUES ('897', '896', '/sys/role/create', '2', '', '0', '0', null, null, null, null, null);
INSERT INTO `auth_item` VALUES ('901', '900', '/sys/role/delete', '2', '', '0', '0', null, null, null, null, null);
INSERT INTO `auth_item` VALUES ('893', '892', '/sys/role/index', '2', '', '0', '0', null, null, null, null, null);
INSERT INTO `auth_item` VALUES ('899', '898', '/sys/role/update', '2', '', '0', '0', null, null, null, null, null);
INSERT INTO `auth_item` VALUES ('895', '894', '/sys/role/view', '2', '', '0', '0', null, null, null, null, null);
INSERT INTO `auth_item` VALUES ('908', '907', '/sys/sysuser/assign', '2', '', '0', '0', null, null, null, null, null);
INSERT INTO `auth_item` VALUES ('912', '911', '/sys/sysuser/create', '2', '', '0', '0', null, null, null, null, null);
INSERT INTO `auth_item` VALUES ('916', '915', '/sys/sysuser/delete', '2', '', '0', '0', null, null, null, null, null);
INSERT INTO `auth_item` VALUES ('904', '903', '/sys/sysuser/index', '2', '', '0', '0', null, null, null, null, null);
INSERT INTO `auth_item` VALUES ('910', '909', '/sys/sysuser/search', '2', '', '0', '0', null, null, null, null, null);
INSERT INTO `auth_item` VALUES ('914', '913', '/sys/sysuser/update', '2', '', '0', '0', null, null, null, null, null);
INSERT INTO `auth_item` VALUES ('906', '905', '/sys/sysuser/view', '2', '', '0', '0', null, null, null, null, null);
INSERT INTO `auth_item` VALUES ('867', '0', 'Admin', '1', null, '0', '0', null, null, null, null, null);
INSERT INTO `auth_item` VALUES ('917', '0', 'Manger', '1', null, '0', '0', 'Manger', null, null, '1599834307', '1599834307');
INSERT INTO `auth_item` VALUES ('913', '902', '修改用户', '2', '', '0', '0', null, null, null, null, null);
INSERT INTO `auth_item` VALUES ('898', '891', '修改角色', '2', '', '0', '0', null, null, null, null, null);
INSERT INTO `auth_item` VALUES ('907', '902', '分配权限', '2', '', '0', '0', null, null, null, null, null);
INSERT INTO `auth_item` VALUES ('915', '902', '删除用户', '2', '', '0', '0', null, null, null, null, null);
INSERT INTO `auth_item` VALUES ('900', '891', '删除角色', '2', '', '0', '0', null, null, null, null, null);
INSERT INTO `auth_item` VALUES ('909', '902', '搜索用户', '2', '', '0', '0', null, null, null, null, null);
INSERT INTO `auth_item` VALUES ('911', '902', '新增用户', '2', '', '0', '0', null, null, null, null, null);
INSERT INTO `auth_item` VALUES ('896', '891', '新增角色', '2', '', '0', '0', null, null, null, null, null);
INSERT INTO `auth_item` VALUES ('886', '885', '日志管理', '2', '/sys/log', '1', '2', null, null, null, null, null);
INSERT INTO `auth_item` VALUES ('887', '886', '查看列表', '2', '', '0', '0', null, null, null, null, null);
INSERT INTO `auth_item` VALUES ('889', '886', '查看日志详情', '2', '', '0', '0', null, null, null, null, null);
INSERT INTO `auth_item` VALUES ('905', '902', '查看用户', '2', '', '0', '0', null, null, null, null, null);
INSERT INTO `auth_item` VALUES ('894', '891', '查看角色详情', '2', '', '0', '0', null, null, null, null, null);
INSERT INTO `auth_item` VALUES ('903', '902', '用户列表', '2', '', '0', '0', null, null, null, null, null);
INSERT INTO `auth_item` VALUES ('902', '885', '用户管理', '2', '/sys/sysuser', '1', '2', null, null, null, null, null);
INSERT INTO `auth_item` VALUES ('885', '0', '系统管理', '2', '/sys', '1', '1', null, null, null, null, null);
INSERT INTO `auth_item` VALUES ('892', '891', '角色列表', '2', '', '0', '0', null, null, null, null, null);
INSERT INTO `auth_item` VALUES ('891', '885', '角色管理', '2', '/sys/role', '1', '2', null, null, null, null, null);

-- ----------------------------
-- Table structure for auth_item_child
-- ----------------------------
DROP TABLE IF EXISTS `auth_item_child`;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `auth_type` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`parent`,`child`) USING BTREE,
  KEY `child` (`child`) USING BTREE,
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of auth_item_child
-- ----------------------------
INSERT INTO `auth_item_child` VALUES ('Admin', '系统管理', '1');
INSERT INTO `auth_item_child` VALUES ('Manger', '日志管理', '2');
INSERT INTO `auth_item_child` VALUES ('Manger', '查看列表', '2');
INSERT INTO `auth_item_child` VALUES ('Manger', '查看日志详情', '2');
INSERT INTO `auth_item_child` VALUES ('Manger', '用户列表', '2');
INSERT INTO `auth_item_child` VALUES ('修改用户', '/sys/sysuser/update', '2');
INSERT INTO `auth_item_child` VALUES ('修改角色', '/sys/role/update', '2');
INSERT INTO `auth_item_child` VALUES ('分配权限', '/sys/sysuser/assign', '2');
INSERT INTO `auth_item_child` VALUES ('删除用户', '/sys/sysuser/delete', '2');
INSERT INTO `auth_item_child` VALUES ('删除角色', '/sys/role/delete', '2');
INSERT INTO `auth_item_child` VALUES ('搜索用户', '/sys/sysuser/search', '2');
INSERT INTO `auth_item_child` VALUES ('新增用户', '/sys/sysuser/create', '2');
INSERT INTO `auth_item_child` VALUES ('新增角色', '/sys/role/create', '2');
INSERT INTO `auth_item_child` VALUES ('日志管理', '查看列表', '2');
INSERT INTO `auth_item_child` VALUES ('日志管理', '查看日志详情', '2');
INSERT INTO `auth_item_child` VALUES ('查看列表', '/sys/log/index', '2');
INSERT INTO `auth_item_child` VALUES ('查看日志详情', '/sys/log/view', '2');
INSERT INTO `auth_item_child` VALUES ('查看用户', '/sys/sysuser/view', '2');
INSERT INTO `auth_item_child` VALUES ('查看角色详情', '/sys/role/view', '2');
INSERT INTO `auth_item_child` VALUES ('用户列表', '/sys/sysuser/index', '2');
INSERT INTO `auth_item_child` VALUES ('用户管理', '修改用户', '2');
INSERT INTO `auth_item_child` VALUES ('用户管理', '分配权限', '2');
INSERT INTO `auth_item_child` VALUES ('用户管理', '删除用户', '2');
INSERT INTO `auth_item_child` VALUES ('用户管理', '搜索用户', '2');
INSERT INTO `auth_item_child` VALUES ('用户管理', '新增用户', '2');
INSERT INTO `auth_item_child` VALUES ('用户管理', '查看用户', '2');
INSERT INTO `auth_item_child` VALUES ('用户管理', '用户列表', '2');
INSERT INTO `auth_item_child` VALUES ('系统管理', '日志管理', '2');
INSERT INTO `auth_item_child` VALUES ('系统管理', '用户管理', '2');
INSERT INTO `auth_item_child` VALUES ('系统管理', '角色管理', '2');
INSERT INTO `auth_item_child` VALUES ('角色列表', '/sys/role/index', '2');
INSERT INTO `auth_item_child` VALUES ('角色管理', '修改角色', '2');
INSERT INTO `auth_item_child` VALUES ('角色管理', '删除角色', '2');
INSERT INTO `auth_item_child` VALUES ('角色管理', '新增角色', '2');
INSERT INTO `auth_item_child` VALUES ('角色管理', '查看角色详情', '2');
INSERT INTO `auth_item_child` VALUES ('角色管理', '角色列表', '2');

-- ----------------------------
-- Table structure for auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of auth_rule
-- ----------------------------

-- ----------------------------
-- Table structure for migration
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of migration
-- ----------------------------

-- ----------------------------
-- Table structure for role_item_ids
-- ----------------------------
DROP TABLE IF EXISTS `role_item_ids`;
CREATE TABLE `role_item_ids` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(60) DEFAULT NULL,
  `menuids` varchar(255) DEFAULT NULL,
  `itemids` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of role_item_ids
-- ----------------------------
INSERT INTO `role_item_ids` VALUES ('1', 'Manger', '885,886,902', '886,887,889,903');
