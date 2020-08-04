-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2020 at 04:36 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kakangcoffee`
--

-- --------------------------------------------------------

--
-- Table structure for table `distributor`
--

CREATE TABLE `distributor` (
  `id` int(11) NOT NULL,
  `tgl` varchar(50) NOT NULL,
  `penanggungjawab` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `tlp` varchar(20) NOT NULL,
  `barang` varchar(30) NOT NULL,
  `jumlah` varchar(20) NOT NULL,
  `pembayaran` float NOT NULL,
  `admin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `distributor`
--

INSERT INTO `distributor` (`id`, `tgl`, `penanggungjawab`, `alamat`, `tlp`, `barang`, `jumlah`, `pembayaran`, `admin`) VALUES
(1, '02-07-2020', 'Aldi Septiana', 'jln sorean no 20, Bandung', '098342378236', 'Susu', '100 Liter', 500000, 'Ari Aprizal'),
(2, '05-07-2020', 'Ari Aprizal', 'jln gatot subroto', '0723297539367', 'Kopi', '1 Ton', 1200000, 'Ari Aprizal');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `idkaryawan` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `tlp` varchar(20) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `gaji` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`idkaryawan`, `nama`, `alamat`, `tlp`, `jabatan`, `gaji`) VALUES
('17111181', 'Ahmad salim', 'Kabupaten bandung', '348079', 'Kasir', '5000000'),
('17111176', 'YUda Yudiarto', 'Cibiru bandung', '89667445', 'Kasir', '4000000');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `idpegawai` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`idpegawai`, `password`, `nama`, `level`) VALUES
('17111170', 'kasir', 'Aldi Septiana', 2),
('17111176', 'kasir', 'YUda Yudiarto', 2),
('17111181', 'kasir', 'Ahmad salim', 2),
('17111185', 'admin', 'Ari Aprizal', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `namamenu` varchar(50) NOT NULL,
  `harga` float NOT NULL,
  `admin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `namamenu`, `harga`, `admin`) VALUES
(1, 'Black Americano', 40000, 'Ari Aprizal'),
(2, 'Cappucinno', 25000, 'Ari Aprizal'),
(3, 'Dark Forest', 25000, 'Ari Aprizal');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `idtransaksi` int(11) NOT NULL,
  `kasir` varchar(50) NOT NULL,
  `jam` varchar(20) NOT NULL,
  `tgl` varchar(50) NOT NULL,
  `pesanan` text NOT NULL,
  `jumlah` varchar(100) NOT NULL,
  `harga` varchar(100) NOT NULL,
  `total` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`idtransaksi`, `kasir`, `jam`, `tgl`, `pesanan`, `jumlah`, `harga`, `total`) VALUES
(1, 'Aldi Septiana', '14:22:31', '02-07-2020', 'Kopi Tubruk\nKopi susu', '1\n2', 'Rp.8000\nRp.20000', 28000),
(2, 'Nama Kasir', '14:26:55', '02-07-2020', 'Kopi Tubruk', '1', 'Rp.8000', 8000),
(3, 'Nama Kasir', '14:27:27', '02-07-2020', 'Kopi susu\nLatte', '1\n3', 'Rp.10000\nRp.60000', 70000),
(4, 'Nama Kasir', '14:38:45', '02-07-2020', 'Kopi Tubruk\nTahu Krispi', '2\n2', 'Rp.16000\nRp.8000', 24000),
(5, 'Nama Kasir', '14:39:07', '02-07-2020', 'Kopi susu\nTahu Krispi', '2\n2', 'Rp.20000\nRp.8000', 28000),
(6, 'Aldi Septiana', '19:27:03', '05-07-2020', 'Black Americano\nCappucinno', '3\n1', 'Rp.120000\nRp.25000', 145000),
(7, 'YUda Yudiarto', '21:21:51', '05-07-2020', 'Black Americano\nArabica', '3\n1', 'Rp.120000\nRp.12000', 132000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `distributor`
--
ALTER TABLE `distributor`
  ADD KEY `id` (`id`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD KEY `idkaryawan` (`idkaryawan`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`idpegawai`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD KEY `id` (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD KEY `idtransaksi` (`idtransaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `distributor`
--
ALTER TABLE `distributor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `idtransaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
