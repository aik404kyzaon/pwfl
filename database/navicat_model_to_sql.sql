CREATE TABLE `tb_log` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`nim` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
`telp_lama` varchar(13) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
`telp_baru` varchar(13) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
`tgl_diubah` datetime NOT NULL,
PRIMARY KEY (`id`) 
)
ENGINE = InnoDB
AUTO_INCREMENT = 14
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Compact;
CREATE TABLE `tb_mhs` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`nim` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
`nama` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
`jk` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
`alamat` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
`telp` varchar(13) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
PRIMARY KEY (`id`) 
)
ENGINE = InnoDB
AUTO_INCREMENT = 10
AVG_ROW_LENGTH = 0
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
KEY_BLOCK_SIZE = 0
MAX_ROWS = 0
MIN_ROWS = 0
ROW_FORMAT = Compact;
CREATE TRIGGER `update_telp` After UPDATE ON `tb_mhs` FOR EACH ROW begin
insert into tb_log set
nim = old.nim,
telp_baru = new.telp,
telp_lama = old.telp,
tgl_diubah = now();
end;

CREATE 
ALGORITHM=UNDEFINED
DEFINER=`root`@`localhost`
SQL SECURITY DEFINER
VIEW `tampil_log` AS 
select * from tb_log;
CREATE 
ALGORITHM=UNDEFINED
DEFINER=`root`@`localhost`
SQL SECURITY DEFINER
VIEW `tampil_mhs` AS 
select * from tb_mhs;
