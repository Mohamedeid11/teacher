-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 23, 2022 at 04:37 AM
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
(1, 'Primary School', 1, '2022-10-07 21:33:15', '2022-10-12 23:17:22', '2022-10-12 23:17:22', NULL, 'year'),
(2, 'Grade 1', 1, '2022-10-07 21:33:25', '2022-10-12 23:17:22', '2022-10-12 23:17:22', 1, 'year'),
(3, 'Secondary  school', 1, '2022-10-10 21:13:57', '2022-10-12 23:17:22', '2022-10-12 23:17:22', NULL, 'year'),
(4, 'ثانوي', 1, '2022-10-10 21:14:11', '2022-10-12 23:17:22', '2022-10-12 23:17:22', NULL, 'year'),
(5, 'Grade 22', 1, '2022-10-10 21:14:31', '2022-10-12 23:17:22', '2022-10-12 23:17:22', 3, 'year'),
(6, 'geade 33', 1, '2022-10-10 21:14:46', '2022-10-12 23:17:22', '2022-10-12 23:17:22', 4, 'year'),
(7, 'grade 3', 1, '2022-10-12 22:26:30', '2022-10-12 23:17:07', '2022-10-12 23:17:07', 1, 'year'),
(8, '1st Prep', 0, '2022-10-12 23:16:08', '2022-10-12 23:17:05', '2022-10-12 23:17:05', NULL, 'year'),
(9, 'Secondary', 1, '2022-10-12 23:17:59', '2022-10-12 23:17:59', NULL, NULL, 'year'),
(10, 'Preparatory', 1, '2022-10-12 23:18:15', '2022-10-12 23:18:15', NULL, NULL, 'year'),
(11, 'Primary', 1, '2022-10-12 23:18:25', '2022-10-12 23:18:25', NULL, NULL, 'year'),
(12, '1st Sec', 1, '2022-10-12 23:19:09', '2022-10-12 23:19:09', NULL, 9, 'year'),
(13, '2 nd sec', 1, '2022-10-12 23:19:53', '2022-10-12 23:19:53', NULL, 9, 'year'),
(14, '3rd sec', 1, '2022-10-12 23:20:38', '2022-10-12 23:20:38', NULL, 9, 'year'),
(15, '1st Prep', 1, '2022-10-12 23:24:02', '2022-10-12 23:24:02', NULL, 10, 'year'),
(16, '2nd Prep', 1, '2022-10-12 23:24:29', '2022-10-17 02:20:19', NULL, 10, 'year'),
(17, '3rd Prep', 1, '2022-10-12 23:24:56', '2022-10-12 23:24:56', NULL, 10, 'year'),
(18, '4th Prim', 1, '2022-10-12 23:25:13', '2022-10-12 23:28:08', '2022-10-12 23:28:08', NULL, 'year'),
(19, '4th Prim', 1, '2022-10-12 23:30:21', '2022-10-12 23:30:21', NULL, 11, 'year'),
(20, '5th Prim', 1, '2022-10-12 23:31:31', '2022-10-12 23:31:31', NULL, 11, 'year'),
(21, '6th Prim', 1, '2022-10-12 23:31:52', '2022-10-12 23:31:52', NULL, 11, 'year'),
(29, 'Math', 1, '2022-10-17 21:44:11', '2022-10-17 21:55:47', NULL, 12, 'material'),
(30, 'Unit 1', 1, '2022-10-17 21:56:18', '2022-10-17 21:57:29', '2022-10-17 21:57:29', 29, 'material'),
(31, 'lesson 1', 1, '2022-10-17 21:56:41', '2022-10-17 21:57:29', '2022-10-17 21:57:29', 30, 'material'),
(32, 'test1', 1, '2022-10-17 22:02:42', '2022-10-17 22:32:54', '2022-10-17 22:32:54', 12, 'material'),
(33, 'test2', 1, '2022-10-17 22:03:46', '2022-10-17 22:04:28', '2022-10-17 22:04:28', 12, 'material'),
(34, 'test category1', 1, '2022-10-17 22:04:03', '2022-10-17 22:04:18', '2022-10-17 22:04:18', 12, 'year'),
(35, 'test1', 1, '2022-10-23 15:59:23', '2022-10-23 15:59:23', NULL, 13, 'year');

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
(37, 'الصباره الراقصه مزوده ب 120 اغنيه قابله للشحن وتعيد الكلام', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/37-1oB.jpg', 200.00, 1, '2022-10-13 15:33:50', '2022-10-13 15:33:50', NULL),
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
(73, 'سماعات بلوتوث', '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/gifts/73-cKQ.jpg', 400.00, 1, '2022-10-16 03:00:07', '2022-10-16 03:00:07', NULL);

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
(71, 27);

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
(100, 'student_info_delete', '2022-10-16 16:09:55', '2022-10-16 16:09:55', NULL);

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
(4, 34);

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
(320, 'App\\Models\\User', 49, 'API TOKEN', 'ae9a7acb62996a896fb9c77af5d5c8e7f870dbfd909a849af6951525f7a8841c', '[\"*\"]', '2022-10-20 20:11:12', NULL, '2022-10-17 22:10:34', '2022-10-20 20:11:12'),
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
(341, 'App\\Models\\User', 67, 'API TOKEN', 'ee786c8b4d5d53c06dbaaf19eeefbbe60cd8e552823dc03f3ebf9bfdb487a740', '[\"*\"]', '2022-10-23 16:30:35', NULL, '2022-10-19 14:56:40', '2022-10-23 16:30:35'),
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
(394, 'App\\Models\\User', 67, 'API TOKEN', '317b842e208da1f641b3935fea8cc008c8fd0fa0904d7b84df2d0744cf708af7', '[\"*\"]', '2022-10-23 14:49:13', NULL, '2022-10-20 18:28:26', '2022-10-23 14:49:13'),
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
(416, 'App\\Models\\User', 85, 'API TOKEN', '1b8f04ba6cff1996b7fb6f3f8d7c3a14840ccda3118ed3c563fea8b9c4363374', '[\"*\"]', '2022-10-20 21:47:48', NULL, '2022-10-20 21:39:35', '2022-10-20 21:47:48'),
(417, 'App\\Models\\User', 84, 'API TOKEN', '0e92909910d8e5a4755bb30ee5695424bcc4a32b76099278c31eaeba0c12e41b', '[\"*\"]', '2022-10-20 21:43:16', NULL, '2022-10-20 21:43:15', '2022-10-20 21:43:16'),
(418, 'App\\Models\\User', 84, 'API TOKEN', 'a59118ad72b710d3e5ff86e77251a0d572db21ac1e66efcae7d6df40f3d211e0', '[\"*\"]', '2022-10-20 21:48:41', NULL, '2022-10-20 21:43:55', '2022-10-20 21:48:41'),
(419, 'App\\Models\\User', 67, 'API TOKEN', '2d9d7f686314a1fe292c482a201f3900d9a9e2319e6f81efc7138fbc7d7d490a', '[\"*\"]', '2022-10-20 21:50:37', NULL, '2022-10-20 21:49:24', '2022-10-20 21:50:37'),
(420, 'App\\Models\\User', 86, 'API TOKEN', '92d954065e4c77c7725d00f805fc58a3679126e955e1af2fc24791c3dde6df06', '[\"*\"]', NULL, NULL, '2022-10-20 21:51:28', '2022-10-20 21:51:28'),
(421, 'App\\Models\\User', 86, 'API TOKEN', '0a016ce25c9bdfe14f4ab9ce2862932d832f5e1c694a3fed9f393b2b7946efd2', '[\"*\"]', NULL, NULL, '2022-10-20 21:51:52', '2022-10-20 21:51:52'),
(422, 'App\\Models\\User', 87, 'API TOKEN', 'd4f53dd95b4f7bcf39efe7191dd4899a71a1e697f37931203f597b3c3713ccc3', '[\"*\"]', '2022-10-20 22:01:10', NULL, '2022-10-20 21:53:15', '2022-10-20 22:01:10'),
(423, 'App\\Models\\User', 88, 'API TOKEN', 'c11687d0ea084e2b05c5817f7dfe4d61a059544237221221605e350596691c52', '[\"*\"]', '2022-10-20 22:12:42', NULL, '2022-10-20 22:05:35', '2022-10-20 22:12:42'),
(424, 'App\\Models\\User', 81, 'API TOKEN', '77e1e74a6f056462b61cfcb628e5a01909486e1121dacedab1be128921827e2f', '[\"*\"]', '2022-10-22 20:41:17', NULL, '2022-10-20 22:05:38', '2022-10-22 20:41:17'),
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
(444, 'App\\Models\\User', 92, 'API TOKEN', 'fd5708dcad9441c3986931d6cb7c97a617fccaf05b7a911b4fffcd33b4c6f119', '[\"*\"]', '2022-10-21 01:34:33', NULL, '2022-10-21 01:31:15', '2022-10-21 01:34:33'),
(445, 'App\\Models\\User', 67, 'API TOKEN', '91dbd2e84b01419d14ef9fa5617c41d545590013cf6729ecdaf5ab42d3439181', '[\"*\"]', '2022-10-21 19:40:26', NULL, '2022-10-21 19:15:08', '2022-10-21 19:40:26'),
(446, 'App\\Models\\User', 71, 'API TOKEN', '0ddd0bfd2780ace8cc7955d060ab24a8999acb09c1f3e5cd09c46b9bb26fde2c', '[\"*\"]', '2022-10-23 16:22:35', NULL, '2022-10-21 22:49:32', '2022-10-23 16:22:35'),
(447, 'App\\Models\\User', 67, 'API TOKEN', '2ba36d5399b03636ee538f7b3989fccbaf1922719024bb131c511f4ad9f8b00e', '[\"*\"]', '2022-10-22 04:05:31', NULL, '2022-10-22 04:05:30', '2022-10-22 04:05:31'),
(448, 'App\\Models\\User', 67, 'API TOKEN', 'a3f042344c45125d8a4d82ff07cd3dc92675fc0c0e4b46a60fc4a6f357a02a2f', '[\"*\"]', '2022-10-22 04:34:43', NULL, '2022-10-22 04:34:29', '2022-10-22 04:34:43'),
(449, 'App\\Models\\User', 99, 'API TOKEN', '51581167d21a339a59f21d54118c7f8b7b8027d7c67d648fbe2c7f66f3e34949', '[\"*\"]', '2022-10-22 06:40:52', NULL, '2022-10-22 06:40:45', '2022-10-22 06:40:52'),
(450, 'App\\Models\\User', 100, 'API TOKEN', '4cb84b8f0b34eb1ef35439991e97bc1dd7ec4231ccca4d18f1d709173bb357f9', '[\"*\"]', '2022-10-23 15:18:25', NULL, '2022-10-23 15:05:02', '2022-10-23 15:18:25'),
(451, 'App\\Models\\User', 67, 'API TOKEN', 'e3c827472ddf1dbb050dbb714b7341859518f64e971d0c5da192cce771aa1ced', '[\"*\"]', '2022-10-23 15:08:40', NULL, '2022-10-23 15:08:39', '2022-10-23 15:08:40'),
(452, 'App\\Models\\User', 101, 'API TOKEN', 'dd1bb591b40e31e4e550131a73193d0a2dc8b7f782d1ae1100e237b6d1a7cc8a', '[\"*\"]', '2022-10-23 16:03:08', NULL, '2022-10-23 15:25:39', '2022-10-23 16:03:08');

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
(3, 1, 1, NULL, 'تت', '2022-10-17 03:01:10', '2022-10-17 03:01:10');

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
(1, 'hkhkhkh', 1, 15, '2022-10-12 23:43:45', '2022-10-12 23:43:45');

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
(1, 'dsfsfsdfsfsf', 342, NULL, '2022-10-12 18:17:57', '2022-10-12 18:17:57', NULL, 1),
(2, 'ldldldl', 223, NULL, '2022-10-12 18:25:01', '2022-10-12 18:25:01', NULL, 1),
(4, 'Questio with image', 9, '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/photo/4-7wg.png', '2022-10-12 18:35:48', '2022-10-12 18:35:48', NULL, 1),
(5, 'questiot8futfugtfugucg yggygfygyg', 3, NULL, '2022-10-12 21:37:18', '2022-10-12 21:37:18', NULL, 2),
(6, 'questiot8futfugtfugucg yggygfygyg', 3, '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/photo/6-qG2.jpg', '2022-10-12 21:37:42', '2022-10-12 21:37:42', NULL, 2),
(7, 'ssfFffAF', 1, '', '2022-10-12 21:55:13', '2022-10-12 21:55:13', NULL, 2),
(8, 'Test Question', 5, '', '2022-10-18 15:19:58', '2022-10-18 15:19:58', NULL, 2),
(9, 'Question 1', 10, '', '2022-10-19 15:44:46', '2022-10-19 15:44:46', NULL, 3),
(10, 'Question 1', 1, '', '2022-10-19 16:33:47', '2022-10-19 16:33:47', NULL, 4),
(11, 'Question 2', 10, '', '2022-10-19 16:34:39', '2022-10-19 16:34:39', NULL, 4),
(12, 'Question 1', 7, '', '2022-10-20 06:09:55', '2022-10-20 06:09:55', NULL, 4),
(13, 'Test Question', 6, '', '2022-10-23 15:28:15', '2022-10-23 15:28:15', NULL, 2),
(14, 'test for image', 1, '', '2022-10-23 15:45:16', '2022-10-23 15:45:16', NULL, 2),
(15, 'test for image 2', 1, '', '2022-10-23 15:46:57', '2022-10-23 15:46:57', NULL, 2),
(16, 'test for image 3', 1, '/tmp/phpydo0Sq', '2022-10-23 15:55:41', '2022-10-23 15:55:41', NULL, 2),
(17, 'test for image 3', 1, '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/photo/17-XQK.png', '2022-10-23 15:56:12', '2022-10-23 15:56:12', NULL, 2),
(18, 'Find the roots of the following equation : 5X2 + 6X  + 1 = 0', 4, '/home3/dltmarke/public_html/teacher/storage/app/public/uploads/2022/October/photo/18-KFt.png', '2022-10-23 16:13:14', '2022-10-23 16:13:14', NULL, 5);

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
(6, 'test for adding', 1, '2022-10-18 17:45:05', '2022-10-18 17:45:05', NULL, 6),
(7, 'test for adding', 1, '2022-10-18 17:45:05', '2022-10-20 17:04:06', '2022-10-20 17:04:06', 6),
(8, 'test option', 0, '2022-10-18 17:48:17', '2022-10-20 17:26:37', NULL, 6),
(9, 'test option', 1, '2022-10-18 17:50:27', '2022-10-20 17:04:09', '2022-10-20 17:04:09', 6),
(10, 'test option', 0, '2022-10-18 17:52:25', '2022-10-20 17:26:38', NULL, 6),
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
(32, 'test option 2', 0, '2022-10-18 18:36:28', '2022-10-20 17:26:38', NULL, 6),
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
(72, 'test option 2', 1, '2022-10-20 17:07:55', '2022-10-23 15:04:11', NULL, 7),
(73, 'test option 2', 0, '2022-10-20 17:08:08', '2022-10-20 17:08:08', NULL, 7),
(74, 'choose #1', 0, '2022-10-23 16:31:02', '2022-10-23 16:36:18', '2022-10-23 16:36:18', 5),
(75, 'choose number 1', 0, '2022-10-23 16:36:04', '2022-10-23 16:37:02', '2022-10-23 16:37:02', 5),
(76, 'choice Number 1', 0, '2022-10-23 16:36:59', '2022-10-23 16:36:59', NULL, 5),
(77, 'choice Number 2', 0, '2022-10-23 16:37:22', '2022-10-23 16:37:22', NULL, 5);

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
(2, 'Student', NULL, '2022-10-17 19:37:52', NULL),
(3, 'Parent', '2022-10-16 15:33:51', '2022-10-16 15:33:51', NULL),
(4, 'VIP Students', '2022-10-16 16:23:52', '2022-10-17 19:38:10', NULL);

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
(101, 2);

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
(2, '0123456789', '0123456789', '0123456789', 'Shaban Mohamed Abou-abda', 'Officer', '2022-10-07 21:33:28', '2022-10-07 21:33:47', NULL, 2, 1, NULL),
(3, '0123456789', '0123456789', '0123456789', 'Shaban Mohamed Abou-abda', 'Officer', '2022-10-09 21:24:31', '2022-10-09 21:24:31', NULL, 5, 1, NULL),
(6, '5555', '555555', '55555555', 'Shaban mk', NULL, '2022-10-10 20:40:23', '2022-10-12 21:48:35', NULL, 10, 1, NULL),
(7, '01022555455', '010223266526', '0231555', 'amin', 'officer', '2022-10-11 01:59:08', '2022-10-11 01:59:08', NULL, 12, 5, NULL),
(8, '5555', '555555', '55555555', 'Shaban mk', NULL, '2022-10-12 18:53:26', '2022-10-13 07:41:37', NULL, 20, 1, NULL),
(9, '555', '55555', '55555', 'ooooo', 'oooo', '2022-10-12 19:08:36', '2022-10-12 19:08:36', NULL, 22, 2, NULL),
(10, '0123456789', '0123456789', '888', 'Mohame Emad', NULL, '2022-10-13 07:24:03', '2022-10-17 01:50:30', NULL, 34, 16, NULL),
(11, '55', '55', '56', 'fgg', 'cgg', '2022-10-13 20:27:04', '2022-10-13 20:27:04', NULL, 41, 13, NULL),
(12, '555', '566', '899', 'xfh', 'cggh', '2022-10-14 02:05:58', '2022-10-14 03:30:00', NULL, 46, 19, NULL),
(13, '555', '555', '555', 'fff', 'fff', '2022-10-14 02:22:01', '2022-10-14 02:22:01', NULL, 47, 13, NULL),
(14, '555', '888', '555', 'xcc', 'vhh', '2022-10-14 19:20:05', '2022-10-14 19:20:05', NULL, 43, 19, NULL),
(15, '555', '558', '8558', 'xfh', 'fjhv', '2022-10-14 22:12:20', '2022-10-14 22:12:20', NULL, 49, 19, NULL),
(16, '588', '8808', '8885', 'cvvh', 'fgfg', '2022-10-15 04:14:05', '2022-10-15 04:14:05', NULL, 52, 15, NULL),
(17, '01000000000', '01000000000', '0100000000', 'Aaaaaaa', 'Aaaaaaaa', '2022-10-15 19:30:17', '2022-10-20 02:44:19', NULL, 30, 19, 63),
(18, '1111111111', '222222222222', '5', '1', 'h', '2022-10-15 21:10:21', '2022-10-15 21:10:21', NULL, 53, 17, NULL),
(19, '0000', '0000', '0000', 'M', 'M', '2022-10-15 23:17:28', '2022-10-15 23:17:28', NULL, 55, 12, NULL),
(20, '12548', '788888', '78455', 'zccvx', 'zccvvg', '2022-10-16 06:43:28', '2022-10-16 18:15:49', NULL, 37, 14, 49),
(21, '85555', '55555', '88555', 'fffff', 'cvvhh', '2022-10-16 07:17:17', '2022-10-16 17:19:03', NULL, 9, 13, 49),
(22, '0123333333', '0115555555', '0123333333', 'emad Hassan', NULL, '2022-10-16 09:22:53', '2022-10-16 17:11:55', NULL, 59, 17, 49),
(23, '01022952483', '01022952483', '01022952483', 'g ggfgggg ghbj', 'vjvjg', '2022-10-16 19:12:52', '2022-10-16 19:13:48', NULL, 64, 14, NULL),
(24, '01022952483', '01022952483', '01022952403', 'amin', 'dgchg', '2022-10-16 19:19:38', '2022-10-16 19:19:38', NULL, 65, 19, NULL),
(25, '01022952483', '01022952483', '01022952489', '010229524833', 'cgcgg', '2022-10-16 19:24:57', '2022-10-16 19:24:57', NULL, 66, 19, NULL),
(26, '01022952154', '01022356656', '555555555554', 'Shaban mk', '12', '2022-10-16 20:05:42', '2022-10-21 19:22:52', NULL, 67, 16, NULL),
(27, '01234567890', '01234567890', '01234567890', 'Aa', 'Aa', '2022-10-16 20:47:36', '2022-10-16 20:47:36', NULL, 68, 21, NULL),
(28, '12345678900', '12345678900', '12345678900', 'h', 'school', '2022-10-17 00:16:00', '2022-10-17 00:16:00', NULL, 69, 15, NULL),
(29, '12345678900', '12345678900', '12345678900', 'e', 'jjj', '2022-10-17 01:39:19', '2022-10-17 02:21:05', NULL, 70, 16, NULL),
(30, '01553531912', '01553531912', '01553531912', 'lava', 'ccg', '2022-10-17 03:13:10', '2022-10-21 17:34:43', NULL, 71, 16, NULL),
(31, '01222522222', '01833333333', '01555655555', 'hhhhhhh', 'vvg', '2022-10-17 05:12:36', '2022-10-17 05:18:00', NULL, 72, 11, NULL),
(32, '01022952444', '01022952444', '01022958865', 'amin', 'mohsen', '2022-10-17 19:02:13', '2022-10-17 19:02:13', NULL, 73, 16, NULL),
(33, '01022952488', '01022952488', '01022952488', 'amin', 'mooo', '2022-10-17 19:16:55', '2022-10-17 19:16:55', NULL, 74, 16, NULL),
(34, '01022952440', '01022952440', '01022952880', 'amin', 'mohsed', '2022-10-17 19:59:14', '2022-10-17 19:59:14', NULL, 75, 14, NULL),
(35, '01201212854', '01201212857', '01202155521', 'Mario', 'teacher', '2022-10-17 23:38:56', '2022-10-18 03:48:47', NULL, 79, 13, NULL),
(36, '01276050952', '01276050952', '01202155521', 'mario', 'الوحدة', '2022-10-17 23:44:35', '2022-10-17 23:48:54', NULL, 80, 21, NULL),
(37, '01207801556', '01125461325', '01063582611', 'Ahmed', 'hajjajiau', '2022-10-18 18:15:51', '2022-10-18 18:15:51', NULL, 81, 16, NULL),
(38, '01022952482', '01022952482', '01022952482', 'amin', 'Mohamed', '2022-10-20 21:38:36', '2022-10-20 21:38:36', NULL, 85, 15, NULL),
(39, '01022952154', '01022356656', '555555555554', 'Shaban mk', '12', '2022-10-20 21:41:54', '2022-10-20 21:41:54', NULL, 84, 9, NULL),
(40, '01022586355', '01858689869', '01022256865', 'ggjhhhhh', 'ghghghh', '2022-10-20 21:54:22', '2022-10-20 21:58:53', NULL, 87, 12, NULL),
(41, '01022952477', '01022952477', '01022952477', 'amin', 'Mohamed', '2022-10-20 22:06:22', '2022-10-20 22:06:22', NULL, 88, 16, NULL),
(42, '01022952453', '01022952453', '01228506753', 'Amin', 'morning', '2022-10-20 22:29:10', '2022-10-20 22:29:10', NULL, 89, 12, NULL),
(43, '01022952453', '01022952480', '01022952489', 'Amy', 'morning', '2022-10-20 22:30:27', '2022-10-20 22:30:27', NULL, 90, 21, NULL),
(44, '01022322215', '01022525842', '01022524832', 'Amy', 'and', '2022-10-20 22:31:35', '2022-10-20 22:31:35', NULL, 91, 16, NULL),
(45, '01234567890', '01234567890', '01234567890', 'Emad', 'Emad', '2022-10-20 23:24:15', '2022-10-21 01:31:29', NULL, 92, 12, NULL),
(46, '01022955554', '01022952455', '01022952482', 'amin', 'amin', '2022-10-21 00:21:01', '2022-10-21 00:21:01', NULL, 93, 12, NULL),
(47, '01022987456', '01022952478', '01022445877', 'amin', 'hhhh', '2022-10-21 00:43:48', '2022-10-21 00:44:55', NULL, 94, 13, NULL),
(48, '01022952478', '01022954788', '01022952478', 'main', 'amin', '2022-10-21 00:52:00', '2022-10-21 00:52:00', NULL, 95, 13, NULL),
(49, '01022952489', '01022952489', '01022952489', 'main', 'amon', '2022-10-21 01:00:51', '2022-10-21 01:01:17', NULL, 96, 17, NULL),
(50, '01022958789', '01022963587', '01022958745', 'amin', 'amin', '2022-10-21 01:07:49', '2022-10-21 01:07:49', NULL, 97, 13, NULL),
(51, '01022987456', '01236547896', '01022987456', 'amin', 'amin', '2022-10-21 01:15:23', '2022-10-21 01:15:23', NULL, 98, 13, NULL),
(52, '01014177567', '01014177567', '01014177567', 'mohsen', 'mohsenschool', '2022-10-23 15:07:51', '2022-10-23 15:07:51', NULL, 100, 13, NULL);

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
(1, 'Quiz 11', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, '2022-10-10 00:27:39', '2022-10-19 15:59:10', NULL, NULL, NULL, 12, '00:00:00', 'unit-4', 'lesson-3', 29),
(2, 'Quiz 12', 'test', 1, '2022-10-12 21:36:27', '2022-10-19 15:49:38', NULL, NULL, NULL, 12, '03:30:00', 'unit-2', 'lesson-1', 29),
(3, 'Quiz 10', 'TEST', 1, '2022-10-18 20:41:29', '2022-10-19 15:49:53', NULL, NULL, NULL, 12, '03:30', 'unit-2', 'lesson-1', 29),
(4, 'Quiz 9', 'Test', 1, '2022-10-18 20:48:00', '2022-10-19 16:00:09', NULL, NULL, NULL, 12, '02:30', 'unit-2', 'lesson-4', 29),
(5, 'Quiz #1', 'First quiz **Math**', 1, '2022-10-23 16:02:36', '2022-10-23 16:02:36', NULL, NULL, NULL, 13, '10 min', 'unit-1', 'lesson-1', 29);

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
(3, 12, '2022-10-21 21:39:37', '2022-10-21 21:39:37', NULL, 2, 67),
(4, 100, '2022-10-23 14:47:33', '2022-10-23 14:47:33', NULL, 4, 8),
(5, 10, '2022-10-23 15:07:43', '2022-10-23 15:07:43', NULL, 3, 67);

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
(72, 2);

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
  `grade_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `approved`, `remember_token`, `points`, `created_at`, `updated_at`, `deleted_at`, `grade_id`) VALUES
(1, 'Admin', 'super@admin.com', NULL, '$2y$10$aIcEfh4ATVnUNgPX47KN2uvPm5tXjdFo.aPvSq4u9VCqAIK/2iQw2', 1, 'ngrLyG7av6PibZRQbd8XFYyZXFwd3jnz1i8QPCJ6eS4YnPzERqULdaZkRhXB', NULL, NULL, '2022-10-11 01:39:30', NULL, NULL),
(2, 'Mohamed Shaban Abou-abda', 'mo.shabanabouabda@gmail.com', NULL, '$2y$10$zZV/C/5PsYqZnXLpYrpACOfyrsMHjEBV0hV2UAzboaE.RchnB4QhG', 0, NULL, NULL, '2022-10-07 19:38:11', '2022-10-16 09:34:41', '2022-10-16 09:34:41', NULL),
(3, 'ibrahim Shaban', 'mo@gmail.com', NULL, '$2y$10$0.vi1iRyy6TfyPa86bAgMeSELicLOrQ0hl/6yLu5Q24iJD8Kgol4m', 0, NULL, NULL, '2022-10-09 18:12:38', '2022-10-16 09:34:26', '2022-10-16 09:34:26', NULL),
(4, 'h', 'h@gmail.com', NULL, '$2y$10$BQP.h/QNFfaqFB6aZSUFlOS8IMFE/.PlFX0lNkq/NqN/2v/Ddb..y', 0, NULL, NULL, '2022-10-09 20:53:56', '2022-10-09 20:53:56', NULL, NULL),
(5, 'Mohamed Shaban Abou-abda', 'he@gmail.com', NULL, '$2y$10$Lo58yhPE3a4Cl0hzePyxcO.m/lSiJGZCkFYWyTz/NtSBtykrt3l.K', 0, NULL, NULL, '2022-10-09 21:21:45', '2022-10-16 09:34:37', '2022-10-16 09:34:37', NULL),
(6, 'ibra', 'ibra@gmail.com', NULL, '$2y$10$c9HTagQPbiwVTvDpJrATXO6NusAa8BWyH6B4vIg9Cq9lqyhMKO6zu', 0, NULL, NULL, '2022-10-09 21:52:18', '2022-10-09 21:52:18', NULL, NULL),
(7, 'mo salah', 'mosalah@gmail.com', NULL, '$2y$10$sYoxSEGYpSVhyt4WazOuP.AEjIzBNu3.2MAk/CgGj591UcrnEe1ea', 0, NULL, NULL, '2022-10-09 22:37:10', '2022-10-16 09:43:57', '2022-10-16 09:43:57', NULL),
(8, 'IBRAHIAM', 'Ibrahi@outlook.com', NULL, '$2y$10$Erk83S7MPmK2p2GsyY.Ej.jW4lxsbFpZXotDDMazA.UNVShPaTt3K', 0, NULL, NULL, '2022-10-10 15:31:39', '2022-10-10 15:31:39', NULL, NULL),
(9, 'hema', 'he1@gmail.com', NULL, '$2y$10$4KlZrlv2XeWKEQUpcmuUvuaM1al.2dxeoAYgKTpw23lRUxwk.Vnzi', 0, NULL, NULL, '2022-10-10 16:18:20', '2022-10-10 16:18:20', NULL, NULL),
(10, 'mk', 'mk@gmail.com', NULL, '$2y$10$kkeKx3Pa84z6vRhobGPXS.4hxOzzZHLv7yIWbEdanOZGOGMp16saO', 0, NULL, NULL, '2022-10-10 17:14:01', '2022-10-12 21:48:35', NULL, NULL),
(11, 'mz', 'mz@gmail.com', NULL, '$2y$10$NbQsOlTs8qvA5eLJs9lxJ.OqeXP2009dO/qj4mOx88ez4haDVHHMu', 0, NULL, NULL, '2022-10-10 18:33:37', '2022-10-10 18:33:37', NULL, NULL),
(12, 'nn', 'nn@gmail.com', NULL, '$2y$10$pTaSRL5yP79HuSam1j4I9ewRuMHUKp7BmBrOlTiPslix9itF4k6l2', 0, NULL, 4444, '2022-10-10 23:29:46', '2022-10-12 16:57:38', '2022-10-12 16:57:38', NULL),
(13, 'IBRAHIAM', 'IBRAHIAM@outlook.com', NULL, '$2y$10$pf2K9KyzeIfdmtvFCXThx.tspFPLfoYD35UU6RE/yc4UelBn2TwFO', 0, NULL, NULL, '2022-10-11 02:12:38', '2022-10-11 02:12:38', NULL, NULL),
(14, 'Esraa Ghalii', 'Esraa@yeshtry.com', NULL, '$2y$10$9d4Ajn5mhcRcWohmZk9JV.kb.k0YIqsN4x0Z7c.CFJliwP90WybEu', 0, NULL, 7, '2022-10-11 03:38:51', '2022-10-12 22:22:22', NULL, NULL),
(15, 'esraa ghalii', 'esraa@gmail.com', NULL, '$2y$10$Blg7VOuXqPD/DvVYpWIePO5SydOjvYSLyWVQfIn7UxlZ/nwqOAdT.', 0, NULL, NULL, '2022-10-11 03:39:42', '2022-10-11 03:39:42', NULL, NULL),
(16, 'Esraa Ahmed', 'esraa@gamil.com', NULL, '$2y$10$Rjt.7qq5pmSMCqhYHvJi0uKALv0IOFhosNtdIaU0asIaT.mSaVlS6', 0, NULL, NULL, '2022-10-11 03:50:00', '2022-10-11 03:50:00', NULL, NULL),
(17, 'mmm', 'mario.m.king.op@gmail.com', NULL, '$2y$10$wyl66aSD05VRUFaMQw16UOZM40gDL6Hm5qmwC0hiQw13Z/mEZKvAC', 0, 'jHlvNqYYkNeopucOAefBAP6z9OsxwipdtgrMLXsCwrpX2DmtCMvfENHHfWli', NULL, '2022-10-11 14:59:59', '2022-10-16 09:43:20', '2022-10-16 09:43:20', NULL),
(18, 'IBRAHIAM', 'IBRAHIAMSHERIEF@yahoo.com', NULL, '$2y$10$2EkinyrsQHIoKYz.V4etHOt/foVR9IZkhyAMnLT6jSnc/ZP8IU8RW', 0, NULL, 7979, '2022-10-11 18:43:07', '2022-10-12 22:35:49', NULL, NULL),
(19, 'in', 'tes@gmail.com', NULL, '$2y$10$cPMBNuHv2cvcMT/JY2PYmue9FwxmOaV2sHDKBvNUVhM9KAU1gOy2O', 0, NULL, NULL, '2022-10-11 18:46:03', '2022-10-11 18:46:03', NULL, NULL),
(20, 'mk', 'lk@gmail.com', NULL, '$2y$10$qMCVwHkKjoLzRdSB5DdaP.8X/Y2Qv1u6rQvkgc49mbAMjUhlX0dSe', 0, NULL, NULL, '2022-10-12 15:17:15', '2022-10-13 07:41:37', NULL, NULL),
(21, 'hema201048@windowslive.com', 'hema201048@windowslive.com', NULL, '$2y$10$isPGVd.wX2ylNnZJ/Szjb.xOoa0W369toTqLx7zXDIQ5O/1Ijh9t2', 0, NULL, NULL, '2022-10-12 16:04:58', '2022-10-12 16:04:58', NULL, NULL),
(22, 'ms', 'ms@gmail.com', NULL, '$2y$10$/i2FzYHMXcBeavPd/eEjEuxL8HhqeSIOPu4FF3ey.9nAzdeHc2Ci6', 0, NULL, NULL, '2022-10-12 19:07:18', '2022-10-12 19:08:36', NULL, NULL),
(23, 'Mohamed Shaban2', 'mo2.shabanabouabda@gmail.com', NULL, '$2y$10$0a6N6xELIg5N0LtkvdoY5eIgcakg.6rUIT9UVh3gLA3KKpWX1FdLi', 0, NULL, 1, '2022-10-12 21:00:13', '2022-10-16 09:40:21', '2022-10-16 09:40:21', NULL),
(24, 'me', 'me@gmail.com', NULL, '$2y$10$YJ4vvhphj7qrnSDckswWweID205Gi/Jqk5eWFftgjCeQ7JLbqMDXu', 0, NULL, 13, '2022-10-12 22:33:56', '2022-10-12 22:55:14', NULL, NULL),
(25, 'Esraa Ahmed', 'esraa1@gmail.com', NULL, '$2y$10$jGBvDNQPiBK1rwntCQsLvuQPdKb.e3NL70XzLJIcPfOOE0D2N3ExC', 0, NULL, 2, '2022-10-12 22:51:31', '2022-10-14 02:42:53', NULL, NULL),
(26, 'Mohamed Shaban6', 'mo3.shabanabouabda@gmail.com', NULL, '$2y$10$Z7lTo/80FFR6tz1ynViqnOIA04Dqo3HUiHVV56P9j0XkU2InnqeFC', 0, NULL, NULL, '2022-10-12 23:39:38', '2022-10-16 09:34:33', '2022-10-16 09:34:33', NULL),
(27, 'hema', 'hj@gmail.com', NULL, '$2y$10$Q.6WMmn4Yml9aTy.eMmoqOF6iAPpo2OQ0/XOeynzCk8cOpCoM918K', 0, NULL, NULL, '2022-10-12 23:45:37', '2022-10-12 23:45:37', NULL, NULL),
(28, 'mn', 'mn@gmail.com', NULL, '$2y$10$VNCTc8IoQUl/I1praUICnuU.HQqPxKIv.PHgvxvTgAqxeDHbCfkpS', 0, NULL, NULL, '2022-10-12 23:56:58', '2022-10-16 09:43:38', '2022-10-16 09:43:38', NULL),
(29, 'mee', 'mee@gmail.com', NULL, '$2y$10$IPdU1eRLzZVVREWg4hkhVOJzQK265ugQpiDnwUbUXfGnN42/6qUZW', 0, NULL, NULL, '2022-10-13 00:16:14', '2022-10-13 00:16:14', NULL, NULL),
(30, 'Mohamed Emad', 'memad3000@gmail.com', NULL, '$2y$10$SfLncNaLZeI5YAHd8fPgkehLD0rN24sjOeycVl.GGT9Rr7Luyz9RG', 1, NULL, NULL, '2022-10-13 00:18:04', '2022-10-20 02:44:19', NULL, 11),
(31, 'mp', 'mp@gmail.com', NULL, '$2y$10$bzDxUeJOXAkKkwuZObWqSu7yES1AEeTIBqfzjvM1b/T/x4zzMUZhy', 0, NULL, NULL, '2022-10-13 00:20:10', '2022-10-16 09:40:02', '2022-10-16 09:40:02', NULL),
(32, 'lm', 'lm@gmail.com', NULL, '$2y$10$OMJXHbkdKT8k5kyyoxWbee0niFWDXklW5VDHajumZJkFUyrmqnC/e', 0, NULL, NULL, '2022-10-13 00:38:42', '2022-10-13 00:38:42', NULL, NULL),
(33, 'mb', 'mb@gmail.com', NULL, '$2y$10$TmSNm2vzk0hGPZ9nnJxVFe1Ph5dOlptOtF4K8WUhXO4JNP2bn9evO', 0, NULL, NULL, '2022-10-13 04:52:00', '2022-10-13 04:52:00', NULL, NULL),
(34, 'as', 'as@gmail.com', NULL, '$2y$10$nwK0.imgW41zas3bcGzCMuKx0kn79XEUvoK/iIbbTJuBitSY5ScfK', 0, NULL, NULL, '2022-10-13 06:27:30', '2022-10-13 07:35:47', NULL, NULL),
(35, 'moh', 'moj@gmail.com', NULL, '$2y$10$N.UH3ViHAMW7.7ETnW3fKO8un0MUJCBgaqnD91GoDstSFaD8uoOry', 0, NULL, NULL, '2022-10-13 16:30:31', '2022-10-13 16:30:31', NULL, NULL),
(36, 'hema', 'hem@gmail.com', NULL, '$2y$10$1rXv6Cmmiq2gnHAVmCW1guk7iPLwJII9lLEEqGuN5QwS6g9RZOJFq', 0, NULL, NULL, '2022-10-13 18:34:25', '2022-10-13 18:34:25', NULL, NULL),
(37, 'hema', 'hema55@gmail.com', NULL, '$2y$10$5HW3aXLsN8aClOl/XpAvAOwPhZF5Q.B6hukT/iHX9bDgxQkTDy12y', 0, NULL, NULL, '2022-10-13 18:42:08', '2022-10-13 18:42:08', NULL, NULL),
(38, 'borhom', 'bb@gmail.com', NULL, '$2y$10$fAUAqp0zgEEeO11kIQ6W1OCcX2grMRGNP2LtpkHBbsFiKOkXmPfyi', 0, NULL, NULL, '2022-10-13 18:48:07', '2022-10-13 18:48:07', NULL, NULL),
(39, 'mol', 'mol@gmail.com', NULL, '$2y$10$Qn4hN7P73xb2VOmOnPGbo.Fr2YMIZj.S3RnNEw3YAdoq87NQ2N1ES', 0, NULL, NULL, '2022-10-13 19:32:18', '2022-10-16 09:40:09', '2022-10-16 09:40:09', NULL),
(40, 'mll', 'mll@gmail.com', NULL, '$2y$10$sSmjOM7S1vqYl9i5V/gHPObHOKDymsV.FhbETI/4AeWNlWMuCwddS', 0, NULL, NULL, '2022-10-13 19:49:50', '2022-10-13 19:49:50', NULL, NULL),
(41, 'io', 'io@gmail.com', NULL, '$2y$10$mMOShTFsiwrziDgVBs3sBunQJHXyYS7xua0OfcfKKbDVwIhvjIj..', 0, NULL, NULL, '2022-10-13 20:25:57', '2022-10-13 20:27:04', NULL, NULL),
(42, 'testing@gmail.com', 'testing@gmail.com', NULL, '$2y$10$0xmSyuOGj.NTNk3i3wYc/./wl4rda4MzTAUDU4qWLYgwPTpshpptq', 0, NULL, NULL, '2022-10-13 20:57:26', '2022-10-16 09:32:28', '2022-10-16 09:32:28', NULL),
(43, 'ioo', 'ioo@gmail.com', NULL, '$2y$10$FyYfrwyJakpKr1UMsPRkT.m/LPlt1DF12cNm6ECh0Qf.2vn/GQvgC', 0, NULL, NULL, '2022-10-13 22:58:35', '2022-10-14 19:20:05', NULL, NULL),
(44, 'ii', 'ii@gmail.com', NULL, '$2y$10$3JdcBZY9XHTsSkS4l.fVEurGLTDuexalmeOb95YFeXRIyc.w6BfrC', 0, NULL, NULL, '2022-10-13 23:08:06', '2022-10-13 23:08:06', NULL, NULL),
(45, 'cc', 'cc@gmail.com', NULL, '$2y$10$LHkv0JsbyDD8BhDLBpHeJuadxvuWjJDTPLJ6JDWK6BPRBTDeRJsau', 0, NULL, NULL, '2022-10-14 02:00:47', '2022-10-16 09:38:38', '2022-10-16 09:38:38', NULL),
(46, 'pp', 'pp@gmail.com', NULL, '$2y$10$NEy3ZzMLX/JNnQR5sghfXeG9sz5HBuXZtf/jFhpm2SsqtAWZcL/T2', 0, NULL, NULL, '2022-10-14 02:05:10', '2022-10-16 09:39:15', '2022-10-16 09:39:15', NULL),
(47, 'ip', 'ip@gmail.com', NULL, '$2y$10$xb0XEC4OxBuRa0/3R8XfneNBTLrRt2lu4AItVdVCbR6uVjcIOqgGS', 0, NULL, NULL, '2022-10-14 02:21:36', '2022-10-14 02:22:01', NULL, NULL),
(48, 'test9@outlook.com', 'test9@outlook.com', NULL, '$2y$10$7x54ftSsvub/Zq/EVfbHmeRXXuOcLQ4yE3KAmp3nx1TjuPeUDxOO2', 0, NULL, 99, '2022-10-14 02:34:06', '2022-10-17 05:15:32', NULL, NULL),
(49, 'op', 'op@gmail.com', NULL, '$2y$10$zIbMJ4mn281lEjgEcy9iBu39SUUB/nGTp95rZR2IbMwxHkU.gXJhe', 0, NULL, NULL, '2022-10-14 22:11:20', '2022-10-18 21:08:42', NULL, 12),
(50, 'mariam Emadeldeen', 'mariamemadeldeen0@gmail.com', NULL, '$2y$10$knKVeq1jkhL0T4napzdnwOnxBkrgotV3fbltic4pSnAOO0JC/7H/W', 0, NULL, NULL, '2022-10-15 00:23:57', '2022-10-15 00:23:57', NULL, NULL),
(51, 'pl', 'pl@gmail.com', NULL, '$2y$10$2Xw1KOyi6jxACrcYSTAo1uD0EL1wsA8HPl7UEDEVLV.gFxjffNsNW', 0, NULL, NULL, '2022-10-15 04:01:05', '2022-10-16 09:39:25', '2022-10-16 09:39:25', NULL),
(52, 'po', 'po@gmail.com', NULL, '$2y$10$8Bm.O8RG7FEeiO8OLP5TcublXKrrwoIi3pQVxt2j5l2a/DmaA.jwW', 0, NULL, NULL, '2022-10-15 04:10:46', '2022-10-16 09:39:38', '2022-10-16 09:39:38', NULL),
(53, 'testproduction@hotmail.com', 'testproduction@hotmail.com', NULL, '$2y$10$D1Fr8h9q7EZeZ5yX1VKhSO5jEN9R2.zI0QIIrcWB3F4xcXLHHz3ma', 0, NULL, NULL, '2022-10-15 21:09:45', '2022-10-16 09:32:01', '2022-10-16 09:32:01', NULL),
(54, 'mmmm', 'mmmm@gmail.com', NULL, '$2y$10$D2g.aW22is6Yx1llXbLn4e5SChyNy0aKb6WeNOOQhSOtlppfx6dna', 0, NULL, NULL, '2022-10-15 23:12:05', '2022-10-16 09:44:52', '2022-10-16 09:44:52', NULL),
(55, 'MM', 'MM.M@gmail.com', NULL, '$2y$10$iXb1LB7asFO9Iy3PyYl1yue2QdS3UrFO3D0mksnca4uYR4BHhK8o6', 0, NULL, NULL, '2022-10-15 23:14:21', '2022-10-16 09:42:32', '2022-10-16 09:42:32', NULL),
(56, 'ibrahim Mohamed Amin', 'ibrahimaminoo1@gmail.com', NULL, '$2y$10$2cmm.dqyOB9yTHPrOdNRKee0TqaU4Xcfsh.06Avra9nUbCZicfTdW', 0, NULL, NULL, '2022-10-16 04:32:39', '2022-10-16 09:44:23', '2022-10-16 09:44:23', NULL),
(57, 'moggggggughsf', 'mog@gmail.com', NULL, '$2y$10$bmzR049dnQMRTUmH/nL0B.D4YrEhwR73ZoQQ4Nqo9zmw3db7xHO32', 0, NULL, NULL, '2022-10-16 06:42:02', '2022-10-16 09:42:42', '2022-10-16 09:42:42', NULL),
(58, 'iu', 'iu@gmail.com', NULL, '$2y$10$Pm3/hQ0vfX74YQi4gwTo3O92b03AtwYR6McCa4pKWAMWsShqw6qya', 0, NULL, NULL, '2022-10-16 06:47:49', '2022-10-16 09:42:16', '2022-10-16 09:42:16', NULL),
(59, 'kenzy Emad 3L23', 'kenzy@gmail.com', NULL, '$2y$10$Ib/v7nyXSc47i8eh9IOXMeGIVJlyGFJrRgaVU4lvV4/ib/zowQA6.', 0, NULL, 99, '2022-10-16 09:21:39', '2022-10-16 19:26:22', NULL, NULL),
(60, 'username', 'user12@gmail.com', NULL, '$2y$10$zqnLEcKNjcc6ArSZAFiyGun4s5uVveDRt90OVXy9IV8lkaRqbBhBO', 0, NULL, NULL, '2022-10-16 15:39:34', '2022-10-16 15:39:34', NULL, NULL),
(61, 'lkl', 'lkl@gmail.com', NULL, '$2y$10$wPKw8L8D8C4fiU8UlBsA0eBirg1qpAKLJkucbkYopKbvXNF1r/d9e', 0, NULL, NULL, '2022-10-16 18:06:20', '2022-10-16 18:06:20', NULL, NULL),
(62, 'yy', 'yy@gmail.com', NULL, '$2y$10$TXfxJIQpqHM4R8MTDlc//eF574lfxkG0n.JofVM4Bo.6ACywIyiHe', 0, NULL, NULL, '2022-10-16 18:09:51', '2022-10-16 18:09:51', NULL, NULL),
(63, 'parent', 'kk@gmail.com', NULL, '$2y$10$6VS.JH3brQKtjf71aAZPT.QGjiGH3d5SM6zp9rkrlKpD8Ga.Yml/a', 0, NULL, NULL, '2022-10-16 18:15:41', '2022-10-16 18:38:20', NULL, NULL),
(64, 'zz', 'zz@gmail.com', NULL, '$2y$10$E57vU7xjrQM.jZN84/UmoeC.pfOW/KydkO7GrWZ9ihjqvNB0edYiS', 0, NULL, NULL, '2022-10-16 18:58:17', '2022-10-16 19:13:48', NULL, NULL),
(65, 'ww', 'ww@gmail.com', NULL, '$2y$10$ZgHP3P16kqZkmrWb1Cjg/eqDTgAWLg/xNP077PyrFcx6qDBeGcDsO', 0, NULL, NULL, '2022-10-16 19:18:59', '2022-10-16 19:19:38', NULL, NULL),
(66, 'rr', 'rr@gamil.com', NULL, '$2y$10$d2kuCuZ.fxn6ZmtkzC4UReihK3e7lUJOZ0klsUnq9OGo43eaov52W', 0, NULL, NULL, '2022-10-16 19:23:40', '2022-10-16 19:24:57', NULL, NULL),
(67, 'zss', 'zss@gmail.com', NULL, '$2y$10$JPrH/R07XsfILIslEr0/m.DIaWORf.nT2v7OjXJpDlZxyxSvcLoi.', 0, NULL, NULL, '2022-10-16 20:05:02', '2022-10-21 19:22:52', NULL, 12),
(68, 'Mohamed', 'emad@gmail.com', NULL, '$2y$10$BOGpfWNF8iAiscPvTt6nk.6R7XBUejxQMGHKDI0RZmzFP/7jQLLSq', 0, NULL, NULL, '2022-10-16 20:45:51', '2022-10-16 20:47:36', NULL, NULL),
(69, 'ibrahiamsherif', 'ibrahiamsherif@gmail.com', NULL, '$2y$10$aF4Gr37tETsa9GBU.B/v4.6aLUXNKPXdoYqWDVlfaIlM0XPbDDeMq', 0, NULL, NULL, '2022-10-17 00:13:50', '2022-10-17 00:16:00', NULL, NULL),
(70, 'hhhh', 'hhhh@gmail.com', NULL, '$2y$10$qQn2Lnbe6oZxm96T3lshQON5htsOUbN/60Dw64JVdCFOgkeLInYqS', 0, NULL, NULL, '2022-10-17 01:32:52', '2022-10-17 02:21:05', NULL, NULL),
(71, 'lava', 'lava@gmail.com', NULL, '$2y$10$abIuLOyZqqD59XXdXprhEew2JI3XPFW8XI56hrN0E0Eg4PduDNBV.', 1, NULL, 10003, '2022-10-17 03:11:51', '2022-10-21 17:34:43', NULL, NULL),
(72, 'يييي', 'hhhhhhh@gmail.com', NULL, '$2y$10$5MysqK125O9RYK329.oiTe493Qp8r6UuAX7cP3Lpw7jqDLoyyq6za', 0, NULL, 111, '2022-10-17 05:10:59', '2022-10-17 05:22:03', NULL, 15),
(73, 'xcc', 'xcc@gmail.com', NULL, '$2y$10$brQDj1iKJIaJbSnwWs4j/u1a1xX2AjPFcf4/X.hYoSgwRpejAOjti', 0, NULL, NULL, '2022-10-17 19:01:10', '2022-10-17 19:02:13', NULL, NULL),
(74, 'ibrahim mohaed amin', 'ibrahimamin@gmail.com', NULL, '$2y$10$tbao8BD7e5Ny3w3BcIpzU.rdJG1Qr4zMOS7x5hhYGVXUNCbTsKbLe', 0, NULL, NULL, '2022-10-17 19:14:43', '2022-10-17 19:16:55', NULL, NULL),
(75, 'ibrahim amin mmmm', 'bmw@gmail.com', NULL, '$2y$10$OZarIdlugRzjTxRNAXhSu.psgMvZ/GK/N3D7mSiBKuJF.NXXIB3S2', 0, NULL, NULL, '2022-10-17 19:31:31', '2022-10-17 19:59:14', NULL, NULL),
(76, 'mohamed', 'mmm@gmail.com', NULL, '$2y$10$UsQZC69Rwdiudmg8//Q9FOS3AApwD7h30hHuGYjKmoWNyLqni.A8O', 0, NULL, NULL, '2022-10-17 19:37:11', '2022-10-17 19:37:11', NULL, NULL),
(77, 'new name', 'new@new.com', NULL, '$2y$10$cZzdhyfEiDPNhM9aFc/p0OdKuYsUh.mHv62zAhmX//.heLMdyjQ.i', 0, NULL, NULL, '2022-10-17 19:38:58', '2022-10-17 19:38:58', NULL, NULL),
(78, 'mohamed', 'm1@gmail.com', NULL, '$2y$10$2I3nm7Z7twOM4J23CzEzUO7KNWao30AumDKkzOT5uCcjfs88mk7h6', 0, NULL, NULL, '2022-10-17 19:41:43', '2022-10-17 19:41:43', NULL, NULL),
(79, 'معدينى بالواسطه', 'netherdragon114@gmail.com', NULL, '$2y$10$FPTlBUSvELX6zry36uWxTuYbeAoX4r7tR87XnMeDSclzaimVD8Avy', 0, NULL, 10000, '2022-10-17 23:37:49', '2022-10-18 03:48:47', NULL, NULL),
(80, 'KingerM', 'mayerkinger@gmail.com', NULL, '$2y$10$Q.YRzrP0apBUBlb8hcjoye0KWLoAOa5r5eCw6VH1lQhvWtkP5FLsO', 0, NULL, 10001, '2022-10-17 23:42:38', '2022-10-17 23:53:23', NULL, NULL),
(81, 'Esraa Ghalii', 'esraa@yahoo.com', NULL, '$2y$10$ttR8zassTlJUnnO9.NDDV.9.K83qDitvOJ51UvwOT47yq1C0fwuXK', 0, NULL, NULL, '2022-10-18 18:13:50', '2022-10-18 18:15:51', NULL, NULL),
(82, 'hema', 'hema@gmail.com', NULL, '$2y$10$baCffSOATuVqI9oQpkc0S.Pxf0R.Er3xPtGau8XVS9WDkytOm56Sm', 0, NULL, NULL, '2022-10-20 15:23:42', '2022-10-20 15:23:42', NULL, NULL),
(83, 'hema1', 'hema1@gmail.com', NULL, '$2y$10$8X3ahAukl62Ep5Xc.J3heOLj/jRE2wC9XjuMc3XPheU/3m8QYdlzC', 0, NULL, NULL, '2022-10-20 15:41:34', '2022-10-20 15:41:34', NULL, NULL),
(84, 'ooo', 'oooo@gmail.com', NULL, '$2y$10$PMuM6R6ehI5nm2.QW/kw9.5fst7e7ioz8ufj/9WCV9dLcmJPakUIq', 0, NULL, NULL, '2022-10-20 21:10:00', '2022-10-20 21:41:54', NULL, NULL),
(85, 'ooo', 'ooo@gmail.com', NULL, '$2y$10$QMltjw0E8GXinw3TIl38WuAKx2oKGqovIvtJzkusLI2TmHq5uhNTm', 0, NULL, NULL, '2022-10-20 21:37:43', '2022-10-20 21:38:36', NULL, NULL),
(86, 'mnm', 'mnm@gmail.com', NULL, '$2y$10$NVSVCfIYaeA465kzFQvgFuv8wfMhrf06oatHV5zmcvmGPOz3Urgm6', 0, NULL, NULL, '2022-10-20 21:51:28', '2022-10-20 21:51:28', NULL, NULL),
(87, 'mkl', 'mkl@gmail.com', NULL, '$2y$10$F3hWBB98Rm5wMhoAn0Jm3.syEBFugaXNlTC/0Bgd3iHg2mL/IZz/O', 0, NULL, NULL, '2022-10-20 21:53:15', '2022-10-20 21:58:53', NULL, NULL),
(88, 'you', 'you@gmail.com', NULL, '$2y$10$BK55xic226db.Te8vyv6XeYP.x0HC5qyWLEED6m9zsstdDGPc5cKm', 0, NULL, NULL, '2022-10-20 22:05:35', '2022-10-20 22:06:22', NULL, NULL),
(89, 'meee', 'meee@gmail.com', NULL, '$2y$10$oPCaZup5j00GQSwNuKe2auZyjJfvpj7yuoansKVEuKDHK2OuU5vvW', 0, NULL, NULL, '2022-10-20 22:28:33', '2022-10-20 22:29:10', NULL, NULL),
(90, 'ttt', 'ttt@gmail.com', NULL, '$2y$10$lYSYXELuAG/Us5AhN47rw.1fF6BafxC3jwYAW/fgp4xT12hI8lqEi', 0, NULL, NULL, '2022-10-20 22:29:41', '2022-10-20 22:30:27', NULL, NULL),
(91, 'tyt', 'tyt@gmail.com', NULL, '$2y$10$SA62W6lGkbcyevhgvS6Qheo5c37.xpPeOgmQ/roD.CjO4E0KxSYGa', 0, NULL, NULL, '2022-10-20 22:31:08', '2022-10-20 22:31:35', NULL, NULL),
(92, 'Emad', 'emad11@gmail.com', NULL, '$2y$10$vqWfbq3S0dGriKeZKvzoa.j34CNitaTQdi3xTcVPgT4ejAo5mEmbu', 0, NULL, NULL, '2022-10-20 23:23:32', '2022-10-21 01:31:29', NULL, 12),
(93, 'vb', 'vb@gmail.com', NULL, '$2y$10$DWJfVEC7cTprEuAay7N/C.UpHgMCd2kpEYQX0UGUwECPrhcYB2pHC', 0, NULL, NULL, '2022-10-21 00:20:10', '2022-10-21 00:21:01', NULL, NULL),
(94, 'trr', 'trr@gmail.com', NULL, '$2y$10$V7aCfmpBQwB7K6CALn8bN.1A176/Xm6ussaPG6WDjdHyA0YTU2h4K', 0, NULL, NULL, '2022-10-21 00:42:58', '2022-10-21 00:44:55', NULL, NULL),
(95, 'yu', 'yu@gmail.com', NULL, '$2y$10$9Ikph4vvjqj83Myi0SDKZeRq9ihVcVDOu2q8OavECESMAeOi6uIfm', 0, NULL, NULL, '2022-10-21 00:50:20', '2022-10-21 00:52:00', NULL, NULL),
(96, 'oi', 'oi@gmail.com', NULL, '$2y$10$JRE5vPQppzo5TjbMG.evgedM6up7HhnaY8dKjqMsGhpfscdthy8We', 0, NULL, NULL, '2022-10-21 01:00:15', '2022-10-21 01:01:17', NULL, NULL),
(97, 'po', 'poo@gmail.com', NULL, '$2y$10$QvN4g2jRqAFwOb95Owc21.Yz5t3HlWtueWFnBKtztDhDfm.tQmuO.', 0, NULL, NULL, '2022-10-21 01:07:12', '2022-10-21 01:07:49', NULL, NULL),
(98, 'ppp', 'ppp@gmail.com', NULL, '$2y$10$08/vM.3X7kbrDs2qTzlOEOkxzHiB/7A1zZp.E7c5PkjSeZ2zrY3L.', 0, NULL, NULL, '2022-10-21 01:14:28', '2022-10-21 01:15:23', NULL, NULL),
(99, 'username@gmail.com', 'username@gmail.com', NULL, '$2y$10$7Pm.vgrj3b2uEyUu8Z0Qo.pUarrkVpYhAiDcF1PXPOEypTfWZyPuO', 0, NULL, NULL, '2022-10-22 06:40:45', '2022-10-22 06:40:45', NULL, NULL),
(100, 'Testing', 'eslamisc@gmail.com', NULL, '$2y$10$M/rUcn20QbZ6zExWNMTYQek4bG/hZ.kowf0PupRIyBu8YO7nG6nHG', 0, NULL, NULL, '2022-10-23 15:05:02', '2022-10-23 15:46:53', '2022-10-23 15:46:53', NULL),
(101, 'Testing2', 'nydirah022@usefulab.com', NULL, '$2y$10$WsOcpoE2xtRfo/yxY.JsHuL796BekNA6u2bAs2DAINoB8SkGH6eCi', 0, NULL, NULL, '2022-10-23 15:25:39', '2022-10-23 15:25:39', NULL, NULL);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=453;

--
-- AUTO_INCREMENT for table `qa_messages`
--
ALTER TABLE `qa_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `qa_topics`
--
ALTER TABLE `qa_topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `question_options`
--
ALTER TABLE `question_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student_infos`
--
ALTER TABLE `student_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `test_answers`
--
ALTER TABLE `test_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test_results`
--
ALTER TABLE `test_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

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
