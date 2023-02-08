-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 08, 2023 at 12:02 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webartisan`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int UNSIGNED NOT NULL,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `order` int NOT NULL DEFAULT '1',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(2, NULL, 1, 'Category 2', 'category-2', '2022-11-19 23:23:26', '2022-11-19 23:23:26');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int UNSIGNED NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci,
  `logo` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int UNSIGNED NOT NULL,
  `data_type_id` int UNSIGNED NOT NULL,
  `field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'icon', 'text', 'Icon', 0, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(59, 7, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(60, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(61, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(62, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(63, 8, 'icon', 'text', 'Icon', 0, 1, 1, 1, 1, 1, '{}', 2),
(64, 8, 'Price', 'text', 'Price', 0, 1, 1, 1, 1, 1, '{}', 4),
(65, 8, 'description', 'markdown_editor', 'Description', 0, 1, 1, 1, 1, 1, '{}', 5),
(66, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(67, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(68, 8, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(69, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(70, 9, 'start_date', 'date', 'Start Date', 0, 1, 1, 1, 1, 1, '{}', 2),
(71, 9, 'end_date', 'date', 'End Date', 0, 1, 1, 1, 1, 1, '{}', 3),
(72, 9, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 4),
(73, 9, 'text', 'rich_text_box', 'Text', 0, 1, 1, 1, 1, 1, '{}', 5),
(74, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(75, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(76, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(77, 10, 'start_date', 'date', 'Start Date', 0, 1, 1, 1, 1, 1, '{}', 2),
(78, 10, 'end_date', 'date', 'End Date', 0, 1, 1, 1, 1, 1, '{}', 3),
(79, 10, 'institute_name', 'text', 'Institute Name', 0, 1, 1, 1, 1, 1, '{}', 4),
(80, 10, 'details', 'rich_text_box', 'Details', 0, 1, 1, 1, 1, 1, '{}', 5),
(81, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(82, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(83, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(84, 11, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(85, 11, 'percentage', 'text', 'Percentage', 0, 1, 1, 1, 1, 1, '{}', 3),
(86, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(87, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(88, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(89, 12, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(90, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(91, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(92, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(93, 13, 'profile', 'image', 'Profile', 0, 1, 1, 1, 1, 1, '{}', 2),
(94, 13, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 3),
(95, 13, 'designation', 'text', 'Designation', 0, 1, 1, 1, 1, 1, '{}', 4),
(96, 13, 'fb_link', 'text', 'Fb Link', 0, 1, 1, 1, 1, 1, '{}', 5),
(97, 13, 'insta_link', 'text', 'Insta Link', 0, 1, 1, 1, 1, 1, '{}', 6),
(98, 13, 'git_link', 'text', 'Git Link', 0, 1, 1, 1, 1, 1, '{}', 7),
(99, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(100, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(101, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(102, 14, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 2),
(103, 14, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 3),
(104, 14, 'designation', 'text', 'Designation', 0, 1, 1, 1, 1, 1, '{}', 4),
(105, 14, 'details', 'text_area', 'Details', 0, 1, 1, 1, 1, 1, '{}', 5),
(106, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(107, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(108, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(109, 15, 'url', 'text', 'Url', 0, 1, 1, 1, 1, 1, '{}', 2),
(110, 15, 'logo', 'image', 'Logo', 0, 1, 1, 1, 1, 1, '{}', 3),
(111, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(112, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2022-11-19 23:23:25', '2022-11-19 23:23:25'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-11-19 23:23:25', '2022-11-19 23:23:25'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-11-19 23:23:25', '2022-11-19 23:23:25'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(7, 'services', 'services', 'Service', 'Services', 'voyager-params', 'App\\Service', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-11-20 03:00:55', '2022-11-20 03:00:55'),
(8, 'pricings', 'pricings', 'Pricing', 'Pricings', 'voyager-dollar', 'App\\Pricing', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-11-20 05:09:05', '2022-11-20 05:20:02'),
(9, 'experiences', 'experiences', 'Experience', 'Experiences', 'voyager-medal-rank-star', 'App\\Experience', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-02-08 05:06:44', '2023-02-08 05:12:27'),
(10, 'education', 'education', 'Education', 'Education', 'voyager-book', 'App\\Education', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-02-08 05:11:48', '2023-02-08 05:11:48'),
(11, 'skills', 'skills', 'Skill', 'Skills', 'voyager-params', 'App\\Skill', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-02-08 05:25:26', '2023-02-08 05:25:26'),
(12, 'knowledge', 'knowledge', 'Knowledge', 'Knowledge', 'voyager-receipt', 'App\\Knowledge', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-02-08 05:40:36', '2023-02-08 05:40:36'),
(13, 'teams', 'teams', 'Team', 'Teams', 'voyager-people', 'App\\Team', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-02-08 05:49:36', '2023-02-08 05:49:36'),
(14, 'testimonials', 'testimonials', 'Testimonial', 'Testimonials', 'voyager-paw', 'App\\Testimonial', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-02-08 05:55:33', '2023-02-08 05:55:33'),
(15, 'clients', 'clients', 'Client', 'Clients', 'voyager-pizza', 'App\\Client', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-02-08 05:59:53', '2023-02-08 05:59:53');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int UNSIGNED NOT NULL,
  `start_date` year DEFAULT NULL,
  `end_date` year DEFAULT NULL,
  `institute_name` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

CREATE TABLE `experiences` (
  `id` int UNSIGNED NOT NULL,
  `start_date` year DEFAULT NULL,
  `end_date` year DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `text` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `knowledge`
--

CREATE TABLE `knowledge` (
  `id` int UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-11-19 23:23:25', '2022-11-19 23:23:25');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int UNSIGNED NOT NULL,
  `menu_id` int UNSIGNED DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2022-11-19 23:23:25', '2022-11-19 23:23:25', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2022-11-19 23:23:25', '2022-11-19 23:23:25', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2022-11-19 23:23:25', '2022-11-19 23:23:25', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2022-11-19 23:23:25', '2022-11-19 23:23:25', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2022-11-19 23:23:25', '2022-11-19 23:23:25', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2022-11-19 23:23:25', '2022-11-19 23:23:25', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2022-11-19 23:23:25', '2022-11-19 23:23:25', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2022-11-19 23:23:25', '2022-11-19 23:23:25', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2022-11-19 23:23:25', '2022-11-19 23:23:25', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2022-11-19 23:23:25', '2022-11-19 23:23:25', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2022-11-19 23:23:26', '2022-11-19 23:23:26', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2022-11-19 23:23:26', '2022-11-19 23:23:26', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2022-11-19 23:23:26', '2022-11-19 23:23:26', 'voyager.pages.index', NULL),
(14, 1, 'Services', '', '_self', 'voyager-params', NULL, NULL, 15, '2022-11-20 03:00:55', '2022-11-20 03:00:55', 'voyager.services.index', NULL),
(15, 1, 'Pricings', '', '_self', 'voyager-dollar', NULL, NULL, 16, '2022-11-20 05:09:05', '2022-11-20 05:09:05', 'voyager.pricings.index', NULL),
(16, 1, 'Experiences', '', '_self', 'voyager-medal-rank-star', NULL, NULL, 17, '2023-02-08 05:06:44', '2023-02-08 05:06:44', 'voyager.experiences.index', NULL),
(17, 1, 'Education', '', '_self', 'voyager-book', NULL, NULL, 18, '2023-02-08 05:11:48', '2023-02-08 05:11:48', 'voyager.education.index', NULL),
(18, 1, 'Skills', '', '_self', 'voyager-params', NULL, NULL, 19, '2023-02-08 05:25:32', '2023-02-08 05:25:32', 'voyager.skills.index', NULL),
(19, 1, 'Knowledge', '', '_self', 'voyager-receipt', NULL, NULL, 20, '2023-02-08 05:40:42', '2023-02-08 05:40:42', 'voyager.knowledge.index', NULL),
(20, 1, 'Teams', '', '_self', 'voyager-people', NULL, NULL, 21, '2023-02-08 05:49:41', '2023-02-08 05:49:41', 'voyager.teams.index', NULL),
(21, 1, 'Testimonials', '', '_self', 'voyager-paw', NULL, NULL, 22, '2023-02-08 05:55:35', '2023-02-08 05:55:35', 'voyager.testimonials.index', NULL),
(22, 1, 'Clients', '', '_self', 'voyager-pizza', NULL, NULL, 23, '2023-02-08 05:59:54', '2023-02-08 05:59:54', 'voyager.clients.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2016_01_01_000000_create_pages_table', 2),
(26, '2016_01_01_000000_create_posts_table', 2),
(27, '2016_02_15_204651_create_categories_table', 2),
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `pricing_id` bigint DEFAULT NULL,
  `f_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` decimal(8,2) DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_gateway` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipped` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `pricing_id`, `f_name`, `l_name`, `post_code`, `email`, `total`, `phone`, `city`, `payment_gateway`, `shipped`, `created_at`, `updated_at`, `status`, `address`) VALUES
(82, 1, 'Donna Compton', 'dahuluj@mailinator.com', 'Mollit corporis mini', 'jazixari@mailinator.com', '100.00', '+1 (308) 763-8053', 'Ad enim dolore magna', NULL, NULL, '2022-11-20 12:30:15', '2022-11-20 12:30:15', NULL, 'Ea blanditiis corrup'),
(83, 1, 'Gabriel Welch', 'kigobafi@mailinator.com', 'Voluptatum est quae', 'pibu@mailinator.com', '100.00', '+1 (848) 971-1409', 'Esse asperiores qui', NULL, NULL, '2022-11-20 13:05:56', '2022-11-20 13:05:56', NULL, 'Tenetur cupidatat no'),
(84, 1, 'Ezekiel Wood', 'jubisub@mailinator.com', 'Vero ipsam possimus', 'sisidysef@mailinator.com', '100.00', '+1 (254) 847-6313', 'Suscipit dolor eaque', NULL, NULL, '2022-11-20 13:07:23', '2022-11-20 13:07:23', NULL, 'Ut commodi voluptatu'),
(85, 2, 'Drew Bridges', 'malahof@mailinator.com', 'Perferendis dolore e', 'tesigo@mailinator.com', '200.00', '+1 (374) 368-6044', 'Consequuntur corrupt', NULL, NULL, '2022-11-20 18:19:45', '2022-11-20 18:19:45', NULL, 'In adipisicing minus'),
(86, 2, 'Ahmed', 'Tamim', '8200', 'ahmed@gmail.com', '200.00', '01305065919', 'Barisal', NULL, NULL, '2022-11-20 18:26:09', '2022-11-20 18:26:09', NULL, 'Barisal sadar road'),
(87, 1, 'AS Alamin', 'Sikder', '8222', 'asalaminsikder8@gmail.com', '100.00', '01319828234', 'Barisal', NULL, NULL, '2022-11-20 18:27:18', '2022-11-20 18:27:18', NULL, 'Barisal'),
(88, 1, 'Daniel', 'Dodson', 'Ut amet excepturi m', 'tesigo@mailinator.com', '100.00', '+19582857697', 'Ut distinctio Ex ea', NULL, NULL, '2022-11-20 18:28:15', '2022-11-20 18:28:15', NULL, 'Dolores laborum nost'),
(89, 2, 'AS. Alamin', 'Sikder', '8222', 'asalaminsikder8@gmail.com', '200.00', '01319828234', 'Barisal', NULL, NULL, '2022-11-20 18:28:31', '2022-11-20 18:28:31', NULL, 'Barisal'),
(90, 1, 'Ulric Robinson', 'Caryn Ryan', 'Corrupti tempore d', 'helo@mailinator.com', '100.00', '+1 (452) 727-9815', 'In perferendis qui e', NULL, NULL, '2022-11-21 06:29:39', '2022-11-21 06:29:39', NULL, 'Eiusmod voluptatem');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int UNSIGNED NOT NULL,
  `author_id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2022-11-19 23:23:26', '2022-11-19 23:23:26');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2022-11-19 23:23:25', '2022-11-19 23:23:25'),
(2, 'browse_bread', NULL, '2022-11-19 23:23:25', '2022-11-19 23:23:25'),
(3, 'browse_database', NULL, '2022-11-19 23:23:25', '2022-11-19 23:23:25'),
(4, 'browse_media', NULL, '2022-11-19 23:23:25', '2022-11-19 23:23:25'),
(5, 'browse_compass', NULL, '2022-11-19 23:23:25', '2022-11-19 23:23:25'),
(6, 'browse_menus', 'menus', '2022-11-19 23:23:25', '2022-11-19 23:23:25'),
(7, 'read_menus', 'menus', '2022-11-19 23:23:25', '2022-11-19 23:23:25'),
(8, 'edit_menus', 'menus', '2022-11-19 23:23:25', '2022-11-19 23:23:25'),
(9, 'add_menus', 'menus', '2022-11-19 23:23:25', '2022-11-19 23:23:25'),
(10, 'delete_menus', 'menus', '2022-11-19 23:23:25', '2022-11-19 23:23:25'),
(11, 'browse_roles', 'roles', '2022-11-19 23:23:25', '2022-11-19 23:23:25'),
(12, 'read_roles', 'roles', '2022-11-19 23:23:25', '2022-11-19 23:23:25'),
(13, 'edit_roles', 'roles', '2022-11-19 23:23:25', '2022-11-19 23:23:25'),
(14, 'add_roles', 'roles', '2022-11-19 23:23:25', '2022-11-19 23:23:25'),
(15, 'delete_roles', 'roles', '2022-11-19 23:23:25', '2022-11-19 23:23:25'),
(16, 'browse_users', 'users', '2022-11-19 23:23:25', '2022-11-19 23:23:25'),
(17, 'read_users', 'users', '2022-11-19 23:23:25', '2022-11-19 23:23:25'),
(18, 'edit_users', 'users', '2022-11-19 23:23:25', '2022-11-19 23:23:25'),
(19, 'add_users', 'users', '2022-11-19 23:23:25', '2022-11-19 23:23:25'),
(20, 'delete_users', 'users', '2022-11-19 23:23:25', '2022-11-19 23:23:25'),
(21, 'browse_settings', 'settings', '2022-11-19 23:23:25', '2022-11-19 23:23:25'),
(22, 'read_settings', 'settings', '2022-11-19 23:23:25', '2022-11-19 23:23:25'),
(23, 'edit_settings', 'settings', '2022-11-19 23:23:25', '2022-11-19 23:23:25'),
(24, 'add_settings', 'settings', '2022-11-19 23:23:25', '2022-11-19 23:23:25'),
(25, 'delete_settings', 'settings', '2022-11-19 23:23:25', '2022-11-19 23:23:25'),
(26, 'browse_categories', 'categories', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(27, 'read_categories', 'categories', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(28, 'edit_categories', 'categories', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(29, 'add_categories', 'categories', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(30, 'delete_categories', 'categories', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(31, 'browse_posts', 'posts', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(32, 'read_posts', 'posts', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(33, 'edit_posts', 'posts', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(34, 'add_posts', 'posts', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(35, 'delete_posts', 'posts', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(36, 'browse_pages', 'pages', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(37, 'read_pages', 'pages', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(38, 'edit_pages', 'pages', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(39, 'add_pages', 'pages', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(40, 'delete_pages', 'pages', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(41, 'browse_services', 'services', '2022-11-20 03:00:55', '2022-11-20 03:00:55'),
(42, 'read_services', 'services', '2022-11-20 03:00:55', '2022-11-20 03:00:55'),
(43, 'edit_services', 'services', '2022-11-20 03:00:55', '2022-11-20 03:00:55'),
(44, 'add_services', 'services', '2022-11-20 03:00:55', '2022-11-20 03:00:55'),
(45, 'delete_services', 'services', '2022-11-20 03:00:55', '2022-11-20 03:00:55'),
(46, 'browse_pricings', 'pricings', '2022-11-20 05:09:05', '2022-11-20 05:09:05'),
(47, 'read_pricings', 'pricings', '2022-11-20 05:09:05', '2022-11-20 05:09:05'),
(48, 'edit_pricings', 'pricings', '2022-11-20 05:09:05', '2022-11-20 05:09:05'),
(49, 'add_pricings', 'pricings', '2022-11-20 05:09:05', '2022-11-20 05:09:05'),
(50, 'delete_pricings', 'pricings', '2022-11-20 05:09:05', '2022-11-20 05:09:05'),
(51, 'browse_experiences', 'experiences', '2023-02-08 05:06:44', '2023-02-08 05:06:44'),
(52, 'read_experiences', 'experiences', '2023-02-08 05:06:44', '2023-02-08 05:06:44'),
(53, 'edit_experiences', 'experiences', '2023-02-08 05:06:44', '2023-02-08 05:06:44'),
(54, 'add_experiences', 'experiences', '2023-02-08 05:06:44', '2023-02-08 05:06:44'),
(55, 'delete_experiences', 'experiences', '2023-02-08 05:06:44', '2023-02-08 05:06:44'),
(56, 'browse_education', 'education', '2023-02-08 05:11:48', '2023-02-08 05:11:48'),
(57, 'read_education', 'education', '2023-02-08 05:11:48', '2023-02-08 05:11:48'),
(58, 'edit_education', 'education', '2023-02-08 05:11:48', '2023-02-08 05:11:48'),
(59, 'add_education', 'education', '2023-02-08 05:11:48', '2023-02-08 05:11:48'),
(60, 'delete_education', 'education', '2023-02-08 05:11:48', '2023-02-08 05:11:48'),
(61, 'browse_skills', 'skills', '2023-02-08 05:25:31', '2023-02-08 05:25:31'),
(62, 'read_skills', 'skills', '2023-02-08 05:25:31', '2023-02-08 05:25:31'),
(63, 'edit_skills', 'skills', '2023-02-08 05:25:31', '2023-02-08 05:25:31'),
(64, 'add_skills', 'skills', '2023-02-08 05:25:31', '2023-02-08 05:25:31'),
(65, 'delete_skills', 'skills', '2023-02-08 05:25:31', '2023-02-08 05:25:31'),
(66, 'browse_knowledge', 'knowledge', '2023-02-08 05:40:41', '2023-02-08 05:40:41'),
(67, 'read_knowledge', 'knowledge', '2023-02-08 05:40:41', '2023-02-08 05:40:41'),
(68, 'edit_knowledge', 'knowledge', '2023-02-08 05:40:41', '2023-02-08 05:40:41'),
(69, 'add_knowledge', 'knowledge', '2023-02-08 05:40:41', '2023-02-08 05:40:41'),
(70, 'delete_knowledge', 'knowledge', '2023-02-08 05:40:41', '2023-02-08 05:40:41'),
(71, 'browse_teams', 'teams', '2023-02-08 05:49:39', '2023-02-08 05:49:39'),
(72, 'read_teams', 'teams', '2023-02-08 05:49:39', '2023-02-08 05:49:39'),
(73, 'edit_teams', 'teams', '2023-02-08 05:49:39', '2023-02-08 05:49:39'),
(74, 'add_teams', 'teams', '2023-02-08 05:49:39', '2023-02-08 05:49:39'),
(75, 'delete_teams', 'teams', '2023-02-08 05:49:39', '2023-02-08 05:49:39'),
(76, 'browse_testimonials', 'testimonials', '2023-02-08 05:55:34', '2023-02-08 05:55:34'),
(77, 'read_testimonials', 'testimonials', '2023-02-08 05:55:34', '2023-02-08 05:55:34'),
(78, 'edit_testimonials', 'testimonials', '2023-02-08 05:55:34', '2023-02-08 05:55:34'),
(79, 'add_testimonials', 'testimonials', '2023-02-08 05:55:34', '2023-02-08 05:55:34'),
(80, 'delete_testimonials', 'testimonials', '2023-02-08 05:55:34', '2023-02-08 05:55:34'),
(81, 'browse_clients', 'clients', '2023-02-08 05:59:53', '2023-02-08 05:59:53'),
(82, 'read_clients', 'clients', '2023-02-08 05:59:53', '2023-02-08 05:59:53'),
(83, 'edit_clients', 'clients', '2023-02-08 05:59:53', '2023-02-08 05:59:53'),
(84, 'add_clients', 'clients', '2023-02-08 05:59:53', '2023-02-08 05:59:53'),
(85, 'delete_clients', 'clients', '2023-02-08 05:59:53', '2023-02-08 05:59:53');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int UNSIGNED NOT NULL,
  `author_id` int NOT NULL,
  `category_id` int DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-11-19 23:23:26', '2022-11-19 23:23:26');

-- --------------------------------------------------------

--
-- Table structure for table `pricings`
--

CREATE TABLE `pricings` (
  `id` int UNSIGNED NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Price` decimal(10,0) DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pricings`
--

INSERT INTO `pricings` (`id`, `icon`, `Price`, `description`, `created_at`, `updated_at`, `title`) VALUES
(1, 'fas fa-star', '100', '<li>Web Development</li>\r\n  <li>Advetising</li>\r\n <li>Game Development</li>', '2022-11-20 05:13:00', '2022-11-20 05:20:45', 'Basic'),
(2, 'fas fa-space-shuttle', '200', '<li>Web Development</li> <li>Advetising</li> <li>Game Development</li>', '2022-11-20 13:10:55', '2022-11-20 13:10:55', 'Golden');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2022-11-19 23:23:25', '2022-11-19 23:23:25'),
(2, 'user', 'Normal User', '2022-11-19 23:23:25', '2022-11-19 23:23:25');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint UNSIGNED NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `icon`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'fas fa-code', 'Web Development', 'Modern and mobile-ready website that will help you reach all of your marketing.', '2022-11-20 03:02:09', '2022-11-20 03:02:09'),
(2, 'fas fa-mobile-alt', 'Android App', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley', '2022-11-20 03:06:00', '2022-11-20 03:07:06');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '1',
  `group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'hero.hero-title', 'hero Title', '<p>I code cool <strong>websites</strong></p>\r\n <p>I develop <strong>mobile apps</strong></p>\r\n <p>I love <strong>wordpress</strong></p>', NULL, 'markdown_editor', 6, 'Hero'),
(12, 'hero.hero_subtitle', 'Hero subtitle', 'Hello, I’m <strong>Ahmed Tamim</strong>, UX/UI Designer and <br />\r\n                    Front-end Developer Based in San Francisco.', NULL, 'markdown_editor', 7, 'Hero'),
(13, 'site.site_logo_text', 'Site logo text', 'Ahmed <strong>Tamim</strong>', NULL, 'text', 8, 'Site'),
(14, 'site.email', 'Site Email', 'ahmedtamim19050@gmail.com', NULL, 'text', 9, 'Site'),
(15, 'site.phone', 'Site Phone', '+8801305065919', NULL, 'text', 10, 'Site'),
(17, 'site.facebook', 'Site  Facebook', 'https://www.facebook.com/tamim.19050/', NULL, 'text', 11, 'Site'),
(18, 'site.instagram', 'Site Instagram', 'https://www.instagram.com/tamim.19050/', NULL, 'text', 12, 'Site'),
(19, 'site.github', 'Site Github', 'https://github.com/ahmedtamim19050', NULL, 'text', 13, 'Site'),
(20, 'site.linkid', 'Site Link Id', 'https://www.linkedin.com/in/ahmed-tamim-016b93192/', NULL, 'text', 14, 'Site'),
(21, 'hero.thubnail', 'Hero Thumbnail', 'settings/November2022/EDcKITWcZyzTRZM5UAPx.jpg', NULL, 'image', 15, 'Hero'),
(22, 'about.bio', 'Bio', 'Hello! I’m Ahmed Tamim. Web designer from Bangladesh, Barisal. I have rich experience in web site design and building, also I am good at Laravel. I love to talk with you about our unique.', NULL, 'text_area', 16, 'About'),
(23, 'about.age', 'age', '22', NULL, 'text', 17, 'About'),
(24, 'about.freelance', 'Freelance', '0', NULL, 'checkbox', 18, 'About'),
(25, 'about.image', 'image', 'settings/November2022/xpbTSQSOjteTOUzVTeO7.jpg', NULL, 'image', 19, 'About'),
(26, 'about.cv', 'CV', '[{\"download_link\":\"settings\\/November2022\\/U9vD4KtfSnYjycXPGJbm.txt\",\"original_name\":\"hostinger (2).txt\"}]', NULL, 'file', 20, 'About'),
(27, 'about.residence', 'Residence', 'Bangladesh', NULL, 'text', 21, 'About'),
(28, 'about.address', 'Address', 'Nathullabad,Barisal', NULL, 'text', 22, 'About');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `percentage` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int UNSIGNED NOT NULL,
  `profile` text COLLATE utf8mb4_unicode_ci,
  `name` text COLLATE utf8mb4_unicode_ci,
  `designation` text COLLATE utf8mb4_unicode_ci,
  `fb_link` text COLLATE utf8mb4_unicode_ci,
  `insta_link` text COLLATE utf8mb4_unicode_ci,
  `git_link` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `name` text COLLATE utf8mb4_unicode_ci,
  `designation` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int UNSIGNED NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2022-11-19 23:23:26', '2022-11-19 23:23:26'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2022-11-19 23:23:26', '2022-11-19 23:23:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$cUfYOLaZatFblK4VBh9bTOD3o10z6w.mI/jq3thlWSN6DzV2pHug2', 'Fy7w5Oe2weUUjPBTii5ay9ORElohqAnPZTS0WRaR8X8nsBf8h177Al1r9anH', NULL, '2022-11-19 23:23:26', '2022-11-19 23:23:26');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `knowledge`
--
ALTER TABLE `knowledge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

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
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `pricings`
--
ALTER TABLE `pricings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `knowledge`
--
ALTER TABLE `knowledge`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pricings`
--
ALTER TABLE `pricings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
