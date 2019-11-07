/*
 Navicat Premium Data Transfer

 Source Server         : phpMyAdmin
 Source Server Type    : MySQL
 Source Server Version : 100138
 Source Host           : localhost:3306
 Source Schema         : db_mhs

 Target Server Type    : MySQL
 Target Server Version : 100138
 File Encoding         : 65001

 Date: 07/11/2019 10:02:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_log
-- ----------------------------
DROP TABLE IF EXISTS `tb_log`;
CREATE TABLE `tb_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nim` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `telp_lama` varchar(13) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `telp_baru` varchar(13) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tgl_diubah` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_log
-- ----------------------------
INSERT INTO `tb_log` VALUES (1, '161240000595', '089876543210', '089876543215', '2019-11-04 02:32:44');
INSERT INTO `tb_log` VALUES (2, '161240000518', '089876543211', '089876543216', '2019-11-04 02:32:49');
INSERT INTO `tb_log` VALUES (3, '161240000546', '089876543212', '089876543217', '2019-11-04 02:32:54');
INSERT INTO `tb_log` VALUES (4, '161240000526', '089876543213', '089876543218', '2019-11-04 02:32:59');
INSERT INTO `tb_log` VALUES (5, '161240000552', '089501800531', '089501800531', '2019-11-06 23:59:11');
INSERT INTO `tb_log` VALUES (6, '161240000552', '089501800531', '089501800531', '2019-11-06 23:59:18');
INSERT INTO `tb_log` VALUES (7, '161240000526', '089876543218', '089876543218', '2019-11-07 00:49:44');
INSERT INTO `tb_log` VALUES (8, '161240000526', '089876543218', '089876543218', '2019-11-07 00:49:52');
INSERT INTO `tb_log` VALUES (9, '161240000552', '089501800531', '089501800531', '2019-11-07 00:50:58');
INSERT INTO `tb_log` VALUES (10, '161240000526', '089876543218', '089876543218', '2019-11-07 01:11:28');
INSERT INTO `tb_log` VALUES (11, '161240000526', '089876543218', '089876543218', '2019-11-07 01:11:34');
INSERT INTO `tb_log` VALUES (12, '161240000552', '089501800531', '089501800532', '2019-11-07 09:49:32');
INSERT INTO `tb_log` VALUES (13, '161240000552', '089501800532', '089501800532', '2019-11-07 09:51:24');

-- ----------------------------
-- Table structure for tb_mhs
-- ----------------------------
DROP TABLE IF EXISTS `tb_mhs`;
CREATE TABLE `tb_mhs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nim` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jk` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `telp` varchar(13) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_mhs
-- ----------------------------
INSERT INTO `tb_mhs` VALUES (1, '161240000552', 'Arky Ikfarikza', 'L', 'Wonosari', '089501800532');
INSERT INTO `tb_mhs` VALUES (2, '161240000595', 'Muhamad Sakti Ababil', 'L', 'Pengkol', '089876543215');
INSERT INTO `tb_mhs` VALUES (3, '161240000518', 'Fattakh Faza Ababiel', 'L', 'Jobokuto', '089876543216');
INSERT INTO `tb_mhs` VALUES (4, '161240000546', 'Dicky Daryono', 'L', 'Pekalongan', '089876543217');
INSERT INTO `tb_mhs` VALUES (5, '161240000526', 'Sigma Luxvian', 'P', 'Plajan', '089876543218');
INSERT INTO `tb_mhs` VALUES (8, '161240000534', 'Farid Hernando', 'L', 'Mlonggo', '08912910215');
INSERT INTO `tb_mhs` VALUES (9, '161240000532', 'Mahardhika', 'L', 'Jepara', '08912910222');

-- ----------------------------
-- View structure for tampil_log
-- ----------------------------
DROP VIEW IF EXISTS `tampil_log`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `tampil_log` AS select * from tb_log ;

-- ----------------------------
-- View structure for tampil_mhs
-- ----------------------------
DROP VIEW IF EXISTS `tampil_mhs`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `tampil_mhs` AS select * from tb_mhs ;

-- ----------------------------
-- Triggers structure for table tb_mhs
-- ----------------------------
DROP TRIGGER IF EXISTS `update_telp`;
delimiter ;;
CREATE TRIGGER `update_telp` AFTER UPDATE ON `tb_mhs` FOR EACH ROW begin
insert into tb_log set
nim = old.nim,
telp_baru = new.telp,
telp_lama = old.telp,
tgl_diubah = now();
end
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
