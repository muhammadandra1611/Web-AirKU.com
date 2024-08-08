-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 08, 2024 at 10:14 PM
-- Server version: 10.6.17-MariaDB
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rumahko5_kel1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_komplain`
--

CREATE TABLE `tb_komplain` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `keluhan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_komplain`
--

INSERT INTO `tb_komplain` (`id`, `nama`, `keluhan`) VALUES
(1, 'Grace Patricia', 'Mohon maaf untuk rumah saya kenapa belum aktif ya meter airnya?,Saya sudah bayar');

-- --------------------------------------------------------

--
-- Table structure for table `tb_meter`
--

CREATE TABLE `tb_meter` (
  `id` int(11) NOT NULL,
  `nama_pelanggan` varchar(255) NOT NULL,
  `meter_awal` int(255) NOT NULL,
  `meter_akhir` int(255) NOT NULL,
  `pemakaian` int(255) NOT NULL,
  `tanggal_waktu` datetime NOT NULL,
  `petugas_pencatat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_meter`
--

INSERT INTO `tb_meter` (`id`, `nama_pelanggan`, `meter_awal`, `meter_akhir`, `pemakaian`, `tanggal_waktu`, `petugas_pencatat`) VALUES
(8, 'Andra', 500, 1000, 300, '2024-06-05 15:46:00', 'Celle '),
(16, 'Misel', 500, 1000, 300, '2024-06-05 18:24:00', 'Andra');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tarif`
--

CREATE TABLE `tb_tarif` (
  `id` int(11) NOT NULL,
  `id_tarif` varchar(255) NOT NULL,
  `tipe_tarif` varchar(255) NOT NULL,
  `tarif` int(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_tarif`
--

INSERT INTO `tb_tarif` (`id`, `id_tarif`, `tipe_tarif`, `tarif`, `status`) VALUES
(1, 'T1', 'Gedung', 100000, 'Aktif'),
(2, 'T2', 'Apartemen ', 100000000, 'Aktif'),
(3, 'T3', 'Rumah ', 5000, 'Tidak Aktif'),
(4, 'T6', 'Rumah', 100000, 'Aktif'),
(6, 'T12', 'Gedung', 12000000, 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tb_warga`
--

CREATE TABLE `tb_warga` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nik` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tipe_user` enum('warga') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_warga`
--

INSERT INTO `tb_warga` (`id`, `username`, `nama`, `nik`, `alamat`, `kota`, `no_hp`, `email`, `tipe_user`) VALUES
(25, '', 'Andra', '123456798765', 'Kungkai', 'Jambi', '085381637544', 'andrahoax@gmail.com', 'warga'),
(26, '', 'Deni', '737373', 'Demak', 'Semarang ', '086352562738', 'Dmrafie@gmail.com', 'warga'),
(30, '', 'Misel', '267546745671', 'Kungkai', 'Jambi', '085381637666', 'Celle@gmail.com', 'warga'),
(32, '', 'Faris Horison', '2312343088771', 'Tambora', 'Semarang', '087625516272', 'farismiyako@gmail.com', 'warga'),
(33, '', 'mulyono', '267546745671', 'Grobogan', 'Grobogan', '9877656789', 'Mulyono22@gmail.com', 'warga'),
(34, '', 'Jony Saputra', '434126177287', 'Kalimantan Selatan', 'Batu licin', '098776625627', 'Jhonline@gmail.com', 'warga'),
(35, '', 'Komeng', '1271727217', 'Jakarta Timur', 'Jakarta', '087777127172', 'uhuy@gmail.com', 'warga'),
(36, '', 'BryanAnderson', '2728282', 'Simpang 5', 'Semarang', '08262626261', 'BryanAnd@gmal.com', 'warga'),
(37, '', 'Aldozi', '555555555555555', 'Ungaran', 'Semarang', '098765434567', 'Adloz@gmail.com', 'warga'),
(38, '', 'Andreas Hutajulu', '827288287823747', 'KEC. PARMONANGAN', 'Medan', '0826366236623', 'AndreasHutajulu@gmail.com', 'warga'),
(39, '', 'Kevin Aprilio ', '16367181828', 'Jakarta Selatan ', 'Jakarta ', '08372636261', 'Kevin1777@gmail.com', 'warga'),
(41, '', 'uhuyyy', '1234512345', 'Jalan Allah', 'Semarang ', '03656', '12455@gmail.com', 'warga');

-- --------------------------------------------------------

--
-- Table structure for table `tuser`
--

CREATE TABLE `tuser` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('admin','bendahara','petugas','warga') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tuser`
--

INSERT INTO `tuser` (`id`, `username`, `nama`, `password`, `level`) VALUES
(4, 'andra', 'andra', '$2y$10$HbCnWsPElbMOeDgN.1zl8ebLwlmAhuRrKhn0oTw0tOB33uK9AkwGy', 'admin'),
(5, 'petugas', 'petugas', '$2y$10$KG85uIPAvXfTVaDj2OXwSeOhDzMjg57oSWYqPeJ06kYfAzdXjuLqy', 'petugas'),
(6, 'bendahara', 'bendahara', '$2y$10$0L7.NGDaj9qIZgx.Oa.e6uqIYi2R1oSOU7EatzyHj26vHAiAyRXDy', 'bendahara'),
(7, 'misel', 'misel', '$2y$10$5grNoFWJSe00Ll7R1z903ehhar0xT5cirXZEOeIcKv9pSIpmvLdaO', 'warga'),
(10, 'initokyo', 'initokyo', '$2y$10$rHxxciq7m.EWCuNkuODKWefSa.WI91jUJL1LzqVbyznFEA9sEsVDq', 'warga');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_komplain`
--
ALTER TABLE `tb_komplain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_meter`
--
ALTER TABLE `tb_meter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_tarif`
--
ALTER TABLE `tb_tarif`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_warga`
--
ALTER TABLE `tb_warga`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tuser`
--
ALTER TABLE `tuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_komplain`
--
ALTER TABLE `tb_komplain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_meter`
--
ALTER TABLE `tb_meter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tb_tarif`
--
ALTER TABLE `tb_tarif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_warga`
--
ALTER TABLE `tb_warga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tuser`
--
ALTER TABLE `tuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
