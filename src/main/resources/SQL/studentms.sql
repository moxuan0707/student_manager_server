/*
 Navicat MySQL Data Transfer

 Source Server         : M
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3316
 Source Schema         : studentms

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 21/06/2022 23:12:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for c
-- ----------------------------
DROP TABLE IF EXISTS `c`;
CREATE TABLE `c`  (
  `cid` int NOT NULL AUTO_INCREMENT,
  `cname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ccredit` tinyint NULL DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of c
-- ----------------------------
INSERT INTO `c` VALUES (1, '语文', 5);
INSERT INTO `c` VALUES (2, '政治', 6);
INSERT INTO `c` VALUES (3, '地理', 3);
INSERT INTO `c` VALUES (4, '历史', 3);
INSERT INTO `c` VALUES (5, '英语', 5);
INSERT INTO `c` VALUES (6, '化学', 2);
INSERT INTO `c` VALUES (7, '数据结构', 6);
INSERT INTO `c` VALUES (8, '组合数学', 3);
INSERT INTO `c` VALUES (9, '计算机网络', 5);
INSERT INTO `c` VALUES (10, '计算机组成原理', 5);
INSERT INTO `c` VALUES (11, '数据库', 3);
INSERT INTO `c` VALUES (12, 'java', 3);
INSERT INTO `c` VALUES (13, '数学', 3);

-- ----------------------------
-- Table structure for ct
-- ----------------------------
DROP TABLE IF EXISTS `ct`;
CREATE TABLE `ct`  (
  `ctid` int NOT NULL AUTO_INCREMENT,
  `cid` int NULL DEFAULT NULL,
  `tid` int NULL DEFAULT NULL,
  `term` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`ctid`) USING BTREE,
  INDEX `cid`(`cid` ASC) USING BTREE,
  INDEX `tid`(`tid` ASC) USING BTREE,
  CONSTRAINT `ct_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `c` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ct_ibfk_2` FOREIGN KEY (`tid`) REFERENCES `t` (`tid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ct
-- ----------------------------
INSERT INTO `ct` VALUES (5, 8, 2, '22-春季学期');
INSERT INTO `ct` VALUES (6, 7, 2, '22-春季学期');
INSERT INTO `ct` VALUES (7, 10, 3, '22-春季学期');
INSERT INTO `ct` VALUES (8, 9, 3, '22-春季学期');
INSERT INTO `ct` VALUES (9, 11, 2, '22-春季学期');
INSERT INTO `ct` VALUES (10, 9, 2, '22-春季学期');
INSERT INTO `ct` VALUES (11, 10, 2, '22-春季学期');
INSERT INTO `ct` VALUES (12, 10, 2, '22-秋季学期');
INSERT INTO `ct` VALUES (13, 10, 2, '21-秋季学期');

-- ----------------------------
-- Table structure for s
-- ----------------------------
DROP TABLE IF EXISTS `s`;
CREATE TABLE `s`  (
  `sid` int NOT NULL AUTO_INCREMENT,
  `sname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of s
-- ----------------------------
INSERT INTO `s` VALUES (1, '孙鹏', '123');
INSERT INTO `s` VALUES (2, '蔡思雨', '1234');
INSERT INTO `s` VALUES (3, '李白', '12345');
INSERT INTO `s` VALUES (4, '张三', '123456');
INSERT INTO `s` VALUES (6, '李明', '123');
INSERT INTO `s` VALUES (7, '王伟', '12345');
INSERT INTO `s` VALUES (8, '董明荣', '123');
INSERT INTO `s` VALUES (9, '苟涛', '10086');
INSERT INTO `s` VALUES (10, '陈新新', '10085');
INSERT INTO `s` VALUES (14, '周蕊', '123');
INSERT INTO `s` VALUES (15, '张婷', '123');
INSERT INTO `s` VALUES (16, '沈燃', '1234');

-- ----------------------------
-- Table structure for sct
-- ----------------------------
DROP TABLE IF EXISTS `sct`;
CREATE TABLE `sct`  (
  `sctid` int NOT NULL AUTO_INCREMENT,
  `sid` int NULL DEFAULT NULL,
  `cid` int NULL DEFAULT NULL,
  `tid` int NULL DEFAULT NULL,
  `grade` float NULL DEFAULT NULL,
  `term` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sctid`) USING BTREE,
  INDEX `sid`(`sid` ASC) USING BTREE,
  INDEX `cid`(`cid` ASC) USING BTREE,
  INDEX `tid`(`tid` ASC) USING BTREE,
  CONSTRAINT `sct_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `s` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sct_ibfk_3` FOREIGN KEY (`cid`) REFERENCES `ct` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sct
-- ----------------------------
INSERT INTO `sct` VALUES (11, 2, 10, 3, 33, '22-春季学期');
INSERT INTO `sct` VALUES (12, 2, 7, 4, 55, '22-春季学期');
INSERT INTO `sct` VALUES (13, 4, 8, 4, 10, '22-春季学期');
INSERT INTO `sct` VALUES (14, 1, 7, 4, 11, '22-春季学期');
INSERT INTO `sct` VALUES (15, 4, 10, 2, 84, '22-春季学期');
INSERT INTO `sct` VALUES (16, 3, 7, 4, 74, '22-春季学期');
INSERT INTO `sct` VALUES (17, 3, 11, 4, 45, '22-春季学期');
INSERT INTO `sct` VALUES (18, 2, 8, 4, 78, '22-春季学期');
INSERT INTO `sct` VALUES (19, 1, 7, 3, 66, '22-春季学期');
INSERT INTO `sct` VALUES (20, 1, 8, 2, 71, '22-春季学期');
INSERT INTO `sct` VALUES (21, 2, 9, 2, 57, '22-春季学期');
INSERT INTO `sct` VALUES (22, 1, 11, 2, 89, '22-春季学期');
INSERT INTO `sct` VALUES (23, 1, 9, 3, 90, '22-春季学期');
INSERT INTO `sct` VALUES (24, 1, 10, 3, 75, '22-春季学期');

-- ----------------------------
-- Table structure for t
-- ----------------------------
DROP TABLE IF EXISTS `t`;
CREATE TABLE `t`  (
  `tid` int NOT NULL AUTO_INCREMENT,
  `tname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t
-- ----------------------------
INSERT INTO `t` VALUES (1, 'admin', '123');
INSERT INTO `t` VALUES (2, '郑和', '1234');
INSERT INTO `t` VALUES (3, '张三', '123');
INSERT INTO `t` VALUES (4, '玩啊', '111');

SET FOREIGN_KEY_CHECKS = 1;
