-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 02, 2022 at 05:13 AM
-- Server version: 5.7.23-23
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dltmarke_teacher`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_published` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cat_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'year' COMMENT 'this use to define category type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `is_published`, `created_at`, `updated_at`, `deleted_at`, `parent_id`, `cat_type`) VALUES
(1, 'Primary', 1, '2022-10-07 21:33:15', '2022-10-23 19:55:37', NULL, NULL, 'year'),
(2, 'Grade 1', 1, '2022-10-07 21:33:25', '2022-10-27 22:36:27', '2022-10-27 22:36:27', 1, 'year'),
(3, 'Secondary  school', 1, '2022-10-10 21:13:57', '2022-10-23 19:54:40', '2022-10-23 19:54:40', NULL, 'year'),
(4, 'ثانوي', 1, '2022-10-10 21:14:11', '2022-10-23 19:57:04', '2022-10-23 19:57:04', NULL, 'year'),
(5, 'Grade 22', 1, '2022-10-10 21:14:31', '2022-10-23 19:55:26', '2022-10-23 19:55:26', 3, 'year'),
(6, 'geade 33', 1, '2022-10-10 21:14:46', '2022-10-27 22:36:27', '2022-10-27 22:36:27', 4, 'year'),
(7, 'grade 3', 1, '2022-10-12 22:26:30', '2022-10-27 22:36:27', '2022-10-27 22:36:27', 1, 'year'),
(8, '1st Prep', 0, '2022-10-12 23:16:08', '2022-10-23 19:47:00', '2022-10-23 19:47:00', NULL, 'year'),
(9, 'Secondary', 1, '2022-10-12 23:17:59', '2022-10-23 17:42:12', NULL, NULL, 'year'),
(10, 'Preparatory', 1, '2022-10-12 23:18:15', '2022-10-30 21:34:57', NULL, NULL, 'year'),
(11, 'Primary', 1, '2022-10-12 23:18:25', '2022-10-23 19:47:46', '2022-10-23 19:47:46', NULL, 'year'),
(12, '1st Sec', 1, '2022-10-12 23:19:09', '2022-10-27 22:36:27', '2022-10-27 22:36:27', 9, 'year'),
(13, '2 nd sec', 1, '2022-10-12 23:19:53', '2022-10-27 22:36:27', '2022-10-27 22:36:27', 9, 'year'),
(14, '3rd sec', 1, '2022-10-12 23:20:38', '2022-10-27 22:36:27', '2022-10-27 22:36:27', 9, 'year'),
(15, '1st Prep', 1, '2022-10-12 23:24:02', '2022-10-27 22:36:27', '2022-10-27 22:36:27', 10, 'year'),
(16, '2nd Prep', 1, '2022-10-12 23:24:29', '2022-10-27 22:36:27', '2022-10-27 22:36:27', 10, 'year'),
(17, '3rd Prep', 1, '2022-10-12 23:24:56', '2022-10-27 22:36:27', '2022-10-27 22:36:27', 10, 'year'),
(18, '4th Prim', 1, '2022-10-12 23:25:13', '2022-10-23 19:46:45', '2022-10-23 19:46:45', NULL, 'year'),
(19, '4th Prim', 1, '2022-10-12 23:30:21', '2022-10-23 19:55:05', '2022-10-23 19:55:05', 11, 'year'),
(20, '5th Prim', 1, '2022-10-12 23:31:31', '2022-10-23 19:55:16', '2022-10-23 19:55:16', 11, 'year'),
(21, '6th Prim', 1, '2022-10-12 23:31:52', '2022-10-23 19:55:16', '2022-10-23 19:55:16', 11, 'year'),
(29, 'Math ( 1st Primary )', 1, '2022-10-17 21:44:11', '2022-10-31 14:56:32', NULL, 43, 'material'),
(30, 'Unit 1', 1, '2022-10-17 21:56:18', '2022-10-30 16:43:36', '2022-10-30 16:43:36', 29, 'material'),
(31, 'lesson 1', 1, '2022-10-17 21:56:41', '2022-10-30 16:43:36', '2022-10-30 16:43:36', 30, 'material'),
(32, 'test1', 1, '2022-10-17 22:02:42', '2022-10-30 16:43:36', '2022-10-30 16:43:36', 12, 'material'),
(33, 'test2', 1, '2022-10-17 22:03:46', '2022-10-30 16:43:36', '2022-10-30 16:43:36', 12, 'material'),
(34, 'test category1', 1, '2022-10-17 22:04:03', '2022-10-23 20:50:09', '2022-10-23 20:50:09', 12, 'year'),
(35, 'test1', 1, '2022-10-23 15:59:23', '2022-10-27 22:36:27', '2022-10-27 22:36:27', 13, 'year'),
(36, 'Math', 1, '2022-10-26 21:12:23', '2022-10-27 22:36:27', '2022-10-27 22:36:27', 12, 'year'),
(37, 'English', 1, '2022-10-26 21:17:44', '2022-10-28 01:05:02', '2022-10-28 01:05:02', 43, 'material'),
(38, 'Grade y', 1, '2022-10-27 17:26:53', '2022-10-27 22:36:27', '2022-10-27 22:36:27', 1, 'year'),
(39, 'Grade 5', 1, '2022-10-27 17:28:26', '2022-10-27 22:36:27', '2022-10-27 22:36:27', 1, 'year'),
(40, 'Grade 6', 1, '2022-10-27 17:29:00', '2022-10-27 22:36:27', '2022-10-27 22:36:27', 1, 'year'),
(41, 'Grade 4', 1, '2022-10-27 17:29:22', '2022-10-27 22:36:27', '2022-10-27 22:36:27', 1, 'year'),
(42, '1st', 1, '2022-10-27 22:29:12', '2022-10-27 22:36:27', '2022-10-27 22:36:27', 9, 'year'),
(43, '1st Pri', 1, '2022-10-27 22:38:56', '2022-10-28 01:01:04', NULL, 1, 'year'),
(44, '2nd Pri', 1, '2022-10-27 22:41:38', '2022-10-27 22:44:11', NULL, 1, 'year'),
(45, '3rd Pri', 1, '2022-10-27 22:44:57', '2022-10-30 21:28:00', NULL, 1, 'year'),
(46, '4th Pri', 1, '2022-10-27 22:45:29', '2022-10-30 21:28:15', NULL, 1, 'year'),
(47, '5th Pri', 1, '2022-10-27 22:46:27', '2022-10-30 21:28:28', NULL, 1, 'year'),
(48, '6th Pri', 1, '2022-10-28 00:59:53', '2022-10-30 21:28:43', NULL, 1, 'year'),
(49, '1st Prep', 1, '2022-10-28 01:00:41', '2022-10-28 01:00:41', NULL, 10, 'year'),
(50, '2nd Prep', 1, '2022-10-28 01:01:37', '2022-10-28 01:01:37', NULL, 10, 'year'),
(51, '3rd Prep', 1, '2022-10-28 01:02:05', '2022-10-28 01:02:46', NULL, 10, 'year'),
(52, '1st Sec', 1, '2022-10-28 01:03:29', '2022-10-28 01:03:29', NULL, 9, 'year'),
(53, '2nd Sec', 1, '2022-10-28 01:03:54', '2022-10-28 01:03:54', NULL, 9, 'year'),
(54, '3rd Sec', 1, '2022-10-28 01:04:19', '2022-10-28 01:04:19', NULL, 9, 'year'),
(55, 'TEST', 1, '2022-10-30 16:56:08', '2022-10-30 18:30:19', '2022-10-30 18:30:19', 52, 'material'),
(56, 'test1', 1, '2022-10-30 18:31:52', '2022-10-30 21:07:48', '2022-10-30 21:07:48', 52, 'material'),
(57, 'test2', 1, '2022-10-30 18:32:34', '2022-10-30 21:07:48', '2022-10-30 21:07:48', 52, 'material'),
(58, 'Math ( 2nd Primary )', 1, '2022-10-30 21:09:18', '2022-10-31 14:56:16', NULL, 44, 'material'),
(59, 'Math ( 3rd Primary )', 1, '2022-10-30 21:09:36', '2022-10-31 14:56:00', NULL, 45, 'material'),
(60, 'Math ( 4th Primary )', 1, '2022-10-30 21:10:16', '2022-10-31 14:55:38', NULL, 46, 'material'),
(61, 'Math ( 5th Primary )', 1, '2022-10-30 21:10:44', '2022-10-30 22:19:43', NULL, 47, 'material'),
(62, 'Math ( 6th Primary )', 1, '2022-10-30 21:11:12', '2022-10-31 14:56:50', NULL, 48, 'material'),
(63, 'Math ( 1st Prep )', 1, '2022-10-30 21:11:38', '2022-10-31 14:57:05', NULL, 49, 'material'),
(64, 'Math ( 2nd Prep )', 1, '2022-10-30 21:12:00', '2022-10-31 14:57:23', NULL, 50, 'material'),
(65, 'Math ( 3rd Prep )', 1, '2022-10-30 21:12:15', '2022-10-31 14:57:46', NULL, 51, 'material'),
(66, 'Math ( 1st Sec )', 1, '2022-10-30 21:12:42', '2022-10-31 14:58:04', NULL, 52, 'material'),
(67, 'Math ( 2nd Sec )', 1, '2022-10-30 21:13:13', '2022-10-31 14:58:20', NULL, 53, 'material'),
(68, 'Math ( 3rd Sec )', 1, '2022-10-30 21:13:47', '2022-10-31 14:58:40', NULL, 54, 'material');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `price` decimal(15,2) DEFAULT NULL,
  `is_published` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `teacher_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_user`
--

CREATE TABLE `course_user` (
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_categories`
--

INSERT INTO `faq_categories` (`id`, `category`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Yyy', '2022-10-16 09:36:29', '2022-10-16 09:36:50', '2022-10-16 09:36:50');

-- --------------------------------------------------------

--
-- Table structure for table `faq_questions`
--

CREATE TABLE `faq_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` longtext COLLATE utf8mb4_unicode_ci,
  `answer` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gifts`
--

CREATE TABLE `gifts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `points` double(15,2) NOT NULL,
  `is_active` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gifts`
--

INSERT INTO `gifts` (`id`, `name`, `image`, `points`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'lfdlfdldfldf', '/tmp/phpa2ka0m', 879.00, 1, '2022-10-10 19:45:29', '2022-10-10 22:03:23', '2022-10-10 22:03:23'),
(2, 'Gift 1', '/tmp/phpH5Lgjs', 6.00, 1, '2022-10-10 22:00:02', '2022-10-10 22:03:19', '2022-10-10 22:03:19'),
(3, 'Gift 1', '/tmp/phpzbZJ7g', 6.00, 1, '2022-10-10 22:03:04', '2022-10-10 23:59:54', '2022-10-10 23:59:54'),
(4, 'Gift -2', '/tmp/php80KnLL', 888.00, 1, '2022-10-10 22:56:21', '2022-10-10 23:59:54', '2022-10-10 23:59:54'),
(5, 'ldldl', '/tmp/phpTmDfHG', 0.01, 1, '2022-10-10 23:22:19', '2022-10-10 23:59:54', '2022-10-10 23:59:54'),
(6, 'qwq', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/6-4Rc.png', 232.00, 1, '2022-10-10 23:23:51', '2022-10-13 13:56:31', '2022-10-13 13:56:31'),
(7, 'gift -1', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/7-rqZ.png', 99.00, 1, '2022-10-11 00:01:17', '2022-10-13 13:56:31', '2022-10-13 13:56:31'),
(8, 'gift - 3', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/8-o17.png', 7.00, 1, '2022-10-11 00:01:34', '2022-10-13 13:56:31', '2022-10-13 13:56:31'),
(9, 'GRADE 23', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/9-MTt.png', 100.00, 1, '2022-10-11 00:02:20', '2022-10-13 13:56:31', '2022-10-13 13:56:31'),
(10, 'new gift', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/10-Uou.png', 200.00, 1, '2022-10-12 22:25:41', '2022-10-13 13:56:12', '2022-10-13 13:56:12'),
(11, 'hjhjhjhjhjhhj', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/11-i0f.jpeg', 22.00, 1, '2022-10-12 23:14:17', '2022-10-13 13:56:04', '2022-10-13 13:56:04'),
(12, 'Connect 4.  20 Daimond', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/12-hO3.jpg', 20.00, 1, '2022-10-13 13:50:17', '2022-10-13 13:55:57', '2022-10-13 13:55:57'),
(13, 'سماعات بلوتوث', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/13-a0g.jpg', 150.00, 1, '2022-10-13 14:03:33', '2022-10-13 14:21:39', '2022-10-13 14:21:39'),
(14, 'سماعات بلوتوث', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/14-5zK.jpg', 75.00, 1, '2022-10-13 14:06:25', '2022-10-13 14:21:45', '2022-10-13 14:21:45'),
(15, 'لعبة المحترفين', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/15-bzC.jpg', 150.00, 1, '2022-10-13 14:10:08', '2022-10-13 14:21:52', '2022-10-13 14:21:52'),
(16, 'Connect 4.', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/16-bH4.jpg', 50.00, 1, '2022-10-13 14:11:29', '2022-10-13 14:21:30', '2022-10-13 14:21:30'),
(17, 'Connect 4.', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/17-Js1.jpg', 50.00, 1, '2022-10-13 14:11:31', '2022-10-13 14:21:21', '2022-10-13 14:21:21'),
(18, 'لل', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/18-GgK.jpg', 55.00, 1, '2022-10-13 14:16:17', '2022-10-13 14:21:13', '2022-10-13 14:21:13'),
(19, 'سماعات بلوتوث', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/19-nqj.jpg', 150.00, 1, '2022-10-13 14:18:32', '2022-10-13 14:21:06', '2022-10-13 14:21:06'),
(20, 'سماعات بلوتوث', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/20-ZFV.jpg', 150.00, 1, '2022-10-13 14:20:06', '2022-10-13 14:20:49', NULL),
(21, 'Uno', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/21-R3I.jpg', 50.00, 1, '2022-10-13 14:23:52', '2022-10-13 14:23:52', NULL),
(22, 'Connect 4', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/22-rZb.jpg', 50.00, 1, '2022-10-13 14:24:26', '2022-10-13 14:24:26', NULL),
(23, 'لعبة المحترفين', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/23-wgG.jpg', 150.00, 1, '2022-10-13 14:26:16', '2022-10-13 14:26:16', NULL),
(24, 'ساعه رياضيه ضد الماء', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/24-5Xm.jpg', 400.00, 1, '2022-10-13 14:33:10', '2022-10-13 14:33:10', NULL),
(25, 'منظم اكسسوارات', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/25-TnV.jpg', 200.00, 1, '2022-10-13 14:39:32', '2022-10-13 15:30:00', NULL),
(26, 'منظم اكسسوارات', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/26-um6.jpg', 200.00, 1, '2022-10-13 14:39:34', '2022-10-13 15:30:51', NULL),
(27, 'بيانو', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/27-f1m.jpg', 250.00, 1, '2022-10-13 14:40:00', '2022-10-13 14:40:00', NULL),
(28, 'كرة قدم مقاس ٢', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/28-JwB.jpg', 75.00, 1, '2022-10-13 14:43:42', '2022-10-13 14:43:42', NULL),
(29, 'كرة قدم مقاس ٥', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/29-fT1.jpg', 150.00, 1, '2022-10-13 14:44:16', '2022-10-13 14:46:07', NULL),
(30, 'كرة قدم اصلي مقاس 5', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/30-tRu.jpg', 150.00, 1, '2022-10-13 14:45:27', '2022-10-13 14:45:27', NULL),
(31, 'كرة قدم مقاس ٥', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/31-oHw.jpg', 100.00, 1, '2022-10-13 14:46:52', '2022-10-13 14:46:52', NULL),
(32, 'علشان التوتر', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/32-2P6.jpg', 75.00, 1, '2022-10-13 14:53:34', '2022-10-13 14:53:34', NULL),
(33, 'سماعات بلوتوث', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/33-jEN.jpg', 150.00, 1, '2022-10-13 14:54:02', '2022-10-13 14:54:02', NULL),
(34, 'مكبر بلوتوث باضاءه ليليه تحكم باللمس', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/34-nyk.jpg', 100.00, 1, '2022-10-13 14:59:57', '2022-10-13 14:59:57', NULL),
(35, 'مايكروفون بلوتوث شحن', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/35-Ltw.jpg', 100.00, 1, '2022-10-13 15:01:43', '2022-10-13 15:01:43', NULL),
(36, 'منظم اكسسوارات', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/36-JsF.jpg', 150.00, 1, '2022-10-13 15:31:34', '2022-10-13 15:31:34', NULL),
(37, 'الصباره الراقصه مزوده ب 120 اغنيه قابله للشحن وتعيد الكلام', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/37-1oB.jpg', 200.00, 1, '2022-10-13 15:33:50', '2022-10-26 19:05:21', '2022-10-26 19:05:21'),
(38, 'الصباره الراقصه مزوده ب 120 اغنيه قابله للشحن وتعيد الكلام', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/38-nD8.jpg', 200.00, 1, '2022-10-13 15:33:50', '2022-10-13 15:33:50', NULL),
(39, 'ماكينه غزل بنات منزليه صغيره', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/39-Zv9.jpg', 500.00, 1, '2022-10-13 15:35:37', '2022-10-13 15:35:37', NULL),
(40, 'Chocolate', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/40-xCr.jpg', 50.00, 1, '2022-10-13 15:37:29', '2022-10-13 15:37:29', NULL),
(41, 'Chocolate', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/41-YKN.jpg', 75.00, 1, '2022-10-13 15:52:11', '2022-10-13 15:52:11', NULL),
(42, 'Chocolate', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/42-xzg.jpg', 50.00, 1, '2022-10-13 15:52:52', '2022-10-13 15:52:52', NULL),
(43, 'Chocolate', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/43-6QX.jpg', 25.00, 1, '2022-10-13 15:53:17', '2022-10-13 15:53:17', NULL),
(44, 'Chocolate', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/44-q1P.jpg', 25.00, 1, '2022-10-13 15:53:38', '2022-10-13 15:53:38', NULL),
(45, 'شنطه لانش بوكس', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/45-5sC.jpg', 100.00, 1, '2022-10-13 15:55:34', '2022-10-13 15:55:34', NULL),
(46, 'Uno', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/46-sPA.jpg', 50.00, 1, '2022-10-13 15:56:03', '2022-10-13 15:56:03', NULL),
(47, 'A. T. M. حقيقيه بتسحب الفلوس وبتشتغل بالبصمه والباسورد', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/47-HMu.jpg', 250.00, 1, '2022-10-13 15:57:37', '2022-10-13 15:57:37', NULL),
(48, 'لعبة المحترفين', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/48-FJ0.jpg', 100.00, 1, '2022-10-13 16:00:07', '2022-10-13 16:00:07', NULL),
(49, 'لعبة المحترفين', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/49-Cjr.jpg', 200.00, 1, '2022-10-13 16:00:28', '2022-10-13 16:00:28', NULL),
(50, 'لعبة المحترفين', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/50-uHu.jpg', 200.00, 1, '2022-10-13 16:00:48', '2022-10-13 16:00:48', NULL),
(51, 'شنطه ضهر ماركه مينترا', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/51-tv3.jpg', 150.00, 1, '2022-10-13 16:03:20', '2022-10-13 16:03:20', NULL),
(52, 'شنطة التوتر', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/52-3P3.jpg', 100.00, 1, '2022-10-13 16:04:12', '2022-10-13 16:04:12', NULL),
(53, 'Bottle', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/53-Egu.jpg', 250.00, 1, '2022-10-13 16:08:12', '2022-10-13 16:08:12', NULL),
(54, '64 Gigabyte', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/54-H8N.jpg', 150.00, 1, '2022-10-13 16:19:25', '2022-10-13 16:19:25', NULL),
(55, 'Games', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/55-REW.jpg', 250.00, 1, '2022-10-13 16:21:00', '2022-10-13 16:21:00', NULL),
(56, 'Games', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/56-JUU.jpg', 150.00, 1, '2022-10-13 16:23:08', '2022-10-13 16:23:08', NULL),
(57, 'Games', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/57-xkO.jpg', 400.00, 1, '2022-10-13 16:23:36', '2022-10-13 16:23:36', NULL),
(58, 'Tablet game', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/58-jnf.jpg', 200.00, 1, '2022-10-13 16:44:21', '2022-10-13 16:44:21', NULL),
(59, 'Biano game', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/59-qV6.jpg', 500.00, 1, '2022-10-13 16:44:51', '2022-10-13 16:44:51', NULL),
(60, 'بي بلايد', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/60-fI7.jpg', 300.00, 1, '2022-10-13 16:47:34', '2022-10-13 16:47:34', NULL),
(61, 'لعبة المحترفين', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/61-4UK.jpg', 300.00, 1, '2022-10-13 16:48:04', '2022-10-13 16:48:04', NULL),
(62, 'سلايم', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/62-RPg.jpg', 50.00, 1, '2022-10-13 16:49:08', '2022-10-13 16:49:08', NULL),
(63, 'شنطة ضهر', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/63-c9s.jpg', 250.00, 1, '2022-10-13 16:51:20', '2022-10-13 16:51:20', NULL),
(64, 'شنطة وسط', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/64-S7R.jpg', 120.00, 1, '2022-10-13 16:51:55', '2022-10-13 16:51:55', NULL),
(65, 'جراب موبايل', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/65-8KU.jpg', 150.00, 1, '2022-10-13 16:54:50', '2022-10-13 16:54:50', NULL),
(66, 'جراب موبايل', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/66-F4S.jpg', 150.00, 1, '2022-10-13 16:55:14', '2022-10-13 16:55:14', NULL),
(67, 'جراب موبايل', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/67-hR6.jpg', 150.00, 1, '2022-10-13 16:55:45', '2022-10-13 16:55:45', NULL),
(68, 'جراب موبايل', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/68-rzd.jpg', 200.00, 1, '2022-10-13 16:56:08', '2022-10-13 16:56:08', NULL),
(69, 'سماعات بلوتوث', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/69-7o9.jpg', 350.00, 1, '2022-10-13 16:58:10', '2022-10-13 16:58:10', NULL),
(70, 'سماعات', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/70-Nm9.jpg', 250.00, 1, '2022-10-13 16:58:34', '2022-10-13 16:58:34', NULL),
(71, 'سماعات', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/71-kej.jpg', 150.00, 1, '2022-10-13 16:59:47', '2022-10-13 16:59:47', NULL),
(72, 'سماعات بلوتوث', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/72-1Tq.jpg', 300.00, 1, '2022-10-16 02:59:40', '2022-10-16 02:59:40', NULL),
(73, 'سماعات بلوتوث', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/73-cKQ.jpg', 300.00, 1, '2022-10-16 03:00:07', '2022-10-30 18:20:10', NULL),
(74, '123', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/74-9g2.png', 10.00, 1, '2022-10-23 21:15:54', '2022-10-23 21:16:04', '2022-10-23 21:16:04'),
(75, 'Islam', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/75-2HV.jfif', 102.00, 1, '2022-10-30 20:58:56', '2022-10-30 20:59:51', '2022-10-30 20:59:51');

-- --------------------------------------------------------

--
-- Table structure for table `gift_user`
--

CREATE TABLE `gift_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `gift_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gift_user`
--

INSERT INTO `gift_user` (`user_id`, `gift_id`) VALUES
(24, 8),
(22, 20),
(48, 31),
(80, 23),
(79, 73),
(71, 22),
(71, 24),
(71, 27),
(30, 20),
(30, 21),
(30, 22),
(30, 23),
(30, 24),
(30, 25),
(30, 26),
(30, 27),
(30, 28),
(30, 29),
(30, 30),
(30, 31),
(30, 32),
(30, 33),
(30, 34),
(30, 35),
(30, 36),
(30, 37),
(30, 38),
(30, 39),
(30, 40),
(30, 41),
(30, 42),
(30, 43),
(30, 44),
(30, 45),
(30, 46),
(30, 47),
(30, 48),
(30, 49),
(30, 50),
(30, 51),
(30, 52),
(30, 53),
(30, 54),
(30, 55),
(30, 56),
(30, 57),
(30, 58),
(30, 59),
(30, 60),
(30, 61),
(30, 62),
(30, 63),
(30, 64),
(30, 65),
(30, 66),
(30, 67),
(30, 68),
(30, 69),
(30, 70),
(30, 71),
(30, 72),
(30, 73),
(117, 28),
(170, 23),
(170, 52),
(169, 20),
(169, 21),
(169, 22),
(169, 23),
(169, 24),
(169, 25),
(169, 26),
(169, 27),
(169, 28),
(169, 29),
(169, 30),
(169, 31),
(169, 32),
(169, 33),
(169, 34),
(169, 35),
(169, 36),
(169, 37),
(169, 38),
(169, 39),
(169, 40),
(169, 41),
(169, 42),
(169, 43),
(169, 44),
(169, 45),
(169, 46),
(169, 47),
(169, 48),
(169, 49),
(169, 50),
(169, 51),
(169, 52),
(169, 53),
(169, 54),
(169, 55),
(169, 56),
(169, 57),
(169, 58),
(169, 59),
(169, 60),
(169, 61),
(169, 62),
(169, 63),
(169, 64),
(169, 65),
(169, 66),
(169, 67),
(169, 68),
(169, 69),
(169, 70),
(169, 71),
(169, 72),
(169, 73),
(182, 23),
(189, 20),
(189, 21),
(189, 22),
(189, 23),
(189, 24),
(189, 25),
(189, 26),
(189, 27),
(189, 28),
(189, 29),
(189, 30),
(189, 31),
(189, 32),
(189, 33),
(189, 34),
(189, 35),
(189, 36),
(189, 37),
(189, 38),
(189, 39),
(189, 40),
(189, 41),
(189, 42),
(189, 43),
(189, 44),
(189, 45),
(189, 46),
(189, 47),
(189, 48),
(189, 49),
(189, 50),
(189, 51),
(189, 52),
(189, 53),
(189, 54),
(189, 55),
(189, 56),
(189, 57),
(189, 58),
(189, 59),
(189, 60),
(189, 61),
(189, 62),
(189, 63),
(189, 64),
(189, 65),
(189, 66),
(189, 67),
(189, 68),
(189, 69),
(189, 70),
(189, 71),
(189, 72),
(189, 73);

-- --------------------------------------------------------

--
-- Table structure for table `homeworks`
--

CREATE TABLE `homeworks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `grade_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `homeworks`
--

INSERT INTO `homeworks` (`id`, `title`, `description`, `created_at`, `updated_at`, `deleted_at`, `grade_id`) VALUES
(1, 'Home Work test 1', 'Home Work test 1 Home Work test 1  Home Work test 1  Home Work test 1', '2022-10-31 14:25:13', '2022-11-02 14:39:39', '2022-11-02 14:39:39', 43),
(2, 'Home Work test 2', 'Home Work test 2  Home Work test 2  Home Work test 2', '2022-10-31 14:27:16', '2022-11-02 14:39:39', '2022-11-02 14:39:39', 43),
(3, 'U:1 L:1', 'Uuuu llll', '2022-10-31 20:59:14', '2022-11-02 14:39:39', '2022-11-02 14:39:39', 43),
(4, 'Unit 1 - Lesson 1', '5 Question', '2022-10-31 21:12:24', '2022-11-02 14:39:39', '2022-11-02 14:39:39', 43),
(5, 'Home work U3 L1 ( Quiz 4 )', 'Test ( Description )', '2022-11-02 14:47:14', '2022-11-02 14:47:14', NULL, 43);

-- --------------------------------------------------------

--
-- Table structure for table `homework_answers`
--

CREATE TABLE `homework_answers` (
  `id` int(11) NOT NULL,
  `is_correct` tinyint(4) NOT NULL,
  `home_scores_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `homework_answers`
--

INSERT INTO `homework_answers` (`id`, `is_correct`, `home_scores_id`, `question_id`, `option_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 4, 70, '2022-11-01 21:36:34', '2022-11-01 21:36:34'),
(2, 1, 1, 5, 79, '2022-11-01 21:43:47', '2022-11-01 21:43:47'),
(3, 0, 8, 23, 111, '2022-11-01 23:28:03', '2022-11-01 23:28:03'),
(4, 0, 1, 40, 142, '2022-11-01 23:41:44', '2022-11-01 23:41:44'),
(5, 0, 2, 50, 182, '2022-11-02 00:37:44', '2022-11-02 00:37:44'),
(6, 0, 2, 35, 119, '2022-11-02 00:37:44', '2022-11-02 00:37:44'),
(7, 0, 2, 36, 134, '2022-11-02 00:37:44', '2022-11-02 00:37:44'),
(8, 1, 2, 39, 138, '2022-11-02 00:37:44', '2022-11-02 00:37:44'),
(9, 0, 2, 40, 142, '2022-11-02 00:37:44', '2022-11-02 00:37:44'),
(10, 0, 2, 46, 164, '2022-11-02 00:37:44', '2022-11-02 00:37:44'),
(11, 1, 2, 48, 177, '2022-11-02 00:37:44', '2022-11-02 00:37:44'),
(12, 1, 11, 69, 239, '2022-11-02 14:54:32', '2022-11-02 14:54:32'),
(13, 1, 11, 70, 244, '2022-11-02 14:54:32', '2022-11-02 14:54:32'),
(14, 1, 11, 71, 249, '2022-11-02 14:54:32', '2022-11-02 14:54:32'),
(15, 1, 11, 72, 254, '2022-11-02 14:54:32', '2022-11-02 14:54:32'),
(16, 1, 11, 73, 255, '2022-11-02 14:54:32', '2022-11-02 14:54:32'),
(17, 1, 12, 69, 239, '2022-11-02 14:54:36', '2022-11-02 14:54:36'),
(18, 0, 12, 70, 243, '2022-11-02 14:54:36', '2022-11-02 14:54:36'),
(19, 1, 12, 71, 249, '2022-11-02 14:54:36', '2022-11-02 14:54:36'),
(20, 0, 12, 72, 251, '2022-11-02 14:54:36', '2022-11-02 14:54:36'),
(21, 1, 12, 73, 255, '2022-11-02 14:54:36', '2022-11-02 14:54:36'),
(22, 0, 13, 69, 242, '2022-11-02 15:08:01', '2022-11-02 15:08:01'),
(23, 0, 13, 70, 246, '2022-11-02 15:08:01', '2022-11-02 15:08:01'),
(24, 0, 13, 71, 250, '2022-11-02 15:08:01', '2022-11-02 15:08:01'),
(25, 0, 13, 72, 251, '2022-11-02 15:08:01', '2022-11-02 15:08:01'),
(26, 0, 13, 73, 256, '2022-11-02 15:08:01', '2022-11-02 15:08:01'),
(27, 1, 15, 69, 239, '2022-11-02 15:10:49', '2022-11-02 15:10:49'),
(28, 1, 15, 70, 244, '2022-11-02 15:10:49', '2022-11-02 15:10:49'),
(29, 1, 15, 71, 249, '2022-11-02 15:10:49', '2022-11-02 15:10:49'),
(30, 1, 15, 72, 254, '2022-11-02 15:10:49', '2022-11-02 15:10:49'),
(31, 0, 15, 73, 256, '2022-11-02 15:10:49', '2022-11-02 15:10:49'),
(32, 1, 16, 69, 239, '2022-11-02 15:21:10', '2022-11-02 15:21:10'),
(33, 1, 16, 70, 244, '2022-11-02 15:21:10', '2022-11-02 15:21:10'),
(34, 1, 16, 71, 249, '2022-11-02 15:21:10', '2022-11-02 15:21:10'),
(35, 1, 17, 69, 239, '2022-11-02 15:50:27', '2022-11-02 15:50:27'),
(36, 1, 17, 70, 244, '2022-11-02 15:50:27', '2022-11-02 15:50:27'),
(37, 1, 17, 71, 249, '2022-11-02 15:50:27', '2022-11-02 15:50:27'),
(38, 1, 17, 72, 254, '2022-11-02 15:50:27', '2022-11-02 15:50:27'),
(39, 0, 17, 73, 257, '2022-11-02 15:50:27', '2022-11-02 15:50:27'),
(40, 1, 18, 69, 239, '2022-11-02 16:28:32', '2022-11-02 16:28:32'),
(41, 0, 18, 70, 243, '2022-11-02 16:28:32', '2022-11-02 16:28:32'),
(42, 0, 18, 71, 247, '2022-11-02 16:28:32', '2022-11-02 16:28:32'),
(43, 0, 18, 72, 251, '2022-11-02 16:28:32', '2022-11-02 16:28:32'),
(44, 1, 18, 73, 255, '2022-11-02 16:28:32', '2022-11-02 16:28:32');

-- --------------------------------------------------------

--
-- Table structure for table `homework_question`
--

CREATE TABLE `homework_question` (
  `homework_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `homework_question`
--

INSERT INTO `homework_question` (`homework_id`, `question_id`) VALUES
(1, 1),
(1, 2),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 25),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(2, 4),
(2, 6),
(2, 1),
(2, 2),
(2, 5),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 25),
(2, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(2, 35),
(2, 36),
(2, 37),
(2, 38),
(3, 23),
(3, 31),
(4, 50),
(4, 33),
(4, 35),
(4, 36),
(4, 39),
(4, 40),
(4, 46),
(4, 48),
(5, 69),
(5, 70),
(5, 71),
(5, 72),
(5, 73);

-- --------------------------------------------------------

--
-- Table structure for table `home_scores`
--

CREATE TABLE `home_scores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `score` double(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `home_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_scores`
--

INSERT INTO `home_scores` (`id`, `score`, `created_at`, `updated_at`, `deleted_at`, `home_id`, `student_id`) VALUES
(1, 2.00, '2022-11-01 17:23:06', '2022-11-02 15:17:17', '2022-11-02 15:17:17', 4, 296),
(2, 0.00, '2022-11-01 21:01:33', '2022-11-02 15:17:17', '2022-11-02 15:17:17', 4, 316),
(6, 0.00, '2022-11-01 22:33:06', '2022-11-02 15:17:17', '2022-11-02 15:17:17', 4, 327),
(7, 0.00, '2022-11-01 23:09:58', '2022-11-02 15:17:17', '2022-11-02 15:17:17', 3, 327),
(8, 2.00, '2022-11-01 23:27:32', '2022-11-02 15:17:17', '2022-11-02 15:17:17', 3, 316),
(9, 0.00, '2022-11-02 00:20:22', '2022-11-02 15:17:17', '2022-11-02 15:17:17', 1, 316),
(10, 2.00, '2022-11-02 14:33:12', '2022-11-02 15:17:17', '2022-11-02 15:17:17', 2, 8),
(11, 3.00, '2022-11-02 14:52:13', '2022-11-02 14:54:32', NULL, 5, 331),
(12, 1.00, '2022-11-02 14:52:40', '2022-11-02 14:54:36', NULL, 5, 332),
(13, 0.00, '2022-11-02 15:06:49', '2022-11-02 15:08:01', NULL, 5, 333),
(14, -1.00, '2022-11-02 15:07:28', '2022-11-02 15:07:36', '2022-11-02 15:07:36', 5, 309),
(15, 2.00, '2022-11-02 15:09:43', '2022-11-02 15:10:49', NULL, 5, 334),
(16, 3.00, '2022-11-02 15:20:48', '2022-11-02 15:21:10', NULL, 5, 335),
(17, 2.00, '2022-11-02 15:49:45', '2022-11-02 15:50:27', NULL, 5, 336),
(18, 0.00, '2022-11-02 16:27:32', '2022-11-02 16:28:32', NULL, 5, 316);

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_text` longtext COLLATE utf8mb4_unicode_ci,
  `long_text` longtext COLLATE utf8mb4_unicode_ci,
  `position` int(11) DEFAULT NULL,
  `is_published` tinyint(1) DEFAULT '0',
  `is_free` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2022_10_05_000001_create_media_table', 1),
(4, '2022_10_05_000002_create_permissions_table', 1),
(5, '2022_10_05_000003_create_roles_table', 1),
(6, '2022_10_05_000004_create_users_table', 1),
(7, '2022_10_05_000005_create_courses_table', 1),
(8, '2022_10_05_000006_create_lessons_table', 1),
(9, '2022_10_05_000007_create_tests_table', 1),
(10, '2022_10_05_000008_create_questions_table', 1),
(11, '2022_10_05_000009_create_question_options_table', 1),
(12, '2022_10_05_000010_create_test_results_table', 1),
(13, '2022_10_05_000011_create_test_answers_table', 1),
(14, '2022_10_05_000012_create_faq_categories_table', 1),
(15, '2022_10_05_000013_create_faq_questions_table', 1),
(16, '2022_10_05_000014_create_task_statuses_table', 1),
(17, '2022_10_05_000015_create_task_tags_table', 1),
(18, '2022_10_05_000016_create_tasks_table', 1),
(19, '2022_10_05_000017_create_user_alerts_table', 1),
(20, '2022_10_05_000018_create_gifts_table', 1),
(21, '2022_10_05_000019_create_categories_table', 1),
(22, '2022_10_05_000020_create_student_infos_table', 1),
(23, '2022_10_05_000021_create_permission_role_pivot_table', 1),
(24, '2022_10_05_000022_create_role_user_pivot_table', 1),
(25, '2022_10_05_000023_create_gift_user_pivot_table', 1),
(26, '2022_10_05_000024_create_test_user_pivot_table', 1),
(27, '2022_10_05_000025_create_course_user_pivot_table', 1),
(28, '2022_10_05_000026_create_task_task_tag_pivot_table', 1),
(29, '2022_10_05_000027_create_user_user_alert_pivot_table', 1),
(30, '2022_10_05_000028_add_relationship_fields_to_users_table', 1),
(31, '2022_10_05_000029_add_relationship_fields_to_courses_table', 1),
(32, '2022_10_05_000030_add_relationship_fields_to_lessons_table', 1),
(33, '2022_10_05_000031_add_relationship_fields_to_tests_table', 1),
(34, '2022_10_05_000032_add_relationship_fields_to_questions_table', 1),
(35, '2022_10_05_000033_add_relationship_fields_to_question_options_table', 1),
(36, '2022_10_05_000034_add_relationship_fields_to_test_results_table', 1),
(37, '2022_10_05_000035_add_relationship_fields_to_test_answers_table', 1),
(38, '2022_10_05_000036_add_relationship_fields_to_faq_questions_table', 1),
(39, '2022_10_05_000037_add_relationship_fields_to_tasks_table', 1),
(40, '2022_10_05_000038_add_relationship_fields_to_categories_table', 1),
(41, '2022_10_05_000039_add_relationship_fields_to_student_infos_table', 1),
(42, '2022_10_05_000040_add_approval_fields', 1),
(43, '2022_10_05_000041_create_qa_topics_table', 1),
(44, '2022_10_05_000042_create_qa_messages_table', 1);

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
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'user_management_access', NULL, NULL, NULL),
(2, 'permission_create', NULL, NULL, NULL),
(3, 'permission_edit', NULL, NULL, NULL),
(4, 'permission_show', NULL, NULL, NULL),
(5, 'permission_delete', NULL, NULL, NULL),
(6, 'permission_access', NULL, NULL, NULL),
(7, 'role_create', NULL, NULL, NULL),
(8, 'role_edit', NULL, NULL, NULL),
(9, 'role_show', NULL, NULL, NULL),
(10, 'role_delete', NULL, NULL, NULL),
(11, 'role_access', NULL, NULL, NULL),
(12, 'user_create', NULL, NULL, NULL),
(13, 'user_edit', NULL, NULL, NULL),
(14, 'user_show', NULL, NULL, NULL),
(15, 'user_delete', NULL, NULL, NULL),
(16, 'user_access', NULL, NULL, NULL),
(17, 'course_create', NULL, NULL, NULL),
(18, 'course_edit', NULL, NULL, NULL),
(19, 'course_show', NULL, NULL, NULL),
(20, 'course_delete', NULL, NULL, NULL),
(21, 'course_access', NULL, NULL, NULL),
(22, 'lesson_create', NULL, NULL, NULL),
(23, 'lesson_edit', NULL, NULL, NULL),
(24, 'lesson_show', NULL, NULL, NULL),
(25, 'lesson_delete', NULL, NULL, NULL),
(26, 'lesson_access', NULL, NULL, NULL),
(27, 'test_create', NULL, NULL, NULL),
(28, 'test_edit', NULL, NULL, NULL),
(29, 'test_show', NULL, NULL, NULL),
(30, 'test_delete', NULL, NULL, NULL),
(31, 'test_access', NULL, NULL, NULL),
(32, 'question_create', NULL, NULL, NULL),
(33, 'question_edit', NULL, NULL, NULL),
(34, 'question_show', NULL, NULL, NULL),
(35, 'question_delete', NULL, NULL, NULL),
(36, 'question_access', NULL, NULL, NULL),
(37, 'question_option_create', NULL, NULL, NULL),
(38, 'question_option_edit', NULL, NULL, NULL),
(39, 'question_option_show', NULL, NULL, NULL),
(40, 'question_option_delete', NULL, NULL, NULL),
(41, 'question_option_access', NULL, NULL, NULL),
(42, 'test_result_create', NULL, NULL, NULL),
(43, 'test_result_edit', NULL, NULL, NULL),
(44, 'test_result_show', NULL, NULL, NULL),
(45, 'test_result_delete', NULL, NULL, NULL),
(46, 'test_result_access', NULL, NULL, NULL),
(47, 'test_answer_create', NULL, NULL, NULL),
(48, 'test_answer_edit', NULL, NULL, NULL),
(49, 'test_answer_show', NULL, NULL, NULL),
(50, 'test_answer_delete', NULL, NULL, NULL),
(51, 'test_answer_access', NULL, NULL, NULL),
(52, 'faq_management_access', NULL, NULL, NULL),
(53, 'faq_category_create', NULL, NULL, NULL),
(54, 'faq_category_edit', NULL, NULL, NULL),
(55, 'faq_category_show', NULL, NULL, NULL),
(56, 'faq_category_delete', NULL, NULL, NULL),
(57, 'faq_category_access', NULL, NULL, NULL),
(58, 'faq_question_create', NULL, NULL, NULL),
(59, 'faq_question_edit', NULL, NULL, NULL),
(60, 'faq_question_show', NULL, NULL, NULL),
(61, 'faq_question_delete', NULL, NULL, NULL),
(62, 'faq_question_access', NULL, NULL, NULL),
(63, 'task_management_access', NULL, NULL, NULL),
(64, 'task_status_create', NULL, NULL, NULL),
(65, 'task_status_edit', NULL, NULL, NULL),
(66, 'task_status_show', NULL, NULL, NULL),
(67, 'task_status_delete', NULL, NULL, NULL),
(68, 'task_status_access', NULL, NULL, NULL),
(69, 'task_tag_create', NULL, NULL, NULL),
(70, 'task_tag_edit', NULL, NULL, NULL),
(71, 'task_tag_show', NULL, NULL, NULL),
(72, 'task_tag_delete', NULL, NULL, NULL),
(73, 'task_tag_access', NULL, NULL, NULL),
(74, 'task_create', NULL, NULL, NULL),
(75, 'task_edit', NULL, NULL, NULL),
(76, 'task_show', NULL, NULL, NULL),
(77, 'task_delete', NULL, NULL, NULL),
(78, 'task_access', NULL, NULL, NULL),
(79, 'tasks_calendar_access', NULL, NULL, NULL),
(80, 'user_alert_create', NULL, NULL, NULL),
(81, 'user_alert_show', NULL, NULL, NULL),
(82, 'user_alert_delete', NULL, NULL, NULL),
(83, 'user_alert_access', NULL, NULL, NULL),
(84, 'gift_create', NULL, NULL, NULL),
(85, 'gift_edit', NULL, NULL, NULL),
(86, 'gift_show', NULL, NULL, NULL),
(87, 'gift_delete', NULL, NULL, NULL),
(88, 'gift_access', NULL, NULL, NULL),
(89, 'category_create', NULL, NULL, NULL),
(90, 'category_edit', NULL, NULL, NULL),
(91, 'category_show', NULL, NULL, NULL),
(92, 'category_delete', NULL, NULL, NULL),
(93, 'category_access', NULL, NULL, NULL),
(94, 'profile_password_edit', NULL, NULL, NULL),
(95, 'ggy', '2022-10-10 00:26:10', '2022-10-10 00:43:03', '2022-10-10 00:43:03'),
(96, 'student_info_access', '2022-10-16 16:08:44', '2022-10-16 16:08:44', NULL),
(97, 'student_info_create', '2022-10-16 16:09:03', '2022-10-16 16:09:03', NULL),
(98, 'student_info_edit', '2022-10-16 16:09:21', '2022-10-16 16:09:21', NULL),
(99, 'student_info_show', '2022-10-16 16:09:41', '2022-10-16 16:09:41', NULL),
(100, 'student_info_delete', '2022-10-16 16:09:55', '2022-10-16 16:09:55', NULL),
(101, 'homework_create', '2022-10-31 13:58:17', '2022-10-31 13:58:17', NULL),
(102, 'homework_edit', '2022-10-31 13:58:31', '2022-10-31 13:58:31', NULL),
(103, 'homework_show', '2022-10-31 13:58:48', '2022-10-31 13:58:48', NULL),
(104, 'homework_delete', '2022-10-31 13:59:02', '2022-10-31 13:59:02', NULL),
(105, 'homework_access', '2022-10-31 13:59:38', '2022-10-31 13:59:38', NULL),
(106, 'home_score_create', '2022-10-31 13:59:56', '2022-10-31 13:59:56', NULL),
(107, 'home_score_create', '2022-10-31 14:00:20', '2022-10-31 14:00:33', '2022-10-31 14:00:33'),
(108, 'home_score_show', '2022-10-31 14:00:45', '2022-10-31 14:00:45', NULL),
(109, 'home_score_delete', '2022-10-31 14:01:05', '2022-10-31 14:01:05', NULL),
(110, 'home_score_access', '2022-10-31 14:01:20', '2022-10-31 14:01:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 47),
(1, 48),
(1, 49),
(1, 50),
(1, 51),
(1, 52),
(1, 53),
(1, 54),
(1, 55),
(1, 56),
(1, 57),
(1, 58),
(1, 59),
(1, 60),
(1, 61),
(1, 62),
(1, 63),
(1, 64),
(1, 65),
(1, 66),
(1, 67),
(1, 68),
(1, 69),
(1, 70),
(1, 71),
(1, 72),
(1, 73),
(1, 74),
(1, 75),
(1, 76),
(1, 77),
(1, 78),
(1, 79),
(1, 80),
(1, 81),
(1, 82),
(1, 83),
(1, 84),
(1, 85),
(1, 86),
(1, 87),
(1, 88),
(1, 89),
(1, 90),
(1, 91),
(1, 92),
(1, 93),
(1, 94),
(2, 29),
(3, 34),
(1, 96),
(1, 97),
(1, 98),
(1, 99),
(1, 100),
(4, 34),
(1, 101),
(1, 102),
(1, 103),
(1, 104),
(1, 105),
(1, 106),
(1, 108),
(1, 109),
(1, 110);

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 2, 'API TOKEN', '76f9c11eb0dc0de2c29f091b52a968a9d0bed073cb0be00df4bf9cc853e83605', '[\"*\"]', NULL, NULL, '2022-10-07 19:44:13', '2022-10-07 19:44:13'),
(2, 'App\\Models\\User', 2, 'API TOKEN', '9b79bea2334753ef6fc20481bfdffb98d958d93d49a56028a01b401b5e5a4d92', '[\"*\"]', '2022-10-08 12:13:10', NULL, '2022-10-07 20:29:05', '2022-10-08 12:13:10'),
(3, 'App\\Models\\User', 3, 'API TOKEN', 'fa9196bd628d71d1885970196c4a9f27981014404d958d63c8572ff23152156f', '[\"*\"]', NULL, NULL, '2022-10-09 18:12:38', '2022-10-09 18:12:38'),
(4, 'App\\Models\\User', 3, 'API TOKEN', '5d945a203ab6a01110c28de8ee1616aa56cc798f41d11b7f1431de2258cd3407', '[\"*\"]', NULL, NULL, '2022-10-09 18:14:07', '2022-10-09 18:14:07'),
(5, 'App\\Models\\User', 4, 'API TOKEN', 'a4ba8d6cf850f6a84a78a58c6cff439b5a76e2ed70496eead6f72192bdc40b10', '[\"*\"]', NULL, NULL, '2022-10-09 20:53:56', '2022-10-09 20:53:56'),
(6, 'App\\Models\\User', 4, 'API TOKEN', '9f9d177b7134299f6532e5f7e7676247b7655a922d2c47c27a90cf33e4eb55ee', '[\"*\"]', NULL, NULL, '2022-10-09 20:54:26', '2022-10-09 20:54:26'),
(7, 'App\\Models\\User', 3, 'API TOKEN', '7faa110b98a47e942163a4ead38d129a0f1a3c744755c87e191bcc6a93ce1336', '[\"*\"]', NULL, NULL, '2022-10-09 21:06:42', '2022-10-09 21:06:42'),
(8, 'App\\Models\\User', 3, 'API TOKEN', 'd33de8276e9338a1763d21417c07ec50eb4172bf5a33d061e654cbd6413e725c', '[\"*\"]', '2022-10-09 21:08:06', NULL, '2022-10-09 21:07:42', '2022-10-09 21:08:06'),
(9, 'App\\Models\\User', 5, 'API TOKEN', '1593b5906fdcd80409fc77ee6e4dc9dce4be4b8370c1c82cfa9d840f64f317a9', '[\"*\"]', '2022-10-09 21:24:31', NULL, '2022-10-09 21:21:45', '2022-10-09 21:24:31'),
(10, 'App\\Models\\User', 6, 'API TOKEN', 'eb518a9abc92b50e9540b9f0ed0d9d54eccb66fa08ffbbe9ef6b4f6b6c81645b', '[\"*\"]', NULL, NULL, '2022-10-09 21:52:19', '2022-10-09 21:52:19'),
(11, 'App\\Models\\User', 6, 'API TOKEN', '2f9edf67dbe2d13be5f7e916f99532ca6bf0498ab6c231f6d2e27cc7ea18a8b7', '[\"*\"]', NULL, NULL, '2022-10-09 21:52:33', '2022-10-09 21:52:33'),
(12, 'App\\Models\\User', 6, 'API TOKEN', 'f1945d6358613d53456ff0bab269715b3c0a5e1cd479eabb9537650657dac83d', '[\"*\"]', NULL, NULL, '2022-10-09 22:00:19', '2022-10-09 22:00:19'),
(13, 'App\\Models\\User', 6, 'API TOKEN', '42971bedc061ae031b3e5e2beef6f5702a87df7adba6ad940a43297d97289681', '[\"*\"]', NULL, NULL, '2022-10-09 22:01:03', '2022-10-09 22:01:03'),
(14, 'App\\Models\\User', 6, 'API TOKEN', 'bf2b4e0ba0f716797b2130129cdb2b10033a3ec422b298ad86a219c56fa1d7e0', '[\"*\"]', NULL, NULL, '2022-10-09 22:24:45', '2022-10-09 22:24:45'),
(15, 'App\\Models\\User', 6, 'API TOKEN', 'f2cac3db7cb0677fa390fec8f0201b19a9c2ed1efde51b986c81a5f694bf2452', '[\"*\"]', NULL, NULL, '2022-10-09 22:30:04', '2022-10-09 22:30:04'),
(16, 'App\\Models\\User', 7, 'API TOKEN', 'bc1838ede113973bcce849fd621eea74b4d81e9b0f1ff24497c9f21736c00268', '[\"*\"]', NULL, NULL, '2022-10-09 22:37:10', '2022-10-09 22:37:10'),
(17, 'App\\Models\\User', 7, 'API TOKEN', '4b80b8eee510956baf8f096028cbbe04e0656adb35f1569ad8920e1a73b49a17', '[\"*\"]', NULL, NULL, '2022-10-09 22:37:28', '2022-10-09 22:37:28'),
(18, 'App\\Models\\User', 8, 'API TOKEN', '067a9a6ef60f68f7021cbc57e09ef5785367a984d8f0d58842a6616c2708ae5a', '[\"*\"]', NULL, NULL, '2022-10-10 15:31:39', '2022-10-10 15:31:39'),
(19, 'App\\Models\\User', 9, 'API TOKEN', '58d2b9dbaeaca9e449cf796b7ee5632fd8eb42f3dc33802275e414faa1080e0e', '[\"*\"]', '2022-10-10 18:34:47', NULL, '2022-10-10 16:18:20', '2022-10-10 18:34:47'),
(20, 'App\\Models\\User', 10, 'API TOKEN', '7e08e1288638e806716229c22b02d253c145851ef6ecf32cda86422c16173ed6', '[\"*\"]', NULL, NULL, '2022-10-10 17:14:01', '2022-10-10 17:14:01'),
(21, 'App\\Models\\User', 10, 'API TOKEN', '550edf496175cd480da30cc7058ba6bc0c1d0b16a774ce74ca755f19bfd489c9', '[\"*\"]', '2022-10-20 17:46:44', NULL, '2022-10-10 17:55:29', '2022-10-20 17:46:44'),
(22, 'App\\Models\\User', 10, 'API TOKEN', '4ec125b742cfb67155998bd3e35dd729f1cbcebf09c87aa9cdaf9d11c3cc4e45', '[\"*\"]', NULL, NULL, '2022-10-10 18:02:48', '2022-10-10 18:02:48'),
(23, 'App\\Models\\User', 11, 'API TOKEN', 'f0fc181689ff09b5be352745ed5a03dfb7887b5b85d9c54274f2ca67d1a519b5', '[\"*\"]', NULL, NULL, '2022-10-10 18:33:37', '2022-10-10 18:33:37'),
(24, 'App\\Models\\User', 11, 'API TOKEN', 'ebfc97418568f346f073350b75bfe28cd94efac6f6b0047ff0a1103f7fb0f33a', '[\"*\"]', NULL, NULL, '2022-10-10 18:33:55', '2022-10-10 18:33:55'),
(25, 'App\\Models\\User', 10, 'API TOKEN', '503429c530a4b588020b19fc2f605b122d2cdf6314a4fa6e4fa11b4d381a8f8c', '[\"*\"]', '2022-10-10 20:37:24', NULL, '2022-10-10 18:59:45', '2022-10-10 20:37:24'),
(26, 'App\\Models\\User', 10, 'API TOKEN', '5e5cb68202d855abc3f2c1032b3238020014df5fc4049208a7d6b4d2bc44c516', '[\"*\"]', NULL, NULL, '2022-10-10 19:15:33', '2022-10-10 19:15:33'),
(27, 'App\\Models\\User', 10, 'API TOKEN', '57cd698ab3eb61e757e38ed0e6c43dbf599ceed1dc286aad4e60b7a6c345a906', '[\"*\"]', NULL, NULL, '2022-10-10 19:16:32', '2022-10-10 19:16:32'),
(28, 'App\\Models\\User', 10, 'API TOKEN', 'e28686d28e6fe86ebdbdbb65f9951fc64b0e98ed6a259c3569c1973b60080e08', '[\"*\"]', NULL, NULL, '2022-10-10 19:18:40', '2022-10-10 19:18:40'),
(29, 'App\\Models\\User', 10, 'API TOKEN', '31e594387486f2d5f14f14ca5dbe35884c61cab2a62fc98aa46cc81f97afec3f', '[\"*\"]', NULL, NULL, '2022-10-10 19:20:28', '2022-10-10 19:20:28'),
(30, 'App\\Models\\User', 10, 'API TOKEN', '8d3fbba67849bd50237f94f14c003b8b77c3681de956556ee2d3a32ccf59fd87', '[\"*\"]', NULL, NULL, '2022-10-10 19:22:13', '2022-10-10 19:22:13'),
(31, 'App\\Models\\User', 10, 'API TOKEN', '4f3cf4a34a68ebf9757ecad299576f1c011d847c433213e4e88071963e830935', '[\"*\"]', NULL, NULL, '2022-10-10 19:25:29', '2022-10-10 19:25:29'),
(32, 'App\\Models\\User', 10, 'API TOKEN', 'be1123bf7a6d2149f81fd31d92bf1fe26b999c7002dc048a4a0b0c0652943df3', '[\"*\"]', NULL, NULL, '2022-10-10 19:38:15', '2022-10-10 19:38:15'),
(33, 'App\\Models\\User', 10, 'API TOKEN', '2ca69f684dcfc5a597837132686fc40b01016ec68c893595cd06b838f50cc9f8', '[\"*\"]', NULL, NULL, '2022-10-10 19:50:53', '2022-10-10 19:50:53'),
(34, 'App\\Models\\User', 10, 'API TOKEN', 'e346c4edccd4bc418d8f72171c7c63d8416703eaac4bf3d759b177b45a2b34f9', '[\"*\"]', NULL, NULL, '2022-10-10 19:55:22', '2022-10-10 19:55:22'),
(35, 'App\\Models\\User', 10, 'API TOKEN', '6ea03bd4540f174d09e11c8446a5b371f7babd0c45b814491697ca290bc5d431', '[\"*\"]', '2022-10-10 19:57:56', NULL, '2022-10-10 19:57:16', '2022-10-10 19:57:56'),
(36, 'App\\Models\\User', 10, 'API TOKEN', 'e3c0b861852d94aa2359efa14be501292e98f058bb49e44aad04cf38aeb49ce0', '[\"*\"]', '2022-10-10 20:07:09', NULL, '2022-10-10 20:06:11', '2022-10-10 20:07:09'),
(37, 'App\\Models\\User', 10, 'API TOKEN', '69cd774894a7a5e06be8d55eacc034a5afc519961cba8326ecbfbbc0faf6ca1f', '[\"*\"]', '2022-10-10 20:09:21', NULL, '2022-10-10 20:08:21', '2022-10-10 20:09:21'),
(38, 'App\\Models\\User', 10, 'API TOKEN', '15e56433f9c391407bb5f9b7ffdf3610d7c7f2c2aef8d546c6cab01719cd4bf3', '[\"*\"]', '2022-10-10 20:25:37', NULL, '2022-10-10 20:25:23', '2022-10-10 20:25:37'),
(39, 'App\\Models\\User', 10, 'API TOKEN', 'bac4d5311d192a7cdd0d7d09a6d3709ec4c86334a9072ced778f3a11e4472f55', '[\"*\"]', '2022-10-10 20:30:02', NULL, '2022-10-10 20:28:17', '2022-10-10 20:30:02'),
(40, 'App\\Models\\User', 2, 'API TOKEN', '8ffa9ed5671f95789e3ef95cf57be0a0e95ecdbb65a3e23bcd4389913b97a14e', '[\"*\"]', '2022-10-12 21:11:15', NULL, '2022-10-10 20:37:41', '2022-10-12 21:11:15'),
(41, 'App\\Models\\User', 10, 'API TOKEN', '378f9be0dc4e75ab4aa02735c41b8559a869bf2458bcff18d00ceee4ddebc942', '[\"*\"]', '2022-10-10 20:40:31', NULL, '2022-10-10 20:39:41', '2022-10-10 20:40:31'),
(42, 'App\\Models\\User', 10, 'API TOKEN', 'c10229fe3c182cc74a3b58ed32e7ccec96e16e06f71e53082bc960603d2612c8', '[\"*\"]', '2022-10-10 20:41:59', NULL, '2022-10-10 20:41:37', '2022-10-10 20:41:59'),
(43, 'App\\Models\\User', 10, 'API TOKEN', 'da041771877dd7e006751192fb2a2b15a667da363ab846bce13af2285d1bfd61', '[\"*\"]', '2022-10-10 20:44:00', NULL, '2022-10-10 20:43:44', '2022-10-10 20:44:00'),
(44, 'App\\Models\\User', 10, 'API TOKEN', 'ea5ee12e1577eea10304f64e64ccdd4050346aac06d0429039d62121053a5b35', '[\"*\"]', '2022-10-10 20:45:06', NULL, '2022-10-10 20:45:01', '2022-10-10 20:45:06'),
(45, 'App\\Models\\User', 10, 'API TOKEN', '00cd77e196435f0740ad4ad17827907fecaf84ddd9e63974d37621057d391eeb', '[\"*\"]', '2022-10-10 20:47:17', NULL, '2022-10-10 20:47:09', '2022-10-10 20:47:17'),
(46, 'App\\Models\\User', 10, 'API TOKEN', 'b08b594b3825562986cd494858772d5a02e8811a82995324601fa8bc5f025614', '[\"*\"]', '2022-10-10 20:48:16', NULL, '2022-10-10 20:48:08', '2022-10-10 20:48:16'),
(47, 'App\\Models\\User', 10, 'API TOKEN', 'e12bd078b2fd1b5c73f07d5e76e1f9a809a9bd56bc8da31fa388c60c52e8357c', '[\"*\"]', '2022-10-10 21:06:09', NULL, '2022-10-10 20:56:44', '2022-10-10 21:06:09'),
(48, 'App\\Models\\User', 10, 'API TOKEN', 'd7a642efe95adc7d93ec1aff46d907651721800241b86c85de5b85fd41901048', '[\"*\"]', '2022-10-12 21:49:06', NULL, '2022-10-10 21:06:55', '2022-10-12 21:49:06'),
(49, 'App\\Models\\User', 12, 'API TOKEN', '8cf0412a051bf301ab87bfa52c3a9c9218b19cd4b02c9afd3c2731f6841f56c3', '[\"*\"]', NULL, NULL, '2022-10-10 23:29:46', '2022-10-10 23:29:46'),
(50, 'App\\Models\\User', 12, 'API TOKEN', 'b52376a3d5e8656616d2a697d46aeb0ba6291c5ef29038908a4f788f2dfdd47d', '[\"*\"]', '2022-10-10 23:30:17', NULL, '2022-10-10 23:30:03', '2022-10-10 23:30:17'),
(51, 'App\\Models\\User', 12, 'API TOKEN', '7d3f5de0977ecbb07e0cd5196fcdd0166426baddcb364ebeac2bde270d0dd637', '[\"*\"]', '2022-10-10 23:31:25', NULL, '2022-10-10 23:30:59', '2022-10-10 23:31:25'),
(52, 'App\\Models\\User', 12, 'API TOKEN', '487e16573f033765b737249b0fed869868e052ed384ed9e768c282d55e56c7c9', '[\"*\"]', '2022-10-10 23:32:23', NULL, '2022-10-10 23:32:16', '2022-10-10 23:32:23'),
(53, 'App\\Models\\User', 12, 'API TOKEN', '845450aff1e1313cb907dac0a9dff8b64371aa793236484f795f6d0ca44f39de', '[\"*\"]', '2022-10-10 23:36:05', NULL, '2022-10-10 23:35:51', '2022-10-10 23:36:05'),
(54, 'App\\Models\\User', 12, 'API TOKEN', 'a0341799960d0bb9d3d924f39b317f8942e1316f0b1cbe03233b03ea440e0441', '[\"*\"]', '2022-10-11 00:08:40', NULL, '2022-10-11 00:04:21', '2022-10-11 00:08:40'),
(55, 'App\\Models\\User', 12, 'API TOKEN', '4455aa3a8e397bfc32134aa7baea213e3d1964293f7d5e5757f21359f3c15669', '[\"*\"]', '2022-10-11 00:18:47', NULL, '2022-10-11 00:15:56', '2022-10-11 00:18:47'),
(56, 'App\\Models\\User', 12, 'API TOKEN', '6ac90f31101372f9c8af8481a453820ce49392f149a93cca061dbeaacb28c56a', '[\"*\"]', '2022-10-11 00:23:04', NULL, '2022-10-11 00:22:54', '2022-10-11 00:23:04'),
(57, 'App\\Models\\User', 12, 'API TOKEN', 'e8cc35161b500bf257b34a95c79726fd4e7b6f86c7d569c4b7abc763c4db2c3d', '[\"*\"]', '2022-10-11 00:28:24', NULL, '2022-10-11 00:26:44', '2022-10-11 00:28:24'),
(58, 'App\\Models\\User', 12, 'API TOKEN', '4e60217f4bad989aa5c20f39cf2025200de4d24c9791fdab1956a56fb47a5e53', '[\"*\"]', '2022-10-11 00:30:29', NULL, '2022-10-11 00:29:04', '2022-10-11 00:30:29'),
(59, 'App\\Models\\User', 12, 'API TOKEN', '79792befcdcccc67d30b995d9ed5081c0fa7d3a5d1dd0046e6cdd6fdef8c9f1b', '[\"*\"]', '2022-10-11 00:56:23', NULL, '2022-10-11 00:39:00', '2022-10-11 00:56:23'),
(60, 'App\\Models\\User', 12, 'API TOKEN', '267d166af515e9017599e145c66c8e801124da13b5c08f28cc0b271705c36a5a', '[\"*\"]', '2022-10-11 01:40:29', NULL, '2022-10-11 01:40:03', '2022-10-11 01:40:29'),
(61, 'App\\Models\\User', 12, 'API TOKEN', '61db0d989c3ba802b8c3855a35df484d0175d31ca657ffa6b01f2faa8b1dc45e', '[\"*\"]', '2022-10-11 01:44:30', NULL, '2022-10-11 01:44:13', '2022-10-11 01:44:30'),
(62, 'App\\Models\\User', 12, 'API TOKEN', '2fa3828cba2d31f4a6eb2efa7f81ae7dbbdbfdf945040f0e85ec5a95579f72f9', '[\"*\"]', '2022-10-11 01:59:09', NULL, '2022-10-11 01:56:36', '2022-10-11 01:59:09'),
(63, 'App\\Models\\User', 13, 'API TOKEN', '036716653fa59258ae8617660db371429fdbfe13e9235c092c88bd0ce1acf651', '[\"*\"]', NULL, NULL, '2022-10-11 02:12:38', '2022-10-11 02:12:38'),
(64, 'App\\Models\\User', 13, 'API TOKEN', 'e44894210b0b91e157efd0500c77d662f84bfdf173c2f762890f9b6671a239fa', '[\"*\"]', '2022-10-11 02:13:37', NULL, '2022-10-11 02:13:16', '2022-10-11 02:13:37'),
(65, 'App\\Models\\User', 14, 'API TOKEN', 'faf03b16f8286af097df8dbb050a3af6c1e2a48e11c837a221b2cfebaa2fda1a', '[\"*\"]', NULL, NULL, '2022-10-11 03:38:51', '2022-10-11 03:38:51'),
(66, 'App\\Models\\User', 15, 'API TOKEN', 'fe92e53f4209bfdb52fa8426c7dd17121f253d4dc7a213aad3e76200190ce34a', '[\"*\"]', NULL, NULL, '2022-10-11 03:39:42', '2022-10-11 03:39:42'),
(67, 'App\\Models\\User', 16, 'API TOKEN', '64bde523b778a1dbc06366163119f6ab9696d9acb404edce79fbe490d9b56561', '[\"*\"]', NULL, NULL, '2022-10-11 03:50:00', '2022-10-11 03:50:00'),
(68, 'App\\Models\\User', 15, 'API TOKEN', 'a9217559075fb4794e7d819de22ca651b07da69d0045b89f072bae38b0a89565', '[\"*\"]', '2022-10-11 03:50:46', NULL, '2022-10-11 03:50:17', '2022-10-11 03:50:46'),
(69, 'App\\Models\\User', 17, 'API TOKEN', '22432b9db342c830959ad70ee0be3dbde5e1f3a6fc7ac40b1252c808e0def23e', '[\"*\"]', NULL, NULL, '2022-10-11 14:59:59', '2022-10-11 14:59:59'),
(70, 'App\\Models\\User', 17, 'API TOKEN', 'ec49b7cbac071f113a7ac4e6e183a68c14da07eade7381c10b2c5692898aa77b', '[\"*\"]', '2022-10-11 15:02:37', NULL, '2022-10-11 15:00:15', '2022-10-11 15:02:37'),
(71, 'App\\Models\\User', 6, 'API TOKEN', 'a4ce5dab78a9b3a822b48ae11a6a2d8fbd0544f645800a98605b61583e9f7086', '[\"*\"]', '2022-10-11 16:06:29', NULL, '2022-10-11 15:41:35', '2022-10-11 16:06:29'),
(72, 'App\\Models\\User', 6, 'API TOKEN', 'b85d332ca5ac9032eca3e30a1b3e807589dcf73897055577fc8c14e3899f7893', '[\"*\"]', NULL, NULL, '2022-10-11 16:25:39', '2022-10-11 16:25:39'),
(73, 'App\\Models\\User', 6, 'API TOKEN', '5666a10d1c268161ffdcb6bcdbcd5f9ed9f1fa4fbda030b8c291ef21cd413ab6', '[\"*\"]', NULL, NULL, '2022-10-11 16:55:13', '2022-10-11 16:55:13'),
(74, 'App\\Models\\User', 6, 'API TOKEN', 'c7459dfae53797e4966d0c6e4e57ee9c834aeae93ea1c4a3e4cfaf9ca3a50988', '[\"*\"]', '2022-10-11 17:02:38', NULL, '2022-10-11 17:02:34', '2022-10-11 17:02:38'),
(75, 'App\\Models\\User', 6, 'API TOKEN', '21a54b123a1316d26fb846c4afd4026e1ac43b699a1e9b9a8e5790825919bc78', '[\"*\"]', '2022-10-11 17:36:38', NULL, '2022-10-11 17:33:01', '2022-10-11 17:36:38'),
(76, 'App\\Models\\User', 6, 'API TOKEN', 'c5d959f44777c78343c888d4d53c66ba1915f8a4c219f6222a9fabdb6265c6ec', '[\"*\"]', '2022-10-11 17:38:25', NULL, '2022-10-11 17:37:46', '2022-10-11 17:38:25'),
(77, 'App\\Models\\User', 6, 'API TOKEN', 'ce34ea12bdb493cd7d535e04712746a0290ad449ddaa59c6615fe5ad5be7de60', '[\"*\"]', '2022-10-11 17:39:13', NULL, '2022-10-11 17:39:02', '2022-10-11 17:39:13'),
(78, 'App\\Models\\User', 6, 'API TOKEN', '845e3216d01773abd1c0845ef3c515a4ed25e8304a3b1f3d712d7afdd421346d', '[\"*\"]', '2022-10-11 18:18:26', NULL, '2022-10-11 18:04:41', '2022-10-11 18:18:26'),
(79, 'App\\Models\\User', 6, 'API TOKEN', '43616d9db0ef6350880a7522e51ddeb963d68bc41c112c25086d2b56fe61efe2', '[\"*\"]', '2022-10-11 18:36:13', NULL, '2022-10-11 18:30:17', '2022-10-11 18:36:13'),
(80, 'App\\Models\\User', 18, 'API TOKEN', '2286158944af0f9ae6304783a5075ec194420161a42aea1bf13041924c58424e', '[\"*\"]', NULL, NULL, '2022-10-11 18:43:08', '2022-10-11 18:43:08'),
(81, 'App\\Models\\User', 6, 'API TOKEN', '4da2a5d548778c3ec674e40bf8ad4d9c95c6a67e64c1f92fa5bedd930bfe8925', '[\"*\"]', '2022-10-11 18:45:58', NULL, '2022-10-11 18:43:18', '2022-10-11 18:45:58'),
(82, 'App\\Models\\User', 19, 'API TOKEN', '2dbefe1730a08f6be869a60a8f56a071a89c671e9375f9629abcb52db421160d', '[\"*\"]', NULL, NULL, '2022-10-11 18:46:03', '2022-10-11 18:46:03'),
(83, 'App\\Models\\User', 19, 'API TOKEN', '616e51a4ec332454aca5e7e43f2d19ea2ffffdb9e8d719558cf8a398ae438da4', '[\"*\"]', '2022-10-11 18:46:32', NULL, '2022-10-11 18:46:20', '2022-10-11 18:46:32'),
(84, 'App\\Models\\User', 15, 'API TOKEN', '519761f572851f93c9a6b9c88f41522cffc747a35983f5e1e0696a47cb7ce752', '[\"*\"]', '2022-10-12 21:17:42', NULL, '2022-10-11 18:49:41', '2022-10-12 21:17:42'),
(85, 'App\\Models\\User', 17, 'API TOKEN', '4f0144f373bfbd2ddc75e4504fcb4608528291c8bb8ca17d1a15ad0b12b42e7b', '[\"*\"]', '2022-10-12 01:53:21', NULL, '2022-10-12 01:49:33', '2022-10-12 01:53:21'),
(86, 'App\\Models\\User', 20, 'API TOKEN', 'ca12a1f63a8f4a06ab6691f5e3334cced151e76ea8f5adca30a9a017e2099a5f', '[\"*\"]', NULL, NULL, '2022-10-12 15:17:16', '2022-10-12 15:17:16'),
(87, 'App\\Models\\User', 20, 'API TOKEN', '6445612067fd0853ea365f3828d1eb785f90e3fd906b3d95db8f0c47102f8907', '[\"*\"]', '2022-10-12 17:03:12', NULL, '2022-10-12 15:17:40', '2022-10-12 17:03:12'),
(88, 'App\\Models\\User', 20, 'API TOKEN', '73827065a14c553c24e1f104b418b777b669cde3f98f3bbd48bc1df0dcd051da', '[\"*\"]', '2022-10-12 15:57:00', NULL, '2022-10-12 15:56:53', '2022-10-12 15:57:00'),
(89, 'App\\Models\\User', 21, 'API TOKEN', '4aa348ef6dae4468722fb83d1ecfb76b309d1e48e83b1d25893194303ca4d2fb', '[\"*\"]', NULL, NULL, '2022-10-12 16:04:58', '2022-10-12 16:04:58'),
(90, 'App\\Models\\User', 21, 'API TOKEN', 'ff012bf2cf73d11bcde8636e58dfb34ba1af45e6b595b7e9065caeab7cf2688c', '[\"*\"]', '2022-10-12 16:05:28', NULL, '2022-10-12 16:05:09', '2022-10-12 16:05:28'),
(91, 'App\\Models\\User', 20, 'API TOKEN', 'abf613858446372d95ad9dad67a30a08a123154aeca4ac826c3715099aaa6d87', '[\"*\"]', '2022-10-12 16:12:18', NULL, '2022-10-12 16:12:12', '2022-10-12 16:12:18'),
(92, 'App\\Models\\User', 20, 'API TOKEN', 'fe969284acacb757bedbe2eaa043cd50c21db3a18e693962a917d3d2335b0462', '[\"*\"]', NULL, NULL, '2022-10-12 16:13:13', '2022-10-12 16:13:13'),
(93, 'App\\Models\\User', 20, 'API TOKEN', '6792dce76c8605a82cefab6f29bcbbb1fb3c1af41d4c3da268156ea47513811e', '[\"*\"]', '2022-10-12 16:20:55', NULL, '2022-10-12 16:20:49', '2022-10-12 16:20:55'),
(94, 'App\\Models\\User', 20, 'API TOKEN', '9f65383189160f615a6bf17ff760339734d46144f4f7ff8e30074db0b451d420', '[\"*\"]', '2022-10-12 17:00:19', NULL, '2022-10-12 17:00:10', '2022-10-12 17:00:19'),
(95, 'App\\Models\\User', 20, 'API TOKEN', '3d6c49b61785f7410b060a719b1d01e6144eca02df422111e11d05f49baf9f42', '[\"*\"]', '2022-10-12 17:19:04', NULL, '2022-10-12 17:07:42', '2022-10-12 17:19:04'),
(96, 'App\\Models\\User', 20, 'API TOKEN', '35af3e0b4a29219ffa97fcff0ca6f010742607bd031271ca46107eabe913d4ed', '[\"*\"]', '2022-10-12 17:41:27', NULL, '2022-10-12 17:41:19', '2022-10-12 17:41:27'),
(97, 'App\\Models\\User', 20, 'API TOKEN', '8eca7952ed2c8226c6f243b1af7b2b085eaf636b12b4b7171d98387f6b2320bb', '[\"*\"]', '2022-10-12 17:43:52', NULL, '2022-10-12 17:42:24', '2022-10-12 17:43:52'),
(98, 'App\\Models\\User', 20, 'API TOKEN', 'a8470c9b43ed64e4f1b07d4f037595b479c139ac32e621962e4acc01305ad6e0', '[\"*\"]', '2022-10-12 17:49:13', NULL, '2022-10-12 17:44:13', '2022-10-12 17:49:13'),
(99, 'App\\Models\\User', 20, 'API TOKEN', '64a8bb6236160efc4751d38e00e078b776b1c29a2a8e27ab0470e9e942c3e8d7', '[\"*\"]', '2022-10-12 18:01:32', NULL, '2022-10-12 17:59:02', '2022-10-12 18:01:32'),
(100, 'App\\Models\\User', 20, 'API TOKEN', '4b85178e06a864e643a3bc974f512552420fd8209d1878ccaca16468a9750894', '[\"*\"]', NULL, NULL, '2022-10-12 18:09:11', '2022-10-12 18:09:11'),
(101, 'App\\Models\\User', 20, 'API TOKEN', '7c01b0a7f285cc6f2129e00ef223980d95af048bca28425e5f301294994c8e50', '[\"*\"]', '2022-10-12 18:18:59', NULL, '2022-10-12 18:18:02', '2022-10-12 18:18:59'),
(102, 'App\\Models\\User', 20, 'API TOKEN', '0acab48d639e54d413199b1db7bc619dffbdc74b82de9e760e0c995a1755bc37', '[\"*\"]', '2022-10-12 18:44:42', NULL, '2022-10-12 18:44:02', '2022-10-12 18:44:42'),
(103, 'App\\Models\\User', 20, 'API TOKEN', 'fae5ecba2f38ae9ddde5813f729bdf357640a95c4d0e07f52a25e735d0af75ca', '[\"*\"]', '2022-10-12 18:51:31', NULL, '2022-10-12 18:50:35', '2022-10-12 18:51:31'),
(104, 'App\\Models\\User', 20, 'API TOKEN', '8d6fa44d1de49058899087324504272e951c0965b54fbb536348bfb081c5e632', '[\"*\"]', '2022-10-12 18:53:27', NULL, '2022-10-12 18:52:24', '2022-10-12 18:53:27'),
(105, 'App\\Models\\User', 20, 'API TOKEN', '4fc684adb6ba1ea622c3e8fb730e72d03fff59c464672e49fa11d90e1b60b67a', '[\"*\"]', '2022-10-12 19:06:25', NULL, '2022-10-12 19:06:16', '2022-10-12 19:06:25'),
(106, 'App\\Models\\User', 22, 'API TOKEN', '714e4157816ed2107ceedffb53b6365a703b0340f82b46dd192678bc591af4de', '[\"*\"]', NULL, NULL, '2022-10-12 19:07:18', '2022-10-12 19:07:18'),
(107, 'App\\Models\\User', 22, 'API TOKEN', 'e9a649206fe418e92e0024cf44422feccb5ec54ca4e4da04609e1ccdf6e6e01e', '[\"*\"]', '2022-10-12 19:08:36', NULL, '2022-10-12 19:07:35', '2022-10-12 19:08:36'),
(108, 'App\\Models\\User', 20, 'API TOKEN', 'a24306186c3479512a01ebfc938a1f929d660c951347905568fbf76bb25e67ca', '[\"*\"]', '2022-10-20 00:05:06', NULL, '2022-10-12 19:17:59', '2022-10-20 00:05:06'),
(109, 'App\\Models\\User', 22, 'API TOKEN', 'd274363dc67be3ea60cb1f9c60db78eed1563fc19c9c8c190f83278230d56504', '[\"*\"]', '2022-10-12 20:10:41', NULL, '2022-10-12 19:22:02', '2022-10-12 20:10:41'),
(110, 'App\\Models\\User', 20, 'API TOKEN', '9d53daf4861bdd1acbc4f87763b7cd76b766d782d191c1ea20494acd755c58e6', '[\"*\"]', '2022-10-12 19:44:42', NULL, '2022-10-12 19:44:31', '2022-10-12 19:44:42'),
(111, 'App\\Models\\User', 22, 'API TOKEN', 'a950bf774c67b5737d6f4a023d5e51bf46da78f7b37dd46989c0331c8d222c09', '[\"*\"]', '2022-10-12 21:06:37', NULL, '2022-10-12 19:45:22', '2022-10-12 21:06:37'),
(112, 'App\\Models\\User', 23, 'API TOKEN', '22c0e713cb0c4c68f5b93ab9d3205372fdfb1c2fce3e08e65702dcc8112c97a3', '[\"*\"]', NULL, NULL, '2022-10-12 21:00:13', '2022-10-12 21:00:13'),
(113, 'App\\Models\\User', 15, 'API TOKEN', 'fcb5ead1469e6a205c0a079859cc74c8d46cbd8764d6f203314f1ce042a2fc54', '[\"*\"]', '2022-10-12 22:11:31', NULL, '2022-10-12 21:19:17', '2022-10-12 22:11:31'),
(114, 'App\\Models\\User', 20, 'API TOKEN', 'e1511baed0b153028cce9ccab3b3b7aec49376b7cb331e41bc875abcf105beba', '[\"*\"]', '2022-10-12 21:28:41', NULL, '2022-10-12 21:26:56', '2022-10-12 21:28:41'),
(115, 'App\\Models\\User', 20, 'API TOKEN', '2f1fc51f82f454e044e74c0b26e91f25138ec9311d3f13c36682ca1ab42e683d', '[\"*\"]', '2022-10-12 21:37:24', NULL, '2022-10-12 21:37:17', '2022-10-12 21:37:24'),
(116, 'App\\Models\\User', 20, 'API TOKEN', '78c8b4834de6992034b677f6ceadc1b96765e44b04db041705e42e2def3cd1b0', '[\"*\"]', '2022-10-12 22:08:57', NULL, '2022-10-12 22:08:51', '2022-10-12 22:08:57'),
(117, 'App\\Models\\User', 20, 'API TOKEN', 'cda55d390c4ce762fd5965427308c2c1bd9a71b327856144632d8936fc252f4f', '[\"*\"]', '2022-10-12 22:27:17', NULL, '2022-10-12 22:15:01', '2022-10-12 22:27:17'),
(118, 'App\\Models\\User', 20, 'API TOKEN', 'd92e268e19ac4a353d7b53a91dc2ff1876644809d83d158fc6f48572af640d9c', '[\"*\"]', '2022-10-12 22:23:17', NULL, '2022-10-12 22:18:07', '2022-10-12 22:23:17'),
(119, 'App\\Models\\User', 24, 'API TOKEN', 'f03243eefc4ccc9297a433a2f495234b41b731b100bab3d099a2159d753c6259', '[\"*\"]', NULL, NULL, '2022-10-12 22:33:56', '2022-10-12 22:33:56'),
(120, 'App\\Models\\User', 24, 'API TOKEN', '20d0c570546aa3a5fe4d02105d2d96144b50a747c6baf13998d210dac6c1ed31', '[\"*\"]', '2022-10-12 22:36:32', NULL, '2022-10-12 22:34:26', '2022-10-12 22:36:32'),
(121, 'App\\Models\\User', 24, 'API TOKEN', '4c9cce4ea6bcab4dff1130f8d7e79afe8816415e85682498589c8580bf25cf33', '[\"*\"]', '2022-10-12 22:47:16', NULL, '2022-10-12 22:46:13', '2022-10-12 22:47:16'),
(122, 'App\\Models\\User', 25, 'API TOKEN', 'e6d251e024cf7e431f7a456a0a6f5a596d52992791c7ba1d1bcee949846da821', '[\"*\"]', NULL, NULL, '2022-10-12 22:51:31', '2022-10-12 22:51:31'),
(123, 'App\\Models\\User', 25, 'API TOKEN', '76babc95bf2de636a5bf6f9e7e457208dcbbe2236eb62f973021cf3180dcba53', '[\"*\"]', '2022-10-12 22:54:33', NULL, '2022-10-12 22:51:45', '2022-10-12 22:54:33'),
(124, 'App\\Models\\User', 24, 'API TOKEN', 'e43f6294e6f3ee81eaf3b1bd86b68bcf67e1fe0f0078f24aa3731a41dacd99b7', '[\"*\"]', '2022-10-12 23:02:27', NULL, '2022-10-12 23:02:23', '2022-10-12 23:02:27'),
(125, 'App\\Models\\User', 25, 'API TOKEN', '5c685c79799386e0ce6fc9b8a2ef1d7547d596da73cecb55b1dcb5a81d6e0f22', '[\"*\"]', '2022-10-12 23:07:29', NULL, '2022-10-12 23:04:30', '2022-10-12 23:07:29'),
(126, 'App\\Models\\User', 25, 'API TOKEN', '3cefd16d99957b4b4424b67eb39f2747c2a8206b40b16cdb1597ca5ae8a663fe', '[\"*\"]', '2022-10-12 23:08:16', NULL, '2022-10-12 23:07:56', '2022-10-12 23:08:16'),
(127, 'App\\Models\\User', 25, 'API TOKEN', '8098c32b35157cb71a12fbec3e592866c591aaacc1e47663045958961df81fea', '[\"*\"]', '2022-10-12 23:21:33', NULL, '2022-10-12 23:18:48', '2022-10-12 23:21:33'),
(128, 'App\\Models\\User', 25, 'API TOKEN', 'e3111a5caf78f8e40c275d404d81b53e1ae11dcbf6c103a60a6f6e8b243939a9', '[\"*\"]', '2022-10-12 23:36:12', NULL, '2022-10-12 23:21:47', '2022-10-12 23:36:12'),
(129, 'App\\Models\\User', 25, 'API TOKEN', 'a7a20a7d734bebd22b97bfc77a3c8abab846f3d7fa8f76ca46dd5f0d09b60ea2', '[\"*\"]', '2022-10-12 23:50:37', NULL, '2022-10-12 23:37:14', '2022-10-12 23:50:37'),
(130, 'App\\Models\\User', 26, 'API TOKEN', 'f1ce2afa39f7b3e0d327740dde70a4be5be72a881c53183cb2518499c0b4b1ac', '[\"*\"]', NULL, NULL, '2022-10-12 23:39:39', '2022-10-12 23:39:39'),
(131, 'App\\Models\\User', 27, 'API TOKEN', 'b65c42788599f6c81e87528f890d9472843c332ef16f222bf9c7bd0d9814f73b', '[\"*\"]', NULL, NULL, '2022-10-12 23:45:37', '2022-10-12 23:45:37'),
(132, 'App\\Models\\User', 27, 'API TOKEN', '5202efa605923b468b6f648e6cac6319719a408c5133a1f12e8542e3b206a7d0', '[\"*\"]', '2022-10-12 23:46:01', NULL, '2022-10-12 23:45:48', '2022-10-12 23:46:01'),
(133, 'App\\Models\\User', 27, 'API TOKEN', '0f9a694d92f91218a1065d27fcc5407065583d7b535bb560d86f972857904458', '[\"*\"]', '2022-10-12 23:53:19', NULL, '2022-10-12 23:52:13', '2022-10-12 23:53:19'),
(134, 'App\\Models\\User', 28, 'API TOKEN', '4802b3ad71c7c884075a5b1c994b46d711a22faafe98b1178210c8bb6227ea76', '[\"*\"]', NULL, NULL, '2022-10-12 23:56:58', '2022-10-12 23:56:58'),
(135, 'App\\Models\\User', 28, 'API TOKEN', 'aba1df410c2f7e20ee44ca289c99aef0774bccf285c956c8460a3e26204566e1', '[\"*\"]', '2022-10-12 23:58:12', NULL, '2022-10-12 23:57:12', '2022-10-12 23:58:12'),
(136, 'App\\Models\\User', 28, 'API TOKEN', '5b81ab0ef5d7653345bcaff36e83ca1702e7d6c7509880349d7bd61f165e32cb', '[\"*\"]', '2022-10-13 00:10:17', NULL, '2022-10-13 00:10:12', '2022-10-13 00:10:17'),
(137, 'App\\Models\\User', 25, 'API TOKEN', 'e288e3ccc2a44b6b414a3371cf77c0b33214fc1d153e462e0343f08a568683ed', '[\"*\"]', '2022-10-13 00:12:18', NULL, '2022-10-13 00:10:19', '2022-10-13 00:12:18'),
(138, 'App\\Models\\User', 28, 'API TOKEN', 'ef539f9480d80c00f94d47a7831ccf356000b5b9e0bfbeb99b82698e3f063f0b', '[\"*\"]', NULL, NULL, '2022-10-13 00:10:21', '2022-10-13 00:10:21'),
(139, 'App\\Models\\User', 29, 'API TOKEN', 'c6243d88bc01f224f12cdfc355a4f0cded127bb920c889d62db2379e9ceaaece', '[\"*\"]', NULL, NULL, '2022-10-13 00:16:14', '2022-10-13 00:16:14'),
(140, 'App\\Models\\User', 29, 'API TOKEN', 'ab05db6ab6fab3ab8cb31354f34f85f59878e9da9be5ac929490f2208ff36ce9', '[\"*\"]', '2022-10-13 00:16:51', NULL, '2022-10-13 00:16:25', '2022-10-13 00:16:51'),
(141, 'App\\Models\\User', 30, 'API TOKEN', '30e02fcbd555a538901474e9b49d31167f63e8c605c8a13a88df31d40b05bb35', '[\"*\"]', NULL, NULL, '2022-10-13 00:18:04', '2022-10-13 00:18:04'),
(142, 'App\\Models\\User', 30, 'API TOKEN', 'acf6d174059f9aedf4e78361853903d3fff90a47c517703ba1b525e35108bbac', '[\"*\"]', '2022-10-13 00:21:25', NULL, '2022-10-13 00:18:11', '2022-10-13 00:21:25'),
(143, 'App\\Models\\User', 31, 'API TOKEN', '3490b161b03b03a1dc80fa70c7d408116089660412ec02b58cdccc6a17018587', '[\"*\"]', NULL, NULL, '2022-10-13 00:20:10', '2022-10-13 00:20:10'),
(144, 'App\\Models\\User', 31, 'API TOKEN', '1686e071e5c16e8e445da7ba6773f85dd748efab7b8d8a6684085355c3069bbf', '[\"*\"]', '2022-10-13 00:23:10', NULL, '2022-10-13 00:20:19', '2022-10-13 00:23:10'),
(145, 'App\\Models\\User', 25, 'API TOKEN', '8b14b1cdebc4dc600f0c25f455fc9a42b1f595fdeba2f292ae5e8cd723301dfb', '[\"*\"]', '2022-10-14 20:52:09', NULL, '2022-10-13 00:20:39', '2022-10-14 20:52:09'),
(146, 'App\\Models\\User', 30, 'API TOKEN', 'b641a76610befc69497ebfadf1db438c0f8e919e1756ebcdd74aa3c964dc20b5', '[\"*\"]', NULL, NULL, '2022-10-13 00:21:32', '2022-10-13 00:21:32'),
(147, 'App\\Models\\User', 30, 'API TOKEN', '7db8ef1a876f0213553eba2be87ef384e1c67717260169a40d41396abc5ba691', '[\"*\"]', '2022-10-13 03:23:25', NULL, '2022-10-13 00:22:00', '2022-10-13 03:23:25'),
(148, 'App\\Models\\User', 31, 'API TOKEN', 'abdb77459e2512c0d04873be97070970583abca364ac414458aff2f5d491340f', '[\"*\"]', NULL, NULL, '2022-10-13 00:23:24', '2022-10-13 00:23:24'),
(149, 'App\\Models\\User', 31, 'API TOKEN', '1f4dbfd50147fb512fdb441fb2a9821a580cfcf33bd862ad529d057635cadb25', '[\"*\"]', '2022-10-13 00:24:02', NULL, '2022-10-13 00:23:27', '2022-10-13 00:24:02'),
(150, 'App\\Models\\User', 31, 'API TOKEN', '3f3a60863eaa2e0a49d0a6c9297ee9ea860b94413e50b30f7f545e294a2ba33b', '[\"*\"]', '2022-10-13 00:26:11', NULL, '2022-10-13 00:25:50', '2022-10-13 00:26:11'),
(151, 'App\\Models\\User', 32, 'API TOKEN', '8f4c6ff7b96cd355ec7b1fc34f8f5eae8e2e3bd5998d1d3ce66156f3c3361632', '[\"*\"]', NULL, NULL, '2022-10-13 00:38:42', '2022-10-13 00:38:42'),
(152, 'App\\Models\\User', 32, 'API TOKEN', '3e4a7edc54a79a0c6cbe9286878da61d4e52b15dbe887cbdf3a4418679fb8655', '[\"*\"]', '2022-10-13 00:40:05', NULL, '2022-10-13 00:38:54', '2022-10-13 00:40:05'),
(153, 'App\\Models\\User', 32, 'API TOKEN', 'ac904849ceb31743d1294d07a1969cbb965e21560f5ad8696e149e7bf2ab7260', '[\"*\"]', '2022-10-13 00:40:40', NULL, '2022-10-13 00:40:35', '2022-10-13 00:40:40'),
(154, 'App\\Models\\User', 32, 'API TOKEN', '8eaf843f41ca6d62b1e9bb649849d5e2c4911bd4191578d0d33dc04720c84d08', '[\"*\"]', '2022-10-13 00:42:00', NULL, '2022-10-13 00:41:03', '2022-10-13 00:42:00'),
(155, 'App\\Models\\User', 32, 'API TOKEN', 'd6e3895a09e5361375f30531ac1d66cbb1e3085aa33f620db89639d0f74fc053', '[\"*\"]', '2022-10-13 00:47:48', NULL, '2022-10-13 00:47:41', '2022-10-13 00:47:48'),
(156, 'App\\Models\\User', 32, 'API TOKEN', '6e9834c89f58295a96fa932b76c35e9ca1ffb5691413276fca46d19632c4e82b', '[\"*\"]', '2022-10-13 00:49:59', NULL, '2022-10-13 00:49:35', '2022-10-13 00:49:59'),
(157, 'App\\Models\\User', 33, 'API TOKEN', 'a6498712430c0ac4146c162cc30daaf5f430ab3fe09f7269e8e3a5e2c71ed5f3', '[\"*\"]', NULL, NULL, '2022-10-13 04:52:00', '2022-10-13 04:52:00'),
(158, 'App\\Models\\User', 33, 'API TOKEN', '6011382ef0245e7944bcbdd04954cab06f62345b65e4af7ffdf5bea0467a1f2d', '[\"*\"]', NULL, NULL, '2022-10-13 04:52:12', '2022-10-13 04:52:12'),
(159, 'App\\Models\\User', 33, 'API TOKEN', 'd21a63dac868f9ccb6cf22169ae77e449b18a56e19cedbc054df6c44ebeab13a', '[\"*\"]', NULL, NULL, '2022-10-13 04:57:35', '2022-10-13 04:57:35'),
(160, 'App\\Models\\User', 33, 'API TOKEN', '3f029f881feb500d7e352fc6c1e59c268fd2af773362bee3d281fd5a4c6b4fb3', '[\"*\"]', NULL, NULL, '2022-10-13 05:03:40', '2022-10-13 05:03:40'),
(161, 'App\\Models\\User', 34, 'API TOKEN', 'c9bbec3bbe46fa50dd65de004821fa91363c2947a6d6317cd560a35d78776fd5', '[\"*\"]', NULL, NULL, '2022-10-13 06:27:30', '2022-10-13 06:27:30'),
(162, 'App\\Models\\User', 34, 'API TOKEN', 'a4b389f2ebeffd9ff839dc6d6559ec21ecf4daa1697cc6a26376bc893fcc287f', '[\"*\"]', '2022-10-13 08:07:33', NULL, '2022-10-13 06:27:57', '2022-10-13 08:07:33'),
(163, 'App\\Models\\User', 20, 'API TOKEN', 'b6631fb861d27064f7c916fa1a8297e9636c17a0af2d2d449096691ceefe49dc', '[\"*\"]', '2022-10-20 21:15:29', NULL, '2022-10-13 07:01:07', '2022-10-20 21:15:29'),
(164, 'App\\Models\\User', 17, 'API TOKEN', 'ef5247c1f7913d49ea512d5aeecf664e3a86e689eb0f8aaeb6263743a5e36edf', '[\"*\"]', '2022-10-13 13:39:54', NULL, '2022-10-13 13:39:43', '2022-10-13 13:39:54'),
(165, 'App\\Models\\User', 17, 'API TOKEN', 'b573ca723a2fd006f8e3b408d1662ba63986724140b34f052314857c1c6f3a89', '[\"*\"]', NULL, NULL, '2022-10-13 13:41:19', '2022-10-13 13:41:19'),
(166, 'App\\Models\\User', 17, 'API TOKEN', 'ab504b0b2b9e1992e26082f0b70aaff83c850de930c55b3b1427df32510c1adf', '[\"*\"]', NULL, NULL, '2022-10-13 13:43:23', '2022-10-13 13:43:23'),
(167, 'App\\Models\\User', 35, 'API TOKEN', 'c8d32c7fb9072bf782b4a4e685e7295acb2570f9f1c0d7337fd8a20ebecd3b0d', '[\"*\"]', '2022-10-13 16:36:07', NULL, '2022-10-13 16:30:31', '2022-10-13 16:36:07'),
(168, 'App\\Models\\User', 36, 'API TOKEN', '98bce5a1b810a780734b7fa16638f9292ddca8356d2a1e2219605efbbad560d5', '[\"*\"]', NULL, NULL, '2022-10-13 18:34:25', '2022-10-13 18:34:25'),
(169, 'App\\Models\\User', 37, 'API TOKEN', '8d93824ecea2d7071504c76d7c64896cbb5924359133f151b05d982df433a804', '[\"*\"]', NULL, NULL, '2022-10-13 18:42:08', '2022-10-13 18:42:08'),
(170, 'App\\Models\\User', 38, 'API TOKEN', '53f6a44c9361fc6575085d8d5b5f17c71b89d1668c1fe13309540ffa80c56df8', '[\"*\"]', NULL, NULL, '2022-10-13 18:48:07', '2022-10-13 18:48:07'),
(171, 'App\\Models\\User', 38, 'API TOKEN', 'bca190ee0d77992bf47df2211af54b523d48e71b555fcf3908b6c0758b7f5569', '[\"*\"]', '2022-10-13 19:29:59', NULL, '2022-10-13 18:48:33', '2022-10-13 19:29:59'),
(172, 'App\\Models\\User', 39, 'API TOKEN', '0e1a509f2cd54d571057c5294f7bdf69a096df53164284d6176d99cdba73a232', '[\"*\"]', NULL, NULL, '2022-10-13 19:32:19', '2022-10-13 19:32:19'),
(173, 'App\\Models\\User', 39, 'API TOKEN', '3b2b736d07e21f65f37d59d19095916de867697222cb6cd21fd2b89a5a0f6312', '[\"*\"]', '2022-10-13 19:33:00', NULL, '2022-10-13 19:32:42', '2022-10-13 19:33:00'),
(174, 'App\\Models\\User', 39, 'API TOKEN', 'df16c28e227405a15cdb6e35dd76ff36efdedebab0d1174a9d85dbf9b69bd661', '[\"*\"]', '2022-10-13 19:45:31', NULL, '2022-10-13 19:44:24', '2022-10-13 19:45:31'),
(175, 'App\\Models\\User', 39, 'API TOKEN', 'ed2300765734bdcfef294c14bde7d4f3c850accb7cd2d76d639ae0aec1d9fcc6', '[\"*\"]', '2022-10-13 19:45:58', NULL, '2022-10-13 19:45:54', '2022-10-13 19:45:58'),
(176, 'App\\Models\\User', 39, 'API TOKEN', '8623ee41c51365475c70bfe0f25fa7067c255f0c141eba83484f7d1d8272e902', '[\"*\"]', '2022-10-13 19:46:28', NULL, '2022-10-13 19:46:16', '2022-10-13 19:46:28'),
(177, 'App\\Models\\User', 40, 'API TOKEN', '4e860e82c6f8205ec36cda0627f94dfa68b1988c7294c16e9e899cac6b6ea0d4', '[\"*\"]', NULL, NULL, '2022-10-13 19:49:50', '2022-10-13 19:49:50'),
(178, 'App\\Models\\User', 40, 'API TOKEN', '1881cd2865105761bfc2a35c2b5c5575a4c29146423e53d3ff4048e4b12c2f00', '[\"*\"]', '2022-10-13 19:50:02', NULL, '2022-10-13 19:49:59', '2022-10-13 19:50:02'),
(179, 'App\\Models\\User', 40, 'API TOKEN', 'ff872633b3f58d39da91c1ab16fa86b4484cbe79dc9a60f66d610afcbf04b99b', '[\"*\"]', '2022-10-13 19:54:19', NULL, '2022-10-13 19:50:30', '2022-10-13 19:54:19'),
(180, 'App\\Models\\User', 40, 'API TOKEN', '3fd1b4fa0ed031378a2e89b9a78f6e159c8cec3eba1fb21c7d0931f6ddc463c5', '[\"*\"]', '2022-10-13 20:18:00', NULL, '2022-10-13 20:08:59', '2022-10-13 20:18:00'),
(181, 'App\\Models\\User', 41, 'API TOKEN', '73e9b821ab413360da4b1cc54b62c43f3205bb648fa9c265ef9fd6acf849f7b1', '[\"*\"]', NULL, NULL, '2022-10-13 20:25:57', '2022-10-13 20:25:57'),
(182, 'App\\Models\\User', 41, 'API TOKEN', '0b64b2528b1b0b90efd0720332fd653c813a8e1e85d32215adcbd121c89daf92', '[\"*\"]', '2022-10-13 20:26:10', NULL, '2022-10-13 20:26:08', '2022-10-13 20:26:10'),
(183, 'App\\Models\\User', 41, 'API TOKEN', '272f94ae2bb6ee95fd4b670624402976927f252c85d39bd8506a1b02f5df7d53', '[\"*\"]', '2022-10-13 20:27:05', NULL, '2022-10-13 20:26:27', '2022-10-13 20:27:05'),
(184, 'App\\Models\\User', 42, 'API TOKEN', '5b1ec4617a475aafdec0d2e5b548eabf84dd052c56b41371fcc6ad15ddce849d', '[\"*\"]', NULL, NULL, '2022-10-13 20:57:26', '2022-10-13 20:57:26'),
(185, 'App\\Models\\User', 42, 'API TOKEN', '2d5bd71f29350b3794f52780cae9ee1008d962cbe796309010c4db535e50b738', '[\"*\"]', '2022-10-14 02:30:01', NULL, '2022-10-13 20:57:49', '2022-10-14 02:30:01'),
(186, 'App\\Models\\User', 22, 'API TOKEN', '01e20d72d887e46e98fa0d0b8ce17c24be114d4b5832db15ae6bf90b5fc22b18', '[\"*\"]', '2022-10-14 01:34:48', NULL, '2022-10-13 21:32:34', '2022-10-14 01:34:48'),
(187, 'App\\Models\\User', 30, 'API TOKEN', '2cd75999555dcefd23fa0a21b35be34752044eb1cf1bb5c350751b8d9b601583', '[\"*\"]', '2022-10-13 22:22:00', NULL, '2022-10-13 21:39:53', '2022-10-13 22:22:00'),
(188, 'App\\Models\\User', 30, 'API TOKEN', '08136c2b59e738d03e5389c8fd910ba1bb7bbe5877484d4a50fdc4015e8013f3', '[\"*\"]', '2022-10-13 22:22:14', NULL, '2022-10-13 22:22:09', '2022-10-13 22:22:14'),
(189, 'App\\Models\\User', 43, 'API TOKEN', 'd0a448a56ac45670133e79a5a7976268978765bbac4b3d0f26e68b29b97b154e', '[\"*\"]', NULL, NULL, '2022-10-13 22:58:38', '2022-10-13 22:58:38'),
(190, 'App\\Models\\User', 43, 'API TOKEN', '2e0833d7482a09c9fb122a629b83d0cc1ec846450dbc783f32ed731e9a4effe6', '[\"*\"]', '2022-10-13 22:59:14', NULL, '2022-10-13 22:58:52', '2022-10-13 22:59:14'),
(191, 'App\\Models\\User', 30, 'API TOKEN', 'ebb36431e11f5a04832f85abfa1369edbc70fe7213242ea5a3dd03a41a94d82e', '[\"*\"]', '2022-10-13 23:07:47', NULL, '2022-10-13 23:07:29', '2022-10-13 23:07:47'),
(192, 'App\\Models\\User', 44, 'API TOKEN', '5403e9767db6aceea361b5792f101817a044a7705eb21f0efd5b0cb69582e6d4', '[\"*\"]', NULL, NULL, '2022-10-13 23:08:06', '2022-10-13 23:08:06'),
(193, 'App\\Models\\User', 44, 'API TOKEN', 'fe07250aeccc9167a9d93b7e91cf9759c5a71dc9b8ee193452d071111e35f71c', '[\"*\"]', '2022-10-13 23:08:17', NULL, '2022-10-13 23:08:14', '2022-10-13 23:08:17'),
(194, 'App\\Models\\User', 17, 'API TOKEN', 'aa0bd7ce839f4902e3a0dd30188037aff7667dadce73ce0fd70fd74ac6b7ec3f', '[\"*\"]', '2022-10-14 22:49:39', NULL, '2022-10-13 23:17:32', '2022-10-14 22:49:39'),
(195, 'App\\Models\\User', 30, 'API TOKEN', '84fd3bf17e30e0b302a15bf8c067150f8e984c90ebdc2ae2b43251341f945756', '[\"*\"]', '2022-10-13 23:18:26', NULL, '2022-10-13 23:18:08', '2022-10-13 23:18:26'),
(196, 'App\\Models\\User', 43, 'API TOKEN', '4405e1a669599090aeb541dc7e60c1c9402859b250cc2cf1300f3baa0951711a', '[\"*\"]', NULL, NULL, '2022-10-14 01:34:15', '2022-10-14 01:34:15'),
(197, 'App\\Models\\User', 22, 'API TOKEN', '1b9a7637ff008b6bada889a314284c6b725671318f41596b9a4534e4f74214b1', '[\"*\"]', '2022-10-14 01:36:22', NULL, '2022-10-14 01:35:07', '2022-10-14 01:36:22'),
(198, 'App\\Models\\User', 22, 'API TOKEN', '3491e4d1a2776d85c9a2c9507309974ac9155dca24d42d829e7364873617013e', '[\"*\"]', '2022-10-14 01:47:54', NULL, '2022-10-14 01:42:03', '2022-10-14 01:47:54'),
(199, 'App\\Models\\User', 22, 'API TOKEN', '2580218c2f53efe2386919a24c790f6a915ef26e06700294bfda0bb87b16b675', '[\"*\"]', '2022-10-14 01:57:02', NULL, '2022-10-14 01:55:55', '2022-10-14 01:57:02'),
(200, 'App\\Models\\User', 22, 'API TOKEN', '18cf52506264a78f1acbc0e4ab36cd9a33dd9daa39c7f52e30d24d97fee87d15', '[\"*\"]', '2022-10-14 02:00:00', NULL, '2022-10-14 01:59:58', '2022-10-14 02:00:00'),
(201, 'App\\Models\\User', 45, 'API TOKEN', '5fe4aa33b276adc8ea884544b435ec5f186037504629ee2d02cd8423f028b91d', '[\"*\"]', NULL, NULL, '2022-10-14 02:00:47', '2022-10-14 02:00:47'),
(202, 'App\\Models\\User', 45, 'API TOKEN', 'd5a4befe7a06bf750dc3180ddb136b3adb714c436095a38426ecc19afd5432ad', '[\"*\"]', NULL, NULL, '2022-10-14 02:00:59', '2022-10-14 02:00:59'),
(203, 'App\\Models\\User', 46, 'API TOKEN', 'ea0086ffa0c7c89babc03dee4c0d9e5de86d62d516e3ed03da1ed7b5b2bf3e85', '[\"*\"]', NULL, NULL, '2022-10-14 02:05:10', '2022-10-14 02:05:10'),
(204, 'App\\Models\\User', 46, 'API TOKEN', '22a05e4bf259fc07b014f628453f459ea24b3e39ff19ac485dbb728455abc6ac', '[\"*\"]', '2022-10-14 02:15:03', NULL, '2022-10-14 02:05:24', '2022-10-14 02:15:03'),
(205, 'App\\Models\\User', 47, 'API TOKEN', 'e36dc546d295ef8fba60fded0d80b7c6a2e55a1db2ae9a61baaf278a02609487', '[\"*\"]', NULL, NULL, '2022-10-14 02:21:36', '2022-10-14 02:21:36'),
(206, 'App\\Models\\User', 47, 'API TOKEN', '544436bad041ee0f22ebd0e7bd38dabacdb0c0445010d6f452fcd794733e2d86', '[\"*\"]', '2022-10-14 02:22:47', NULL, '2022-10-14 02:21:43', '2022-10-14 02:22:47'),
(207, 'App\\Models\\User', 48, 'API TOKEN', '84c21de47a591aa41b5b486f4700af33049d92e28bf049c58d31bf0b3291070c', '[\"*\"]', NULL, NULL, '2022-10-14 02:34:06', '2022-10-14 02:34:06'),
(208, 'App\\Models\\User', 48, 'API TOKEN', '6c4785bd9176f637285c7d4355cd9d1389248750adbd977d6cb182019530aa02', '[\"*\"]', '2022-10-15 05:14:02', NULL, '2022-10-14 02:34:19', '2022-10-15 05:14:02'),
(209, 'App\\Models\\User', 46, 'API TOKEN', '09245d03fa7a7350eec08484000aa4cd3cec8f61c3958562e6f015700cbd4d73', '[\"*\"]', '2022-10-14 02:46:52', NULL, '2022-10-14 02:45:23', '2022-10-14 02:46:52'),
(210, 'App\\Models\\User', 46, 'API TOKEN', '9626848c8403060770a60501d2186fc28039595b371ebda39a2af171c9a195e1', '[\"*\"]', '2022-10-14 03:13:50', NULL, '2022-10-14 02:47:05', '2022-10-14 03:13:50'),
(211, 'App\\Models\\User', 46, 'API TOKEN', 'bc08c0d85978408a6016b801047d9bc4b9c0af852ad71424813e695fa7f4103c', '[\"*\"]', '2022-10-14 03:27:11', NULL, '2022-10-14 03:25:11', '2022-10-14 03:27:11'),
(212, 'App\\Models\\User', 46, 'API TOKEN', 'f19d09c9d8a4fff6f9a40deb86dd0756209e4c833854403789b414a9446a6de6', '[\"*\"]', '2022-10-14 03:32:58', NULL, '2022-10-14 03:29:42', '2022-10-14 03:32:58'),
(213, 'App\\Models\\User', 43, 'API TOKEN', '1fceb7e9255147e35fc13ce3312e71100dee73b18b055e0b945966782ae05a95', '[\"*\"]', '2022-10-14 19:14:03', NULL, '2022-10-14 17:59:23', '2022-10-14 19:14:03'),
(214, 'App\\Models\\User', 43, 'API TOKEN', 'f105740cf70a283a6455a3cb5e75fd786fc8d3d31a9681999843c3d01d2ea0eb', '[\"*\"]', '2022-10-14 19:24:29', NULL, '2022-10-14 19:19:34', '2022-10-14 19:24:29'),
(215, 'App\\Models\\User', 43, 'API TOKEN', 'fc6f033b7760aa23002468b4c7c2dc3afe22eebdd4f0c137e74cfbfdf72b6128', '[\"*\"]', '2022-10-14 22:10:20', NULL, '2022-10-14 22:09:57', '2022-10-14 22:10:20'),
(216, 'App\\Models\\User', 49, 'API TOKEN', '848e8670ccc3ac97b9d611f92d52fad67b1b31d1e9da71047f4b6d1202870dbb', '[\"*\"]', NULL, NULL, '2022-10-14 22:11:20', '2022-10-14 22:11:20'),
(217, 'App\\Models\\User', 49, 'API TOKEN', '0c82bd1e1a4a1d213755b63735ad0273487a3efb6cd0a645b01738a790e19a7d', '[\"*\"]', '2022-10-14 22:12:20', NULL, '2022-10-14 22:11:35', '2022-10-14 22:12:20'),
(218, 'App\\Models\\User', 49, 'API TOKEN', 'd87d6345eaaa659b110de009edd375b36c114cf6df2c0f439a31ed0c4c9bb130', '[\"*\"]', '2022-10-14 22:12:57', NULL, '2022-10-14 22:12:57', '2022-10-14 22:12:57'),
(219, 'App\\Models\\User', 50, 'API TOKEN', 'b3bac81c81eceba5231818c6cf228725f81f15bcab0f890191a988f938c4cd31', '[\"*\"]', '2022-10-15 00:58:12', NULL, '2022-10-15 00:23:57', '2022-10-15 00:58:12'),
(220, 'App\\Models\\User', 51, 'API TOKEN', '5c5c57e7c3e816ed950200225966336bfa30c17dc1970fc459f339e6989366c0', '[\"*\"]', NULL, NULL, '2022-10-15 04:01:05', '2022-10-15 04:01:05'),
(221, 'App\\Models\\User', 51, 'API TOKEN', '1e49c6a0fb8b83c90b56411e1eba318b7f720efd87b5b4c8969308f3fe187b1f', '[\"*\"]', '2022-10-15 04:01:19', NULL, '2022-10-15 04:01:18', '2022-10-15 04:01:19'),
(222, 'App\\Models\\User', 52, 'API TOKEN', 'd36216c880e803e6d66b8e0d66758bb253c9179c418602261f4c9edf79f96434', '[\"*\"]', '2022-10-15 04:14:05', NULL, '2022-10-15 04:10:46', '2022-10-15 04:14:05'),
(223, 'App\\Models\\User', 52, 'API TOKEN', 'a329200df0c3d617b510d23bc9f1a47aaa3b023f5f74d748f8c9218b5968c37a', '[\"*\"]', '2022-10-15 04:14:55', NULL, '2022-10-15 04:14:54', '2022-10-15 04:14:55'),
(224, 'App\\Models\\User', 17, 'API TOKEN', 'cd82b4035039a3b8479749a26bc0454e88dd7b9889c8726bacc796d7f0cca60d', '[\"*\"]', '2022-10-16 03:02:06', NULL, '2022-10-15 16:04:41', '2022-10-16 03:02:06'),
(225, 'App\\Models\\User', 30, 'API TOKEN', '7cea566b49769e146b8a0ba5f1ce10cfecb50e37488ef3987597d17359657c6d', '[\"*\"]', '2022-10-15 19:31:31', NULL, '2022-10-15 19:29:28', '2022-10-15 19:31:31'),
(226, 'App\\Models\\User', 30, 'API TOKEN', '187186ae1b45b8ae191e3293c011a66e5ac602c60ab3c97523fffce03d54f435', '[\"*\"]', '2022-10-15 19:34:05', NULL, '2022-10-15 19:31:51', '2022-10-15 19:34:05'),
(227, 'App\\Models\\User', 30, 'API TOKEN', 'a5ab01cb20c9bafba219f4a219c31438d0a65011f205b5b299b8ffa5aa2bb533', '[\"*\"]', '2022-10-15 19:35:19', NULL, '2022-10-15 19:34:15', '2022-10-15 19:35:19'),
(228, 'App\\Models\\User', 30, 'API TOKEN', 'bd658e26149343ce6b2a795caf45dd5da70e8db4acbc9d303ceaa803d4938c6a', '[\"*\"]', '2022-10-15 20:38:32', NULL, '2022-10-15 20:36:56', '2022-10-15 20:38:32'),
(229, 'App\\Models\\User', 53, 'API TOKEN', '4c1d98119e39413114d606d94497cb914c4b15a1535c25811fd79c4d5b065f3e', '[\"*\"]', '2022-10-15 21:10:39', NULL, '2022-10-15 21:09:45', '2022-10-15 21:10:39'),
(230, 'App\\Models\\User', 53, 'API TOKEN', '50dd494e7bb5e556ff01a2ed6cf53ef4da692d08d434529127d45d0daf7af075', '[\"*\"]', '2022-10-16 00:18:38', NULL, '2022-10-15 21:19:19', '2022-10-16 00:18:38'),
(231, 'App\\Models\\User', 15, 'API TOKEN', 'dedcdd31a00cb2bde894afb6c9f0a3fa3610577a744df65920b4b1be19faa90a', '[\"*\"]', '2022-10-15 21:39:38', NULL, '2022-10-15 21:39:09', '2022-10-15 21:39:38'),
(232, 'App\\Models\\User', 15, 'API TOKEN', 'e84f5cb68b84177874deb10155a6eae9318fc0e3838903acc504a1f9e7350ffd', '[\"*\"]', '2022-10-18 18:16:55', NULL, '2022-10-15 21:44:35', '2022-10-18 18:16:55'),
(233, 'App\\Models\\User', 17, 'API TOKEN', 'e936e4a78e74776d507670d973615d3af042d91292831780a257fc1362f26920', '[\"*\"]', '2022-10-15 23:11:28', NULL, '2022-10-15 23:05:38', '2022-10-15 23:11:28'),
(234, 'App\\Models\\User', 54, 'API TOKEN', '8dce2daa5f01cda694ec98b1d89f4cc7b250a93d8bd22bf5aeeb620ce2b056b9', '[\"*\"]', '2022-10-15 23:18:42', NULL, '2022-10-15 23:12:05', '2022-10-15 23:18:42'),
(235, 'App\\Models\\User', 55, 'API TOKEN', 'bd6c7ac97b5e5e7d9bf3598074c67b424c420b2275d963676ffc6aacd6ee3abc', '[\"*\"]', '2022-10-15 23:18:33', NULL, '2022-10-15 23:14:21', '2022-10-15 23:18:33'),
(236, 'App\\Models\\User', 55, 'API TOKEN', '2622242180aeffac62ebc24fd9b46733c6c042bda58ade7b2d47764468ce7805', '[\"*\"]', '2022-10-15 23:22:49', NULL, '2022-10-15 23:20:36', '2022-10-15 23:22:49'),
(237, 'App\\Models\\User', 43, 'API TOKEN', 'e10416deedebfcccd02b64ee669cc5093702e0fc5d8cba0355f95adf1fff466f', '[\"*\"]', '2022-10-16 16:41:00', NULL, '2022-10-16 01:35:36', '2022-10-16 16:41:00'),
(238, 'App\\Models\\User', 43, 'API TOKEN', '28ba9e78e0f45bed7bce1903220fb14425bd0f865aa8e073d046d16ebd5c13e1', '[\"*\"]', '2022-10-16 03:57:03', NULL, '2022-10-16 01:51:57', '2022-10-16 03:57:03'),
(239, 'App\\Models\\User', 56, 'API TOKEN', 'bcd08d2e8460c3ab0b517fe6a8d5317bcdc9e5d9ae156be685fd40843f3cf2a5', '[\"*\"]', '2022-10-16 04:33:05', NULL, '2022-10-16 04:32:39', '2022-10-16 04:33:05'),
(240, 'App\\Models\\User', 57, 'API TOKEN', '819bb0d5463ba4ded3a38b77bdb677ca4d73a5e150a531d43de975e413785bb0', '[\"*\"]', '2022-10-16 06:44:23', NULL, '2022-10-16 06:42:02', '2022-10-16 06:44:23'),
(241, 'App\\Models\\User', 58, 'API TOKEN', 'fc214808f8aefd46dc792459a8cb6848f793191102214d5d666069a06ec6fda8', '[\"*\"]', '2022-10-16 06:53:32', NULL, '2022-10-16 06:47:49', '2022-10-16 06:53:32'),
(242, 'App\\Models\\User', 58, 'API TOKEN', 'ee285eb72c79abac1a8870c2e749f7ed70234a46cf2fad75504edf9a6a7c0271', '[\"*\"]', '2022-10-16 07:17:40', NULL, '2022-10-16 06:54:10', '2022-10-16 07:17:40'),
(243, 'App\\Models\\User', 58, 'API TOKEN', 'bb5923c691bec2a909b5f68d095c78affeefac21dd8489b31eb7456bdd2c4f31', '[\"*\"]', '2022-10-16 07:19:18', NULL, '2022-10-16 07:18:00', '2022-10-16 07:19:18'),
(244, 'App\\Models\\User', 59, 'API TOKEN', 'dc6068415f0895b6a5658a6c2dcde0957619d7c2db4987112646201478dcbcbe', '[\"*\"]', '2022-10-16 09:24:09', NULL, '2022-10-16 09:21:40', '2022-10-16 09:24:09'),
(245, 'App\\Models\\User', 59, 'API TOKEN', '950dc782f6fc3cc94c7eeb4ea5fcf11e99c1de46acdbd1b5f4689bddade86adb', '[\"*\"]', '2022-10-17 05:04:50', NULL, '2022-10-16 09:25:02', '2022-10-17 05:04:50'),
(246, 'App\\Models\\User', 22, 'API TOKEN', '79ded438841de2b52f860a6eba599de2f26ceff85cb820abb5838ffd058f770e', '[\"*\"]', '2022-10-16 15:23:47', NULL, '2022-10-16 15:23:24', '2022-10-16 15:23:47'),
(247, 'App\\Models\\User', 60, 'API TOKEN', '28258c18c957b9e9192697e1e3056d1126a6ae7f7d385ff69af5ae0460cbe710', '[\"*\"]', '2022-10-16 15:39:42', NULL, '2022-10-16 15:39:34', '2022-10-16 15:39:42'),
(248, 'App\\Models\\User', 60, 'API TOKEN', 'f80f4e504865ffb1155afa9abfc1e2a77567409798427fd34a3898bb65696eb6', '[\"*\"]', '2022-10-16 16:10:52', NULL, '2022-10-16 15:57:25', '2022-10-16 16:10:52'),
(249, 'App\\Models\\User', 60, 'API TOKEN', 'a1d3151d62c18fa700dd62a2e3304383532ce6297730658bd8e32e4e1e28895f', '[\"*\"]', '2022-10-16 17:06:17', NULL, '2022-10-16 16:16:24', '2022-10-16 17:06:17'),
(250, 'App\\Models\\User', 60, 'API TOKEN', 'a4de2170e6702b7536a0af71a981151031936cba707ab40c1515596d34e7332d', '[\"*\"]', '2022-10-16 17:18:19', NULL, '2022-10-16 17:12:10', '2022-10-16 17:18:19'),
(251, 'App\\Models\\User', 49, 'API TOKEN', '51c77c9c367aa89fed78722a25470e914b1a2390d54ad15794b1963cc90b8527', '[\"*\"]', '2022-10-16 17:53:15', NULL, '2022-10-16 17:20:21', '2022-10-16 17:53:15'),
(252, 'App\\Models\\User', 60, 'API TOKEN', '35ab9a75bbe6b22ba732ceeef842629607e3f90f34be94ece9c8b5d583d93b0e', '[\"*\"]', '2022-10-16 17:27:09', NULL, '2022-10-16 17:21:17', '2022-10-16 17:27:09'),
(253, 'App\\Models\\User', 60, 'API TOKEN', 'b16acc5c37160404269a23d7d79527780564d7679a52735feb53c1345d9ee2d6', '[\"*\"]', '2022-10-16 18:01:18', NULL, '2022-10-16 17:49:33', '2022-10-16 18:01:18'),
(254, 'App\\Models\\User', 49, 'API TOKEN', '5d7f3445e1b0e0d2e9151e013785e8ead608b56f2df90ab4eb28720032b19170', '[\"*\"]', '2022-10-16 17:56:03', NULL, '2022-10-16 17:53:32', '2022-10-16 17:56:03'),
(255, 'App\\Models\\User', 49, 'API TOKEN', '3c05ce83b016c29328a8a4fc3c4cacde70b6461972def9742b9caf60f289e0bb', '[\"*\"]', '2022-10-16 20:46:47', NULL, '2022-10-16 17:58:42', '2022-10-16 20:46:47'),
(256, 'App\\Models\\User', 61, 'API TOKEN', '232f94bcc7ee6e43d97a4e0ed18669ea3c94ce4dbb61c0c2245ac3715e3528da', '[\"*\"]', '2022-10-16 18:06:27', NULL, '2022-10-16 18:06:20', '2022-10-16 18:06:27'),
(257, 'App\\Models\\User', 61, 'API TOKEN', 'c0da8ec047b79e12e5b38868f23d9c443e5e9e65fccc45cb819dae6e3b775d0c', '[\"*\"]', '2022-10-16 18:07:21', NULL, '2022-10-16 18:07:11', '2022-10-16 18:07:21'),
(258, 'App\\Models\\User', 62, 'API TOKEN', 'eaccc7a1301d11106450effb61e069a8d2c205fb3abd0d9c7fd36250bdd3ceb4', '[\"*\"]', '2022-10-16 18:09:55', NULL, '2022-10-16 18:09:51', '2022-10-16 18:09:55'),
(259, 'App\\Models\\User', 63, 'API TOKEN', '05be72474abe030991facde5194a62ae2aee79757bcd395daca46381ae1057ec', '[\"*\"]', '2022-10-16 18:15:48', NULL, '2022-10-16 18:15:41', '2022-10-16 18:15:48'),
(260, 'App\\Models\\User', 64, 'API TOKEN', '40f724efdc96c7ed5640f88fb1c4d379480c2a3529f688faeb4752e7b08b54c0', '[\"*\"]', '2022-10-16 19:05:15', NULL, '2022-10-16 18:58:17', '2022-10-16 19:05:15');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(261, 'App\\Models\\User', 64, 'API TOKEN', '0b252969aa86e16f5166723459fa8ebe5a622c0241d6d26a2d84b43c8dd555ea', '[\"*\"]', '2022-10-16 19:14:44', NULL, '2022-10-16 19:11:00', '2022-10-16 19:14:44'),
(262, 'App\\Models\\User', 65, 'API TOKEN', '02375f1cfb17c5d1f2db2c0c8c4de126534a79abd30432e020d3ffe7b64ea234', '[\"*\"]', '2022-10-16 19:23:04', NULL, '2022-10-16 19:18:59', '2022-10-16 19:23:04'),
(263, 'App\\Models\\User', 66, 'API TOKEN', 'eba42bada6612e6a5b9e6d7d302bc4f7c66ff7e20411c3313e0dc3df53ed2aa3', '[\"*\"]', '2022-10-16 19:25:01', NULL, '2022-10-16 19:23:40', '2022-10-16 19:25:01'),
(264, 'App\\Models\\User', 49, 'API TOKEN', 'f0aec425cc984571a789c80400025ad7623cb1bea1cb3de5bb9d3793f40ddc54', '[\"*\"]', '2022-10-16 19:35:42', NULL, '2022-10-16 19:35:39', '2022-10-16 19:35:42'),
(265, 'App\\Models\\User', 49, 'API TOKEN', '9eec26143f907c7c8e7faf36d798f0a5e24b5b817f12ca85d0b61481b78c9bde', '[\"*\"]', '2022-10-20 15:44:39', NULL, '2022-10-16 19:39:34', '2022-10-20 15:44:39'),
(266, 'App\\Models\\User', 49, 'API TOKEN', '86be2872f56e550acf73b9653ab199f056dcb9547ae990e49416cdccdccf729a', '[\"*\"]', '2022-10-16 19:41:54', NULL, '2022-10-16 19:41:53', '2022-10-16 19:41:54'),
(267, 'App\\Models\\User', 49, 'API TOKEN', 'b33afc3456826d12f94791407b7c11435fee998db5b30d9075cc8abfcba46990', '[\"*\"]', '2022-10-16 19:57:51', NULL, '2022-10-16 19:46:06', '2022-10-16 19:57:51'),
(268, 'App\\Models\\User', 49, 'API TOKEN', '0aedc523631375fb3e8d889575d0248447e332919520e0a8aa3010c0a26b2ef3', '[\"*\"]', '2022-10-16 20:01:59', NULL, '2022-10-16 20:01:56', '2022-10-16 20:01:59'),
(269, 'App\\Models\\User', 64, 'API TOKEN', 'c30b66c12d6121a435250c0ea67c5d8d70c76a3d29425c5232dc114c7e4f7e19', '[\"*\"]', '2022-10-16 20:03:26', NULL, '2022-10-16 20:03:25', '2022-10-16 20:03:26'),
(270, 'App\\Models\\User', 67, 'API TOKEN', '6e31d2e49a36fbdd03bc53a49322b2cf43d99ee1aaeca245418edc03e9e7a365', '[\"*\"]', '2022-10-16 20:05:49', NULL, '2022-10-16 20:05:02', '2022-10-16 20:05:49'),
(271, 'App\\Models\\User', 67, 'API TOKEN', '147432029d8a2996b182043121a12594656c44227a9c5f7ed7197c70745925bd', '[\"*\"]', '2022-10-16 20:07:05', NULL, '2022-10-16 20:06:59', '2022-10-16 20:07:05'),
(272, 'App\\Models\\User', 49, 'API TOKEN', '79b98f076b45e63aa99077073f7857df65f21293e7fc5436b8fb72d3e95d47c7', '[\"*\"]', '2022-10-16 20:10:01', NULL, '2022-10-16 20:07:24', '2022-10-16 20:10:01'),
(273, 'App\\Models\\User', 49, 'API TOKEN', '7c55919e08a774772ea3770759e456e2dc9f7897d16b72dcb675c9dd9fcfc0dc', '[\"*\"]', '2022-10-16 20:13:44', NULL, '2022-10-16 20:13:36', '2022-10-16 20:13:44'),
(274, 'App\\Models\\User', 67, 'API TOKEN', '2c7e16c407e47c7460499b0755aab18d7b3e04992b6bead11bf8c9080db55f45', '[\"*\"]', '2022-10-16 20:14:21', NULL, '2022-10-16 20:14:20', '2022-10-16 20:14:21'),
(275, 'App\\Models\\User', 61, 'API TOKEN', '4a063dd1a9cd8402c2544ae6b426e38724fa3e381cf62941233f29cade08e980', '[\"*\"]', '2022-10-16 20:35:51', NULL, '2022-10-16 20:14:38', '2022-10-16 20:35:51'),
(276, 'App\\Models\\User', 49, 'API TOKEN', 'a681de31046e3d51bd18d695b8c1ad528ad4aa8e1131d36124dc2722fa810f05', '[\"*\"]', '2022-10-16 20:45:02', NULL, '2022-10-16 20:43:59', '2022-10-16 20:45:02'),
(277, 'App\\Models\\User', 68, 'API TOKEN', 'cb5f1891d9f04a815e8e2633418730dfd4bf8db971cedd468599c35e462870e8', '[\"*\"]', '2022-10-17 17:31:24', NULL, '2022-10-16 20:45:51', '2022-10-17 17:31:24'),
(278, 'App\\Models\\User', 22, 'API TOKEN', '9d590f7569c8506ce4ea79e479ba0ebdedc4187e34bce6d6d012babb7ebfef8a', '[\"*\"]', NULL, NULL, '2022-10-16 21:24:48', '2022-10-16 21:24:48'),
(279, 'App\\Models\\User', 67, 'API TOKEN', '630582b61d684d8178fc414e75a9e1a1cdd1b1a1b95ceb8d1887a14c49a53a53', '[\"*\"]', '2022-10-16 22:27:33', NULL, '2022-10-16 22:08:50', '2022-10-16 22:27:33'),
(280, 'App\\Models\\User', 49, 'API TOKEN', 'ff3ac496a809236b34f30f46ced92ed2ec927c5a4032e830701f69993c80a538', '[\"*\"]', '2022-10-16 22:37:39', NULL, '2022-10-16 22:37:09', '2022-10-16 22:37:39'),
(281, 'App\\Models\\User', 49, 'API TOKEN', '690d1f82f66aa0175d072c3c453a30587ecddaf78a5bc279e81257a894534014', '[\"*\"]', '2022-10-16 22:42:57', NULL, '2022-10-16 22:40:37', '2022-10-16 22:42:57'),
(282, 'App\\Models\\User', 49, 'API TOKEN', 'a6e32a26189f05eb7c7a8236c4018d92b5e48eb182f8b97b0ffd0adbbbe33629', '[\"*\"]', '2022-10-16 23:22:54', NULL, '2022-10-16 22:48:59', '2022-10-16 23:22:54'),
(283, 'App\\Models\\User', 49, 'API TOKEN', 'e4967cf80c935c1a2b09e2d5fb96620dfddd72604e89819e413dc9ddd13234c5', '[\"*\"]', '2022-10-16 23:55:11', NULL, '2022-10-16 23:33:10', '2022-10-16 23:55:11'),
(284, 'App\\Models\\User', 69, 'API TOKEN', '09d101b2ded889d304a62c3a9cbb466cad4eac388579fc557797047426499110', '[\"*\"]', '2022-10-17 00:17:54', NULL, '2022-10-17 00:13:50', '2022-10-17 00:17:54'),
(285, 'App\\Models\\User', 49, 'API TOKEN', 'f2a0643dd36cba626aaab869d8dfb6f7c2a3ecc62d3042b211927d9bc23128ce', '[\"*\"]', '2022-10-18 00:48:07', NULL, '2022-10-17 00:18:31', '2022-10-18 00:48:07'),
(286, 'App\\Models\\User', 49, 'API TOKEN', '0fbd45b2514ea4e1317025aee38a38a7164962895d30a34fee412dcbe40d0d7c', '[\"*\"]', '2022-10-17 00:23:26', NULL, '2022-10-17 00:23:25', '2022-10-17 00:23:26'),
(287, 'App\\Models\\User', 67, 'API TOKEN', 'dfca1dd8cb0b9c6053d75c1ceb050432472f8a0c778469d103eb04398dae6063', '[\"*\"]', '2022-10-17 00:48:10', NULL, '2022-10-17 00:25:23', '2022-10-17 00:48:10'),
(288, 'App\\Models\\User', 22, 'API TOKEN', '035069d557a7de0b6e12288fc593af8658cb0de88f958039c7ae24f95a6d7055', '[\"*\"]', '2022-10-17 00:50:14', NULL, '2022-10-17 00:43:26', '2022-10-17 00:50:14'),
(289, 'App\\Models\\User', 70, 'API TOKEN', '1656ce0b33ab6b02ab9baee21f20a355229f8f32100b77886ef38d66a48edc5e', '[\"*\"]', '2022-10-17 04:12:24', NULL, '2022-10-17 01:32:52', '2022-10-17 04:12:24'),
(290, 'App\\Models\\User', 71, 'API TOKEN', 'b35f2fb94147fff0d7fa99e91414e5f5613b29a027eef95b51752a2fa38689ff', '[\"*\"]', '2022-10-21 12:03:09', NULL, '2022-10-17 03:11:54', '2022-10-21 12:03:09'),
(291, 'App\\Models\\User', 72, 'API TOKEN', 'fbc9ce3823a3814ff24546124a7f430a86124fb3ae74b9dd2a9ceb7cd3596a77', '[\"*\"]', '2022-10-17 05:33:19', NULL, '2022-10-17 05:10:59', '2022-10-17 05:33:19'),
(292, 'App\\Models\\User', 49, 'API TOKEN', 'd9ed229054befa04bc0496b49ff8d414b43e5d5580a137c5240be0390c391421', '[\"*\"]', '2022-10-17 15:49:08', NULL, '2022-10-17 15:44:27', '2022-10-17 15:49:08'),
(293, 'App\\Models\\User', 49, 'API TOKEN', 'fdf33c1206fe5c25e98754a9ffb0d0e06f1d932f6f9d4347ac5de8892beaf94b', '[\"*\"]', '2022-10-17 17:16:21', NULL, '2022-10-17 17:16:06', '2022-10-17 17:16:21'),
(294, 'App\\Models\\User', 67, 'API TOKEN', '339a78a70bcf59569aa82cf8bb2d030308bc36e9b472bdd2731f0633b7cda19f', '[\"*\"]', '2022-10-17 17:17:27', NULL, '2022-10-17 17:17:20', '2022-10-17 17:17:27'),
(295, 'App\\Models\\User', 49, 'API TOKEN', '0fc1056e22b8dad1c613ba0db8fc814ac026060fb8b5f8cda3f082c7de020fc3', '[\"*\"]', '2022-10-17 18:57:59', NULL, '2022-10-17 17:17:58', '2022-10-17 18:57:59'),
(296, 'App\\Models\\User', 49, 'API TOKEN', '7b6fecc005889f793d0653c3a9848f668d22024d3b53fe5a69c45b038a49133e', '[\"*\"]', NULL, NULL, '2022-10-17 18:11:25', '2022-10-17 18:11:25'),
(297, 'App\\Models\\User', 49, 'API TOKEN', '723d69b1f4d54fa36f96520c2e5579bd4dcb8d73e0d905e393098203da9ce90d', '[\"*\"]', NULL, NULL, '2022-10-17 18:14:27', '2022-10-17 18:14:27'),
(298, 'App\\Models\\User', 49, 'API TOKEN', 'bd59a050de9cad005a5e715ec0076634b6f115a48f0a2712cf60a3ab14000b70', '[\"*\"]', NULL, NULL, '2022-10-17 18:15:45', '2022-10-17 18:15:45'),
(299, 'App\\Models\\User', 67, 'API TOKEN', 'a652a6646ed3997709b6427891bbf27f4a87ea11302970a4a9116d9c0a9f3363', '[\"*\"]', NULL, NULL, '2022-10-17 18:16:00', '2022-10-17 18:16:00'),
(300, 'App\\Models\\User', 49, 'API TOKEN', 'a25a702986bc5985c050afe10b977a14fd257bc0d15fee60262ea3cd39303229', '[\"*\"]', NULL, NULL, '2022-10-17 18:19:26', '2022-10-17 18:19:26'),
(301, 'App\\Models\\User', 71, 'API TOKEN', 'e4a01beba997d6e47bb63c3ee6e2aab0e800ac071bb89bb9b9ff464e2a980eb3', '[\"*\"]', '2022-10-21 19:16:33', NULL, '2022-10-17 18:47:55', '2022-10-21 19:16:33'),
(302, 'App\\Models\\User', 73, 'API TOKEN', '575da8ef90547977fc05df6fe87fcf33121be163f4d527d6a20b6a9665a0c793', '[\"*\"]', '2022-10-17 19:02:30', NULL, '2022-10-17 19:01:10', '2022-10-17 19:02:30'),
(303, 'App\\Models\\User', 49, 'API TOKEN', '977c49f237f3e2734aa541490194609f416a3627ef5276dbe9648b63c417d973', '[\"*\"]', '2022-10-17 19:03:35', NULL, '2022-10-17 19:03:34', '2022-10-17 19:03:35'),
(304, 'App\\Models\\User', 67, 'API TOKEN', 'e03bdbb635122b3bdd2739e9c4b801c8dd0e94c3ac5f35b91ed6d6c45bf820fa', '[\"*\"]', '2022-10-17 19:05:47', NULL, '2022-10-17 19:05:47', '2022-10-17 19:05:47'),
(305, 'App\\Models\\User', 49, 'API TOKEN', '76a5b2ecb8de02e46620ff4586e5799dea64666d3e73d9a5bb932db6362a6763', '[\"*\"]', '2022-10-17 19:06:14', NULL, '2022-10-17 19:06:13', '2022-10-17 19:06:14'),
(306, 'App\\Models\\User', 74, 'API TOKEN', '413bd987f8d3f1cfd451823fa58068f17b2ffa03044ef8f0950929de4e49fbe0', '[\"*\"]', '2022-10-17 19:19:07', NULL, '2022-10-17 19:14:43', '2022-10-17 19:19:07'),
(307, 'App\\Models\\User', 49, 'API TOKEN', 'f67b5c5962d3ae4da75b82613863e050e888ff08b496f03523524fbfa21a45fa', '[\"*\"]', '2022-10-17 19:22:56', NULL, '2022-10-17 19:22:56', '2022-10-17 19:22:56'),
(308, 'App\\Models\\User', 75, 'API TOKEN', 'f5a6c7db0270d249c5a57b0736cf516b56391fa25c7fe3e6d2ae02fa5f3d85ac', '[\"*\"]', '2022-10-17 19:59:15', NULL, '2022-10-17 19:31:31', '2022-10-17 19:59:15'),
(309, 'App\\Models\\User', 76, 'API TOKEN', '6e7a50a8649e34189d35a50d5747d8a110cf56ec393018e4253b7cbdb45da4e4', '[\"*\"]', NULL, NULL, '2022-10-17 19:37:11', '2022-10-17 19:37:11'),
(310, 'App\\Models\\User', 77, 'API TOKEN', '427daeccaa9e944ec6fd44a145c6cc9998d464c9905ee81da83aa50a498517a5', '[\"*\"]', NULL, NULL, '2022-10-17 19:38:58', '2022-10-17 19:38:58'),
(311, 'App\\Models\\User', 78, 'API TOKEN', '2550e5543cec2828067b6fb25c045416208862e4f4064ef840bffa0a5b1db13a', '[\"*\"]', NULL, NULL, '2022-10-17 19:41:43', '2022-10-17 19:41:43'),
(312, 'App\\Models\\User', 49, 'API TOKEN', '137c7adcaa38523a499453357c57fc008fb2b1b293f49ebe4922f1ee0b0b3bca', '[\"*\"]', NULL, NULL, '2022-10-17 21:35:10', '2022-10-17 21:35:10'),
(313, 'App\\Models\\User', 49, 'API TOKEN', '273ac49aa3bc57d71b155ed618bc6bd42c343d4ce270ea542c01a8df46094c35', '[\"*\"]', NULL, NULL, '2022-10-17 21:35:24', '2022-10-17 21:35:24'),
(314, 'App\\Models\\User', 49, 'API TOKEN', '7f5069a48c82fc0f8ff6aed66b36b55bc54c92afb6bf9bd6098ce3b1ccef3b8a', '[\"*\"]', NULL, NULL, '2022-10-17 21:36:23', '2022-10-17 21:36:23'),
(315, 'App\\Models\\User', 49, 'API TOKEN', 'cf288955ed79aa9f1a920e3b655aae339817f5d3b4ce34a756222a3a01a84110', '[\"*\"]', '2022-10-17 21:44:43', NULL, '2022-10-17 21:44:41', '2022-10-17 21:44:43'),
(316, 'App\\Models\\User', 67, 'API TOKEN', '6d6984ce76c37274cde43b4033980aabdac5e5449f58ee8eaa837803ba35c3f9', '[\"*\"]', '2022-10-17 21:49:38', NULL, '2022-10-17 21:45:18', '2022-10-17 21:49:38'),
(317, 'App\\Models\\User', 67, 'API TOKEN', '785548d320d4b609e14ba0a1c09159eadfb0340333cea418a32e864c837fdea9', '[\"*\"]', '2022-10-17 22:03:30', NULL, '2022-10-17 21:53:38', '2022-10-17 22:03:30'),
(318, 'App\\Models\\User', 67, 'API TOKEN', '0ec455f13240d40d36a9ed46d1979b09d511c4de20ae0e3a447779047cad52ea', '[\"*\"]', '2022-10-17 21:56:25', NULL, '2022-10-17 21:56:11', '2022-10-17 21:56:25'),
(319, 'App\\Models\\User', 49, 'API TOKEN', '641077ecd2dc2e9daf4182778b8ec1a681a93791721ffef4b96dd76bc3ef27df', '[\"*\"]', '2022-10-17 22:19:02', NULL, '2022-10-17 22:07:47', '2022-10-17 22:19:02'),
(320, 'App\\Models\\User', 49, 'API TOKEN', 'ae9a7acb62996a896fb9c77af5d5c8e7f870dbfd909a849af6951525f7a8841c', '[\"*\"]', '2022-10-23 17:13:47', NULL, '2022-10-17 22:10:34', '2022-10-23 17:13:47'),
(321, 'App\\Models\\User', 49, 'API TOKEN', '668041ae20c6f3cd0136b3cf3831efdb143dcc58d5faac8252a5a0bb50fdb3b7', '[\"*\"]', '2022-10-17 22:20:04', NULL, '2022-10-17 22:19:24', '2022-10-17 22:20:04'),
(322, 'App\\Models\\User', 49, 'API TOKEN', '28f27d222b831fd03cf15ac0f25f6455356f896ade3fb9681eb386d765358d11', '[\"*\"]', '2022-10-17 22:20:56', NULL, '2022-10-17 22:20:46', '2022-10-17 22:20:56'),
(323, 'App\\Models\\User', 79, 'API TOKEN', 'c7ba8bde404d49681a2cf0d86d587dd2e74bcdaf4f35a585b22290eb48b7d787', '[\"*\"]', '2022-10-17 23:40:45', NULL, '2022-10-17 23:37:50', '2022-10-17 23:40:45'),
(324, 'App\\Models\\User', 80, 'API TOKEN', '6b28307f99b93f8783f69f13c72631e9ece87e1416d127bd1d174a690cef159e', '[\"*\"]', '2022-10-17 23:53:56', NULL, '2022-10-17 23:42:38', '2022-10-17 23:53:56'),
(325, 'App\\Models\\User', 79, 'API TOKEN', '45aa6174c7b39791f37be0055620d272b125e293f929847abf83add191447972', '[\"*\"]', '2022-10-17 23:43:25', NULL, '2022-10-17 23:42:52', '2022-10-17 23:43:25'),
(326, 'App\\Models\\User', 79, 'API TOKEN', 'e3031d33e65aca655765bcabd8d9f72035994ab718d55d9bf726115a043a1de9', '[\"*\"]', '2022-10-18 03:48:49', NULL, '2022-10-17 23:43:45', '2022-10-18 03:48:49'),
(327, 'App\\Models\\User', 49, 'API TOKEN', '3ce79f435b2229ac9d9bb8c6ad6861d033cdc30a2477e3ccd326f0c1371ab6e8', '[\"*\"]', '2022-10-18 00:49:43', NULL, '2022-10-18 00:49:28', '2022-10-18 00:49:43'),
(328, 'App\\Models\\User', 67, 'API TOKEN', '80a0fde27988acef1a9935dfdb537197ec91f6f0244e605676fb16adf47a671b', '[\"*\"]', '2022-10-18 17:59:20', NULL, '2022-10-18 00:50:24', '2022-10-18 17:59:20'),
(329, 'App\\Models\\User', 49, 'API TOKEN', '94ebf6becc2253abc730384903b87d61030981209ce6267fee773014667746d2', '[\"*\"]', NULL, NULL, '2022-10-18 17:52:08', '2022-10-18 17:52:08'),
(330, 'App\\Models\\User', 81, 'API TOKEN', 'd2e008ff61b56f8298d2e47e1a23959d8b61f2f2033aa773f6f9208837616cab', '[\"*\"]', '2022-10-18 18:16:15', NULL, '2022-10-18 18:13:50', '2022-10-18 18:16:15'),
(331, 'App\\Models\\User', 49, 'API TOKEN', 'e1ad224411c1b83196d3d70be9a6b00cf7445943d22d4e1f2339e4ca75acc61c', '[\"*\"]', '2022-10-18 18:17:48', NULL, '2022-10-18 18:17:47', '2022-10-18 18:17:48'),
(332, 'App\\Models\\User', 81, 'API TOKEN', '9835a1b7a01e5601b80d335a6ce5cbd17a1d704cbac9550146561a6f7743d636', '[\"*\"]', '2022-10-20 22:01:40', NULL, '2022-10-18 18:18:13', '2022-10-20 22:01:40'),
(333, 'App\\Models\\User', 67, 'API TOKEN', '7c84a980338651e27b34d68570ebccafb29f3239d3ab4aec8851a17ce38cadb3', '[\"*\"]', '2022-10-18 19:14:31', NULL, '2022-10-18 18:21:31', '2022-10-18 19:14:31'),
(334, 'App\\Models\\User', 49, 'API TOKEN', 'ca4ec98a0c4aab8dc9fdbdb21fd632d4f7008632aec631bd11138252ed3c72dd', '[\"*\"]', '2022-10-18 18:28:13', NULL, '2022-10-18 18:25:40', '2022-10-18 18:28:13'),
(335, 'App\\Models\\User', 67, 'API TOKEN', '5072b796505722c8ad90a692657acea2b7fcc1e03f194158e01761f56e682096', '[\"*\"]', '2022-10-18 18:31:09', NULL, '2022-10-18 18:28:43', '2022-10-18 18:31:09'),
(336, 'App\\Models\\User', 67, 'API TOKEN', '6852303fe8668b973ebd2525a2e9744afb8595e17ad3f00207762f00966a10a0', '[\"*\"]', '2022-10-18 20:38:55', NULL, '2022-10-18 20:38:41', '2022-10-18 20:38:55'),
(337, 'App\\Models\\User', 67, 'API TOKEN', '6b78db09afc32a0d7467ef08d7be6b156082db2e7f045f5a20f4ed4fed0b23ed', '[\"*\"]', '2022-10-18 20:50:27', NULL, '2022-10-18 20:50:18', '2022-10-18 20:50:27'),
(338, 'App\\Models\\User', 67, 'API TOKEN', '07818fbd3bb1f3160b44b915ad8f186e61f48d5d478475972610e5b5b494c52b', '[\"*\"]', NULL, NULL, '2022-10-18 22:44:45', '2022-10-18 22:44:45'),
(339, 'App\\Models\\User', 67, 'API TOKEN', '3b6cb11f7bf70d133efefa249059394443da8f0820df87d5b968cbe2ab86b4c7', '[\"*\"]', '2022-10-18 23:35:44', NULL, '2022-10-18 23:20:47', '2022-10-18 23:35:44'),
(340, 'App\\Models\\User', 67, 'API TOKEN', '81d993bfccfbc529b06683ea62b09b4b46431fe4cd87d11b3748e29f4be01cbb', '[\"*\"]', '2022-10-19 00:15:49', NULL, '2022-10-19 00:15:39', '2022-10-19 00:15:49'),
(341, 'App\\Models\\User', 67, 'API TOKEN', 'ee786c8b4d5d53c06dbaaf19eeefbbe60cd8e552823dc03f3ebf9bfdb487a740', '[\"*\"]', '2022-10-24 16:01:50', NULL, '2022-10-19 14:56:40', '2022-10-24 16:01:50'),
(342, 'App\\Models\\User', 67, 'API TOKEN', '511294949feb674110b0b83877fd6d918e9e925c8e706466c618e495a3162ac5', '[\"*\"]', '2022-10-19 15:04:09', NULL, '2022-10-19 15:02:53', '2022-10-19 15:04:09'),
(343, 'App\\Models\\User', 67, 'API TOKEN', 'bf1b8eb366dd04d060e6e17dafdea5eb3462144edf3f5fd3dccaec8f89465176', '[\"*\"]', '2022-10-19 19:14:42', NULL, '2022-10-19 16:30:18', '2022-10-19 19:14:42'),
(344, 'App\\Models\\User', 67, 'API TOKEN', 'f02dd6a8831b6f473163a4919e5f8dea4cfabfa306bc4b1f62d9f10c67e5f1c7', '[\"*\"]', NULL, NULL, '2022-10-19 17:35:31', '2022-10-19 17:35:31'),
(345, 'App\\Models\\User', 67, 'API TOKEN', '558fa5f8c56e2a2a7944dbfce1c83aac9084bac1261decd3ffa1b165a2928af1', '[\"*\"]', '2022-10-19 20:01:33', NULL, '2022-10-19 18:21:11', '2022-10-19 20:01:33'),
(346, 'App\\Models\\User', 67, 'API TOKEN', 'dc51aa96dee7a09f183f0609a66c01ab23a53d3d3695ef07e001735fc15c6d43', '[\"*\"]', '2022-10-19 20:07:25', NULL, '2022-10-19 20:05:24', '2022-10-19 20:07:25'),
(347, 'App\\Models\\User', 67, 'API TOKEN', 'd4e3126964ce077d8f310c302e3d969797295e91d2c1dbc13c6e1ec2b0faacf0', '[\"*\"]', NULL, NULL, '2022-10-19 20:50:00', '2022-10-19 20:50:00'),
(348, 'App\\Models\\User', 67, 'API TOKEN', '2f4ed0d679c2d0ca511fdcc4b5854cd04fc42d86b4289037a2e3521008f8db5a', '[\"*\"]', NULL, NULL, '2022-10-19 21:02:08', '2022-10-19 21:02:08'),
(349, 'App\\Models\\User', 67, 'API TOKEN', '28f9cf25e9f988b64e32d4594e870a095a757ce2dfe0492c9f6ee460d7b072b2', '[\"*\"]', '2022-10-19 22:42:02', NULL, '2022-10-19 21:03:01', '2022-10-19 22:42:02'),
(350, 'App\\Models\\User', 67, 'API TOKEN', '51c0a95792643de7ed6647893282c46c3fa73426a09860ade3b9d4766d86dbb6', '[\"*\"]', '2022-10-20 18:10:22', NULL, '2022-10-19 22:05:45', '2022-10-20 18:10:22'),
(351, 'App\\Models\\User', 49, 'API TOKEN', '1b5b26d40dbc854169e95aa9f1c5b3ce0927fb4413a36a94c6e41f0e32abe3b4', '[\"*\"]', NULL, NULL, '2022-10-19 22:24:41', '2022-10-19 22:24:41'),
(352, 'App\\Models\\User', 67, 'API TOKEN', 'fba5f4cb88ca745ab4392ec6a4ff201c8097177b474a1f4dcc4e784d9616fac0', '[\"*\"]', NULL, NULL, '2022-10-19 22:48:49', '2022-10-19 22:48:49'),
(353, 'App\\Models\\User', 67, 'API TOKEN', '5fdccae531b2856843dab7ea6ac9b3d8cbeb09d2060f91ae36f57c54c0ad1398', '[\"*\"]', '2022-10-20 01:11:41', NULL, '2022-10-19 23:04:24', '2022-10-20 01:11:41'),
(354, 'App\\Models\\User', 67, 'API TOKEN', '19fa0d5ff2124e4db9635a1e4ffb9b395ee46d293e5cc01fb93c45252453c008', '[\"*\"]', '2022-10-20 00:27:41', NULL, '2022-10-19 23:40:10', '2022-10-20 00:27:41'),
(355, 'App\\Models\\User', 67, 'API TOKEN', 'c22c65f8e486d71dacc4014b17e432c04d08b12f1f73b7ededf47f0b37ad6b09', '[\"*\"]', NULL, NULL, '2022-10-20 00:06:42', '2022-10-20 00:06:42'),
(356, 'App\\Models\\User', 67, 'API TOKEN', 'ae7a257d7917b3d9ce474bf0733f47246ce079dbdcad26b699db3b91c2af1a09', '[\"*\"]', '2022-10-20 23:51:45', NULL, '2022-10-20 00:07:19', '2022-10-20 23:51:45'),
(357, 'App\\Models\\User', 30, 'API TOKEN', 'd0f213352cc13630d9f654619b2139a9f77c49555bf207c2c52522d10f81f082', '[\"*\"]', '2022-10-20 03:12:26', NULL, '2022-10-20 02:43:47', '2022-10-20 03:12:26'),
(358, 'App\\Models\\User', 67, 'API TOKEN', '21f4f4708f6b831cb4684167f007973d5b4662b518b29c45c452cff7e9683305', '[\"*\"]', '2022-10-20 03:14:43', NULL, '2022-10-20 03:13:14', '2022-10-20 03:14:43'),
(359, 'App\\Models\\User', 49, 'API TOKEN', 'c1c534919bcb3df1d5321ee2e43846b6190045722ed34906a8e34f6fea363125', '[\"*\"]', NULL, NULL, '2022-10-20 14:17:52', '2022-10-20 14:17:52'),
(360, 'App\\Models\\User', 49, 'API TOKEN', '5fd8cd224248196597c9e9021808897870d1fb250c85ac5eae711ca73efa214c', '[\"*\"]', NULL, NULL, '2022-10-20 14:25:31', '2022-10-20 14:25:31'),
(361, 'App\\Models\\User', 49, 'API TOKEN', '3caf7efedbf90d39710a00edbfb4871206c23ed91ff4e3191916e6b3928392aa', '[\"*\"]', NULL, NULL, '2022-10-20 14:30:09', '2022-10-20 14:30:09'),
(362, 'App\\Models\\User', 49, 'API TOKEN', '89cccc0ab22e680af5fea86d9e83aa59d3b757073b2c69bb2306312fbc51e107', '[\"*\"]', NULL, NULL, '2022-10-20 15:00:59', '2022-10-20 15:00:59'),
(363, 'App\\Models\\User', 67, 'API TOKEN', '41e7012e00e24a780a75aa1b24e9a668fe35d4fae51b67e408b0b7e1d2e2c40b', '[\"*\"]', '2022-10-20 15:16:27', NULL, '2022-10-20 15:16:27', '2022-10-20 15:16:27'),
(364, 'App\\Models\\User', 49, 'API TOKEN', '5784fb3d3886b0106a0e8657bc0e6b1ea1a8db990912baaffb867c5338ac014d', '[\"*\"]', NULL, NULL, '2022-10-20 15:17:19', '2022-10-20 15:17:19'),
(365, 'App\\Models\\User', 82, 'API TOKEN', 'c1a23de564f3f32d7318737400eb14bc48e6b426f76741730a64d04fb55eb085', '[\"*\"]', NULL, NULL, '2022-10-20 15:23:42', '2022-10-20 15:23:42'),
(366, 'App\\Models\\User', 83, 'API TOKEN', 'a1114d74ff6989065beb89308ebf19286f0b7c8a0c2682a6b11ac577d6085aea', '[\"*\"]', NULL, NULL, '2022-10-20 15:41:34', '2022-10-20 15:41:34'),
(367, 'App\\Models\\User', 67, 'API TOKEN', 'ff3775234b5b43368a8b7513c4eff90dc62673ad9bccd6e151551f9ebf30f210', '[\"*\"]', '2022-10-20 15:48:19', NULL, '2022-10-20 15:44:00', '2022-10-20 15:48:19'),
(368, 'App\\Models\\User', 49, 'API TOKEN', '0f8bc528fae4ff33f4670f03484231ef3d5ec98b6796c7029883f804d3d20f59', '[\"*\"]', '2022-10-20 16:00:41', NULL, '2022-10-20 15:49:22', '2022-10-20 16:00:41'),
(369, 'App\\Models\\User', 67, 'API TOKEN', 'e835af7d9997a9aaaa7ec73708521fdc4252f5a419bf6f002bd268653548f25f', '[\"*\"]', '2022-10-20 16:08:16', NULL, '2022-10-20 16:07:16', '2022-10-20 16:08:16'),
(370, 'App\\Models\\User', 49, 'API TOKEN', '7a07926b8865dfe2c614db6514e95f0ead57436705730b9c463d18a6e3d19707', '[\"*\"]', '2022-10-20 16:12:30', NULL, '2022-10-20 16:09:00', '2022-10-20 16:12:30'),
(371, 'App\\Models\\User', 49, 'API TOKEN', '42ce219a908b4d1568cbe7d72663c5a960255a44f9cf9539c26830ecfcf4351b', '[\"*\"]', NULL, NULL, '2022-10-20 16:11:48', '2022-10-20 16:11:48'),
(372, 'App\\Models\\User', 49, 'API TOKEN', 'e513a5c9b112600a03f28be7f935ea75a88eecc71bb24ae3b1199ae87d61dfe5', '[\"*\"]', NULL, NULL, '2022-10-20 16:14:50', '2022-10-20 16:14:50'),
(373, 'App\\Models\\User', 49, 'API TOKEN', 'f8f24fcb32737fbeeabd9ac2e7e50812107a4a03053e9dd40b46e067e23dca67', '[\"*\"]', '2022-10-20 16:27:43', NULL, '2022-10-20 16:16:09', '2022-10-20 16:27:43'),
(374, 'App\\Models\\User', 49, 'API TOKEN', 'f5ff2df75fb4f02dbb0bcb8990e067d3c233e6ed866949e998b86ded3d4a19b5', '[\"*\"]', '2022-10-20 16:18:03', NULL, '2022-10-20 16:17:42', '2022-10-20 16:18:03'),
(375, 'App\\Models\\User', 49, 'API TOKEN', 'f7e6a5caad0adaafe717996c6e722899814a307c1e0e6fe9b0d8b18b8f0f3e95', '[\"*\"]', NULL, NULL, '2022-10-20 16:22:46', '2022-10-20 16:22:46'),
(376, 'App\\Models\\User', 49, 'API TOKEN', 'c3fb04f92c73d6676dd9e9057758573b90c9bf7fd70c2aa8d574597b29dc7dde', '[\"*\"]', NULL, NULL, '2022-10-20 16:24:30', '2022-10-20 16:24:30'),
(377, 'App\\Models\\User', 49, 'API TOKEN', '240718eb11d03a7ed2d51e4dee5058af834808561b0bf3f8582d1d9d5a3d1ea0', '[\"*\"]', NULL, NULL, '2022-10-20 16:28:21', '2022-10-20 16:28:21'),
(378, 'App\\Models\\User', 67, 'API TOKEN', '669c395e1231e896e2c1664dce23aa3f00e71eecc4c8670e7fde3c8c80c0feeb', '[\"*\"]', '2022-10-20 16:29:42', NULL, '2022-10-20 16:29:42', '2022-10-20 16:29:42'),
(379, 'App\\Models\\User', 49, 'API TOKEN', '2b5e1137a7e4463b7d1e567398d4f7f0d73145630a7458b0951dbd7624f4a182', '[\"*\"]', '2022-10-20 16:31:15', NULL, '2022-10-20 16:30:31', '2022-10-20 16:31:15'),
(380, 'App\\Models\\User', 49, 'API TOKEN', '1e1be3263efb2ee1af5b3ff55e06cb2a13779e61c235b9faaf556832c456dd6b', '[\"*\"]', '2022-10-20 16:36:29', NULL, '2022-10-20 16:33:34', '2022-10-20 16:36:29'),
(381, 'App\\Models\\User', 49, 'API TOKEN', '933e0d7d98be82f72957c9d99b1dac680e98d3e36f31667cc9d3685877dd4edf', '[\"*\"]', NULL, NULL, '2022-10-20 16:34:13', '2022-10-20 16:34:13'),
(382, 'App\\Models\\User', 49, 'API TOKEN', '11ffdfe04669a6408dc161379f38d04b1663f3e6eef871d800d25b0edb3b5afa', '[\"*\"]', '2022-10-20 16:37:20', NULL, '2022-10-20 16:36:59', '2022-10-20 16:37:20'),
(383, 'App\\Models\\User', 67, 'API TOKEN', 'ed47af86b75eb539d3bc93b44647d8a6abf0ddf91c90c59b4c5ef87d9b73be58', '[\"*\"]', '2022-10-20 16:40:25', NULL, '2022-10-20 16:40:22', '2022-10-20 16:40:25'),
(384, 'App\\Models\\User', 67, 'API TOKEN', '2f31e299c6dfe534d7dda659a91764aaf8a2495214d2318725c145f793889cfd', '[\"*\"]', '2022-10-20 16:41:28', NULL, '2022-10-20 16:41:26', '2022-10-20 16:41:28'),
(385, 'App\\Models\\User', 49, 'API TOKEN', '4e97dd8d81539fcdf9868a91c4f8d542435c6fd75accf4e570f0eb5ef33a6d92', '[\"*\"]', '2022-10-20 16:42:24', NULL, '2022-10-20 16:42:23', '2022-10-20 16:42:24'),
(386, 'App\\Models\\User', 49, 'API TOKEN', '7cf61111d6f61b9be5c3be09c6ed8983fa9ee2d92d6dec62dcd8c946007b0a52', '[\"*\"]', NULL, NULL, '2022-10-20 16:42:53', '2022-10-20 16:42:53'),
(387, 'App\\Models\\User', 67, 'API TOKEN', 'd3d2aeefb907e3989dc82e505100a6b6b95369e45398beed9e9a4af7b822547f', '[\"*\"]', '2022-10-20 16:45:24', NULL, '2022-10-20 16:45:24', '2022-10-20 16:45:24'),
(388, 'App\\Models\\User', 49, 'API TOKEN', '3225ef03f0458330bbe4baffc85ece887b022a78ca1e4b7d859ff1212aac20e6', '[\"*\"]', '2022-10-20 16:46:19', NULL, '2022-10-20 16:46:18', '2022-10-20 16:46:19'),
(389, 'App\\Models\\User', 49, 'API TOKEN', '3cb2d31cafd0fe8ea0ac4238b32aaa3dcb586d3965cb6a47804e130ab63e93ca', '[\"*\"]', NULL, NULL, '2022-10-20 17:51:00', '2022-10-20 17:51:00'),
(390, 'App\\Models\\User', 67, 'API TOKEN', 'dd96e508be6f9e2d4a008533300ffb38f1f762e6c21b82d0c5400d95c3b297e7', '[\"*\"]', '2022-10-20 17:52:02', NULL, '2022-10-20 17:51:39', '2022-10-20 17:52:02'),
(391, 'App\\Models\\User', 49, 'API TOKEN', '2d0ba32894782030eda94076dec182148d692cd8100a6d6591de850fb9fd48cb', '[\"*\"]', NULL, NULL, '2022-10-20 18:03:18', '2022-10-20 18:03:18'),
(392, 'App\\Models\\User', 49, 'API TOKEN', '1a0a2d9b0f347220b02f13867845435daccd610b99c697491b6752335e8b2912', '[\"*\"]', NULL, NULL, '2022-10-20 18:06:50', '2022-10-20 18:06:50'),
(393, 'App\\Models\\User', 67, 'API TOKEN', '326a6cd62c8491f3a46bf59e1144bc9f59b5653db470f35fdbc30b5404844938', '[\"*\"]', '2022-10-20 18:17:37', NULL, '2022-10-20 18:14:35', '2022-10-20 18:17:37'),
(394, 'App\\Models\\User', 67, 'API TOKEN', '317b842e208da1f641b3935fea8cc008c8fd0fa0904d7b84df2d0744cf708af7', '[\"*\"]', '2022-10-23 22:22:27', NULL, '2022-10-20 18:28:26', '2022-10-23 22:22:27'),
(395, 'App\\Models\\User', 67, 'API TOKEN', '3a2aa0f8ea9337e1a96952452c8ebc40218b6d6d5f571aa18421371d4f64c115', '[\"*\"]', NULL, NULL, '2022-10-20 19:02:41', '2022-10-20 19:02:41'),
(396, 'App\\Models\\User', 49, 'API TOKEN', '49cb0e1a108d878f7e8f107bab38bd92d989ac3c61b7c675b51afe8d48b2b2f8', '[\"*\"]', NULL, NULL, '2022-10-20 19:08:08', '2022-10-20 19:08:08'),
(397, 'App\\Models\\User', 49, 'API TOKEN', '1c1e343fe6d9e770d7e409dce287a3297e9ca520e3b8d2bfa4f0aee0a6a82dd0', '[\"*\"]', NULL, NULL, '2022-10-20 19:09:59', '2022-10-20 19:09:59'),
(398, 'App\\Models\\User', 67, 'API TOKEN', 'bc9755e7f809fe4a94724c318df753b8b86c7a26fc6648ef3679618cdaf74a01', '[\"*\"]', '2022-10-20 21:08:39', NULL, '2022-10-20 19:10:39', '2022-10-20 21:08:39'),
(399, 'App\\Models\\User', 49, 'API TOKEN', 'c847d906ac48d837d72169c2324bef91c2d1c1171326c05c8c0aa836797d312e', '[\"*\"]', NULL, NULL, '2022-10-20 19:11:21', '2022-10-20 19:11:21'),
(400, 'App\\Models\\User', 49, 'API TOKEN', '7ea14465522f2d270a6078461465cb0cf012a1d8ed77fc7895471b4d6102aac3', '[\"*\"]', NULL, NULL, '2022-10-20 19:17:02', '2022-10-20 19:17:02'),
(401, 'App\\Models\\User', 67, 'API TOKEN', 'f0fa3260f5fc50604c41345b81ff79c5aea4827ccad233c36970e185614cb4e8', '[\"*\"]', '2022-10-20 19:56:23', NULL, '2022-10-20 19:17:40', '2022-10-20 19:56:23'),
(402, 'App\\Models\\User', 49, 'API TOKEN', '46969d194d4829d11038d82f7cd3ed60526d1bf0b3b3f67601dc0ea9ecb98e04', '[\"*\"]', NULL, NULL, '2022-10-20 19:21:29', '2022-10-20 19:21:29'),
(403, 'App\\Models\\User', 49, 'API TOKEN', '508c5220877756a84386e41796d43ce9652c566b936f88c9e91e742697f00fcc', '[\"*\"]', NULL, NULL, '2022-10-20 19:25:32', '2022-10-20 19:25:32'),
(404, 'App\\Models\\User', 49, 'API TOKEN', 'c3e3d6fc7d650ede9681e320e3d9011b23241bf15c3c880ce9501fa03a6b215c', '[\"*\"]', NULL, NULL, '2022-10-20 19:32:09', '2022-10-20 19:32:09'),
(405, 'App\\Models\\User', 67, 'API TOKEN', '1be890dfac6a37c009180995f9b8f4fee8871fb76afb04b3ad5214bb9bd51718', '[\"*\"]', '2022-10-20 20:12:47', NULL, '2022-10-20 20:02:21', '2022-10-20 20:12:47'),
(406, 'App\\Models\\User', 49, 'API TOKEN', '3cb2ecdbd628119f3f83149f4e11aa8296ad55dc7158412c9e629b5847716f98', '[\"*\"]', NULL, NULL, '2022-10-20 20:27:16', '2022-10-20 20:27:16'),
(407, 'App\\Models\\User', 49, 'API TOKEN', 'e4c3be23f70b638feee574f7edd18e0043c8369ee5ee150f0074414575f43771', '[\"*\"]', NULL, NULL, '2022-10-20 20:34:52', '2022-10-20 20:34:52'),
(408, 'App\\Models\\User', 84, 'API TOKEN', 'a6fa06ee91607044267a308f7954482418322c839d09a8ba1da3d767083ce865', '[\"*\"]', NULL, NULL, '2022-10-20 21:10:00', '2022-10-20 21:10:00'),
(409, 'App\\Models\\User', 84, 'API TOKEN', '1e48bee619bd85914b11dd5c791906ec62bb936ba0d28d3fb98e8e1841bd5e9d', '[\"*\"]', '2022-10-20 21:42:32', NULL, '2022-10-20 21:10:36', '2022-10-20 21:42:32'),
(410, 'App\\Models\\User', 67, 'API TOKEN', 'dd27bf841c49955b3255f9d227051644edeefc4ae21f6a3826a07a70fcb30710', '[\"*\"]', '2022-10-20 21:20:20', NULL, '2022-10-20 21:12:52', '2022-10-20 21:20:20'),
(411, 'App\\Models\\User', 49, 'API TOKEN', 'd94d1fa1b3ea38229df4c025dfada89a7f6f6c6c0904c925718942fc074145c0', '[\"*\"]', NULL, NULL, '2022-10-20 21:21:50', '2022-10-20 21:21:50'),
(412, 'App\\Models\\User', 67, 'API TOKEN', '089aa4c7fd1d7d419e6052e62bc66d7a91d32b26edb4fa95ad3dc1c7a7dabbde', '[\"*\"]', '2022-10-20 21:29:32', NULL, '2022-10-20 21:21:50', '2022-10-20 21:29:32'),
(413, 'App\\Models\\User', 49, 'API TOKEN', 'b360450dddf9b591e7e968e4796d8a3bf5233decf232d030e4b4ac40ba7caa2e', '[\"*\"]', NULL, NULL, '2022-10-20 21:25:33', '2022-10-20 21:25:33'),
(414, 'App\\Models\\User', 49, 'API TOKEN', 'a5ea636e6e8a00810e20230d61b00a621516b8f748d383a9b40c9c9e2e9f256c', '[\"*\"]', NULL, NULL, '2022-10-20 21:27:19', '2022-10-20 21:27:19'),
(415, 'App\\Models\\User', 85, 'API TOKEN', 'a5e47993d1ca5287e0235d14ef2ba1b871ea21a69d16e5221c55d33291b7a001', '[\"*\"]', '2022-10-20 21:38:36', NULL, '2022-10-20 21:37:43', '2022-10-20 21:38:36'),
(416, 'App\\Models\\User', 85, 'API TOKEN', '1b8f04ba6cff1996b7fb6f3f8d7c3a14840ccda3118ed3c563fea8b9c4363374', '[\"*\"]', '2022-10-23 19:59:11', NULL, '2022-10-20 21:39:35', '2022-10-23 19:59:11'),
(417, 'App\\Models\\User', 84, 'API TOKEN', '0e92909910d8e5a4755bb30ee5695424bcc4a32b76099278c31eaeba0c12e41b', '[\"*\"]', '2022-10-20 21:43:16', NULL, '2022-10-20 21:43:15', '2022-10-20 21:43:16'),
(418, 'App\\Models\\User', 84, 'API TOKEN', 'a59118ad72b710d3e5ff86e77251a0d572db21ac1e66efcae7d6df40f3d211e0', '[\"*\"]', '2022-10-20 21:48:41', NULL, '2022-10-20 21:43:55', '2022-10-20 21:48:41'),
(419, 'App\\Models\\User', 67, 'API TOKEN', '2d9d7f686314a1fe292c482a201f3900d9a9e2319e6f81efc7138fbc7d7d490a', '[\"*\"]', '2022-10-20 21:50:37', NULL, '2022-10-20 21:49:24', '2022-10-20 21:50:37'),
(420, 'App\\Models\\User', 86, 'API TOKEN', '92d954065e4c77c7725d00f805fc58a3679126e955e1af2fc24791c3dde6df06', '[\"*\"]', NULL, NULL, '2022-10-20 21:51:28', '2022-10-20 21:51:28'),
(421, 'App\\Models\\User', 86, 'API TOKEN', '0a016ce25c9bdfe14f4ab9ce2862932d832f5e1c694a3fed9f393b2b7946efd2', '[\"*\"]', NULL, NULL, '2022-10-20 21:51:52', '2022-10-20 21:51:52'),
(422, 'App\\Models\\User', 87, 'API TOKEN', 'd4f53dd95b4f7bcf39efe7191dd4899a71a1e697f37931203f597b3c3713ccc3', '[\"*\"]', '2022-10-20 22:01:10', NULL, '2022-10-20 21:53:15', '2022-10-20 22:01:10'),
(423, 'App\\Models\\User', 88, 'API TOKEN', 'c11687d0ea084e2b05c5817f7dfe4d61a059544237221221605e350596691c52', '[\"*\"]', '2022-10-20 22:12:42', NULL, '2022-10-20 22:05:35', '2022-10-20 22:12:42'),
(424, 'App\\Models\\User', 81, 'API TOKEN', '77e1e74a6f056462b61cfcb628e5a01909486e1121dacedab1be128921827e2f', '[\"*\"]', '2022-10-24 15:52:25', NULL, '2022-10-20 22:05:38', '2022-10-24 15:52:25'),
(425, 'App\\Models\\User', 49, 'API TOKEN', '01856c5426e0cb017eef98897f83174fddd8aae0996ab297f0a1ed55da8e905a', '[\"*\"]', NULL, NULL, '2022-10-20 22:18:24', '2022-10-20 22:18:24'),
(426, 'App\\Models\\User', 67, 'API TOKEN', 'e87ce270386ba5316e8ad43a62c57034f383b41956f5bf0861aacb83f2912a28', '[\"*\"]', '2022-10-20 22:19:48', NULL, '2022-10-20 22:19:45', '2022-10-20 22:19:48'),
(427, 'App\\Models\\User', 67, 'API TOKEN', '9713e040e4126690492def3e5ecad9869f6b81c680b834dfc511b229dc2394c4', '[\"*\"]', '2022-10-20 22:27:54', NULL, '2022-10-20 22:27:51', '2022-10-20 22:27:54'),
(428, 'App\\Models\\User', 89, 'API TOKEN', '6c2e67f2cfbb1de986358c13b6db4e2bf73099f4a1e02d6756b3710b1352211d', '[\"*\"]', '2022-10-20 22:29:11', NULL, '2022-10-20 22:28:33', '2022-10-20 22:29:11'),
(429, 'App\\Models\\User', 90, 'API TOKEN', 'd4a948711925e46c08d7ba04b3a1bfcecd5e311780799dca98ed29c1c5b9472f', '[\"*\"]', '2022-10-20 22:30:28', NULL, '2022-10-20 22:29:42', '2022-10-20 22:30:28'),
(430, 'App\\Models\\User', 91, 'API TOKEN', '9c3ed9d02b8e05b4fecbbc4d8193cd194e4f576577b4e8eb3814b0d9f4981020', '[\"*\"]', '2022-10-22 04:05:19', NULL, '2022-10-20 22:31:08', '2022-10-22 04:05:19'),
(431, 'App\\Models\\User', 92, 'API TOKEN', '9325d78772058db4f254899d00dbde22c1c3083acfdb6ea019e19970f96fb678', '[\"*\"]', '2022-10-20 23:24:19', NULL, '2022-10-20 23:23:32', '2022-10-20 23:24:19'),
(432, 'App\\Models\\User', 67, 'API TOKEN', '113e9a213186afa26df8910da90d02832ba52a16c6f4a94dbd68c64be082e068', '[\"*\"]', '2022-10-20 23:27:13', NULL, '2022-10-20 23:25:27', '2022-10-20 23:27:13'),
(433, 'App\\Models\\User', 92, 'API TOKEN', 'c9b3fa9b6d7d3b21c03707338f8a4466bd94b2370b9d48090127ce007310a3de', '[\"*\"]', '2022-10-20 23:56:04', NULL, '2022-10-20 23:30:09', '2022-10-20 23:56:04'),
(434, 'App\\Models\\User', 92, 'API TOKEN', 'a801179ef7ecbd15e346c23aab7a1bb5eb5caf79000050cdd70b67a384addf80', '[\"*\"]', '2022-10-21 00:38:15', NULL, '2022-10-20 23:56:34', '2022-10-21 00:38:15'),
(435, 'App\\Models\\User', 67, 'API TOKEN', '0e5995e1368fed108bd84e5473b06941443f7d2852d4a931da696d28458dc88c', '[\"*\"]', '2022-10-21 00:14:52', NULL, '2022-10-21 00:14:50', '2022-10-21 00:14:52'),
(436, 'App\\Models\\User', 93, 'API TOKEN', 'fd1e14d8a615acc47a0b29e4d2f4ac9c02941950212f7c355b6c7f86a02d4448', '[\"*\"]', '2022-10-21 00:25:51', NULL, '2022-10-21 00:20:10', '2022-10-21 00:25:51'),
(437, 'App\\Models\\User', 67, 'API TOKEN', '6f6fad4d224ee26bcd664dc551ee73870f2c3f76569c799ae9c8c3c55e9faba1', '[\"*\"]', '2022-10-21 00:41:54', NULL, '2022-10-21 00:27:38', '2022-10-21 00:41:54'),
(438, 'App\\Models\\User', 92, 'API TOKEN', '4b47742fe0e98126b185957c9aa55aca2b272b9f5e2f012a4400b7de51145189', '[\"*\"]', '2022-10-21 00:39:20', NULL, '2022-10-21 00:38:50', '2022-10-21 00:39:20'),
(439, 'App\\Models\\User', 94, 'API TOKEN', '74b957a54758c7d26fe51d630fe976a3b405a94651b24fba6759bb6b4e820b24', '[\"*\"]', '2022-10-21 00:44:56', NULL, '2022-10-21 00:42:58', '2022-10-21 00:44:56'),
(440, 'App\\Models\\User', 95, 'API TOKEN', '8c5b0f4c5f9f0e782ef7467b0d387f4dbf16d3fded0131618a966ebb3befa78d', '[\"*\"]', '2022-10-21 00:53:15', NULL, '2022-10-21 00:50:20', '2022-10-21 00:53:15'),
(441, 'App\\Models\\User', 96, 'API TOKEN', '43cc80565ece5ec2c04b93b9bb9ec1673b35c8bdc58f4c47c64337d7466294d9', '[\"*\"]', '2022-10-21 01:01:17', NULL, '2022-10-21 01:00:15', '2022-10-21 01:01:17'),
(442, 'App\\Models\\User', 97, 'API TOKEN', '163af37a1a982f78b18133d42c01eadbdf458b2876d77139018be501dd61fabb', '[\"*\"]', '2022-10-21 01:10:56', NULL, '2022-10-21 01:07:12', '2022-10-21 01:10:56'),
(443, 'App\\Models\\User', 98, 'API TOKEN', '878f1e09e7a9a82d60bc5e6f458dd1dbc8f42ce7808f70fb533964afa1a47282', '[\"*\"]', '2022-10-21 01:16:00', NULL, '2022-10-21 01:14:28', '2022-10-21 01:16:00'),
(444, 'App\\Models\\User', 92, 'API TOKEN', 'fd5708dcad9441c3986931d6cb7c97a617fccaf05b7a911b4fffcd33b4c6f119', '[\"*\"]', '2022-10-24 01:04:52', NULL, '2022-10-21 01:31:15', '2022-10-24 01:04:52'),
(445, 'App\\Models\\User', 67, 'API TOKEN', '91dbd2e84b01419d14ef9fa5617c41d545590013cf6729ecdaf5ab42d3439181', '[\"*\"]', '2022-10-21 19:40:26', NULL, '2022-10-21 19:15:08', '2022-10-21 19:40:26'),
(446, 'App\\Models\\User', 71, 'API TOKEN', '0ddd0bfd2780ace8cc7955d060ab24a8999acb09c1f3e5cd09c46b9bb26fde2c', '[\"*\"]', '2022-10-23 20:17:44', NULL, '2022-10-21 22:49:32', '2022-10-23 20:17:44'),
(447, 'App\\Models\\User', 67, 'API TOKEN', '2ba36d5399b03636ee538f7b3989fccbaf1922719024bb131c511f4ad9f8b00e', '[\"*\"]', '2022-10-22 04:05:31', NULL, '2022-10-22 04:05:30', '2022-10-22 04:05:31'),
(448, 'App\\Models\\User', 67, 'API TOKEN', 'a3f042344c45125d8a4d82ff07cd3dc92675fc0c0e4b46a60fc4a6f357a02a2f', '[\"*\"]', '2022-10-22 04:34:43', NULL, '2022-10-22 04:34:29', '2022-10-22 04:34:43'),
(449, 'App\\Models\\User', 99, 'API TOKEN', '51581167d21a339a59f21d54118c7f8b7b8027d7c67d648fbe2c7f66f3e34949', '[\"*\"]', '2022-10-22 06:40:52', NULL, '2022-10-22 06:40:45', '2022-10-22 06:40:52'),
(450, 'App\\Models\\User', 100, 'API TOKEN', '4cb84b8f0b34eb1ef35439991e97bc1dd7ec4231ccca4d18f1d709173bb357f9', '[\"*\"]', '2022-10-23 15:18:25', NULL, '2022-10-23 15:05:02', '2022-10-23 15:18:25'),
(451, 'App\\Models\\User', 67, 'API TOKEN', 'e3c827472ddf1dbb050dbb714b7341859518f64e971d0c5da192cce771aa1ced', '[\"*\"]', '2022-10-23 15:08:40', NULL, '2022-10-23 15:08:39', '2022-10-23 15:08:40'),
(452, 'App\\Models\\User', 101, 'API TOKEN', 'dd1bb591b40e31e4e550131a73193d0a2dc8b7f782d1ae1100e237b6d1a7cc8a', '[\"*\"]', '2022-10-23 17:19:57', NULL, '2022-10-23 15:25:39', '2022-10-23 17:19:57'),
(453, 'App\\Models\\User', 67, 'API TOKEN', '9f63238ded6601a26932cc3fe448dadee9ef4ecd551af2980996c48fba894b2c', '[\"*\"]', '2022-10-23 19:26:03', NULL, '2022-10-23 17:11:54', '2022-10-23 19:26:03'),
(454, 'App\\Models\\User', 67, 'API TOKEN', '30d876e1d42847f5693ae25dcae983f8bd7e6f1648abeaec5d537adeb8fedb47', '[\"*\"]', '2022-10-23 20:53:01', NULL, '2022-10-23 17:12:37', '2022-10-23 20:53:01'),
(455, 'App\\Models\\User', 102, 'API TOKEN', 'ae52108e5d639ef46b3ba1be71b51fac8b6d01df3c82275d4bc64f8c03a843ad', '[\"*\"]', '2022-10-23 17:36:16', NULL, '2022-10-23 17:23:07', '2022-10-23 17:36:16'),
(456, 'App\\Models\\User', 102, 'API TOKEN', '9b912527b134a97c7115aa680f3740e2599797dbe3fc01ac7f32dab20de9be67', '[\"*\"]', '2022-10-23 19:07:54', NULL, '2022-10-23 17:37:24', '2022-10-23 19:07:54'),
(457, 'App\\Models\\User', 103, 'API TOKEN', '94aab177e7f810728cd96df304f48b96d4ba364968623ef32ddc9e959b1842c2', '[\"*\"]', '2022-10-23 19:34:48', NULL, '2022-10-23 19:26:48', '2022-10-23 19:34:48'),
(458, 'App\\Models\\User', 104, 'API TOKEN', 'eb2aa90afbfbc3e23e3cd7395ad8ed4577fdcfed1af5ef847eeaeaf4104c278f', '[\"*\"]', '2022-10-23 19:40:34', NULL, '2022-10-23 19:35:39', '2022-10-23 19:40:34'),
(459, 'App\\Models\\User', 105, 'API TOKEN', '47e1e832cc2f2062794f4d8e3320c46ae0b1ba6ab5226fbc5eb25e903e202aaa', '[\"*\"]', '2022-10-23 19:42:09', NULL, '2022-10-23 19:41:10', '2022-10-23 19:42:09'),
(460, 'App\\Models\\User', 67, 'API TOKEN', '8f06ab4eee51d6a28c6eeb6bfa8de29f0bc97db255ca5907828ed3a51c7244f9', '[\"*\"]', '2022-10-23 20:05:30', NULL, '2022-10-23 20:02:36', '2022-10-23 20:05:30'),
(461, 'App\\Models\\User', 67, 'API TOKEN', '2c2b288c02c32c43770a8f87b5ccabba8e9dbcbea3f47aef938c850f343efb0b', '[\"*\"]', NULL, NULL, '2022-10-23 20:10:13', '2022-10-23 20:10:13'),
(462, 'App\\Models\\User', 106, 'API TOKEN', 'f5e09bb3d89aabe95ffb4b1e17b9f6953a30354180d9dc41d6af115fab1383a6', '[\"*\"]', NULL, NULL, '2022-10-23 20:10:32', '2022-10-23 20:10:32'),
(463, 'App\\Models\\User', 106, 'API TOKEN', '02576f7236eab45a904722c412fd4bc030b0ba797efc0258e2bcce32c596e9cb', '[\"*\"]', '2022-10-23 20:53:37', NULL, '2022-10-23 20:10:48', '2022-10-23 20:53:37'),
(464, 'App\\Models\\User', 107, 'API TOKEN', '23a0599d0c18ee9b00e0f9d600fe89e117ac4f6a20f5ef3d95e3fa07a0f7c0d8', '[\"*\"]', '2022-10-23 20:21:34', NULL, '2022-10-23 20:20:34', '2022-10-23 20:21:34'),
(465, 'App\\Models\\User', 104, 'API TOKEN', '8d3960c8090039425e4c834d01c6ae7063817f047aba32b6b374a394f6a67459', '[\"*\"]', '2022-10-23 20:24:23', NULL, '2022-10-23 20:22:46', '2022-10-23 20:24:23'),
(466, 'App\\Models\\User', 108, 'API TOKEN', 'bae690474a21b1ab08ef4a272a6c04c421d7668fcdcef4565224f18b15e1f366', '[\"*\"]', '2022-10-23 20:26:07', NULL, '2022-10-23 20:24:54', '2022-10-23 20:26:07'),
(467, 'App\\Models\\User', 108, 'API TOKEN', '803cc3e4c74126ae369e037b1336dc21318dec20ab5e5fb093682a2267b8c9ba', '[\"*\"]', '2022-10-23 20:54:54', NULL, '2022-10-23 20:28:33', '2022-10-23 20:54:54'),
(468, 'App\\Models\\User', 108, 'API TOKEN', '8313025fb57616c46220009cb1d9a5a29ef39e29e9d88544a30e961d84163798', '[\"*\"]', '2022-10-23 21:37:33', NULL, '2022-10-23 20:49:31', '2022-10-23 21:37:33'),
(469, 'App\\Models\\User', 67, 'API TOKEN', 'e28be61ff1970cb5c1adeb530aa9e23ebe99311ad0672da2473a4ddf0469c091', '[\"*\"]', '2022-10-23 20:55:46', NULL, '2022-10-23 20:55:45', '2022-10-23 20:55:46'),
(470, 'App\\Models\\User', 67, 'API TOKEN', '8da3de149788c9bd8f8862f1592102f35b3b4d7fbda9a083915ca4f34759e1b1', '[\"*\"]', '2022-10-23 21:04:26', NULL, '2022-10-23 20:56:30', '2022-10-23 21:04:26'),
(471, 'App\\Models\\User', 67, 'API TOKEN', 'aa4bfada2f471bb141d6bfffd5a43268bc50f3a9aa97da6a5a32bb3bb6574358', '[\"*\"]', '2022-10-23 20:58:10', NULL, '2022-10-23 20:58:09', '2022-10-23 20:58:10'),
(472, 'App\\Models\\User', 109, 'API TOKEN', '8cc409ecc5c6dd04fbb1b14eca86ba509117c325dd3b28642cf4b7f350bd8c7d', '[\"*\"]', '2022-10-23 21:03:14', NULL, '2022-10-23 21:00:37', '2022-10-23 21:03:14'),
(473, 'App\\Models\\User', 109, 'API TOKEN', 'f05c288aa6375f9bc4df9c9ecf66682c318920adf6a603b617873d7fa7d0a277', '[\"*\"]', '2022-10-23 21:04:53', NULL, '2022-10-23 21:03:58', '2022-10-23 21:04:53'),
(474, 'App\\Models\\User', 109, 'API TOKEN', '15c04cef266bcda22e45fd0c979c126a36cf36ad9f78494a25d0365e8de3a5df', '[\"*\"]', '2022-10-23 21:07:20', NULL, '2022-10-23 21:07:05', '2022-10-23 21:07:20'),
(475, 'App\\Models\\User', 108, 'API TOKEN', '7ad23358dfa980f85a21887971ae32bfc9660a749f665d4def24497d2213ae7e', '[\"*\"]', '2022-10-23 21:08:33', NULL, '2022-10-23 21:07:53', '2022-10-23 21:08:33'),
(476, 'App\\Models\\User', 109, 'API TOKEN', 'fc209adcfaa16fca44ce186224075df94bb1ca9788e92e29ea970a396069e4a2', '[\"*\"]', NULL, NULL, '2022-10-23 21:09:17', '2022-10-23 21:09:17'),
(477, 'App\\Models\\User', 110, 'API TOKEN', '93b1541e2bbdae1bc4b1291224a94d388735f1d116cc61aaaa7a7d537a63493e', '[\"*\"]', NULL, NULL, '2022-10-23 21:16:03', '2022-10-23 21:16:03'),
(478, 'App\\Models\\User', 110, 'API TOKEN', '2e059c3471e3f63560bb122d3dc44d9131c3c2fdc28cbbeda85d06979e32f93a', '[\"*\"]', '2022-10-23 21:17:22', NULL, '2022-10-23 21:16:24', '2022-10-23 21:17:22'),
(479, 'App\\Models\\User', 108, 'API TOKEN', 'bd028199fa8361f2b71eae344f9b7cd99f10521ed98227e4f1e467b24e55beda', '[\"*\"]', '2022-10-23 21:31:56', NULL, '2022-10-23 21:30:27', '2022-10-23 21:31:56'),
(480, 'App\\Models\\User', 111, 'API TOKEN', '40a151447a86ad6a31dc61c9c279fa9a54f20f9403625e204cea580a4ab7b4e2', '[\"*\"]', '2022-10-23 21:33:23', NULL, '2022-10-23 21:32:43', '2022-10-23 21:33:23'),
(481, 'App\\Models\\User', 112, 'API TOKEN', '4858c68582ca013c10351ba3c7fa4403e29037d36ed8dfdbc1a1138e73f79fd9', '[\"*\"]', NULL, NULL, '2022-10-23 21:36:08', '2022-10-23 21:36:08'),
(482, 'App\\Models\\User', 112, 'API TOKEN', '8a8828349d76eecfb7b9db3c609950de587558b8e032c6e6975b9d488931cb40', '[\"*\"]', '2022-10-23 21:51:18', NULL, '2022-10-23 21:36:35', '2022-10-23 21:51:18'),
(483, 'App\\Models\\User', 113, 'API TOKEN', '185d50b91bdd1b050f6f90c7b7733033564f6994f188b0d51725cc981c66d922', '[\"*\"]', NULL, NULL, '2022-10-23 21:51:40', '2022-10-23 21:51:40'),
(484, 'App\\Models\\User', 113, 'API TOKEN', 'b4fac6cc1d54c78d54d7248a0ec2636485ed9a340bf62e77d4748328f02d69d2', '[\"*\"]', '2022-10-24 14:46:51', NULL, '2022-10-23 21:54:15', '2022-10-24 14:46:51'),
(485, 'App\\Models\\User', 114, 'API TOKEN', '4a2eda3abdc2ac2e4a80a04ceea7910bd219f3375bcf3ceac16498268dacb9e3', '[\"*\"]', '2022-10-23 22:00:13', NULL, '2022-10-23 21:59:01', '2022-10-23 22:00:13'),
(486, 'App\\Models\\User', 115, 'API TOKEN', 'e2bd870d3f81502a4f0d035d799b315a87ee5ce9a0eec7c68d352183232adde9', '[\"*\"]', '2022-10-24 00:00:10', NULL, '2022-10-23 23:32:59', '2022-10-24 00:00:10'),
(487, 'App\\Models\\User', 113, 'API TOKEN', '8c7c27e770ddeaaab142f5fe4bdf808a7aa7b01dd87b561e1660fdde8305d9b7', '[\"*\"]', '2022-10-24 00:39:31', NULL, '2022-10-24 00:16:35', '2022-10-24 00:39:31'),
(488, 'App\\Models\\User', 30, 'API TOKEN', '61fc1aebe2d09f8f274aa820bcc77faba0173f7105e9f4d1299c888368f17953', '[\"*\"]', '2022-10-24 01:06:24', NULL, '2022-10-24 01:05:36', '2022-10-24 01:06:24'),
(489, 'App\\Models\\User', 30, 'API TOKEN', '9dfd32271106d53ff7c7fac6ec85f8770b66918b775499e620ede669a9065a95', '[\"*\"]', '2022-10-24 14:41:16', NULL, '2022-10-24 01:14:05', '2022-10-24 14:41:16'),
(490, 'App\\Models\\User', 79, 'API TOKEN', 'bb66f876a9d7811355390b566db09be65d31a50e786ca3eb74bc70654a063bfe', '[\"*\"]', '2022-10-24 02:26:31', NULL, '2022-10-24 02:25:50', '2022-10-24 02:26:31'),
(491, 'App\\Models\\User', 116, 'API TOKEN', '7723a2f0ea11cea484525dddcccbb1d913991ea7e160beb9e753b10d5af1ccc9', '[\"*\"]', '2022-10-24 04:37:18', NULL, '2022-10-24 04:37:13', '2022-10-24 04:37:18'),
(492, 'App\\Models\\User', 67, 'API TOKEN', 'f6876661fd9e1b67aab33b1f1505a300569b05c087b8651d9b3da5f370d6a08b', '[\"*\"]', '2022-10-24 07:08:12', NULL, '2022-10-24 07:07:49', '2022-10-24 07:08:12'),
(493, 'App\\Models\\User', 30, 'API TOKEN', '4ac2ffd4979b3a5ae3c9e6d24920e11ad7153d5fad1e670e2dcc491bc6d9987c', '[\"*\"]', '2022-10-24 14:43:53', NULL, '2022-10-24 14:43:07', '2022-10-24 14:43:53'),
(494, 'App\\Models\\User', 30, 'API TOKEN', '3fcc4ac575cbe730d36eee25253440425184a8aff8cd82f022e67de557c529a2', '[\"*\"]', '2022-10-24 14:44:21', NULL, '2022-10-24 14:44:20', '2022-10-24 14:44:21'),
(495, 'App\\Models\\User', 30, 'API TOKEN', 'e5f750ccb6d472b0d47686a4769586e984b4012a4bceaee92dfcf04ab346cc3e', '[\"*\"]', '2022-10-24 14:51:22', NULL, '2022-10-24 14:45:10', '2022-10-24 14:51:22'),
(496, 'App\\Models\\User', 30, 'API TOKEN', '7c2062ec6ea01c1656117a3ebc2ed78fe3e36ff45b85cc6c92998cab8e201b2d', '[\"*\"]', '2022-10-24 17:14:47', NULL, '2022-10-24 14:53:00', '2022-10-24 17:14:47'),
(497, 'App\\Models\\User', 30, 'API TOKEN', 'f209280a0e1eaa8f96bb4260ec85ab2fca814a239c88d275cf2da19281985388', '[\"*\"]', '2022-10-24 14:59:23', NULL, '2022-10-24 14:59:05', '2022-10-24 14:59:23'),
(498, 'App\\Models\\User', 30, 'API TOKEN', '1da95584fbec9e73e3775e310b1c4bbd79897b52e054433ba7129dc9d3283247', '[\"*\"]', '2022-10-24 16:54:19', NULL, '2022-10-24 14:59:39', '2022-10-24 16:54:19'),
(499, 'App\\Models\\User', 92, 'API TOKEN', '062addb558596359a5e791426e1a74be82f9385afed9124203ccba5a4c670823', '[\"*\"]', '2022-10-24 15:01:31', NULL, '2022-10-24 15:01:09', '2022-10-24 15:01:31'),
(500, 'App\\Models\\User', 117, 'API TOKEN', '13d68135bb1112e436ce128dd6a9559838ddd570dec81df6e88b7c502e8cc17b', '[\"*\"]', '2022-10-24 23:03:44', NULL, '2022-10-24 16:10:51', '2022-10-24 23:03:44'),
(501, 'App\\Models\\User', 118, 'API TOKEN', '674634817a3a2200bd83b1f8854c5c999c8f79c3b0a2c3ea8131d5368028fcad', '[\"*\"]', '2022-10-24 16:21:07', NULL, '2022-10-24 16:21:05', '2022-10-24 16:21:07'),
(502, 'App\\Models\\User', 119, 'API TOKEN', 'b8211349763277b3167d269404a93f63687a9965a3f9661d53678f6f967d5515', '[\"*\"]', '2022-10-24 16:21:23', NULL, '2022-10-24 16:21:16', '2022-10-24 16:21:23'),
(503, 'App\\Models\\User', 71, 'API TOKEN', '45c9622987d85fee24dc6a9af99be9a840acc975f3bcf341db2773130832d6b0', '[\"*\"]', '2022-10-31 02:55:30', NULL, '2022-10-24 16:48:26', '2022-10-31 02:55:30'),
(504, 'App\\Models\\User', 79, 'API TOKEN', 'd1657555defc6b2abf558c9dbdd26b8a2f3e9806c53d426368fc9544246f1d4a', '[\"*\"]', '2022-10-24 16:55:51', NULL, '2022-10-24 16:54:23', '2022-10-24 16:55:51'),
(505, 'App\\Models\\User', 120, 'API TOKEN', 'd6c85d5e29c8cc4988d387c6db6ace30ae44636cb5e5d86f82b7e442869e31c7', '[\"*\"]', '2022-10-27 01:41:11', NULL, '2022-10-24 17:21:32', '2022-10-27 01:41:11'),
(506, 'App\\Models\\User', 121, 'API TOKEN', '4643225fd3f9cdd11c20201249dc6daa01b64ecc184c8cbb39236520fae2fcfc', '[\"*\"]', '2022-10-25 05:00:09', NULL, '2022-10-24 17:21:51', '2022-10-25 05:00:09'),
(507, 'App\\Models\\User', 122, 'API TOKEN', '1f5a0fe632290a129d16bdccc1567d133a262b3cf9eafb7b415d4c70fc13dc90', '[\"*\"]', NULL, NULL, '2022-10-24 17:26:20', '2022-10-24 17:26:20'),
(508, 'App\\Models\\User', 122, 'API TOKEN', '005c3babe81dd0ced231f05b3901aed81548cc6f6448fbf460ca005ea9d19103', '[\"*\"]', '2022-10-27 01:06:50', NULL, '2022-10-24 17:26:42', '2022-10-27 01:06:50'),
(509, 'App\\Models\\User', 122, 'API TOKEN', '097e10f038fcfb03cc929869b788a60bf1655961d8c98746c5394e1680097ac8', '[\"*\"]', '2022-10-24 17:56:38', NULL, '2022-10-24 17:28:41', '2022-10-24 17:56:38'),
(510, 'App\\Models\\User', 123, 'API TOKEN', '8c30c5fc7f5f526155482f3a5786371563ba5bfaa0826dbeb7a1f29542016c9f', '[\"*\"]', '2022-10-24 17:30:53', NULL, '2022-10-24 17:29:50', '2022-10-24 17:30:53'),
(511, 'App\\Models\\User', 123, 'API TOKEN', '1b1f9749c009916e3b4c818dccabb6195d1199dd918e78f435a3027293e740c4', '[\"*\"]', '2022-10-24 17:32:30', NULL, '2022-10-24 17:32:29', '2022-10-24 17:32:30'),
(512, 'App\\Models\\User', 123, 'API TOKEN', 'eae7fd9e83158881ba6b72b7a11abfbbf442b89be7a270685dc237e5a2c223bb', '[\"*\"]', '2022-10-24 17:32:56', NULL, '2022-10-24 17:32:51', '2022-10-24 17:32:56'),
(513, 'App\\Models\\User', 124, 'API TOKEN', '67b10a65d99aca1eacfe75dac3c5df9bb4fd0e7efecf865117ce014dc2ebdf91', '[\"*\"]', '2022-10-26 16:11:10', NULL, '2022-10-24 17:34:08', '2022-10-26 16:11:10'),
(514, 'App\\Models\\User', 126, 'API TOKEN', 'b682c5f423a4eaca80d0c6ccf4f1a4807bec1364cd84b18e1bd37bcb6783fb4f', '[\"*\"]', '2022-10-24 18:02:59', NULL, '2022-10-24 18:00:36', '2022-10-24 18:02:59'),
(515, 'App\\Models\\User', 122, 'API TOKEN', '11bcbc659a9b265d441680746b065b8eca6eaa364a125da8160fe0e71c189132', '[\"*\"]', '2022-10-27 01:07:09', NULL, '2022-10-24 18:01:31', '2022-10-27 01:07:09'),
(516, 'App\\Models\\User', 127, 'API TOKEN', '0ad78610d7938ea08aad93ae81b4a4f1ffdf87c631f2dd6f2918d17a9fc2c3ea', '[\"*\"]', '2022-10-24 19:30:42', NULL, '2022-10-24 18:12:14', '2022-10-24 19:30:42'),
(517, 'App\\Models\\User', 128, 'API TOKEN', '2e54bbdc04a51d74b27db22f0eefdc1433deba550b0c031dad04d134754b2b2a', '[\"*\"]', '2022-10-24 18:14:09', NULL, '2022-10-24 18:12:55', '2022-10-24 18:14:09');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(518, 'App\\Models\\User', 122, 'API TOKEN', 'c5844ddb46e547c2ef1046286f634d8fe737ac2a523f14a503f4112cfd4b8e5e', '[\"*\"]', '2022-10-24 18:27:46', NULL, '2022-10-24 18:27:20', '2022-10-24 18:27:46'),
(519, 'App\\Models\\User', 129, 'API TOKEN', '8b70a02164f2c5832c479502e173df68a7d796dc076069e41175e433ad0ad8eb', '[\"*\"]', '2022-10-24 18:38:41', NULL, '2022-10-24 18:38:35', '2022-10-24 18:38:41'),
(520, 'App\\Models\\User', 130, 'API TOKEN', '17c56bd3b6aa428278b37ad329fec0451fe51c8405a7d46495b5e8897625fbbe', '[\"*\"]', '2022-11-01 03:03:51', NULL, '2022-10-24 18:42:34', '2022-11-01 03:03:51'),
(521, 'App\\Models\\User', 131, 'API TOKEN', '86593ed6b7afdb6c5b51520c2f48ed421fc7be96beca82d84523143876bb69ee', '[\"*\"]', '2022-10-31 20:40:05', NULL, '2022-10-24 18:45:35', '2022-10-31 20:40:05'),
(522, 'App\\Models\\User', 122, 'API TOKEN', '5519b77df9dc5e0a4b1c7ed61b57ce3567f0975be74968a8988216bf49a9f096', '[\"*\"]', '2022-10-24 18:57:35', NULL, '2022-10-24 18:52:48', '2022-10-24 18:57:35'),
(523, 'App\\Models\\User', 132, 'API TOKEN', 'b34dc9236e63180d26cf37d46e197adb89e1f0e19b4174e2bb649626b8fafc55', '[\"*\"]', '2022-10-28 00:54:43', NULL, '2022-10-24 18:56:31', '2022-10-28 00:54:43'),
(524, 'App\\Models\\User', 133, 'API TOKEN', 'c6e8d3b22c9e1bda7ef20a0a5590a104f19eb677a92ab81aacc6bcb4e929ab83', '[\"*\"]', '2022-10-30 18:35:07', NULL, '2022-10-24 19:18:03', '2022-10-30 18:35:07'),
(525, 'App\\Models\\User', 134, 'API TOKEN', '7f681c30d8e6d6125b0d61ee9b01aae5f39af1f4034e080e7f8982706a3f1df9', '[\"*\"]', '2022-10-24 19:33:04', NULL, '2022-10-24 19:33:02', '2022-10-24 19:33:04'),
(526, 'App\\Models\\User', 135, 'API TOKEN', 'bd577f5e372947e5d429d1441e2353ee244d294fb3680500e3cadcb29d5f24b0', '[\"*\"]', '2022-10-24 19:42:20', NULL, '2022-10-24 19:42:18', '2022-10-24 19:42:20'),
(527, 'App\\Models\\User', 136, 'API TOKEN', 'd047e9fff4cc9bc36835392207e3a622c24cca791aee40930754f9d795e7534d', '[\"*\"]', '2022-10-26 17:01:50', NULL, '2022-10-24 20:19:43', '2022-10-26 17:01:50'),
(528, 'App\\Models\\User', 137, 'API TOKEN', '15694a352e84bd3b9b0ce546dd0abd065b07c5966078afc849bdb072721e9f93', '[\"*\"]', '2022-11-01 21:07:40', NULL, '2022-10-24 20:27:35', '2022-11-01 21:07:40'),
(529, 'App\\Models\\User', 138, 'API TOKEN', '8b218b801329f67bb7cf7f14514b9abaff1f04ae850fedc025ea81e90281179d', '[\"*\"]', '2022-10-24 20:32:17', NULL, '2022-10-24 20:32:14', '2022-10-24 20:32:17'),
(530, 'App\\Models\\User', 139, 'API TOKEN', '2a68b38c0673874b6d996e4ddce862f10c8a7f766983c4a8e8fe3afd9f55c811', '[\"*\"]', '2022-10-24 20:32:55', NULL, '2022-10-24 20:32:53', '2022-10-24 20:32:55'),
(531, 'App\\Models\\User', 140, 'API TOKEN', '1df927150c332ae4268e2cc5a82bbc392a0d24cf90fa297a0444e86710c2fd7f', '[\"*\"]', '2022-10-24 20:33:38', NULL, '2022-10-24 20:33:35', '2022-10-24 20:33:38'),
(532, 'App\\Models\\User', 141, 'API TOKEN', '9873ef1fa096e7c5e29857e780b51e37305b7be9b4360b90ff47e46af350f6a7', '[\"*\"]', '2022-10-24 21:30:05', NULL, '2022-10-24 20:38:12', '2022-10-24 21:30:05'),
(533, 'App\\Models\\User', 122, 'API TOKEN', '2086892da927c2afd9a6751aeb17b8d88024fcb961053b7ac6352d9e4de7985c', '[\"*\"]', '2022-10-24 20:45:33', NULL, '2022-10-24 20:45:06', '2022-10-24 20:45:33'),
(534, 'App\\Models\\User', 142, 'API TOKEN', 'a1c8e56eb6c94f5d32dd5f6bf4c499268d5e14b29af4599536b6c5f64be3eaa0', '[\"*\"]', '2022-10-24 21:52:53', NULL, '2022-10-24 20:56:23', '2022-10-24 21:52:53'),
(535, 'App\\Models\\User', 143, 'API TOKEN', '3e43c99e336f532cf9860e2bd5f7efbf100a80897bb2032546413ec33a6e9e64', '[\"*\"]', '2022-10-24 21:20:36', NULL, '2022-10-24 21:06:26', '2022-10-24 21:20:36'),
(536, 'App\\Models\\User', 122, 'API TOKEN', '4b34ee9ea738dcd1770600466ccee103b02f3b267e044b133fad019d4551157c', '[\"*\"]', '2022-10-24 22:03:18', NULL, '2022-10-24 21:11:25', '2022-10-24 22:03:18'),
(537, 'App\\Models\\User', 144, 'API TOKEN', 'e46b706cb34ecc1fa18e429378a13a6d3064ea130d9dfaab47cf5426b4b5e925', '[\"*\"]', '2022-10-24 21:21:33', NULL, '2022-10-24 21:18:51', '2022-10-24 21:21:33'),
(538, 'App\\Models\\User', 123, 'API TOKEN', '0c18bbe892522d3cd5cae4ede78c22cd3517486d0e68f74ca3b0b638e93ef60c', '[\"*\"]', NULL, NULL, '2022-10-24 21:26:33', '2022-10-24 21:26:33'),
(539, 'App\\Models\\User', 122, 'API TOKEN', 'dd55ee65575fe014e26120bee585727f9e1d6b183094b74403564731fa718056', '[\"*\"]', '2022-10-26 21:52:16', NULL, '2022-10-24 21:54:53', '2022-10-26 21:52:16'),
(540, 'App\\Models\\User', 145, 'API TOKEN', '58cd68ce0318c4c4b7cea493f77322e9f30feac0b46366597527179f97d10b39', '[\"*\"]', '2022-10-25 02:12:56', NULL, '2022-10-24 22:03:27', '2022-10-25 02:12:56'),
(541, 'App\\Models\\User', 146, 'API TOKEN', '8b86a6e5c811226a222831da39a38aaa35743a8cb9eecab4d7705b5031185956', '[\"*\"]', '2022-10-30 18:47:47', NULL, '2022-10-24 23:24:24', '2022-10-30 18:47:47'),
(542, 'App\\Models\\User', 147, 'API TOKEN', 'ccba5b92fe9700847be839c5ba3d44f73240bbb2358e0cebc240afc9e185b2bb', '[\"*\"]', '2022-10-24 23:48:58', NULL, '2022-10-24 23:39:55', '2022-10-24 23:48:58'),
(543, 'App\\Models\\User', 148, 'API TOKEN', '5569b482ed21d5d60fdae977f976a1b15f0b529d4766e690579e05432f4dcca9', '[\"*\"]', '2022-10-30 15:57:43', NULL, '2022-10-25 00:02:36', '2022-10-30 15:57:43'),
(544, 'App\\Models\\User', 122, 'API TOKEN', '7a6ca11f7fbe59c564cac301693c7d299f7b265102490ab4443597dbcb444754', '[\"*\"]', '2022-10-25 00:31:50', NULL, '2022-10-25 00:30:46', '2022-10-25 00:31:50'),
(545, 'App\\Models\\User', 149, 'API TOKEN', '0dc93c681fcf326b26a298272d0faadb49406e4406f4a61eee354c9e5f1370ee', '[\"*\"]', '2022-10-25 01:31:46', NULL, '2022-10-25 00:32:51', '2022-10-25 01:31:46'),
(546, 'App\\Models\\User', 150, 'API TOKEN', '07ef42aaa69fc9dda763417acb00ca5aeb79d3b9a60b1f7afd5ac89a0f9ba1f6', '[\"*\"]', '2022-10-30 01:48:33', NULL, '2022-10-25 00:40:43', '2022-10-30 01:48:33'),
(547, 'App\\Models\\User', 151, 'API TOKEN', '2fd3cbcc8bdea5a2ef0d5035588b0c6c690831999a6fcbdbc3048a0475310722', '[\"*\"]', '2022-10-25 00:53:51', NULL, '2022-10-25 00:47:07', '2022-10-25 00:53:51'),
(548, 'App\\Models\\User', 152, 'API TOKEN', 'f166c8b47a61794745200cf58c66542fe26ef3a6bd057e4770c081cd29f86c52', '[\"*\"]', '2022-11-01 00:07:02', NULL, '2022-10-25 01:20:54', '2022-11-01 00:07:02'),
(549, 'App\\Models\\User', 153, 'API TOKEN', '60dfe71127cb4b9e3ed7e6c96e0c021ff17602ab141390e3865138eedc6c982a', '[\"*\"]', '2022-10-25 16:12:31', NULL, '2022-10-25 01:43:57', '2022-10-25 16:12:31'),
(550, 'App\\Models\\User', 154, 'API TOKEN', 'e1be232c91707ebb075aa69b7ccad0c49135ada0e09cb5cd35fd153422fb33fc', '[\"*\"]', '2022-10-25 02:00:09', NULL, '2022-10-25 01:59:57', '2022-10-25 02:00:09'),
(551, 'App\\Models\\User', 154, 'API TOKEN', '38518d8c0158aa28ac2e665f1db0a268206e67f7106f0a7668be59aa7d71d468', '[\"*\"]', '2022-10-25 02:01:35', NULL, '2022-10-25 02:01:17', '2022-10-25 02:01:35'),
(552, 'App\\Models\\User', 154, 'API TOKEN', '916fd234ef9ebe289aa69cf69f8bc390612a187910f974caff9605a42ad186de', '[\"*\"]', '2022-10-25 21:36:04', NULL, '2022-10-25 02:01:17', '2022-10-25 21:36:04'),
(553, 'App\\Models\\User', 155, 'API TOKEN', '5d5850839ccca0298ba763989e5d6fe43f86edbd1a68c97e9737d6c30b729b7f', '[\"*\"]', '2022-10-30 04:50:27', NULL, '2022-10-25 04:08:30', '2022-10-30 04:50:27'),
(554, 'App\\Models\\User', 156, 'API TOKEN', '94a9302a9ab3c589cd4161e6711f0269e25ff56ed1450dca533ca8500ac5d481', '[\"*\"]', '2022-10-31 21:09:00', NULL, '2022-10-25 04:24:07', '2022-10-31 21:09:00'),
(555, 'App\\Models\\User', 157, 'API TOKEN', '1136bbf6116d48a7e59198d8486b8ee7c4f369280b0a0371faaac5022ce7a607', '[\"*\"]', '2022-10-25 14:22:39', NULL, '2022-10-25 14:22:34', '2022-10-25 14:22:39'),
(556, 'App\\Models\\User', 158, 'API TOKEN', '7d1069e0a12c747bfde57dc26759bbaa42fc0e17c9893c1ca2a2edf90b607ba9', '[\"*\"]', '2022-10-25 14:53:38', NULL, '2022-10-25 14:53:36', '2022-10-25 14:53:38'),
(557, 'App\\Models\\User', 160, 'API TOKEN', 'a695516ee5fd33f99520585dd22ad8140302035f15676f81d1f72c252069aeef', '[\"*\"]', '2022-10-25 15:03:50', NULL, '2022-10-25 15:03:50', '2022-10-25 15:03:50'),
(558, 'App\\Models\\User', 161, 'API TOKEN', 'e37b1d98492ec8b7a66f5a7b9df4eb3f34aeb12b7a2cd69eb903d6e539e906d3', '[\"*\"]', '2022-10-25 15:04:12', NULL, '2022-10-25 15:04:11', '2022-10-25 15:04:12'),
(559, 'App\\Models\\User', 162, 'API TOKEN', 'd57a9f164087eaa2151fff324e59dd8a5baefc1117d093212ef41904d0c1a3e5', '[\"*\"]', '2022-10-25 15:29:47', NULL, '2022-10-25 15:29:40', '2022-10-25 15:29:47'),
(560, 'App\\Models\\User', 163, 'API TOKEN', '825d895ce60b746697cfcccaa77d022fb795140ecce047c05b7f3e3abd52d951', '[\"*\"]', '2022-10-25 20:28:50', NULL, '2022-10-25 16:12:58', '2022-10-25 20:28:50'),
(561, 'App\\Models\\User', 164, 'API TOKEN', '66a18df1cb3ffb6fa4b71e3bd9678557ea7c39bc2a02673f27614c6828643c5a', '[\"*\"]', '2022-10-25 18:34:53', NULL, '2022-10-25 17:09:08', '2022-10-25 18:34:53'),
(562, 'App\\Models\\User', 165, 'API TOKEN', '6cd8bca41401d99178a46a4d8e1e39bb16e5ef308b7addc65c23666bf6b84f4a', '[\"*\"]', '2022-10-25 18:32:50', NULL, '2022-10-25 17:09:23', '2022-10-25 18:32:50'),
(563, 'App\\Models\\User', 71, 'API TOKEN', '7d6d8dabd0309583f574c63372b260445be045204019dfbfbe49c8603c3b3fee', '[\"*\"]', '2022-10-25 17:35:13', NULL, '2022-10-25 17:34:49', '2022-10-25 17:35:13'),
(564, 'App\\Models\\User', 166, 'API TOKEN', '1774221111ad925bb0656f96a0a443038a5cf5dba00cb262f95bc485275e4049', '[\"*\"]', '2022-10-25 18:36:03', NULL, '2022-10-25 18:34:32', '2022-10-25 18:36:03'),
(565, 'App\\Models\\User', 167, 'API TOKEN', '87019a18a5171a05b11f71644b18bdb60c302b88717ae2e553fabb0af27e5355', '[\"*\"]', '2022-10-25 21:20:03', NULL, '2022-10-25 18:36:20', '2022-10-25 21:20:03'),
(566, 'App\\Models\\User', 168, 'API TOKEN', 'e49e1eb7cdb3eaf5728253531bcad8a6f5194d8571c1a167ce482e2089c97bb8', '[\"*\"]', '2022-10-25 20:50:45', NULL, '2022-10-25 19:19:05', '2022-10-25 20:50:45'),
(567, 'App\\Models\\User', 122, 'API TOKEN', 'af066073e9d088451c9f1dc0fbde4114927c3e764ab4d13c7ad98fe4e8b7810a', '[\"*\"]', '2022-10-26 18:58:09', NULL, '2022-10-25 20:38:29', '2022-10-26 18:58:09'),
(568, 'App\\Models\\User', 169, 'API TOKEN', '980e201183a3c6ed6906999b3ad3f93d01946d3951fb4eb21a5431b760209626', '[\"*\"]', '2022-10-25 21:34:31', NULL, '2022-10-25 21:01:19', '2022-10-25 21:34:31'),
(569, 'App\\Models\\User', 170, 'API TOKEN', 'bb19a56b5f9a557ea922bb5fc9b17d1e9bcbb94b48acaec965504934b8e3d1d5', '[\"*\"]', '2022-10-25 21:36:26', NULL, '2022-10-25 21:36:23', '2022-10-25 21:36:26'),
(570, 'App\\Models\\User', 170, 'API TOKEN', '2ea3214652a0a5e837b4e94573637550e19f65bd7ec53e5d97af4f00eeeea75f', '[\"*\"]', '2022-10-25 21:38:14', NULL, '2022-10-25 21:37:18', '2022-10-25 21:38:14'),
(571, 'App\\Models\\User', 170, 'API TOKEN', 'b672045d8fcaaa62699c017475863b703d36e17611c0a6a7a3628254062b3761', '[\"*\"]', '2022-10-26 20:42:49', NULL, '2022-10-25 21:38:50', '2022-10-26 20:42:49'),
(572, 'App\\Models\\User', 171, 'API TOKEN', 'f98203a0d6b1c6bb65fec8d777ee7d5121dd4ed61c7aa293d55f0f51239518fc', '[\"*\"]', '2022-10-25 22:04:14', NULL, '2022-10-25 21:39:37', '2022-10-25 22:04:14'),
(573, 'App\\Models\\User', 167, 'API TOKEN', '02c44132c7d14c010ad54b196f386c5970821d31eab099c727c6539f961187df', '[\"*\"]', '2022-10-25 22:02:00', NULL, '2022-10-25 21:57:15', '2022-10-25 22:02:00'),
(574, 'App\\Models\\User', 171, 'API TOKEN', '6e9cad0fac62802341343fb62426d822766cd1dd2ea5026c9ee8df55838a6e99', '[\"*\"]', '2022-10-26 17:41:03', NULL, '2022-10-25 22:07:34', '2022-10-26 17:41:03'),
(575, 'App\\Models\\User', 172, 'API TOKEN', '46a4df171922e812e77f9c9fd9ac2b1187a027744f0e25c098b61c20b11d78bd', '[\"*\"]', '2022-10-25 22:51:37', NULL, '2022-10-25 22:50:08', '2022-10-25 22:51:37'),
(576, 'App\\Models\\User', 173, 'API TOKEN', '10ceb810e83825ccacc567dfd827bd5394eac07ae30a5078804d609117b19510', '[\"*\"]', '2022-10-27 02:47:53', NULL, '2022-10-25 23:12:59', '2022-10-27 02:47:53'),
(577, 'App\\Models\\User', 174, 'API TOKEN', '91730cf016ac8cc8743ba5ed62d2c7ae964f9a40166c3a3bef7e625b06a490f4', '[\"*\"]', '2022-10-25 23:28:00', NULL, '2022-10-25 23:21:37', '2022-10-25 23:28:00'),
(578, 'App\\Models\\User', 175, 'API TOKEN', 'e8b954b07acdf6dfb939eb7d5d96c7a62fd984da136ffcfdd5ed74e95bb678ec', '[\"*\"]', '2022-10-27 06:38:21', NULL, '2022-10-26 00:56:55', '2022-10-27 06:38:21'),
(579, 'App\\Models\\User', 176, 'API TOKEN', '6220d04682bca4836ffd07cd75eaa997c3ffab9ffeaa587a01b39caaee7b9bb8', '[\"*\"]', '2022-10-28 20:47:41', NULL, '2022-10-26 01:41:33', '2022-10-28 20:47:41'),
(580, 'App\\Models\\User', 177, 'API TOKEN', 'ec21e39b5a26f130eb18db8a6b022c79eb172cab0e2448306f0da261b9333a85', '[\"*\"]', '2022-10-30 01:21:38', NULL, '2022-10-26 03:02:52', '2022-10-30 01:21:38'),
(581, 'App\\Models\\User', 178, 'API TOKEN', '925a8e140f7b40e59703d2b915a5783ff329dc1495f83b9ddf1aa83ad2d42e73', '[\"*\"]', '2022-10-30 13:16:02', NULL, '2022-10-26 03:26:11', '2022-10-30 13:16:02'),
(582, 'App\\Models\\User', 179, 'API TOKEN', 'daf04fcf316f977a6b1139938cdf3b0f62199de6cc69cfe6c4bc2129801abeb1', '[\"*\"]', '2022-10-26 04:20:03', NULL, '2022-10-26 04:13:22', '2022-10-26 04:20:03'),
(583, 'App\\Models\\User', 180, 'API TOKEN', '7f215739479e7a76f609f614c68d7d0713c539777e6ee643647c80148df7a54b', '[\"*\"]', NULL, NULL, '2022-10-26 15:37:54', '2022-10-26 15:37:54'),
(584, 'App\\Models\\User', 122, 'API TOKEN', '47a383ac160a1e4f6cf0621648284c89fbb310c6718528fc103cf2ce83bdf5d7', '[\"*\"]', NULL, NULL, '2022-10-26 15:39:37', '2022-10-26 15:39:37'),
(585, 'App\\Models\\User', 122, 'API TOKEN', '2409669d3af5f857356a709d33f887e661fcc10eb878772ead06884fca91c285', '[\"*\"]', '2022-10-26 15:41:32', NULL, '2022-10-26 15:40:01', '2022-10-26 15:41:32'),
(586, 'App\\Models\\User', 174, 'API TOKEN', '0ee5650aa6fc16373e22197734781dff93e3ad9d989739d133b98b4077e8c9c6', '[\"*\"]', '2022-10-26 21:47:10', NULL, '2022-10-26 15:44:46', '2022-10-26 21:47:10'),
(587, 'App\\Models\\User', 174, 'API TOKEN', '3459c0e808ef0b5c4ed1994a7f49ab1c9c5fd3c548ef99aa50c6c64692550410', '[\"*\"]', '2022-10-26 15:45:21', NULL, '2022-10-26 15:45:15', '2022-10-26 15:45:21'),
(588, 'App\\Models\\User', 122, 'API TOKEN', 'edf8501f2cd7e101621e200d1d573030f3c3b4b15dd327c5225147ee12794d15', '[\"*\"]', '2022-10-26 15:47:08', NULL, '2022-10-26 15:47:01', '2022-10-26 15:47:08'),
(589, 'App\\Models\\User', 183, 'API TOKEN', '3f2e07dab699e7f0a7a84d1ed24c3d432bf5a063e100bfcffac1e9fc4178274f', '[\"*\"]', '2022-10-26 16:25:45', NULL, '2022-10-26 15:57:02', '2022-10-26 16:25:45'),
(590, 'App\\Models\\User', 184, 'API TOKEN', 'f5c053c970727dd1be5d342983b54f0958d0a13372b98b59577c3d41b0bd5307', '[\"*\"]', '2022-10-26 16:27:43', NULL, '2022-10-26 16:26:30', '2022-10-26 16:27:43'),
(591, 'App\\Models\\User', 185, 'API TOKEN', '814f712a07ea8269cc988b1c1eb07440ecf22195d493947b10db401f8df50c3d', '[\"*\"]', '2022-10-26 17:07:55', NULL, '2022-10-26 16:53:46', '2022-10-26 17:07:55'),
(592, 'App\\Models\\User', 186, 'API TOKEN', '90474ad666929890f8979355e41cbe981a8a638c5a4deb77e2d8ea4ccb48c3b7', '[\"*\"]', '2022-10-26 17:42:35', NULL, '2022-10-26 17:42:34', '2022-10-26 17:42:35'),
(593, 'App\\Models\\User', 186, 'API TOKEN', 'cf0420ea0c6c6b75ab044c37e8d706719569e19c5e1898fcb04f27d709f94d0e', '[\"*\"]', '2022-10-26 17:43:36', NULL, '2022-10-26 17:43:35', '2022-10-26 17:43:36'),
(594, 'App\\Models\\User', 186, 'API TOKEN', '3c3863fbfd93457fe5f814f9984eb2e52a2c601e6e620e0a93e68fdab7ee8010', '[\"*\"]', NULL, NULL, '2022-10-26 17:44:57', '2022-10-26 17:44:57'),
(595, 'App\\Models\\User', 186, 'API TOKEN', 'eeb9c36bd893f1eebdfa5d117a8c5c23351089ff8f4b2d5859774eb58be7f6a7', '[\"*\"]', '2022-10-26 17:45:11', NULL, '2022-10-26 17:45:10', '2022-10-26 17:45:11'),
(596, 'App\\Models\\User', 186, 'API TOKEN', 'ca513803519ff758c819b445ba7036335f70b1f3ddfb3a382d591073121cf222', '[\"*\"]', '2022-10-26 17:47:32', NULL, '2022-10-26 17:47:32', '2022-10-26 17:47:32'),
(597, 'App\\Models\\User', 122, 'API TOKEN', '9b57c2c02bcf4d18b4018e5c74fe299fcbcf3da1f2622ba4be92ed4b8615eeca', '[\"*\"]', '2022-10-26 18:59:03', NULL, '2022-10-26 18:08:16', '2022-10-26 18:59:03'),
(598, 'App\\Models\\User', 187, 'API TOKEN', '53b250342c315a5444f4a60e39a15ff4c64d6ab1864cf3dd6ed6fceb74422b04', '[\"*\"]', '2022-10-26 18:14:29', NULL, '2022-10-26 18:14:27', '2022-10-26 18:14:29'),
(599, 'App\\Models\\User', 188, 'API TOKEN', '30bd903778465dd2c5c515b6e34d81096bd3bd0d34eaa90b324713f29669eb42', '[\"*\"]', '2022-10-26 18:21:31', NULL, '2022-10-26 18:19:45', '2022-10-26 18:21:31'),
(600, 'App\\Models\\User', 189, 'API TOKEN', '895fa602c9193d114dc7680dcfc8b0e72e0085ae8d33cbb6034774bd5318bd78', '[\"*\"]', '2022-10-26 18:31:21', NULL, '2022-10-26 18:23:21', '2022-10-26 18:31:21'),
(601, 'App\\Models\\User', 122, 'API TOKEN', '92d14642b18c652a9341fece2f67ce31b768310fc45e5c7a03d9649b96854e51', '[\"*\"]', '2022-10-26 18:27:59', NULL, '2022-10-26 18:25:24', '2022-10-26 18:27:59'),
(602, 'App\\Models\\User', 190, 'API TOKEN', 'e4c5eb3422bd4afcd68958e56005df1506aa9f0018f8f72fddbcbffc67bcdd6e', '[\"*\"]', '2022-10-26 18:35:21', NULL, '2022-10-26 18:35:19', '2022-10-26 18:35:21'),
(603, 'App\\Models\\User', 188, 'API TOKEN', 'f42671190d4b79b2a5f99df1e66f6de7b48df01155dd8659ec0704384a259099', '[\"*\"]', '2022-10-26 18:51:40', NULL, '2022-10-26 18:50:39', '2022-10-26 18:51:40'),
(604, 'App\\Models\\User', 122, 'API TOKEN', 'f22f116d2f272c1e6eb22c486bd0a46e82be630336746b9e2b9b549a74eae115', '[\"*\"]', '2022-10-27 19:41:16', NULL, '2022-10-26 18:51:41', '2022-10-27 19:41:16'),
(605, 'App\\Models\\User', 190, 'API TOKEN', 'dec88f862fd31d8695805e0e6b66837fe6f01f537f67eae1b34e3d20fe89ac11', '[\"*\"]', '2022-10-26 18:51:54', NULL, '2022-10-26 18:51:53', '2022-10-26 18:51:54'),
(606, 'App\\Models\\User', 189, 'API TOKEN', 'de1cd951fcabd9aff1f633dbb2861565efaaa5cea4c2f9b259d1cf76a084c152', '[\"*\"]', '2022-10-26 18:53:16', NULL, '2022-10-26 18:52:31', '2022-10-26 18:53:16'),
(607, 'App\\Models\\User', 191, 'API TOKEN', '3fe2f6ee85812049b636f64aab12ae22cb8c2a345b16d71ca0051ba041a3401d', '[\"*\"]', '2022-10-26 18:56:58', NULL, '2022-10-26 18:54:00', '2022-10-26 18:56:58'),
(608, 'App\\Models\\User', 191, 'API TOKEN', 'ddb5d682faf62cb2241e16dcb79fc1172fabce10c2cce4d441992c5258990878', '[\"*\"]', '2022-10-26 18:58:32', NULL, '2022-10-26 18:57:25', '2022-10-26 18:58:32'),
(609, 'App\\Models\\User', 192, 'API TOKEN', 'b95c948302c4f22a7afa976c141cd3ee110d241300bb014623af66d1acb1bfeb', '[\"*\"]', '2022-10-26 19:03:09', NULL, '2022-10-26 18:59:37', '2022-10-26 19:03:09'),
(610, 'App\\Models\\User', 193, 'API TOKEN', '83526e057cfafeb17836bb245066be017477e52330df757529908697568a763c', '[\"*\"]', '2022-10-26 19:17:22', NULL, '2022-10-26 19:17:18', '2022-10-26 19:17:22'),
(611, 'App\\Models\\User', 194, 'API TOKEN', 'b1e6a6c23cf913e794f303569fa25404e897aede8f0bb779ca0c27dbea047e8a', '[\"*\"]', '2022-10-26 19:36:11', NULL, '2022-10-26 19:35:31', '2022-10-26 19:36:11'),
(612, 'App\\Models\\User', 195, 'API TOKEN', 'a1d82c980c2c02756eb23330d5cbda78d7ff3e48c32b9244c7525558c0c1c44b', '[\"*\"]', '2022-10-26 20:43:15', NULL, '2022-10-26 19:44:56', '2022-10-26 20:43:15'),
(613, 'App\\Models\\User', 196, 'API TOKEN', 'efcd2e37dce63f5da6de94cf9a9d9af4e37dba59ad459e750074698da1af88df', '[\"*\"]', '2022-10-26 20:25:46', NULL, '2022-10-26 19:54:06', '2022-10-26 20:25:46'),
(614, 'App\\Models\\User', 197, 'API TOKEN', '102d9cffd0955945feb2f21b4020bec12921aefdce37ac4dc5470534a8812298', '[\"*\"]', '2022-10-26 21:56:14', NULL, '2022-10-26 20:34:14', '2022-10-26 21:56:14'),
(615, 'App\\Models\\User', 198, 'API TOKEN', '6c82634a4c77d29232ee67dc546b2351e4c424ef4c6bf80c95c883df06adccdc', '[\"*\"]', '2022-10-26 20:53:35', NULL, '2022-10-26 20:44:14', '2022-10-26 20:53:35'),
(616, 'App\\Models\\User', 199, 'API TOKEN', '29aed0211741efd704a20a5db203b930eb5b68dad7ca00a46a83b3b85c4ca67e', '[\"*\"]', '2022-10-26 20:45:47', NULL, '2022-10-26 20:44:32', '2022-10-26 20:45:47'),
(617, 'App\\Models\\User', 200, 'API TOKEN', '58bd316dab02b691fbc03b28b3ffe87e5dc704a0726c16e403a4a5e31a116eb7', '[\"*\"]', '2022-10-26 21:57:07', NULL, '2022-10-26 20:55:46', '2022-10-26 21:57:07'),
(618, 'App\\Models\\User', 199, 'API TOKEN', 'e0d282882daaa1b01b968bdfec6e61a2957082449bbb1bd2c94f3549ae7f7e17', '[\"*\"]', '2022-10-27 00:26:17', NULL, '2022-10-26 20:56:06', '2022-10-27 00:26:17'),
(619, 'App\\Models\\User', 201, 'API TOKEN', 'f94ade214ae5295a573b55dc6fc689f816e65d95663f1b42eb8df8f05faa69e8', '[\"*\"]', '2022-10-26 23:34:55', NULL, '2022-10-26 21:59:22', '2022-10-26 23:34:55'),
(620, 'App\\Models\\User', 201, 'API TOKEN', '8fcb04c084b86ab7ab120994122ca5c6066b2b8188c4aba63daaafe0d0b699cf', '[\"*\"]', '2022-10-27 01:04:04', NULL, '2022-10-26 22:13:05', '2022-10-27 01:04:04'),
(621, 'App\\Models\\User', 201, 'API TOKEN', 'bf5a0d679038cd3c32fc6366b367a010dfdecc336370c42d7140ab7029d12770', '[\"*\"]', '2022-10-27 17:59:20', NULL, '2022-10-26 22:40:07', '2022-10-27 17:59:20'),
(622, 'App\\Models\\User', 201, 'API TOKEN', '8747cc998486337a01435f4b9242eebdf0c06eb525df43adf89d19a63e357d34', '[\"*\"]', '2022-10-27 00:12:35', NULL, '2022-10-26 23:17:41', '2022-10-27 00:12:35'),
(623, 'App\\Models\\User', 201, 'API TOKEN', 'ba67dfe1c1568d5b86ad893062b8aa9a4dd9786cdaccc2105c3d60009f529ea1', '[\"*\"]', '2022-10-26 23:53:07', NULL, '2022-10-26 23:40:37', '2022-10-26 23:53:07'),
(624, 'App\\Models\\User', 202, 'API TOKEN', '84aed77617a887814ae739981b3960f9cbd39fabbe7bc82f91545d77bc47b481', '[\"*\"]', '2022-10-27 13:59:42', NULL, '2022-10-26 23:56:10', '2022-10-27 13:59:42'),
(625, 'App\\Models\\User', 201, 'API TOKEN', '7fb049c7b707e9871859a972e3d110a9c3bfa2ba5297da26acaa513ea389a2d6', '[\"*\"]', '2022-10-27 00:09:18', NULL, '2022-10-27 00:05:03', '2022-10-27 00:09:18'),
(626, 'App\\Models\\User', 203, 'API TOKEN', '3c2cc379ff9e8f6273e73cc69afc1d3130d1ef520ef88c58c22e0cfff56c311c', '[\"*\"]', '2022-10-27 00:06:37', NULL, '2022-10-27 00:05:42', '2022-10-27 00:06:37'),
(627, 'App\\Models\\User', 203, 'API TOKEN', 'bf796e3f9a75c8d6b8bf9da0d2e25ba44e03f137051c1c437f57451b9b6c55d6', '[\"*\"]', '2022-10-27 00:07:43', NULL, '2022-10-27 00:07:36', '2022-10-27 00:07:43'),
(628, 'App\\Models\\User', 204, 'API TOKEN', '6737778fbc0224ea07d2a128c49791b4c9d3fe26220bb4ec220ceb0ec9ccd0b9', '[\"*\"]', '2022-10-27 00:09:06', NULL, '2022-10-27 00:09:05', '2022-10-27 00:09:06'),
(629, 'App\\Models\\User', 205, 'API TOKEN', '08e347473ffac702e5e988fc46d79dcc26e9ecb22cd66e82593c866dfc0340aa', '[\"*\"]', '2022-10-27 00:11:17', NULL, '2022-10-27 00:10:08', '2022-10-27 00:11:17'),
(630, 'App\\Models\\User', 201, 'API TOKEN', '8c548f59887b93c16cd9afe999314c3c7d98e2844f01e7392110606840b15746', '[\"*\"]', '2022-10-27 00:20:03', NULL, '2022-10-27 00:18:55', '2022-10-27 00:20:03'),
(631, 'App\\Models\\User', 201, 'API TOKEN', '48e893a5681d51e8be2d940223dbb0e3bc6691bba6ebe957165384e7283717e5', '[\"*\"]', '2022-10-27 00:53:59', NULL, '2022-10-27 00:19:36', '2022-10-27 00:53:59'),
(632, 'App\\Models\\User', 206, 'API TOKEN', '44f2ca2f5430ab8fd010efea4f10a64633e26226bd9329eb705a40dbc29377c5', '[\"*\"]', '2022-10-27 02:50:28', NULL, '2022-10-27 01:48:16', '2022-10-27 02:50:28'),
(633, 'App\\Models\\User', 199, 'API TOKEN', '4de457fc85e2838d045b377f86b16efc062ab113ced26c8141fa032bd156bdaa', '[\"*\"]', '2022-10-27 15:48:02', NULL, '2022-10-27 02:14:15', '2022-10-27 15:48:02'),
(634, 'App\\Models\\User', 207, 'API TOKEN', 'c9af86fb55be2c78a115ab8711315c5663bf8e166c3142fce6838d5af9d47333', '[\"*\"]', '2022-10-28 00:27:13', NULL, '2022-10-27 04:00:35', '2022-10-28 00:27:13'),
(635, 'App\\Models\\User', 201, 'API TOKEN', '6b5a87e83a60ab6211a5489ba736dc87458dba00680d5a991fa773e8f6a3f18e', '[\"*\"]', '2022-10-27 14:25:15', NULL, '2022-10-27 14:24:12', '2022-10-27 14:25:15'),
(636, 'App\\Models\\User', 201, 'API TOKEN', 'eb052456440d21c97f391f208a0aae33e91ab7b58240da52ebf34ca7bf41193b', '[\"*\"]', '2022-10-27 15:18:10', NULL, '2022-10-27 14:47:41', '2022-10-27 15:18:10'),
(637, 'App\\Models\\User', 208, 'API TOKEN', '26f25c2ea2d41af5b33fd3ea2d99b0f6b29a28bfe4ae3dbb08eeda0367101643', '[\"*\"]', '2022-10-27 15:55:31', NULL, '2022-10-27 15:49:28', '2022-10-27 15:55:31'),
(638, 'App\\Models\\User', 201, 'API TOKEN', 'd10f689eb3985b7679bf4d75bc72996f9eac36f0d76f76f3f8d711f6619d34ed', '[\"*\"]', '2022-10-27 15:56:06', NULL, '2022-10-27 15:55:41', '2022-10-27 15:56:06'),
(639, 'App\\Models\\User', 208, 'API TOKEN', '120560e62e39a84b8694344047c9ca63394a0d2afd775b64373839cee6d3a103', '[\"*\"]', '2022-10-27 15:55:58', NULL, '2022-10-27 15:55:54', '2022-10-27 15:55:58'),
(640, 'App\\Models\\User', 209, 'API TOKEN', 'c84279dcf04ae434b3e7c99c33ec660593de8187776a368be3bea39a8f30aa7e', '[\"*\"]', '2022-10-27 15:57:01', NULL, '2022-10-27 15:56:59', '2022-10-27 15:57:01'),
(641, 'App\\Models\\User', 210, 'API TOKEN', 'e87481429ee33a7d552b23f9cd3393f4433e7e581c0d0232dc5650064cd21325', '[\"*\"]', '2022-10-27 16:02:44', NULL, '2022-10-27 16:01:11', '2022-10-27 16:02:44'),
(642, 'App\\Models\\User', 208, 'API TOKEN', '1bd5997a651ca5feb75eb8cbf6141ad5e5e0d0cfe97f6a4a9acbfb4be6aef015', '[\"*\"]', '2022-10-27 16:06:13', NULL, '2022-10-27 16:03:47', '2022-10-27 16:06:13'),
(643, 'App\\Models\\User', 210, 'API TOKEN', 'efee78d6df40a11bb1161684cbc6da7a81fed2bd1389ed0ca78795bf6fc62617', '[\"*\"]', '2022-10-27 16:06:39', NULL, '2022-10-27 16:06:34', '2022-10-27 16:06:39'),
(644, 'App\\Models\\User', 211, 'API TOKEN', 'd3d323db62d12a6277bd4aa0f63ad6c5880cb41f7678ad6359844c4288bffae5', '[\"*\"]', '2022-10-27 16:12:01', NULL, '2022-10-27 16:12:00', '2022-10-27 16:12:01'),
(645, 'App\\Models\\User', 212, 'API TOKEN', '244dc1206df4daf03d255f28bfbd3cfd51b97910307b20215b02a295969b68fb', '[\"*\"]', '2022-10-27 16:14:44', NULL, '2022-10-27 16:13:29', '2022-10-27 16:14:44'),
(646, 'App\\Models\\User', 213, 'API TOKEN', '571af9c8f22bdbe0420741906ab71a006551e169e91856be452918db302587cc', '[\"*\"]', '2022-10-27 16:20:54', NULL, '2022-10-27 16:14:32', '2022-10-27 16:20:54'),
(647, 'App\\Models\\User', 214, 'API TOKEN', '55284011e82609461584e619be3db9f389eb5e29657b912a162d2f4b92e47415', '[\"*\"]', '2022-10-27 16:16:07', NULL, '2022-10-27 16:16:02', '2022-10-27 16:16:07'),
(648, 'App\\Models\\User', 215, 'API TOKEN', '655463da4e669de5e744e9cf214d8e7008d0f8007d3fe58bddb9c903ffb39102', '[\"*\"]', '2022-10-27 16:23:17', NULL, '2022-10-27 16:16:43', '2022-10-27 16:23:17'),
(649, 'App\\Models\\User', 216, 'API TOKEN', 'b08b74e684a3cf0f88458599b87f6e1f4899639739b5ee633be0c7ecf0b83770', '[\"*\"]', '2022-10-27 16:26:50', NULL, '2022-10-27 16:18:10', '2022-10-27 16:26:50'),
(650, 'App\\Models\\User', 217, 'API TOKEN', '3fdb20a54d789fc1c4bfb7e98ab71b7eeff3bd733ce1b32b3475eb381b52fa62', '[\"*\"]', '2022-10-27 16:25:10', NULL, '2022-10-27 16:22:09', '2022-10-27 16:25:10'),
(651, 'App\\Models\\User', 218, 'API TOKEN', '5db24df3d4eb8cc4f81cbe8d66311dc240bbc8855959ec68c699e8cb67c7b1e5', '[\"*\"]', '2022-10-27 16:24:18', NULL, '2022-10-27 16:24:16', '2022-10-27 16:24:18'),
(652, 'App\\Models\\User', 219, 'API TOKEN', '9e0106e15654dfa3b4024d62375d57b83c22665d3ba8c452670246a4287aa557', '[\"*\"]', '2022-10-27 16:25:40', NULL, '2022-10-27 16:25:38', '2022-10-27 16:25:40'),
(653, 'App\\Models\\User', 220, 'API TOKEN', '90cd5ff6679ffb06095d361cb8baca64797dc8a5997465b278d84751a1fdc87a', '[\"*\"]', '2022-10-27 16:26:53', NULL, '2022-10-27 16:26:37', '2022-10-27 16:26:53'),
(654, 'App\\Models\\User', 221, 'API TOKEN', '55d9aced52f18b8ef780e2ca208e7f242a9ae11a55c99074221d8829806eb845', '[\"*\"]', '2022-10-27 16:29:16', NULL, '2022-10-27 16:29:11', '2022-10-27 16:29:16'),
(655, 'App\\Models\\User', 222, 'API TOKEN', '5420c4c957bb9aab3cb05463fbce17bebd4f2713a2f129037f195ada41646012', '[\"*\"]', '2022-10-27 16:31:05', NULL, '2022-10-27 16:30:59', '2022-10-27 16:31:05'),
(656, 'App\\Models\\User', 201, 'API TOKEN', '6b493da78ced861dfa5e359317dafe58e831b50314d60c941b1f2b20f0c9973c', '[\"*\"]', '2022-10-27 16:32:49', NULL, '2022-10-27 16:32:20', '2022-10-27 16:32:49'),
(657, 'App\\Models\\User', 201, 'API TOKEN', '49bfe793734c0053fe78a84df27710a5f32e60e35cee69939a23f89971e51ee2', '[\"*\"]', '2022-10-27 16:34:40', NULL, '2022-10-27 16:34:37', '2022-10-27 16:34:40'),
(658, 'App\\Models\\User', 223, 'API TOKEN', '333e5218d1cfe2b11248b089fd77e88e2563f39c730abe636dc7a4100f9f964e', '[\"*\"]', '2022-10-27 16:34:40', NULL, '2022-10-27 16:34:38', '2022-10-27 16:34:40'),
(659, 'App\\Models\\User', 208, 'API TOKEN', '7f8e125d2725af313b2171fcdc20029751f8aa773aa9d463bef36dad069dda1b', '[\"*\"]', '2022-10-27 16:35:57', NULL, '2022-10-27 16:35:24', '2022-10-27 16:35:57'),
(660, 'App\\Models\\User', 224, 'API TOKEN', 'c01a2695564dd0e7cd3e36647e927efff8ff7d87ea610decf6c0af5e6884a264', '[\"*\"]', '2022-10-27 16:39:17', NULL, '2022-10-27 16:36:29', '2022-10-27 16:39:17'),
(661, 'App\\Models\\User', 208, 'API TOKEN', 'c96c7c4d74baa6f785871c3f2b3838bcaa54e89cfa02f294fc5ff46858baed15', '[\"*\"]', '2022-10-27 17:05:38', NULL, '2022-10-27 16:37:32', '2022-10-27 17:05:38'),
(662, 'App\\Models\\User', 225, 'API TOKEN', 'b545dced7757cf096395f91de04f42fc60b3f15268af1c9cbc1c109cc54b6390', '[\"*\"]', '2022-10-27 16:37:56', NULL, '2022-10-27 16:37:54', '2022-10-27 16:37:56'),
(663, 'App\\Models\\User', 226, 'API TOKEN', '82c98c00779989afc57728898ad7a98b59c1e03708ea2345ae524395f29d2e79', '[\"*\"]', '2022-10-27 16:38:16', NULL, '2022-10-27 16:38:15', '2022-10-27 16:38:16'),
(664, 'App\\Models\\User', 227, 'API TOKEN', '3a33dc943c7a9014efe71feb14d5bf3fb733b66b3abba0c0cd742da04beeadf6', '[\"*\"]', '2022-10-27 16:45:56', NULL, '2022-10-27 16:42:35', '2022-10-27 16:45:56'),
(665, 'App\\Models\\User', 228, 'API TOKEN', 'ba199668c19938297183edf99099bbe1bf09e2fd62af9746f0280a12a4bc89bf', '[\"*\"]', '2022-10-27 16:46:42', NULL, '2022-10-27 16:46:39', '2022-10-27 16:46:42'),
(666, 'App\\Models\\User', 229, 'API TOKEN', '5d3a7321e7ae01f0ac01c484487676ee6ba2de17681f50c800bbf3174f495c1a', '[\"*\"]', '2022-10-27 16:51:13', NULL, '2022-10-27 16:51:10', '2022-10-27 16:51:13'),
(667, 'App\\Models\\User', 230, 'API TOKEN', 'c8477c74b108789820d569eed65a5e09c52bd36caf16bfdb3c9d86eb74a6c7cf', '[\"*\"]', '2022-10-27 16:57:18', NULL, '2022-10-27 16:57:14', '2022-10-27 16:57:18'),
(668, 'App\\Models\\User', 231, 'API TOKEN', 'a4d94dec37699807881fb4113308c11d1c2b62e7f08b7928ffe249cf17a9737b', '[\"*\"]', '2022-10-27 17:05:25', NULL, '2022-10-27 17:05:22', '2022-10-27 17:05:25'),
(669, 'App\\Models\\User', 208, 'API TOKEN', '6a1011a8100ad446e05beb541fe8c70b586c4736d09e60a3d5a4a45cfbb938d5', '[\"*\"]', '2022-10-27 17:05:59', NULL, '2022-10-27 17:05:55', '2022-10-27 17:05:59'),
(670, 'App\\Models\\User', 208, 'API TOKEN', '3f030aa5dc9e99bc3307a8645995f45d8da2cf06f7304007a319f466fc1ee474', '[\"*\"]', '2022-10-27 18:04:36', NULL, '2022-10-27 17:13:40', '2022-10-27 18:04:36'),
(671, 'App\\Models\\User', 232, 'API TOKEN', 'ae024d7ede2cebc06c1edf1e15b66e4288e8062c1b441e5e645c13ea57d19d35', '[\"*\"]', '2022-10-27 17:15:18', NULL, '2022-10-27 17:15:09', '2022-10-27 17:15:18'),
(672, 'App\\Models\\User', 233, 'API TOKEN', '5b40dc7303ecc8fa1cc3db40cd46fb851b6e0e68d4c3de8dbe22464efc58789e', '[\"*\"]', '2022-10-27 17:24:32', NULL, '2022-10-27 17:18:09', '2022-10-27 17:24:32'),
(673, 'App\\Models\\User', 234, 'API TOKEN', '391afa7eb2124679f04ea7ede86ac3fae9fe240b931698cb35368b3ecd050e27', '[\"*\"]', '2022-10-27 17:19:37', NULL, '2022-10-27 17:19:29', '2022-10-27 17:19:37'),
(674, 'App\\Models\\User', 122, 'API TOKEN', 'ce660321cc54d481ba746c838718000fa47654ee75f8b9fd8778497700fe945f', '[\"*\"]', '2022-10-27 18:49:58', NULL, '2022-10-27 17:22:15', '2022-10-27 18:49:58'),
(675, 'App\\Models\\User', 235, 'API TOKEN', 'b11b26dc5303bcf2089f025610a877bb2e1e8a047d11d6fe12e1e70541f62447', '[\"*\"]', '2022-10-27 17:31:26', NULL, '2022-10-27 17:24:36', '2022-10-27 17:31:26'),
(676, 'App\\Models\\User', 236, 'API TOKEN', '718a3c5e935724cc675b6f15a5d6db6e463404c0f2934707824c662fd66ed8a0', '[\"*\"]', '2022-10-27 17:27:37', NULL, '2022-10-27 17:26:17', '2022-10-27 17:27:37'),
(677, 'App\\Models\\User', 237, 'API TOKEN', 'b08806ef292373270f8c47843af72c1577fc73d9d26315140c13e1818eb813a9', '[\"*\"]', '2022-10-27 17:29:31', NULL, '2022-10-27 17:28:07', '2022-10-27 17:29:31'),
(678, 'App\\Models\\User', 238, 'API TOKEN', '1937037b79d6b4ae1ca92964ee81aea4ec775e7205a7809f2e6e0314a13303ba', '[\"*\"]', '2022-10-27 17:45:55', NULL, '2022-10-27 17:30:06', '2022-10-27 17:45:55'),
(679, 'App\\Models\\User', 239, 'API TOKEN', 'f523ababda399b237a60de6abec4958efe7a19197795a6ccc7f5d21de4abd0fa', '[\"*\"]', '2022-10-27 17:35:51', NULL, '2022-10-27 17:34:53', '2022-10-27 17:35:51'),
(680, 'App\\Models\\User', 240, 'API TOKEN', '49648053e5b8f1bf907069f9506e1bb07cd34b07a9e8c52c072798ceb8d2909c', '[\"*\"]', '2022-10-27 17:39:20', NULL, '2022-10-27 17:37:18', '2022-10-27 17:39:20'),
(681, 'App\\Models\\User', 241, 'API TOKEN', 'ffd18bcf349b9875c5f035651730284b083eddf3a9e673926ebdd759d8faf20f', '[\"*\"]', '2022-10-27 17:57:46', NULL, '2022-10-27 17:47:23', '2022-10-27 17:57:46'),
(682, 'App\\Models\\User', 201, 'API TOKEN', 'ea1f75e1793adfb63429523c26b53596b79a11ea828894f12441ec363c0899a7', '[\"*\"]', NULL, NULL, '2022-10-27 17:48:41', '2022-10-27 17:48:41'),
(683, 'App\\Models\\User', 241, 'API TOKEN', 'b529986093f58e9049a9916438ee76643a5f37d4d5539b987833fcaa41eacfed', '[\"*\"]', '2022-10-27 19:51:15', NULL, '2022-10-27 17:48:57', '2022-10-27 19:51:15'),
(684, 'App\\Models\\User', 241, 'API TOKEN', '2701210117bb3ed6424ade51ca5c5413dd3293190ea12838097460a5b1f41a0f', '[\"*\"]', '2022-10-27 17:58:31', NULL, '2022-10-27 17:58:29', '2022-10-27 17:58:31'),
(685, 'App\\Models\\User', 242, 'API TOKEN', '44e8ad6d011495b4cbe72adf3b536a3de0f828c7a0d4ca5dcd12fc23b712953c', '[\"*\"]', '2022-10-27 18:30:17', NULL, '2022-10-27 18:00:21', '2022-10-27 18:30:17'),
(686, 'App\\Models\\User', 122, 'API TOKEN', '65878ffa6888a5a55006007be4e6dcc4b5f1f5193efb8cef121311e7118aea67', '[\"*\"]', '2022-10-27 18:05:24', NULL, '2022-10-27 18:05:21', '2022-10-27 18:05:24'),
(687, 'App\\Models\\User', 122, 'API TOKEN', '347223feb16f08e9efca6547e4b7b8d602df5bde23453ac9f26447e0c799c8ba', '[\"*\"]', '2022-10-27 18:09:57', NULL, '2022-10-27 18:05:49', '2022-10-27 18:09:57'),
(688, 'App\\Models\\User', 243, 'API TOKEN', 'b3f10cb75bf2d1b9921ec23120f60bc1b457a6f00eaae5e4a6cb177c64d02d0c', '[\"*\"]', '2022-10-31 12:10:02', NULL, '2022-10-27 18:23:23', '2022-10-31 12:10:02'),
(689, 'App\\Models\\User', 244, 'API TOKEN', '6e446d27bcac926d0941fb6d8e31bccd2c27cc2494d3c3c255d7153ba12f8c99', '[\"*\"]', '2022-10-27 18:33:50', NULL, '2022-10-27 18:30:54', '2022-10-27 18:33:50'),
(690, 'App\\Models\\User', 245, 'API TOKEN', 'dd60547811666479674c3cf284fde2c0a5954d0c8f1cce772e73d6e4cc0ffebb', '[\"*\"]', '2022-10-27 19:24:26', NULL, '2022-10-27 18:40:37', '2022-10-27 19:24:26'),
(692, 'App\\Models\\User', 247, 'API TOKEN', '62cf6c72a93e9be6796de1d9a1dc09cd197f101bb8fbd04965cc3e26d88b95d7', '[\"*\"]', '2022-10-27 18:57:41', NULL, '2022-10-27 18:55:29', '2022-10-27 18:57:41'),
(693, 'App\\Models\\User', 248, 'API TOKEN', 'f8cd9ec144327b6165da048fc67dfbeaa3a499fc16ebc03ba2e42f47fcc755be', '[\"*\"]', '2022-10-27 18:58:27', NULL, '2022-10-27 18:58:23', '2022-10-27 18:58:27'),
(694, 'App\\Models\\User', 249, 'API TOKEN', '48f7613c2ee1a14e3b0aa6f651505327dceb932c859c3d3da5111447301bba21', '[\"*\"]', '2022-10-27 18:59:26', NULL, '2022-10-27 18:59:25', '2022-10-27 18:59:26'),
(695, 'App\\Models\\User', 250, 'API TOKEN', 'ce6d8da221f27a21b952eb2e4d384c67976b5b6a919c94748f0059afb50269a6', '[\"*\"]', '2022-10-27 19:03:24', NULL, '2022-10-27 19:00:51', '2022-10-27 19:03:24'),
(696, 'App\\Models\\User', 251, 'API TOKEN', '7c64bfb6c25f0fece77b403060ef28a715b239c17c48f3f39a8352c9e56ec58a', '[\"*\"]', '2022-10-27 19:24:24', NULL, '2022-10-27 19:04:47', '2022-10-27 19:24:24'),
(698, 'App\\Models\\User', 253, 'API TOKEN', 'fdab41cbff9c16ffe1058a31ae81281f913d06d8b0b867129e3319da881cba64', '[\"*\"]', '2022-10-27 19:35:12', NULL, '2022-10-27 19:35:06', '2022-10-27 19:35:12'),
(699, 'App\\Models\\User', 254, 'API TOKEN', 'f786abb0f6a5dc3acd30de82db01495d9821a0887df0d0cf92cd37ebc55548f2', '[\"*\"]', '2022-10-27 20:09:21', NULL, '2022-10-27 19:36:38', '2022-10-27 20:09:21'),
(700, 'App\\Models\\User', 255, 'API TOKEN', '72c50753bfb443ccb36f1aa384c005f92cbe4f2b4c62953af0817aa8193b042f', '[\"*\"]', '2022-10-27 19:42:19', NULL, '2022-10-27 19:41:09', '2022-10-27 19:42:19'),
(701, 'App\\Models\\User', 255, 'API TOKEN', '26f1e354c16cefe5c69d4863557a214cfc50eff0224df066a4a03e21e1b44d3e', '[\"*\"]', '2022-10-28 22:53:57', NULL, '2022-10-27 19:43:02', '2022-10-28 22:53:57'),
(702, 'App\\Models\\User', 256, 'API TOKEN', '71746adb0fab8fc53ec497aee2a23fb55889320442cdcb67487c4cbe7a7ab2c3', '[\"*\"]', '2022-10-28 21:12:35', NULL, '2022-10-27 20:04:07', '2022-10-28 21:12:35'),
(703, 'App\\Models\\User', 257, 'API TOKEN', 'dbccce74052c52cd38868189d3e40b4e9a9ddb505e608abc5ab3e21bf3d0aacf', '[\"*\"]', '2022-10-27 20:13:01', NULL, '2022-10-27 20:10:14', '2022-10-27 20:13:01'),
(704, 'App\\Models\\User', 258, 'API TOKEN', 'e7f608bae982d4c213dfa62f5d89ae557501e0477afc63c510c3d2f2920b9deb', '[\"*\"]', '2022-10-27 20:57:51', NULL, '2022-10-27 20:13:27', '2022-10-27 20:57:51'),
(705, 'App\\Models\\User', 259, 'API TOKEN', '72e541a30148d17a7348e145f2ebfd3c584c5b753ba37baeb6cb4f8895398b7a', '[\"*\"]', '2022-10-27 21:01:51', NULL, '2022-10-27 20:58:35', '2022-10-27 21:01:51'),
(706, 'App\\Models\\User', 259, 'API TOKEN', '5a2489853d01f0f4acce8eb238d7e9db2d1cbf8a82ec3a42e00f82ee36aa2a80', '[\"*\"]', '2022-10-27 21:02:29', NULL, '2022-10-27 21:02:25', '2022-10-27 21:02:29'),
(707, 'App\\Models\\User', 260, 'API TOKEN', 'af91faa8e11924d4dc2fe4f62ceee91d867af72d0739bf8852831c6d0026fad4', '[\"*\"]', '2022-10-27 21:07:26', NULL, '2022-10-27 21:05:57', '2022-10-27 21:07:26'),
(708, 'App\\Models\\User', 261, 'API TOKEN', 'c5f17184a4add39335a57cfc8c0831df95f945ffae2635b8af19cc6b10c1b503', '[\"*\"]', '2022-10-28 00:03:31', NULL, '2022-10-27 21:07:18', '2022-10-28 00:03:31'),
(709, 'App\\Models\\User', 262, 'API TOKEN', 'eee95c16d1e0f09a14721c20cd83b668f98e4911f804b26c325c79c2ce35f32b', '[\"*\"]', '2022-11-01 01:19:32', NULL, '2022-10-27 21:11:27', '2022-11-01 01:19:32'),
(715, 'App\\Models\\User', 266, 'API TOKEN', '48aebbf3fc1714e02e4cb31b19a9eafc11c21e3cc5c62a6255fe0b338a64be1c', '[\"*\"]', '2022-11-01 11:35:05', NULL, '2022-10-27 23:24:19', '2022-11-01 11:35:05'),
(716, 'App\\Models\\User', 267, 'API TOKEN', '0ec332efc7977d6f8819d44bcf49adb034edbe4b23b1ec43b5a632a05211a894', '[\"*\"]', '2022-10-28 00:18:36', NULL, '2022-10-28 00:04:09', '2022-10-28 00:18:36'),
(718, 'App\\Models\\User', 267, 'API TOKEN', 'da1227b259c4eafc06150b929070d0e15893ca482c368b360fa4ef9341eb995c', '[\"*\"]', '2022-10-28 00:57:01', NULL, '2022-10-28 00:40:25', '2022-10-28 00:57:01'),
(720, 'App\\Models\\User', 269, 'API TOKEN', 'b4f3b6a72bea0ad42bf1e1ea5f4831f1093f58e71852c2e526cbc83ec3a7d1df', '[\"*\"]', '2022-10-28 00:57:40', NULL, '2022-10-28 00:49:19', '2022-10-28 00:57:40'),
(721, 'App\\Models\\User', 269, 'API TOKEN', '06529630c779660a3e3d4fd8018524811132f9ec2dac4a448cd2ef861b857746', '[\"*\"]', '2022-10-31 15:07:56', NULL, '2022-10-28 00:55:33', '2022-10-31 15:07:56'),
(722, 'App\\Models\\User', 270, 'API TOKEN', '2aa02050dbe0492a46a9c5906d9c7436fa664c68a8ef7ed68547c093f81134b7', '[\"*\"]', '2022-10-28 01:19:00', NULL, '2022-10-28 01:11:02', '2022-10-28 01:19:00'),
(723, 'App\\Models\\User', 271, 'API TOKEN', '55f56b5c56e3c5208099e551b9fd5981e95c16ea5639a8c69753aefb036de141', '[\"*\"]', '2022-10-28 04:10:32', NULL, '2022-10-28 04:09:52', '2022-10-28 04:10:32'),
(724, 'App\\Models\\User', 239, 'API TOKEN', '82929d6ab20cab3fd9f97c787a2c5a9295f9f2ed538f5c9b5dbe614fa869627c', '[\"*\"]', '2022-10-30 16:13:57', NULL, '2022-10-28 04:18:54', '2022-10-30 16:13:57'),
(726, 'App\\Models\\User', 273, 'API TOKEN', 'b0e4f654a4c965399cfbf90f9c3443d2486232ab12265c68a4abca855c041196', '[\"*\"]', '2022-10-29 03:43:51', NULL, '2022-10-28 20:53:06', '2022-10-29 03:43:51'),
(727, 'App\\Models\\User', 240, 'API TOKEN', '3f256297ddc385cc9de3ac047453b5a9e60e2f67108044846b0fb3eff66767d0', '[\"*\"]', '2022-10-29 02:56:23', NULL, '2022-10-29 02:55:24', '2022-10-29 02:56:23'),
(729, 'App\\Models\\User', 275, 'API TOKEN', 'c74405b7db8a3089360e6b8c76a6e97e6d6d55f6d10735106ea1bfe3355948e5', '[\"*\"]', '2022-10-30 14:42:35', NULL, '2022-10-29 19:10:58', '2022-10-30 14:42:35'),
(730, 'App\\Models\\User', 276, 'API TOKEN', '188fa311ac795d24237257a9904403b80fae56ef5047087b4463101f257ed288', '[\"*\"]', '2022-10-29 19:14:54', NULL, '2022-10-29 19:13:19', '2022-10-29 19:14:54'),
(731, 'App\\Models\\User', 277, 'API TOKEN', 'a90a913e6b91aecb93285418ef746c6675a2606dd9ed32047775f76d8a9d7c7f', '[\"*\"]', '2022-10-31 03:13:57', NULL, '2022-10-29 20:14:34', '2022-10-31 03:13:57'),
(732, 'App\\Models\\User', 278, 'API TOKEN', 'ec8d2bf0d1fd9ce999eea2edbd5010d0a08ac6e030b888eb7f511cd2a7c10ed4', '[\"*\"]', '2022-11-02 01:34:01', NULL, '2022-10-30 02:13:17', '2022-11-02 01:34:01'),
(733, 'App\\Models\\User', 279, 'API TOKEN', '75e1c726f1eaac2ab1bd0aaef55e33beeafad69889f604f271d3869656794f4b', '[\"*\"]', '2022-10-30 13:27:08', NULL, '2022-10-30 03:07:53', '2022-10-30 13:27:08'),
(734, 'App\\Models\\User', 252, 'API TOKEN', '163e3647a591e7e0465fc838a92ae4012a3e093366a430766f5e1c19e8775b01', '[\"*\"]', NULL, NULL, '2022-10-30 15:21:30', '2022-10-30 15:21:30'),
(735, 'App\\Models\\User', 280, 'API TOKEN', 'dc9ce34393a3948a073007e91f72ff09a443472067181bf90f6c4436f7f6788c', '[\"*\"]', '2022-10-30 15:25:26', NULL, '2022-10-30 15:21:44', '2022-10-30 15:25:26'),
(736, 'App\\Models\\User', 280, 'API TOKEN', '48925a442b08d1264b50ab5307b04185374413930212a8406752fcd59bc0a003', '[\"*\"]', '2022-10-30 15:32:49', NULL, '2022-10-30 15:22:05', '2022-10-30 15:32:49'),
(737, 'App\\Models\\User', 1, 'API TOKEN', 'c31d92ba83271e412d164f4e731a1d8541d14340001ae29348441036d54c0a2c', '[\"*\"]', '2022-10-30 16:36:52', NULL, '2022-10-30 15:31:42', '2022-10-30 16:36:52'),
(738, 'App\\Models\\User', 280, 'API TOKEN', '3954be09da11d01b94e8acac81dae4e96e2496a392c3e685e6356037ecd57f6c', '[\"*\"]', '2022-10-30 15:39:30', NULL, '2022-10-30 15:33:52', '2022-10-30 15:39:30'),
(741, 'App\\Models\\User', 282, 'API TOKEN', 'd65ab6560fd85f64a0435a047242e7e3240fd1fc691ecd6b6830687df0e47f2e', '[\"*\"]', '2022-10-31 22:33:01', NULL, '2022-10-30 15:59:01', '2022-10-31 22:33:01'),
(742, 'App\\Models\\User', 283, 'API TOKEN', '5592175398c2eee34b567210eba0802fa57a7d913d3f2d3b9ef11d8acc83e1ba', '[\"*\"]', '2022-10-30 16:09:38', NULL, '2022-10-30 16:02:13', '2022-10-30 16:09:38'),
(744, 'App\\Models\\User', 1, 'API TOKEN', '1b1d760a6a9a1fd7e1116df1c1f2af12b4b21d69a1e1e8db0fc4d2d4d00ef54b', '[\"*\"]', NULL, NULL, '2022-10-30 16:05:25', '2022-10-30 16:05:25'),
(745, 'App\\Models\\User', 1, 'API TOKEN', 'c0119cb5077188b9a883886dc95b893d33b82bdfa16d08acb73bc3ddd6af94b6', '[\"*\"]', NULL, NULL, '2022-10-30 16:11:21', '2022-10-30 16:11:21'),
(746, 'App\\Models\\User', 285, 'API TOKEN', 'b55bee35cef7e8619a982a91ebd213057859f05cca4fb80276ed29dacd47208a', '[\"*\"]', '2022-10-31 02:18:54', NULL, '2022-10-30 16:14:42', '2022-10-31 02:18:54'),
(749, 'App\\Models\\User', 289, 'API TOKEN', '8cb0646665a8bb06994260d7ddb728b1dbc279096f99c3cd43ab8e590401f36b', '[\"*\"]', '2022-10-30 19:37:38', NULL, '2022-10-30 19:37:13', '2022-10-30 19:37:38'),
(752, 'App\\Models\\User', 292, 'API TOKEN', '315a66229b1ba353401074f3fbe1dfbda220403dbaedae1831488a28a2ba161f', '[\"*\"]', '2022-10-30 19:58:07', NULL, '2022-10-30 19:57:21', '2022-10-30 19:58:07'),
(753, 'App\\Models\\User', 293, 'API TOKEN', 'e1b3d63970dca1aff6b701c941f0bd5f4d8d77730bf6444df33d2f11c685b54e', '[\"*\"]', '2022-10-30 20:02:00', NULL, '2022-10-30 20:00:43', '2022-10-30 20:02:00'),
(754, 'App\\Models\\User', 294, 'API TOKEN', '7b2c062560dccf9db2bb341d67e4c2f4251915b711d22cb70a9809b7dbbc2ceb', '[\"*\"]', '2022-10-30 20:23:48', NULL, '2022-10-30 20:23:47', '2022-10-30 20:23:48'),
(756, 'App\\Models\\User', 280, 'API TOKEN', 'a97f3fe4175dd60f67fb752b1e55dc73eada692793dd5de76bce548eccc64fdd', '[\"*\"]', '2022-10-31 14:47:10', NULL, '2022-10-31 14:46:53', '2022-10-31 14:47:10'),
(764, 'App\\Models\\User', 296, 'API TOKEN', 'd3e2b366491f666685812f320e3ce95dd97a9a4866d59b674ea1153842b8bc0d', '[\"*\"]', '2022-10-31 15:15:50', NULL, '2022-10-31 15:12:28', '2022-10-31 15:15:50'),
(765, 'App\\Models\\User', 296, 'API TOKEN', 'e8ddd0fc0cd1f5851a0f90f88d6811a8c254b1dbc4f76f4a2cf597380be90c6f', '[\"*\"]', '2022-10-31 15:17:04', NULL, '2022-10-31 15:15:57', '2022-10-31 15:17:04'),
(766, 'App\\Models\\User', 297, 'API TOKEN', '7a248ea906f5696f0f0ab43a985580fbd18fe12a9599903ab8a99ceb5e70c0dc', '[\"*\"]', '2022-10-31 15:27:31', NULL, '2022-10-31 15:20:12', '2022-10-31 15:27:31'),
(768, 'App\\Models\\User', 296, 'API TOKEN', '9ecad68c980f81e1f46ba949edd86b18d0e5053b99994eb7af8124e305611267', '[\"*\"]', '2022-10-31 16:40:55', NULL, '2022-10-31 15:24:01', '2022-10-31 16:40:55'),
(769, 'App\\Models\\User', 299, 'API TOKEN', '480ea174e198a6fb2c4672865ff972be8c4b88b09d3537751ecd19aa28eca258', '[\"*\"]', '2022-10-31 15:37:46', NULL, '2022-10-31 15:36:26', '2022-10-31 15:37:46'),
(770, 'App\\Models\\User', 300, 'API TOKEN', '625dc9db24d81d63a95dc6fdc3cef276d8e5acbb719e7fcb3e63472ae7e42065', '[\"*\"]', '2022-10-31 15:49:19', NULL, '2022-10-31 15:47:56', '2022-10-31 15:49:19'),
(771, 'App\\Models\\User', 301, 'API TOKEN', '3e98ad48abcf8a5424bde3b19ad05555db60c6ff377f7dd76a2a11833828fda9', '[\"*\"]', '2022-10-31 15:49:01', NULL, '2022-10-31 15:48:12', '2022-10-31 15:49:01'),
(772, 'App\\Models\\User', 281, 'API TOKEN', 'f17f82266d45e1006772b32a6df21103d3a9d83ec46d8c1a14026ccb75fa9238', '[\"*\"]', '2022-10-31 17:28:07', NULL, '2022-10-31 15:55:22', '2022-10-31 17:28:07'),
(773, 'App\\Models\\User', 296, 'API TOKEN', '58c501646e4b966c0d3682cbeaab63a1f4119e1a398ae925e999f5f3512b492a', '[\"*\"]', NULL, NULL, '2022-10-31 15:55:47', '2022-10-31 15:55:47'),
(774, 'App\\Models\\User', 281, 'API TOKEN', '8d50e44dd1296a8c647d7a9068f20142cde7c221c04394ed5f663df85a295294', '[\"*\"]', NULL, NULL, '2022-10-31 15:59:08', '2022-10-31 15:59:08'),
(775, 'App\\Models\\User', 281, 'API TOKEN', 'cf9fd9c2a8a90cbf90f1a4fc1ab36c9eaad5c5f2ba73d1e45b5db166af35cc21', '[\"*\"]', NULL, NULL, '2022-10-31 16:00:13', '2022-10-31 16:00:13'),
(776, 'App\\Models\\User', 281, 'API TOKEN', '7e174a47ba4ea6106ce074e6e59ce066f4bfc1a4fbffd8332aff748877c99cff', '[\"*\"]', NULL, NULL, '2022-10-31 16:05:54', '2022-10-31 16:05:54'),
(777, 'App\\Models\\User', 281, 'API TOKEN', 'fbfad4659f5c3938d6d0b9fdbe68efd29625e7ae3c0d64a0abcaa8483ff05e4d', '[\"*\"]', NULL, NULL, '2022-10-31 16:06:24', '2022-10-31 16:06:24'),
(779, 'App\\Models\\User', 302, 'API TOKEN', '7348081746108502fb74d51403c9ec098bd24842c7b2321baaf704898dcc69b5', '[\"*\"]', '2022-10-31 16:28:15', NULL, '2022-10-31 16:11:40', '2022-10-31 16:28:15'),
(780, 'App\\Models\\User', 302, 'API TOKEN', '9641f7059e9f55662f5f4b0f42224e46dfb5a90a224bfc018127bc2f58dc807f', '[\"*\"]', NULL, NULL, '2022-10-31 16:15:33', '2022-10-31 16:15:33'),
(781, 'App\\Models\\User', 302, 'API TOKEN', 'd3c6175ad12f254483f7e06822599a7425e26d42445ae29ab0445dad3a2e7d36', '[\"*\"]', NULL, NULL, '2022-10-31 16:16:38', '2022-10-31 16:16:38'),
(783, 'App\\Models\\User', 302, 'API TOKEN', 'e72aea5c00ad7c19572f3dfd07f25e91913a96dc5a46c22918767205ce90da37', '[\"*\"]', NULL, NULL, '2022-10-31 16:18:16', '2022-10-31 16:18:16'),
(785, 'App\\Models\\User', 302, 'API TOKEN', 'bd5f3d18f73920573dd44a2b90328817308f7de3db8d8766ba49d528209a6ca2', '[\"*\"]', NULL, NULL, '2022-10-31 16:18:34', '2022-10-31 16:18:34'),
(794, 'App\\Models\\User', 306, 'API TOKEN', 'aab1d6436da06aee515002dc666f419aa43fa542428b0451ed72cafa613d3fd8', '[\"*\"]', '2022-10-31 17:26:19', NULL, '2022-10-31 17:24:47', '2022-10-31 17:26:19'),
(795, 'App\\Models\\User', 306, 'API TOKEN', 'e2d5533b5ff2ead0a64b74bd35935b0e35f8d572a9eced7b0de5cd796ad61ce2', '[\"*\"]', '2022-10-31 17:29:39', NULL, '2022-10-31 17:28:22', '2022-10-31 17:29:39'),
(796, 'App\\Models\\User', 307, 'API TOKEN', 'c87e6fcdceb7269db1ed6e9b650dd0c8e10649b5e758ed0d0922eebe6c224773', '[\"*\"]', '2022-10-31 17:32:30', NULL, '2022-10-31 17:30:08', '2022-10-31 17:32:30'),
(797, 'App\\Models\\User', 307, 'API TOKEN', '2c95d981ace955bfeda604003adcb85d23940d53e4cec33d3fa75b3f2a10d0df', '[\"*\"]', NULL, NULL, '2022-10-31 17:31:59', '2022-10-31 17:31:59'),
(798, 'App\\Models\\User', 307, 'API TOKEN', 'edd324e73f93646a4db975c2ab0c15ab6cf47644769da51508e0c5ff859caab5', '[\"*\"]', NULL, NULL, '2022-10-31 17:32:41', '2022-10-31 17:32:41'),
(799, 'App\\Models\\User', 308, 'API TOKEN', 'f9271c2a83be0043ea4b53fc4bd690c0597047a66fe795a25aa9d203cf7ecbf7', '[\"*\"]', NULL, NULL, '2022-10-31 17:32:59', '2022-10-31 17:32:59'),
(800, 'App\\Models\\User', 308, 'API TOKEN', '1c3ecb3c6369652004478de673a72d51853c227a5e9aba89a2dd396e8c0609b8', '[\"*\"]', '2022-10-31 17:33:49', NULL, '2022-10-31 17:33:10', '2022-10-31 17:33:49'),
(801, 'App\\Models\\User', 308, 'API TOKEN', '68f52910039a657d21e6b1da1ce643c6b49afbd85c65384d6dd61584694753b4', '[\"*\"]', NULL, NULL, '2022-10-31 17:34:05', '2022-10-31 17:34:05'),
(802, 'App\\Models\\User', 309, 'API TOKEN', '04e64a1842ec38c563b2e9d221b109086851739d2fa990b959cdceb5347b9bfd', '[\"*\"]', '2022-10-31 17:36:46', NULL, '2022-10-31 17:35:08', '2022-10-31 17:36:46'),
(803, 'App\\Models\\User', 309, 'API TOKEN', '72ce76b3f2faf80901e3dd0f4bd79783816a92da413415c8e177d8bb2baa1653', '[\"*\"]', NULL, NULL, '2022-10-31 17:36:26', '2022-10-31 17:36:26'),
(804, 'App\\Models\\User', 310, 'API TOKEN', '5622147003af6a2dee0be9d9432cbae2e78bc18cf87813d03d093ca28eaae678', '[\"*\"]', NULL, NULL, '2022-10-31 17:38:09', '2022-10-31 17:38:09'),
(805, 'App\\Models\\User', 310, 'API TOKEN', '1a6876185a55ff9db0ec52db6785537518d8a1b47cc78a762e7b9a52101b76b1', '[\"*\"]', '2022-10-31 17:39:32', NULL, '2022-10-31 17:38:22', '2022-10-31 17:39:32'),
(806, 'App\\Models\\User', 310, 'API TOKEN', '93e27c1ada32b7a98d4bc8df9424ece1097c3ac93fa0c03bc62992e1fedddd70', '[\"*\"]', NULL, NULL, '2022-10-31 17:40:03', '2022-10-31 17:40:03'),
(807, 'App\\Models\\User', 310, 'API TOKEN', '10613ac6838142bb74fc1d37811fa866f00f6ee5fd01b7809a4a3fa2afb3ef8f', '[\"*\"]', NULL, NULL, '2022-10-31 17:42:24', '2022-10-31 17:42:24'),
(808, 'App\\Models\\User', 311, 'API TOKEN', '58e123b23167656bfe38023c71bba0cebd1cff337dced0b0df9dd8676047d034', '[\"*\"]', NULL, NULL, '2022-10-31 17:45:00', '2022-10-31 17:45:00'),
(809, 'App\\Models\\User', 311, 'API TOKEN', '607a63aa69e1319a3f36834dacdc57e09fa6d2a0de87ea7222ea33426475f58c', '[\"*\"]', NULL, NULL, '2022-10-31 17:45:30', '2022-10-31 17:45:30');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(810, 'App\\Models\\User', 311, 'API TOKEN', 'effedad04cd9ae922565ffeef7564b99fb190b5432b2d7c71ad415b116d39a77', '[\"*\"]', '2022-10-31 17:46:32', NULL, '2022-10-31 17:45:34', '2022-10-31 17:46:32'),
(811, 'App\\Models\\User', 311, 'API TOKEN', '92decfb9142f547b552382f9b012b77c5bbe840be8f4279ef7048081ce0c3d34', '[\"*\"]', NULL, NULL, '2022-10-31 17:46:52', '2022-10-31 17:46:52'),
(812, 'App\\Models\\User', 312, 'API TOKEN', '14ad74d19084baaa907dab9124485f7877e6295165b895211ada576fa8fa81bc', '[\"*\"]', '2022-11-01 23:47:38', NULL, '2022-10-31 17:47:06', '2022-11-01 23:47:38'),
(813, 'App\\Models\\User', 312, 'API TOKEN', '2e99705fb66c352c91215f3826ac686961e9d566cfc4b1d12fd51afff5287c0d', '[\"*\"]', NULL, NULL, '2022-10-31 17:47:22', '2022-10-31 17:47:22'),
(814, 'App\\Models\\User', 312, 'API TOKEN', 'eb79712125788f9578a4764428f2109cf5ad7ddd0d6c7d8a12cbb566904ee3ef', '[\"*\"]', NULL, NULL, '2022-10-31 17:49:43', '2022-10-31 17:49:43'),
(815, 'App\\Models\\User', 313, 'API TOKEN', '77a0372256066702f28b1d641c9ce226775844bda517d600648ff029c75c3445', '[\"*\"]', '2022-10-31 17:58:32', NULL, '2022-10-31 17:57:04', '2022-10-31 17:58:32'),
(816, 'App\\Models\\User', 313, 'API TOKEN', '4265891c895eab0b495fc2b8b62a75677b8a3e295cf5f8afc66b433d1d38376f', '[\"*\"]', NULL, NULL, '2022-10-31 17:58:49', '2022-10-31 17:58:49'),
(817, 'App\\Models\\User', 314, 'API TOKEN', '77e4965133e6f6155bf8c2d236d44e372442fb310fdf5517f605b87e5a4f96bd', '[\"*\"]', '2022-10-31 18:07:01', NULL, '2022-10-31 18:04:57', '2022-10-31 18:07:01'),
(818, 'App\\Models\\User', 315, 'API TOKEN', '8767aab5e193ae9992460daf9615916014c6cdad548fb31a7ee1278494434fbe', '[\"*\"]', '2022-10-31 18:13:14', NULL, '2022-10-31 18:12:03', '2022-10-31 18:13:14'),
(819, 'App\\Models\\User', 304, 'API TOKEN', 'bec23f70c3a6d326bf0bed33a67572966f7aaa34db501aace02d0fa0939dc9fa', '[\"*\"]', '2022-10-31 18:45:28', NULL, '2022-10-31 18:16:33', '2022-10-31 18:45:28'),
(823, 'App\\Models\\User', 317, 'API TOKEN', '69cb32a4e5f5c2d155a9856727456a365bf0e8bda34b87f1fa42aa2d40187fbb', '[\"*\"]', '2022-11-01 00:27:20', NULL, '2022-10-31 18:58:54', '2022-11-01 00:27:20'),
(824, 'App\\Models\\User', 318, 'API TOKEN', '03d91149ada8a20c4cc9694ed3e93fd11968250638c5ec3b3c2e29e14cf147e2', '[\"*\"]', '2022-10-31 22:45:37', NULL, '2022-10-31 19:17:17', '2022-10-31 22:45:37'),
(829, 'App\\Models\\User', 120, 'API TOKEN', 'd7e573d689db389fe279c47ffe79e2e29624c49d34a65797a0817b782c4ef42b', '[\"*\"]', '2022-10-31 21:04:37', NULL, '2022-10-31 21:04:28', '2022-10-31 21:04:37'),
(833, 'App\\Models\\User', 319, 'API TOKEN', 'b8818c262bf6b8fc738a2779ee319f3ccbec778df369a5ea87d8fbdb55063647', '[\"*\"]', '2022-11-01 00:09:28', NULL, '2022-11-01 00:06:52', '2022-11-01 00:09:28'),
(835, 'App\\Models\\User', 320, 'API TOKEN', 'f8c7c5e82c7668f2a61cdffda8c4d919f12691074220e3dee5bf02d9f8aa10d8', '[\"*\"]', '2022-11-01 16:06:11', NULL, '2022-11-01 00:11:08', '2022-11-01 16:06:11'),
(836, 'App\\Models\\User', 321, 'API TOKEN', 'ca2c9a97696dd80def0744c34786f98378f24dde9beab440c872dd230badc544', '[\"*\"]', '2022-11-01 02:39:46', NULL, '2022-11-01 02:39:44', '2022-11-01 02:39:46'),
(837, 'App\\Models\\User', 322, 'API TOKEN', '8b538fb1ab320ce5fbea3cb39180fe12aedd907e856c4d9a574b6436a79798f6', '[\"*\"]', '2022-11-01 02:42:28', NULL, '2022-11-01 02:40:54', '2022-11-01 02:42:28'),
(838, 'App\\Models\\User', 322, 'API TOKEN', '7d4f8b54213f9987437d2135ea152189330543f9a4e76a5c90dc6e6cac076501', '[\"*\"]', '2022-11-01 02:43:07', NULL, '2022-11-01 02:43:03', '2022-11-01 02:43:07'),
(839, 'App\\Models\\User', 296, 'API TOKEN', '21ac33b7df3944e1c98f74edf52c929e941f57382ce49e3ddd59ea642e0324ee', '[\"*\"]', '2022-11-01 23:08:10', NULL, '2022-11-01 16:17:29', '2022-11-01 23:08:10'),
(840, 'App\\Models\\User', 323, 'API TOKEN', '49c40f9f749fdcf99b0bc6f0c387fac96deb4422643f7b29a3451f35c6df1fb4', '[\"*\"]', '2022-11-01 17:14:57', NULL, '2022-11-01 16:39:59', '2022-11-01 17:14:57'),
(843, 'App\\Models\\User', 324, 'API TOKEN', 'f046a449a81fa49cc9ee90c1286079ec64477f2388a1f8e2f87eb9408603edd7', '[\"*\"]', '2022-11-01 16:57:01', NULL, '2022-11-01 16:51:24', '2022-11-01 16:57:01'),
(849, 'App\\Models\\User', 326, 'API TOKEN', 'b3b8db2f3966bee90b351b63abf9218d0d702db1a53651aacad832fba18b100c', '[\"*\"]', '2022-11-01 23:15:22', NULL, '2022-11-01 20:38:00', '2022-11-01 23:15:22'),
(852, 'App\\Models\\User', 327, 'API TOKEN', '700e00db137d832c42d8713b3acd92621c265960e57c32b78ee09bbeb01b0402', '[\"*\"]', '2022-11-01 23:10:10', NULL, '2022-11-01 22:01:54', '2022-11-01 23:10:10'),
(853, 'App\\Models\\User', 316, 'API TOKEN', '8641a1b5cc0c26ba20b8be342e65d9fa971c3ecca3af2f919f6cf636404f2344', '[\"*\"]', '2022-11-02 16:29:54', NULL, '2022-11-01 22:35:29', '2022-11-02 16:29:54'),
(854, 'App\\Models\\User', 296, 'API TOKEN', '5c7dec6bfd8eca9bb6905b02403582f062926093a4e44398389a6c8fcc3923f1', '[\"*\"]', '2022-11-01 23:48:43', NULL, '2022-11-01 22:42:09', '2022-11-01 23:48:43'),
(855, 'App\\Models\\User', 328, 'API TOKEN', '4719744aa58f65c0f47ee79a3b1685a7c31a20bd4ee669827aba1b5e8fb258da', '[\"*\"]', '2022-11-01 23:28:52', NULL, '2022-11-01 23:21:12', '2022-11-01 23:28:52'),
(856, 'App\\Models\\User', 316, 'API TOKEN', '59eb14dba4ed1f6bd53f924268b048a1b0c8976c6a48615d8680227b9b228e88', '[\"*\"]', '2022-11-02 01:08:34', NULL, '2022-11-02 00:10:16', '2022-11-02 01:08:34'),
(857, 'App\\Models\\User', 329, 'API TOKEN', '8813ca3db2818ba24e89463d1058775e996e45c6f631438e19bfd4fe1e7159f6', '[\"*\"]', '2022-11-02 04:38:39', NULL, '2022-11-02 02:12:02', '2022-11-02 04:38:39'),
(858, 'App\\Models\\User', 330, 'API TOKEN', 'b8aa30d5ed8812d237838e60ad11dd6a6bf5c8f88610089be9ebe6b3d4f2c4e2', '[\"*\"]', '2022-11-02 11:00:02', NULL, '2022-11-02 08:24:06', '2022-11-02 11:00:02'),
(861, 'App\\Models\\User', 332, 'API TOKEN', '1de10314623b4ded4914df46b0adc223d59758fd300a116940f423a27adb2f07', '[\"*\"]', '2022-11-02 15:18:53', NULL, '2022-11-02 14:51:15', '2022-11-02 15:18:53'),
(863, 'App\\Models\\User', 334, 'API TOKEN', '192b70667b604965cf3e8fe56e3a7eb8a1d04100ea6bebc456637d9c267a8cdc', '[\"*\"]', '2022-11-02 15:10:54', NULL, '2022-11-02 15:09:06', '2022-11-02 15:10:54'),
(865, 'App\\Models\\User', 316, 'API TOKEN', 'c0049e5c09a6f28816b5cd6546cbc39dafe72bace066cd43a52b4d8e13690f99', '[\"*\"]', '2022-11-02 15:44:32', NULL, '2022-11-02 15:43:26', '2022-11-02 15:44:32'),
(866, 'App\\Models\\User', 336, 'API TOKEN', '1005badc5626601b90a024f80da1b312bb9b23eb1942105069e623b1b934956f', '[\"*\"]', '2022-11-02 16:03:12', NULL, '2022-11-02 15:49:04', '2022-11-02 16:03:12'),
(867, 'App\\Models\\User', 316, 'API TOKEN', 'dcdf0d0682a5fd29777d1192511504b2badfc0ee231bf350ce549dc77d30c20d', '[\"*\"]', '2022-11-02 16:29:46', NULL, '2022-11-02 16:20:59', '2022-11-02 16:29:46'),
(868, 'App\\Models\\User', 337, 'API TOKEN', '5b46cbe5f9b499403cd4a7a35ab1702af18df6e1a88356d5183dfb2b92311659', '[\"*\"]', '2022-11-02 16:47:25', NULL, '2022-11-02 16:31:40', '2022-11-02 16:47:25');

-- --------------------------------------------------------

--
-- Table structure for table `qa_messages`
--

CREATE TABLE `qa_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `topic_id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qa_messages`
--

INSERT INTO `qa_messages` (`id`, `topic_id`, `sender_id`, `read_at`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, 'lkjlk;kogdgfj', '2022-10-12 23:43:45', '2022-10-12 23:43:45'),
(2, 1, 1, NULL, 'تت', '2022-10-17 03:01:00', '2022-10-17 03:01:00'),
(3, 1, 1, NULL, 'تت', '2022-10-17 03:01:10', '2022-10-17 03:01:10'),
(4, 2, 1, NULL, 'hi test', '2022-10-26 19:38:01', '2022-10-26 19:38:01'),
(5, 3, 1, NULL, 'TestTestTestTestTestTestTestTestTestTestTestTest', '2022-10-26 22:53:31', '2022-10-26 22:53:31'),
(6, 4, 1, NULL, 'TestTestTestTestTestTestTestTestTestTestTest', '2022-10-26 22:53:46', '2022-10-26 22:53:46'),
(7, 5, 122, '2022-10-27 00:03:40', 'from user from user from user from user from user from user', '2022-10-26 23:40:14', '2022-10-27 00:03:40'),
(8, 5, 1, '2022-10-27 00:04:32', 'hhfhfhfh kfdkfkfk\r\nlflflf pepepep', '2022-10-27 00:03:59', '2022-10-27 00:04:32'),
(9, 6, 1, NULL, 'ldldldldl', '2022-10-27 01:02:55', '2022-10-27 01:02:55'),
(10, 7, 122, '2022-10-30 15:59:59', 'test content from mohamed testing Loarem ebsom testing text', '2022-10-27 17:16:22', '2022-10-30 15:59:59'),
(11, 8, 241, '2022-10-27 19:41:16', 'test content from mohamed testing Loarem ebsom testing text', '2022-10-27 19:22:38', '2022-10-27 19:41:16'),
(12, 9, 1, NULL, 'حبيبي يا ابراهيمحبيبي يا ابراهيمحبيبي يا ابراهيمحبيبي يا ابراهيمحبيبي يا ابراهيمحبيبي يا ابراهيمحبيبي يا ابراهيم', '2022-10-27 19:48:45', '2022-10-27 19:48:45'),
(13, 10, 1, '2022-10-27 22:17:55', 'test mail from dashboared test mail from dashboared test mail from dashboared test mail from dashboared', '2022-10-27 22:01:14', '2022-10-27 22:17:55'),
(14, 11, 1, NULL, 'test content from mohamed testing Loarem ebsom testing text', '2022-10-27 23:07:17', '2022-10-27 23:07:17'),
(15, 12, 1, NULL, 'tttttttttttttttttttttttttttt', '2022-10-27 23:37:10', '2022-10-27 23:37:10'),
(16, 13, 1, '2022-10-30 15:17:59', 'hi every one', '2022-10-30 15:17:03', '2022-10-30 15:17:59'),
(17, 14, 1, '2022-10-30 16:05:29', 'hi2 good morning', '2022-10-30 15:22:22', '2022-10-30 16:05:29'),
(18, 15, 1, NULL, 'test test', '2022-10-30 15:24:32', '2022-10-30 15:24:32'),
(19, 16, 1, '2022-10-30 16:01:18', 'send massage from mobile to dashboard', '2022-10-30 15:28:59', '2022-10-30 16:01:18'),
(20, 17, 1, '2022-10-30 15:34:26', 'send message from dashboard to mobile', '2022-10-30 15:33:44', '2022-10-30 15:34:26'),
(21, 18, 1, NULL, 'test', '2022-10-30 15:39:17', '2022-10-30 15:39:17'),
(22, 19, 1, '2022-10-30 15:45:00', 'test2', '2022-10-30 15:42:39', '2022-10-30 15:45:00'),
(23, 20, 1, '2022-10-31 14:57:05', 'test eslaaaaaaaaaaaaaaaaaaaaaaaaaaaam', '2022-10-30 15:49:03', '2022-10-31 14:57:05'),
(28, 25, 284, '2022-10-30 17:06:00', 'test1', '2022-10-30 16:43:20', '2022-10-30 17:06:00'),
(29, 26, 284, '2022-10-30 17:06:07', 'tast2', '2022-10-30 16:59:59', '2022-10-30 17:06:07'),
(30, 27, 284, NULL, 'test3', '2022-10-30 17:00:11', '2022-10-30 17:00:11'),
(31, 28, 284, NULL, 'test4', '2022-10-30 17:00:55', '2022-10-30 17:00:55'),
(32, 29, 284, '2022-10-30 17:01:36', 'test5', '2022-10-30 17:01:12', '2022-10-30 17:01:36'),
(33, 30, 284, NULL, 'test6', '2022-10-30 17:01:29', '2022-10-30 17:01:29'),
(34, 31, 284, NULL, 'test6', '2022-10-30 17:01:55', '2022-10-30 17:01:55'),
(35, 32, 284, NULL, 'test7', '2022-10-30 17:02:08', '2022-10-30 17:02:08'),
(36, 33, 284, NULL, 'test8', '2022-10-30 17:02:37', '2022-10-30 17:02:37'),
(37, 34, 284, NULL, 'test9', '2022-10-30 17:02:49', '2022-10-30 17:02:49'),
(38, 35, 284, NULL, 'test10', '2022-10-30 17:03:08', '2022-10-30 17:03:08'),
(39, 36, 1, NULL, 'test1', '2022-10-30 17:15:10', '2022-10-30 17:15:10'),
(40, 37, 1, NULL, 'test2', '2022-10-30 17:16:45', '2022-10-30 17:16:45'),
(41, 38, 1, NULL, 'test3', '2022-10-30 17:17:13', '2022-10-30 17:17:13'),
(42, 39, 1, NULL, 'test4', '2022-10-30 17:17:35', '2022-10-30 17:17:35'),
(43, 40, 1, NULL, 'test5', '2022-10-30 17:18:25', '2022-10-30 17:18:25'),
(44, 41, 1, NULL, 'test6', '2022-10-30 17:18:52', '2022-10-30 17:18:52'),
(45, 42, 1, NULL, 'test7', '2022-10-30 17:19:19', '2022-10-30 17:19:19'),
(46, 43, 1, NULL, 'test8', '2022-10-30 17:19:39', '2022-10-30 17:19:39'),
(47, 44, 1, NULL, 'test9', '2022-10-30 17:20:03', '2022-10-30 17:20:03'),
(48, 45, 1, '2022-10-31 14:53:05', 'test10', '2022-10-30 17:20:26', '2022-10-31 14:53:05'),
(50, 47, 1, '2022-10-31 14:52:52', 'test11', '2022-10-30 17:25:08', '2022-10-31 14:52:52'),
(51, 48, 1, '2022-10-31 16:55:23', 'some content here', '2022-10-31 16:20:11', '2022-10-31 16:55:23'),
(52, 49, 1, '2022-10-31 16:33:41', 'test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1test1', '2022-10-31 16:22:02', '2022-10-31 16:33:41'),
(53, 50, 303, '2022-10-31 16:27:09', 'ibrahimibrahimibrahimibrahimibrahimibrahimibrahim', '2022-10-31 16:23:48', '2022-10-31 16:27:09'),
(54, 51, 303, NULL, 'test the attached file for the attached file for the attached file for the', '2022-10-31 16:55:51', '2022-10-31 16:55:51'),
(55, 52, 304, '2022-10-31 17:48:24', 'test islam mohsen', '2022-10-31 17:47:42', '2022-10-31 17:48:24'),
(56, 52, 1, NULL, 'رد test Islam Mohsen', '2022-10-31 17:49:26', '2022-10-31 17:49:26'),
(57, 52, 1, NULL, 'test hhhh', '2022-10-31 18:04:18', '2022-10-31 18:04:18'),
(58, 53, 304, '2022-10-31 18:06:58', 'test test test test', '2022-10-31 18:05:13', '2022-10-31 18:06:58'),
(59, 54, 1, '2022-10-31 18:18:09', 'test one two test', '2022-10-31 18:12:32', '2022-10-31 18:18:09'),
(60, 55, 1, NULL, 'TEST ISLAMTEST ISLAMTEST ISLAMTEST ISLAMTEST ISLAMTEST ISLAM', '2022-10-31 18:51:14', '2022-10-31 18:51:14'),
(61, 56, 1, '2022-10-31 18:56:11', 'TEST ISLAMTEST ISLAMTEST ISLAMTEST ISLAMTEST ISLAMTEST ISLAMTEST ISLAM', '2022-10-31 18:55:15', '2022-10-31 18:56:11');

-- --------------------------------------------------------

--
-- Table structure for table `qa_topics`
--

CREATE TABLE `qa_topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creator_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qa_topics`
--

INSERT INTO `qa_topics` (`id`, `subject`, `creator_id`, `receiver_id`, `created_at`, `updated_at`) VALUES
(1, 'hkhkhkh', 1, 15, '2022-10-12 23:43:45', '2022-10-12 23:43:45'),
(2, 'test', 1, 194, '2022-10-26 19:38:01', '2022-10-26 19:38:01'),
(3, 'Test', 1, 8, '2022-10-26 22:53:31', '2022-10-26 22:53:31'),
(4, 'TestTestTestTestTestTest', 1, 8, '2022-10-26 22:53:46', '2022-10-26 22:53:46'),
(5, 'from user', 122, 1, '2022-10-26 23:40:14', '2022-10-26 23:40:14'),
(6, 'iiiriri', 1, 122, '2022-10-27 01:02:55', '2022-10-27 01:02:55'),
(7, 'test subject from mohamed testing', 122, 1, '2022-10-27 17:16:22', '2022-10-27 17:16:22'),
(8, 'test subject from mohamed testing', 241, 1, '2022-10-27 19:22:38', '2022-10-27 19:22:38'),
(9, 'حبيبي يا ابراهيم', 1, 241, '2022-10-27 19:48:45', '2022-10-27 19:48:45'),
(10, 'test mail from dashboared', 1, 252, '2022-10-27 22:01:14', '2022-10-27 22:01:14'),
(11, 'test subject from ibrahim  testing', 1, 252, '2022-10-27 23:07:17', '2022-10-27 23:07:17'),
(12, 'test', 1, 252, '2022-10-27 23:37:10', '2022-10-27 23:37:10'),
(13, 'hi', 1, 274, '2022-10-30 15:17:03', '2022-10-30 15:17:03'),
(14, 'hi 2', 1, 274, '2022-10-30 15:22:22', '2022-10-30 15:22:22'),
(15, 'hi test', 1, 268, '2022-10-30 15:24:32', '2022-10-30 15:24:32'),
(16, 'from mobile to dashboard', 1, 274, '2022-10-30 15:28:59', '2022-10-30 15:28:59'),
(17, 'from dashboard to mobile', 1, 274, '2022-10-30 15:33:44', '2022-10-30 15:33:44'),
(18, 'test', 1, 268, '2022-10-30 15:39:17', '2022-10-30 15:39:17'),
(19, 'test', 1, 281, '2022-10-30 15:42:39', '2022-10-30 15:42:39'),
(20, 'test eslaaaaaaaaaaaaaaaaaaaaaaaaaaaam', 1, 281, '2022-10-30 15:49:03', '2022-10-30 15:49:03'),
(25, 'test1', 284, 1, '2022-10-30 16:43:20', '2022-10-30 16:43:20'),
(26, 'tast2', 284, 1, '2022-10-30 16:59:59', '2022-10-30 16:59:59'),
(27, 'test3', 284, 1, '2022-10-30 17:00:11', '2022-10-30 17:00:11'),
(28, 'test4', 284, 1, '2022-10-30 17:00:55', '2022-10-30 17:00:55'),
(29, 'test5', 284, 1, '2022-10-30 17:01:12', '2022-10-30 17:01:12'),
(30, 'test6', 284, 1, '2022-10-30 17:01:29', '2022-10-30 17:01:29'),
(31, 'test6', 284, 1, '2022-10-30 17:01:55', '2022-10-30 17:01:55'),
(32, 'test7', 284, 1, '2022-10-30 17:02:08', '2022-10-30 17:02:08'),
(33, 'test8', 284, 1, '2022-10-30 17:02:37', '2022-10-30 17:02:37'),
(34, 'test9', 284, 1, '2022-10-30 17:02:49', '2022-10-30 17:02:49'),
(35, 'test10', 284, 1, '2022-10-30 17:03:08', '2022-10-30 17:03:08'),
(36, 'test1', 1, 284, '2022-10-30 17:15:10', '2022-10-30 17:15:10'),
(37, 'test2', 1, 284, '2022-10-30 17:16:45', '2022-10-30 17:16:45'),
(38, 'test3', 1, 284, '2022-10-30 17:17:13', '2022-10-30 17:17:13'),
(39, 'test4', 1, 284, '2022-10-30 17:17:35', '2022-10-30 17:17:35'),
(40, 'test5', 1, 284, '2022-10-30 17:18:25', '2022-10-30 17:18:25'),
(41, 'test6', 1, 284, '2022-10-30 17:18:52', '2022-10-30 17:18:52'),
(42, 'test7', 1, 284, '2022-10-30 17:19:19', '2022-10-30 17:19:19'),
(43, 'test8', 1, 284, '2022-10-30 17:19:39', '2022-10-30 17:19:39'),
(44, 'test9', 1, 284, '2022-10-30 17:20:02', '2022-10-30 17:20:02'),
(45, 'test10', 1, 284, '2022-10-30 17:20:26', '2022-10-30 17:20:26'),
(47, 'test11', 1, 284, '2022-10-30 17:25:08', '2022-10-30 17:25:08'),
(48, 'hello from dashboard', 1, 303, '2022-10-31 16:20:11', '2022-10-31 16:20:11'),
(49, 'test1', 1, 303, '2022-10-31 16:22:02', '2022-10-31 16:22:02'),
(50, 'test subject from ibrahim  testing', 303, 1, '2022-10-31 16:23:48', '2022-10-31 16:23:48'),
(51, 'testttttttt', 303, 1, '2022-10-31 16:55:51', '2022-10-31 16:55:51'),
(52, 'test islam', 304, 1, '2022-10-31 17:47:42', '2022-10-31 17:47:42'),
(53, 'test2islam', 304, 1, '2022-10-31 18:05:13', '2022-10-31 18:05:13'),
(54, 'test1test', 1, 304, '2022-10-31 18:12:32', '2022-10-31 18:12:32'),
(55, 'TEST ISLAM', 1, 281, '2022-10-31 18:51:14', '2022-10-31 18:51:14'),
(56, 'TEST ISLAM', 1, 316, '2022-10-31 18:55:15', '2022-10-31 18:55:15');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `test_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question_text`, `points`, `photo`, `created_at`, `updated_at`, `deleted_at`, `test_id`) VALUES
(1, 'dsfsfsdfsfsf', 342, NULL, '2022-10-12 18:17:57', '2022-11-02 15:15:44', '2022-11-02 15:15:44', 1),
(2, 'ldldldl', 223, NULL, '2022-10-12 18:25:01', '2022-11-02 15:15:44', '2022-11-02 15:15:44', 1),
(4, 'Questio with image', 9, '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/photo/4-7wg.png', '2022-10-12 18:35:48', '2022-11-02 15:15:44', '2022-11-02 15:15:44', 1),
(5, 'questiot8futfugtfugucg yggygfygyg', 3, NULL, '2022-10-12 21:37:18', '2022-11-02 15:15:44', '2022-11-02 15:15:44', 2),
(6, 'questiot8futfugtfugucg yggygfygyg', 3, '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/photo/6-qG2.jpg', '2022-10-12 21:37:42', '2022-11-02 15:15:44', '2022-11-02 15:15:44', 2),
(7, 'ssfFffAF', 1, '', '2022-10-12 21:55:13', '2022-11-02 15:15:44', '2022-11-02 15:15:44', 2),
(8, 'Test Question', 5, '', '2022-10-18 15:19:58', '2022-11-02 15:15:44', '2022-11-02 15:15:44', 2),
(9, 'Question 1', 10, '', '2022-10-19 15:44:46', '2022-11-02 15:15:44', '2022-11-02 15:15:44', 3),
(10, 'Question 1', 1, '', '2022-10-19 16:33:47', '2022-11-02 15:15:44', '2022-11-02 15:15:44', 4),
(11, 'Question 2', 10, '', '2022-10-19 16:34:39', '2022-11-02 15:15:44', '2022-11-02 15:15:44', 4),
(12, 'Question 1', 7, '', '2022-10-20 06:09:55', '2022-11-02 15:15:44', '2022-11-02 15:15:44', 4),
(13, 'Test Question', 6, '', '2022-10-23 15:28:15', '2022-11-02 15:15:44', '2022-11-02 15:15:44', 2),
(14, 'test for image', 1, '', '2022-10-23 15:45:16', '2022-11-02 15:15:44', '2022-11-02 15:15:44', 2),
(15, 'test for image 2', 1, '', '2022-10-23 15:46:57', '2022-11-02 15:15:44', '2022-11-02 15:15:44', 2),
(16, 'test for image 3', 1, '/tmp/phpydo0Sq', '2022-10-23 15:55:41', '2022-11-02 15:15:44', '2022-11-02 15:15:44', 2),
(17, 'test for image 3', 1, '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/photo/17-XQK.png', '2022-10-23 15:56:12', '2022-11-02 15:15:44', '2022-11-02 15:15:44', 2),
(18, 'Find the roots of the following equation : 5X2 + 6X  + 1 = 0', 4, '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/photo/18-KFt.png', '2022-10-23 16:13:14', '2022-11-02 15:15:44', '2022-11-02 15:15:44', 5),
(19, 'What is the definition of \"weight\"?', 3, '', '2022-10-25 20:40:20', '2022-11-02 15:15:44', '2022-11-02 15:15:44', 6),
(20, 'The weight of an object_______as it moves away from the center of Earth ( pull of gravity is less than on earth)', 2, '', '2022-10-25 20:48:34', '2022-11-02 15:15:44', '2022-11-02 15:15:44', 6),
(21, 'unit of weight is', 1, '', '2022-10-25 20:52:33', '2022-11-02 15:15:44', '2022-11-02 15:15:44', 6),
(22, 'Which of this additions gives 15 ?', 100, '', '2022-10-27 23:37:30', '2022-11-02 15:15:44', '2022-11-02 15:15:44', 7),
(23, 'Which of this additions gives 19 ?', 0, '', '2022-10-28 00:25:17', '2022-11-02 15:15:44', '2022-11-02 15:15:44', 7),
(24, 'hhhhhhhh ?', 66, '', '2022-10-28 00:26:24', '2022-10-28 00:26:42', '2022-10-28 00:26:42', 7),
(25, 'Which of this additions gives 20 ?', 5, '', '2022-10-30 14:46:10', '2022-11-02 15:15:44', '2022-11-02 15:15:44', 8),
(26, 'Which of this additions gives 20 ?', 5, '', '2022-10-30 14:46:15', '2022-10-30 14:46:41', '2022-10-30 14:46:41', 8),
(27, 'Which of this additions gives 20 ?', 5, '', '2022-10-30 14:46:16', '2022-10-30 14:46:34', '2022-10-30 14:46:34', 8),
(28, 'Which of this additions gives 20 ?', 5, '', '2022-10-30 14:46:16', '2022-10-30 14:46:24', '2022-10-30 14:46:24', 8),
(29, 'a', 6, '', '2022-10-30 14:47:10', '2022-11-02 15:15:44', '2022-11-02 15:15:44', 8),
(30, 'Which of this additions gives 40 ?', 2, '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/photo/30-fge.jpg', '2022-10-30 14:51:13', '2022-11-02 15:15:44', '2022-11-02 15:15:44', 8),
(31, 'Which of this additions gives 5 ?', 5, '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/photo/31-967.jpg', '2022-10-30 14:58:13', '2022-11-02 15:15:44', '2022-11-02 15:15:44', 8),
(32, 'Which of this additions gives 18 ?', 2, '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/photo/32-JZY.gif', '2022-10-30 14:59:08', '2022-11-02 15:15:44', '2022-11-02 15:15:44', 8),
(33, 'Which of this additions gives 40 ?', 8, '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/photo/33-rJS.jfif', '2022-10-30 15:05:12', '2022-11-02 15:15:44', '2022-11-02 15:15:44', 8),
(34, 'Which of this additions gives 15 ?', 20, '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/photo/34-d7p.jpg', '2022-10-30 21:31:23', '2022-11-02 15:15:44', '2022-11-02 15:15:44', 9),
(35, 'how many geckos are there?', 1, '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/photo/35-KVj.png', '2022-10-31 15:57:42', '2022-10-31 15:57:42', NULL, 10),
(36, 'How many lions are there?', 2, '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/photo/36-yUs.jpg', '2022-10-31 16:09:18', '2022-10-31 16:09:18', NULL, 10),
(37, 'How many Cats are there?', 2, '', '2022-10-31 16:10:52', '2022-11-02 13:58:39', '2022-11-02 13:58:39', 10),
(38, '6-4=', 2, '', '2022-10-31 16:12:09', '2022-11-02 13:58:44', '2022-11-02 13:58:44', 10),
(39, '6+3=', 2, '', '2022-10-31 16:44:24', '2022-11-02 14:01:47', NULL, 11),
(40, '1+0=', 2, '', '2022-10-31 16:47:42', '2022-11-02 14:02:18', NULL, 11),
(41, '10+16=', 2, '', '2022-10-31 16:52:35', '2022-10-31 18:21:55', '2022-10-31 18:21:55', 12),
(42, '12+14', 2, '', '2022-10-31 16:53:49', '2022-10-31 18:21:32', '2022-10-31 18:21:32', 12),
(43, 'Which of this additions gives 50 ?', 2, '', '2022-10-31 17:30:50', '2022-10-31 17:32:16', '2022-10-31 17:32:16', 12),
(44, 'Which of this additions gives 15 ?', 2, '', '2022-10-31 17:32:50', '2022-10-31 17:35:40', '2022-10-31 17:35:40', 12),
(45, 'Which of this additions gives 15 ?', 2, '', '2022-10-31 17:36:08', '2022-10-31 18:21:12', '2022-10-31 18:21:12', 12),
(46, 'Which of this additions gives 15 ?', 2, '', '2022-10-31 18:23:09', '2022-10-31 18:23:09', NULL, 12),
(47, 'Which of this additions gives 19 ?', NULL, '', '2022-10-31 19:01:32', '2022-11-01 18:44:28', '2022-11-01 18:44:28', 12),
(48, 'Which of this additions gives 20 ?', 2, '', '2022-10-31 19:03:48', '2022-11-01 00:21:53', NULL, 12),
(49, 'Which of this additions gives 40 ?', 1, '', '2022-10-31 19:05:25', '2022-11-01 18:44:51', '2022-11-01 18:44:51', 12),
(50, 'Which of this additions gives 100 ?', NULL, '', '2022-10-31 19:05:52', '2022-10-31 19:05:52', NULL, 12),
(51, 'Which of this additions gives 20 ?', 2, '', '2022-10-31 19:16:11', '2022-10-31 19:30:51', '2022-10-31 19:30:51', 12),
(52, 'Which of this additions gives 5000 ?', 2, '', '2022-10-31 19:16:59', '2022-10-31 19:31:59', '2022-10-31 19:31:59', 12),
(53, 'Which of this additions gives 15 ?', 2, '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/photo/53-vCO.png', '2022-10-31 22:16:33', '2022-11-01 00:21:32', '2022-11-01 00:21:32', 12),
(54, 'Which of this additions gives 20 ?', 2, '', '2022-11-01 20:43:10', '2022-11-01 20:43:21', '2022-11-01 20:43:21', 15),
(55, 'Which of this additions gives 20 ?', 2, '', '2022-11-01 20:44:30', '2022-11-02 15:15:44', '2022-11-02 15:15:44', 15),
(56, 'Which of this additions gives 15 ?', 2, '', '2022-11-01 20:45:46', '2022-11-02 15:15:44', '2022-11-02 15:15:44', 15),
(57, 'Which of this additions gives 19 ?', 2, '', '2022-11-01 20:48:58', '2022-11-02 15:15:44', '2022-11-02 15:15:44', 15),
(58, 'Which of this additions gives 88 ?', 2, '', '2022-11-01 20:49:18', '2022-11-02 15:15:44', '2022-11-02 15:15:44', 15),
(59, 'Which of this additions gives 1000 ?', 2, '', '2022-11-01 22:14:34', '2022-11-01 22:37:15', '2022-11-01 22:37:15', 15),
(60, 'How many Cats are there?', 2, '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/November/photo/60-rcD.jpg', '2022-11-02 13:59:00', '2022-11-02 13:59:00', NULL, 10),
(61, 'How many Birds are there?', 2, '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/November/photo/61-0cn.jpg', '2022-11-02 13:59:40', '2022-11-02 13:59:40', NULL, 10),
(62, '2+9=', 2, '', '2022-11-02 14:02:32', '2022-11-02 14:02:42', NULL, 11),
(63, '10+15=', 2, '', '2022-11-02 14:04:41', '2022-11-02 14:04:41', NULL, 11),
(64, '12+37', 2, '', '2022-11-02 14:06:02', '2022-11-02 14:06:02', NULL, 11),
(65, 'How many Horses are there?', 2, '', '2022-11-02 14:09:52', '2022-11-02 14:10:16', '2022-11-02 14:10:16', 10),
(66, 'How many Horses are there? 2', 2, '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/November/photo/66-HgU.jpg', '2022-11-02 14:10:45', '2022-11-02 14:10:45', NULL, 10),
(67, 'Which of this additions gives 200?', 2, '', '2022-11-02 14:13:58', '2022-11-02 14:13:58', NULL, 12),
(68, 'Which of this additions gives 300 ?', 2, '', '2022-11-02 14:14:15', '2022-11-02 14:14:15', NULL, 12),
(69, '10-3=', 2, '', '2022-11-02 14:19:32', '2022-11-02 14:19:32', NULL, 16),
(70, '16-7=', 2, '', '2022-11-02 14:20:14', '2022-11-02 14:20:22', NULL, 16),
(71, '38-9=', 2, '', '2022-11-02 14:22:31', '2022-11-02 14:22:52', NULL, 16),
(72, '84-50=', 2, '', '2022-11-02 14:23:50', '2022-11-02 14:24:16', NULL, 16),
(73, '120-77=', 2, '', '2022-11-02 14:25:55', '2022-11-02 14:44:37', NULL, 16);

-- --------------------------------------------------------

--
-- Table structure for table `question_options`
--

CREATE TABLE `question_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_correct` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `question_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_options`
--

INSERT INTO `question_options` (`id`, `option_text`, `is_correct`, `created_at`, `updated_at`, `deleted_at`, `question_id`) VALUES
(1, 'test option', 1, '2022-10-18 16:07:31', '2022-10-18 16:07:31', NULL, NULL),
(2, 'test option 2', 1, '2022-10-18 16:08:43', '2022-10-18 16:08:43', NULL, NULL),
(3, 'test option3', 1, '2022-10-18 16:10:29', '2022-10-18 16:10:29', NULL, NULL),
(4, 'test option 4', 1, '2022-10-18 16:11:29', '2022-10-18 16:11:29', NULL, NULL),
(5, 'test option 6', 1, '2022-10-18 17:04:16', '2022-10-18 17:04:16', NULL, NULL),
(6, 'test for adding', 1, '2022-10-18 17:45:05', '2022-10-23 16:50:10', '2022-10-23 16:50:10', 6),
(7, 'test for adding', 1, '2022-10-18 17:45:05', '2022-10-20 17:04:06', '2022-10-20 17:04:06', 6),
(8, 'test option', 0, '2022-10-18 17:48:17', '2022-10-23 17:10:48', '2022-10-23 17:10:48', 6),
(9, 'test option', 1, '2022-10-18 17:50:27', '2022-10-20 17:04:09', '2022-10-20 17:04:09', 6),
(10, 'test option', 0, '2022-10-18 17:52:25', '2022-10-23 17:11:01', '2022-10-23 17:11:01', 6),
(11, 'test option 2', 1, '2022-10-18 17:54:19', '2022-10-20 17:07:07', '2022-10-20 17:07:07', 6),
(12, 'test option 2', 1, '2022-10-18 17:55:17', '2022-10-20 17:04:40', '2022-10-20 17:04:40', 6),
(13, 'test option 2', 1, '2022-10-18 18:17:23', '2022-10-20 17:04:44', '2022-10-20 17:04:44', 6),
(14, 'test option 2', 1, '2022-10-18 18:17:37', '2022-10-20 17:05:08', '2022-10-20 17:05:08', 6),
(15, 'test option 2', 1, '2022-10-18 18:17:37', '2022-10-20 17:06:26', '2022-10-20 17:06:26', 6),
(16, 'test option 2', 1, '2022-10-18 18:18:08', '2022-10-20 17:04:46', '2022-10-20 17:04:46', 6),
(17, 'test option 2', 1, '2022-10-18 18:18:16', '2022-10-20 17:05:01', '2022-10-20 17:05:01', 6),
(18, 'test option 2', 1, '2022-10-18 18:18:56', '2022-10-20 17:05:11', '2022-10-20 17:05:11', 6),
(19, 'test option 2', 1, '2022-10-18 18:19:37', '2022-10-20 17:05:43', '2022-10-20 17:05:43', 6),
(20, 'test option 2', 1, '2022-10-18 18:20:20', '2022-10-20 17:05:46', '2022-10-20 17:05:46', 6),
(21, 'test option 2', 1, '2022-10-18 18:20:56', '2022-10-20 17:04:31', '2022-10-20 17:04:31', 6),
(22, 'test option 2', 1, '2022-10-18 18:21:05', '2022-10-20 17:04:13', '2022-10-20 17:04:13', 6),
(23, 'test option 2', 1, '2022-10-18 18:21:27', '2022-10-20 17:07:03', '2022-10-20 17:07:03', 6),
(24, 'test option 2', 1, '2022-10-18 18:22:12', '2022-10-20 17:06:36', '2022-10-20 17:06:36', 6),
(25, 'test option 2', 1, '2022-10-18 18:22:25', '2022-10-20 17:04:58', '2022-10-20 17:04:58', 6),
(26, 'test option 2', 1, '2022-10-18 18:22:52', '2022-10-20 17:05:14', '2022-10-20 17:05:14', 6),
(27, 'test option 2', 1, '2022-10-18 18:23:03', '2022-10-20 17:06:53', '2022-10-20 17:06:53', 6),
(28, 'test option 2', 1, '2022-10-18 18:29:17', '2022-10-20 17:05:55', '2022-10-20 17:05:55', 6),
(29, 'test option 2', 1, '2022-10-18 18:30:01', '2022-10-20 17:06:05', '2022-10-20 17:06:05', 6),
(30, 'test option 2', 1, '2022-10-18 18:33:52', '2022-10-20 17:06:12', '2022-10-20 17:06:12', 6),
(31, 'test option 2', 1, '2022-10-18 18:35:58', '2022-10-20 17:06:09', '2022-10-20 17:06:09', 6),
(32, 'test option 2', 0, '2022-10-18 18:36:28', '2022-10-23 16:53:03', '2022-10-23 16:53:03', 6),
(33, 'erffwwgr', 1, '2022-10-18 18:36:47', '2022-10-20 17:04:28', '2022-10-20 17:04:28', 6),
(34, 'erffwwgr', 1, '2022-10-18 18:36:48', '2022-10-20 17:04:25', '2022-10-20 17:04:25', 6),
(35, 'erffwwgr', 1, '2022-10-18 18:36:48', '2022-10-20 17:05:58', '2022-10-20 17:05:58', 6),
(36, 'test option3', 1, '2022-10-18 18:38:40', '2022-10-20 17:06:57', '2022-10-20 17:06:57', 6),
(37, 'test option3', 1, '2022-10-18 18:41:04', '2022-10-20 17:06:16', '2022-10-20 17:06:16', 6),
(38, 'sdf', 1, '2022-10-18 18:42:04', '2022-10-20 17:05:05', '2022-10-20 17:05:05', 6),
(39, 'sdf', 1, '2022-10-18 18:43:10', '2022-10-20 17:06:02', '2022-10-20 17:06:02', 6),
(40, 'test option 2', 1, '2022-10-18 18:44:40', '2022-10-20 15:00:08', '2022-10-20 15:00:08', 6),
(41, 'test option 2', 1, '2022-10-18 19:32:34', '2022-10-20 17:03:47', '2022-10-20 17:03:47', 5),
(42, 'test option 2', 1, '2022-10-18 19:32:43', '2022-10-20 16:57:00', '2022-10-20 16:57:00', 8),
(43, 'test option 4', 1, '2022-10-18 19:37:46', '2022-10-20 17:07:00', '2022-10-20 17:07:00', 6),
(44, 'test option 4', 1, '2022-10-18 19:37:52', '2022-10-20 17:03:45', '2022-10-20 17:03:45', 6),
(45, 'test option 4', 1, '2022-10-18 19:46:11', '2022-10-20 16:56:45', '2022-10-20 16:56:45', 5),
(46, 'test option 2', 1, '2022-10-18 19:51:25', '2022-10-23 14:15:15', '2022-10-23 14:15:15', 5),
(47, 'test option 2', 0, '2022-10-18 19:52:16', '2022-10-23 16:31:06', '2022-10-23 16:31:06', 5),
(48, 'test option 2', 1, '2022-10-18 19:52:55', '2022-10-23 16:17:59', '2022-10-23 16:17:59', 5),
(49, 'test option 2', 0, '2022-10-18 19:53:06', '2022-10-23 16:31:12', '2022-10-23 16:31:12', 5),
(50, 'test option 2', 0, '2022-10-19 16:35:06', '2022-10-20 15:56:01', NULL, 10),
(51, 'test option 4', 1, '2022-10-19 16:35:45', '2022-10-19 16:35:45', NULL, 10),
(52, 'test option 4', 1, '2022-10-19 16:39:48', '2022-10-19 16:39:48', NULL, 10),
(53, 'test option 4', 1, '2022-10-19 17:10:30', '2022-10-19 17:10:30', NULL, 10),
(54, 'test option 2', 1, '2022-10-19 17:11:47', '2022-10-19 17:11:47', NULL, 10),
(55, 'test option 2', 0, '2022-10-20 04:58:04', '2022-10-20 04:58:04', NULL, 11),
(56, 'test option 4', 0, '2022-10-20 04:58:15', '2022-10-20 04:58:15', NULL, 11),
(57, 'test option 2', 1, '2022-10-20 04:58:41', '2022-10-20 04:58:41', NULL, 11),
(58, 'test option 2', 0, '2022-10-20 05:02:04', '2022-10-20 05:02:04', NULL, 11),
(59, 'test option 2', 0, '2022-10-20 05:06:21', '2022-10-20 05:06:21', NULL, 11),
(60, 'test option 2', 0, '2022-10-20 05:07:37', '2022-10-20 05:07:37', NULL, 11),
(61, 'test option 2', 0, '2022-10-20 05:07:49', '2022-10-20 05:07:49', NULL, 10),
(62, 'test option 2', 0, '2022-10-20 05:09:21', '2022-10-20 05:09:21', NULL, 10),
(63, 'test option 2', 0, '2022-10-20 05:09:32', '2022-10-20 05:09:32', NULL, 10),
(64, 'test option 4', 0, '2022-10-20 05:10:22', '2022-10-20 05:10:22', NULL, 11),
(65, 'test option3', 0, '2022-10-20 06:08:40', '2022-10-20 06:08:40', NULL, 11),
(66, 'test option 2', 0, '2022-10-20 06:10:03', '2022-10-20 06:10:03', NULL, 12),
(67, 'test option 4', 0, '2022-10-20 06:19:27', '2022-10-20 06:19:27', NULL, 4),
(68, 'test option 2', 0, '2022-10-20 06:19:49', '2022-10-20 06:19:49', NULL, 4),
(69, 'test option 4', 0, '2022-10-20 06:23:09', '2022-10-20 14:58:37', NULL, 1),
(70, 'test option 4', 1, '2022-10-20 14:40:21', '2022-10-20 14:40:21', NULL, 4),
(71, 'test option 2', 1, '2022-10-20 15:39:28', '2022-10-20 15:39:28', NULL, 12),
(72, 'test option 2', 1, '2022-10-20 17:07:55', '2022-10-23 17:11:38', '2022-10-23 17:11:38', 7),
(73, 'test option 2', 0, '2022-10-20 17:08:08', '2022-10-23 17:12:11', '2022-10-23 17:12:11', 7),
(74, 'choose #1', 0, '2022-10-23 16:31:02', '2022-10-23 16:36:18', '2022-10-23 16:36:18', 5),
(75, 'choose number 1', 0, '2022-10-23 16:36:04', '2022-10-23 16:37:02', '2022-10-23 16:37:02', 5),
(76, 'choice Number 1', 0, '2022-10-23 16:36:59', '2022-10-23 16:37:49', '2022-10-23 16:37:49', 5),
(77, 'choice Number 2', 1, '2022-10-23 16:37:22', '2022-10-23 16:48:41', '2022-10-23 16:48:41', 5),
(78, 'choice Number 3', 1, '2022-10-23 16:37:37', '2022-10-23 16:48:46', '2022-10-23 16:48:46', 5),
(79, 'choice Number 1', 1, '2022-10-23 16:49:08', '2022-10-23 20:16:45', NULL, 5),
(80, 'choice Number 1', 0, '2022-10-23 16:49:21', '2022-10-23 16:50:26', '2022-10-23 16:50:26', 5),
(81, 'choice Number 1', 1, '2022-10-23 16:49:42', '2022-10-23 16:50:22', '2022-10-23 16:50:22', 5),
(82, 'choice Number', 1, '2022-10-23 16:49:51', '2022-10-23 16:50:18', '2022-10-23 16:50:18', 5),
(83, 'choice Number 2', 0, '2022-10-23 16:50:57', '2022-10-23 16:50:57', NULL, 5),
(84, 'choice Number 3', 0, '2022-10-23 16:52:55', '2022-10-23 16:52:55', NULL, 5),
(85, 'choice Number 2', 0, '2022-10-23 17:11:24', '2022-10-23 17:11:47', '2022-10-23 17:11:47', 6),
(86, 'choice Number 1', 1, '2022-10-23 17:12:07', '2022-10-23 20:16:37', NULL, 6),
(87, 'choice Number 2', 0, '2022-10-23 17:12:36', '2022-10-23 17:12:36', NULL, 6),
(88, 'choice Number 3', 0, '2022-10-23 17:12:50', '2022-10-23 17:12:50', NULL, 6),
(89, 'choice Number 1', 1, '2022-10-23 17:13:10', '2022-10-23 20:16:51', NULL, 7),
(90, 'choice Number 2', 0, '2022-10-23 17:13:19', '2022-10-23 17:13:19', NULL, 7),
(91, 'choice Number 3', 0, '2022-10-23 17:14:04', '2022-10-23 17:14:04', NULL, 7),
(92, 'the force in which gravity pulls on an object', 1, '2022-10-25 20:40:52', '2022-10-25 20:44:53', NULL, 19),
(93, 'the time it takes to get on a ride', 0, '2022-10-25 20:41:30', '2022-10-26 18:35:53', NULL, 19),
(94, 'the amount of matter in an object', 0, '2022-10-25 20:41:51', '2022-10-25 20:41:51', NULL, 19),
(95, 'the size of an object', 0, '2022-10-25 20:42:08', '2022-10-25 20:42:08', NULL, 19),
(96, 'increases', 0, '2022-10-25 20:49:10', '2022-10-25 20:49:10', NULL, 20),
(97, 'stays the same', 0, '2022-10-25 20:49:35', '2022-10-25 20:50:37', '2022-10-25 20:50:37', 20),
(98, 'stays the same', 1, '2022-10-25 20:49:49', '2022-10-25 20:50:05', '2022-10-25 20:50:05', 20),
(99, 'stays the same', 1, '2022-10-25 20:50:30', '2022-10-25 20:50:30', NULL, 20),
(100, 'triples', 0, '2022-10-25 20:50:56', '2022-10-25 20:54:29', NULL, 20),
(101, 'decreases', 0, '2022-10-25 20:51:09', '2022-10-25 20:51:09', NULL, 20),
(102, 'decreases', 0, '2022-10-25 20:51:10', '2022-10-25 20:51:32', '2022-10-25 20:51:32', 20),
(103, 'Kg', 1, '2022-10-25 20:53:02', '2022-10-25 20:59:45', NULL, 21),
(104, 'N', 0, '2022-10-25 20:53:39', '2022-10-25 20:59:44', NULL, 21),
(105, 'metre/sec', 0, '2022-10-25 20:57:25', '2022-10-25 20:57:25', NULL, 21),
(106, 'Kgm/s', 0, '2022-10-25 20:57:55', '2022-10-25 20:57:55', NULL, 21),
(107, '8+5', 0, '2022-10-27 23:47:36', '2022-10-27 23:47:36', NULL, 22),
(108, '7+8', 1, '2022-10-27 23:51:01', '2022-10-27 23:52:31', NULL, 22),
(109, '7+1', 0, '2022-10-27 23:51:12', '2022-10-27 23:52:37', NULL, 22),
(110, '2+1', 0, '2022-10-27 23:51:37', '2022-10-27 23:52:41', NULL, 22),
(111, '8+5', 0, '2022-10-28 00:29:23', '2022-10-28 00:29:23', NULL, 23),
(112, '7+8', 0, '2022-10-28 00:29:48', '2022-10-28 00:29:48', NULL, 23),
(113, '7+8', 0, '2022-10-28 00:29:48', '2022-10-30 14:27:58', '2022-10-30 14:27:58', 23),
(114, 'kkkk', 0, '2022-10-30 22:27:21', '2022-10-30 22:30:18', NULL, 34),
(115, 'kkkkkkkk', 1, '2022-10-30 22:27:48', '2022-10-30 22:30:18', NULL, 34),
(116, 'iiiii', 0, '2022-10-30 22:27:57', '2022-10-30 22:31:45', '2022-10-30 22:31:45', 34),
(117, 'iiiiiiiiiiihhh', 0, '2022-10-30 22:29:28', '2022-10-30 22:31:44', '2022-10-30 22:31:44', 34),
(118, 'kkkk', 0, '2022-10-30 22:31:55', '2022-10-30 22:31:55', NULL, 34),
(119, '0', 0, '2022-10-31 15:58:10', '2022-10-31 16:06:37', NULL, 35),
(120, '1', 0, '2022-10-31 15:58:31', '2022-10-31 16:06:48', '2022-10-31 16:06:48', 35),
(121, '2', 1, '2022-10-31 16:00:04', '2022-10-31 16:06:38', '2022-10-31 16:06:38', 35),
(122, '4', 0, '2022-10-31 16:03:41', '2022-10-31 16:06:31', '2022-10-31 16:06:31', 35),
(123, '1', 1, '2022-10-31 16:07:02', '2022-10-31 16:07:02', NULL, 35),
(124, '2', 0, '2022-10-31 16:07:21', '2022-10-31 16:07:21', NULL, 35),
(125, '3', 0, '2022-10-31 16:07:29', '2022-10-31 16:07:29', NULL, 35),
(126, '5', 0, '2022-10-31 16:20:20', '2022-10-31 16:20:20', NULL, 37),
(127, '9', 0, '2022-10-31 16:20:36', '2022-10-31 16:20:36', NULL, 37),
(128, '7', 1, '2022-10-31 16:20:49', '2022-10-31 16:20:49', NULL, 37),
(129, '8', 0, '2022-10-31 16:21:02', '2022-10-31 16:21:02', NULL, 37),
(130, '2', 1, '2022-10-31 16:21:28', '2022-10-31 16:21:28', NULL, 38),
(131, '1', 0, '2022-10-31 16:21:38', '2022-10-31 16:21:38', NULL, 38),
(132, '3', 0, '2022-10-31 16:21:48', '2022-10-31 16:21:48', NULL, 38),
(133, '4', 0, '2022-10-31 16:22:01', '2022-10-31 16:22:01', NULL, 38),
(134, '6', 0, '2022-10-31 16:22:15', '2022-10-31 16:22:15', NULL, 36),
(135, '8', 0, '2022-10-31 16:22:21', '2022-10-31 16:22:21', NULL, 36),
(136, '10', 1, '2022-10-31 16:22:36', '2022-10-31 16:22:36', NULL, 36),
(137, '9', 0, '2022-10-31 16:22:49', '2022-11-01 18:43:11', '2022-11-01 18:43:11', 36),
(138, '3', 1, '2022-10-31 16:44:37', '2022-11-02 14:01:57', '2022-11-02 14:01:57', 39),
(139, '2', 0, '2022-10-31 16:46:11', '2022-11-02 14:02:06', NULL, 39),
(140, '5', 0, '2022-10-31 16:46:19', '2022-11-02 14:02:06', NULL, 39),
(141, '4', 0, '2022-10-31 16:46:30', '2022-11-02 14:02:06', NULL, 39),
(142, '0', 0, '2022-10-31 16:47:54', '2022-10-31 16:47:54', NULL, 40),
(143, '1', 1, '2022-10-31 16:48:10', '2022-10-31 16:48:10', NULL, 40),
(144, '2', 0, '2022-10-31 16:48:19', '2022-10-31 16:48:19', NULL, 40),
(145, '3', 0, '2022-10-31 16:48:32', '2022-10-31 16:48:32', NULL, 40),
(146, '24', 0, '2022-10-31 16:52:50', '2022-10-31 17:37:17', NULL, 41),
(147, '26', 0, '2022-10-31 16:53:02', '2022-10-31 17:37:17', NULL, 41),
(148, '22', 0, '2022-10-31 16:53:15', '2022-10-31 17:37:17', NULL, 41),
(149, '27', 0, '2022-10-31 16:53:27', '2022-10-31 17:37:17', NULL, 41),
(150, '26', 1, '2022-10-31 16:54:00', '2022-10-31 16:54:00', NULL, 42),
(151, '29', 1, '2022-10-31 16:54:30', '2022-10-31 17:37:17', NULL, 42),
(152, '23', 0, '2022-10-31 16:54:38', '2022-10-31 16:54:38', NULL, 42),
(153, '27', 0, '2022-10-31 16:54:47', '2022-10-31 16:54:47', NULL, 42),
(154, '20', 0, '2022-10-31 17:31:12', '2022-10-31 17:31:12', NULL, 43),
(155, '50', 1, '2022-10-31 17:31:33', '2022-10-31 17:31:33', NULL, 43),
(156, '5', 1, '2022-10-31 17:31:49', '2022-10-31 17:31:49', NULL, 43),
(157, '5', 1, '2022-10-31 17:33:08', '2022-10-31 17:33:08', NULL, 44),
(158, '2', 1, '2022-10-31 17:33:35', '2022-10-31 17:34:32', NULL, 44),
(159, '6', 1, '2022-10-31 17:33:49', '2022-10-31 17:34:32', NULL, 44),
(160, '8', 1, '2022-10-31 17:33:56', '2022-10-31 17:35:26', NULL, 44),
(161, '2', 1, '2022-10-31 17:36:20', '2022-10-31 17:36:20', NULL, 45),
(162, '5', 1, '2022-10-31 17:36:34', '2022-10-31 17:37:04', NULL, 45),
(163, '6', 0, '2022-10-31 17:36:42', '2022-10-31 17:36:42', NULL, 45),
(164, '3+8', 0, '2022-10-31 18:25:04', '2022-11-01 18:45:59', NULL, 46),
(165, '3+8', 0, '2022-10-31 18:25:07', '2022-10-31 18:25:49', '2022-10-31 18:25:49', 46),
(166, '9+6', 1, '2022-10-31 18:26:17', '2022-11-01 18:45:59', NULL, 46),
(167, '9+4', 0, '2022-10-31 18:26:41', '2022-11-01 18:45:59', NULL, 46),
(168, '10+8', 0, '2022-10-31 18:27:07', '2022-11-01 18:45:59', NULL, 46),
(169, '10+8', 0, '2022-10-31 18:27:07', '2022-10-31 18:27:45', '2022-10-31 18:27:45', 46),
(170, '5+200', 0, '2022-10-31 19:17:41', '2022-10-31 19:17:41', NULL, 52),
(171, '5+200', 0, '2022-10-31 19:17:41', '2022-10-31 19:17:50', '2022-10-31 19:17:50', 52),
(172, '22', 0, '2022-10-31 19:18:12', '2022-10-31 19:18:12', NULL, 52),
(173, '222', 1, '2022-10-31 19:18:44', '2022-10-31 19:28:12', '2022-10-31 19:28:12', 51),
(174, '55555', 1, '2022-10-31 19:19:12', '2022-10-31 19:20:39', NULL, 51),
(175, '4444', 0, '2022-10-31 19:19:28', '2022-10-31 19:19:28', NULL, 51),
(176, '4444', 0, '2022-10-31 19:19:51', '2022-10-31 19:19:51', NULL, 51),
(177, '10+10', 1, '2022-11-01 00:19:57', '2022-11-01 18:45:40', NULL, 48),
(178, '9', 0, '2022-11-01 18:43:23', '2022-11-01 18:43:23', NULL, 36),
(179, '6+8', 0, '2022-11-01 18:45:38', '2022-11-01 18:45:40', NULL, 48),
(180, '3+8', 0, '2022-11-01 18:45:53', '2022-11-01 18:45:53', NULL, 48),
(181, '1+17', 0, '2022-11-01 18:46:09', '2022-11-01 18:46:09', NULL, 48),
(182, '50+60', 0, '2022-11-01 18:46:21', '2022-11-01 18:46:42', NULL, 50),
(183, '50+70', 0, '2022-11-01 18:46:29', '2022-11-01 18:46:42', NULL, 50),
(184, '40+60', 1, '2022-11-01 18:46:40', '2022-11-01 18:46:42', NULL, 50),
(185, '20+90', 0, '2022-11-01 18:46:51', '2022-11-01 18:46:51', NULL, 50),
(186, '9', 0, '2022-11-01 18:52:42', '2022-11-01 18:52:58', '2022-11-01 18:52:58', 37),
(187, '9', 0, '2022-11-01 18:53:07', '2022-11-01 18:53:11', '2022-11-01 18:53:11', 50),
(188, '2+19', 0, '2022-11-01 20:47:22', '2022-11-01 20:47:38', NULL, 55),
(189, '4+16', 1, '2022-11-01 20:47:36', '2022-11-01 20:47:38', NULL, 55),
(190, '17+2', 0, '2022-11-01 20:47:47', '2022-11-01 20:47:47', NULL, 55),
(191, '9+9', 0, '2022-11-01 20:47:58', '2022-11-01 20:47:58', NULL, 55),
(192, '10+5', 1, '2022-11-01 20:48:16', '2022-11-01 20:48:44', NULL, 56),
(193, '2+14', 0, '2022-11-01 20:48:23', '2022-11-01 20:48:44', NULL, 56),
(194, '8+9', 0, '2022-11-01 20:48:32', '2022-11-01 20:48:44', NULL, 56),
(195, '6+5', 0, '2022-11-01 20:48:42', '2022-11-01 20:48:44', NULL, 56),
(196, '6+8', 0, '2022-11-01 20:49:31', '2022-11-01 20:50:01', NULL, 57),
(197, '11+8', 1, '2022-11-01 20:49:41', '2022-11-01 20:50:01', NULL, 57),
(198, '13+4', 0, '2022-11-01 20:49:49', '2022-11-01 20:50:01', NULL, 57),
(199, '6+17', 0, '2022-11-01 20:49:59', '2022-11-01 20:50:01', NULL, 57),
(200, '70+6', 0, '2022-11-01 20:50:12', '2022-11-01 22:14:07', NULL, 58),
(201, '7+75', 0, '2022-11-01 20:50:24', '2022-11-01 22:14:07', NULL, 58),
(202, '60+28', 1, '2022-11-01 20:50:34', '2022-11-01 22:14:07', NULL, 58),
(203, '33+20', 0, '2022-11-01 20:50:44', '2022-11-01 22:14:07', NULL, 58),
(204, '266+820', 0, '2022-11-01 22:37:10', '2022-11-01 22:37:10', NULL, 59),
(205, '5', 1, '2022-11-02 13:59:53', '2022-11-02 14:00:16', NULL, 60),
(206, '4', 0, '2022-11-02 14:00:01', '2022-11-02 14:00:16', NULL, 60),
(207, '6', 0, '2022-11-02 14:00:07', '2022-11-02 14:00:16', NULL, 60),
(208, '3', 0, '2022-11-02 14:00:13', '2022-11-02 14:00:16', NULL, 60),
(209, '2', 0, '2022-11-02 14:00:48', '2022-11-02 14:01:09', NULL, 61),
(210, '4', 0, '2022-11-02 14:00:53', '2022-11-02 14:01:09', NULL, 61),
(211, '5', 0, '2022-11-02 14:01:00', '2022-11-02 14:01:09', NULL, 61),
(212, '3', 1, '2022-11-02 14:01:07', '2022-11-02 14:01:09', NULL, 61),
(213, '9', 1, '2022-11-02 14:02:04', '2022-11-02 14:02:06', NULL, 39),
(214, '11', 1, '2022-11-02 14:02:54', '2022-11-02 14:03:30', NULL, 62),
(215, '10', 0, '2022-11-02 14:03:01', '2022-11-02 14:03:30', NULL, 62),
(216, '12', 0, '2022-11-02 14:03:11', '2022-11-02 14:03:30', NULL, 62),
(217, '13', 0, '2022-11-02 14:03:28', '2022-11-02 14:03:30', NULL, 62),
(218, '25', 1, '2022-11-02 14:04:59', '2022-11-02 14:05:35', NULL, 63),
(219, '20', 0, '2022-11-02 14:05:06', '2022-11-02 14:05:35', NULL, 63),
(220, '30', 0, '2022-11-02 14:05:17', '2022-11-02 14:05:35', NULL, 63),
(221, '15', 0, '2022-11-02 14:05:32', '2022-11-02 14:05:35', NULL, 63),
(222, '40', 0, '2022-11-02 14:06:12', '2022-11-02 14:06:47', NULL, 64),
(223, '42', 0, '2022-11-02 14:06:22', '2022-11-02 14:06:47', NULL, 64),
(224, '49', 1, '2022-11-02 14:06:38', '2022-11-02 14:06:47', NULL, 64),
(225, '53', 0, '2022-11-02 14:06:44', '2022-11-02 14:06:47', NULL, 64),
(226, '5', 0, '2022-11-02 14:10:57', '2022-11-02 14:11:52', NULL, 66),
(227, '3', 1, '2022-11-02 14:11:09', '2022-11-02 14:11:52', NULL, 66),
(228, '6', 0, '2022-11-02 14:11:42', '2022-11-02 14:11:52', NULL, 66),
(229, '2', 0, '2022-11-02 14:11:50', '2022-11-02 14:11:52', NULL, 66),
(230, '100+50', 0, '2022-11-02 14:14:28', '2022-11-02 14:14:32', '2022-11-02 14:14:32', 67),
(231, '100+50', 0, '2022-11-02 14:14:42', '2022-11-02 14:15:38', NULL, 67),
(232, '60+140', 1, '2022-11-02 14:15:04', '2022-11-02 14:15:38', NULL, 67),
(233, '40+130', 0, '2022-11-02 14:15:16', '2022-11-02 14:15:38', NULL, 67),
(234, '130+60', 0, '2022-11-02 14:15:34', '2022-11-02 14:15:38', NULL, 67),
(235, '150+200', 0, '2022-11-02 14:15:50', '2022-11-02 14:16:27', NULL, 68),
(236, '160+120', 0, '2022-11-02 14:16:03', '2022-11-02 14:16:27', NULL, 68),
(237, '250+60', 0, '2022-11-02 14:16:13', '2022-11-02 14:16:27', NULL, 68),
(238, '190+110', 1, '2022-11-02 14:16:25', '2022-11-02 14:16:27', NULL, 68),
(239, '7', 1, '2022-11-02 14:19:41', '2022-11-02 14:20:02', NULL, 69),
(240, '6', 0, '2022-11-02 14:19:48', '2022-11-02 14:20:02', NULL, 69),
(241, '8', 0, '2022-11-02 14:19:53', '2022-11-02 14:20:02', NULL, 69),
(242, '5', 0, '2022-11-02 14:20:00', '2022-11-02 14:20:02', NULL, 69),
(243, '8', 0, '2022-11-02 14:20:31', '2022-11-02 14:22:59', NULL, 70),
(244, '9', 1, '2022-11-02 14:20:57', '2022-11-02 14:22:59', NULL, 70),
(245, '7', 0, '2022-11-02 14:21:47', '2022-11-02 14:22:59', NULL, 70),
(246, '10', 0, '2022-11-02 14:21:54', '2022-11-02 14:22:59', NULL, 70),
(247, '27', 0, '2022-11-02 14:22:44', '2022-11-02 14:23:29', NULL, 71),
(248, '30', 0, '2022-11-02 14:23:17', '2022-11-02 14:23:29', NULL, 71),
(249, '29', 1, '2022-11-02 14:23:26', '2022-11-02 14:23:29', NULL, 71),
(250, '26', 0, '2022-11-02 14:24:07', '2022-11-02 14:24:07', NULL, 71),
(251, '43', 0, '2022-11-02 14:24:36', '2022-11-02 14:25:20', NULL, 72),
(252, '36', 0, '2022-11-02 14:24:45', '2022-11-02 14:25:20', NULL, 72),
(253, '37', 0, '2022-11-02 14:24:53', '2022-11-02 14:25:20', NULL, 72),
(254, '34', 1, '2022-11-02 14:25:17', '2022-11-02 14:25:20', NULL, 72),
(255, '43', 1, '2022-11-02 14:26:35', '2022-11-02 14:27:07', NULL, 73),
(256, '54', 0, '2022-11-02 14:26:47', '2022-11-02 14:27:07', NULL, 73),
(257, '46', 0, '2022-11-02 14:26:54', '2022-11-02 14:27:07', NULL, 73),
(258, '39', 0, '2022-11-02 14:27:02', '2022-11-02 14:27:07', NULL, 73);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', NULL, NULL, NULL),
(2, 'Students', NULL, '2022-10-30 19:53:29', NULL),
(3, 'Parent', '2022-10-16 15:33:51', '2022-10-16 15:33:51', NULL),
(4, 'VIP Students', '2022-10-16 16:23:52', '2022-10-30 19:53:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(49, 3),
(60, 2),
(61, 2),
(62, 3),
(30, 4),
(64, 2),
(63, 3),
(65, 2),
(66, 2),
(67, 2),
(68, 2),
(69, 2),
(70, 2),
(71, 2),
(72, 2),
(73, 2),
(74, 2),
(75, 2),
(76, 2),
(77, 2),
(78, 2),
(79, 2),
(80, 2),
(81, 2),
(82, 2),
(83, 2),
(84, 2),
(85, 2),
(86, 2),
(87, 2),
(88, 2),
(89, 2),
(90, 2),
(91, 2),
(92, 2),
(93, 2),
(94, 2),
(95, 2),
(96, 2),
(97, 2),
(98, 2),
(99, 2),
(100, 2),
(101, 2),
(102, 3),
(103, 2),
(104, 2),
(105, 2),
(106, 2),
(107, 2),
(108, 2),
(109, 2),
(110, 2),
(111, 2),
(112, 2),
(113, 2),
(114, 2),
(115, 2),
(116, 2),
(117, 2),
(118, 2),
(119, 2),
(120, 2),
(121, 2),
(123, 2),
(124, 2),
(125, 2),
(126, 2),
(127, 2),
(128, 2),
(129, 2),
(130, 2),
(131, 2),
(132, 2),
(133, 2),
(134, 2),
(135, 2),
(136, 2),
(137, 2),
(138, 2),
(139, 2),
(140, 2),
(141, 2),
(142, 2),
(143, 2),
(144, 2),
(145, 2),
(146, 2),
(147, 2),
(148, 2),
(149, 2),
(150, 2),
(151, 2),
(152, 2),
(153, 2),
(154, 2),
(155, 2),
(156, 2),
(157, 2),
(158, 2),
(159, 2),
(160, 2),
(161, 2),
(162, 2),
(163, 2),
(164, 2),
(165, 2),
(166, 2),
(167, 2),
(168, 2),
(169, 2),
(170, 2),
(171, 2),
(172, 2),
(173, 2),
(174, 2),
(175, 2),
(176, 2),
(177, 2),
(178, 2),
(179, 2),
(180, 2),
(181, 2),
(182, 2),
(183, 2),
(184, 2),
(185, 2),
(186, 2),
(187, 2),
(188, 2),
(189, 2),
(190, 2),
(191, 2),
(192, 2),
(193, 2),
(194, 2),
(195, 2),
(196, 2),
(197, 2),
(198, 2),
(199, 2),
(200, 2),
(201, 2),
(122, 1),
(202, 2),
(203, 2),
(204, 2),
(205, 2),
(206, 2),
(207, 2),
(208, 2),
(209, 2),
(210, 2),
(211, 2),
(212, 2),
(213, 2),
(214, 2),
(215, 2),
(216, 2),
(217, 2),
(218, 2),
(219, 2),
(220, 2),
(221, 2),
(222, 2),
(223, 2),
(224, 2),
(225, 2),
(226, 2),
(227, 2),
(228, 2),
(229, 2),
(230, 2),
(231, 2),
(232, 2),
(233, 2),
(234, 2),
(235, 2),
(236, 2),
(237, 2),
(238, 2),
(239, 2),
(240, 2),
(241, 2),
(242, 2),
(243, 2),
(244, 2),
(245, 2),
(246, 2),
(247, 2),
(248, 2),
(249, 2),
(250, 2),
(251, 2),
(252, 2),
(253, 2),
(254, 2),
(255, 2),
(256, 2),
(257, 2),
(258, 2),
(259, 2),
(260, 2),
(261, 2),
(262, 2),
(263, 2),
(264, 2),
(265, 2),
(266, 2),
(268, 2),
(267, 4),
(269, 2),
(270, 4),
(271, 2),
(272, 4),
(273, 2),
(275, 2),
(276, 2),
(277, 2),
(278, 2),
(279, 2),
(280, 2),
(282, 2),
(283, 2),
(284, 4),
(285, 2),
(286, 3),
(274, 2),
(287, 2),
(288, 4),
(289, 2),
(290, 4),
(291, 2),
(292, 4),
(293, 4),
(294, 2),
(295, 3),
(296, 4),
(297, 4),
(298, 2),
(299, 2),
(304, 4),
(305, 4),
(316, 2),
(317, 2),
(318, 2),
(319, 2),
(320, 2),
(321, 2),
(322, 2),
(323, 2),
(324, 2),
(325, 2),
(326, 2),
(327, 2),
(328, 2),
(329, 2),
(330, 2),
(331, 2),
(332, 2),
(333, 2),
(334, 2),
(335, 2),
(336, 2),
(337, 2);

-- --------------------------------------------------------

--
-- Table structure for table `student_infos`
--

CREATE TABLE `student_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_job` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL,
  `grade_id` bigint(20) UNSIGNED DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_infos`
--

INSERT INTO `student_infos` (`id`, `whatsapp`, `phone`, `parent_phone`, `parent_name`, `parent_job`, `created_at`, `updated_at`, `deleted_at`, `student_id`, `grade_id`, `parent_id`) VALUES
(2, '0123456789', '0123456789', '0123456789', 'Shaban Mohamed Abou-abda', 'Officer', '2022-10-07 21:33:28', '2022-10-30 20:34:30', '2022-10-30 20:34:30', 2, 1, NULL),
(3, '0123456789', '0123456789', '0123456789', 'Shaban Mohamed Abou-abda', 'Officer', '2022-10-09 21:24:31', '2022-10-30 20:34:30', '2022-10-30 20:34:30', 5, 1, NULL),
(6, '5555', '555555', '55555555', 'Shaban mk', NULL, '2022-10-10 20:40:23', '2022-10-30 20:34:30', '2022-10-30 20:34:30', 10, 1, NULL),
(7, '01022555455', '010223266526', '0231555', 'amin', 'officer', '2022-10-11 01:59:08', '2022-10-30 20:34:30', '2022-10-30 20:34:30', 12, 5, NULL),
(8, '5555', '555555', '55555555', 'Shaban mk', NULL, '2022-10-12 18:53:26', '2022-10-30 20:34:30', '2022-10-30 20:34:30', 20, 1, NULL),
(9, '555', '55555', '55555', 'ooooo', 'oooo', '2022-10-12 19:08:36', '2022-10-30 20:34:30', '2022-10-30 20:34:30', 22, 2, NULL),
(10, '0123456789', '0123456789', '888', 'Mohame Emad', NULL, '2022-10-13 07:24:03', '2022-10-30 20:34:30', '2022-10-30 20:34:30', 34, 16, NULL),
(11, '55', '55', '56', 'fgg', 'cgg', '2022-10-13 20:27:04', '2022-10-30 20:34:30', '2022-10-30 20:34:30', 41, 13, NULL),
(12, '555', '566', '899', 'xfh', 'cggh', '2022-10-14 02:05:58', '2022-10-30 20:34:30', '2022-10-30 20:34:30', 46, 19, NULL),
(13, '555', '555', '555', 'fff', 'fff', '2022-10-14 02:22:01', '2022-10-30 20:34:30', '2022-10-30 20:34:30', 47, 13, NULL),
(14, '555', '888', '555', 'xcc', 'vhh', '2022-10-14 19:20:05', '2022-10-30 20:34:30', '2022-10-30 20:34:30', 43, 19, NULL),
(15, '555', '558', '8558', 'xfh', 'fjhv', '2022-10-14 22:12:20', '2022-10-30 20:34:30', '2022-10-30 20:34:30', 49, 19, NULL),
(16, '588', '8808', '8885', 'cvvh', 'fgfg', '2022-10-15 04:14:05', '2022-10-30 20:34:30', '2022-10-30 20:34:30', 52, 15, NULL),
(17, '01000000000', '01000000000', '0100000000', 'Aaaaaaa', 'Aaaaaaaa', '2022-10-15 19:30:17', '2022-10-30 20:34:30', '2022-10-30 20:34:30', 30, 12, 63),
(18, '1111111111', '222222222222', '5', '1', 'h', '2022-10-15 21:10:21', '2022-10-30 20:34:30', '2022-10-30 20:34:30', 53, 17, NULL),
(19, '0000', '0000', '0000', 'M', 'M', '2022-10-15 23:17:28', '2022-10-30 20:34:30', '2022-10-30 20:34:30', 55, 12, NULL),
(20, '12548', '788888', '78455', 'zccvx', 'zccvvg', '2022-10-16 06:43:28', '2022-10-30 20:34:30', '2022-10-30 20:34:30', 37, 14, 49),
(21, '85555', '55555', '88555', 'fffff', 'cvvhh', '2022-10-16 07:17:17', '2022-10-30 20:34:30', '2022-10-30 20:34:30', 9, 13, 49),
(22, '0123333333', '0115555555', '0123333333', 'emad Hassan', NULL, '2022-10-16 09:22:53', '2022-10-30 20:34:30', '2022-10-30 20:34:30', 59, 17, 49),
(23, '01022952483', '01022952483', '01022952483', 'g ggfgggg ghbj', 'vjvjg', '2022-10-16 19:12:52', '2022-10-30 20:34:30', '2022-10-30 20:34:30', 64, 14, NULL),
(24, '01022952483', '01022952483', '01022952403', 'amin', 'dgchg', '2022-10-16 19:19:38', '2022-10-30 20:34:30', '2022-10-30 20:34:30', 65, 19, NULL),
(25, '01022952483', '01022952483', '01022952489', '010229524833', 'cgcgg', '2022-10-16 19:24:57', '2022-10-30 20:34:30', '2022-10-30 20:34:30', 66, 19, NULL),
(26, '01022952154', '01022356656', '555555555554', 'Shaban mk', '12', '2022-10-16 20:05:42', '2022-10-30 20:34:30', '2022-10-30 20:34:30', 67, 16, NULL),
(27, '01234567890', '01234567890', '01234567890', 'Aa', 'Aa', '2022-10-16 20:47:36', '2022-10-30 20:34:30', '2022-10-30 20:34:30', 68, 21, NULL),
(28, '12345678900', '12345678900', '12345678900', 'h', 'school', '2022-10-17 00:16:00', '2022-10-30 20:34:30', '2022-10-30 20:34:30', 69, 15, NULL),
(29, '12345678900', '12345678900', '12345678900', 'e', 'jjj', '2022-10-17 01:39:19', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 70, 16, NULL),
(30, '01553531912', '01553531912', '01553531912', 'lava', 'ccg', '2022-10-17 03:13:10', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 71, 16, NULL),
(31, '01222522222', '01833333333', '01555655555', 'hhhhhhh', 'vvg', '2022-10-17 05:12:36', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 72, 11, NULL),
(32, '01022952444', '01022952444', '01022958865', 'amin', 'mohsen', '2022-10-17 19:02:13', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 73, 16, NULL),
(33, '01022952488', '01022952488', '01022952488', 'amin', 'mooo', '2022-10-17 19:16:55', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 74, 16, NULL),
(34, '01022952440', '01022952440', '01022952880', 'amin', 'mohsed', '2022-10-17 19:59:14', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 75, 14, NULL),
(35, '01201212854', '01201212857', '01202155521', 'Mario', 'alwe7da', '2022-10-17 23:38:56', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 79, 13, NULL),
(36, '01276050952', '01276050952', '01202155521', 'mario', 'الوحدة', '2022-10-17 23:44:35', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 80, 21, NULL),
(37, '01207801556', '01125461325', '01063582611', 'Ahmed', 'hajjajiau', '2022-10-18 18:15:51', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 81, 16, NULL),
(38, '01022952482', '01022952482', '01022952482', 'amin', 'Mohamed', '2022-10-20 21:38:36', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 85, 15, NULL),
(39, '01022952154', '01022356656', '555555555554', 'Shaban mk', '12', '2022-10-20 21:41:54', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 84, 9, NULL),
(40, '01022586355', '01858689869', '01022256865', 'ggjhhhhh', 'ghghghh', '2022-10-20 21:54:22', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 87, 12, NULL),
(41, '01022952477', '01022952477', '01022952477', 'amin', 'Mohamed', '2022-10-20 22:06:22', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 88, 16, NULL),
(42, '01022952453', '01022952453', '01228506753', 'Amin', 'morning', '2022-10-20 22:29:10', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 89, 12, NULL),
(43, '01022952453', '01022952480', '01022952489', 'Amy', 'morning', '2022-10-20 22:30:27', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 90, 21, NULL),
(44, '01022322215', '01022525842', '01022524832', 'Amy', 'and', '2022-10-20 22:31:35', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 91, 16, NULL),
(45, '01234567890', '01234567890', '01234567890', 'Emad', 'Emad', '2022-10-20 23:24:15', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 92, 12, NULL),
(46, '01022955554', '01022952455', '01022952482', 'amin', 'amin', '2022-10-21 00:21:01', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 93, 12, NULL),
(47, '01022987456', '01022952478', '01022445877', 'amin', 'hhhh', '2022-10-21 00:43:48', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 94, 13, NULL),
(48, '01022952478', '01022954788', '01022952478', 'main', 'amin', '2022-10-21 00:52:00', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 95, 13, NULL),
(49, '01022952489', '01022952489', '01022952489', 'main', 'amon', '2022-10-21 01:00:51', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 96, 17, NULL),
(50, '01022958789', '01022963587', '01022958745', 'amin', 'amin', '2022-10-21 01:07:49', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 97, 13, NULL),
(51, '01022987456', '01236547896', '01022987456', 'amin', 'amin', '2022-10-21 01:15:23', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 98, 13, NULL),
(52, '01014177567', '01014177567', '01014177567', 'mohsen', 'mohsenschool', '2022-10-23 15:07:51', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 100, 13, NULL),
(53, '01000000000', '01000000000', '0100000000', 'Aaaaaaa', 'Aaaaaaaa', '2022-10-23 17:35:35', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 30, 12, NULL),
(54, '01022955879', '01022365478', '01022952478', 'amin', 'amin', '2022-10-23 19:32:38', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 103, 12, NULL),
(55, '01022952487', '01022952478', '01022952479', 'amin', 'amin', '2022-10-23 20:21:24', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 107, 13, NULL),
(56, '01022952154', '01022356656', '555555555554', 'Shaban mk', '12', '2022-10-23 20:25:51', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 108, 13, NULL),
(57, '01022457890', '01022456980', '01022987456', 'mmm', 'mmm', '2022-10-23 21:03:08', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 109, 16, NULL),
(58, '01022952154', '01022356656', '555555555554', 'Shaban mk', '12', '2022-10-23 21:38:31', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 112, 13, NULL),
(59, '01022952154', '01022356656', '555555555554', 'Shaban mk', '12', '2022-10-23 21:54:51', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 113, 12, NULL),
(60, '01022952489', '01022952478', '01022952478', 'amin', 'amin', '2022-10-23 22:00:12', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 114, 12, NULL),
(61, '01022952489', '01022952478', '01022952478', 'amin', 'amin', '2022-10-23 23:33:43', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 115, 12, NULL),
(62, '01150503508', '01150503508', '01150503508', '01150503508', 'ccg', '2022-10-24 16:12:20', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 117, 16, NULL),
(63, '01203111939', '01203111939', '01227756531', 'Mohamed abd elsamea', 'coptic girls collage', '2022-10-24 17:23:18', '2022-10-24 17:23:18', NULL, 120, 12, NULL),
(64, '01211338865', '01211338865', '01226707456', 'Hany William', 'Coptic Girls College', '2022-10-24 17:24:36', '2022-10-24 17:24:36', NULL, 121, 12, NULL),
(65, '01014177567', '01014177567', '01185474555', 'Mohaen', 'future', '2022-10-24 17:30:51', '2022-10-30 20:37:42', '2022-10-30 20:37:42', 123, 10, NULL),
(66, '01022952154', '01022356656', '555555555554', 'Shaban mk', '12', '2022-10-24 17:34:46', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 122, 12, NULL),
(67, '01007395780', '01007395780', '01092405501', 'Nesrien', 'damerdash', '2022-10-24 17:35:13', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 124, 16, NULL),
(68, '01014177567', '01014177569', '01014177542', 'مي', 'future', '2022-10-24 18:24:07', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 127, 1, NULL),
(69, '01003364017', '01003364017', '01004142147', 'shaimaa', 'ccg', '2022-10-24 18:44:45', '2022-10-24 18:44:45', NULL, 130, 15, NULL),
(70, '01279036776', '01279036776', '01286019295', 'Michael', 'Coptic Girls College', '2022-10-24 19:21:40', '2022-10-24 19:21:40', NULL, 133, 17, NULL),
(71, '01091678502', '01091678502', '01099516176', 'Mariam', 'Coptic college for girls', '2022-10-24 20:22:36', '2022-10-24 20:22:36', NULL, 136, 16, NULL),
(72, '01227173534', '01227173534', '01280801487', 'Marian', 'Cobtic Girls College', '2022-10-24 20:37:39', '2022-10-24 20:37:39', NULL, 137, 10, NULL),
(73, '01095660504', '01095660504', '01002087357', 'Wessam yehia', 'C.G.C', '2022-10-24 20:45:45', '2022-10-24 20:49:14', NULL, 131, 15, NULL),
(74, '01110232948', '01110232948', '01114169309', 'Amira Mohamed', 'C.G.C', '2022-10-24 20:58:42', '2022-10-24 20:59:00', NULL, 142, 15, NULL),
(75, '01121174905', '01121174905', '01117667262', 'Abdelhameed Hassin', 'C.G.C', '2022-10-24 21:08:00', '2022-10-24 21:20:31', NULL, 143, 15, NULL),
(76, '00000000000', '00000000000', '00000000000', 'M', 'cgc', '2022-10-24 21:21:18', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 144, 12, NULL),
(77, '01123536611', '01123536611', '01272208555', 'Ahmed Hamdy', 'Coptic Girls College', '2022-10-24 23:26:19', '2022-10-24 23:26:19', NULL, 146, 17, NULL),
(78, '01013538833', '01013538833', '01028105252', 'ahmed abbas', 'coptic Girls college', '2022-10-24 23:45:18', '2022-10-24 23:45:18', NULL, 147, 10, NULL),
(79, '01121159821', '01121159821', '01152446685', 'Dr.Soheir Ahmed', 'C.G.C school', '2022-10-25 00:07:27', '2022-10-25 00:07:27', NULL, 148, 16, NULL),
(80, '01022952480', '01022952480', '01022952480', 'amin', 'amin', '2022-10-25 00:33:38', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 149, 12, NULL),
(81, '01275719609', '01275719609', '01277681002', 'Mona Fathy', 'c.c.g', '2022-10-25 00:43:30', '2022-10-25 00:47:10', NULL, 150, 16, NULL),
(82, '01210098611', '01210098611', '01228001654', 'Engy said', 'Coptic girls college', '2022-10-25 00:49:07', '2022-10-25 00:49:07', NULL, 151, 1, NULL),
(83, '01274931564', '01274961564', '01283942923', 'Sheren shohdy', 'copitc girls college', '2022-10-25 01:24:44', '2022-10-25 01:29:19', NULL, 152, 10, NULL),
(84, '01022952413', '01022952480', '01022365421', 'amin', 'amin', '2022-10-25 01:44:37', '2022-10-25 01:44:37', NULL, 153, 12, NULL),
(85, '01234567890', '01234567890', '01234567890', 'Aaa', 'Aaa', '2022-10-25 02:03:24', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 154, 12, NULL),
(86, '01272422182', '01272422182', '01272422182', 'mariam emad', 'c.g.c', '2022-10-25 04:10:43', '2022-10-25 06:21:21', NULL, 155, 16, NULL),
(87, '01121174905', '01121174905', '01117667262', 'Abdelhameed Hassin', 'C.G.C', '2022-10-25 04:25:30', '2022-10-31 20:59:46', NULL, 156, 49, NULL),
(88, '01022365421', '01022364512', '01022952482', 'Amazon', 'amin', '2022-10-25 16:13:32', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 163, 12, NULL),
(89, '01022987456', '01022365478', '01022987153', 'amin', 'amin', '2022-10-25 17:09:57', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 164, 12, NULL),
(90, '01014177543', '01014177541', '01014177444', 'Ahmed', 'future', '2022-10-25 18:36:02', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 166, 13, NULL),
(91, '01022952489', '01022952478', '01022987456', 'abdo', 'amin', '2022-10-25 18:37:44', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 167, 12, NULL),
(92, '01014177567', '01014177567', '01123467679', 'ahmed', 'future', '2022-10-25 21:02:17', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 169, 12, NULL),
(93, '01014177567', '01014177123', '01014177789', 'Mohsen', 'future', '2022-10-25 21:43:52', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 171, 12, NULL),
(94, '01022952478', '01022954789', '01022952478', 'aid', 'amin', '2022-10-25 22:50:53', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 172, 12, NULL),
(95, '01233333333', '01233333333', '01233333333', 'hhh', 'fff', '2022-10-25 23:13:48', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 173, 16, NULL),
(96, '01022985214', '01022952481', '01022952412', 'amin', 'amin', '2022-10-25 23:22:09', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 174, 12, NULL),
(97, '01254858585', '01235584238', '01265842836', 'Ali', 'mohsen', '2022-10-26 01:00:11', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 175, 15, NULL),
(98, '01141915068', '01141915068', '01228132467', 'ahmed', 'coptic  college', '2022-10-26 01:44:11', '2022-10-26 01:44:11', NULL, 176, 10, NULL),
(99, '01202399568', '01202399568', '01005120410', 'Ayman', 'saint-paul', '2022-10-26 03:04:09', '2022-10-26 03:04:55', NULL, 177, 16, NULL),
(100, '01222483864', '01222483864', '01005120410', 'Ayman', 'Elsalam', '2022-10-26 03:29:42', '2022-10-26 03:29:42', NULL, 178, 10, NULL),
(101, '01022365214', '01022365214', '01022952486', 'Amin', 'amin', '2022-10-26 04:14:20', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 179, 12, NULL),
(102, '01022955878', '01022958748', '01022856987', 'amin', 'amin', '2022-10-26 15:58:46', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 183, 12, NULL),
(103, '01022987456', '01022365478', '01022445878', 'amin', 'amin', '2022-10-26 16:27:10', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 184, 12, NULL),
(104, '01022987456', '01022987456', '01022365478', 'mmm', 'mnjk', '2022-10-26 16:55:12', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 185, 12, NULL),
(105, '01014177567', '01014177567', '01145786316', 'Mohsen', 'future', '2022-10-26 18:24:16', '2022-10-30 19:13:25', '2022-10-30 19:13:25', 189, 12, NULL),
(106, '01014177567', '01014177567', '01145767667', 'Mohsen', 'future', '2022-10-26 18:54:49', '2022-10-30 19:13:25', '2022-10-30 19:13:25', 191, 12, NULL),
(107, '01014177567', '01014177567', '01147587855', 'Mohsen', 'future', '2022-10-26 19:00:18', '2022-10-30 19:13:25', '2022-10-30 19:13:25', 192, 12, NULL),
(108, '01014177567', '01014177567', '01147788667', 'mohsen', 'future', '2022-10-26 19:36:10', '2022-10-30 19:13:25', '2022-10-30 19:13:25', 194, 12, NULL),
(109, '01014177567', '01014177567', '01017455142', 'Mohsen', 'future', '2022-10-26 19:47:36', '2022-10-30 19:13:25', '2022-10-30 19:13:25', 195, 12, NULL),
(110, '01022952489', '01022954789', '01022958745', 'amin', 'amin', '2022-10-26 19:54:48', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 196, 12, NULL),
(111, '01022952480', '01022987458', '01022952478', 'amin', 'amin', '2022-10-26 20:35:07', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 197, 12, NULL),
(112, '01014177567', '01014177567', '01178744569', 'Mohsen', 'future', '2022-10-26 20:44:54', '2022-10-30 19:13:25', '2022-10-30 19:13:25', 198, 12, NULL),
(113, '01234567890', '01234567890', '01234567890', 'Asd', 'Asd', '2022-10-26 20:45:03', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 199, 12, NULL),
(114, '01014177567', '01014177567', '01174588643', 'Mohsen', 'future', '2022-10-26 20:58:08', '2022-10-30 19:13:25', '2022-10-30 19:13:25', 200, 12, NULL),
(115, '01022952489', '01022365478', '01022987456', 'ramadan', 'amin', '2022-10-26 22:00:10', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 201, 12, NULL),
(116, '01032722761', '01032722761', '01062086030', 'Ahmed', 'Coptic college school', '2022-10-27 01:53:24', '2022-10-27 01:53:24', NULL, 206, 15, NULL),
(117, '01025949174', '01025949174', '01116302730', 'Jehan', 'سارة تقي الله رسمية لغات', '2022-10-27 04:19:15', '2022-10-27 04:19:15', NULL, 207, 7, NULL),
(118, '01234567890', '01234567890', '01234567890', '6', 'ccg', '2022-10-27 17:30:53', '2022-10-30 20:37:42', '2022-10-30 20:37:42', 235, 40, NULL),
(119, '01234567890', '01234567890', '01234567890', 'ggg', 'ggg', '2022-10-27 17:35:33', '2022-10-30 20:37:42', '2022-10-30 20:37:42', 239, 16, NULL),
(120, '01234567890', '01234567890', '01234567890', 'hhh', 'sss', '2022-10-27 17:38:07', '2022-10-30 20:37:42', '2022-10-30 20:37:42', 240, 17, NULL),
(121, '01027725368', '01027725368', '01068846767', 'titaa', 'Coptic girls college', '2022-10-27 18:25:18', '2022-10-27 18:25:18', NULL, 243, 12, NULL),
(122, '01022958789', '01022987456', '01022952478', 'amin', 'amin', '2022-10-27 18:28:14', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 242, 12, NULL),
(123, '01022952480', '01022952480', '01022952487', 'amin', 'amin', '2022-10-27 18:41:44', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 245, 12, NULL),
(124, '01014177070', '01147852696', '01145655575', 'Mohsen', 'future', '2022-10-27 19:01:48', '2022-10-30 19:13:25', '2022-10-30 19:13:25', 250, 12, NULL),
(125, '01079494949', '01045766789', '01097676664', 'mohsen', 'future', '2022-10-27 19:24:18', '2022-10-30 19:13:25', '2022-10-30 19:13:25', 251, 12, NULL),
(126, '01022985478', '01022365879', '01022952489', 'amon', 'amin', '2022-10-27 19:34:13', '2022-10-28 00:13:16', NULL, 252, 44, NULL),
(127, '01046464667', '01267466768', '01168686866', 'mohsen', 'future', '2022-10-27 19:38:53', '2022-10-30 19:13:25', '2022-10-30 19:13:25', 254, 12, NULL),
(128, '01026940424', '01026940424', '01001845940', 'Mostafa', 'c.g.c', '2022-10-27 19:42:03', '2022-10-27 19:43:46', NULL, 255, 15, NULL),
(129, '01014177411', '01014155369', '01136974563', 'mohsen', 'future', '2022-10-27 20:14:16', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 258, 12, NULL),
(130, '01047788888', '01124577412', '01145266985', 'mohsen', 'future', '2022-10-27 20:59:31', '2022-10-30 19:13:25', '2022-10-30 19:13:25', 259, 9, NULL),
(131, '01046799863', '01014188676', '01164676867', 'ali', 'future', '2022-10-27 21:09:10', '2022-10-30 19:13:25', '2022-10-30 19:13:25', 261, 9, NULL),
(132, '01211759085', '01211759085', '01223696830', 'Rehab alaa', 'CGC', '2022-10-27 21:13:57', '2022-10-27 21:13:57', NULL, 262, 15, NULL),
(133, '01069247921', '01069247921', '01027422287', 'eman', 'Coptic girls college', '2022-10-27 23:24:59', '2022-10-27 23:27:38', NULL, 266, 9, NULL),
(134, '01022952154', '01022356656', '555555555554', 'Shaban mk', 'mmm', '2022-10-28 00:07:31', '2022-10-28 00:56:48', NULL, 267, 1, NULL),
(135, '01022354789', '01022547896', '01022547896', 'mmm', 'mmm', '2022-10-28 01:18:58', '2022-10-28 01:18:58', NULL, 270, 52, NULL),
(136, '01228504635', '01022952485', '01022364512', 'Cohen', 'primary Cohen school', '2022-10-28 16:49:19', '2022-10-28 16:50:21', NULL, 272, 52, NULL),
(137, '01055544789', '01055544789', '01066644987', 'Mohsen', 'future', '2022-10-29 17:30:48', '2022-11-02 16:07:54', '2022-11-02 16:07:54', 274, 52, NULL),
(138, '01234567890', '01234567890', '01234567890', 'Emad', 'Emad', '2022-10-30 16:07:01', '2022-11-02 16:07:54', '2022-11-02 16:07:54', 284, 43, NULL),
(139, '01012355874', '01055632775', '01055533698', 'mohsen', 'future', '2022-10-30 19:29:16', '2022-10-30 19:59:22', '2022-10-30 19:59:22', 288, 54, NULL),
(140, '01036988752', '01055577452', '01065577258', 'mohsen', 'future', '2022-10-30 19:39:31', '2022-10-30 19:59:22', '2022-10-30 19:59:22', 290, 53, NULL),
(141, '01174788639', '01125744582', '01055577441', 'mohsen', 'future', '2022-10-30 19:51:28', '2022-10-30 19:59:22', '2022-10-30 19:59:22', 291, 52, NULL),
(142, '01174588321', '01125477963', '01287855414', 'mohsen', 'future', '2022-10-30 19:58:05', '2022-10-30 19:59:22', '2022-10-30 19:59:22', 292, 46, NULL),
(143, '01122222222', '01122222222', '01122222222', 'mohsen', 'future', '2022-10-30 20:01:58', '2022-10-30 20:37:05', '2022-10-30 20:37:05', 293, 48, NULL),
(144, '01199999999', '01199999999', '01199999999', 'Mohsen Hassan', 'future', '2022-10-30 20:22:42', '2022-11-02 16:07:54', '2022-11-02 16:07:54', 294, 45, 295),
(145, '01011144111', '01044411236', '01014177456', 'mohsen', 'future', '2022-10-31 14:27:23', '2022-11-02 16:07:54', '2022-11-02 16:07:54', 296, 53, NULL),
(146, '01022952142', '01022952142', '01022952145', 'amin', 'amin', '2022-10-31 15:20:45', '2022-10-31 15:20:45', NULL, 297, 53, NULL),
(147, '01022321546', '01022321546', '01022952413', 'amin', 'amin', '2022-10-31 15:49:01', '2022-11-02 16:07:54', '2022-11-02 16:07:54', 301, 52, NULL),
(148, '01234567892', '01234567892', '01234567892', 'Shaban Abou-abda', 'Mo Shaban', '2022-10-31 15:49:17', '2022-10-31 15:49:17', NULL, 300, 46, NULL),
(149, '01022952154', '01022356656', '555555555554', 'Shaban mk', '12', '2022-10-31 15:56:27', '2022-10-31 17:27:01', NULL, 281, 43, NULL),
(150, '01022952123', '01022952123', '01022952123', 'amin', 'Amin', '2022-10-31 16:12:18', '2022-10-31 16:12:18', NULL, 302, 52, NULL),
(151, '01011133698', '01099966548', '01177744569', 'Ali', 'alsdata', '2022-10-31 16:28:44', '2022-11-02 16:07:54', '2022-11-02 16:07:54', 304, 43, NULL),
(152, '01044455693', '01011122547', '01122255475', 'Ahmed', 'alsdat', '2022-10-31 16:38:44', '2022-11-02 16:07:54', '2022-11-02 16:07:54', 305, 43, NULL),
(153, '01022952482', '01022952123', '01022952421', 'saad', 'amin', '2022-10-31 17:12:46', '2022-10-31 17:12:46', NULL, 303, 43, NULL),
(154, '01022952154', '01022356656', '555555555554', 'Shaban mk', '12', '2022-10-31 17:29:12', '2022-11-02 16:07:54', '2022-11-02 16:07:54', 306, 43, NULL),
(155, '01022952154', '01022356656', '555555555554', 'Shaban mk', '12', '2022-10-31 17:30:38', '2022-11-02 16:07:54', '2022-11-02 16:07:54', 307, 43, NULL),
(156, '01022952154', '01022356656', '555555555554', 'Shaban mk', '12', '2022-10-31 17:33:49', '2022-11-02 16:07:54', '2022-11-02 16:07:54', 308, 43, NULL),
(157, '01022952154', '01022356656', '555555555554', 'Shaban mk', '12', '2022-10-31 17:36:14', '2022-11-02 16:07:54', '2022-11-02 16:07:54', 309, 43, NULL),
(158, '01022952154', '01022356656', '555555555554', 'Shaban mk', '12', '2022-10-31 17:39:20', '2022-11-02 16:07:54', '2022-11-02 16:07:54', 310, 43, NULL),
(159, '01022952154', '01022356656', '555555555554', 'Shaban mk', '12', '2022-10-31 17:46:28', '2022-11-02 16:07:54', '2022-11-02 16:07:54', 311, 43, NULL),
(160, '01022952154', '01022356656', '555555555554', 'Shaban mk', '12', '2022-10-31 17:48:12', '2022-11-02 16:07:54', '2022-11-02 16:07:54', 312, 43, NULL),
(161, '01022952154', '01022356656', '555555555554', 'Shaban mk', '12', '2022-10-31 17:58:13', '2022-11-02 16:07:54', '2022-11-02 16:07:54', 313, 43, NULL),
(162, '01022321456', '01022952123', '01022952123', 'amin', 'amin', '2022-10-31 18:05:33', '2022-11-02 16:07:54', '2022-11-02 16:07:54', 314, 43, NULL),
(163, '01022952123', '01022952482', '01022952123', 'amin', 'amin', '2022-10-31 18:13:10', '2022-11-02 16:07:54', '2022-11-02 16:07:54', 315, 43, NULL),
(164, '01022952154', '01022356656', '555555555554', 'Shaban mk', '12', '2022-10-31 18:26:25', '2022-11-02 15:44:32', NULL, 316, 43, NULL),
(165, '12345678900', '12345678900', '12345678900', 'test', 'yyy', '2022-10-31 19:00:15', '2022-11-02 16:07:54', '2022-11-02 16:07:54', 317, 51, NULL),
(166, '01032722761', '01032722761', '01062086030', 'Ahmed', 'Coptic girls collage', '2022-10-31 19:21:40', '2022-10-31 19:21:40', NULL, 318, 49, NULL),
(167, '01091678502', '01091678502', '01099516176', 'mariam', 'Coptic girls college', '2022-10-31 22:27:06', '2022-10-31 22:27:06', NULL, 282, 50, NULL),
(168, '01022533698', '01022255745', '01125833698', 'mohsen', 'future', '2022-11-01 00:09:26', '2022-11-02 16:07:54', '2022-11-02 16:07:54', 319, 43, NULL),
(169, '01014177444', '01014477568', '01011144567', 'mohsen', 'future', '2022-11-01 00:12:21', '2022-11-02 16:07:54', '2022-11-02 16:07:54', 320, 43, NULL),
(170, '01234567890', '01234567890', '01234567890', 'ggg', 'jjj', '2022-11-01 02:41:37', '2022-11-02 16:07:54', '2022-11-02 16:07:54', 322, 53, NULL),
(171, '01044477444', '01077744566', '01044477889', 'moh', 'egj', '2022-11-01 16:54:22', '2022-11-02 16:07:54', '2022-11-02 16:07:54', 323, 44, NULL),
(172, '01022952123', '01022321456', '01022321456', 'amin', 'amin', '2022-11-01 16:56:35', '2022-11-02 16:07:54', '2022-11-02 16:07:54', 324, 43, NULL),
(173, '01044477568', '01044422369', '01022255874', 'mohsen', 'future', '2022-11-01 20:17:57', '2022-11-02 16:07:54', '2022-11-02 16:07:54', 325, 43, NULL),
(174, '01034644327', '01047411658', '01176799137', 'mohsen', 'future', '2022-11-01 20:53:19', '2022-11-02 16:07:54', '2022-11-02 16:07:54', 326, 43, NULL),
(175, '01022952123', '01022952482', '01022952482', 'Amin', 'amin', '2022-11-01 22:02:57', '2022-11-02 16:07:54', '2022-11-02 16:07:54', 327, 43, NULL),
(176, '01559755625', '01559755625', '01112250714', 'merivat', 'omar abn alkatab', '2022-11-01 23:25:14', '2022-11-01 23:25:14', NULL, 328, 48, NULL),
(177, '01110232948', '01110232948', '01114169309', 'Amira Mohamed', 'Coptic girls college', '2022-11-02 02:13:29', '2022-11-02 02:13:29', NULL, 329, 49, NULL),
(178, '01212018878', '01212018878', '01008819842', 'bassam', 'compete girls college', '2022-11-02 08:25:17', '2022-11-02 08:25:17', NULL, 330, 49, NULL),
(179, '01234567890', '01234567890', '01234567890', 'Emad', 'Emad', '2022-11-02 14:42:17', '2022-11-02 14:42:17', NULL, 331, 43, NULL),
(180, '01014177567', '01014177567', '01114177567', 'Mohsen', 'future', '2022-11-02 14:52:25', '2022-11-02 14:52:25', NULL, 332, 43, NULL),
(181, '01234567890', '01234567890', '01234567890', 'Emad', 'Emad', '2022-11-02 15:06:19', '2022-11-02 15:06:19', NULL, 333, 43, NULL),
(182, '01234567890', '01234567890', '01234567890', 'Emad', 'Emad', '2022-11-02 15:09:38', '2022-11-02 15:09:38', NULL, 334, 43, NULL),
(183, '01047455679', '01074755639', '01125233697', 'mohsen', 'future', '2022-11-02 15:20:32', '2022-11-02 15:20:32', NULL, 335, 43, NULL),
(184, '01025877456', '01012355789', '01174588963', 'mohsen', 'future', '2022-11-02 15:49:38', '2022-11-02 15:49:38', NULL, 336, 43, NULL),
(185, '01022952488', '01022952123', '01022952482', 'amin', 'amin', '2022-11-02 16:32:28', '2022-11-02 16:32:28', NULL, 337, 43, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `due_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `assigned_to_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_statuses`
--

CREATE TABLE `task_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_statuses`
--

INSERT INTO `task_statuses` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Open', NULL, NULL, NULL),
(2, 'In progress', NULL, NULL, NULL),
(3, 'Closed', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `task_tags`
--

CREATE TABLE `task_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_task_tag`
--

CREATE TABLE `task_task_tag` (
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `task_tag_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `is_published` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `lesson_id` bigint(20) UNSIGNED DEFAULT NULL,
  `grade_id` bigint(20) UNSIGNED DEFAULT NULL,
  `duration` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lesson` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `material_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `title`, `description`, `is_published`, `created_at`, `updated_at`, `deleted_at`, `course_id`, `lesson_id`, `grade_id`, `duration`, `unit`, `lesson`, `material_id`) VALUES
(1, 'Quiz 11', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, '2022-10-10 00:27:39', '2022-10-30 21:20:07', '2022-10-30 21:20:07', NULL, NULL, 12, '00:00:00', 'unit-4', 'lesson-3', 29),
(2, 'Quiz 12', 'test', 1, '2022-10-12 21:36:27', '2022-10-30 21:20:07', '2022-10-30 21:20:07', NULL, NULL, 12, '03:30:00', 'unit-2', 'lesson-1', 29),
(3, 'Quiz 10', 'TEST', 1, '2022-10-18 20:41:29', '2022-10-30 21:20:07', '2022-10-30 21:20:07', NULL, NULL, 12, '03:30', 'unit-2', 'lesson-1', 29),
(4, 'Quiz 9', 'Test', 1, '2022-10-18 20:48:00', '2022-10-30 21:20:07', '2022-10-30 21:20:07', NULL, NULL, 12, '02:30', 'unit-2', 'lesson-4', 29),
(5, 'Quiz #1', 'First quiz **Math**', 0, '2022-10-23 16:02:36', '2022-10-30 21:20:07', '2022-10-30 21:20:07', NULL, NULL, 13, '10 min', 'unit-1', 'lesson-1', 33),
(6, 'Quiz Test', NULL, 1, '2022-10-25 20:38:14', '2022-10-30 21:20:07', '2022-10-30 21:20:07', NULL, NULL, 52, '01:00', 'unit-1', 'lesson-1', 29),
(7, 'First Quiz', 'hi First Quiz test', 1, '2022-10-27 23:30:19', '2022-10-30 21:20:07', '2022-10-30 21:20:07', NULL, NULL, 52, '05:00', 'unit-1', 'lesson-1', 29),
(8, 'Second Quiz', 'Hi Second Quiz Test', 1, '2022-10-30 14:42:31', '2022-10-30 21:20:07', '2022-10-30 21:20:07', NULL, NULL, 53, '04:00', 'unit-2', 'lesson-2', 29),
(9, 'TEST', 'HI', 1, '2022-10-30 21:30:50', '2022-10-31 15:51:35', '2022-10-31 15:51:35', NULL, NULL, 43, '04:00', 'unit-1', 'lesson-1', 29),
(10, 'Math Quiz (1)', NULL, 1, '2022-10-31 15:19:03', '2022-11-02 16:03:46', NULL, NULL, NULL, 43, '04:00', 'unit-1', 'lesson-1', 29),
(11, 'Math Quiz (2)', NULL, 1, '2022-10-31 16:42:11', '2022-11-02 13:53:14', NULL, NULL, NULL, 43, '03:00', 'unit-2', 'lesson-1', 29),
(12, 'Math Quiz (3)', NULL, 1, '2022-10-31 16:51:56', '2022-10-31 16:59:38', NULL, NULL, NULL, 43, '02:00', 'unit-2', 'lesson-2', 29),
(13, 'jjj', NULL, 1, '2022-10-31 17:04:33', '2022-10-31 17:28:42', '2022-10-31 17:28:42', NULL, NULL, 43, '03:00', 'unit-2', 'lesson-1', 29),
(14, 'hhh', NULL, 1, '2022-10-31 17:05:45', '2022-10-31 17:28:42', '2022-10-31 17:28:42', NULL, NULL, 43, '03:00', 'unit-3', 'lesson-1', 29),
(15, 'Math Quiz (4)', NULL, 1, '2022-11-01 20:42:33', '2022-11-02 14:17:31', '2022-11-02 14:17:31', NULL, NULL, 43, '02:00', 'unit-3', 'lesson-1', 29),
(16, 'Math Quiz (4)', NULL, 1, '2022-11-02 14:19:01', '2022-11-02 14:27:43', NULL, NULL, NULL, 43, '02:00', 'unit-3', 'lesson-1', 29);

-- --------------------------------------------------------

--
-- Table structure for table `test_answers`
--

CREATE TABLE `test_answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_correct` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `test_result_id` bigint(20) UNSIGNED DEFAULT NULL,
  `question_id` bigint(20) UNSIGNED DEFAULT NULL,
  `option_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `test_answers`
--

INSERT INTO `test_answers` (`id`, `is_correct`, `created_at`, `updated_at`, `deleted_at`, `test_result_id`, `question_id`, `option_id`) VALUES
(1, 0, '2022-10-23 18:50:32', '2022-10-23 20:01:33', '2022-10-23 20:01:33', 3, NULL, 83),
(2, 0, '2022-10-23 18:56:14', '2022-10-23 18:56:14', NULL, 3, 5, 83),
(3, 1, '2022-10-23 22:20:50', '2022-10-23 22:21:47', '2022-10-23 22:21:47', 3, 6, 86),
(4, 1, '2022-10-23 22:21:57', '2022-10-24 14:25:00', '2022-10-24 14:25:00', 3, 6, 86),
(5, 1, '2022-10-24 14:25:11', '2022-10-24 14:27:52', '2022-10-24 14:27:52', 3, 6, 86),
(6, 1, '2022-10-24 14:27:59', '2022-10-24 14:36:23', '2022-10-24 14:36:23', 3, 6, 86),
(7, 1, '2022-10-24 14:36:29', '2022-10-24 14:36:29', NULL, 3, 6, 86),
(8, 1, '2022-10-24 18:04:44', '2022-10-24 18:04:44', NULL, 14, 6, 86),
(9, 1, '2022-10-24 20:35:13', '2022-10-24 20:35:13', NULL, 14, 5, 86),
(10, 0, NULL, NULL, NULL, 27, 21, 105),
(11, 1, NULL, NULL, NULL, 29, 19, 92),
(12, 0, NULL, NULL, NULL, 29, 20, 96),
(13, 1, NULL, NULL, NULL, 29, 21, 103),
(14, 0, NULL, NULL, NULL, 30, 20, 96),
(15, 1, NULL, NULL, NULL, 30, 21, 103),
(16, 1, NULL, NULL, NULL, 32, 19, 92),
(17, 0, NULL, NULL, NULL, 32, 20, 96),
(18, 1, NULL, NULL, NULL, 32, 21, 103),
(19, 1, NULL, NULL, NULL, 31, 19, 92),
(20, 0, NULL, NULL, NULL, 31, 20, 96),
(21, 1, NULL, NULL, NULL, 31, 21, 103),
(22, 1, NULL, NULL, NULL, 33, 19, 92),
(23, 0, NULL, NULL, NULL, 33, 20, 96),
(24, 1, NULL, NULL, NULL, 35, 21, 103),
(25, 1, NULL, NULL, NULL, 36, 19, 92),
(26, 0, NULL, NULL, NULL, 36, 20, 96),
(27, 1, NULL, NULL, NULL, 36, 21, 103),
(28, 1, NULL, NULL, NULL, 37, 5, 79),
(29, 1, NULL, NULL, NULL, 37, 6, 86),
(30, 1, NULL, NULL, NULL, 37, 7, 89),
(31, 1, NULL, NULL, NULL, 39, 19, 92),
(32, 0, NULL, NULL, NULL, 39, 20, 96),
(33, 1, NULL, NULL, NULL, 39, 21, 103),
(34, 1, NULL, NULL, NULL, 34, 19, 92),
(35, 1, NULL, NULL, NULL, 34, 20, 99),
(36, 1, NULL, NULL, NULL, 40, 5, 79),
(37, 0, NULL, NULL, NULL, 40, 6, 87),
(38, 0, NULL, NULL, NULL, 40, 7, 91),
(39, 0, NULL, NULL, NULL, 41, 10, 50),
(40, 0, NULL, NULL, NULL, 41, 11, 55),
(41, 0, NULL, NULL, NULL, 41, 12, 66),
(42, 1, NULL, NULL, NULL, 43, 19, 92),
(43, 0, NULL, NULL, NULL, 43, 20, 96),
(44, 1, NULL, NULL, NULL, 44, 19, 92),
(45, 0, NULL, NULL, NULL, 44, 20, 96),
(46, 1, NULL, NULL, NULL, 44, 21, 103),
(47, 1, NULL, NULL, NULL, 45, 19, 92),
(48, 0, NULL, NULL, NULL, 45, 20, 101),
(49, 0, NULL, NULL, NULL, 45, 20, 100),
(50, 0, NULL, NULL, NULL, 45, 20, 96),
(51, 1, NULL, NULL, NULL, 45, 20, 99),
(52, 1, NULL, NULL, NULL, 46, 19, 92),
(53, 0, NULL, NULL, NULL, 46, 19, 95),
(54, 0, NULL, NULL, NULL, 46, 20, 100),
(55, 0, NULL, NULL, NULL, 46, 21, 106),
(56, 1, NULL, NULL, NULL, 46, 21, 103),
(57, 1, NULL, NULL, NULL, 47, 19, 92),
(58, 1, NULL, NULL, NULL, 47, 20, 99),
(59, 1, NULL, NULL, NULL, 47, 21, 103),
(60, 1, NULL, NULL, NULL, 48, 22, 108),
(61, 0, NULL, NULL, NULL, 48, 23, 112),
(62, 0, NULL, NULL, NULL, 49, 35, 119),
(63, 0, NULL, NULL, NULL, 49, 36, 134),
(64, 1, NULL, NULL, NULL, 49, 37, 128),
(65, 1, NULL, NULL, NULL, 49, 38, 130),
(66, 0, NULL, NULL, NULL, 52, 35, 119),
(67, 0, NULL, NULL, NULL, 52, 36, 134),
(68, 0, NULL, NULL, NULL, 52, 37, 126),
(69, 1, NULL, NULL, NULL, 52, 38, 130),
(70, 0, NULL, NULL, NULL, 53, 35, 119),
(71, 0, NULL, NULL, NULL, 53, 36, 134),
(72, 1, NULL, NULL, NULL, 53, 37, 128),
(73, 1, NULL, NULL, NULL, 53, 38, 130),
(74, 1, NULL, NULL, NULL, 55, 39, 138),
(75, 1, NULL, NULL, NULL, 56, 46, 166),
(76, 1, NULL, NULL, NULL, 58, 35, 123),
(77, 0, NULL, NULL, NULL, 58, 36, 178),
(78, 0, NULL, NULL, NULL, 58, 37, 129),
(79, 1, NULL, NULL, NULL, 58, 38, 130),
(80, 0, NULL, NULL, NULL, 58, 38, 133),
(81, 0, NULL, NULL, NULL, 59, 39, 139),
(82, 1, NULL, NULL, NULL, 60, 46, 166),
(83, 0, NULL, NULL, NULL, 60, 48, 179),
(84, 0, NULL, NULL, NULL, 60, 50, 185),
(85, 1, NULL, NULL, NULL, 64, 39, 138),
(86, 0, NULL, NULL, NULL, 66, 55, 188),
(87, 1, NULL, NULL, NULL, 66, 56, 192),
(88, 0, NULL, NULL, NULL, 66, 57, 196),
(89, 0, NULL, NULL, NULL, 66, 58, 200),
(90, 1, NULL, NULL, NULL, 61, 55, 189),
(91, 0, NULL, NULL, NULL, 61, 56, 195),
(92, 1, NULL, NULL, NULL, 61, 57, 197),
(93, 0, NULL, NULL, NULL, 61, 58, 200),
(94, 1, NULL, NULL, NULL, 67, 35, 123),
(95, 1, NULL, NULL, NULL, 67, 36, 136),
(96, 0, NULL, NULL, NULL, 67, 60, 206),
(97, 0, NULL, NULL, NULL, 67, 61, 209),
(98, 1, NULL, NULL, NULL, 67, 66, 227),
(99, 0, NULL, NULL, NULL, 67, 66, 228),
(100, 1, NULL, NULL, NULL, 68, 35, 123),
(101, 1, NULL, NULL, NULL, 68, 36, 136),
(102, 1, NULL, NULL, NULL, 68, 60, 205),
(103, 0, NULL, NULL, NULL, 68, 61, 209),
(104, 0, NULL, NULL, NULL, 68, 66, 229),
(105, 0, NULL, NULL, NULL, 69, 35, 119),
(106, 0, NULL, NULL, NULL, 69, 36, 134),
(107, 1, NULL, NULL, NULL, 69, 60, 205),
(108, 0, NULL, NULL, NULL, 69, 61, 209),
(109, 0, NULL, NULL, NULL, 69, 66, 226);

-- --------------------------------------------------------

--
-- Table structure for table `test_results`
--

CREATE TABLE `test_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `score` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `test_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `test_results`
--

INSERT INTO `test_results` (`id`, `score`, `created_at`, `updated_at`, `deleted_at`, `test_id`, `student_id`) VALUES
(1, 12, '2022-10-21 21:18:35', '2022-10-23 14:37:57', '2022-10-23 14:37:57', 2, 67),
(2, 12, '2022-10-21 21:38:35', '2022-10-23 14:38:04', '2022-10-23 14:38:04', 2, 67),
(3, 45, '2022-10-21 21:39:37', '2022-10-24 14:36:29', NULL, 2, 67),
(4, 100, '2022-10-23 14:47:33', '2022-10-23 14:47:33', NULL, 4, 8),
(5, 10, '2022-10-23 15:07:43', '2022-10-23 15:07:43', NULL, 3, 67),
(7, 574, '2022-10-23 17:59:34', '2022-10-23 17:59:34', NULL, 1, 67),
(9, 10, '2022-10-23 22:09:57', '2022-10-23 22:09:57', NULL, 3, 113),
(10, 22, '2022-10-24 01:04:52', '2022-10-24 01:04:52', NULL, 2, 92),
(11, 10, '2022-10-24 14:55:24', '2022-10-24 14:55:24', NULL, 3, 30),
(12, 4, '2022-10-24 15:02:29', '2022-10-24 15:02:29', NULL, 5, 30),
(13, 22, '2022-10-24 15:17:12', '2022-10-24 15:17:12', NULL, 2, 30),
(14, 28, '2022-10-24 17:55:45', '2022-10-24 20:35:13', NULL, 2, 122),
(15, 10, '2022-10-24 18:02:46', '2022-10-24 18:02:46', NULL, 3, 122),
(16, 22, '2022-10-25 00:34:03', '2022-10-25 00:34:03', NULL, 2, 149),
(17, 22, '2022-10-25 01:44:58', '2022-10-25 01:44:58', NULL, 2, 153),
(18, 22, '2022-10-25 02:05:07', '2022-10-25 02:05:07', NULL, 2, 154),
(19, 10, '2022-10-25 16:12:24', '2022-10-25 16:12:24', NULL, 3, 153),
(20, 22, '2022-10-25 16:13:43', '2022-10-25 16:13:43', NULL, 2, 163),
(21, 22, '2022-10-25 17:10:26', '2022-10-25 17:10:26', NULL, 2, 164),
(22, 22, '2022-10-25 19:44:45', '2022-10-25 19:44:45', NULL, 2, 167),
(23, 6, '2022-10-25 21:02:56', '2022-10-25 21:02:56', NULL, 6, 154),
(24, 6, '2022-10-25 22:51:18', '2022-10-25 22:51:18', NULL, 6, 172),
(25, 6, '2022-10-26 04:16:01', '2022-10-26 04:16:01', NULL, 6, 179),
(26, 22, '2022-10-26 04:17:48', '2022-10-26 04:17:48', NULL, 2, 179),
(27, 6, '2022-10-26 15:59:41', '2022-10-26 15:59:41', NULL, 6, 183),
(28, 18, '2022-10-26 16:21:09', '2022-10-26 16:21:09', NULL, 4, 122),
(29, 10, '2022-10-26 16:27:23', '2022-10-26 16:27:43', NULL, 6, 184),
(30, 7, '2022-10-26 17:07:44', '2022-10-26 17:07:55', NULL, 6, 185),
(31, 10, '2022-10-26 19:56:31', '2022-10-26 20:03:58', NULL, 6, 196),
(32, 10, '2022-10-26 19:57:04', '2022-10-26 19:58:08', NULL, 6, 195),
(33, 9, '2022-10-26 20:45:17', '2022-10-26 20:45:52', NULL, 6, 198),
(34, 11, '2022-10-26 20:45:28', '2022-10-27 00:10:40', NULL, 6, 199),
(35, 7, '2022-10-26 21:03:05', '2022-10-26 21:04:36', NULL, 6, 200),
(36, 10, '2022-10-26 21:11:25', '2022-10-26 21:12:18', NULL, 6, 197),
(37, 29, '2022-10-26 21:26:11', '2022-10-26 21:27:04', NULL, 2, 197),
(38, 574, '2022-10-26 21:55:15', '2022-10-26 21:55:15', NULL, 1, 197),
(39, 10, '2022-10-26 22:01:02', '2022-10-26 22:01:28', NULL, 6, 201),
(40, 25, '2022-10-27 00:23:59', '2022-10-27 00:24:32', NULL, 2, 199),
(41, NULL, '2022-10-27 02:17:42', '2022-10-27 02:17:42', NULL, 4, 199),
(42, NULL, '2022-10-27 02:19:38', '2022-10-27 02:19:38', NULL, 1, 199),
(43, 3, '2022-10-27 19:55:55', '2022-10-27 19:56:29', NULL, 6, 254),
(44, 4, '2022-10-27 20:18:22', '2022-10-27 20:19:04', NULL, 6, 258),
(45, 5, '2022-10-27 21:09:41', '2022-10-27 21:10:09', NULL, 6, 261),
(46, 4, '2022-10-27 23:43:48', '2022-10-27 23:44:17', NULL, 6, 252),
(47, 6, '2022-10-30 17:55:07', '2022-10-30 17:55:37', NULL, 6, 284),
(48, 100, '2022-10-30 18:20:28', '2022-10-30 18:20:53', NULL, 7, 284),
(49, 4, '2022-10-31 17:14:09', '2022-10-31 17:15:30', NULL, 10, 303),
(50, NULL, '2022-10-31 17:22:51', '2022-10-31 17:22:51', NULL, 12, 303),
(51, NULL, '2022-10-31 17:23:56', '2022-10-31 17:23:56', NULL, 13, 303),
(52, 2, '2022-10-31 17:51:28', '2022-10-31 17:54:58', NULL, 10, 312),
(53, 4, '2022-10-31 18:31:48', '2022-10-31 18:33:24', NULL, 10, 316),
(54, NULL, '2022-10-31 19:51:50', '2022-10-31 19:51:50', NULL, 10, 284),
(55, 2, '2022-10-31 20:13:54', '2022-10-31 20:14:11', NULL, 11, 284),
(56, 2, '2022-10-31 20:16:20', '2022-10-31 20:17:30', NULL, 12, 284),
(57, NULL, '2022-11-01 16:57:00', '2022-11-01 16:57:00', NULL, 10, 324),
(58, 3, '2022-11-01 20:18:39', '2022-11-01 20:27:27', NULL, 10, 325),
(59, NULL, '2022-11-01 20:34:52', '2022-11-01 20:34:52', NULL, 11, 325),
(60, 2, '2022-11-01 20:35:27', '2022-11-01 20:36:14', NULL, 12, 325),
(61, 4, '2022-11-01 20:54:38', '2022-11-01 23:15:21', NULL, 15, 326),
(62, NULL, '2022-11-01 21:08:38', '2022-11-01 21:08:38', NULL, 10, 326),
(63, NULL, '2022-11-01 21:09:29', '2022-11-01 21:09:29', NULL, 12, 326),
(64, 2, '2022-11-01 21:09:47', '2022-11-01 21:11:28', NULL, 11, 326),
(65, NULL, '2022-11-01 22:03:29', '2022-11-01 22:03:29', NULL, 10, 327),
(66, 2, '2022-11-01 22:30:09', '2022-11-01 22:30:37', NULL, 15, 327),
(67, 5, '2022-11-02 15:40:11', '2022-11-02 15:40:54', NULL, 10, 335),
(68, 5, '2022-11-02 15:54:56', '2022-11-02 15:58:58', NULL, 10, 336),
(69, 2, '2022-11-02 16:43:16', '2022-11-02 16:45:14', NULL, 10, 337);

-- --------------------------------------------------------

--
-- Table structure for table `test_user`
--

CREATE TABLE `test_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `test_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `test_user`
--

INSERT INTO `test_user` (`user_id`, `test_id`) VALUES
(72, 1),
(72, 2),
(30, 3),
(30, 1),
(30, 2),
(30, 4),
(30, 5),
(117, 1),
(117, 2),
(117, 3),
(117, 4),
(117, 5),
(188, 2),
(208, 1),
(208, 2),
(208, 3),
(208, 4),
(208, 5),
(208, 6);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved` tinyint(1) DEFAULT '0',
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `grade_id` bigint(20) UNSIGNED DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `approved`, `remember_token`, `points`, `created_at`, `updated_at`, `deleted_at`, `grade_id`, `photo`) VALUES
(1, 'Admin', 'super@admin.com', NULL, '$2y$10$b6hUgEIdLB8b69bLPyKvI.s79JAYlDcSSwQIQEm/KwbcDjh2JJA4q', 1, 'MdwaUe8osvnWBOYdDBDrxuqyybIz9lLL2xuqumHiwBGdMKUnWpydWuYtqFAS', NULL, NULL, '2022-10-24 17:19:13', NULL, NULL, NULL),
(2, 'Mohamed Shaban Abou-abda', 'mo.shabanabouabda@gmail.com', NULL, '$2y$10$zZV/C/5PsYqZnXLpYrpACOfyrsMHjEBV0hV2UAzboaE.RchnB4QhG', 0, NULL, NULL, '2022-10-07 19:38:11', '2022-10-16 09:34:41', '2022-10-16 09:34:41', NULL, NULL),
(3, 'ibrahim Shaban', 'mo@gmail.com', NULL, '$2y$10$0.vi1iRyy6TfyPa86bAgMeSELicLOrQ0hl/6yLu5Q24iJD8Kgol4m', 0, NULL, NULL, '2022-10-09 18:12:38', '2022-10-16 09:34:26', '2022-10-16 09:34:26', NULL, NULL),
(4, 'h', 'h@gmail.com', NULL, '$2y$10$BQP.h/QNFfaqFB6aZSUFlOS8IMFE/.PlFX0lNkq/NqN/2v/Ddb..y', 0, NULL, NULL, '2022-10-09 20:53:56', '2022-10-24 17:18:52', '2022-10-24 17:18:52', NULL, NULL),
(5, 'Mohamed Shaban Abou-abda', 'he@gmail.com', NULL, '$2y$10$Lo58yhPE3a4Cl0hzePyxcO.m/lSiJGZCkFYWyTz/NtSBtykrt3l.K', 0, NULL, NULL, '2022-10-09 21:21:45', '2022-10-16 09:34:37', '2022-10-16 09:34:37', NULL, NULL),
(6, 'ibra', 'ibra@gmail.com', NULL, '$2y$10$c9HTagQPbiwVTvDpJrATXO6NusAa8BWyH6B4vIg9Cq9lqyhMKO6zu', 0, NULL, NULL, '2022-10-09 21:52:18', '2022-10-24 17:18:30', '2022-10-24 17:18:30', NULL, NULL),
(7, 'mo salah', 'mosalah@gmail.com', NULL, '$2y$10$sYoxSEGYpSVhyt4WazOuP.AEjIzBNu3.2MAk/CgGj591UcrnEe1ea', 0, NULL, NULL, '2022-10-09 22:37:10', '2022-10-16 09:43:57', '2022-10-16 09:43:57', NULL, NULL),
(8, 'IBRAHIAM', 'Ibrahi@outlook.com', NULL, '$2y$10$Erk83S7MPmK2p2GsyY.Ej.jW4lxsbFpZXotDDMazA.UNVShPaTt3K', 0, NULL, NULL, '2022-10-10 15:31:39', '2022-10-10 15:31:39', NULL, NULL, NULL),
(9, 'hema', 'he1@gmail.com', NULL, '$2y$10$4KlZrlv2XeWKEQUpcmuUvuaM1al.2dxeoAYgKTpw23lRUxwk.Vnzi', 0, NULL, NULL, '2022-10-10 16:18:20', '2022-10-24 17:18:38', '2022-10-24 17:18:38', NULL, NULL),
(10, 'mk', 'mk@gmail.com', NULL, '$2y$10$kkeKx3Pa84z6vRhobGPXS.4hxOzzZHLv7yIWbEdanOZGOGMp16saO', 0, NULL, NULL, '2022-10-10 17:14:01', '2022-10-24 17:17:22', '2022-10-24 17:17:22', NULL, NULL),
(11, 'mz', 'mz@gmail.com', NULL, '$2y$10$NbQsOlTs8qvA5eLJs9lxJ.OqeXP2009dO/qj4mOx88ez4haDVHHMu', 0, NULL, NULL, '2022-10-10 18:33:37', '2022-10-24 17:16:37', '2022-10-24 17:16:37', NULL, NULL),
(12, 'nn', 'nn@gmail.com', NULL, '$2y$10$pTaSRL5yP79HuSam1j4I9ewRuMHUKp7BmBrOlTiPslix9itF4k6l2', 0, NULL, 4444, '2022-10-10 23:29:46', '2022-10-12 16:57:38', '2022-10-12 16:57:38', NULL, NULL),
(13, 'IBRAHIAM', 'IBRAHIAM@outlook.com', NULL, '$2y$10$pf2K9KyzeIfdmtvFCXThx.tspFPLfoYD35UU6RE/yc4UelBn2TwFO', 0, NULL, NULL, '2022-10-11 02:12:38', '2022-10-24 17:18:28', '2022-10-24 17:18:28', NULL, NULL),
(14, 'Esraa Ghalii', 'Esraa@yeshtry.com', NULL, '$2y$10$9d4Ajn5mhcRcWohmZk9JV.kb.k0YIqsN4x0Z7c.CFJliwP90WybEu', 0, NULL, 7, '2022-10-11 03:38:51', '2022-10-12 22:22:22', NULL, NULL, NULL),
(15, 'esraa ghalii', 'esraa@gmail.com', NULL, '$2y$10$Blg7VOuXqPD/DvVYpWIePO5SydOjvYSLyWVQfIn7UxlZ/nwqOAdT.', 0, NULL, NULL, '2022-10-11 03:39:42', '2022-10-24 17:18:58', '2022-10-24 17:18:58', NULL, NULL),
(16, 'Esraa Ahmed', 'esraa@gamil.com', NULL, '$2y$10$Rjt.7qq5pmSMCqhYHvJi0uKALv0IOFhosNtdIaU0asIaT.mSaVlS6', 0, NULL, NULL, '2022-10-11 03:50:00', '2022-10-24 17:18:57', '2022-10-24 17:18:57', NULL, NULL),
(17, 'mmm', 'mario.m.king.op@gmail.com', NULL, '$2y$10$wyl66aSD05VRUFaMQw16UOZM40gDL6Hm5qmwC0hiQw13Z/mEZKvAC', 0, 'jHlvNqYYkNeopucOAefBAP6z9OsxwipdtgrMLXsCwrpX2DmtCMvfENHHfWli', NULL, '2022-10-11 14:59:59', '2022-10-16 09:43:20', '2022-10-16 09:43:20', NULL, NULL),
(18, 'IBRAHIAM', 'IBRAHIAMSHERIEF@yahoo.com', NULL, '$2y$10$2EkinyrsQHIoKYz.V4etHOt/foVR9IZkhyAMnLT6jSnc/ZP8IU8RW', 0, NULL, 7979, '2022-10-11 18:43:07', '2022-10-12 22:35:49', NULL, NULL, NULL),
(19, 'in', 'tes@gmail.com', NULL, '$2y$10$cPMBNuHv2cvcMT/JY2PYmue9FwxmOaV2sHDKBvNUVhM9KAU1gOy2O', 0, NULL, NULL, '2022-10-11 18:46:03', '2022-10-31 15:03:52', '2022-10-31 15:03:52', NULL, NULL),
(20, 'mk', 'lk@gmail.com', NULL, '$2y$10$qMCVwHkKjoLzRdSB5DdaP.8X/Y2Qv1u6rQvkgc49mbAMjUhlX0dSe', 0, NULL, NULL, '2022-10-12 15:17:15', '2022-10-24 17:17:22', '2022-10-24 17:17:22', NULL, NULL),
(21, 'hema201048@windowslive.com', 'hema201048@windowslive.com', NULL, '$2y$10$isPGVd.wX2ylNnZJ/Szjb.xOoa0W369toTqLx7zXDIQ5O/1Ijh9t2', 0, NULL, NULL, '2022-10-12 16:04:58', '2022-10-24 17:18:35', '2022-10-24 17:18:35', NULL, NULL),
(22, 'ms', 'ms@gmail.com', NULL, '$2y$10$/i2FzYHMXcBeavPd/eEjEuxL8HhqeSIOPu4FF3ey.9nAzdeHc2Ci6', 0, NULL, NULL, '2022-10-12 19:07:18', '2022-10-24 17:16:38', '2022-10-24 17:16:38', NULL, NULL),
(23, 'Mohamed Shaban2', 'mo2.shabanabouabda@gmail.com', NULL, '$2y$10$0a6N6xELIg5N0LtkvdoY5eIgcakg.6rUIT9UVh3gLA3KKpWX1FdLi', 0, NULL, 1, '2022-10-12 21:00:13', '2022-10-16 09:40:21', '2022-10-16 09:40:21', NULL, NULL),
(24, 'me', 'me@gmail.com', NULL, '$2y$10$YJ4vvhphj7qrnSDckswWweID205Gi/Jqk5eWFftgjCeQ7JLbqMDXu', 0, NULL, 13, '2022-10-12 22:33:56', '2022-10-24 17:17:36', '2022-10-24 17:17:36', NULL, NULL),
(25, 'Esraa Ahmed', 'esraa1@gmail.com', NULL, '$2y$10$jGBvDNQPiBK1rwntCQsLvuQPdKb.e3NL70XzLJIcPfOOE0D2N3ExC', 0, NULL, 2, '2022-10-12 22:51:31', '2022-10-24 17:19:01', '2022-10-24 17:19:01', NULL, NULL),
(26, 'Mohamed Shaban6', 'mo3.shabanabouabda@gmail.com', NULL, '$2y$10$Z7lTo/80FFR6tz1ynViqnOIA04Dqo3HUiHVV56P9j0XkU2InnqeFC', 0, NULL, NULL, '2022-10-12 23:39:38', '2022-10-16 09:34:33', '2022-10-16 09:34:33', NULL, NULL),
(27, 'hema', 'hj@gmail.com', NULL, '$2y$10$Q.6WMmn4Yml9aTy.eMmoqOF6iAPpo2OQ0/XOeynzCk8cOpCoM918K', 0, NULL, NULL, '2022-10-12 23:45:37', '2022-10-24 17:18:40', '2022-10-24 17:18:40', NULL, NULL),
(28, 'mn', 'mn@gmail.com', NULL, '$2y$10$VNCTc8IoQUl/I1praUICnuU.HQqPxKIv.PHgvxvTgAqxeDHbCfkpS', 0, NULL, NULL, '2022-10-12 23:56:58', '2022-10-16 09:43:38', '2022-10-16 09:43:38', NULL, NULL),
(29, 'mee', 'mee@gmail.com', NULL, '$2y$10$IPdU1eRLzZVVREWg4hkhVOJzQK265ugQpiDnwUbUXfGnN42/6qUZW', 0, NULL, NULL, '2022-10-13 00:16:14', '2022-10-24 17:17:29', '2022-10-24 17:17:29', NULL, NULL),
(30, 'Mohamed Emad', 'memad3000@gmail.com', NULL, '$2y$10$SfLncNaLZeI5YAHd8fPgkehLD0rN24sjOeycVl.GGT9Rr7Luyz9RG', 1, NULL, NULL, '2022-10-13 00:18:04', '2022-10-24 17:16:42', '2022-10-24 17:16:42', 12, NULL),
(31, 'mp', 'mp@gmail.com', NULL, '$2y$10$bzDxUeJOXAkKkwuZObWqSu7yES1AEeTIBqfzjvM1b/T/x4zzMUZhy', 0, NULL, NULL, '2022-10-13 00:20:10', '2022-10-16 09:40:02', '2022-10-16 09:40:02', NULL, NULL),
(32, 'lm', 'lm@gmail.com', NULL, '$2y$10$OMJXHbkdKT8k5kyyoxWbee0niFWDXklW5VDHajumZJkFUyrmqnC/e', 0, NULL, NULL, '2022-10-13 00:38:42', '2022-10-24 17:17:37', '2022-10-24 17:17:37', NULL, NULL),
(33, 'mb', 'mb@gmail.com', NULL, '$2y$10$TmSNm2vzk0hGPZ9nnJxVFe1Ph5dOlptOtF4K8WUhXO4JNP2bn9evO', 0, NULL, NULL, '2022-10-13 04:52:00', '2022-10-24 17:17:36', '2022-10-24 17:17:36', NULL, NULL),
(34, 'as', 'as@gmail.com', NULL, '$2y$10$nwK0.imgW41zas3bcGzCMuKx0kn79XEUvoK/iIbbTJuBitSY5ScfK', 0, NULL, NULL, '2022-10-13 06:27:30', '2022-10-24 17:19:11', '2022-10-24 17:19:11', NULL, NULL),
(35, 'moh', 'moj@gmail.com', NULL, '$2y$10$N.UH3ViHAMW7.7ETnW3fKO8un0MUJCBgaqnD91GoDstSFaD8uoOry', 0, NULL, NULL, '2022-10-13 16:30:31', '2022-10-24 17:17:09', '2022-10-24 17:17:09', NULL, NULL),
(36, 'hema', 'hem@gmail.com', NULL, '$2y$10$1rXv6Cmmiq2gnHAVmCW1guk7iPLwJII9lLEEqGuN5QwS6g9RZOJFq', 0, NULL, NULL, '2022-10-13 18:34:25', '2022-10-24 17:18:40', '2022-10-24 17:18:40', NULL, NULL),
(37, 'hema', 'hema55@gmail.com', NULL, '$2y$10$5HW3aXLsN8aClOl/XpAvAOwPhZF5Q.B6hukT/iHX9bDgxQkTDy12y', 0, NULL, NULL, '2022-10-13 18:42:08', '2022-10-24 17:18:48', '2022-10-24 17:18:48', NULL, NULL),
(38, 'borhom', 'bb@gmail.com', NULL, '$2y$10$fAUAqp0zgEEeO11kIQ6W1OCcX2grMRGNP2LtpkHBbsFiKOkXmPfyi', 0, NULL, NULL, '2022-10-13 18:48:07', '2022-10-24 17:19:07', '2022-10-24 17:19:07', NULL, NULL),
(39, 'mol', 'mol@gmail.com', NULL, '$2y$10$Qn4hN7P73xb2VOmOnPGbo.Fr2YMIZj.S3RnNEw3YAdoq87NQ2N1ES', 0, NULL, NULL, '2022-10-13 19:32:18', '2022-10-16 09:40:09', '2022-10-16 09:40:09', NULL, NULL),
(40, 'mll', 'mll@gmail.com', NULL, '$2y$10$sSmjOM7S1vqYl9i5V/gHPObHOKDymsV.FhbETI/4AeWNlWMuCwddS', 0, NULL, NULL, '2022-10-13 19:49:50', '2022-10-24 17:17:17', '2022-10-24 17:17:17', NULL, NULL),
(41, 'io', 'io@gmail.com', NULL, '$2y$10$mMOShTFsiwrziDgVBs3sBunQJHXyYS7xua0OfcfKKbDVwIhvjIj..', 0, NULL, NULL, '2022-10-13 20:25:57', '2022-10-24 17:18:09', '2022-10-24 17:18:09', NULL, NULL),
(42, 'testing@gmail.com', 'testing@gmail.com', NULL, '$2y$10$0xmSyuOGj.NTNk3i3wYc/./wl4rda4MzTAUDU4qWLYgwPTpshpptq', 0, NULL, NULL, '2022-10-13 20:57:26', '2022-10-16 09:32:28', '2022-10-16 09:32:28', NULL, NULL),
(43, 'ioo', 'ioo@gmail.com', NULL, '$2y$10$FyYfrwyJakpKr1UMsPRkT.m/LPlt1DF12cNm6ECh0Qf.2vn/GQvgC', 0, NULL, NULL, '2022-10-13 22:58:35', '2022-10-24 17:18:06', '2022-10-24 17:18:06', NULL, NULL),
(44, 'ii', 'ii@gmail.com', NULL, '$2y$10$3JdcBZY9XHTsSkS4l.fVEurGLTDuexalmeOb95YFeXRIyc.w6BfrC', 0, NULL, NULL, '2022-10-13 23:08:06', '2022-10-24 17:18:10', '2022-10-24 17:18:10', NULL, NULL),
(45, 'cc', 'cc@gmail.com', NULL, '$2y$10$LHkv0JsbyDD8BhDLBpHeJuadxvuWjJDTPLJ6JDWK6BPRBTDeRJsau', 0, NULL, NULL, '2022-10-14 02:00:47', '2022-10-16 09:38:38', '2022-10-16 09:38:38', NULL, NULL),
(46, 'pp', 'pp@gmail.com', NULL, '$2y$10$NEy3ZzMLX/JNnQR5sghfXeG9sz5HBuXZtf/jFhpm2SsqtAWZcL/T2', 0, NULL, NULL, '2022-10-14 02:05:10', '2022-10-16 09:39:15', '2022-10-16 09:39:15', NULL, NULL),
(47, 'ip', 'ip@gmail.com', NULL, '$2y$10$xb0XEC4OxBuRa0/3R8XfneNBTLrRt2lu4AItVdVCbR6uVjcIOqgGS', 0, NULL, NULL, '2022-10-14 02:21:36', '2022-10-24 17:18:03', '2022-10-24 17:18:03', NULL, NULL),
(48, 'test9@outlook.com', 'test9@outlook.com', NULL, '$2y$10$7x54ftSsvub/Zq/EVfbHmeRXXuOcLQ4yE3KAmp3nx1TjuPeUDxOO2', 0, NULL, 99, '2022-10-14 02:34:06', '2022-10-31 15:03:52', '2022-10-31 15:03:52', NULL, NULL),
(49, 'op', 'op@gmail.com', NULL, '$2y$10$zIbMJ4mn281lEjgEcy9iBu39SUUB/nGTp95rZR2IbMwxHkU.gXJhe', 0, NULL, NULL, '2022-10-14 22:11:20', '2022-10-24 17:16:25', '2022-10-24 17:16:25', 12, NULL),
(50, 'mariam Emadeldeen', 'mariamemadeldeen0@gmail.com', NULL, '$2y$10$knKVeq1jkhL0T4napzdnwOnxBkrgotV3fbltic4pSnAOO0JC/7H/W', 0, NULL, NULL, '2022-10-15 00:23:57', '2022-10-24 17:17:36', '2022-10-24 17:17:36', NULL, NULL),
(51, 'pl', 'pl@gmail.com', NULL, '$2y$10$2Xw1KOyi6jxACrcYSTAo1uD0EL1wsA8HPl7UEDEVLV.gFxjffNsNW', 0, NULL, NULL, '2022-10-15 04:01:05', '2022-10-16 09:39:25', '2022-10-16 09:39:25', NULL, NULL),
(52, 'po', 'po@gmail.com', NULL, '$2y$10$8Bm.O8RG7FEeiO8OLP5TcublXKrrwoIi3pQVxt2j5l2a/DmaA.jwW', 0, NULL, NULL, '2022-10-15 04:10:46', '2022-10-16 09:39:38', '2022-10-16 09:39:38', NULL, NULL),
(53, 'testproduction@hotmail.com', 'testproduction@hotmail.com', NULL, '$2y$10$D1Fr8h9q7EZeZ5yX1VKhSO5jEN9R2.zI0QIIrcWB3F4xcXLHHz3ma', 0, NULL, NULL, '2022-10-15 21:09:45', '2022-10-16 09:32:01', '2022-10-16 09:32:01', NULL, NULL),
(54, 'mmmm', 'mmmm@gmail.com', NULL, '$2y$10$D2g.aW22is6Yx1llXbLn4e5SChyNy0aKb6WeNOOQhSOtlppfx6dna', 0, NULL, NULL, '2022-10-15 23:12:05', '2022-10-16 09:44:52', '2022-10-16 09:44:52', NULL, NULL),
(55, 'MM', 'MM.M@gmail.com', NULL, '$2y$10$iXb1LB7asFO9Iy3PyYl1yue2QdS3UrFO3D0mksnca4uYR4BHhK8o6', 0, NULL, NULL, '2022-10-15 23:14:21', '2022-10-16 09:42:32', '2022-10-16 09:42:32', NULL, NULL),
(56, 'ibrahim Mohamed Amin', 'ibrahimaminoo1@gmail.com', NULL, '$2y$10$2cmm.dqyOB9yTHPrOdNRKee0TqaU4Xcfsh.06Avra9nUbCZicfTdW', 0, NULL, NULL, '2022-10-16 04:32:39', '2022-10-16 09:44:23', '2022-10-16 09:44:23', NULL, NULL),
(57, 'moggggggughsf', 'mog@gmail.com', NULL, '$2y$10$bmzR049dnQMRTUmH/nL0B.D4YrEhwR73ZoQQ4Nqo9zmw3db7xHO32', 0, NULL, NULL, '2022-10-16 06:42:02', '2022-10-16 09:42:42', '2022-10-16 09:42:42', NULL, NULL),
(58, 'iu', 'iu@gmail.com', NULL, '$2y$10$Pm3/hQ0vfX74YQi4gwTo3O92b03AtwYR6McCa4pKWAMWsShqw6qya', 0, NULL, NULL, '2022-10-16 06:47:49', '2022-10-16 09:42:16', '2022-10-16 09:42:16', NULL, NULL),
(59, 'kenzy Emad 3L23', 'kenzy@gmail.com', NULL, '$2y$10$Ib/v7nyXSc47i8eh9IOXMeGIVJlyGFJrRgaVU4lvV4/ib/zowQA6.', 0, NULL, 99, '2022-10-16 09:21:39', '2022-10-16 19:26:22', NULL, NULL, NULL),
(60, 'username', 'user12@gmail.com', NULL, '$2y$10$zqnLEcKNjcc6ArSZAFiyGun4s5uVveDRt90OVXy9IV8lkaRqbBhBO', 0, NULL, NULL, '2022-10-16 15:39:34', '2022-10-24 17:15:55', '2022-10-24 17:15:55', NULL, NULL),
(61, 'lkl', 'lkl@gmail.com', NULL, '$2y$10$wPKw8L8D8C4fiU8UlBsA0eBirg1qpAKLJkucbkYopKbvXNF1r/d9e', 0, NULL, NULL, '2022-10-16 18:06:20', '2022-10-24 17:17:39', '2022-10-24 17:17:39', NULL, NULL),
(62, 'yy', 'yy@gmail.com', NULL, '$2y$10$TXfxJIQpqHM4R8MTDlc//eF574lfxkG0n.JofVM4Bo.6ACywIyiHe', 0, NULL, NULL, '2022-10-16 18:09:51', '2022-10-24 17:15:19', '2022-10-24 17:15:19', NULL, NULL),
(63, 'parent', 'kk@gmail.com', NULL, '$2y$10$6VS.JH3brQKtjf71aAZPT.QGjiGH3d5SM6zp9rkrlKpD8Ga.Yml/a', 0, NULL, NULL, '2022-10-16 18:15:41', '2022-10-24 17:16:26', '2022-10-24 17:16:26', NULL, NULL),
(64, 'zz', 'zz@gmail.com', NULL, '$2y$10$E57vU7xjrQM.jZN84/UmoeC.pfOW/KydkO7GrWZ9ihjqvNB0edYiS', 0, NULL, NULL, '2022-10-16 18:58:17', '2022-10-24 17:15:11', '2022-10-24 17:15:11', NULL, NULL),
(65, 'ww', 'ww@gmail.com', NULL, '$2y$10$ZgHP3P16kqZkmrWb1Cjg/eqDTgAWLg/xNP077PyrFcx6qDBeGcDsO', 0, NULL, NULL, '2022-10-16 19:18:59', '2022-10-24 17:15:49', '2022-10-24 17:15:49', NULL, NULL),
(66, 'rr', 'rr@gamil.com', NULL, '$2y$10$d2kuCuZ.fxn6ZmtkzC4UReihK3e7lUJOZ0klsUnq9OGo43eaov52W', 0, NULL, NULL, '2022-10-16 19:23:40', '2022-10-24 17:16:20', '2022-10-24 17:16:20', NULL, NULL),
(67, 'zss', 'zss@gmail.com', NULL, '$2y$10$JPrH/R07XsfILIslEr0/m.DIaWORf.nT2v7OjXJpDlZxyxSvcLoi.', 0, NULL, NULL, '2022-10-16 20:05:02', '2022-10-24 17:15:16', '2022-10-24 17:15:16', 12, NULL),
(68, 'Mohamed', 'emad@gmail.com', NULL, '$2y$10$BOGpfWNF8iAiscPvTt6nk.6R7XBUejxQMGHKDI0RZmzFP/7jQLLSq', 0, NULL, NULL, '2022-10-16 20:45:51', '2022-10-24 17:16:59', '2022-10-24 17:16:59', NULL, NULL),
(69, 'ibrahiamsherif', 'ibrahiamsherif@gmail.com', NULL, '$2y$10$aF4Gr37tETsa9GBU.B/v4.6aLUXNKPXdoYqWDVlfaIlM0XPbDDeMq', 0, NULL, NULL, '2022-10-17 00:13:50', '2022-10-17 00:16:00', NULL, NULL, NULL),
(70, 'hhhh', 'hhhh@gmail.com', NULL, '$2y$10$qQn2Lnbe6oZxm96T3lshQON5htsOUbN/60Dw64JVdCFOgkeLInYqS', 0, NULL, NULL, '2022-10-17 01:32:52', '2022-10-24 17:18:34', '2022-10-24 17:18:34', NULL, NULL),
(71, 'lava', 'lava@gmail.com', NULL, '$2y$10$abIuLOyZqqD59XXdXprhEew2JI3XPFW8XI56hrN0E0Eg4PduDNBV.', 1, NULL, 100, '2022-10-17 03:11:51', '2022-10-31 15:04:55', NULL, NULL, NULL),
(72, 'يييي', 'hhhhhhh@gmail.com', NULL, '$2y$10$5MysqK125O9RYK329.oiTe493Qp8r6UuAX7cP3Lpw7jqDLoyyq6za', 0, NULL, 111, '2022-10-17 05:10:59', '2022-10-24 17:14:52', '2022-10-24 17:14:52', 15, NULL),
(73, 'xcc', 'xcc@gmail.com', NULL, '$2y$10$brQDj1iKJIaJbSnwWs4j/u1a1xX2AjPFcf4/X.hYoSgwRpejAOjti', 0, NULL, NULL, '2022-10-17 19:01:10', '2022-10-24 17:15:24', '2022-10-24 17:15:24', NULL, NULL),
(74, 'ibrahim mohaed amin', 'ibrahimamin@gmail.com', NULL, '$2y$10$tbao8BD7e5Ny3w3BcIpzU.rdJG1Qr4zMOS7x5hhYGVXUNCbTsKbLe', 0, NULL, NULL, '2022-10-17 19:14:43', '2022-10-24 17:18:16', '2022-10-24 17:18:16', NULL, NULL),
(75, 'ibrahim amin mmmm', 'bmw@gmail.com', NULL, '$2y$10$OZarIdlugRzjTxRNAXhSu.psgMvZ/GK/N3D7mSiBKuJF.NXXIB3S2', 0, NULL, NULL, '2022-10-17 19:31:31', '2022-10-24 17:18:16', '2022-10-24 17:18:16', NULL, NULL),
(76, 'mohamed', 'mmm@gmail.com', NULL, '$2y$10$UsQZC69Rwdiudmg8//Q9FOS3AApwD7h30hHuGYjKmoWNyLqni.A8O', 0, NULL, NULL, '2022-10-17 19:37:11', '2022-10-24 17:17:02', '2022-10-24 17:17:02', NULL, NULL),
(77, 'new name', 'new@new.com', NULL, '$2y$10$cZzdhyfEiDPNhM9aFc/p0OdKuYsUh.mHv62zAhmX//.heLMdyjQ.i', 0, NULL, NULL, '2022-10-17 19:38:58', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(78, 'mohamed', 'm1@gmail.com', NULL, '$2y$10$2I3nm7Z7twOM4J23CzEzUO7KNWao30AumDKkzOT5uCcjfs88mk7h6', 0, NULL, NULL, '2022-10-17 19:41:43', '2022-10-24 17:17:04', '2022-10-24 17:17:04', NULL, NULL),
(79, 'معدينى بالواسطه', 'netherdragon114@gmail.com', NULL, '$2y$10$FPTlBUSvELX6zry36uWxTuYbeAoX4r7tR87XnMeDSclzaimVD8Avy', 0, NULL, 10000, '2022-10-17 23:37:49', '2022-10-24 17:14:55', '2022-10-24 17:14:55', 13, NULL),
(80, 'KingerM', 'mayerkinger@gmail.com', NULL, '$2y$10$Q.YRzrP0apBUBlb8hcjoye0KWLoAOa5r5eCw6VH1lQhvWtkP5FLsO', 0, NULL, 10001, '2022-10-17 23:42:38', '2022-10-31 02:54:26', '2022-10-31 02:54:26', NULL, NULL),
(81, 'Esraa Ghalii', 'esraa@yahoo.com', NULL, '$2y$10$ttR8zassTlJUnnO9.NDDV.9.K83qDitvOJ51UvwOT47yq1C0fwuXK', 0, NULL, NULL, '2022-10-18 18:13:50', '2022-10-24 17:18:59', '2022-10-24 17:18:59', NULL, NULL),
(82, 'hema', 'hema@gmail.com', NULL, '$2y$10$baCffSOATuVqI9oQpkc0S.Pxf0R.Er3xPtGau8XVS9WDkytOm56Sm', 0, NULL, NULL, '2022-10-20 15:23:42', '2022-10-24 17:18:45', '2022-10-24 17:18:45', NULL, NULL),
(83, 'hema1', 'hema1@gmail.com', NULL, '$2y$10$8X3ahAukl62Ep5Xc.J3heOLj/jRE2wC9XjuMc3XPheU/3m8QYdlzC', 0, NULL, NULL, '2022-10-20 15:41:34', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(84, 'ooo', 'oooo@gmail.com', NULL, '$2y$10$PMuM6R6ehI5nm2.QW/kw9.5fst7e7ioz8ufj/9WCV9dLcmJPakUIq', 0, NULL, NULL, '2022-10-20 21:10:00', '2022-10-24 17:16:31', '2022-10-24 17:16:31', NULL, NULL),
(85, 'ooo', 'ooo@gmail.com', NULL, '$2y$10$QMltjw0E8GXinw3TIl38WuAKx2oKGqovIvtJzkusLI2TmHq5uhNTm', 0, NULL, NULL, '2022-10-20 21:37:43', '2022-10-24 17:16:32', '2022-10-24 17:16:32', NULL, NULL),
(86, 'mnm', 'mnm@gmail.com', NULL, '$2y$10$NVSVCfIYaeA465kzFQvgFuv8wfMhrf06oatHV5zmcvmGPOz3Urgm6', 0, NULL, NULL, '2022-10-20 21:51:28', '2022-10-24 17:17:09', '2022-10-24 17:17:09', NULL, NULL),
(87, 'mkl', 'mkl@gmail.com', NULL, '$2y$10$F3hWBB98Rm5wMhoAn0Jm3.syEBFugaXNlTC/0Bgd3iHg2mL/IZz/O', 0, NULL, NULL, '2022-10-20 21:53:15', '2022-10-24 17:17:17', '2022-10-24 17:17:17', NULL, NULL),
(88, 'you', 'you@gmail.com', NULL, '$2y$10$BK55xic226db.Te8vyv6XeYP.x0HC5qyWLEED6m9zsstdDGPc5cKm', 0, NULL, NULL, '2022-10-20 22:05:35', '2022-10-24 17:15:23', '2022-10-24 17:15:23', NULL, NULL),
(89, 'meee', 'meee@gmail.com', NULL, '$2y$10$oPCaZup5j00GQSwNuKe2auZyjJfvpj7yuoansKVEuKDHK2OuU5vvW', 0, NULL, NULL, '2022-10-20 22:28:33', '2022-10-24 17:17:25', '2022-10-24 17:17:25', NULL, NULL),
(90, 'ttt', 'ttt@gmail.com', NULL, '$2y$10$lYSYXELuAG/Us5AhN47rw.1fF6BafxC3jwYAW/fgp4xT12hI8lqEi', 0, NULL, NULL, '2022-10-20 22:29:41', '2022-10-24 17:16:11', '2022-10-24 17:16:11', NULL, NULL),
(91, 'tyt', 'tyt@gmail.com', NULL, '$2y$10$SA62W6lGkbcyevhgvS6Qheo5c37.xpPeOgmQ/roD.CjO4E0KxSYGa', 0, NULL, NULL, '2022-10-20 22:31:08', '2022-10-24 17:16:09', '2022-10-24 17:16:09', NULL, NULL),
(92, 'Emad', 'emad11@gmail.com', NULL, '$2y$10$vqWfbq3S0dGriKeZKvzoa.j34CNitaTQdi3xTcVPgT4ejAo5mEmbu', 0, NULL, NULL, '2022-10-20 23:23:32', '2022-10-24 17:19:02', '2022-10-24 17:19:02', 12, NULL),
(93, 'vb', 'vb@gmail.com', NULL, '$2y$10$DWJfVEC7cTprEuAay7N/C.UpHgMCd2kpEYQX0UGUwECPrhcYB2pHC', 0, NULL, NULL, '2022-10-21 00:20:10', '2022-10-24 17:15:55', '2022-10-24 17:15:55', NULL, NULL),
(94, 'trr', 'trr@gmail.com', NULL, '$2y$10$V7aCfmpBQwB7K6CALn8bN.1A176/Xm6ussaPG6WDjdHyA0YTU2h4K', 0, NULL, NULL, '2022-10-21 00:42:58', '2022-10-24 17:16:14', '2022-10-24 17:16:14', NULL, NULL),
(95, 'yu', 'yu@gmail.com', NULL, '$2y$10$9Ikph4vvjqj83Myi0SDKZeRq9ihVcVDOu2q8OavECESMAeOi6uIfm', 0, NULL, NULL, '2022-10-21 00:50:20', '2022-10-24 17:15:20', '2022-10-24 17:15:20', NULL, NULL),
(96, 'oi', 'oi@gmail.com', NULL, '$2y$10$JRE5vPQppzo5TjbMG.evgedM6up7HhnaY8dKjqMsGhpfscdthy8We', 0, NULL, NULL, '2022-10-21 01:00:15', '2022-10-24 17:16:34', '2022-10-24 17:16:34', NULL, NULL),
(97, 'po', 'poo@gmail.com', NULL, '$2y$10$QvN4g2jRqAFwOb95Owc21.Yz5t3HlWtueWFnBKtztDhDfm.tQmuO.', 0, NULL, NULL, '2022-10-21 01:07:12', '2022-10-24 17:16:58', '2022-10-24 17:16:58', NULL, NULL),
(98, 'ppp', 'ppp@gmail.com', NULL, '$2y$10$08/vM.3X7kbrDs2qTzlOEOkxzHiB/7A1zZp.E7c5PkjSeZ2zrY3L.', 0, NULL, NULL, '2022-10-21 01:14:28', '2022-10-24 17:16:21', '2022-10-24 17:16:21', NULL, NULL),
(99, 'username@gmail.com', 'username@gmail.com', NULL, '$2y$10$7Pm.vgrj3b2uEyUu8Z0Qo.pUarrkVpYhAiDcF1PXPOEypTfWZyPuO', 0, NULL, NULL, '2022-10-22 06:40:45', '2022-10-24 17:15:57', '2022-10-24 17:15:57', NULL, NULL),
(100, 'Testing', 'eslamisc@gmail.com', NULL, '$2y$10$M/rUcn20QbZ6zExWNMTYQek4bG/hZ.kowf0PupRIyBu8YO7nG6nHG', 0, NULL, NULL, '2022-10-23 15:05:02', '2022-10-23 15:46:53', '2022-10-23 15:46:53', NULL, NULL),
(101, 'Test2\"Islam\"', 'nydirah022@usefulab.com', NULL, '$2y$10$WsOcpoE2xtRfo/yxY.JsHuL796BekNA6u2bAs2DAINoB8SkGH6eCi', 0, NULL, NULL, '2022-10-23 15:25:39', '2022-10-24 17:16:14', '2022-10-24 17:16:14', NULL, NULL),
(102, 'Test 1\"Islam\"', 'sarrinahc52@usefulab.com', NULL, '$2y$10$6Ahf12LBAtRBn9azm2wWSOvr08Vln1Ud/KlYa7NzbonpFIEN2HyhS', 0, NULL, NULL, '2022-10-23 17:23:07', '2022-10-24 17:16:17', '2022-10-24 17:16:17', NULL, NULL),
(103, 'zzs', 'zzs@gmail.com', NULL, '$2y$10$hChdDQpQyL/reGiKvQMxgOMur7h4XmjRB6hOBExS23.9CEzCarxFC', 0, NULL, NULL, '2022-10-23 19:26:48', '2022-10-24 17:15:07', '2022-10-24 17:15:07', 12, NULL),
(104, 'zxx', 'zxx@gmail.com', NULL, '$2y$10$qrA.npIPA01fQ0f5mY8zD.XBpXdjRO250Whr57y3S/kt.DaDHoTFW', 0, NULL, NULL, '2022-10-23 19:35:39', '2022-10-24 17:15:12', '2022-10-24 17:15:12', NULL, NULL),
(105, 'zcc', 'zcc@gmail.com', NULL, '$2y$10$PD7WBKOF9sa0XW4aHFg/Y.5MLASRm.9wJd40cyy1UTryOJCUinCP2', 0, NULL, NULL, '2022-10-23 19:41:10', '2022-10-24 17:15:23', '2022-10-24 17:15:23', NULL, NULL),
(106, 'mnm', 'mma@gmail.com', NULL, '$2y$10$qeU4d45VulbmHqyBHhMGZ.ZUOr8ciseEinTkM/4wcqetFwgQaPlFi', 0, NULL, NULL, '2022-10-23 20:10:32', '2022-10-24 17:17:09', '2022-10-24 17:17:09', NULL, NULL),
(107, 'bxx', 'bxx@gmail.com', NULL, '$2y$10$AQx/QR7RqOA9q7AXdDYqXO7KxKOnJfK6bsrFFeZjT3FUK/V.oJcWO', 0, NULL, NULL, '2022-10-23 20:20:34', '2022-10-24 17:19:04', '2022-10-24 17:19:04', NULL, NULL),
(108, 'zzz', 'zzzz@gmail.com', NULL, '$2y$10$jnHdF1MUR7tuCB5F6RAK4OZB8q.fWcqiAs0xs0HHFNASTkIMygXGK', 0, NULL, NULL, '2022-10-23 20:24:54', '2022-10-24 17:15:04', '2022-10-24 17:15:04', 12, NULL),
(109, 'mkk', 'mkk@gmail.com', NULL, '$2y$10$oal.zSRH0ZAqtdofYBUazuT/g4c8ay0Seajjzid.wDEeK0aChGAgW', 0, NULL, NULL, '2022-10-23 21:00:37', '2022-10-24 17:17:20', '2022-10-24 17:17:20', NULL, NULL),
(110, 'zzz', 'zzz@gmail.com', NULL, '$2y$10$7EiHMDUQyBd436Dcq2SifeM6pwI4JseE2AsPR1My6NKw1BjVHrLaq', 0, NULL, NULL, '2022-10-23 21:16:03', '2022-10-24 17:15:50', '2022-10-24 17:15:50', 13, NULL),
(111, 'zzzw', 'zzzw@gmail.com', NULL, '$2y$10$RIsi16gWcVtu6MvQXWoWsum/Dcg.hNF2i7Msh5kypPExztzZYnIe6', 0, NULL, NULL, '2022-10-23 21:32:43', '2022-10-24 17:14:55', '2022-10-24 17:14:55', NULL, NULL),
(112, 'zzz', 'zzzzzzzzz@gmail.com', NULL, '$2y$10$b06NEZzU/Ss8khItdnNlWOztO/ClJKXIGm5sC30aIg89a3DLrkmaK', 0, NULL, NULL, '2022-10-23 21:36:08', '2022-10-24 17:15:05', '2022-10-24 17:15:05', 13, NULL),
(113, 'mmnn', 'mmnn@gmail.com', NULL, '$2y$10$B6kuXbIMQy1mMvZ7/RSPVOuCXMrkDPGWJzsfA8c6WddprG9dyOHaa', 0, NULL, NULL, '2022-10-23 21:51:40', '2022-10-24 17:17:13', '2022-10-24 17:17:13', 12, NULL),
(114, 'bbvv', 'bbvv@gmail.com', NULL, '$2y$10$r8BdQJRjTHOhkZw8T11pE.nDd267w8ZCLg9g0TrsMv5ijQgDWUG2m', 0, NULL, NULL, '2022-10-23 21:59:01', '2022-10-24 17:19:07', '2022-10-24 17:19:07', 12, NULL),
(115, 'mmkk', 'mmkk@gmail.com', NULL, '$2y$10$.IU7Aa8/n3JxHNuWnj76euYqOGpL87SoTjBaBRjPURE5u1F.TlE86', 0, NULL, NULL, '2022-10-23 23:32:59', '2022-10-24 17:17:17', '2022-10-24 17:17:17', 12, NULL),
(116, 'Ahmed', 'ahmed@gmail.com', NULL, '$2y$10$ZXb7o9APbhzYfhI6aW/zc.OYviJCs1h7xTgHLK6AqQB1h0OLVp50i', 0, NULL, NULL, '2022-10-24 04:37:13', '2022-10-24 17:19:11', '2022-10-24 17:19:11', NULL, NULL),
(117, 'update 1', 'update1@gmail.com', NULL, '$2y$10$exnNTUL0.6eocbPgYhwOruc5oWXW2boUZGujEHaLxW//aidjRnkIG', 1, NULL, 11, '2022-10-24 16:10:51', '2022-10-27 21:02:33', '2022-10-27 21:02:33', 16, NULL),
(118, 'Ibrahim', 'ibrahimamin081@gmail.com', NULL, '$2y$10$Gubd4FbEMmmtiH7jXI4fMerjTK3XUZsi6.eGdxfX2ragrOdJJxK3G', 0, NULL, NULL, '2022-10-24 16:21:05', '2022-10-24 17:18:24', '2022-10-24 17:18:24', NULL, NULL),
(119, 'islam', 'eslamisc@yahoo.com', NULL, '$2y$10$ndXJzl4cQ6qKatYnsQn.G.5UFjKD8FvXmOaQWWztCQVstY25z.QwG', 0, NULL, NULL, '2022-10-24 16:21:16', '2022-10-24 17:18:02', '2022-10-24 17:18:02', NULL, NULL),
(120, '1SL23 Dana Mohamed', 'danamohamed@gmail.com', NULL, '$2y$10$/d1FeGTVtyz/3KnfNY0rYOTbVRuwTMNs6qn5Q3Bs/FbV1ljL67tDS', 0, NULL, NULL, '2022-10-24 17:21:32', '2022-10-24 17:23:18', NULL, 12, NULL),
(121, '1SL23MiraHany', 'mirahany014@gmail.com', NULL, '$2y$10$oBpl4VHrSEdNMpC3pei5fuPZyLuUXnYsicJz3VJHxMH83mvtkx7Ba', 0, NULL, NULL, '2022-10-24 17:21:51', '2022-10-24 17:24:36', NULL, 12, NULL),
(122, 'mbbb', 'mbbb@gmail.com', NULL, '$2y$10$Wm8VAuwQV9Usv7877CA7TOzOPtOP9/NgZKwWJ09wcDiCexPuVI3b6', 1, 'BBQdzSNxoUsmJlw6JazT7onReL2ZuwEU5Q8nlWBDqHrNkLUKV6cz0nioHqff', NULL, '2022-10-24 17:26:20', '2022-10-27 21:02:33', '2022-10-27 21:02:33', 12, '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/users/122.png'),
(123, 'islam2', 'sanaic5@usefulab.com', NULL, '$2y$10$kswLUyTM.I26fkO0RMvYOuEk1CTqa4KSt5opsiD4vpohY/RF6Eb.e', 0, NULL, NULL, '2022-10-24 17:29:50', '2022-10-27 21:02:33', '2022-10-27 21:02:33', 10, NULL),
(124, '2123Rokayasherif', 'Rokayasaid980@gmail.com', NULL, '$2y$10$JBFgT4eB4JWLOjPiyidNj.0H4KgRCN9mp/kwai27PVNoIPaenDkaW', 0, NULL, NULL, '2022-10-24 17:34:08', '2022-10-27 21:02:33', '2022-10-27 21:02:33', 16, NULL),
(125, 'Admin Mario', 'Mario@admin.com', NULL, '$2y$10$exObIaHHu/q.lpIt31.qzuZghMv1y0PBGkfwmWTmR3hQ0Qj6R76.y', 0, NULL, NULL, '2022-10-24 17:55:42', '2022-10-24 17:55:42', NULL, NULL, NULL),
(126, 'islam3', 'corey3@usefulab.com', NULL, '$2y$10$5Qt5wnDnIm.Imr/Gy0TweelGePAgtyshIrcL0TRPIZ3mMlPBDC/w6', 0, NULL, NULL, '2022-10-24 18:00:36', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(127, 'islam4', 'ziva51@usefulab.com', NULL, '$2y$10$eyZjDWFFBosWGa0q3SzX/.OtKMjjcRhLe.GogySF0KIEB08AMcAxC', 0, NULL, NULL, '2022-10-24 18:12:14', '2022-10-27 21:02:33', '2022-10-27 21:02:33', 1, NULL),
(128, 'Esraa', 'ahmed@yahoo.com', NULL, '$2y$10$TpoK42mumEwSh0WWZjpN/Oa6ron80StIYEFcdcedZKApdFh4X1hpK', 0, NULL, NULL, '2022-10-24 18:12:55', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(129, 'mm', 'mm@gmail.com', NULL, '$2y$10$fnnsAhnkucO8waDg7QfS7e5E6le2zokQYL.d7jMY.uo6CyfsbBPBy', 0, NULL, NULL, '2022-10-24 18:38:35', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(130, '1L23Rawan Hosam', 'rawanhossam605@gmail.com', NULL, '$2y$10$ZeDUmy9iIts.xMFSIDgYDOT0yrfS4XcAs9GDeUeK2yE7vHoNSzCJe', 0, NULL, NULL, '2022-10-24 18:42:34', '2022-10-24 18:44:45', NULL, 15, NULL),
(131, 'Salsabil wessam', 'salsabilwessam9@gmail.com', NULL, '$2y$10$fwo6OeQBQugledjVJf32weAXeuhUlbIDcnhmHeIB0p1YSpK2KY3n.', 0, NULL, NULL, '2022-10-24 18:45:35', '2022-10-24 20:49:14', NULL, 15, NULL),
(132, '2l23 veronica samir', 'veronicasamir@gmail.com', NULL, '$2y$10$MfRO6THdwdNfL1kY0.op6u3hnkayRMIp/Irx7pZ2dS5m2zXNAmo8m', 0, NULL, NULL, '2022-10-24 18:56:31', '2022-10-24 18:56:31', NULL, NULL, NULL),
(133, 'Daniella', 'dondondodoo03@gmail.com', NULL, '$2y$10$4CDI/JgBFW27RVhJzBkkPeMJhZ.B0SOXwIWvRqCQ8qqVfnkyzNiYu', 0, NULL, NULL, '2022-10-24 19:18:03', '2022-10-24 19:21:40', NULL, 17, NULL),
(134, '$$)@/#', 'karlaf52@usefulab.com', NULL, '$2y$10$VFLoBMFHwgJts.9q9E3OIuFIEW3dhGWbXiSZehzDL0ecP9TH.9ggm', 0, NULL, NULL, '2022-10-24 19:33:02', '2022-10-31 15:02:11', '2022-10-31 15:02:11', NULL, NULL),
(135, '2345', 'ariahna81@usefulab.com', NULL, '$2y$10$.uX5mGYJxo//.aH4o8uKV.X2bQyAMhZ7dVAqJLhkV/e0BO/EZ8rXa', 0, NULL, NULL, '2022-10-24 19:42:18', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(136, '2l23 Mirolla Nabel', 'MirollaNabel@gmail.com', NULL, '$2y$10$Ckq5CJ97dbfHWZ9QiGc0xO5LiYEJOgydQjtkukRR2joAWqJJIUZTu', 0, NULL, NULL, '2022-10-24 20:19:43', '2022-10-24 20:22:36', NULL, 16, NULL),
(137, '2l23Celiena Reyad', 'selenariad30@gmail.com', NULL, '$2y$10$w/gauA8dQkXeXk.sDT/HMeBa5e1WWu2MfRKqLlm5gD0RZSdD0DUR.', 0, NULL, NULL, '2022-10-24 20:27:35', '2022-10-24 20:37:39', NULL, 10, NULL),
(138, 'isksmsl', 'sjssi@yahoo.com', NULL, '$2y$10$F5NE4LDHSPIL2CeUSFPWbeHUTSpApOxIWZC2zcsJZFAfi9uu7KFVW', 0, NULL, NULL, '2022-10-24 20:32:14', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(139, 'isksmsl', 'sjsjj@o.com', NULL, '$2y$10$dqbCjPX6jjCazTKpPybMmutrb/TJ5v1vg76y162g6cfZcegWX1ELq', 0, NULL, NULL, '2022-10-24 20:32:52', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(140, 'isksmsl', 'sjkkjj@hh.com', NULL, '$2y$10$/eRLfAyR.UK7hJLceSV2e.0bl25xG7pv1Fe86PjbpRVSvAi0IaySK', 0, NULL, NULL, '2022-10-24 20:33:35', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(141, '12@@@', 'hfhfhf@yy.com', NULL, '$2y$10$bkVythvniwJtrzlq89q/4OZA.yOdWAV15lPD.AAzXfw9igLn0GRN6', 0, NULL, NULL, '2022-10-24 20:38:12', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(142, 'joudy', 'joudymohamed639@gmail.com', NULL, '$2y$10$zYMwwv9Eb9pY3.lnnYvK9OSB0Zkd5oHuSE8sVgdBrF/I9rcO7e.42', 0, NULL, NULL, '2022-10-24 20:56:23', '2022-10-24 20:59:00', NULL, 15, NULL),
(143, '1L23 Mariam Abdelhameed', 'eldar.engineering@gmail.com', NULL, '$2y$10$68rCfgUzIkzXqvt2GH3XVOsngCeOxKCrA6XO.3T6Ra6A845z2LRfm', 0, NULL, NULL, '2022-10-24 21:06:26', '2022-10-24 21:20:31', NULL, 15, NULL),
(144, 'MMM', 'M.M@gmail.com', NULL, '$2y$10$LmoiVjiOlHlJ4ogVb/jW.ub3l7E4QtE5q1UiEoJ/PpkzWJKMjlH.e', 0, NULL, NULL, '2022-10-24 21:18:51', '2022-10-27 21:02:33', '2022-10-27 21:02:33', 12, NULL),
(145, 'ABC', 'ABC@gmail.com', NULL, '$2y$10$CgHI7yyf.SeFqsUVkYN9jeE5t9n57SK3jbyEt2XccmOky7SpYL3t.', 0, NULL, NULL, '2022-10-24 22:03:27', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(146, 'Jana Ahmed', 'mohga.farouk@gmail.com', NULL, '$2y$10$uMAa3foWw/NcGiIvad09uugEZ/JNFjScz5im9gBm0peYJFqdDH6b2', 0, NULL, NULL, '2022-10-24 23:24:24', '2022-10-24 23:26:19', NULL, 17, NULL),
(147, '2L23janaabbas', 'janaabbas2L23@gmail.com', NULL, '$2y$10$6ZmYyZpmCb9aU5FnQRNcz.lU9b.rFrj.kvHRPSNRp9YX1gHgDv7Mi', 0, NULL, NULL, '2022-10-24 23:39:55', '2022-10-24 23:45:18', NULL, 10, NULL),
(148, '2L23Mariam Moharram', 'mememoharram.10@gmail.com', NULL, '$2y$10$wbPB3L/kWM5d8rdI4kkkauVfCuLH1vjglBu89ebaIr71mz9/NSshC', 0, NULL, NULL, '2022-10-25 00:02:36', '2022-10-25 00:07:27', NULL, 16, NULL),
(149, 'hema', 'hema33@gmail.com', NULL, '$2y$10$Mmn9QYpikz9BwMULxEUF1u54m135c9WXRff9yEKf4Z0dOObWvEQAG', 0, NULL, NULL, '2022-10-25 00:32:51', '2022-10-27 21:02:33', '2022-10-27 21:02:33', 12, NULL),
(150, '2l23JoyceNabil', 'JoyceNabil@gmail.com', NULL, '$2y$10$whgvjTbZFHE5ol/hUWbh7ObaqW2u.w1MyRQt9yP7ZAPeZsvl3ZE3u', 0, NULL, NULL, '2022-10-25 00:40:43', '2022-10-25 00:47:10', NULL, 16, NULL),
(151, 'maria tharwat', 'mariasarwat310@gmail.com', NULL, '$2y$10$yCbNV1GI1wWSVuN0pjZEmOUFyykS.FrJi47tmUu7VK.W8AtnOVb.6', 0, NULL, NULL, '2022-10-25 00:47:07', '2022-10-25 00:49:07', NULL, 1, NULL),
(152, '1L23marvy maher', 'marvymaher70@gmail.com', NULL, '$2y$10$lg6C52ZDvLqbj4JBsj58Lu9aZX3ubXBs9x2K4/6LrfivlGZWpEJky', 0, NULL, NULL, '2022-10-25 01:20:54', '2022-10-25 01:29:19', NULL, 10, NULL),
(153, 'Mohamed sh', 'mohsh@gmail.com', NULL, '$2y$10$nQ8RWUGDCPhD7/smIb1HROHNVBIOo1SYf9g.ym55GSoJslxcUuLB2', 0, NULL, NULL, '2022-10-25 01:43:57', '2022-10-25 01:44:37', NULL, 12, NULL),
(154, 'Mohamedemad', 'memad30000@gmail.com', NULL, '$2y$10$m.fLFB.mTINcrdNUqJZliuEdTg3tJT33eHwEuroAnKwxoI6o2TA4.', 0, NULL, NULL, '2022-10-25 01:59:57', '2022-10-27 19:31:04', '2022-10-27 19:31:04', 12, NULL),
(155, '2l23 mariam emad', 'mariememad932009@gmail.com', NULL, '$2y$10$F4Vu4hnLOTVRJEM5xCqgBejgkkKFnCvzF7/cLGUEmAAMqWdB/oGTS', 0, NULL, NULL, '2022-10-25 04:08:30', '2022-10-25 06:21:21', NULL, 16, NULL),
(156, 'Mariam Abdelhameed Hassin', '1L23MariamAbdelhameed@gmail.com', NULL, '$2y$10$BvJseSUjK4UGDHXKCJ0k.uR3srNDkOtqmBS0xAfTZjkvfz64nbzRe', 0, NULL, NULL, '2022-10-25 04:24:07', '2022-10-31 20:59:46', NULL, 49, NULL),
(157, 'abcd', 'abcd@yahoo.com', NULL, '$2y$10$O1w1KjjDt2CADv6fw2ztWuE4D3G1Kjpl2F.4QE2SVAArMtLczYukC', 0, NULL, NULL, '2022-10-25 14:22:34', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(158, 'abcd', '#223$@yahoo.com', NULL, '$2y$10$yixHcwDU9YbHhgdWhUjzQ.d8rVFgnlaAPvGDOrcu3sZ8Gr.DPcyZ2', 0, NULL, NULL, '2022-10-25 14:53:36', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(159, 'Mohamed', 'test@admin.com', NULL, '$2y$10$COWnrNsqi7/MtySY8mFilufDzi3NlP6qludqfrEzBqc1GCZk2HNzy', 0, NULL, NULL, '2022-10-25 15:00:00', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(160, 'abcd', 'ssd@yahoo.com', NULL, '$2y$10$yXxDYR2PaoZzh1YMXnWoEurEuUNOGyYHl4eZ9HCsnEgEJSqMEFYRC', 0, NULL, NULL, '2022-10-25 15:03:50', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(161, 'abcd', '1133@yahoo.com', NULL, '$2y$10$I0REJUMFuKNs1qKqX2aCjOOS0GaBvE7fZjzRPGfilJSviV5THfvq6', 0, NULL, NULL, '2022-10-25 15:04:11', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(162, 'abcd', '113@yahoo.com', NULL, '$2y$10$Ko9xxnDaA4AuYptcFIfrNO3IUPB1WZ1mU6Q1RHr/es3tZ7jFnZ5s.', 0, NULL, NULL, '2022-10-25 15:29:40', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(163, 'eslam', 'eslam@gmail.com', NULL, '$2y$10$4cvTe.zhRFOhSu0.V8qbzOHjwoZafHRKAb6rM.uFB6rhb5Hsr3ZA.', 0, NULL, NULL, '2022-10-25 16:12:58', '2022-10-27 19:31:04', '2022-10-27 19:31:04', 12, NULL),
(164, 'user test11', 'usertest11@gmail.com', NULL, '$2y$10$jc8FwQL4gjDV/y4tWAfGG.84.MUJynJeOJlFq31vRIZ6XySby9J5K', 0, NULL, NULL, '2022-10-25 17:09:08', '2022-10-27 19:31:04', '2022-10-27 19:31:04', 12, NULL),
(165, 'ali', '123@yah.com', NULL, '$2y$10$T81p1448wWClcegloYigwuaDBsuyBlj7u71/HLcTl/417F9rKdSZO', 0, NULL, NULL, '2022-10-25 17:09:23', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(166, 'ABCDE', 'ABCDE@ABCDE.com', NULL, '$2y$10$QU2ovXx5P.8CTZ4gHtcck.9fS3il7hZUTqhHuiwf0vbC.g2idq6nu', 0, NULL, NULL, '2022-10-25 18:34:32', '2022-10-27 21:02:33', '2022-10-27 21:02:33', 13, NULL),
(167, 'mohamed abdo', 'mohamedab@gmail.com', NULL, '$2y$10$JmHknrgN9cVysN2DZqnz4u4uEck98m9A1iuqRjZIkWJZXMBK55S2S', 0, NULL, NULL, '2022-10-25 18:36:20', '2022-10-27 19:31:04', '2022-10-27 19:31:04', 12, NULL),
(168, 'islam', 'islam@yahoo.com', NULL, '$2y$10$lRk7PJdDG5lokBq1NsGE5ODQexGU3/j48umnid4pzlRLITIuTr3Ae', 0, NULL, NULL, '2022-10-25 19:19:05', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(169, 'islam3', 'islam1@yahoo.com', NULL, '$2y$10$dsq0Cuv83bKkRsoAChSkZOusb7zZzZVohtRVAVotik4Z8wkPvg4ji', 0, NULL, 500, '2022-10-25 21:01:19', '2022-10-27 19:31:04', '2022-10-27 19:31:04', 12, NULL),
(170, 'test11', 'test11@gmail.com', NULL, '$2y$10$ms5ZybHmjtIFChkhWNK8TOpBcuBUF7dWzRXbnY2vAF9hfaASYUVa6', 1, NULL, 200, '2022-10-25 21:35:31', '2022-10-27 19:31:04', '2022-10-27 19:31:04', 12, NULL),
(171, 'eslamt', 'eslamt@eslamt.com', NULL, '$2y$10$R0aPHmjzNnAXPacnlmyA.eZQ/a3u9yeP4S8iwpr1s1jJH/TnYKd8m', 0, NULL, 500, '2022-10-25 21:39:37', '2022-10-27 19:31:04', '2022-10-27 19:31:04', 12, NULL),
(172, 'mohamed em', 'mohamedaid@gmail.com', NULL, '$2y$10$vvtji/EqANTLOy7itaE0yeVbC8jJ8OTVEw3l2e/VVSWfij/EYEw/y', 0, NULL, NULL, '2022-10-25 22:50:08', '2022-10-27 19:31:04', '2022-10-27 19:31:04', 12, NULL),
(173, 'oppo', 'oppo@gmail.com', NULL, '$2y$10$zvlEO9Baps9zjHlPunB0Se92hiJmvNGYpzgzaG7jIdEfQU7rs.sj2', 0, NULL, NULL, '2022-10-25 23:12:59', '2022-10-27 21:02:33', '2022-10-27 21:02:33', 16, NULL),
(174, 'esraa', 'esraa11@gmail.com', NULL, '$2y$10$J.Oye2o/ZZQXOOj73ZsNEuyW1/a80aLkUxN5/Jeqo2Xegn7ko2h2u', 0, NULL, NULL, '2022-10-25 23:21:37', '2022-10-27 19:31:04', '2022-10-27 19:31:04', 12, NULL),
(175, 'omar@yahoo.com', 'omar@yahoo.com', NULL, '$2y$10$Lpj8EBxwR6YCuqJvkii0YuLXM0LIlCvYVeS.g7pCdpSLi0BaiOeOG', 0, NULL, NULL, '2022-10-26 00:56:55', '2022-10-27 21:02:33', '2022-10-27 21:02:33', 15, NULL),
(176, 'kenzy', 'Kenzy9049@gmail.com', NULL, '$2y$10$2sLUDV6Me72zJk7s3IXTHe/Rv3wi76MzZHJHidoobcTgpXwyb0iF6', 0, NULL, NULL, '2022-10-26 01:41:32', '2022-10-26 01:44:11', NULL, 10, NULL),
(177, '2L23Bishoy', 'BishoyAyman@gmail.com', NULL, '$2y$10$GlOMSBeY.JXjsemM5ku1GOBuxhCsPzNJwswjEWv797s0JMNz5KK7O', 0, NULL, NULL, '2022-10-26 03:02:52', '2022-10-26 03:04:55', NULL, 16, NULL),
(178, '1L23pierreayman', 'pierreayman@gmail.com', NULL, '$2y$10$JeWy.poRj/489ds03nb7DeBymNagC7WgKEHuKHcH.hY.CPKqHMFq6', 0, NULL, NULL, '2022-10-26 03:26:11', '2022-10-26 03:29:42', NULL, 10, NULL),
(179, 'shiref', 'shiref@gmail.com', NULL, '$2y$10$iqjt6/2tzqsZshlKXVGlbO17gqUaCHW2ECtcpgG0ar/r9FAucdoDK', 0, NULL, NULL, '2022-10-26 04:13:22', '2022-10-27 19:31:04', '2022-10-27 19:31:04', 12, NULL),
(180, 'mmnn', 'mm1nn@gmail.com', NULL, '$2y$10$tzFGGzWncl2Vdll83pXox.tRckg.mvEXaXZ/Eh2KJVH.HZQ3bbFCO', 0, NULL, NULL, '2022-10-26 15:37:54', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(181, 'IslamMohsenTEST2', 'IslamMohsenTEST2@TEST.com', NULL, '$2y$10$ICuPn11AyT9kbMro2VjsgOKLrv/whAbkOXslv5hBo4ZRD2BjoL9rW', 1, NULL, 0, '2022-10-26 15:40:05', '2022-10-27 19:31:04', '2022-10-27 19:31:04', 12, NULL),
(182, 'IslamMM', 'IslamMohsenTEST3@TEST.com', NULL, '$2y$10$NJbV7DFAjS4dm.jhLSGkMOB.O8d5fFbMi/gIGwcwYn/F7Az5jZ07C', 1, NULL, 20, '2022-10-26 15:42:25', '2022-10-27 19:31:04', '2022-10-27 19:31:04', 12, NULL),
(183, 'stark', 'stark@gmail.com', NULL, '$2y$10$vsLvKTo7K7FGn.UWm1hGfuNCRocjTeBc6dVjx9inqIK3skt1MWTFi', 0, NULL, NULL, '2022-10-26 15:57:02', '2022-10-27 19:31:04', '2022-10-27 19:31:04', 12, NULL),
(184, 'jhon', 'jhon@gmail.com', NULL, '$2y$10$4rwnDhaZ2JKabF2h9BYwm.keuPTFOv15zE.B1XR.Ww3Enven3Boni', 0, NULL, NULL, '2022-10-26 16:26:30', '2022-10-27 19:31:04', '2022-10-27 19:31:04', 12, NULL),
(185, 'vfgvv', 'vbnvv@gmail.com', NULL, '$2y$10$y7oM7L7bQsbIu35sNilWl.HKoeSRyTgSg0m69Xz70J0JtY7s/SZzS', 0, NULL, NULL, '2022-10-26 16:53:46', '2022-10-27 19:31:04', '2022-10-27 19:31:04', 12, NULL),
(186, 'IslamMohsenTEST4', 'IslamMohsenTEST4@TEST.com', NULL, '$2y$10$KoFXj1JZBTaIbhaGbvEtB.TwJ83Pujx1gIYKpCEVdxHCmoftZq12a', 1, NULL, 0, '2022-10-26 17:28:07', '2022-10-27 19:31:04', '2022-10-27 19:31:04', 12, NULL),
(187, 'IslamMohsenTEST5', 'IslamMohsenTEST5@TEST.com', NULL, '$2y$10$bWvYwuysef1eYakcCiX0veeEaLBSMX/SJjBw2uaMS74tJen7Ri.T2', 0, NULL, 20, '2022-10-26 17:59:51', '2022-10-26 18:14:41', '2022-10-26 18:14:41', 12, NULL),
(188, 'IslamMohsenTEST6', 'IslamMohsenTEST6@TEST.com', NULL, '$2y$10$wHwsZQZlb6CGzL1g5dGSt.VcIJ5DCVFkZd6TIfs13t3tH/OyL9hTO', 1, NULL, 5, '2022-10-26 18:06:24', '2022-10-27 19:31:04', '2022-10-27 19:31:04', 12, NULL),
(189, 'islammohsentest7', 'islammohsentest7@test.com', NULL, '$2y$10$a2TrRHLaI5HbbORpgtiLhuHY3mW4PcgiaxRgvqEXqP5Yb0LwMjBgK', 0, NULL, 10005, '2022-10-26 18:23:21', '2022-10-27 19:31:04', '2022-10-27 19:31:04', 12, NULL),
(190, 'IslamMohsenTEST8', 'IslamMohsenTEST8@TEST.com', NULL, '$2y$10$4L8FZq3CrWuKb0ukhORAju.10zePM0nAt7b7sIcF7smIuO3j9bypC', 1, NULL, 0, '2022-10-26 18:34:45', '2022-10-27 19:31:04', '2022-10-27 19:31:04', 12, NULL),
(191, 'islammohsentest9', 'islammohsentest9@test.com', NULL, '$2y$10$LiMpates0vIZq4RzZ9k7h.MV8AY5cmX1Dijo4eAOZJnFs0IvNpSQO', 0, NULL, 10006, '2022-10-26 18:54:00', '2022-10-27 19:31:04', '2022-10-27 19:31:04', 12, NULL),
(192, 'islammohsentest10', 'islammohsentest10@test.com', NULL, '$2y$10$5T/f2JczkrJc7qOoaisYFuzeFnZR3smL/p8nw3/lCORbvJFujt3C2', 0, NULL, 10010, '2022-10-26 18:59:37', '2022-10-27 19:31:04', '2022-10-27 19:31:04', 12, NULL),
(193, 'islammmm', 'eslamisc@gail.com', NULL, '$2y$10$dDFM9288d917NQ5r7ZpQheVnHr/GRY6nfPJlaldYTundkHi1njaZK', 0, NULL, NULL, '2022-10-26 19:17:18', '2022-10-26 19:17:51', '2022-10-26 19:17:51', NULL, NULL),
(194, 'islamtestmassage', 'trenity3@jforgotum.com', NULL, '$2y$10$N7pItYk1mqsDbBN5UoUwGeqL6E5HsgobpRkPGr2i.krhSWDISuEje', 0, NULL, NULL, '2022-10-26 19:35:31', '2022-10-27 19:31:04', '2022-10-27 19:31:04', 12, NULL),
(195, 'islammohsentest11', 'islammohsentest11@test.com', NULL, '$2y$10$RxuA8iLThRR9o8RuK..cUOjUX3fuR9J47nh0vMrE1vZ9xNUC5nX8y', 0, NULL, NULL, '2022-10-26 19:44:56', '2022-10-27 19:31:04', '2022-10-27 19:31:04', 12, NULL),
(196, 'augon', 'au@gmail.com', NULL, '$2y$10$IvD3Q1/X9DerE4NCAh4sG.0mFzX.4kYSA5aA4f3q.vSJ4YW3ivrGi', 0, NULL, NULL, '2022-10-26 19:54:06', '2022-10-27 19:31:04', '2022-10-27 19:31:04', 12, NULL),
(197, 'hema', 'hhema@gmail.com', NULL, '$2y$10$geF4TVsmseI4fa.GjZJLmeX0doh2gUX/ZAwvlQrQULyM3YJI/69wi', 0, NULL, NULL, '2022-10-26 20:34:14', '2022-10-27 19:31:04', '2022-10-27 19:31:04', 12, NULL),
(198, 'islammohsentest13', 'islammohsentest13@test.com', NULL, '$2y$10$CQH1xkTIzYBEtMFFCM.7fOS0HgDSEiRqZfoLOinP.V7aJC2eOSwlC', 0, NULL, NULL, '2022-10-26 20:44:14', '2022-10-27 19:31:04', '2022-10-27 19:31:04', 12, NULL),
(199, 'Emadtest', 'Emadtest@gmail.com', NULL, '$2y$10$iVBX2e9wKRtpemb6eBO1i.ILPoF5kwz5Nt15u2mGZx29dbLKBxzyy', 0, NULL, 8, '2022-10-26 20:44:32', '2022-10-27 19:31:04', '2022-10-27 19:31:04', 12, '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/users/199-a46.jpg'),
(200, 'islammohsentest14', 'islammohsentest14@test.com', NULL, '$2y$10$ZDZzVsc6Y6zmPEtcMkJeaOlZVd.NGvLKF2BFev4sgVm5oesejFOoG', 0, NULL, 10011, '2022-10-26 20:55:46', '2022-10-27 19:31:04', '2022-10-27 19:31:04', 12, NULL),
(201, 'nery', 'nery@gmail.com', NULL, '$2y$10$qCgmbplZCzeEVRjyJykTsOvsIygRUkkxiQpH2z0/NNaro4T8mWAZW', 0, NULL, NULL, '2022-10-26 21:59:22', '2022-10-27 19:31:04', '2022-10-27 19:31:04', 12, '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/users/201-TTt.jpg'),
(202, 'islammohsentest15', 'islammohsentest15@test.com', NULL, '$2y$10$wqVT6mXx620rAy0juhxEGeC5yOCzqJ0gis2Phm7mkSKyf3VTpNYJC', 0, NULL, NULL, '2022-10-26 23:56:10', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(203, 'nermeen', 'nermeen@gmail.com', NULL, '$2y$10$ea7z01OJmCGWMWO6USqyO.LsNt9vnJZ1XDAdD3IiIZj4pWcxHT8Lu', 0, NULL, NULL, '2022-10-27 00:05:42', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(204, 'nn', 'nn23@gmail.com', NULL, '$2y$10$FwxrrUTAbgG/3QBnro8FCO4hBvNqG08gDLk5urXDeCQRqUX4I6YHC', 0, NULL, NULL, '2022-10-27 00:09:05', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(205, 'nerm', 'nerr@gmail.com', NULL, '$2y$10$A7t5dt0q97LPrB5AlJ1WtuooXCzRPcGK6xP.G/4F5Q4pwbGN6SPNi', 0, NULL, NULL, '2022-10-27 00:10:08', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(206, '1L23Aisha', 'aishaahmed.12244@gmail.com', NULL, '$2y$10$9lQAr9Lv0dSHJqJqibUQZuFbCUS.aUYzKj1CKSndk8mZJPpGQxh16', 0, NULL, NULL, '2022-10-27 01:48:16', '2022-10-27 01:53:24', NULL, 15, NULL),
(207, '6l23 jasmin yasser', 'jasminyasser@gmail.com', NULL, '$2y$10$BjjStIl4sX4jdjliyzSqxud3eKtL9MI4bQZAgi5FCgkqrEBoUkEP6', 0, NULL, NULL, '2022-10-27 04:00:35', '2022-10-27 04:19:15', NULL, 7, NULL),
(208, 'Emadtest2', 'Emadtest2@gmail.com', NULL, '$2y$10$VYpAEeTqudq9EQ35rRHUIOucJYUCDvgTQ5dlue63XpMMXUeGxCacS', 1, NULL, NULL, '2022-10-27 15:49:28', '2022-10-27 19:31:04', '2022-10-27 19:31:04', 12, NULL),
(209, 'yasso', 'yasso@gmail.com', NULL, '$2y$10$RIleMFfh.vB8ljVkxWAQMeMeq4XrFQwsakn8EntI0gSfvpPGOau7K', 0, NULL, NULL, '2022-10-27 15:56:59', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(210, 'Emadtest3', 'Emadtest3@gmail.com', NULL, '$2y$10$uskwh0h6KB4oItYNfRVrfOFwUWhwm0KZn8Wlso.qOjMph.yXlcFPO', 0, NULL, NULL, '2022-10-27 16:01:11', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(211, 'islamtest20', 'islamtest20@test.com', NULL, '$2y$10$i7hCnDOm49.aWoLvPP8BRefDBFg5On/tQMC5FfRJwd.UNIot3Xgui', 0, NULL, NULL, '2022-10-27 16:12:00', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(212, 'islamtest21', 'islamtest21@test.com', NULL, '$2y$10$hFhf5rhCbdlJWfxkgfOu4uZPvpaDXgvbf8PCFE2yk.A0lkvszGxx6', 0, NULL, NULL, '2022-10-27 16:13:29', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(213, 'Emadtest4', 'Emadtest4@gmail.com', NULL, '$2y$10$EPudsuBBXZaPrAed851fAOp.xbqzKrWMedbJACWmutJQuRRNi3Zxe', 0, NULL, NULL, '2022-10-27 16:14:32', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(214, 'bbg', 'bbg@gmail.com', NULL, '$2y$10$sqYC9lHW7XjRRtjZh0RD7.Y1186aqnQL6FoR7/ci52S3SLFc5aDEK', 0, NULL, NULL, '2022-10-27 16:16:02', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(215, 'islamtest22', 'islamtest22@test.com', NULL, '$2y$10$dD1qQpSvEl9sar4f5Wvda.P1NFJSThrZmuVF/kxHPUyoklLMBzqGq', 0, NULL, NULL, '2022-10-27 16:16:43', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(216, 'islamTest23', 'islamTest23@gmail.com', NULL, '$2y$10$w2YRWUYsI2JpjfX4XXuzaOweH2iTeErQ.W1bMalcJJ4r69PrD4ApG', 0, NULL, NULL, '2022-10-27 16:18:10', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(217, 'wert', 'wert@gmail.com', NULL, '$2y$10$uCtqEYiTVlSasVkcXO2gleqx0KtbCx8kF9K/zft84PmU28okGx76W', 0, NULL, NULL, '2022-10-27 16:22:09', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(218, 'Islamtest24', 'Islamtest24@test.com', NULL, '$2y$10$aSwVg6zfyWT5WjhCTrgo0uR3Zdfn1FrhMCrPFLthaUm0bsM3lda66', 0, NULL, NULL, '2022-10-27 16:24:16', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(219, 'amina', 'amina@gmail.com', NULL, '$2y$10$iO9As2pauZ.luXpU6YxSweUs0rmn5fMZfXFGYTPvBpFEH8I7ffuvC', 0, NULL, NULL, '2022-10-27 16:25:38', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(220, 'mmnn', 'mn1@gmail.com', NULL, '$2y$10$FgmM26lf7P6Tu.RSmhQCheox4ncUHBw56U6rmuM/wMg95E.bsS0q.', 0, NULL, NULL, '2022-10-27 16:26:37', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(221, 'Islamtest25', 'Islamtest25@test.com', NULL, '$2y$10$ZzU4MLGgZCvr/vYd8v0yHe2HEnUs8hhBj11QwMqH/lahser80mMrW', 0, NULL, NULL, '2022-10-27 16:29:11', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(222, 'hyu', 'hyu@gmail.com', NULL, '$2y$10$eRcDXr9EyXRUzPyTAwQcHO.GZ5JIKGlRZJr5t/ubUm0FaCP0cMHYe', 0, NULL, NULL, '2022-10-27 16:30:59', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(223, 'islamtest26', 'islamtest26@test.com', NULL, '$2y$10$TqPNm0sCbNYznRqZKMrWruvXr3eWy4gT1kOudrC/BuMHgsVXQTzaG', 0, NULL, NULL, '2022-10-27 16:34:38', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(224, 'vvbn', 'vvbn@gmail.com', NULL, '$2y$10$DkxTImzTo8lWJfaZ3xPJluWLuq2eOahsj74f8cvhc/Sx6SKnd9q6i', 0, NULL, NULL, '2022-10-27 16:36:29', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/users/224-Nhw.jpg'),
(225, 'tttt', 'tttt@gmail.com', NULL, '$2y$10$/Ybe8IMVOelhjk2px.u1i.bjtwHaj.4Mtyn2yce/.0pAAMKA.G03i', 0, NULL, NULL, '2022-10-27 16:37:54', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(226, 'islamtest27', 'islamtest27@test.com', NULL, '$2y$10$TyMCr2XYUBle8iudjAwmEeAxLgtwwmRGXDvUnNgPQmKf4JGqso7gu', 0, NULL, NULL, '2022-10-27 16:38:15', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(227, 'wqq', 'wqq@gmail.com', NULL, '$2y$10$kbDcWkMg3nGl4ZCo5KTNMe5iuNgXvCMAW4MQc5oiy/cP3TQ1T2ZaG', 0, NULL, NULL, '2022-10-27 16:42:35', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(228, 'aamina', 'aamina@gmail.com', NULL, '$2y$10$WD.eD18GQNmXkEq6Hh4DKedjmf./i8d5NARPrvpKDpNp171.EY2Wy', 0, NULL, NULL, '2022-10-27 16:46:39', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(229, 'mohaa', 'mohaa@gmail.com', NULL, '$2y$10$p1lzfcbE4ouDxt/xEzne9eR6SbKgjC59lHunwZit.DggbquQBnthK', 0, NULL, NULL, '2022-10-27 16:51:10', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(230, 'emad', 'emaddd@gmail.com', NULL, '$2y$10$2NznOKnPmrhOlInt1.QJqe/Rziv0c97TN5pHdSsjoYbAqaf806WDu', 0, NULL, NULL, '2022-10-27 16:57:14', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(231, 'ebra', 'ebra@gmail.com', NULL, '$2y$10$sBCE3h3XSckDLYcVux3x2uYIxidzdlw2IZOODfMT7/Npb2QnPSCFO', 0, NULL, NULL, '2022-10-27 17:05:22', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(232, 'vvbn', 'ibn@gmail.com', NULL, '$2y$10$FvUgXvPqThbY6c4ErU1F4Ozz3m6VccFkjNYZYMt4Qfe4h.4.r50/S', 0, NULL, NULL, '2022-10-27 17:15:09', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(233, 'cmd', 'cmd@gmail.com', NULL, '$2y$10$Q4ZPPVNf5NkemPDkeeMWueogWkEHjD60ZOVvmYSWA5u5AulKzzO52', 0, NULL, NULL, '2022-10-27 17:18:09', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(234, 'islamtest30', 'islamtest30@test.com', NULL, '$2y$10$U28M93cyNNXIPiuUwxz/B.lGhbYjB8LIyB1O7gK9XeizTl/l1ECdG', 0, NULL, NULL, '2022-10-27 17:19:29', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(235, 'test 6', 'test6@gmail.com', NULL, '$2y$10$PFOwVNPFVysSLrWf8GBRFekUU0OKK0UZpHz3IR6AWN7d9L5aydSrS', 0, NULL, NULL, '2022-10-27 17:24:36', '2022-10-31 15:02:43', '2022-10-31 15:02:43', 40, NULL),
(236, 'eemad', 'eemad@gmail.com', NULL, '$2y$10$ypZOhmKXYvt86jrBTC7Woey/WBfpKgRhYoXLaq5O5MYFozmxLXnEW', 0, NULL, NULL, '2022-10-27 17:26:17', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(237, 'ewad', 'ewad@gmail.com', NULL, '$2y$10$Pjhu.SRTZqgJ9Y7Ajr9Az.5uP1MSc2ZsH8FZA7meZfR2eo1OMW4o6', 0, NULL, NULL, '2022-10-27 17:28:07', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(238, 'mlk', 'mmlk@gmail.com', NULL, '$2y$10$X4Go7YBcXaGGzGDc.I1.3eoGUWR6nraW/lKAQTZQibeh5y39AScLS', 0, NULL, NULL, '2022-10-27 17:30:06', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(239, 'test 22', 'test22@gmail.com', NULL, '$2y$10$NvZisT6lpau7CJOUgZkrt..zu4y/6rGoJuEbWjxH8t1umgoub5tJK', 0, NULL, NULL, '2022-10-27 17:34:53', '2022-10-31 15:02:43', '2022-10-31 15:02:43', 16, NULL),
(240, 'test  shaba', 'test33@gmail.com', NULL, '$2y$10$YEIVo.1nUxcw14RYDCTDoeKuuEvJxtLc7J2papFsDh7F9uQQlaxS2', 0, NULL, 773, '2022-10-27 17:37:18', '2022-10-31 15:02:28', '2022-10-31 15:02:28', NULL, NULL),
(241, 'aaaa', 'aaaa@gmail.com', NULL, '$2y$10$dcZC6T5j4p45b/m5Et7GtuDoZ/BSEe/dntWxQE/wH1K7k7qH702uu', 0, NULL, NULL, '2022-10-27 17:47:23', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(242, 'dff', 'nn32@gmail.com', NULL, '$2y$10$NhoF6EkYlK9s4vg9ft8GYexf7pxSkwbOCX9wsPIl2C8deD6eusfye', 0, NULL, NULL, '2022-10-27 18:00:21', '2022-10-27 19:31:04', '2022-10-27 19:31:04', 12, NULL),
(243, '1SL23 zeina Mohamed', 'zeinamahady@gmail.com', NULL, '$2y$10$fkjgTxk05hYllwPCv/3Xnu4okl2FbaFa8ucvlR8ZbEBK1d38FjpNO', 0, NULL, 7, '2022-10-27 18:23:23', '2022-10-27 19:27:03', NULL, 12, NULL),
(244, 'amin', 'amin01@gmail.com', NULL, '$2y$10$oWnIExzT6USwsYViXdPiyu5qDUAhJlR.DRb93TeWIZbf7N3xHUGMS', 0, NULL, NULL, '2022-10-27 18:30:54', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(245, 'nre11', 'ner11@gmail.com', NULL, '$2y$10$kXrDFcshh6a84ACP4mGdrul4MgXZ5qkzW8r/pLqq.0cw5bBAL4kk2', 0, NULL, NULL, '2022-10-27 18:40:37', '2022-10-27 19:31:04', '2022-10-27 19:31:04', 12, '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/users/245-xB3.jpg'),
(246, 'new name', 'new11@new.com', NULL, '$2y$10$qlSvRZ09sauJyb1WmT/mPeihuh07UQDsz9WW1PkuzTFaWN5LO2gMK', 0, NULL, NULL, '2022-10-27 18:50:23', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL);
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `approved`, `remember_token`, `points`, `created_at`, `updated_at`, `deleted_at`, `grade_id`, `photo`) VALUES
(247, 'islamtest100', 'islamtest100@test.com', NULL, '$2y$10$p4.Sk1TkOwez6tiOIESK5eOtCUoLPFTcHgz5oC2tR9LYRY4DWzJLG', 0, NULL, NULL, '2022-10-27 18:55:28', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(248, 'islamtest101', 'islamtest101@test.com', NULL, '$2y$10$pG4Vj5w.38mka0T1VG5aDu9aCn7fDJjmhqWTRNJF5unuGJn1ZKaRm', 0, NULL, NULL, '2022-10-27 18:58:23', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(249, 'us', 'ust@gmail.com', NULL, '$2y$10$.ywjW3gil.9p3myArUnOEOQZz5SE89aWdoLR2AvW51oNykkY4rS/2', 0, NULL, NULL, '2022-10-27 18:59:25', '2022-10-27 21:02:33', '2022-10-27 21:02:33', NULL, NULL),
(250, 'islamtest102', 'islamtest102@test.com', NULL, '$2y$10$Xt0MRY3kllUB6b1JR0CAkecWhJX1SZOiQ3Up9xvDhVDw8hPl..vHe', 0, NULL, NULL, '2022-10-27 19:00:51', '2022-10-27 19:31:04', '2022-10-27 19:31:04', 12, NULL),
(251, 'islamtest104', 'islamtest104@test.com', NULL, '$2y$10$NFKHgwqcHgAnqtszLEDAyOen8qvVPClGxhpcveCj59YLtOt0GyksO', 0, NULL, NULL, '2022-10-27 19:04:47', '2022-10-27 19:31:04', '2022-10-27 19:31:04', 12, '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/users/251-Nrg.png'),
(252, 'hema', 'ibrahim012@gmail.com', NULL, '$2y$10$Hro4dufd02VfGD3zIIejF.Jxep//rU1yb6puGv.A.Y5x4LkdSdcAC', 0, NULL, 4, '2022-10-27 19:33:23', '2022-10-28 00:13:16', NULL, 44, NULL),
(253, 'islammohsen', 'islamtest200@test.com', NULL, '$2y$10$7/jd7q9f.tX3mqOrLsKcouWRjrQE/S58M7MBc.tyN1tkZ0G5wbasm', 0, NULL, NULL, '2022-10-27 19:35:06', '2022-10-30 20:55:17', '2022-10-30 20:55:17', NULL, NULL),
(254, 'islammohsen', 'islamtest201@test.com', NULL, '$2y$10$xNtc/3ptbg7bqwN2DQuR/u2xode0ZWHniG0sHW8Re3Or6PLTYxqG.', 0, NULL, 3, '2022-10-27 19:36:38', '2022-10-30 20:55:17', '2022-10-30 20:55:17', 12, NULL),
(255, 'farida mostafa', 'Faridamostafa812@gmail.com', NULL, '$2y$10$WDgTR.38GxbyD9gcddqCGuLk6LZQyhuTWNSECFHFBH0jkNi7B5sdq', 0, NULL, NULL, '2022-10-27 19:41:09', '2022-10-27 19:43:46', NULL, 15, NULL),
(256, 'islamtest', 'islamtest203@test.com', NULL, '$2y$10$8vOtbcQUJQ7s.01FtbSb7uHCp8IeW3Wb99agBgkYtr9E4OsMgXW4G', 0, NULL, NULL, '2022-10-27 20:04:07', '2022-10-30 20:55:17', '2022-10-30 20:55:17', NULL, NULL),
(257, 'islamtest', 'islamtest209@test.com', NULL, '$2y$10$cCTn0Xl52fz/bRyPlvhr7.xkpOl5Vu967bLQ/c0yU1K6w96HVF5nO', 0, NULL, NULL, '2022-10-27 20:10:14', '2022-10-30 20:55:17', '2022-10-30 20:55:17', NULL, NULL),
(258, 'islamtest', 'islamtest210@test.com', NULL, '$2y$10$89QN/fVO0f/hvQ/AArRs4uAQzlnurKVaSIth0ndZGnw3Ou4ZYwHya', 0, NULL, 4, '2022-10-27 20:13:27', '2022-10-30 20:55:17', '2022-10-30 20:55:17', 12, NULL),
(259, 'islamtest', 'islamtest212@test.com', NULL, '$2y$10$ZiEo.03M4lpB2iWzqGjZ9eB4NntAuAn2hcw5CUf20NiY1.eAyd3qS', 0, NULL, NULL, '2022-10-27 20:58:35', '2022-10-30 20:55:17', '2022-10-30 20:55:17', 9, NULL),
(260, '1st', 'test1st@gmail.com', NULL, '$2y$10$tk6BQAqPXXwkFSKKHUvLw.VcQpS5xOkqMb7nHWgfm7kdjj.3GRlfu', 0, NULL, NULL, '2022-10-27 21:05:57', '2022-10-30 20:55:17', '2022-10-30 20:55:17', NULL, NULL),
(261, 'islamtest', 'islamtest213@test.com', NULL, '$2y$10$.7Jx.oeQToDHP3mmPk3.cu5fXD9iqEqMLQiv/J92lVyNC0zwdMhzi', 0, NULL, 5, '2022-10-27 21:07:18', '2022-10-30 20:55:17', '2022-10-30 20:55:17', 9, '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/users/261-JWS.jpg'),
(262, '1L23 Retaj waleed', 'retajwaleed@gmail.com', NULL, '$2y$10$HtJdtsokE4XrLo9jJkUA5Oo2L1cey6xzIaImMa7k.BjDNML82fiT.', 0, NULL, 1, '2022-10-27 21:11:27', '2022-10-27 21:18:29', NULL, 15, NULL),
(263, 'IslamMM', 'SSS@SSS.com', NULL, '$2y$10$Ww14Y57CtD4rf.6/noaoAOOEr13/kt5gf38jVDO82g2SC72/f8qZm', 1, NULL, 0, '2022-10-27 22:55:56', '2022-10-30 20:55:17', '2022-10-30 20:55:17', 1, NULL),
(264, 'AAA', 'AAA@AAA.com', NULL, '$2y$10$wv48roGKlUeIp8l5jFFq0OVTagMPTRwpBIA9lAdukRbkddO2eZXu2', 0, NULL, 2, '2022-10-27 23:02:11', '2022-11-02 16:06:42', '2022-11-02 16:06:42', NULL, NULL),
(265, 'Islam Mohsen Hassan Alanwar', 'islamtesttest@SSS.com', NULL, '$2y$10$dDDyqEIy1nRQ6Po.jECWK.tt0zoxC/j5JGrebDJG4AjZ5l03W1tcm', 1, NULL, 0, '2022-10-27 23:12:46', '2022-10-30 20:55:17', '2022-10-30 20:55:17', 44, NULL),
(266, '1SL23 farah Hussein', 'farahhhussein3@gmail.com', NULL, '$2y$10$HTIL3HqW5X535/rcAWh4..GIfLxm.FzqmIF2xkyh8kk8sEDyW0e.y', 0, NULL, NULL, '2022-10-27 23:24:19', '2022-10-27 23:27:38', NULL, 9, NULL),
(267, 'hema', 'mohamedamin@test.com', NULL, '$2y$10$K/e1c59FRPqhHNx/k7aWCu6bvxV5NDiorEpDkng74O9C21imkw2aC', 0, NULL, NULL, '2022-10-28 00:04:09', '2022-10-28 00:56:48', NULL, 1, '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/users/267-mgP.jpg'),
(268, 'mmnn', 'mn10@gmail.com', NULL, '$2y$10$RovNvLznfFaz8Wcd/WR6ie.ydMUR6fNfMbqHTuhuhVcYxqHW5GzNa', 0, NULL, NULL, '2022-10-28 00:43:39', '2022-11-02 16:06:42', '2022-11-02 16:06:42', NULL, NULL),
(269, 'mohamed', 'mohamedamin@gmail.com', NULL, '$2y$10$RtYzFO8BEm56135DWYkSkOTVg.hVeeqyXgawNMAvdKSJjvym2PbLy', 0, NULL, NULL, '2022-10-28 00:49:19', '2022-10-28 00:51:36', NULL, NULL, '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/users/269-QzA.jpg'),
(270, 'amin', 'amin14@gmail.com', NULL, '$2y$10$xNzDiOyRcxoGO1qbHsPZpuIKwvyOU/mo6n85yl33UDqqJNDZvz3ZO', 0, NULL, NULL, '2022-10-28 01:11:02', '2022-10-28 01:18:58', NULL, 52, NULL),
(271, 'محمد شعبان محمد', 'test1111@gmail.com', NULL, '$2y$10$joKx/4KyC0kBWPygJYG7p.4o2BtisvY.Fm76CBm.RkQOIpb5hY0bO', 0, NULL, NULL, '2022-10-28 04:09:52', '2022-10-31 15:03:52', '2022-10-31 15:03:52', NULL, NULL),
(272, 'David Cohen', 'david@gmail.com', NULL, '$2y$10$cFRadyftSs0D/Tuy4a79j.CrtQesILwTDA9sz.B0WClukAiYMmGsG', 0, NULL, NULL, '2022-10-28 16:48:12', '2022-10-28 16:50:21', NULL, 52, NULL),
(273, 'kenzy Ahmed montaser', 'yasminmohsen041@gmail.com', NULL, '$2y$10$BE3Ps0v0S5PvAT0B.jjnlekzT.ccCUatXl.YSPWE.nxY6ysvEcgki', 0, NULL, 33, '2022-10-28 20:53:06', '2022-10-29 00:46:22', NULL, NULL, NULL),
(274, 'IslamReTest', 'IslamReTest@test.com', NULL, '$2y$10$Z6/VdLe./fnxeh4xkO281OC/Yf9XK3.bZjtJvVBiElxcOpKpV3yNm', 0, NULL, 500, '2022-10-29 17:29:58', '2022-11-02 16:06:42', '2022-11-02 16:06:42', 52, '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/users/274-Bae.jpg'),
(275, '1SA23 nour mosaad', 'nourmosaad@gmail.com', NULL, '$2y$10$elEY6kgNqLCQum1IVvl3gusyfdYBGuJBIqfzFqkhEeqCNcU6ltK4W', 0, NULL, NULL, '2022-10-29 19:10:58', '2022-10-29 19:10:58', NULL, NULL, NULL),
(276, '1SA23 mohra saber', 'mohrasaber@gamil.com', NULL, '$2y$10$mAv6Exvm7FiVOW9puCsqvO36wNgGUu5PZzehga.te6KBRYWvEOBMC', 0, NULL, NULL, '2022-10-29 19:13:19', '2022-10-29 19:13:19', NULL, NULL, NULL),
(277, '2A23 kirollos eid', 'kirolloseid@gmail.com', NULL, '$2y$10$bXa5OXKFhYg1irwbYkNAQuuVZhUcm9rLuUPGn1v49vLjXm7WYoPMq', 0, NULL, NULL, '2022-10-29 20:14:34', '2022-10-29 20:14:34', NULL, NULL, NULL),
(278, '6L23 May  yasser', 'Mai@gmail.com', NULL, '$2y$10$LZuTnPNRxhMwuTfx.zs4pu3Xwwh046efDgFp2TkJ2y1xil6eHSVQG', 0, NULL, NULL, '2022-10-30 02:13:17', '2022-10-30 02:13:17', NULL, NULL, NULL),
(279, '1st sec', '1stsec@gmail.com', NULL, '$2y$10$C7eR74kDnnCeM4XRdqWWfexsDjAT0zmMfXmRlbdA6dk8DpJnlHFYe', 0, NULL, NULL, '2022-10-30 03:07:53', '2022-10-30 18:10:23', '2022-10-30 18:10:23', NULL, NULL),
(280, 'mmnn', 'mn100@gmail.com', NULL, '$2y$10$JErMk9E2aKoqYqRYxFFZ1u9Hqqsbkgsop4wkwJl6OniedEuJt3lpe', 0, NULL, NULL, '2022-10-30 15:21:44', '2022-11-02 16:06:42', '2022-11-02 16:06:42', NULL, NULL),
(281, 'emad22', 'emad22@test.com', NULL, '$2y$10$eKMz5fdGGIZkhI/cBVBcruUP50SaZIoZnWG8vCePDA6xVfRuJ5Hym', 0, NULL, NULL, '2022-10-30 15:41:19', '2022-10-31 17:27:01', NULL, 43, NULL),
(282, 'Mirolla Nabel', '2l23mirollanabel@gmail.com', NULL, '$2y$10$OcqTTgq.b8ZI2dxuY6Eodef7q0kgCxrqVGXP5/onugmBjTS1NKMAS', 0, NULL, NULL, '2022-10-30 15:59:01', '2022-10-31 22:27:06', NULL, 50, NULL),
(283, 'Mariam Moharram', '2l23mememoharram.10@gmail.com', NULL, '$2y$10$cSNGCiQ0ml.7xXX2acKN8utHesovIzxQD6NRSoiY5zIo/vg2DvWli', 0, NULL, NULL, '2022-10-30 16:02:13', '2022-10-30 16:02:13', NULL, NULL, NULL),
(284, 'Emadtest5', 'Emadtest5@gmail.com', NULL, '$2y$10$WaNdhEGtyTsUF/BSdQRU3eV1TN7L5YwhVRcB18WwpTjGejogOuq2G', 0, NULL, 110, '2022-10-30 16:04:41', '2022-11-02 16:06:42', '2022-11-02 16:06:42', 43, '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/users/284-e39.jpg'),
(285, 'mmm', '2L23mmm@gmail.com', NULL, '$2y$10$ZncnHXj9PtEtEWyXIdzx3un5HZwuWOM5a4BrXuPza2vhny/wtM28C', 0, NULL, NULL, '2022-10-30 16:14:42', '2022-10-30 16:14:42', NULL, NULL, NULL),
(286, 'IslamTest', 'islamtest@test.com', NULL, '$2y$10$5lZgmfocn97YVD90eYQhPOLlhWa32XHzQgCYHvOmxoimXmr5zfQqe', 1, NULL, 0, '2022-10-30 17:13:47', '2022-10-30 19:58:46', '2022-10-30 19:58:46', 43, NULL),
(287, 'Islamtestok', 'islamtestok@test.com', NULL, '$2y$10$nXmJA4OKRbuHwjE0XyDnF.xEqyTbndiP8RS/6HooBbZ4EoHNKwCDq', 1, NULL, 0, '2022-10-30 19:20:09', '2022-10-30 19:58:46', '2022-10-30 19:58:46', 44, NULL),
(288, 'islamtestokok', 'islamtestokok@test.com', NULL, '$2y$10$rnt8rqBPjiAHR/KxKmLiCucW1i46SPqVmH1ZJEC8EJM0yT3Qwyma2', 1, NULL, NULL, '2022-10-30 19:27:47', '2022-10-30 19:58:46', '2022-10-30 19:58:46', 54, NULL),
(289, 'islamii', 'islamii@test.com', NULL, '$2y$10$aMWE/iTaoVdFql/45m42Xu4jkoHkuuZzGmwVekVhQW0M55Y6Y2joO', 0, NULL, NULL, '2022-10-30 19:37:13', '2022-10-30 19:58:46', '2022-10-30 19:58:46', NULL, NULL),
(290, 'islamiii', 'islamiii@test.com', NULL, '$2y$10$KLvV4viCvegaESlwrmLr1OeUj5rbe5sCH0Aug6SFOEgejq/BVIR/2', 0, NULL, NULL, '2022-10-30 19:38:45', '2022-10-30 19:58:46', '2022-10-30 19:58:46', 53, NULL),
(291, 'islamooo', 'islamooo@test.com', NULL, '$2y$10$c5e1n6V9xcO7JOreBf1sV.FR6TN4cTLr4lzWcbmYIE.AgaqO8dI.e', 0, NULL, NULL, '2022-10-30 19:50:44', '2022-10-30 19:58:46', '2022-10-30 19:58:46', 52, NULL),
(292, 'islamyyy', 'islamyyy@test.com', NULL, '$2y$10$IKFrMlVWbSE3tNuFxz/xE.EDdff4DoFfPnqITAHJ7X/y1inVMqFue', 0, NULL, NULL, '2022-10-30 19:57:21', '2022-10-30 19:58:46', '2022-10-30 19:58:46', 46, NULL),
(293, 'islamuuu', 'islamuuu@test.com', NULL, '$2y$10$WIiz27Nwd/pNoPGrAm2kCeczMMYM3iWMIawKmDS0i3Jl9DSkhhPje', 0, NULL, NULL, '2022-10-30 20:00:43', '2022-10-30 20:03:01', '2022-10-30 20:03:01', 48, NULL),
(294, 'islamrrr', 'islamrrr@test.com', NULL, '$2y$10$RV8r84CqYh6GWSC7JHTjueTwuHy0BenG4kT0BP2xCZGQRd8Wfd26S', 1, NULL, 0, '2022-10-30 20:20:11', '2022-10-30 22:15:26', '2022-10-30 22:15:26', 45, NULL),
(295, 'Mohsen', 'Mohsen@test.com', NULL, '$2y$10$BU51ydzBY3y/aJ3exLohGOWIOf3dhuafUN5eSkC8V5WahRjbu3Ocu', 1, NULL, 0, '2022-10-30 20:48:02', '2022-11-02 16:06:42', '2022-11-02 16:06:42', NULL, NULL),
(296, 'islam mohsen', 'islamtest01@test.com', NULL, '$2y$10$zX4l.WEsbC1oKTMevnWx5exooCaJmhnDwOfyJIoSRZkZH5unG1GXi', 0, NULL, NULL, '2022-10-31 14:22:08', '2022-11-02 16:06:42', '2022-11-02 16:06:42', 43, '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/users/296-qck.jpg'),
(297, 'ebrahhim', 'ebrahhim@gmail.com', NULL, '$2y$10$zgs61mxZh6xsbp/eTMFQJuHhhRaTkAjAex6Zdv4Yw7d1Kok0f0OcC', 0, NULL, NULL, '2022-10-31 15:20:12', '2022-10-31 15:20:45', NULL, 53, NULL),
(298, 'islam001', 'islam001@test.com', NULL, '$2y$10$cAZQ8um4IH/okYd7KmOHKOtbTHDIOiaZVk68Of.UI42RQqThLhmuu', 0, NULL, NULL, '2022-10-31 15:21:27', '2022-11-02 16:06:42', '2022-11-02 16:06:42', NULL, NULL),
(299, 'dragon', 'dragon@gmail.com', NULL, '$2y$10$m08ZjqmMGxtOXM73lKLkuu9D6.JTiSvqXLyiSnjw7n5gO13q4sgyW', 0, NULL, NULL, '2022-10-31 15:36:26', '2022-10-31 15:36:26', NULL, NULL, NULL),
(300, 'Mo.shaban@admin.com', 'Mo.shaban@admin.com', NULL, '$2y$10$Y7AmmM9zdSvy5Jga7ZSCNeNjhcHavATok6k3LamHQOpDcdqyDp4EC', 0, NULL, NULL, '2022-10-31 15:47:56', '2022-10-31 15:49:17', NULL, 46, NULL),
(301, 'islammm', 'islamm@gmail.com', NULL, '$2y$10$SkXFiEfX1dQQgWjg7fQeQOTIk9XZH.ftRmBmbSrum6PTEO6JbPzoe', 0, NULL, NULL, '2022-10-31 15:48:12', '2022-11-02 16:06:42', '2022-11-02 16:06:42', 52, NULL),
(302, 'dad', 'dad@gmail.com', NULL, '$2y$10$GcXfzCuE/CJZJZlBoFKf3eedyoH4KEkhXP6K91XUwg0/sa3xoEsMG', 0, NULL, NULL, '2022-10-31 16:11:40', '2022-10-31 16:12:18', NULL, 52, NULL),
(303, 'dad1', 'dad1@gmail.com', NULL, '$2y$10$ISAfg0ZXjF87rxIZ9MkweutRmxrK6dFjVn0pm0YpGP5mHyc30yZl2', 0, NULL, 4, '2022-10-31 16:17:21', '2022-10-31 17:15:30', NULL, 43, NULL),
(304, 'test22', 'test22@test.com', NULL, '$2y$10$3aQLmhMGiQW6xh44J0YgGu0bb8SZxZwDJqZ.LfM2ajm7kSIEnzXTe', 0, NULL, NULL, '2022-10-31 16:27:10', '2022-11-02 16:06:42', '2022-11-02 16:06:42', 43, NULL),
(305, 'test23', 'test23@test.com', NULL, '$2y$10$NmgfqaUQ/ixjhNrOh4jxzOeLjCBvXt..gBaUQpLWTIwNQZY.3vfF2', 0, NULL, NULL, '2022-10-31 16:37:42', '2022-11-02 16:06:42', '2022-11-02 16:06:42', 43, NULL),
(306, 'emad22', 'emad222@test.com', NULL, '$2y$10$29wutK8tsdSk9mw6tAX8POvicEcglpjJ//zOdG/UAcD6UVoS8UIZC', 0, NULL, NULL, '2022-10-31 17:24:47', '2022-11-02 16:06:42', '2022-11-02 16:06:42', 43, NULL),
(307, 'emad22', 'emad221@gmail.com', NULL, '$2y$10$yo5.tCSksDK2cXeiZoJEpOGGJmtjI.HC6w497cAyYq0i/zk1HnJU.', 0, NULL, NULL, '2022-10-31 17:30:08', '2022-11-02 16:06:42', '2022-11-02 16:06:42', 43, NULL),
(308, 'emad22', 'emad224@gmail.com', NULL, '$2y$10$b7LYqGmW/hDbST0ctWRlHem8n7.Z2WRrDQVklwWqHMhCf9BvBzxm6', 0, NULL, NULL, '2022-10-31 17:32:59', '2022-11-02 16:06:42', '2022-11-02 16:06:42', 43, NULL),
(309, 'emad22', 'emad223@gmail.com', NULL, '$2y$10$kPSwQ.uHMEkIZ9kPxqoai.W5sm1gP/XntkqkXZtsASEU1PwXvcpj6', 0, NULL, NULL, '2022-10-31 17:35:08', '2022-11-02 16:06:42', '2022-11-02 16:06:42', 43, NULL),
(310, 'emad22', 'emad226@gmail.com', NULL, '$2y$10$xRGg3c6cEGoaX4Poa57qr.sbeRn/6mPEkCWRSr2N5BQhXOih7yrVm', 0, NULL, NULL, '2022-10-31 17:38:09', '2022-11-02 16:06:42', '2022-11-02 16:06:42', 43, NULL),
(311, 'emad22', 'emad123@gmail.com', NULL, '$2y$10$faPsYWIYDMA.y./rbvksr.zMgjc5vkHgL5ns3tl1eklmZ2VYpUkcW', 0, NULL, NULL, '2022-10-31 17:45:00', '2022-11-02 16:06:42', '2022-11-02 16:06:42', 43, NULL),
(312, 'emad22', 'emad122@gmail.com', NULL, '$2y$10$luY050Bl49uaGERIlnkB8ume.V3lwEkxILgmEJVzorTQDIHS/6Roy', 0, NULL, 2, '2022-10-31 17:47:06', '2022-11-02 16:06:42', '2022-11-02 16:06:42', 43, NULL),
(313, 'emad22', 'emad101@gmail.com', NULL, '$2y$10$XFufHtnuX9wKUQTjuWLNJ.ke15Z6POfXvxoj40bpCD1OqiDhjBhTy', 0, NULL, NULL, '2022-10-31 17:57:04', '2022-11-02 16:06:42', '2022-11-02 16:06:42', 43, NULL),
(314, 'Ahmed f', 'ahmedf@gmail.com', NULL, '$2y$10$cyKYdETZC45EegahJrIituCZ01rSytGGqpaLXG3mTgP6hnFCbElUG', 0, NULL, NULL, '2022-10-31 18:04:57', '2022-11-02 16:06:42', '2022-11-02 16:06:42', 43, NULL),
(315, 'emad102', 'emad102@gmail.com', NULL, '$2y$10$BcrS/JlivkmYGZeEhwATguY1F1A46aLdCy.0EbbhBwdS9lsIlN/0.', 0, NULL, NULL, '2022-10-31 18:12:03', '2022-10-31 19:46:55', '2022-10-31 19:46:55', 43, NULL),
(316, 'emad22', 'emad110@gmail.com', NULL, '$2y$10$S/9LdpHU1tv3hbajEH6Qw.oI9Q.V0n4QpALx/8djQw8/mOQFgSpcm', 0, NULL, 4, '2022-10-31 18:25:43', '2022-11-02 15:44:32', NULL, 43, NULL),
(317, 'test', 'test@gmail.com', NULL, '$2y$10$W/9SHooPpv2jpHztfRoBmejInB/h/BHoQjjWFFU0XKuITvLOK3iEO', 0, NULL, NULL, '2022-10-31 18:58:54', '2022-11-02 16:06:42', '2022-11-02 16:06:42', 51, NULL),
(318, 'Aisha Ahmed', '1L23Aisha11@gmail.com', NULL, '$2y$10$LExFPRbn5zlQZ.7NqCGrZ.AMth/Va4SeLXO2pFdQIrcXtCk6pU3QO', 0, NULL, NULL, '2022-10-31 19:17:17', '2022-10-31 19:21:40', NULL, 49, NULL),
(319, 'islamtest1110', 'islamtest1110@test.com', NULL, '$2y$10$57kCkHHH1A39Ef1VNIgpbuHWaXpQzY9TOeGj1THyXivK0CgzL.tVy', 0, NULL, NULL, '2022-11-01 00:06:52', '2022-11-02 16:06:42', '2022-11-02 16:06:42', 43, NULL),
(320, 'islamtest001', 'islamtest001@test.com', NULL, '$2y$10$NGdiVsE74QsMvBpadq4d.O8U2JWJ0Hak8IjJlm.lQdtvVqMz4ssv2', 0, NULL, NULL, '2022-11-01 00:11:08', '2022-11-02 16:06:42', '2022-11-02 16:06:42', 43, NULL),
(321, 'test', 'test111@gmail.com', NULL, '$2y$10$di6RtkF63mC3iFD5GhfoHeAcfNAETizvXUZabSB26Ii/5Z7Y5.ctC', 0, NULL, NULL, '2022-11-01 02:39:44', '2022-11-02 16:06:42', '2022-11-02 16:06:42', NULL, NULL),
(322, 'test', 'test222@gmail.com', NULL, '$2y$10$6c6uKyOgwP.HNjAIiKugTOlo4lGZA5Cuek2ZL8/V8/d93Senrs0gu', 0, NULL, NULL, '2022-11-01 02:40:54', '2022-11-02 16:06:42', '2022-11-02 16:06:42', 53, NULL),
(323, 'ttttttt', 'ttttttt@rrrr.com', NULL, '$2y$10$.i5b87Gr7/8f0RP80/8tZOmRJo607XTxys9ta9EQVxrzXuxv4/0PO', 0, NULL, NULL, '2022-11-01 16:39:59', '2022-11-02 16:06:42', '2022-11-02 16:06:42', 44, NULL),
(324, 'emad108', 'emad108@gmail.com', NULL, '$2y$10$pCXzDAMBKj6YX7I5HeIYX.8AatirLafD8ULtrwNPP8Ep81VPtar.6', 0, NULL, NULL, '2022-11-01 16:51:24', '2022-11-02 16:06:42', '2022-11-02 16:06:42', 43, NULL),
(325, 'islamtest909', 'islamtest909@test.com', NULL, '$2y$10$aBKg9rg.7YviXTfOjuVdb.aabMike8ekX34KYaekzmxsEZPsBZLAK', 0, NULL, 5, '2022-11-01 20:02:32', '2022-11-02 16:06:42', '2022-11-02 16:06:42', 43, NULL),
(326, 'islamtestend1', 'islamtestend1@test.com', NULL, '$2y$10$LJLaCK7xMcUNi4.vb8Je3urfEWs7GCvfnkbFMwtFJlDQ54eH4Amly', 0, NULL, 6, '2022-11-01 20:38:00', '2022-11-02 16:06:42', '2022-11-02 16:06:42', 43, NULL),
(327, 'emad109', 'emad109@gmail.com', NULL, '$2y$10$W8VcLpiSbrqJlE/drwkL7u0XzTVLte.sTgy5QvQiELtAPNhXdYbnC', 0, NULL, 2, '2022-11-01 22:01:54', '2022-11-02 16:06:42', '2022-11-02 16:06:42', 43, NULL),
(328, 'mayar yasser', 'mayar@gmail.com', NULL, '$2y$10$5EPdIIL/Pd.lPx4o4BqrnOUIqIUHjSkuPPXiaxKsF9lfmgdQiSNMe', 0, NULL, NULL, '2022-11-01 23:21:12', '2022-11-02 01:36:48', NULL, 48, NULL),
(329, 'l123joudy Mohamed', 'kenzyelsawy1@gimal.com', NULL, '$2y$10$NQarnO8oGlJa4j4EsbIWT.Aw.mmVK7NRekMrE8ypln3aTlvck19si', 0, NULL, NULL, '2022-11-02 02:12:02', '2022-11-02 02:13:29', NULL, 49, NULL),
(330, 'marambassam', 'marambassam2009@gmail.com', NULL, '$2y$10$Bxh7kYRuDynjJz83Dln39eO6RACz4dt5PCTtZC2TbkmkgUD/2Aw8W', 0, NULL, NULL, '2022-11-02 08:24:06', '2022-11-02 08:25:17', NULL, 49, NULL),
(331, 'Emadtest6', 'Emadtest6@gmail.com', NULL, '$2y$10$YcVd5zveZfaZRpLMFx5FEO1itXQbfrW.uDRlXRIrI.tNW/jdz.2CW', 0, NULL, NULL, '2022-11-02 14:40:35', '2022-11-02 14:42:17', NULL, 43, '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/November/users/331-aQw.jpg'),
(332, 'islamhomework', 'islamhomework@test.com', NULL, '$2y$10$qSXiLAQmXpDFudmUzP1Mo..JgdlvJ6Bj1oec09dvlimsinyVFZMva', 0, NULL, NULL, '2022-11-02 14:51:15', '2022-11-02 14:52:25', NULL, 43, NULL),
(333, 'Emadtast7', 'Emadtast7@gamil.com', NULL, '$2y$10$DTv2EwrFG1vZnQoYTxWKjeMgMVmLseXJyPNzd7fhCQsraqfbEkCx.', 0, NULL, NULL, '2022-11-02 15:05:44', '2022-11-02 15:06:19', NULL, 43, '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/November/users/333-Daz.jpg'),
(334, 'Emadtest8', 'emadtest8@gamil.com', NULL, '$2y$10$6iEZMvkEWOT7RW/mqlhel.mybXBD4iiv/qdfhNSqm3br2mWxm2EW.', 0, NULL, NULL, '2022-11-02 15:09:06', '2022-11-02 15:09:38', NULL, 43, '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/November/users/334-z6Y.jpg'),
(335, 'homeworktest', 'homeworktest@test.com', NULL, '$2y$10$jVbEuF4XF0UxHqV8Ze8OJergKJE9vYuy11kWYFX94WXSBa4Zh49S.', 0, NULL, 5, '2022-11-02 15:19:55', '2022-11-02 15:40:54', NULL, 43, NULL),
(336, 'homework2', 'homeworktest2@test.com', NULL, '$2y$10$toRKUIjICLab3TqOhbk0TOm.OxwzU4xRkJIze1z.hsN8FjaoQw2ei', 0, NULL, 5, '2022-11-02 15:49:04', '2022-11-02 15:58:58', NULL, 43, NULL),
(337, 'emad11', 'emad112@gmail.com', NULL, '$2y$10$PwpnNxK6BhGrGZerHLr4J.JAU/sD1G44gkee903dqTJ/YeNLObGwW', 0, NULL, 2, '2022-11-02 16:31:40', '2022-11-02 16:45:14', NULL, 43, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_alerts`
--

CREATE TABLE `user_alerts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `alert_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alert_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_user_alert`
--

CREATE TABLE `user_user_alert` (
  `user_alert_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_fk_7395857` (`parent_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_fk_7395671` (`teacher_id`);

--
-- Indexes for table `course_user`
--
ALTER TABLE `course_user`
  ADD KEY `course_id_fk_7395677` (`course_id`),
  ADD KEY `user_id_fk_7395677` (`user_id`);

--
-- Indexes for table `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq_questions`
--
ALTER TABLE `faq_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_fk_7395761` (`category_id`);

--
-- Indexes for table `gifts`
--
ALTER TABLE `gifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_user`
--
ALTER TABLE `gift_user`
  ADD KEY `user_id_fk_7395860` (`user_id`),
  ADD KEY `gift_id_fk_7395860` (`gift_id`);

--
-- Indexes for table `homeworks`
--
ALTER TABLE `homeworks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grade_fk_7534240` (`grade_id`);

--
-- Indexes for table `homework_answers`
--
ALTER TABLE `homework_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homework_question`
--
ALTER TABLE `homework_question`
  ADD KEY `homework_id_fk_7549580` (`homework_id`),
  ADD KEY `question_id_fk_7549580` (`question_id`);

--
-- Indexes for table `home_scores`
--
ALTER TABLE `home_scores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_fk_7534285` (`home_id`),
  ADD KEY `student_fk_7534286` (`student_id`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_fk_7395682` (`course_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD KEY `role_id_fk_7395655` (`role_id`),
  ADD KEY `permission_id_fk_7395655` (`permission_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `qa_messages`
--
ALTER TABLE `qa_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `qa_messages_topic_id_foreign` (`topic_id`),
  ADD KEY `qa_messages_sender_id_foreign` (`sender_id`);

--
-- Indexes for table `qa_topics`
--
ALTER TABLE `qa_topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `qa_topics_creator_id_foreign` (`creator_id`),
  ADD KEY `qa_topics_receiver_id_foreign` (`receiver_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test_fk_7395704` (`test_id`);

--
-- Indexes for table `question_options`
--
ALTER TABLE `question_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_fk_7395712` (`question_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `user_id_fk_7395664` (`user_id`),
  ADD KEY `role_id_fk_7395664` (`role_id`);

--
-- Indexes for table `student_infos`
--
ALTER TABLE `student_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_fk_7434444` (`student_id`),
  ADD KEY `grade_fk_7434447` (`grade_id`),
  ADD KEY `parent_fk_7434448` (`parent_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status_fk_7395785` (`status_id`),
  ADD KEY `assigned_to_fk_7395789` (`assigned_to_id`);

--
-- Indexes for table `task_statuses`
--
ALTER TABLE `task_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_tags`
--
ALTER TABLE `task_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_task_tag`
--
ALTER TABLE `task_task_tag`
  ADD KEY `task_id_fk_7395786` (`task_id`),
  ADD KEY `task_tag_id_fk_7395786` (`task_tag_id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_fk_7395695` (`course_id`),
  ADD KEY `lesson_fk_7395696` (`lesson_id`),
  ADD KEY `grade_fk_7416629` (`grade_id`);

--
-- Indexes for table `test_answers`
--
ALTER TABLE `test_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test_result_fk_7395726` (`test_result_id`),
  ADD KEY `question_fk_7395727` (`question_id`),
  ADD KEY `option_fk_7395728` (`option_id`);

--
-- Indexes for table `test_results`
--
ALTER TABLE `test_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test_fk_7395719` (`test_id`),
  ADD KEY `student_fk_7395720` (`student_id`);

--
-- Indexes for table `test_user`
--
ALTER TABLE `test_user`
  ADD KEY `user_id_fk_7395862` (`user_id`),
  ADD KEY `test_id_fk_7395862` (`test_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `grade_fk_7395861` (`grade_id`);

--
-- Indexes for table `user_alerts`
--
ALTER TABLE `user_alerts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_user_alert`
--
ALTER TABLE `user_user_alert`
  ADD KEY `user_alert_id_fk_7395825` (`user_alert_id`),
  ADD KEY `user_id_fk_7395825` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faq_questions`
--
ALTER TABLE `faq_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gifts`
--
ALTER TABLE `gifts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `homeworks`
--
ALTER TABLE `homeworks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `homework_answers`
--
ALTER TABLE `homework_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `home_scores`
--
ALTER TABLE `home_scores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=869;

--
-- AUTO_INCREMENT for table `qa_messages`
--
ALTER TABLE `qa_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `qa_topics`
--
ALTER TABLE `qa_topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `question_options`
--
ALTER TABLE `question_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student_infos`
--
ALTER TABLE `student_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_statuses`
--
ALTER TABLE `task_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `task_tags`
--
ALTER TABLE `task_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `test_answers`
--
ALTER TABLE `test_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `test_results`
--
ALTER TABLE `test_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=338;

--
-- AUTO_INCREMENT for table `user_alerts`
--
ALTER TABLE `user_alerts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `parent_fk_7395857` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `teacher_fk_7395671` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `course_user`
--
ALTER TABLE `course_user`
  ADD CONSTRAINT `course_id_fk_7395677` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_id_fk_7395677` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `faq_questions`
--
ALTER TABLE `faq_questions`
  ADD CONSTRAINT `category_fk_7395761` FOREIGN KEY (`category_id`) REFERENCES `faq_categories` (`id`);

--
-- Constraints for table `gift_user`
--
ALTER TABLE `gift_user`
  ADD CONSTRAINT `gift_id_fk_7395860` FOREIGN KEY (`gift_id`) REFERENCES `gifts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_id_fk_7395860` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `homeworks`
--
ALTER TABLE `homeworks`
  ADD CONSTRAINT `grade_fk_7534240` FOREIGN KEY (`grade_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `homework_question`
--
ALTER TABLE `homework_question`
  ADD CONSTRAINT `homework_id_fk_7549580` FOREIGN KEY (`homework_id`) REFERENCES `homeworks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `question_id_fk_7549580` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `home_scores`
--
ALTER TABLE `home_scores`
  ADD CONSTRAINT `home_fk_7534285` FOREIGN KEY (`home_id`) REFERENCES `homeworks` (`id`),
  ADD CONSTRAINT `student_fk_7534286` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `lessons`
--
ALTER TABLE `lessons`
  ADD CONSTRAINT `course_fk_7395682` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_id_fk_7395655` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_id_fk_7395655` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `qa_messages`
--
ALTER TABLE `qa_messages`
  ADD CONSTRAINT `qa_messages_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `qa_messages_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `qa_topics` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `qa_topics`
--
ALTER TABLE `qa_topics`
  ADD CONSTRAINT `qa_topics_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `qa_topics_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `test_fk_7395704` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`);

--
-- Constraints for table `question_options`
--
ALTER TABLE `question_options`
  ADD CONSTRAINT `question_fk_7395712` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_id_fk_7395664` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_id_fk_7395664` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_infos`
--
ALTER TABLE `student_infos`
  ADD CONSTRAINT `grade_fk_7434447` FOREIGN KEY (`grade_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `parent_fk_7434448` FOREIGN KEY (`parent_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `student_fk_7434444` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `assigned_to_fk_7395789` FOREIGN KEY (`assigned_to_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `status_fk_7395785` FOREIGN KEY (`status_id`) REFERENCES `task_statuses` (`id`);

--
-- Constraints for table `task_task_tag`
--
ALTER TABLE `task_task_tag`
  ADD CONSTRAINT `task_id_fk_7395786` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_tag_id_fk_7395786` FOREIGN KEY (`task_tag_id`) REFERENCES `task_tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tests`
--
ALTER TABLE `tests`
  ADD CONSTRAINT `course_fk_7395695` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `grade_fk_7416629` FOREIGN KEY (`grade_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `lesson_fk_7395696` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`);

--
-- Constraints for table `test_answers`
--
ALTER TABLE `test_answers`
  ADD CONSTRAINT `option_fk_7395728` FOREIGN KEY (`option_id`) REFERENCES `question_options` (`id`),
  ADD CONSTRAINT `question_fk_7395727` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`),
  ADD CONSTRAINT `test_result_fk_7395726` FOREIGN KEY (`test_result_id`) REFERENCES `test_results` (`id`);

--
-- Constraints for table `test_results`
--
ALTER TABLE `test_results`
  ADD CONSTRAINT `student_fk_7395720` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `test_fk_7395719` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`);

--
-- Constraints for table `test_user`
--
ALTER TABLE `test_user`
  ADD CONSTRAINT `test_id_fk_7395862` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_id_fk_7395862` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `grade_fk_7395861` FOREIGN KEY (`grade_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `user_user_alert`
--
ALTER TABLE `user_user_alert`
  ADD CONSTRAINT `user_alert_id_fk_7395825` FOREIGN KEY (`user_alert_id`) REFERENCES `user_alerts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_id_fk_7395825` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
