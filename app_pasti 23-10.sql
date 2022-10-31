-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2022 at 07:27 PM
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
(1, 'Ahmed Samir', 'admin@admin.com', 'storage/admin/WUFpF8IHpZgjUSvnAIOQK2s8eRcLum8e6l9eGSJO.png', '01026638997', NULL, NULL, '$2y$10$A3n2MQusaK2nhOjGTscu..c39Qetxlp07a3NltecTtHzyme9ZtRwO', NULL, NULL, '2022-10-13 14:25:09'),
(6, 'admin', 'admin2@admin.com', 'storage/admin/WUFpF8IHpZgjUSvnAIOQK2s8eRcLum8e6l9eGSJO.png', '01026638997', NULL, NULL, NULL, NULL, NULL, '2022-08-10 17:49:08'),
(7, 'Chadwick Dejesus', 'defoxu@mailinator.com', NULL, NULL, NULL, NULL, '$2y$10$WIEchsk6/ee19nc8Vquxg.ajf.Yxjb3aUkrhVU87rBAebvlgQg9Tu', NULL, '2022-08-10 17:53:14', '2022-08-10 17:53:14'),
(8, 'Grady Black', 'gukusid@mailinator.com', NULL, NULL, NULL, NULL, '$2y$10$TZyxA605v4Q0sQwj6I4rl.qs9E25CBsjnVdQ3NWUADwPmcuYSEc.e', NULL, '2022-08-10 17:54:10', '2022-08-10 17:54:10');

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
(24, 1, 1, '2022-09-02 19:02:12', '2022-09-02 19:02:12'),
(25, 2, 1, '2022-09-02 19:02:12', '2022-09-02 19:02:12'),
(26, 3, 1, '2022-09-02 19:02:12', '2022-09-02 19:02:12'),
(27, 4, 1, '2022-09-02 19:02:12', '2022-09-02 19:02:12'),
(28, 5, 1, '2022-09-02 19:02:12', '2022-09-02 19:02:12'),
(29, 6, 1, '2022-09-02 19:02:12', '2022-09-02 19:02:12'),
(30, 7, 1, '2022-09-02 19:02:12', '2022-09-02 19:02:12'),
(31, 8, 1, '2022-09-02 19:02:12', '2022-09-02 19:02:12'),
(32, 9, 1, '2022-09-02 19:02:12', '2022-09-02 19:02:12'),
(33, 10, 1, '2022-09-02 19:02:12', '2022-09-02 19:02:12'),
(34, 11, 1, '2022-09-02 19:02:13', '2022-09-02 19:02:13'),
(35, 12, 1, '2022-09-02 19:02:13', '2022-09-02 19:02:13'),
(36, 13, 1, '2022-09-02 19:02:13', '2022-09-02 19:02:13'),
(37, 14, 1, '2022-09-02 19:02:13', '2022-09-02 19:02:13'),
(38, 15, 1, '2022-09-02 19:02:13', '2022-09-02 19:02:13'),
(39, 16, 1, '2022-09-02 19:02:13', '2022-09-02 19:02:13'),
(40, 17, 1, '2022-09-02 19:02:13', '2022-09-02 19:02:13'),
(41, 18, 1, '2022-09-02 19:02:13', '2022-09-02 19:02:13'),
(42, 19, 1, '2022-09-02 19:02:13', '2022-09-02 19:02:13'),
(43, 20, 1, '2022-09-02 19:02:13', '2022-09-02 19:02:13'),
(44, 21, 1, '2022-09-02 19:02:13', '2022-09-02 19:02:13'),
(45, 22, 1, '2022-09-02 19:02:13', '2022-09-02 19:02:13'),
(46, 23, 1, '2022-09-02 19:02:13', '2022-09-02 19:02:13'),
(47, 24, 1, '2022-09-02 19:02:13', '2022-09-02 19:02:13'),
(48, 25, 1, '2022-09-02 19:02:13', '2022-09-02 19:02:13'),
(49, 26, 1, '2022-09-02 19:02:13', '2022-09-02 19:02:13'),
(50, 27, 1, '2022-09-02 19:02:13', '2022-09-02 19:02:13'),
(51, 28, 1, '2022-09-02 19:02:13', '2022-09-02 19:02:13'),
(52, 29, 1, '2022-09-02 19:02:13', '2022-09-02 19:02:13'),
(53, 30, 1, '2022-09-02 19:02:13', '2022-09-02 19:02:13'),
(54, 31, 1, '2022-09-02 19:02:13', '2022-09-02 19:02:13'),
(55, 32, 1, '2022-09-02 19:02:13', '2022-09-02 19:02:13'),
(56, 33, 1, '2022-09-02 19:02:14', '2022-09-02 19:02:14'),
(57, 34, 1, '2022-09-02 19:02:14', '2022-09-02 19:02:14'),
(58, 35, 1, '2022-09-02 19:02:14', '2022-09-02 19:02:14'),
(59, 36, 1, '2022-09-02 19:02:14', '2022-09-02 19:02:14'),
(60, 37, 1, '2022-09-02 19:02:14', '2022-09-02 19:02:14'),
(61, 38, 1, '2022-09-02 19:02:14', '2022-09-02 19:02:14'),
(62, 39, 1, '2022-09-02 19:02:14', '2022-09-02 19:02:14'),
(63, 40, 1, '2022-09-02 19:02:14', '2022-09-02 19:02:14'),
(64, 41, 1, '2022-09-02 19:02:14', '2022-09-02 19:02:14'),
(65, 42, 1, '2022-09-02 19:02:14', '2022-09-02 19:02:14'),
(66, 43, 1, '2022-09-02 19:02:14', '2022-09-02 19:02:14'),
(67, 44, 1, '2022-09-02 19:02:14', '2022-09-02 19:02:14'),
(68, 45, 1, '2022-09-02 19:02:14', '2022-09-02 19:02:14'),
(69, 46, 1, '2022-09-02 19:02:14', '2022-09-02 19:02:14'),
(70, 47, 1, '2022-09-02 19:02:14', '2022-09-02 19:02:14'),
(71, 48, 1, '2022-09-02 19:02:14', '2022-09-02 19:02:14'),
(72, 49, 1, '2022-09-02 19:02:14', '2022-09-02 19:02:14'),
(73, 50, 1, '2022-09-02 19:02:14', '2022-09-02 19:02:14'),
(74, 51, 1, '2022-09-02 19:02:14', '2022-09-02 19:02:14');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `image`, `type`, `created_at`, `updated_at`) VALUES
(1, 'menu meal 1', NULL, 'menu', NULL, NULL),
(2, 'menu meal 2', NULL, 'menu', NULL, NULL),
(3, 'menu addition 1', NULL, 'addition', NULL, NULL),
(4, 'menu addition 2', NULL, 'addition', NULL, NULL);

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
(1, 5, NULL, 'aa', 'aaaaaaa', 0, NULL, '2022-10-22 11:34:26'),
(2, NULL, 6, 'aa', 'aaaaaaa', 0, NULL, '2022-10-22 11:34:26');

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
(1, 'new', '2022-10-23', 5, NULL, NULL),
(2, 'new', '2022-10-22', 5, NULL, '2022-10-23 14:14:05'),
(3, 'new', '2022-10-23', 5, '2022-10-23 15:20:53', '2022-10-23 15:20:53'),
(4, 'new', '2022-10-23', 5, '2022-10-23 15:21:40', '2022-10-23 15:21:40'),
(5, 'new', '2022-10-23', 5, '2022-10-23 15:24:23', '2022-10-23 15:24:23'),
(6, 'new', '2022-10-23', 5, '2022-10-23 15:24:36', '2022-10-23 15:24:36');

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
(12, 6, 3, '2022-10-23 15:24:36', '2022-10-23 15:24:36');

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
(1, 1, 'عرض ', NULL, NULL),
(2, 1, 'تعديل ', NULL, NULL),
(3, 1, 'حذف ', NULL, NULL),
(4, 1, 'اضافة ', NULL, NULL),
(5, 2, 'عرض ', NULL, NULL),
(7, 2, 'حذف ', NULL, NULL),
(9, 2, 'تغيير الحالة ', NULL, NULL),
(10, 2, 'حظر ', NULL, NULL),
(11, 3, 'عرض ', NULL, NULL),
(12, 3, 'تعديل ', NULL, NULL),
(13, 3, 'حذف ', NULL, NULL),
(14, 3, 'اضافة ', NULL, NULL),
(15, 4, 'عرض ', NULL, NULL),
(16, 4, 'تعديل ', NULL, NULL),
(17, 4, 'حذف ', NULL, NULL),
(18, 4, 'اضافة ', NULL, NULL),
(19, 5, 'عرض ', NULL, NULL),
(20, 5, 'رد ', NULL, NULL),
(21, 5, 'حذف ', NULL, NULL),
(22, 6, 'تعديل ', NULL, NULL),
(23, 7, 'عرض ', NULL, NULL),
(24, 7, 'تعديل ', NULL, NULL),
(25, 7, 'حذف ', NULL, NULL),
(26, 7, 'اضافة ', NULL, NULL),
(27, 8, 'عرض ', NULL, NULL),
(28, 8, 'تعديل ', NULL, NULL),
(29, 8, 'حذف ', NULL, NULL),
(30, 8, 'اضافة ', NULL, NULL),
(31, 9, 'عرض ', NULL, NULL),
(32, 9, 'تعديل ', NULL, NULL),
(33, 9, 'حذف ', NULL, NULL),
(34, 9, 'اضافة ', NULL, NULL),
(35, 10, 'عرض ', NULL, NULL),
(36, 10, 'تعديل ', NULL, NULL),
(37, 10, 'حذف ', NULL, NULL),
(38, 10, 'اضافة ', NULL, NULL),
(39, 11, 'عرض ', NULL, NULL),
(40, 11, 'حذف ', NULL, NULL),
(41, 11, 'تغيير الحالة ', NULL, NULL),
(42, 12, 'اضافة ', NULL, NULL),
(43, 13, 'عرض ', NULL, NULL),
(44, 13, 'تعديل ', NULL, NULL),
(45, 13, 'حذف ', NULL, NULL),
(46, 13, 'اضافة ', NULL, NULL),
(47, 14, 'عرض ', NULL, NULL),
(48, 14, 'تعديل ', NULL, NULL),
(49, 14, 'حذف ', NULL, NULL),
(50, 14, 'اضافة ', NULL, NULL),
(51, 15, 'عرض ', NULL, NULL);

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
(1, 'المشرفين', NULL, NULL),
(2, 'العملاء', NULL, NULL),
(3, 'الاقسام الرئيسية', NULL, NULL),
(4, 'الاقسام الفرعية', NULL, NULL),
(5, 'تواصل معنا', NULL, NULL),
(6, 'الاعدادات', NULL, NULL),
(7, 'صور العرض', NULL, NULL),
(8, 'الوحدات', NULL, NULL),
(9, 'المنتجات', NULL, NULL),
(10, 'العروض', NULL, NULL),
(11, 'الطلبات', NULL, NULL),
(12, 'الاشعارات', NULL, NULL),
(13, 'الاهداف', NULL, NULL),
(14, 'الكوبونات', NULL, NULL),
(15, 'احصائيات اارئيسية', NULL, NULL);

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
(15, NULL, 1, 'ios', '1234aaaaaaaaaaaaaaaaaaaa', '2022-10-22', '2022-10-22');

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
(1, 'school 1', NULL, '1234', '+20', '1234', 'test address', 'no', 'yes', 'no', NULL, NULL),
(2, 'ahmed samir', 'uploads/school/84001666438565.jpg', '123456789797', '0041', '307202', 'test address', 'no', 'no', 'no', '2022-10-22 09:36:05', '2022-10-22 09:36:05'),
(3, 'ahmed samir', 'uploads/school/27471666438603.jpg', '123456789797', '0041', '565992', 'test address', 'no', 'no', 'no', '2022-10-22 09:36:43', '2022-10-22 09:36:43'),
(4, 'ahmed samir', 'uploads/school/30381666438624.jpg', '123456789797', '0041', '624830', 'test address', 'no', 'no', 'no', '2022-10-22 09:37:04', '2022-10-22 09:37:04'),
(5, 'ahmed samir', 'uploads/school/50371666438687.jpg', '1234567890', '0041', '220011', 'test address', 'no', 'no', 'no', '2022-10-22 09:38:07', '2022-10-22 09:38:07'),
(6, 'ahmed samirrrr', 'uploads/school/61731666441018.jpg', '12345678910', '0041', '161165', 'testttttttttttttt', 'no', 'no', 'no', '2022-10-22 10:12:04', '2022-10-22 10:16:58');

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
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(3, 1, 3, NULL, NULL),
(4, 1, 4, NULL, NULL);

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
(1, '21:00:00', '<div class=\"links p-5\" style=\"margin: 0px; outline: none; color: rgb(33, 37, 41); font-size: 16px; padding: 3rem !important;\"><ul class=\"padl-15\" style=\"margin: 0px 0px 1rem; padding-left: 2rem; outline: none;\"><li style=\"margin: 0px; padding: 0px; outline: none;\"><a href=\"http://localhost/El-Premo/public/terms#1\" style=\"margin: 0px; padding: 0px; outline: none; color: rgb(13, 110, 253);\">(1) مقدمة</a></li><li style=\"margin: 0px; padding: 0px; outline: none;\"><a href=\"http://localhost/El-Premo/public/terms#2\" style=\"margin: 0px; padding: 0px; outline: none; color: rgb(13, 110, 253);\">(2) الشروط و الاحكام</a></li><li style=\"margin: 0px; padding: 0px; outline: none;\"><a href=\"http://localhost/El-Premo/public/terms#3\" style=\"margin: 0px; padding: 0px; outline: none; color: rgb(13, 110, 253);\">(3) من نحن</a></li><li style=\"margin: 0px; padding: 0px; outline: none;\"><a href=\"http://localhost/El-Premo/public/terms#4\" style=\"margin: 0px; padding: 0px; outline: none; color: rgb(13, 110, 253);\">(4) الحسابك والتزامات التسجيل</a></li></ul></div><div class=\"heading-para p-2\" style=\"margin: 0px; outline: none; color: rgb(33, 37, 41); font-size: 16px;\"><h5 id=\"1\" style=\"font-family: Cairo, sans-serif; margin-right: 0px; margin-bottom: 30px; margin-left: 0px; padding: 0px; outline: none; font-weight: bold; line-height: 1.2; font-size: 1.25rem;\">(1) مقدمة :</h5><div>أهلاً بكم مع البريمو، فيما يلي البنود والشروط التي تخص إستخدامك و دخولك لصفحات موقع \"<span style=\"margin: 0px; padding: 0px; outline: none;\">&nbsp;البريمو&nbsp;</span>\"&nbsp; وكافة الصفحات و الروابط والأدوات والخواص المتفرعة عنها. إن إستخدامك لموقع البريمو&nbsp;هو موافقة منك على القبول ببنود وشروط هذه الإتفاقية والذي يتضمن كافة التفاصيل أدناه وهو تأكيد لإلتزامك بالاستجابة لمضمون هذه الإتفاقية الخاصة بشركة البريمو&nbsp; والمشار إليه فيما يلي بإسم \"نحن\" والمشار إليه إيضا بـ\"<span style=\"margin: 0px; padding: 0px; outline: none;\">البريمو&nbsp;</span>\"، فيما يتعلق باستخدامك للموقع، والمشار إليه فيما يلي بـ \"اتفاقية الإستخدام \" وتعتبر هذه الإتفاقية سارية المفعول حال قبولك بخيار الموافقة</div><h5 id=\"2\" style=\"font-family: Cairo, sans-serif; margin-right: 0px; margin-bottom: 30px; margin-left: 0px; padding: 0px; outline: none; font-weight: bold; line-height: 1.2; font-size: 1.25rem;\">(2) الشروط و الاحكام :</h5><div></div><ul style=\"margin: 0px 0px 1rem; padding-right: 30px; padding-left: 2rem; outline: none;\"><li style=\"margin: 0px; padding: 0px; outline: none;\">سوف يتم تقديم الاستشارة في الوقت المتفق عليه عند حجز طلب وبعد سداد الرسوم.</li><li style=\"margin: 0px; padding: 0px; outline: none;\">إن مجرد الولوج لهذه الخدمة واتباع الخطوات يعتبر موافقة من المشترى على الشروط والأحكام المتعلقة بالخدمة ووفقاً لما يلي:<ul style=\"margin: 0px; padding-right: 30px; padding-left: 2rem; outline: none;\"><li style=\"margin: 0px; padding: 0px; outline: none;\">الموافقة على الرسوم وطريقة الدفع. الرسوم سوف يتم سدادها بالجنيه المصرى.</li><li style=\"margin: 0px; padding: 0px; outline: none;\">الموافقة على نطاق الخدمة.</li><li style=\"margin: 0px; padding: 0px; outline: none;\">موافقة المريض على منح المعلومات المطلوبة سواء شفهياً من خلال الهاتف أو رسالة الكترونية و/أو عبر أي سائل الالكترونية.</li><li style=\"margin: 0px; padding: 0px; outline: none;\">الموافقة على تسجيل الاتصال الصوتي أو الاتصال المرئي لغايات السلامة.</li><li style=\"margin: 0px; padding: 0px; outline: none;\">الموافقة على أن يتم حفظ التاريخ للمشترى لدى السجلات الطلبات في الموقع .</li></ul></li></ul><ul style=\"margin: 0px 0px 1rem; padding-right: 30px; padding-left: 2rem; outline: none;\"><li style=\"margin: 0px; padding: 0px; outline: none;\">كافة المعلومات المقدمة من المشترى تخضع بشكل تام لسياسة موقع العبدلي المتعلقة بالسرية.</li><li style=\"margin: 0px; padding: 0px; outline: none;\"><br></li></ul><div></div><h5 id=\"3\" style=\"font-family: Cairo, sans-serif; margin-right: 0px; margin-bottom: 30px; margin-left: 0px; padding: 0px; outline: none; font-weight: bold; line-height: 1.2; font-size: 1.25rem;\">(3) من نحن :</h5><div>يعتبر الموقع واحداً من المنظومات الصحية الداعمة لتقديم خدمات عالية الجودة وبمساندة أحدث التقنيات الحديثة تبلغ الطاقة الاستيعابية للموقع&nbsp;&nbsp;100طلب وتشتمل الخدمات على الأقسام المتنوعة.<br style=\"margin: 0px; padding: 0px; outline: none;\"><span style=\"color: inherit; font-size: 1.25rem; font-weight: bold;\">(4) الحسابك والتزامات التسجيل :</span></div><div>وكلمة مرور سرية لاستعمالها عند الدخول للموقع. وعند قبول طلب التسجيل ستعتبر عضوا بالموقع وبذلك تكون ، تكون قد وافقت على<br style=\"margin: 0px; padding: 0px; outline: none;\">:<br style=\"margin: 0px; padding: 0px; outline: none;\"><br style=\"margin: 0px; padding: 0px; outline: none;\">1.أن تكون مسؤولاً عن المحافظة على سرية معلومات حسابك وكلمة المرور السرية وتحديد الأشخاص المسموح لهم بالوصول واستخدام حسابك بالموقع. وتكون بذلك موافقاً على إعلام&nbsp;<span style=\"margin: 0px; padding: 0px; outline: none;\">البريمو&nbsp;</span>حالاً بأي استخدام غير مفوض به لكلمة دخولك أو حسابك أو أي اختراق آخر لمعلوماتك السرية.<br style=\"margin: 0px; padding: 0px; outline: none;\"><br style=\"margin: 0px; padding: 0px; outline: none;\">2.لن يكون&nbsp;<span style=\"margin: 0px; padding: 0px; outline: none;\">البريمو&nbsp;</span>بأي حال من الأحوال مسؤولاً عن أي خسارة قد تلحق بك بشكل مباشر أو غير مباشر معنويا أو ماديا نتيجة كشف معلومات إسم المستخدم أو كلمة الدخول<br style=\"margin: 0px; padding: 0px; outline: none;\"><br style=\"margin: 0px; padding: 0px; outline: none;\">3.أنت مسؤول على المحافظة على لإستخدام موقع&nbsp;<span style=\"margin: 0px; padding: 0px; outline: none;\">البريمو&nbsp;</span>بكل جدية و مصداقية وتعتبر ملزما بتعويض&nbsp;<span style=\"margin: 0px; padding: 0px; outline: none;\">البريمو&nbsp;</span>عن أي خسائر مباشرة أو غير مباشرة قد تلحق ب<span style=\"margin: 0px; padding: 0px; outline: none;\">&nbsp;البريمو&nbsp;</span>نتيجة أي استخدام غير شرعي أو حقيقي أو مفوض لحسابك من طرفك أو من<br style=\"margin: 0px; padding: 0px; outline: none;\"><br style=\"margin: 0px; padding: 0px; outline: none;\">طرف أي شخص آخر حصل على مفاتيح الوصول إلى حسابك بالموقع سواء كان لإنجاز خدمات وغيرها باستعمال اسم المستخدم وكلمة الدخول، سواء بتفويض منك أو بلا تفويض.<br style=\"margin: 0px; padding: 0px; outline: none;\"><br style=\"margin: 0px; padding: 0px; outline: none;\">4.أنت موافق على الإفصاح بمعلومات حقيقية وصحيحة و محدثة و كاملة عن نفسك حسبما هو مطلوب في استمارة التسجيل لدى&nbsp;<span style=\"margin: 0px; padding: 0px; outline: none;\">البريمو&nbsp;</span>\"<br style=\"margin: 0px; padding: 0px; outline: none;\"><br style=\"margin: 0px; padding: 0px; outline: none;\">5.أن لا تدرج ضمن بطاقة التسجيل أي من تفاصيل الاتصال بك كعناوين البريد الإلكتروني أو أرقام هواتفك أو أي تفاصيل شخصية، أو كلمة \"سوق\".<br style=\"margin: 0px; padding: 0px; outline: none;\"><br style=\"margin: 0px; padding: 0px; outline: none;\">6.أن لا يتضمن اسم محلك التجاري كلمة \"سوق\" أو شعاره.<br style=\"margin: 0px; padding: 0px; outline: none;\"><br style=\"margin: 0px; padding: 0px; outline: none;\">7.يلتزم&nbsp;<span style=\"margin: 0px; padding: 0px; outline: none;\">البريمو&nbsp;</span>بالتعامل مع معلوماتك الشخصية وعناوين الإتصال بك بسريّة تامة مع الأعضاء الآخرين ويتم تزويد الأعضاء بمعلومات الإتصال بك فقط فور إتمام العمليات التجارية.<br style=\"margin: 0px; padding: 0px; outline: none;\"><br style=\"margin: 0px; padding: 0px; outline: none;\">8.سوف تكون ملزماً بالحفاظ على بيانات التسجيل وتحديثها تباعاً للابقاء عليها حقيقية وصحيحة وراهنة وكاملة، وإذا ما أفصحت عن معلومات غير حقيقية أو غير صحيحة أوغير راهنة أوغير كاملة او مخالفة لما جاء في اتفاقية المستخدم، فإن ل<span style=\"margin: 0px; padding: 0px; outline: none;\">&nbsp;البريمو&nbsp;</span>الحق<br style=\"margin: 0px; padding: 0px; outline: none;\"><br style=\"margin: 0px; padding: 0px; outline: none;\">كاملاً في وقف أو تحديد أو إلغاء عضويتك و حسابك في الموقع، وذلك دون الحاق الأضرار بحقوق&nbsp;<span style=\"margin: 0px; padding: 0px; outline: none;\">البريمو&nbsp;</span>الأخرى ووسائله المشروعة في استرداد حقوقه.<br style=\"margin: 0px; padding: 0px; outline: none;\"><br style=\"margin: 0px; padding: 0px; outline: none;\">9.ل<span style=\"margin: 0px; padding: 0px; outline: none;\">&nbsp;البريمو&nbsp;</span>مطلق الإرادة وفي أي وقت أن يجري أي تحقيقات يراها ضرورية (مباشرة أو عبر طرف ثالث) ويطالبك بالإفصاح عن معلومات إضافية أو وثائق مهما كان حجمها لاثبات هويتك و/أو ملكيتك لأدواتك المالية.<br style=\"margin: 0px; padding: 0px; outline: none;\"><br style=\"margin: 0px; padding: 0px; outline: none;\">10.في حالة أن المقدم لطلب التسجيل يمثل مؤسسة تجارية فلابد من تزويد كافة المعلومات والوثائق المطلوبة التي تتضمن رخصتك التجارية، ووثائق أخرى للمؤسسة و/أو وثائق تظهر مسؤولية أي شخص يتصرف نيابة عنك.<br style=\"margin: 0px; padding: 0px; outline: none;\"><br style=\"margin: 0px; padding: 0px; outline: none;\">11.أنت موافق على تزويد أي معلومات و/أو وثائق ل<span style=\"margin: 0px; padding: 0px; outline: none;\">&nbsp;البريمو&nbsp;</span>في حال طلب منك ذلك.<br style=\"margin: 0px; padding: 0px; outline: none;\"><br style=\"margin: 0px; padding: 0px; outline: none;\">12.في حالة عدم الإلتزام بأي مما ورد إعلاه فإن لإدارة&nbsp;<span style=\"margin: 0px; padding: 0px; outline: none;\">البريمو&nbsp;</span>الحق في إيقاف أو إلغاء عضويتك و حجبك عن الموقع. ونحتفظ كذلك بالحق في إلغاء أي حسابات غير مؤكدة وغير مثبتة أو عمليات أو حسابات مر عليها مدة طويلة دون نشاط.</div></div>', NULL, NULL, NULL, NULL);

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
(1, 'user 1', '12345', '+20', 1, 'class 1', 'no', 'yes', NULL, NULL),
(2, 'ahmed samir', '123456789', '0041', 1, 'class 2', 'no', 'pending', '2022-10-22 08:00:04', '2022-10-22 08:00:04'),
(3, 'ahmed samir', '12345678', '0041', 1, 'class 2', 'no', 'pending', '2022-10-22 08:00:36', '2022-10-22 08:00:36'),
(4, 'ahmed samir', '123456780', '0041', 1, 'class 2', 'no', 'pending', '2022-10-22 10:05:57', '2022-10-22 10:05:57'),
(5, 'ahmed samir', '1234567810', '0041', 1, 'class 2', 'no', 'pending', '2022-10-22 10:08:11', '2022-10-22 10:08:11');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu_details`
--
ALTER TABLE `menu_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `permission_sections`
--
ALTER TABLE `permission_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `phone_token`
--
ALTER TABLE `phone_token`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `school_menus`
--
ALTER TABLE `school_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
