-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Nov 2019 pada 03.54
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mhs`
--

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `tampil_log`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `tampil_log` (
`id` int(11)
,`nim` varchar(12)
,`telp_lama` varchar(13)
,`telp_baru` varchar(13)
,`tgl_diubah` datetime
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `tampil_mhs`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `tampil_mhs` (
`id` int(11)
,`nim` varchar(12)
,`nama` varchar(32)
,`jk` varchar(1)
,`alamat` varchar(32)
,`telp` varchar(13)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_log`
--

CREATE TABLE `tb_log` (
  `id` int(11) NOT NULL,
  `nim` varchar(12) NOT NULL,
  `telp_lama` varchar(13) NOT NULL,
  `telp_baru` varchar(13) NOT NULL,
  `tgl_diubah` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_log`
--

INSERT INTO `tb_log` (`id`, `nim`, `telp_lama`, `telp_baru`, `tgl_diubah`) VALUES
(1, '161240000595', '089876543210', '089876543215', '2019-11-04 02:32:44'),
(2, '161240000518', '089876543211', '089876543216', '2019-11-04 02:32:49'),
(3, '161240000546', '089876543212', '089876543217', '2019-11-04 02:32:54'),
(4, '161240000526', '089876543213', '089876543218', '2019-11-04 02:32:59'),
(5, '161240000552', '089501800531', '089501800531', '2019-11-06 23:59:11'),
(6, '161240000552', '089501800531', '089501800531', '2019-11-06 23:59:18'),
(7, '161240000526', '089876543218', '089876543218', '2019-11-07 00:49:44'),
(8, '161240000526', '089876543218', '089876543218', '2019-11-07 00:49:52'),
(9, '161240000552', '089501800531', '089501800531', '2019-11-07 00:50:58'),
(10, '161240000526', '089876543218', '089876543218', '2019-11-07 01:11:28'),
(11, '161240000526', '089876543218', '089876543218', '2019-11-07 01:11:34'),
(12, '161240000552', '089501800531', '089501800532', '2019-11-07 09:49:32'),
(13, '161240000552', '089501800532', '089501800532', '2019-11-07 09:51:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mhs`
--

CREATE TABLE `tb_mhs` (
  `id` int(11) NOT NULL,
  `nim` varchar(12) NOT NULL,
  `nama` varchar(32) NOT NULL,
  `jk` varchar(1) NOT NULL,
  `alamat` varchar(32) NOT NULL,
  `telp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_mhs`
--

INSERT INTO `tb_mhs` (`id`, `nim`, `nama`, `jk`, `alamat`, `telp`) VALUES
(1, '161240000552', 'Arky Ikfarikza', 'L', 'Wonosari', '089501800532'),
(2, '161240000595', 'Muhamad Sakti Ababil', 'L', 'Pengkol', '089876543215'),
(3, '161240000518', 'Fattakh Faza Ababiel', 'L', 'Jobokuto', '089876543216'),
(4, '161240000546', 'Dicky Daryono', 'L', 'Pekalongan', '089876543217'),
(5, '161240000526', 'Sigma Luxvian', 'P', 'Plajan', '089876543218'),
(8, '161240000534', 'Farid Hernando', 'L', 'Mlonggo', '08912910215'),
(9, '161240000532', 'Mahardhika', 'L', 'Jepara', '08912910222');

--
-- Trigger `tb_mhs`
--
DELIMITER $$
CREATE TRIGGER `update_telp` AFTER UPDATE ON `tb_mhs` FOR EACH ROW begin
insert into tb_log set
nim = old.nim,
telp_baru = new.telp,
telp_lama = old.telp,
tgl_diubah = now();
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur untuk view `tampil_log`
--
DROP TABLE IF EXISTS `tampil_log`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tampil_log`  AS  select `tb_log`.`id` AS `id`,`tb_log`.`nim` AS `nim`,`tb_log`.`telp_lama` AS `telp_lama`,`tb_log`.`telp_baru` AS `telp_baru`,`tb_log`.`tgl_diubah` AS `tgl_diubah` from `tb_log` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `tampil_mhs`
--
DROP TABLE IF EXISTS `tampil_mhs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tampil_mhs`  AS  select `tb_mhs`.`id` AS `id`,`tb_mhs`.`nim` AS `nim`,`tb_mhs`.`nama` AS `nama`,`tb_mhs`.`jk` AS `jk`,`tb_mhs`.`alamat` AS `alamat`,`tb_mhs`.`telp` AS `telp` from `tb_mhs` ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_log`
--
ALTER TABLE `tb_log`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_mhs`
--
ALTER TABLE `tb_mhs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_log`
--
ALTER TABLE `tb_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tb_mhs`
--
ALTER TABLE `tb_mhs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
