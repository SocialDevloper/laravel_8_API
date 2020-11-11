-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2020 at 03:42 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_8_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `name`, `price`, `created_at`, `updated_at`) VALUES
(1, 'computer', 211, '2020-10-23 08:32:49', '2020-10-23 08:32:49'),
(2, 'Mouse', 560, '2020-10-23 08:33:36', '2020-10-23 08:33:36');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `email`, `salary`, `age`, `created_at`, `updated_at`) VALUES
(1, 'Murray McLaughlin', 'kertzmann.wilbert@example.com', 31018, 68, '2020-10-23 09:16:17', '2020-10-23 09:16:17'),
(2, 'Rory Abshire MD', 'halvorson.stephania@example.com', 34357, 87, '2020-10-23 09:16:17', '2020-10-23 09:16:17'),
(3, 'Julien Pacocha', 'nikolaus.berenice@example.com', 70598, 62, '2020-10-23 09:16:17', '2020-10-23 09:16:17'),
(4, 'Virgil Nienow', 'kertzmann.clarabelle@example.org', 89483, 65, '2020-10-23 09:16:18', '2020-10-23 09:16:18'),
(5, 'Geraldine D\'Amore', 'mwill@example.com', 68572, 84, '2020-10-23 09:16:18', '2020-10-23 09:16:18');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_23_132519_create_devices_table', 2),
(5, '2020_10_23_142603_create_members_table', 3),
(6, '2019_12_14_000001_create_personal_access_tokens_table', 4);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 8, 'my-app-token', 'b9a2090daa941210353a35ca6324c28e84a3756eb972f323584cef1261a1a165', '[\"*\"]', '2020-10-30 04:41:15', '2020-10-24 00:23:51', '2020-10-30 04:41:15'),
(2, 'App\\Models\\User', 8, 'my-app-token', 'ca84cf9b4ec9c747b9f4a9864f73bcf4bef0381e2002b0fe180a4c332278d395', '[\"*\"]', NULL, '2020-10-24 00:32:12', '2020-10-24 00:32:12'),
(3, 'App\\Models\\User', 8, 'my-app-token', '6f46a0ca32bc18c343af6ada4c34d8a195473c8e5ec724e7bc02cfce41a49b61', '[\"*\"]', '2020-10-24 00:40:24', '2020-10-24 00:40:06', '2020-10-24 00:40:24'),
(4, 'App\\Models\\User', 8, 'my-app-token', '79d9c784e83e518963667cc10bc473f38f8e9fe58345345c19962cf50aaaf322', '[\"*\"]', '2020-10-24 00:43:36', '2020-10-24 00:42:51', '2020-10-24 00:43:36'),
(5, 'App\\Models\\User', 8, 'my-app-token', 'e70f28c720b8a78a15f096e379a43a9d22e5a3e11df58b24b0122e04b97c83d7', '[\"*\"]', NULL, '2020-10-30 04:35:28', '2020-10-30 04:35:28'),
(6, 'App\\Models\\User', 8, 'my-app-token', '7b17982d36d1a858f330fc5e1c41ca2691c76d3890bc06ee050fe70263114d3b', '[\"*\"]', NULL, '2020-10-30 04:36:22', '2020-10-30 04:36:22'),
(7, 'App\\Models\\User', 8, 'my-app-token', 'b8f373b0a29ad722259c1aa80e31b965637bdc3ca8ba9d3f157f7adc5e54d1d9', '[\"*\"]', '2020-10-30 04:40:59', '2020-10-30 04:39:53', '2020-10-30 04:40:59'),
(8, 'App\\Models\\User', 8, 'my-app-token', '68bd5cef5fd4cc524ffba0b1983d643dd11a5f4469f34c901b6c8e1ed23a7922', '[\"*\"]', '2020-10-30 04:42:36', '2020-10-30 04:41:21', '2020-10-30 04:42:36'),
(9, 'App\\Models\\User', 8, 'my-app-token', '4b3332a539bbf81121967d101ff8e30a178bf95966d82c8a8aa9995f9e87c7c7', '[\"*\"]', NULL, '2020-10-30 04:42:04', '2020-10-30 04:42:04');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Coleman Huel', 'mara86@example.net', '2020-10-23 03:21:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'q0fAHnHsfe', '2020-10-23 03:21:08', '2020-10-23 03:21:08'),
(2, 'Abbey Connelly DDS', 'xblanda@example.net', '2020-10-23 03:21:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zxNZ0K835X', '2020-10-23 03:21:08', '2020-10-23 03:21:08'),
(3, 'Austen Schuppe', 'kobe.mills@example.com', '2020-10-23 03:21:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GPB6wLRdq9', '2020-10-23 03:21:08', '2020-10-23 03:21:08'),
(4, 'Prof. Lincoln Heaney', 'earnest55@example.org', '2020-10-23 03:21:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Vta1tVaMRD', '2020-10-23 03:21:08', '2020-10-23 03:21:08'),
(5, 'Sarina Hartmann DDS', 'schinner.dewayne@example.com', '2020-10-23 03:21:07', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nriQwPZYKV', '2020-10-23 03:21:08', '2020-10-23 03:21:08'),
(7, 'Gaurav', 'gaurav@gmail.com', NULL, '$2y$10$SSiIY1laA5UOjhYgxR4Z2.vk4ab4WvU2Iek6w4.EciztubLlvRUMu', NULL, '2020-10-23 06:24:34', '2020-10-23 07:08:30'),
(8, 'Mitesh', 'mitesh123@yopmail.com', NULL, '$2y$10$wVSlnzeFWQy2.hgGUeEGAOr.za82cTHtxWWalZLi7upHZbyAgKQGS', NULL, '2020-10-24 00:13:16', '2020-10-24 00:13:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `members_email_unique` (`email`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
