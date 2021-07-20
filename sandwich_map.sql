-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2021 at 02:02 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sandwich_map`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `active`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Category 1', 1, 1, '2021-01-28 19:49:03', '2021-01-28 19:49:19'),
(2, 'Category 2', 1, 1, '2021-01-28 19:49:03', '2021-01-28 19:49:21'),
(3, 'Category 3', 1, 1, '2021-01-28 19:49:03', '2021-01-31 16:09:30');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `name`, `active`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Turkey', 1, 1, '2021-01-28 19:43:41', '2021-01-28 19:44:03'),
(2, 'Palestine', 1, 1, '2021-01-28 19:44:12', '2021-01-28 19:44:24'),
(3, 'UK', 1, 1, '2021-01-28 19:44:19', '2021-01-31 16:13:42');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `l_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_setting`
--

CREATE TABLE `email_setting` (
  `id` int(10) UNSIGNED NOT NULL,
  `active` int(11) NOT NULL DEFAULT 0,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `host` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `port` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `encrption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hp_contact_us`
--

CREATE TABLE `hp_contact_us` (
  `id` int(10) UNSIGNED NOT NULL,
  `whatsapp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hours` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iframe` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hp_contact_us`
--

INSERT INTO `hp_contact_us` (`id`, `whatsapp`, `fax`, `phone`, `email`, `address`, `facebook`, `twitter`, `instagram`, `hours`, `pinterest`, `iframe`, `created_at`, `updated_at`) VALUES
(1, '0599327008', NULL, '+970599327008', 'yazan.khayal@gmail.com', 'Palestine', '#', '#', '#', NULL, '#', NULL, '2021-01-29 14:02:36', '2021-01-29 14:09:44');

-- --------------------------------------------------------

--
-- Table structure for table `hp_contents`
--

CREATE TABLE `hp_contents` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_summary` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary1` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_summary2` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'upload/contents/no.png',
  `avatar2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'upload/contents/no.png',
  `avatar3` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'upload/contents/no.png',
  `avatar4` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'upload/contents/no.png',
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hp_contents`
--

INSERT INTO `hp_contents` (`id`, `name`, `sub_name`, `summary`, `sub_summary`, `summary1`, `sub_summary2`, `video`, `link`, `avatar1`, `avatar2`, `avatar3`, `avatar4`, `type`, `user_id`, `created_at`, `updated_at`, `active`, `icon`) VALUES
(1, 'Slider 1', NULL, '<h5 style=\"margin-top: 20px; margin-bottom: 20px; line-height: 1.2; font-size: 24px; color: rgb(34, 34, 34); font-family: Roboto, sans-serif;\">Register Restaurant</h5><p style=\"margin-top: 20px; margin-bottom: 20px; padding: 0px; line-height: 1.8; color: rgb(119, 119, 119); height: 70px; font-family: &quot;Josefin Sans&quot;, sans-serif; font-size: 14px;\">Global News Podcast Thai soldier kills many people a shooting rampage</p>', NULL, '<h5 style=\"margin-top: 20px; margin-bottom: 20px; line-height: 1.2; font-size: 24px; color: rgb(34, 34, 34); font-family: Roboto, sans-serif;\">Be Come a Rider</h5><p style=\"margin-top: 20px; margin-bottom: 20px; padding: 0px; line-height: 1.8; color: rgb(119, 119, 119); height: 70px; font-family: &quot;Josefin Sans&quot;, sans-serif; font-size: 14px;\">Join the dynamic team that makes it all happen</p>', NULL, '###', '###', 'upload/slider/1611916741.png', 'upload/contents/no.png', 'upload/contents/no.png', 'upload/contents/no.png', 'slider', 1, '2021-01-29 10:20:34', '2021-01-31 15:58:12', 1, NULL),
(2, 'Slider 1', NULL, '<span class=\"before\" style=\"position: absolute; color: rgb(252, 96, 17); left: 0px; font-size: 14px; padding-left: 40px; top: -40px; font-family: &quot;Josefin Sans&quot;, sans-serif;\">Trending Episode</span><span class=\"after\" style=\"position: absolute; color: rgb(252, 96, 17); left: 0px; font-size: 14px; padding-left: 40px; bottom: -40px; font-family: &quot;Josefin Sans&quot;, sans-serif;\">Listen On Also</span><h1 style=\"margin: 20px 0px; font-size: 3rem; color: rgb(34, 34, 34); font-family: Roboto, sans-serif;\">Layer over Layers<br style=\"display: block; line-height: 1.6em;\">Chicken Kabobs</h1><p style=\"margin: 10px; padding: 0px; line-height: 1.8; color: rgb(85, 85, 85); font-family: &quot;Josefin Sans&quot;, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>', NULL, NULL, NULL, '###', '###', 'upload/slider/1611915680.png', 'upload/contents/no.png', 'upload/contents/no.png', 'upload/contents/no.png', 'slider', 1, '2021-01-29 10:20:34', '2021-01-29 10:21:20', 1, NULL),
(3, NULL, NULL, '<h5 style=\"margin-top: 20px; margin-bottom: 20px; line-height: 1.2; font-size: 24px; color: rgb(34, 34, 34); font-family: Roboto, sans-serif;\">Register Restaurant</h5><p style=\"margin-top: 20px; margin-bottom: 20px; padding: 0px; line-height: 1.8; color: rgb(119, 119, 119); height: 70px; font-family: &quot;Josefin Sans&quot;, sans-serif; font-size: 14px;\">Global News Podcast Thai soldier kills many people a shooting rampage</p>', NULL, '<h5 style=\"margin-top: 20px; margin-bottom: 20px; line-height: 1.2; font-size: 24px; color: rgb(34, 34, 34); font-family: Roboto, sans-serif;\">Be Come a Rider</h5><p style=\"margin-top: 20px; margin-bottom: 20px; padding: 0px; line-height: 1.8; color: rgb(119, 119, 119); height: 70px; font-family: &quot;Josefin Sans&quot;, sans-serif; font-size: 14px;\">Join the dynamic team that makes it all happen</p>', NULL, NULL, NULL, 'upload/join_us_1/1611916751.png', 'upload/join_us_1/1611916755.png', 'upload/contents/no.png', 'upload/contents/no.png', 'join_us', 1, '2021-01-29 10:32:36', '2021-01-29 10:39:15', 1, NULL),
(4, NULL, NULL, '<h3 style=\"margin-top: 20px; margin-bottom: 20px; line-height: 1.2; font-size: 1.875rem; color: rgb(112, 112, 112); font-family: Roboto, sans-serif; text-align: center;\">Directly Into Your Inbox Every Monday</h3><p style=\"margin-right: auto; margin-left: auto; padding: 0px; line-height: 1.5; text-align: center; color: rgb(119, 119, 119); width: 718.016px; font-family: &quot;Josefin Sans&quot;, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut dolore kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet,</p>', NULL, NULL, NULL, NULL, 'https://www.instagram.com/', 'upload/video_1/1611917090.png', 'upload/contents/no.png', 'upload/contents/no.png', 'upload/contents/no.png', 'video', 1, '2021-01-29 10:44:50', '2021-01-29 10:44:50', 1, NULL),
(6, 'Facebook', NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/', 'upload/contents/no.png', 'upload/contents/no.png', 'upload/contents/no.png', 'upload/contents/no.png', 'social_media', 1, '2021-01-31 16:24:34', '2021-01-31 16:30:13', 1, 'fab fa-facebook-f'),
(7, 'Twitter', NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=bPITHEiFWLc', 'upload/contents/no.png', 'upload/contents/no.png', 'upload/contents/no.png', 'upload/contents/no.png', 'social_media', 1, '2021-01-31 16:27:47', '2021-01-31 16:30:48', 1, 'fab fa-twitter');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_12_14_111650_create_setting_table', 1),
(4, '2019_12_19_082552_create_post_table', 1),
(5, '2019_12_21_080720_create_newsletter_table', 1),
(6, '2019_12_21_142229_create_contact_us_table', 1),
(7, '2020_01_26_122955_create_hp_contact_us_table', 1),
(8, '2020_02_06_083243_create_hp_contents_table', 1),
(9, '2020_03_23_082914_create_email_setting_table', 1),
(10, '2020_03_23_083057_create_scripts_setting_table', 1),
(11, '2021_01_28_185654_create_city_table', 1),
(12, '2021_01_28_185728_create_category_table', 1),
(13, '2021_01_28_185750_create_sub_category_table', 1),
(18, '2021_01_29_161513_create_user_ride_table', 4),
(19, '2021_01_29_174319_create_products_table', 5),
(20, '2021_01_29_174335_create_products_sub_cat_table', 5),
(21, '2021_01_29_174348_create_products_feature_table', 5),
(22, '2021_01_30_190506_create_offers_table', 6),
(23, '2021_01_31_102244_create_offers_city_table', 6),
(24, '2021_01_31_103002_create_offers_cat_table', 6),
(26, '2021_01_31_103101_create_offers_sub_cat_table', 6),
(27, '2021_01_31_103131_create_offers_products_table', 6),
(28, '2021_01_28_185938_create_restaurant_table', 7),
(29, '2021_01_28_190248_create_restaurant_sub_cat_table', 7),
(30, '2021_01_29_155426_create_user_restaurant_table', 7),
(31, '2021_01_31_103033_create_offers_restaurant_table', 7),
(32, '2021_01_31_143053_create_restaurant_city_table', 7),
(33, '2016_06_01_000001_create_oauth_auth_codes_table', 8),
(34, '2016_06_01_000002_create_oauth_access_tokens_table', 8),
(35, '2016_06_01_000003_create_oauth_refresh_tokens_table', 8),
(36, '2016_06_01_000004_create_oauth_clients_table', 8),
(37, '2016_06_01_000005_create_oauth_personal_access_clients_table', 8),
(41, '2021_02_06_195433_create_order_table', 9),
(42, '2021_02_06_195805_create_order_products_table', 9),
(43, '2021_02_06_195916_create_order_products_feature_table', 9),
(44, '2021_02_07_103903_update_order_1_table', 10),
(45, '2021_02_07_105758_create_restaurant_comment_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'dalelk Personal Access Client', 'mXZjX4iWJSmCDZGKAAH1EPJZJiKVfwIlwqQ5RFDN', 'http://localhost', 1, 0, 0, '2021-02-06 17:16:51', '2021-02-06 17:16:51'),
(2, NULL, 'dalelk Password Grant Client', 'aF9WNT4U2LrhkpwFcm5MAjgRrG5rHKxXvvOtd1Hq', 'http://localhost', 0, 1, 0, '2021-02-06 17:16:51', '2021-02-06 17:16:51');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-02-06 17:16:51', '2021-02-06 17:16:51');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no.png',
  `active` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `name`, `avatar`, `active`, `status`, `amount`, `user_id`, `created_at`, `updated_at`) VALUES
(2, '', '', 1, 1, '1.00', 1, '2021-01-31 16:40:54', '2021-01-31 16:40:54'),
(3, '', '', 1, 1, '1.00', 1, '2021-01-31 16:41:17', '2021-01-31 16:41:17');

-- --------------------------------------------------------

--
-- Table structure for table `offers_cat`
--

CREATE TABLE `offers_cat` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `offers_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers_cat`
--

INSERT INTO `offers_cat` (`id`, `category_id`, `offers_id`, `created_at`, `updated_at`) VALUES
(6, 1, 2, '2021-01-31 16:40:54', '2021-01-31 16:40:54'),
(7, 2, 2, '2021-01-31 16:40:54', '2021-01-31 16:40:54'),
(8, 3, 2, '2021-01-31 16:40:54', '2021-01-31 16:40:54'),
(10, 3, 3, '2021-01-31 18:29:15', '2021-01-31 18:29:15');

-- --------------------------------------------------------

--
-- Table structure for table `offers_city`
--

CREATE TABLE `offers_city` (
  `id` int(10) UNSIGNED NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `offers_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers_city`
--

INSERT INTO `offers_city` (`id`, `city_id`, `offers_id`, `created_at`, `updated_at`) VALUES
(7, 1, 2, '2021-01-31 16:40:54', '2021-01-31 16:40:54'),
(8, 2, 2, '2021-01-31 16:40:54', '2021-01-31 16:40:54'),
(9, 3, 2, '2021-01-31 16:40:54', '2021-01-31 16:40:54'),
(11, 2, 3, '2021-01-31 18:29:15', '2021-01-31 18:29:15');

-- --------------------------------------------------------

--
-- Table structure for table `offers_products`
--

CREATE TABLE `offers_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `offers_id` int(10) UNSIGNED NOT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers_products`
--

INSERT INTO `offers_products` (`id`, `offers_id`, `products_id`, `created_at`, `updated_at`) VALUES
(3, 2, 2, '2021-01-31 16:40:54', '2021-01-31 16:40:54'),
(5, 3, 2, '2021-01-31 18:29:15', '2021-01-31 18:29:15'),
(6, 3, 3, '2021-01-31 18:29:15', '2021-01-31 18:29:15');

-- --------------------------------------------------------

--
-- Table structure for table `offers_restaurant`
--

CREATE TABLE `offers_restaurant` (
  `id` int(10) UNSIGNED NOT NULL,
  `restaurant_id` int(10) UNSIGNED NOT NULL,
  `offers_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers_restaurant`
--

INSERT INTO `offers_restaurant` (`id`, `restaurant_id`, `offers_id`, `created_at`, `updated_at`) VALUES
(1, 3, 2, '2021-01-31 16:40:54', '2021-01-31 16:40:54'),
(3, 3, 3, '2021-01-31 18:29:15', '2021-01-31 18:29:15');

-- --------------------------------------------------------

--
-- Table structure for table `offers_sub_cat`
--

CREATE TABLE `offers_sub_cat` (
  `id` int(10) UNSIGNED NOT NULL,
  `offers_id` int(10) UNSIGNED NOT NULL,
  `sub_category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers_sub_cat`
--

INSERT INTO `offers_sub_cat` (`id`, `offers_id`, `sub_category_id`, `created_at`, `updated_at`) VALUES
(7, 2, 1, '2021-01-31 16:40:54', '2021-01-31 16:40:54'),
(8, 2, 2, '2021-01-31 16:40:54', '2021-01-31 16:40:54'),
(9, 2, 3, '2021-01-31 16:40:54', '2021-01-31 16:40:54'),
(10, 2, 4, '2021-01-31 16:40:54', '2021-01-31 16:40:54'),
(12, 3, 2, '2021-01-31 18:29:15', '2021-01-31 18:29:15');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_active` int(11) NOT NULL DEFAULT 0,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `log` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` decimal(8,2) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `payment_type` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `city_id` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `qun` int(11) NOT NULL,
  `restaurant_id` int(10) UNSIGNED NOT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_products_feature`
--

CREATE TABLE `order_products_feature` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_products_id` int(10) UNSIGNED NOT NULL,
  `products_feature_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` int(11) NOT NULL DEFAULT 0,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no.png',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `name`, `type`, `tags`, `summary`, `featured`, `avatar`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'About', '1', 'Lorem-Ipsum-is-simply-dummy-text-of-the-printing-and-typesetting-industry', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industry</p><p><br></p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industry</p><p><br></p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industry<br></p>', 1, 'upload/posts/1611917308.png', 1, '2021-01-29 10:48:28', '2021-01-31 16:04:49'),
(2, 'Epsoide', '1', 'Edpost', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industry</p><p><br></p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industry<br></p>', 1, 'upload/posts/1611917328.png', 1, '2021-01-29 10:48:48', '2021-01-31 16:05:50'),
(3, 'Contact us', '1', 'contact', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industry<br></p>', 1, 'upload/posts/1611917357.png', 1, '2021-01-29 10:49:17', '2021-01-31 16:05:52'),
(4, 'About', '2', 'Lorem-Ipsum-is-simply-dummy-text-of-the-printing-and-typesetting-industry', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industry</p><p><br></p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industry</p><p><br></p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industry<br></p>', 1, 'upload/posts/1612004680.png', 1, '2021-01-29 10:48:28', '2021-01-31 16:05:55'),
(5, 'Epsoide', '2', 'Edpost', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industry</p><p><br></p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industry<br></p>', 1, 'upload/posts/1612004692.png', 1, '2021-01-29 10:48:48', '2021-01-31 16:05:55'),
(6, 'Contact us', '2', 'contact', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industry<br></p>', 1, 'upload/posts/1612004686.png', 1, '2021-01-29 10:49:17', '2021-01-31 16:05:56'),
(7, 'Epsoide', '3', 'Edpost', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industry</p><p><br></p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industry<br></p>', 1, 'upload/posts/1612004757.png', 1, '2021-01-29 10:48:48', '2021-01-31 16:05:59'),
(8, 'Epsoide', '3', 'Edpost', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industry</p><p><br></p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industry<br></p>', 1, 'upload/posts/1612004775.png', 1, '2021-01-29 10:48:48', '2021-01-31 16:06:02'),
(9, 'Epsoide', '3', 'Edpost', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industry</p><p><br></p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industry<br></p>', 1, 'upload/posts/1612004770.png', 1, '2021-01-29 10:48:48', '2021-01-31 16:06:00'),
(10, 'Epsoide', '3', 'Edpost', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industry</p><p><br></p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industry<br></p>', 1, 'upload/posts/1612004763.png', 1, '2021-01-29 10:48:48', '2021-01-31 16:05:58');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no.png',
  `active` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `restaurant_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `summary`, `avatar`, `active`, `status`, `amount`, `restaurant_id`, `created_at`, `updated_at`) VALUES
(2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industry<br></p>', 'upload/avatar/1612106900.png', 1, 1, '12.00', 3, '2021-01-31 15:28:20', '2021-01-31 15:28:20'),
(3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industryLorem Ipsum is simply dummy text of the printing and typesetting industry<br></p>', 'upload/avatar/1612116477.png', 1, 1, '12.00', 4, '2021-01-31 18:07:57', '2021-02-07 11:25:45');

-- --------------------------------------------------------

--
-- Table structure for table `products_feature`
--

CREATE TABLE `products_feature` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `products_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_feature`
--

INSERT INTO `products_feature` (`id`, `name`, `amount`, `products_id`, `created_at`, `updated_at`) VALUES
(8, 'G', '12.00', 2, '2021-01-31 15:28:20', '2021-01-31 15:28:20'),
(9, 'T', '12.00', 3, '2021-01-31 18:07:58', '2021-01-31 18:07:58');

-- --------------------------------------------------------

--
-- Table structure for table `products_sub_cat`
--

CREATE TABLE `products_sub_cat` (
  `id` int(10) UNSIGNED NOT NULL,
  `sub_category_id` int(10) UNSIGNED NOT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_sub_cat`
--

INSERT INTO `products_sub_cat` (`id`, `sub_category_id`, `products_id`, `created_at`, `updated_at`) VALUES
(45, 1, 2, '2021-01-31 15:28:20', '2021-01-31 15:28:20'),
(46, 2, 2, '2021-01-31 15:28:20', '2021-01-31 15:28:20'),
(47, 3, 2, '2021-01-31 15:28:20', '2021-01-31 15:28:20'),
(48, 4, 2, '2021-01-31 15:28:20', '2021-01-31 15:28:20'),
(49, 1, 3, '2021-01-31 18:07:58', '2021-01-31 18:07:58'),
(50, 2, 3, '2021-01-31 18:07:58', '2021-01-31 18:07:58'),
(51, 3, 3, '2021-01-31 18:07:58', '2021-01-31 18:07:58'),
(52, 4, 3, '2021-01-31 18:07:58', '2021-01-31 18:07:58');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no.png',
  `active` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `fees` decimal(8,2) NOT NULL DEFAULT 0.00,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cash` int(11) NOT NULL DEFAULT 0,
  `visa` int(11) NOT NULL DEFAULT 0,
  `online` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`id`, `name`, `avatar`, `active`, `status`, `fees`, `user_id`, `created_at`, `updated_at`, `cash`, `visa`, `online`) VALUES
(3, 'YazanKhayal', 'upload/avatar/1612105144.png', 1, 1, '1.00', 20, '2021-01-31 14:59:04', '2021-02-07 11:57:05', 0, 1, 1),
(4, 'dsa', 'upload/avatar/no.png', 1, 1, '1.00', 23, '2021-01-31 17:13:21', '2021-01-31 17:13:21', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_city`
--

CREATE TABLE `restaurant_city` (
  `id` int(10) UNSIGNED NOT NULL,
  `restaurant_id` int(10) UNSIGNED NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurant_city`
--

INSERT INTO `restaurant_city` (`id`, `restaurant_id`, `city_id`, `created_at`, `updated_at`) VALUES
(4, 3, 1, '2021-01-31 14:59:04', '2021-01-31 14:59:04'),
(5, 3, 2, '2021-01-31 14:59:04', '2021-01-31 14:59:04'),
(6, 3, 3, '2021-01-31 14:59:04', '2021-01-31 14:59:04'),
(8, 3, 3, '2021-02-07 11:57:05', '2021-02-07 11:57:05');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_comment`
--

CREATE TABLE `restaurant_comment` (
  `id` int(10) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `restaurant_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurant_comment`
--

INSERT INTO `restaurant_comment` (`id`, `comment`, `star`, `restaurant_id`, `created_at`, `updated_at`) VALUES
(1, 'Godsa dsajmdsa h lasd hdsal dsagnk sad', 4, 3, '2021-02-07 11:02:34', '2021-02-07 12:19:44');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_sub_cat`
--

CREATE TABLE `restaurant_sub_cat` (
  `id` int(10) UNSIGNED NOT NULL,
  `restaurant_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurant_sub_cat`
--

INSERT INTO `restaurant_sub_cat` (`id`, `restaurant_id`, `category_id`, `created_at`, `updated_at`) VALUES
(8, 3, 1, '2021-01-31 14:59:04', '2021-01-31 14:59:04'),
(9, 3, 2, '2021-01-31 14:59:04', '2021-01-31 14:59:04'),
(10, 3, 3, '2021-01-31 14:59:04', '2021-01-31 14:59:04'),
(11, 4, 1, '2021-01-31 17:13:21', '2021-01-31 17:13:21'),
(12, 3, 1, '2021-02-07 11:57:05', '2021-02-07 11:57:05'),
(13, 3, 2, '2021-02-07 11:57:05', '2021-02-07 11:57:05'),
(14, 3, 3, '2021-02-07 11:57:05', '2021-02-07 11:57:05');

-- --------------------------------------------------------

--
-- Table structure for table `scripts_setting`
--

CREATE TABLE `scripts_setting` (
  `id` int(10) UNSIGNED NOT NULL,
  `js` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `public` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/',
  `fav` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no.png',
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no.png',
  `bunner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no.png',
  `avatar1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apple` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `name`, `summary`, `public`, `fav`, `avatar`, `bunner`, `avatar1`, `created_at`, `updated_at`, `currency`, `google`, `apple`, `email`, `phone`, `address`) VALUES
(1, 'Borhan Borhan', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt.', '/', 'upload/setting/1611862157.png', 'upload/setting/1611862106.png', 'upload/setting/1611862161.jpg', 'upload/setting/1611862113.png', '2021-01-28 19:03:48', '2021-01-31 16:37:18', '$', '#', '#', 'sadal@gmail.com', '121212', 'Pine Street 180');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`id`, `name`, `active`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Sub category 1', 1, 1, '2021-01-28 19:51:06', '2021-01-28 19:51:26'),
(2, 'Sub category 2', 1, 1, '2021-01-28 19:51:11', '2021-01-31 16:12:30'),
(3, 'Sub category 3', 1, 1, '2021-01-28 19:51:06', '2021-01-28 19:51:28'),
(4, 'Sub category 4', 1, 1, '2021-01-28 19:51:11', '2021-01-28 19:51:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL DEFAULT 2,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no.png',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 0,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `avatar`, `remember_token`, `created_at`, `updated_at`, `active`, `phone`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$wEHHBhAOXloRHv0dL1oS1ei7.q0xPt1VBsvwImx8JjtXIVDMcP.ZS', 1, 'upload/avatar/1611862176.png', 'RDT4vMMgCjbcH6M61tLqQCD9qJQBxnpjKSKyiRR42nvUoCDpu1Gu4rXT616J', '2021-01-28 19:03:48', '2021-01-31 16:40:19', 1, '1212'),
(20, 'YazanKhayal', 'res@gmail.com', NULL, '$2y$10$ZA0O2JgvRUQ4KIjwFTO9OOjIzPSZY0szHU0lmJACSt1x/pmiRiUPS', 4, 'upload/avatar/1612105144.png', '5aBRMoMNXwqzwwJjJxiMltjNyydM7rQetOBkaCZPZSqZzWOFXfonXEFNhLyr', '2021-01-31 14:59:04', '2021-01-31 17:09:07', 1, '970599327008'),
(23, 'Fullname', 'dsa@dsac.com', NULL, '$2y$10$hRAJxARKBEWJQ1GXIlULy.uAxzHcVCn3qJ4xPXUfIeVu.UJ9Kiw/2', 4, 'upload/avatar/no.png', 'Sd2BGXF7LgggkFOj1Juwg0KrPqO0cw43uGBQmvIohcmBlhU73ZmmjkGswqGp', '2021-01-31 17:13:21', '2021-01-31 17:13:21', 1, NULL),
(24, 'ride', 'ride@g.com', NULL, '$2y$10$L3/c.AHj5uOy5Ewmk/sAdOIZKJ50Q5b8E6iLSZE04LF02xS8V.fdW', 3, 'upload/avatar/no.png', NULL, '2021-01-31 17:13:40', '2021-01-31 17:13:40', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_restaurant`
--

CREATE TABLE `user_restaurant` (
  `id` int(10) UNSIGNED NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lot` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_ride`
--

CREATE TABLE `user_ride` (
  `id` int(10) UNSIGNED NOT NULL,
  `license` int(11) NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_ride`
--

INSERT INTO `user_ride` (`id`, `license`, `city_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 24, '2021-01-31 17:13:40', '2021-01-31 17:13:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_user_id_index` (`user_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_user_id_index` (`user_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_setting`
--
ALTER TABLE `email_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hp_contact_us`
--
ALTER TABLE `hp_contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hp_contents`
--
ALTER TABLE `hp_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hp_contents_user_id_index` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `offers_user_id_index` (`user_id`);

--
-- Indexes for table `offers_cat`
--
ALTER TABLE `offers_cat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `offers_cat_category_id_index` (`category_id`),
  ADD KEY `offers_cat_offers_id_index` (`offers_id`);

--
-- Indexes for table `offers_city`
--
ALTER TABLE `offers_city`
  ADD PRIMARY KEY (`id`),
  ADD KEY `offers_city_city_id_index` (`city_id`),
  ADD KEY `offers_city_offers_id_index` (`offers_id`);

--
-- Indexes for table `offers_products`
--
ALTER TABLE `offers_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `offers_products_offers_id_index` (`offers_id`),
  ADD KEY `offers_products_products_id_index` (`products_id`);

--
-- Indexes for table `offers_restaurant`
--
ALTER TABLE `offers_restaurant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `offers_restaurant_restaurant_id_index` (`restaurant_id`),
  ADD KEY `offers_restaurant_offers_id_index` (`offers_id`);

--
-- Indexes for table `offers_sub_cat`
--
ALTER TABLE `offers_sub_cat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `offers_sub_cat_offers_id_index` (`offers_id`),
  ADD KEY `offers_sub_cat_sub_category_id_index` (`sub_category_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_city_id_index` (`city_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_products_restaurant_id_index` (`restaurant_id`),
  ADD KEY `order_products_products_id_index` (`products_id`),
  ADD KEY `order_products_order_id_index` (`order_id`);

--
-- Indexes for table `order_products_feature`
--
ALTER TABLE `order_products_feature`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_products_feature_order_products_id_index` (`order_products_id`),
  ADD KEY `order_products_feature_products_feature_id_index` (`products_feature_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_user_id_index` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_restaurant_id_index` (`restaurant_id`);

--
-- Indexes for table `products_feature`
--
ALTER TABLE `products_feature`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_feature_products_id_index` (`products_id`);

--
-- Indexes for table `products_sub_cat`
--
ALTER TABLE `products_sub_cat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_sub_cat_sub_category_id_index` (`sub_category_id`),
  ADD KEY `products_sub_cat_products_id_index` (`products_id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurant_user_id_index` (`user_id`);

--
-- Indexes for table `restaurant_city`
--
ALTER TABLE `restaurant_city`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurant_city_restaurant_id_index` (`restaurant_id`),
  ADD KEY `restaurant_city_city_id_index` (`city_id`);

--
-- Indexes for table `restaurant_comment`
--
ALTER TABLE `restaurant_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurant_comment_restaurant_id_index` (`restaurant_id`);

--
-- Indexes for table `restaurant_sub_cat`
--
ALTER TABLE `restaurant_sub_cat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurant_sub_cat_restaurant_id_index` (`restaurant_id`),
  ADD KEY `restaurant_sub_cat_category_id_index` (`category_id`);

--
-- Indexes for table `scripts_setting`
--
ALTER TABLE `scripts_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_category_user_id_index` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_restaurant`
--
ALTER TABLE `user_restaurant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_restaurant_city_id_index` (`city_id`),
  ADD KEY `user_restaurant_user_id_index` (`user_id`);

--
-- Indexes for table `user_ride`
--
ALTER TABLE `user_ride`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_ride_city_id_index` (`city_id`),
  ADD KEY `user_ride_user_id_index` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_setting`
--
ALTER TABLE `email_setting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hp_contact_us`
--
ALTER TABLE `hp_contact_us`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hp_contents`
--
ALTER TABLE `hp_contents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `offers_cat`
--
ALTER TABLE `offers_cat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `offers_city`
--
ALTER TABLE `offers_city`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `offers_products`
--
ALTER TABLE `offers_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `offers_restaurant`
--
ALTER TABLE `offers_restaurant`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `offers_sub_cat`
--
ALTER TABLE `offers_sub_cat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_products_feature`
--
ALTER TABLE `order_products_feature`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products_feature`
--
ALTER TABLE `products_feature`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products_sub_cat`
--
ALTER TABLE `products_sub_cat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `restaurant_city`
--
ALTER TABLE `restaurant_city`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `restaurant_comment`
--
ALTER TABLE `restaurant_comment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `restaurant_sub_cat`
--
ALTER TABLE `restaurant_sub_cat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `scripts_setting`
--
ALTER TABLE `scripts_setting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user_restaurant`
--
ALTER TABLE `user_restaurant`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_ride`
--
ALTER TABLE `user_ride`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `hp_contents`
--
ALTER TABLE `hp_contents`
  ADD CONSTRAINT `hp_contents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `offers`
--
ALTER TABLE `offers`
  ADD CONSTRAINT `offers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `offers_cat`
--
ALTER TABLE `offers_cat`
  ADD CONSTRAINT `offers_cat_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `offers_cat_offers_id_foreign` FOREIGN KEY (`offers_id`) REFERENCES `offers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `offers_city`
--
ALTER TABLE `offers_city`
  ADD CONSTRAINT `offers_city_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `offers_city_offers_id_foreign` FOREIGN KEY (`offers_id`) REFERENCES `offers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `offers_products`
--
ALTER TABLE `offers_products`
  ADD CONSTRAINT `offers_products_offers_id_foreign` FOREIGN KEY (`offers_id`) REFERENCES `offers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `offers_products_products_id_foreign` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `offers_restaurant`
--
ALTER TABLE `offers_restaurant`
  ADD CONSTRAINT `offers_restaurant_offers_id_foreign` FOREIGN KEY (`offers_id`) REFERENCES `offers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `offers_restaurant_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `offers_sub_cat`
--
ALTER TABLE `offers_sub_cat`
  ADD CONSTRAINT `offers_sub_cat_offers_id_foreign` FOREIGN KEY (`offers_id`) REFERENCES `offers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `offers_sub_cat_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_products_products_id_foreign` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_products_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_products_feature`
--
ALTER TABLE `order_products_feature`
  ADD CONSTRAINT `order_products_feature_order_products_id_foreign` FOREIGN KEY (`order_products_id`) REFERENCES `order_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_products_feature_products_feature_id_foreign` FOREIGN KEY (`products_feature_id`) REFERENCES `products_feature` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products_feature`
--
ALTER TABLE `products_feature`
  ADD CONSTRAINT `products_feature_products_id_foreign` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products_sub_cat`
--
ALTER TABLE `products_sub_cat`
  ADD CONSTRAINT `products_sub_cat_products_id_foreign` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_sub_cat_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD CONSTRAINT `restaurant_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `restaurant_city`
--
ALTER TABLE `restaurant_city`
  ADD CONSTRAINT `restaurant_city_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `restaurant_city_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `restaurant_comment`
--
ALTER TABLE `restaurant_comment`
  ADD CONSTRAINT `restaurant_comment_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `restaurant_sub_cat`
--
ALTER TABLE `restaurant_sub_cat`
  ADD CONSTRAINT `restaurant_sub_cat_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `restaurant_sub_cat_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD CONSTRAINT `sub_category_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_restaurant`
--
ALTER TABLE `user_restaurant`
  ADD CONSTRAINT `user_restaurant_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_restaurant_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_ride`
--
ALTER TABLE `user_ride`
  ADD CONSTRAINT `user_ride_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_ride_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
