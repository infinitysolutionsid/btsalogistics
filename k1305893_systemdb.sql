-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 01, 2019 at 10:19 AM
-- Server version: 10.2.27-MariaDB
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
-- Database: `k1305893_systemdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(12) NOT NULL,
  `category_name` varchar(191) NOT NULL,
  `category_id` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(191) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(191) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `category_id`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Mesin Bubut', 'SWCAT-0001', '2019-08-26 08:11:52', 'Bintang Tobing', '2019-08-26 08:11:52', 'Bintang Tobing'),
(2, 'Baju Anak-Anak', 'SWCAT-002', '2019-08-26 08:12:06', 'Bintang Tobing', '2019-08-26 08:12:06', 'Bintang Tobing'),
(3, 'Hardware', 'SWCAT-003', '2019-08-26 08:12:46', 'Bintang Tobing', '2019-08-26 08:12:46', 'Bintang Tobing');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `item_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_tipe` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint(20) NOT NULL,
  `item_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `item_name`, `item_tipe`, `price`, `item_code`, `qty`, `description`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Flashdisk Toshiba', 'Hardware', 100000, '000099', 10, 'Flashdisk', '2019-08-26 08:13:10', '2019-08-26 08:13:10', NULL, NULL),
(2, 'Alat tulis', 'Hardware', 100000, 'A001', 100, 'Alat', '2019-08-30 08:37:18', '2019-08-30 08:37:18', NULL, NULL),
(3, 'Pulpen', 'Hardware', 1000, '0001', 5, 'Warna hitam', '2019-08-30 08:57:32', '2019-08-30 08:57:32', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jadwalkapal`
--

CREATE TABLE `jadwalkapal` (
  `id` int(10) UNSIGNED NOT NULL,
  `kotaasal` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kotatujuan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vessel` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `voy` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `closingdate` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `etd` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eta` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `legality`
--

CREATE TABLE `legality` (
  `legal_id` int(10) UNSIGNED NOT NULL,
  `legal_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `downloads` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `legality`
--

INSERT INTO `legality` (`legal_id`, `legal_name`, `file`, `downloads`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Company Profile', 'https://btsa.co.id/file/CompanyProfileBTSA2019[UPDATED15AGUSTUS2019]-dikompresi.pdf', '1', 'Guest', 'Guest', '2019-09-03 08:54:13', '2019-09-03 08:54:13');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_02_080417_databasenew', 2),
(4, '2019_09_03_115233_legality', 3),
(5, '2019_09_03_162813_kapal', 4),
(6, '2019_09_03_162922_vesel', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_lengkap` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama_lengkap`, `username`, `email`, `email_verified_at`, `password`, `role`, `status`, `remember_token`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Bintang Jr Tobing', 'admin', 'support@btsa.co.id', NULL, '$2y$10$Ub.TG3UqQSQ.p6g7Y2Q3j.68OobGVcCNz/o0e3CrN2VksG7CaIVUu', 'administrator', 'active', 'yMUXGaAln2XAS9iJFiy1vf6rkwwTTVR0ewrX60b0c0E0B2JLlWIEWn0dqtAE', '2019-11-01 12:39:05', '2019-11-01 12:39:05', 'Guest.', NULL),
(2, 'Moses Malvin', 'malvin', 'malvin@infinitysolutions.co.id', NULL, '$2y$10$gjtiGlJaj9ZFxeRNUAcKRe59.ViPSD7HHInC8UdChZ94jfJmMCU0m', 'administrator', 'active', 'I7hSEzfBfL3cNjVTNQySIwmJ5wwXNSHRE4XIG9HyQ5sN2zSUs7jQ3CYwz0gt', '2019-11-01 13:43:01', '2019-11-01 13:47:59', 'Bintang Jr Tobing', 'Bintang Jr Tobing');

-- --------------------------------------------------------

--
-- Table structure for table `vessel`
--

CREATE TABLE `vessel` (
  `vessel_id` int(10) UNSIGNED NOT NULL,
  `vessel` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vessel`
--

INSERT INTO `vessel` (`vessel_id`, `vessel`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Oriental Jade', 'Bintang J. Tobing', 'Bintang J. Tobing', '2019-09-04 03:57:55', '2019-09-04 04:48:04'),
(2, 'Meratus Jayapura', 'Bintang J. Tobing', 'Bintang J. Tobing', '2019-09-04 03:58:05', '2019-09-04 03:58:05'),
(3, 'Meratus Medan III', 'Bintang J. Tobing', 'Bintang J. Tobing', '2019-09-04 03:58:13', '2019-09-04 03:58:13'),
(4, 'SPIL Nirmala', 'Bintang J. Tobing', 'Bintang J. Tobing', '2019-09-04 03:58:22', '2019-09-04 03:58:22'),
(5, 'Tanto Nusantara', 'Bintang J. Tobing', 'Bintang J. Tobing', '2019-09-04 03:58:35', '2019-09-04 03:58:35'),
(6, 'Tanto Pratama', 'Bintang J. Tobing', 'Bintang J. Tobing', '2019-09-04 03:58:45', '2019-09-04 03:58:45'),
(7, 'Tanto Bersama', 'Bintang J. Tobing', 'Bintang J. Tobing', '2019-09-04 04:00:57', '2019-09-04 04:00:57'),
(8, 'Tanto Setia', 'Bintang J. Tobing', 'Bintang J. Tobing', '2019-09-04 04:01:06', '2019-09-04 04:01:06'),
(9, 'Hijau Samudera', 'Bintang J. Tobing', 'Bintang J. Tobing', '2019-09-04 04:04:47', '2019-09-04 04:04:47'),
(10, 'Meratus Waigeo', 'Bintang J. Tobing', 'Bintang J. Tobing', '2019-09-04 04:04:58', '2019-09-04 04:04:58'),
(11, 'Tanto Bersinar', 'Bintang J. Tobing', 'Bintang J. Tobing', '2019-09-04 04:05:05', '2019-09-04 04:05:05'),
(12, 'Meratus Barito', 'Bintang J. Tobing', 'Bintang J. Tobing', '2019-09-04 04:05:55', '2019-09-04 04:05:55'),
(13, 'Meratus Kalimutu', 'Bintang J. Tobing', 'Bintang J. Tobing', '2019-09-04 04:06:03', '2019-09-04 04:06:03'),
(14, 'Meratus Medan II', 'Bintang J. Tobing', 'Bintang J. Tobing', '2019-09-04 04:06:10', '2019-09-04 04:06:10'),
(15, 'Meratus Malino', 'Bintang J. Tobing', 'Bintang J. Tobing', '2019-09-04 04:06:17', '2019-09-04 04:06:17'),
(16, 'Tanto Berkat', 'Bintang J. Tobing', 'Bintang J. Tobing', '2019-09-04 04:06:24', '2019-09-04 04:06:24'),
(17, 'Tanto Luas', 'Bintang J. Tobing', 'Bintang J. Tobing', '2019-09-04 04:06:31', '2019-09-04 04:06:31'),
(18, 'Meratus Borneo', 'Bintang J. Tobing', 'Bintang J. Tobing', '2019-09-04 04:06:39', '2019-09-04 04:06:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `jadwalkapal`
--
ALTER TABLE `jadwalkapal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `legality`
--
ALTER TABLE `legality`
  ADD PRIMARY KEY (`legal_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vessel`
--
ALTER TABLE `vessel`
  ADD PRIMARY KEY (`vessel_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jadwalkapal`
--
ALTER TABLE `jadwalkapal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `legality`
--
ALTER TABLE `legality`
  MODIFY `legal_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vessel`
--
ALTER TABLE `vessel`
  MODIFY `vessel_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
