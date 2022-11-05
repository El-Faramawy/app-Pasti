-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2022 at 05:53 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app_pasti`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password_reset` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `image`, `phone`, `email_verified_at`, `password_reset`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ahmed Samir', 'admin@admin.com', 'storage/admin/WUFpF8IHpZgjUSvnAIOQK2s8eRcLum8e6l9eGSJO.png', '01026638997', NULL, NULL, '$2y$10$s7GZm.TvenmVSTL5tB7U2eyQDz9d8ep1PJv5shkmGH.a7JD9peP4C', NULL, NULL, '2022-10-29 18:44:57'),
(6, 'admin', 'admin2@admin.com', 'storage/admin/WUFpF8IHpZgjUSvnAIOQK2s8eRcLum8e6l9eGSJO.png', '01026638997', NULL, NULL, '$2y$10$/W9CrlJEyDd9K.9YBNqFVuWcH/XiKfDNoKq2qvPi6akwNWt4QP38.', NULL, NULL, '2022-10-29 18:41:35');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `permission_id`, `admin_id`, `created_at`, `updated_at`) VALUES
(12, 1, 17, '2022-09-02 18:59:12', '2022-09-02 18:59:12'),
(13, 2, 17, '2022-09-02 18:59:12', '2022-09-02 18:59:12'),
(14, 3, 17, '2022-09-02 18:59:12', '2022-09-02 18:59:12'),
(15, 4, 17, '2022-09-02 18:59:12', '2022-09-02 18:59:12'),
(16, 5, 17, '2022-09-02 18:59:12', '2022-09-02 18:59:12'),
(17, 6, 17, '2022-09-02 18:59:12', '2022-09-02 18:59:12'),
(18, 7, 17, '2022-09-02 18:59:12', '2022-09-02 18:59:12'),
(19, 8, 17, '2022-09-02 18:59:12', '2022-09-02 18:59:12'),
(20, 9, 17, '2022-09-02 18:59:12', '2022-09-02 18:59:12'),
(21, 10, 17, '2022-09-02 18:59:12', '2022-09-02 18:59:12'),
(22, 16, 17, '2022-09-02 18:59:12', '2022-09-02 18:59:12'),
(23, 17, 17, '2022-09-02 18:59:12', '2022-09-02 18:59:12'),
(75, 1, 18, '2022-10-26 09:18:20', '2022-10-26 09:18:20'),
(76, 2, 18, '2022-10-26 09:18:20', '2022-10-26 09:18:20'),
(77, 3, 18, '2022-10-26 09:18:20', '2022-10-26 09:18:20'),
(78, 4, 18, '2022-10-26 09:18:20', '2022-10-26 09:18:20'),
(79, 1, 6, '2022-10-29 18:41:36', '2022-10-29 18:41:36'),
(80, 2, 6, '2022-10-29 18:41:36', '2022-10-29 18:41:36'),
(81, 3, 6, '2022-10-29 18:41:36', '2022-10-29 18:41:36'),
(82, 4, 6, '2022-10-29 18:41:36', '2022-10-29 18:41:36'),
(83, 5, 6, '2022-10-29 18:41:36', '2022-10-29 18:41:36'),
(84, 7, 6, '2022-10-29 18:41:36', '2022-10-29 18:41:36'),
(85, 9, 6, '2022-10-29 18:41:36', '2022-10-29 18:41:36'),
(86, 10, 6, '2022-10-29 18:41:36', '2022-10-29 18:41:36'),
(87, 11, 6, '2022-10-29 18:41:36', '2022-10-29 18:41:36'),
(88, 12, 6, '2022-10-29 18:41:36', '2022-10-29 18:41:36'),
(89, 13, 6, '2022-10-29 18:41:36', '2022-10-29 18:41:36'),
(90, 14, 6, '2022-10-29 18:41:36', '2022-10-29 18:41:36'),
(91, 15, 6, '2022-10-29 18:41:36', '2022-10-29 18:41:36'),
(92, 16, 6, '2022-10-29 18:41:36', '2022-10-29 18:41:36'),
(93, 19, 6, '2022-10-29 18:41:37', '2022-10-29 18:41:37'),
(94, 20, 6, '2022-10-29 18:41:37', '2022-10-29 18:41:37'),
(95, 21, 6, '2022-10-29 18:41:37', '2022-10-29 18:41:37'),
(96, 22, 6, '2022-10-29 18:41:37', '2022-10-29 18:41:37'),
(97, 39, 6, '2022-10-29 18:41:37', '2022-10-29 18:41:37'),
(98, 40, 6, '2022-10-29 18:41:37', '2022-10-29 18:41:37'),
(99, 41, 6, '2022-10-29 18:41:37', '2022-10-29 18:41:37'),
(100, 42, 6, '2022-10-29 18:41:37', '2022-10-29 18:41:37'),
(101, 52, 6, '2022-10-29 18:41:37', '2022-10-29 18:41:37'),
(102, 53, 6, '2022-10-29 18:41:37', '2022-10-29 18:41:37'),
(103, 23, 6, '2022-10-29 18:41:37', '2022-10-29 18:41:37'),
(104, 24, 6, '2022-10-29 18:41:37', '2022-10-29 18:41:37'),
(105, 25, 6, '2022-10-29 18:41:37', '2022-10-29 18:41:37'),
(106, 26, 6, '2022-10-29 18:41:37', '2022-10-29 18:41:37'),
(107, 51, 6, '2022-10-29 18:41:37', '2022-10-29 18:41:37'),
(108, 1, 1, '2022-10-29 18:44:57', '2022-10-29 18:44:57'),
(109, 2, 1, '2022-10-29 18:44:57', '2022-10-29 18:44:57'),
(110, 3, 1, '2022-10-29 18:44:57', '2022-10-29 18:44:57'),
(111, 4, 1, '2022-10-29 18:44:57', '2022-10-29 18:44:57'),
(112, 5, 1, '2022-10-29 18:44:57', '2022-10-29 18:44:57'),
(113, 7, 1, '2022-10-29 18:44:57', '2022-10-29 18:44:57'),
(114, 9, 1, '2022-10-29 18:44:57', '2022-10-29 18:44:57'),
(115, 10, 1, '2022-10-29 18:44:57', '2022-10-29 18:44:57'),
(116, 11, 1, '2022-10-29 18:44:57', '2022-10-29 18:44:57'),
(117, 12, 1, '2022-10-29 18:44:57', '2022-10-29 18:44:57'),
(118, 13, 1, '2022-10-29 18:44:57', '2022-10-29 18:44:57'),
(119, 14, 1, '2022-10-29 18:44:57', '2022-10-29 18:44:57'),
(120, 15, 1, '2022-10-29 18:44:57', '2022-10-29 18:44:57'),
(121, 16, 1, '2022-10-29 18:44:57', '2022-10-29 18:44:57'),
(122, 19, 1, '2022-10-29 18:44:57', '2022-10-29 18:44:57'),
(123, 20, 1, '2022-10-29 18:44:57', '2022-10-29 18:44:57'),
(124, 21, 1, '2022-10-29 18:44:57', '2022-10-29 18:44:57'),
(125, 22, 1, '2022-10-29 18:44:58', '2022-10-29 18:44:58'),
(126, 39, 1, '2022-10-29 18:44:58', '2022-10-29 18:44:58'),
(127, 40, 1, '2022-10-29 18:44:58', '2022-10-29 18:44:58'),
(128, 41, 1, '2022-10-29 18:44:58', '2022-10-29 18:44:58'),
(129, 42, 1, '2022-10-29 18:44:58', '2022-10-29 18:44:58'),
(130, 52, 1, '2022-10-29 18:44:58', '2022-10-29 18:44:58'),
(131, 53, 1, '2022-10-29 18:44:58', '2022-10-29 18:44:58'),
(132, 23, 1, '2022-10-29 18:44:58', '2022-10-29 18:44:58'),
(133, 24, 1, '2022-10-29 18:44:58', '2022-10-29 18:44:58'),
(134, 25, 1, '2022-10-29 18:44:58', '2022-10-29 18:44:58'),
(135, 26, 1, '2022-10-29 18:44:58', '2022-10-29 18:44:58'),
(136, 51, 1, '2022-10-29 18:44:58', '2022-10-29 18:44:58');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `school_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `user_id`, `school_id`, `name`, `mail`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, 'a@a.com', 'test contact', 'test contact message', '2022-10-22 10:28:10', '2022-10-22 10:28:10'),
(2, NULL, 2, NULL, 'a@a.com', 'test contact', 'test contact message', '2022-10-22 10:28:32', '2022-10-22 10:28:32');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('menu','addition') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'menu',
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `image`, `type`, `date`, `created_at`, `updated_at`) VALUES
(1, 'menu meal 1', 'uploads/school/84001666438565.jpg', 'menu', '2022-11-03', NULL, '2022-10-31 08:33:02'),
(2, 'menu meal 2', 'uploads/school/84001666438565.jpg', 'menu', '2022-11-04', NULL, '2022-10-31 08:32:50'),
(3, 'menu addition 1', 'uploads/school/84001666438565.jpg', 'addition', '2022-11-04', NULL, '2022-10-31 08:33:11'),
(4, 'menu addition 2', 'uploads/school/84001666438565.jpg', 'addition', '2022-11-01', NULL, '2022-10-31 08:33:20'),
(5, 'test addition', 'uploads/menu/37571666907404.png', 'addition', '2022-11-02', '2022-10-27 19:50:04', '2022-10-31 08:30:26'),
(6, 'test addition1', 'uploads/menu/42451666908507.jpg', 'addition', '2022-11-01', '2022-10-27 19:50:31', '2022-10-31 08:16:05'),
(9, 'meallllll', 'uploads/menu/26341667211351.jpg', 'menu', '2022-10-31', '2022-10-31 08:15:51', '2022-10-31 08:15:51');

-- --------------------------------------------------------

--
-- Table structure for table `menu_details`
--

CREATE TABLE `menu_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_details`
--

INSERT INTO `menu_details` (`id`, `menu_id`, `name`, `created_at`, `updated_at`) VALUES
(13, 9, 'details', '2022-10-31 08:15:52', '2022-10-31 08:15:52'),
(14, 1, 'meat dish', '2022-10-31 08:33:02', '2022-10-31 08:33:02'),
(15, 1, 'salad', '2022-10-31 08:33:02', '2022-10-31 08:33:02'),
(16, 3, 'juice', '2022-10-31 08:33:11', '2022-10-31 08:33:11'),
(17, 3, 'orange', '2022-10-31 08:33:11', '2022-10-31 08:33:11');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2022_07_22_035012_create_schools_table', 1),
(2, '2022_08_10_201958_create_users_table', 1),
(3, '2022_08_10_202104_create_notifications_table', 1),
(4, '2022_08_10_202218_create_orders_table', 1),
(5, '2022_08_10_202255_create_settings_table', 1),
(6, '2022_08_10_202310_create_contacts_table', 1),
(7, '2022_10_22_040516_create_menus_table', 1),
(8, '2022_10_22_040547_create_menu_details_table', 1),
(9, '2022_10_22_041200_create_school_menus_table', 1),
(10, '2022_10_22_202756_create_order_details_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `school_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `school_id`, `title`, `message`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 5, NULL, 'aa', 'aaaaaaa', 1, NULL, '2022-10-25 20:28:36'),
(2, NULL, 6, 'aa', 'aaaaaaa', 0, NULL, '2022-10-22 11:34:26'),
(3, 1, NULL, 'test notification', 'test notification content', 0, '2022-10-26 09:42:09', '2022-10-26 09:42:09'),
(4, 5, NULL, 'test notification', 'test notification content', 0, '2022-10-26 09:42:09', '2022-10-26 09:42:09'),
(5, 5, 1, 'test notification', 'test notification content', 0, '2022-10-26 09:42:09', '2022-10-26 09:42:09'),
(6, 1, NULL, 'Quis fuga Et quidem', 'Temporibus illum ad', 0, '2022-10-26 09:42:54', '2022-10-26 09:42:54'),
(7, 1, NULL, 't', 'ssssssssssssss', 0, '2022-10-26 09:45:27', '2022-10-26 09:45:27'),
(8, 5, NULL, 't', 'ssssssssssssss', 0, '2022-10-26 09:45:27', '2022-10-26 09:45:27'),
(9, NULL, 1, 't', 'ssssssssssssss', 0, '2022-10-26 09:45:27', '2022-10-26 09:45:27'),
(10, 5, NULL, 'تم تغيير حالة طلبك', 'طلبك رقم 23 جارى التحضير', 0, '2022-10-28 13:58:37', '2022-10-28 13:58:37'),
(11, 5, NULL, 'تجربة', 'تجربة تجربة', 0, '2022-10-29 16:44:25', '2022-10-29 16:44:25'),
(12, 6, NULL, 'تجربة', 'تجربة تجربة', 0, '2022-10-29 16:44:25', '2022-10-29 16:44:25'),
(13, 5, NULL, 'تجربة', 'تجربة تجربة', 0, '2022-10-29 16:44:25', '2022-10-29 16:44:25'),
(14, 6, NULL, 'تجربة', 'تجربة تجربة', 0, '2022-10-29 16:44:26', '2022-10-29 16:44:26'),
(15, 6, NULL, 'ش', 'شش', 0, '2022-10-29 16:46:14', '2022-10-29 16:46:14'),
(16, 6, NULL, 'شسس', 'س', 0, '2022-10-29 16:46:50', '2022-10-29 16:46:50'),
(17, 5, NULL, 'a', 'aa', 0, '2022-10-29 16:47:29', '2022-10-29 16:47:29'),
(18, 6, NULL, 'a', 'aa', 0, '2022-10-29 16:47:29', '2022-10-29 16:47:29'),
(19, 5, NULL, 'test', 'testttttttttt', 0, '2022-10-29 16:48:10', '2022-10-29 16:48:10'),
(20, 6, NULL, 'test', 'testttttttttt', 0, '2022-10-29 16:48:10', '2022-10-29 16:48:10'),
(21, NULL, 5, 'test', 'testttttttttt', 0, '2022-10-29 16:48:11', '2022-10-29 16:48:11'),
(22, NULL, 6, 'test', 'testttttttttt', 0, '2022-10-29 16:48:11', '2022-10-29 16:48:11'),
(23, 5, NULL, 'تجربة', 'تجربة رسالة', 0, '2022-10-29 16:53:50', '2022-10-29 16:53:50'),
(24, 6, NULL, 'تجربة', 'تجربة رسالة', 0, '2022-10-29 16:53:50', '2022-10-29 16:53:50'),
(25, NULL, 5, 'تجربة', 'تجربة رسالة', 0, '2022-10-29 16:53:51', '2022-10-29 16:53:51'),
(26, NULL, 6, 'تجربة', 'تجربة رسالة', 0, '2022-10-29 16:53:51', '2022-10-29 16:53:51'),
(27, 5, NULL, 'a', 'aa', 0, '2022-10-29 16:54:02', '2022-10-29 16:54:02'),
(28, 6, NULL, 'a', 'aa', 0, '2022-10-29 16:54:02', '2022-10-29 16:54:02'),
(29, NULL, 5, 'a', 'aa', 0, '2022-10-29 16:54:02', '2022-10-29 16:54:02'),
(30, NULL, 6, 'a', 'aa', 0, '2022-10-29 16:54:03', '2022-10-29 16:54:03'),
(31, 5, NULL, 'تجربة', 'تجربة رسالة', 0, '2022-10-29 16:56:13', '2022-10-29 16:56:13'),
(32, 6, NULL, 'تجربة', 'تجربة رسالة', 0, '2022-10-29 16:56:14', '2022-10-29 16:56:14'),
(33, NULL, 1, 'تجربة', 'تجربة رسالة', 0, '2022-10-29 16:56:14', '2022-10-29 16:56:14'),
(34, NULL, 10, 'تجربة', 'تجربة رسالة', 0, '2022-10-29 16:56:14', '2022-10-29 16:56:14'),
(35, 5, NULL, 'sa', 'saaa', 0, '2022-10-29 17:08:09', '2022-10-29 17:08:09'),
(36, 6, NULL, 'sa', 'saaa', 0, '2022-10-29 17:08:09', '2022-10-29 17:08:09'),
(37, NULL, 1, 'sa', 'saaa', 0, '2022-10-29 17:08:10', '2022-10-29 17:08:10'),
(38, NULL, 10, 'sa', 'saaa', 0, '2022-10-29 17:08:10', '2022-10-29 17:08:10'),
(39, 6, NULL, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 0, '2022-10-29 17:42:43', '2022-10-29 17:42:43'),
(40, 5, NULL, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 0, '2022-10-29 17:48:48', '2022-10-29 17:48:48'),
(41, NULL, 6, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 0, '2022-10-29 17:48:48', '2022-10-29 17:48:48'),
(42, 5, NULL, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata annullata', 0, '2022-10-29 17:49:05', '2022-10-29 17:49:05'),
(43, NULL, 6, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata annullata', 0, '2022-10-29 17:49:05', '2022-10-29 17:49:05'),
(44, 5, NULL, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è in preparazione', 0, '2022-10-29 17:49:38', '2022-10-29 17:49:38'),
(45, NULL, 6, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è in preparazione', 0, '2022-10-29 17:49:38', '2022-10-29 17:49:38'),
(46, NULL, 2, 'Il tuo messaggio è stato risposto', 'thanks', 0, '2022-10-29 18:05:14', '2022-10-29 18:05:14'),
(47, 1, NULL, 'Il tuo messaggio è stato risposto', 'thanks user1', 0, '2022-10-29 18:05:46', '2022-10-29 18:05:46'),
(48, 6, NULL, 'aa', 'aaa', 0, '2022-10-29 18:47:25', '2022-10-29 18:47:25'),
(49, 3, NULL, 'messaggio di attivazione', 'Il tuo account è stato attivato con successo', 0, '2022-11-03 13:39:07', '2022-11-03 13:39:07');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('new','on_going','ended','canceled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `date` date DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `status`, `date`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'new', '2022-10-23', 5, NULL, '2022-10-29 17:48:05'),
(2, 'canceled', '2022-10-22', 5, NULL, '2022-10-25 20:38:30'),
(3, 'new', '2022-10-23', 5, '2022-10-23 15:20:53', '2022-10-29 17:48:05'),
(4, 'new', '2022-10-23', 5, '2022-10-23 15:21:40', '2022-10-29 17:48:05'),
(5, 'new', '2022-10-23', 5, '2022-10-23 15:24:23', '2022-10-29 17:48:05'),
(6, 'new', '2022-10-23', 5, '2022-10-23 15:24:36', '2022-10-29 17:48:05'),
(7, 'new', '2022-10-23', 5, '2022-10-23 23:34:02', '2022-10-29 17:48:05'),
(8, 'new', '2022-10-23', 5, '2022-10-23 23:34:44', '2022-10-29 17:48:05'),
(9, 'on_going', '2022-10-24', 5, '2022-10-23 23:45:07', '2022-10-29 09:58:01'),
(10, 'on_going', '2022-10-24', 5, '2022-10-24 14:17:29', '2022-10-29 09:58:01'),
(11, 'new', '2022-10-23', 5, '2022-10-24 14:18:09', '2022-10-29 17:48:05'),
(12, 'new', '2022-10-22', 5, '2022-10-24 14:18:28', '2022-10-24 14:18:28'),
(14, 'new', '2022-10-22', 5, '2022-10-24 14:25:09', '2022-10-24 14:25:09'),
(15, 'new', '2022-10-22', 5, '2022-10-24 14:25:51', '2022-10-24 14:25:51'),
(16, 'new', '2022-10-22', 5, '2022-10-24 14:26:16', '2022-10-24 14:26:16'),
(17, 'new', '2022-10-22', 5, '2022-10-24 14:27:20', '2022-10-24 14:27:20'),
(18, 'new', '2022-10-22', 5, '2022-10-24 14:29:15', '2022-10-24 14:29:15'),
(19, 'new', '2022-10-22', 5, '2022-10-24 14:30:01', '2022-10-24 14:30:01'),
(20, 'new', '2022-10-22', 5, '2022-10-24 14:30:26', '2022-10-24 14:30:26'),
(23, 'ended', '2022-10-28', 5, '2022-10-26 08:19:27', '2022-10-29 09:57:47'),
(24, 'on_going', '2022-10-27', 5, '2022-10-26 08:25:00', '2022-10-29 17:49:38');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `menu_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(3, 1, 3, NULL, NULL),
(4, 1, 4, NULL, NULL),
(5, 2, 1, NULL, NULL),
(6, 2, 4, NULL, NULL),
(7, 4, 3, '2022-10-23 15:21:40', '2022-10-23 15:21:40'),
(8, 4, 3, '2022-10-23 15:21:40', '2022-10-23 15:21:40'),
(9, 5, 3, '2022-10-23 15:24:23', '2022-10-23 15:24:23'),
(10, 5, 3, '2022-10-23 15:24:23', '2022-10-23 15:24:23'),
(11, 6, 3, '2022-10-23 15:24:36', '2022-10-23 15:24:36'),
(12, 6, 3, '2022-10-23 15:24:36', '2022-10-23 15:24:36'),
(13, 7, 3, '2022-10-23 23:34:02', '2022-10-23 23:34:02'),
(14, 7, 3, '2022-10-23 23:34:02', '2022-10-23 23:34:02'),
(15, 8, 3, '2022-10-23 23:34:44', '2022-10-23 23:34:44'),
(16, 8, 3, '2022-10-23 23:34:44', '2022-10-23 23:34:44'),
(17, 9, 1, '2022-10-23 23:45:07', '2022-10-23 23:45:07'),
(18, 9, 2, '2022-10-23 23:45:07', '2022-10-23 23:45:07'),
(19, 10, 4, '2022-10-24 14:17:29', '2022-10-24 14:17:29'),
(20, 10, 3, '2022-10-24 14:17:29', '2022-10-24 14:17:29'),
(21, 11, 3, '2022-10-24 14:18:09', '2022-10-24 14:18:09'),
(22, 11, 3, '2022-10-24 14:18:09', '2022-10-24 14:18:09'),
(23, 12, 3, '2022-10-24 14:18:28', '2022-10-24 14:18:28'),
(24, 12, 3, '2022-10-24 14:18:28', '2022-10-24 14:18:28'),
(27, 14, 3, '2022-10-24 14:25:09', '2022-10-24 14:25:09'),
(28, 14, 3, '2022-10-24 14:25:09', '2022-10-24 14:25:09'),
(29, 15, 3, '2022-10-24 14:25:51', '2022-10-24 14:25:51'),
(30, 15, 3, '2022-10-24 14:25:51', '2022-10-24 14:25:51'),
(31, 16, 3, '2022-10-24 14:26:16', '2022-10-24 14:26:16'),
(32, 16, 3, '2022-10-24 14:26:16', '2022-10-24 14:26:16'),
(33, 17, 3, '2022-10-24 14:27:20', '2022-10-24 14:27:20'),
(34, 17, 3, '2022-10-24 14:27:20', '2022-10-24 14:27:20'),
(35, 18, 3, '2022-10-24 14:29:15', '2022-10-24 14:29:15'),
(36, 18, 3, '2022-10-24 14:29:15', '2022-10-24 14:29:15'),
(37, 19, 3, '2022-10-24 14:30:01', '2022-10-24 14:30:01'),
(38, 19, 3, '2022-10-24 14:30:01', '2022-10-24 14:30:01'),
(39, 20, 3, '2022-10-24 14:30:26', '2022-10-24 14:30:26'),
(40, 20, 3, '2022-10-24 14:30:26', '2022-10-24 14:30:26'),
(45, 23, 3, '2022-10-26 08:19:27', '2022-10-26 08:19:27'),
(46, 23, 3, '2022-10-26 08:19:27', '2022-10-26 08:19:27'),
(47, 24, 3, '2022-10-26 08:25:00', '2022-10-26 08:25:00'),
(48, 24, 3, '2022-10-26 08:25:00', '2022-10-26 08:25:00');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `section_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'mostrare', NULL, NULL),
(2, 1, 'Modificare', NULL, NULL),
(3, 1, 'Elimina', NULL, NULL),
(4, 1, 'Inserisci', NULL, NULL),
(5, 2, 'mostrare', NULL, NULL),
(7, 2, 'Elimina', NULL, NULL),
(9, 2, 'cambiare stato', NULL, NULL),
(10, 2, 'bandire', NULL, NULL),
(11, 3, 'mostrare', NULL, NULL),
(12, 3, 'Modificare', NULL, NULL),
(13, 3, 'Elimina', NULL, NULL),
(14, 3, 'Inserisci', NULL, NULL),
(15, 3, 'cambiare stato', NULL, NULL),
(16, 3, 'bandire', NULL, NULL),
(19, 5, 'mostrare', NULL, NULL),
(20, 5, 'rispondere', NULL, NULL),
(21, 5, 'Elimina', NULL, NULL),
(22, 6, 'Modificare', NULL, NULL),
(23, 14, 'mostrare', NULL, NULL),
(24, 14, 'Modificare', NULL, NULL),
(25, 14, 'Elimina', NULL, NULL),
(26, 14, 'Inserisci', NULL, NULL),
(39, 11, 'mostrare', NULL, NULL),
(40, 11, 'Elimina', NULL, NULL),
(41, 11, 'cambiare stato', NULL, NULL),
(42, 12, 'Inserisci', NULL, NULL),
(51, 15, 'mostrare', NULL, NULL),
(52, 13, 'mostrare', NULL, NULL),
(53, 13, 'cambiare stato', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_sections`
--

CREATE TABLE `permission_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permission_sections`
--

INSERT INTO `permission_sections` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Supervisori', NULL, NULL),
(2, 'Gli studenti', NULL, NULL),
(3, 'scuole', NULL, NULL),
(5, 'Messaggi di comunicazione', NULL, NULL),
(6, 'Impostazioni', NULL, NULL),
(11, 'Ordini', NULL, NULL),
(12, 'notifiche', NULL, NULL),
(13, 'Richieste scolastiche', NULL, NULL),
(14, 'pasti', NULL, NULL),
(15, 'Statistiche principali', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `phone_token`
--

CREATE TABLE `phone_token` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `school_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` enum('ios','android') COLLATE utf8mb4_unicode_ci DEFAULT 'android',
  `phone_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phone_token`
--

INSERT INTO `phone_token` (`id`, `user_id`, `school_id`, `type`, `phone_token`, `created_at`, `updated_at`) VALUES
(12, 1, NULL, 'android', 'aaaaaaaaaaaaaaaaaaaaaaaaa', '2022-01-27', '2022-01-27'),
(14, NULL, 1, 'ios', '1234aaaaaaaaaaaaaaaaaaaaa', '2022-10-22', '2022-10-22'),
(15, NULL, 1, 'ios', '1234aaaaaaaaaaaaaaaaaaaa', '2022-10-22', '2022-10-22'),
(16, NULL, 1, 'android', '12344444444444444', '2022-10-25', '2022-10-25'),
(18, 6, NULL, 'android', '11', '2022-10-25', '2022-10-25'),
(19, NULL, 1, 'android', '1', '2022-10-26', '2022-10-26');

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0041',
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `is_active` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `is_read` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `name`, `image`, `phone`, `phone_code`, `code`, `address`, `block`, `is_active`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 'school 1', NULL, '1234', '+20', '1234', 'test address', 'no', 'yes', 'yes', NULL, '2022-10-27 17:41:12'),
(2, 'ahmed samir', 'uploads/school/84001666438565.jpg', '123456789797', '0041', '307202', 'test address', 'no', 'no', 'yes', '2022-10-22 09:36:05', '2022-10-27 17:41:12'),
(3, 'ahmed samir', 'uploads/school/27471666438603.jpg', '123456789797', '0041', '565992', 'test address', 'no', 'no', 'yes', '2022-10-22 09:36:43', '2022-10-27 17:41:12'),
(4, 'ahmed samir', 'uploads/school/30381666438624.jpg', '123456789797', '0041', '624830', 'test address', 'no', 'no', 'yes', '2022-10-22 09:37:04', '2022-10-27 17:41:12'),
(5, 'ahmed samir', 'uploads/school/50371666438687.jpg', '1234567890', '0041', '220011', 'test address', 'no', 'no', 'yes', '2022-10-22 09:38:07', '2022-10-27 17:41:12'),
(6, 'ahmed samirrrr', 'uploads/school/61731666441018.jpg', '12345678910', '0041', '161165', 'testttttttttttttt', 'yes', 'yes', 'yes', '2022-10-22 10:12:04', '2022-10-27 17:58:17'),
(9, 'Ahmed Samir', 'uploads/school/27291666901705.png', '01004834728', '0041', '927946', 'egypt , menofia,batanoun', 'no', 'no', 'yes', '2022-10-27 18:15:05', '2022-10-27 18:15:06'),
(10, 'Ahmed Samir1', 'uploads/school/52981666902185.png', '010048347281', '0041', '240739', 'egypt , menofia,batanoun1', 'no', 'yes', 'yes', '2022-10-27 18:15:40', '2022-10-27 18:23:05');

-- --------------------------------------------------------

--
-- Table structure for table `school_menus`
--

CREATE TABLE `school_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `school_id` bigint(20) UNSIGNED DEFAULT NULL,
  `menu_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `school_menus`
--

INSERT INTO `school_menus` (`id`, `school_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(23, 3, 9, '2022-10-31 08:15:52', '2022-10-31 08:15:52'),
(24, 1, 6, '2022-10-31 08:16:05', '2022-10-31 08:16:05'),
(25, 2, 6, '2022-10-31 08:16:05', '2022-10-31 08:16:05'),
(26, 6, 6, '2022-10-31 08:16:05', '2022-10-31 08:16:05'),
(27, 1, 2, '2022-10-31 08:32:50', '2022-10-31 08:32:50'),
(28, 6, 1, '2022-10-31 08:33:02', '2022-10-31 08:33:02'),
(29, 6, 3, '2022-10-31 08:33:11', '2022-10-31 08:33:11'),
(30, 1, 4, '2022-10-31 08:33:20', '2022-10-31 08:33:20');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_time` time DEFAULT NULL,
  `terms` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fav_icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `order_time`, `terms`, `logo`, `fav_icon`, `created_at`, `updated_at`) VALUES
(1, '09:00:00', '<div class=\"links p-5\" style=\"margin: 0px; outline: none; color: rgb(33, 37, 41); font-size: 16px; padding: 3rem !important;\"><ul class=\"padl-15\" style=\"margin: 0px 0px 1rem; padding-left: 2rem; outline: none;\"><li style=\"margin: 0px; padding: 0px; outline: none;\"><a href=\"http://localhost/El-Premo/public/terms#1\" style=\"margin: 0px; padding: 0px; outline: none; color: rgb(13, 110, 253);\">(1) مقدمة</a></li><li style=\"margin: 0px; padding: 0px; outline: none;\"><a href=\"http://localhost/El-Premo/public/terms#2\" style=\"margin: 0px; padding: 0px; outline: none; color: rgb(13, 110, 253);\">(2) الشروط و الاحكام</a></li><li style=\"margin: 0px; padding: 0px; outline: none;\"><a href=\"http://localhost/El-Premo/public/terms#3\" style=\"margin: 0px; padding: 0px; outline: none; color: rgb(13, 110, 253);\">(3) من نحن</a></li><li style=\"margin: 0px; padding: 0px; outline: none;\"><a href=\"http://localhost/El-Premo/public/terms#4\" style=\"margin: 0px; padding: 0px; outline: none; color: rgb(13, 110, 253);\">(4) الحسابك والتزامات التسجيل</a></li></ul></div><div class=\"heading-para p-2\" style=\"margin: 0px; outline: none; color: rgb(33, 37, 41); font-size: 16px;\"><h5 id=\"1\" style=\"font-family: Cairo, sans-serif; margin-right: 0px; margin-bottom: 30px; margin-left: 0px; padding: 0px; outline: none; font-weight: bold; line-height: 1.2; font-size: 1.25rem;\">(1) مقدمة :</h5><div>أهلاً بكم مع البريمو، فيما يلي البنود والشروط التي تخص إستخدامك و دخولك لصفحات موقع \"<span style=\"margin: 0px; padding: 0px; outline: none;\">&nbsp;البريمو&nbsp;</span>\"&nbsp; وكافة الصفحات و الروابط والأدوات والخواص المتفرعة عنها. إن إستخدامك لموقع البريمو&nbsp;هو موافقة منك على القبول ببنود وشروط هذه الإتفاقية والذي يتضمن كافة التفاصيل أدناه وهو تأكيد لإلتزامك بالاستجابة لمضمون هذه الإتفاقية الخاصة بشركة البريمو&nbsp; والمشار إليه فيما يلي بإسم \"نحن\" والمشار إليه إيضا بـ\"<span style=\"margin: 0px; padding: 0px; outline: none;\">البريمو&nbsp;</span>\"، فيما يتعلق باستخدامك للموقع، والمشار إليه فيما يلي بـ \"اتفاقية الإستخدام \" وتعتبر هذه الإتفاقية سارية المفعول حال قبولك بخيار الموافقة</div><h5 id=\"2\" style=\"font-family: Cairo, sans-serif; margin-right: 0px; margin-bottom: 30px; margin-left: 0px; padding: 0px; outline: none; font-weight: bold; line-height: 1.2; font-size: 1.25rem;\">(2) الشروط و الاحكام :</h5><div></div><ul style=\"margin: 0px 0px 1rem; padding-right: 30px; padding-left: 2rem; outline: none;\"><li style=\"margin: 0px; padding: 0px; outline: none;\">سوف يتم تقديم الاستشارة في الوقت المتفق عليه عند حجز طلب وبعد سداد الرسوم.</li><li style=\"margin: 0px; padding: 0px; outline: none;\">إن مجرد الولوج لهذه الخدمة واتباع الخطوات يعتبر موافقة من المشترى على الشروط والأحكام المتعلقة بالخدمة ووفقاً لما يلي:<ul style=\"margin: 0px; padding-right: 30px; padding-left: 2rem; outline: none;\"><li style=\"margin: 0px; padding: 0px; outline: none;\">الموافقة على الرسوم وطريقة الدفع. الرسوم سوف يتم سدادها بالجنيه المصرى.</li><li style=\"margin: 0px; padding: 0px; outline: none;\">الموافقة على نطاق الخدمة.</li><li style=\"margin: 0px; padding: 0px; outline: none;\">موافقة المريض على منح المعلومات المطلوبة سواء شفهياً من خلال الهاتف أو رسالة الكترونية و/أو عبر أي سائل الالكترونية.</li><li style=\"margin: 0px; padding: 0px; outline: none;\">الموافقة على تسجيل الاتصال الصوتي أو الاتصال المرئي لغايات السلامة.</li><li style=\"margin: 0px; padding: 0px; outline: none;\">الموافقة على أن يتم حفظ التاريخ للمشترى لدى السجلات الطلبات في الموقع .</li></ul></li></ul><ul style=\"margin: 0px 0px 1rem; padding-right: 30px; padding-left: 2rem; outline: none;\"><li style=\"margin: 0px; padding: 0px; outline: none;\">كافة المعلومات المقدمة من المشترى تخضع بشكل تام لسياسة موقع العبدلي المتعلقة بالسرية.</li><li style=\"margin: 0px; padding: 0px; outline: none;\"><br></li></ul><div></div><h5 id=\"3\" style=\"font-family: Cairo, sans-serif; margin-right: 0px; margin-bottom: 30px; margin-left: 0px; padding: 0px; outline: none; font-weight: bold; line-height: 1.2; font-size: 1.25rem;\">(3) من نحن :</h5><div>يعتبر الموقع واحداً من المنظومات الصحية الداعمة لتقديم خدمات عالية الجودة وبمساندة أحدث التقنيات الحديثة تبلغ الطاقة الاستيعابية للموقع&nbsp;&nbsp;100طلب وتشتمل الخدمات على الأقسام المتنوعة.<br style=\"margin: 0px; padding: 0px; outline: none;\"><span style=\"color: inherit; font-size: 1.25rem; font-weight: bold;\">(4) الحسابك والتزامات التسجيل :</span></div><div>وكلمة مرور سرية لاستعمالها عند الدخول للموقع. وعند قبول طلب التسجيل ستعتبر عضوا بالموقع وبذلك تكون ، تكون قد وافقت على<br style=\"margin: 0px; padding: 0px; outline: none;\">:<br style=\"margin: 0px; padding: 0px; outline: none;\"><br style=\"margin: 0px; padding: 0px; outline: none;\">1.أن تكون مسؤولاً عن المحافظة على سرية معلومات حسابك وكلمة المرور السرية وتحديد الأشخاص المسموح لهم بالوصول واستخدام حسابك بالموقع. وتكون بذلك موافقاً على إعلام&nbsp;<span style=\"margin: 0px; padding: 0px; outline: none;\">البريمو&nbsp;</span>حالاً بأي استخدام غير مفوض به لكلمة دخولك أو حسابك أو أي اختراق آخر لمعلوماتك السرية.<br style=\"margin: 0px; padding: 0px; outline: none;\"><br style=\"margin: 0px; padding: 0px; outline: none;\">2.لن يكون&nbsp;<span style=\"margin: 0px; padding: 0px; outline: none;\">البريمو&nbsp;</span>بأي حال من الأحوال مسؤولاً عن أي خسارة قد تلحق بك بشكل مباشر أو غير مباشر معنويا أو ماديا نتيجة كشف معلومات إسم المستخدم أو كلمة الدخول<br style=\"margin: 0px; padding: 0px; outline: none;\"><br style=\"margin: 0px; padding: 0px; outline: none;\">3.أنت مسؤول على المحافظة على لإستخدام موقع&nbsp;<span style=\"margin: 0px; padding: 0px; outline: none;\">البريمو&nbsp;</span>بكل جدية و مصداقية وتعتبر ملزما بتعويض&nbsp;<span style=\"margin: 0px; padding: 0px; outline: none;\">البريمو&nbsp;</span>عن أي خسائر مباشرة أو غير مباشرة قد تلحق ب<span style=\"margin: 0px; padding: 0px; outline: none;\">&nbsp;البريمو&nbsp;</span>نتيجة أي استخدام غير شرعي أو حقيقي أو مفوض لحسابك من طرفك أو من<br style=\"margin: 0px; padding: 0px; outline: none;\"><br style=\"margin: 0px; padding: 0px; outline: none;\">طرف أي شخص آخر حصل على مفاتيح الوصول إلى حسابك بالموقع سواء كان لإنجاز خدمات وغيرها باستعمال اسم المستخدم وكلمة الدخول، سواء بتفويض منك أو بلا تفويض.<br style=\"margin: 0px; padding: 0px; outline: none;\"><br style=\"margin: 0px; padding: 0px; outline: none;\">4.أنت موافق على الإفصاح بمعلومات حقيقية وصحيحة و محدثة و كاملة عن نفسك حسبما هو مطلوب في استمارة التسجيل لدى&nbsp;<span style=\"margin: 0px; padding: 0px; outline: none;\">البريمو&nbsp;</span>\"<br style=\"margin: 0px; padding: 0px; outline: none;\"><br style=\"margin: 0px; padding: 0px; outline: none;\">5.أن لا تدرج ضمن بطاقة التسجيل أي من تفاصيل الاتصال بك كعناوين البريد الإلكتروني أو أرقام هواتفك أو أي تفاصيل شخصية، أو كلمة \"سوق\".<br style=\"margin: 0px; padding: 0px; outline: none;\"><br style=\"margin: 0px; padding: 0px; outline: none;\">6.أن لا يتضمن اسم محلك التجاري كلمة \"سوق\" أو شعاره.<br style=\"margin: 0px; padding: 0px; outline: none;\"><br style=\"margin: 0px; padding: 0px; outline: none;\">7.يلتزم&nbsp;<span style=\"margin: 0px; padding: 0px; outline: none;\">البريمو&nbsp;</span>بالتعامل مع معلوماتك الشخصية وعناوين الإتصال بك بسريّة تامة مع الأعضاء الآخرين ويتم تزويد الأعضاء بمعلومات الإتصال بك فقط فور إتمام العمليات التجارية.<br style=\"margin: 0px; padding: 0px; outline: none;\"><br style=\"margin: 0px; padding: 0px; outline: none;\">8.سوف تكون ملزماً بالحفاظ على بيانات التسجيل وتحديثها تباعاً للابقاء عليها حقيقية وصحيحة وراهنة وكاملة، وإذا ما أفصحت عن معلومات غير حقيقية أو غير صحيحة أوغير راهنة أوغير كاملة او مخالفة لما جاء في اتفاقية المستخدم، فإن ل<span style=\"margin: 0px; padding: 0px; outline: none;\">&nbsp;البريمو&nbsp;</span>الحق<br style=\"margin: 0px; padding: 0px; outline: none;\"><br style=\"margin: 0px; padding: 0px; outline: none;\">كاملاً في وقف أو تحديد أو إلغاء عضويتك و حسابك في الموقع، وذلك دون الحاق الأضرار بحقوق&nbsp;<span style=\"margin: 0px; padding: 0px; outline: none;\">البريمو&nbsp;</span>الأخرى ووسائله المشروعة في استرداد حقوقه.<br style=\"margin: 0px; padding: 0px; outline: none;\"><br style=\"margin: 0px; padding: 0px; outline: none;\">9.ل<span style=\"margin: 0px; padding: 0px; outline: none;\">&nbsp;البريمو&nbsp;</span>مطلق الإرادة وفي أي وقت أن يجري أي تحقيقات يراها ضرورية (مباشرة أو عبر طرف ثالث) ويطالبك بالإفصاح عن معلومات إضافية أو وثائق مهما كان حجمها لاثبات هويتك و/أو ملكيتك لأدواتك المالية.<br style=\"margin: 0px; padding: 0px; outline: none;\"><br style=\"margin: 0px; padding: 0px; outline: none;\">10.في حالة أن المقدم لطلب التسجيل يمثل مؤسسة تجارية فلابد من تزويد كافة المعلومات والوثائق المطلوبة التي تتضمن رخصتك التجارية، ووثائق أخرى للمؤسسة و/أو وثائق تظهر مسؤولية أي شخص يتصرف نيابة عنك.<br style=\"margin: 0px; padding: 0px; outline: none;\"><br style=\"margin: 0px; padding: 0px; outline: none;\">11.أنت موافق على تزويد أي معلومات و/أو وثائق ل<span style=\"margin: 0px; padding: 0px; outline: none;\">&nbsp;البريمو&nbsp;</span>في حال طلب منك ذلك.<br style=\"margin: 0px; padding: 0px; outline: none;\"><br style=\"margin: 0px; padding: 0px; outline: none;\">12.في حالة عدم الإلتزام بأي مما ورد إعلاه فإن لإدارة&nbsp;<span style=\"margin: 0px; padding: 0px; outline: none;\">البريمو&nbsp;</span>الحق في إيقاف أو إلغاء عضويتك و حجبك عن الموقع. ونحتفظ كذلك بالحق في إلغاء أي حسابات غير مؤكدة وغير مثبتة أو عمليات أو حسابات مر عليها مدة طويلة دون نشاط.</div></div>', 'uploads/setting/27571666887522.png', 'uploads/setting/79681666887522.png', NULL, '2022-10-27 14:18:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0041',
  `school_id` bigint(20) UNSIGNED DEFAULT NULL,
  `class_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `is_active` enum('pending','yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `phone_code`, `school_id`, `class_name`, `block`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'user 1', '12345', '+20', 6, 'class 1', 'yes', 'yes', NULL, '2022-10-27 17:43:48'),
(2, 'ahmed samir', '123456789', '0041', 6, 'class 2', 'no', 'pending', '2022-10-22 08:00:04', '2022-10-24 21:56:56'),
(3, 'ahmed samir', '12345678', '0041', 1, 'class 2', 'no', 'no', '2022-10-22 08:00:36', '2022-11-03 13:39:13'),
(4, 'ahmed samir', '123456780', '0041', 1, 'class 2', 'no', 'pending', '2022-10-22 10:05:57', '2022-10-22 10:05:57'),
(5, 'ahmed samir', '1234567810', '0041', 6, 'class 2', 'no', 'no', '2022-10-22 10:08:11', '2022-10-29 17:16:25'),
(6, 'ahmed samir', '1234567811', '0041', 1, 'class 2', 'no', 'yes', '2022-10-25 21:25:32', '2022-10-27 17:57:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_user_id_foreign` (`user_id`),
  ADD KEY `contacts_school_id_foreign` (`school_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_details`
--
ALTER TABLE `menu_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_details_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_user_id_foreign` (`user_id`),
  ADD KEY `notifications_school_id_foreign` (`school_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `per_sec_id` (`section_id`);

--
-- Indexes for table `permission_sections`
--
ALTER TABLE `permission_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_token`
--
ALTER TABLE `phone_token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client45494_id` (`user_id`),
  ADD KEY `school_id64` (`school_id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_menus`
--
ALTER TABLE `school_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_menus_school_id_foreign` (`school_id`),
  ADD KEY `school_menus_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_school_id_foreign` (`school_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `menu_details`
--
ALTER TABLE `menu_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `permission_sections`
--
ALTER TABLE `permission_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `phone_token`
--
ALTER TABLE `phone_token`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `school_menus`
--
ALTER TABLE `school_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `contacts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_details`
--
ALTER TABLE `menu_details`
  ADD CONSTRAINT `menu_details_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `per_sec_id` FOREIGN KEY (`section_id`) REFERENCES `permission_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `phone_token`
--
ALTER TABLE `phone_token`
  ADD CONSTRAINT `school_id64` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `school_menus`
--
ALTER TABLE `school_menus`
  ADD CONSTRAINT `school_menus_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `school_menus_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
