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

 Date: 07/11/2019 11:46:59
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
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_log
-- ----------------------------
INSERT INTO `tb_log` VALUES (14, '161240000552', '089501800532', '089501800531', '2019-11-07 11:24:29');
INSERT INTO `tb_log` VALUES (15, '161240000552', '089501800531', '08987654331', '2019-11-07 11:37:39');
INSERT INTO `tb_log` VALUES (16, '161240000595', '089876543215', '08987654332', '2019-11-07 11:37:47');
INSERT INTO `tb_log` VALUES (17, '161240000518', '089876543216', '08987654332', '2019-11-07 11:37:55');
INSERT INTO `tb_log` VALUES (18, '161240000518', '08987654332', '08987654333', '2019-11-07 11:38:02');
INSERT INTO `tb_log` VALUES (19, '161240000546', '089876543217', '08987654334', '2019-11-07 11:38:21');
INSERT INTO `tb_log` VALUES (20, '161240000526', '089876543218', '08987654335', '2019-11-07 11:38:29');
INSERT INTO `tb_log` VALUES (21, '161240000534', '08912910215', '08987654336', '2019-11-07 11:38:37');

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
INSERT INTO `tb_mhs` VALUES (1, '161240000552', 'Arky Ikfarikza', 'L', 'Wonosari', '08987654331');
INSERT INTO `tb_mhs` VALUES (2, '161240000595', 'Muhamad Sakti Ababil', 'L', 'Pengkol', '08987654332');
INSERT INTO `tb_mhs` VALUES (3, '161240000518', 'Fattakh Faza Ababiel', 'L', 'Jobokuto', '08987654333');
INSERT INTO `tb_mhs` VALUES (4, '161240000546', 'Dicky Daryono', 'L', 'Pekalongan', '08987654334');
INSERT INTO `tb_mhs` VALUES (5, '161240000526', 'Sigma Luxvian', 'P', 'Plajan', '08987654335');
INSERT INTO `tb_mhs` VALUES (8, '161240000534', 'Farid Hernando', 'L', 'Mlonggo', '08987654336');

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
-- View structure for tampil_semua
-- ----------------------------
DROP VIEW IF EXISTS `tampil_semua`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `tampil_semua` AS select tb_mhs.nim,tb_mhs.nama,tb_mhs.jk,tb_mhs.alamat,tb_log.telp_lama,tb_log.telp_baru,tb_log.tgl_diubah from tb_mhs inner join tb_log on tb_mhs.nim = tb_log.nim ;

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
