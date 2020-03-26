-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2019 at 02:35 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbelektro`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbjual`
--

CREATE TABLE `tbjual` (
  `kd_penjualan` char(25) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `HP` int(225) NOT NULL,
  `Alamat` varchar(25) NOT NULL,
  `kd_barang` varchar(30) NOT NULL,
  `nm_barang` varchar(20) NOT NULL,
  `harga` int(225) NOT NULL,
  `jumlah` int(225) NOT NULL,
  `total` int(225) NOT NULL,
  `tanggal` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbjual`
--

INSERT INTO `tbjual` (`kd_penjualan`, `nama`, `HP`, `Alamat`, `kd_barang`, `nm_barang`, `harga`, `jumlah`, `total`, `tanggal`) VALUES
('TP02', 'Ajika', 83363672, 'Karanganyar', 'MCS', 'Mesin Cuci Samsung', 800000, 2, 1600000, '19/06/2019'),
('TP03', 'Agus', 94473874, 'Karanganyar', 'ACS', 'AC Samsung', 1300000, 3, 3900000, '29/06/2019');

-- --------------------------------------------------------

--
-- Table structure for table `tblogin`
--

CREATE TABLE `tblogin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(25) NOT NULL,
  `hak_akses` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblogin`
--

INSERT INTO `tblogin` (`username`, `password`, `hak_akses`) VALUES
('admin', 'admin', 'admin'),
('user', 'user', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `tbstock`
--

CREATE TABLE `tbstock` (
  `kd_barang` char(35) NOT NULL,
  `nm_barang` varchar(25) NOT NULL,
  `hrg_barang` int(225) NOT NULL,
  `stock_barang` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbstock`
--

INSERT INTO `tbstock` (`kd_barang`, `nm_barang`, `hrg_barang`, `stock_barang`) VALUES
('ACS', 'AC Samsung', 1300000, 21),
('MCS', 'Mesin Cuci Samsung', 800000, 20),
('TVS', 'TV Samsung', 1200000, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbjual`
--
ALTER TABLE `tbjual`
  ADD PRIMARY KEY (`kd_penjualan`);

--
-- Indexes for table `tblogin`
--
ALTER TABLE `tblogin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tbstock`
--
ALTER TABLE `tbstock`
  ADD PRIMARY KEY (`kd_barang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
