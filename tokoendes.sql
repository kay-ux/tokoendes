-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 10, 2020 at 10:48 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokoendes`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangs`
--

CREATE TABLE `barangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stok` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barangs`
--

INSERT INTO `barangs` (`id`, `nama_barang`, `gambar`, `harga`, `stok`, `keterangan`, `created_at`, `updated_at`) VALUES
(4, 'Krupuk Amplang', 'krupuk_amplang.jpeg', '21000', '5700', '', '2020-05-13 17:00:00', '2020-07-10 01:58:38'),
(5, 'Roti Gulung', 'roti_gulung.jpeg', '34000', '875', '', '2020-05-13 17:00:00', '2020-07-09 19:51:40'),
(6, 'Kue Tart', 'tart4.jpeg', '60000', '7647', 'Untuk pemesanan saja. Cantumkan warna, bentuk, atau bisa juga ditambah karakter.', '2020-05-13 17:00:00', '2020-05-16 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_11_14_012420_create_barangs_table', 1),
(4, '2019_11_14_012711_create_pesanans_table', 1),
(5, '2019_11_14_012822_create_pesanan_details_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pesanans`
--

CREATE TABLE `pesanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode` int(11) NOT NULL,
  `jumlah_harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pesanans`
--

INSERT INTO `pesanans` (`id`, `user_id`, `tanggal`, `status`, `kode`, `jumlah_harga`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-07-08', '1', 547, 0, '2020-07-08 03:40:08', '2020-07-08 04:11:52'),
(2, 1, '2020-07-08', '1', 897, 34000, '2020-07-08 04:12:23', '2020-07-08 04:12:27'),
(3, 1, '2020-07-08', '1', 149, 252000, '2020-07-08 04:18:37', '2020-07-08 04:18:42'),
(4, 1, '2020-07-08', '1', 824, 68000, '2020-07-08 07:36:59', '2020-07-08 07:37:19'),
(5, 1, '2020-07-08', '1', 455, 84000, '2020-07-08 12:23:51', '2020-07-09 03:28:54'),
(6, 2, '2020-07-08', '1', 980, 68000, '2020-07-08 13:05:19', '2020-07-08 13:07:56'),
(7, 1, '2020-07-09', '1', 605, 34000, '2020-07-09 12:06:46', '2020-07-09 12:07:04'),
(8, 1, '2020-07-10', '1', 222, 252000, '2020-07-09 19:27:17', '2020-07-09 19:27:23'),
(9, 1, '2020-07-10', '1', 873, 252000, '2020-07-09 19:28:07', '2020-07-09 19:28:13'),
(10, 1, '2020-07-10', '1', 511, 3400000, '2020-07-09 19:29:31', '2020-07-09 19:51:40'),
(11, 3, '2020-07-10', '0', 291, 54000000, '2020-07-09 19:53:54', '2020-07-09 19:53:55'),
(12, 4, '2020-07-10', '1', 487, 462000, '2020-07-10 01:54:56', '2020-07-10 01:58:38');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan_details`
--

CREATE TABLE `pesanan_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `barang_id` int(11) NOT NULL,
  `pesanan_id` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `jumlah_harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pesanan_details`
--

INSERT INTO `pesanan_details` (`id`, `barang_id`, `pesanan_id`, `jumlah`, `jumlah_harga`, `created_at`, `updated_at`) VALUES
(2, 5, 2, 1, 34000, '2020-07-08 04:12:24', '2020-07-08 04:12:24'),
(3, 4, 3, 12, 252000, '2020-07-08 04:18:38', '2020-07-08 04:18:38'),
(4, 5, 4, 2, 68000, '2020-07-08 07:37:00', '2020-07-08 07:37:00'),
(7, 5, 6, 2, 68000, '2020-07-08 13:06:05', '2020-07-08 13:06:05'),
(8, 4, 5, 4, 84000, '2020-07-09 03:28:40', '2020-07-09 03:28:40'),
(9, 5, 7, 1, 34000, '2020-07-09 12:06:46', '2020-07-09 12:06:46'),
(10, 4, 8, 12, 252000, '2020-07-09 19:27:17', '2020-07-09 19:27:17'),
(11, 4, 9, 12, 252000, '2020-07-09 19:28:07', '2020-07-09 19:28:07'),
(13, 5, 10, 100, 3400000, '2020-07-09 19:51:21', '2020-07-09 19:51:21'),
(14, 6, 11, 900, 54000000, '2020-07-09 19:53:55', '2020-07-09 19:53:55'),
(15, 4, 12, 22, 462000, '2020-07-10 01:54:56', '2020-07-10 01:54:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nohp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `alamat`, `nohp`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Irham Rifki Mauludi', 'irham.rm7@gmail.com', NULL, '$2y$10$mLIzlqTaWC/B8zliJK8CFuSK0uUqk0KK6zon1YQJFdJXYmsKUMj0y', 'Jl. Klenang-Pendil', 'irham.rm7@gmail.com', NULL, '2020-07-08 02:49:22', '2020-07-08 04:10:32'),
(4, 'Rifki M', 'rifki@gmail.com', NULL, '$2y$10$knHQnO7ILz2M1SIRWzvlY.knUZduFgsyE1aSOly1YI1ngM8E4tPiW', 'Lamongan', 'irham.rm7@gmail.com', NULL, '2020-07-10 01:52:36', '2020-07-10 01:58:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangs`
--
ALTER TABLE `barangs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `pesanans`
--
ALTER TABLE `pesanans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesanan_details`
--
ALTER TABLE `pesanan_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barangs`
--
ALTER TABLE `barangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pesanans`
--
ALTER TABLE `pesanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pesanan_details`
--
ALTER TABLE `pesanan_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
