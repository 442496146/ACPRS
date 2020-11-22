/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : 49.235.28.164:3306
 Source Schema         : acprs

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 16/12/2019 16:53:17
*/

create database acprs;
use  acprs;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for assigned_to
-- ----------------------------
DROP TABLE IF EXISTS `assigned_to`;
CREATE TABLE `assigned_to`  (
  `pc_code` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `paper_number` int(11) NOT NULL,
  PRIMARY KEY (`paper_number`, `pc_code`) USING BTREE,
  INDEX `pc_code`(`pc_code`) USING BTREE,
  CONSTRAINT `assigned_to_ibfk_1` FOREIGN KEY (`pc_code`) REFERENCES `pc_member` (`pc_code`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `assigned_to_ibfk_2` FOREIGN KEY (`paper_number`) REFERENCES `paper` (`paper_number`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of assigned_to
-- ----------------------------
INSERT INTO `assigned_to` VALUES ('pc02', 13);
INSERT INTO `assigned_to` VALUES ('pc02', 14);
INSERT INTO `assigned_to` VALUES ('pc03', 14);
INSERT INTO `assigned_to` VALUES ('pc03', 15);

-- ----------------------------
-- Table structure for author
-- ----------------------------
DROP TABLE IF EXISTS `author`;
CREATE TABLE `author`  (
  `person_id` int(11) NOT NULL,
  `paper_number` int(11) NOT NULL,
  `is_contact` enum('Y','N') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N',
  PRIMARY KEY (`person_id`, `paper_number`) USING BTREE,
  INDEX `paper_number`(`paper_number`) USING BTREE,
  CONSTRAINT `author_ibfk_2` FOREIGN KEY (`paper_number`) REFERENCES `paper` (`paper_number`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `author_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of author
-- ----------------------------
INSERT INTO `author` VALUES (2, 15, 'Y');
INSERT INTO `author` VALUES (3, 13, 'N');
INSERT INTO `author` VALUES (4, 14, 'N');
INSERT INTO `author` VALUES (4, 15, 'N');

-- ----------------------------
-- Table structure for discussion
-- ----------------------------
DROP TABLE IF EXISTS `discussion`;
CREATE TABLE `discussion`  (
  `sequence_no` int(11) NOT NULL AUTO_INCREMENT,
  `paper_number` int(11) NOT NULL,
  `pc_code` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `comments` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sequence_no`, `paper_number`, `pc_code`) USING BTREE,
  INDEX `pc_code`(`pc_code`) USING BTREE,
  INDEX `paper_number`(`paper_number`) USING BTREE,
  CONSTRAINT `discussion_ibfk_1` FOREIGN KEY (`pc_code`) REFERENCES `pc_member` (`pc_code`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `discussion_ibfk_2` FOREIGN KEY (`paper_number`) REFERENCES `paper` (`paper_number`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discussion
-- ----------------------------
INSERT INTO `discussion` VALUES (1, 13, 'pc01', 'good');
INSERT INTO `discussion` VALUES (2, 15, 'pc02', 'bad');
INSERT INTO `discussion` VALUES (3, 15, 'pc03', 'I don\'t think so');

-- ----------------------------
-- Table structure for paper
-- ----------------------------
DROP TABLE IF EXISTS `paper`;
CREATE TABLE `paper`  (
  `paper_number` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `paper_type` enum('research','demo','industrial') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'research',
  `abstract` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_pc` enum('Y','N') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N',
  `decision` enum('accept','reject') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`paper_number`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of paper
-- ----------------------------
INSERT INTO `paper` VALUES (13, '石墨烯”在制造业中的应用', 'research', '石墨烯”在制造业中的应用', 'Y', NULL);
INSERT INTO `paper` VALUES (14, '5G在学习中的应用', 'research', ' 5G在学习中的应用', 'N', NULL);
INSERT INTO `paper` VALUES (15, '“蚁群算法”解决“PID控制器”参数优化设计问题', 'research', ' “蚁群算法”解决“PID控制器”参数优化设计问题', 'Y', NULL);

-- ----------------------------
-- Table structure for pc_chair
-- ----------------------------
DROP TABLE IF EXISTS `pc_chair`;
CREATE TABLE `pc_chair`  (
  `pc_code` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`pc_code`) USING BTREE,
  CONSTRAINT `pc_chair_ibfk_1` FOREIGN KEY (`pc_code`) REFERENCES `pc_member` (`pc_code`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pc_chair
-- ----------------------------
INSERT INTO `pc_chair` VALUES ('pc01');

-- ----------------------------
-- Table structure for pc_member
-- ----------------------------
DROP TABLE IF EXISTS `pc_member`;
CREATE TABLE `pc_member`  (
  `pc_code` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `person_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`pc_code`) USING BTREE,
  INDEX `pc_code`(`pc_code`) USING BTREE,
  INDEX `pc_member_ibfk_1`(`person_id`) USING BTREE,
  CONSTRAINT `pc_member_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pc_member
-- ----------------------------
INSERT INTO `pc_member` VALUES ('pc01', 1);
INSERT INTO `pc_member` VALUES ('pc02', 2);
INSERT INTO `pc_member` VALUES ('pc03', 3);

-- ----------------------------
-- Table structure for pc_spc
-- ----------------------------
DROP TABLE IF EXISTS `pc_spc`;
CREATE TABLE `pc_spc`  (
  `pc_code` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`pc_code`) USING BTREE,
  CONSTRAINT `pc_spc_ibfk_1` FOREIGN KEY (`pc_code`) REFERENCES `pc_member` (`pc_code`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pc_spc
-- ----------------------------
INSERT INTO `pc_spc` VALUES ('pc02');

-- ----------------------------
-- Table structure for person
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person`  (
  `person_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `title` enum('Mr','Ms','Miss','Dr','Prof') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `institution` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `telephone_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE,
  INDEX `person_id`(`person_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of person
-- ----------------------------
INSERT INTO `person` VALUES (4, '2435084048@qq.com', 'Mr', '袁兴武', '安徽大学互联网学院', NULL);
INSERT INTO `person` VALUES (2, '442496146@qq.com', 'Mr', '汪鹏', '安徽大学互联网学院', '');
INSERT INTO `person` VALUES (1, 'ahu_acprs@163.com', 'Prof', 'AHU', '安徽大学', NULL);
INSERT INTO `person` VALUES (3, 'leafsunshin@163.com', 'Mr', '许东明', '安徽大学互联网学院', NULL);

-- ----------------------------
-- Table structure for prefers
-- ----------------------------
DROP TABLE IF EXISTS `prefers`;
CREATE TABLE `prefers`  (
  `pc_code` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `paper_number` int(11) NOT NULL,
  `preference` enum('1','2','3','4','5') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`paper_number`, `pc_code`) USING BTREE,
  INDEX `pc_code`(`pc_code`) USING BTREE,
  CONSTRAINT `prefers_ibfk_1` FOREIGN KEY (`pc_code`) REFERENCES `pc_member` (`pc_code`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `prefers_ibfk_2` FOREIGN KEY (`paper_number`) REFERENCES `paper` (`paper_number`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of prefers
-- ----------------------------
INSERT INTO `prefers` VALUES ('pc02', 13, '2');
INSERT INTO `prefers` VALUES ('pc03', 13, '3');
INSERT INTO `prefers` VALUES ('pc02', 14, '1');
INSERT INTO `prefers` VALUES ('pc03', 14, '2');
INSERT INTO `prefers` VALUES ('pc02', 15, '2');
INSERT INTO `prefers` VALUES ('pc03', 15, '1');

-- ----------------------------
-- Table structure for referee_report
-- ----------------------------
DROP TABLE IF EXISTS `referee_report`;
CREATE TABLE `referee_report`  (
  `pc_code` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `paper_number` int(11) NOT NULL,
  `relevant` enum('Y','N','M') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `technically_correct` enum('Y','N','M') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `length_and_content` enum('Y','N','M') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `originality` int(11) NULL DEFAULT NULL,
  `impact` int(11) NULL DEFAULT NULL,
  `presentation` int(11) NULL DEFAULT NULL,
  `technical_depth` int(11) NULL DEFAULT NULL,
  `overall_rating` int(11) NULL DEFAULT NULL,
  `confidence` decimal(2, 1) NULL DEFAULT NULL,
  `best_paper` enum('Y','N') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N',
  `main_contribution` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `strong_points` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `weak_points` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `overall_summary` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `detailed_comments` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `confidential_comments` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pc_code`, `paper_number`) USING BTREE,
  INDEX `paper_number`(`paper_number`) USING BTREE,
  CONSTRAINT `referee_report_ibfk_1` FOREIGN KEY (`pc_code`) REFERENCES `pc_member` (`pc_code`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `referee_report_ibfk_2` FOREIGN KEY (`paper_number`) REFERENCES `paper` (`paper_number`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of referee_report
-- ----------------------------
INSERT INTO `referee_report` VALUES ('pc02', 14, 'Y', 'Y', 'Y', 8, 8, 8, 8, 8, 1.0, 'Y', ' test ', ' test ', ' test ', ' test ', ' test ', ' test ');
INSERT INTO `referee_report` VALUES ('pc03', 14, 'Y', 'Y', 'Y', 8, 8, 8, 8, 8, 1.0, 'Y', 'test', 'test ', 'test ', ' test ', ' test ', ' test ');
INSERT INTO `referee_report` VALUES ('pc03', 15, 'Y', 'Y', 'Y', 8, 8, 8, 8, 8, 1.0, 'Y', ' test ', ' test ', ' test ', ' test ', ' test ', ' test ');

SET FOREIGN_KEY_CHECKS = 1;
