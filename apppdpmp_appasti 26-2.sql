-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 26, 2023 at 12:44 PM
-- Server version: 10.3.38-MariaDB-log-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apppdpmp_appasti`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password_reset` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `image`, `phone`, `email_verified_at`, `password_reset`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'alifadi91@hotmail.com', 'storage/admin/WUFpF8IHpZgjUSvnAIOQK2s8eRcLum8e6l9eGSJO.png', '01026638997', NULL, NULL, '$2y$10$Wyw1cyvwXa16AshqmJTbVep503qgjxx7qZjCgq8lmL67pz/UfBLGS', NULL, NULL, '2022-12-16 00:03:35'),
(20, 'walter', 'walter.gep@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$6WJ8wLFrceozrtiz19ybyucpIU91pxgGWtDhTsuVmEGn8X.DlH91.', NULL, '2022-11-04 23:31:45', '2022-12-15 21:32:59'),
(22, 'Barbara', 'b.porta@multitime.ch', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-24 13:39:44', '2022-11-25 13:48:26'),
(23, 'Rachele', 'r.pretolani@multitime.ch', NULL, NULL, NULL, NULL, '$2y$10$ZdMCB40sMVtp0BhYdjBMwuPDkdeibJEQCxj9NdBgBl7hEe1y8BztW', NULL, '2022-11-25 13:48:14', '2022-12-20 13:32:14');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` text DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_notifications`
--

INSERT INTO `admin_notifications` (`id`, `message`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 'Il menu è stato rifiutato Kebab con patatine 01.03.2023', 1, '2023-02-25 15:38:52', '2023-02-25 17:30:05'),
(2, 'Il menu è stato rifiutato Kebab con patatine 01.03.2023 della Multitime Quartz SA School', 1, '2023-02-25 19:16:08', '2023-02-25 19:16:23');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `permission_id`, `admin_id`, `created_at`, `updated_at`) VALUES
(224, 1, 1, '2022-11-07 19:50:30', '2022-11-07 19:50:30'),
(225, 2, 1, '2022-11-07 19:50:30', '2022-11-07 19:50:30'),
(226, 3, 1, '2022-11-07 19:50:30', '2022-11-07 19:50:30'),
(227, 4, 1, '2022-11-07 19:50:30', '2022-11-07 19:50:30'),
(228, 5, 1, '2022-11-07 19:50:30', '2022-11-07 19:50:30'),
(229, 7, 1, '2022-11-07 19:50:30', '2022-11-07 19:50:30'),
(230, 9, 1, '2022-11-07 19:50:30', '2022-11-07 19:50:30'),
(231, 10, 1, '2022-11-07 19:50:30', '2022-11-07 19:50:30'),
(232, 11, 1, '2022-11-07 19:50:30', '2022-11-07 19:50:30'),
(233, 12, 1, '2022-11-07 19:50:30', '2022-11-07 19:50:30'),
(234, 13, 1, '2022-11-07 19:50:30', '2022-11-07 19:50:30'),
(235, 14, 1, '2022-11-07 19:50:30', '2022-11-07 19:50:30'),
(236, 15, 1, '2022-11-07 19:50:30', '2022-11-07 19:50:30'),
(237, 16, 1, '2022-11-07 19:50:30', '2022-11-07 19:50:30'),
(238, 19, 1, '2022-11-07 19:50:30', '2022-11-07 19:50:30'),
(239, 20, 1, '2022-11-07 19:50:30', '2022-11-07 19:50:30'),
(240, 21, 1, '2022-11-07 19:50:30', '2022-11-07 19:50:30'),
(241, 22, 1, '2022-11-07 19:50:30', '2022-11-07 19:50:30'),
(242, 39, 1, '2022-11-07 19:50:30', '2022-11-07 19:50:30'),
(243, 40, 1, '2022-11-07 19:50:30', '2022-11-07 19:50:30'),
(244, 41, 1, '2022-11-07 19:50:30', '2022-11-07 19:50:30'),
(245, 42, 1, '2022-11-07 19:50:30', '2022-11-07 19:50:30'),
(246, 52, 1, '2022-11-07 19:50:30', '2022-11-07 19:50:30'),
(247, 53, 1, '2022-11-07 19:50:30', '2022-11-07 19:50:30'),
(248, 23, 1, '2022-11-07 19:50:30', '2022-11-07 19:50:30'),
(249, 24, 1, '2022-11-07 19:50:30', '2022-11-07 19:50:30'),
(250, 25, 1, '2022-11-07 19:50:30', '2022-11-07 19:50:30'),
(251, 26, 1, '2022-11-07 19:50:30', '2022-11-07 19:50:30'),
(252, 51, 1, '2022-11-07 19:50:30', '2022-11-07 19:50:30'),
(631, 54, 1, NULL, NULL),
(632, 55, 1, NULL, NULL),
(633, 56, 1, NULL, NULL),
(634, 57, 1, NULL, NULL),
(701, 1, 22, '2022-12-15 19:30:48', '2022-12-15 19:30:48'),
(702, 2, 22, '2022-12-15 19:30:48', '2022-12-15 19:30:48'),
(703, 3, 22, '2022-12-15 19:30:48', '2022-12-15 19:30:48'),
(704, 4, 22, '2022-12-15 19:30:48', '2022-12-15 19:30:48'),
(705, 5, 22, '2022-12-15 19:30:48', '2022-12-15 19:30:48'),
(706, 7, 22, '2022-12-15 19:30:48', '2022-12-15 19:30:48'),
(707, 9, 22, '2022-12-15 19:30:48', '2022-12-15 19:30:48'),
(708, 10, 22, '2022-12-15 19:30:48', '2022-12-15 19:30:48'),
(709, 11, 22, '2022-12-15 19:30:48', '2022-12-15 19:30:48'),
(710, 12, 22, '2022-12-15 19:30:48', '2022-12-15 19:30:48'),
(711, 13, 22, '2022-12-15 19:30:48', '2022-12-15 19:30:48'),
(712, 14, 22, '2022-12-15 19:30:48', '2022-12-15 19:30:48'),
(713, 15, 22, '2022-12-15 19:30:48', '2022-12-15 19:30:48'),
(714, 16, 22, '2022-12-15 19:30:48', '2022-12-15 19:30:48'),
(715, 19, 22, '2022-12-15 19:30:48', '2022-12-15 19:30:48'),
(716, 20, 22, '2022-12-15 19:30:48', '2022-12-15 19:30:48'),
(717, 21, 22, '2022-12-15 19:30:48', '2022-12-15 19:30:48'),
(718, 22, 22, '2022-12-15 19:30:48', '2022-12-15 19:30:48'),
(719, 39, 22, '2022-12-15 19:30:48', '2022-12-15 19:30:48'),
(720, 40, 22, '2022-12-15 19:30:48', '2022-12-15 19:30:48'),
(721, 41, 22, '2022-12-15 19:30:48', '2022-12-15 19:30:48'),
(722, 42, 22, '2022-12-15 19:30:48', '2022-12-15 19:30:48'),
(723, 52, 22, '2022-12-15 19:30:48', '2022-12-15 19:30:48'),
(724, 53, 22, '2022-12-15 19:30:48', '2022-12-15 19:30:48'),
(725, 23, 22, '2022-12-15 19:30:48', '2022-12-15 19:30:48'),
(726, 24, 22, '2022-12-15 19:30:48', '2022-12-15 19:30:48'),
(727, 25, 22, '2022-12-15 19:30:48', '2022-12-15 19:30:48'),
(728, 26, 22, '2022-12-15 19:30:48', '2022-12-15 19:30:48'),
(729, 51, 22, '2022-12-15 19:30:48', '2022-12-15 19:30:48'),
(730, 54, 22, '2022-12-15 19:30:48', '2022-12-15 19:30:48'),
(731, 55, 22, '2022-12-15 19:30:48', '2022-12-15 19:30:48'),
(732, 56, 22, '2022-12-15 19:30:48', '2022-12-15 19:30:48'),
(733, 57, 22, '2022-12-15 19:30:48', '2022-12-15 19:30:48'),
(833, 1, 20, '2022-12-15 21:32:59', '2022-12-15 21:32:59'),
(834, 2, 20, '2022-12-15 21:32:59', '2022-12-15 21:32:59'),
(835, 3, 20, '2022-12-15 21:32:59', '2022-12-15 21:32:59'),
(836, 4, 20, '2022-12-15 21:32:59', '2022-12-15 21:32:59'),
(837, 5, 20, '2022-12-15 21:32:59', '2022-12-15 21:32:59'),
(838, 7, 20, '2022-12-15 21:32:59', '2022-12-15 21:32:59'),
(839, 9, 20, '2022-12-15 21:32:59', '2022-12-15 21:32:59'),
(840, 10, 20, '2022-12-15 21:32:59', '2022-12-15 21:32:59'),
(841, 11, 20, '2022-12-15 21:32:59', '2022-12-15 21:32:59'),
(842, 12, 20, '2022-12-15 21:32:59', '2022-12-15 21:32:59'),
(843, 13, 20, '2022-12-15 21:32:59', '2022-12-15 21:32:59'),
(844, 14, 20, '2022-12-15 21:32:59', '2022-12-15 21:32:59'),
(845, 15, 20, '2022-12-15 21:32:59', '2022-12-15 21:32:59'),
(846, 16, 20, '2022-12-15 21:32:59', '2022-12-15 21:32:59'),
(847, 19, 20, '2022-12-15 21:32:59', '2022-12-15 21:32:59'),
(848, 20, 20, '2022-12-15 21:32:59', '2022-12-15 21:32:59'),
(849, 21, 20, '2022-12-15 21:32:59', '2022-12-15 21:32:59'),
(850, 22, 20, '2022-12-15 21:32:59', '2022-12-15 21:32:59'),
(851, 39, 20, '2022-12-15 21:32:59', '2022-12-15 21:32:59'),
(852, 40, 20, '2022-12-15 21:32:59', '2022-12-15 21:32:59'),
(853, 41, 20, '2022-12-15 21:32:59', '2022-12-15 21:32:59'),
(854, 42, 20, '2022-12-15 21:32:59', '2022-12-15 21:32:59'),
(855, 52, 20, '2022-12-15 21:32:59', '2022-12-15 21:32:59'),
(856, 53, 20, '2022-12-15 21:32:59', '2022-12-15 21:32:59'),
(857, 23, 20, '2022-12-15 21:32:59', '2022-12-15 21:32:59'),
(858, 24, 20, '2022-12-15 21:32:59', '2022-12-15 21:32:59'),
(859, 25, 20, '2022-12-15 21:32:59', '2022-12-15 21:32:59'),
(860, 26, 20, '2022-12-15 21:32:59', '2022-12-15 21:32:59'),
(861, 51, 20, '2022-12-15 21:32:59', '2022-12-15 21:32:59'),
(862, 54, 20, '2022-12-15 21:32:59', '2022-12-15 21:32:59'),
(863, 55, 20, '2022-12-15 21:32:59', '2022-12-15 21:32:59'),
(864, 56, 20, '2022-12-15 21:32:59', '2022-12-15 21:32:59'),
(865, 57, 20, '2022-12-15 21:32:59', '2022-12-15 21:32:59'),
(866, 1, 23, '2022-12-20 13:32:14', '2022-12-20 13:32:14'),
(867, 2, 23, '2022-12-20 13:32:14', '2022-12-20 13:32:14'),
(868, 3, 23, '2022-12-20 13:32:14', '2022-12-20 13:32:14'),
(869, 4, 23, '2022-12-20 13:32:14', '2022-12-20 13:32:14'),
(870, 5, 23, '2022-12-20 13:32:14', '2022-12-20 13:32:14'),
(871, 7, 23, '2022-12-20 13:32:14', '2022-12-20 13:32:14'),
(872, 9, 23, '2022-12-20 13:32:14', '2022-12-20 13:32:14'),
(873, 10, 23, '2022-12-20 13:32:14', '2022-12-20 13:32:14'),
(874, 11, 23, '2022-12-20 13:32:14', '2022-12-20 13:32:14'),
(875, 12, 23, '2022-12-20 13:32:14', '2022-12-20 13:32:14'),
(876, 13, 23, '2022-12-20 13:32:14', '2022-12-20 13:32:14'),
(877, 14, 23, '2022-12-20 13:32:14', '2022-12-20 13:32:14'),
(878, 15, 23, '2022-12-20 13:32:14', '2022-12-20 13:32:14'),
(879, 16, 23, '2022-12-20 13:32:14', '2022-12-20 13:32:14'),
(880, 19, 23, '2022-12-20 13:32:14', '2022-12-20 13:32:14'),
(881, 20, 23, '2022-12-20 13:32:14', '2022-12-20 13:32:14'),
(882, 21, 23, '2022-12-20 13:32:14', '2022-12-20 13:32:14'),
(883, 22, 23, '2022-12-20 13:32:14', '2022-12-20 13:32:14'),
(884, 39, 23, '2022-12-20 13:32:14', '2022-12-20 13:32:14'),
(885, 40, 23, '2022-12-20 13:32:14', '2022-12-20 13:32:14'),
(886, 41, 23, '2022-12-20 13:32:14', '2022-12-20 13:32:14'),
(887, 42, 23, '2022-12-20 13:32:14', '2022-12-20 13:32:14'),
(888, 52, 23, '2022-12-20 13:32:14', '2022-12-20 13:32:14'),
(889, 53, 23, '2022-12-20 13:32:14', '2022-12-20 13:32:14'),
(890, 23, 23, '2022-12-20 13:32:14', '2022-12-20 13:32:14'),
(891, 24, 23, '2022-12-20 13:32:14', '2022-12-20 13:32:14'),
(892, 25, 23, '2022-12-20 13:32:14', '2022-12-20 13:32:14'),
(893, 26, 23, '2022-12-20 13:32:14', '2022-12-20 13:32:14'),
(894, 51, 23, '2022-12-20 13:32:14', '2022-12-20 13:32:14'),
(895, 54, 23, '2022-12-20 13:32:14', '2022-12-20 13:32:14'),
(896, 55, 23, '2022-12-20 13:32:14', '2022-12-20 13:32:14'),
(897, 56, 23, '2022-12-20 13:32:14', '2022-12-20 13:32:14'),
(898, 57, 23, '2022-12-20 13:32:14', '2022-12-20 13:32:14');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `school_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `school_id`, `name`, `created_at`, `updated_at`) VALUES
(9, 16, 'Multitime Zandone', '2022-12-18 01:35:56', '2022-12-18 01:56:40'),
(10, 16, 'Multitime Montana', '2022-12-18 01:51:54', '2022-12-18 01:56:28');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `school_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `mail` varchar(191) DEFAULT NULL,
  `subject` varchar(191) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `user_id`, `school_id`, `name`, `mail`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(29, 39, NULL, NULL, 'Rachele.pretolani@hotmail.it', 'ciao', 'ciao', '2023-02-11 13:08:55', '2023-02-11 13:08:55');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `type` enum('menu','addition') NOT NULL DEFAULT 'menu',
  `date` date DEFAULT NULL,
  `price` varchar(191) NOT NULL DEFAULT '0',
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `image`, `type`, `date`, `price`, `description`, `created_at`, `updated_at`) VALUES
(29, 'Kebab con patatine 01.03.2023', NULL, 'menu', '2023-03-01', '8.50', 'Il primo menù di oggi è composto di\r\nkebab e patatine fritte e un gelato alla vanilla', '2022-12-06 23:45:39', '2023-02-20 05:12:26'),
(30, 'Polenta con manzo 01.03.2023', NULL, 'menu', '2023-03-01', '9.00', 'il nostro secondo menù è plenta \r\ncon carne di manzo e un ghiacciolio limone', '2022-12-06 23:52:03', '2023-02-20 05:12:14'),
(31, 'Menù vegeteriano 01.03.2023', NULL, 'menu', '2023-03-01', '8.50', 'il nostro menù vegeteriano compsto di \r\npolpette di ceci e una insalata mista con\r\n un gelato alla vanilla', '2022-12-06 23:54:40', '2023-02-20 05:12:05'),
(32, 'Menù 1 kebab 28.02.2023', NULL, 'menu', '2023-02-28', '9.50', 'kebab di pollo con patatine fritte e \r\nanelli di cipolla con un crema di vanillia', '2022-12-07 00:05:30', '2023-02-20 05:11:28'),
(33, 'Menù 1 Riso al Churry 28.02.2023', NULL, 'menu', '2023-02-28', '10', 'Riso al Churry con insalata mista e carne di pollo 🐔\r\ne un gelato alla vaniglia sia normale che lattosio', '2022-12-07 01:32:00', '2023-02-20 05:11:09'),
(34, 'Menù 2 Pasta al Ragù 28.02.2023', NULL, 'menu', '2023-02-28', '9.80', 'Pasta al Ragù 🍝\r\nInsalata mista 🥗\r\nGhiacciolo 🍦', '2022-12-07 01:37:58', '2023-02-20 05:10:54'),
(35, 'Menù 3 Lasagne al forno 27.02.2023', NULL, 'menu', '2023-02-27', '7.80', 'Lasagne al forno\r\nInsalata mista\r\nGelato alla vaniglia', '2022-12-07 01:39:07', '2023-02-20 05:10:35'),
(36, 'Menù del giorno 27.02.2023', NULL, 'menu', '2023-02-27', '10', 'Pizza 🍕\r\nInsalata\r\nCoca cola', '2022-12-07 01:42:08', '2023-02-20 05:10:23'),
(37, 'Menù Hamburger 27.02.2023', NULL, 'menu', '2023-02-27', '9.50', 'Hamburger 🍔\r\nPatatine fritte\r\nCoca cola', '2022-12-07 01:42:55', '2023-02-20 05:10:14'),
(38, 'Menù 1 24.02.2023', NULL, 'menu', '2023-02-24', '10', '1\r\n2\r\n3', '2022-12-15 13:03:28', '2023-02-20 05:09:42'),
(39, 'Menù 2 24.02.2023', NULL, 'menu', '2023-02-24', '10', '1\r\n2\r\n3', '2022-12-15 13:06:50', '2023-02-20 05:09:30'),
(40, 'Menù 3 24.02.2023', NULL, 'menu', '2023-02-24', '10', '1\r\n2\r\n3', '2022-12-15 13:07:16', '2023-02-20 05:09:20'),
(41, 'Menù 1 23.02.2023', NULL, 'menu', '2023-02-23', '10', '1\r\n2\r\n3', '2022-12-15 13:07:41', '2023-02-20 05:08:59'),
(42, 'Menù 2 23.02.2023', NULL, 'menu', '2023-02-23', '10', '1\r\n2\r\n3', '2022-12-15 13:08:03', '2023-02-20 05:08:49'),
(43, 'Menù 3 23.02.2023', NULL, 'menu', '2023-02-23', '10', '1-\r\n2-\r\n3-', '2022-12-15 13:17:14', '2023-02-20 05:08:21'),
(44, 'Menù 1 22.02.2023', NULL, 'menu', '2023-02-22', '10', '1-\r\n2-\r\n3-', '2022-12-15 13:17:48', '2023-02-20 05:07:58'),
(45, 'Menù 2 22.02.2023', NULL, 'menu', '2023-02-22', '10', '1-\r\n2-\r\n3-', '2022-12-15 13:18:31', '2023-02-20 05:07:40'),
(46, 'Menù 3 22.02.2023', NULL, 'menu', '2023-02-22', '10', '1-\r\n2-\r\n3-', '2022-12-15 13:19:18', '2023-02-20 05:07:24'),
(47, 'Menù 1 21.02.2023', NULL, 'menu', '2023-02-21', '10', '1-\r\n2-\r\n3-', '2022-12-15 13:20:00', '2023-02-20 05:07:05'),
(48, 'Menù 2 21.02.2023', NULL, 'menu', '2023-02-21', '19', '1-\r\n2-\r\n3-', '2022-12-15 13:20:24', '2023-02-20 05:06:51'),
(49, 'Menù 3 21.02.2023', NULL, 'menu', '2023-02-21', '10', '1-\r\n2-', '2022-12-15 13:20:54', '2023-02-20 05:06:41'),
(50, 'menu per prova 20.02.2023', NULL, 'menu', '2023-02-20', '10', '1\r\n2\r\n3', '2023-01-23 13:29:46', '2023-02-20 05:06:10'),
(53, 'Menu\' 1 20.02.2023', NULL, 'menu', '2023-02-20', '3.80', 'Pasta con ragù', '2023-02-11 13:13:21', '2023-02-20 05:05:58'),
(54, 'Menu\' 2 20.02.2023', NULL, 'menu', '2023-02-20', '4.50', 'Insalata con patate', '2023-02-11 13:18:17', '2023-02-20 05:05:41');

-- --------------------------------------------------------

--
-- Table structure for table `menu_details`
--

CREATE TABLE `menu_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
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
  `title` varchar(191) DEFAULT NULL,
  `message` varchar(191) DEFAULT NULL,
  `is_read` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `school_id`, `title`, `message`, `is_read`, `created_at`, `updated_at`) VALUES
(43, NULL, 16, 'messaggio di attivazione', 'Il tuo account è stato attivato con successo', 1, '2022-11-08 18:59:53', '2023-02-20 05:01:07'),
(44, NULL, 16, 'nota', 'prova per la notifica', 1, '2022-11-09 17:51:26', '2023-02-20 05:01:07'),
(48, NULL, 16, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 1, '2022-11-22 20:29:25', '2023-02-20 05:01:07'),
(50, NULL, 16, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 1, '2022-11-22 20:29:30', '2023-02-20 05:01:07'),
(52, NULL, 16, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 1, '2022-11-22 20:29:34', '2023-02-20 05:01:07'),
(54, NULL, 16, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 1, '2022-11-22 20:33:54', '2023-02-20 05:01:07'),
(56, NULL, 16, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 1, '2022-11-22 20:34:14', '2023-02-20 05:01:07'),
(58, NULL, 16, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 1, '2022-11-22 20:34:19', '2023-02-20 05:01:07'),
(60, NULL, 16, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 1, '2022-11-22 20:34:23', '2023-02-20 05:01:07'),
(62, NULL, 16, 'PRENOTAZIONE PASTO', 'ENTRO LE ORE 10:00 PER IL PRANZO SUCCESSIVO', 1, '2022-11-24 11:32:50', '2023-02-20 05:01:07'),
(69, NULL, 16, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è in preparazione', 1, '2022-12-01 17:01:13', '2023-02-20 05:01:07'),
(71, NULL, 16, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 1, '2022-12-01 17:01:39', '2023-02-20 05:01:07'),
(88, NULL, NULL, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 0, '2022-12-05 01:59:07', '2022-12-05 01:59:07'),
(90, NULL, 16, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è in preparazione', 1, '2022-12-05 01:59:45', '2023-02-20 05:01:07'),
(92, NULL, 16, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 1, '2022-12-05 01:59:56', '2023-02-20 05:01:07'),
(93, NULL, 16, 'Nuovo Menù dispiace ', 'Nuovo Menù dispiace per il Lunedì  05-12-2022', 1, '2022-12-05 05:27:49', '2023-02-20 05:01:07'),
(95, NULL, 16, 'Nuovo Menù dispiace ', 'Nuovo Menù dispiace per il Sabato  31-12-2022', 1, '2022-12-05 05:33:37', '2023-02-20 05:01:07'),
(100, NULL, 16, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  07-12-2022', 1, '2022-12-05 15:19:08', '2023-02-20 05:01:07'),
(123, NULL, 16, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  07-12-2022', 1, '2022-12-06 23:45:39', '2023-02-20 05:01:07'),
(126, NULL, 16, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  07-12-2022', 1, '2022-12-06 23:52:03', '2023-02-20 05:01:07'),
(129, NULL, 16, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  07-12-2022', 1, '2022-12-06 23:54:40', '2023-02-20 05:01:07'),
(142, NULL, 16, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  07-12-2022', 1, '2022-12-07 00:05:30', '2023-02-20 05:01:07'),
(145, NULL, 16, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  07-12-2022', 1, '2022-12-07 00:10:08', '2023-02-20 05:01:07'),
(148, NULL, 16, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Sabato  10-12-2022', 1, '2022-12-07 01:32:00', '2023-02-20 05:01:07'),
(151, NULL, 16, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Sabato  10-12-2022', 1, '2022-12-07 01:37:58', '2023-02-20 05:01:07'),
(154, NULL, 16, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Sabato  10-12-2022', 1, '2022-12-07 01:39:07', '2023-02-20 05:01:07'),
(159, NULL, 16, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  09-12-2022', 1, '2022-12-07 01:42:08', '2023-02-20 05:01:07'),
(160, NULL, 16, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  09-12-2022', 1, '2022-12-07 01:42:55', '2023-02-20 05:01:07'),
(165, NULL, NULL, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 0, '2022-12-07 04:01:06', '2022-12-07 04:01:06'),
(174, NULL, 16, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è in preparazione', 1, '2022-12-07 14:18:56', '2023-02-20 05:01:07'),
(197, NULL, 16, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 1, '2022-12-09 15:45:08', '2023-02-20 05:01:07'),
(200, NULL, 16, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 1, '2022-12-09 15:45:17', '2023-02-20 05:01:07'),
(202, NULL, 16, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 1, '2022-12-09 15:45:24', '2023-02-20 05:01:07'),
(204, NULL, 16, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 1, '2022-12-09 15:45:32', '2023-02-20 05:01:07'),
(208, NULL, 16, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 1, '2022-12-09 15:45:38', '2023-02-20 05:01:07'),
(294, NULL, 16, 'ATTENZIONE', 'BACIONI', 1, '2022-12-14 19:10:49', '2023-02-20 05:01:07'),
(296, NULL, 16, 'CIAO', 'CIAO', 1, '2022-12-14 19:12:19', '2023-02-20 05:01:07'),
(330, NULL, 16, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  21-12-2022', 1, '2022-12-15 13:03:28', '2023-02-20 05:01:07'),
(331, NULL, 16, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  21-12-2022', 1, '2022-12-15 13:06:50', '2023-02-20 05:01:07'),
(332, NULL, 16, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  21-12-2022', 1, '2022-12-15 13:07:16', '2023-02-20 05:01:07'),
(333, NULL, 16, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  22-12-2022', 1, '2022-12-15 13:07:41', '2023-02-20 05:01:07'),
(334, NULL, 16, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  22-12-2022', 1, '2022-12-15 13:08:03', '2023-02-20 05:01:07'),
(335, NULL, 16, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  22-12-2022', 1, '2022-12-15 13:17:14', '2023-02-20 05:01:07'),
(336, NULL, 16, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  23-12-2022', 1, '2022-12-15 13:17:48', '2023-02-20 05:01:07'),
(337, NULL, 16, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  23-12-2022', 1, '2022-12-15 13:18:31', '2023-02-20 05:01:07'),
(338, NULL, 16, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  23-12-2022', 1, '2022-12-15 13:19:18', '2023-02-20 05:01:07'),
(339, NULL, 16, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  15-12-2022', 1, '2022-12-15 13:20:00', '2023-02-20 05:01:07'),
(340, NULL, 16, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  15-12-2022', 1, '2022-12-15 13:20:24', '2023-02-20 05:01:07'),
(341, NULL, 16, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  15-12-2022', 1, '2022-12-15 13:20:54', '2023-02-20 05:01:07'),
(386, NULL, 16, 'prova messaggio dolce wa', 'prova messaggio dolce festa', 1, '2022-12-15 16:57:38', '2023-02-20 05:01:07'),
(387, NULL, 16, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  15-12-2022', 1, '2022-12-15 17:08:15', '2023-02-20 05:01:07'),
(391, NULL, 16, 'ciao', 'ciao', 1, '2022-12-15 19:12:09', '2023-02-20 05:01:07'),
(400, NULL, NULL, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 0, '2022-12-16 00:04:35', '2022-12-16 00:04:35'),
(401, NULL, NULL, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 0, '2022-12-16 00:18:53', '2022-12-16 00:18:53'),
(410, NULL, NULL, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 0, '2022-12-18 02:53:35', '2022-12-18 02:53:35'),
(411, NULL, NULL, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 0, '2022-12-18 02:56:14', '2022-12-18 02:56:14'),
(412, NULL, NULL, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 0, '2022-12-18 02:56:22', '2022-12-18 02:56:22'),
(414, NULL, NULL, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 0, '2022-12-18 04:15:58', '2022-12-18 04:15:58'),
(415, NULL, NULL, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 0, '2022-12-18 04:16:01', '2022-12-18 04:16:01'),
(416, NULL, NULL, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 0, '2022-12-18 04:16:04', '2022-12-18 04:16:04'),
(417, NULL, NULL, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 0, '2022-12-18 04:16:08', '2022-12-18 04:16:08'),
(418, NULL, NULL, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 0, '2022-12-18 04:16:12', '2022-12-18 04:16:12'),
(419, NULL, NULL, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 0, '2022-12-18 04:16:15', '2022-12-18 04:16:15'),
(439, NULL, 16, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  23-12-2022', 1, '2022-12-20 04:04:43', '2023-02-20 05:01:07'),
(498, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-21 12:00:47', '2023-02-23 23:57:03'),
(499, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-21 12:00:47', '2022-12-22 13:21:43'),
(500, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-21 12:00:47', '2023-02-12 01:27:23'),
(501, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-21 12:00:47', '2023-02-20 21:54:54'),
(503, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-21 12:00:47', '2023-02-20 05:20:55'),
(504, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2022-12-21 14:00:38', '2023-02-23 23:57:03'),
(505, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2022-12-21 14:00:38', '2022-12-22 13:21:43'),
(506, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2022-12-21 14:00:38', '2023-02-12 01:27:23'),
(507, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2022-12-21 14:00:38', '2023-02-20 21:54:54'),
(509, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2022-12-21 14:00:38', '2023-02-20 05:20:55'),
(510, 39, NULL, 'Hi Every One', 'Welcome In App Pasti', 1, '2022-12-21 16:05:14', '2023-02-23 23:57:03'),
(511, 40, NULL, 'Hi Every One', 'Welcome In App Pasti', 1, '2022-12-21 16:05:14', '2022-12-22 13:21:43'),
(512, 41, NULL, 'Hi Every One', 'Welcome In App Pasti', 1, '2022-12-21 16:05:14', '2023-02-12 01:27:23'),
(513, 43, NULL, 'Hi Every One', 'Welcome In App Pasti', 1, '2022-12-21 16:05:14', '2023-02-20 21:54:54'),
(515, 45, NULL, 'Hi Every One', 'Welcome In App Pasti', 1, '2022-12-21 16:05:14', '2023-02-20 05:20:55'),
(516, NULL, 16, 'Hi Every One', 'Welcome In App Pasti', 1, '2022-12-21 16:05:14', '2023-02-20 05:01:07'),
(517, 39, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2022-12-22 09:00:51', '2023-02-23 23:57:03'),
(518, 41, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2022-12-22 09:00:51', '2023-02-12 01:27:23'),
(519, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-22 12:00:12', '2023-02-23 23:57:03'),
(520, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-22 12:00:12', '2022-12-22 13:21:43'),
(521, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-22 12:00:12', '2023-02-12 01:27:23'),
(522, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-22 12:00:12', '2023-02-20 21:54:54'),
(524, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-22 12:00:12', '2023-02-20 05:20:55'),
(525, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2022-12-22 12:00:12', '2022-12-22 12:00:12'),
(526, 39, NULL, 'Notifica di avviso', 'Ti ricordiamo di ritirare il tuo pranzo', 1, '2022-12-22 14:50:49', '2023-02-23 23:57:03'),
(527, 41, NULL, 'Notifica di avviso', 'Ti ricordiamo di ritirare il tuo pranzo', 1, '2022-12-22 14:50:49', '2023-02-12 01:27:23'),
(528, 39, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2022-12-23 08:00:13', '2023-02-23 23:57:03'),
(529, 41, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2022-12-23 08:00:13', '2023-02-12 01:27:23'),
(530, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-23 11:00:35', '2023-02-23 23:57:03'),
(531, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2022-12-23 11:00:35', '2022-12-23 11:00:35'),
(532, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-23 11:00:35', '2023-02-12 01:27:23'),
(533, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-23 11:00:35', '2023-02-20 21:54:54'),
(535, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-23 11:00:35', '2023-02-20 05:20:55'),
(536, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2022-12-23 11:00:35', '2022-12-23 11:00:35'),
(537, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2022-12-23 13:00:31', '2023-02-23 23:57:03'),
(538, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2022-12-23 13:00:31', '2022-12-23 13:00:31'),
(539, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2022-12-23 13:00:31', '2023-02-12 01:27:23'),
(540, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2022-12-23 13:00:31', '2023-02-20 21:54:54'),
(542, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2022-12-23 13:00:31', '2023-02-20 05:20:55'),
(543, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2022-12-23 13:00:31', '2022-12-23 13:00:31'),
(544, 39, NULL, 'Notifica di avviso', 'Ti ricordiamo di ritirare il tuo pranzo', 1, '2022-12-23 14:50:42', '2023-02-23 23:57:03'),
(545, 41, NULL, 'Notifica di avviso', 'Ti ricordiamo di ritirare il tuo pranzo', 1, '2022-12-23 14:50:42', '2023-02-12 01:27:23'),
(546, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-24 12:00:25', '2023-02-23 23:57:03'),
(547, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2022-12-24 12:00:25', '2022-12-24 12:00:25'),
(548, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-24 12:00:25', '2023-02-12 01:27:23'),
(549, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-24 12:00:25', '2023-02-20 21:54:54'),
(551, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-24 12:00:25', '2023-02-20 05:20:55'),
(552, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2022-12-24 12:00:25', '2022-12-24 12:00:25'),
(553, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2022-12-24 14:00:20', '2023-02-23 23:57:03'),
(554, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2022-12-24 14:00:20', '2022-12-24 14:00:20'),
(555, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2022-12-24 14:00:20', '2023-02-12 01:27:23'),
(556, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2022-12-24 14:00:20', '2023-02-20 21:54:54'),
(558, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2022-12-24 14:00:20', '2023-02-20 05:20:55'),
(559, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2022-12-24 14:00:20', '2022-12-24 14:00:20'),
(560, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-25 12:00:37', '2023-02-23 23:57:03'),
(561, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2022-12-25 12:00:37', '2022-12-25 12:00:37'),
(562, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-25 12:00:37', '2023-02-12 01:27:23'),
(563, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-25 12:00:37', '2023-02-20 21:54:54'),
(565, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-25 12:00:37', '2023-02-20 05:20:55'),
(566, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2022-12-25 12:00:37', '2022-12-25 12:00:37'),
(567, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2022-12-25 14:00:51', '2023-02-23 23:57:03'),
(568, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2022-12-25 14:00:51', '2022-12-25 14:00:51'),
(569, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2022-12-25 14:00:51', '2023-02-12 01:27:23'),
(570, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2022-12-25 14:00:51', '2023-02-20 21:54:54'),
(572, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2022-12-25 14:00:51', '2023-02-20 05:20:55'),
(573, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2022-12-25 14:00:51', '2022-12-25 14:00:51'),
(574, 39, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2022-12-26 09:00:31', '2023-02-23 23:57:03'),
(575, 41, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2022-12-26 09:00:31', '2023-02-12 01:27:23'),
(576, 45, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2022-12-26 09:00:31', '2023-02-20 05:20:55'),
(577, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-26 12:00:27', '2023-02-23 23:57:03'),
(578, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2022-12-26 12:00:27', '2022-12-26 12:00:27'),
(579, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-26 12:00:27', '2023-02-12 01:27:23'),
(580, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-26 12:00:27', '2023-02-20 21:54:54'),
(582, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-26 12:00:27', '2023-02-20 05:20:55'),
(583, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2022-12-26 12:00:27', '2022-12-26 12:00:27'),
(584, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2022-12-26 14:00:13', '2023-02-23 23:57:03'),
(585, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2022-12-26 14:00:13', '2022-12-26 14:00:13'),
(586, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2022-12-26 14:00:13', '2023-02-12 01:27:23'),
(587, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2022-12-26 14:00:13', '2023-02-20 21:54:54'),
(589, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2022-12-26 14:00:13', '2023-02-20 05:20:55'),
(590, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2022-12-26 14:00:13', '2022-12-26 14:00:13'),
(591, 39, NULL, 'Notifica di avviso', 'Ti ricordiamo di ritirare il tuo pranzo', 1, '2022-12-26 15:50:36', '2023-02-23 23:57:03'),
(592, 41, NULL, 'Notifica di avviso', 'Ti ricordiamo di ritirare il tuo pranzo', 1, '2022-12-26 15:50:36', '2023-02-12 01:27:23'),
(593, 45, NULL, 'Notifica di avviso', 'Ti ricordiamo di ritirare il tuo pranzo', 1, '2022-12-26 15:50:36', '2023-02-20 05:20:55'),
(594, 39, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2022-12-27 09:00:32', '2023-02-23 23:57:03'),
(595, 41, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2022-12-27 09:00:32', '2023-02-12 01:27:23'),
(596, 45, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2022-12-27 09:00:32', '2023-02-20 05:20:55'),
(597, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-27 12:00:05', '2023-02-23 23:57:03'),
(598, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2022-12-27 12:00:05', '2022-12-27 12:00:05'),
(599, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-27 12:00:05', '2023-02-12 01:27:23'),
(600, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-27 12:00:05', '2023-02-20 21:54:54'),
(602, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-27 12:00:05', '2023-02-20 05:20:55'),
(603, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2022-12-27 12:00:05', '2022-12-27 12:00:05'),
(604, 39, NULL, 'Prova', 'Prova per le modifiche automatiche', 1, '2022-12-27 12:00:05', '2023-02-23 23:57:03'),
(605, 40, NULL, 'Prova', 'Prova per le modifiche automatiche', 0, '2022-12-27 12:00:05', '2022-12-27 12:00:05'),
(606, 41, NULL, 'Prova', 'Prova per le modifiche automatiche', 1, '2022-12-27 12:00:05', '2023-02-12 01:27:23'),
(607, 43, NULL, 'Prova', 'Prova per le modifiche automatiche', 1, '2022-12-27 12:00:05', '2023-02-20 21:54:54'),
(609, 45, NULL, 'Prova', 'Prova per le modifiche automatiche', 1, '2022-12-27 12:00:05', '2023-02-20 05:20:55'),
(610, 46, NULL, 'Prova', 'Prova per le modifiche automatiche', 0, '2022-12-27 12:00:05', '2022-12-27 12:00:05'),
(611, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2022-12-27 14:00:20', '2023-02-23 23:57:03'),
(612, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2022-12-27 14:00:20', '2022-12-27 14:00:20'),
(613, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2022-12-27 14:00:20', '2023-02-12 01:27:23'),
(614, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2022-12-27 14:00:20', '2023-02-20 21:54:54'),
(616, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2022-12-27 14:00:20', '2023-02-20 05:20:55'),
(617, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2022-12-27 14:00:20', '2022-12-27 14:00:20'),
(618, 39, NULL, 'Hi', 'Hi to Pasti app', 1, '2022-12-27 15:04:07', '2023-02-23 23:57:03'),
(619, 40, NULL, 'Hi', 'Hi to Pasti app', 0, '2022-12-27 15:04:07', '2022-12-27 15:04:07'),
(620, 41, NULL, 'Hi', 'Hi to Pasti app', 1, '2022-12-27 15:04:07', '2023-02-12 01:27:23'),
(621, 43, NULL, 'Hi', 'Hi to Pasti app', 1, '2022-12-27 15:04:07', '2023-02-20 21:54:54'),
(623, 45, NULL, 'Hi', 'Hi to Pasti app', 1, '2022-12-27 15:04:07', '2023-02-20 05:20:55'),
(624, 46, NULL, 'Hi', 'Hi to Pasti app', 0, '2022-12-27 15:04:07', '2022-12-27 15:04:07'),
(625, NULL, 16, 'Hi', 'Hi to Pasti app', 1, '2022-12-27 15:04:07', '2023-02-20 05:01:07'),
(626, 39, NULL, 'Hi', 'Hi to Pasti App', 1, '2022-12-27 15:04:35', '2023-02-23 23:57:03'),
(627, 40, NULL, 'Hi', 'Hi to Pasti App', 0, '2022-12-27 15:04:35', '2022-12-27 15:04:35'),
(628, 41, NULL, 'Hi', 'Hi to Pasti App', 1, '2022-12-27 15:04:35', '2023-02-12 01:27:23'),
(629, 43, NULL, 'Hi', 'Hi to Pasti App', 1, '2022-12-27 15:04:35', '2023-02-20 21:54:54'),
(631, 45, NULL, 'Hi', 'Hi to Pasti App', 1, '2022-12-27 15:04:35', '2023-02-20 05:20:55'),
(632, 46, NULL, 'Hi', 'Hi to Pasti App', 0, '2022-12-27 15:04:35', '2022-12-27 15:04:35'),
(633, NULL, 16, 'Hi', 'Hi to Pasti App', 1, '2022-12-27 15:04:36', '2023-02-20 05:01:07'),
(634, 39, NULL, 'Hi', 'Hi', 1, '2022-12-27 15:06:40', '2023-02-23 23:57:03'),
(635, 40, NULL, 'Hi', 'Hi', 0, '2022-12-27 15:06:40', '2022-12-27 15:06:40'),
(636, 41, NULL, 'Hi', 'Hi', 1, '2022-12-27 15:06:40', '2023-02-12 01:27:23'),
(637, 43, NULL, 'Hi', 'Hi', 1, '2022-12-27 15:06:40', '2023-02-20 21:54:54'),
(639, 45, NULL, 'Hi', 'Hi', 1, '2022-12-27 15:06:40', '2023-02-20 05:20:55'),
(640, 46, NULL, 'Hi', 'Hi', 0, '2022-12-27 15:06:40', '2022-12-27 15:06:40'),
(641, NULL, 16, 'Hi', 'Hi', 1, '2022-12-27 15:06:40', '2023-02-20 05:01:07'),
(642, 39, NULL, 'Hi', 'Hi', 1, '2022-12-27 15:09:13', '2023-02-23 23:57:03'),
(643, 40, NULL, 'Hi', 'Hi', 0, '2022-12-27 15:09:13', '2022-12-27 15:09:13'),
(644, 41, NULL, 'Hi', 'Hi', 1, '2022-12-27 15:09:13', '2023-02-12 01:27:23'),
(645, 43, NULL, 'Hi', 'Hi', 1, '2022-12-27 15:09:13', '2023-02-20 21:54:54'),
(647, 45, NULL, 'Hi', 'Hi', 1, '2022-12-27 15:09:13', '2023-02-20 05:20:55'),
(648, 46, NULL, 'Hi', 'Hi', 0, '2022-12-27 15:09:13', '2022-12-27 15:09:13'),
(649, NULL, 16, 'Hi', 'Hi', 1, '2022-12-27 15:09:13', '2023-02-20 05:01:07'),
(650, 39, NULL, 'Hi', 'Hi', 1, '2022-12-27 15:11:09', '2023-02-23 23:57:03'),
(651, 40, NULL, 'Hi', 'Hi', 0, '2022-12-27 15:11:09', '2022-12-27 15:11:09'),
(652, 41, NULL, 'Hi', 'Hi', 1, '2022-12-27 15:11:09', '2023-02-12 01:27:23'),
(653, 43, NULL, 'Hi', 'Hi', 1, '2022-12-27 15:11:09', '2023-02-20 21:54:54'),
(655, 45, NULL, 'Hi', 'Hi', 1, '2022-12-27 15:11:09', '2023-02-20 05:20:55'),
(656, 46, NULL, 'Hi', 'Hi', 0, '2022-12-27 15:11:09', '2022-12-27 15:11:09'),
(657, NULL, 16, 'Hi', 'Hi', 1, '2022-12-27 15:11:09', '2023-02-20 05:01:07'),
(658, 39, NULL, 'hi', 'hi', 1, '2022-12-27 15:22:04', '2023-02-23 23:57:03'),
(659, 40, NULL, 'hi', 'hi', 0, '2022-12-27 15:22:04', '2022-12-27 15:22:04'),
(660, 41, NULL, 'hi', 'hi', 1, '2022-12-27 15:22:04', '2023-02-12 01:27:23'),
(661, 43, NULL, 'hi', 'hi', 1, '2022-12-27 15:22:04', '2023-02-20 21:54:54'),
(663, 45, NULL, 'hi', 'hi', 1, '2022-12-27 15:22:04', '2023-02-20 05:20:55'),
(664, 46, NULL, 'hi', 'hi', 0, '2022-12-27 15:22:04', '2022-12-27 15:22:04'),
(665, NULL, 16, 'hi', 'hi', 1, '2022-12-27 15:22:04', '2023-02-20 05:01:07'),
(666, 39, NULL, 'hi', 'hi', 1, '2022-12-27 15:22:23', '2023-02-23 23:57:03'),
(667, 40, NULL, 'hi', 'hi', 0, '2022-12-27 15:22:23', '2022-12-27 15:22:23'),
(668, 41, NULL, 'hi', 'hi', 1, '2022-12-27 15:22:23', '2023-02-12 01:27:23'),
(669, 43, NULL, 'hi', 'hi', 1, '2022-12-27 15:22:23', '2023-02-20 21:54:54'),
(671, 45, NULL, 'hi', 'hi', 1, '2022-12-27 15:22:23', '2023-02-20 05:20:55'),
(672, 46, NULL, 'hi', 'hi', 0, '2022-12-27 15:22:23', '2022-12-27 15:22:23'),
(673, NULL, 16, 'hi', 'hi', 1, '2022-12-27 15:22:24', '2023-02-20 05:01:07'),
(674, 39, NULL, 'hi', 'hi', 1, '2022-12-27 15:22:44', '2023-02-23 23:57:03'),
(675, 40, NULL, 'hi', 'hi', 0, '2022-12-27 15:22:44', '2022-12-27 15:22:44'),
(676, 41, NULL, 'hi', 'hi', 1, '2022-12-27 15:22:44', '2023-02-12 01:27:23'),
(677, 43, NULL, 'hi', 'hi', 1, '2022-12-27 15:22:44', '2023-02-20 21:54:54'),
(679, 45, NULL, 'hi', 'hi', 1, '2022-12-27 15:22:44', '2023-02-20 05:20:55'),
(680, 46, NULL, 'hi', 'hi', 0, '2022-12-27 15:22:44', '2022-12-27 15:22:44'),
(681, NULL, 16, 'hi', 'hi', 1, '2022-12-27 15:22:44', '2023-02-20 05:01:07'),
(682, 39, NULL, 'hi', 'hi', 1, '2022-12-27 15:23:13', '2023-02-23 23:57:03'),
(683, 40, NULL, 'hi', 'hi', 0, '2022-12-27 15:23:13', '2022-12-27 15:23:13'),
(684, 41, NULL, 'hi', 'hi', 1, '2022-12-27 15:23:13', '2023-02-12 01:27:23'),
(685, 43, NULL, 'hi', 'hi', 1, '2022-12-27 15:23:13', '2023-02-20 21:54:54'),
(687, 45, NULL, 'hi', 'hi', 1, '2022-12-27 15:23:13', '2023-02-20 05:20:55'),
(688, 46, NULL, 'hi', 'hi', 0, '2022-12-27 15:23:13', '2022-12-27 15:23:13'),
(689, NULL, 16, 'hi', 'hi', 1, '2022-12-27 15:23:13', '2023-02-20 05:01:07'),
(690, 39, NULL, 'hi', 'hi', 1, '2022-12-27 15:23:49', '2023-02-23 23:57:03'),
(691, 40, NULL, 'hi', 'hi', 0, '2022-12-27 15:23:49', '2022-12-27 15:23:49'),
(692, 41, NULL, 'hi', 'hi', 1, '2022-12-27 15:23:49', '2023-02-12 01:27:23'),
(693, 43, NULL, 'hi', 'hi', 1, '2022-12-27 15:23:49', '2023-02-20 21:54:54'),
(695, 45, NULL, 'hi', 'hi', 1, '2022-12-27 15:23:49', '2023-02-20 05:20:55'),
(696, 46, NULL, 'hi', 'hi', 0, '2022-12-27 15:23:49', '2022-12-27 15:23:49'),
(697, NULL, 16, 'hi', 'hi', 1, '2022-12-27 15:23:49', '2023-02-20 05:01:07'),
(698, 39, NULL, 'hi', 'hi', 1, '2022-12-27 15:24:10', '2023-02-23 23:57:03'),
(699, 40, NULL, 'hi', 'hi', 0, '2022-12-27 15:24:10', '2022-12-27 15:24:10'),
(700, 41, NULL, 'hi', 'hi', 1, '2022-12-27 15:24:10', '2023-02-12 01:27:23'),
(701, 43, NULL, 'hi', 'hi', 1, '2022-12-27 15:24:10', '2023-02-20 21:54:54'),
(703, 45, NULL, 'hi', 'hi', 1, '2022-12-27 15:24:10', '2023-02-20 05:20:55'),
(704, 46, NULL, 'hi', 'hi', 0, '2022-12-27 15:24:10', '2022-12-27 15:24:10'),
(705, NULL, 16, 'hi', 'hi', 1, '2022-12-27 15:24:10', '2023-02-20 05:01:07'),
(706, 39, NULL, 'hi2', 'hi2', 1, '2022-12-27 15:24:27', '2023-02-23 23:57:03'),
(707, 40, NULL, 'hi2', 'hi2', 0, '2022-12-27 15:24:27', '2022-12-27 15:24:27'),
(708, 41, NULL, 'hi2', 'hi2', 1, '2022-12-27 15:24:27', '2023-02-12 01:27:23'),
(709, 43, NULL, 'hi2', 'hi2', 1, '2022-12-27 15:24:27', '2023-02-20 21:54:54'),
(711, 45, NULL, 'hi2', 'hi2', 1, '2022-12-27 15:24:27', '2023-02-20 05:20:55'),
(712, 46, NULL, 'hi2', 'hi2', 0, '2022-12-27 15:24:27', '2022-12-27 15:24:27'),
(713, NULL, 16, 'hi2', 'hi2', 1, '2022-12-27 15:24:28', '2023-02-20 05:01:07'),
(714, 39, NULL, 'Notifica di avviso', 'Ti ricordiamo di ritirare il tuo pranzo', 1, '2022-12-27 15:50:22', '2023-02-23 23:57:03'),
(715, 41, NULL, 'Notifica di avviso', 'Ti ricordiamo di ritirare il tuo pranzo', 1, '2022-12-27 15:50:22', '2023-02-12 01:27:23'),
(716, 45, NULL, 'Notifica di avviso', 'Ti ricordiamo di ritirare il tuo pranzo', 1, '2022-12-27 15:50:22', '2023-02-20 05:20:55'),
(717, 39, NULL, 'Prova', 'Prova per le modifiche automatiche', 1, '2022-12-27 19:20:17', '2023-02-23 23:57:03'),
(718, 40, NULL, 'Prova', 'Prova per le modifiche automatiche', 0, '2022-12-27 19:20:17', '2022-12-27 19:20:17'),
(719, 41, NULL, 'Prova', 'Prova per le modifiche automatiche', 1, '2022-12-27 19:20:17', '2023-02-12 01:27:23'),
(720, 43, NULL, 'Prova', 'Prova per le modifiche automatiche', 1, '2022-12-27 19:20:17', '2023-02-20 21:54:54'),
(722, 45, NULL, 'Prova', 'Prova per le modifiche automatiche', 1, '2022-12-27 19:20:17', '2023-02-20 05:20:55'),
(723, 46, NULL, 'Prova', 'Prova per le modifiche automatiche', 0, '2022-12-27 19:20:17', '2022-12-27 19:20:17'),
(724, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  02-01-2023', 1, '2022-12-28 06:40:50', '2023-02-23 23:57:03'),
(725, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  02-01-2023', 0, '2022-12-28 06:40:50', '2022-12-28 06:40:50'),
(726, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  02-01-2023', 1, '2022-12-28 06:40:50', '2023-02-12 01:27:23'),
(727, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  02-01-2023', 1, '2022-12-28 06:40:50', '2023-02-20 21:54:54'),
(729, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  02-01-2023', 1, '2022-12-28 06:40:50', '2023-02-20 05:20:55'),
(730, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  02-01-2023', 0, '2022-12-28 06:40:50', '2022-12-28 06:40:50'),
(731, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  02-01-2023', 1, '2022-12-28 06:40:52', '2023-02-23 23:57:03'),
(732, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  02-01-2023', 0, '2022-12-28 06:40:52', '2022-12-28 06:40:52'),
(733, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  02-01-2023', 1, '2022-12-28 06:40:52', '2023-02-12 01:27:23'),
(734, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  02-01-2023', 1, '2022-12-28 06:40:52', '2023-02-20 21:54:54'),
(736, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  02-01-2023', 1, '2022-12-28 06:40:52', '2023-02-20 05:20:55'),
(737, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  02-01-2023', 0, '2022-12-28 06:40:52', '2022-12-28 06:40:52'),
(738, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  02-01-2023', 1, '2022-12-28 06:40:53', '2023-02-23 23:57:03'),
(739, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  02-01-2023', 0, '2022-12-28 06:40:53', '2022-12-28 06:40:53'),
(740, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  02-01-2023', 1, '2022-12-28 06:40:53', '2023-02-12 01:27:23'),
(741, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  02-01-2023', 1, '2022-12-28 06:40:53', '2023-02-20 21:54:54'),
(743, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  02-01-2023', 1, '2022-12-28 06:40:53', '2023-02-20 05:20:55'),
(744, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  02-01-2023', 0, '2022-12-28 06:40:53', '2022-12-28 06:40:53'),
(745, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  03-01-2023', 1, '2022-12-28 06:40:55', '2023-02-23 23:57:03'),
(746, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  03-01-2023', 0, '2022-12-28 06:40:55', '2022-12-28 06:40:55'),
(747, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  03-01-2023', 1, '2022-12-28 06:40:55', '2023-02-12 01:27:23'),
(748, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  03-01-2023', 1, '2022-12-28 06:40:55', '2023-02-20 21:54:54'),
(750, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  03-01-2023', 1, '2022-12-28 06:40:55', '2023-02-20 05:20:55'),
(751, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  03-01-2023', 0, '2022-12-28 06:40:55', '2022-12-28 06:40:55'),
(752, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  03-01-2023', 1, '2022-12-28 06:40:57', '2023-02-23 23:57:03'),
(753, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  03-01-2023', 0, '2022-12-28 06:40:57', '2022-12-28 06:40:57'),
(754, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  03-01-2023', 1, '2022-12-28 06:40:57', '2023-02-12 01:27:23'),
(755, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  03-01-2023', 1, '2022-12-28 06:40:57', '2023-02-20 21:54:54'),
(757, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  03-01-2023', 1, '2022-12-28 06:40:57', '2023-02-20 05:20:55'),
(758, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  03-01-2023', 0, '2022-12-28 06:40:57', '2022-12-28 06:40:57'),
(759, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  03-01-2023', 1, '2022-12-28 06:40:58', '2023-02-23 23:57:03'),
(760, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  03-01-2023', 0, '2022-12-28 06:40:58', '2022-12-28 06:40:58'),
(761, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  03-01-2023', 1, '2022-12-28 06:40:58', '2023-02-12 01:27:23'),
(762, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  03-01-2023', 1, '2022-12-28 06:40:58', '2023-02-20 21:54:54'),
(764, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  03-01-2023', 1, '2022-12-28 06:40:58', '2023-02-20 05:20:55'),
(765, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  03-01-2023', 0, '2022-12-28 06:40:58', '2022-12-28 06:40:58'),
(766, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  04-01-2023', 1, '2022-12-28 06:40:59', '2023-02-23 23:57:03'),
(767, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  04-01-2023', 0, '2022-12-28 06:40:59', '2022-12-28 06:40:59'),
(768, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  04-01-2023', 1, '2022-12-28 06:40:59', '2023-02-12 01:27:23'),
(769, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  04-01-2023', 1, '2022-12-28 06:40:59', '2023-02-20 21:54:54'),
(771, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  04-01-2023', 1, '2022-12-28 06:40:59', '2023-02-20 05:20:55'),
(772, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  04-01-2023', 0, '2022-12-28 06:40:59', '2022-12-28 06:40:59'),
(773, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  04-01-2023', 1, '2022-12-28 06:41:01', '2023-02-23 23:57:03'),
(774, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  04-01-2023', 0, '2022-12-28 06:41:01', '2022-12-28 06:41:01'),
(775, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  04-01-2023', 1, '2022-12-28 06:41:01', '2023-02-12 01:27:23'),
(776, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  04-01-2023', 1, '2022-12-28 06:41:01', '2023-02-20 21:54:54'),
(778, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  04-01-2023', 1, '2022-12-28 06:41:01', '2023-02-20 05:20:55'),
(779, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  04-01-2023', 0, '2022-12-28 06:41:01', '2022-12-28 06:41:01'),
(780, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  04-01-2023', 1, '2022-12-28 06:41:02', '2023-02-23 23:57:03'),
(781, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  04-01-2023', 0, '2022-12-28 06:41:02', '2022-12-28 06:41:02'),
(782, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  04-01-2023', 1, '2022-12-28 06:41:02', '2023-02-12 01:27:23'),
(783, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  04-01-2023', 1, '2022-12-28 06:41:02', '2023-02-20 21:54:54'),
(785, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  04-01-2023', 1, '2022-12-28 06:41:02', '2023-02-20 05:20:55'),
(786, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  04-01-2023', 0, '2022-12-28 06:41:02', '2022-12-28 06:41:02'),
(787, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  05-01-2023', 1, '2022-12-28 06:41:03', '2023-02-23 23:57:03'),
(788, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  05-01-2023', 0, '2022-12-28 06:41:03', '2022-12-28 06:41:03'),
(789, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  05-01-2023', 1, '2022-12-28 06:41:03', '2023-02-12 01:27:23'),
(790, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  05-01-2023', 1, '2022-12-28 06:41:03', '2023-02-20 21:54:54'),
(792, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  05-01-2023', 1, '2022-12-28 06:41:03', '2023-02-20 05:20:55'),
(793, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  05-01-2023', 0, '2022-12-28 06:41:03', '2022-12-28 06:41:03'),
(794, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  05-01-2023', 1, '2022-12-28 06:41:04', '2023-02-23 23:57:03'),
(795, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  05-01-2023', 0, '2022-12-28 06:41:04', '2022-12-28 06:41:04'),
(796, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  05-01-2023', 1, '2022-12-28 06:41:04', '2023-02-12 01:27:23'),
(797, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  05-01-2023', 1, '2022-12-28 06:41:04', '2023-02-20 21:54:54'),
(799, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  05-01-2023', 1, '2022-12-28 06:41:04', '2023-02-20 05:20:55'),
(800, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  05-01-2023', 0, '2022-12-28 06:41:04', '2022-12-28 06:41:04'),
(801, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  05-01-2023', 1, '2022-12-28 06:41:06', '2023-02-23 23:57:03'),
(802, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  05-01-2023', 0, '2022-12-28 06:41:06', '2022-12-28 06:41:06'),
(803, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  05-01-2023', 1, '2022-12-28 06:41:06', '2023-02-12 01:27:23'),
(804, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  05-01-2023', 1, '2022-12-28 06:41:06', '2023-02-20 21:54:54'),
(806, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  05-01-2023', 1, '2022-12-28 06:41:06', '2023-02-20 05:20:55'),
(807, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  05-01-2023', 0, '2022-12-28 06:41:06', '2022-12-28 06:41:06'),
(808, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  06-01-2023', 1, '2022-12-28 06:41:07', '2023-02-23 23:57:03'),
(809, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  06-01-2023', 0, '2022-12-28 06:41:07', '2022-12-28 06:41:07'),
(810, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  06-01-2023', 1, '2022-12-28 06:41:07', '2023-02-12 01:27:23'),
(811, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  06-01-2023', 1, '2022-12-28 06:41:07', '2023-02-20 21:54:54'),
(813, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  06-01-2023', 1, '2022-12-28 06:41:07', '2023-02-20 05:20:55'),
(814, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  06-01-2023', 0, '2022-12-28 06:41:07', '2022-12-28 06:41:07'),
(815, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  06-01-2023', 1, '2022-12-28 06:41:08', '2023-02-23 23:57:03'),
(816, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  06-01-2023', 0, '2022-12-28 06:41:08', '2022-12-28 06:41:08'),
(817, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  06-01-2023', 1, '2022-12-28 06:41:08', '2023-02-12 01:27:23'),
(818, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  06-01-2023', 1, '2022-12-28 06:41:08', '2023-02-20 21:54:54'),
(820, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  06-01-2023', 1, '2022-12-28 06:41:08', '2023-02-20 05:20:55'),
(821, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  06-01-2023', 0, '2022-12-28 06:41:08', '2022-12-28 06:41:08'),
(822, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  06-01-2023', 1, '2022-12-28 06:41:10', '2023-02-23 23:57:03'),
(823, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  06-01-2023', 0, '2022-12-28 06:41:10', '2022-12-28 06:41:10'),
(824, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  06-01-2023', 1, '2022-12-28 06:41:10', '2023-02-12 01:27:23'),
(825, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  06-01-2023', 1, '2022-12-28 06:41:10', '2023-02-20 21:54:54'),
(827, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  06-01-2023', 1, '2022-12-28 06:41:10', '2023-02-20 05:20:55'),
(828, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  06-01-2023', 0, '2022-12-28 06:41:10', '2022-12-28 06:41:10'),
(829, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  09-01-2023', 1, '2022-12-28 06:41:11', '2023-02-23 23:57:03'),
(830, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  09-01-2023', 0, '2022-12-28 06:41:11', '2022-12-28 06:41:11'),
(831, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  09-01-2023', 1, '2022-12-28 06:41:11', '2023-02-12 01:27:23'),
(832, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  09-01-2023', 1, '2022-12-28 06:41:11', '2023-02-20 21:54:54'),
(834, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  09-01-2023', 1, '2022-12-28 06:41:11', '2023-02-20 05:20:55'),
(835, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  09-01-2023', 0, '2022-12-28 06:41:11', '2022-12-28 06:41:11'),
(836, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  09-01-2023', 1, '2022-12-28 06:41:13', '2023-02-23 23:57:03'),
(837, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  09-01-2023', 0, '2022-12-28 06:41:13', '2022-12-28 06:41:13'),
(838, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  09-01-2023', 1, '2022-12-28 06:41:13', '2023-02-12 01:27:23'),
(839, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  09-01-2023', 1, '2022-12-28 06:41:13', '2023-02-20 21:54:54'),
(841, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  09-01-2023', 1, '2022-12-28 06:41:13', '2023-02-20 05:20:55'),
(842, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  09-01-2023', 0, '2022-12-28 06:41:13', '2022-12-28 06:41:13'),
(843, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  09-01-2023', 1, '2022-12-28 06:41:14', '2023-02-23 23:57:03'),
(844, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  09-01-2023', 0, '2022-12-28 06:41:14', '2022-12-28 06:41:14'),
(845, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  09-01-2023', 1, '2022-12-28 06:41:14', '2023-02-12 01:27:23'),
(846, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  09-01-2023', 1, '2022-12-28 06:41:14', '2023-02-20 21:54:54'),
(848, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  09-01-2023', 1, '2022-12-28 06:41:14', '2023-02-20 05:20:55');
INSERT INTO `notifications` (`id`, `user_id`, `school_id`, `title`, `message`, `is_read`, `created_at`, `updated_at`) VALUES
(849, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  09-01-2023', 0, '2022-12-28 06:41:14', '2022-12-28 06:41:14'),
(850, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  10-01-2023', 1, '2022-12-28 06:41:15', '2023-02-23 23:57:03'),
(851, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  10-01-2023', 0, '2022-12-28 06:41:15', '2022-12-28 06:41:15'),
(852, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  10-01-2023', 1, '2022-12-28 06:41:15', '2023-02-12 01:27:23'),
(853, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  10-01-2023', 1, '2022-12-28 06:41:15', '2023-02-20 21:54:54'),
(855, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  10-01-2023', 1, '2022-12-28 06:41:15', '2023-02-20 05:20:55'),
(856, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  10-01-2023', 0, '2022-12-28 06:41:15', '2022-12-28 06:41:15'),
(857, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  10-01-2023', 1, '2022-12-28 06:41:17', '2023-02-23 23:57:03'),
(858, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  10-01-2023', 0, '2022-12-28 06:41:17', '2022-12-28 06:41:17'),
(859, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  10-01-2023', 1, '2022-12-28 06:41:17', '2023-02-12 01:27:23'),
(860, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  10-01-2023', 1, '2022-12-28 06:41:17', '2023-02-20 21:54:54'),
(862, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  10-01-2023', 1, '2022-12-28 06:41:17', '2023-02-20 05:20:55'),
(863, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  10-01-2023', 0, '2022-12-28 06:41:17', '2022-12-28 06:41:17'),
(864, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  10-01-2023', 1, '2022-12-28 06:41:19', '2023-02-23 23:57:03'),
(865, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  10-01-2023', 0, '2022-12-28 06:41:19', '2022-12-28 06:41:19'),
(866, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  10-01-2023', 1, '2022-12-28 06:41:19', '2023-02-12 01:27:23'),
(867, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  10-01-2023', 1, '2022-12-28 06:41:19', '2023-02-20 21:54:54'),
(869, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  10-01-2023', 1, '2022-12-28 06:41:19', '2023-02-20 05:20:55'),
(870, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  10-01-2023', 0, '2022-12-28 06:41:19', '2022-12-28 06:41:19'),
(871, 39, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2022-12-28 09:00:08', '2023-02-23 23:57:03'),
(872, 41, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2022-12-28 09:00:08', '2023-02-12 01:27:23'),
(873, 45, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2022-12-28 09:00:08', '2023-02-20 05:20:55'),
(874, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-28 12:00:47', '2023-02-23 23:57:03'),
(875, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2022-12-28 12:00:47', '2022-12-28 12:00:47'),
(876, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-28 12:00:47', '2023-02-12 01:27:23'),
(877, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-28 12:00:47', '2023-02-20 21:54:54'),
(879, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-28 12:00:47', '2023-02-20 05:20:55'),
(880, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2022-12-28 12:00:47', '2022-12-28 12:00:47'),
(881, 39, NULL, 'Prova', 'Prova per le modifiche automatiche', 1, '2022-12-28 12:00:48', '2023-02-23 23:57:03'),
(882, 40, NULL, 'Prova', 'Prova per le modifiche automatiche', 0, '2022-12-28 12:00:48', '2022-12-28 12:00:48'),
(883, 41, NULL, 'Prova', 'Prova per le modifiche automatiche', 1, '2022-12-28 12:00:48', '2023-02-12 01:27:23'),
(884, 43, NULL, 'Prova', 'Prova per le modifiche automatiche', 1, '2022-12-28 12:00:48', '2023-02-20 21:54:54'),
(886, 45, NULL, 'Prova', 'Prova per le modifiche automatiche', 1, '2022-12-28 12:00:48', '2023-02-20 05:20:55'),
(887, 46, NULL, 'Prova', 'Prova per le modifiche automatiche', 0, '2022-12-28 12:00:48', '2022-12-28 12:00:48'),
(888, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2022-12-28 14:00:14', '2023-02-23 23:57:03'),
(889, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2022-12-28 14:00:14', '2022-12-28 14:00:14'),
(890, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2022-12-28 14:00:14', '2023-02-12 01:27:23'),
(891, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2022-12-28 14:00:14', '2023-02-20 21:54:54'),
(893, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2022-12-28 14:00:14', '2023-02-20 05:20:55'),
(894, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2022-12-28 14:00:14', '2022-12-28 14:00:14'),
(895, 39, NULL, 'hi', 'hi', 1, '2022-12-28 14:59:35', '2023-02-23 23:57:03'),
(896, 40, NULL, 'hi', 'hi', 0, '2022-12-28 14:59:35', '2022-12-28 14:59:35'),
(897, 41, NULL, 'hi', 'hi', 1, '2022-12-28 14:59:35', '2023-02-12 01:27:23'),
(898, 43, NULL, 'hi', 'hi', 1, '2022-12-28 14:59:35', '2023-02-20 21:54:54'),
(900, 45, NULL, 'hi', 'hi', 1, '2022-12-28 14:59:35', '2023-02-20 05:20:55'),
(901, 46, NULL, 'hi', 'hi', 0, '2022-12-28 14:59:35', '2022-12-28 14:59:35'),
(902, NULL, 16, 'hi', 'hi', 1, '2022-12-28 14:59:36', '2023-02-20 05:01:07'),
(903, 39, NULL, 'hi', 'hi', 1, '2022-12-28 14:59:49', '2023-02-23 23:57:03'),
(904, 40, NULL, 'hi', 'hi', 0, '2022-12-28 14:59:49', '2022-12-28 14:59:49'),
(905, 41, NULL, 'hi', 'hi', 1, '2022-12-28 14:59:49', '2023-02-12 01:27:23'),
(906, 43, NULL, 'hi', 'hi', 1, '2022-12-28 14:59:49', '2023-02-20 21:54:54'),
(908, 45, NULL, 'hi', 'hi', 1, '2022-12-28 14:59:49', '2023-02-20 05:20:55'),
(909, 46, NULL, 'hi', 'hi', 0, '2022-12-28 14:59:49', '2022-12-28 14:59:49'),
(910, NULL, 16, 'hi', 'hi', 1, '2022-12-28 14:59:49', '2023-02-20 05:01:07'),
(911, 39, NULL, 'hi', 'hi', 1, '2022-12-28 15:00:25', '2023-02-23 23:57:03'),
(912, 40, NULL, 'hi', 'hi', 0, '2022-12-28 15:00:25', '2022-12-28 15:00:25'),
(913, 41, NULL, 'hi', 'hi', 1, '2022-12-28 15:00:25', '2023-02-12 01:27:23'),
(914, 43, NULL, 'hi', 'hi', 1, '2022-12-28 15:00:25', '2023-02-20 21:54:54'),
(916, 45, NULL, 'hi', 'hi', 1, '2022-12-28 15:00:25', '2023-02-20 05:20:55'),
(917, 46, NULL, 'hi', 'hi', 0, '2022-12-28 15:00:25', '2022-12-28 15:00:25'),
(918, NULL, 16, 'hi', 'hi', 1, '2022-12-28 15:00:25', '2023-02-20 05:01:07'),
(919, 39, NULL, 'hi', 'hi', 1, '2022-12-28 15:00:57', '2023-02-23 23:57:03'),
(920, 40, NULL, 'hi', 'hi', 0, '2022-12-28 15:00:57', '2022-12-28 15:00:57'),
(921, 41, NULL, 'hi', 'hi', 1, '2022-12-28 15:00:57', '2023-02-12 01:27:23'),
(922, 43, NULL, 'hi', 'hi', 1, '2022-12-28 15:00:57', '2023-02-20 21:54:54'),
(924, 45, NULL, 'hi', 'hi', 1, '2022-12-28 15:00:57', '2023-02-20 05:20:55'),
(925, 46, NULL, 'hi', 'hi', 0, '2022-12-28 15:00:57', '2022-12-28 15:00:57'),
(926, NULL, 16, 'hi', 'hi', 1, '2022-12-28 15:00:57', '2023-02-20 05:01:07'),
(927, 39, NULL, 'Notifica di avviso', 'Ti ricordiamo di ritirare il tuo pranzo', 1, '2022-12-28 15:50:13', '2023-02-23 23:57:03'),
(928, 41, NULL, 'Notifica di avviso', 'Ti ricordiamo di ritirare il tuo pranzo', 1, '2022-12-28 15:50:13', '2023-02-12 01:27:23'),
(929, 45, NULL, 'Notifica di avviso', 'Ti ricordiamo di ritirare il tuo pranzo', 1, '2022-12-28 15:50:13', '2023-02-20 05:20:55'),
(930, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-29 12:00:02', '2023-02-23 23:57:03'),
(931, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2022-12-29 12:00:02', '2022-12-29 12:00:02'),
(932, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-29 12:00:02', '2023-02-12 01:27:23'),
(933, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-29 12:00:02', '2023-02-20 21:54:54'),
(935, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-29 12:00:02', '2023-02-20 05:20:55'),
(936, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2022-12-29 12:00:02', '2022-12-29 12:00:02'),
(937, 39, NULL, 'Prova', 'Prova per le modifiche automatiche', 1, '2022-12-29 12:00:02', '2023-02-23 23:57:03'),
(938, 40, NULL, 'Prova', 'Prova per le modifiche automatiche', 0, '2022-12-29 12:00:02', '2022-12-29 12:00:02'),
(939, 41, NULL, 'Prova', 'Prova per le modifiche automatiche', 1, '2022-12-29 12:00:02', '2023-02-12 01:27:23'),
(940, 43, NULL, 'Prova', 'Prova per le modifiche automatiche', 1, '2022-12-29 12:00:02', '2023-02-20 21:54:54'),
(942, 45, NULL, 'Prova', 'Prova per le modifiche automatiche', 1, '2022-12-29 12:00:02', '2023-02-20 05:20:55'),
(943, 46, NULL, 'Prova', 'Prova per le modifiche automatiche', 0, '2022-12-29 12:00:02', '2022-12-29 12:00:02'),
(944, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2022-12-29 14:00:45', '2023-02-23 23:57:03'),
(945, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2022-12-29 14:00:45', '2022-12-29 14:00:45'),
(946, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2022-12-29 14:00:45', '2023-02-12 01:27:23'),
(947, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2022-12-29 14:00:45', '2023-02-20 21:54:54'),
(949, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2022-12-29 14:00:45', '2023-02-20 05:20:55'),
(950, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2022-12-29 14:00:45', '2022-12-29 14:00:45'),
(951, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-30 12:00:05', '2023-02-23 23:57:03'),
(952, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2022-12-30 12:00:05', '2022-12-30 12:00:05'),
(953, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-30 12:00:05', '2023-02-12 01:27:23'),
(954, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-30 12:00:05', '2023-02-20 21:54:54'),
(956, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-30 12:00:05', '2023-02-20 05:20:55'),
(957, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2022-12-30 12:00:05', '2022-12-30 12:00:05'),
(958, 39, NULL, 'Prova', 'Prova per le modifiche automatiche', 1, '2022-12-30 12:00:05', '2023-02-23 23:57:03'),
(959, 40, NULL, 'Prova', 'Prova per le modifiche automatiche', 0, '2022-12-30 12:00:05', '2022-12-30 12:00:05'),
(960, 41, NULL, 'Prova', 'Prova per le modifiche automatiche', 1, '2022-12-30 12:00:05', '2023-02-12 01:27:23'),
(961, 43, NULL, 'Prova', 'Prova per le modifiche automatiche', 1, '2022-12-30 12:00:05', '2023-02-20 21:54:54'),
(963, 45, NULL, 'Prova', 'Prova per le modifiche automatiche', 1, '2022-12-30 12:00:05', '2023-02-20 05:20:55'),
(964, 46, NULL, 'Prova', 'Prova per le modifiche automatiche', 0, '2022-12-30 12:00:05', '2022-12-30 12:00:05'),
(965, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2022-12-30 14:00:40', '2023-02-23 23:57:03'),
(966, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2022-12-30 14:00:40', '2022-12-30 14:00:40'),
(967, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2022-12-30 14:00:40', '2023-02-12 01:27:23'),
(968, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2022-12-30 14:00:40', '2023-02-20 21:54:54'),
(970, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2022-12-30 14:00:40', '2023-02-20 05:20:55'),
(971, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2022-12-30 14:00:40', '2022-12-30 14:00:40'),
(972, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-31 12:00:50', '2023-02-23 23:57:03'),
(973, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2022-12-31 12:00:50', '2022-12-31 12:00:50'),
(974, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-31 12:00:50', '2023-02-12 01:27:23'),
(975, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-31 12:00:50', '2023-02-20 21:54:54'),
(977, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2022-12-31 12:00:50', '2023-02-20 05:20:55'),
(978, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2022-12-31 12:00:50', '2022-12-31 12:00:50'),
(979, 39, NULL, 'Prova', 'Prova per le modifiche automatiche', 1, '2022-12-31 12:00:50', '2023-02-23 23:57:03'),
(980, 40, NULL, 'Prova', 'Prova per le modifiche automatiche', 0, '2022-12-31 12:00:50', '2022-12-31 12:00:50'),
(981, 41, NULL, 'Prova', 'Prova per le modifiche automatiche', 1, '2022-12-31 12:00:50', '2023-02-12 01:27:23'),
(982, 43, NULL, 'Prova', 'Prova per le modifiche automatiche', 1, '2022-12-31 12:00:50', '2023-02-20 21:54:54'),
(984, 45, NULL, 'Prova', 'Prova per le modifiche automatiche', 1, '2022-12-31 12:00:50', '2023-02-20 05:20:55'),
(985, 46, NULL, 'Prova', 'Prova per le modifiche automatiche', 0, '2022-12-31 12:00:50', '2022-12-31 12:00:50'),
(986, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2022-12-31 14:00:20', '2023-02-23 23:57:03'),
(987, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2022-12-31 14:00:20', '2022-12-31 14:00:20'),
(988, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2022-12-31 14:00:20', '2023-02-12 01:27:23'),
(989, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2022-12-31 14:00:20', '2023-02-20 21:54:54'),
(991, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2022-12-31 14:00:20', '2023-02-20 05:20:55'),
(992, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2022-12-31 14:00:20', '2022-12-31 14:00:20'),
(993, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-01 12:00:21', '2023-02-23 23:57:03'),
(994, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-01 12:00:21', '2023-01-01 12:00:21'),
(995, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-01 12:00:21', '2023-02-12 01:27:23'),
(996, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-01 12:00:21', '2023-02-20 21:54:54'),
(998, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-01 12:00:21', '2023-02-20 05:20:55'),
(999, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-01 12:00:21', '2023-01-01 12:00:21'),
(1000, 39, NULL, 'Prova', 'Prova per le modifiche automatiche', 1, '2023-01-01 12:00:21', '2023-02-23 23:57:03'),
(1001, 40, NULL, 'Prova', 'Prova per le modifiche automatiche', 0, '2023-01-01 12:00:21', '2023-01-01 12:00:21'),
(1002, 41, NULL, 'Prova', 'Prova per le modifiche automatiche', 1, '2023-01-01 12:00:21', '2023-02-12 01:27:23'),
(1003, 43, NULL, 'Prova', 'Prova per le modifiche automatiche', 1, '2023-01-01 12:00:21', '2023-02-20 21:54:54'),
(1005, 45, NULL, 'Prova', 'Prova per le modifiche automatiche', 1, '2023-01-01 12:00:21', '2023-02-20 05:20:55'),
(1006, 46, NULL, 'Prova', 'Prova per le modifiche automatiche', 0, '2023-01-01 12:00:21', '2023-01-01 12:00:21'),
(1007, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-01 14:00:05', '2023-02-23 23:57:03'),
(1008, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-01 14:00:05', '2023-01-01 14:00:05'),
(1009, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-01 14:00:05', '2023-02-12 01:27:23'),
(1010, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-01 14:00:05', '2023-02-20 21:54:54'),
(1012, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-01 14:00:05', '2023-02-20 05:20:55'),
(1013, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-01 14:00:05', '2023-01-01 14:00:05'),
(1014, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-02 12:00:50', '2023-02-23 23:57:03'),
(1015, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-02 12:00:50', '2023-01-02 12:00:50'),
(1016, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-02 12:00:50', '2023-02-12 01:27:23'),
(1017, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-02 12:00:50', '2023-02-20 21:54:54'),
(1019, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-02 12:00:50', '2023-02-20 05:20:55'),
(1020, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-02 12:00:50', '2023-01-02 12:00:50'),
(1021, 39, NULL, 'Prova', 'Prova per le modifiche automatiche', 1, '2023-01-02 12:00:50', '2023-02-23 23:57:03'),
(1022, 40, NULL, 'Prova', 'Prova per le modifiche automatiche', 0, '2023-01-02 12:00:50', '2023-01-02 12:00:50'),
(1023, 41, NULL, 'Prova', 'Prova per le modifiche automatiche', 1, '2023-01-02 12:00:50', '2023-02-12 01:27:23'),
(1024, 43, NULL, 'Prova', 'Prova per le modifiche automatiche', 1, '2023-01-02 12:00:50', '2023-02-20 21:54:54'),
(1026, 45, NULL, 'Prova', 'Prova per le modifiche automatiche', 1, '2023-01-02 12:00:50', '2023-02-20 05:20:55'),
(1027, 46, NULL, 'Prova', 'Prova per le modifiche automatiche', 0, '2023-01-02 12:00:50', '2023-01-02 12:00:50'),
(1028, 39, NULL, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 1, '2023-01-02 12:50:52', '2023-02-23 23:57:03'),
(1029, 41, NULL, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 1, '2023-01-02 12:50:55', '2023-02-12 01:27:23'),
(1030, 39, NULL, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 1, '2023-01-02 12:50:58', '2023-02-23 23:57:03'),
(1031, 41, NULL, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 1, '2023-01-02 12:51:01', '2023-02-12 01:27:23'),
(1032, 41, NULL, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 1, '2023-01-02 12:51:04', '2023-02-12 01:27:23'),
(1033, 41, NULL, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 1, '2023-01-02 12:51:13', '2023-02-12 01:27:23'),
(1034, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-02 14:00:39', '2023-02-23 23:57:03'),
(1035, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-02 14:00:39', '2023-01-02 14:00:39'),
(1036, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-02 14:00:39', '2023-02-12 01:27:23'),
(1037, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-02 14:00:39', '2023-02-20 21:54:54'),
(1039, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-02 14:00:39', '2023-02-20 05:20:55'),
(1040, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-02 14:00:39', '2023-01-02 14:00:39'),
(1041, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-03 12:00:23', '2023-02-23 23:57:03'),
(1042, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-03 12:00:23', '2023-01-03 12:00:23'),
(1043, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-03 12:00:23', '2023-02-12 01:27:23'),
(1044, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-03 12:00:23', '2023-02-20 21:54:54'),
(1046, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-03 12:00:23', '2023-02-20 05:20:55'),
(1047, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-03 12:00:23', '2023-01-03 12:00:23'),
(1048, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-03 14:00:31', '2023-02-23 23:57:03'),
(1049, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-03 14:00:32', '2023-01-03 14:00:32'),
(1050, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-03 14:00:32', '2023-02-12 01:27:23'),
(1051, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-03 14:00:32', '2023-02-20 21:54:54'),
(1053, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-03 14:00:32', '2023-02-20 05:20:55'),
(1054, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-03 14:00:32', '2023-01-03 14:00:32'),
(1055, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-04 12:00:51', '2023-02-23 23:57:03'),
(1056, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-04 12:00:51', '2023-01-04 12:00:51'),
(1057, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-04 12:00:51', '2023-02-12 01:27:23'),
(1058, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-04 12:00:51', '2023-02-20 21:54:54'),
(1060, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-04 12:00:51', '2023-02-20 05:20:55'),
(1061, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-04 12:00:51', '2023-01-04 12:00:51'),
(1062, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-04 14:00:13', '2023-02-23 23:57:03'),
(1063, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-04 14:00:13', '2023-01-04 14:00:13'),
(1064, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-04 14:00:13', '2023-02-12 01:27:23'),
(1065, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-04 14:00:13', '2023-02-20 21:54:54'),
(1067, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-04 14:00:13', '2023-02-20 05:20:55'),
(1068, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-04 14:00:13', '2023-01-04 14:00:13'),
(1069, 39, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2023-01-05 09:00:49', '2023-02-23 23:57:03'),
(1070, 41, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2023-01-05 09:00:49', '2023-02-12 01:27:23'),
(1071, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-05 12:00:32', '2023-02-23 23:57:03'),
(1072, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-05 12:00:32', '2023-01-05 12:00:32'),
(1073, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-05 12:00:32', '2023-02-12 01:27:23'),
(1074, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-05 12:00:32', '2023-02-20 21:54:54'),
(1076, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-05 12:00:32', '2023-02-20 05:20:55'),
(1077, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-05 12:00:32', '2023-01-05 12:00:32'),
(1078, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-05 14:00:08', '2023-02-23 23:57:03'),
(1079, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-05 14:00:08', '2023-01-05 14:00:08'),
(1080, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-05 14:00:08', '2023-02-12 01:27:23'),
(1081, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-05 14:00:08', '2023-02-20 21:54:54'),
(1083, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-05 14:00:08', '2023-02-20 05:20:55'),
(1084, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-05 14:00:08', '2023-01-05 14:00:08'),
(1085, 39, NULL, 'Notifica di avviso', 'Ti ricordiamo di ritirare il tuo pranzo', 1, '2023-01-05 15:50:27', '2023-02-23 23:57:03'),
(1086, 41, NULL, 'Notifica di avviso', 'Ti ricordiamo di ritirare il tuo pranzo', 1, '2023-01-05 15:50:27', '2023-02-12 01:27:23'),
(1087, 39, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2023-01-06 09:00:09', '2023-02-23 23:57:03'),
(1088, 41, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2023-01-06 09:00:10', '2023-02-12 01:27:23'),
(1089, 45, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2023-01-06 09:00:10', '2023-02-20 05:20:55'),
(1090, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-06 12:00:45', '2023-02-23 23:57:03'),
(1091, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-06 12:00:45', '2023-01-06 12:00:45'),
(1092, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-06 12:00:45', '2023-02-12 01:27:23'),
(1093, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-06 12:00:45', '2023-02-20 21:54:54'),
(1095, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-06 12:00:45', '2023-02-20 05:20:55'),
(1096, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-06 12:00:45', '2023-01-06 12:00:45'),
(1097, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-06 14:00:27', '2023-02-23 23:57:03'),
(1098, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-06 14:00:27', '2023-01-06 14:00:27'),
(1099, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-06 14:00:27', '2023-02-12 01:27:23'),
(1100, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-06 14:00:27', '2023-02-20 21:54:54'),
(1102, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-06 14:00:27', '2023-02-20 05:20:55'),
(1103, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-06 14:00:27', '2023-01-06 14:00:27'),
(1104, 39, NULL, 'Notifica di avviso', 'Ti ricordiamo di ritirare il tuo pranzo', 1, '2023-01-06 15:50:45', '2023-02-23 23:57:03'),
(1105, 41, NULL, 'Notifica di avviso', 'Ti ricordiamo di ritirare il tuo pranzo', 1, '2023-01-06 15:50:45', '2023-02-12 01:27:23'),
(1106, 45, NULL, 'Notifica di avviso', 'Ti ricordiamo di ritirare il tuo pranzo', 1, '2023-01-06 15:50:45', '2023-02-20 05:20:55'),
(1107, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-07 12:00:43', '2023-02-23 23:57:03'),
(1108, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-07 12:00:43', '2023-01-07 12:00:43'),
(1109, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-07 12:00:43', '2023-02-12 01:27:23'),
(1110, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-07 12:00:43', '2023-02-20 21:54:54'),
(1112, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-07 12:00:43', '2023-02-20 05:20:55'),
(1113, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-07 12:00:43', '2023-01-07 12:00:43'),
(1114, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-07 14:00:39', '2023-02-23 23:57:03'),
(1115, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-07 14:00:39', '2023-01-07 14:00:39'),
(1116, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-07 14:00:39', '2023-02-12 01:27:23'),
(1117, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-07 14:00:39', '2023-02-20 21:54:54'),
(1119, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-07 14:00:39', '2023-02-20 05:20:55'),
(1120, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-07 14:00:39', '2023-01-07 14:00:39'),
(1121, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-08 12:00:06', '2023-02-23 23:57:03'),
(1122, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-08 12:00:06', '2023-01-08 12:00:06'),
(1123, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-08 12:00:06', '2023-02-12 01:27:23'),
(1124, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-08 12:00:06', '2023-02-20 21:54:54'),
(1126, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-08 12:00:06', '2023-02-20 05:20:55'),
(1127, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-08 12:00:06', '2023-01-08 12:00:06'),
(1128, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-08 14:00:32', '2023-02-23 23:57:03'),
(1129, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-08 14:00:32', '2023-01-08 14:00:32'),
(1130, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-08 14:00:32', '2023-02-12 01:27:23'),
(1131, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-08 14:00:32', '2023-02-20 21:54:54'),
(1133, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-08 14:00:32', '2023-02-20 05:20:55'),
(1134, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-08 14:00:32', '2023-01-08 14:00:32'),
(1135, 39, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2023-01-09 09:00:22', '2023-02-23 23:57:03'),
(1136, 41, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2023-01-09 09:00:22', '2023-02-12 01:27:23'),
(1137, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-09 12:00:29', '2023-02-23 23:57:03'),
(1138, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-09 12:00:29', '2023-01-09 12:00:29'),
(1139, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-09 12:00:29', '2023-02-12 01:27:23'),
(1140, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-09 12:00:29', '2023-02-20 21:54:54'),
(1142, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-09 12:00:29', '2023-02-20 05:20:55'),
(1143, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-09 12:00:29', '2023-01-09 12:00:29'),
(1144, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-09 14:00:32', '2023-02-23 23:57:03'),
(1145, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-09 14:00:32', '2023-01-09 14:00:32'),
(1146, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-09 14:00:32', '2023-02-12 01:27:23'),
(1147, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-09 14:00:32', '2023-02-20 21:54:54'),
(1149, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-09 14:00:33', '2023-02-20 05:20:55'),
(1150, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-09 14:00:33', '2023-01-09 14:00:33'),
(1151, 39, NULL, 'Notifica di avviso', 'Ti ricordiamo di ritirare il tuo pranzo', 1, '2023-01-09 15:50:18', '2023-02-23 23:57:03'),
(1152, 41, NULL, 'Notifica di avviso', 'Ti ricordiamo di ritirare il tuo pranzo', 1, '2023-01-09 15:50:18', '2023-02-12 01:27:23'),
(1153, 39, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2023-01-10 09:00:19', '2023-02-23 23:57:03'),
(1154, 41, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2023-01-10 09:00:19', '2023-02-12 01:27:23'),
(1155, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-10 12:00:21', '2023-02-23 23:57:03'),
(1156, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-10 12:00:21', '2023-01-10 12:00:21'),
(1157, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-10 12:00:21', '2023-02-12 01:27:23'),
(1158, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-10 12:00:21', '2023-02-20 21:54:54'),
(1160, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-10 12:00:21', '2023-02-20 05:20:55'),
(1161, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-10 12:00:21', '2023-01-10 12:00:21'),
(1162, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-10 14:00:16', '2023-02-23 23:57:03'),
(1163, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-10 14:00:16', '2023-01-10 14:00:16'),
(1164, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-10 14:00:16', '2023-02-12 01:27:23'),
(1165, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-10 14:00:16', '2023-02-20 21:54:54'),
(1167, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-10 14:00:16', '2023-02-20 05:20:55'),
(1168, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-10 14:00:16', '2023-01-10 14:00:16'),
(1169, 39, NULL, 'Notifica di avviso', 'Ti ricordiamo di ritirare il tuo pranzo', 1, '2023-01-10 15:50:07', '2023-02-23 23:57:03'),
(1170, 41, NULL, 'Notifica di avviso', 'Ti ricordiamo di ritirare il tuo pranzo', 1, '2023-01-10 15:50:07', '2023-02-12 01:27:23'),
(1171, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-11 12:00:42', '2023-02-23 23:57:03'),
(1172, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-11 12:00:42', '2023-01-11 12:00:42'),
(1173, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-11 12:00:42', '2023-02-12 01:27:23'),
(1174, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-11 12:00:42', '2023-02-20 21:54:54'),
(1176, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-11 12:00:42', '2023-02-20 05:20:55'),
(1177, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-11 12:00:42', '2023-01-11 12:00:42'),
(1178, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-11 14:00:33', '2023-02-23 23:57:03'),
(1179, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-11 14:00:33', '2023-01-11 14:00:33'),
(1180, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-11 14:00:33', '2023-02-12 01:27:23'),
(1181, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-11 14:00:33', '2023-02-20 21:54:54'),
(1183, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-11 14:00:33', '2023-02-20 05:20:55'),
(1184, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-11 14:00:33', '2023-01-11 14:00:33'),
(1185, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-12 12:00:34', '2023-02-23 23:57:03'),
(1186, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-12 12:00:34', '2023-01-12 12:00:34'),
(1187, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-12 12:00:34', '2023-02-12 01:27:23'),
(1188, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-12 12:00:34', '2023-02-20 21:54:54'),
(1190, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-12 12:00:34', '2023-02-20 05:20:55'),
(1191, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-12 12:00:34', '2023-01-12 12:00:34'),
(1192, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-12 14:00:38', '2023-02-23 23:57:03'),
(1193, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-12 14:00:38', '2023-01-12 14:00:38'),
(1194, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-12 14:00:38', '2023-02-12 01:27:23'),
(1195, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-12 14:00:38', '2023-02-20 21:54:54'),
(1197, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-12 14:00:38', '2023-02-20 05:20:55'),
(1198, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-12 14:00:38', '2023-01-12 14:00:38'),
(1199, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-13 12:00:46', '2023-02-23 23:57:03'),
(1200, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-13 12:00:46', '2023-01-13 12:00:46'),
(1201, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-13 12:00:46', '2023-02-12 01:27:23'),
(1202, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-13 12:00:46', '2023-02-20 21:54:54'),
(1204, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-13 12:00:46', '2023-02-20 05:20:55'),
(1205, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-13 12:00:46', '2023-01-13 12:00:46');
INSERT INTO `notifications` (`id`, `user_id`, `school_id`, `title`, `message`, `is_read`, `created_at`, `updated_at`) VALUES
(1206, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-13 14:00:22', '2023-02-23 23:57:03'),
(1207, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-13 14:00:22', '2023-01-13 14:00:22'),
(1208, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-13 14:00:22', '2023-02-12 01:27:23'),
(1209, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-13 14:00:22', '2023-02-20 21:54:54'),
(1211, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-13 14:00:22', '2023-02-20 05:20:55'),
(1212, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-13 14:00:22', '2023-01-13 14:00:22'),
(1213, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-14 12:00:40', '2023-02-23 23:57:03'),
(1214, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-14 12:00:40', '2023-01-14 12:00:40'),
(1215, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-14 12:00:40', '2023-02-12 01:27:23'),
(1216, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-14 12:00:40', '2023-02-20 21:54:54'),
(1218, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-14 12:00:40', '2023-02-20 05:20:55'),
(1219, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-14 12:00:40', '2023-01-14 12:00:40'),
(1220, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-14 14:00:17', '2023-02-23 23:57:03'),
(1221, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-14 14:00:17', '2023-01-14 14:00:17'),
(1222, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-14 14:00:17', '2023-02-12 01:27:23'),
(1223, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-14 14:00:17', '2023-02-20 21:54:54'),
(1225, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-14 14:00:17', '2023-02-20 05:20:55'),
(1226, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-14 14:00:17', '2023-01-14 14:00:17'),
(1227, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-15 12:00:23', '2023-02-23 23:57:03'),
(1228, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-15 12:00:23', '2023-01-15 12:00:23'),
(1229, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-15 12:00:23', '2023-02-12 01:27:23'),
(1230, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-15 12:00:23', '2023-02-20 21:54:54'),
(1232, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-15 12:00:23', '2023-02-20 05:20:55'),
(1233, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-15 12:00:23', '2023-01-15 12:00:23'),
(1234, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-15 14:00:01', '2023-02-23 23:57:03'),
(1235, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-15 14:00:01', '2023-01-15 14:00:01'),
(1236, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-15 14:00:01', '2023-02-12 01:27:23'),
(1237, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-15 14:00:01', '2023-02-20 21:54:54'),
(1239, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-15 14:00:01', '2023-02-20 05:20:55'),
(1240, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-15 14:00:01', '2023-01-15 14:00:01'),
(1241, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-16 12:00:40', '2023-02-23 23:57:03'),
(1242, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-16 12:00:40', '2023-01-16 12:00:40'),
(1243, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-16 12:00:40', '2023-02-12 01:27:23'),
(1244, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-16 12:00:40', '2023-02-20 21:54:54'),
(1246, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-16 12:00:40', '2023-02-20 05:20:55'),
(1247, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-16 12:00:40', '2023-01-16 12:00:40'),
(1248, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-16 14:00:15', '2023-02-23 23:57:03'),
(1249, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-16 14:00:15', '2023-01-16 14:00:15'),
(1250, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-16 14:00:15', '2023-02-12 01:27:23'),
(1251, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-16 14:00:15', '2023-02-20 21:54:54'),
(1253, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-16 14:00:15', '2023-02-20 05:20:55'),
(1254, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-16 14:00:15', '2023-01-16 14:00:15'),
(1255, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-17 12:00:39', '2023-02-23 23:57:03'),
(1256, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-17 12:00:39', '2023-01-17 12:00:39'),
(1257, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-17 12:00:39', '2023-02-12 01:27:23'),
(1258, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-17 12:00:39', '2023-02-20 21:54:54'),
(1260, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-17 12:00:39', '2023-02-20 05:20:55'),
(1261, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-17 12:00:39', '2023-01-17 12:00:39'),
(1262, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-17 14:00:35', '2023-02-23 23:57:03'),
(1263, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-17 14:00:35', '2023-01-17 14:00:35'),
(1264, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-17 14:00:35', '2023-02-12 01:27:23'),
(1265, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-17 14:00:35', '2023-02-20 21:54:54'),
(1267, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-17 14:00:35', '2023-02-20 05:20:55'),
(1268, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-17 14:00:35', '2023-01-17 14:00:35'),
(1269, NULL, NULL, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 0, '2023-01-17 20:08:26', '2023-01-17 20:08:26'),
(1270, NULL, 16, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  18-01-2023', 1, '2023-01-17 20:10:47', '2023-02-20 05:01:07'),
(1271, NULL, 16, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  19-01-2023', 1, '2023-01-17 20:11:07', '2023-02-20 05:01:07'),
(1272, NULL, 16, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  18-01-2023', 1, '2023-01-17 20:11:25', '2023-02-20 05:01:07'),
(1273, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  18-01-2023', 1, '2023-01-17 20:11:40', '2023-02-23 23:57:03'),
(1274, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  18-01-2023', 0, '2023-01-17 20:11:40', '2023-01-17 20:11:40'),
(1275, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  18-01-2023', 1, '2023-01-17 20:11:40', '2023-02-12 01:27:23'),
(1276, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  18-01-2023', 1, '2023-01-17 20:11:40', '2023-02-20 21:54:54'),
(1277, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  18-01-2023', 1, '2023-01-17 20:11:40', '2023-02-20 05:20:55'),
(1278, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  18-01-2023', 0, '2023-01-17 20:11:40', '2023-01-17 20:11:40'),
(1279, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  19-01-2023', 1, '2023-01-17 20:11:44', '2023-02-23 23:57:03'),
(1280, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  19-01-2023', 0, '2023-01-17 20:11:44', '2023-01-17 20:11:44'),
(1281, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  19-01-2023', 1, '2023-01-17 20:11:44', '2023-02-12 01:27:23'),
(1282, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  19-01-2023', 1, '2023-01-17 20:11:44', '2023-02-20 21:54:54'),
(1283, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  19-01-2023', 1, '2023-01-17 20:11:44', '2023-02-20 05:20:55'),
(1284, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  19-01-2023', 0, '2023-01-17 20:11:44', '2023-01-17 20:11:44'),
(1285, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  18-01-2023', 1, '2023-01-17 20:11:46', '2023-02-23 23:57:03'),
(1286, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  18-01-2023', 0, '2023-01-17 20:11:46', '2023-01-17 20:11:46'),
(1287, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  18-01-2023', 1, '2023-01-17 20:11:46', '2023-02-12 01:27:23'),
(1288, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  18-01-2023', 1, '2023-01-17 20:11:46', '2023-02-20 21:54:54'),
(1289, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  18-01-2023', 1, '2023-01-17 20:11:46', '2023-02-20 05:20:55'),
(1290, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  18-01-2023', 0, '2023-01-17 20:11:46', '2023-01-17 20:11:46'),
(1291, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  20-01-2023', 1, '2023-01-17 20:22:02', '2023-02-23 23:57:03'),
(1292, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  20-01-2023', 0, '2023-01-17 20:22:02', '2023-01-17 20:22:02'),
(1293, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  20-01-2023', 1, '2023-01-17 20:22:02', '2023-02-12 01:27:23'),
(1294, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  20-01-2023', 1, '2023-01-17 20:22:02', '2023-02-20 21:54:54'),
(1295, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  20-01-2023', 1, '2023-01-17 20:22:02', '2023-02-20 05:20:55'),
(1296, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  20-01-2023', 0, '2023-01-17 20:22:02', '2023-01-17 20:22:02'),
(1297, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  20-01-2023', 1, '2023-01-17 20:22:05', '2023-02-23 23:57:03'),
(1298, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  20-01-2023', 0, '2023-01-17 20:22:05', '2023-01-17 20:22:05'),
(1299, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  20-01-2023', 1, '2023-01-17 20:22:05', '2023-02-12 01:27:23'),
(1300, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  20-01-2023', 1, '2023-01-17 20:22:05', '2023-02-20 21:54:54'),
(1301, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  20-01-2023', 1, '2023-01-17 20:22:05', '2023-02-20 05:20:55'),
(1302, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  20-01-2023', 0, '2023-01-17 20:22:05', '2023-01-17 20:22:05'),
(1303, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Sabato  21-01-2023', 1, '2023-01-17 20:22:08', '2023-02-23 23:57:03'),
(1304, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Sabato  21-01-2023', 0, '2023-01-17 20:22:08', '2023-01-17 20:22:08'),
(1305, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Sabato  21-01-2023', 1, '2023-01-17 20:22:08', '2023-02-12 01:27:23'),
(1306, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Sabato  21-01-2023', 1, '2023-01-17 20:22:08', '2023-02-20 21:54:54'),
(1307, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Sabato  21-01-2023', 1, '2023-01-17 20:22:08', '2023-02-20 05:20:55'),
(1308, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Sabato  21-01-2023', 0, '2023-01-17 20:22:08', '2023-01-17 20:22:08'),
(1309, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-18 12:00:35', '2023-02-23 23:57:03'),
(1310, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-18 12:00:35', '2023-01-18 12:00:35'),
(1311, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-18 12:00:35', '2023-02-12 01:27:23'),
(1312, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-18 12:00:35', '2023-02-20 21:54:54'),
(1313, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-18 12:00:35', '2023-02-20 05:20:55'),
(1314, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-18 12:00:35', '2023-01-18 12:00:35'),
(1315, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-18 14:00:11', '2023-02-23 23:57:03'),
(1316, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-18 14:00:11', '2023-01-18 14:00:11'),
(1317, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-18 14:00:11', '2023-02-12 01:27:23'),
(1318, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-18 14:00:11', '2023-02-20 21:54:54'),
(1319, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-18 14:00:11', '2023-02-20 05:20:55'),
(1320, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-18 14:00:11', '2023-01-18 14:00:11'),
(1321, 39, NULL, 'Notifica di avviso', 'Ti ricordiamo di ritirare il tuo pranzo', 1, '2023-01-18 16:10:38', '2023-02-23 23:57:03'),
(1322, 40, NULL, 'Notifica di avviso', 'Ti ricordiamo di ritirare il tuo pranzo', 0, '2023-01-18 16:10:38', '2023-01-18 16:10:38'),
(1323, 41, NULL, 'Notifica di avviso', 'Ti ricordiamo di ritirare il tuo pranzo', 1, '2023-01-18 16:10:38', '2023-02-12 01:27:23'),
(1324, 43, NULL, 'Notifica di avviso', 'Ti ricordiamo di ritirare il tuo pranzo', 1, '2023-01-18 16:10:38', '2023-02-20 21:54:54'),
(1325, 45, NULL, 'Notifica di avviso', 'Ti ricordiamo di ritirare il tuo pranzo', 1, '2023-01-18 16:10:38', '2023-02-20 05:20:55'),
(1326, 46, NULL, 'Notifica di avviso', 'Ti ricordiamo di ritirare il tuo pranzo', 0, '2023-01-18 16:10:38', '2023-01-18 16:10:38'),
(1327, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-18 16:20:07', '2023-02-23 23:57:03'),
(1328, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-18 16:20:07', '2023-01-18 16:20:07'),
(1329, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-18 16:20:07', '2023-02-12 01:27:23'),
(1330, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-18 16:20:07', '2023-02-20 21:54:54'),
(1331, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-18 16:20:07', '2023-02-20 05:20:55'),
(1332, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-18 16:20:07', '2023-01-18 16:20:07'),
(1333, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  02-01-2023', 1, '2023-01-18 17:48:03', '2023-02-23 23:57:03'),
(1334, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  02-01-2023', 0, '2023-01-18 17:48:03', '2023-01-18 17:48:03'),
(1335, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  02-01-2023', 1, '2023-01-18 17:48:03', '2023-02-12 01:27:23'),
(1336, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  02-01-2023', 1, '2023-01-18 17:48:03', '2023-02-20 21:54:54'),
(1337, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  02-01-2023', 1, '2023-01-18 17:48:03', '2023-02-20 05:20:55'),
(1338, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  02-01-2023', 0, '2023-01-18 17:48:03', '2023-01-18 17:48:03'),
(1339, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  02-01-2023', 1, '2023-01-18 17:48:12', '2023-02-23 23:57:03'),
(1340, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  02-01-2023', 0, '2023-01-18 17:48:12', '2023-01-18 17:48:12'),
(1341, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  02-01-2023', 1, '2023-01-18 17:48:12', '2023-02-12 01:27:23'),
(1342, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  02-01-2023', 1, '2023-01-18 17:48:12', '2023-02-20 21:54:54'),
(1343, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  02-01-2023', 1, '2023-01-18 17:48:12', '2023-02-20 05:20:55'),
(1344, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  02-01-2023', 0, '2023-01-18 17:48:12', '2023-01-18 17:48:12'),
(1345, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  02-01-2023', 1, '2023-01-18 17:48:14', '2023-02-23 23:57:03'),
(1346, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  02-01-2023', 0, '2023-01-18 17:48:14', '2023-01-18 17:48:14'),
(1347, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  02-01-2023', 1, '2023-01-18 17:48:14', '2023-02-12 01:27:23'),
(1348, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  02-01-2023', 1, '2023-01-18 17:48:14', '2023-02-20 21:54:54'),
(1349, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  02-01-2023', 1, '2023-01-18 17:48:14', '2023-02-20 05:20:55'),
(1350, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  02-01-2023', 0, '2023-01-18 17:48:14', '2023-01-18 17:48:14'),
(1351, NULL, 16, 'CIAO', 'CIAO', 1, '2023-01-18 18:14:58', '2023-02-20 05:01:07'),
(1352, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-19 12:00:03', '2023-02-23 23:57:03'),
(1353, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-19 12:00:03', '2023-01-19 12:00:03'),
(1354, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-19 12:00:03', '2023-02-12 01:27:23'),
(1355, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-19 12:00:03', '2023-02-20 21:54:54'),
(1356, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-19 12:00:03', '2023-02-20 05:20:55'),
(1357, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-19 12:00:03', '2023-01-19 12:00:03'),
(1358, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-19 16:20:13', '2023-02-23 23:57:03'),
(1359, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-19 16:20:13', '2023-01-19 16:20:13'),
(1360, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-19 16:20:13', '2023-02-12 01:27:23'),
(1361, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-19 16:20:13', '2023-02-20 21:54:54'),
(1362, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-19 16:20:13', '2023-02-20 05:20:55'),
(1363, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-19 16:20:13', '2023-01-19 16:20:13'),
(1364, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  20-01-2023', 1, '2023-01-20 09:16:35', '2023-02-23 23:57:03'),
(1365, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  20-01-2023', 0, '2023-01-20 09:16:35', '2023-01-20 09:16:35'),
(1366, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  20-01-2023', 1, '2023-01-20 09:16:35', '2023-02-12 01:27:23'),
(1367, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  20-01-2023', 1, '2023-01-20 09:16:35', '2023-02-20 21:54:54'),
(1368, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  20-01-2023', 1, '2023-01-20 09:16:35', '2023-02-20 05:20:55'),
(1369, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  20-01-2023', 0, '2023-01-20 09:16:35', '2023-01-20 09:16:35'),
(1370, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  20-01-2023', 1, '2023-01-20 09:16:37', '2023-02-23 23:57:03'),
(1371, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  20-01-2023', 0, '2023-01-20 09:16:37', '2023-01-20 09:16:37'),
(1372, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  20-01-2023', 1, '2023-01-20 09:16:37', '2023-02-12 01:27:23'),
(1373, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  20-01-2023', 1, '2023-01-20 09:16:37', '2023-02-20 21:54:54'),
(1374, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  20-01-2023', 1, '2023-01-20 09:16:37', '2023-02-20 05:20:55'),
(1375, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  20-01-2023', 0, '2023-01-20 09:16:37', '2023-01-20 09:16:37'),
(1376, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  20-01-2023', 1, '2023-01-20 09:16:44', '2023-02-23 23:57:03'),
(1377, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  20-01-2023', 0, '2023-01-20 09:16:44', '2023-01-20 09:16:44'),
(1378, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  20-01-2023', 1, '2023-01-20 09:16:44', '2023-02-12 01:27:23'),
(1379, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  20-01-2023', 1, '2023-01-20 09:16:44', '2023-02-20 21:54:54'),
(1380, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  20-01-2023', 1, '2023-01-20 09:16:44', '2023-02-20 05:20:55'),
(1381, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  20-01-2023', 0, '2023-01-20 09:16:44', '2023-01-20 09:16:44'),
(1382, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  23-01-2023', 1, '2023-01-20 09:16:46', '2023-02-23 23:57:03'),
(1383, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  23-01-2023', 0, '2023-01-20 09:16:46', '2023-01-20 09:16:46'),
(1384, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  23-01-2023', 1, '2023-01-20 09:16:46', '2023-02-12 01:27:23'),
(1385, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  23-01-2023', 1, '2023-01-20 09:16:46', '2023-02-20 21:54:54'),
(1386, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  23-01-2023', 1, '2023-01-20 09:16:46', '2023-02-20 05:20:55'),
(1387, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  23-01-2023', 0, '2023-01-20 09:16:46', '2023-01-20 09:16:46'),
(1388, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  23-01-2023', 1, '2023-01-20 09:16:48', '2023-02-23 23:57:03'),
(1389, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  23-01-2023', 0, '2023-01-20 09:16:48', '2023-01-20 09:16:48'),
(1390, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  23-01-2023', 1, '2023-01-20 09:16:48', '2023-02-12 01:27:23'),
(1391, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  23-01-2023', 1, '2023-01-20 09:16:48', '2023-02-20 21:54:54'),
(1392, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  23-01-2023', 1, '2023-01-20 09:16:48', '2023-02-20 05:20:55'),
(1393, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  23-01-2023', 0, '2023-01-20 09:16:48', '2023-01-20 09:16:48'),
(1394, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  23-01-2023', 1, '2023-01-20 09:16:49', '2023-02-23 23:57:03'),
(1395, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  23-01-2023', 0, '2023-01-20 09:16:49', '2023-01-20 09:16:49'),
(1396, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  23-01-2023', 1, '2023-01-20 09:16:49', '2023-02-12 01:27:23'),
(1397, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  23-01-2023', 1, '2023-01-20 09:16:49', '2023-02-20 21:54:54'),
(1398, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  23-01-2023', 1, '2023-01-20 09:16:49', '2023-02-20 05:20:55'),
(1399, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  23-01-2023', 0, '2023-01-20 09:16:49', '2023-01-20 09:16:49'),
(1400, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  24-01-2023', 1, '2023-01-20 09:16:51', '2023-02-23 23:57:03'),
(1401, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  24-01-2023', 0, '2023-01-20 09:16:51', '2023-01-20 09:16:51'),
(1402, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  24-01-2023', 1, '2023-01-20 09:16:51', '2023-02-12 01:27:23'),
(1403, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  24-01-2023', 1, '2023-01-20 09:16:51', '2023-02-20 21:54:54'),
(1404, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  24-01-2023', 1, '2023-01-20 09:16:51', '2023-02-20 05:20:55'),
(1405, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  24-01-2023', 0, '2023-01-20 09:16:51', '2023-01-20 09:16:51'),
(1406, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  24-01-2023', 1, '2023-01-20 09:16:52', '2023-02-23 23:57:03'),
(1407, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  24-01-2023', 0, '2023-01-20 09:16:52', '2023-01-20 09:16:52'),
(1408, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  24-01-2023', 1, '2023-01-20 09:16:52', '2023-02-12 01:27:23'),
(1409, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  24-01-2023', 1, '2023-01-20 09:16:52', '2023-02-20 21:54:54'),
(1410, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  24-01-2023', 1, '2023-01-20 09:16:53', '2023-02-20 05:20:55'),
(1411, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  24-01-2023', 0, '2023-01-20 09:16:53', '2023-01-20 09:16:53'),
(1412, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  24-01-2023', 1, '2023-01-20 09:16:54', '2023-02-23 23:57:03'),
(1413, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  24-01-2023', 0, '2023-01-20 09:16:54', '2023-01-20 09:16:54'),
(1414, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  24-01-2023', 1, '2023-01-20 09:16:54', '2023-02-12 01:27:23'),
(1415, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  24-01-2023', 1, '2023-01-20 09:16:54', '2023-02-20 21:54:54'),
(1416, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  24-01-2023', 1, '2023-01-20 09:16:54', '2023-02-20 05:20:55'),
(1417, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  24-01-2023', 0, '2023-01-20 09:16:54', '2023-01-20 09:16:54'),
(1418, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  25-01-2023', 1, '2023-01-20 10:35:48', '2023-02-23 23:57:03'),
(1419, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  25-01-2023', 0, '2023-01-20 10:35:48', '2023-01-20 10:35:48'),
(1420, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  25-01-2023', 1, '2023-01-20 10:35:48', '2023-02-12 01:27:23'),
(1421, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  25-01-2023', 1, '2023-01-20 10:35:48', '2023-02-20 21:54:54'),
(1422, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  25-01-2023', 1, '2023-01-20 10:35:48', '2023-02-20 05:20:55'),
(1423, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  25-01-2023', 0, '2023-01-20 10:35:48', '2023-01-20 10:35:48'),
(1424, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  25-01-2023', 1, '2023-01-20 10:35:52', '2023-02-23 23:57:03'),
(1425, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  25-01-2023', 0, '2023-01-20 10:35:52', '2023-01-20 10:35:52'),
(1426, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  25-01-2023', 1, '2023-01-20 10:35:52', '2023-02-12 01:27:23'),
(1427, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  25-01-2023', 1, '2023-01-20 10:35:52', '2023-02-20 21:54:54'),
(1428, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  25-01-2023', 1, '2023-01-20 10:35:52', '2023-02-20 05:20:55'),
(1429, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  25-01-2023', 0, '2023-01-20 10:35:52', '2023-01-20 10:35:52'),
(1430, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  25-01-2023', 1, '2023-01-20 10:35:54', '2023-02-23 23:57:03'),
(1431, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  25-01-2023', 0, '2023-01-20 10:35:54', '2023-01-20 10:35:54'),
(1432, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  25-01-2023', 1, '2023-01-20 10:35:54', '2023-02-12 01:27:23'),
(1433, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  25-01-2023', 1, '2023-01-20 10:35:54', '2023-02-20 21:54:54'),
(1434, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  25-01-2023', 1, '2023-01-20 10:35:54', '2023-02-20 05:20:55'),
(1435, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  25-01-2023', 0, '2023-01-20 10:35:54', '2023-01-20 10:35:54'),
(1436, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  26-01-2023', 1, '2023-01-20 10:35:57', '2023-02-23 23:57:03'),
(1437, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  26-01-2023', 0, '2023-01-20 10:35:57', '2023-01-20 10:35:57'),
(1438, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  26-01-2023', 1, '2023-01-20 10:35:57', '2023-02-12 01:27:23'),
(1439, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  26-01-2023', 1, '2023-01-20 10:35:57', '2023-02-20 21:54:54'),
(1440, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  26-01-2023', 1, '2023-01-20 10:35:57', '2023-02-20 05:20:55'),
(1441, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  26-01-2023', 0, '2023-01-20 10:35:57', '2023-01-20 10:35:57'),
(1442, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  26-01-2023', 1, '2023-01-20 10:35:59', '2023-02-23 23:57:03'),
(1443, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  26-01-2023', 0, '2023-01-20 10:35:59', '2023-01-20 10:35:59'),
(1444, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  26-01-2023', 1, '2023-01-20 10:35:59', '2023-02-12 01:27:23'),
(1445, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  26-01-2023', 1, '2023-01-20 10:35:59', '2023-02-20 21:54:54'),
(1446, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  26-01-2023', 1, '2023-01-20 10:35:59', '2023-02-20 05:20:55'),
(1447, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  26-01-2023', 0, '2023-01-20 10:35:59', '2023-01-20 10:35:59'),
(1448, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  26-01-2023', 1, '2023-01-20 10:36:01', '2023-02-23 23:57:03'),
(1449, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  26-01-2023', 0, '2023-01-20 10:36:01', '2023-01-20 10:36:01'),
(1450, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  26-01-2023', 1, '2023-01-20 10:36:01', '2023-02-12 01:27:23'),
(1451, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  26-01-2023', 1, '2023-01-20 10:36:01', '2023-02-20 21:54:54'),
(1452, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  26-01-2023', 1, '2023-01-20 10:36:01', '2023-02-20 05:20:55'),
(1453, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  26-01-2023', 0, '2023-01-20 10:36:01', '2023-01-20 10:36:01'),
(1454, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  27-01-2023', 1, '2023-01-20 10:36:04', '2023-02-23 23:57:03'),
(1455, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  27-01-2023', 0, '2023-01-20 10:36:04', '2023-01-20 10:36:04'),
(1456, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  27-01-2023', 1, '2023-01-20 10:36:04', '2023-02-12 01:27:23'),
(1457, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  27-01-2023', 1, '2023-01-20 10:36:04', '2023-02-20 21:54:54'),
(1458, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  27-01-2023', 1, '2023-01-20 10:36:04', '2023-02-20 05:20:55'),
(1459, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  27-01-2023', 0, '2023-01-20 10:36:04', '2023-01-20 10:36:04'),
(1460, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  27-01-2023', 1, '2023-01-20 10:36:07', '2023-02-23 23:57:03'),
(1461, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  27-01-2023', 0, '2023-01-20 10:36:07', '2023-01-20 10:36:07'),
(1462, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  27-01-2023', 1, '2023-01-20 10:36:07', '2023-02-12 01:27:23'),
(1463, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  27-01-2023', 1, '2023-01-20 10:36:07', '2023-02-20 21:54:54'),
(1464, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  27-01-2023', 1, '2023-01-20 10:36:07', '2023-02-20 05:20:55'),
(1465, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  27-01-2023', 0, '2023-01-20 10:36:07', '2023-01-20 10:36:07'),
(1466, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  27-01-2023', 1, '2023-01-20 10:36:10', '2023-02-23 23:57:03'),
(1467, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  27-01-2023', 0, '2023-01-20 10:36:10', '2023-01-20 10:36:10'),
(1468, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  27-01-2023', 1, '2023-01-20 10:36:10', '2023-02-12 01:27:23'),
(1469, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  27-01-2023', 1, '2023-01-20 10:36:10', '2023-02-20 21:54:54'),
(1470, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  27-01-2023', 1, '2023-01-20 10:36:10', '2023-02-20 05:20:55'),
(1471, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  27-01-2023', 0, '2023-01-20 10:36:10', '2023-01-20 10:36:10'),
(1472, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  30-01-2023', 1, '2023-01-20 10:36:12', '2023-02-23 23:57:03'),
(1473, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  30-01-2023', 0, '2023-01-20 10:36:12', '2023-01-20 10:36:12'),
(1474, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  30-01-2023', 1, '2023-01-20 10:36:12', '2023-02-12 01:27:23'),
(1475, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  30-01-2023', 1, '2023-01-20 10:36:12', '2023-02-20 21:54:54'),
(1476, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  30-01-2023', 1, '2023-01-20 10:36:12', '2023-02-20 05:20:55'),
(1477, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  30-01-2023', 0, '2023-01-20 10:36:12', '2023-01-20 10:36:12'),
(1478, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  30-01-2023', 1, '2023-01-20 10:36:14', '2023-02-23 23:57:03'),
(1479, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  30-01-2023', 0, '2023-01-20 10:36:14', '2023-01-20 10:36:14'),
(1480, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  30-01-2023', 1, '2023-01-20 10:36:14', '2023-02-12 01:27:23'),
(1481, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  30-01-2023', 1, '2023-01-20 10:36:14', '2023-02-20 21:54:54'),
(1482, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  30-01-2023', 1, '2023-01-20 10:36:14', '2023-02-20 05:20:55'),
(1483, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  30-01-2023', 0, '2023-01-20 10:36:14', '2023-01-20 10:36:14'),
(1484, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  30-01-2023', 1, '2023-01-20 10:36:17', '2023-02-23 23:57:03'),
(1485, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  30-01-2023', 0, '2023-01-20 10:36:17', '2023-01-20 10:36:17'),
(1486, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  30-01-2023', 1, '2023-01-20 10:36:17', '2023-02-12 01:27:23'),
(1487, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  30-01-2023', 1, '2023-01-20 10:36:17', '2023-02-20 21:54:54'),
(1488, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  30-01-2023', 1, '2023-01-20 10:36:17', '2023-02-20 05:20:55'),
(1489, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  30-01-2023', 0, '2023-01-20 10:36:17', '2023-01-20 10:36:17'),
(1490, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  31-01-2023', 1, '2023-01-20 10:36:19', '2023-02-23 23:57:03'),
(1491, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  31-01-2023', 0, '2023-01-20 10:36:19', '2023-01-20 10:36:19'),
(1492, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  31-01-2023', 1, '2023-01-20 10:36:19', '2023-02-12 01:27:23'),
(1493, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  31-01-2023', 1, '2023-01-20 10:36:19', '2023-02-20 21:54:54'),
(1494, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  31-01-2023', 1, '2023-01-20 10:36:19', '2023-02-20 05:20:55'),
(1495, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  31-01-2023', 0, '2023-01-20 10:36:19', '2023-01-20 10:36:19'),
(1496, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  31-01-2023', 1, '2023-01-20 10:36:21', '2023-02-23 23:57:03'),
(1497, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  31-01-2023', 0, '2023-01-20 10:36:21', '2023-01-20 10:36:21'),
(1498, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  31-01-2023', 1, '2023-01-20 10:36:21', '2023-02-12 01:27:23'),
(1499, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  31-01-2023', 1, '2023-01-20 10:36:21', '2023-02-20 21:54:54'),
(1500, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  31-01-2023', 1, '2023-01-20 10:36:21', '2023-02-20 05:20:55'),
(1501, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  31-01-2023', 0, '2023-01-20 10:36:21', '2023-01-20 10:36:21'),
(1502, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  31-01-2023', 1, '2023-01-20 10:36:24', '2023-02-23 23:57:03'),
(1503, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  31-01-2023', 0, '2023-01-20 10:36:24', '2023-01-20 10:36:24'),
(1504, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  31-01-2023', 1, '2023-01-20 10:36:24', '2023-02-12 01:27:23'),
(1505, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  31-01-2023', 1, '2023-01-20 10:36:24', '2023-02-20 21:54:54'),
(1506, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  31-01-2023', 1, '2023-01-20 10:36:24', '2023-02-20 05:20:55'),
(1507, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  31-01-2023', 0, '2023-01-20 10:36:24', '2023-01-20 10:36:24'),
(1508, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-20 12:00:48', '2023-02-23 23:57:03'),
(1509, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-20 12:00:48', '2023-01-20 12:00:48'),
(1510, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-20 12:00:48', '2023-02-12 01:27:23'),
(1511, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-20 12:00:48', '2023-02-20 21:54:54'),
(1512, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-20 12:00:48', '2023-02-20 05:20:55'),
(1513, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-20 12:00:48', '2023-01-20 12:00:48'),
(1514, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-20 16:20:22', '2023-02-23 23:57:03'),
(1515, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-20 16:20:22', '2023-01-20 16:20:22'),
(1516, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-20 16:20:22', '2023-02-12 01:27:23'),
(1517, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-20 16:20:22', '2023-02-20 21:54:54'),
(1518, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-20 16:20:22', '2023-02-20 05:20:55'),
(1519, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-20 16:20:22', '2023-01-20 16:20:22'),
(1520, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-21 12:00:29', '2023-02-23 23:57:03'),
(1521, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-21 12:00:29', '2023-01-21 12:00:29'),
(1522, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-21 12:00:29', '2023-02-12 01:27:23'),
(1523, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-21 12:00:29', '2023-02-20 21:54:54'),
(1524, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-21 12:00:29', '2023-02-20 05:20:55'),
(1525, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-21 12:00:29', '2023-01-21 12:00:29'),
(1526, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-21 16:20:20', '2023-02-23 23:57:03'),
(1527, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-21 16:20:20', '2023-01-21 16:20:20'),
(1528, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-21 16:20:20', '2023-02-12 01:27:23'),
(1529, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-21 16:20:20', '2023-02-20 21:54:54');
INSERT INTO `notifications` (`id`, `user_id`, `school_id`, `title`, `message`, `is_read`, `created_at`, `updated_at`) VALUES
(1530, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-21 16:20:20', '2023-02-20 05:20:55'),
(1531, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-21 16:20:20', '2023-01-21 16:20:20'),
(1532, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-22 12:00:21', '2023-02-23 23:57:03'),
(1533, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-22 12:00:21', '2023-01-22 12:00:21'),
(1534, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-22 12:00:21', '2023-02-12 01:27:23'),
(1535, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-22 12:00:21', '2023-02-20 21:54:54'),
(1536, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-22 12:00:21', '2023-02-20 05:20:55'),
(1537, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-22 12:00:21', '2023-01-22 12:00:21'),
(1538, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-22 16:20:23', '2023-02-23 23:57:03'),
(1539, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-22 16:20:23', '2023-01-22 16:20:23'),
(1540, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-22 16:20:23', '2023-02-12 01:27:23'),
(1541, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-22 16:20:23', '2023-02-20 21:54:54'),
(1542, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-22 16:20:23', '2023-02-20 05:20:55'),
(1543, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-22 16:20:23', '2023-01-22 16:20:23'),
(1544, 39, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2023-01-23 09:00:45', '2023-02-23 23:57:03'),
(1545, 41, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2023-01-23 09:00:45', '2023-02-12 01:27:23'),
(1546, 45, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2023-01-23 09:00:45', '2023-02-20 05:20:55'),
(1547, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-23 12:00:11', '2023-02-23 23:57:03'),
(1548, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-23 12:00:11', '2023-01-23 12:00:11'),
(1549, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-23 12:00:11', '2023-02-12 01:27:23'),
(1550, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-23 12:00:11', '2023-02-20 21:54:54'),
(1551, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-23 12:00:11', '2023-02-20 05:20:55'),
(1552, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-23 12:00:11', '2023-01-23 12:00:11'),
(1553, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  25-01-2023', 1, '2023-01-23 13:08:05', '2023-02-23 23:57:03'),
(1554, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  25-01-2023', 0, '2023-01-23 13:08:05', '2023-01-23 13:08:05'),
(1555, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  25-01-2023', 1, '2023-01-23 13:08:05', '2023-02-12 01:27:23'),
(1556, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  25-01-2023', 1, '2023-01-23 13:08:05', '2023-02-20 21:54:54'),
(1557, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  25-01-2023', 1, '2023-01-23 13:08:05', '2023-02-20 05:20:55'),
(1558, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  25-01-2023', 0, '2023-01-23 13:08:05', '2023-01-23 13:08:05'),
(1559, NULL, 16, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  25-01-2023', 1, '2023-01-23 13:29:46', '2023-02-20 05:01:07'),
(1560, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-23 14:00:08', '2023-02-23 23:57:03'),
(1561, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-23 14:00:08', '2023-01-23 14:00:08'),
(1562, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-23 14:00:08', '2023-02-12 01:27:23'),
(1563, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-23 14:00:08', '2023-02-20 21:54:54'),
(1564, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-23 14:00:08', '2023-02-20 05:20:55'),
(1565, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-23 14:00:08', '2023-01-23 14:00:08'),
(1566, 39, NULL, 'Notifica di avviso', 'Ricordati di consultare l\'app per verificare se hai ordinato il pranzo per oggi', 1, '2023-01-23 15:50:20', '2023-02-23 23:57:03'),
(1567, 41, NULL, 'Notifica di avviso', 'Ricordati di consultare l\'app per verificare se hai ordinato il pranzo per oggi', 1, '2023-01-23 15:50:20', '2023-02-12 01:27:23'),
(1568, 45, NULL, 'Notifica di avviso', 'Ricordati di consultare l\'app per verificare se hai ordinato il pranzo per oggi', 1, '2023-01-23 15:50:20', '2023-02-20 05:20:55'),
(1569, 39, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2023-01-24 09:00:49', '2023-02-23 23:57:03'),
(1570, 41, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2023-01-24 09:00:49', '2023-02-12 01:27:23'),
(1571, 45, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2023-01-24 09:00:49', '2023-02-20 05:20:55'),
(1572, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-24 12:00:48', '2023-02-23 23:57:03'),
(1573, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-24 12:00:48', '2023-01-24 12:00:48'),
(1574, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-24 12:00:48', '2023-02-12 01:27:23'),
(1575, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-24 12:00:48', '2023-02-20 21:54:54'),
(1576, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-24 12:00:48', '2023-02-20 05:20:55'),
(1577, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-24 12:00:48', '2023-01-24 12:00:48'),
(1578, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-24 14:00:34', '2023-02-23 23:57:03'),
(1579, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-24 14:00:34', '2023-01-24 14:00:34'),
(1580, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-24 14:00:34', '2023-02-12 01:27:23'),
(1581, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-24 14:00:34', '2023-02-20 21:54:54'),
(1582, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-24 14:00:34', '2023-02-20 05:20:55'),
(1583, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-24 14:00:34', '2023-01-24 14:00:34'),
(1584, 39, NULL, 'Notifica di avviso', 'Ricordati di consultare l\'app per verificare se hai ordinato il pranzo per oggi', 1, '2023-01-24 15:50:05', '2023-02-23 23:57:03'),
(1585, 41, NULL, 'Notifica di avviso', 'Ricordati di consultare l\'app per verificare se hai ordinato il pranzo per oggi', 1, '2023-01-24 15:50:05', '2023-02-12 01:27:23'),
(1586, 45, NULL, 'Notifica di avviso', 'Ricordati di consultare l\'app per verificare se hai ordinato il pranzo per oggi', 1, '2023-01-24 15:50:05', '2023-02-20 05:20:55'),
(1587, NULL, 16, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  26-01-2023', 1, '2023-01-24 18:16:35', '2023-02-20 05:01:07'),
(1588, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  26-01-2023', 1, '2023-01-24 18:16:54', '2023-02-23 23:57:03'),
(1589, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  26-01-2023', 0, '2023-01-24 18:16:54', '2023-01-24 18:16:54'),
(1590, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  26-01-2023', 1, '2023-01-24 18:16:54', '2023-02-12 01:27:23'),
(1591, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  26-01-2023', 1, '2023-01-24 18:16:54', '2023-02-20 21:54:54'),
(1592, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  26-01-2023', 1, '2023-01-24 18:16:54', '2023-02-20 05:20:55'),
(1593, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  26-01-2023', 0, '2023-01-24 18:16:54', '2023-01-24 18:16:54'),
(1594, NULL, 16, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  26-01-2023', 1, '2023-01-24 18:17:22', '2023-02-20 05:01:07'),
(1595, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  26-01-2023', 1, '2023-01-24 18:17:28', '2023-02-23 23:57:03'),
(1596, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  26-01-2023', 0, '2023-01-24 18:17:28', '2023-01-24 18:17:28'),
(1597, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  26-01-2023', 1, '2023-01-24 18:17:28', '2023-02-12 01:27:23'),
(1598, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  26-01-2023', 1, '2023-01-24 18:17:28', '2023-02-20 21:54:54'),
(1599, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  26-01-2023', 1, '2023-01-24 18:17:28', '2023-02-20 05:20:55'),
(1600, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  26-01-2023', 0, '2023-01-24 18:17:28', '2023-01-24 18:17:28'),
(1601, 39, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2023-01-25 09:00:04', '2023-02-23 23:57:03'),
(1602, 41, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2023-01-25 09:00:04', '2023-02-12 01:27:23'),
(1603, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-25 12:00:13', '2023-02-23 23:57:03'),
(1604, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-25 12:00:13', '2023-01-25 12:00:13'),
(1605, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-25 12:00:13', '2023-02-12 01:27:23'),
(1606, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-25 12:00:13', '2023-02-20 21:54:54'),
(1607, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-25 12:00:13', '2023-02-20 05:20:55'),
(1608, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-25 12:00:13', '2023-01-25 12:00:13'),
(1609, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-25 14:00:14', '2023-02-23 23:57:03'),
(1610, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-25 14:00:14', '2023-01-25 14:00:14'),
(1611, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-25 14:00:14', '2023-02-12 01:27:23'),
(1612, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-25 14:00:14', '2023-02-20 21:54:54'),
(1613, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-25 14:00:14', '2023-02-20 05:20:55'),
(1614, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-25 14:00:14', '2023-01-25 14:00:14'),
(1615, 39, NULL, 'Notifica di avviso', 'Ricordati di consultare l\'app per verificare se hai ordinato il pranzo per oggi', 1, '2023-01-25 15:50:46', '2023-02-23 23:57:03'),
(1616, 41, NULL, 'Notifica di avviso', 'Ricordati di consultare l\'app per verificare se hai ordinato il pranzo per oggi', 1, '2023-01-25 15:50:46', '2023-02-12 01:27:23'),
(1617, 39, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2023-01-26 09:00:47', '2023-02-23 23:57:03'),
(1618, 41, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2023-01-26 09:00:47', '2023-02-12 01:27:23'),
(1619, 45, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2023-01-26 09:00:47', '2023-02-20 05:20:55'),
(1620, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-26 12:00:18', '2023-02-23 23:57:03'),
(1621, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-26 12:00:18', '2023-01-26 12:00:18'),
(1622, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-26 12:00:18', '2023-02-12 01:27:23'),
(1623, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-26 12:00:18', '2023-02-20 21:54:54'),
(1624, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-26 12:00:18', '2023-02-20 05:20:55'),
(1625, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-26 12:00:18', '2023-01-26 12:00:18'),
(1626, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-26 14:00:09', '2023-02-23 23:57:03'),
(1627, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-26 14:00:09', '2023-01-26 14:00:09'),
(1628, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-26 14:00:09', '2023-02-12 01:27:23'),
(1629, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-26 14:00:09', '2023-02-20 21:54:54'),
(1630, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-26 14:00:09', '2023-02-20 05:20:55'),
(1631, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-26 14:00:09', '2023-01-26 14:00:09'),
(1632, 39, NULL, 'Notifica di avviso', 'Ricordati di consultare l\'app per verificare se hai ordinato il pranzo per oggi', 1, '2023-01-26 15:50:17', '2023-02-23 23:57:03'),
(1633, 41, NULL, 'Notifica di avviso', 'Ricordati di consultare l\'app per verificare se hai ordinato il pranzo per oggi', 1, '2023-01-26 15:50:17', '2023-02-12 01:27:23'),
(1634, 45, NULL, 'Notifica di avviso', 'Ricordati di consultare l\'app per verificare se hai ordinato il pranzo per oggi', 1, '2023-01-26 15:50:17', '2023-02-20 05:20:55'),
(1635, 39, NULL, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è in preparazione', 1, '2023-01-26 23:09:29', '2023-02-23 23:57:03'),
(1636, 41, NULL, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è in preparazione', 1, '2023-01-26 23:09:29', '2023-02-12 01:27:23'),
(1637, 45, NULL, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è in preparazione', 1, '2023-01-26 23:09:29', '2023-02-20 05:20:55'),
(1638, NULL, 16, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è in preparazione', 1, '2023-01-26 23:09:29', '2023-02-20 05:01:07'),
(1639, 39, NULL, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 1, '2023-01-26 23:09:51', '2023-02-23 23:57:03'),
(1640, 41, NULL, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 1, '2023-01-26 23:09:51', '2023-02-12 01:27:23'),
(1641, 45, NULL, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 1, '2023-01-26 23:09:51', '2023-02-20 05:20:55'),
(1642, NULL, 16, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 1, '2023-01-26 23:09:51', '2023-02-20 05:01:07'),
(1643, 41, NULL, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 1, '2023-01-26 23:10:04', '2023-02-12 01:27:23'),
(1644, 45, NULL, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 1, '2023-01-26 23:10:04', '2023-02-20 05:20:55'),
(1645, NULL, 16, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 1, '2023-01-26 23:10:05', '2023-02-20 05:01:07'),
(1646, 39, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2023-01-27 09:00:30', '2023-02-23 23:57:03'),
(1647, 41, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2023-01-27 09:00:30', '2023-02-12 01:27:23'),
(1648, 45, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2023-01-27 09:00:30', '2023-02-20 05:20:55'),
(1649, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-27 12:00:46', '2023-02-23 23:57:03'),
(1650, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-27 12:00:46', '2023-01-27 12:00:46'),
(1651, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-27 12:00:46', '2023-02-12 01:27:23'),
(1652, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-27 12:00:46', '2023-02-20 21:54:54'),
(1653, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-27 12:00:46', '2023-02-20 05:20:55'),
(1654, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-27 12:00:46', '2023-01-27 12:00:46'),
(1655, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-27 14:00:13', '2023-02-23 23:57:03'),
(1656, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-27 14:00:13', '2023-01-27 14:00:13'),
(1657, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-27 14:00:13', '2023-02-12 01:27:23'),
(1658, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-27 14:00:13', '2023-02-20 21:54:54'),
(1659, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-27 14:00:13', '2023-02-20 05:20:55'),
(1660, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-27 14:00:13', '2023-01-27 14:00:13'),
(1661, 39, NULL, 'Notifica di avviso', 'Ricordati di consultare l\'app per verificare se hai ordinato il pranzo per oggi', 1, '2023-01-27 15:50:45', '2023-02-23 23:57:03'),
(1662, 41, NULL, 'Notifica di avviso', 'Ricordati di consultare l\'app per verificare se hai ordinato il pranzo per oggi', 1, '2023-01-27 15:50:45', '2023-02-12 01:27:23'),
(1663, 45, NULL, 'Notifica di avviso', 'Ricordati di consultare l\'app per verificare se hai ordinato il pranzo per oggi', 1, '2023-01-27 15:50:45', '2023-02-20 05:20:55'),
(1664, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-28 12:00:27', '2023-02-23 23:57:03'),
(1665, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-28 12:00:27', '2023-01-28 12:00:27'),
(1666, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-28 12:00:27', '2023-02-12 01:27:23'),
(1667, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-28 12:00:27', '2023-02-20 21:54:54'),
(1668, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-28 12:00:27', '2023-02-20 05:20:55'),
(1669, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-28 12:00:27', '2023-01-28 12:00:27'),
(1670, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-28 14:00:40', '2023-02-23 23:57:03'),
(1671, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-28 14:00:40', '2023-01-28 14:00:40'),
(1672, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-28 14:00:40', '2023-02-12 01:27:23'),
(1673, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-28 14:00:40', '2023-02-20 21:54:54'),
(1674, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-28 14:00:40', '2023-02-20 05:20:55'),
(1675, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-28 14:00:40', '2023-01-28 14:00:40'),
(1676, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-29 12:00:29', '2023-02-23 23:57:03'),
(1677, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-29 12:00:29', '2023-01-29 12:00:29'),
(1678, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-29 12:00:29', '2023-02-12 01:27:23'),
(1679, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-29 12:00:29', '2023-02-20 21:54:54'),
(1680, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-29 12:00:29', '2023-02-20 05:20:55'),
(1681, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-29 12:00:29', '2023-01-29 12:00:29'),
(1682, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-29 14:00:34', '2023-02-23 23:57:03'),
(1683, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-29 14:00:34', '2023-01-29 14:00:34'),
(1684, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-29 14:00:34', '2023-02-12 01:27:23'),
(1685, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-29 14:00:34', '2023-02-20 21:54:54'),
(1686, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-29 14:00:34', '2023-02-20 05:20:55'),
(1687, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-29 14:00:34', '2023-01-29 14:00:34'),
(1688, 39, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2023-01-30 09:00:18', '2023-02-23 23:57:03'),
(1689, 41, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2023-01-30 09:00:18', '2023-02-12 01:27:23'),
(1690, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-30 12:00:37', '2023-02-23 23:57:03'),
(1691, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-30 12:00:37', '2023-01-30 12:00:37'),
(1692, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-30 12:00:37', '2023-02-12 01:27:23'),
(1693, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-30 12:00:37', '2023-02-20 21:54:54'),
(1694, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-30 12:00:37', '2023-02-20 05:20:55'),
(1695, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-30 12:00:37', '2023-01-30 12:00:37'),
(1696, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-30 14:00:09', '2023-02-23 23:57:03'),
(1697, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-30 14:00:09', '2023-01-30 14:00:09'),
(1698, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-30 14:00:09', '2023-02-12 01:27:23'),
(1699, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-30 14:00:09', '2023-02-20 21:54:54'),
(1700, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-30 14:00:09', '2023-02-20 05:20:55'),
(1701, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-30 14:00:09', '2023-01-30 14:00:09'),
(1702, 39, NULL, 'Notifica di avviso', 'Ricordati di consultare l\'app per verificare se hai ordinato il pranzo per oggi', 1, '2023-01-30 15:50:50', '2023-02-23 23:57:03'),
(1703, 41, NULL, 'Notifica di avviso', 'Ricordati di consultare l\'app per verificare se hai ordinato il pranzo per oggi', 1, '2023-01-30 15:50:50', '2023-02-12 01:27:23'),
(1704, 39, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2023-01-31 09:00:15', '2023-02-23 23:57:03'),
(1705, 41, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2023-01-31 09:00:15', '2023-02-12 01:27:23'),
(1706, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-31 12:00:31', '2023-02-23 23:57:03'),
(1707, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-31 12:00:31', '2023-01-31 12:00:31'),
(1708, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-31 12:00:31', '2023-02-12 01:27:23'),
(1709, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-31 12:00:31', '2023-02-20 21:54:54'),
(1710, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-01-31 12:00:31', '2023-02-20 05:20:55'),
(1711, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-01-31 12:00:31', '2023-01-31 12:00:31'),
(1712, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-31 14:00:39', '2023-02-23 23:57:03'),
(1713, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-31 14:00:39', '2023-01-31 14:00:39'),
(1714, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-31 14:00:39', '2023-02-12 01:27:23'),
(1715, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-31 14:00:39', '2023-02-20 21:54:54'),
(1716, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-01-31 14:00:39', '2023-02-20 05:20:55'),
(1717, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-01-31 14:00:39', '2023-01-31 14:00:39'),
(1718, 39, NULL, 'Notifica di avviso', 'Ricordati di consultare l\'app per verificare se hai ordinato il pranzo per oggi', 1, '2023-01-31 15:50:05', '2023-02-23 23:57:03'),
(1719, 41, NULL, 'Notifica di avviso', 'Ricordati di consultare l\'app per verificare se hai ordinato il pranzo per oggi', 1, '2023-01-31 15:50:05', '2023-02-12 01:27:23'),
(1720, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-02-01 12:00:42', '2023-02-23 23:57:03'),
(1721, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-02-01 12:00:42', '2023-02-01 12:00:42'),
(1722, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-02-01 12:00:42', '2023-02-12 01:27:23'),
(1723, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-02-01 12:00:42', '2023-02-20 21:54:54'),
(1724, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-02-01 12:00:42', '2023-02-20 05:20:55'),
(1725, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-02-01 12:00:42', '2023-02-01 12:00:42'),
(1726, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-02-01 14:00:21', '2023-02-23 23:57:03'),
(1727, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-02-01 14:00:21', '2023-02-01 14:00:21'),
(1728, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-02-01 14:00:21', '2023-02-12 01:27:23'),
(1729, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-02-01 14:00:21', '2023-02-20 21:54:54'),
(1730, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-02-01 14:00:21', '2023-02-20 05:20:55'),
(1731, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-02-01 14:00:21', '2023-02-01 14:00:21'),
(1732, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-02-02 12:00:33', '2023-02-23 23:57:03'),
(1733, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-02-02 12:00:33', '2023-02-02 12:00:33'),
(1734, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-02-02 12:00:33', '2023-02-12 01:27:23'),
(1735, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-02-02 12:00:33', '2023-02-20 21:54:54'),
(1736, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-02-02 12:00:33', '2023-02-20 05:20:55'),
(1737, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-02-02 12:00:33', '2023-02-02 12:00:33'),
(1738, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-02-02 14:00:46', '2023-02-23 23:57:03'),
(1739, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-02-02 14:00:46', '2023-02-02 14:00:46'),
(1740, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-02-02 14:00:46', '2023-02-12 01:27:23'),
(1741, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-02-02 14:00:46', '2023-02-20 21:54:54'),
(1742, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-02-02 14:00:46', '2023-02-20 05:20:55'),
(1743, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-02-02 14:00:46', '2023-02-02 14:00:46'),
(1744, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-02-03 12:00:03', '2023-02-23 23:57:03'),
(1745, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-02-03 12:00:03', '2023-02-03 12:00:03'),
(1746, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-02-03 12:00:03', '2023-02-12 01:27:23'),
(1747, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-02-03 12:00:03', '2023-02-20 21:54:54'),
(1748, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-02-03 12:00:03', '2023-02-20 05:20:55'),
(1749, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-02-03 12:00:03', '2023-02-03 12:00:03'),
(1750, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-02-03 14:00:04', '2023-02-23 23:57:03'),
(1751, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-02-03 14:00:04', '2023-02-03 14:00:04'),
(1752, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-02-03 14:00:04', '2023-02-12 01:27:23'),
(1753, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-02-03 14:00:04', '2023-02-20 21:54:54'),
(1754, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-02-03 14:00:04', '2023-02-20 05:20:55'),
(1755, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-02-03 14:00:04', '2023-02-03 14:00:04'),
(1756, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-02-04 12:00:36', '2023-02-23 23:57:03'),
(1757, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-02-04 12:00:36', '2023-02-04 12:00:36'),
(1758, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-02-04 12:00:36', '2023-02-12 01:27:23'),
(1759, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-02-04 12:00:36', '2023-02-20 21:54:54'),
(1760, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-02-04 12:00:36', '2023-02-20 05:20:55'),
(1761, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-02-04 12:00:36', '2023-02-04 12:00:36'),
(1762, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-02-04 14:00:50', '2023-02-23 23:57:03'),
(1763, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-02-04 14:00:50', '2023-02-04 14:00:50'),
(1764, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-02-04 14:00:50', '2023-02-12 01:27:23'),
(1765, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-02-04 14:00:50', '2023-02-20 21:54:54'),
(1766, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-02-04 14:00:50', '2023-02-20 05:20:55'),
(1767, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-02-04 14:00:50', '2023-02-04 14:00:50'),
(1768, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-02-05 12:00:28', '2023-02-23 23:57:03'),
(1769, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-02-05 12:00:28', '2023-02-05 12:00:28'),
(1770, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-02-05 12:00:28', '2023-02-12 01:27:23'),
(1771, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-02-05 12:00:28', '2023-02-20 21:54:54'),
(1772, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-02-05 12:00:28', '2023-02-20 05:20:55'),
(1773, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-02-05 12:00:28', '2023-02-05 12:00:28'),
(1774, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-02-05 14:00:26', '2023-02-23 23:57:03'),
(1775, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-02-05 14:00:26', '2023-02-05 14:00:26'),
(1776, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-02-05 14:00:26', '2023-02-12 01:27:23'),
(1777, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-02-05 14:00:26', '2023-02-20 21:54:54'),
(1778, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-02-05 14:00:26', '2023-02-20 05:20:55'),
(1779, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-02-05 14:00:26', '2023-02-05 14:00:26'),
(1780, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  06-02-2023', 1, '2023-02-05 14:05:42', '2023-02-23 23:57:03'),
(1781, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  06-02-2023', 0, '2023-02-05 14:05:42', '2023-02-05 14:05:42'),
(1782, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  06-02-2023', 1, '2023-02-05 14:05:42', '2023-02-12 01:27:23'),
(1783, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  06-02-2023', 1, '2023-02-05 14:05:42', '2023-02-20 21:54:54'),
(1784, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  06-02-2023', 1, '2023-02-05 14:05:42', '2023-02-20 05:20:55'),
(1785, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  06-02-2023', 0, '2023-02-05 14:05:42', '2023-02-05 14:05:42'),
(1786, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  06-02-2023', 1, '2023-02-05 14:05:45', '2023-02-23 23:57:03'),
(1787, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  06-02-2023', 0, '2023-02-05 14:05:45', '2023-02-05 14:05:45'),
(1788, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  06-02-2023', 1, '2023-02-05 14:05:45', '2023-02-12 01:27:23'),
(1789, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  06-02-2023', 1, '2023-02-05 14:05:45', '2023-02-20 21:54:54'),
(1790, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  06-02-2023', 1, '2023-02-05 14:05:45', '2023-02-20 05:20:55'),
(1791, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  06-02-2023', 0, '2023-02-05 14:05:45', '2023-02-05 14:05:45'),
(1792, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  06-02-2023', 1, '2023-02-05 14:05:46', '2023-02-23 23:57:03'),
(1793, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  06-02-2023', 0, '2023-02-05 14:05:46', '2023-02-05 14:05:46'),
(1794, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  06-02-2023', 1, '2023-02-05 14:05:46', '2023-02-12 01:27:23'),
(1795, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  06-02-2023', 1, '2023-02-05 14:05:46', '2023-02-20 21:54:54'),
(1796, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  06-02-2023', 1, '2023-02-05 14:05:46', '2023-02-20 05:20:55'),
(1797, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  06-02-2023', 0, '2023-02-05 14:05:46', '2023-02-05 14:05:46'),
(1798, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  07-02-2023', 1, '2023-02-05 14:05:48', '2023-02-23 23:57:03'),
(1799, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  07-02-2023', 0, '2023-02-05 14:05:48', '2023-02-05 14:05:48'),
(1800, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  07-02-2023', 1, '2023-02-05 14:05:48', '2023-02-12 01:27:23'),
(1801, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  07-02-2023', 1, '2023-02-05 14:05:48', '2023-02-20 21:54:54'),
(1802, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  07-02-2023', 1, '2023-02-05 14:05:48', '2023-02-20 05:20:55'),
(1803, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  07-02-2023', 0, '2023-02-05 14:05:48', '2023-02-05 14:05:48'),
(1804, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  07-02-2023', 1, '2023-02-05 14:05:51', '2023-02-23 23:57:03'),
(1805, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  07-02-2023', 0, '2023-02-05 14:05:51', '2023-02-05 14:05:51'),
(1806, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  07-02-2023', 1, '2023-02-05 14:05:51', '2023-02-12 01:27:23'),
(1807, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  07-02-2023', 1, '2023-02-05 14:05:51', '2023-02-20 21:54:54'),
(1808, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  07-02-2023', 1, '2023-02-05 14:05:51', '2023-02-20 05:20:55'),
(1809, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  07-02-2023', 0, '2023-02-05 14:05:51', '2023-02-05 14:05:51'),
(1810, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  07-02-2023', 1, '2023-02-05 14:05:53', '2023-02-23 23:57:03'),
(1811, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  07-02-2023', 0, '2023-02-05 14:05:53', '2023-02-05 14:05:53'),
(1812, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  07-02-2023', 1, '2023-02-05 14:05:53', '2023-02-12 01:27:23'),
(1813, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  07-02-2023', 1, '2023-02-05 14:05:53', '2023-02-20 21:54:54'),
(1814, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  07-02-2023', 1, '2023-02-05 14:05:53', '2023-02-20 05:20:55'),
(1815, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  07-02-2023', 0, '2023-02-05 14:05:53', '2023-02-05 14:05:53'),
(1816, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  08-02-2023', 1, '2023-02-05 14:05:55', '2023-02-23 23:57:03');
INSERT INTO `notifications` (`id`, `user_id`, `school_id`, `title`, `message`, `is_read`, `created_at`, `updated_at`) VALUES
(1817, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  08-02-2023', 0, '2023-02-05 14:05:55', '2023-02-05 14:05:55'),
(1818, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  08-02-2023', 1, '2023-02-05 14:05:55', '2023-02-12 01:27:23'),
(1819, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  08-02-2023', 1, '2023-02-05 14:05:55', '2023-02-20 21:54:54'),
(1820, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  08-02-2023', 1, '2023-02-05 14:05:55', '2023-02-20 05:20:55'),
(1821, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  08-02-2023', 0, '2023-02-05 14:05:55', '2023-02-05 14:05:55'),
(1822, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Domenica  08-01-2023', 1, '2023-02-05 14:05:57', '2023-02-23 23:57:03'),
(1823, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Domenica  08-01-2023', 0, '2023-02-05 14:05:57', '2023-02-05 14:05:57'),
(1824, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Domenica  08-01-2023', 1, '2023-02-05 14:05:57', '2023-02-12 01:27:23'),
(1825, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Domenica  08-01-2023', 1, '2023-02-05 14:05:57', '2023-02-20 21:54:54'),
(1826, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Domenica  08-01-2023', 1, '2023-02-05 14:05:57', '2023-02-20 05:20:55'),
(1827, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Domenica  08-01-2023', 0, '2023-02-05 14:05:57', '2023-02-05 14:05:57'),
(1828, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  08-02-2023', 1, '2023-02-05 14:05:59', '2023-02-23 23:57:03'),
(1829, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  08-02-2023', 0, '2023-02-05 14:05:59', '2023-02-05 14:05:59'),
(1830, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  08-02-2023', 1, '2023-02-05 14:05:59', '2023-02-12 01:27:23'),
(1831, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  08-02-2023', 1, '2023-02-05 14:05:59', '2023-02-20 21:54:54'),
(1832, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  08-02-2023', 1, '2023-02-05 14:05:59', '2023-02-20 05:20:55'),
(1833, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  08-02-2023', 0, '2023-02-05 14:05:59', '2023-02-05 14:05:59'),
(1834, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  09-02-2023', 1, '2023-02-05 14:06:01', '2023-02-23 23:57:03'),
(1835, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  09-02-2023', 0, '2023-02-05 14:06:01', '2023-02-05 14:06:01'),
(1836, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  09-02-2023', 1, '2023-02-05 14:06:01', '2023-02-12 01:27:23'),
(1837, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  09-02-2023', 1, '2023-02-05 14:06:01', '2023-02-20 21:54:54'),
(1838, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  09-02-2023', 1, '2023-02-05 14:06:01', '2023-02-20 05:20:55'),
(1839, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  09-02-2023', 0, '2023-02-05 14:06:01', '2023-02-05 14:06:01'),
(1840, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  09-02-2023', 1, '2023-02-05 14:06:03', '2023-02-23 23:57:03'),
(1841, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  09-02-2023', 0, '2023-02-05 14:06:03', '2023-02-05 14:06:03'),
(1842, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  09-02-2023', 1, '2023-02-05 14:06:03', '2023-02-12 01:27:23'),
(1843, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  09-02-2023', 1, '2023-02-05 14:06:03', '2023-02-20 21:54:54'),
(1844, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  09-02-2023', 1, '2023-02-05 14:06:03', '2023-02-20 05:20:55'),
(1845, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  09-02-2023', 0, '2023-02-05 14:06:03', '2023-02-05 14:06:03'),
(1846, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  09-02-2023', 1, '2023-02-05 14:06:05', '2023-02-23 23:57:03'),
(1847, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  09-02-2023', 0, '2023-02-05 14:06:05', '2023-02-05 14:06:05'),
(1848, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  09-02-2023', 1, '2023-02-05 14:06:05', '2023-02-12 01:27:23'),
(1849, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  09-02-2023', 1, '2023-02-05 14:06:05', '2023-02-20 21:54:54'),
(1850, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  09-02-2023', 1, '2023-02-05 14:06:05', '2023-02-20 05:20:55'),
(1851, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  09-02-2023', 0, '2023-02-05 14:06:05', '2023-02-05 14:06:05'),
(1852, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  10-02-2023', 1, '2023-02-05 14:06:08', '2023-02-23 23:57:03'),
(1853, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  10-02-2023', 0, '2023-02-05 14:06:08', '2023-02-05 14:06:08'),
(1854, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  10-02-2023', 1, '2023-02-05 14:06:08', '2023-02-12 01:27:23'),
(1855, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  10-02-2023', 1, '2023-02-05 14:06:08', '2023-02-20 21:54:54'),
(1856, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  10-02-2023', 1, '2023-02-05 14:06:08', '2023-02-20 05:20:55'),
(1857, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  10-02-2023', 0, '2023-02-05 14:06:08', '2023-02-05 14:06:08'),
(1858, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  10-02-2023', 1, '2023-02-05 14:06:10', '2023-02-23 23:57:03'),
(1859, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  10-02-2023', 0, '2023-02-05 14:06:10', '2023-02-05 14:06:10'),
(1860, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  10-02-2023', 1, '2023-02-05 14:06:10', '2023-02-12 01:27:23'),
(1861, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  10-02-2023', 1, '2023-02-05 14:06:10', '2023-02-20 21:54:54'),
(1862, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  10-02-2023', 1, '2023-02-05 14:06:10', '2023-02-20 05:20:55'),
(1863, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  10-02-2023', 0, '2023-02-05 14:06:10', '2023-02-05 14:06:10'),
(1864, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  10-02-2023', 1, '2023-02-05 14:06:12', '2023-02-23 23:57:03'),
(1865, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  10-02-2023', 0, '2023-02-05 14:06:12', '2023-02-05 14:06:12'),
(1866, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  10-02-2023', 1, '2023-02-05 14:06:12', '2023-02-12 01:27:23'),
(1867, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  10-02-2023', 1, '2023-02-05 14:06:12', '2023-02-20 21:54:54'),
(1868, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  10-02-2023', 1, '2023-02-05 14:06:12', '2023-02-20 05:20:55'),
(1869, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  10-02-2023', 0, '2023-02-05 14:06:12', '2023-02-05 14:06:12'),
(1870, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  13-02-2023', 1, '2023-02-05 14:06:15', '2023-02-23 23:57:03'),
(1871, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  13-02-2023', 0, '2023-02-05 14:06:15', '2023-02-05 14:06:15'),
(1872, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  13-02-2023', 1, '2023-02-05 14:06:15', '2023-02-12 01:27:23'),
(1873, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  13-02-2023', 1, '2023-02-05 14:06:15', '2023-02-20 21:54:54'),
(1874, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  13-02-2023', 1, '2023-02-05 14:06:15', '2023-02-20 05:20:55'),
(1875, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  13-02-2023', 0, '2023-02-05 14:06:15', '2023-02-05 14:06:15'),
(1876, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  13-02-2023', 1, '2023-02-05 14:06:17', '2023-02-23 23:57:03'),
(1877, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  13-02-2023', 0, '2023-02-05 14:06:17', '2023-02-05 14:06:17'),
(1878, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  13-02-2023', 1, '2023-02-05 14:06:17', '2023-02-12 01:27:23'),
(1879, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  13-02-2023', 1, '2023-02-05 14:06:17', '2023-02-20 21:54:54'),
(1880, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  13-02-2023', 1, '2023-02-05 14:06:17', '2023-02-20 05:20:55'),
(1881, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  13-02-2023', 0, '2023-02-05 14:06:17', '2023-02-05 14:06:17'),
(1882, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  13-02-2023', 1, '2023-02-05 14:06:19', '2023-02-23 23:57:03'),
(1883, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  13-02-2023', 0, '2023-02-05 14:06:19', '2023-02-05 14:06:19'),
(1884, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  13-02-2023', 1, '2023-02-05 14:06:19', '2023-02-12 01:27:23'),
(1885, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  13-02-2023', 1, '2023-02-05 14:06:19', '2023-02-20 21:54:54'),
(1886, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  13-02-2023', 1, '2023-02-05 14:06:19', '2023-02-20 05:20:55'),
(1887, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  13-02-2023', 0, '2023-02-05 14:06:19', '2023-02-05 14:06:19'),
(1888, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  14-02-2023', 1, '2023-02-05 14:06:21', '2023-02-23 23:57:03'),
(1889, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  14-02-2023', 0, '2023-02-05 14:06:21', '2023-02-05 14:06:21'),
(1890, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  14-02-2023', 1, '2023-02-05 14:06:21', '2023-02-12 01:27:23'),
(1891, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  14-02-2023', 1, '2023-02-05 14:06:21', '2023-02-20 21:54:54'),
(1892, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  14-02-2023', 1, '2023-02-05 14:06:21', '2023-02-20 05:20:55'),
(1893, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  14-02-2023', 0, '2023-02-05 14:06:21', '2023-02-05 14:06:21'),
(1894, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  14-02-2023', 1, '2023-02-05 14:06:24', '2023-02-23 23:57:03'),
(1895, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  14-02-2023', 0, '2023-02-05 14:06:24', '2023-02-05 14:06:24'),
(1896, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  14-02-2023', 1, '2023-02-05 14:06:24', '2023-02-12 01:27:23'),
(1897, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  14-02-2023', 1, '2023-02-05 14:06:24', '2023-02-20 21:54:54'),
(1898, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  14-02-2023', 1, '2023-02-05 14:06:24', '2023-02-20 05:20:55'),
(1899, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  14-02-2023', 0, '2023-02-05 14:06:24', '2023-02-05 14:06:24'),
(1900, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  14-02-2023', 1, '2023-02-05 14:06:26', '2023-02-23 23:57:03'),
(1901, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  14-02-2023', 0, '2023-02-05 14:06:26', '2023-02-05 14:06:26'),
(1902, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  14-02-2023', 1, '2023-02-05 14:06:26', '2023-02-12 01:27:23'),
(1903, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  14-02-2023', 1, '2023-02-05 14:06:26', '2023-02-20 21:54:54'),
(1904, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  14-02-2023', 1, '2023-02-05 14:06:26', '2023-02-20 05:20:55'),
(1905, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  14-02-2023', 0, '2023-02-05 14:06:26', '2023-02-05 14:06:26'),
(1906, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  15-02-2023', 1, '2023-02-05 14:06:27', '2023-02-23 23:57:03'),
(1907, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  15-02-2023', 0, '2023-02-05 14:06:27', '2023-02-05 14:06:27'),
(1908, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  15-02-2023', 1, '2023-02-05 14:06:27', '2023-02-12 01:27:23'),
(1909, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  15-02-2023', 1, '2023-02-05 14:06:27', '2023-02-20 21:54:54'),
(1910, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  15-02-2023', 1, '2023-02-05 14:06:27', '2023-02-20 05:20:55'),
(1911, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  15-02-2023', 0, '2023-02-05 14:06:27', '2023-02-05 14:06:27'),
(1912, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  08-02-2023', 1, '2023-02-05 14:07:52', '2023-02-23 23:57:03'),
(1913, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  08-02-2023', 0, '2023-02-05 14:07:52', '2023-02-05 14:07:52'),
(1914, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  08-02-2023', 1, '2023-02-05 14:07:52', '2023-02-12 01:27:23'),
(1915, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  08-02-2023', 1, '2023-02-05 14:07:52', '2023-02-20 21:54:54'),
(1916, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  08-02-2023', 1, '2023-02-05 14:07:52', '2023-02-20 05:20:55'),
(1917, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  08-02-2023', 0, '2023-02-05 14:07:52', '2023-02-05 14:07:52'),
(1918, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-02-06 12:00:40', '2023-02-23 23:57:03'),
(1919, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-02-06 12:00:40', '2023-02-06 12:00:40'),
(1920, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-02-06 12:00:40', '2023-02-12 01:27:23'),
(1921, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-02-06 12:00:40', '2023-02-20 21:54:54'),
(1922, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-02-06 12:00:40', '2023-02-20 05:20:55'),
(1923, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-02-06 12:00:40', '2023-02-06 12:00:40'),
(1924, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-02-06 14:00:35', '2023-02-23 23:57:03'),
(1925, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-02-06 14:00:35', '2023-02-06 14:00:35'),
(1926, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-02-06 14:00:35', '2023-02-12 01:27:23'),
(1927, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-02-06 14:00:35', '2023-02-20 21:54:54'),
(1928, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-02-06 14:00:35', '2023-02-20 05:20:55'),
(1929, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-02-06 14:00:35', '2023-02-06 14:00:35'),
(1930, 39, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2023-02-07 09:00:05', '2023-02-23 23:57:03'),
(1931, 41, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2023-02-07 09:00:05', '2023-02-12 01:27:23'),
(1932, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-02-07 12:00:25', '2023-02-23 23:57:03'),
(1933, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-02-07 12:00:25', '2023-02-07 12:00:25'),
(1934, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-02-07 12:00:25', '2023-02-12 01:27:23'),
(1935, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-02-07 12:00:25', '2023-02-20 21:54:54'),
(1936, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-02-07 12:00:25', '2023-02-20 05:20:55'),
(1937, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-02-07 12:00:25', '2023-02-07 12:00:25'),
(1938, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-02-07 14:00:12', '2023-02-23 23:57:03'),
(1939, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-02-07 14:00:12', '2023-02-07 14:00:12'),
(1940, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-02-07 14:00:12', '2023-02-12 01:27:23'),
(1941, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-02-07 14:00:12', '2023-02-20 21:54:54'),
(1942, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-02-07 14:00:12', '2023-02-20 05:20:55'),
(1943, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-02-07 14:00:12', '2023-02-07 14:00:12'),
(1944, 39, NULL, 'Notifica di avviso', 'Ricordati di consultare l\'app per verificare se hai ordinato il pranzo per oggi', 1, '2023-02-07 15:50:30', '2023-02-23 23:57:03'),
(1945, 41, NULL, 'Notifica di avviso', 'Ricordati di consultare l\'app per verificare se hai ordinato il pranzo per oggi', 1, '2023-02-07 15:50:30', '2023-02-12 01:27:23'),
(1946, 39, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2023-02-08 09:00:44', '2023-02-23 23:57:03'),
(1947, 41, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2023-02-08 09:00:44', '2023-02-12 01:27:23'),
(1948, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-02-08 12:00:36', '2023-02-23 23:57:03'),
(1949, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-02-08 12:00:36', '2023-02-08 12:00:36'),
(1950, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-02-08 12:00:36', '2023-02-12 01:27:23'),
(1951, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-02-08 12:00:36', '2023-02-20 21:54:54'),
(1952, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-02-08 12:00:36', '2023-02-20 05:20:55'),
(1953, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-02-08 12:00:36', '2023-02-08 12:00:36'),
(1954, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-02-08 14:00:45', '2023-02-23 23:57:03'),
(1955, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-02-08 14:00:45', '2023-02-08 14:00:45'),
(1956, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-02-08 14:00:45', '2023-02-12 01:27:23'),
(1957, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-02-08 14:00:45', '2023-02-20 21:54:54'),
(1958, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-02-08 14:00:45', '2023-02-20 05:20:55'),
(1959, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-02-08 14:00:45', '2023-02-08 14:00:45'),
(1960, 39, NULL, 'Notifica di avviso', 'Ricordati di consultare l\'app per verificare se hai ordinato il pranzo per oggi', 1, '2023-02-08 15:50:39', '2023-02-23 23:57:03'),
(1961, 41, NULL, 'Notifica di avviso', 'Ricordati di consultare l\'app per verificare se hai ordinato il pranzo per oggi', 1, '2023-02-08 15:50:39', '2023-02-12 01:27:23'),
(1962, 39, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2023-02-09 09:00:24', '2023-02-23 23:57:03'),
(1963, 41, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2023-02-09 09:00:24', '2023-02-12 01:27:23'),
(1964, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-02-09 12:00:22', '2023-02-23 23:57:03'),
(1965, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-02-09 12:00:22', '2023-02-09 12:00:22'),
(1966, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-02-09 12:00:22', '2023-02-12 01:27:23'),
(1967, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-02-09 12:00:22', '2023-02-20 21:54:54'),
(1968, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-02-09 12:00:22', '2023-02-20 05:20:55'),
(1969, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-02-09 12:00:22', '2023-02-09 12:00:22'),
(1970, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-02-09 14:00:25', '2023-02-23 23:57:03'),
(1971, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-02-09 14:00:25', '2023-02-09 14:00:25'),
(1972, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-02-09 14:00:25', '2023-02-12 01:27:23'),
(1973, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-02-09 14:00:25', '2023-02-20 21:54:54'),
(1974, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-02-09 14:00:25', '2023-02-20 05:20:55'),
(1975, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-02-09 14:00:25', '2023-02-09 14:00:25'),
(1976, 39, NULL, 'Notifica di avviso', 'Ricordati di consultare l\'app per verificare se hai ordinato il pranzo per oggi', 1, '2023-02-09 15:50:49', '2023-02-23 23:57:03'),
(1977, 41, NULL, 'Notifica di avviso', 'Ricordati di consultare l\'app per verificare se hai ordinato il pranzo per oggi', 1, '2023-02-09 15:50:49', '2023-02-12 01:27:23'),
(1978, 39, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2023-02-10 09:00:37', '2023-02-23 23:57:03'),
(1979, 41, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo', 1, '2023-02-10 09:00:37', '2023-02-12 01:27:23'),
(1980, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-02-10 12:00:08', '2023-02-23 23:57:03'),
(1981, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-02-10 12:00:08', '2023-02-10 12:00:08'),
(1982, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-02-10 12:00:08', '2023-02-12 01:27:23'),
(1983, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-02-10 12:00:08', '2023-02-20 21:54:54'),
(1984, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 1, '2023-02-10 12:00:08', '2023-02-20 05:20:55'),
(1985, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo per domani entro le ore 10:00', 0, '2023-02-10 12:00:08', '2023-02-10 12:00:08'),
(1986, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-02-10 14:00:14', '2023-02-23 23:57:03'),
(1987, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-02-10 14:00:14', '2023-02-10 14:00:14'),
(1988, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-02-10 14:00:14', '2023-02-12 01:27:23'),
(1989, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-02-10 14:00:14', '2023-02-20 21:54:54'),
(1990, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 1, '2023-02-10 14:00:14', '2023-02-20 05:20:55'),
(1991, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine ora il tuo ordine in fase di preparazione.', 0, '2023-02-10 14:00:14', '2023-02-10 14:00:14'),
(1992, 39, NULL, 'Notifica di avviso', 'Ricordati di consultare l\'app per verificare se hai ordinato il pranzo per oggi', 1, '2023-02-10 15:50:24', '2023-02-23 23:57:03'),
(1993, 41, NULL, 'Notifica di avviso', 'Ricordati di consultare l\'app per verificare se hai ordinato il pranzo per oggi', 1, '2023-02-10 15:50:24', '2023-02-12 01:27:23'),
(1994, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 1, '2023-02-11 12:00:20', '2023-02-23 23:57:03'),
(1995, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-11 12:00:20', '2023-02-11 12:00:20'),
(1996, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 1, '2023-02-11 12:00:20', '2023-02-12 01:27:23'),
(1997, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 1, '2023-02-11 12:00:20', '2023-02-20 21:54:54'),
(1998, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 1, '2023-02-11 12:00:20', '2023-02-20 05:20:55'),
(1999, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-11 12:00:20', '2023-02-11 12:00:20'),
(2000, NULL, 16, 'ciao', 'ciao', 1, '2023-02-11 13:04:05', '2023-02-20 05:01:07'),
(2001, 39, NULL, 'ciao', 'ciao', 1, '2023-02-11 13:04:24', '2023-02-23 23:57:03'),
(2002, NULL, 16, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Domenica  12-02-2023', 1, '2023-02-11 13:13:21', '2023-02-20 05:01:07'),
(2003, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Domenica  12-02-2023', 1, '2023-02-11 13:13:48', '2023-02-23 23:57:03'),
(2004, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Domenica  12-02-2023', 0, '2023-02-11 13:13:48', '2023-02-11 13:13:48'),
(2005, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Domenica  12-02-2023', 1, '2023-02-11 13:13:48', '2023-02-12 01:27:23'),
(2006, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Domenica  12-02-2023', 1, '2023-02-11 13:13:48', '2023-02-20 21:54:54'),
(2007, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Domenica  12-02-2023', 1, '2023-02-11 13:13:48', '2023-02-20 05:20:55'),
(2008, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Domenica  12-02-2023', 0, '2023-02-11 13:13:48', '2023-02-11 13:13:48'),
(2009, NULL, 16, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Domenica  12-02-2023', 1, '2023-02-11 13:18:17', '2023-02-20 05:01:07'),
(2010, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Domenica  12-02-2023', 1, '2023-02-11 13:19:19', '2023-02-23 23:57:03'),
(2011, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Domenica  12-02-2023', 0, '2023-02-11 13:19:19', '2023-02-11 13:19:19'),
(2012, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Domenica  12-02-2023', 1, '2023-02-11 13:19:19', '2023-02-12 01:27:23'),
(2013, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Domenica  12-02-2023', 1, '2023-02-11 13:19:19', '2023-02-20 21:54:54'),
(2014, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Domenica  12-02-2023', 1, '2023-02-11 13:19:19', '2023-02-20 05:20:55'),
(2015, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Domenica  12-02-2023', 0, '2023-02-11 13:19:19', '2023-02-11 13:19:19'),
(2016, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Domenica  12-02-2023', 1, '2023-02-11 13:19:20', '2023-02-23 23:57:03'),
(2017, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Domenica  12-02-2023', 0, '2023-02-11 13:19:20', '2023-02-11 13:19:20'),
(2018, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Domenica  12-02-2023', 1, '2023-02-11 13:19:20', '2023-02-12 01:27:23'),
(2019, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Domenica  12-02-2023', 1, '2023-02-11 13:19:20', '2023-02-20 21:54:54'),
(2020, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Domenica  12-02-2023', 1, '2023-02-11 13:19:20', '2023-02-20 05:20:55'),
(2021, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Domenica  12-02-2023', 0, '2023-02-11 13:19:20', '2023-02-11 13:19:20'),
(2022, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine, ora il tuo ordine è in fase di preparazione.', 1, '2023-02-11 14:00:43', '2023-02-23 23:57:03'),
(2023, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine, ora il tuo ordine è in fase di preparazione.', 0, '2023-02-11 14:00:43', '2023-02-11 14:00:43'),
(2024, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine, ora il tuo ordine è in fase di preparazione.', 1, '2023-02-11 14:00:43', '2023-02-12 01:27:23'),
(2025, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine, ora il tuo ordine è in fase di preparazione.', 1, '2023-02-11 14:00:43', '2023-02-20 21:54:54'),
(2026, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine, ora il tuo ordine è in fase di preparazione.', 1, '2023-02-11 14:00:43', '2023-02-20 05:20:55'),
(2027, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine, ora il tuo ordine è in fase di preparazione.', 0, '2023-02-11 14:00:43', '2023-02-11 14:00:43'),
(2028, 39, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo.', 1, '2023-02-12 09:00:24', '2023-02-23 23:57:03'),
(2029, 41, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo.', 0, '2023-02-12 09:00:24', '2023-02-12 09:00:24'),
(2030, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 1, '2023-02-12 12:00:27', '2023-02-23 23:57:03'),
(2031, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-12 12:00:27', '2023-02-12 12:00:27'),
(2032, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-12 12:00:27', '2023-02-12 12:00:27'),
(2033, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 1, '2023-02-12 12:00:27', '2023-02-20 21:54:54'),
(2034, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 1, '2023-02-12 12:00:27', '2023-02-20 05:20:55'),
(2035, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-12 12:00:27', '2023-02-12 12:00:27'),
(2036, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine, ora il tuo ordine è in fase di preparazione.', 1, '2023-02-12 14:00:01', '2023-02-23 23:57:03'),
(2037, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine, ora il tuo ordine è in fase di preparazione.', 0, '2023-02-12 14:00:01', '2023-02-12 14:00:01'),
(2038, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine, ora il tuo ordine è in fase di preparazione.', 0, '2023-02-12 14:00:01', '2023-02-12 14:00:01'),
(2039, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine, ora il tuo ordine è in fase di preparazione.', 1, '2023-02-12 14:00:01', '2023-02-20 21:54:54'),
(2040, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine, ora il tuo ordine è in fase di preparazione.', 1, '2023-02-12 14:00:01', '2023-02-20 05:20:55'),
(2041, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine, ora il tuo ordine è in fase di preparazione.', 0, '2023-02-12 14:00:01', '2023-02-12 14:00:01'),
(2042, 39, NULL, 'Notifica di avviso', 'Ricordati di consultare l\'app per verificare se hai ordinato il pranzo per oggi!', 1, '2023-02-12 15:50:02', '2023-02-23 23:57:03'),
(2043, 41, NULL, 'Notifica di avviso', 'Ricordati di consultare l\'app per verificare se hai ordinato il pranzo per oggi!', 0, '2023-02-12 15:50:02', '2023-02-12 15:50:02'),
(2044, 39, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo.', 1, '2023-02-13 09:00:28', '2023-02-23 23:57:03'),
(2045, 41, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo.', 0, '2023-02-13 09:00:28', '2023-02-13 09:00:28'),
(2046, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 1, '2023-02-13 12:00:05', '2023-02-23 23:57:03'),
(2047, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-13 12:00:05', '2023-02-13 12:00:05'),
(2048, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-13 12:00:05', '2023-02-13 12:00:05'),
(2049, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 1, '2023-02-13 12:00:05', '2023-02-20 21:54:54'),
(2050, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 1, '2023-02-13 12:00:05', '2023-02-20 05:20:55'),
(2051, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-13 12:00:05', '2023-02-13 12:00:05'),
(2052, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine, ora il tuo ordine è in fase di preparazione.', 1, '2023-02-13 14:00:21', '2023-02-23 23:57:03'),
(2053, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine, ora il tuo ordine è in fase di preparazione.', 0, '2023-02-13 14:00:21', '2023-02-13 14:00:21'),
(2054, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine, ora il tuo ordine è in fase di preparazione.', 0, '2023-02-13 14:00:21', '2023-02-13 14:00:21'),
(2055, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine, ora il tuo ordine è in fase di preparazione.', 1, '2023-02-13 14:00:21', '2023-02-20 21:54:54'),
(2056, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine, ora il tuo ordine è in fase di preparazione.', 1, '2023-02-13 14:00:21', '2023-02-20 05:20:55'),
(2057, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine, ora il tuo ordine è in fase di preparazione.', 0, '2023-02-13 14:00:21', '2023-02-13 14:00:21'),
(2058, 39, NULL, 'Notifica di avviso', 'Ricordati di consultare l\'app per verificare se hai ordinato il pranzo per oggi!', 1, '2023-02-13 15:50:29', '2023-02-23 23:57:03'),
(2059, 41, NULL, 'Notifica di avviso', 'Ricordati di consultare l\'app per verificare se hai ordinato il pranzo per oggi!', 0, '2023-02-13 15:50:29', '2023-02-13 15:50:29'),
(2060, 39, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo.', 1, '2023-02-14 09:00:27', '2023-02-23 23:57:03'),
(2061, 41, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo.', 0, '2023-02-14 09:00:27', '2023-02-14 09:00:27'),
(2062, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 1, '2023-02-14 12:00:02', '2023-02-23 23:57:03'),
(2063, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-14 12:00:02', '2023-02-14 12:00:02'),
(2064, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-14 12:00:02', '2023-02-14 12:00:02'),
(2065, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 1, '2023-02-14 12:00:02', '2023-02-20 21:54:54'),
(2066, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 1, '2023-02-14 12:00:02', '2023-02-20 05:20:55'),
(2067, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-14 12:00:02', '2023-02-14 12:00:02'),
(2068, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine, ora il tuo ordine è in fase di preparazione.', 1, '2023-02-14 14:00:20', '2023-02-23 23:57:03'),
(2069, 40, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine, ora il tuo ordine è in fase di preparazione.', 0, '2023-02-14 14:00:20', '2023-02-14 14:00:20'),
(2070, 41, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine, ora il tuo ordine è in fase di preparazione.', 0, '2023-02-14 14:00:20', '2023-02-14 14:00:20'),
(2071, 43, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine, ora il tuo ordine è in fase di preparazione.', 1, '2023-02-14 14:00:20', '2023-02-20 21:54:54'),
(2072, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine, ora il tuo ordine è in fase di preparazione.', 1, '2023-02-14 14:00:20', '2023-02-20 05:20:55'),
(2073, 46, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine, ora il tuo ordine è in fase di preparazione.', 0, '2023-02-14 14:00:20', '2023-02-14 14:00:20'),
(2074, 39, NULL, 'Notifica di avviso', 'Ricordati di consultare l\'app per verificare se hai ordinato il pranzo per oggi!', 1, '2023-02-14 15:50:16', '2023-02-23 23:57:03'),
(2075, 41, NULL, 'Notifica di avviso', 'Ricordati di consultare l\'app per verificare se hai ordinato il pranzo per oggi!', 0, '2023-02-14 15:50:16', '2023-02-14 15:50:16'),
(2076, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 1, '2023-02-15 12:00:43', '2023-02-23 23:57:03'),
(2077, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-15 12:00:43', '2023-02-15 12:00:43'),
(2078, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-15 12:00:43', '2023-02-15 12:00:43'),
(2079, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 1, '2023-02-15 12:00:43', '2023-02-20 21:54:54'),
(2080, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 1, '2023-02-15 12:00:43', '2023-02-20 05:20:55'),
(2081, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-15 12:00:43', '2023-02-15 12:00:43'),
(2082, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 1, '2023-02-16 12:00:07', '2023-02-23 23:57:03'),
(2083, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-16 12:00:07', '2023-02-16 12:00:07'),
(2084, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-16 12:00:07', '2023-02-16 12:00:07'),
(2085, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 1, '2023-02-16 12:00:07', '2023-02-20 21:54:54'),
(2086, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 1, '2023-02-16 12:00:07', '2023-02-20 05:20:55'),
(2087, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-16 12:00:07', '2023-02-16 12:00:07'),
(2088, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 1, '2023-02-17 12:00:06', '2023-02-23 23:57:03'),
(2089, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-17 12:00:06', '2023-02-17 12:00:06'),
(2090, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-17 12:00:06', '2023-02-17 12:00:06'),
(2091, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 1, '2023-02-17 12:00:06', '2023-02-20 21:54:54'),
(2092, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 1, '2023-02-17 12:00:06', '2023-02-20 05:20:55'),
(2093, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-17 12:00:06', '2023-02-17 12:00:06'),
(2094, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 1, '2023-02-18 12:00:21', '2023-02-23 23:57:03'),
(2095, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-18 12:00:21', '2023-02-18 12:00:21'),
(2096, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-18 12:00:21', '2023-02-18 12:00:21'),
(2097, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 1, '2023-02-18 12:00:21', '2023-02-20 21:54:54'),
(2098, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 1, '2023-02-18 12:00:21', '2023-02-20 05:20:55'),
(2099, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-18 12:00:21', '2023-02-18 12:00:21'),
(2100, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 1, '2023-02-19 12:00:26', '2023-02-23 23:57:03'),
(2101, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-19 12:00:26', '2023-02-19 12:00:26'),
(2102, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-19 12:00:26', '2023-02-19 12:00:26'),
(2103, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 1, '2023-02-19 12:00:26', '2023-02-20 21:54:54'),
(2104, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 1, '2023-02-19 12:00:26', '2023-02-20 05:20:55'),
(2105, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-19 12:00:26', '2023-02-19 12:00:26'),
(2106, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  20-02-2023', 1, '2023-02-20 05:12:38', '2023-02-23 23:57:03'),
(2107, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  20-02-2023', 0, '2023-02-20 05:12:38', '2023-02-20 05:12:38'),
(2108, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  20-02-2023', 0, '2023-02-20 05:12:38', '2023-02-20 05:12:38'),
(2109, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  20-02-2023', 1, '2023-02-20 05:12:38', '2023-02-20 21:54:54'),
(2110, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  20-02-2023', 1, '2023-02-20 05:12:38', '2023-02-20 05:20:55'),
(2111, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  20-02-2023', 0, '2023-02-20 05:12:38', '2023-02-20 05:12:38'),
(2112, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  20-02-2023', 1, '2023-02-20 05:12:40', '2023-02-23 23:57:03'),
(2113, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  20-02-2023', 0, '2023-02-20 05:12:40', '2023-02-20 05:12:40'),
(2114, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  20-02-2023', 0, '2023-02-20 05:12:40', '2023-02-20 05:12:40'),
(2115, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  20-02-2023', 1, '2023-02-20 05:12:40', '2023-02-20 21:54:54'),
(2116, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  20-02-2023', 1, '2023-02-20 05:12:40', '2023-02-20 05:20:55'),
(2117, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  20-02-2023', 0, '2023-02-20 05:12:40', '2023-02-20 05:12:40'),
(2118, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  20-02-2023', 1, '2023-02-20 05:12:42', '2023-02-23 23:57:03');
INSERT INTO `notifications` (`id`, `user_id`, `school_id`, `title`, `message`, `is_read`, `created_at`, `updated_at`) VALUES
(2119, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  20-02-2023', 0, '2023-02-20 05:12:42', '2023-02-20 05:12:42'),
(2120, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  20-02-2023', 0, '2023-02-20 05:12:42', '2023-02-20 05:12:42'),
(2121, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  20-02-2023', 1, '2023-02-20 05:12:42', '2023-02-20 21:54:54'),
(2122, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  20-02-2023', 1, '2023-02-20 05:12:42', '2023-02-20 05:20:55'),
(2123, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  20-02-2023', 0, '2023-02-20 05:12:42', '2023-02-20 05:12:42'),
(2124, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  21-02-2023', 1, '2023-02-20 05:12:44', '2023-02-23 23:57:03'),
(2125, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  21-02-2023', 0, '2023-02-20 05:12:44', '2023-02-20 05:12:44'),
(2126, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  21-02-2023', 0, '2023-02-20 05:12:44', '2023-02-20 05:12:44'),
(2127, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  21-02-2023', 1, '2023-02-20 05:12:44', '2023-02-20 21:54:54'),
(2128, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  21-02-2023', 1, '2023-02-20 05:12:44', '2023-02-20 05:20:55'),
(2129, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  21-02-2023', 0, '2023-02-20 05:12:44', '2023-02-20 05:12:44'),
(2130, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  21-02-2023', 1, '2023-02-20 05:12:46', '2023-02-23 23:57:03'),
(2131, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  21-02-2023', 0, '2023-02-20 05:12:46', '2023-02-20 05:12:46'),
(2132, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  21-02-2023', 0, '2023-02-20 05:12:46', '2023-02-20 05:12:46'),
(2133, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  21-02-2023', 1, '2023-02-20 05:12:46', '2023-02-20 21:54:54'),
(2134, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  21-02-2023', 1, '2023-02-20 05:12:46', '2023-02-20 05:20:55'),
(2135, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  21-02-2023', 0, '2023-02-20 05:12:46', '2023-02-20 05:12:46'),
(2136, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  21-02-2023', 1, '2023-02-20 05:12:48', '2023-02-23 23:57:03'),
(2137, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  21-02-2023', 0, '2023-02-20 05:12:48', '2023-02-20 05:12:48'),
(2138, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  21-02-2023', 0, '2023-02-20 05:12:48', '2023-02-20 05:12:48'),
(2139, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  21-02-2023', 1, '2023-02-20 05:12:48', '2023-02-20 21:54:54'),
(2140, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  21-02-2023', 1, '2023-02-20 05:12:48', '2023-02-20 05:20:55'),
(2141, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  21-02-2023', 0, '2023-02-20 05:12:48', '2023-02-20 05:12:48'),
(2142, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  22-02-2023', 1, '2023-02-20 05:12:50', '2023-02-23 23:57:03'),
(2143, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  22-02-2023', 0, '2023-02-20 05:12:50', '2023-02-20 05:12:50'),
(2144, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  22-02-2023', 0, '2023-02-20 05:12:50', '2023-02-20 05:12:50'),
(2145, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  22-02-2023', 1, '2023-02-20 05:12:50', '2023-02-20 21:54:54'),
(2146, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  22-02-2023', 1, '2023-02-20 05:12:50', '2023-02-20 05:20:55'),
(2147, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  22-02-2023', 0, '2023-02-20 05:12:50', '2023-02-20 05:12:50'),
(2148, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  22-02-2023', 1, '2023-02-20 05:12:52', '2023-02-23 23:57:03'),
(2149, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  22-02-2023', 0, '2023-02-20 05:12:52', '2023-02-20 05:12:52'),
(2150, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  22-02-2023', 0, '2023-02-20 05:12:52', '2023-02-20 05:12:52'),
(2151, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  22-02-2023', 1, '2023-02-20 05:12:52', '2023-02-20 21:54:54'),
(2152, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  22-02-2023', 1, '2023-02-20 05:12:52', '2023-02-20 05:20:55'),
(2153, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  22-02-2023', 0, '2023-02-20 05:12:52', '2023-02-20 05:12:52'),
(2154, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  22-02-2023', 1, '2023-02-20 05:12:54', '2023-02-23 23:57:03'),
(2155, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  22-02-2023', 0, '2023-02-20 05:12:54', '2023-02-20 05:12:54'),
(2156, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  22-02-2023', 0, '2023-02-20 05:12:54', '2023-02-20 05:12:54'),
(2157, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  22-02-2023', 1, '2023-02-20 05:12:54', '2023-02-20 21:54:54'),
(2158, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  22-02-2023', 1, '2023-02-20 05:12:54', '2023-02-20 05:20:55'),
(2159, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  22-02-2023', 0, '2023-02-20 05:12:54', '2023-02-20 05:12:54'),
(2160, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  23-02-2023', 1, '2023-02-20 05:12:56', '2023-02-23 23:57:03'),
(2161, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  23-02-2023', 0, '2023-02-20 05:12:56', '2023-02-20 05:12:56'),
(2162, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  23-02-2023', 0, '2023-02-20 05:12:56', '2023-02-20 05:12:56'),
(2163, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  23-02-2023', 1, '2023-02-20 05:12:56', '2023-02-20 21:54:54'),
(2164, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  23-02-2023', 1, '2023-02-20 05:12:56', '2023-02-20 05:20:55'),
(2165, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  23-02-2023', 0, '2023-02-20 05:12:56', '2023-02-20 05:12:56'),
(2166, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  23-02-2023', 1, '2023-02-20 05:12:58', '2023-02-23 23:57:03'),
(2167, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  23-02-2023', 0, '2023-02-20 05:12:58', '2023-02-20 05:12:58'),
(2168, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  23-02-2023', 0, '2023-02-20 05:12:58', '2023-02-20 05:12:58'),
(2169, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  23-02-2023', 1, '2023-02-20 05:12:58', '2023-02-20 21:54:54'),
(2170, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  23-02-2023', 1, '2023-02-20 05:12:58', '2023-02-20 05:20:55'),
(2171, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  23-02-2023', 0, '2023-02-20 05:12:58', '2023-02-20 05:12:58'),
(2172, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  23-02-2023', 1, '2023-02-20 05:13:00', '2023-02-23 23:57:03'),
(2173, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  23-02-2023', 0, '2023-02-20 05:13:00', '2023-02-20 05:13:00'),
(2174, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  23-02-2023', 0, '2023-02-20 05:13:00', '2023-02-20 05:13:00'),
(2175, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  23-02-2023', 1, '2023-02-20 05:13:00', '2023-02-20 21:54:54'),
(2176, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  23-02-2023', 1, '2023-02-20 05:13:00', '2023-02-20 05:20:55'),
(2177, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Giovedì  23-02-2023', 0, '2023-02-20 05:13:00', '2023-02-20 05:13:00'),
(2178, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  24-02-2023', 1, '2023-02-20 05:13:04', '2023-02-23 23:57:03'),
(2179, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  24-02-2023', 0, '2023-02-20 05:13:04', '2023-02-20 05:13:04'),
(2180, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  24-02-2023', 0, '2023-02-20 05:13:04', '2023-02-20 05:13:04'),
(2181, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  24-02-2023', 1, '2023-02-20 05:13:04', '2023-02-20 21:54:54'),
(2182, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  24-02-2023', 1, '2023-02-20 05:13:04', '2023-02-20 05:20:55'),
(2183, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  24-02-2023', 0, '2023-02-20 05:13:04', '2023-02-20 05:13:04'),
(2184, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  24-02-2023', 1, '2023-02-20 05:13:07', '2023-02-23 23:57:03'),
(2185, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  24-02-2023', 0, '2023-02-20 05:13:07', '2023-02-20 05:13:07'),
(2186, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  24-02-2023', 0, '2023-02-20 05:13:07', '2023-02-20 05:13:07'),
(2187, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  24-02-2023', 1, '2023-02-20 05:13:07', '2023-02-20 21:54:54'),
(2188, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  24-02-2023', 1, '2023-02-20 05:13:07', '2023-02-20 05:20:55'),
(2189, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  24-02-2023', 0, '2023-02-20 05:13:07', '2023-02-20 05:13:07'),
(2190, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  24-02-2023', 1, '2023-02-20 05:13:09', '2023-02-23 23:57:03'),
(2191, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  24-02-2023', 0, '2023-02-20 05:13:09', '2023-02-20 05:13:09'),
(2192, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  24-02-2023', 0, '2023-02-20 05:13:09', '2023-02-20 05:13:09'),
(2193, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  24-02-2023', 1, '2023-02-20 05:13:09', '2023-02-20 21:54:54'),
(2194, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  24-02-2023', 1, '2023-02-20 05:13:09', '2023-02-20 05:20:55'),
(2195, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Venerdì  24-02-2023', 0, '2023-02-20 05:13:09', '2023-02-20 05:13:09'),
(2196, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  27-02-2023', 1, '2023-02-20 05:13:11', '2023-02-23 23:57:03'),
(2197, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  27-02-2023', 0, '2023-02-20 05:13:11', '2023-02-20 05:13:11'),
(2198, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  27-02-2023', 0, '2023-02-20 05:13:11', '2023-02-20 05:13:11'),
(2199, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  27-02-2023', 1, '2023-02-20 05:13:11', '2023-02-20 21:54:54'),
(2200, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  27-02-2023', 1, '2023-02-20 05:13:11', '2023-02-20 05:20:55'),
(2201, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  27-02-2023', 0, '2023-02-20 05:13:11', '2023-02-20 05:13:11'),
(2202, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  27-02-2023', 1, '2023-02-20 05:13:12', '2023-02-23 23:57:03'),
(2203, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  27-02-2023', 0, '2023-02-20 05:13:12', '2023-02-20 05:13:12'),
(2204, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  27-02-2023', 0, '2023-02-20 05:13:12', '2023-02-20 05:13:12'),
(2205, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  27-02-2023', 1, '2023-02-20 05:13:12', '2023-02-20 21:54:54'),
(2206, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  27-02-2023', 1, '2023-02-20 05:13:12', '2023-02-20 05:20:55'),
(2207, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  27-02-2023', 0, '2023-02-20 05:13:12', '2023-02-20 05:13:12'),
(2208, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  27-02-2023', 1, '2023-02-20 05:13:15', '2023-02-23 23:57:03'),
(2209, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  27-02-2023', 0, '2023-02-20 05:13:15', '2023-02-20 05:13:15'),
(2210, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  27-02-2023', 0, '2023-02-20 05:13:15', '2023-02-20 05:13:15'),
(2211, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  27-02-2023', 1, '2023-02-20 05:13:15', '2023-02-20 21:54:54'),
(2212, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  27-02-2023', 1, '2023-02-20 05:13:15', '2023-02-20 05:20:55'),
(2213, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Lunedì  27-02-2023', 0, '2023-02-20 05:13:15', '2023-02-20 05:13:15'),
(2214, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  28-02-2023', 1, '2023-02-20 05:13:16', '2023-02-23 23:57:03'),
(2215, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  28-02-2023', 0, '2023-02-20 05:13:16', '2023-02-20 05:13:16'),
(2216, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  28-02-2023', 0, '2023-02-20 05:13:16', '2023-02-20 05:13:16'),
(2217, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  28-02-2023', 1, '2023-02-20 05:13:16', '2023-02-20 21:54:54'),
(2218, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  28-02-2023', 1, '2023-02-20 05:13:16', '2023-02-20 05:20:55'),
(2219, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  28-02-2023', 0, '2023-02-20 05:13:16', '2023-02-20 05:13:16'),
(2220, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  28-02-2023', 1, '2023-02-20 05:13:18', '2023-02-23 23:57:03'),
(2221, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  28-02-2023', 0, '2023-02-20 05:13:18', '2023-02-20 05:13:18'),
(2222, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  28-02-2023', 0, '2023-02-20 05:13:18', '2023-02-20 05:13:18'),
(2223, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  28-02-2023', 1, '2023-02-20 05:13:18', '2023-02-20 21:54:54'),
(2224, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  28-02-2023', 1, '2023-02-20 05:13:18', '2023-02-20 05:20:55'),
(2225, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  28-02-2023', 0, '2023-02-20 05:13:18', '2023-02-20 05:13:18'),
(2226, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  28-02-2023', 1, '2023-02-20 05:13:20', '2023-02-23 23:57:03'),
(2227, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  28-02-2023', 0, '2023-02-20 05:13:20', '2023-02-20 05:13:20'),
(2228, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  28-02-2023', 0, '2023-02-20 05:13:20', '2023-02-20 05:13:20'),
(2229, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  28-02-2023', 1, '2023-02-20 05:13:20', '2023-02-20 21:54:54'),
(2230, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  28-02-2023', 1, '2023-02-20 05:13:20', '2023-02-20 05:20:55'),
(2231, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Martedì  28-02-2023', 0, '2023-02-20 05:13:20', '2023-02-20 05:13:20'),
(2232, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  01-03-2023', 1, '2023-02-20 05:13:23', '2023-02-23 23:57:03'),
(2233, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  01-03-2023', 0, '2023-02-20 05:13:23', '2023-02-20 05:13:23'),
(2234, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  01-03-2023', 0, '2023-02-20 05:13:23', '2023-02-20 05:13:23'),
(2235, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  01-03-2023', 1, '2023-02-20 05:13:23', '2023-02-20 21:54:54'),
(2236, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  01-03-2023', 1, '2023-02-20 05:13:23', '2023-02-20 05:20:55'),
(2237, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  01-03-2023', 0, '2023-02-20 05:13:23', '2023-02-20 05:13:23'),
(2238, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  01-03-2023', 1, '2023-02-20 05:13:26', '2023-02-23 23:57:03'),
(2239, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  01-03-2023', 0, '2023-02-20 05:13:26', '2023-02-20 05:13:26'),
(2240, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  01-03-2023', 0, '2023-02-20 05:13:26', '2023-02-20 05:13:26'),
(2241, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  01-03-2023', 1, '2023-02-20 05:13:26', '2023-02-20 21:54:54'),
(2242, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  01-03-2023', 1, '2023-02-20 05:13:26', '2023-02-20 05:20:55'),
(2243, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  01-03-2023', 0, '2023-02-20 05:13:26', '2023-02-20 05:13:26'),
(2244, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  01-03-2023', 1, '2023-02-20 05:13:33', '2023-02-23 23:57:03'),
(2245, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  01-03-2023', 0, '2023-02-20 05:13:33', '2023-02-20 05:13:33'),
(2246, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  01-03-2023', 0, '2023-02-20 05:13:33', '2023-02-20 05:13:33'),
(2247, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  01-03-2023', 1, '2023-02-20 05:13:33', '2023-02-20 21:54:54'),
(2248, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  01-03-2023', 1, '2023-02-20 05:13:33', '2023-02-20 05:20:55'),
(2249, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  01-03-2023', 0, '2023-02-20 05:13:33', '2023-02-20 05:13:33'),
(2250, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 1, '2023-02-20 12:00:18', '2023-02-23 23:57:03'),
(2251, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-20 12:00:18', '2023-02-20 12:00:18'),
(2252, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-20 12:00:18', '2023-02-20 12:00:18'),
(2253, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 1, '2023-02-20 12:00:18', '2023-02-20 21:54:54'),
(2254, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-20 12:00:18', '2023-02-20 12:00:18'),
(2255, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-20 12:00:18', '2023-02-20 12:00:18'),
(2256, 41, NULL, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 0, '2023-02-20 14:24:37', '2023-02-20 14:24:37'),
(2257, NULL, 16, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 0, '2023-02-20 14:24:37', '2023-02-20 14:24:37'),
(2258, 41, NULL, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 0, '2023-02-20 14:24:47', '2023-02-20 14:24:47'),
(2259, NULL, 16, 'Lo stato del tuo ordine è cambiato', 'La tua richiesta è stata completata', 0, '2023-02-20 14:24:48', '2023-02-20 14:24:48'),
(2260, 45, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo.', 0, '2023-02-21 09:00:38', '2023-02-21 09:00:38'),
(2261, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 1, '2023-02-21 12:00:27', '2023-02-23 23:57:03'),
(2262, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-21 12:00:27', '2023-02-21 12:00:27'),
(2263, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-21 12:00:27', '2023-02-21 12:00:27'),
(2264, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-21 12:00:27', '2023-02-21 12:00:27'),
(2265, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-21 12:00:27', '2023-02-21 12:00:27'),
(2266, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-21 12:00:27', '2023-02-21 12:00:27'),
(2267, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine, ora il tuo ordine è in fase di preparazione.', 0, '2023-02-21 14:00:30', '2023-02-21 14:00:30'),
(2268, 45, NULL, 'Notifica di avviso', 'Ricordati di consultare l\'app per verificare se hai ordinato il pranzo per oggi!', 0, '2023-02-21 15:50:15', '2023-02-21 15:50:15'),
(2269, 45, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo.', 0, '2023-02-22 09:00:08', '2023-02-22 09:00:08'),
(2270, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 1, '2023-02-22 12:00:41', '2023-02-23 23:57:03'),
(2271, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-22 12:00:41', '2023-02-22 12:00:41'),
(2272, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-22 12:00:41', '2023-02-22 12:00:41'),
(2273, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-22 12:00:41', '2023-02-22 12:00:41'),
(2274, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-22 12:00:41', '2023-02-22 12:00:41'),
(2275, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-22 12:00:41', '2023-02-22 12:00:41'),
(2276, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine, ora il tuo ordine è in fase di preparazione.', 0, '2023-02-22 14:00:40', '2023-02-22 14:00:40'),
(2277, 45, NULL, 'Notifica di avviso', 'Ricordati di consultare l\'app per verificare se hai ordinato il pranzo per oggi!', 0, '2023-02-22 15:50:29', '2023-02-22 15:50:29'),
(2278, 45, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo.', 0, '2023-02-23 09:00:04', '2023-02-23 09:00:04'),
(2279, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 1, '2023-02-23 12:00:48', '2023-02-23 23:57:03'),
(2280, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-23 12:00:48', '2023-02-23 12:00:48'),
(2281, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-23 12:00:48', '2023-02-23 12:00:48'),
(2282, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-23 12:00:48', '2023-02-23 12:00:48'),
(2283, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-23 12:00:48', '2023-02-23 12:00:48'),
(2284, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-23 12:00:48', '2023-02-23 12:00:48'),
(2285, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine, ora il tuo ordine è in fase di preparazione.', 0, '2023-02-23 14:00:50', '2023-02-23 14:00:50'),
(2286, 45, NULL, 'Notifica di avviso', 'Ricordati di consultare l\'app per verificare se hai ordinato il pranzo per oggi!', 0, '2023-02-23 15:50:31', '2023-02-23 15:50:31'),
(2287, 39, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo.', 0, '2023-02-24 09:00:06', '2023-02-24 09:00:06'),
(2288, 45, NULL, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo.', 0, '2023-02-24 09:00:06', '2023-02-24 09:00:06'),
(2289, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-24 12:00:13', '2023-02-24 12:00:13'),
(2290, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-24 12:00:13', '2023-02-24 12:00:13'),
(2291, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-24 12:00:13', '2023-02-24 12:00:13'),
(2292, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-24 12:00:13', '2023-02-24 12:00:13'),
(2293, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-24 12:00:13', '2023-02-24 12:00:13'),
(2294, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-24 12:00:13', '2023-02-24 12:00:13'),
(2295, 39, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine, ora il tuo ordine è in fase di preparazione.', 0, '2023-02-24 14:00:38', '2023-02-24 14:00:38'),
(2296, 45, NULL, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine, ora il tuo ordine è in fase di preparazione.', 0, '2023-02-24 14:00:38', '2023-02-24 14:00:38'),
(2297, 39, NULL, 'Notifica di avviso', 'Ricordati di consultare l\'app per verificare se hai ordinato il pranzo per oggi!', 0, '2023-02-24 15:50:03', '2023-02-24 15:50:03'),
(2298, 45, NULL, 'Notifica di avviso', 'Ricordati di consultare l\'app per verificare se hai ordinato il pranzo per oggi!', 0, '2023-02-24 15:50:03', '2023-02-24 15:50:03'),
(2299, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-25 12:00:51', '2023-02-25 12:00:51'),
(2300, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-25 12:00:51', '2023-02-25 12:00:51'),
(2301, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-25 12:00:51', '2023-02-25 12:00:51'),
(2302, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-25 12:00:51', '2023-02-25 12:00:51'),
(2303, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-25 12:00:51', '2023-02-25 12:00:51'),
(2304, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-25 12:00:51', '2023-02-25 12:00:51'),
(2305, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  01-03-2023', 0, '2023-02-25 15:38:14', '2023-02-25 15:38:14'),
(2306, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  01-03-2023', 0, '2023-02-25 15:38:14', '2023-02-25 15:38:14'),
(2307, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  01-03-2023', 0, '2023-02-25 15:38:14', '2023-02-25 15:38:14'),
(2308, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  01-03-2023', 0, '2023-02-25 15:38:14', '2023-02-25 15:38:14'),
(2309, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  01-03-2023', 0, '2023-02-25 15:38:14', '2023-02-25 15:38:14'),
(2310, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  01-03-2023', 0, '2023-02-25 15:38:14', '2023-02-25 15:38:14'),
(2311, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  01-03-2023', 0, '2023-02-25 16:00:12', '2023-02-25 16:00:12'),
(2312, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  01-03-2023', 0, '2023-02-25 16:00:12', '2023-02-25 16:00:12'),
(2313, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  01-03-2023', 0, '2023-02-25 16:00:12', '2023-02-25 16:00:12'),
(2314, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  01-03-2023', 0, '2023-02-25 16:00:12', '2023-02-25 16:00:12'),
(2315, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  01-03-2023', 0, '2023-02-25 16:00:12', '2023-02-25 16:00:12'),
(2316, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  01-03-2023', 0, '2023-02-25 16:00:12', '2023-02-25 16:00:12'),
(2317, 39, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  01-03-2023', 0, '2023-02-25 19:16:14', '2023-02-25 19:16:14'),
(2318, 40, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  01-03-2023', 0, '2023-02-25 19:16:14', '2023-02-25 19:16:14'),
(2319, 41, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  01-03-2023', 0, '2023-02-25 19:16:14', '2023-02-25 19:16:14'),
(2320, 43, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  01-03-2023', 0, '2023-02-25 19:16:14', '2023-02-25 19:16:14'),
(2321, 45, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  01-03-2023', 0, '2023-02-25 19:16:14', '2023-02-25 19:16:14'),
(2322, 46, NULL, 'Nuovo Menù disponibile ', 'Nuovo Menù disponibile per il Mercoledì  01-03-2023', 0, '2023-02-25 19:16:14', '2023-02-25 19:16:14'),
(2323, 39, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-26 12:00:51', '2023-02-26 12:00:51'),
(2324, 40, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-26 12:00:51', '2023-02-26 12:00:51'),
(2325, 41, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-26 12:00:51', '2023-02-26 12:00:51'),
(2326, 43, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-26 12:00:51', '2023-02-26 12:00:51'),
(2327, 45, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-26 12:00:51', '2023-02-26 12:00:51'),
(2328, 46, NULL, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', 0, '2023-02-26 12:00:51', '2023-02-26 12:00:51');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('new','on_going','ended','canceled') NOT NULL DEFAULT 'new',
  `date` date DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `school_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `status`, `date`, `user_id`, `school_id`, `created_at`, `updated_at`) VALUES
(4, 'ended', '2022-12-21', NULL, 16, '2022-12-20 02:21:41', '2022-12-21 05:24:42'),
(5, 'ended', '2022-12-22', NULL, 16, '2022-12-20 02:21:41', '2022-12-21 05:24:39'),
(9, 'ended', '2022-12-22', 39, NULL, '2022-12-20 14:07:24', '2022-12-23 16:02:54'),
(10, 'ended', '2022-12-23', 39, NULL, '2022-12-20 14:07:24', '2022-12-24 12:27:38'),
(11, 'ended', '2022-12-26', 39, NULL, '2022-12-20 14:07:24', '2022-12-26 22:02:29'),
(12, 'ended', '2022-12-27', 39, NULL, '2022-12-20 14:07:24', '2023-01-02 12:50:58'),
(13, 'ended', '2022-12-28', 39, NULL, '2022-12-20 14:07:24', '2023-01-02 12:50:52'),
(14, 'ended', '2022-12-22', 41, NULL, '2022-12-20 17:13:16', '2022-12-22 23:32:43'),
(15, 'ended', '2022-12-23', 41, NULL, '2022-12-20 17:13:16', '2023-01-02 12:51:13'),
(16, 'ended', '2022-12-26', 41, NULL, '2022-12-20 17:13:16', '2023-01-02 12:51:04'),
(17, 'ended', '2022-12-27', 41, NULL, '2022-12-20 17:13:16', '2023-01-02 12:51:01'),
(18, 'ended', '2022-12-28', 41, NULL, '2022-12-20 17:13:16', '2023-01-02 12:50:55'),
(19, 'ended', '2022-12-26', 45, NULL, '2022-12-24 21:40:56', '2022-12-27 02:32:39'),
(20, 'ended', '2022-12-27', 45, NULL, '2022-12-24 21:40:56', '2022-12-24 21:41:22'),
(21, 'ended', '2022-12-28', 45, NULL, '2022-12-24 21:40:56', '2022-12-24 21:41:11'),
(22, 'ended', '2022-12-28', 45, NULL, '2022-12-26 09:44:42', '2022-12-30 02:41:49'),
(23, 'ended', '2023-01-06', 45, NULL, '2023-01-02 03:15:36', '2023-01-02 03:15:55'),
(24, 'canceled', '2023-01-05', 39, NULL, '2023-01-03 16:32:06', '2023-01-05 11:39:03'),
(25, 'ended', '2023-01-06', 39, NULL, '2023-01-03 16:32:06', '2023-01-06 16:00:36'),
(26, 'ended', '2023-01-09', 39, NULL, '2023-01-03 16:32:06', '2023-01-09 16:34:46'),
(27, 'canceled', '2023-01-10', 39, NULL, '2023-01-03 16:32:06', '2023-01-10 09:05:47'),
(28, 'canceled', '2023-01-05', 41, NULL, '2023-01-04 00:07:05', '2023-01-05 12:20:02'),
(29, 'ended', '2023-01-06', 41, NULL, '2023-01-04 00:07:05', '2023-01-06 17:54:52'),
(30, 'ended', '2023-01-09', 41, NULL, '2023-01-04 00:07:05', '2023-01-10 09:15:30'),
(31, 'ended', '2023-01-10', 41, NULL, '2023-01-04 00:07:05', '2023-01-10 16:33:57'),
(32, 'ended', '2023-01-06', 45, NULL, '2023-01-04 07:20:59', '2023-01-04 18:40:39'),
(38, 'ended', '2023-01-23', 45, NULL, '2023-01-20 09:17:44', '2023-01-31 12:27:39'),
(39, 'ended', '2023-01-24', 45, NULL, '2023-01-20 09:17:44', '2023-01-31 12:27:34'),
(40, 'ended', '2023-01-23', 41, NULL, '2023-01-20 09:34:34', '2023-01-24 09:14:50'),
(41, 'canceled', '2023-01-24', 41, NULL, '2023-01-20 09:34:34', '2023-01-24 09:14:58'),
(42, 'canceled', '2023-01-23', 39, NULL, '2023-01-20 09:41:53', '2023-01-23 09:01:21'),
(43, 'ended', '2023-01-24', 39, NULL, '2023-01-20 09:41:53', '2023-01-23 13:04:33'),
(44, 'ended', '2023-01-25', 39, NULL, '2023-01-21 12:01:16', '2023-01-26 09:01:14'),
(45, 'ended', '2023-01-26', 39, NULL, '2023-01-21 12:01:16', '2023-01-26 21:34:35'),
(46, 'ended', '2023-01-27', 39, NULL, '2023-01-21 12:01:16', '2023-01-26 23:09:51'),
(47, 'canceled', '2023-01-30', 39, NULL, '2023-01-21 12:01:16', '2023-01-23 13:04:44'),
(48, 'ended', '2023-01-31', 39, NULL, '2023-01-21 12:01:16', '2023-02-05 12:13:19'),
(49, 'ended', '2023-01-25', 41, NULL, '2023-01-24 09:14:24', '2023-02-20 14:24:47'),
(50, 'ended', '2023-01-26', 41, NULL, '2023-01-24 09:14:25', '2023-01-26 23:10:04'),
(51, 'ended', '2023-01-27', 41, NULL, '2023-01-24 09:14:25', '2023-01-26 23:09:51'),
(52, 'ended', '2023-01-30', 41, NULL, '2023-01-24 09:14:25', '2023-01-30 16:32:06'),
(53, 'ended', '2023-01-31', 41, NULL, '2023-01-24 09:14:25', '2023-02-05 15:37:54'),
(58, 'ended', '2023-01-26', 45, NULL, '2023-01-24 23:31:52', '2023-01-26 23:10:04'),
(59, 'ended', '2023-01-27', 45, NULL, '2023-01-24 23:31:52', '2023-01-26 23:09:51'),
(60, 'ended', '2023-01-27', NULL, 16, '2023-01-25 15:26:55', '2023-02-05 14:06:41'),
(61, 'ended', '2023-01-30', NULL, 16, '2023-01-25 15:26:55', '2023-02-05 14:06:45'),
(62, 'ended', '2023-01-31', NULL, 16, '2023-01-25 15:26:55', '2023-02-05 14:06:49'),
(63, 'canceled', '2023-01-30', 39, NULL, '2023-01-29 12:38:47', '2023-01-30 09:42:01'),
(64, 'ended', '2023-02-07', 39, NULL, '2023-02-05 14:57:46', '2023-02-08 09:39:39'),
(65, 'canceled', '2023-02-08', 39, NULL, '2023-02-05 14:57:46', '2023-02-08 09:39:47'),
(66, 'ended', '2023-02-09', 39, NULL, '2023-02-05 14:57:46', '2023-02-10 09:45:16'),
(67, 'canceled', '2023-02-10', 39, NULL, '2023-02-05 14:57:46', '2023-02-10 09:45:21'),
(68, 'ended', '2023-02-13', 39, NULL, '2023-02-05 14:57:46', '2023-02-13 18:03:00'),
(69, 'ended', '2023-02-14', 39, NULL, '2023-02-05 14:57:46', '2023-02-14 16:33:16'),
(70, 'ended', '2023-02-07', 41, NULL, '2023-02-05 15:37:23', '2023-02-08 09:08:29'),
(71, 'ended', '2023-02-08', 41, NULL, '2023-02-05 15:37:23', '2023-02-08 09:08:24'),
(72, 'ended', '2023-02-09', 41, NULL, '2023-02-05 15:37:23', '2023-02-09 12:36:39'),
(73, 'ended', '2023-02-13', 41, NULL, '2023-02-05 15:37:23', '2023-02-13 16:37:44'),
(74, 'canceled', '2023-02-14', 41, NULL, '2023-02-05 15:37:23', '2023-02-11 13:52:04'),
(75, 'canceled', '2023-02-10', 41, NULL, '2023-02-08 09:08:44', '2023-02-08 09:09:05'),
(76, 'canceled', '2023-02-13', NULL, 16, '2023-02-10 17:50:16', '2023-02-20 05:01:25'),
(77, 'canceled', '2023-02-12', 39, NULL, '2023-02-11 13:14:11', '2023-02-11 13:16:02'),
(78, 'canceled', '2023-02-12', NULL, 16, '2023-02-11 13:35:57', '2023-02-20 05:01:30'),
(79, 'new', '2023-02-12', 41, NULL, '2023-02-11 13:46:28', '2023-02-11 13:46:28'),
(80, 'canceled', '2023-02-12', 39, NULL, '2023-02-11 13:54:10', '2023-02-11 14:18:30'),
(81, 'ended', '2023-02-14', 41, NULL, '2023-02-12 01:27:34', '2023-02-20 14:24:37'),
(82, 'ended', '2023-02-21', NULL, 16, '2023-02-20 05:15:08', '2023-02-20 05:16:07'),
(83, 'ended', '2023-02-27', NULL, 16, '2023-02-20 05:15:08', '2023-02-20 05:15:38'),
(84, 'canceled', '2023-02-23', NULL, 16, '2023-02-20 05:15:08', '2023-02-20 05:15:48'),
(85, 'ended', '2023-02-22', NULL, 16, '2023-02-20 05:15:08', '2023-02-20 05:15:58'),
(86, 'ended', '2023-02-21', 45, NULL, '2023-02-20 05:17:12', '2023-02-20 05:18:09'),
(87, 'ended', '2023-02-22', 45, NULL, '2023-02-20 05:17:12', '2023-02-20 05:18:02'),
(88, 'ended', '2023-02-24', 45, NULL, '2023-02-20 05:17:12', '2023-02-20 05:17:49'),
(89, 'canceled', '2023-02-23', 45, NULL, '2023-02-20 05:17:12', '2023-02-20 05:17:55'),
(90, 'new', '2023-02-21', 45, NULL, '2023-02-20 05:20:49', '2023-02-20 05:20:49'),
(91, 'new', '2023-02-22', 45, NULL, '2023-02-20 05:20:49', '2023-02-20 05:20:49'),
(92, 'new', '2023-02-24', 45, NULL, '2023-02-20 05:20:49', '2023-02-20 05:20:49'),
(93, 'new', '2023-02-23', 45, NULL, '2023-02-20 05:20:49', '2023-02-20 05:20:49'),
(94, 'new', '2023-02-27', 45, NULL, '2023-02-20 05:20:49', '2023-02-20 05:20:49'),
(95, 'ended', '2023-02-24', 39, NULL, '2023-02-22 13:09:36', '2023-02-25 15:33:57'),
(96, 'new', '2023-02-27', 39, NULL, '2023-02-22 13:09:36', '2023-02-22 13:09:36'),
(97, 'new', '2023-02-28', 39, NULL, '2023-02-22 13:09:37', '2023-02-22 13:09:37'),
(98, 'new', '2023-03-01', 39, NULL, '2023-02-22 13:09:37', '2023-02-22 13:09:37'),
(100, 'new', '2023-02-22', NULL, 16, '2023-02-25 18:34:24', '2023-02-25 18:34:24'),
(101, 'new', '2023-03-01', 45, NULL, '2023-02-26 22:44:31', '2023-02-26 22:44:31');

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
(20, 4, 38, '2022-12-20 02:21:41', '2022-12-20 02:21:41'),
(21, 5, 41, '2022-12-20 02:21:41', '2022-12-20 02:21:41'),
(51, 15, 47, '2022-12-20 19:07:46', '2022-12-20 19:07:46'),
(52, 17, 36, '2022-12-20 19:07:46', '2022-12-20 19:07:46'),
(53, 18, 45, '2022-12-20 19:07:46', '2022-12-20 19:07:46'),
(54, 16, 31, '2022-12-20 19:07:46', '2022-12-20 19:07:46'),
(56, 10, 46, '2022-12-21 13:10:47', '2022-12-21 13:10:47'),
(57, 11, 29, '2022-12-21 13:10:47', '2022-12-21 13:10:47'),
(60, 9, 42, '2022-12-21 13:10:48', '2022-12-21 13:10:48'),
(61, 14, 41, '2022-12-22 11:05:16', '2022-12-22 11:05:16'),
(62, 19, 31, '2022-12-24 21:40:56', '2022-12-24 21:40:56'),
(63, 20, 36, '2022-12-24 21:40:56', '2022-12-24 21:40:56'),
(64, 21, 45, '2022-12-24 21:40:56', '2022-12-24 21:40:56'),
(68, 13, 44, '2022-12-26 13:36:50', '2022-12-26 13:36:50'),
(69, 12, 36, '2022-12-26 13:36:50', '2022-12-26 13:36:50'),
(70, 22, 44, '2022-12-27 02:32:23', '2022-12-27 02:32:23'),
(71, 23, 37, '2023-01-02 03:15:36', '2023-01-02 03:15:36'),
(72, 24, 39, '2023-01-03 16:32:06', '2023-01-03 16:32:06'),
(73, 25, 37, '2023-01-03 16:32:06', '2023-01-03 16:32:06'),
(74, 26, 32, '2023-01-03 16:32:06', '2023-01-03 16:32:06'),
(75, 27, 30, '2023-01-03 16:32:06', '2023-01-03 16:32:06'),
(80, 28, 39, '2023-01-04 00:08:32', '2023-01-04 00:08:32'),
(85, 32, 37, '2023-01-04 18:37:59', '2023-01-04 18:37:59'),
(86, 30, 32, '2023-01-05 12:19:17', '2023-01-05 12:19:17'),
(88, 29, 36, '2023-01-05 12:19:17', '2023-01-05 12:19:17'),
(89, 31, 30, '2023-01-10 09:15:16', '2023-01-10 09:15:16'),
(104, 40, 44, '2023-01-20 09:34:34', '2023-01-20 09:34:34'),
(105, 41, 42, '2023-01-20 09:34:34', '2023-01-20 09:34:34'),
(108, 42, 44, '2023-01-21 12:01:16', '2023-01-21 12:01:16'),
(109, 43, 42, '2023-01-21 12:01:16', '2023-01-21 12:01:16'),
(111, 45, 39, '2023-01-21 12:01:16', '2023-01-21 12:01:16'),
(112, 46, 37, '2023-01-21 12:01:16', '2023-01-21 12:01:16'),
(113, 47, 32, '2023-01-21 12:01:16', '2023-01-21 12:01:16'),
(116, 38, 44, '2023-01-23 00:50:29', '2023-01-23 00:50:29'),
(117, 39, 43, '2023-01-23 11:50:23', '2023-01-23 11:50:23'),
(119, 44, 49, '2023-01-23 13:08:22', '2023-01-23 13:08:22'),
(120, 49, 47, '2023-01-24 09:14:24', '2023-01-24 09:14:24'),
(121, 50, 39, '2023-01-24 09:14:25', '2023-01-24 09:14:25'),
(122, 51, 36, '2023-01-24 09:14:25', '2023-01-24 09:14:25'),
(123, 52, 34, '2023-01-24 09:14:25', '2023-01-24 09:14:25'),
(124, 53, 30, '2023-01-24 09:14:25', '2023-01-24 09:14:25'),
(129, 58, 38, '2023-01-24 23:31:52', '2023-01-24 23:31:52'),
(130, 59, 35, '2023-01-24 23:31:52', '2023-01-24 23:31:52'),
(134, 60, 37, '2023-01-25 15:27:06', '2023-01-25 15:27:06'),
(136, 61, 32, '2023-01-27 20:27:37', '2023-01-27 20:27:37'),
(137, 62, 30, '2023-01-27 20:27:37', '2023-01-27 20:27:37'),
(138, 48, 30, '2023-01-29 12:38:47', '2023-01-29 12:38:47'),
(139, 63, 33, '2023-01-29 12:38:47', '2023-01-29 12:38:47'),
(140, 64, 46, '2023-02-05 14:57:46', '2023-02-05 14:57:46'),
(146, 70, 45, '2023-02-05 15:37:23', '2023-02-05 15:37:23'),
(147, 71, 42, '2023-02-05 15:37:23', '2023-02-05 15:37:23'),
(151, 66, 41, '2023-02-07 11:33:28', '2023-02-07 11:33:28'),
(152, 67, 36, '2023-02-07 11:33:28', '2023-02-07 11:33:28'),
(155, 65, 42, '2023-02-07 11:33:28', '2023-02-07 11:33:28'),
(161, 72, 40, '2023-02-08 09:08:44', '2023-02-08 09:08:44'),
(162, 75, 37, '2023-02-08 09:08:44', '2023-02-08 09:08:44'),
(166, 77, 53, '2023-02-11 13:14:11', '2023-02-11 13:14:11'),
(169, 76, 34, '2023-02-11 13:36:45', '2023-02-11 13:36:45'),
(170, 78, 54, '2023-02-11 13:36:45', '2023-02-11 13:36:45'),
(172, 74, 31, '2023-02-11 13:46:28', '2023-02-11 13:46:28'),
(173, 79, 54, '2023-02-11 13:46:28', '2023-02-11 13:46:28'),
(176, 80, 53, '2023-02-11 13:54:10', '2023-02-11 13:54:10'),
(180, 73, 34, '2023-02-12 01:27:34', '2023-02-12 01:27:34'),
(181, 81, 30, '2023-02-12 01:27:34', '2023-02-12 01:27:34'),
(183, 68, 33, '2023-02-13 12:15:07', '2023-02-13 12:15:07'),
(184, 69, 31, '2023-02-14 14:52:20', '2023-02-14 14:52:20'),
(185, 82, 47, '2023-02-20 05:15:08', '2023-02-20 05:15:08'),
(186, 83, 35, '2023-02-20 05:15:08', '2023-02-20 05:15:08'),
(187, 84, 41, '2023-02-20 05:15:08', '2023-02-20 05:15:08'),
(188, 85, 46, '2023-02-20 05:15:08', '2023-02-20 05:15:08'),
(189, 86, 47, '2023-02-20 05:17:12', '2023-02-20 05:17:12'),
(190, 87, 44, '2023-02-20 05:17:12', '2023-02-20 05:17:12'),
(191, 88, 39, '2023-02-20 05:17:12', '2023-02-20 05:17:12'),
(192, 89, 43, '2023-02-20 05:17:12', '2023-02-20 05:17:12'),
(193, 90, 47, '2023-02-20 05:20:49', '2023-02-20 05:20:49'),
(194, 91, 44, '2023-02-20 05:20:49', '2023-02-20 05:20:49'),
(195, 92, 39, '2023-02-20 05:20:49', '2023-02-20 05:20:49'),
(196, 93, 42, '2023-02-20 05:20:49', '2023-02-20 05:20:49'),
(198, 94, 37, '2023-02-20 05:21:20', '2023-02-20 05:21:20'),
(199, 95, 39, '2023-02-22 13:09:36', '2023-02-22 13:09:36'),
(206, 96, 36, '2023-02-25 15:47:05', '2023-02-25 15:47:05'),
(207, 97, 32, '2023-02-25 15:47:05', '2023-02-25 15:47:05'),
(208, 98, 30, '2023-02-25 15:47:05', '2023-02-25 15:47:05'),
(211, 100, 44, '2023-02-25 18:34:24', '2023-02-25 18:34:24'),
(212, 101, 30, '2023-02-26 22:44:31', '2023-02-26 22:44:31');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(53, 13, 'cambiare stato', NULL, NULL),
(54, 16, 'mostrare', NULL, NULL),
(55, 16, 'Modificare', NULL, NULL),
(56, 16, 'Elimina', NULL, NULL),
(57, 16, 'Inserisci', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_sections`
--

CREATE TABLE `permission_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(15, 'Statistiche principali', NULL, NULL),
(16, 'Notifiche automatiche', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `phone_token`
--

CREATE TABLE `phone_token` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `school_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` enum('ios','android') DEFAULT 'android',
  `phone_token` varchar(255) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phone_token`
--

INSERT INTO `phone_token` (`id`, `user_id`, `school_id`, `type`, `phone_token`, `created_at`, `updated_at`) VALUES
(110, NULL, 16, 'android', 'fTIlTVkUSNqe-Xgg9vOVSD:APA91bFnhzhsJXQ1rUN-A3d8OBUTmLiVVMUzQ_ctUCyr0q4rpgA4M8y4QVjGPgwg_EMr-FMZ-7GZxPXGOdmDciEJDWgeBKi4odydC0Auv1Wb_09BR5OufilDxsIwA9YB6qjMTHDGDFZL', '2022-12-17', '2022-12-17'),
(112, NULL, 16, 'android', 'dUZux_8OQcykfVpcCGsXtg:APA91bE5SwQTRPtLyc04EQIMaxaCWhsf_2q0zdiyLUZH16eu2t4imO6xVc9jYwHqqjouHCTagnRhZUYFDt7btcHJrZSUp6ZBpg1Gbe1yQrvC3i2Ug32kWolj56biMYtbrPYQ4_Ba3ifM', '2022-12-17', '2022-12-17'),
(121, NULL, 16, 'android', 'c1yM1RzoTT20EfakqsdsY1:APA91bGJPPADoqQT0s0qsEtDIYvudyTvkINwvxKm1KpwYMb73hKoDDadNjYm03LPSBNC7UBiAWxm6k0hKvNVl-5MO7EMHeUR3zdkuGUp_QNSyAYMYVnp2pDZwj0gJc1QpBA9hIAseQOp', '2022-12-17', '2022-12-17'),
(129, 39, NULL, 'android', 'etGaR7mTT8STNjD0g8vezO:APA91bGSEs1mfXPAI2cpptLWhCzz2WXPeajjG4oMcR9d3gE7ZL7v-hJsFh2nGSDJZsqWmHhteAXoe7TOfRY2rW9B3yt9Y-60xlomxGCh9_d3iSJ267Yol297b3aha5TJAbREFBHlsgGD', '2022-12-20', '2022-12-20'),
(130, NULL, 16, 'android', 'eLmo_ymsT2OPhtS13d0Cep:APA91bH6e-Zaxqbm5S-AwdEec-14gDxsVYi0fHzCp1y1Arl3YVcwVe4x_fzVJ4XKRBuDX5WUfI7ibyRafx8lQbISD1Y331RbtoUsCPAbakTqK-IKmntgxWrJnkarozEIh7_Ivf2Rh-iv', '2022-12-20', '2022-12-20'),
(131, 40, NULL, 'android', 'dif4KcmWSiGjMWZRClTQSO:APA91bEmrr2qiHi0MaxwPHPXXujDAeyCYc1KMjSCkwEdYllOnT9H-TkajW3e-UXpcrMyrHmIJfquVoL547H95eA9s6eWbXP3JXcNInqsbvzyBHbCEwJNxPpKzeWre0ehj-Tjuld6XhWn', '2022-12-20', '2022-12-20'),
(132, 41, NULL, 'android', 'ePNhzfAZQSuA3ZDfd3yQDZ:APA91bH8BRLLyXuUZ_z-W0T-MYcM9lLSXwazlWZzYh0YoHZC_4R9_wrue33BHD21PwClfILTabaX4YJG_2FXTSfm6AFaOrm7TcKHMc8QJlVKS9L4r7EKiW3MsH9L8kLhxnSIZbeyHWYs', '2022-12-20', '2022-12-20'),
(134, 43, NULL, 'android', 'cENbbkSCRA-Gsq1BsC_OwB:APA91bGD3tU0oZClvFqdoaX7I3rgTtp_82aaxaw3WHZW3js1v6tOwZJdTEfvrh2-Di_0QRZZZ-ZbkWcEBUH9kQ-XSGiRoJr-L6Jw3XG7rXmHif1ZknOg2K7Z7WpTJ88JxnoKtvgScTyU', '2022-12-20', '2022-12-20'),
(136, 45, NULL, 'android', 'dUZux_8OQcykfVpcCGsXtg:APA91bE5SwQTRPtLyc04EQIMaxaCWhsf_2q0zdiyLUZH16eu2t4imO6xVc9jYwHqqjouHCTagnRhZUYFDt7btcHJrZSUp6ZBpg1Gbe1yQrvC3i2Ug32kWolj56biMYtbrPYQ4_Ba3ifM', '2022-12-20', '2022-12-20'),
(137, 45, NULL, 'android', 'ffPiAFeIQTiFROZBEgBJQq:APA91bHtwFcgxnFqi3bk1lZgoSjV2ZycXQCy-zDuLNU4xuS_UYJjKSteCwSTAEjBdy9B1Zuhs-Eecmj9vQGZY_PtA36egIKltWMlsMHzJd_IKOlCssKwQTzU-cg_yvi-shGzP4mjeqdd', '2022-12-21', '2022-12-21'),
(138, 46, NULL, 'android', 'eBcX3uqbTiqJhodWW9ptGX:APA91bGWjFFT_1xK0RUCyZUIGrkTIhIZuNB5tU5XOM4HiGecJ5KTP9qL-mpj7k_fK5ISKkpT4oSycXV2gHTAKZQ74A50zlpjT87zAb5zODT2y34g_wdz3IJLdk36kvLUeQdpx0rxvVS0', '2022-12-21', '2022-12-21'),
(139, 45, NULL, 'android', 'fYHyt7jOQZe6upHzw1MbXQ:APA91bHFkSn621FLkM8CjJ7mbjYdQZomlYwfsinePEm4-MDvyxn6szi9NqtJaV9g8Z1mWZVbtSIKOWiO8vRlD8Lew-vfUZYHxzB8beCNJRBeXYGwhEg8YSCkq5EE6TGHNfaDP9eGw5aB', '2022-12-26', '2022-12-26'),
(140, 45, NULL, 'android', 'ef09tdoOT3SmOMS_-5no9v:APA91bE9vdBuyHhVu4h_Hy1aYeWs4s8gtObsG3pM5sKyblLB0J4QEaGqOJqmRKX4DpyBzh66o2TyumcP1zkJP_vaD6-5Pb2fM6bqHG5lTUWmpgkWKN9UWH1mNXlY6mZTOJ9uzUe8J_ve', '2022-12-27', '2022-12-27'),
(141, 45, NULL, 'android', '12344444444444444', '2022-12-27', '2022-12-27'),
(142, NULL, 16, 'android', 'ef09tdoOT3SmOMS_-5no9v:APA91bE9vdBuyHhVu4h_Hy1aYeWs4s8gtObsG3pM5sKyblLB0J4QEaGqOJqmRKX4DpyBzh66o2TyumcP1zkJP_vaD6-5Pb2fM6bqHG5lTUWmpgkWKN9UWH1mNXlY6mZTOJ9uzUe8J_ve', '2022-12-27', '2022-12-27'),
(143, 45, NULL, 'android', 'fjMFSEGiSWu8C0A1ADnU7h:APA91bGcsWA-crr9__z6snkmP4UK8blYbjA7AHsZDPMyo9LtBKYnZm5YANvJqzMwbEAq1ec3MqNKO0zYCWjJXSe_VVjWsxt7JzfqNkFkdDrR2UJFbF-AnvqTzi0R2gK-8EAH2u9LKjiF', '2022-12-27', '2022-12-27'),
(144, 45, NULL, 'android', 'cXtooirURfWiltMuthDWP9:APA91bHs3jMtTmPb8vqdZci8Uv-hp48P1u0n48x466vRjcZLteSy73TeyQPlfQfYAZfg08bj_Ezsp5WV_-gp_i-9u1CGNv_m12HX3u9ebIL-K0AjqbRZAn4R38gczPMmnpw4pWiOO_c_', '2022-12-27', '2022-12-27'),
(145, 45, NULL, 'android', 'casiAFJUREWIJut49OaBop:APA91bHC5I3Rcv33T7kjRMS9mNgRrDjJ5q5NpSHFATZnuU-32hr6l6NrS4cAfQuS12qnHUTQ3zIEJCQ1Y6-cudm0dZR-k9kIA8G-DVa4He6bGqScTmdxuHuitGCWzoMRhZ6KXFix6Yn0', '2022-12-28', '2022-12-28'),
(146, 45, NULL, 'android', 'fjv98kJXSQ68JGhVD7jkve:APA91bGhRw98LQKuvvOb2nJI2eenyqm4eQbn0hURa0VJw_YZq744fzJJ7-g5x3kYd8qD1s0Jjq0hC__oauLfei7eHfW8mcbxTHx_41wk61p8Bo5k5Qc_6qwXQsmY9G_iBlDFO9q_tUC_', '2022-12-28', '2022-12-28'),
(147, 45, NULL, 'android', 'dKWC_htLQ5-FD1SlXC04O5:APA91bEBadSvv9nqPb2TdF4rrteqazs40CkcHwFLRf0FZOrRlz4-M1PhxTrw0RVV2Z-LQwCCt61Cp_g1zz5I4_-vbjW8hKBmhxzDVWA6JIF4vAe6sxttGrV7fAr-ZQDuZ7NNtQdHVENz', '2022-12-29', '2022-12-29'),
(148, 45, NULL, 'android', 'd5HYVBzuSdCS_8nxHBddO4:APA91bEDMJVKIfvirYL6f4oLnKPVsDXr1b2G9zR4jMbN4Fs8KxCfQ9YTrGZWuQVfWK9Coqv1HNOrxa4sjVuIGx7fpBmX0PoZbWkbvzwWb-CLIHXBMdwoZKiKo6VMqYsNPGpC35gmO8eC', '2022-12-29', '2022-12-29'),
(149, NULL, 16, 'android', 'd5HYVBzuSdCS_8nxHBddO4:APA91bEDMJVKIfvirYL6f4oLnKPVsDXr1b2G9zR4jMbN4Fs8KxCfQ9YTrGZWuQVfWK9Coqv1HNOrxa4sjVuIGx7fpBmX0PoZbWkbvzwWb-CLIHXBMdwoZKiKo6VMqYsNPGpC35gmO8eC', '2022-12-29', '2022-12-29'),
(150, 45, NULL, 'android', 'cmHr-qiKRI6WEwnkzklF9F:APA91bFzS6LBvR-CJEOri48s6vAjwDxDvec0eTahjDNQPd7U_rpdG0WBpGQ3R8SyJbdMsRZLMWFhoFu7EQocqAhOvh4jUP1YswrdfCmctbF06l23pXlE6NlkMStwEn7Qka1PuXvv3moG', '2023-01-01', '2023-01-01'),
(151, 45, NULL, 'android', 'fEh0PpXTQ2a0s3ht4UaLRB:APA91bFKiRXgGnbzBJmGHztAyWTQ73PQ8zS5LD8GpBuew9jENovDwizUseEl9tNxfuG5J2KfbYDxWpceOcUUBiNbTvxI6XRpGZdWk6HFAdkaSScW4rUwPYsHkQbBD4rcg_SRkjGuOme6', '2023-01-02', '2023-01-02'),
(152, 41, NULL, 'android', 'cpYvgRLAShiSVHLMHGJ1Oz:APA91bHB2DxQUhU76vAGXvFxp9Cm5GMJwKQR-FHwCHFSubwk4XUGq5SbpCe5PrFbzbwYmC8amF_ZV4e8z1MVGPDUgzkL3Oe-uw8cCDNfUv-YATOJluXUk1DYXWpdSPkX9Vf2r_5g72c6', '2023-01-03', '2023-01-03'),
(153, 39, NULL, 'android', 'de5Px7LJStyZGv9H37S6DK:APA91bF_RJw-NvujqiNhLVa9H7H4ysTK6rAI8J7PoJKda87sI5-EKUbqLdHQ7ESWNqAnObXPQEN4FIua9HjXLh505V6UOuD2G3oY4EhkBRWeSNY4o3LG04cu7u5sjkhpWmmoAtn4L73z', '2023-01-03', '2023-01-03'),
(154, 45, NULL, 'android', 'dbk7Je2mR0q8K-AFzj9pcU:APA91bGpaKOxzuVgJYhbZBXNvqDPo1n4ZPAO9g9ufjFHsEATs4rLhLrqNtbAu6bE9OfAHKm0Ms5WPRXxj7z3bHkJSsXV55XVp3xuwDCG9kDjA9cQI9KXAGqtfW6rFcnwETEKifCj71z9', '2023-01-04', '2023-01-04'),
(155, 45, NULL, 'android', 'f4ziQN5DQ4KYaiFax1Z0Aj:APA91bH9NzsnlYD2VKJitl-iGFhrhRPZC_wa8eG1mN0XtkBU3xe7wpEa6qAple_RHVuv91TkY7IHSco-yq8tRZqQ5jZ64rwUUt2kMpRi2kEYDSYaRHALCtWnKRFzDjgGKWZNCwdMFe2X', '2023-01-04', '2023-01-04'),
(156, 43, NULL, 'android', 'ds-LQdlWTUy4CUjwRQu-9K:APA91bHpC3xB3E2UZ4UCVeZ5ReekuTwZlOoubqlq51cxw-6y8iUFBJ7YesK7-OPeOoB1f83ZSaiCE2T7Li0M8pYuyJZG81cwq54Q89qoci0Hik2BnzZwLHekUJt4OWZa5WAVMvHjrlSw', '2023-01-09', '2023-01-09'),
(157, NULL, 16, 'android', 'fbI4xb15SqaVlJ4TJBnlFX:APA91bEPieye5wNM3WyT_Y4xUM1hpJLQ8MwpVHRRUFN3Q8iXhhKRSC03u59-qRv54tqn59hCQAk-9IfYUDDdpMJiOUG3VaBU770W8EivYQsL6yYwGR-cVEmPijl0GiJr6u-J0ekvtQMF', '2023-01-10', '2023-01-10'),
(158, 45, NULL, 'android', 'eedjYu2cRWmYZTK37OQmk9:APA91bEvsADvfAzKkd_oUDr8JQayVhKfJSIHQDeOJRfVWRRXhBwIoJISgFdzZE932LRSCWr57On1UrvtbGb1Zy2t5eM4IVDwXy5-TfW1XBzPJ19AdjuU4Iu5d16alWj-PZEM3z1II31v', '2023-01-17', '2023-01-17'),
(159, NULL, 16, 'android', 'dKWC_htLQ5-FD1SlXC04O5:APA91bEBadSvv9nqPb2TdF4rrteqazs40CkcHwFLRf0FZOrRlz4-M1PhxTrw0RVV2Z-LQwCCt61Cp_g1zz5I4_-vbjW8hKBmhxzDVWA6JIF4vAe6sxttGrV7fAr-ZQDuZ7NNtQdHVENz', '2023-01-17', '2023-01-17'),
(160, NULL, 16, 'android', 'eedjYu2cRWmYZTK37OQmk9:APA91bEvsADvfAzKkd_oUDr8JQayVhKfJSIHQDeOJRfVWRRXhBwIoJISgFdzZE932LRSCWr57On1UrvtbGb1Zy2t5eM4IVDwXy5-TfW1XBzPJ19AdjuU4Iu5d16alWj-PZEM3z1II31v', '2023-01-17', '2023-01-17'),
(161, NULL, 16, 'android', '12344444444444444', '2023-01-17', '2023-01-17'),
(162, 45, NULL, 'android', 'fsl0q0zVQoCBoeJszC_oac:APA91bEz9k31x4UQc_AoMckd5yexARCQBbMzz2pPysidRp2d8vN3_I_0MpB41tCq_B9DyrQOjj1m34k429MywZmOMAmNE8bqOpGgafoDduDFUg7moX-N1yzdufcfIZB3KBJYvvf087g8', '2023-01-18', '2023-01-18'),
(163, 45, NULL, 'android', 'cvw5VAMsQlq9YMQ4yy_u-R:APA91bH4ALyZQkbYWKW_mqFBjPCQnqAcWWcxXF_9s86y_a21X8LlnlcEwmlVD7SFJuEWb3NmER-bNycR0ppCox8HDRlf1nAs0mv0o8upOKkqTuGBZyPeUzQt_cxriCsTOVQkW_xJwOup', '2023-01-18', '2023-01-18'),
(164, 45, NULL, 'android', 'eP0qAHHsRWiJVY_aXej3h1:APA91bFgxoAyFMOh-Q3e93SVkHcnEdu0qIZgWVgLU3bObCssNrGZ_DaBQg-hnAau9BLwDQpMyFjmF75uXq5oc_Yi4zge1RFRhDh4h0GyvYSqP5VZ5hmYkdZn03Qqv2EwC7p4UJj96ru0', '2023-01-20', '2023-01-20'),
(165, NULL, 16, 'android', 'eP0qAHHsRWiJVY_aXej3h1:APA91bFgxoAyFMOh-Q3e93SVkHcnEdu0qIZgWVgLU3bObCssNrGZ_DaBQg-hnAau9BLwDQpMyFjmF75uXq5oc_Yi4zge1RFRhDh4h0GyvYSqP5VZ5hmYkdZn03Qqv2EwC7p4UJj96ru0', '2023-01-20', '2023-01-20'),
(166, 45, NULL, 'android', 'ft6iBMxyQZqddZvhslNFcA:APA91bFKIiS--TCttxzta0BHqxJjKeJR1wOGgKP2gHnKxYRERVarYDufmBctT9umyexoILSC5TiREYqCjvI2HXn8iyiqtibt9DAF_YFi63u0F5Cn63r5DhRjzBs0ZpJAo4WBqKqY1vf9', '2023-01-22', '2023-01-22'),
(167, 45, NULL, 'android', 'c1UJuFftQJG8DLNYRYJ3eL:APA91bHlcCttkLaHGG1wnltnwiSEO1JbZa3ZnrwP0GzeTTgfzY6rcMS6StOEUJE7rM6ujsyWFvWmZsf-lCFrWAMbanEtfOnW9agvxkpg4xvC8BCeVexnfiFkjUqeMGMsdDfFKLiiTudq', '2023-01-24', '2023-01-24'),
(168, NULL, 16, 'android', 'eGEAxb-2QHCXVL9Hm3NTFU:APA91bF9Kkbt0wwJyJ9bjKNIbI_EFUlzrUKF0spI0HTxfY4kRYSFQ8m637o2_knuo-HRQgGKRa4-IMAPnPt_sL9EUPg6hbyZgeRcIR-Ya1eTnZupD0YIxbUPjN1rpESK_dRtmHe1Rg0A', '2023-01-24', '2023-01-24'),
(169, 45, NULL, 'android', 'frwZLFNVQ8Gk2CRf4xx3V2:APA91bFCCmQ_XIoQDuwu98BfPr5yhjSqRw76R9BmFG5zqeVKv3yP5N0PTJ30UvZA7UWnYmJHrPRs-M6HYjev4LudBMrapKhwe6l-pTbCr7Xo8neQkWUzWQ-JzEhPxcItsMUK3RHPmz6B', '2023-01-24', '2023-01-24'),
(170, NULL, 16, 'android', 'frwZLFNVQ8Gk2CRf4xx3V2:APA91bFCCmQ_XIoQDuwu98BfPr5yhjSqRw76R9BmFG5zqeVKv3yP5N0PTJ30UvZA7UWnYmJHrPRs-M6HYjev4LudBMrapKhwe6l-pTbCr7Xo8neQkWUzWQ-JzEhPxcItsMUK3RHPmz6B', '2023-01-25', '2023-01-25'),
(171, 45, NULL, 'android', 'c4PIWMfHTA2J_CloEusViM:APA91bFKUB_tbxekZYlNZ6K5k98a9nGF9HXBUMnc4vtlMe-885Pyfucd_14mfWYrVVYqbeAoLGtSfzo8sjeElOwI3xmQirHtj-iN9gf887N1_HrWvZtsjsb99_YSxqj9-F5eIvGfyl-7', '2023-01-26', '2023-01-26'),
(172, NULL, 16, 'android', 'c4PIWMfHTA2J_CloEusViM:APA91bFKUB_tbxekZYlNZ6K5k98a9nGF9HXBUMnc4vtlMe-885Pyfucd_14mfWYrVVYqbeAoLGtSfzo8sjeElOwI3xmQirHtj-iN9gf887N1_HrWvZtsjsb99_YSxqj9-F5eIvGfyl-7', '2023-01-26', '2023-01-26'),
(173, NULL, 16, 'android', 'dVdiZtpWRRuuMdjEQyBq5o:APA91bHy33T8pXjRLjsJlBZ0tJWTybH9-lgZL8ZrmnGQn-uC7fCMWoZ-GT3pUjSGfsxP9Wm78Ht9Dtw-LXU_a2igPVUJUUHM-cvdMFqJOJlZXGC3NzJVlmDcZnUhoHqjG0lnwrEBY9DO', '2023-01-27', '2023-01-27'),
(174, 45, NULL, 'android', 'dVdiZtpWRRuuMdjEQyBq5o:APA91bHy33T8pXjRLjsJlBZ0tJWTybH9-lgZL8ZrmnGQn-uC7fCMWoZ-GT3pUjSGfsxP9Wm78Ht9Dtw-LXU_a2igPVUJUUHM-cvdMFqJOJlZXGC3NzJVlmDcZnUhoHqjG0lnwrEBY9DO', '2023-01-27', '2023-01-27'),
(175, 45, NULL, 'android', 'du9L-i1PTPeS5Il4e380ye:APA91bFxa3BVnOn0goY8yI1uS3PSi6cB8SNi9w-sqgMBjsBaNvBqRx6pSJjR6vzuBmmj5doQzdMRJK_k0GzbF7u39hMWZxqFqwzfVnbmEThtlgTrgu6SvoznS4o8nzLFIyXdcMOqrfKH', '2023-01-27', '2023-01-27'),
(176, 45, NULL, 'android', 'dMXJfRmiRZy5CgU0CTZtEP:APA91bE-WFm0fibr-kTaOAa8PL3M_iSeZQWNK4MYokAmeEGrkKKb9l3CvCZthA5R4n1jppBi_2u84sRurasj76zz0Kv64j8_JOgTjNPO7ZoIc8v9-cDsrekY5JUp11pfhQjAtGdZSE7f', '2023-01-29', '2023-01-29'),
(177, 41, NULL, 'android', 'dgxjNnENQ3GdwBPeo2k7H5:APA91bEkX8FYtlAJg59oPmnmooZBEiPorRccaargH6qc4kFPi4OAfqryA9a3qacEhDZAWFkEHzSpzPB0SwLUNFzlfYqwTU-6cMJFujI7txNiOLtqEO6XvvKRQk2qS_sXA2NSHWB1uQjQ', '2023-01-30', '2023-01-30'),
(178, 39, NULL, 'android', 'cl8JTQ7gQ868fGiVN2amAh:APA91bHM1nIxmkoHuZyFXlhK52DTYp0FFR0DjU2l9rRmV-vR3D_pSkJzQh2YGDp9UBWt0RvSYjgTPMFujBZt-1CRU19czidf0O1LPP12R2AomcXVukMlSPzpNkogH8B4lPQ2ejcHl5v5', '2023-01-30', '2023-01-30'),
(179, NULL, 16, 'android', 'dMXJfRmiRZy5CgU0CTZtEP:APA91bE-WFm0fibr-kTaOAa8PL3M_iSeZQWNK4MYokAmeEGrkKKb9l3CvCZthA5R4n1jppBi_2u84sRurasj76zz0Kv64j8_JOgTjNPO7ZoIc8v9-cDsrekY5JUp11pfhQjAtGdZSE7f', '2023-02-05', '2023-02-05'),
(180, NULL, 16, 'android', 'cLjYzmghREqAWtvr84CpFZ:APA91bER9UlFa6ORorPfAxMkLnqTQ5ZR5YDxPEQAbekoLqsDb7aaGrEenM1Qg5rGnYvyLQbOoB1c-Os13X18F5UKAwjN9pMI6ELNAvuqmTxgBpZu8VfRRAr-VBLtdFqEl5F9ENdxQ_Km', '2023-02-08', '2023-02-08'),
(181, NULL, 16, 'android', 'd6Os6btka0WdlWT7d3To5x:APA91bERkhHd6d-ei-3yVEU1Mea9LJec-sfyytmTt60I096EMD5OaR1GlJjW4ItVSGDyiEBx9n1Sl7WvR8nNx6I0txQLdUyhpeOA7BPr-to4jdjyff3rz55obE9113CbODEUw9r90Ndr', '2023-02-12', '2023-02-12'),
(182, 45, NULL, 'android', 'd6Os6btka0WdlWT7d3To5x:APA91bERkhHd6d-ei-3yVEU1Mea9LJec-sfyytmTt60I096EMD5OaR1GlJjW4ItVSGDyiEBx9n1Sl7WvR8nNx6I0txQLdUyhpeOA7BPr-to4jdjyff3rz55obE9113CbODEUw9r90Ndr', '2023-02-12', '2023-02-12'),
(183, NULL, 16, 'android', 'f8NNiSj7kkGahkFkS0qily:APA91bECiAxMz_yZFojpL2Y1cNHXecqRmlNHI85gWM56LyEJiwKBJ6FInfIPYT47rC1eHLCjYxixmBI6zBGMm8_PvaZAJXjYtriE-5HjcsZpXZemn7EhzYZjq6zUwel4vy1V7erejX0-', '2023-02-12', '2023-02-12'),
(184, 45, NULL, 'android', 'f8NNiSj7kkGahkFkS0qily:APA91bECiAxMz_yZFojpL2Y1cNHXecqRmlNHI85gWM56LyEJiwKBJ6FInfIPYT47rC1eHLCjYxixmBI6zBGMm8_PvaZAJXjYtriE-5HjcsZpXZemn7EhzYZjq6zUwel4vy1V7erejX0-', '2023-02-12', '2023-02-12'),
(185, 45, NULL, 'android', 'd-tBh4RWGEs4p4hrlq1mn4:APA91bHq-Tefx8B0KK0KRZsX1wxgRZIpED7hADNtj-qg4CFqsPQur1O8E2QCRoP67F1lm2rnm-CaXukMEhYeP2ScO7kFP-wqi2TUzEn7gPCHL6xW09I8v6iKCFxoyqyW3jJ0UIwkdrqk', '2023-02-12', '2023-02-12'),
(186, NULL, 24, 'android', 'euGkJYMqAUDrnlFF9uu0Q6:APA91bGwoX72oz4EEjok8_BBrjuRCzDmQ1tJe40-d_L9G6NSWGc7rkjo3BqecQMixNH0NEHFIGg-KdfbwniZ_cwjDOX-aR5M9qjEX2oVkvN6aGdNsJnhlnXzkAVRdIbx-Io7U95htxFn', '2023-02-12', '2023-02-12'),
(187, 45, NULL, 'android', 'euGkJYMqAUDrnlFF9uu0Q6:APA91bGwoX72oz4EEjok8_BBrjuRCzDmQ1tJe40-d_L9G6NSWGc7rkjo3BqecQMixNH0NEHFIGg-KdfbwniZ_cwjDOX-aR5M9qjEX2oVkvN6aGdNsJnhlnXzkAVRdIbx-Io7U95htxFn', '2023-02-12', '2023-02-12'),
(188, NULL, 16, 'android', 'euGkJYMqAUDrnlFF9uu0Q6:APA91bGwoX72oz4EEjok8_BBrjuRCzDmQ1tJe40-d_L9G6NSWGc7rkjo3BqecQMixNH0NEHFIGg-KdfbwniZ_cwjDOX-aR5M9qjEX2oVkvN6aGdNsJnhlnXzkAVRdIbx-Io7U95htxFn', '2023-02-12', '2023-02-12'),
(189, 45, NULL, 'android', 'f6B6OPB_W0XujynLhrXzws:APA91bHe0RCdAdiSZeIqpufWr9gKk6xHc8hokmWzvhmzPU2o0DL8KLZVfphu13Csz7fpn8lUmdOAoER_RDVAWfMZzl0Mrkgd_cLcn9xqtE9bH-vCLmq3lvs-e_j25lnRYPuzkcWqtKId', '2023-02-13', '2023-02-13'),
(190, 45, NULL, 'android', 'dSJtiGASUEk1oQhaLJRQa-:APA91bGfc6zgm4hsIzLFRDB9Rt3DojWBXQn6OAQWF45TxaoGAyRJEt27tq-hQNvj0cxe_i7Tm6Hgr21v4MHGdmrYlLQWzpQUa7ReML6mpemqYRX6IniPDVPmB_UHR8RRe09zzFkkAunj', '2023-02-13', '2023-02-13'),
(191, 45, NULL, 'android', 'ehK_OJfARGG6tVx5Yyx_kR:APA91bFMcXsJ1KRApoZhJLecphGFNMSoYBYTAnUX_-aLZJdPHp48HELcBK-aGPTL9PgvbViRiHTYJgZWpuTFCEn9nCNPazOkCgyNyur_aWzzJYgqon-BFM0mfN6x6LSdvl-M2Rih0I0s', '2023-02-19', '2023-02-19'),
(192, NULL, 16, 'android', 'ehK_OJfARGG6tVx5Yyx_kR:APA91bFMcXsJ1KRApoZhJLecphGFNMSoYBYTAnUX_-aLZJdPHp48HELcBK-aGPTL9PgvbViRiHTYJgZWpuTFCEn9nCNPazOkCgyNyur_aWzzJYgqon-BFM0mfN6x6LSdvl-M2Rih0I0s', '2023-02-19', '2023-02-19'),
(193, NULL, 16, 'android', 'du9L-i1PTPeS5Il4e380ye:APA91bFxa3BVnOn0goY8yI1uS3PSi6cB8SNi9w-sqgMBjsBaNvBqRx6pSJjR6vzuBmmj5doQzdMRJK_k0GzbF7u39hMWZxqFqwzfVnbmEThtlgTrgu6SvoznS4o8nzLFIyXdcMOqrfKH', '2023-02-24', '2023-02-24');

-- --------------------------------------------------------

--
-- Table structure for table `schedule_notifications`
--

CREATE TABLE `schedule_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `message` varchar(191) DEFAULT NULL,
  `time` time DEFAULT NULL,
  `is_order` enum('yes','no') DEFAULT 'no' COMMENT 'for users who take orders today',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedule_notifications`
--

INSERT INTO `schedule_notifications` (`id`, `title`, `message`, `time`, `is_order`, `created_at`, `updated_at`) VALUES
(1, 'Modificare/Disdire', 'Ricordati che hai tempo fino alle ore 08:00 per modificare/disdire l’ordine del pranzo.', '05:00:00', 'yes', '2022-12-04 15:41:19', '2023-02-11 13:05:11'),
(2, 'Notifica per ordinare pranzo', 'Ti ricordiamo di effettuare l’ordine del pranzo di domani ENTRO LE ORE 10:00!', '08:00:00', 'no', '2022-12-04 15:54:30', '2023-02-10 19:01:54'),
(5, 'Notifica di avviso', 'Ricordati di consultare l\'app per verificare se hai ordinato il pranzo per oggi!', '11:50:00', 'yes', '2022-12-05 04:35:59', '2023-02-10 17:56:20'),
(6, 'Notifica per l\'ordine', 'Non è più possibile modificare o annullare l\'ordine, ora il tuo ordine è in fase di preparazione.', '10:00:00', 'yes', '2022-12-06 15:35:52', '2023-02-14 15:06:02');

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `user_name` varchar(191) DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `phone_code` varchar(191) NOT NULL DEFAULT '0041',
  `code` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `block` enum('yes','no') NOT NULL DEFAULT 'no',
  `is_active` enum('yes','no') NOT NULL DEFAULT 'no',
  `is_read` enum('yes','no') NOT NULL DEFAULT 'no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `name`, `user_name`, `password`, `image`, `phone`, `phone_code`, `code`, `address`, `block`, `is_active`, `is_read`, `created_at`, `updated_at`) VALUES
(16, 'Multitime Quartz SA', 'Multitime Quartz SA', '$2y$10$HcVgiHVi/Iar.jcsF5xHsu579a20BuddaqLpqO4uEfwxTP8muT7nW', 'uploads/school/2481667990467.jpg', NULL, '+41', '782086', 'Zandone', 'no', 'yes', 'yes', '2022-11-08 18:59:20', '2022-12-21 01:27:45'),
(24, 'test', 'test', '$2y$10$gZjh2fS7zHcO9ZyroVy43u6X4e9Pvfwdb7R2M1CmvJGmUKpd7Lmy.', NULL, NULL, '+41', '807600', 'Roma', 'no', 'no', 'yes', '2023-02-12 13:29:39', '2023-02-20 04:59:02');

-- --------------------------------------------------------

--
-- Table structure for table `school_menus`
--

CREATE TABLE `school_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `school_id` bigint(20) UNSIGNED DEFAULT NULL,
  `menu_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_active` enum('pending','yes','no') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `school_menus`
--

INSERT INTO `school_menus` (`id`, `school_id`, `menu_id`, `is_active`, `created_at`, `updated_at`) VALUES
(288, 16, 54, 'yes', '2023-02-20 05:05:50', '2023-02-20 05:12:38'),
(289, 16, 53, 'yes', '2023-02-20 05:05:58', '2023-02-20 05:12:40'),
(290, 16, 50, 'yes', '2023-02-20 05:06:10', '2023-02-20 05:12:42'),
(291, 16, 49, 'yes', '2023-02-20 05:06:41', '2023-02-20 05:12:44'),
(292, 16, 48, 'yes', '2023-02-20 05:06:51', '2023-02-20 05:12:46'),
(293, 16, 47, 'yes', '2023-02-20 05:07:05', '2023-02-20 05:12:48'),
(294, 16, 46, 'yes', '2023-02-20 05:07:24', '2023-02-20 05:12:50'),
(295, 16, 45, 'yes', '2023-02-20 05:07:40', '2023-02-20 05:12:52'),
(296, 16, 44, 'yes', '2023-02-20 05:07:58', '2023-02-20 05:12:54'),
(297, 16, 43, 'yes', '2023-02-20 05:08:21', '2023-02-20 05:12:56'),
(298, 16, 42, 'yes', '2023-02-20 05:08:49', '2023-02-20 05:12:58'),
(299, 16, 41, 'yes', '2023-02-20 05:08:59', '2023-02-20 05:13:00'),
(300, 16, 40, 'yes', '2023-02-20 05:09:20', '2023-02-20 05:13:04'),
(301, 16, 39, 'yes', '2023-02-20 05:09:30', '2023-02-20 05:13:07'),
(302, 16, 38, 'yes', '2023-02-20 05:09:42', '2023-02-20 05:13:09'),
(303, 16, 37, 'yes', '2023-02-20 05:10:14', '2023-02-20 05:13:11'),
(304, 16, 36, 'yes', '2023-02-20 05:10:23', '2023-02-20 05:13:12'),
(305, 16, 35, 'yes', '2023-02-20 05:10:35', '2023-02-20 05:13:15'),
(306, 16, 34, 'yes', '2023-02-20 05:10:54', '2023-02-20 05:13:16'),
(307, 16, 33, 'yes', '2023-02-20 05:11:09', '2023-02-20 05:13:18'),
(308, 16, 32, 'yes', '2023-02-20 05:11:28', '2023-02-20 05:13:20'),
(309, 16, 31, 'yes', '2023-02-20 05:12:05', '2023-02-20 05:13:23'),
(310, 16, 30, 'yes', '2023-02-20 05:12:14', '2023-02-20 05:13:26'),
(311, 16, 29, 'yes', '2023-02-20 05:12:26', '2023-02-25 19:16:14');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_time` time DEFAULT NULL,
  `terms` text DEFAULT NULL,
  `logo` varchar(191) DEFAULT NULL,
  `fav_icon` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `order_time`, `terms`, `logo`, `fav_icon`, `created_at`, `updated_at`) VALUES
(1, '10:00:00', '<div><pre class=\"tw-data-text tw-text-large tw-ta\" data-placeholder=\"Traduzione\" id=\"tw-target-text\" dir=\"ltr\" style=\"unicode-bidi: isolate; font-size: 28px; line-height: 36px; background-color: rgb(248, 249, 250); border: none; padding: 2px 0.14em 2px 0px; position: relative; margin-top: -2px; margin-bottom: -2px; resize: none; font-family: inherit; overflow: hidden; text-align: left; width: 270px; white-space: pre-wrap; overflow-wrap: break-word; color: rgb(32, 33, 36);\"><div>This app is operated by The AppPasti Restaurant. Throughout the site, the terms “we”, “us” and “our” refer to The AppPasti Restaurant. The AppPasti Restaurant offers this app , including all information, tools and services available from this site to you, the user, conditioned upon your acceptance of all terms, conditions, policies and notices stated here.</div><div>By visiting our site and/ or purchasing something from us, you engage in our “Service” and agree to be bound by the following terms and conditions (“Terms of Service”, “Terms”), including those additional terms and conditions and policies referenced herein and/or available by hyperlink. These Terms of Service apply&nbsp; to all users of the site, including without limitation users who are browsers, vendors, customers, merchants, and/ or contributors of content.</div><div>Please read these Terms of Service carefully before accessing or using our application . By accessing or using any part of the site, you agree to be bound by these Terms of Service. If you do not agree to all the terms and conditions of this agreement, then you may not access the app or use any services. If these Terms of Service are considered an offer, acceptance is expressly limited to these Terms of Service.</div><div>Any new features or tools which are added to the current store shall also be subject to the Terms of Service. You can review the most current version of the Terms of Service at any time on this page. We reserve the right to update, change or replace any part of these Terms of Service by posting updates and/or changes to our app . It is your responsibility to check this page periodically for changes. Your continued use of or access to the app following the posting of any changes constitutes acceptance of those changes.</div><div>SECTION 1 – ONLINE STORE TERMS</div><div>By agreeing to these Terms of Service, you represent that you are at least the age of majority in your state or province of residence, or that you are the age of majority in your state or province of residence and you have given us your consent to allow any of your minor dependents to use this site.</div><div>You may not use our products for any illegal or unauthorized purpose nor may you, in the use of the Service, violate any laws in your jurisdiction (including but not limited to copyright laws).</div><div>You must not transmit any worms or viruses or any code of a destructive nature.</div><div>A breach or violation of any of the Terms will result in an immediate termination of your Services.</div><div>SECTION 2 – GENERAL CONDITIONS</div><div>We reserve the right to refuse service to anyone for any reason at any time.</div><div>You understand that your content (not including credit card information), may be transferred unencrypted and involve (a) transmissions over various networks; and (b) changes to conform and adapt to technical requirements of connecting networks or devices. Credit card information is always encrypted during transfer over networks.</div><div>You agree not to reproduce, duplicate, copy, sell, resell or exploit any portion of the Service, use of the Service, or access to the Service or any contact on the app through which the service is provided, without express written permission by us.</div><div>The headings used in this agreement are included for convenience only and will not limit or otherwise affect these Terms.</div><div>SECTION 3 – ACCURACY, COMPLETENESS AND TIMELINESS OF INFORMATION</div><div>We are not responsible if information made available on this site is not accurate, complete or current. The material on this site is provided for general information only and should not be relied upon or used as the sole basis for making decisions without consulting primary, more accurate, more complete or more timely sources of information. Any reliance on the material on this site is at your own risk.</div><div>This site may contain certain historical information. Historical information, necessarily, is not current and is provided for your reference only. We reserve the right to modify the contents of this site at any time, but we have no obligation to update any information on our site. You agree that it is your responsibility to monitor changes to our site.</div><div>SECTION 4 – MODIFICATIONS TO THE SERVICE AND PRICES</div><div>Prices for our products are subject to change without notice.</div><div>We reserve the right at any time to modify or discontinue the Service (or any part or content thereof) without notice at any time.</div><div>We shall not be liable to you or to any third-party for any modification, price change, suspension or discontinuance of the Service.</div><div>SECTION 5 – PRODUCTS OR SERVICES (if applicable)</div><div>Certain products or services may be available exclusively online through the app . These products or services may have limited quantities and are subject to return or exchange only according to our Return Policy.</div><div>We have made every effort to display as accurately as possible the colors and images of our products that appear at the store. We cannot guarantee that your computer monitor’s display of any color will be accurate.</div><div>We reserve the right, but are not obligated, to limit the sales of our products or Services to any person, geographic region or jurisdiction. We may exercise this right on a case-by-case basis. We reserve the right to limit the quantities of any products or services that we offer. All descriptions of products or product pricing are subject to change at anytime without notice, at the sole discretion of us. We reserve the right to discontinue any product at any time. Any offer for any product or service made on this site is void where prohibited.</div><div>We do not warrant that the quality of any products, services, information, or other material purchased or obtained by you will meet your expectations, or that any errors in the Service will be corrected.</div><div>SECTION 6 – ACCURACY OF BILLING AND ACCOUNT INFORMATION</div><div>We reserve the right to refuse any order you place with us. We may, in our sole discretion, limit or cancel quantities purchased per person, per household or per order. These restrictions may include orders placed by or under the same customer account, the same credit card, and/or orders that use the same billing and/or shipping address. In the event that we make a change to or cancel an order, we may attempt to notify you by contacting the e-mail and/or billing address/phone number provided at the time the order was made. We reserve the right to limit or prohibit orders that, in our sole judgment, appear to be placed by dealers, resellers or distributors.</div><div>You agree to provide current, complete and accurate purchase and account information for all purchases made at our store. You agree to promptly update your account and other information, including your email address and credit card numbers and expiration dates, so that we can complete your transactions and contact you as needed.</div><div>For more detail, please review our Returns Policy.</div><div>SECTION 7 – OPTIONAL TOOLS</div><div>We may provide you with access to third-party tools over which we neither monitor nor have any control nor input.</div><div>You acknowledge and agree that we provide access to such tools ”as is” and “as available” without any warranties, representations or conditions of any kind and without any endorsement. We shall have no liability whatsoever arising from or relating to your use of optional third-party tools.</div><div>Any use by you of optional tools offered through the site is entirely at your own risk and discretion and you should ensure that you are familiar with and approve of the terms on which tools are provided by the relevant third-party provider(s).</div><div>We may also, in the future, offer new services and/or features through the app (including, the release of new tools and resources). Such new features and/or services shall also be subject to these Terms of Service.</div><div>SECTION 8 – THIRD-PARTY LINKS</div><div>Certain content, products and services available via our Service may include materials from third-parties.</div><div>Third-party links on this site may direct you to third-party apps that are not affiliated with us. We are not responsible for examining or evaluating the content or accuracy and we do not warrant and will not have any liability or responsibility for any third-party materials or apps , or for any other materials, products, or services of third-parties.</div><div>We are not liable for any harm or damages related to the purchase or use of goods, services, resources, content, or any other transactions made in connection with any third-party apps . Please review carefully the third-party’s policies and practices and make sure you understand them before you engage in any transaction. Complaints, claims, concerns, or questions regarding third-party products should be directed to the third-party.</div><div>SECTION 9 – USER COMMENTS, FEEDBACK AND OTHER SUBMISSIONS</div><div>If, at our request, you send certain specific submissions (for example contest entries) or without a request from us you send creative ideas, suggestions, proposals, plans, or other materials, whether online, by email, by postal mail, or otherwise (collectively, ‘comments’), you agree that we may, at any time, without restriction, edit, copy, publish, distribute, translate and otherwise use in any medium any comments that you forward to us. We are and shall be under no obligation (1) to maintain any comments in confidence; (2) to pay compensation for any comments; or (3) to respond to any comments.</div><div>We may, but have no obligation to, monitor, edit or remove content that we determine in our sole discretion are unlawful, offensive, threatening, libelous, defamatory, pornographic, obscene or otherwise objectionable or violates any party’s intellectual property or these Terms of Service.</div><div>You agree that your comments will not violate any right of any third-party, including copyright, trademark, privacy, personality or other personal or proprietary right. You further agree that your comments will not contain libelous or otherwise unlawful, abusive or obscene material, or contain any computer virus or other malware that could in any way affect the operation of the Service or any related app. You may not use a false e-mail address, pretend to be someone other than yourself, or otherwise mislead us or third-parties as to the origin of any comments. You are solely responsible for any comments you make and their accuracy. We take no responsibility and assume no liability for any comments posted by you or any third-party.</div><div>SECTION 10 – PERSONAL INFORMATION</div><div>Your submission of personal information through the store is governed by our Privacy Policy. To view our Privacy Policy.</div><div>SECTION 11 – ERRORS, INACCURACIES AND OMISSIONS</div><div>Occasionally there may be information on our site or in the Service that contains typographical errors, inaccuracies or omissions that may relate to product descriptions, pricing, promotions, offers, product shipping charges, transit times and availability. We reserve the right to correct any errors, inaccuracies or omissions, and to change or update information or cancel orders if any information in the Service or on any related app is inaccurate at any time without prior notice (including after you have submitted your order).</div><div>We undertake no obligation to update, amend or clarify information in the Service or on any related app , including without limitation, pricing information, except as required by law. No specified update or refresh date applied in the Service or on any related app , should be taken to indicate that all information in the Service or on any related app has been modified or updated.</div><div>SECTION 12 – PROHIBITED USES</div><div>In addition to other prohibitions as set forth in the Terms of Service, you are prohibited from using the site or its content: (a) for any unlawful purpose; (b) to solicit others to perform or participate in any unlawful acts; (c) to violate any international, federal, provincial or state regulations, rules, laws, or local ordinances; (d) to infringe upon or violate our intellectual property rights or the intellectual property rights of others; (e) to harass, abuse, insult, harm, defame, slander, disparage, intimidate, or discriminate based on gender, sexual orientation, religion, ethnicity, race, age, national origin, or disability; (f) to submit false or misleading information; (g) to upload or transmit viruses or any other type of malicious code that will or may be used in any way that will affect the functionality or operation of the Service or of any related app, other apps , or the Internet; (h) to collect or track the personal information of others; (i) to spam, phish, pharm, pretext, spider, crawl, or scrape; (j) for any obscene or immoral purpose; or (k) to interfere with or circumvent the security features of the Service or any related app , other apps , or the Internet. We reserve the right to terminate your use of the Service or any related app for violating any of the prohibited uses.</div><div>SECTION 13 – DISCLAIMER OF WARRANTIES; LIMITATION OF LIABILITY</div><div>We do not guarantee, represent or warrant that your use of our service will be uninterrupted, timely, secure or error-free.</div><div>We do not warrant that the results that may be obtained from the use of the service will be accurate or reliable.</div><div>You agree that from time to time we may remove the service for indefinite periods of time or cancel the service at any time, without notice to you.</div><div>You expressly agree that your use of, or inability to use, the service is at your sole risk. The service and all products and services delivered to you through the service are (except as expressly stated by us) provided ‘as is’ and ‘as available’ for your use, without any representation, warranties or conditions of any kind, either express or implied, including all implied warranties or conditions of merchantability, merchantable quality, fitness for a particular purpose, durability, title, and non-infringement.</div><div>In no case shall The AppPasti Restaurant, our directors, officers, employees, affiliates, agents, contractors, interns, suppliers, service providers or licensors be liable for any injury, loss, claim, or any direct, indirect, incidental, punitive, special, or consequential damages of any kind, including, without limitation lost profits, lost revenue, lost savings, loss of data, replacement costs, or any similar damages, whether based in contract, tort (including negligence), strict liability or otherwise, arising from your use of any of the service or any products procured using the service, or for any other claim related in any way to your use of the service or any product, including, but not limited to, any errors or omissions in any content, or any loss or damage of any kind incurred as a result of the use of the service or any content (or product) posted, transmitted, or otherwise made available via the service, even if advised of their possibility. Because some states or jurisdictions do not allow the exclusion or the limitation of liability for consequential or incidental damages, in such states or jurisdictions, our liability shall be limited to the maximum extent permitted by law.</div><div>SECTION 14 – INDEMNIFICATION</div><div>You agree to indemnify, defend and hold harmless The AppPasti Restaurant and our parent, subsidiaries, affiliates, partners, officers, directors, agents, contractors, licensors, service providers, subcontractors, suppliers, interns and employees, harmless from any claim or demand, including reasonable attorneys’ fees, made by any third-party due to or arising out of your breach of these Terms of Service or the documents they incorporate by reference, or your violation of any law or the rights of a third-party.</div><div>SECTION 15 – SEVERABILITY</div><div>In the event that any provision of these Terms of Service is determined to be unlawful, void or unenforceable, such provision shall nonetheless be enforceable to the fullest extent permitted by applicable law, and the unenforceable portion shall be deemed to be severed from these Terms of Service, such determination shall not affect the validity and enforceability of any other remaining provisions.</div><div>SECTION 16 – TERMINATION</div><div>The obligations and liabilities of the parties incurred prior to the termination date shall survive the termination of this agreement for all purposes.</div><div>These Terms of Service are effective unless and until terminated by either you or us. You may terminate these Terms of Service at any time by notifying us that you no longer wish to use our Services, or when you cease using our site.</div><div>If in our sole judgment you fail, or we suspect that you have failed, to comply with any term or provision of these Terms of Service, we also may terminate this agreement at any time without notice and you will remain liable for all amounts due up to and including the date of termination; and/or accordingly may deny you access to our Services (or any part thereof).</div><div>SECTION 17 – ENTIRE AGREEMENT</div><div>The failure of us to exercise or enforce any right or provision of these Terms of Service shall not constitute a waiver of such right or provision.</div><div>These Terms of Service and any policies or operating rules posted by us on this site or in respect to The Service constitutes the entire agreement and understanding between you and us and govern your use of the Service, superseding any prior or contemporaneous agreements, communications and proposals, whether oral or written, between you and us (including, but not limited to, any prior versions of the Terms of Service).</div><div>Any ambiguities in the interpretation of these Terms of Service shall not be construed against the drafting party.</div><div>SECTION 18 – GOVERNING LAW</div><div>These Terms of Service and any separate agreements whereby we provide you Services shall be governed by and construed in accordance with the laws of 4128 Ponea Drive, Sarasota, FL, 34241, United States.</div><div>SECTION 19 – CHANGES TO TERMS OF SERVICE</div><div>You can review the most current version of the Terms of Service at any time at this page.</div><div>We reserve the right, at our sole discretion, to update, change or replace any part of these Terms of Service by posting updates and changes to our app . It is your responsibility to check our app periodically for changes. Your continued use of or access to our app or the Service following the posting of any changes to these Terms of Service constitutes acceptance of those changes.</div><div>SECTION 20 – CONTACT INFORMATION</div><div>Questions about the Terms of Service should be sent us.</div></pre></div><div><div class=\"tw-target-rmn tw-ta-container F0azHf tw-nfl\" id=\"tw-target-rmn-container\" style=\"overflow: hidden; position: relative; outline: 0px;\"><pre class=\"tw-data-placeholder tw-text-small tw-ta\" data-placeholder=\"\" id=\"tw-target-rmn\" dir=\"ltr\" style=\"unicode-bidi: isolate; background-color: transparent; border: none; padding: 0px 0.14em 0px 0px; position: relative; margin-bottom: 0px; resize: none; font-family: inherit; overflow: hidden; text-align: left; width: 270px; white-space: pre-wrap; overflow-wrap: break-word; font-size: 16px; line-height: 24px; color: black;\"><span class=\"Y2IQFc\"></span></pre></div><div jsname=\"fek9E\" class=\"iYB33c\" style=\"display: flex; justify-content: space-between; width: 302px; position: absolute; bottom: 0px; left: 0px; height: 48px;\"><div class=\"dlJLJe\" style=\"display: flex; margin: 10px 11px 0px auto;\"><div jscontroller=\"RXaBU\" data-cviv=\"false\" jsaction=\"R4nmZb:npT2md;C1RXse:PoUyQd\" data-ved=\"2ahUKEwjTnKSz4JD7AhWL26QKHTccC9kQz_AEegQIBRAP\" style=\"visibility: hidden; position: relative;\"><g-bubble jscontroller=\"QVaUhf\" data-du=\"200\" data-tp=\"5\" jsaction=\"R9S7w:VqIRre;\" jsshadow=\"\"><span jsname=\"d6wfac\" class=\"povykd\" data-extra-container-classes=\"tw-verified-tooltip\" data-hover-hide-delay=\"1000\" data-hover-open-delay=\"500\" data-theme=\"0\" data-width=\"0\" role=\"button\" tabindex=\"0\" jsaction=\"vQLyHf\" jsslot=\"\" style=\"cursor: pointer; outline: 0px; display: inline-block;\"><div class=\"U9URNb\" style=\"opacity: 0.74; color: rgb(32, 33, 36); font-size: 12px; font-style: italic; min-width: 26px; margin: -11px; padding: 11px;\"><g-img class=\"XrZwB\" aria-label=\"Icona di Verificata con community\" role=\"img\" style=\"display: inline-block; height: 26px; padding-left: 5px; vertical-align: middle;\"><img id=\"dimg_3\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAQAAAAngNWGAAAA/0lEQVR4AYXNMSiEcRyA4cfmGHQbCZIipkuxnJgMStlMNmeyD2dwmc8+sZgxYJd9ErIZFHUyYYD7fkr6l4/rnvmtl7+KitrqV/fq2Y5eLY3Z9S48eRLe7BmVZ9qhTLhQ0algzZWQOVKSsCF8OjAnwbxDTWFDUhPK/jMr1H6HE/IqRky2DyvCefuwItwZzodVoYRiLqMkVCXrwpJ9twZ+sgfDYEFYl8wIWxZ9uFf7zkallxlJh4YrLGsKjZRx7VGHhLqwgFUN45DGdb8MeXGpgB4ABZdeDcpZEY51A+hyLKz4S1W4MQWm3AibWtgWmk6dyISa1pSdyWTOlLXVp0+eL9D/ZPfBTNanAAAAAElFTkSuQmCC\" class=\"YQ4gaf zr758c wA1Bge\" height=\"16\" width=\"16\" alt=\"Icona di Verificata con community\" data-atf=\"0\" data-frt=\"0\" style=\"display: block; border: 0px; position: relative; padding-top: 3px;\"></g-img><span jsname=\"U2jMLc\" class=\"nlMhfd\" style=\"display: inline-block; height: 26px; line-height: 26px; word-break: break-all;\"></span></div></span></g-bubble></div></div><div class=\"tw-menu\" id=\"tw-tmenu\" style=\"display: inline-block; line-height: normal; position: absolute; left: 0px; white-space: nowrap;\"><span class=\"tw-menu-btn\" data-action-target=\"target\" jsaction=\"kImuFf\" id=\"tw-cpy-btn\" title=\"Copia\" aria-label=\"Copia testo\" role=\"button\" tabindex=\"0\" data-ved=\"2ahUKEwjTnKSz4JD7AhWL26QKHTccC9kQ69UBegQIBRAS\" style=\"cursor: pointer; display: inline-block; height: 48px; color: rgb(112, 117, 122); overflow: hidden; width: 48px; outline: 0px; font-family: arial, sans-serif; font-size: 0px; background-color: rgb(248, 249, 250); transform: rotateX(180deg);\"><span class=\"tw-menu-btn-image z1asCe wm4nBd\" style=\"display: inline-block; fill: currentcolor; height: 24px; line-height: 24px; position: relative; width: 24px; border: 1px solid transparent; padding: 10px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" enable-background=\"new 0 0 24 24\" height=\"24\" viewBox=\"0 0 24 24\" width=\"24\"><g><rect fill=\"none\" height=\"24\" width=\"24\"></rect></g><g><path d=\"M16,20H5V6H3v14c0,1.1,0.9,2,2,2h11V20z M20,16V4c0-1.1-0.9-2-2-2H9C7.9,2,7,2.9,7,4v12c0,1.1,0.9,2,2,2h9 C19.1,18,20,17.1,20,16z M18,16H9V4h9V16z\"></path></g></svg></span></span><span jscontroller=\"cZphsd\" class=\"fQjaD\" data-pronunciation-action-target=\"target\" aria-hidden=\"true\" jsaction=\"mjwztf:V46pce;NcryF:jBJHNe\" style=\"display: inline-block; bottom: 6px; right: -24px; position: relative; color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 0px; background-color: rgb(248, 249, 250);\"><g-bubble jsname=\"VCkuzd\" jscontroller=\"QVaUhf\" data-du=\"200\" jsaction=\"R9S7w:VqIRre;\" jsshadow=\"\"><span jsname=\"d6wfac\" class=\"povykd\" data-extra-container-classes=\"tw-promo-bubble\" data-extra-triangle-classes=\"tw-promo-triangle\" data-hover-hide-delay=\"1000\" data-hover-open-delay=\"500\" data-theme=\"0\" data-width=\"0\" jsaction=\"vQLyHf\" jsslot=\"\" style=\"cursor: pointer; display: inline-block;\"></span></g-bubble></span><span jscontroller=\"tDZ6eb\" class=\"tw-menu-btn za3ale\" data-action-target=\"target\" data-sttse=\"true\" id=\"tw-spkr-button\" aria-label=\"Sintesi vocale\" role=\"button\" tabindex=\"0\" jsaction=\"KjsqPd;rcuQ6b:npT2md;WxjQaf:WRB97d;UpNfPc:Xnrsoe;f2MWRb:QKiGd\" data-ved=\"2ahUKEwjTnKSz4JD7AhWL26QKHTccC9kQ8DR6BAgFEBQ\" style=\"cursor: pointer; display: inline-block; height: 48px; color: rgb(112, 117, 122); overflow: hidden; width: 48px; outline: 0px; font-family: arial, sans-serif; font-size: 0px; background-color: rgb(248, 249, 250);\"><span class=\"tw-menu-btn-image z1asCe JKu1je\" title=\"Ascolta\" style=\"display: inline-block; fill: currentcolor; height: 24px; line-height: 24px; position: relative; width: 24px; border: 1px solid transparent; padding: 12px 10px 8px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M3 9v6h4l5 5V4L7 9H3zm13.5 3c0-1.77-1.02-3.29-2.5-4.03v8.05c1.48-.73 2.5-2.25 2.5-4.02zM14 3.23v2.06c2.89.86 5 3.54 5 6.71s-2.11 5.85-5 6.71v2.06c4.01-.91 7-4.49 7-8.77s-2.99-7.86-7-8.77z\"></path></svg></span></span><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 0px; background-color: rgb(248, 249, 250);\"></span></div></div></div>', 'uploads/setting/66761666762005.png', 'uploads/setting/98891666762005.png', NULL, '2023-02-23 12:13:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `last_name` varchar(191) DEFAULT NULL,
  `personal_id` varchar(191) DEFAULT NULL,
  `user_name` varchar(191) DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `phone_code` varchar(191) NOT NULL DEFAULT '0041',
  `school_id` bigint(20) UNSIGNED DEFAULT NULL,
  `class_id` bigint(20) UNSIGNED DEFAULT NULL,
  `class_name` varchar(191) DEFAULT NULL,
  `block` enum('yes','no') NOT NULL DEFAULT 'no',
  `is_active` enum('pending','yes','no') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `last_name`, `personal_id`, `user_name`, `password`, `phone`, `phone_code`, `school_id`, `class_id`, `class_name`, `block`, `is_active`, `created_at`, `updated_at`) VALUES
(39, 'Rachele', 'Pretolani', '836', 'Rachele Pretolani', '$2y$10$foKsIT982PcgWjqRhec6VeuIOAVEuFeHjdXckVpmQbjqc9lKvbQbW', NULL, '+41', 16, 9, NULL, 'no', 'yes', '2022-12-20 13:45:19', '2022-12-20 14:02:30'),
(40, 'Corinne', 'Marchionini', '820', 'Corinne Marchionini', '$2y$10$GyyoT9CxAu3FDfoV62SaB.9dWMiGff3tixFAAVr/TzXI7QfZ9011W', NULL, '+41', 16, 9, NULL, 'no', 'yes', '2022-12-20 14:09:07', '2022-12-20 14:09:18'),
(41, 'Nicole', 'Garbani', '544', 'Nicole Garbani', '$2y$10$jNMYHUWjazbPPaLWMXbpkeFQAwCcU2kvC/KsA7/AB8ndl2.4Ns.q6', NULL, '+41', 16, 9, NULL, 'no', 'yes', '2022-12-20 17:11:59', '2022-12-20 17:12:12'),
(43, 'Elisa', 'Pioda', '381', 'Elisa Pioda', '$2y$10$66e1ajbv3V0q53jMGzGNnedoKicIuEwxQerpc4zait9F.mkU0iTOO', NULL, '+41', 16, 9, NULL, 'no', 'yes', '2022-12-20 17:51:59', '2022-12-21 01:29:02'),
(45, 'ali', 'fadi', '879', 'ali123', '$2y$10$WK4DQIJpBvj3gLnFEu9gGu9zkXqHRwimU8JAEzDxLY/xad3HhzKgK', NULL, '+41', 16, 9, NULL, 'no', 'yes', '2022-12-21 01:30:19', '2022-12-21 01:30:38'),
(46, 'luana', 'spanò', '151', 'Luana Spanò', '$2y$10$scVTUaXT4gAPkr7BFTAIFuRAwXPJMiNuU4Bl6sGUlUn8f1xmVmtwe', NULL, '+41', 16, 9, NULL, 'no', 'yes', '2022-12-21 18:11:48', '2022-12-21 18:12:26');

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
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ad_per_per_ID13` (`permission_id`),
  ADD KEY `ad_per_admin_ID16` (`admin_id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_school_id` (`school_id`);

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
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_school_id_foreign` (`school_id`);

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
-- Indexes for table `schedule_notifications`
--
ALTER TABLE `schedule_notifications`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `users_school_id_foreign` (`school_id`),
  ADD KEY `users_class_id_foreign` (`class_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=899;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `menu_details`
--
ALTER TABLE `menu_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2329;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `permission_sections`
--
ALTER TABLE `permission_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `phone_token`
--
ALTER TABLE `phone_token`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `schedule_notifications`
--
ALTER TABLE `schedule_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `school_menus`
--
ALTER TABLE `school_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=312;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD CONSTRAINT `ad_per_admin_ID16` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ad_per_per_ID13` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `class_school_id` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`) ON DELETE CASCADE;

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
  ADD CONSTRAINT `orders_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`) ON DELETE CASCADE,
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
  ADD CONSTRAINT `school_id64` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_id64` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

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
  ADD CONSTRAINT `users_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
