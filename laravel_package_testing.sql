-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2022 at 05:13 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_laravel_modules`
--

-- --------------------------------------------------------

--
-- Table structure for table `disciples`
--

CREATE TABLE `disciples` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `disciples`
--

INSERT INTO `disciples` (`id`, `user_id`, `date`, `type`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, '01-03-2022', 'Oral warning', 'test', '2022-03-04 04:07:10', '2022-03-04 04:07:10'),
(2, 2, '01-04-2022', 'Oral warning', 'test', '2022-03-04 04:07:20', '2022-03-04 04:07:20'),
(3, 3, '03-04-2022', 'Warning letter', 'test', '2022-03-04 04:07:35', '2022-03-04 04:07:35'),
(4, 4, '05-03-2022', 'Warning letter', 'test', '2022-03-04 04:07:47', '2022-03-04 04:07:47'),
(5, 5, '07-03-2022', 'Warning letter', 'test', '2022-03-04 04:07:57', '2022-03-04 04:07:57');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_16_054400_create_students_table', 1),
(6, '2022_02_16_055542_Disciple', 2),
(7, '2022_02_17_065324_Score', 3),
(8, '2022_02_16_055529_Permission', 4);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `start_At` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_At` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `user_id`, `start_At`, `end_At`, `type`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, '06-03-2022', '10-03-2022', 'Authorize', 'test', '2022-03-04 04:04:15', '2022-03-04 04:04:15'),
(2, 2, '06-03-2022', '08-03-2022', 'Unauthorize', 'test', '2022-03-04 04:04:31', '2022-03-04 04:06:06'),
(3, 3, '06-03-2022', '10-03-2022', 'Authorize', 'test', '2022-03-04 04:04:41', '2022-03-04 04:04:41'),
(4, 4, '06-03-2022', '11-03-2022', 'Authorize', 'test', '2022-03-04 04:04:53', '2022-03-04 04:04:53'),
(5, 5, '08-03-2022', '12-03-2022', 'Unauthorize', 'test', '2022-03-04 04:05:08', '2022-03-04 04:05:08');

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
(1, 'App\\Models\\User', 1, 'MyToken', '1100a9ce7e79cd74c7dd75c7ab72b9ad14244dd77bd15131e003a9465bfcbfa1', '[\"*\"]', NULL, '2022-03-04 04:00:04', '2022-03-04 04:00:04'),
(2, 'App\\Models\\User', 2, 'MyToken', '103b0d568556860f2410b9832c33b5650496985f2a6f8db50aeb64097cde6acf', '[\"*\"]', NULL, '2022-03-04 04:00:29', '2022-03-04 04:00:29'),
(3, 'App\\Models\\User', 3, 'MyToken', 'fd7a76c21c21329c86a49124cf58cb2a275117b883e77e52434fe566b9c8be7a', '[\"*\"]', NULL, '2022-03-04 04:00:49', '2022-03-04 04:00:49'),
(4, 'App\\Models\\User', 4, 'MyToken', '050e20790e0466eaf4495da845ee6742bfc0c44a3dcf77f7b2d79ef6ee278d8a', '[\"*\"]', NULL, '2022-03-04 04:01:11', '2022-03-04 04:01:11'),
(5, 'App\\Models\\User', 5, 'MyToken', 'a0b3aed82a75dc2effccf5c1d3e31b3f052ca2dcd9d862cb854f79af1b0ff066', '[\"*\"]', NULL, '2022-03-04 04:01:37', '2022-03-04 04:01:37');

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `htmlcss` int(11) NOT NULL,
  `javascript` int(11) NOT NULL,
  `python` int(11) NOT NULL,
  `php` int(11) NOT NULL,
  `laravel` int(11) NOT NULL,
  `java` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`id`, `user_id`, `htmlcss`, `javascript`, `python`, `php`, `laravel`, `java`, `created_at`, `updated_at`) VALUES
(1, 1, 90, 94, 89, 90, 93, 81, '2022-03-04 04:02:09', '2022-03-04 04:02:09'),
(2, 2, 75, 65, 60, 76, 76, 86, '2022-03-04 04:02:42', '2022-03-04 04:02:42'),
(3, 3, 75, 89, 78, 56, 76, 66, '2022-03-04 04:02:56', '2022-03-04 04:02:56'),
(4, 4, 87, 65, 76, 56, 76, 80, '2022-03-04 04:03:15', '2022-03-04 04:03:15'),
(5, 5, 65, 75, 80, 66, 75, 64, '2022-03-04 04:03:39', '2022-03-04 04:03:39');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `user_id`, `first_name`, `last_name`, `class`, `phone`, `gender`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'Lyden', 'Chai', 'WEB-2021 A', 70645336, 'Male', 'oK2zb89vHN75ruLhwklT9ceffujUVEEWfsYIG0CJ.jpg', '2022-03-04 04:09:57', '2022-03-04 04:09:57'),
(2, 2, 'Vantheav', 'Thav', 'WEB-2021 A', 884564841, 'Male', 'QUIuat9JT286No3RDKLqhQgLGxfdUKdeOA3Jp6Ba.png', '2022-03-04 04:10:20', '2022-03-04 04:10:20'),
(3, 3, 'Vicheka', 'Lo', 'WEB-2021 A', 884564841, 'Female', 'rJ8zRXpA8gXjSNdohqRvmmaCefCIdRbYF6ZnK3na.jpg', '2022-03-04 04:10:51', '2022-03-04 04:10:51'),
(4, 4, 'Vun', 'Yin', 'WEB-2021 A', 884564844, 'Female', 'G9CBhZaFnSntfiva7jJgq0ejpxu5emdmUg7UdD1T.png', '2022-03-04 04:11:14', '2022-03-04 04:11:14'),
(5, 5, 'Sopheak', 'Vun', 'WEB-2021 B', 884564488, 'Female', '29RwbQT9wcuIdpQzCE82jzLOYHu7ouKtLzyxBhCm.jpg', '2022-03-04 04:11:43', '2022-03-04 04:11:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Lyden', 'lyden@gmail.com', '$2y$10$5DOgQoEh8amfB6W9cEriDeovzHl/.H6dxN.9M2wwANXPVXucAAXei', 'Pwf3MJdTDv7brjUvdeJZcRZdiB83pxoxPXO2fdBJ.jpg', NULL, '2022-03-04 04:00:04', '2022-03-04 04:00:04'),
(2, 'Vantheav', 'vantheav@gmail.com', '$2y$10$mj8.dGX5V9i9LFx8t/XcWudCVNtdDcLBJrrStdeix4/tG2SUG87ie', '2v3Th2rpNEodsJda93GQiwAMeBJPaOzdU3KlFbVR.png', NULL, '2022-03-04 04:00:29', '2022-03-04 04:00:29'),
(3, 'Vicheka', 'vicheka@gmail.com', '$2y$10$d8KtCP6kXEPUtgvjME8CfuHRw4w.2LP4DS6HR7VrACPd0y0zYJ0Ia', 'qPybcnhkUVmPUz5MDZJ0Vy6wKmrAz1UdwzBzPNZ7.jpg', NULL, '2022-03-04 04:00:49', '2022-03-04 04:00:49'),
(4, 'Vun', 'vun@gmail.com', '$2y$10$ji9tiAKy97CgDQMpeFrHc.LwWJ4R0TMBpO8GjAcfoz3PV1Qw21GSq', 'WbDSMCnwJUx6PSBa6wfJhepig8kB79FF8kpJfdTq.png', NULL, '2022-03-04 04:01:11', '2022-03-04 04:01:11'),
(5, 'Sopheak', 'sopheak@gmail.com', '$2y$10$DZSot3j1u9K5WE1vN90fVurivVwtBcP5btRjrpsaCqt4RDPUd1it2', 'Edztp10rao07jnOTDi6szCTbZUgcu7IsJw1zYbXP.jpg', NULL, '2022-03-04 04:01:37', '2022-03-04 04:01:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `disciples`
--
ALTER TABLE `disciples`
  ADD PRIMARY KEY (`id`),
  ADD KEY `disciples_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_user_id_foreign` (`user_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scores_user_id_foreign` (`user_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `disciples`
--
ALTER TABLE `disciples`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `scores`
--
ALTER TABLE `scores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `disciples`
--
ALTER TABLE `disciples`
  ADD CONSTRAINT `disciples_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `scores`
--
ALTER TABLE `scores`
  ADD CONSTRAINT `scores_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
