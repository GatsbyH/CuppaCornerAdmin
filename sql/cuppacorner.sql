/*
Navicat MySQL Data Transfer

Source Server         : jack
Source Server Version : 80027
Source Host           : localhost:3306
Source Database       : cuppacorner

Target Server Type    : MYSQL
Target Server Version : 80027
File Encoding         : 65001

Date: 2023-06-17 16:31:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for banners
-- ----------------------------
DROP TABLE IF EXISTS `banners`;
CREATE TABLE `banners` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `banner_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '轮播图标题',
  `banner_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '轮播图连接',
  `banner_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '图片',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='轮播图表';

-- ----------------------------
-- Records of banners
-- ----------------------------
INSERT INTO `banners` VALUES ('3', '精品咖啡', '', '/profile/upload/2023/06/06/下载_20230606144659A004.jpg', '', '2023-05-22 13:19:05', '', '2023-06-11 16:18:35', null);
INSERT INTO `banners` VALUES ('4', '奶咖', null, '/profile/upload/2023/06/06/AdobeStock_267568050_20230606144403A002.jpg', '', '2023-05-22 13:19:14', '', '2023-06-11 16:18:43', null);
INSERT INTO `banners` VALUES ('5', '意式浓缩', null, '/profile/upload/2023/06/06/01159-scaled_20230606144503A003.jpg', '', '2023-05-27 20:58:43', '', '2023-06-11 16:18:54', null);

-- ----------------------------
-- Table structure for food
-- ----------------------------
DROP TABLE IF EXISTS `food`;
CREATE TABLE `food` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '序号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '美食名称',
  `imageUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '美食图片地址',
  `detailUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '美食详情地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='美食表';

-- ----------------------------
-- Records of food
-- ----------------------------
INSERT INTO `food` VALUES ('1', '寿喜锅', 'https://www.menu-tokyo.jp/tradition/img/sukiyaki.jpg', 'https://home.meishichina.com/recipe-366630.html');
INSERT INTO `food` VALUES ('2', '天妇罗', 'https://www.menu-tokyo.jp/tradition/img/tempura.jpg', 'https://home.meishichina.com/recipe-136987.html');
INSERT INTO `food` VALUES ('3', '日式咖喱饭', 'https://www.sbfoods-worldwide.com/zh-cn/recipes/images/img-010-01.jpg', 'https://www.sbfoods-worldwide.com/zh-cn/recipes/010.html');
INSERT INTO `food` VALUES ('4', '日式土豆沙拉', 'https://i3.meishichina.com/atta/recipe/2012/01/11/201201111424035.jpg?x-oss-process=style/p800', 'https://home.meishichina.com/recipe-48752.html');

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES ('1', 'banners', '轮播图表', null, null, 'Banners', 'crud', 'com.cuppacorner.android', 'android', 'banners', '轮播图', 'zhen', '0', '/', '{}', 'admin', '2023-06-05 16:53:35', '', '2023-06-06 14:35:36', null);
INSERT INTO `gen_table` VALUES ('5', 'news', '新闻表', null, null, 'News', 'crud', 'com.cuppacorner.android', 'android', 'news', '新闻表', 'zhen', '0', '/', '{}', 'admin', '2023-06-07 19:46:33', '', '2023-06-07 19:47:27', null);
INSERT INTO `gen_table` VALUES ('6', 'food', '美食表', null, null, 'Food', 'crud', 'com.cuppacorner.android', 'android', 'food', '美食', 'zhen', '0', '/', '{}', 'admin', '2023-06-09 19:43:05', '', '2023-06-09 19:43:49', null);
INSERT INTO `gen_table` VALUES ('7', 'musical', '音乐剧表', null, null, 'Musical', 'crud', 'com.cuppacorner.android', 'android', 'musical', '音乐剧', 'zhen', '0', '/', '{}', 'admin', '2023-06-11 18:31:46', '', '2023-06-11 18:32:14', null);
INSERT INTO `gen_table` VALUES ('9', 'tip_info', '小贴士表', null, null, 'TipInfo', 'crud', 'com.cuppacorner.android', 'android', 'info', '小贴士', 'zhen', '0', '/', '{}', 'admin', '2023-06-12 11:12:37', '', '2023-06-12 11:13:29', null);
INSERT INTO `gen_table` VALUES ('10', 'users', '用户表', null, null, 'Users', 'crud', 'com.cuppacorner.android', 'android', 'users', '用户', 'zhen', '0', '/', '{}', 'admin', '2023-06-12 22:27:21', '', '2023-06-12 22:28:00', null);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES ('1', '1', 'id', 'ID', 'int', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2023-06-05 16:53:35', '', '2023-06-06 14:35:36');
INSERT INTO `gen_table_column` VALUES ('2', '1', 'banner_title', '轮播图标题', 'varchar(255)', 'String', 'bannerTitle', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2023-06-05 16:53:35', '', '2023-06-06 14:35:36');
INSERT INTO `gen_table_column` VALUES ('3', '1', 'banner_url', '轮播图连接', 'varchar(255)', 'String', 'bannerUrl', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2023-06-05 16:53:35', '', '2023-06-06 14:35:36');
INSERT INTO `gen_table_column` VALUES ('4', '1', 'banner_img', '图片', 'varchar(255)', 'String', 'bannerImg', '0', '0', null, '1', '1', '1', '1', 'EQ', 'imageUpload', '', '4', 'admin', '2023-06-05 16:53:35', '', '2023-06-06 14:35:36');
INSERT INTO `gen_table_column` VALUES ('5', '1', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', null, '1', null, null, null, 'EQ', 'input', '', '5', 'admin', '2023-06-05 16:53:35', '', '2023-06-06 14:35:36');
INSERT INTO `gen_table_column` VALUES ('6', '1', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', null, '1', null, null, null, 'EQ', 'datetime', '', '6', 'admin', '2023-06-05 16:53:35', '', '2023-06-06 14:35:36');
INSERT INTO `gen_table_column` VALUES ('7', '1', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '7', 'admin', '2023-06-05 16:53:35', '', '2023-06-06 14:35:36');
INSERT INTO `gen_table_column` VALUES ('8', '1', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', null, '1', '1', null, null, 'EQ', 'datetime', '', '8', 'admin', '2023-06-05 16:53:35', '', '2023-06-06 14:35:36');
INSERT INTO `gen_table_column` VALUES ('9', '1', 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '9', 'admin', '2023-06-05 16:53:35', '', '2023-06-06 14:35:36');
INSERT INTO `gen_table_column` VALUES ('30', '5', 'id', '序号', 'int', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2023-06-07 19:46:33', '', '2023-06-07 19:47:27');
INSERT INTO `gen_table_column` VALUES ('31', '5', 'news_tag', '新闻标签', 'varchar(255)', 'String', 'newsTag', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2023-06-07 19:46:33', '', '2023-06-07 19:47:27');
INSERT INTO `gen_table_column` VALUES ('32', '5', 'news_title', '新闻标题', 'varchar(255)', 'String', 'newsTitle', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2023-06-07 19:46:33', '', '2023-06-07 19:47:27');
INSERT INTO `gen_table_column` VALUES ('33', '5', 'news_summary', '新闻摘要', 'varchar(255)', 'String', 'newsSummary', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2023-06-07 19:46:33', '', '2023-06-07 19:47:27');
INSERT INTO `gen_table_column` VALUES ('34', '5', 'news_imageUrl', '新闻图片地址', 'varchar(255)', 'String', 'newsImageurl', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2023-06-07 19:46:33', '', '2023-06-07 19:47:27');
INSERT INTO `gen_table_column` VALUES ('35', '5', 'news_detailUrl', '新闻详情地址', 'varchar(255)', 'String', 'newsDetailurl', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2023-06-07 19:46:33', '', '2023-06-07 19:47:27');
INSERT INTO `gen_table_column` VALUES ('36', '6', 'id', '序号', 'int', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2023-06-09 19:43:05', '', '2023-06-09 19:43:49');
INSERT INTO `gen_table_column` VALUES ('37', '6', 'name', '美食名称', 'varchar(255)', 'String', 'name', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2023-06-09 19:43:05', '', '2023-06-09 19:43:49');
INSERT INTO `gen_table_column` VALUES ('38', '6', 'imageUrl', '美食图片地址', 'varchar(255)', 'String', 'imageUrl', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2023-06-09 19:43:05', '', '2023-06-09 19:43:49');
INSERT INTO `gen_table_column` VALUES ('39', '6', 'detailUrl', '美食详情地址', 'varchar(255)', 'String', 'detailUrl', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2023-06-09 19:43:05', '', '2023-06-09 19:43:49');
INSERT INTO `gen_table_column` VALUES ('40', '7', 'musical_id', '序号', 'int', 'Long', 'musicalId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2023-06-11 18:31:46', '', '2023-06-11 18:32:14');
INSERT INTO `gen_table_column` VALUES ('41', '7', 'musical_name', '音乐剧名称', 'varchar(255)', 'String', 'musicalName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2023-06-11 18:31:46', '', '2023-06-11 18:32:14');
INSERT INTO `gen_table_column` VALUES ('42', '7', 'musical_imageUrl', '音乐剧图片地址', 'varchar(255)', 'String', 'musicalImageurl', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2023-06-11 18:31:46', '', '2023-06-11 18:32:14');
INSERT INTO `gen_table_column` VALUES ('43', '7', 'musical_detailUrl', '音乐剧详情地址', 'varchar(255)', 'String', 'musicalDetailurl', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2023-06-11 18:31:46', '', '2023-06-11 18:32:14');
INSERT INTO `gen_table_column` VALUES ('47', '9', 'id', '序号', 'int', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2023-06-12 11:12:37', '', '2023-06-12 11:13:29');
INSERT INTO `gen_table_column` VALUES ('48', '9', 'tip_title', '小贴士标题', 'varchar(50)', 'String', 'tipTitle', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2023-06-12 11:12:37', '', '2023-06-12 11:13:29');
INSERT INTO `gen_table_column` VALUES ('49', '9', 'tip_content', '小贴士内容', 'text', 'String', 'tipContent', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'editor', '', '3', 'admin', '2023-06-12 11:12:37', '', '2023-06-12 11:13:29');
INSERT INTO `gen_table_column` VALUES ('50', '10', 'id', '用户ID', 'int unsigned', 'String', 'id', '1', '0', null, '1', null, null, null, 'EQ', null, '', '1', 'admin', '2023-06-12 22:27:21', '', '2023-06-12 22:28:00');
INSERT INTO `gen_table_column` VALUES ('51', '10', 'username', '用户名', 'varchar(50)', 'String', 'username', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2023-06-12 22:27:21', '', '2023-06-12 22:28:00');
INSERT INTO `gen_table_column` VALUES ('52', '10', 'password', '密码', 'varchar(100)', 'String', 'password', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2023-06-12 22:27:21', '', '2023-06-12 22:28:00');
INSERT INTO `gen_table_column` VALUES ('53', '10', 'nickname', '用户昵称', 'varchar(50)', 'String', 'nickname', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '4', 'admin', '2023-06-12 22:27:21', '', '2023-06-12 22:28:00');
INSERT INTO `gen_table_column` VALUES ('54', '10', 'phone', '手机号码', 'varchar(20)', 'String', 'phone', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2023-06-12 22:27:21', '', '2023-06-12 22:28:00');
INSERT INTO `gen_table_column` VALUES ('55', '10', 'email', '电子邮箱', 'varchar(50)', 'String', 'email', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2023-06-12 22:27:21', '', '2023-06-12 22:28:00');
INSERT INTO `gen_table_column` VALUES ('56', '10', 'avatar', '头像', 'varchar(100)', 'String', 'avatar', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '7', 'admin', '2023-06-12 22:27:21', '', '2023-06-12 22:28:00');
INSERT INTO `gen_table_column` VALUES ('57', '10', 'register_time', '注册时间', 'timestamp', 'Date', 'registerTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', '8', 'admin', '2023-06-12 22:27:21', '', '2023-06-12 22:28:00');
INSERT INTO `gen_table_column` VALUES ('58', '10', 'last_login_time', '最近登录时间', 'timestamp', 'Date', 'lastLoginTime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'datetime', '', '9', 'admin', '2023-06-12 22:27:21', '', '2023-06-12 22:28:00');
INSERT INTO `gen_table_column` VALUES ('59', '10', 'status', '状态：1=正常，0=禁用', 'tinyint', 'Long', 'status', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', '', '10', 'admin', '2023-06-12 22:27:21', '', '2023-06-12 22:28:00');

-- ----------------------------
-- Table structure for musical
-- ----------------------------
DROP TABLE IF EXISTS `musical`;
CREATE TABLE `musical` (
  `musical_id` int NOT NULL AUTO_INCREMENT COMMENT '序号',
  `musical_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '音乐剧名称',
  `musical_imageUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '音乐剧图片地址',
  `musical_detailUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '音乐剧详情地址',
  PRIMARY KEY (`musical_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='音乐剧表';

-- ----------------------------
-- Records of musical
-- ----------------------------
INSERT INTO `musical` VALUES ('1', 'Anastasia', 'https://img1.baidu.com/it/u=1734752384,3569556343&fm=253&fmt=auto&app=138&f=JPEG?w=700&h=500', 'https://www.bilibili.com/video/BV1fW411a7nc?t=12.3');
INSERT INTO `musical` VALUES ('2', 'Murder Ballad', 'https://img2.baidu.com/it/u=4123505255,3257054191&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=350', 'https://www.bilibili.com/video/BV1dt4y1S7pe?t=2.6');
INSERT INTO `musical` VALUES ('3', 'Phantom Of The Opera 25th Anniversary', 'https://img1.baidu.com/it/u=293354235,4159301997&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500', 'https://www.bilibili.com/video/BV1nW411L7wQ?t=3.9');
INSERT INTO `musical` VALUES ('4', 'Dear Evan Hansen', 'https://img0.baidu.com/it/u=2603024713,3088291842&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=666', 'https://www.bilibili.com/video/BV135411E7XM?t=27.4');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '序号',
  `news_tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '新闻标签',
  `news_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '新闻标题',
  `news_summary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '新闻摘要',
  `news_imageUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '新闻图片地址',
  `news_detailUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '新闻详情地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='新闻表';

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '咖啡', '咖啡生豆', '咖啡生豆指的就是未经过烘焙的咖啡豆。无法直接冲煮，必须经过烘焙，研磨成粉才能有效萃取出里面的“精华”\n', 'http://www.coffeesalon.com/wp-content/uploads/2023/04/31681285410.jpg', 'http://www.coffeesalon.com/?p=4648');
INSERT INTO `news` VALUES ('2', '手冲咖啡', '云南咖啡豆品种类别主要特点和产区 云南小粒咖啡的起源和风味口感描述', '大家现在在市面上听到人们常说起云南小粒咖啡豆，它属于铁皮卡咖啡种，由于卡蒂姆咖啡豆种凭着自己的产量就占据了云南咖啡豆产量的大部分，所以大家平时讲到的云南小粒咖啡豆，其实就是云南卡蒂姆。在云南咖啡产区里，种植的99.99%的咖啡种都是卡蒂姆。\n', 'https://mgfcdn.coffeecdn.com/uploadfile/ueditor/image/202211/16697224056b8328.jpg', 'https://m.gafei.com/views-133496');
INSERT INTO `news` VALUES ('3', '精品咖啡', '果丁丁风味有莓果茶感 水洗果丁丁冲煮教你怎么冲出咖啡好风味', '在埃塞俄比亚，位于耶加雪菲东南端的沃卡产区，有一个成熟的咖啡豆生产团队，名叫「果丁丁合作社」。这个团队拥有成员约300名农民社员。', 'https://m.gafei.com/uploadfile/ueditor/image/202305/1685269952bedae1.png', 'https://m.gafei.com/views-137430');
INSERT INTO `news` VALUES ('4', '精品咖啡', '奶咖的奶泡要打发的绵绸度 奶泡的最佳打发温度60℃左右是最适合', '如果你打奶泡是为了拉制热的花式咖啡， 当然要先将牛奶加热至60°, (可选用全脂牛奶或高脂牛奶， 含脂量高的牛奶乳蛋白含量也高， 打出的奶泡更结实绵密， 含脂量高的奶， 口感非常润滑， 脂香气也高， 其奶味很香醇， 非常适合制作卡布基诺、摩卡、拿铁等花式咖啡。', 'https://m.gafei.com/uploads/allimg/190224/17-1Z224133124445.jpg', 'https://m.gafei.com/views-130233');
INSERT INTO `news` VALUES ('5', '手冲咖啡', '手冲咖啡教程新手手冲咖啡操作步骤 冲煮水温闷蒸时间研磨粉水比', '咖啡豆的新鲜度，研磨度，粉水比例，冲煮水温，冲煮手法，萃取时间。这六项步骤其中一项有变动，都会影响这咖啡最后的萃取风味。', 'https://m.gafei.com/uploads/allimg/210317/18-21031G53313204.jpg', 'https://m.gafei.com/views-130012');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Blob类型的触发器表';

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='日历信息表';

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Cron类型的触发器表';

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint NOT NULL COMMENT '触发的时间',
  `sched_time` bigint NOT NULL COMMENT '定时器制定的时间',
  `priority` int NOT NULL COMMENT '优先级',
  `state` varchar(16) NOT NULL COMMENT '状态',
  `job_name` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='已触发的触发器表';

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) NOT NULL COMMENT '任务组名',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='任务详细信息表';

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='存储的悲观锁信息表';

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='暂停的触发器表';

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='调度器状态表';

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='简单触发器的信息表';

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='同步机制的行锁表';

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) NOT NULL COMMENT '触发器的类型',
  `start_time` bigint NOT NULL COMMENT '开始时间',
  `end_time` bigint DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='触发器详细信息表';

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2023-06-05 16:36:27', '', null, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2023-06-05 16:36:27', '', null, '初始化密码 123456');
INSERT INTO `sys_config` VALUES ('3', '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2023-06-05 16:36:27', '', null, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES ('4', '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2023-06-05 16:36:27', '', null, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES ('5', '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2023-06-05 16:36:27', '', null, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES ('6', '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2023-06-05 16:36:27', '', null, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('100', '0', '0', '若依科技', '0', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-06-05 16:36:20', '', null);
INSERT INTO `sys_dept` VALUES ('101', '100', '0,100', '深圳总公司', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-06-05 16:36:20', '', null);
INSERT INTO `sys_dept` VALUES ('102', '100', '0,100', '长沙分公司', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-06-05 16:36:20', '', null);
INSERT INTO `sys_dept` VALUES ('103', '101', '0,100,101', '研发部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-06-05 16:36:20', '', null);
INSERT INTO `sys_dept` VALUES ('104', '101', '0,100,101', '市场部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-06-05 16:36:20', '', null);
INSERT INTO `sys_dept` VALUES ('105', '101', '0,100,101', '测试部门', '3', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-06-05 16:36:20', '', null);
INSERT INTO `sys_dept` VALUES ('106', '101', '0,100,101', '财务部门', '4', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-06-05 16:36:20', '', null);
INSERT INTO `sys_dept` VALUES ('107', '101', '0,100,101', '运维部门', '5', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-06-05 16:36:20', '', null);
INSERT INTO `sys_dept` VALUES ('108', '102', '0,100,102', '市场部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-06-05 16:36:20', '', null);
INSERT INTO `sys_dept` VALUES ('109', '102', '0,100,102', '财务部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-06-05 16:36:20', '', null);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2023-06-05 16:36:26', '', null, '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-06-05 16:36:26', '', null, '性别女');
INSERT INTO `sys_dict_data` VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-06-05 16:36:26', '', null, '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2023-06-05 16:36:26', '', null, '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2023-06-05 16:36:26', '', null, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2023-06-05 16:36:26', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2023-06-05 16:36:26', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2023-06-05 16:36:26', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2023-06-05 16:36:26', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2023-06-05 16:36:26', '', null, '默认分组');
INSERT INTO `sys_dict_data` VALUES ('11', '2', '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2023-06-05 16:36:27', '', null, '系统分组');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2023-06-05 16:36:27', '', null, '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('13', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2023-06-05 16:36:27', '', null, '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2023-06-05 16:36:27', '', null, '通知');
INSERT INTO `sys_dict_data` VALUES ('15', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2023-06-05 16:36:27', '', null, '公告');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2023-06-05 16:36:27', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('17', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2023-06-05 16:36:27', '', null, '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('18', '99', '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-06-05 16:36:27', '', null, '其他操作');
INSERT INTO `sys_dict_data` VALUES ('19', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-06-05 16:36:27', '', null, '新增操作');
INSERT INTO `sys_dict_data` VALUES ('20', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-06-05 16:36:27', '', null, '修改操作');
INSERT INTO `sys_dict_data` VALUES ('21', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-06-05 16:36:27', '', null, '删除操作');
INSERT INTO `sys_dict_data` VALUES ('22', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2023-06-05 16:36:27', '', null, '授权操作');
INSERT INTO `sys_dict_data` VALUES ('23', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-06-05 16:36:27', '', null, '导出操作');
INSERT INTO `sys_dict_data` VALUES ('24', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-06-05 16:36:27', '', null, '导入操作');
INSERT INTO `sys_dict_data` VALUES ('25', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-06-05 16:36:27', '', null, '强退操作');
INSERT INTO `sys_dict_data` VALUES ('26', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-06-05 16:36:27', '', null, '生成操作');
INSERT INTO `sys_dict_data` VALUES ('27', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-06-05 16:36:27', '', null, '清空操作');
INSERT INTO `sys_dict_data` VALUES ('28', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2023-06-05 16:36:27', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('29', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2023-06-05 16:36:27', '', null, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2023-06-05 16:36:26', '', null, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2023-06-05 16:36:26', '', null, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2023-06-05 16:36:26', '', null, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2023-06-05 16:36:26', '', null, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '任务分组', 'sys_job_group', '0', 'admin', '2023-06-05 16:36:26', '', null, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES ('6', '系统是否', 'sys_yes_no', '0', 'admin', '2023-06-05 16:36:26', '', null, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知类型', 'sys_notice_type', '0', 'admin', '2023-06-05 16:36:26', '', null, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('8', '通知状态', 'sys_notice_status', '0', 'admin', '2023-06-05 16:36:26', '', null, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('9', '操作类型', 'sys_oper_type', '0', 'admin', '2023-06-05 16:36:26', '', null, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('10', '系统状态', 'sys_common_status', '0', 'admin', '2023-06-05 16:36:26', '', null, '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES ('1', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2023-06-05 16:36:27', '', null, '');
INSERT INTO `sys_job` VALUES ('2', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2023-06-05 16:36:27', '', null, '');
INSERT INTO `sys_job` VALUES ('3', '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2023-06-05 16:36:27', '', null, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`),
  KEY `idx_sys_logininfor_s` (`status`),
  KEY `idx_sys_logininfor_lt` (`login_time`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES ('100', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-05 16:48:22');
INSERT INTO `sys_logininfor` VALUES ('101', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-06-05 19:19:00');
INSERT INTO `sys_logininfor` VALUES ('102', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-05 19:19:03');
INSERT INTO `sys_logininfor` VALUES ('103', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码已失效', '2023-06-06 11:02:50');
INSERT INTO `sys_logininfor` VALUES ('104', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-06 11:02:57');
INSERT INTO `sys_logininfor` VALUES ('105', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-06 13:44:31');
INSERT INTO `sys_logininfor` VALUES ('106', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-06 13:56:24');
INSERT INTO `sys_logininfor` VALUES ('107', 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2023-06-06 14:29:36');
INSERT INTO `sys_logininfor` VALUES ('108', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-06 15:43:34');
INSERT INTO `sys_logininfor` VALUES ('109', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-06-06 16:42:45');
INSERT INTO `sys_logininfor` VALUES ('110', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-06 16:42:51');
INSERT INTO `sys_logininfor` VALUES ('111', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-07 15:18:56');
INSERT INTO `sys_logininfor` VALUES ('112', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-07 16:01:20');
INSERT INTO `sys_logininfor` VALUES ('113', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-07 16:41:35');
INSERT INTO `sys_logininfor` VALUES ('114', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-06-07 17:06:05');
INSERT INTO `sys_logininfor` VALUES ('115', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-07 17:06:11');
INSERT INTO `sys_logininfor` VALUES ('116', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-07 19:22:58');
INSERT INTO `sys_logininfor` VALUES ('117', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-08 14:59:14');
INSERT INTO `sys_logininfor` VALUES ('118', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-08 16:47:04');
INSERT INTO `sys_logininfor` VALUES ('119', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-09 13:06:27');
INSERT INTO `sys_logininfor` VALUES ('120', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-09 19:15:31');
INSERT INTO `sys_logininfor` VALUES ('121', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-06-09 21:51:39');
INSERT INTO `sys_logininfor` VALUES ('122', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-09 21:51:43');
INSERT INTO `sys_logininfor` VALUES ('123', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-09 22:36:53');
INSERT INTO `sys_logininfor` VALUES ('124', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-10 14:06:28');
INSERT INTO `sys_logininfor` VALUES ('125', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-10 19:42:14');
INSERT INTO `sys_logininfor` VALUES ('126', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-10 23:27:18');
INSERT INTO `sys_logininfor` VALUES ('127', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-06-11 15:19:15');
INSERT INTO `sys_logininfor` VALUES ('128', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-06-11 15:19:16');
INSERT INTO `sys_logininfor` VALUES ('129', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-11 15:19:19');
INSERT INTO `sys_logininfor` VALUES ('130', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-06-11 16:18:18');
INSERT INTO `sys_logininfor` VALUES ('131', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-11 16:18:22');
INSERT INTO `sys_logininfor` VALUES ('132', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-11 18:31:22');
INSERT INTO `sys_logininfor` VALUES ('133', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-11 19:52:56');
INSERT INTO `sys_logininfor` VALUES ('134', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-12 10:27:12');
INSERT INTO `sys_logininfor` VALUES ('135', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-12 11:10:47');
INSERT INTO `sys_logininfor` VALUES ('136', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-12 13:17:57');
INSERT INTO `sys_logininfor` VALUES ('137', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-06-12 22:26:54');
INSERT INTO `sys_logininfor` VALUES ('138', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-12 22:27:04');
INSERT INTO `sys_logininfor` VALUES ('139', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-13 10:26:09');
INSERT INTO `sys_logininfor` VALUES ('140', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-06-13 13:26:23');
INSERT INTO `sys_logininfor` VALUES ('141', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-06-13 13:26:28');
INSERT INTO `sys_logininfor` VALUES ('142', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-13 13:26:31');
INSERT INTO `sys_logininfor` VALUES ('143', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码已失效', '2023-06-13 15:28:31');
INSERT INTO `sys_logininfor` VALUES ('144', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-13 15:28:36');
INSERT INTO `sys_logininfor` VALUES ('145', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-14 19:28:12');
INSERT INTO `sys_logininfor` VALUES ('146', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-14 20:26:15');
INSERT INTO `sys_logininfor` VALUES ('147', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-14 22:12:52');
INSERT INTO `sys_logininfor` VALUES ('148', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-15 15:13:38');
INSERT INTO `sys_logininfor` VALUES ('149', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-15 16:18:28');
INSERT INTO `sys_logininfor` VALUES ('150', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-17 15:27:38');
INSERT INTO `sys_logininfor` VALUES ('151', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-06-17 16:12:54');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) DEFAULT NULL COMMENT '路由参数',
  `is_frame` int DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2090 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '1', 'system', null, '', '1', '0', 'M', '0', '0', '', 'system', 'admin', '2023-06-05 16:36:21', '', null, '系统管理目录');
INSERT INTO `sys_menu` VALUES ('2', '系统监控', '0', '2', 'monitor', null, '', '1', '0', 'M', '0', '0', '', 'monitor', 'admin', '2023-06-05 16:36:21', '', null, '系统监控目录');
INSERT INTO `sys_menu` VALUES ('3', '系统工具', '0', '3', 'tool', null, '', '1', '0', 'M', '0', '0', '', 'tool', 'admin', '2023-06-05 16:36:21', '', null, '系统工具目录');
INSERT INTO `sys_menu` VALUES ('4', '若依官网', '0', '4', 'http://ruoyi.vip', null, '', '0', '0', 'M', '0', '0', '', 'guide', 'admin', '2023-06-05 16:36:21', '', null, '若依官网地址');
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '1', '1', 'user', 'system/user/index', '', '1', '0', 'C', '0', '0', 'system:user:list', 'user', 'admin', '2023-06-05 16:36:21', '', null, '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '1', '2', 'role', 'system/role/index', '', '1', '0', 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2023-06-05 16:36:21', '', null, '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', '3', 'menu', 'system/menu/index', '', '1', '0', 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2023-06-05 16:36:21', '', null, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('103', '部门管理', '1', '4', 'dept', 'system/dept/index', '', '1', '0', 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2023-06-05 16:36:21', '', null, '部门管理菜单');
INSERT INTO `sys_menu` VALUES ('104', '岗位管理', '1', '5', 'post', 'system/post/index', '', '1', '0', 'C', '0', '0', 'system:post:list', 'post', 'admin', '2023-06-05 16:36:21', '', null, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES ('105', '字典管理', '1', '6', 'dict', 'system/dict/index', '', '1', '0', 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2023-06-05 16:36:21', '', null, '字典管理菜单');
INSERT INTO `sys_menu` VALUES ('106', '参数设置', '1', '7', 'config', 'system/config/index', '', '1', '0', 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2023-06-05 16:36:21', '', null, '参数设置菜单');
INSERT INTO `sys_menu` VALUES ('107', '通知公告', '1', '8', 'notice', 'system/notice/index', '', '1', '0', 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2023-06-05 16:36:21', '', null, '通知公告菜单');
INSERT INTO `sys_menu` VALUES ('108', '日志管理', '1', '9', 'log', '', '', '1', '0', 'M', '0', '0', '', 'log', 'admin', '2023-06-05 16:36:21', '', null, '日志管理菜单');
INSERT INTO `sys_menu` VALUES ('109', '在线用户', '2', '1', 'online', 'monitor/online/index', '', '1', '0', 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2023-06-05 16:36:21', '', null, '在线用户菜单');
INSERT INTO `sys_menu` VALUES ('110', '定时任务', '2', '2', 'job', 'monitor/job/index', '', '1', '0', 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2023-06-05 16:36:21', '', null, '定时任务菜单');
INSERT INTO `sys_menu` VALUES ('111', '数据监控', '2', '3', 'druid', 'monitor/druid/index', '', '1', '0', 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2023-06-05 16:36:21', '', null, '数据监控菜单');
INSERT INTO `sys_menu` VALUES ('112', '服务监控', '2', '4', 'server', 'monitor/server/index', '', '1', '0', 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2023-06-05 16:36:21', '', null, '服务监控菜单');
INSERT INTO `sys_menu` VALUES ('113', '缓存监控', '2', '5', 'cache', 'monitor/cache/index', '', '1', '0', 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2023-06-05 16:36:21', '', null, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES ('114', '缓存列表', '2', '6', 'cacheList', 'monitor/cache/list', '', '1', '0', 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2023-06-05 16:36:21', '', null, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES ('115', '表单构建', '3', '1', 'build', 'tool/build/index', '', '1', '0', 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2023-06-05 16:36:21', '', null, '表单构建菜单');
INSERT INTO `sys_menu` VALUES ('116', '代码生成', '3', '2', 'gen', 'tool/gen/index', '', '1', '0', 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2023-06-05 16:36:21', '', null, '代码生成菜单');
INSERT INTO `sys_menu` VALUES ('117', '系统接口', '3', '3', 'swagger', 'tool/swagger/index', '', '1', '0', 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2023-06-05 16:36:21', '', null, '系统接口菜单');
INSERT INTO `sys_menu` VALUES ('500', '操作日志', '108', '1', 'operlog', 'monitor/operlog/index', '', '1', '0', 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2023-06-05 16:36:21', '', null, '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('501', '登录日志', '108', '2', 'logininfor', 'monitor/logininfor/index', '', '1', '0', 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2023-06-05 16:36:21', '', null, '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('1000', '用户查询', '100', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:user:query', '#', 'admin', '2023-06-05 16:36:21', '', null, '');
INSERT INTO `sys_menu` VALUES ('1001', '用户新增', '100', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:user:add', '#', 'admin', '2023-06-05 16:36:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1002', '用户修改', '100', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:user:edit', '#', 'admin', '2023-06-05 16:36:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1003', '用户删除', '100', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:user:remove', '#', 'admin', '2023-06-05 16:36:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1004', '用户导出', '100', '5', '', '', '', '1', '0', 'F', '0', '0', 'system:user:export', '#', 'admin', '2023-06-05 16:36:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1005', '用户导入', '100', '6', '', '', '', '1', '0', 'F', '0', '0', 'system:user:import', '#', 'admin', '2023-06-05 16:36:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1006', '重置密码', '100', '7', '', '', '', '1', '0', 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2023-06-05 16:36:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1007', '角色查询', '101', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:role:query', '#', 'admin', '2023-06-05 16:36:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1008', '角色新增', '101', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:role:add', '#', 'admin', '2023-06-05 16:36:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1009', '角色修改', '101', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:role:edit', '#', 'admin', '2023-06-05 16:36:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1010', '角色删除', '101', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:role:remove', '#', 'admin', '2023-06-05 16:36:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1011', '角色导出', '101', '5', '', '', '', '1', '0', 'F', '0', '0', 'system:role:export', '#', 'admin', '2023-06-05 16:36:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1012', '菜单查询', '102', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:query', '#', 'admin', '2023-06-05 16:36:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1013', '菜单新增', '102', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:add', '#', 'admin', '2023-06-05 16:36:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1014', '菜单修改', '102', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2023-06-05 16:36:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1015', '菜单删除', '102', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2023-06-05 16:36:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1016', '部门查询', '103', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:query', '#', 'admin', '2023-06-05 16:36:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1017', '部门新增', '103', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:add', '#', 'admin', '2023-06-05 16:36:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1018', '部门修改', '103', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2023-06-05 16:36:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1019', '部门删除', '103', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2023-06-05 16:36:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1020', '岗位查询', '104', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:post:query', '#', 'admin', '2023-06-05 16:36:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1021', '岗位新增', '104', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:post:add', '#', 'admin', '2023-06-05 16:36:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1022', '岗位修改', '104', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:post:edit', '#', 'admin', '2023-06-05 16:36:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1023', '岗位删除', '104', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:post:remove', '#', 'admin', '2023-06-05 16:36:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1024', '岗位导出', '104', '5', '', '', '', '1', '0', 'F', '0', '0', 'system:post:export', '#', 'admin', '2023-06-05 16:36:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1025', '字典查询', '105', '1', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:query', '#', 'admin', '2023-06-05 16:36:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1026', '字典新增', '105', '2', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:add', '#', 'admin', '2023-06-05 16:36:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1027', '字典修改', '105', '3', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2023-06-05 16:36:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1028', '字典删除', '105', '4', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2023-06-05 16:36:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1029', '字典导出', '105', '5', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:export', '#', 'admin', '2023-06-05 16:36:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1030', '参数查询', '106', '1', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:query', '#', 'admin', '2023-06-05 16:36:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1031', '参数新增', '106', '2', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:add', '#', 'admin', '2023-06-05 16:36:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1032', '参数修改', '106', '3', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:edit', '#', 'admin', '2023-06-05 16:36:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1033', '参数删除', '106', '4', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:remove', '#', 'admin', '2023-06-05 16:36:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1034', '参数导出', '106', '5', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:export', '#', 'admin', '2023-06-05 16:36:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1035', '公告查询', '107', '1', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:query', '#', 'admin', '2023-06-05 16:36:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1036', '公告新增', '107', '2', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:add', '#', 'admin', '2023-06-05 16:36:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('1037', '公告修改', '107', '3', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2023-06-05 16:36:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('1038', '公告删除', '107', '4', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2023-06-05 16:36:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('1039', '操作查询', '500', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2023-06-05 16:36:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('1040', '操作删除', '500', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2023-06-05 16:36:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('1041', '日志导出', '500', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2023-06-05 16:36:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('1042', '登录查询', '501', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2023-06-05 16:36:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('1043', '登录删除', '501', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2023-06-05 16:36:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('1044', '日志导出', '501', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2023-06-05 16:36:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('1045', '账户解锁', '501', '4', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2023-06-05 16:36:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('1046', '在线查询', '109', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2023-06-05 16:36:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('1047', '批量强退', '109', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2023-06-05 16:36:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('1048', '单条强退', '109', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2023-06-05 16:36:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('1049', '任务查询', '110', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2023-06-05 16:36:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('1050', '任务新增', '110', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2023-06-05 16:36:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('1051', '任务修改', '110', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2023-06-05 16:36:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('1052', '任务删除', '110', '4', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2023-06-05 16:36:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('1053', '状态修改', '110', '5', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2023-06-05 16:36:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('1054', '任务导出', '110', '6', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2023-06-05 16:36:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('1055', '生成查询', '116', '1', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2023-06-05 16:36:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('1056', '生成修改', '116', '2', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2023-06-05 16:36:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('1057', '生成删除', '116', '3', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2023-06-05 16:36:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('1058', '导入代码', '116', '4', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2023-06-05 16:36:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('1059', '预览代码', '116', '5', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2023-06-05 16:36:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('1060', '生成代码', '116', '6', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2023-06-05 16:36:23', '', null, '');
INSERT INTO `sys_menu` VALUES ('2002', '轮播图', '3', '1', 'banners', 'android/banners/index', null, '1', '0', 'C', '0', '0', 'android:banners:list', '#', 'admin', '2023-06-06 11:04:09', '', null, '轮播图菜单');
INSERT INTO `sys_menu` VALUES ('2003', '轮播图查询', '2002', '1', '#', '', null, '1', '0', 'F', '0', '0', 'android:banners:query', '#', 'admin', '2023-06-06 11:04:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('2004', '轮播图新增', '2002', '2', '#', '', null, '1', '0', 'F', '0', '0', 'android:banners:add', '#', 'admin', '2023-06-06 11:04:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('2005', '轮播图修改', '2002', '3', '#', '', null, '1', '0', 'F', '0', '0', 'android:banners:edit', '#', 'admin', '2023-06-06 11:04:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('2006', '轮播图删除', '2002', '4', '#', '', null, '1', '0', 'F', '0', '0', 'android:banners:remove', '#', 'admin', '2023-06-06 11:04:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('2007', '轮播图导出', '2002', '5', '#', '', null, '1', '0', 'F', '0', '0', 'android:banners:export', '#', 'admin', '2023-06-06 11:04:09', '', null, '');
INSERT INTO `sys_menu` VALUES ('2008', '轮播图', '3', '1', 'banners', 'android/banners/index', null, '1', '0', 'C', '0', '0', 'android:banners:list', '#', 'admin', '2023-06-06 13:54:07', '', null, '轮播图菜单');
INSERT INTO `sys_menu` VALUES ('2009', '轮播图查询', '2008', '1', '#', '', null, '1', '0', 'F', '0', '0', 'android:banners:query', '#', 'admin', '2023-06-06 13:54:07', '', null, '');
INSERT INTO `sys_menu` VALUES ('2010', '轮播图新增', '2008', '2', '#', '', null, '1', '0', 'F', '0', '0', 'android:banners:add', '#', 'admin', '2023-06-06 13:54:07', '', null, '');
INSERT INTO `sys_menu` VALUES ('2011', '轮播图修改', '2008', '3', '#', '', null, '1', '0', 'F', '0', '0', 'android:banners:edit', '#', 'admin', '2023-06-06 13:54:07', '', null, '');
INSERT INTO `sys_menu` VALUES ('2012', '轮播图删除', '2008', '4', '#', '', null, '1', '0', 'F', '0', '0', 'android:banners:remove', '#', 'admin', '2023-06-06 13:54:07', '', null, '');
INSERT INTO `sys_menu` VALUES ('2013', '轮播图导出', '2008', '5', '#', '', null, '1', '0', 'F', '0', '0', 'android:banners:export', '#', 'admin', '2023-06-06 13:54:07', '', null, '');
INSERT INTO `sys_menu` VALUES ('2014', '安卓app', '0', '3', 'android', null, null, '1', '0', 'M', '0', '0', null, 'bug', 'admin', '2023-06-06 14:09:54', '', null, '');
INSERT INTO `sys_menu` VALUES ('2015', '轮播图', '2014', '1', 'banners', 'android/banners', null, '1', '0', 'C', '0', '0', '', 'component', 'admin', '2023-06-06 14:10:24', 'admin', '2023-06-12 22:54:38', '');
INSERT INTO `sys_menu` VALUES ('2024', '资讯', '3', '1', 'news', 'android/news/index', null, '1', '0', 'C', '0', '0', 'android:news:list', '#', 'admin', '2023-06-06 16:28:43', '', null, '资讯菜单');
INSERT INTO `sys_menu` VALUES ('2025', '资讯查询', '2024', '1', '#', '', null, '1', '0', 'F', '0', '0', 'android:news:query', '#', 'admin', '2023-06-06 16:28:43', '', null, '');
INSERT INTO `sys_menu` VALUES ('2026', '资讯新增', '2024', '2', '#', '', null, '1', '0', 'F', '0', '0', 'android:news:add', '#', 'admin', '2023-06-06 16:28:44', '', null, '');
INSERT INTO `sys_menu` VALUES ('2027', '资讯修改', '2024', '3', '#', '', null, '1', '0', 'F', '0', '0', 'android:news:edit', '#', 'admin', '2023-06-06 16:28:44', '', null, '');
INSERT INTO `sys_menu` VALUES ('2028', '资讯删除', '2024', '4', '#', '', null, '1', '0', 'F', '0', '0', 'android:news:remove', '#', 'admin', '2023-06-06 16:28:44', '', null, '');
INSERT INTO `sys_menu` VALUES ('2029', '资讯导出', '2024', '5', '#', '', null, '1', '0', 'F', '0', '0', 'android:news:export', '#', 'admin', '2023-06-06 16:28:44', '', null, '');
INSERT INTO `sys_menu` VALUES ('2030', '资讯', '3', '1', 'news', 'android/news/index', null, '1', '0', 'C', '0', '0', 'android:news:list', '#', 'admin', '2023-06-06 16:51:25', '', null, '资讯菜单');
INSERT INTO `sys_menu` VALUES ('2031', '资讯查询', '2030', '1', '#', '', null, '1', '0', 'F', '0', '0', 'android:news:query', '#', 'admin', '2023-06-06 16:51:25', '', null, '');
INSERT INTO `sys_menu` VALUES ('2032', '资讯新增', '2030', '2', '#', '', null, '1', '0', 'F', '0', '0', 'android:news:add', '#', 'admin', '2023-06-06 16:51:25', '', null, '');
INSERT INTO `sys_menu` VALUES ('2033', '资讯修改', '2030', '3', '#', '', null, '1', '0', 'F', '0', '0', 'android:news:edit', '#', 'admin', '2023-06-06 16:51:25', '', null, '');
INSERT INTO `sys_menu` VALUES ('2034', '资讯删除', '2030', '4', '#', '', null, '1', '0', 'F', '0', '0', 'android:news:remove', '#', 'admin', '2023-06-06 16:51:25', '', null, '');
INSERT INTO `sys_menu` VALUES ('2035', '资讯导出', '2030', '5', '#', '', null, '1', '0', 'F', '0', '0', 'android:news:export', '#', 'admin', '2023-06-06 16:51:25', '', null, '');
INSERT INTO `sys_menu` VALUES ('2036', '新闻', '3', '1', 'news', 'android/news/index', null, '1', '0', 'C', '0', '0', 'android:news:list', '#', 'admin', '2023-06-07 16:48:26', '', null, '新闻菜单');
INSERT INTO `sys_menu` VALUES ('2037', '新闻查询', '2036', '1', '#', '', null, '1', '0', 'F', '0', '0', 'android:news:query', '#', 'admin', '2023-06-07 16:48:26', '', null, '');
INSERT INTO `sys_menu` VALUES ('2038', '新闻新增', '2036', '2', '#', '', null, '1', '0', 'F', '0', '0', 'android:news:add', '#', 'admin', '2023-06-07 16:48:26', '', null, '');
INSERT INTO `sys_menu` VALUES ('2039', '新闻修改', '2036', '3', '#', '', null, '1', '0', 'F', '0', '0', 'android:news:edit', '#', 'admin', '2023-06-07 16:48:26', '', null, '');
INSERT INTO `sys_menu` VALUES ('2040', '新闻删除', '2036', '4', '#', '', null, '1', '0', 'F', '0', '0', 'android:news:remove', '#', 'admin', '2023-06-07 16:48:26', '', null, '');
INSERT INTO `sys_menu` VALUES ('2041', '新闻导出', '2036', '5', '#', '', null, '1', '0', 'F', '0', '0', 'android:news:export', '#', 'admin', '2023-06-07 16:48:26', '', null, '');
INSERT INTO `sys_menu` VALUES ('2042', '资讯', '2014', '2', 'news', 'android/news', null, '1', '0', 'C', '0', '0', null, 'button', 'admin', '2023-06-07 16:50:27', '', null, '');
INSERT INTO `sys_menu` VALUES ('2043', '新闻表', '3', '1', 'news', 'android/news/index', null, '1', '0', 'C', '0', '0', 'android:news:list', '#', 'admin', '2023-06-07 19:49:25', '', null, '新闻表菜单');
INSERT INTO `sys_menu` VALUES ('2044', '新闻表查询', '2043', '1', '#', '', null, '1', '0', 'F', '0', '0', 'android:news:query', '#', 'admin', '2023-06-07 19:49:25', '', null, '');
INSERT INTO `sys_menu` VALUES ('2045', '新闻表新增', '2043', '2', '#', '', null, '1', '0', 'F', '0', '0', 'android:news:add', '#', 'admin', '2023-06-07 19:49:25', '', null, '');
INSERT INTO `sys_menu` VALUES ('2046', '新闻表修改', '2043', '3', '#', '', null, '1', '0', 'F', '0', '0', 'android:news:edit', '#', 'admin', '2023-06-07 19:49:25', '', null, '');
INSERT INTO `sys_menu` VALUES ('2047', '新闻表删除', '2043', '4', '#', '', null, '1', '0', 'F', '0', '0', 'android:news:remove', '#', 'admin', '2023-06-07 19:49:25', '', null, '');
INSERT INTO `sys_menu` VALUES ('2048', '新闻表导出', '2043', '5', '#', '', null, '1', '0', 'F', '0', '0', 'android:news:export', '#', 'admin', '2023-06-07 19:49:25', '', null, '');
INSERT INTO `sys_menu` VALUES ('2049', '美食', '3', '1', 'food', 'android/food/index', null, '1', '0', 'C', '0', '0', 'android:food:list', '#', 'admin', '2023-06-09 19:45:10', '', null, '美食菜单');
INSERT INTO `sys_menu` VALUES ('2050', '美食查询', '2049', '1', '#', '', null, '1', '0', 'F', '0', '0', 'android:food:query', '#', 'admin', '2023-06-09 19:45:10', '', null, '');
INSERT INTO `sys_menu` VALUES ('2051', '美食新增', '2049', '2', '#', '', null, '1', '0', 'F', '0', '0', 'android:food:add', '#', 'admin', '2023-06-09 19:45:10', '', null, '');
INSERT INTO `sys_menu` VALUES ('2052', '美食修改', '2049', '3', '#', '', null, '1', '0', 'F', '0', '0', 'android:food:edit', '#', 'admin', '2023-06-09 19:45:10', '', null, '');
INSERT INTO `sys_menu` VALUES ('2053', '美食删除', '2049', '4', '#', '', null, '1', '0', 'F', '0', '0', 'android:food:remove', '#', 'admin', '2023-06-09 19:45:10', '', null, '');
INSERT INTO `sys_menu` VALUES ('2054', '美食导出', '2049', '5', '#', '', null, '1', '0', 'F', '0', '0', 'android:food:export', '#', 'admin', '2023-06-09 19:45:10', '', null, '');
INSERT INTO `sys_menu` VALUES ('2055', '美食', '2014', '3', 'food', 'android/food', null, '1', '0', 'C', '0', '0', null, 'code', 'admin', '2023-06-09 19:46:39', '', null, '');
INSERT INTO `sys_menu` VALUES ('2056', '音乐剧', '3', '1', 'musical', 'android/musical/index', null, '1', '0', 'C', '0', '0', 'android:musical:list', '#', 'admin', '2023-06-11 18:34:46', '', null, '音乐剧菜单');
INSERT INTO `sys_menu` VALUES ('2057', '音乐剧查询', '2056', '1', '#', '', null, '1', '0', 'F', '0', '0', 'android:musical:query', '#', 'admin', '2023-06-11 18:34:46', '', null, '');
INSERT INTO `sys_menu` VALUES ('2058', '音乐剧新增', '2056', '2', '#', '', null, '1', '0', 'F', '0', '0', 'android:musical:add', '#', 'admin', '2023-06-11 18:34:46', '', null, '');
INSERT INTO `sys_menu` VALUES ('2059', '音乐剧修改', '2056', '3', '#', '', null, '1', '0', 'F', '0', '0', 'android:musical:edit', '#', 'admin', '2023-06-11 18:34:46', '', null, '');
INSERT INTO `sys_menu` VALUES ('2060', '音乐剧删除', '2056', '4', '#', '', null, '1', '0', 'F', '0', '0', 'android:musical:remove', '#', 'admin', '2023-06-11 18:34:46', '', null, '');
INSERT INTO `sys_menu` VALUES ('2061', '音乐剧导出', '2056', '5', '#', '', null, '1', '0', 'F', '0', '0', 'android:musical:export', '#', 'admin', '2023-06-11 18:34:46', '', null, '');
INSERT INTO `sys_menu` VALUES ('2062', '音乐剧', '3', '1', 'musical', 'android/musical/index', null, '1', '0', 'C', '0', '0', 'android:musical:list', '#', 'admin', '2023-06-11 18:34:48', '', null, '音乐剧菜单');
INSERT INTO `sys_menu` VALUES ('2063', '音乐剧查询', '2062', '1', '#', '', null, '1', '0', 'F', '0', '0', 'android:musical:query', '#', 'admin', '2023-06-11 18:34:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('2064', '音乐剧新增', '2062', '2', '#', '', null, '1', '0', 'F', '0', '0', 'android:musical:add', '#', 'admin', '2023-06-11 18:34:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('2065', '音乐剧修改', '2062', '3', '#', '', null, '1', '0', 'F', '0', '0', 'android:musical:edit', '#', 'admin', '2023-06-11 18:34:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('2066', '音乐剧删除', '2062', '4', '#', '', null, '1', '0', 'F', '0', '0', 'android:musical:remove', '#', 'admin', '2023-06-11 18:34:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('2067', '音乐剧导出', '2062', '5', '#', '', null, '1', '0', 'F', '0', '0', 'android:musical:export', '#', 'admin', '2023-06-11 18:34:48', '', null, '');
INSERT INTO `sys_menu` VALUES ('2068', '音乐剧', '3', '1', 'musical', 'android/musical/index', null, '1', '0', 'C', '0', '0', 'android:musical:list', '#', 'admin', '2023-06-11 18:34:49', '', null, '音乐剧菜单');
INSERT INTO `sys_menu` VALUES ('2069', '音乐剧查询', '2068', '1', '#', '', null, '1', '0', 'F', '0', '0', 'android:musical:query', '#', 'admin', '2023-06-11 18:34:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('2070', '音乐剧新增', '2068', '2', '#', '', null, '1', '0', 'F', '0', '0', 'android:musical:add', '#', 'admin', '2023-06-11 18:34:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('2071', '音乐剧修改', '2068', '3', '#', '', null, '1', '0', 'F', '0', '0', 'android:musical:edit', '#', 'admin', '2023-06-11 18:34:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('2072', '音乐剧删除', '2068', '4', '#', '', null, '1', '0', 'F', '0', '0', 'android:musical:remove', '#', 'admin', '2023-06-11 18:34:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('2073', '音乐剧导出', '2068', '5', '#', '', null, '1', '0', 'F', '0', '0', 'android:musical:export', '#', 'admin', '2023-06-11 18:34:49', '', null, '');
INSERT INTO `sys_menu` VALUES ('2074', '音乐剧', '2014', '4', 'musical', 'android/musical', null, '1', '0', 'C', '0', '0', null, 'checkbox', 'admin', '2023-06-11 18:38:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('2076', '小贴士', '2014', '1', 'info', 'android/info', null, '1', '0', 'C', '0', '0', null, 'education', 'admin', '2023-06-12 11:19:19', '', null, '');
INSERT INTO `sys_menu` VALUES ('2077', '用户', '3', '1', 'users', 'android/users/index', null, '1', '0', 'C', '0', '0', 'android:users:list', '#', 'admin', '2023-06-12 22:30:04', '', null, '用户菜单');
INSERT INTO `sys_menu` VALUES ('2078', '用户查询', '2077', '1', '#', '', null, '1', '0', 'F', '0', '0', 'android:users:query', '#', 'admin', '2023-06-12 22:30:04', '', null, '');
INSERT INTO `sys_menu` VALUES ('2079', '用户新增', '2077', '2', '#', '', null, '1', '0', 'F', '0', '0', 'android:users:add', '#', 'admin', '2023-06-12 22:30:04', '', null, '');
INSERT INTO `sys_menu` VALUES ('2080', '用户修改', '2077', '3', '#', '', null, '1', '0', 'F', '0', '0', 'android:users:edit', '#', 'admin', '2023-06-12 22:30:04', '', null, '');
INSERT INTO `sys_menu` VALUES ('2081', '用户删除', '2077', '4', '#', '', null, '1', '0', 'F', '0', '0', 'android:users:remove', '#', 'admin', '2023-06-12 22:30:04', '', null, '');
INSERT INTO `sys_menu` VALUES ('2082', '用户导出', '2077', '5', '#', '', null, '1', '0', 'F', '0', '0', 'android:users:export', '#', 'admin', '2023-06-12 22:30:04', '', null, '');
INSERT INTO `sys_menu` VALUES ('2083', '用户', '3', '1', 'users', 'android/users/index', null, '1', '0', 'C', '0', '0', 'android:users:list', '#', 'admin', '2023-06-12 22:30:05', '', null, '用户菜单');
INSERT INTO `sys_menu` VALUES ('2084', '用户查询', '2083', '1', '#', '', null, '1', '0', 'F', '0', '0', 'android:users:query', '#', 'admin', '2023-06-12 22:30:05', '', null, '');
INSERT INTO `sys_menu` VALUES ('2085', '用户新增', '2083', '2', '#', '', null, '1', '0', 'F', '0', '0', 'android:users:add', '#', 'admin', '2023-06-12 22:30:05', '', null, '');
INSERT INTO `sys_menu` VALUES ('2086', '用户修改', '2083', '3', '#', '', null, '1', '0', 'F', '0', '0', 'android:users:edit', '#', 'admin', '2023-06-12 22:30:05', '', null, '');
INSERT INTO `sys_menu` VALUES ('2087', '用户删除', '2083', '4', '#', '', null, '1', '0', 'F', '0', '0', 'android:users:remove', '#', 'admin', '2023-06-12 22:30:05', '', null, '');
INSERT INTO `sys_menu` VALUES ('2088', '用户导出', '2083', '5', '#', '', null, '1', '0', 'F', '0', '0', 'android:users:export', '#', 'admin', '2023-06-12 22:30:05', '', null, '');
INSERT INTO `sys_menu` VALUES ('2089', '用户', '2014', '0', 'users', 'android/users', null, '1', '0', 'C', '0', '0', '', 'user', 'admin', '2023-06-12 22:32:26', 'admin', '2023-06-12 22:54:48', '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('1', '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2023-06-05 16:36:28', '', null, '管理员');
INSERT INTO `sys_notice` VALUES ('2', '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2023-06-05 16:36:28', '', null, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint DEFAULT '0' COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`),
  KEY `idx_sys_oper_log_bt` (`business_type`),
  KEY `idx_sys_oper_log_s` (`status`),
  KEY `idx_sys_oper_log_ot` (`oper_time`)
) ENGINE=InnoDB AUTO_INCREMENT=260 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES ('100', '菜单管理', '1', 'com.cuppacorner.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"documentation\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"安卓app管理\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"/android\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-05 16:50:25', '67');
INSERT INTO `sys_oper_log` VALUES ('101', '菜单管理', '2', 'com.cuppacorner.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2023-06-05 16:50:25\",\"icon\":\"documentation\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"安卓app管理\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"android\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-05 16:51:05', '16');
INSERT INTO `sys_oper_log` VALUES ('102', '菜单管理', '1', 'com.cuppacorner.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"android/banner\",\"createBy\":\"admin\",\"icon\":\"build\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"轮播图管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"banner\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-05 16:51:43', '48');
INSERT INTO `sys_oper_log` VALUES ('103', '代码生成', '6', 'com.cuppacorner.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"banners\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-05 16:53:35', '128');
INSERT INTO `sys_oper_log` VALUES ('104', '代码生成', '2', 'com.cuppacorner.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"banners\",\"className\":\"Banners\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-06-05 16:53:35\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"BannerTitle\",\"columnComment\":\"轮播图标题\",\"columnId\":2,\"columnName\":\"banner_title\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-05 16:53:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"bannerTitle\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"BannerUrl\",\"columnComment\":\"轮播图连接\",\"columnId\":3,\"columnName\":\"banner_url\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-05 16:53:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"bannerUrl\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"BannerImg\",\"columnComment\":\"图片\",\"columnId\":4,\"columnName\":\"banner_img\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-05 16:53:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"bannerImg\",\"javaType\":\"String\",\"list\":true,\"params\":{},', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-05 16:54:44', '50');
INSERT INTO `sys_oper_log` VALUES ('105', '代码生成', '2', 'com.cuppacorner.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"banners\",\"className\":\"Banners\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-06-05 16:53:35\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2023-06-05 16:54:44\",\"usableColumn\":false},{\"capJavaField\":\"BannerTitle\",\"columnComment\":\"轮播图标题\",\"columnId\":2,\"columnName\":\"banner_title\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-05 16:53:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"bannerTitle\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2023-06-05 16:54:44\",\"usableColumn\":false},{\"capJavaField\":\"BannerUrl\",\"columnComment\":\"轮播图连接\",\"columnId\":3,\"columnName\":\"banner_url\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-05 16:53:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"bannerUrl\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2023-06-05 16:54:44\",\"usableColumn\":false},{\"capJavaField\":\"BannerImg\",\"columnComment\":\"图片\",\"columnId\":4,\"columnName\":\"banner_img\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-05 16:53:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-06 13:46:59', '64');
INSERT INTO `sys_oper_log` VALUES ('106', '代码生成', '8', 'com.cuppacorner.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"banners\"}', null, '0', null, '2023-06-06 13:47:40', '34');
INSERT INTO `sys_oper_log` VALUES ('107', '菜单管理', '2', 'com.cuppacorner.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"android/banners\",\"createTime\":\"2023-06-05 16:51:43\",\"icon\":\"build\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2001,\"menuName\":\"轮播图管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"banner\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-06 13:55:14', '34');
INSERT INTO `sys_oper_log` VALUES ('108', '菜单管理', '2', 'com.cuppacorner.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"android/banners\",\"createTime\":\"2023-06-05 16:51:43\",\"icon\":\"build\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2001,\"menuName\":\"轮播图管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"banners\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-06 13:59:04', '7');
INSERT INTO `sys_oper_log` VALUES ('109', '菜单管理', '2', 'com.cuppacorner.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"android/banners/index.vue\",\"createTime\":\"2023-06-05 16:51:43\",\"icon\":\"build\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2001,\"menuName\":\"轮播图管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"banners\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-06 13:59:40', '19');
INSERT INTO `sys_oper_log` VALUES ('110', '菜单管理', '3', 'com.cuppacorner.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2000', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', '0', null, '2023-06-06 14:09:21', '10');
INSERT INTO `sys_oper_log` VALUES ('111', '菜单管理', '3', 'com.cuppacorner.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2001', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-06 14:09:30', '30');
INSERT INTO `sys_oper_log` VALUES ('112', '菜单管理', '3', 'com.cuppacorner.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2000', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-06 14:09:32', '20');
INSERT INTO `sys_oper_log` VALUES ('113', '菜单管理', '1', 'com.cuppacorner.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"bug\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"安卓app\",\"menuType\":\"M\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\"android\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-06 14:09:54', '26');
INSERT INTO `sys_oper_log` VALUES ('114', '菜单管理', '1', 'com.cuppacorner.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"android/banners\",\"createBy\":\"admin\",\"icon\":\"component\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"轮播图\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2014,\"path\":\"banners\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-06 14:10:24', '20');
INSERT INTO `sys_oper_log` VALUES ('115', '菜单管理', '2', 'com.cuppacorner.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"android/androidbanners\",\"createTime\":\"2023-06-06 14:10:24\",\"icon\":\"component\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2015,\"menuName\":\"轮播图\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2014,\"path\":\"banners\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-06 14:11:46', '11');
INSERT INTO `sys_oper_log` VALUES ('116', '菜单管理', '2', 'com.cuppacorner.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"android/banners\",\"createTime\":\"2023-06-06 14:10:24\",\"icon\":\"component\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2015,\"menuName\":\"轮播图\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2014,\"path\":\"banners\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-06 14:13:22', '21');
INSERT INTO `sys_oper_log` VALUES ('117', '菜单管理', '2', 'com.cuppacorner.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"android/banners2\",\"createTime\":\"2023-06-06 14:10:24\",\"icon\":\"component\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2015,\"menuName\":\"轮播图\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2014,\"path\":\"banners2\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-06 14:16:36', '19');
INSERT INTO `sys_oper_log` VALUES ('118', '菜单管理', '2', 'com.cuppacorner.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"android/banners\",\"createTime\":\"2023-06-06 14:10:24\",\"icon\":\"component\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2015,\"menuName\":\"轮播图\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2014,\"path\":\"banners\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-06 14:31:18', '29');
INSERT INTO `sys_oper_log` VALUES ('119', '菜单管理', '2', 'com.cuppacorner.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"android/banners\",\"createTime\":\"2023-06-06 14:10:24\",\"icon\":\"component\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2015,\"menuName\":\"轮播图\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2014,\"path\":\"banners\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-06 14:32:04', '19');
INSERT INTO `sys_oper_log` VALUES ('120', '代码生成', '2', 'com.cuppacorner.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"banners\",\"className\":\"Banners\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-06-05 16:53:35\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2023-06-06 13:46:59\",\"usableColumn\":false},{\"capJavaField\":\"BannerTitle\",\"columnComment\":\"轮播图标题\",\"columnId\":2,\"columnName\":\"banner_title\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-05 16:53:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"bannerTitle\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2023-06-06 13:46:59\",\"usableColumn\":false},{\"capJavaField\":\"BannerUrl\",\"columnComment\":\"轮播图连接\",\"columnId\":3,\"columnName\":\"banner_url\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-05 16:53:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"bannerUrl\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2023-06-06 13:46:59\",\"usableColumn\":false},{\"capJavaField\":\"BannerImg\",\"columnComment\":\"图片\",\"columnId\":4,\"columnName\":\"banner_img\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-05 16:53:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"imageUpload\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-06 14:35:36', '75');
INSERT INTO `sys_oper_log` VALUES ('121', '轮播图', '2', 'com.cuppacorner.android.controller.BannersController.edit()', 'PUT', '1', 'admin', null, '/android/banners', '127.0.0.1', '内网IP', '{\"bannerImg\":\"/profile/upload/2023/06/06/Snipaste_2022-12-31_23-39-50_20230606143618A001.png\",\"createBy\":\"\",\"createTime\":\"2023-05-22 13:19:05\",\"id\":3,\"params\":{},\"updateBy\":\"\",\"updateTime\":\"2023-06-06 14:36:20\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-06 14:36:20', '12');
INSERT INTO `sys_oper_log` VALUES ('122', '轮播图', '2', 'com.cuppacorner.android.controller.BannersController.edit()', 'PUT', '1', 'admin', null, '/android/banners', '127.0.0.1', '内网IP', '{\"bannerImg\":\"/profile/upload/2023/06/06/AdobeStock_267568050_20230606144403A002.jpg\",\"createBy\":\"\",\"createTime\":\"2023-05-22 13:19:14\",\"id\":4,\"params\":{},\"updateBy\":\"\",\"updateTime\":\"2023-06-06 14:44:04\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-06 14:44:04', '7');
INSERT INTO `sys_oper_log` VALUES ('123', '轮播图', '2', 'com.cuppacorner.android.controller.BannersController.edit()', 'PUT', '1', 'admin', null, '/android/banners', '127.0.0.1', '内网IP', '{\"bannerImg\":\"/profile/upload/2023/06/06/01159-scaled_20230606144503A003.jpg\",\"createBy\":\"\",\"createTime\":\"2023-05-27 20:58:43\",\"id\":5,\"params\":{},\"updateBy\":\"\",\"updateTime\":\"2023-06-06 14:45:05\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-06 14:45:05', '5');
INSERT INTO `sys_oper_log` VALUES ('124', '轮播图', '2', 'com.cuppacorner.android.controller.BannersController.edit()', 'PUT', '1', 'admin', null, '/android/banners', '127.0.0.1', '内网IP', '{\"bannerImg\":\"/profile/upload/2023/06/06/下载_20230606144659A004.jpg\",\"createBy\":\"\",\"createTime\":\"2023-05-22 13:19:05\",\"id\":3,\"params\":{},\"updateBy\":\"\",\"updateTime\":\"2023-06-06 14:47:00\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-06 14:47:00', '6');
INSERT INTO `sys_oper_log` VALUES ('125', '代码生成', '6', 'com.cuppacorner.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"news\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-06 15:46:12', '105');
INSERT INTO `sys_oper_log` VALUES ('126', '代码生成', '2', 'com.cuppacorner.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"news\",\"className\":\"News\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"序号\",\"columnId\":10,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-06-06 15:46:11\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"UserName\",\"columnComment\":\"用户名\",\"columnId\":11,\"columnName\":\"UserName\",\"columnType\":\"text\",\"createBy\":\"admin\",\"createTime\":\"2023-06-06 15:46:11\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"UserName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Tag\",\"columnComment\":\"标签\",\"columnId\":12,\"columnName\":\"Tag\",\"columnType\":\"text\",\"createBy\":\"admin\",\"createTime\":\"2023-06-06 15:46:11\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"Tag\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"标题\",\"columnId\":13,\"columnName\":\"Title\",\"columnType\":\"text\",\"createBy\":\"admin\",\"createTime\":\"2023-06-06 15:46:11\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"Title\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sor', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-06 15:47:45', '39');
INSERT INTO `sys_oper_log` VALUES ('127', '代码生成', '8', 'com.cuppacorner.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"news\"}', null, '0', null, '2023-06-06 15:48:34', '45');
INSERT INTO `sys_oper_log` VALUES ('128', '代码生成', '2', 'com.cuppacorner.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"news\",\"className\":\"News\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"序号\",\"columnId\":10,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-06-06 15:46:11\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2023-06-06 15:47:45\",\"usableColumn\":false},{\"capJavaField\":\"UserName\",\"columnComment\":\"用户名\",\"columnId\":11,\"columnName\":\"UserName\",\"columnType\":\"text\",\"createBy\":\"admin\",\"createTime\":\"2023-06-06 15:46:11\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"UserName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2023-06-06 15:47:45\",\"usableColumn\":false},{\"capJavaField\":\"Tag\",\"columnComment\":\"标签\",\"columnId\":12,\"columnName\":\"Tag\",\"columnType\":\"text\",\"createBy\":\"admin\",\"createTime\":\"2023-06-06 15:46:11\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"Tag\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2023-06-06 15:47:45\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"标题\",\"columnId\":13,\"columnName\":\"Title\",\"columnType\":\"text\",\"createBy\":\"admin\",\"createTime\":\"2023-06-06 15:46:11\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"Title\",\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-06 15:52:02', '21');
INSERT INTO `sys_oper_log` VALUES ('129', '菜单管理', '1', 'com.cuppacorner.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"android/news\",\"createBy\":\"admin\",\"icon\":\"cascader\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"资讯\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2014,\"path\":\"news\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-06 15:54:06', '19');
INSERT INTO `sys_oper_log` VALUES ('130', '新闻信息', '1', 'com.cuppacorner.android.controller.NewsController.add()', 'POST', '1', 'admin', null, '/android/news', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\NewsMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.NewsMapper.insertNews-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into news\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-06 15:57:41', '60');
INSERT INTO `sys_oper_log` VALUES ('131', '新闻信息', '1', 'com.cuppacorner.android.controller.NewsController.add()', 'POST', '1', 'admin', null, '/android/news', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\NewsMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.NewsMapper.insertNews-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into news\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-06 15:57:46', '3');
INSERT INTO `sys_oper_log` VALUES ('132', '新闻信息', '1', 'com.cuppacorner.android.controller.NewsController.add()', 'POST', '1', 'admin', null, '/android/news', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\NewsMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.NewsMapper.insertNews-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into news\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-06 15:58:58', '16');
INSERT INTO `sys_oper_log` VALUES ('133', '新闻信息', '1', 'com.cuppacorner.android.controller.NewsController.add()', 'POST', '1', 'admin', null, '/android/news', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\NewsMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.NewsMapper.insertNews-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into news\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-06 15:59:01', '3');
INSERT INTO `sys_oper_log` VALUES ('134', '新闻信息', '1', 'com.cuppacorner.android.controller.NewsController.add()', 'POST', '1', 'admin', null, '/android/news', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\NewsMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.NewsMapper.insertNews-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into news\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-06 15:59:05', '3');
INSERT INTO `sys_oper_log` VALUES ('135', '新闻信息', '1', 'com.cuppacorner.android.controller.NewsController.add()', 'POST', '1', 'admin', null, '/android/news', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\NewsMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.NewsMapper.insertNews-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into news\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-06 15:59:16', '4');
INSERT INTO `sys_oper_log` VALUES ('136', '新闻信息', '1', 'com.cuppacorner.android.controller.NewsController.add()', 'POST', '1', 'admin', null, '/android/news', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\NewsMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.NewsMapper.insertNews-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into news\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-06 16:01:26', '3');
INSERT INTO `sys_oper_log` VALUES ('137', '新闻信息', '1', 'com.cuppacorner.android.controller.NewsController.add()', 'POST', '1', 'admin', null, '/android/news', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\NewsMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.NewsMapper.insertNews-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into news\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-06 16:01:27', '3');
INSERT INTO `sys_oper_log` VALUES ('138', '新闻信息', '1', 'com.cuppacorner.android.controller.NewsController.add()', 'POST', '1', 'admin', null, '/android/news', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\NewsMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.NewsMapper.insertNews-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into news\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-06 16:01:29', '2');
INSERT INTO `sys_oper_log` VALUES ('139', '新闻信息', '1', 'com.cuppacorner.android.controller.NewsController.add()', 'POST', '1', 'admin', null, '/android/news', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\NewsMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.NewsMapper.insertNews-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into news\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-06 16:03:56', '58');
INSERT INTO `sys_oper_log` VALUES ('140', '新闻信息', '1', 'com.cuppacorner.android.controller.NewsController.add()', 'POST', '1', 'admin', null, '/android/news', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\NewsMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.NewsMapper.insertNews-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into news\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-06 16:03:57', '3');
INSERT INTO `sys_oper_log` VALUES ('141', '新闻信息', '1', 'com.cuppacorner.android.controller.NewsController.add()', 'POST', '1', 'admin', null, '/android/news', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\NewsMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.NewsMapper.insertNews-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into news\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-06 16:05:29', '3');
INSERT INTO `sys_oper_log` VALUES ('142', '新闻信息', '1', 'com.cuppacorner.android.controller.NewsController.add()', 'POST', '1', 'admin', null, '/android/news', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\NewsMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.NewsMapper.insertNews-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into news\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-06 16:05:39', '3');
INSERT INTO `sys_oper_log` VALUES ('143', '菜单管理', '3', 'com.cuppacorner.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2017', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', '0', null, '2023-06-06 16:07:26', '4');
INSERT INTO `sys_oper_log` VALUES ('144', '菜单管理', '3', 'com.cuppacorner.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2016', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-06 16:07:39', '21');
INSERT INTO `sys_oper_log` VALUES ('145', '新闻信息', '1', 'com.cuppacorner.android.controller.NewsController.add()', 'POST', '1', 'admin', null, '/android/news', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\NewsMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.NewsMapper.insertNews-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into news\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-06 16:07:51', '3');
INSERT INTO `sys_oper_log` VALUES ('146', '菜单管理', '3', 'com.cuppacorner.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2018', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-06 16:08:08', '14');
INSERT INTO `sys_oper_log` VALUES ('147', '菜单管理', '3', 'com.cuppacorner.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2019', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-06 16:08:11', '11');
INSERT INTO `sys_oper_log` VALUES ('148', '菜单管理', '3', 'com.cuppacorner.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2020', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-06 16:08:13', '21');
INSERT INTO `sys_oper_log` VALUES ('149', '菜单管理', '3', 'com.cuppacorner.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2021', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-06 16:08:16', '11');
INSERT INTO `sys_oper_log` VALUES ('150', '菜单管理', '3', 'com.cuppacorner.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2022', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-06 16:08:19', '23');
INSERT INTO `sys_oper_log` VALUES ('151', '菜单管理', '3', 'com.cuppacorner.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2017', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-06 16:08:21', '21');
INSERT INTO `sys_oper_log` VALUES ('152', '菜单管理', '1', 'com.cuppacorner.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"android/news\",\"createBy\":\"admin\",\"icon\":\"checkbox\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"资讯\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2014,\"path\":\"news\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-06 16:09:01', '17');
INSERT INTO `sys_oper_log` VALUES ('153', '新闻信息', '1', 'com.cuppacorner.android.controller.NewsController.add()', 'POST', '1', 'admin', null, '/android/news', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\NewsMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.NewsMapper.insertNews-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into news\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-06 16:09:13', '16');
INSERT INTO `sys_oper_log` VALUES ('154', '新闻信息', '1', 'com.cuppacorner.android.controller.NewsController.add()', 'POST', '1', 'admin', null, '/android/news', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\NewsMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.NewsMapper.insertNews-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into news\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-06 16:09:14', '2');
INSERT INTO `sys_oper_log` VALUES ('155', '新闻信息', '1', 'com.cuppacorner.android.controller.NewsController.add()', 'POST', '1', 'admin', null, '/android/news', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\NewsMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.NewsMapper.insertNews-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into news\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-06 16:14:06', '52');
INSERT INTO `sys_oper_log` VALUES ('156', '新闻信息', '1', 'com.cuppacorner.android.controller.NewsController.add()', 'POST', '1', 'admin', null, '/android/news', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\NewsMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.NewsMapper.insertNews-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into news\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-06 16:16:47', '3');
INSERT INTO `sys_oper_log` VALUES ('157', '新闻信息', '1', 'com.cuppacorner.android.controller.NewsController.add()', 'POST', '1', 'admin', null, '/android/news', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\NewsMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.NewsMapper.insertNews-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into news\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-06 16:16:47', '3');
INSERT INTO `sys_oper_log` VALUES ('158', '轮播图', '1', 'com.cuppacorner.android.controller.BannersController.add()', 'POST', '1', 'admin', null, '/android/banners', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-06-06 16:17:02\",\"id\":6,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-06 16:17:02', '14');
INSERT INTO `sys_oper_log` VALUES ('159', '轮播图', '3', 'com.cuppacorner.android.controller.BannersController.remove()', 'DELETE', '1', 'admin', null, '/android/banners/6', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-06 16:17:06', '11');
INSERT INTO `sys_oper_log` VALUES ('160', '新闻信息', '1', 'com.cuppacorner.android.controller.NewsController.add()', 'POST', '1', 'admin', null, '/android/news', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\NewsMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.NewsMapper.insertNews-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into news\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-06 16:17:35', '3');
INSERT INTO `sys_oper_log` VALUES ('161', '新闻信息', '1', 'com.cuppacorner.android.controller.NewsController.add()', 'POST', '1', 'admin', null, '/android/news', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\NewsMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.NewsMapper.insertNews-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into news\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-06 16:19:15', '61');
INSERT INTO `sys_oper_log` VALUES ('162', '新闻信息', '1', 'com.cuppacorner.android.controller.NewsController.add()', 'POST', '1', 'admin', null, '/android/news', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\NewsMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.NewsMapper.insertNews-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into news\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-06 16:19:16', '2');
INSERT INTO `sys_oper_log` VALUES ('163', '新闻信息', '1', 'com.cuppacorner.android.controller.NewsController.add()', 'POST', '1', 'admin', null, '/android/news', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\NewsMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.NewsMapper.insertNews-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into news\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-06 16:22:55', '54');
INSERT INTO `sys_oper_log` VALUES ('164', '新闻信息', '1', 'com.cuppacorner.android.controller.NewsController.add()', 'POST', '1', 'admin', null, '/android/news', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\NewsMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.NewsMapper.insertNews-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into news\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-06 16:25:11', '3');
INSERT INTO `sys_oper_log` VALUES ('165', '新闻信息', '1', 'com.cuppacorner.android.controller.NewsController.add()', 'POST', '1', 'admin', null, '/android/news', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\NewsMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.NewsMapper.insertNews-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into news\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-06 16:26:08', '3');
INSERT INTO `sys_oper_log` VALUES ('166', '代码生成', '3', 'com.cuppacorner.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', null, '/tool/gen/2', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-06 16:26:27', '23');
INSERT INTO `sys_oper_log` VALUES ('167', '代码生成', '6', 'com.cuppacorner.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"news\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-06 16:26:31', '44');
INSERT INTO `sys_oper_log` VALUES ('168', '代码生成', '2', 'com.cuppacorner.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"news\",\"className\":\"News\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"序号\",\"columnId\":17,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-06-06 16:26:31\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"UserName\",\"columnComment\":\"用户名\",\"columnId\":18,\"columnName\":\"UserName\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-06 16:26:31\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"UserName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Tag\",\"columnComment\":\"标签\",\"columnId\":19,\"columnName\":\"Tag\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-06 16:26:31\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"Tag\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"标题\",\"columnId\":20,\"columnName\":\"Title\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-06 16:26:31\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"Title\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"requi', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-06 16:27:17', '33');
INSERT INTO `sys_oper_log` VALUES ('169', '代码生成', '8', 'com.cuppacorner.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"news\"}', null, '0', null, '2023-06-06 16:27:19', '188');
INSERT INTO `sys_oper_log` VALUES ('170', '新闻信息', '2', 'com.cuppacorner.android.controller.NewsController.edit()', 'PUT', '1', 'admin', null, '/android/news', '127.0.0.1', '内网IP', '{\"detailUrl\":\"http://www.coffeesalon.com/?p=4648\",\"id\":1,\"imageUrl\":\"http://www.coffeesalon.com/wp-content/uploads/2023/04/31681285410.jpg\",\"params\":{},\"summary\":\"咖啡生豆指的就是未经过烘焙的咖啡豆。无法直接冲煮，必须经过烘焙，研磨成粉才能有效萃取出里面的“精华”\\r\\n\",\"tag\":\"咖啡\",\"title\":\"咖啡生豆\",\"userName\":\"cuppacorner\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-06 16:30:01', '4');
INSERT INTO `sys_oper_log` VALUES ('171', '资讯', '3', 'com.cuppacorner.android.controller.NewsController.remove()', 'DELETE', '1', 'admin', null, '/android/news/1', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-06 16:34:06', '16');
INSERT INTO `sys_oper_log` VALUES ('172', '资讯', '1', 'com.cuppacorner.android.controller.NewsController.add()', 'POST', '1', 'admin', null, '/android/news', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\NewsMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.NewsMapper.insertNews-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into news\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-06 16:34:10', '46');
INSERT INTO `sys_oper_log` VALUES ('173', '资讯', '1', 'com.cuppacorner.android.controller.NewsController.add()', 'POST', '1', 'admin', null, '/android/news', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\NewsMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.NewsMapper.insertNews-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into news\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-06 16:34:53', '4');
INSERT INTO `sys_oper_log` VALUES ('174', '代码生成', '2', 'com.cuppacorner.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"news\",\"className\":\"News\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"序号\",\"columnId\":17,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-06-06 16:26:31\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2023-06-06 16:27:17\",\"usableColumn\":false},{\"capJavaField\":\"UserName\",\"columnComment\":\"用户名\",\"columnId\":18,\"columnName\":\"UserName\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-06 16:26:31\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"UserName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2023-06-06 16:27:17\",\"usableColumn\":false},{\"capJavaField\":\"Tag\",\"columnComment\":\"标签\",\"columnId\":19,\"columnName\":\"Tag\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-06 16:26:31\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"Tag\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2023-06-06 16:27:17\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"标题\",\"columnId\":20,\"columnName\":\"Title\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-06 16:26:31\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaF', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-06 16:46:15', '87');
INSERT INTO `sys_oper_log` VALUES ('175', '代码生成', '8', 'com.cuppacorner.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"news\"}', null, '0', null, '2023-06-06 16:46:18', '359');
INSERT INTO `sys_oper_log` VALUES ('176', '资讯', '1', 'com.cuppacorner.android.controller.NewsController.add()', 'POST', '1', 'admin', null, '/android/news', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\NewsMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.NewsMapper.insertNews-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into news\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-06 16:52:37', '124');
INSERT INTO `sys_oper_log` VALUES ('177', '资讯', '1', 'com.cuppacorner.android.controller.NewsController.add()', 'POST', '1', 'admin', null, '/android/news', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\NewsMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.NewsMapper.insertNews-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into news\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-06 16:52:45', '5');
INSERT INTO `sys_oper_log` VALUES ('178', '资讯', '1', 'com.cuppacorner.android.controller.NewsController.add()', 'POST', '1', 'admin', null, '/android/news', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\NewsMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.NewsMapper.insertNews-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into news\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-06 16:53:02', '5');
INSERT INTO `sys_oper_log` VALUES ('179', '资讯', '5', 'com.cuppacorner.android.controller.NewsController.export()', 'POST', '1', 'admin', null, '/android/news/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', null, '0', null, '2023-06-06 16:53:09', '1031');
INSERT INTO `sys_oper_log` VALUES ('180', '菜单管理', '3', 'com.cuppacorner.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2023', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-06 16:56:28', '86');
INSERT INTO `sys_oper_log` VALUES ('181', '轮播图', '2', 'com.cuppacorner.android.controller.BannersController.edit()', 'PUT', '1', 'admin', null, '/android/banners', '127.0.0.1', '内网IP', '{\"bannerImg\":\"/profile/upload/2023/06/06/下载_20230606144659A004.jpg\",\"bannerUrl\":\"1\",\"createBy\":\"\",\"createTime\":\"2023-05-22 13:19:05\",\"id\":3,\"params\":{},\"updateBy\":\"\",\"updateTime\":\"2023-06-06 16:58:24\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-06 16:58:24', '28');
INSERT INTO `sys_oper_log` VALUES ('182', '轮播图', '2', 'com.cuppacorner.android.controller.BannersController.edit()', 'PUT', '1', 'admin', null, '/android/banners', '127.0.0.1', '内网IP', '{\"bannerImg\":\"/profile/upload/2023/06/06/下载_20230606144659A004.jpg\",\"bannerUrl\":\"\",\"createBy\":\"\",\"createTime\":\"2023-05-22 13:19:05\",\"id\":3,\"params\":{},\"updateBy\":\"\",\"updateTime\":\"2023-06-06 16:58:31\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-06 16:58:31', '46');
INSERT INTO `sys_oper_log` VALUES ('183', '代码生成', '3', 'com.cuppacorner.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', null, '/tool/gen/3', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-07 16:42:31', '70');
INSERT INTO `sys_oper_log` VALUES ('184', '代码生成', '6', 'com.cuppacorner.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"news\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-07 16:42:37', '72');
INSERT INTO `sys_oper_log` VALUES ('185', '代码生成', '2', 'com.cuppacorner.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"news\",\"className\":\"News\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"序号\",\"columnId\":24,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 16:42:37\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Tag\",\"columnComment\":\"新闻标签\",\"columnId\":25,\"columnName\":\"Tag\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 16:42:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"Tag\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"新闻标题\",\"columnId\":26,\"columnName\":\"Title\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 16:42:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"Title\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Summary\",\"columnComment\":\"新闻摘要\",\"columnId\":27,\"columnName\":\"Summary\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 16:42:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"Summary\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"requi', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-07 16:43:15', '37');
INSERT INTO `sys_oper_log` VALUES ('186', '代码生成', '8', 'com.cuppacorner.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"news\"}', null, '0', null, '2023-06-07 16:43:18', '246');
INSERT INTO `sys_oper_log` VALUES ('187', '菜单管理', '1', 'com.cuppacorner.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"android/news\",\"createBy\":\"admin\",\"icon\":\"button\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"资讯\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2014,\"path\":\"news\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-07 16:50:27', '39');
INSERT INTO `sys_oper_log` VALUES ('188', '新闻', '2', 'com.cuppacorner.android.controller.NewsController.edit()', 'PUT', '1', 'admin', null, '/android/news', '127.0.0.1', '内网IP', '{\"detailUrl\":\"http://www.coffeesalon.com/?p=4648\",\"id\":1,\"imageUrl\":\"http://www.coffeesalon.com/wp-content/uploads/2023/04/31681285410.jpg\",\"params\":{},\"summary\":\"咖啡生豆指的就是未经过烘焙的咖啡豆。无法直接冲煮，必须经过烘焙，研磨成粉才能有效萃取出里面的“精华”\\n\",\"tag\":\"咖啡\",\"title\":\"咖啡生豆\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-07 16:59:51', '15');
INSERT INTO `sys_oper_log` VALUES ('189', '新闻', '1', 'com.cuppacorner.android.controller.NewsController.add()', 'POST', '1', 'admin', null, '/android/news', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\NewsMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.NewsMapper.insertNews-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into news\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-07 17:00:14', '46');
INSERT INTO `sys_oper_log` VALUES ('190', '代码生成', '2', 'com.cuppacorner.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"news\",\"className\":\"News\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"序号\",\"columnId\":24,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 16:42:37\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-06-07 16:43:15\",\"usableColumn\":false},{\"capJavaField\":\"Tag\",\"columnComment\":\"新闻标签\",\"columnId\":25,\"columnName\":\"Tag\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 16:42:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"tag\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-06-07 16:43:15\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"新闻标题\",\"columnId\":26,\"columnName\":\"Title\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 16:42:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"title\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-06-07 16:43:15\",\"usableColumn\":false},{\"capJavaField\":\"Summary\",\"columnComment\":\"新闻摘要\",\"columnId\":27,\"columnName\":\"Summary\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 16:42:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaFie', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-07 17:09:07', '55');
INSERT INTO `sys_oper_log` VALUES ('191', '新闻', '1', 'com.cuppacorner.android.controller.NewsController.add()', 'POST', '1', 'admin', null, '/android/news', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\NewsMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.NewsMapper.insertNews-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into news\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-07 17:10:33', '57');
INSERT INTO `sys_oper_log` VALUES ('192', '新闻', '1', 'com.cuppacorner.android.controller.NewsController.add()', 'POST', '1', 'admin', null, '/android/news', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\NewsMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.NewsMapper.insertNews-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into news\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-07 19:29:50', '66');
INSERT INTO `sys_oper_log` VALUES ('193', '新闻', '1', 'com.cuppacorner.android.controller.NewsController.add()', 'POST', '1', 'admin', null, '/android/news', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\NewsMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.NewsMapper.insertNews-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into news (Tag, Title, Summary, ImageUrl, DetailUrl)\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-07 19:31:26', '58');
INSERT INTO `sys_oper_log` VALUES ('194', '新闻', '1', 'com.cuppacorner.android.controller.NewsController.add()', 'POST', '1', 'admin', null, '/android/news', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\NewsMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.NewsMapper.insertNews-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into news (Tag, Title, Summary, ImageUrl, DetailUrl)\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-07 19:31:27', '3');
INSERT INTO `sys_oper_log` VALUES ('195', '新闻', '1', 'com.cuppacorner.android.controller.NewsController.add()', 'POST', '1', 'admin', null, '/android/news', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\NewsMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.NewsMapper.insertNews-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into news (Tag, Title, Summary, ImageUrl, DetailUrl)\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-07 19:31:30', '3');
INSERT INTO `sys_oper_log` VALUES ('196', '新闻', '1', 'com.cuppacorner.android.controller.NewsController.add()', 'POST', '1', 'admin', null, '/android/news', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\NewsMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.NewsMapper.insertNews-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into news (Tag, Title, Summary, ImageUrl, DetailUrl)\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-07 19:31:38', '3');
INSERT INTO `sys_oper_log` VALUES ('197', '新闻', '1', 'com.cuppacorner.android.controller.NewsController.add()', 'POST', '1', 'admin', null, '/android/news', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\NewsMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.NewsMapper.insertNews-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into news (Tag, Title, Summary, ImageUrl, DetailUrl)\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-07 19:31:49', '2');
INSERT INTO `sys_oper_log` VALUES ('198', '新闻', '1', 'com.cuppacorner.android.controller.NewsController.add()', 'POST', '1', 'admin', null, '/android/news', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\NewsMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.NewsMapper.insertNews-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into news (Tag, Title, Summary, ImageUrl, DetailUrl)\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-07 19:34:09', '10');
INSERT INTO `sys_oper_log` VALUES ('199', '新闻', '1', 'com.cuppacorner.android.controller.NewsController.add()', 'POST', '1', 'admin', null, '/android/news', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\NewsMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.NewsMapper.insertNews-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into news\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-07 19:41:34', '72');
INSERT INTO `sys_oper_log` VALUES ('200', '代码生成', '3', 'com.cuppacorner.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', null, '/tool/gen/4', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-07 19:46:26', '34');
INSERT INTO `sys_oper_log` VALUES ('201', '代码生成', '6', 'com.cuppacorner.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"news\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-07 19:46:33', '44');
INSERT INTO `sys_oper_log` VALUES ('202', '代码生成', '2', 'com.cuppacorner.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"news\",\"className\":\"News\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"序号\",\"columnId\":30,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 19:46:33\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"NewsTag\",\"columnComment\":\"新闻标签\",\"columnId\":31,\"columnName\":\"news_tag\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 19:46:33\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"newsTag\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"NewsTitle\",\"columnComment\":\"新闻标题\",\"columnId\":32,\"columnName\":\"news_title\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 19:46:33\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"newsTitle\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"NewsSummary\",\"columnComment\":\"新闻摘要\",\"columnId\":33,\"columnName\":\"news_summary\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-07 19:46:33\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"newsSummary\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":fal', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-07 19:47:27', '33');
INSERT INTO `sys_oper_log` VALUES ('203', '代码生成', '6', 'com.cuppacorner.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"food\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-09 19:43:05', '98');
INSERT INTO `sys_oper_log` VALUES ('204', '代码生成', '2', 'com.cuppacorner.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"food\",\"className\":\"Food\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"序号\",\"columnId\":36,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-06-09 19:43:05\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"美食名称\",\"columnId\":37,\"columnName\":\"name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-09 19:43:05\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ImageUrl\",\"columnComment\":\"美食图片地址\",\"columnId\":38,\"columnName\":\"imageUrl\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-09 19:43:05\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"imageUrl\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DetailUrl\",\"columnComment\":\"美食详情地址\",\"columnId\":39,\"columnName\":\"detailUrl\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-09 19:43:05\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"detailUrl\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-09 19:43:49', '41');
INSERT INTO `sys_oper_log` VALUES ('205', '代码生成', '8', 'com.cuppacorner.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"food\"}', null, '0', null, '2023-06-09 19:43:54', '256');
INSERT INTO `sys_oper_log` VALUES ('206', '菜单管理', '1', 'com.cuppacorner.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"android/food\",\"createBy\":\"admin\",\"icon\":\"code\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"美食\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2014,\"path\":\"food\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-09 19:46:39', '18');
INSERT INTO `sys_oper_log` VALUES ('207', '美食', '1', 'com.cuppacorner.android.controller.FoodController.add()', 'POST', '1', 'admin', null, '/android/food', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\FoodMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.FoodMapper.insertFood-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into food\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-09 19:47:20', '57');
INSERT INTO `sys_oper_log` VALUES ('208', '美食', '1', 'com.cuppacorner.android.controller.FoodController.add()', 'POST', '1', 'admin', null, '/android/food', '127.0.0.1', '内网IP', '{\"detailUrl\":\"a\",\"id\":1,\"imageUrl\":\"a\",\"name\":\"寿司\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-09 19:47:37', '15');
INSERT INTO `sys_oper_log` VALUES ('209', '美食', '1', 'com.cuppacorner.android.controller.FoodController.add()', 'POST', '1', 'admin', null, '/android/food', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\FoodMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.FoodMapper.insertFood-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into food\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-09 19:47:52', '2');
INSERT INTO `sys_oper_log` VALUES ('210', '美食', '1', 'com.cuppacorner.android.controller.FoodController.add()', 'POST', '1', 'admin', null, '/android/food', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\FoodMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.FoodMapper.insertFood-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into food\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-09 19:52:02', '2');
INSERT INTO `sys_oper_log` VALUES ('211', '美食', '1', 'com.cuppacorner.android.controller.FoodController.add()', 'POST', '1', 'admin', null, '/android/food', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\FoodMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.FoodMapper.insertFood-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into food\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-09 19:54:05', '4');
INSERT INTO `sys_oper_log` VALUES ('212', '美食', '1', 'com.cuppacorner.android.controller.FoodController.add()', 'POST', '1', 'admin', null, '/android/food', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\FoodMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.FoodMapper.insertFood-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into food\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-09 19:54:06', '2');
INSERT INTO `sys_oper_log` VALUES ('213', '美食', '2', 'com.cuppacorner.android.controller.FoodController.edit()', 'PUT', '1', 'admin', null, '/android/food', '127.0.0.1', '内网IP', '{\"detailUrl\":\"a\",\"id\":1,\"imageUrl\":\"a\",\"name\":\"寿司\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-09 19:54:09', '16');
INSERT INTO `sys_oper_log` VALUES ('214', '美食', '1', 'com.cuppacorner.android.controller.FoodController.add()', 'POST', '1', 'admin', null, '/android/food', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\FoodMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.FoodMapper.insertFood-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into food\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-09 19:55:07', '2');
INSERT INTO `sys_oper_log` VALUES ('215', '美食', '1', 'com.cuppacorner.android.controller.FoodController.add()', 'POST', '1', 'admin', null, '/android/food', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\FoodMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.FoodMapper.insertFood-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into food\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 1', '2023-06-09 19:55:09', '2');
INSERT INTO `sys_oper_log` VALUES ('216', '美食', '2', 'com.cuppacorner.android.controller.FoodController.edit()', 'PUT', '1', 'admin', null, '/android/food', '127.0.0.1', '内网IP', '{\"detailUrl\":\"https://www.menu-tokyo.jp/tradition/sukiyaki.php?lang=sc\",\"id\":1,\"imageUrl\":\"https://www.menu-tokyo.jp/tradition/img/sukiyaki.jpg\",\"name\":\"寿喜锅\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-09 19:57:58', '6');
INSERT INTO `sys_oper_log` VALUES ('217', '美食', '1', 'com.cuppacorner.android.controller.FoodController.add()', 'POST', '1', 'admin', null, '/android/food', '127.0.0.1', '内网IP', '{\"detailUrl\":\"https://www.menu-tokyo.jp/tradition/tempura\",\"id\":2,\"imageUrl\":\"https://www.menu-tokyo.jp/tradition/img/tempura.jpg\",\"name\":\"天妇罗\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-09 20:00:37', '17');
INSERT INTO `sys_oper_log` VALUES ('218', '美食', '1', 'com.cuppacorner.android.controller.FoodController.add()', 'POST', '1', 'admin', null, '/android/food', '127.0.0.1', '内网IP', '{\"detailUrl\":\"https://www.sbfoods-worldwide.com/zh-cn/recipes/010.html\",\"id\":3,\"imageUrl\":\"https://www.sbfoods-worldwide.com/zh-cn/recipes/images/img-010-01.jpg\",\"name\":\"日式咖喱饭\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-09 20:01:27', '6');
INSERT INTO `sys_oper_log` VALUES ('219', '美食', '1', 'com.cuppacorner.android.controller.FoodController.add()', 'POST', '1', 'admin', null, '/android/food', '127.0.0.1', '内网IP', '{\"detailUrl\":\"https://home.meishichina.com/recipe-48752.html\",\"id\":4,\"imageUrl\":\"https://i3.meishichina.com/atta/recipe/2012/01/11/201201111424035.jpg?x-oss-process=style/p800\",\"name\":\"日式土豆沙拉\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-09 20:02:07', '7');
INSERT INTO `sys_oper_log` VALUES ('220', '美食', '2', 'com.cuppacorner.android.controller.FoodController.edit()', 'PUT', '1', 'admin', null, '/android/food', '127.0.0.1', '内网IP', '{\"detailUrl\":\"https://home.meishichina.com/recipe-366630.html\",\"id\":1,\"imageUrl\":\"https://www.menu-tokyo.jp/tradition/img/sukiyaki.jpg\",\"name\":\"寿喜锅\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-10 19:43:55', '52');
INSERT INTO `sys_oper_log` VALUES ('221', '美食', '2', 'com.cuppacorner.android.controller.FoodController.edit()', 'PUT', '1', 'admin', null, '/android/food', '127.0.0.1', '内网IP', '{\"detailUrl\":\"https://home.meishichina.com/recipe-136987.html\",\"id\":2,\"imageUrl\":\"https://www.menu-tokyo.jp/tradition/img/tempura.jpg\",\"name\":\"天妇罗\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-10 19:44:28', '9');
INSERT INTO `sys_oper_log` VALUES ('222', '轮播图', '2', 'com.cuppacorner.android.controller.BannersController.edit()', 'PUT', '1', 'admin', null, '/android/banners', '127.0.0.1', '内网IP', '{\"bannerImg\":\"/profile/upload/2023/06/06/下载_20230606144659A004.jpg\",\"bannerTitle\":\"精品咖啡\",\"bannerUrl\":\"\",\"createBy\":\"\",\"createTime\":\"2023-05-22 13:19:05\",\"id\":3,\"params\":{},\"updateBy\":\"\",\"updateTime\":\"2023-06-11 16:18:34\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-11 16:18:34', '41');
INSERT INTO `sys_oper_log` VALUES ('223', '轮播图', '2', 'com.cuppacorner.android.controller.BannersController.edit()', 'PUT', '1', 'admin', null, '/android/banners', '127.0.0.1', '内网IP', '{\"bannerImg\":\"/profile/upload/2023/06/06/AdobeStock_267568050_20230606144403A002.jpg\",\"bannerTitle\":\"奶咖\",\"createBy\":\"\",\"createTime\":\"2023-05-22 13:19:14\",\"id\":4,\"params\":{},\"updateBy\":\"\",\"updateTime\":\"2023-06-11 16:18:42\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-11 16:18:42', '6');
INSERT INTO `sys_oper_log` VALUES ('224', '轮播图', '2', 'com.cuppacorner.android.controller.BannersController.edit()', 'PUT', '1', 'admin', null, '/android/banners', '127.0.0.1', '内网IP', '{\"bannerImg\":\"/profile/upload/2023/06/06/01159-scaled_20230606144503A003.jpg\",\"bannerTitle\":\"意式浓缩\",\"createBy\":\"\",\"createTime\":\"2023-05-27 20:58:43\",\"id\":5,\"params\":{},\"updateBy\":\"\",\"updateTime\":\"2023-06-11 16:18:54\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-11 16:18:54', '16');
INSERT INTO `sys_oper_log` VALUES ('225', '代码生成', '6', 'com.cuppacorner.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"musical\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-11 18:31:46', '93');
INSERT INTO `sys_oper_log` VALUES ('226', '代码生成', '2', 'com.cuppacorner.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"musical\",\"className\":\"Musical\",\"columns\":[{\"capJavaField\":\"MusicalId\",\"columnComment\":\"序号\",\"columnId\":40,\"columnName\":\"musical_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-06-11 18:31:46\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"musicalId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"MusicalName\",\"columnComment\":\"音乐剧名称\",\"columnId\":41,\"columnName\":\"musical_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-11 18:31:46\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"musicalName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"MusicalImageurl\",\"columnComment\":\"音乐剧图片地址\",\"columnId\":42,\"columnName\":\"musical_imageUrl\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-11 18:31:46\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"musicalImageurl\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"MusicalDetailurl\",\"columnComment\":\"音乐剧详情地址\",\"columnId\":43,\"columnName\":\"musical_detailUrl\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-11 18:31:46\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-11 18:32:14', '34');
INSERT INTO `sys_oper_log` VALUES ('227', '代码生成', '8', 'com.cuppacorner.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"musical\"}', null, '0', null, '2023-06-11 18:33:39', '252');
INSERT INTO `sys_oper_log` VALUES ('228', '菜单管理', '1', 'com.cuppacorner.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"android/musical\",\"createBy\":\"admin\",\"icon\":\"checkbox\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"音乐剧\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":2014,\"path\":\"musical\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-11 18:38:01', '34');
INSERT INTO `sys_oper_log` VALUES ('229', '音乐剧', '2', 'com.cuppacorner.android.controller.MusicalController.edit()', 'PUT', '1', 'admin', null, '/android/musical', '127.0.0.1', '内网IP', '{\"musicalDetailurl\":\"https://www.bilibili.com/video/BV1fW411a7nc?t=12.3\",\"musicalId\":1,\"musicalImageurl\":\"https://i1.hdslb.com/bfs/archive/59d7e528cb1b11e322c830846595cb5ee61af217.jpg@672w_378h_1c_!web-search-common-cover.webp\",\"musicalName\":\"Anastasia\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-11 18:39:59', '25');
INSERT INTO `sys_oper_log` VALUES ('230', '音乐剧', '2', 'com.cuppacorner.android.controller.MusicalController.edit()', 'PUT', '1', 'admin', null, '/android/musical', '127.0.0.1', '内网IP', '{\"musicalDetailurl\":\"https://www.bilibili.com/video/BV1dt4y1S7pe?t=2.6\",\"musicalId\":2,\"musicalImageurl\":\"https://www.bilibili.com/video/BV1dt4y1S7pe/?spm_id_from=333.337.search-card.all.click\",\"musicalName\":\"Murder Ballad\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-11 18:41:05', '17');
INSERT INTO `sys_oper_log` VALUES ('231', '音乐剧', '2', 'com.cuppacorner.android.controller.MusicalController.edit()', 'PUT', '1', 'admin', null, '/android/musical', '127.0.0.1', '内网IP', '{\"musicalDetailurl\":\"https://www.bilibili.com/video/BV1nW411L7wQ/?spm_id_from=333.337.search-card.all.click&vd_source=fecd074091067c642d451acc350620f7\",\"musicalId\":3,\"musicalImageurl\":\"https://i2.hdslb.com/bfs/archive/d99aa07331d8a5c4ff51d7601138489f5e652d14.png@672w_378h_1c_!web-search-common-cover.webp\",\"musicalName\":\"Phantom Of The Opera 25th Anniversary\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-11 18:45:13', '9');
INSERT INTO `sys_oper_log` VALUES ('232', '音乐剧', '2', 'com.cuppacorner.android.controller.MusicalController.edit()', 'PUT', '1', 'admin', null, '/android/musical', '127.0.0.1', '内网IP', '{\"musicalDetailurl\":\"https://www.bilibili.com/video/BV135411E7XM/?spm_id_from=333.337.search-card.all.click\",\"musicalId\":4,\"musicalImageurl\":\"https://i0.hdslb.com/bfs/archive/2e334f9f2c9ebfeda6fb8008bde677a154e3557c.jpg@672w_378h_1c_!web-search-common-cover.webp\",\"musicalName\":\"日式土豆沙拉\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-11 18:46:45', '5');
INSERT INTO `sys_oper_log` VALUES ('233', '音乐剧', '2', 'com.cuppacorner.android.controller.MusicalController.edit()', 'PUT', '1', 'admin', null, '/android/musical', '127.0.0.1', '内网IP', '{\"musicalDetailurl\":\"https://www.bilibili.com/video/BV135411E7XM/?spm_id_from=333.337.search-card.all.click\",\"musicalId\":4,\"musicalImageurl\":\"https://i0.hdslb.com/bfs/archive/2e334f9f2c9ebfeda6fb8008bde677a154e3557c.jpg@672w_378h_1c_!web-search-common-cover.webp\",\"musicalName\":\"Dear Evan Hansen\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-11 18:47:19', '5');
INSERT INTO `sys_oper_log` VALUES ('234', '音乐剧', '2', 'com.cuppacorner.android.controller.MusicalController.edit()', 'PUT', '1', 'admin', null, '/android/musical', '127.0.0.1', '内网IP', '{\"musicalDetailurl\":\"https://www.bilibili.com/video/BV1dt4y1S7pe?t=2.6\",\"musicalId\":2,\"musicalImageurl\":\"https://i0.hdslb.com/bfs/archive/e076d29edc88f496075888b9a1f3d497683939f2.jpg@672w_378h_1c_!web-search-common-cover.webp\",\"musicalName\":\"Murder Ballad\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-11 18:47:38', '16');
INSERT INTO `sys_oper_log` VALUES ('235', '音乐剧', '2', 'com.cuppacorner.android.controller.MusicalController.edit()', 'PUT', '1', 'admin', null, '/android/musical', '127.0.0.1', '内网IP', '{\"musicalDetailurl\":\"https://www.bilibili.com/video/BV1nW411L7wQ?t=3.9\",\"musicalId\":3,\"musicalImageurl\":\"https://i2.hdslb.com/bfs/archive/d99aa07331d8a5c4ff51d7601138489f5e652d14.png@672w_378h_1c_!web-search-common-cover.webp\",\"musicalName\":\"Phantom Of The Opera 25th Anniversary\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-11 18:48:10', '5');
INSERT INTO `sys_oper_log` VALUES ('236', '音乐剧', '2', 'com.cuppacorner.android.controller.MusicalController.edit()', 'PUT', '1', 'admin', null, '/android/musical', '127.0.0.1', '内网IP', '{\"musicalDetailurl\":\"https://www.bilibili.com/video/BV135411E7XM?t=27.4\",\"musicalId\":4,\"musicalImageurl\":\"https://i0.hdslb.com/bfs/archive/2e334f9f2c9ebfeda6fb8008bde677a154e3557c.jpg@672w_378h_1c_!web-search-common-cover.webp\",\"musicalName\":\"Dear Evan Hansen\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-11 18:48:22', '16');
INSERT INTO `sys_oper_log` VALUES ('237', '音乐剧', '2', 'com.cuppacorner.android.controller.MusicalController.edit()', 'PUT', '1', 'admin', null, '/android/musical', '127.0.0.1', '内网IP', '{\"musicalDetailurl\":\"https://www.bilibili.com/video/BV1fW411a7nc?t=12.3\",\"musicalId\":1,\"musicalImageurl\":\"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUVFBgUFBQZGRgaGBobGBoaFBgYGhsaGBgbGhoYGRkbIy0kHB0rIRgaJTcmKi4xNDQ0GyM6PzozPi0zNDEBCwsLEA8QHBISHTMiIyoxMzE1MzMzMzMzOTMzMTMzMTMzMzMzMzUzMzMzMzMzMzMzMzM0MzMxMzEzMzEzMzMzP//AABEIAREAuQMBIgACEQEDEQH/xAAcAAEAAgMBAQEAAAAAAAAAAAAABAUCAwYHAQj/xABBEAACAgEDAgUBBgMGAwcFAAABAgARAwQSITFBBRMiUWFxBhQygZGhI1KxB0JTksHRFWLwM3KTosLh8RYkNHOC/8QAGgEBAAMBAQEAAAAAAAAAAAAAAAECAwQFBv/EACURAQEBAQACAQMDBQAAAAAAAAABAhEDIRIEMXETQVEiMmGR8P/aAAwDAQACEQMRAD8A8ZiIgIiICIiAiIgIiICIiB9BknS6hkYFTRkWZrA9I+ynioyjY3Dr1HuP5hO30onjfg+TJiZcqjof1HcT17wvUjIiuOjKCPoRcruOnPbmWrvCZIQyJiklDMlk3E0lLIOIydjlbFypuRZ8VJvxpNMxlrXGSLM9s+qJlUtIytfjeIiXZkREBERAREQEREBERASw8PxgkA+8r5P0QJZVHc/oO8Jn3elfZXwnHqF2BaU8Bq7+4HcfMvtDomwfwmNlCV+OOhHxVTd9hNOBtocACpa/aLFt1Fj+8in8xa/+kR5M/GRvjdvqscDSXjkPTydiEwXSsIk/CsjafHLDEknhbyNirNgE+ATIS8YWshFzEmfN0sjj8dRE3aZVLqGuiQDRAPPsT0kqNMTpcn2dxl2CZwFDMBahm9Jzi/SQDZwCq/xF/PRpfCMWRMdZdrugZujAXqfIquK4If8AEeAeBwSFDEuNZ4RsxeZ5ilvRuxit6lg5bcL4A2Lz33dqqU8BERAREQERED6Jd+CIN+49qlIJepoMiYkyAja/Pz7wtmdr2z7FAbQfcSb9pGvMo9kX92ac99gvFEYKt8gAEd+Je+Om8/H8i/1aT5NfKNcTla9OJa6bFIWjSXGBJjxNqRhSSlE0oJvWSisxBM+TBmkqcZM0xuYbp8uR1eR+QoiSNHn2ZEfaDtYNtPRgDZU/B6TRgjxLnP4pjfaTpl3AUzBq3EJtBIC0DfqPHP7zcfFsLPY0SWzHgO1ktxSiqHwK/wBbCgiXel8RxBRejV9vVtzDkkt6qHsG49gfaa9T4niZHVNMqs1DdusimVjQI7179z24gVEREBERAREQPs7I6M5NLp/STtFkA80e4HecbPTvDFAw4vYIt/pL5kt9r5vH37I+GZsWR86ORix0pDWN7sBS17AsLP5e87HSszMWeyxNkyXpkX7sEJHq5A4o+wPI4sjkTfj0Th784/zKigGl+pvf+XX+mXk1JrjWT+lM0yyyxGMGnJT1AX2YCrHuR2b9pkunPauOpuVmpVUhDNitI/I4MzDwtJ1vLTU7THdPjGV6mZA0+7ppYzHfJ6tI/Jsl+Hs4yJ5YBfcAoIBBJ4A5+siTZjcqQykgg2COCCO4mrkdKuu15JXyr2i68oDggi197pvw9aI6cTTi1WsCqy4zSO9VjBYMwbcCo9QX+I3xzKn/AIlmvd5z7uOd7XwSRzfYk/rMV8Ryi6yOLbcaY/iu931vmBeJrtbuZ/JLWQHUYrB2M4NqOnqZwT7/ADIjeOZ8bFdqod5cq2PkFmLFWvkj1dD2kBPEswvblcXZNOw6kk9/ck/mZHzZmdizsWY9STZP1MCV4h4pkzBQ9enpSgdQAf6CQIiAiIgIiZKL4gTvDNCMjUxIArp15npPhGJceP1H0IpLE/y', null, '1', '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'musical_imageUrl\' at row 1\r\n### The error may exist in file [C:\\Users\\13928\\Downloads\\20230605162403\\CuppaCorner\\cuppacorner-android\\target\\classes\\mapper\\android\\MusicalMapper.xml]\r\n### The error may involve com.cuppacorner.android.mapper.MusicalMapper.updateMusical-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update musical          SET musical_name = ?,             musical_imageUrl = ?,             musical_detailUrl = ?          where musical_id = ?\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'musical_imageUrl\' at row 1\n; Data truncation: Data too long for column \'musical_imageUrl\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'musical_imageUrl\' at row 1', '2023-06-11 19:53:08', '469');
INSERT INTO `sys_oper_log` VALUES ('238', '音乐剧', '2', 'com.cuppacorner.android.controller.MusicalController.edit()', 'PUT', '1', 'admin', null, '/android/musical', '127.0.0.1', '内网IP', '{\"musicalDetailurl\":\"https://www.bilibili.com/video/BV1fW411a7nc?t=12.3\",\"musicalId\":1,\"musicalImageurl\":\"https://m.media-amazon.com/images/M/MV5BNDczNzg4OTM3MV5BMl5BanBnXkFtZTcwOTQzMTEzMw@@._V1_FMjpg_UX1000_.jpg\",\"musicalName\":\"Anastasia\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-11 19:53:35', '15');
INSERT INTO `sys_oper_log` VALUES ('239', '音乐剧', '2', 'com.cuppacorner.android.controller.MusicalController.edit()', 'PUT', '1', 'admin', null, '/android/musical', '127.0.0.1', '内网IP', '{\"musicalDetailurl\":\"https://www.bilibili.com/video/BV1nW411L7wQ?t=3.9\",\"musicalId\":3,\"musicalImageurl\":\"https://img1.baidu.com/it/u=293354235,4159301997&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500\",\"musicalName\":\"Phantom Of The Opera 25th Anniversary\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-11 19:55:20', '9');
INSERT INTO `sys_oper_log` VALUES ('240', '音乐剧', '2', 'com.cuppacorner.android.controller.MusicalController.edit()', 'PUT', '1', 'admin', null, '/android/musical', '127.0.0.1', '内网IP', '{\"musicalDetailurl\":\"https://www.bilibili.com/video/BV1fW411a7nc?t=12.3\",\"musicalId\":1,\"musicalImageurl\":\"http://t14.baidu.com/it/u=4196065003,1531786590&fm=224&app=112&f=JPEG?w=500&h=500\",\"musicalName\":\"Anastasia\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-11 19:56:50', '25');
INSERT INTO `sys_oper_log` VALUES ('241', '音乐剧', '2', 'com.cuppacorner.android.controller.MusicalController.edit()', 'PUT', '1', 'admin', null, '/android/musical', '127.0.0.1', '内网IP', '{\"musicalDetailurl\":\"https://www.bilibili.com/video/BV1dt4y1S7pe?t=2.6\",\"musicalId\":2,\"musicalImageurl\":\"https://img2.baidu.com/it/u=4123505255,3257054191&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=350\",\"musicalName\":\"Murder Ballad\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-11 19:58:03', '36');
INSERT INTO `sys_oper_log` VALUES ('242', '音乐剧', '2', 'com.cuppacorner.android.controller.MusicalController.edit()', 'PUT', '1', 'admin', null, '/android/musical', '127.0.0.1', '内网IP', '{\"musicalDetailurl\":\"https://www.bilibili.com/video/BV135411E7XM?t=27.4\",\"musicalId\":4,\"musicalImageurl\":\"https://img0.baidu.com/it/u=2603024713,3088291842&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=666\",\"musicalName\":\"Dear Evan Hansen\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-11 19:58:53', '17');
INSERT INTO `sys_oper_log` VALUES ('243', '音乐剧', '2', 'com.cuppacorner.android.controller.MusicalController.edit()', 'PUT', '1', 'admin', null, '/android/musical', '127.0.0.1', '内网IP', '{\"musicalDetailurl\":\"https://www.bilibili.com/video/BV1fW411a7nc?t=12.3\",\"musicalId\":1,\"musicalImageurl\":\"https://img1.baidu.com/it/u=1734752384,3569556343&fm=253&fmt=auto&app=138&f=JPEG?w=700&h=500\",\"musicalName\":\"Anastasia\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-11 20:00:56', '12');
INSERT INTO `sys_oper_log` VALUES ('244', '代码生成', '6', 'com.cuppacorner.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"tip_info\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-12 11:11:30', '111');
INSERT INTO `sys_oper_log` VALUES ('245', '代码生成', '3', 'com.cuppacorner.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', null, '/tool/gen/8', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-12 11:12:02', '25');
INSERT INTO `sys_oper_log` VALUES ('246', '代码生成', '6', 'com.cuppacorner.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"tip_info\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-12 11:12:37', '38');
INSERT INTO `sys_oper_log` VALUES ('247', '代码生成', '2', 'com.cuppacorner.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"info\",\"className\":\"TipInfo\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"序号\",\"columnId\":47,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-06-12 11:12:37\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TipTitle\",\"columnComment\":\"小贴士标题\",\"columnId\":48,\"columnName\":\"tip_title\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-12 11:12:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"tipTitle\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TipContent\",\"columnComment\":\"小贴士内容\",\"columnId\":49,\"columnName\":\"tip_content\",\"columnType\":\"text\",\"createBy\":\"admin\",\"createTime\":\"2023-06-12 11:12:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"editor\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"tipContent\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"zhen\",\"functionName\":\"小贴士\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"android\",\"options\":\"{}\",\"packageName\":\"com.cuppacorner.android\",\"params\":{},\"sub\":false,\"tableComment\":\"小贴士表\",\"tableId\":9,\"tableName\":\"tip_info\",\"tplCategory\":\"crud\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-12 11:13:29', '22');
INSERT INTO `sys_oper_log` VALUES ('248', '代码生成', '8', 'com.cuppacorner.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"tip_info\"}', null, '0', null, '2023-06-12 11:14:00', '254');
INSERT INTO `sys_oper_log` VALUES ('249', '菜单管理', '1', 'com.cuppacorner.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"android/info\",\"createBy\":\"admin\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"小贴士\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2015,\"path\":\"info\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-12 11:18:40', '16');
INSERT INTO `sys_oper_log` VALUES ('250', '菜单管理', '3', 'com.cuppacorner.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2075', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-12 11:18:48', '31');
INSERT INTO `sys_oper_log` VALUES ('251', '菜单管理', '1', 'com.cuppacorner.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"android/info\",\"createBy\":\"admin\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"小贴士\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2014,\"path\":\"info\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-12 11:19:19', '8');
INSERT INTO `sys_oper_log` VALUES ('252', '代码生成', '6', 'com.cuppacorner.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"users\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-12 22:27:21', '180');
INSERT INTO `sys_oper_log` VALUES ('253', '代码生成', '2', 'com.cuppacorner.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"users\",\"className\":\"Users\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"用户ID\",\"columnId\":50,\"columnName\":\"id\",\"columnType\":\"int unsigned\",\"createBy\":\"admin\",\"createTime\":\"2023-06-12 22:27:21\",\"dictType\":\"\",\"edit\":false,\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"String\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Username\",\"columnComment\":\"用户名\",\"columnId\":51,\"columnName\":\"username\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-12 22:27:21\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"username\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Password\",\"columnComment\":\"密码\",\"columnId\":52,\"columnName\":\"password\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-12 22:27:21\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"password\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Nickname\",\"columnComment\":\"用户昵称\",\"columnId\":53,\"columnName\":\"nickname\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2023-06-12 22:27:21\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"nickname\",\"javaType\":\"String\",\"list\":true,\"pa', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-12 22:28:00', '79');
INSERT INTO `sys_oper_log` VALUES ('254', '代码生成', '8', 'com.cuppacorner.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"users\"}', null, '0', null, '2023-06-12 22:28:05', '513');
INSERT INTO `sys_oper_log` VALUES ('255', '菜单管理', '1', 'com.cuppacorner.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"android/users\",\"createBy\":\"admin\",\"icon\":\"user\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"用户\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2014,\"path\":\"users\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-12 22:32:26', '70');
INSERT INTO `sys_oper_log` VALUES ('256', '菜单管理', '2', 'com.cuppacorner.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"android/banners\",\"createTime\":\"2023-06-06 14:10:24\",\"icon\":\"component\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2015,\"menuName\":\"轮播图\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2014,\"path\":\"banners\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-12 22:54:38', '43');
INSERT INTO `sys_oper_log` VALUES ('257', '菜单管理', '2', 'com.cuppacorner.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"android/users\",\"createTime\":\"2023-06-12 22:32:26\",\"icon\":\"user\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2089,\"menuName\":\"用户\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":2014,\"path\":\"users\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-12 22:54:48', '19');
INSERT INTO `sys_oper_log` VALUES ('258', '用户', '3', 'com.cuppacorner.android.controller.UsersController.remove()', 'DELETE', '1', 'admin', null, '/android/users/1', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-17 15:27:56', '20');
INSERT INTO `sys_oper_log` VALUES ('259', '用户', '3', 'com.cuppacorner.android.controller.UsersController.remove()', 'DELETE', '1', 'admin', null, '/android/users/2', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-06-17 15:34:47', '9');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES ('1', 'ceo', '董事长', '1', '0', 'admin', '2023-06-05 16:36:20', '', null, '');
INSERT INTO `sys_post` VALUES ('2', 'se', '项目经理', '2', '0', 'admin', '2023-06-05 16:36:20', '', null, '');
INSERT INTO `sys_post` VALUES ('3', 'hr', '人力资源', '3', '0', 'admin', '2023-06-05 16:36:20', '', null, '');
INSERT INTO `sys_post` VALUES ('4', 'user', '普通员工', '4', '0', 'admin', '2023-06-05 16:36:21', '', null, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', 'admin', '1', '1', '1', '1', '0', '0', 'admin', '2023-06-05 16:36:21', '', null, '超级管理员');
INSERT INTO `sys_role` VALUES ('2', '普通角色', 'common', '2', '2', '1', '1', '0', '0', 'admin', '2023-06-05 16:36:21', '', null, '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES ('2', '100');
INSERT INTO `sys_role_dept` VALUES ('2', '101');
INSERT INTO `sys_role_dept` VALUES ('2', '105');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '2');
INSERT INTO `sys_role_menu` VALUES ('2', '3');
INSERT INTO `sys_role_menu` VALUES ('2', '4');
INSERT INTO `sys_role_menu` VALUES ('2', '100');
INSERT INTO `sys_role_menu` VALUES ('2', '101');
INSERT INTO `sys_role_menu` VALUES ('2', '102');
INSERT INTO `sys_role_menu` VALUES ('2', '103');
INSERT INTO `sys_role_menu` VALUES ('2', '104');
INSERT INTO `sys_role_menu` VALUES ('2', '105');
INSERT INTO `sys_role_menu` VALUES ('2', '106');
INSERT INTO `sys_role_menu` VALUES ('2', '107');
INSERT INTO `sys_role_menu` VALUES ('2', '108');
INSERT INTO `sys_role_menu` VALUES ('2', '109');
INSERT INTO `sys_role_menu` VALUES ('2', '110');
INSERT INTO `sys_role_menu` VALUES ('2', '111');
INSERT INTO `sys_role_menu` VALUES ('2', '112');
INSERT INTO `sys_role_menu` VALUES ('2', '113');
INSERT INTO `sys_role_menu` VALUES ('2', '114');
INSERT INTO `sys_role_menu` VALUES ('2', '115');
INSERT INTO `sys_role_menu` VALUES ('2', '116');
INSERT INTO `sys_role_menu` VALUES ('2', '117');
INSERT INTO `sys_role_menu` VALUES ('2', '500');
INSERT INTO `sys_role_menu` VALUES ('2', '501');
INSERT INTO `sys_role_menu` VALUES ('2', '1000');
INSERT INTO `sys_role_menu` VALUES ('2', '1001');
INSERT INTO `sys_role_menu` VALUES ('2', '1002');
INSERT INTO `sys_role_menu` VALUES ('2', '1003');
INSERT INTO `sys_role_menu` VALUES ('2', '1004');
INSERT INTO `sys_role_menu` VALUES ('2', '1005');
INSERT INTO `sys_role_menu` VALUES ('2', '1006');
INSERT INTO `sys_role_menu` VALUES ('2', '1007');
INSERT INTO `sys_role_menu` VALUES ('2', '1008');
INSERT INTO `sys_role_menu` VALUES ('2', '1009');
INSERT INTO `sys_role_menu` VALUES ('2', '1010');
INSERT INTO `sys_role_menu` VALUES ('2', '1011');
INSERT INTO `sys_role_menu` VALUES ('2', '1012');
INSERT INTO `sys_role_menu` VALUES ('2', '1013');
INSERT INTO `sys_role_menu` VALUES ('2', '1014');
INSERT INTO `sys_role_menu` VALUES ('2', '1015');
INSERT INTO `sys_role_menu` VALUES ('2', '1016');
INSERT INTO `sys_role_menu` VALUES ('2', '1017');
INSERT INTO `sys_role_menu` VALUES ('2', '1018');
INSERT INTO `sys_role_menu` VALUES ('2', '1019');
INSERT INTO `sys_role_menu` VALUES ('2', '1020');
INSERT INTO `sys_role_menu` VALUES ('2', '1021');
INSERT INTO `sys_role_menu` VALUES ('2', '1022');
INSERT INTO `sys_role_menu` VALUES ('2', '1023');
INSERT INTO `sys_role_menu` VALUES ('2', '1024');
INSERT INTO `sys_role_menu` VALUES ('2', '1025');
INSERT INTO `sys_role_menu` VALUES ('2', '1026');
INSERT INTO `sys_role_menu` VALUES ('2', '1027');
INSERT INTO `sys_role_menu` VALUES ('2', '1028');
INSERT INTO `sys_role_menu` VALUES ('2', '1029');
INSERT INTO `sys_role_menu` VALUES ('2', '1030');
INSERT INTO `sys_role_menu` VALUES ('2', '1031');
INSERT INTO `sys_role_menu` VALUES ('2', '1032');
INSERT INTO `sys_role_menu` VALUES ('2', '1033');
INSERT INTO `sys_role_menu` VALUES ('2', '1034');
INSERT INTO `sys_role_menu` VALUES ('2', '1035');
INSERT INTO `sys_role_menu` VALUES ('2', '1036');
INSERT INTO `sys_role_menu` VALUES ('2', '1037');
INSERT INTO `sys_role_menu` VALUES ('2', '1038');
INSERT INTO `sys_role_menu` VALUES ('2', '1039');
INSERT INTO `sys_role_menu` VALUES ('2', '1040');
INSERT INTO `sys_role_menu` VALUES ('2', '1041');
INSERT INTO `sys_role_menu` VALUES ('2', '1042');
INSERT INTO `sys_role_menu` VALUES ('2', '1043');
INSERT INTO `sys_role_menu` VALUES ('2', '1044');
INSERT INTO `sys_role_menu` VALUES ('2', '1045');
INSERT INTO `sys_role_menu` VALUES ('2', '1046');
INSERT INTO `sys_role_menu` VALUES ('2', '1047');
INSERT INTO `sys_role_menu` VALUES ('2', '1048');
INSERT INTO `sys_role_menu` VALUES ('2', '1049');
INSERT INTO `sys_role_menu` VALUES ('2', '1050');
INSERT INTO `sys_role_menu` VALUES ('2', '1051');
INSERT INTO `sys_role_menu` VALUES ('2', '1052');
INSERT INTO `sys_role_menu` VALUES ('2', '1053');
INSERT INTO `sys_role_menu` VALUES ('2', '1054');
INSERT INTO `sys_role_menu` VALUES ('2', '1055');
INSERT INTO `sys_role_menu` VALUES ('2', '1056');
INSERT INTO `sys_role_menu` VALUES ('2', '1057');
INSERT INTO `sys_role_menu` VALUES ('2', '1058');
INSERT INTO `sys_role_menu` VALUES ('2', '1059');
INSERT INTO `sys_role_menu` VALUES ('2', '1060');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '103', 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2023-06-17 16:12:54', 'admin', '2023-06-05 16:36:20', '', '2023-06-17 16:12:54', '管理员');
INSERT INTO `sys_user` VALUES ('2', '105', 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2023-06-05 16:36:20', 'admin', '2023-06-05 16:36:20', '', null, '测试员');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES ('1', '1');
INSERT INTO `sys_user_post` VALUES ('2', '2');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '2');

-- ----------------------------
-- Table structure for tip_info
-- ----------------------------
DROP TABLE IF EXISTS `tip_info`;
CREATE TABLE `tip_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tip_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '小贴士标题',
  `tip_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '小贴士内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='小贴士表';

-- ----------------------------
-- Records of tip_info
-- ----------------------------
INSERT INTO `tip_info` VALUES ('1', '关于CuppaCorner', '\"Cuppa Corner\"是一个英国俚语，可以被理解为“小角落”，通常指一个小而舒适的地方，可以喝茶或咖啡，闲聊或放松。');
INSERT INTO `tip_info` VALUES ('2', '关于作者', '带专人，喜欢咖啡日料音乐剧，喜欢写代码，主攻CV方向（Ctrl C, Ctrl V）');
INSERT INTO `tip_info` VALUES ('3', '赞助作者', '给作者点个star吧，<a href=\"https://github.com/GatsbyH?tab=repositories\"><font color=\"#800080\">点击此处支持我吧！</font></a>');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '密码',
  `nickname` varchar(50) DEFAULT NULL COMMENT '用户昵称',
  `phone` varchar(20) DEFAULT NULL COMMENT '手机号码',
  `email` varchar(50) DEFAULT NULL COMMENT '电子邮箱',
  `avatar` varchar(100) DEFAULT NULL COMMENT '头像',
  `register_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  `last_login_time` timestamp NULL DEFAULT NULL COMMENT '最近登录时间',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '状态：1=正常，0=禁用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户表';

-- ----------------------------
-- Records of users
-- ----------------------------
