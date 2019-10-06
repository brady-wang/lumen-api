/*
 Navicat Premium Data Transfer

 Source Server         : 3310
 Source Server Type    : MySQL
 Source Server Version : 50556
 Source Host           : 192.168.33.10:3306
 Source Schema         : rbac

 Target Server Type    : MySQL
 Target Server Version : 50556
 File Encoding         : 65001

 Date: 06/10/2019 13:17:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '角色名称',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 1：有效 0：无效',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最后一次更新时间',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '插入时间',
  `urls` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of role
-- ----------------------------
BEGIN;
INSERT INTO `role` VALUES (3, '二级代理', 1, '2019-03-31 05:07:06', '0000-00-00 00:00:00', '[\"\\/admin\",\"\\/admin\\/user\\/add\",\"\\/admin\\/user\\/del\",\"\\/admin\\/role\\/add\",\"\\/admin\\/role\\/del\"]', NULL);
INSERT INTO `role` VALUES (9, '超级管理员', 1, '2019-03-31 05:07:06', '0000-00-00 00:00:00', '[\"\\/admin\",\"\\/admin\\/user\\/add\",\"\\/admin\\/user\\/del\",\"\\/admin\\/role\\/add\",\"\\/admin\\/role\\/del\",\"\\/admin\\/roles\"]', NULL);
INSERT INTO `role` VALUES (13, 'sdfsdf', 1, '2019-03-31 05:07:49', '0000-00-00 00:00:00', NULL, '2019-03-31 05:07:49');
COMMIT;

-- ----------------------------
-- Table structure for role_access
-- ----------------------------
DROP TABLE IF EXISTS `role_access`;
CREATE TABLE `role_access` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL DEFAULT '0' COMMENT '角色id',
  `access_id` int(11) NOT NULL DEFAULT '0' COMMENT '权限id',
  `created_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '插入时间',
  PRIMARY KEY (`id`),
  KEY `idx_role_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色权限表';

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '姓名',
  `email` varchar(30) NOT NULL DEFAULT '' COMMENT '邮箱',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是超级管理员 1表示是 0 表示不是',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 1：有效 0：无效',
  `updated_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最后一次更新时间',
  `created_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '插入时间',
  PRIMARY KEY (`id`),
  KEY `idx_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, '管理员', 'tedddddst@163.com', 1, 1, '2016-11-15 13:36:30', '2016-11-15 13:36:30');
INSERT INTO `user` VALUES (7, 'brady', 'brady.wang@qq.com', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `user` VALUES (8, 'test', 'tset@qq.com', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `user` VALUES (9, 'test', 'teee@qq.com', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `role_id` int(11) NOT NULL DEFAULT '0' COMMENT '角色ID',
  `created_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '插入时间',
  PRIMARY KEY (`id`),
  KEY `idx_uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色表';

SET FOREIGN_KEY_CHECKS = 1;
