-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 27, 2020 at 04:23 PM
-- Server version: 5.7.27-log
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xtt4q_20test_018`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'WordPress コメントの投稿者', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-06-26 16:35:13', '2020-06-26 07:35:13', 'こんにちは、これはコメントです。\nコメントの承認、編集、削除を始めるにはダッシュボードの「コメント画面」にアクセスしてください。\nコメントのアバターは「<a href=\"https://gravatar.com\">Gravatar</a>」から取得されます。', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_duplicator_packages`
--

CREATE TABLE `wp_duplicator_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://20test-018.kslink.tech', 'yes'),
(2, 'home', 'http://20test-018.kslink.tech', 'yes'),
(3, 'blogname', 'Pet01', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'ducmonmz@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'Y-m-d', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'Y年n月j日 g:i A', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:25:\"duplicator/duplicator.php\";i:2;s:24:\"wordpress-seo/wp-seo.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'kslink-pet01', 'yes'),
(41, 'stylesheet', 'kslink-pet01', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '47018', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '0', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '2000', 'yes'),
(59, 'thumbnail_size_h', '2000', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '2000', 'yes'),
(62, 'medium_size_h', '2000', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '2000', 'yes'),
(65, 'large_size_h', '2000', 'yes'),
(66, 'image_default_link_type', '', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:6:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:40:\"締麗を引き出す ペットサロン\";s:4:\"text\";s:627:\"<img class=\"alignnone size-full wp-image-36\" src=\"http://20test-018.kslink.tech/wp-content/uploads/2020/06/home-section-2.jpg\" alt=\"\" width=\"383\" height=\"369\" />\r\n\r\ntrimmirg salon WONDERは，\r\n\r\n大切な家族の一員であるわんちゃんの本来の椅麗を\r\n\r\n引き出して、家族みんなが笑顔になれるペットサロンです。\r\n\r\n<p align=\"right\"><a class=\"btn btn-light\" href=\"http://20test-018.kslink.tech/\">read more ＞＞</a></p>\r\n\r\n<img class=\"alignnone size-full wp-image-37\" src=\"http://20test-018.kslink.tech/wp-content/uploads/2020/06/home-section-3-top.jpg\" alt=\"\" width=\"266\" height=\"265\" />\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:24:\"トリミングとは？\";s:4:\"text\";s:269:\"そもそもトリミングってなに？\r\n\r\nどうして必要なの？\r\n\r\nわんちゃんの為に必要なトリミングについての 些細な疑「」にお答えします。\r\n\r\n<a class=\"bt btn-light\" href=\"http://20test-018.kslink.tech/\">read more ＞＞</a>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:12:\"店舗清報\";s:4:\"text\";s:807:\"<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n  <tbody>\r\n  <tr>\r\n  <td>\r\n  <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n  <tbody>\r\n  <tr>\r\n  <td>店舗名</td>\r\n  <td>trimming salon WONDER</td>\r\n  </tr>\r\n  <tr>\r\n  <td>住所</td>\r\n  <td><a href=\"#\" target=\"_blank\">札幌市中央区北〇〇西〇〇</a></td>\r\n  </tr>\r\n  <tr>\r\n  <td>営業時間</td>\r\n  <td>10:00 ~ 10:00</td>\r\n  </tr>\r\n  <tr>\r\n  <td>定休日</td>\r\n  <td>火曜日</td>\r\n  </tr>\r\n  <tr>\r\n  <td>電話番号</td>\r\n  <td><a href=\"tel:000 000 0000\">000 000 0000</a></td>\r\n  </tr>\r\n  </tbody>\r\n  </table>\r\n  </td>\r\n  <td><img class=\"alignnone size-full wp-image-49\" src=\"http://20test-018.kslink.tech/wp-content/uploads/2020/06/home-section-5-map.jpg\" alt=\"\" width=\"434\" height=\"259\" /></td>\r\n  </tr>\r\n  </tbody>\r\n  </table>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:30:\"ご予約・お問い合わせ\";s:4:\"text\";s:161:\"トリミングのご子約はニちらの電話番号へご連絡ください。\r\n\r\n<a href=\"tel:000-000-0000\">000-000-0000</a>\r\n\r\n受付時問　10:00 ～18:00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Asia/Tokyo', 'yes'),
(83, 'page_for_posts', '7', 'yes'),
(84, 'page_on_front', '2', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1608708912', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'ja', 'yes'),
(98, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:1:{i:0;s:13:\"media_image-2\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-2\";}s:9:\"sidebar-3\";a:2:{i:0;s:13:\"media_image-5\";i:1;s:6:\"text-3\";}s:9:\"sidebar-5\";a:1:{i:0;s:6:\"text-4\";}s:9:\"sidebar-6\";a:2:{i:0;s:13:\"media_image-4\";i:1;s:6:\"text-5\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:9:{i:1593275714;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1593286514;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1593329714;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1593329756;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1593329757;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1593329928;a:1:{s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1593761926;a:1:{s:16:\"wpseo_ryte_fetch\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1593848114;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:4:{i:2;a:15:{s:4:\"size\";s:4:\"full\";s:5:\"width\";i:1047;s:6:\"height\";i:557;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";s:13:\"attachment_id\";i:35;s:3:\"url\";s:75:\"http://20test-018.kslink.tech/wp-content/uploads/2020/06/home-section-1.png\";s:5:\"title\";s:21:\"trimming salon WONDER\";}i:4;a:15:{s:4:\"size\";s:4:\"full\";s:5:\"width\";i:489;s:6:\"height\";i:446;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";s:13:\"attachment_id\";i:50;s:3:\"url\";s:75:\"http://20test-018.kslink.tech/wp-content/uploads/2020/06/home-section-6.jpg\";s:5:\"title\";s:0:\"\";}i:5;a:15:{s:4:\"size\";s:4:\"full\";s:5:\"width\";i:268;s:6:\"height\";i:350;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";s:13:\"attachment_id\";i:38;s:3:\"url\";s:75:\"http://20test-018.kslink.tech/wp-content/uploads/2020/06/home-section-3.jpg\";s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:1:{s:22:\"SXXZsMnA4lAOSHnqxdrEOC\";a:2:{s:10:\"hashed_key\";s:34:\"$P$B0iJW4jSo0J0o203eYie1opQavSGLx.\";s:10:\"created_at\";i:1593183789;}}', 'yes'),
(117, 'theme_mods_twentytwenty', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1593176451;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(135, 'can_compress_scripts', '1', 'no'),
(154, 'recently_activated', 'a:1:{s:31:\"query-monitor/query-monitor.php\";i:1593274255;}', 'yes'),
(155, 'duplicator_settings', 'a:17:{s:7:\"version\";s:6:\"1.3.36\";s:18:\"uninstall_settings\";b:1;s:15:\"uninstall_files\";b:1;s:16:\"uninstall_tables\";b:1;s:13:\"package_debug\";b:0;s:17:\"package_mysqldump\";b:1;s:22:\"package_mysqldump_path\";s:0:\"\";s:24:\"package_phpdump_qrylimit\";s:3:\"100\";s:17:\"package_zip_flush\";b:0;s:19:\"installer_name_mode\";s:6:\"simple\";s:16:\"storage_position\";s:6:\"wpcont\";s:20:\"storage_htaccess_off\";b:0;s:18:\"archive_build_mode\";i:2;s:17:\"skip_archive_scan\";b:0;s:21:\"unhook_third_party_js\";b:0;s:22:\"unhook_third_party_css\";b:0;s:17:\"active_package_id\";i:1;}', 'yes'),
(156, 'duplicator_lite_inst_hash_notice', '1', 'yes'),
(157, 'duplicator_version_plugin', '1.3.36', 'yes'),
(158, 'wpseo', 'a:26:{s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:25:\"ignore_indexation_warning\";b:0;s:29:\"indexation_warning_hide_until\";b:0;s:18:\"indexation_started\";b:0;s:7:\"version\";s:6:\"14.4.1\";s:16:\"previous_version\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1593157126;s:13:\"myyoast-oauth\";b:0;}', 'yes'),
(159, 'wpseo_titles', 'a:70:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:45:\"%%name%% (%%sitename%% の投稿者) %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:60:\"検索結果: %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:63:\"ページが見つかりませんでした %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:73:\"投稿 %%POSTLINK%% は %%BLOGLINK%% に最初に表示されました。\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:51:\"エラー 404: ページが見つかりません。\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:16:\"アーカイブ:\";s:18:\"breadcrumbs-enable\";b:0;s:16:\"breadcrumbs-home\";s:9:\"ホーム\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:13:\"検索結果:\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:14:\"person_logo_id\";i:0;s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:15:\"company_logo_id\";i:0;s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:18:\"title-tax-category\";s:60:\"%%term_title%% アーカイブ %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:60:\"%%term_title%% アーカイブ %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:60:\"%%term_title%% アーカイブ %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;}', 'yes'),
(160, 'wpseo_social', 'a:19:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}', 'yes'),
(161, 'wpseo_flush_rewrite', '1', 'yes'),
(162, 'yoast_migrations_free', 'a:1:{s:7:\"version\";s:6:\"14.4.1\";}', 'yes'),
(168, 'wpseo_ryte', 'a:2:{s:6:\"status\";i:-1;s:10:\"last_fetch\";i:1593157129;}', 'yes'),
(169, 'acf_version', '5.8.12', 'yes'),
(176, 'rewrite_rules', 'a:113:{s:13:\"sekoujirei/?$\";s:30:\"index.php?post_type=sekoujirei\";s:43:\"sekoujirei/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=sekoujirei&feed=$matches[1]\";s:38:\"sekoujirei/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=sekoujirei&feed=$matches[1]\";s:30:\"sekoujirei/page/([0-9]{1,})/?$\";s:48:\"index.php?post_type=sekoujirei&paged=$matches[1]\";s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:38:\"sekoujirei/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"sekoujirei/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"sekoujirei/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"sekoujirei/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"sekoujirei/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"sekoujirei/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"sekoujirei/([^/]+)/embed/?$\";s:43:\"index.php?sekoujirei=$matches[1]&embed=true\";s:31:\"sekoujirei/([^/]+)/trackback/?$\";s:37:\"index.php?sekoujirei=$matches[1]&tb=1\";s:51:\"sekoujirei/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?sekoujirei=$matches[1]&feed=$matches[2]\";s:46:\"sekoujirei/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?sekoujirei=$matches[1]&feed=$matches[2]\";s:39:\"sekoujirei/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?sekoujirei=$matches[1]&paged=$matches[2]\";s:46:\"sekoujirei/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?sekoujirei=$matches[1]&cpage=$matches[2]\";s:35:\"sekoujirei/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?sekoujirei=$matches[1]&page=$matches[2]\";s:27:\"sekoujirei/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"sekoujirei/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"sekoujirei/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"sekoujirei/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"sekoujirei/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"sekoujirei/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(180, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(184, 'new_admin_email', 'ducmonmz@gmail.com', 'yes'),
(201, 'theme_mods_kslink-pet01', 'a:6:{s:18:\"custom_css_post_id\";i:-1;s:5:\"phone\";s:12:\"000-000-0000\";s:9:\"copyright\";s:52:\"&copy;2020 Trimming salon WONDER All Rights Reserved\";s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:9:\"menu_page\";s:1:\"8\";s:16:\"menu_description\";s:268:\"当店では、種類やお好みに応じて\nお選びいただけるように幅広いメニューをご用意しております。\n初めての方は、カウンセリングから行い\n 経験豊富なトリマーがびったりのプランをご案内します。\";}', 'yes'),
(202, 'theme_switch_menu_locations', 'a:0:{}', 'yes'),
(203, 'current_theme', 'Pet01', 'yes'),
(204, 'theme_switched', '', 'yes'),
(205, 'theme_switched_via_customizer', '', 'yes'),
(206, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(209, 'recovery_mode_email_last_sent', '1593183789', 'yes'),
(267, 'duplicator_package_active', 'O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2020-06-27 16:11:03\";s:7:\"Version\";s:6:\"1.3.36\";s:9:\"VersionWP\";s:5:\"5.4.2\";s:9:\"VersionDB\";s:6:\"10.4.6\";s:10:\"VersionPHP\";s:5:\"7.3.9\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:14:\"20200627_pet01\";s:4:\"Hash\";s:35:\"6eede26c52c702146905_20200627161103\";s:8:\"NameHash\";s:50:\"20200627_pet01_6eede26c52c702146905_20200627161103\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";s:60:\"20200627_pet01_6eede26c52c702146905_20200627161103_scan.json\";s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";O:11:\"DUP_Archive\":21:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";N;s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:49:\"/home/c9117115/public_html/20test-018.kslink.tech\";s:4:\"Size\";i:0;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":5:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":6:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":3:{s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"file_count\";i:-1;s:10:\"\0*\0Package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2020-06-27 16:11:03\";s:7:\"Version\";s:6:\"1.3.36\";s:9:\"VersionWP\";s:5:\"5.4.2\";s:9:\"VersionDB\";s:6:\"10.4.6\";s:10:\"VersionPHP\";s:5:\"7.3.9\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:14:\"20200627_pet01\";s:4:\"Hash\";s:35:\"6eede26c52c702146905_20200627161103\";s:8:\"NameHash\";s:50:\"20200627_pet01_6eede26c52c702146905_20200627161103\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";N;s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";r:21;s:9:\"Installer\";O:13:\"DUP_Installer\":11:{s:4:\"File\";N;s:4:\"Size\";i:0;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:12:\"OptsSecureOn\";i:0;s:14:\"OptsSecurePass\";s:0:\"\";s:13:\"numFilesAdded\";i:0;s:12:\"numDirsAdded\";i:0;s:10:\"\0*\0Package\";r:61;}s:8:\"Database\";O:12:\"DUP_Database\":14:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";N;s:4:\"File\";N;s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:31:\"mariadb.org binary distribution\";s:4:\"info\";O:16:\"DUP_DatabaseInfo\":15:{s:9:\"buildMode\";N;s:13:\"collationList\";a:0:{}s:17:\"isTablesUpperCase\";N;s:15:\"isNameUpperCase\";N;s:4:\"name\";N;s:15:\"tablesBaseCount\";N;s:16:\"tablesFinalCount\";N;s:14:\"tablesRowCount\";N;s:16:\"tablesSizeOnDisk\";N;s:18:\"varLowerCaseTables\";i:1;s:7:\"version\";N;s:14:\"versionComment\";N;s:18:\"tableWiseRowCounts\";a:0:{}s:33:\"\0DUP_DatabaseInfo\0intFieldsStruct\";a:0:{}s:42:\"\0DUP_DatabaseInfo\0indexProcessedSchemaSize\";a:0:{}}s:10:\"\0*\0Package\";r:61;s:24:\"\0DUP_Database\0tempDbPath\";N;s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;}s:13:\"BuildProgress\";O:18:\"DUP_Build_Progress\":12:{s:17:\"thread_start_time\";N;s:11:\"initialized\";b:0;s:15:\"installer_built\";b:0;s:15:\"archive_started\";b:0;s:20:\"archive_has_database\";b:0;s:13:\"archive_built\";b:0;s:21:\"database_script_built\";b:0;s:6:\"failed\";b:0;s:7:\"retries\";i:0;s:14:\"build_failures\";a:0:{}s:19:\"validation_failures\";a:0:{}s:27:\"\0DUP_Build_Progress\0package\";r:61;}}s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:5:{i:0;s:58:\"/home/c9117115/public_html/20test-018.kslink.tech/wp-admin\";i:1;s:68:\"/home/c9117115/public_html/20test-018.kslink.tech/wp-content/uploads\";i:2;s:70:\"/home/c9117115/public_html/20test-018.kslink.tech/wp-content/languages\";i:3;s:67:\"/home/c9117115/public_html/20test-018.kslink.tech/wp-content/themes\";i:4;s:61:\"/home/c9117115/public_html/20test-018.kslink.tech/wp-includes\";}s:29:\"\0DUP_Archive\0wpCoreExactPaths\";a:2:{i:0;s:49:\"/home/c9117115/public_html/20test-018.kslink.tech\";i:1;s:60:\"/home/c9117115/public_html/20test-018.kslink.tech/wp-content\";}}s:9:\"Installer\";r:82;s:8:\"Database\";r:94;s:13:\"BuildProgress\";r:124;}', 'yes'),
(268, 'duplicator_exe_safe_mode', '', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1593157627:1'),
(4, 5, '_edit_last', '1'),
(5, 7, '_edit_lock', '1593157312:1'),
(6, 8, '_edit_lock', '1593157223:1'),
(7, 7, '_edit_last', '1'),
(8, 10, '_edit_lock', '1593157364:1'),
(9, 8, '_edit_last', '1'),
(10, 10, '_edit_last', '1'),
(11, 13, '_edit_lock', '1593157793:1'),
(12, 13, '_edit_last', '1'),
(13, 3, '_edit_lock', '1593157327:1'),
(14, 2, '_edit_lock', '1593273629:1'),
(15, 2, '_edit_last', '1'),
(16, 16, '_edit_lock', '1593225898:1'),
(17, 16, '_edit_last', '1'),
(18, 18, '_edit_lock', '1593157763:1'),
(19, 18, '_edit_last', '1'),
(20, 21, '_menu_item_type', 'post_type'),
(21, 21, '_menu_item_menu_item_parent', '0'),
(22, 21, '_menu_item_object_id', '5'),
(23, 21, '_menu_item_object', 'page'),
(24, 21, '_menu_item_target', ''),
(25, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(26, 21, '_menu_item_xfn', ''),
(27, 21, '_menu_item_url', ''),
(29, 22, '_menu_item_type', 'post_type'),
(30, 22, '_menu_item_menu_item_parent', '0'),
(31, 22, '_menu_item_object_id', '16'),
(32, 22, '_menu_item_object', 'page'),
(33, 22, '_menu_item_target', ''),
(34, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(35, 22, '_menu_item_xfn', ''),
(36, 22, '_menu_item_url', ''),
(38, 23, '_menu_item_type', 'post_type'),
(39, 23, '_menu_item_menu_item_parent', '0'),
(40, 23, '_menu_item_object_id', '8'),
(41, 23, '_menu_item_object', 'page'),
(42, 23, '_menu_item_target', ''),
(43, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(44, 23, '_menu_item_xfn', ''),
(45, 23, '_menu_item_url', ''),
(47, 24, '_menu_item_type', 'post_type'),
(48, 24, '_menu_item_menu_item_parent', '0'),
(49, 24, '_menu_item_object_id', '18'),
(50, 24, '_menu_item_object', 'page'),
(51, 24, '_menu_item_target', ''),
(52, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(53, 24, '_menu_item_xfn', ''),
(54, 24, '_menu_item_url', ''),
(56, 25, '_menu_item_type', 'post_type'),
(57, 25, '_menu_item_menu_item_parent', '0'),
(58, 25, '_menu_item_object_id', '13'),
(59, 25, '_menu_item_object', 'page'),
(60, 25, '_menu_item_target', ''),
(61, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(62, 25, '_menu_item_xfn', ''),
(63, 25, '_menu_item_url', ''),
(65, 26, '_wp_trash_meta_status', 'publish'),
(66, 26, '_wp_trash_meta_time', '1593176451'),
(67, 27, '_wp_trash_meta_status', 'publish'),
(68, 27, '_wp_trash_meta_time', '1593184214'),
(69, 28, '_wp_trash_meta_status', 'publish'),
(70, 28, '_wp_trash_meta_time', '1593184247'),
(71, 29, '_edit_lock', '1593225898:1'),
(72, 29, '_edit_last', '1'),
(73, 31, '_edit_lock', '1593225897:1'),
(74, 31, '_edit_last', '1'),
(75, 33, '_wp_trash_meta_status', 'publish'),
(76, 33, '_wp_trash_meta_time', '1593185217'),
(79, 35, '_wp_attached_file', '2020/06/home-section-1.png'),
(80, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1047;s:6:\"height\";i:557;s:4:\"file\";s:26:\"2020/06/home-section-1.png\";s:5:\"sizes\";a:1:{s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"home-section-1-768x409.png\";s:5:\"width\";i:768;s:6:\"height\";i:409;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(81, 36, '_wp_attached_file', '2020/06/home-section-2.jpg'),
(82, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:383;s:6:\"height\";i:369;s:4:\"file\";s:26:\"2020/06/home-section-2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(83, 37, '_wp_attached_file', '2020/06/home-section-3-top.jpg'),
(84, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:266;s:6:\"height\";i:265;s:4:\"file\";s:30:\"2020/06/home-section-3-top.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(85, 38, '_wp_attached_file', '2020/06/home-section-3.jpg'),
(86, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:268;s:6:\"height\";i:350;s:4:\"file\";s:26:\"2020/06/home-section-3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(87, 39, '_edit_last', '1'),
(88, 39, '_edit_lock', '1593224941:1'),
(89, 41, '_wp_attached_file', '2020/06/home-new-icon-2.jpg'),
(90, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:174;s:6:\"height\";i:174;s:4:\"file\";s:27:\"2020/06/home-new-icon-2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(91, 42, '_wp_attached_file', '2020/06/home-new-icon-3.jpg'),
(92, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:174;s:6:\"height\";i:174;s:4:\"file\";s:27:\"2020/06/home-new-icon-3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(93, 43, '_wp_attached_file', '2020/06/home-new-icon-1.jpg'),
(94, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:174;s:6:\"height\";i:174;s:4:\"file\";s:27:\"2020/06/home-new-icon-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(95, 31, 'home_icon', '42'),
(96, 31, '_home_icon', 'field_5ef6af6014931'),
(97, 44, 'home_icon', '43'),
(98, 44, '_home_icon', 'field_5ef6af6014931'),
(99, 29, 'home_icon', '41'),
(100, 29, '_home_icon', 'field_5ef6af6014931'),
(101, 45, 'home_icon', '41'),
(102, 45, '_home_icon', 'field_5ef6af6014931'),
(103, 46, 'home_icon', '42'),
(104, 46, '_home_icon', 'field_5ef6af6014931'),
(105, 16, 'home_icon', '43'),
(106, 16, '_home_icon', 'field_5ef6af6014931'),
(107, 48, 'home_icon', '43'),
(108, 48, '_home_icon', 'field_5ef6af6014931'),
(109, 49, '_wp_attached_file', '2020/06/home-section-5-map.jpg'),
(110, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:434;s:6:\"height\";i:259;s:4:\"file\";s:30:\"2020/06/home-section-5-map.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(111, 50, '_wp_attached_file', '2020/06/home-section-6.jpg'),
(112, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:489;s:6:\"height\";i:446;s:4:\"file\";s:26:\"2020/06/home-section-6.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(113, 51, '_wp_trash_meta_status', 'publish'),
(114, 51, '_wp_trash_meta_time', '1593246131'),
(115, 52, '_wp_trash_meta_status', 'publish'),
(116, 52, '_wp_trash_meta_time', '1593247116'),
(117, 53, '_wp_trash_meta_status', 'publish'),
(118, 53, '_wp_trash_meta_time', '1593248642'),
(119, 54, '_wp_trash_meta_status', 'publish'),
(120, 54, '_wp_trash_meta_time', '1593249571');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-06-26 16:35:13', '2020-06-26 07:35:13', '<!-- wp:paragraph -->\n<p>WordPress へようこそ。こちらは最初の投稿です。編集または削除し、コンテンツ作成を始めてください。</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-06-26 16:35:13', '2020-06-26 07:35:13', '', 0, 'http://20test-018.kslink.tech/?p=1', 0, 'post', '', 1),
(2, 1, '2020-06-26 16:35:13', '2020-06-26 07:35:13', '', 'トップ', '', 'publish', 'closed', 'open', '', 'top', '', '', '2020-06-26 16:45:04', '2020-06-26 07:45:04', '', 0, 'http://20test-018.kslink.tech/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-06-26 16:35:13', '2020-06-26 07:35:13', '<!-- wp:heading --><h2>私たちについて</h2><!-- /wp:heading --><!-- wp:paragraph --><p>私たちのサイトアドレスは http://20test-018.kslink.tech です。</p><!-- /wp:paragraph --><!-- wp:heading --><h2>このサイトが収集する個人データと収集の理由</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>コメント</h3><!-- /wp:heading --><!-- wp:paragraph --><p>訪問者がこのサイトにコメントを残す際、コメントフォームに表示されているデータ、そしてスパム検出に役立てるための IP アドレスとブラウザーユーザーエージェント文字列を収集します。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>メールアドレスから作成される匿名化された (「ハッシュ」とも呼ばれる) 文字列は、あなたが Gravatar サービスを使用中かどうか確認するため同サービスに提供されることがあります。同サービスのプライバシーポリシーは https://automattic.com/privacy/ にあります。コメントが承認されると、プロフィール画像がコメントとともに一般公開されます。</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>メディア</h3><!-- /wp:heading --><!-- wp:paragraph --><p>サイトに画像をアップロードする際、位置情報 (EXIF GPS) を含む画像をアップロードするべきではありません。サイトの訪問者は、サイトから画像をダウンロードして位置データを抽出することができます。</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>お問い合わせフォーム</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookie</h3><!-- /wp:heading --><!-- wp:paragraph --><p>サイトにコメントを残す際、お名前、メールアドレス、サイトを Cookie に保存することにオプトインできます。これはあなたの便宜のためであり、他のコメントを残す際に詳細情報を再入力する手間を省きます。この Cookie は1年間保持されます。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>ログインページを訪問すると、お使いのブラウザーが Cookie を受け入れられるかを判断するために一時 Cookie を設定します。この Cookie は個人データを含んでおらず、ブラウザーを閉じると廃棄されます。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>ログインの際さらに、ログイン情報と画面表示情報を保持するため、私たちはいくつかの Cookie を設定します。ログイン Cookie は2日間、画面表示オプション Cookie は1年間保持されます。「ログイン状態を保存する」を選択した場合、ログイン情報は2週間維持されます。ログアウトするとログイン Cookie は消去されます。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>もし投稿を編集または公開すると、さらなる Cookie がブラウザーに保存されます。この Cookie は個人データを含まず、単に変更した投稿の ID を示すものです。1日で有効期限が切れます。</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>他サイトからの埋め込みコンテンツ</h3><!-- /wp:heading --><!-- wp:paragraph --><p>このサイトの投稿には埋め込みコンテンツ (動画、画像、投稿など) が含まれます。他サイトからの埋め込みコンテンツは、訪問者がそのサイトを訪れた場合とまったく同じように振る舞います。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>これらのサイトは、あなたのデータの収集、Cookie の使用、サードパーティによる追加トラッキングの埋め込み、埋め込みコンテンツとのやりとりの監視を行うことがあります。アカウントを使ってそのサイトにログイン中の場合、埋め込みコンテンツとのやりとりのトラッキングも含まれます。</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>アナリティクス</h3><!-- /wp:heading --><!-- wp:heading --><h2>あなたのデータの共有先</h2><!-- /wp:heading --><!-- wp:heading --><h2>データを保存する期間</h2><!-- /wp:heading --><!-- wp:paragraph --><p>あなたがコメントを残すと、コメントとそのメタデータが無期限に保持されます。これは、モデレーションキューにコメントを保持しておく代わりに、フォローアップのコメントを自動的に認識し承認できるようにするためです。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>このサイトに登録したユーザーがいる場合、その方がユーザープロフィールページで提供した個人情報を保存します。すべてのユーザーは自分の個人情報を表示、編集、削除することができます (ただしユーザー名は変更することができません)。サイト管理者もそれらの情報を表示、編集できます。</p><!-- /wp:paragraph --><!-- wp:heading --><h2>データに対するあなたの権利</h2><!-- /wp:heading --><!-- wp:paragraph --><p>このサイトのアカウントを持っているか、サイトにコメントを残したことがある場合、私たちが保持するあなたについての個人データ (提供したすべてのデータを含む) をエクスポートファイルとして受け取るリクエストを行うことができます。また、個人データの消去リクエストを行うこともできます。これには、管理、法律、セキュリティ目的のために保持する義務があるデータは含まれません。</p><!-- /wp:paragraph --><!-- wp:heading --><h2>あなたのデータの送信先</h2><!-- /wp:heading --><!-- wp:paragraph --><p>訪問者によるコメントは、自動スパム検出サービスを通じて確認を行う場合があります。</p><!-- /wp:paragraph --><!-- wp:heading --><h2>あなたの連絡先情報</h2><!-- /wp:heading --><!-- wp:heading --><h2>追加情報</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>データの保護方法</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>データ漏洩対策手順</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>データ送信元のサードパーティ</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>ユーザーデータに対して行う自動的な意思決定およびプロファイリング</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>業界規制の開示要件</h3><!-- /wp:heading -->', 'プライバシーポリシー', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-06-26 16:35:13', '2020-06-26 07:35:13', '', 0, 'http://20test-018.kslink.tech/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-06-26 16:35:57', '0000-00-00 00:00:00', '', '自動下書き', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-06-26 16:35:57', '0000-00-00 00:00:00', '', 0, 'http://20test-018.kslink.tech/?p=4', 0, 'post', '', 0),
(5, 1, '2020-06-26 16:41:25', '2020-06-26 07:41:25', '', 'お店のこだわり', '', 'publish', 'closed', 'closed', '', '%e3%81%8a%e5%ba%97%e3%81%ae%e3%81%93%e3%81%a0%e3%82%8f%e3%82%8a', '', '', '2020-06-26 16:41:26', '2020-06-26 07:41:26', '', 0, 'http://20test-018.kslink.tech/?page_id=5', 0, 'page', '', 0),
(6, 1, '2020-06-26 16:41:25', '2020-06-26 07:41:25', '', 'お店のこだわり', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-06-26 16:41:25', '2020-06-26 07:41:25', '', 5, 'http://20test-018.kslink.tech/2020/06/26/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2020-06-26 16:41:50', '2020-06-26 07:41:50', '', 'ニュース', '', 'publish', 'closed', 'closed', '', '%e3%83%8b%e3%83%a5%e3%83%bc%e3%82%b9', '', '', '2020-06-26 16:41:51', '2020-06-26 07:41:51', '', 0, 'http://20test-018.kslink.tech/?page_id=7', 0, 'page', '', 0),
(8, 1, '2020-06-26 16:42:14', '2020-06-26 07:42:14', '', 'メニュー', '', 'publish', 'closed', 'closed', '', '%e3%83%a1%e3%83%8b%e3%83%a5%e3%83%bc', '', '', '2020-06-26 16:42:15', '2020-06-26 07:42:15', '', 0, 'http://20test-018.kslink.tech/?page_id=8', 0, 'page', '', 0),
(9, 1, '2020-06-26 16:41:50', '2020-06-26 07:41:50', '', 'ニュース', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-06-26 16:41:50', '2020-06-26 07:41:50', '', 7, 'http://20test-018.kslink.tech/2020/06/26/7-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2020-06-26 16:42:33', '2020-06-26 07:42:33', '', 'ギャラリー', '', 'publish', 'closed', 'closed', '', '%e3%82%ae%e3%83%a3%e3%83%a9%e3%83%aa%e3%83%bc', '', '', '2020-06-26 16:42:43', '2020-06-26 07:42:43', '', 0, 'http://20test-018.kslink.tech/?page_id=10', 0, 'page', '', 0),
(11, 1, '2020-06-26 16:42:14', '2020-06-26 07:42:14', '', 'メニュー', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-06-26 16:42:14', '2020-06-26 07:42:14', '', 8, 'http://20test-018.kslink.tech/2020/06/26/8-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2020-06-26 16:42:33', '2020-06-26 07:42:33', '', 'ギャラリー', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2020-06-26 16:42:33', '2020-06-26 07:42:33', '', 10, 'http://20test-018.kslink.tech/2020/06/26/10-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2020-06-26 16:43:20', '2020-06-26 07:43:20', '', 'お問い合わせ', '', 'publish', 'closed', 'closed', '', '%e3%81%8a%e5%95%8f%e3%81%84%e5%90%88%e3%82%8f%e3%81%9b', '', '', '2020-06-26 16:49:52', '2020-06-26 07:49:52', '', 0, 'http://20test-018.kslink.tech/?page_id=13', 0, 'page', '', 0),
(14, 1, '2020-06-26 16:43:20', '2020-06-26 07:43:20', '', 'お問合せ', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-06-26 16:43:20', '2020-06-26 07:43:20', '', 13, 'http://20test-018.kslink.tech/2020/06/26/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2020-06-26 16:45:04', '2020-06-26 07:45:04', '', 'トップ', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-06-26 16:45:04', '2020-06-26 07:45:04', '', 2, 'http://20test-018.kslink.tech/2020/06/26/2-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2020-06-26 16:46:05', '2020-06-26 07:46:05', '', 'トリミング', '', 'publish', 'closed', 'closed', '', '%e3%83%88%e3%83%aa%e3%83%9f%e3%83%b3%e3%82%b0', '', '', '2020-06-27 11:38:29', '2020-06-27 02:38:29', '', 8, 'http://20test-018.kslink.tech/?page_id=16', 0, 'page', '', 0),
(17, 1, '2020-06-26 16:46:05', '2020-06-26 07:46:05', '', 'トリミングとは？', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2020-06-26 16:46:05', '2020-06-26 07:46:05', '', 16, 'http://20test-018.kslink.tech/2020/06/26/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2020-06-26 16:49:21', '2020-06-26 07:49:21', '', '店舖情報', '', 'publish', 'closed', 'closed', '', '%e5%ba%97%e8%88%96%e6%83%85%e5%a0%b1', '', '', '2020-06-26 16:49:22', '2020-06-26 07:49:22', '', 0, 'http://20test-018.kslink.tech/?page_id=18', 0, 'page', '', 0),
(19, 1, '2020-06-26 16:49:21', '2020-06-26 07:49:21', '', '店舖情報', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2020-06-26 16:49:21', '2020-06-26 07:49:21', '', 18, 'http://20test-018.kslink.tech/2020/06/26/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2020-06-26 16:49:51', '2020-06-26 07:49:51', '', 'お問い合わせ', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-06-26 16:49:51', '2020-06-26 07:49:51', '', 13, 'http://20test-018.kslink.tech/2020/06/26/13-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2020-06-26 16:50:49', '2020-06-26 07:50:49', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2020-06-26 16:50:49', '2020-06-26 07:50:49', '', 0, 'http://20test-018.kslink.tech/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2020-06-26 16:50:49', '2020-06-26 07:50:49', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2020-06-26 16:50:49', '2020-06-26 07:50:49', '', 0, 'http://20test-018.kslink.tech/?p=22', 2, 'nav_menu_item', '', 0),
(23, 1, '2020-06-26 16:50:49', '2020-06-26 07:50:49', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2020-06-26 16:50:49', '2020-06-26 07:50:49', '', 0, 'http://20test-018.kslink.tech/?p=23', 3, 'nav_menu_item', '', 0),
(24, 1, '2020-06-26 16:50:49', '2020-06-26 07:50:49', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2020-06-26 16:50:49', '2020-06-26 07:50:49', '', 0, 'http://20test-018.kslink.tech/?p=24', 4, 'nav_menu_item', '', 0),
(25, 1, '2020-06-26 16:50:49', '2020-06-26 07:50:49', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2020-06-26 16:50:49', '2020-06-26 07:50:49', '', 0, 'http://20test-018.kslink.tech/?p=25', 5, 'nav_menu_item', '', 0),
(26, 1, '2020-06-26 22:00:51', '2020-06-26 13:00:51', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"sidebar-1\": [\n                \"search-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\"\n            ],\n            \"sidebar-2\": [\n                \"archives-2\",\n                \"categories-2\",\n                \"meta-2\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-26 13:00:51\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f54b4cd1-e731-4a2d-98c8-7aad4b6088f9', '', '', '2020-06-26 22:00:51', '2020-06-26 13:00:51', '', 0, 'http://20test-018.kslink.tech/f54b4cd1-e731-4a2d-98c8-7aad4b6088f9/', 0, 'customize_changeset', '', 0),
(27, 1, '2020-06-27 00:10:14', '2020-06-26 15:10:14', '{\n    \"kslink-pet01::nav_menu_locations[primary]\": {\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-26 15:10:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '420cbafd-e19c-4887-af36-4127149b3a71', '', '', '2020-06-27 00:10:14', '2020-06-26 15:10:14', '', 0, 'http://20test-018.kslink.tech/420cbafd-e19c-4887-af36-4127149b3a71/', 0, 'customize_changeset', '', 0),
(28, 1, '2020-06-27 00:10:47', '2020-06-26 15:10:47', '{\n    \"kslink-pet01::nav_menu_locations[primary]\": {\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-26 15:10:47\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cd86f943-1161-4d16-831e-95b69d90fb05', '', '', '2020-06-27 00:10:47', '2020-06-26 15:10:47', '', 0, 'http://20test-018.kslink.tech/cd86f943-1161-4d16-831e-95b69d90fb05/', 0, 'customize_changeset', '', 0),
(29, 1, '2020-06-27 00:22:29', '2020-06-26 15:22:29', '', 'キャンプー', '', 'publish', 'closed', 'closed', '', '%e3%82%ad%e3%83%a3%e3%83%b3%e3%83%97%e3%83%bc', '', '', '2020-06-27 11:36:59', '2020-06-27 02:36:59', '', 8, 'http://20test-018.kslink.tech/?page_id=29', 1, 'page', '', 0),
(30, 1, '2020-06-27 00:22:29', '2020-06-26 15:22:29', '', 'キャンプー', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-06-27 00:22:29', '2020-06-26 15:22:29', '', 29, 'http://20test-018.kslink.tech/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2020-06-27 00:22:57', '2020-06-26 15:22:57', '', 'オプション', '', 'publish', 'closed', 'closed', '', '%e3%82%aa%e3%83%97%e3%82%b7%e3%83%a7%e3%83%b3', '', '', '2020-06-27 11:38:11', '2020-06-27 02:38:11', '', 8, 'http://20test-018.kslink.tech/?page_id=31', 2, 'page', '', 0),
(32, 1, '2020-06-27 00:22:57', '2020-06-26 15:22:57', '', 'オプション', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2020-06-27 00:22:57', '2020-06-26 15:22:57', '', 31, 'http://20test-018.kslink.tech/31-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2020-06-27 00:26:57', '2020-06-26 15:26:57', '{\n    \"kslink-pet01::menu_page\": {\n        \"value\": \"8\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-26 15:26:57\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2dff98f5-db62-42db-a485-8e32cde07db3', '', '', '2020-06-27 00:26:57', '2020-06-26 15:26:57', '', 0, 'http://20test-018.kslink.tech/2dff98f5-db62-42db-a485-8e32cde07db3/', 0, 'customize_changeset', '', 0),
(35, 1, '2020-06-27 10:33:00', '2020-06-27 01:33:00', '', 'home-section-1', '', 'inherit', 'open', 'closed', '', 'home-section-1', '', '', '2020-06-27 10:33:00', '2020-06-27 01:33:00', '', 0, 'http://20test-018.kslink.tech/wp-content/uploads/2020/06/home-section-1.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2020-06-27 10:42:49', '2020-06-27 01:42:49', '', 'home-section-2', '', 'inherit', 'open', 'closed', '', 'home-section-2', '', '', '2020-06-27 10:42:49', '2020-06-27 01:42:49', '', 0, 'http://20test-018.kslink.tech/wp-content/uploads/2020/06/home-section-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2020-06-27 11:12:43', '2020-06-27 02:12:43', '', 'home-section-3-top', '', 'inherit', 'open', 'closed', '', 'home-section-3-top', '', '', '2020-06-27 11:12:43', '2020-06-27 02:12:43', '', 0, 'http://20test-018.kslink.tech/wp-content/uploads/2020/06/home-section-3-top.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2020-06-27 11:17:11', '2020-06-27 02:17:11', '', 'home-section-3', '', 'inherit', 'open', 'closed', '', 'home-section-3', '', '', '2020-06-27 11:17:11', '2020-06-27 02:17:11', '', 0, 'http://20test-018.kslink.tech/wp-content/uploads/2020/06/home-section-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2020-06-27 11:31:22', '2020-06-27 02:31:22', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:11:\"page_parent\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"8\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'ホームの設定', '%e3%83%9b%e3%83%bc%e3%83%a0%e3%81%ae%e8%a8%ad%e5%ae%9a', 'publish', 'closed', 'closed', '', 'group_5ef6af48c57e2', '', '', '2020-06-27 11:31:22', '2020-06-27 02:31:22', '', 0, 'http://20test-018.kslink.tech/?post_type=acf-field-group&#038;p=39', 0, 'acf-field-group', '', 0),
(40, 1, '2020-06-27 11:31:22', '2020-06-27 02:31:22', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'ホームのアイコン', 'home_icon', 'publish', 'closed', 'closed', '', 'field_5ef6af6014931', '', '', '2020-06-27 11:31:22', '2020-06-27 02:31:22', '', 39, 'http://20test-018.kslink.tech/?post_type=acf-field&p=40', 0, 'acf-field', '', 0),
(41, 1, '2020-06-27 11:36:33', '2020-06-27 02:36:33', '', 'home-new-icon-2', '', 'inherit', 'open', 'closed', '', 'home-new-icon-2', '', '', '2020-06-27 11:36:33', '2020-06-27 02:36:33', '', 31, 'http://20test-018.kslink.tech/wp-content/uploads/2020/06/home-new-icon-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2020-06-27 11:36:33', '2020-06-27 02:36:33', '', 'home-new-icon-3', '', 'inherit', 'open', 'closed', '', 'home-new-icon-3', '', '', '2020-06-27 11:36:33', '2020-06-27 02:36:33', '', 31, 'http://20test-018.kslink.tech/wp-content/uploads/2020/06/home-new-icon-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2020-06-27 11:36:34', '2020-06-27 02:36:34', '', 'home-new-icon-1', '', 'inherit', 'open', 'closed', '', 'home-new-icon-1', '', '', '2020-06-27 11:36:34', '2020-06-27 02:36:34', '', 31, 'http://20test-018.kslink.tech/wp-content/uploads/2020/06/home-new-icon-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2020-06-27 11:36:40', '2020-06-27 02:36:40', '', 'オプション', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2020-06-27 11:36:40', '2020-06-27 02:36:40', '', 31, 'http://20test-018.kslink.tech/31-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2020-06-27 11:36:59', '2020-06-27 02:36:59', '', 'キャンプー', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-06-27 11:36:59', '2020-06-27 02:36:59', '', 29, 'http://20test-018.kslink.tech/29-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2020-06-27 11:38:11', '2020-06-27 02:38:11', '', 'オプション', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2020-06-27 11:38:11', '2020-06-27 02:38:11', '', 31, 'http://20test-018.kslink.tech/31-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2020-06-27 11:38:28', '2020-06-27 02:38:28', '', 'トリミング', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2020-06-27 11:38:28', '2020-06-27 02:38:28', '', 16, 'http://20test-018.kslink.tech/16-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2020-06-27 11:38:29', '2020-06-27 02:38:29', '', 'トリミング', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2020-06-27 11:38:29', '2020-06-27 02:38:29', '', 16, 'http://20test-018.kslink.tech/16-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2020-06-27 11:52:48', '2020-06-27 02:52:48', '', 'home-section-5-map', '', 'inherit', 'open', 'closed', '', 'home-section-5-map', '', '', '2020-06-27 11:52:48', '2020-06-27 02:52:48', '', 0, 'http://20test-018.kslink.tech/wp-content/uploads/2020/06/home-section-5-map.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2020-06-27 11:56:33', '2020-06-27 02:56:33', '', 'home-section-6', '', 'inherit', 'open', 'closed', '', 'home-section-6', '', '', '2020-06-27 11:56:33', '2020-06-27 02:56:33', '', 0, 'http://20test-018.kslink.tech/wp-content/uploads/2020/06/home-section-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2020-06-27 17:22:11', '2020-06-27 08:22:11', '{\n    \"kslink-pet01::menu_description\": {\n        \"value\": \"\\u5f53\\u5e97\\u3067\\u306f\\u3001\\u7a2e\\u985e\\u3084\\u304a\\u597d\\u307f\\u306b\\u5fdc\\u3058\\u3066\\u304a\\u9078\\u3073\\u3044\\u305f\\u3060\\u3051\\u308b\\u3088\\u3046\\u306b\\u5e45\\u5e83\\u3044\\u30e1\\u30cb\\u30e5\\u30fc\\u3092\\u3054\\u7528\\u610f\\u3057\\u3066\\u304a\\u308a\\u307e\\u3059\\u3002\\u521d\\u3081\\u3066\\u306e\\u65b9\\u306f\\u3001\\u30ab\\u30a6\\u30f3\\u30bb\\u30ea\\u30f3\\u30b0\\u304b\\u3089\\u884c\\u3044 \\u7d4c\\u9a13\\u8c4a\\u5bcc\\u306a\\u30c8\\u30ea\\u30de\\u30fc\\u304c\\u3073\\u3063\\u305f\\u308a\\u306e\\u30d7\\u30e9\\u30f3\\u3092\\u3054\\u6848\\u5185\\u3057\\u307e\\u3059\\u3002\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-27 08:22:11\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5bf87fdc-1498-4710-9749-81d8db91e591', '', '', '2020-06-27 17:22:11', '2020-06-27 08:22:11', '', 0, 'http://20test-018.kslink.tech/5bf87fdc-1498-4710-9749-81d8db91e591/', 0, 'customize_changeset', '', 0),
(52, 1, '2020-06-27 17:38:36', '2020-06-27 08:38:36', '{\n    \"kslink-pet01::menu_description\": {\n        \"value\": \"\\u5f53\\u5e97\\u3067\\u306f\\u3001\\u7a2e\\u985e\\u3084\\u304a\\u597d\\u307f\\u306b\\u5fdc\\u3058\\u3066\\n\\u304a\\u9078\\u3073\\u3044\\u305f\\u3060\\u3051\\u308b\\u3088\\u3046\\u306b\\u5e45\\u5e83\\u3044\\u30e1\\u30cb\\u30e5\\u30fc\\u3092\\u3054\\u7528\\u610f\\u3057\\u3066\\u304a\\u308a\\u307e\\u3059\\u3002\\n\\u521d\\u3081\\u3066\\u306e\\u65b9\\u306f\\u3001\\u30ab\\u30a6\\u30f3\\u30bb\\u30ea\\u30f3\\u30b0\\u304b\\u3089\\u884c\\u3044\\n \\u7d4c\\u9a13\\u8c4a\\u5bcc\\u306a\\u30c8\\u30ea\\u30de\\u30fc\\u304c\\u3073\\u3063\\u305f\\u308a\\u306e\\u30d7\\u30e9\\u30f3\\u3092\\u3054\\u6848\\u5185\\u3057\\u307e\\u3059\\u3002\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-27 08:38:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0838d971-d57f-4ddd-a003-e3336dca18bb', '', '', '2020-06-27 17:38:36', '2020-06-27 08:38:36', '', 0, 'http://20test-018.kslink.tech/0838d971-d57f-4ddd-a003-e3336dca18bb/', 0, 'customize_changeset', '', 0),
(53, 1, '2020-06-27 18:04:02', '2020-06-27 09:04:02', '{\n    \"widget_text[4]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjEyOiLlupfoiJfmuIXloLEiO3M6NDoidGV4dCI7czo4MDc6Ijx0YWJsZSB3aWR0aD0iMTAwJSIgY2VsbHNwYWNpbmc9IjAiIGNlbGxwYWRkaW5nPSIwIj4NCiAgPHRib2R5Pg0KICA8dHI+DQogIDx0ZD4NCiAgPHRhYmxlIHdpZHRoPSIxMDAlIiBjZWxsc3BhY2luZz0iMCIgY2VsbHBhZGRpbmc9IjAiPg0KICA8dGJvZHk+DQogIDx0cj4NCiAgPHRkPuW6l+iIl+WQjTwvdGQ+DQogIDx0ZD50cmltbWluZyBzYWxvbiBXT05ERVI8L3RkPg0KICA8L3RyPg0KICA8dHI+DQogIDx0ZD7kvY/miYA8L3RkPg0KICA8dGQ+PGEgaHJlZj0iIyIgdGFyZ2V0PSJfYmxhbmsiPuacreW5jOW4guS4reWkruWMuuWMl+OAh+OAh+ilv+OAh+OAhzwvYT48L3RkPg0KICA8L3RyPg0KICA8dHI+DQogIDx0ZD7llrbmpa3mmYLplpM8L3RkPg0KICA8dGQ+MTA6MDAgfiAxMDowMDwvdGQ+DQogIDwvdHI+DQogIDx0cj4NCiAgPHRkPuWumuS8keaXpTwvdGQ+DQogIDx0ZD7ngavmm5zml6U8L3RkPg0KICA8L3RyPg0KICA8dHI+DQogIDx0ZD7pm7voqbHnlarlj7c8L3RkPg0KICA8dGQ+PGEgaHJlZj0idGVsOjAwMCAwMDAgMDAwMCI+MDAwIDAwMCAwMDAwPC9hPjwvdGQ+DQogIDwvdHI+DQogIDwvdGJvZHk+DQogIDwvdGFibGU+DQogIDwvdGQ+DQogIDx0ZD48aW1nIGNsYXNzPSJhbGlnbm5vbmUgc2l6ZS1mdWxsIHdwLWltYWdlLTQ5IiBzcmM9Imh0dHA6Ly9sb2NhbGhvc3Qva3NsaW5rL3BldDAxL3dwLWNvbnRlbnQvdXBsb2Fkcy8yMDIwLzA2L2hvbWUtc2VjdGlvbi01LW1hcC5qcGciIGFsdD0iIiB3aWR0aD0iNDM0IiBoZWlnaHQ9IjI1OSIgLz48L3RkPg0KICA8L3RyPg0KICA8L3Rib2R5Pg0KICA8L3RhYmxlPiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"\\u5e97\\u8217\\u6e05\\u5831\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"e9aa29bc5fc956c3722c6dc4bd84d7a3\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-27 09:04:02\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6fae3749-2421-404d-8768-cd9c814cff6c', '', '', '2020-06-27 18:04:02', '2020-06-27 09:04:02', '', 0, 'http://20test-018.kslink.tech/6fae3749-2421-404d-8768-cd9c814cff6c/', 0, 'customize_changeset', '', 0),
(54, 1, '2020-06-27 18:19:31', '2020-06-27 09:19:31', '{\n    \"widget_text[5]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjMwOiLjgZTkuojntITjg7vjgYrllY/jgYTlkIjjgo/jgZsiO3M6NDoidGV4dCI7czoxNjE6IuODiOODquODn+ODs+OCsOOBruOBlOWtkOe0hOOBr+ODi+OBoeOCieOBrumbu+ipseeVquWPt+OBuOOBlOmAo+e1oeOBj+OBoOOBleOBhOOAgg0KDQo8YSBocmVmPSJ0ZWw6MDAwLTAwMC0wMDAwIj4wMDAtMDAwLTAwMDA8L2E+DQoNCuWPl+S7mOaZguWVj+OAgDEwOjAwIO+9njE4OjAwIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"\\u3054\\u4e88\\u7d04\\u30fb\\u304a\\u554f\\u3044\\u5408\\u308f\\u305b\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"2074d28eef2da7d4e8b58d355c83f82d\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-27 09:19:31\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '61c5c024-46af-4a4b-a11e-15f2df50e332', '', '', '2020-06-27 18:19:31', '2020-06-27 09:19:31', '', 0, 'http://20test-018.kslink.tech/61c5c024-46af-4a4b-a11e-15f2df50e332/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, '未分類', '%e6%9c%aa%e5%88%86%e9%a1%9e', 0),
(2, 'Top メニュー', 'top-%e3%83%a1%e3%83%8b%e3%83%a5%e3%83%bc', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(21, 2, 0),
(22, 2, 0),
(23, 2, 0),
(24, 2, 0),
(25, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'kslink_admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'text_widget_custom_html'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(22, 1, 'wp_user-settings-time', '1593249568'),
(23, 1, 'session_tokens', 'a:3:{s:64:\"6768f81358ea14eafbb0be5c0fd907dd502bbbf27d6093ac35505d332837f938\";a:4:{s:10:\"expiration\";i:1593416409;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36\";s:5:\"login\";i:1593243609;}s:64:\"073d6a0f8e59a7e32a22c16a77e3eb5017e176f99f1c8b693e0364816e3343e4\";a:4:{s:10:\"expiration\";i:1593418896;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36\";s:5:\"login\";i:1593246096;}s:64:\"ebc5fb5d8fa4f0bd34ff4a085ef9bb64a1c6d80efcea92a0d6ad32d4025ec436\";a:4:{s:10:\"expiration\";i:1594483335;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36\";s:5:\"login\";i:1593273735;}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'kslink_admin', '$P$Bu70zHCnI0V6Go/gDnqe69dksT.RI0/', 'kslink_admin', 'ducmonmz@gmail.com', 'http://20test-018.kslink.tech', '2020-06-26 07:35:13', '', 0, 'kslink_admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_indexable`
--

CREATE TABLE `wp_yoast_indexable` (
  `id` int(11) UNSIGNED NOT NULL,
  `permalink` longtext COLLATE utf8mb4_unicode_ci,
  `permalink_hash` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_id` int(11) UNSIGNED DEFAULT NULL,
  `object_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `object_sub_type` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` int(11) UNSIGNED DEFAULT NULL,
  `post_parent` int(11) UNSIGNED DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `breadcrumb_title` text COLLATE utf8mb4_unicode_ci,
  `post_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT '0',
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) UNSIGNED DEFAULT NULL,
  `canonical` longtext COLLATE utf8mb4_unicode_ci,
  `primary_focus_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT '0',
  `is_robots_noindex` tinyint(1) DEFAULT '0',
  `is_robots_nofollow` tinyint(1) DEFAULT '0',
  `is_robots_noarchive` tinyint(1) DEFAULT '0',
  `is_robots_noimageindex` tinyint(1) DEFAULT '0',
  `is_robots_nosnippet` tinyint(1) DEFAULT '0',
  `twitter_title` text COLLATE utf8mb4_unicode_ci,
  `twitter_image` longtext COLLATE utf8mb4_unicode_ci,
  `twitter_description` longtext COLLATE utf8mb4_unicode_ci,
  `twitter_image_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image_source` text COLLATE utf8mb4_unicode_ci,
  `open_graph_title` text COLLATE utf8mb4_unicode_ci,
  `open_graph_description` longtext COLLATE utf8mb4_unicode_ci,
  `open_graph_image` longtext COLLATE utf8mb4_unicode_ci,
  `open_graph_image_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image_source` text COLLATE utf8mb4_unicode_ci,
  `open_graph_image_meta` mediumtext COLLATE utf8mb4_unicode_ci,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint(20) NOT NULL DEFAULT '1',
  `language` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schema_page_type` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schema_article_type` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_yoast_indexable`
--

INSERT INTO `wp_yoast_indexable` (`id`, `permalink`, `permalink_hash`, `object_id`, `object_type`, `object_sub_type`, `author_id`, `post_parent`, `title`, `description`, `breadcrumb_title`, `post_status`, `is_public`, `is_protected`, `has_public_posts`, `number_of_pages`, `canonical`, `primary_focus_keyword`, `primary_focus_keyword_score`, `readability_score`, `is_cornerstone`, `is_robots_noindex`, `is_robots_nofollow`, `is_robots_noarchive`, `is_robots_noimageindex`, `is_robots_nosnippet`, `twitter_title`, `twitter_image`, `twitter_description`, `twitter_image_id`, `twitter_image_source`, `open_graph_title`, `open_graph_description`, `open_graph_image`, `open_graph_image_id`, `open_graph_image_source`, `open_graph_image_meta`, `link_count`, `incoming_link_count`, `prominent_words_version`, `created_at`, `updated_at`, `blog_id`, `language`, `region`, `schema_page_type`, `schema_article_type`, `has_ancestors`) VALUES
(1, 'http://20test-018.kslink.tech/author/kslink_admin/', '50:c23d953cb2965c4874b20db4dbf04caa', 1, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'https://2.gravatar.com/avatar/be19d73eaa079c45c3d8246f5a31f16c?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://2.gravatar.com/avatar/be19d73eaa079c45c3d8246f5a31f16c?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2020-06-26 07:38:50', '2020-06-27 16:17:06', 1, NULL, NULL, NULL, NULL, 0),
(2, NULL, '40:459bd6ef34c154bd45c7cbe727313b21', 3, 'post', 'page', 1, 0, NULL, NULL, 'プライバシーポリシー', 'draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-26 07:38:50', '2020-06-26 12:49:18', 1, NULL, NULL, NULL, NULL, 0),
(3, 'http://20test-018.kslink.tech/', '30:6355cb9c4ea5fd35150481e069197b8c', 2, 'post', 'page', 1, 0, NULL, NULL, 'トップ', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2020-06-26 07:38:50', '2020-06-27 16:17:06', 1, NULL, NULL, NULL, NULL, 0),
(4, NULL, '34:9df8b4a92043bddab6c89d1f6dd66ec3', 4, 'post', 'post', 1, 0, NULL, NULL, '自動下書き', 'auto-draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-26 07:38:50', '2020-06-26 12:49:18', 1, NULL, NULL, NULL, NULL, 0),
(5, NULL, '53:b3f8f2a7bee87814771c98f40cb1bb17', 1, 'post', 'post', 1, 0, NULL, NULL, 'Hello world!', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-26 07:38:50', '2020-06-26 12:49:18', 1, NULL, NULL, NULL, NULL, 0),
(6, NULL, '67:b5674cb44f10ce5a2453210161e16c55', 1, 'term', 'category', NULL, NULL, NULL, NULL, '未分類', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-26 07:38:50', '2020-06-26 12:49:18', 1, NULL, NULL, NULL, NULL, 0),
(7, NULL, NULL, NULL, 'system-page', '404', NULL, NULL, 'ページが見つかりませんでした %%sep%% %%sitename%%', NULL, 'エラー 404: ページが見つかりません。', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-26 07:38:50', '2020-06-27 07:19:22', 1, NULL, NULL, NULL, NULL, 0),
(8, NULL, NULL, NULL, 'system-page', 'search-result', NULL, NULL, '検索結果: %%searchphrase%% %%page%% %%sep%% %%sitename%%', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-26 07:38:50', '2020-06-27 07:10:56', 1, NULL, NULL, NULL, NULL, 0),
(9, NULL, NULL, NULL, 'date-archive', NULL, NULL, NULL, '%%date%% %%page%% %%sep%% %%sitename%%', '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-26 07:38:50', '2020-06-27 07:10:56', 1, NULL, NULL, NULL, NULL, 0),
(10, 'http://20test-018.kslink.tech/', '30:6355cb9c4ea5fd35150481e069197b8c', NULL, 'home-page', NULL, NULL, NULL, '%%sitename%% %%page%% %%sep%% %%sitedesc%%', 'Just another WordPress site', 'ホーム', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL, NULL, NULL, NULL, '2020-06-26 07:38:50', '2020-06-27 16:17:06', 1, NULL, NULL, NULL, NULL, 0),
(11, 'http://20test-018.kslink.tech/%e3%81%8a%e5%ba%97%e3%81%ae%e3%81%93%e3%81%a0%e3%82%8f%e3%82%8a/', '94:d72e913d691d9acf5e3fc84fb1304339', 5, 'post', 'page', 1, 0, NULL, NULL, 'お店のこだわり', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2020-06-26 07:40:39', '2020-06-27 16:17:06', 1, NULL, NULL, NULL, NULL, 0),
(12, 'http://20test-018.kslink.tech/%e3%83%8b%e3%83%a5%e3%83%bc%e3%82%b9/', '67:b668c68fcd6cfd149fe5edd163e17db7', 7, 'post', 'page', 1, 0, NULL, NULL, 'ニュース', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2020-06-26 07:41:32', '2020-06-27 16:17:06', 1, NULL, NULL, NULL, NULL, 0),
(13, 'http://20test-018.kslink.tech/%e3%83%a1%e3%83%8b%e3%83%a5%e3%83%bc/', '67:5e6f2622b736acd3c59eecd9d98d8d98', 8, 'post', 'page', 1, 0, NULL, NULL, 'メニュー', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2020-06-26 07:41:39', '2020-06-27 16:17:06', 1, NULL, NULL, NULL, NULL, 0),
(14, 'http://20test-018.kslink.tech/%e3%82%ae%e3%83%a3%e3%83%a9%e3%83%aa%e3%83%bc/', '76:c2994dcd2bd213b353cd4c99d3b8b570', 10, 'post', 'page', 1, 0, NULL, NULL, 'ギャラリー', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2020-06-26 07:42:10', '2020-06-27 16:17:06', 1, NULL, NULL, NULL, NULL, 0),
(15, 'http://20test-018.kslink.tech/%e3%81%8a%e5%95%8f%e3%81%84%e5%90%88%e3%82%8f%e3%81%9b/', '85:c8da19715ce4e40c523c7056022ce805', 13, 'post', 'page', 1, 0, NULL, NULL, 'お問い合わせ', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2020-06-26 07:42:50', '2020-06-27 16:17:06', 1, NULL, NULL, NULL, NULL, 0),
(16, 'http://20test-018.kslink.tech/%e3%83%a1%e3%83%8b%e3%83%a5%e3%83%bc/%e3%83%88%e3%83%aa%e3%83%9f%e3%83%b3%e3%82%b0/', '113:a00e0c5556e9b9394bc634d1dff9e00e', 16, 'post', 'page', 1, 8, NULL, NULL, 'トリミング', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2020-06-26 07:45:29', '2020-06-27 16:17:06', 1, NULL, NULL, NULL, NULL, 1),
(17, 'http://20test-018.kslink.tech/%e5%ba%97%e8%88%96%e6%83%85%e5%a0%b1/', '67:28ab11d1492e9ff410b7baf2394cca97', 18, 'post', 'page', 1, 0, NULL, NULL, '店舖情報', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2020-06-26 07:48:51', '2020-06-27 16:17:06', 1, NULL, NULL, NULL, NULL, 0),
(18, 'http://20test-018.kslink.tech/2020/06/26/21/', '44:09ae2c284029650a05453bfa800efbaa', 21, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-26 07:50:19', '2020-06-27 16:17:06', 1, NULL, NULL, NULL, NULL, 0),
(19, 'http://20test-018.kslink.tech/2020/06/26/22/', '44:dc2efd853996de093ad7fc892751794a', 22, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-26 07:50:24', '2020-06-27 16:17:06', 1, NULL, NULL, NULL, NULL, 0),
(20, 'http://20test-018.kslink.tech/2020/06/26/23/', '44:694576aac0f6cc1b160a4c4325740537', 23, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-26 07:50:30', '2020-06-27 16:17:06', 1, NULL, NULL, NULL, NULL, 0),
(21, 'http://20test-018.kslink.tech/2020/06/26/24/', '44:62facd2d2629bdfefd095269822609de', 24, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-26 07:50:39', '2020-06-27 16:17:06', 1, NULL, NULL, NULL, NULL, 0),
(22, 'http://20test-018.kslink.tech/2020/06/26/25/', '44:f51e3f83dfce99f91b82d7ddbba76ad0', 25, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-26 07:50:46', '2020-06-27 16:17:06', 1, NULL, NULL, NULL, NULL, 0),
(23, 'http://20test-018.kslink.tech/f54b4cd1-e731-4a2d-98c8-7aad4b6088f9/', '67:755d038c89082fbcbcb442f653014412', 26, 'post', 'customize_changeset', 1, 0, NULL, NULL, '', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-26 13:00:51', '2020-06-27 16:17:06', 1, NULL, NULL, NULL, NULL, 0),
(24, 'http://20test-018.kslink.tech/420cbafd-e19c-4887-af36-4127149b3a71/', '67:9397eac6da161119d67f101b0ec0eb46', 27, 'post', 'customize_changeset', 1, 0, NULL, NULL, '', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-26 15:10:14', '2020-06-27 16:17:06', 1, NULL, NULL, NULL, NULL, 0),
(25, 'http://20test-018.kslink.tech/cd86f943-1161-4d16-831e-95b69d90fb05/', '67:57393e5e16b6b7b65cfe9fa288ccecce', 28, 'post', 'customize_changeset', 1, 0, NULL, NULL, '', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-26 15:10:47', '2020-06-27 16:17:06', 1, NULL, NULL, NULL, NULL, 0),
(26, 'http://20test-018.kslink.tech/%e3%83%a1%e3%83%8b%e3%83%a5%e3%83%bc/%e3%82%ad%e3%83%a3%e3%83%b3%e3%83%97%e3%83%bc/', '113:2260d43e52f6c352c412e7c0dbdb8bbb', 29, 'post', 'page', 1, 8, NULL, NULL, 'キャンプー', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2020-06-26 15:22:11', '2020-06-27 16:17:06', 1, NULL, NULL, NULL, NULL, 1),
(27, 'http://20test-018.kslink.tech/%e3%83%a1%e3%83%8b%e3%83%a5%e3%83%bc/%e3%82%aa%e3%83%97%e3%82%b7%e3%83%a7%e3%83%b3/', '113:3aa4bddce0f81f0edb5a16340f880291', 31, 'post', 'page', 1, 8, NULL, NULL, 'オプション', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2020-06-26 15:22:44', '2020-06-27 16:17:06', 1, NULL, NULL, NULL, NULL, 1),
(28, 'http://20test-018.kslink.tech/2dff98f5-db62-42db-a485-8e32cde07db3/', '67:bbc0dacc63e981532036ffe2e0b92368', 33, 'post', 'customize_changeset', 1, 0, NULL, NULL, '', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-26 15:26:57', '2020-06-27 16:17:06', 1, NULL, NULL, NULL, NULL, 0),
(29, 'http://20test-018.kslink.tech/sekoujirei/', '41:239bc4c29651cd9316c3db203d69de10', NULL, 'post-type-archive', 'sekoujirei', NULL, NULL, '%%pt_plural%% アーカイブ %%page%% %%sep%% %%sitename%%', '', '施工事例', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-27 01:30:07', '2020-06-27 16:17:06', 1, NULL, NULL, NULL, NULL, 0),
(31, 'http://20test-018.kslink.tech/wp-content/uploads/2020/06/home-section-1.png', '75:5083edd170246a6eb29f9f9b4f1895a7', 35, 'post', 'attachment', 1, 0, NULL, NULL, 'home-section-1', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://20test-018.kslink.tech/wp-content/uploads/2020/06/home-section-1.png', NULL, '35', 'attachment-image', NULL, NULL, NULL, '35', 'attachment-image', NULL, NULL, NULL, NULL, '2020-06-27 01:33:00', '2020-06-27 16:17:06', 1, NULL, NULL, NULL, NULL, 0),
(32, 'http://20test-018.kslink.tech/wp-content/uploads/2020/06/home-section-2.jpg', '75:191ffb758e7c50a31b0d8aea3b887e5b', 36, 'post', 'attachment', 1, 0, NULL, NULL, 'home-section-2', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://20test-018.kslink.tech/wp-content/uploads/2020/06/home-section-2.jpg', NULL, '36', 'attachment-image', NULL, NULL, NULL, '36', 'attachment-image', NULL, NULL, NULL, NULL, '2020-06-27 01:42:49', '2020-06-27 16:17:06', 1, NULL, NULL, NULL, NULL, 0),
(33, 'http://20test-018.kslink.tech/wp-content/uploads/2020/06/home-section-3-top.jpg', '79:c88c68d39c34a9d9636c2f4857e21349', 37, 'post', 'attachment', 1, 0, NULL, NULL, 'home-section-3-top', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://20test-018.kslink.tech/wp-content/uploads/2020/06/home-section-3-top.jpg', NULL, '37', 'attachment-image', NULL, NULL, NULL, '37', 'attachment-image', NULL, NULL, NULL, NULL, '2020-06-27 02:12:43', '2020-06-27 16:17:06', 1, NULL, NULL, NULL, NULL, 0),
(34, 'http://20test-018.kslink.tech/wp-content/uploads/2020/06/home-section-3.jpg', '75:c98216fc403c96baa952f010059959ea', 38, 'post', 'attachment', 1, 0, NULL, NULL, 'home-section-3', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://20test-018.kslink.tech/wp-content/uploads/2020/06/home-section-3.jpg', NULL, '38', 'attachment-image', NULL, NULL, NULL, '38', 'attachment-image', NULL, NULL, NULL, NULL, '2020-06-27 02:17:12', '2020-06-27 16:17:06', 1, NULL, NULL, NULL, NULL, 0),
(35, 'http://20test-018.kslink.tech/?post_type=acf-field-group&p=39', '61:bf193cb1bfbde731ae15d240fa1b99d5', 39, 'post', 'acf-field-group', 1, 0, NULL, NULL, 'ホームの設定', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-27 02:30:32', '2020-06-27 16:17:06', 1, NULL, NULL, NULL, NULL, 0),
(36, 'http://20test-018.kslink.tech/?post_type=acf-field&p=40', '55:954a083a47f5bf0b34178cb5103f3e2d', 40, 'post', 'acf-field', 1, 39, NULL, NULL, 'ホームのアイコン', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-27 02:31:22', '2020-06-27 16:17:06', 1, NULL, NULL, NULL, NULL, 1),
(37, 'http://20test-018.kslink.tech/wp-content/uploads/2020/06/home-new-icon-2.jpg', '76:7d1824b52ab45e6c29cf374134918955', 41, 'post', 'attachment', 1, 31, NULL, NULL, 'home-new-icon-2', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://20test-018.kslink.tech/wp-content/uploads/2020/06/home-new-icon-2.jpg', NULL, '41', 'attachment-image', NULL, NULL, NULL, '41', 'attachment-image', NULL, NULL, NULL, NULL, '2020-06-27 02:36:33', '2020-06-27 16:17:06', 1, NULL, NULL, NULL, NULL, 1),
(38, 'http://20test-018.kslink.tech/wp-content/uploads/2020/06/home-new-icon-3.jpg', '76:48625026d3a3d903a6bccf04882f244d', 42, 'post', 'attachment', 1, 31, NULL, NULL, 'home-new-icon-3', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://20test-018.kslink.tech/wp-content/uploads/2020/06/home-new-icon-3.jpg', NULL, '42', 'attachment-image', NULL, NULL, NULL, '42', 'attachment-image', NULL, NULL, NULL, NULL, '2020-06-27 02:36:33', '2020-06-27 16:17:06', 1, NULL, NULL, NULL, NULL, 1),
(39, 'http://20test-018.kslink.tech/wp-content/uploads/2020/06/home-new-icon-1.jpg', '76:340bfa70e57ebe293cd7508793a084d6', 43, 'post', 'attachment', 1, 31, NULL, NULL, 'home-new-icon-1', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://20test-018.kslink.tech/wp-content/uploads/2020/06/home-new-icon-1.jpg', NULL, '43', 'attachment-image', NULL, NULL, NULL, '43', 'attachment-image', NULL, NULL, NULL, NULL, '2020-06-27 02:36:34', '2020-06-27 16:17:06', 1, NULL, NULL, NULL, NULL, 1),
(40, 'http://20test-018.kslink.tech/wp-content/uploads/2020/06/home-section-5-map.jpg', '79:6cfa16ff4298a9b7b8907b2d4a146950', 49, 'post', 'attachment', 1, 0, NULL, NULL, 'home-section-5-map', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://20test-018.kslink.tech/wp-content/uploads/2020/06/home-section-5-map.jpg', NULL, '49', 'attachment-image', NULL, NULL, NULL, '49', 'attachment-image', NULL, NULL, NULL, NULL, '2020-06-27 02:52:48', '2020-06-27 16:17:06', 1, NULL, NULL, NULL, NULL, 0),
(41, 'http://20test-018.kslink.tech/wp-content/uploads/2020/06/home-section-6.jpg', '75:810e50fa2abaa5908f2e921901fed950', 50, 'post', 'attachment', 1, 0, NULL, NULL, 'home-section-6', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://20test-018.kslink.tech/wp-content/uploads/2020/06/home-section-6.jpg', NULL, '50', 'attachment-image', NULL, NULL, NULL, '50', 'attachment-image', NULL, NULL, NULL, NULL, '2020-06-27 02:56:33', '2020-06-27 16:17:06', 1, NULL, NULL, NULL, NULL, 0),
(42, 'http://20test-018.kslink.tech/5bf87fdc-1498-4710-9749-81d8db91e591/', '67:dbfe53433f911d84e90071d2974d07e5', 51, 'post', 'customize_changeset', 1, 0, NULL, NULL, '', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-27 08:22:11', '2020-06-27 16:17:06', 1, NULL, NULL, NULL, NULL, 0),
(43, 'http://20test-018.kslink.tech/0838d971-d57f-4ddd-a003-e3336dca18bb/', '67:feadef72485ac544b89619a1f1aa353c', 52, 'post', 'customize_changeset', 1, 0, NULL, NULL, '', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-27 08:38:36', '2020-06-27 16:17:06', 1, NULL, NULL, NULL, NULL, 0),
(44, 'http://20test-018.kslink.tech/6fae3749-2421-404d-8768-cd9c814cff6c/', '67:8cbd97db320bc38e9383240dd06a1c4b', 53, 'post', 'customize_changeset', 1, 0, NULL, NULL, '', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-27 09:04:02', '2020-06-27 16:17:06', 1, NULL, NULL, NULL, NULL, 0),
(45, 'http://20test-018.kslink.tech/61c5c024-46af-4a4b-a11e-15f2df50e332/', '67:cad0b4bb393cac561b845a8a22889247', 54, 'post', 'customize_changeset', 1, 0, NULL, NULL, '', 'trash', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-27 09:19:31', '2020-06-27 16:17:06', 1, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_indexable_hierarchy`
--

CREATE TABLE `wp_yoast_indexable_hierarchy` (
  `indexable_id` int(11) UNSIGNED NOT NULL,
  `ancestor_id` int(11) UNSIGNED NOT NULL,
  `depth` int(11) UNSIGNED DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_yoast_indexable_hierarchy`
--

INSERT INTO `wp_yoast_indexable_hierarchy` (`indexable_id`, `ancestor_id`, `depth`, `blog_id`) VALUES
(16, 13, 1, 1),
(26, 13, 1, 1),
(27, 13, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_migrations`
--

CREATE TABLE `wp_yoast_migrations` (
  `id` int(11) UNSIGNED NOT NULL,
  `version` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_yoast_migrations`
--

INSERT INTO `wp_yoast_migrations` (`id`, `version`) VALUES
(1, '20171228151840'),
(2, '20171228151841'),
(3, '20190529075038'),
(4, '20191011111109'),
(5, '20200408101900'),
(6, '20200420073606'),
(7, '20200428123747'),
(8, '20200428194858'),
(9, '20200429105310'),
(10, '20200430075614'),
(11, '20200430150130'),
(12, '20200507054848'),
(13, '20200513133401'),
(14, '20200609154515');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_primary_term`
--

CREATE TABLE `wp_yoast_primary_term` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` int(11) UNSIGNED NOT NULL,
  `term_id` int(11) UNSIGNED NOT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint(20) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_seo_meta`
--

CREATE TABLE `wp_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_yoast_seo_meta`
--

INSERT INTO `wp_yoast_seo_meta` (`object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(2, 0, 0),
(5, 0, 0),
(7, 0, 0),
(8, 0, 0),
(10, 0, 0),
(13, 0, 0),
(16, 0, 0),
(18, 0, 0),
(29, 0, 0),
(31, 0, 0),
(34, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_duplicator_packages`
--
ALTER TABLE `wp_duplicator_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hash` (`hash`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  ADD KEY `permalink_hash` (`permalink_hash`),
  ADD KEY `object_id_and_type` (`object_id`,`object_type`);

--
-- Indexes for table `wp_yoast_indexable_hierarchy`
--
ALTER TABLE `wp_yoast_indexable_hierarchy`
  ADD PRIMARY KEY (`indexable_id`,`ancestor_id`),
  ADD KEY `indexable_id` (`indexable_id`),
  ADD KEY `ancestor_id` (`ancestor_id`),
  ADD KEY `depth` (`depth`);

--
-- Indexes for table `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wp_yoast_migrations_version` (`version`);

--
-- Indexes for table `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_taxonomy` (`post_id`,`taxonomy`),
  ADD KEY `post_term` (`post_id`,`term_id`);

--
-- Indexes for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Indexes for table `wp_yoast_seo_meta`
--
ALTER TABLE `wp_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_duplicator_packages`
--
ALTER TABLE `wp_duplicator_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
