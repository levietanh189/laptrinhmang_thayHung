/*
 Navicat Premium Data Transfer

 Source Server         : localDB
 Source Server Type    : MySQL
 Source Server Version : 100414
 Source Host           : localhost:3306
 Source Schema         : daomindb

 Target Server Type    : MySQL
 Target Server Version : 100414
 File Encoding         : 65001

 Date: 06/09/2021 18:24:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for game
-- ----------------------------
DROP TABLE IF EXISTS `game`;
CREATE TABLE `game`  (
  `ID_game` int(11) NOT NULL AUTO_INCREMENT,
  `ID_player1` int(11) NOT NULL,
  `ID_player2` int(11) NOT NULL,
  `matrix` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `turn` int(11) NOT NULL,
  `Uncover_matrix` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `time` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_game`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of game
-- ----------------------------

-- ----------------------------
-- Table structure for history
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history`  (
  `ID_History` int(11) NOT NULL,
  `ID_Player` int(11) NULL DEFAULT NULL,
  `ID_Opponent` int(11) NULL DEFAULT NULL,
  `Time` int(11) NULL DEFAULT NULL,
  `Win` binary(1) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_History`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of history
-- ----------------------------

-- ----------------------------
-- Table structure for matchup
-- ----------------------------
DROP TABLE IF EXISTS `matchup`;
CREATE TABLE `matchup`  (
  `ID_matchup` int(11) NOT NULL,
  `ID_tournament` int(11) NOT NULL,
  `ID_player` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `group` int(11) NULL DEFAULT NULL,
  `round` int(11) NULL DEFAULT NULL,
  `ID_player_win` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_matchup`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of matchup
-- ----------------------------

-- ----------------------------
-- Table structure for player
-- ----------------------------
DROP TABLE IF EXISTS `player`;
CREATE TABLE `player`  (
  `ID_player` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` binary(1) NOT NULL,
  `score_intournament` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_player`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of player
-- ----------------------------

-- ----------------------------
-- Table structure for tournament
-- ----------------------------
DROP TABLE IF EXISTS `tournament`;
CREATE TABLE `tournament`  (
  `ID_Tournament` int(11) NOT NULL,
  `Description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_at` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`ID_Tournament`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tournament
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
