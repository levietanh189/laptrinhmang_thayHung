/*
 Navicat Premium Data Transfer

 Source Server         : localDB
 Source Server Type    : MySQL
 Source Server Version : 100414
 Source Host           : localhost:3306
 Source Schema         : hotel

 Target Server Type    : MySQL
 Target Server Version : 100414
 File Encoding         : 65001

 Date: 06/09/2021 17:06:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tblclient
-- ----------------------------
DROP TABLE IF EXISTS `tblclient`;
CREATE TABLE `tblclient`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `idcard` int(11) NULL DEFAULT NULL,
  `address` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` int(11) NULL DEFAULT NULL,
  `email` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tblclient
-- ----------------------------
INSERT INTO `tblclient` VALUES (1, 'vanh', 12345678, 'hanoi', 91700000, 'vanh', NULL, '');
INSERT INTO `tblclient` VALUES (2, 'vanh', 123456, '123344', 1111, '11111', NULL, NULL);

-- ----------------------------
-- Table structure for tblroom
-- ----------------------------
DROP TABLE IF EXISTS `tblroom`;
CREATE TABLE `tblroom`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `displayPrice` float NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tblroom
-- ----------------------------

-- ----------------------------
-- Procedure structure for client_update
-- ----------------------------
DROP PROCEDURE IF EXISTS `client_update`;
delimiter ;;
CREATE PROCEDURE `client_update`(IN id int,IN name varchar(45),IN idcard int,IN address varchar(45),IN tel int,IN email varchar(45),IN role varchar(45),IN note varchar(255))
BEGIN
UPDATE student_info
SET idcard = idcard,address = address,tel = tel,email=email,role=role,note=note where id = id;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
