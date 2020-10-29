/*
 Navicat Premium Data Transfer

 Source Server         : content
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : localhost:3306
 Source Schema         : test_egg

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 29/10/2020 15:33:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for file
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '文件名',
  `ext` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '文件扩展名',
  `md` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '文件MD5',
  `file_id` int(0) NOT NULL DEFAULT 0 COMMENT '父级id',
  `user_id` int(0) NOT NULL DEFAULT 0 COMMENT '用户id',
  `size` int(0) NOT NULL DEFAULT 0 COMMENT '文件大小',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '文件url',
  `isdir` int(0) NOT NULL DEFAULT 0 COMMENT '是否为文件夹',
  `created_time` datetime(0) NULL DEFAULT NULL,
  `updated_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `file_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of file
-- ----------------------------
INSERT INTO `file` VALUES (1, 'dir1', '', '', 0, 6, 0, '', 1, '2020-10-24 11:22:43', '2020-10-26 01:59:16');
INSERT INTO `file` VALUES (2, 'text', '', '', 0, 6, 0, '', 1, '2020-10-24 11:25:17', '2020-10-27 10:55:18');
INSERT INTO `file` VALUES (3, 'markdown', '', '', 2, 6, 0, '', 1, '2020-10-24 11:34:02', '2020-10-24 11:34:04');
INSERT INTO `file` VALUES (4, 'Java学习', 'image/png', 'img/au91ewpeqgs0000.png', 1, 6, 970, 'http://xunmimi.oss-cn-hangzhou.aliyuncs.com/img/au91ewpeqgs0000.png', 0, '2020-10-24 20:53:30', '2020-10-24 21:39:33');
INSERT INTO `file` VALUES (5, 'vedio', 'video/mp4', '', 0, 9, 0, '../../static/video/RADWIMPS2.mp4', 0, '2020-10-24 23:04:22', '2020-10-24 23:04:29');
INSERT INTO `file` VALUES (7, 'vedio', 'video/mp4', '', 1, 6, 0, '../../static/video/RADWIMPS2.mp4', 0, '2020-10-24 23:07:10', '2020-10-24 23:07:10');
INSERT INTO `file` VALUES (8, '1.png', 'image/png', '7tlu02p3i3o0000.png', 0, 6, 970, 'https://xunmimi.oss-cn-hangzhou.aliyuncs.com/7tlu02p3i3o0000.png', 0, '2020-10-26 01:17:34', '2020-10-26 01:17:34');
INSERT INTO `file` VALUES (10, 'img-0.jpg', 'image/jpeg', 'g9hvoepac680000.jpg', 0, 6, 44, 'https://xunmimi.oss-cn-hangzhou.aliyuncs.com/g9hvoepac680000.jpg', 0, '2020-10-26 11:20:51', '2020-10-26 11:20:51');
INSERT INTO `file` VALUES (11, 'img-9.jpg', 'image/jpeg', 'biewxb7nrvc0000.jpg', 0, 6, 5, 'https://xunmimi.oss-cn-hangzhou.aliyuncs.com/biewxb7nrvc0000.jpg', 0, '2020-10-26 11:25:40', '2020-10-26 11:25:40');
INSERT INTO `file` VALUES (12, 'img-2e.jpg', 'image/jpeg', 'document/markdown/9sch9ix9rio0000.jpg', 3, 6, 7, 'https://xunmimi.oss-cn-hangzhou.aliyuncs.com/document/markdown/9sch9ix9rio0000.jpg', 0, '2020-10-26 16:03:15', '2020-10-26 16:03:15');
INSERT INTO `file` VALUES (13, 'img-0a.jpg', 'image/jpeg', 'document/markdown/fzqszsupbt40000.jpg', 3, 6, 44, 'https://xunmimi.oss-cn-hangzhou.aliyuncs.com/document/markdown/fzqszsupbt40000.jpg', 0, '2020-10-26 16:09:45', '2020-10-26 16:09:45');
INSERT INTO `file` VALUES (14, 'img-50.jpg', 'image/jpeg', 'document/markdown/1vfpmo6de9ds000.jpg', 3, 6, 30, 'https://xunmimi.oss-cn-hangzhou.aliyuncs.com/document/markdown/1vfpmo6de9ds000.jpg', 0, '2020-10-26 16:13:16', '2020-10-26 16:13:16');
INSERT INTO `file` VALUES (15, 'img-2e.jpg', 'image/jpeg', 'document/markdown/6oc4psrn82k0000.jpg', 3, 6, 7, 'https://xunmimi.oss-cn-hangzhou.aliyuncs.com/document/markdown/6oc4psrn82k0000.jpg', 0, '2020-10-26 16:45:39', '2020-10-26 16:45:39');
INSERT INTO `file` VALUES (16, 'img-0f.jpg', 'image/jpeg', 'document/markdown/e9nquywtr3c0000.jpg', 3, 6, 64, 'https://xunmimi.oss-cn-hangzhou.aliyuncs.com/document/markdown/e9nquywtr3c0000.jpg', 0, '2020-10-26 16:45:47', '2020-10-26 16:45:47');
INSERT INTO `file` VALUES (17, 'img-de.jpg', 'image/jpeg', 'document/markdown/akufv4zmjgw0000.jpg', 3, 6, 54, 'https://xunmimi.oss-cn-hangzhou.aliyuncs.com/document/markdown/akufv4zmjgw0000.jpg', 0, '2020-10-26 16:45:50', '2020-10-26 16:45:50');
INSERT INTO `file` VALUES (18, 'img-2e.jpg', 'image/jpeg', 'document/markdown/5yq6pe04ip40000.jpg', 3, 6, 7, 'https://xunmimi.oss-cn-hangzhou.aliyuncs.com/document/markdown/5yq6pe04ip40000.jpg', 0, '2020-10-26 16:51:06', '2020-10-26 16:51:06');
INSERT INTO `file` VALUES (19, 'img-0f.jpg', 'image/jpeg', 'document/markdown/1dzjcyjde03k000.jpg', 3, 6, 64, 'https://xunmimi.oss-cn-hangzhou.aliyuncs.com/document/markdown/1dzjcyjde03k000.jpg', 0, '2020-10-26 16:51:14', '2020-10-26 16:51:14');
INSERT INTO `file` VALUES (20, 'img-de8.jpg', 'image/jpeg', 'document/markdown/2cfbemp9s7b400.jpg', 3, 6, 54, 'https://xunmimi.oss-cn-hangzhou.aliyuncs.com/document/markdown/2cfbemp9s7b400.jpg', 0, '2020-10-26 16:51:42', '2020-10-26 16:51:42');
INSERT INTO `file` VALUES (21, 'img-2e1.jpg', 'image/jpeg', 'document/ez91ia0xbeo0000.jpg', 2, 6, 7, 'https://xunmimi.oss-cn-hangzhou.aliyuncs.com/document/ez91ia0xbeo0000.jpg', 0, '2020-10-27 00:59:07', '2020-10-27 00:59:07');
INSERT INTO `file` VALUES (22, 'img-de8.jpg', 'image/jpeg', 'document/br92t8fzpm00000.jpg', 2, 6, 54, 'https://xunmimi.oss-cn-hangzhou.aliyuncs.com/document/br92t8fzpm00000.jpg', 0, '2020-10-27 00:59:08', '2020-10-27 00:59:08');
INSERT INTO `file` VALUES (23, 'img-b14.jpg', 'image/jpeg', 'document/dk9jrib22l40000.jpg', 2, 6, 129, 'https://xunmimi.oss-cn-hangzhou.aliyuncs.com/document/dk9jrib22l40000.jpg', 0, '2020-10-27 00:59:08', '2020-10-27 00:59:08');
INSERT INTO `file` VALUES (24, 'img-0f0.jpg', 'image/jpeg', 'document/arucu398s4w0000.jpg', 2, 6, 64, 'https://xunmimi.oss-cn-hangzhou.aliyuncs.com/document/arucu398s4w0000.jpg', 0, '2020-10-27 00:59:08', '2020-10-27 00:59:08');
INSERT INTO `file` VALUES (25, 'img-2e.jpg', 'image/jpeg', 'document/f72gv0nkx0o0000.jpg', 2, 6, 7, 'https://xunmimi.oss-cn-hangzhou.aliyuncs.com/document/f72gv0nkx0o0000.jpg', 0, '2020-10-27 00:59:19', '2020-10-27 00:59:19');
INSERT INTO `file` VALUES (26, 'img-0f.jpg', 'image/jpeg', 'document/7qooiqtigbk0000.jpg', 2, 6, 64, 'https://xunmimi.oss-cn-hangzhou.aliyuncs.com/document/7qooiqtigbk0000.jpg', 0, '2020-10-27 00:59:19', '2020-10-27 00:59:19');
INSERT INTO `file` VALUES (27, 'img-d.jpg', 'image/jpeg', 'document/8w41tphjif40000.jpg', 2, 6, 54, 'https://xunmimi.oss-cn-hangzhou.aliyuncs.com/document/8w41tphjif40000.jpg', 0, '2020-10-27 00:59:20', '2020-10-27 00:59:20');
INSERT INTO `file` VALUES (28, 'img-b.jpg', 'image/jpeg', 'document/61g0u005zf00000.jpg', 2, 6, 129, 'https://xunmimi.oss-cn-hangzhou.aliyuncs.com/document/61g0u005zf00000.jpg', 0, '2020-10-27 00:59:20', '2020-10-27 00:59:20');
INSERT INTO `file` VALUES (29, 'vedio', 'video/mp4', '', 0, 10, 0, '../../static/video/RADWIMPS2.mp4', 0, '2020-10-27 01:01:37', '2020-10-27 01:01:37');
INSERT INTO `file` VALUES (30, 'img-0a.jpg', 'image/jpeg', 'document/jzsemlnrl2o000.jpg', 2, 6, 44, 'https://xunmimi.oss-cn-hangzhou.aliyuncs.com/document/jzsemlnrl2o000.jpg', 0, '2020-10-27 10:23:56', '2020-10-27 10:23:56');
INSERT INTO `file` VALUES (31, 'img-de82144dc38d687177634597f354a6a5.jpg', 'image/jpeg', '24mbxer6so74000.jpg', 0, 6, 54, 'https://xunmimi.oss-cn-hangzhou.aliyuncs.com/24mbxer6so74000.jpg', 0, '2020-10-27 10:50:17', '2020-10-27 10:50:17');
INSERT INTO `file` VALUES (32, 'img-0f0cb4755d5e2647671a35a1464a618f.jpg', 'image/jpeg', '5l6m6v0zxy0000.jpg', 0, 6, 64, 'https://xunmimi.oss-cn-hangzhou.aliyuncs.com/5l6m6v0zxy0000.jpg', 0, '2020-10-27 10:50:17', '2020-10-27 10:50:17');
INSERT INTO `file` VALUES (34, 'img-0.jpg', 'image/jpeg', 'g9hvoepac680000.jpg', 0, 12, 44, 'https://xunmimi.oss-cn-hangzhou.aliyuncs.com/g9hvoepac680000.jpg', 0, '2020-10-27 10:51:57', '2020-10-27 10:51:57');
INSERT INTO `file` VALUES (35, 'img-0f0cb4755d5e2647671a35a1464a618f.jpg', 'image/jpeg', 'fw59su7nxug0000.jpg', 0, 6, 64, 'https://xunmimi.oss-cn-hangzhou.aliyuncs.com/fw59su7nxug0000.jpg', 0, '2020-10-27 10:54:29', '2020-10-27 10:54:29');
INSERT INTO `file` VALUES (37, '1603778793949.mp4', 'video/mp4', 'text/6u8gfn4ohs40000.mp4', 2, 6, 437, 'https://xunmimi.oss-cn-hangzhou.aliyuncs.com/text/6u8gfn4ohs40000.mp4', 0, '2020-10-27 14:07:26', '2020-10-27 14:07:26');

-- ----------------------------
-- Table structure for sequelizemeta
-- ----------------------------
DROP TABLE IF EXISTS `sequelizemeta`;
CREATE TABLE `sequelizemeta`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sequelizemeta
-- ----------------------------
INSERT INTO `sequelizemeta` VALUES ('20201022053857-user.js');
INSERT INTO `sequelizemeta` VALUES ('20201024031423-file.js');
INSERT INTO `sequelizemeta` VALUES ('20201024141635-share.js');

-- ----------------------------
-- Table structure for share
-- ----------------------------
DROP TABLE IF EXISTS `share`;
CREATE TABLE `share`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `sharedurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '分享链接',
  `file_id` int(0) NOT NULL DEFAULT 0 COMMENT '文件id',
  `iscancel` int(0) NOT NULL DEFAULT 0 COMMENT '是否取消分享',
  `user_id` int(0) NOT NULL DEFAULT 0 COMMENT '用户id',
  `created_time` datetime(0) NULL DEFAULT NULL,
  `updated_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `file_id`(`file_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `share_ibfk_1` FOREIGN KEY (`file_id`) REFERENCES `file` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `share_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of share
-- ----------------------------
INSERT INTO `share` VALUES (1, 'anvgj6rybzc0000000', 4, 0, 6, '2020-10-24 22:28:01', '2020-10-24 22:28:01');
INSERT INTO `share` VALUES (2, '424zehzclqg0000000', 1, 0, 6, '2020-10-24 23:00:48', '2020-10-24 23:00:48');
INSERT INTO `share` VALUES (3, '1vamjtqxk1j4000000', 5, 0, 9, '2020-10-24 23:05:14', '2020-10-24 23:05:14');
INSERT INTO `share` VALUES (4, '4zcqn7mzdow0000000', 11, 0, 6, '2020-10-26 23:51:16', '2020-10-26 23:51:16');
INSERT INTO `share` VALUES (5, '7mg6knspy040000000', 11, 0, 6, '2020-10-27 00:24:36', '2020-10-27 00:24:36');
INSERT INTO `share` VALUES (6, '4yvkt8i24hg000000', 11, 0, 6, '2020-10-27 00:42:08', '2020-10-27 00:42:08');
INSERT INTO `share` VALUES (7, '7w1pdzxhcz00000000', 10, 0, 6, '2020-10-27 00:47:37', '2020-10-27 00:47:37');
INSERT INTO `share` VALUES (8, '65kl59ya2m80000000', 10, 0, 6, '2020-10-27 00:55:54', '2020-10-27 00:55:54');
INSERT INTO `share` VALUES (9, 'v56a6guk3fk000000', 7, 0, 6, '2020-10-27 01:01:15', '2020-10-27 01:01:15');
INSERT INTO `share` VALUES (10, 'e9zsdq2c94w0000000', 11, 0, 6, '2020-10-27 08:15:33', '2020-10-27 08:15:33');
INSERT INTO `share` VALUES (11, 'q547hik85kw0000000', 10, 0, 6, '2020-10-27 10:51:29', '2020-10-27 10:51:29');
INSERT INTO `share` VALUES (12, '5xmfgtyghbg0000000', 11, 0, 6, '2020-10-27 10:56:28', '2020-10-27 10:56:28');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '邮箱',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '密码',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '头像',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '手机',
  `sex` enum('男','女','保密') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '女' COMMENT '性别',
  `desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '个性签名',
  `total_size` int(0) NULL DEFAULT 0 COMMENT '网盘总大小，单位:kb',
  `used_size` int(0) NULL DEFAULT 0 COMMENT '网盘已使用大小，单位:kb',
  `created_time` datetime(0) NULL DEFAULT NULL,
  `updated_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (6, 'crqcrq', 'crq', '', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'https://avatars3.githubusercontent.com/u/59445871?s=460&u=da5694544e03959d2e2c54ea5b2a29c67174cbcc&v=4', '18851699003', '女', '学生', 10485760, 2274, '2020-10-22 15:08:43', '2020-10-27 14:07:26');
INSERT INTO `user` VALUES (7, '123456', 'mob', '', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'https://avatars3.githubusercontent.com/u/59445871?s=460&u=da5694544e03959d2e2c54ea5b2a29c67174cbcc&v=4', '18851699003', '女', '学生', 10485760, 0, '2020-10-23 14:18:10', '2020-10-23 14:18:10');
INSERT INTO `user` VALUES (9, 'oupaii', 'mob', '', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', 'https://avatars3.githubusercontent.com/u/59445871?s=460&u=da5694544e03959d2e2c54ea5b2a29c67174cbcc&v=4', '18851699003', '女', '学生', 10485760, 970, '2020-10-24 23:02:29', '2020-10-26 01:17:34');
INSERT INTO `user` VALUES (10, 'poipoi', 'mob', '', '96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', 'https://avatars3.githubusercontent.com/u/59445871?s=460&u=da5694544e03959d2e2c54ea5b2a29c67174cbcc&v=4', '18851699003', '女', '学生', 10485760, 97, '2020-10-26 00:22:30', '2020-10-26 00:22:30');
INSERT INTO `user` VALUES (11, 'poiiop', '', '', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '女', '', 10485760, 0, '2020-10-27 10:25:26', '2020-10-27 10:25:26');
INSERT INTO `user` VALUES (12, 'crqcrqq', '', '', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '女', '', 10485760, 44, '2020-10-27 10:49:17', '2020-10-27 10:51:57');

SET FOREIGN_KEY_CHECKS = 1;
