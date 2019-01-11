-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2019 at 12:19 PM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `apotik`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
`id` int(10) NOT NULL,
  `id_barang` varchar(25) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `kategori` varchar(30) NOT NULL,
  `stok` varchar(20) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `isi` varchar(20) NOT NULL,
  `harga_beli` varchar(30) NOT NULL,
  `harga_jual` varchar(30) NOT NULL,
  `expired` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `id_barang`, `nama`, `kategori`, `stok`, `satuan`, `isi`, `harga_beli`, `harga_jual`, `expired`) VALUES
(76, 'B002  ', 'Psikotropika ', '27', '11', '10', '10 ', '1500000 ', '10000000 ', '0000-00-00'),
(75, 'B001   ', 'Insana  ', '27', '10070', '11', '10  ', '2000 ', '2000   ', '0000-00-00'),
(77, 'B003    ', 'Omegtamin    ', '27', '100', '12', '10   ', '1000   ', '1500   ', '0000-00-00'),
(78, 'B004 ', 'Promag', '27', '101', '12', '10', '4500', '4800', '0000-00-00'),
(79, 'B005  ', 'Antangin', '26', '100', '12', '1', '1000', '1200', '0000-00-00'),
(80, '0212', 'Bodrexin', '27', '110', '12', '5', '500', '600', '0000-00-00'),
(81, ' 2131 ', 'Obat', '27', '12', '12', '12', '2000', '13000', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `detail_pembelian`
--

CREATE TABLE IF NOT EXISTS `detail_pembelian` (
`id` int(11) NOT NULL,
  `id_pembelian` varchar(30) NOT NULL,
  `barang` varchar(30) NOT NULL,
  `jumlah` varchar(30) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=154 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_pembelian`
--

INSERT INTO `detail_pembelian` (`id`, `id_pembelian`, `barang`, `jumlah`) VALUES
(137, '123', '75', '10'),
(136, '123', '77', '10'),
(135, '123', '75', '10'),
(134, '122', '76', '10'),
(133, '120', '76', '10'),
(132, '120', '76', '10'),
(131, '118', '75', '10'),
(130, '118', '76', '10'),
(129, '117', '75', '10'),
(128, '116', '76', '10'),
(138, '123', '76', '10'),
(139, '123', '75', '10'),
(140, '122', '76', '10'),
(141, '122', '75', '10'),
(142, '122', '77', '12'),
(143, '131', '76', '10000'),
(144, '131', '75', '10000'),
(145, '133', '76', '10'),
(146, '134', '76', '10'),
(147, '135', '76', '10'),
(148, '136', '75', '10'),
(149, '137', '80', '10'),
(150, '138', '79', '10'),
(151, '139', '78', '1'),
(152, '140', '75', '20'),
(153, '141', '76', '1');

-- --------------------------------------------------------

--
-- Table structure for table `detail_penjualan`
--

CREATE TABLE IF NOT EXISTS `detail_penjualan` (
`id` int(11) NOT NULL,
  `id_penjualan` varchar(30) NOT NULL,
  `barang` varchar(30) NOT NULL,
  `jumlah` varchar(30) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`id`, `id_penjualan`, `barang`, `jumlah`) VALUES
(1, '', '76', '10'),
(2, '12', '76', '10'),
(3, '12', '77', '10'),
(4, '14', '76', '50'),
(5, '14', '75', '20'),
(6, '16', '77', '23'),
(7, '17', '75', '10'),
(8, '18', '76', '10'),
(9, '19', '76', '10'),
(10, '19', '77', '50'),
(11, '21', '76', '10000'),
(12, '21', '77', '10000'),
(13, '23', '76', '10'),
(14, '23', '79', '10');

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE IF NOT EXISTS `dokter` (
`id` int(11) NOT NULL,
  `id_dokter` varchar(45) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `alamat` varchar(25) NOT NULL,
  `spesialisasi` varchar(25) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id`, `id_dokter`, `nama`, `alamat`, `spesialisasi`) VALUES
(3, 'D001', 'Drs. Setyawan', 'Malang', 'Poli Kulit'),
(4, 'D002', 'Drs. Sugiono', 'Lawang', 'Poli Gigi');

-- --------------------------------------------------------

--
-- Table structure for table `jual`
--

CREATE TABLE IF NOT EXISTS `jual` (
`id` int(11) NOT NULL,
  `faktur` varchar(30) NOT NULL,
  `barang` varchar(30) NOT NULL,
  `jumlah` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `customer` varchar(30) NOT NULL,
  `total` varchar(30) NOT NULL,
  `sesjual` varchar(255) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jual`
--

INSERT INTO `jual` (`id`, `faktur`, `barang`, `jumlah`, `tanggal`, `customer`, `total`, `sesjual`) VALUES
(25, '', 'B002  ', '0', '2013-12-06', '', '0', '20131206141206'),
(26, '', 'B002  ', '0', '2013-12-06', '', '0', '20131206141206'),
(27, '', 'B002  ', '0', '2013-12-06', '', '0', '20131206141206'),
(28, '', 'B002  ', '0', '2013-12-06', '', '0', '20131206141206'),
(29, '', 'B002  ', '0', '2013-12-06', '', '0', '20131206141206'),
(30, 'asf', 'B002  ', '0', '2013-12-06', 'asf', '0', '20131206141202'),
(31, 'asf', 'B002  ', '0', '2013-12-06', 'asf', '0', '20131206141202'),
(32, 'asf', 'B002  ', '0', '2013-12-06', 'asf', '0', '20131206141202'),
(33, 'asf', 'B002  ', '0', '2013-12-06', 'asf', '0', '20131206141202'),
(34, 'asf', 'B002  ', '0', '2013-12-06', 'asf', '0', '20131206141202'),
(35, '211', 'B002  ', '0', '2013-12-06', '123', '0', '20131206141201'),
(36, '211', 'B003    ', '0', '2013-12-06', '123', '0', '20131206141201'),
(37, '211', 'B002  ', '0', '2013-12-06', '123', '0', '20131206141201'),
(38, '213', 'B002  ', '0', '2013-12-06', '12', '0', '20131206141226'),
(39, '213', 'B002  ', '0', '2013-12-06', '12', '0', '20131206141226'),
(40, '213', 'B002  ', '0', '2013-12-06', '12', '0', '20131206141226');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
`id` int(11) NOT NULL,
  `id_kategori` varchar(10) NOT NULL,
  `kategori` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `id_kategori`, `kategori`) VALUES
(27, 'k003', 'Lemah'),
(26, 'k002', 'Danger'),
(25, 'k001 ', 'Menengah'),
(28, '0121  ', 'KUAT X');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE IF NOT EXISTS `pembelian` (
`id` int(11) NOT NULL,
  `barang` varchar(30) NOT NULL,
  `jumlah` varchar(20) NOT NULL,
  `faktur` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `supplier` varchar(30) NOT NULL,
  `total` int(30) NOT NULL,
  `subtotal` varchar(30) NOT NULL,
  `sesbeli` varchar(255) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=157 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id`, `barang`, `jumlah`, `faktur`, `tanggal`, `supplier`, `total`, `subtotal`, `sesbeli`) VALUES
(153, 'B002  ', '0', 'ASDSS', '2013-12-06', '12312 ', 0, '0', '20131206131252'),
(154, 'B002  ', '0', 'ASDSS', '2013-12-06', '12312 ', 0, '0', '20131206131252'),
(155, 'B002  ', '0', 'ASDSS', '2013-12-06', '12312 ', 0, '0', '20131206131252'),
(156, 'B002  ', '12', 'ASDSS', '2013-12-06', '12312 ', 216000000, '18000000', '20131206131259');

-- --------------------------------------------------------

--
-- Table structure for table `satuan`
--

CREATE TABLE IF NOT EXISTS `satuan` (
`id` int(11) NOT NULL,
  `id_satuan` varchar(10) NOT NULL,
  `satuan` varchar(15) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `satuan`
--

INSERT INTO `satuan` (`id`, `id_satuan`, `satuan`) VALUES
(12, 'Sa003', 'Puyer'),
(11, 'Sa002', 'Tablet'),
(10, 'Sa001', 'Botol'),
(13, '0IDD', 'Tablet');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
`id` int(11) NOT NULL,
  `id_supplier` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `obat` varchar(35) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `telepon` varchar(15) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `id_supplier`, `nama`, `obat`, `alamat`, `telepon`) VALUES
(87, '12312 ', 'Agus', '76', 'JL Kebon Waru', '012123'),
(91, 'S003 ', 'Nindi', '76', 'Jl. Kebrao', '0891999929'),
(89, 'S001 ', 'Agus', '77', 'Pasuruan', '12121213212'),
(90, 'S002 ', 'Budi', '75', 'Pasuruan', '09090909'),
(98, 'S003 ', 'Nindi', '79', 'Jl. Kebrao', '0891999929'),
(94, 'S001 ', 'Agus', '78', 'Pasuruan', '12121213212'),
(97, 'S003 ', 'Nindi', '80', 'Jl. Kebrao', '0891999929'),
(99, 'S001 ', 'Agus', '75', 'Pasuruan', '12121213212');

-- --------------------------------------------------------

--
-- Table structure for table `t_pegawai`
--

CREATE TABLE IF NOT EXISTS `t_pegawai` (
  `nik` varchar(20) NOT NULL,
  `kd_level` varchar(10) DEFAULT NULL,
  `kar_peg` varchar(20) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `tgl_masuk` date DEFAULT NULL,
  `kd_cabang` varchar(20) DEFAULT NULL,
  `kd_jabatan` varchar(10) DEFAULT NULL,
  `kd_unit_kerja` varchar(20) DEFAULT NULL,
  `status_aktif` varchar(30) DEFAULT NULL,
  `status_kerja` varchar(20) DEFAULT NULL,
  `tgl_capeg` date DEFAULT NULL,
  `apr` char(1) DEFAULT NULL,
  `apr_by` varchar(20) DEFAULT NULL,
  `apr_tanggal` date DEFAULT NULL,
  `tanggal_sk` date DEFAULT NULL,
  `no_sk` varchar(50) DEFAULT NULL,
  `masa_kerja` int(11) DEFAULT NULL,
  `tanggal_hitung` date DEFAULT NULL,
  `tunjangan_jabatan` decimal(65,30) DEFAULT NULL COMMENT 'tunjangan sesuai kebijakan',
`id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_pegawai`
--

INSERT INTO `t_pegawai` (`nik`, `kd_level`, `kar_peg`, `nama`, `tgl_masuk`, `kd_cabang`, `kd_jabatan`, `kd_unit_kerja`, `status_aktif`, `status_kerja`, `tgl_capeg`, `apr`, `apr_by`, `apr_tanggal`, `tanggal_sk`, `no_sk`, `masa_kerja`, `tanggal_hitung`, `tunjangan_jabatan`, `id`) VALUES
('00 00 123', '1', NULL, 'Rangga', NULL, '112', '26', 'A141', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
('00 00 136', '2', NULL, 'Jonas Johan Aipassa', '1900-01-01', '010', 'A60', 'B133', 'Aktif', 'Pegawai Tetap', '1900-01-01', 'T', '01 74 284', '2013-04-22', NULL, NULL, 0, NULL, '1.000000000000000000000000000000', 2),
('00 00 137', '2', NULL, 'Rani Mainake', '1900-01-01', '110', 'A60', 'D118', 'Aktif', 'Pegawai Tetap', '1900-01-01', 'T', '00 00 137', '2013-06-09', NULL, NULL, 0, NULL, '500000.000000000000000000000000000000', 3),
('00 00 138', '4', NULL, 'Frengky. M. N. Wairatta', '2009-06-01', '080', 'A60', 'B120', 'Aktif', 'Pegawai Tetap', '1950-01-01', 'T', '01 74 284', '2012-11-12', NULL, NULL, 0, NULL, '1.000000000000000000000000000000', 4),
('00 00 139', '4', NULL, 'Ronald. Y. Hehakaya', '2009-06-01', '140', 'A60', 'B120', 'Aktif', 'Pegawai Tetap', '1950-01-01', 'T', '01 74 284', '2012-11-12', NULL, NULL, 0, NULL, '1.000000000000000000000000000000', 5),
('00 00 140', '4', NULL, 'Novalina Soulissa', '2009-06-01', '110', 'A60', 'B120', 'Aktif', 'Pegawai Tetap', '1950-01-01', 'T', '01 74 284', '2012-11-12', NULL, NULL, 0, NULL, '1.000000000000000000000000000000', 6),
('00 00 141', '4', NULL, 'Noviyanti Ismi Latuconsina', '2009-06-01', '030', 'A60', 'B120', 'Aktif', 'Pegawai Tetap', '1950-01-01', 'T', NULL, NULL, NULL, NULL, 0, NULL, '1.000000000000000000000000000000', 7),
('00 00 142', '4', NULL, 'Ferdinand Rocky Parera', '2009-06-01', '000', 'A60', 'A14', 'Aktif', 'Pegawai Tetap', '1950-01-01', 'T', NULL, NULL, NULL, NULL, 0, NULL, '1.000000000000000000000000000000', 8),
('00 00 143', '4', NULL, 'Melattie Tuwanakotta', '2009-06-01', '150', 'A60', 'B120', 'Aktif', 'Pegawai Tetap', '1950-01-01', 'T', NULL, NULL, NULL, NULL, 3, NULL, '1.000000000000000000000000000000', 9),
('00 00 144', '2', NULL, 'Lisiani Herawati', '2009-06-01', '010', 'A60', 'C113', 'Aktif', 'Pegawai Tetap', '1950-01-01', 'T', NULL, NULL, NULL, NULL, 0, NULL, '1.000000000000000000000000000000', 10),
('00 00 145', '2', NULL, 'Vico Papilaya', '2009-06-01', '010', 'A60', 'B135', 'Aktif', 'Pegawai Tetap', '1950-01-01', 'T', NULL, NULL, NULL, NULL, 0, NULL, '1.000000000000000000000000000000', 11),
('00 00 146', '4', NULL, 'Ricardo. TH. P. Pattimahau', '2009-06-01', '263', 'A60', 'B111', 'Aktif', 'Pegawai Tetap', '1950-01-01', 'T', NULL, NULL, NULL, NULL, 0, NULL, '1.000000000000000000000000000000', 12),
('00 00 147', '3', NULL, 'Monika G.K. Siahaya', '1900-01-01', '010', 'A60', 'B131', 'Aktif', 'Pegawai Tetap', '1900-01-01', 'T', '01 74 284', '2013-04-22', NULL, NULL, 12, NULL, '1000000.000000000000000000000000000000', 13),
('00 00 148', '4', NULL, 'Gleenda Nicolas Hehamahua', '2009-06-01', '010', 'A60', 'B120', 'Aktif', 'Pegawai Tetap', '1950-01-01', 'T', NULL, NULL, NULL, NULL, 0, NULL, '1.000000000000000000000000000000', 14),
('00 00 149', '4', NULL, 'Elsa Adriana Lekatompessy', '2009-06-01', '100', 'A60', 'B120', 'Aktif', 'Pegawai Tetap', '1950-01-01', 'T', NULL, NULL, NULL, NULL, 0, NULL, '1.000000000000000000000000000000', 15),
('00 00 150', '4', NULL, 'Theddy Reymond Maitimu', '2009-06-01', '000', 'A51', 'A112', 'Aktif', 'Pegawai Tetap', '1950-01-01', 'T', NULL, NULL, NULL, NULL, 0, NULL, '1.000000000000000000000000000000', 16),
('00 00 151', '4', NULL, 'Husain Salampessy', '2009-06-01', '112', 'A60', 'B120', 'Aktif', 'Pegawai Tetap', '1950-01-01', 'T', NULL, NULL, NULL, NULL, 0, NULL, '1.000000000000000000000000000000', 17),
('00 00 152', '4', NULL, 'Ridwan Tuahena', '2009-06-01', '100', 'A60', 'C12', 'Aktif', 'Pegawai Tetap', '1950-01-01', 'T', NULL, NULL, NULL, NULL, 3, NULL, '1.000000000000000000000000000000', 18),
('00 00 153', '4', NULL, 'Sandra Cynthia Mahupale', '2009-06-01', '000', 'A60', 'A121', 'Aktif', 'Pegawai Tetap', '1950-01-01', 'T', NULL, NULL, NULL, NULL, 0, NULL, '1.000000000000000000000000000000', 19),
('00 00 154', '4', NULL, 'Abdullah Marasabessy', '2009-06-01', '090', 'A60', 'B120', 'Aktif', 'Pegawai Tetap', '1950-01-01', 'T', NULL, NULL, NULL, NULL, 0, NULL, '1.000000000000000000000000000000', 20),
('00 00 155', '4', NULL, 'Donatus Ferdinand. B. Anaktatoty', '2009-06-01', '010', 'B50', 'B120', 'Aktif', 'Pegawai Tetap', '1950-01-01', 'T', NULL, NULL, NULL, NULL, 0, NULL, '1.000000000000000000000000000000', 21),
('00 00 159', '7', NULL, 'Agus Edi Permadi', NULL, '255', '36', 'A123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22),
('1234567', 'ho', NULL, 'ASEP DAYAT', NULL, '255', '35', 'A133', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29);

-- --------------------------------------------------------

--
-- Table structure for table `t_user`
--

CREATE TABLE IF NOT EXISTS `t_user` (
`id` int(11) NOT NULL,
  `nik` varchar(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7879 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_user`
--

INSERT INTO `t_user` (`id`, `nik`, `status`, `username`, `password`) VALUES
(7874, '00 00 608', 0, '00 00 608', '6ff0ae65d2a0024d2c98acf7b4d193ac'),
(7875, '00 00 136', 0, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(7877, '00 00 138', 1, '00 00 138', '6c27412170c5d42364618aca20dede28'),
(7878, '1234567', 1, '1234567', 'fcea920f7412b5da7be0cf42b8c93759');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_pembelian`
--
ALTER TABLE `detail_pembelian`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jual`
--
ALTER TABLE `jual`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `satuan`
--
ALTER TABLE `satuan`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_pegawai`
--
ALTER TABLE `t_pegawai`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_user`
--
ALTER TABLE `t_user`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `detail_pembelian`
--
ALTER TABLE `detail_pembelian`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=154;
--
-- AUTO_INCREMENT for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `jual`
--
ALTER TABLE `jual`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=157;
--
-- AUTO_INCREMENT for table `satuan`
--
ALTER TABLE `satuan`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `t_pegawai`
--
ALTER TABLE `t_pegawai`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `t_user`
--
ALTER TABLE `t_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7879;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
