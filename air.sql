-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2024 at 03:31 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `air`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelola`
--

CREATE TABLE `tb_kelola` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_kelola`
--

INSERT INTO `tb_kelola` (`id`, `nama`, `username`, `password`) VALUES
(1, 'andra', 'admin', '123'),
(2, 'petugass', 'petugas', '12345'),
(3, 'misel', 'bendahara', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `tb_komplain`
--

CREATE TABLE `tb_komplain` (
  `nik` int(16) NOT NULL,
  `no` int(11) NOT NULL,
  `nama` text NOT NULL,
  `waktu_komplain` date NOT NULL,
  `id_tarif` int(100) NOT NULL,
  `isi_komplain` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_meter`
--

CREATE TABLE `tb_meter` (
  `no` int(11) NOT NULL,
  `nik` int(16) NOT NULL,
  `meter_awal` int(100) NOT NULL,
  `meter_akhir` int(100) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu_pemakaian` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pembayaran`
--

CREATE TABLE `tb_pembayaran` (
  `no` int(11) NOT NULL,
  `no_meter` varchar(100) NOT NULL,
  `id_tarif` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_tarif`
--

CREATE TABLE `tb_tarif` (
  `id_tarif` int(11) NOT NULL,
  `tipe` varchar(100) NOT NULL,
  `tarif` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `nama` varchar(100) DEFAULT NULL,
  `nik` varchar(16) NOT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `kota` varchar(100) DEFAULT NULL,
  `no_hp` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `tipe_user` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`nama`, `nik`, `alamat`, `kota`, `no_hp`, `email`, `tipe_user`, `username`, `password`) VALUES
('Farah azizah ', '3216156702040001', 'sukamanah RT001/003 Cikarang bekasi', 'Cikarang', '085719913364', 'Farahazzh27@gmail.com', 'WARGA', 'frhzh', 'frhazzh27'),
('Bintang Putra Pratama', '3302182204030004', 'Jl Raya Tamansari RT 2/1', 'Purwokerto', '083100329969', 'bintangsmp4@gmail.com', 'WARGA', 'bintang', 'bintang123'),
('Xaverius Yehuda Revaldo E.N', '3309070704050003', 'Jl Fatmawati No.238A', 'Semarang', '081225344977', 'xaveriusnugraha34@gmail.com', 'WARGA', 'capeiyuss', 'capedehh'),
('Fenty Maretha Puspa Dewi', '3315164503040004', 'Dusun grengseng, Anggaswangi, Godong', 'Purwodadi', '089510720871', 'fentympd05@gmail.com', 'WARGA', 'fentycantik', 'cantikfenty'),
('Dwi Nabela Fitriana', '3318035611040003', 'Tambaharjo RT04/RW02 Tambakromo Pati ', 'Pati', '081330415180', 'nabela1624@gmail.com', 'WARGA', 'dnf', 'haibel'),
('Rissa Natalia', '3318182543340005', 'Perumda Jl. Tembalang Baru no 60', 'Semarang', '081225749237', 'rissanataliaa456@gmail.com', 'WARGA', 'rntlyy', 'taehyung123'),
('Alsah Nur Laila', '3319025711030011', 'Jl. Banyu Putih Raya No.31, Tembalang', 'Semarang', '0895411707564', 'alsahnurlaila123@gmail.com', 'WARGA', 'alshnl', 'naikhajiamiin'),
('Fajar Ardiyansyah', '3323092409020002', 'Jamus, Tegalrejo, Ngadirejo, Temanggung', 'Temanggung', '0895622387988', 'fajardi249@gmail.com', 'WARGA', 'ard24', 'omnivora'),
('Rahma Fitri Ardani', '3324074812030003', 'Somopuro RT8/RW7 Bebengan Boja Kendal', 'Kendal', '088806566572', 'ardani460@gmail.com', 'WARGA', 'lelebakar', 'pantundulu'),
('Achmad Agung Leksono', '3327130000000000', 'Ds Padek, Kec Ulujami RT08/RW03', 'Pemalang', '087847480802', 'agungachmad227@gmail.com', 'WARGA', 'agungachmad', 'kamitetep'),
('Azril Rizqon Rabbani', '3328100704040002', 'Jl. Nirwanasari Cluster,', 'Semarang', '0895379145926', 'azrilrr678@gmail.com', 'WARGA', 'azriel', 'qwerty'),
('Denny Muhammad Rafie', '3332220948669912', 'Jl. Los Santos Raya II No.76 RT05/RW07', 'Fontaine', '081382904130', 'dmrafie@polines.ac.id', 'WARGA', 'user9', 'anjaymabar123'),
('M Sakti Noviandra', '3374001804841234', 'Jl. Lintas Sumatera', 'Jambi', '085156420506', 'andrahoax@gmail.com', 'WARGA', 'celle', 'celle123'),
('ANNISA', '3374066403040006', 'sendang utara 3', 'Semarang', '089619175370', 'annisanisa@gmail.com', 'WARGA', 'nisa', 'nisaaja '),
('Lidya Citra Nirmala', '3374075806040002', 'Jl. Suhada Timur Raya, RT01/RW02', 'Semarang', '088233071308', 'lalalidyacn@gmail.com', 'WARGA', 'lidyaacn', 'lidyabryl'),
('Aulia Hanunaida', '3374076306030005', 'Jl. Lamper Tengah II/598', 'Semarang', '087848525740', 'hanunaidaaulia@gmail.com', 'WARGA', 'hnnd', 'ceweiqbaal'),
('Muhammad Firdaus Alfarizi ', '3374081604040003', 'Jl. Tambora 5a', 'Semarang', '085159416044', 'farismurcielago@gmail.com', 'WARGA ', 'faris', 'faris99'),
('Belsan Khanifa Millati', '3374106905030000', 'Jl. Bukit Cempaka Raya, sendangmulyo', 'Semarang', '089639003331', 'belsaaankhanifa@gmail.com', 'WARGA', 'belsano', 'jjaehyun'),
('Aldozi Dwi Masesa', '3374112590030001', 'Ungaran barat sumur jurang', 'Semarang', '088215161030', 'aldozimasesa@gmail.com', 'WARGA', 'exotic', 'pen RR'),
('Sasya Puteri Setyahadi', '3374115206040000', 'Jl.Saninten Timur 3 nomor 36', 'Semarang', '089512883636', 'sasyaputeri@gmail.com', 'WARGA', 'zazya', 'terserah'),
('Sabrina Zahra Putri Pramono', '3374116203040005', 'Jl. Sewan RT04/04 Pudak Payung Banyumanik ', 'Semarang', '089603566654', 'sabrin.2203@gmail.com', 'WARGA', 'sabrin', 'cakepamay'),
('Kahlil Gibran Okkanier', '3374230301890003', 'Jl. Sambiroto no 88', 'Semarang', '089637412825', 'matisekarat@gmail.com', 'WARGA', 'pisanggoreng', 'gorengpisang');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_kelola`
--
ALTER TABLE `tb_kelola`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_komplain`
--
ALTER TABLE `tb_komplain`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tb_meter`
--
ALTER TABLE `tb_meter`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tb_pembayaran`
--
ALTER TABLE `tb_pembayaran`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tb_tarif`
--
ALTER TABLE `tb_tarif`
  ADD PRIMARY KEY (`id_tarif`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`nik`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_kelola`
--
ALTER TABLE `tb_kelola`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_komplain`
--
ALTER TABLE `tb_komplain`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_meter`
--
ALTER TABLE `tb_meter`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_pembayaran`
--
ALTER TABLE `tb_pembayaran`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_tarif`
--
ALTER TABLE `tb_tarif`
  MODIFY `id_tarif` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
