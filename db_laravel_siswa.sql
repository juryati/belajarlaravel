-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2019 at 04:40 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_laravel_siswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
`id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_12_06_011800_create_table_products', 1),
(2, '2018_12_06_014511_alter_table_products', 1),
(3, '2018_12_20_074447_create_table_kelas', 1);

-- --------------------------------------------------------

--
-- Table structure for table `table_kelas`
--

CREATE TABLE IF NOT EXISTS `table_kelas` (
`id_kelas` int(10) unsigned NOT NULL,
  `nama_kelas` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jurusan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `table_products`
--

CREATE TABLE IF NOT EXISTS `table_products` (
`id` int(10) unsigned NOT NULL,
  `product_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_color` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `table_siswa`
--

CREATE TABLE IF NOT EXISTS `table_siswa` (
  `nis` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(1) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(12) NOT NULL,
  `id_kelas` int(3) NOT NULL,
  `created_ad` varchar(100) NOT NULL,
  `updated_ad` varchar(13) NOT NULL,
  `foto` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_user`
--

CREATE TABLE IF NOT EXISTS `t_user` (
  `id_login` int(11) NOT NULL,
  `nama_user` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_kelas`
--
ALTER TABLE `table_kelas`
 ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `table_products`
--
ALTER TABLE `table_products`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_siswa`
--
ALTER TABLE `table_siswa`
 ADD PRIMARY KEY (`nis`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `table_kelas`
--
ALTER TABLE `table_kelas`
MODIFY `id_kelas` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `table_products`
--
ALTER TABLE `table_products`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
