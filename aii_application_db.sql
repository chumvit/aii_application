-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 27, 2021 at 04:55 AM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aii_application_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

DROP TABLE IF EXISTS `app_settings`;
CREATE TABLE IF NOT EXISTS `app_settings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_settings_key_index` (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `key`, `value`) VALUES
(7, 'date_format', 'l jS F Y (H:i:s)'),
(8, 'language', 'en'),
(9, 'language', 'km'),
(17, 'is_human_date_format', '1'),
(18, 'app_name', 'AII Management'),
(19, 'app_short_description', 'Manage Web Application'),
(20, 'mail_driver', 'smtp'),
(21, 'mail_host', 'smtp.hostinger.com'),
(22, 'mail_port', '587'),
(23, 'mail_username', 'aii_shool@local.com'),
(24, 'mail_password', ''),
(25, 'mail_encryption', 'ssl'),
(26, 'mail_from_address', 'ii_shool_app@local.com'),
(27, 'mail_from_name', 'AII Internation'),
(30, 'timezone', 'Asia/Phnom_Penh'),
(32, 'theme_contrast', 'light'),
(33, 'theme_color', 'primary'),
(34, 'app_logo', '020a2dd4-4277-425a-b450-426663f52633'),
(35, 'nav_color', 'navbar-light bg-white'),
(38, 'logo_bg_color', 'bg-white'),
(66, 'default_role', 'admin'),
(101, 'custom_field_models.0', 'App\\Models\\User'),
(104, 'default_tax', '10'),
(107, 'default_currency', '$'),
(111, 'enable_notifications', '1'),
(116, 'main_color', '#ea5c44'),
(117, 'main_dark_color', '#ea5c44'),
(118, 'second_color', '#344968'),
(119, 'second_dark_color', '#ccccdd'),
(120, 'accent_color', '#8c98a8'),
(121, 'accent_dark_color', '#9999aa'),
(122, 'scaffold_dark_color', '#2c2c2c'),
(123, 'scaffold_color', '#fafafa'),
(124, 'google_maps_key', 'AIzaSyAT07iMlfZ9bJt1gmGj9KhJDLFY8srI6dA'),
(125, 'mobile_language', 'en'),
(126, 'app_version', '0.1.1'),
(127, 'enable_version', '1'),
(128, 'default_currency_id', '1'),
(129, 'default_currency_code', 'USD'),
(130, 'default_currency_decimal_digits', '2'),
(131, 'default_currency_rounding', '0'),
(132, 'currency_right', '0');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
CREATE TABLE IF NOT EXISTS `custom_fields` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(56) COLLATE utf8mb4_unicode_ci NOT NULL,
  `values` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT NULL,
  `required` tinyint(1) DEFAULT NULL,
  `in_table` tinyint(1) DEFAULT NULL,
  `bootstrap_column` tinyint DEFAULT NULL,
  `order` tinyint DEFAULT NULL,
  `custom_field_model` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_fields`
--

INSERT INTO `custom_fields` (`id`, `name`, `type`, `values`, `disabled`, `required`, `in_table`, `bootstrap_column`, `order`, `custom_field_model`, `created_at`, `updated_at`) VALUES
(4, 'phone', 'text', NULL, 0, 0, 0, 6, 2, 'App\\Models\\User', '2019-09-06 14:30:00', '2019-09-06 14:31:47'),
(5, 'bio', 'textarea', NULL, 0, 0, 0, 6, 1, 'App\\Models\\User', '2019-09-06 14:43:58', '2019-09-06 14:43:58'),
(6, 'address', 'text', NULL, 0, 0, 0, 6, 3, 'App\\Models\\User', '2019-09-06 14:49:22', '2019-09-06 14:49:22');

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_values`
--

DROP TABLE IF EXISTS `custom_field_values`;
CREATE TABLE IF NOT EXISTS `custom_field_values` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `view` longtext COLLATE utf8mb4_unicode_ci,
  `custom_field_id` int UNSIGNED NOT NULL,
  `customizable_type` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customizable_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `custom_field_values_custom_field_id_foreign` (`custom_field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_field_values`
--

INSERT INTO `custom_field_values` (`id`, `value`, `view`, `custom_field_id`, `customizable_type`, `customizable_id`, `created_at`, `updated_at`) VALUES
(29, '+136 226 5669', '+136 226 5669', 4, 'App\\Models\\User', 2, '2019-09-06 14:52:30', '2019-09-06 14:52:30'),
(30, 'Lobortis mattis aliquam faucibus purus. Habitasse platea dictumst vestibulum rhoncus est pellentesque elit. Nunc vel risus commodo viverra maecenas accumsan lacus vel.', 'Lobortis mattis aliquam faucibus purus. Habitasse platea dictumst vestibulum rhoncus est pellentesque elit. Nunc vel risus commodo viverra maecenas accumsan lacus vel.', 5, 'App\\Models\\User', 2, '2019-09-06 14:52:30', '2019-10-16 12:32:35'),
(31, '2911 Corpening Drive South Lyon, MI 48178', '2911 Corpening Drive South Lyon, MI 48178', 6, 'App\\Models\\User', 2, '2019-09-06 14:52:30', '2019-10-16 12:32:35'),
(32, NULL, NULL, 4, 'App\\Models\\User', 1, '2019-09-06 14:53:58', '2021-09-25 07:24:42'),
(33, NULL, '', 5, 'App\\Models\\User', 1, '2019-09-06 14:53:58', '2021-09-25 07:24:42'),
(55, NULL, NULL, 6, 'App\\Models\\User', 13, '2021-09-26 08:26:02', '2021-09-26 08:26:02'),
(34, NULL, NULL, 6, 'App\\Models\\User', 1, '2019-09-06 14:53:58', '2021-09-25 07:24:42'),
(54, NULL, '', 5, 'App\\Models\\User', 13, '2021-09-26 08:26:02', '2021-09-26 08:26:02'),
(35, '+1 098-6543-236', '+1 098-6543-236', 4, 'App\\Models\\User', 3, '2019-10-15 10:21:32', '2019-10-17 16:21:43'),
(36, 'Aliquet porttitor lacus luctus accumsan tortor posuere ac ut. Tortor pretium viverra suspendisse', 'Aliquet porttitor lacus luctus accumsan tortor posuere ac ut. Tortor pretium viverra suspendisse', 5, 'App\\Models\\User', 3, '2019-10-15 10:21:32', '2019-10-17 16:21:12'),
(37, '1850 Big Elm Kansas City, MO 64106', '1850 Big Elm Kansas City, MO 64106', 6, 'App\\Models\\User', 3, '2019-10-15 10:21:32', '2019-10-17 16:21:43'),
(38, '+1 248-437-7610', '+1 248-437-7610', 4, 'App\\Models\\User', 4, '2019-10-16 12:31:46', '2019-10-16 12:31:46'),
(39, 'Faucibus ornare suspendisse sed nisi lacus sed. Pellentesque sit amet porttitor eget dolor morbi non arcu. Eu scelerisque felis imperdiet proin fermentum leo vel orci porta', 'Faucibus ornare suspendisse sed nisi lacus sed. Pellentesque sit amet porttitor eget dolor morbi non arcu. Eu scelerisque felis imperdiet proin fermentum leo vel orci porta', 5, 'App\\Models\\User', 4, '2019-10-16 12:31:46', '2019-10-16 12:31:46'),
(40, '1050 Frosty Lane Sidney, NY 13838', '1050 Frosty Lane Sidney, NY 13838', 6, 'App\\Models\\User', 4, '2019-10-16 12:31:46', '2019-10-16 12:31:46'),
(41, '+136 226 5669', '+136 226 5669', 4, 'App\\Models\\User', 5, '2019-12-15 11:49:44', '2019-12-15 11:49:44'),
(42, '<p>Short Bio</p>', 'Short Bio', 5, 'App\\Models\\User', 5, '2019-12-15 11:49:44', '2019-12-15 11:49:44'),
(43, '4722 Villa Drive', '4722 Villa Drive', 6, 'App\\Models\\User', 5, '2019-12-15 11:49:44', '2019-12-15 11:49:44'),
(44, NULL, NULL, 4, 'App\\Models\\User', 6, '2020-03-29 10:28:04', '2021-09-25 20:56:35'),
(45, NULL, '', 5, 'App\\Models\\User', 6, '2020-03-29 10:28:05', '2021-09-25 20:56:35'),
(53, NULL, NULL, 4, 'App\\Models\\User', 13, '2021-09-26 08:26:02', '2021-09-26 08:26:02'),
(46, NULL, NULL, 6, 'App\\Models\\User', 6, '2020-03-29 10:28:05', '2021-09-25 20:56:35'),
(47, NULL, NULL, 4, 'App\\Models\\User', 11, '2021-09-24 22:55:29', '2021-09-24 22:55:29'),
(48, NULL, '', 5, 'App\\Models\\User', 11, '2021-09-24 22:55:29', '2021-09-24 22:55:29'),
(49, NULL, NULL, 6, 'App\\Models\\User', 11, '2021-09-24 22:55:29', '2021-09-24 22:55:29'),
(50, NULL, NULL, 4, 'App\\Models\\User', 12, '2021-09-24 23:25:19', '2021-09-24 23:25:19'),
(51, NULL, '', 5, 'App\\Models\\User', 12, '2021-09-24 23:25:19', '2021-09-24 23:25:19'),
(52, NULL, NULL, 6, 'App\\Models\\User', 12, '2021-09-24 23:25:19', '2021-09-24 23:25:19');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
CREATE TABLE IF NOT EXISTS `media` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  `collection_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` bigint UNSIGNED NOT NULL,
  `manipulations` json NOT NULL,
  `custom_properties` json NOT NULL,
  `responsive_images` json NOT NULL,
  `order_column` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_model_type_model_id_index` (`model_type`,`model_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(7, 'App\\Models\\Upload', 7, 'avatar', 'avatar-admin-lg', 'avatar-admin-lg.png', 'image/png', 'public', 10715, '[]', '{\"uuid\": \"4059a488-edae-4d82-8546-ef2550baea3f\", \"user_id\": 1, \"generated_conversions\": {\"icon\": true, \"thumb\": true}}', '[]', 6, '2021-09-25 07:24:39', '2021-09-25 07:24:39'),
(6, 'App\\Models\\Upload', 6, 'app_logo', 'Aii_Logo_Final-04', 'Aii_Logo_Final-04.png', 'image/png', 'public', 37090, '[]', '{\"uuid\": \"c8e2e17d-3d51-4056-89fd-9d535367222d\", \"user_id\": 1, \"generated_conversions\": {\"icon\": true, \"thumb\": true}}', '[]', 5, '2021-09-25 03:13:42', '2021-09-25 03:13:43'),
(9, 'App\\Models\\Upload', 8, 'avatar', 'avatar-j', 'avatar-j.png', 'image/png', 'public', 3099, '[]', '{\"uuid\": \"28870635-3e9d-4481-8768-39dd446ae9a3\", \"user_id\": 1, \"generated_conversions\": {\"icon\": true, \"thumb\": true}}', '[]', 8, '2021-09-25 20:56:33', '2021-09-25 20:56:33'),
(14, 'App\\Models\\User', 1, 'avatar', 'avatar-admin-lg', 'avatar-admin-lg.png', 'image/png', 'public', 10715, '[]', '{\"uuid\": \"4059a488-edae-4d82-8546-ef2550baea3f\", \"user_id\": 1, \"generated_conversions\": {\"icon\": true, \"thumb\": true}}', '[]', 12, '2021-09-26 08:33:30', '2021-09-26 08:33:30'),
(13, 'App\\Models\\User', 13, 'avatar', 'avatar-admin-lg', 'avatar-admin-lg.png', 'image/png', 'public', 10715, '[]', '{\"uuid\": \"4059a488-edae-4d82-8546-ef2550baea3f\", \"user_id\": 1, \"generated_conversions\": {\"icon\": true, \"thumb\": true}}', '[]', 11, '2021-09-26 08:32:24', '2021-09-26 08:32:24');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2021_09_24_053142_create_permission_tables', 1),
(4, '2021_09_24_054055_create_media_table', 1),
(5, '2021_09_24_054154_create_uploads_table', 1),
(6, '2021_09_24_082616_create_settings_table', 1),
(7, '2021_09_25_031057_create_custom_fields_table', 2),
(8, '2021_09_25_031140_create_custom_field_values_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` int UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_type_model_id_index` (`model_type`,`model_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` int UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_type_model_id_index` (`model_type`,`model_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 13),
(4, 'App\\Models\\User', 3),
(4, 'App\\Models\\User', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'users.profile', 'web', '2021-03-29 07:58:02', '2021-03-29 07:58:02', NULL),
(2, 'dashboard', 'web', '2021-03-29 07:58:02', '2021-03-29 07:58:02', NULL),
(3, 'medias.create', 'web', '2021-03-29 07:58:02', '2021-03-29 07:58:02', NULL),
(4, 'medias.delete', 'web', '2021-03-29 07:58:02', '2021-03-29 07:58:02', NULL),
(5, 'medias', 'web', '2021-03-29 07:58:03', '2021-03-29 07:58:03', NULL),
(6, 'permissions.index', 'web', '2021-03-29 07:58:03', '2021-03-29 07:58:03', NULL),
(7, 'permissions.edit', 'web', '2021-03-29 07:58:03', '2021-03-29 07:58:03', NULL),
(8, 'permissions.update', 'web', '2021-03-29 07:58:03', '2021-03-29 07:58:03', NULL),
(9, 'permissions.destroy', 'web', '2021-03-29 07:58:03', '2021-03-29 07:58:03', NULL),
(10, 'roles.index', 'web', '2021-03-29 07:58:03', '2021-03-29 07:58:03', NULL),
(11, 'roles.edit', 'web', '2021-03-29 07:58:03', '2021-03-29 07:58:03', NULL),
(12, 'roles.update', 'web', '2021-03-29 07:58:03', '2021-03-29 07:58:03', NULL),
(13, 'roles.destroy', 'web', '2021-03-29 07:58:03', '2021-03-29 07:58:03', NULL),
(14, 'customFields.index', 'web', '2021-03-29 07:58:03', '2021-03-29 07:58:03', NULL),
(15, 'customFields.create', 'web', '2021-03-29 07:58:03', '2021-03-29 07:58:03', NULL),
(16, 'customFields.store', 'web', '2021-03-29 07:58:03', '2021-03-29 07:58:03', NULL),
(17, 'customFields.show', 'web', '2021-03-29 07:58:03', '2021-03-29 07:58:03', NULL),
(18, 'customFields.edit', 'web', '2021-03-29 07:58:03', '2021-03-29 07:58:03', NULL),
(19, 'customFields.update', 'web', '2021-03-29 07:58:04', '2021-03-29 07:58:04', NULL),
(20, 'customFields.destroy', 'web', '2021-03-29 07:58:04', '2021-03-29 07:58:04', NULL),
(21, 'users.login-as-user', 'web', '2021-03-29 07:58:04', '2021-03-29 07:58:04', NULL),
(22, 'users.index', 'web', '2021-03-29 07:58:04', '2021-03-29 07:58:04', NULL),
(23, 'users.create', 'web', '2021-03-29 07:58:04', '2021-03-29 07:58:04', NULL),
(24, 'users.store', 'web', '2021-03-29 07:58:04', '2021-03-29 07:58:04', NULL),
(25, 'users.show', 'web', '2021-03-29 07:58:04', '2021-03-29 07:58:04', NULL),
(26, 'users.edit', 'web', '2021-03-29 07:58:04', '2021-03-29 07:58:04', NULL),
(27, 'users.update', 'web', '2021-03-29 07:58:04', '2021-03-29 07:58:04', NULL),
(28, 'users.destroy', 'web', '2021-03-29 07:58:04', '2021-03-29 07:58:04', NULL),
(29, 'app-settings', 'web', '2021-03-29 07:58:04', '2021-03-29 07:58:04', NULL),
(158, 'permissions.create', 'web', '2021-03-29 07:59:15', '2021-03-29 07:59:15', NULL),
(159, 'permissions.store', 'web', '2021-03-29 07:59:15', '2021-03-29 07:59:15', NULL),
(160, 'permissions.show', 'web', '2021-03-29 07:59:15', '2021-03-29 07:59:15', NULL),
(161, 'roles.create', 'web', '2021-03-29 07:59:15', '2021-03-29 07:59:15', NULL),
(162, 'roles.store', 'web', '2021-03-29 07:59:15', '2021-03-29 07:59:15', NULL),
(163, 'roles.show', 'web', '2021-03-29 07:59:16', '2021-03-29 07:59:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `default` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `default`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'administrator', 'web', 0, '2018-07-21 09:37:56', '2021-09-26 06:31:50', NULL),
(3, 'manager', 'web', 0, '2019-09-07 15:41:38', '2019-09-07 15:41:38', NULL),
(4, 'teacher', 'web', 1, '2019-09-07 15:41:54', '2019-09-07 15:41:54', NULL),
(5, 'cashier', 'web', 0, '2019-12-15 11:50:21', '2019-12-15 11:50:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` int UNSIGNED NOT NULL,
  `role_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 2),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(5, 2),
(5, 3),
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
(27, 3),
(27, 4),
(27, 5),
(28, 2),
(29, 2),
(30, 2),
(30, 3),
(30, 4),
(30, 5),
(31, 2),
(31, 3),
(31, 4),
(32, 2),
(32, 3),
(32, 4),
(33, 2),
(33, 3),
(34, 2),
(34, 3),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(42, 3),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(48, 3),
(48, 5),
(50, 2),
(51, 2),
(52, 2),
(52, 3),
(52, 4),
(52, 5),
(53, 2),
(53, 3),
(54, 2),
(54, 3),
(55, 2),
(55, 3),
(57, 2),
(57, 3),
(58, 2),
(58, 3),
(59, 2),
(59, 3),
(60, 2),
(60, 3),
(61, 2),
(61, 3),
(62, 2),
(62, 3),
(63, 2),
(63, 3),
(64, 2),
(64, 3),
(64, 4),
(64, 5),
(67, 2),
(67, 3),
(67, 4),
(67, 5),
(68, 2),
(68, 3),
(68, 4),
(68, 5),
(69, 2),
(76, 2),
(76, 3),
(77, 2),
(77, 3),
(78, 2),
(78, 3),
(80, 2),
(80, 3),
(81, 2),
(81, 3),
(82, 2),
(82, 3),
(83, 2),
(83, 3),
(83, 4),
(83, 5),
(85, 2),
(86, 2),
(86, 3),
(86, 4),
(86, 5),
(87, 2),
(88, 2),
(89, 2),
(90, 2),
(91, 2),
(92, 2),
(92, 3),
(92, 4),
(92, 5),
(95, 2),
(95, 3),
(95, 4),
(95, 5),
(96, 2),
(96, 3),
(96, 4),
(96, 5),
(97, 2),
(98, 2),
(98, 3),
(98, 4),
(98, 5),
(103, 2),
(103, 3),
(103, 4),
(103, 5),
(114, 2),
(114, 3),
(114, 4),
(114, 5),
(117, 2),
(117, 3),
(117, 4),
(117, 5),
(118, 2),
(119, 2),
(120, 2),
(121, 2),
(122, 2),
(123, 2),
(124, 2),
(127, 2),
(128, 2),
(129, 2),
(130, 2),
(130, 3),
(130, 5),
(131, 2),
(134, 2),
(134, 3),
(135, 2),
(135, 3),
(137, 2),
(137, 3),
(138, 2),
(144, 2),
(144, 5),
(145, 2),
(145, 3),
(145, 5),
(146, 2),
(146, 3),
(146, 5),
(148, 2),
(149, 2),
(151, 2),
(151, 3),
(152, 2),
(152, 3),
(153, 2),
(153, 3),
(155, 2),
(156, 2),
(158, 2),
(159, 2),
(160, 2),
(161, 2),
(162, 2),
(163, 2),
(164, 2),
(164, 3),
(164, 4),
(164, 5),
(165, 2),
(166, 2),
(167, 2),
(168, 2),
(169, 2),
(170, 2),
(170, 3),
(171, 2),
(171, 3),
(172, 2),
(172, 3),
(173, 2),
(174, 2),
(175, 2),
(182, 2),
(182, 3),
(182, 4);

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

DROP TABLE IF EXISTS `uploads`;
CREATE TABLE IF NOT EXISTS `uploads` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `uuid`, `created_at`, `updated_at`) VALUES
(2, 'a897e9e5-c77d-4a3e-9878-c4b1317c9062', '2021-09-25 02:47:07', '2021-09-25 02:47:07'),
(3, '7ee60ed9-72b1-4b17-a8cd-178f5c8bedee', '2021-09-25 02:47:12', '2021-09-25 02:47:12'),
(4, '878b7e6e-a482-4bd3-b25c-25fc3c12fe80', '2021-09-25 02:48:19', '2021-09-25 02:48:19'),
(8, '28870635-3e9d-4481-8768-39dd446ae9a3', '2021-09-25 20:56:33', '2021-09-25 20:56:33'),
(6, 'c8e2e17d-3d51-4056-89fd-9d535367222d', '2021-09-25 03:13:42', '2021-09-25 03:13:42'),
(7, '4059a488-edae-4d82-8546-ef2550baea3f', '2021-09-25 07:24:39', '2021-09-25 07:24:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` char(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_api_token_unique` (`api_token`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `api_token`, `device_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Chum Vit', 'chumvit.web@gmail.com', '$2y$10$HpNBol3YaLeSOQK4c0f5ke6x1BNEia5I8ttA4wRkP9s68udTJqWiK', 'PivvPlsQWxPl1bB5KrbKNBuraJit0PrUZekQUgtLyTRuyBq921atFtoR1HuA', NULL, 'tbG4lVNRKFhRFcx3eJduvyK9LbxJq12hETVgdWxGnXc0J48zW75YqmTm8Wq6', '2021-08-06 15:58:41', '2021-09-13 00:49:45'),
(13, 'admin', 'admin@demo.com', '$2y$10$ahgdkCyeWSeDnbn5VpAhXuOdXeLJ1D8VNjhQX81ix6D7pQs0SHJta', 'yt5ypSB92ip9eoj5GpDTmdlPzfKPNNg8NwoKEop84y1QDlOoZCrUr7XmIB9h', NULL, NULL, '2021-09-26 08:26:02', '2021-09-26 08:26:02');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
