-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 20, 2025 at 04:44 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ci4_surya`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int NOT NULL,
  `batch` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2025-05-07-105655', 'App\\Database\\Migrations\\User', 'default', 'App', 1746615568, 1),
(2, '2025-05-07-105720', 'App\\Database\\Migrations\\Product', 'default', 'App', 1746615568, 1),
(3, '2025-05-07-105732', 'App\\Database\\Migrations\\Transaction', 'default', 'App', 1746615568, 1),
(4, '2025-05-07-105738', 'App\\Database\\Migrations\\TransactionDetail', 'default', 'App', 1746615568, 1),
(5, '2025-05-07-111044', 'App\\Database\\Migrations\\ProductCategory', 'default', 'App', 1746616574, 2);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` double NOT NULL,
  `jumlah` int NOT NULL,
  `foto` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `nama`, `harga`, `jumlah`, `foto`, `created_at`, `updated_at`) VALUES
(4, 'Honda Beat', 17000000, 10, 'honda_beat.jpg', '2025-05-07 11:59:47', NULL),
(5, 'Yamaha NMAX', 30000000, 8, 'yamaha_nmax.jpg', '2025-05-07 11:59:47', NULL),
(6, 'Suzuki GSX-R150', 29000000, 6, 'suzuki_gsx_r150.jpg', '2025-05-07 11:59:47', NULL),
(7, 'Kawasaki Ninja 250', 64000000, 5, 'kawasaki_ninja_250.jpg', '2025-05-07 11:59:47', NULL),
(8, 'Vespa Primavera', 45000000, 7, 'vespa_primavera.jpg', '2025-05-07 11:59:47', NULL),
(9, 'Honda PCX', 32000000, 9, 'honda_pcx.jpg', '2025-05-07 11:59:47', NULL),
(10, 'Yamaha Aerox', 25000000, 12, 'yamaha_aerox.jpg', '2025-05-07 11:59:47', NULL),
(11, 'Suzuki Satria F150', 24000000, 15, 'suzuki_satria_f150.jpg', '2025-05-07 11:59:47', NULL),
(12, 'KTM Duke 200', 37000000, 4, 'ktm_duke_200.jpg', '2025-05-07 11:59:47', NULL),
(13, 'BMW G310R', 85000000, 3, 'bmw_g310r.jpg', '2025-05-07 11:59:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `deskripsi` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `nama_kategori`, `deskripsi`, `created_at`, `updated_at`) VALUES
(4, 'Motor Sport', 'Kategori untuk motor sport dengan performa tinggi.', '2025-05-07 12:03:03', '2025-05-07 12:03:03'),
(5, 'Motor Bebek', 'Kategori untuk motor bebek yang praktis dan ekonomis.', '2025-05-07 12:03:03', '2025-05-07 12:03:03'),
(6, 'Motor Listrik', 'Kategori untuk motor listrik yang ramah lingkungan.', '2025-05-07 12:03:03', '2025-05-07 12:03:03');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `total_harga` double NOT NULL,
  `alamat` text NOT NULL,
  `ongkir` double DEFAULT NULL,
  `status` int NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_detail`
--

CREATE TABLE `transaction_detail` (
  `id` int UNSIGNED NOT NULL,
  `transaction_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `jumlah` int NOT NULL,
  `diskon` double DEFAULT NULL,
  `subtotal_harga` double NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'msiregar', 'vanya.widiastuti@wahyuni.net', '$2y$10$amsVJGWj3MLinzGOU2XY4e71Oi7GJClUByng/c.HSQ8Iw2wgnGdc6', 'guest', '2025-05-07 11:07:32', NULL),
(2, 'jmulyani', 'rini54@gmail.com', '$2y$10$RXRBc08AjapI.azDiXkWLuouFIs3ZeNbKLDXA0c0qxfMFFO9BEevu', 'guest', '2025-05-07 11:07:32', NULL),
(3, 'rachel.firgantoro', 'vega.yuliarti@gmail.co.id', '$2y$10$cw.2cG8JxkkvMO/mq9Oqe.FqCXTI74s0uXVVOBPwcjTm.Sjj.DC1C', 'admin', '2025-05-07 11:07:32', NULL),
(4, 'jelita05', 'psuartini@gmail.com', '$2y$10$15jlokPkInow1Hlr2VV49Oyx2tBLpLE3UdFuAHc8eSju1vbV6/8gm', 'admin', '2025-05-07 11:07:32', NULL),
(5, 'bakianto.budiyanto', 'hrahimah@astuti.id', '$2y$10$.BEdB9vRCbbh3MzyVxPFuupcOXP2Engjx4NgLhqXAJB4nrMa6B6G.', 'admin', '2025-05-07 11:07:32', NULL),
(6, 'garda.yulianti', 'danang93@rahayu.go.id', '$2y$10$.Wg26H2N.8KDvVuuBBUOPuNLGHTIIaJM/1SQh3cu76l4JSC3rUYOK', 'admin', '2025-05-07 11:07:32', NULL),
(7, 'betania37', 'permadi.sadina@yahoo.com', '$2y$10$jwZcwqZzCtQE5yTVfp0jOujm6dgEDk6NK17TCwIc03iSXuscX04ui', 'admin', '2025-05-07 11:07:32', NULL),
(8, 'idamanik', 'lala.nugroho@adriansyah.web.id', '$2y$10$5TyqkkkXmoTsSEWYtyHl6uYe90/DIpYHS1VSGFx5p1cASsxHwRz4y', 'guest', '2025-05-07 11:07:33', NULL),
(9, 'hwidiastuti', 'emin.puspasari@maryati.co', '$2y$10$PrgpOpsqzU7ild02EK47JeaXlQj.kmsYBYWbxUN7sy8afTn7DO/Wy', 'guest', '2025-05-07 11:07:33', NULL),
(10, 'umar62', 'soleh.sihombing@laksmiwati.com', '$2y$10$7ZrNfTqQacXigpGBbQqMrupxZsv1xfkj.rnMZlPb25Dt5tv3dF.KK', 'admin', '2025-05-07 11:07:33', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
