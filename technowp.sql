-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2017 at 03:07 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `technowp`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-09-27 15:20:12', '2017-09-27 15:20:12', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress/techno', 'yes'),
(2, 'home', 'http://localhost/wordpress/techno', 'yes'),
(3, 'blogname', 'Technowolfs', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'sanjay@gmail.com', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:178:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:10:"service/?$";s:40:"index.php?post_type=custom_theme_service";s:40:"service/feed/(feed|rdf|rss|rss2|atom)/?$";s:57:"index.php?post_type=custom_theme_service&feed=$matches[1]";s:35:"service/(feed|rdf|rss|rss2|atom)/?$";s:57:"index.php?post_type=custom_theme_service&feed=$matches[1]";s:27:"service/page/([0-9]{1,})/?$";s:58:"index.php?post_type=custom_theme_service&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:40:"vc_grid_item/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"vc_grid_item/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"vc_grid_item/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"vc_grid_item/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"vc_grid_item/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"vc_grid_item/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:29:"vc_grid_item/([^/]+)/embed/?$";s:45:"index.php?vc_grid_item=$matches[1]&embed=true";s:33:"vc_grid_item/([^/]+)/trackback/?$";s:39:"index.php?vc_grid_item=$matches[1]&tb=1";s:41:"vc_grid_item/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?vc_grid_item=$matches[1]&paged=$matches[2]";s:48:"vc_grid_item/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?vc_grid_item=$matches[1]&cpage=$matches[2]";s:37:"vc_grid_item/([^/]+)(?:/([0-9]+))?/?$";s:51:"index.php?vc_grid_item=$matches[1]&page=$matches[2]";s:29:"vc_grid_item/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"vc_grid_item/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"vc_grid_item/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"vc_grid_item/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"vc_grid_item/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"vc_grid_item/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:35:"service/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"service/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"service/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"service/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"service/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"service/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"service/([^/]+)/embed/?$";s:53:"index.php?custom_theme_service=$matches[1]&embed=true";s:28:"service/([^/]+)/trackback/?$";s:47:"index.php?custom_theme_service=$matches[1]&tb=1";s:48:"service/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:59:"index.php?custom_theme_service=$matches[1]&feed=$matches[2]";s:43:"service/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:59:"index.php?custom_theme_service=$matches[1]&feed=$matches[2]";s:36:"service/([^/]+)/page/?([0-9]{1,})/?$";s:60:"index.php?custom_theme_service=$matches[1]&paged=$matches[2]";s:43:"service/([^/]+)/comment-page-([0-9]{1,})/?$";s:60:"index.php?custom_theme_service=$matches[1]&cpage=$matches[2]";s:32:"service/([^/]+)(?:/([0-9]+))?/?$";s:59:"index.php?custom_theme_service=$matches[1]&page=$matches[2]";s:24:"service/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"service/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"service/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"service/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"service/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"service/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:43:"technoportfolio/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:53:"technoportfolio/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:73:"technoportfolio/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"technoportfolio/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"technoportfolio/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:49:"technoportfolio/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:32:"technoportfolio/([^/]+)/embed/?$";s:48:"index.php?technoportfolio=$matches[1]&embed=true";s:36:"technoportfolio/([^/]+)/trackback/?$";s:42:"index.php?technoportfolio=$matches[1]&tb=1";s:44:"technoportfolio/([^/]+)/page/?([0-9]{1,})/?$";s:55:"index.php?technoportfolio=$matches[1]&paged=$matches[2]";s:51:"technoportfolio/([^/]+)/comment-page-([0-9]{1,})/?$";s:55:"index.php?technoportfolio=$matches[1]&cpage=$matches[2]";s:40:"technoportfolio/([^/]+)(?:/([0-9]+))?/?$";s:54:"index.php?technoportfolio=$matches[1]&page=$matches[2]";s:32:"technoportfolio/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:42:"technoportfolio/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:62:"technoportfolio/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"technoportfolio/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"technoportfolio/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"technoportfolio/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:41:"technosliders/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:51:"technosliders/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:71:"technosliders/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:66:"technosliders/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:66:"technosliders/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:47:"technosliders/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:30:"technosliders/([^/]+)/embed/?$";s:46:"index.php?technosliders=$matches[1]&embed=true";s:34:"technosliders/([^/]+)/trackback/?$";s:40:"index.php?technosliders=$matches[1]&tb=1";s:42:"technosliders/([^/]+)/page/?([0-9]{1,})/?$";s:53:"index.php?technosliders=$matches[1]&paged=$matches[2]";s:49:"technosliders/([^/]+)/comment-page-([0-9]{1,})/?$";s:53:"index.php?technosliders=$matches[1]&cpage=$matches[2]";s:38:"technosliders/([^/]+)(?:/([0-9]+))?/?$";s:52:"index.php?technosliders=$matches[1]&page=$matches[2]";s:30:"technosliders/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:40:"technosliders/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:60:"technosliders/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"technosliders/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"technosliders/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:36:"technosliders/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:39:"technoblogs/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"technoblogs/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"technoblogs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"technoblogs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"technoblogs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"technoblogs/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:28:"technoblogs/([^/]+)/embed/?$";s:44:"index.php?technoblogs=$matches[1]&embed=true";s:32:"technoblogs/([^/]+)/trackback/?$";s:38:"index.php?technoblogs=$matches[1]&tb=1";s:40:"technoblogs/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?technoblogs=$matches[1]&paged=$matches[2]";s:47:"technoblogs/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?technoblogs=$matches[1]&cpage=$matches[2]";s:36:"technoblogs/([^/]+)(?:/([0-9]+))?/?$";s:50:"index.php?technoblogs=$matches[1]&page=$matches[2]";s:28:"technoblogs/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"technoblogs/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"technoblogs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"technoblogs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"technoblogs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"technoblogs/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=5&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:36:"contact-form-7/wp-contact-form-7.php";i:1;s:33:"js_composer_theme/js_composer.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'technowolfs', 'yes'),
(41, 'stylesheet', 'technowolfs', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '5', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'cron', 'a:4:{i:1506655212;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1506698420;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1506698591;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(109, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1506525634;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(122, 'can_compress_scripts', '1', 'no'),
(139, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.8.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.8.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.8.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.8.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.8.2";s:7:"version";s:5:"4.8.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1506616482;s:15:"version_checked";s:5:"4.8.2";s:12:"translations";a:0:{}}', 'no'),
(143, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(146, '_transient_timeout_plugin_slugs', '1506616307', 'no'),
(147, '_transient_plugin_slugs', 'a:4:{i:0;s:19:"akismet/akismet.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:9:"hello.php";i:3;s:33:"js_composer_theme/js_composer.php";}', 'no'),
(148, 'recently_activated', 'a:0:{}', 'yes'),
(153, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:"stdClass":100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";i:4381;}s:4:"post";a:3:{s:4:"name";s:4:"post";s:4:"slug";s:4:"post";s:5:"count";i:2507;}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";i:2372;}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";i:2313;}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";i:1835;}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";i:1603;}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";i:1594;}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";i:1438;}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";i:1357;}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";i:1354;}s:8:"facebook";a:3:{s:4:"name";s:8:"facebook";s:4:"slug";s:8:"facebook";s:5:"count";i:1344;}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";i:1279;}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";i:1273;}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";i:1138;}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";i:1058;}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";i:1051;}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";i:998;}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";i:947;}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";i:820;}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";i:816;}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";i:815;}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";i:775;}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";i:772;}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";i:670;}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";i:670;}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";i:663;}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";i:654;}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";i:648;}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";i:646;}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";i:638;}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";i:625;}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";i:612;}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";i:596;}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";i:590;}s:4:"ajax";a:3:{s:4:"name";s:4:"ajax";s:4:"slug";s:4:"ajax";s:5:"count";i:588;}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";i:584;}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";i:577;}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";i:576;}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";i:561;}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";i:558;}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";i:543;}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";i:535;}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";i:525;}s:3:"css";a:3:{s:4:"name";s:3:"css";s:4:"slug";s:3:"css";s:5:"count";i:519;}s:5:"share";a:3:{s:4:"name";s:5:"share";s:4:"slug";s:5:"share";s:5:"count";i:505;}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";i:502;}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";i:496;}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";i:489;}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";i:477;}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";i:475;}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";i:474;}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";i:470;}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";i:452;}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";i:448;}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";i:442;}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";i:440;}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";i:440;}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";i:436;}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";i:420;}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";i:417;}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";i:411;}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";i:408;}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";i:406;}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";i:405;}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";i:403;}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";i:397;}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";i:387;}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";i:383;}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";i:381;}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";i:370;}s:4:"news";a:3:{s:4:"name";s:4:"news";s:4:"slug";s:4:"news";s:5:"count";i:354;}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";i:344;}s:7:"payment";a:3:{s:4:"name";s:7:"payment";s:4:"slug";s:7:"payment";s:5:"count";i:340;}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";i:332;}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";i:332;}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";i:331;}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";i:330;}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";i:330;}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";i:327;}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";i:326;}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";i:323;}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";i:321;}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";i:321;}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";i:314;}s:4:"chat";a:3:{s:4:"name";s:4:"chat";s:4:"slug";s:4:"chat";s:5:"count";i:305;}s:8:"redirect";a:3:{s:4:"name";s:8:"redirect";s:4:"slug";s:8:"redirect";s:5:"count";i:301;}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";i:300;}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";i:293;}s:15:"payment-gateway";a:3:{s:4:"name";s:15:"payment gateway";s:4:"slug";s:15:"payment-gateway";s:5:"count";i:293;}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";i:292;}s:5:"forms";a:3:{s:4:"name";s:5:"forms";s:4:"slug";s:5:"forms";s:5:"count";i:289;}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";i:287;}s:7:"adsense";a:3:{s:4:"name";s:7:"adsense";s:4:"slug";s:7:"adsense";s:5:"count";i:284;}s:6:"author";a:3:{s:4:"name";s:6:"author";s:4:"slug";s:6:"author";s:5:"count";i:283;}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";i:279;}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";i:278;}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";i:275;}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";i:275;}s:7:"tinymce";a:3:{s:4:"name";s:7:"tinyMCE";s:4:"slug";s:7:"tinymce";s:5:"count";i:273;}s:7:"captcha";a:3:{s:4:"name";s:7:"captcha";s:4:"slug";s:7:"captcha";s:5:"count";i:271;}}', 'no'),
(140, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:16:"sanjay@gmail.com";s:7:"version";s:5:"4.8.2";s:9:"timestamp";i:1506525648;}', 'no'),
(161, '_site_transient_timeout_theme_roots', '1506618295', 'no'),
(162, '_site_transient_theme_roots', 'a:4:{s:11:"technowolfs";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(118, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1506616549;s:7:"checked";a:4:{s:11:"technowolfs";s:3:"1.0";s:13:"twentyfifteen";s:3:"1.8";s:15:"twentyseventeen";s:3:"1.3";s:13:"twentysixteen";s:3:"1.3";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(119, '_site_transient_timeout_browser_d7a7a4cb314bb1112aa70d075e2694aa', '1507130424', 'no'),
(120, '_site_transient_browser_d7a7a4cb314bb1112aa70d075e2694aa', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"60.0.3112.113";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(130, 'current_theme', 'Technowolfs', 'yes'),
(131, 'theme_mods_technowolfs', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:0:{}}', 'yes'),
(132, 'theme_switched', '', 'yes'),
(164, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1506696600', 'no'),
(165, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: wordpress.org</p></div><div class="rss-widget"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: planet.wordpress.org</p></div>', 'no'),
(152, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1506540588', 'no'),
(151, 'vc_version', '4.12.2', 'yes'),
(163, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1506616538;s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":8:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:3:"4.0";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/akismet.4.0.zip";s:6:"tested";s:5:"4.8.1";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":6:{s:2:"id";s:28:"w.org/plugins/contact-form-7";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:3:"4.9";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/contact-form-7.4.9.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}}}', 'no'),
(154, 'wpcf7', 'a:2:{s:7:"version";s:3:"4.9";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1506529907;s:7:"version";s:3:"4.9";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(155, '_site_transient_timeout_available_translations', '1506547677', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(156, '_site_transient_available_translations', 'a:110:{s:2:"af";a:8:{s:8:"language";s:2:"af";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-04 12:02:13";s:12:"english_name";s:9:"Afrikaans";s:11:"native_name";s:9:"Afrikaans";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.8.2/af.zip";s:3:"iso";a:2:{i:1;s:2:"af";i:2;s:3:"afr";}s:7:"strings";a:1:{s:8:"continue";s:10:"Gaan voort";}}s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-07-29 08:49:40";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.8.2/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.7.6";s:7:"updated";s:19:"2017-01-26 15:42:35";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.7.6/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"as";a:8:{s:8:"language";s:2:"as";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-22 18:59:07";s:12:"english_name";s:8:"Assamese";s:11:"native_name";s:21:"অসমীয়া";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.7.2/as.zip";s:3:"iso";a:3:{i:1;s:2:"as";i:2;s:3:"asm";i:3;s:3:"asm";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-06 00:09:27";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.7.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-12 20:34:31";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.7.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:3:"bel";a:8:{s:8:"language";s:3:"bel";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-26 18:50:50";s:12:"english_name";s:10:"Belarusian";s:11:"native_name";s:29:"Беларуская мова";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.8.2/bel.zip";s:3:"iso";a:2:{i:1;s:2:"be";i:2;s:3:"bel";}s:7:"strings";a:1:{s:8:"continue";s:20:"Працягнуць";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-08-09 09:24:45";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-04 16:58:43";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.7.2/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:2:"bo";a:8:{s:8:"language";s:2:"bo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-05 09:44:12";s:12:"english_name";s:7:"Tibetan";s:11:"native_name";s:21:"བོད་ཡིག";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.7.2/bo.zip";s:3:"iso";a:2:{i:1;s:2:"bo";i:2;s:3:"tib";}s:7:"strings";a:1:{s:8:"continue";s:24:"མུ་མཐུད།";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-04 20:20:28";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-08-08 21:01:45";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.8.2/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-02 17:25:51";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.7.2/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 08:46:26";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:12:"Čeština‎";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.7.2/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-19 16:27:32";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.8.2/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-23 01:58:28";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsæt";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-09 11:53:31";s:12:"english_name";s:30:"German (Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:72:"http://downloads.wordpress.org/translation/core/4.8.2/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-09 11:51:58";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-24 16:12:04";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-24 16:13:35";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:70:"http://downloads.wordpress.org/translation/core/4.8.2/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:3:"dzo";a:8:{s:8:"language";s:3:"dzo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-06-29 08:59:03";s:12:"english_name";s:8:"Dzongkha";s:11:"native_name";s:18:"རྫོང་ཁ";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.7.2/dzo.zip";s:3:"iso";a:2:{i:1;s:2:"dz";i:2;s:3:"dzo";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-07-28 10:51:51";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.8.2/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-07-25 19:47:01";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-07-25 17:31:04";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-08-02 03:57:05";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-07-25 10:03:08";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.7.6";s:7:"updated";s:19:"2017-01-26 15:53:43";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.7.6/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-07-26 10:38:53";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.8.2/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_CR";a:8:{s:8:"language";s:5:"es_CR";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-27 17:06:59";s:12:"english_name";s:20:"Spanish (Costa Rica)";s:11:"native_name";s:8:"Español";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/es_CR.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-07-30 16:09:17";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-08-01 04:48:11";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/es_AR.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-07-31 15:12:02";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.7.6";s:7:"updated";s:19:"2017-01-26 15:54:37";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.7.6/es_GT.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-09 09:36:22";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-28 20:09:49";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.7.2/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-18 14:39:36";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-08-13 17:00:30";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 16:37:11";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.7.2/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-19 12:08:05";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.8.2/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-09 15:50:45";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.8/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-07-28 11:00:29";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.8.2/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-07-28 12:37:07";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-26 06:49:15";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-07-28 09:14:18";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-08-23 17:41:37";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.7.2/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-07-26 12:45:35";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"gu";a:8:{s:8:"language";s:2:"gu";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-08-31 06:54:10";s:12:"english_name";s:8:"Gujarati";s:11:"native_name";s:21:"ગુજરાતી";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.8.2/gu.zip";s:3:"iso";a:2:{i:1;s:2:"gu";i:2;s:3:"guj";}s:7:"strings";a:1:{s:8:"continue";s:31:"ચાલુ રાખવું";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-12 21:37:24";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-07-28 10:29:26";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-22 14:47:25";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.8.2/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:39";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.7.2/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-03 16:21:10";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.7.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-07-28 12:45:08";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.7.6";s:7:"updated";s:19:"2017-04-13 13:55:54";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.7.6/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-10 18:53:47";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-08-03 23:23:50";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.8.2/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-12 09:20:11";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.8/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:3:"kab";a:8:{s:8:"language";s:3:"kab";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-08-22 15:33:00";s:12:"english_name";s:6:"Kabyle";s:11:"native_name";s:9:"Taqbaylit";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.8.2/kab.zip";s:3:"iso";a:2:{i:2;s:3:"kab";i:3;s:3:"kab";}s:7:"strings";a:1:{s:8:"continue";s:6:"Kemmel";}}s:2:"km";a:8:{s:8:"language";s:2:"km";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-07 02:07:59";s:12:"english_name";s:5:"Khmer";s:11:"native_name";s:27:"ភាសាខ្មែរ";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.7.2/km.zip";s:3:"iso";a:2:{i:1;s:2:"km";i:2;s:3:"khm";}s:7:"strings";a:1:{s:8:"continue";s:12:"បន្ត";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-07-28 10:48:16";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:3:"ckb";a:8:{s:8:"language";s:3:"ckb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:25";s:12:"english_name";s:16:"Kurdish (Sorani)";s:11:"native_name";s:13:"كوردی‎";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.7.2/ckb.zip";s:3:"iso";a:2:{i:1;s:2:"ku";i:3;s:3:"ckb";}s:7:"strings";a:1:{s:8:"continue";s:30:"به‌رده‌وام به‌";}}s:2:"lo";a:8:{s:8:"language";s:2:"lo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 09:59:23";s:12:"english_name";s:3:"Lao";s:11:"native_name";s:21:"ພາສາລາວ";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.7.2/lo.zip";s:3:"iso";a:2:{i:1;s:2:"lo";i:2;s:3:"lao";}s:7:"strings";a:1:{s:8:"continue";s:18:"ຕໍ່​ໄປ";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-07-28 11:02:15";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:2:"lv";a:8:{s:8:"language";s:2:"lv";s:7:"version";s:5:"4.7.6";s:7:"updated";s:19:"2017-03-17 20:40:40";s:12:"english_name";s:7:"Latvian";s:11:"native_name";s:16:"Latviešu valoda";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.7.6/lv.zip";s:3:"iso";a:2:{i:1;s:2:"lv";i:2;s:3:"lav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Turpināt";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"4.7.6";s:7:"updated";s:19:"2017-01-26 15:54:41";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.7.6/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:5:"ml_IN";a:8:{s:8:"language";s:5:"ml_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:43:32";s:12:"english_name";s:9:"Malayalam";s:11:"native_name";s:18:"മലയാളം";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ml";i:2;s:3:"mal";}s:7:"strings";a:1:{s:8:"continue";s:18:"തുടരുക";}}s:2:"mn";a:8:{s:8:"language";s:2:"mn";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 07:29:35";s:12:"english_name";s:9:"Mongolian";s:11:"native_name";s:12:"Монгол";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.7.2/mn.zip";s:3:"iso";a:2:{i:1;s:2:"mn";i:2;s:3:"mon";}s:7:"strings";a:1:{s:8:"continue";s:24:"Үргэлжлүүлэх";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-05 19:40:47";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.8/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.7.6";s:7:"updated";s:19:"2017-03-05 09:45:10";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.7.6/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.19";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:64:"http://downloads.wordpress.org/translation/core/4.1.19/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-08-02 21:02:39";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"ne_NP";a:8:{s:8:"language";s:5:"ne_NP";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-07-31 08:47:10";s:12:"english_name";s:6:"Nepali";s:11:"native_name";s:18:"नेपाली";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/ne_NP.zip";s:3:"iso";a:2:{i:1;s:2:"ne";i:2;s:3:"nep";}s:7:"strings";a:1:{s:8:"continue";s:43:"जारी राख्नुहोस्";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-08-30 07:58:32";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:70:"http://downloads.wordpress.org/translation/core/4.8.2/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_BE";a:8:{s:8:"language";s:5:"nl_BE";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-07-27 16:44:39";s:12:"english_name";s:15:"Dutch (Belgium)";s:11:"native_name";s:20:"Nederlands (België)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/nl_BE.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-17 11:00:54";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-25 10:02:16";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-08-25 10:03:08";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.8.2/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pa_IN";a:8:{s:8:"language";s:5:"pa_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-16 05:19:43";s:12:"english_name";s:7:"Punjabi";s:11:"native_name";s:18:"ਪੰਜਾਬੀ";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip";s:3:"iso";a:2:{i:1;s:2:"pa";i:2;s:3:"pan";}s:7:"strings";a:1:{s:8:"continue";s:25:"ਜਾਰੀ ਰੱਖੋ";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-20 08:02:58";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.19";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.1.19/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-07-26 21:35:20";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:10:"pt_PT_ao90";a:8:{s:8:"language";s:10:"pt_PT_ao90";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-05 18:31:50";s:12:"english_name";s:27:"Portuguese (Portugal, AO90)";s:11:"native_name";s:17:"Português (AO90)";s:7:"package";s:68:"http://downloads.wordpress.org/translation/core/4.8.2/pt_PT_ao90.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-10 19:12:13";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"rhg";a:8:{s:8:"language";s:3:"rhg";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-16 13:03:18";s:12:"english_name";s:8:"Rohingya";s:11:"native_name";s:8:"Ruáinga";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.7.2/rhg.zip";s:3:"iso";a:1:{i:3;s:3:"rhg";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-19 13:05:58";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-23 11:17:01";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:3:"sah";a:8:{s:8:"language";s:3:"sah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-21 02:06:41";s:12:"english_name";s:5:"Sakha";s:11:"native_name";s:14:"Сахалыы";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.7.2/sah.zip";s:3:"iso";a:2:{i:2;s:3:"sah";i:3;s:3:"sah";}s:7:"strings";a:1:{s:8:"continue";s:12:"Салҕаа";}}s:5:"si_LK";a:8:{s:8:"language";s:5:"si_LK";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 06:00:52";s:12:"english_name";s:7:"Sinhala";s:11:"native_name";s:15:"සිංහල";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip";s:3:"iso";a:2:{i:1;s:2:"si";i:2;s:3:"sin";}s:7:"strings";a:1:{s:8:"continue";s:44:"දිගටම කරගෙන යන්න";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-08-09 13:26:18";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-12 12:51:50";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.7.6";s:7:"updated";s:19:"2017-04-24 08:35:30";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.7.6/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-07-28 12:07:44";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-19 08:58:31";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:3:"szl";a:8:{s:8:"language";s:3:"szl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-24 19:58:14";s:12:"english_name";s:8:"Silesian";s:11:"native_name";s:17:"Ślōnskŏ gŏdka";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.7.2/szl.zip";s:3:"iso";a:1:{i:3;s:3:"szl";}s:7:"strings";a:1:{s:8:"continue";s:13:"Kōntynuować";}}s:5:"ta_IN";a:8:{s:8:"language";s:5:"ta_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:22:47";s:12:"english_name";s:5:"Tamil";s:11:"native_name";s:15:"தமிழ்";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ta";i:2;s:3:"tam";}s:7:"strings";a:1:{s:8:"continue";s:24:"தொடரவும்";}}s:2:"te";a:8:{s:8:"language";s:2:"te";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:47:39";s:12:"english_name";s:6:"Telugu";s:11:"native_name";s:18:"తెలుగు";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.7.2/te.zip";s:3:"iso";a:2:{i:1;s:2:"te";i:2;s:3:"tel";}s:7:"strings";a:1:{s:8:"continue";s:30:"కొనసాగించు";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:43";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.7.2/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-30 02:38:08";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.7.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-07-31 11:38:12";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"tt_RU";a:8:{s:8:"language";s:5:"tt_RU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-20 20:20:50";s:12:"english_name";s:5:"Tatar";s:11:"native_name";s:19:"Татар теле";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip";s:3:"iso";a:2:{i:1;s:2:"tt";i:2;s:3:"tat";}s:7:"strings";a:1:{s:8:"continue";s:17:"дәвам итү";}}s:3:"tah";a:8:{s:8:"language";s:3:"tah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-06 18:39:39";s:12:"english_name";s:8:"Tahitian";s:11:"native_name";s:10:"Reo Tahiti";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.7.2/tah.zip";s:3:"iso";a:3:{i:1;s:2:"ty";i:2;s:3:"tah";i:3;s:3:"tah";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-05 09:23:39";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.7.2/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-19 19:56:39";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.8.2/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"ur";a:8:{s:8:"language";s:2:"ur";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-07-28 14:27:29";s:12:"english_name";s:4:"Urdu";s:11:"native_name";s:8:"اردو";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.8.2/ur.zip";s:3:"iso";a:2:{i:1;s:2:"ur";i:2;s:3:"urd";}s:7:"strings";a:1:{s:8:"continue";s:19:"جاری رکھیں";}}s:5:"uz_UZ";a:8:{s:8:"language";s:5:"uz_UZ";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-25 03:58:52";s:12:"english_name";s:5:"Uzbek";s:11:"native_name";s:11:"O‘zbekcha";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/uz_UZ.zip";s:3:"iso";a:2:{i:1;s:2:"uz";i:2;s:3:"uzb";}s:7:"strings";a:1:{s:8:"continue";s:11:"Davom etish";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-13 04:19:14";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.8.2/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-12 11:35:05";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_HK";a:8:{s:8:"language";s:5:"zh_HK";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-09-27 14:50:31";s:12:"english_name";s:19:"Chinese (Hong Kong)";s:11:"native_name";s:16:"香港中文版	";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/zh_HK.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.8.2";s:7:"updated";s:19:"2017-08-04 07:53:05";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.8.2/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 2, '_wp_trash_meta_status', 'publish'),
(3, 2, '_wp_trash_meta_time', '1506525762'),
(4, 2, '_wp_desired_post_slug', 'sample-page'),
(5, 5, '_edit_last', '1'),
(6, 5, '_edit_lock', '1506619738:1'),
(7, 7, '_edit_last', '1'),
(8, 7, '_edit_lock', '1506654032:1'),
(9, 9, '_edit_last', '1'),
(10, 9, '_edit_lock', '1506525687:1'),
(11, 11, '_edit_last', '1'),
(12, 11, '_edit_lock', '1506525696:1'),
(13, 13, '_edit_last', '1'),
(14, 13, '_edit_lock', '1506525705:1'),
(15, 15, '_edit_last', '1'),
(16, 15, '_edit_lock', '1506536059:1'),
(17, 17, '_edit_last', '1'),
(18, 17, '_edit_lock', '1506536633:1'),
(19, 19, '_edit_last', '1'),
(20, 19, '_edit_lock', '1506525766:1'),
(21, 19, '_wp_trash_meta_status', 'publish'),
(22, 19, '_wp_trash_meta_time', '1506525914'),
(23, 19, '_wp_desired_post_slug', 'social-media-marketing'),
(24, 21, '_menu_item_type', 'post_type'),
(25, 21, '_menu_item_menu_item_parent', '0'),
(26, 21, '_menu_item_object_id', '17'),
(27, 21, '_menu_item_object', 'page'),
(28, 21, '_menu_item_target', ''),
(29, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(30, 21, '_menu_item_xfn', ''),
(31, 21, '_menu_item_url', ''),
(87, 28, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(33, 22, '_menu_item_type', 'post_type'),
(34, 22, '_menu_item_menu_item_parent', '0'),
(35, 22, '_menu_item_object_id', '15'),
(36, 22, '_menu_item_object', 'page'),
(37, 22, '_menu_item_target', ''),
(38, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(39, 22, '_menu_item_xfn', ''),
(40, 22, '_menu_item_url', ''),
(42, 23, '_menu_item_type', 'post_type'),
(43, 23, '_menu_item_menu_item_parent', '0'),
(44, 23, '_menu_item_object_id', '13'),
(45, 23, '_menu_item_object', 'page'),
(46, 23, '_menu_item_target', ''),
(47, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(48, 23, '_menu_item_xfn', ''),
(49, 23, '_menu_item_url', ''),
(88, 29, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(51, 24, '_menu_item_type', 'post_type'),
(52, 24, '_menu_item_menu_item_parent', '0'),
(53, 24, '_menu_item_object_id', '11'),
(54, 24, '_menu_item_object', 'page'),
(55, 24, '_menu_item_target', ''),
(56, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(57, 24, '_menu_item_xfn', ''),
(58, 24, '_menu_item_url', ''),
(60, 25, '_menu_item_type', 'post_type'),
(61, 25, '_menu_item_menu_item_parent', '0'),
(62, 25, '_menu_item_object_id', '9'),
(63, 25, '_menu_item_object', 'page'),
(64, 25, '_menu_item_target', ''),
(65, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(66, 25, '_menu_item_xfn', ''),
(67, 25, '_menu_item_url', ''),
(89, 29, '_edit_last', '1'),
(69, 26, '_menu_item_type', 'post_type'),
(70, 26, '_menu_item_menu_item_parent', '0'),
(71, 26, '_menu_item_object_id', '7'),
(72, 26, '_menu_item_object', 'page'),
(73, 26, '_menu_item_target', ''),
(74, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(75, 26, '_menu_item_xfn', ''),
(76, 26, '_menu_item_url', ''),
(90, 29, '_edit_lock', '1506527200:1'),
(78, 27, '_menu_item_type', 'post_type'),
(79, 27, '_menu_item_menu_item_parent', '0'),
(80, 27, '_menu_item_object_id', '5'),
(81, 27, '_menu_item_object', 'page'),
(82, 27, '_menu_item_target', ''),
(83, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(84, 27, '_menu_item_xfn', ''),
(85, 27, '_menu_item_url', ''),
(91, 30, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(92, 30, '_edit_last', '1'),
(93, 30, '_edit_lock', '1506527222:1'),
(94, 31, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(95, 31, '_edit_last', '1'),
(96, 31, '_edit_lock', '1506527245:1'),
(97, 32, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(98, 32, '_edit_last', '1'),
(99, 32, '_edit_lock', '1506536728:1'),
(100, 33, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(101, 33, '_edit_last', '1'),
(102, 33, '_edit_lock', '1506528223:1'),
(103, 34, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(104, 34, '_edit_last', '1'),
(105, 34, '_edit_lock', '1506528215:1'),
(106, 34, 'class', 'icon-palette'),
(120, 34, 'service_icon_class', 'http://'),
(108, 29, 'class', 'icon-share'),
(109, 29, 'service class', 'http://'),
(110, 30, 'class', 'icon-select2'),
(111, 30, 'service class', 'http://'),
(112, 31, 'class', 'icon-magnifier'),
(113, 31, 'service class', 'http://'),
(114, 32, 'class', 'icon-smartphone-embed'),
(115, 32, 'service class', 'http://'),
(116, 33, 'class', 'icon-laptop-phone'),
(117, 5, '_wpb_vc_js_status', 'true'),
(118, 5, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(119, 5, 'class', 'http://'),
(121, 5, 'service_icon_class', 'http://'),
(122, 37, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(123, 37, 'service_icon_class', 'http://'),
(124, 37, '_menu_item_type', 'post_type'),
(125, 37, '_menu_item_menu_item_parent', '25'),
(126, 37, '_menu_item_object_id', '34'),
(127, 37, '_menu_item_object', 'custom_theme_service'),
(128, 37, '_menu_item_target', ''),
(129, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(130, 37, '_menu_item_xfn', ''),
(131, 37, '_menu_item_url', ''),
(197, 23, 'service_icon_class', 'http://'),
(133, 38, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(134, 38, 'service_icon_class', 'http://'),
(135, 38, '_menu_item_type', 'post_type'),
(136, 38, '_menu_item_menu_item_parent', '25'),
(137, 38, '_menu_item_object_id', '33'),
(138, 38, '_menu_item_object', 'custom_theme_service'),
(139, 38, '_menu_item_target', ''),
(140, 38, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(141, 38, '_menu_item_xfn', ''),
(142, 38, '_menu_item_url', ''),
(144, 39, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(145, 39, 'service_icon_class', 'http://'),
(146, 39, '_menu_item_type', 'post_type'),
(147, 39, '_menu_item_menu_item_parent', '25'),
(148, 39, '_menu_item_object_id', '32'),
(149, 39, '_menu_item_object', 'custom_theme_service'),
(150, 39, '_menu_item_target', ''),
(151, 39, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(152, 39, '_menu_item_xfn', ''),
(153, 39, '_menu_item_url', ''),
(196, 23, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(155, 40, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(156, 40, 'service_icon_class', 'http://'),
(157, 40, '_menu_item_type', 'post_type'),
(158, 40, '_menu_item_menu_item_parent', '25'),
(159, 40, '_menu_item_object_id', '31'),
(160, 40, '_menu_item_object', 'custom_theme_service'),
(161, 40, '_menu_item_target', ''),
(162, 40, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(163, 40, '_menu_item_xfn', ''),
(164, 40, '_menu_item_url', ''),
(195, 24, 'service_icon_class', 'http://'),
(166, 41, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(167, 41, 'service_icon_class', 'http://'),
(168, 41, '_menu_item_type', 'post_type'),
(169, 41, '_menu_item_menu_item_parent', '25'),
(170, 41, '_menu_item_object_id', '30'),
(171, 41, '_menu_item_object', 'custom_theme_service'),
(172, 41, '_menu_item_target', ''),
(173, 41, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(174, 41, '_menu_item_xfn', ''),
(175, 41, '_menu_item_url', ''),
(177, 42, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(178, 42, 'service_icon_class', 'http://'),
(179, 42, '_menu_item_type', 'post_type'),
(180, 42, '_menu_item_menu_item_parent', '25'),
(181, 42, '_menu_item_object_id', '29'),
(182, 42, '_menu_item_object', 'custom_theme_service'),
(183, 42, '_menu_item_target', ''),
(184, 42, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(185, 42, '_menu_item_xfn', ''),
(186, 42, '_menu_item_url', ''),
(194, 24, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(188, 27, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(189, 27, 'service_icon_class', 'http://'),
(190, 26, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(191, 26, 'service_icon_class', 'http://'),
(192, 25, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(193, 25, 'service_icon_class', 'http://'),
(198, 22, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(199, 22, 'service_icon_class', 'http://'),
(200, 21, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(201, 21, 'service_icon_class', 'http://'),
(202, 33, 'service_icon_class', 'http://'),
(203, 32, 'service_icon_class', 'http://'),
(204, 43, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(205, 43, 'service_icon_class', 'http://'),
(206, 43, 'portfolio_link', 'http://'),
(207, 43, '_edit_last', '1'),
(208, 43, '_edit_lock', '1506529198:1'),
(209, 44, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(210, 44, 'service_icon_class', 'http://'),
(211, 44, 'portfolio_link', 'http://www.google.com'),
(212, 44, '_edit_last', '1'),
(213, 44, '_edit_lock', '1506529318:1'),
(214, 45, '_wp_attached_file', '2017/09/portfolio3.jpg'),
(215, 45, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:360;s:6:"height";i:280;s:4:"file";s:22:"2017/09/portfolio3.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"portfolio3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"portfolio3-300x233.jpg";s:5:"width";i:300;s:6:"height";i:233;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(216, 44, '_thumbnail_id', '45'),
(217, 5, 'portfolio_link', 'http://'),
(218, 48, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(219, 48, 'service_icon_class', 'http://'),
(220, 48, 'portfolio_link', 'http://'),
(221, 48, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit "Send"]'),
(222, 48, '_mail', 'a:8:{s:7:"subject";s:28:"Technowolfs "[your-subject]"";s:6:"sender";s:30:"[your-name] <sanjay@gmail.com>";s:4:"body";s:183:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Technowolfs (http://localhost/wordpress/techno)";s:9:"recipient";s:16:"sanjay@gmail.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(223, 48, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:28:"Technowolfs "[your-subject]"";s:6:"sender";s:30:"Technowolfs <sanjay@gmail.com>";s:4:"body";s:125:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Technowolfs (http://localhost/wordpress/techno)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:26:"Reply-To: sanjay@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(224, 48, '_messages', 'a:8:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";}'),
(225, 48, '_additional_settings', NULL),
(226, 48, '_locale', 'en_US'),
(227, 54, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(228, 54, 'service_icon_class', 'http://'),
(229, 54, 'portfolio_link', 'http://'),
(230, 54, '_edit_last', '1'),
(231, 54, '_edit_lock', '1506533003:1'),
(232, 55, '_wp_attached_file', '2017/09/slider-1.jpg'),
(233, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1764;s:6:"height";i:769;s:4:"file";s:20:"2017/09/slider-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"slider-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"slider-1-300x131.jpg";s:5:"width";i:300;s:6:"height";i:131;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"slider-1-768x335.jpg";s:5:"width";i:768;s:6:"height";i:335;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"slider-1-1024x446.jpg";s:5:"width";i:1024;s:6:"height";i:446;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(234, 56, '_wp_attached_file', '2017/09/slider-2.jpg'),
(235, 56, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1764;s:6:"height";i:769;s:4:"file";s:20:"2017/09/slider-2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"slider-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"slider-2-300x131.jpg";s:5:"width";i:300;s:6:"height";i:131;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"slider-2-768x335.jpg";s:5:"width";i:768;s:6:"height";i:335;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"slider-2-1024x446.jpg";s:5:"width";i:1024;s:6:"height";i:446;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(236, 54, '_thumbnail_id', '56'),
(237, 57, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(238, 57, 'service_icon_class', 'http://'),
(239, 57, 'portfolio_link', 'http://'),
(240, 57, '_edit_last', '1'),
(241, 57, '_edit_lock', '1506533048:1'),
(242, 57, '_thumbnail_id', '55'),
(243, 61, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(244, 61, 'service_icon_class', 'http://'),
(245, 61, 'portfolio_link', 'http://'),
(246, 61, '_edit_last', '1'),
(247, 61, '_edit_lock', '1506534938:1'),
(248, 63, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(249, 63, 'service_icon_class', 'http://'),
(250, 63, 'portfolio_link', 'http://'),
(251, 63, '_edit_last', '1'),
(252, 63, '_edit_lock', '1506535824:1'),
(253, 63, '_thumbnail_id', '45'),
(254, 64, '_wp_attached_file', '2017/09/about-banner.jpg'),
(255, 64, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1764;s:6:"height";i:829;s:4:"file";s:24:"2017/09/about-banner.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"about-banner-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"about-banner-300x141.jpg";s:5:"width";i:300;s:6:"height";i:141;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"about-banner-768x361.jpg";s:5:"width";i:768;s:6:"height";i:361;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"about-banner-1024x481.jpg";s:5:"width";i:1024;s:6:"height";i:481;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(256, 7, '_thumbnail_id', '64'),
(257, 7, '_wpb_vc_js_status', 'true'),
(258, 7, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(259, 7, 'service_icon_class', 'http://'),
(260, 7, 'portfolio_link', 'http://'),
(261, 65, '_wp_attached_file', '2017/09/blog-img-standard-2.jpg'),
(262, 65, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:780;s:6:"height";i:330;s:4:"file";s:31:"2017/09/blog-img-standard-2.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"blog-img-standard-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"blog-img-standard-2-300x127.jpg";s:5:"width";i:300;s:6:"height";i:127;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"blog-img-standard-2-768x325.jpg";s:5:"width";i:768;s:6:"height";i:325;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(263, 66, '_wp_attached_file', '2017/09/blog-img-standard-3.jpg'),
(264, 66, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:780;s:6:"height";i:330;s:4:"file";s:31:"2017/09/blog-img-standard-3.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"blog-img-standard-3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"blog-img-standard-3-300x127.jpg";s:5:"width";i:300;s:6:"height";i:127;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"blog-img-standard-3-768x325.jpg";s:5:"width";i:768;s:6:"height";i:325;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(265, 15, '_thumbnail_id', '66'),
(266, 15, '_wpb_vc_js_status', 'false'),
(267, 15, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(268, 15, 'service_icon_class', 'http://'),
(269, 15, 'portfolio_link', 'http://'),
(270, 67, '_wp_attached_file', '2017/09/contact-banner.jpg'),
(271, 67, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1764;s:6:"height";i:905;s:4:"file";s:26:"2017/09/contact-banner.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"contact-banner-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"contact-banner-300x154.jpg";s:5:"width";i:300;s:6:"height";i:154;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"contact-banner-768x394.jpg";s:5:"width";i:768;s:6:"height";i:394;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:27:"contact-banner-1024x525.jpg";s:5:"width";i:1024;s:6:"height";i:525;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(272, 17, '_thumbnail_id', '67'),
(273, 17, '_wpb_vc_js_status', 'false'),
(274, 17, '_vc_post_settings', 'a:1:{s:10:"vc_grid_id";a:0:{}}'),
(275, 17, 'service_icon_class', 'http://'),
(276, 17, 'portfolio_link', 'http://'),
(277, 72, '_wp_attached_file', '2017/09/about-right-img.jpg'),
(278, 72, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:429;s:6:"height";i:400;s:4:"file";s:27:"2017/09/about-right-img.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"about-right-img-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"about-right-img-300x280.jpg";s:5:"width";i:300;s:6:"height";i:280;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-09-27 15:20:12', '2017-09-27 15:20:12', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2017-09-27 15:20:12', '2017-09-27 15:20:12', '', 0, 'http://localhost/wordpress/techno/?p=1', 0, 'post', '', 1),
(2, 1, '2017-09-27 15:20:12', '2017-09-27 15:20:12', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/wordpress/techno/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2017-09-27 15:22:42', '2017-09-27 15:22:42', '', 0, 'http://localhost/wordpress/techno/?page_id=2', 0, 'page', '', 0),
(3, 1, '2017-09-27 15:20:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-09-27 15:20:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/techno/?p=3', 0, 'post', '', 0),
(4, 1, '2017-09-27 15:22:42', '2017-09-27 15:22:42', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/wordpress/techno/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-09-27 15:22:42', '2017-09-27 15:22:42', '', 2, 'http://localhost/wordpress/techno/2017/09/27/2-revision-v1/', 0, 'revision', '', 0),
(5, 1, '2017-09-27 15:23:18', '2017-09-27 15:23:18', '[vc_row][vc_column][vc_column_text][theme-portfolios][/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_column_text][theme-services][/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text="Reasons for Choosing Us" font_container="tag:h2|text_align:center"][vc_row_inner][vc_column_inner width="2/3"][vc_custom_heading text="We Lead from the Front" font_container="tag:h4|text_align:left"][vc_column_text]Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna. Quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.[/vc_column_text][/vc_column_inner][vc_column_inner width="1/3"][vc_custom_heading text="Get a free Quote" font_container="tag:h4|text_align:left"][vc_column_text][contact-form-7 id="48" title="Contact form 1"][/vc_column_text][/vc_column_inner][/vc_row_inner][/vc_column][/vc_row][vc_row][vc_column][vc_column_text][theme-blogs][/vc_column_text][/vc_column][/vc_row]', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-09-28 16:37:39', '2017-09-28 16:37:39', '', 0, 'http://localhost/wordpress/techno/?page_id=5', 0, 'page', '', 0),
(6, 1, '2017-09-27 15:23:18', '2017-09-27 15:23:18', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-09-27 15:23:18', '2017-09-27 15:23:18', '', 5, 'http://localhost/wordpress/techno/2017/09/27/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2017-09-27 15:23:31', '2017-09-27 15:23:31', '[vc_row][vc_column width="2/3"][vc_custom_heading text="We’re Your Partner in Your Success"][vc_column_text]\r\n<p class="regular-text">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum.</p>\r\n<p class="regular-text">Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum.</p>\r\n<p class="regular-text">Mirum est notare quam littera gothica, quam nunc putamus parum claram.</p>\r\n[/vc_column_text][/vc_column][vc_column width="1/3"][vc_single_image image="72" img_size="large" alignment="center"][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text="Know More about Us" font_container="tag:h2|text_align:center"][/vc_column][/vc_row][vc_row][vc_column width="1/3"][vc_custom_heading text="Team" font_container="tag:h4|text_align:center"][vc_column_text]Lorem ipsum dolor sit amet, consect etuer adipi scing elit, sed diam nonum my nibh euismod tincidunt.[/vc_column_text][/vc_column][vc_column width="1/3"][vc_custom_heading text="Team" font_container="tag:h4|text_align:center"][vc_column_text]Lorem ipsum dolor sit amet, consect etuer adipi scing elit, sed diam nonum my nibh euismod tincidunt.[/vc_column_text][/vc_column][vc_column width="1/3"][vc_custom_heading text="Team" font_container="tag:h4|text_align:center"][vc_column_text]Lorem ipsum dolor sit amet, consect etuer adipi scing elit, sed diam nonum my nibh euismod tincidunt.[/vc_column_text][/vc_column][/vc_row]', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2017-09-29 03:02:04', '2017-09-29 03:02:04', '', 0, 'http://localhost/wordpress/techno/?page_id=7', 0, 'page', '', 0),
(8, 1, '2017-09-27 15:23:31', '2017-09-27 15:23:31', '', 'About', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-09-27 15:23:31', '2017-09-27 15:23:31', '', 7, 'http://localhost/wordpress/techno/2017/09/27/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2017-09-27 15:23:45', '2017-09-27 15:23:45', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2017-09-27 15:23:45', '2017-09-27 15:23:45', '', 0, 'http://localhost/wordpress/techno/?page_id=9', 0, 'page', '', 0),
(10, 1, '2017-09-27 15:23:45', '2017-09-27 15:23:45', '', 'Services', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2017-09-27 15:23:45', '2017-09-27 15:23:45', '', 9, 'http://localhost/wordpress/techno/2017/09/27/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2017-09-27 15:23:57', '2017-09-27 15:23:57', '', 'Training', '', 'publish', 'closed', 'closed', '', 'training', '', '', '2017-09-27 15:23:57', '2017-09-27 15:23:57', '', 0, 'http://localhost/wordpress/techno/?page_id=11', 0, 'page', '', 0),
(12, 1, '2017-09-27 15:23:57', '2017-09-27 15:23:57', '', 'Training', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-09-27 15:23:57', '2017-09-27 15:23:57', '', 11, 'http://localhost/wordpress/techno/2017/09/27/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2017-09-27 15:24:06', '2017-09-27 15:24:06', '', 'Team', '', 'publish', 'closed', 'closed', '', 'team', '', '', '2017-09-27 15:24:06', '2017-09-27 15:24:06', '', 0, 'http://localhost/wordpress/techno/?page_id=13', 0, 'page', '', 0),
(14, 1, '2017-09-27 15:24:06', '2017-09-27 15:24:06', '', 'Team', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2017-09-27 15:24:06', '2017-09-27 15:24:06', '', 13, 'http://localhost/wordpress/techno/2017/09/27/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2017-09-27 15:24:14', '2017-09-27 15:24:14', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2017-09-27 18:14:18', '2017-09-27 18:14:18', '', 0, 'http://localhost/wordpress/techno/?page_id=15', 0, 'page', '', 0),
(16, 1, '2017-09-27 15:24:14', '2017-09-27 15:24:14', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2017-09-27 15:24:14', '2017-09-27 15:24:14', '', 15, 'http://localhost/wordpress/techno/2017/09/27/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2017-09-27 15:24:24', '2017-09-27 15:24:24', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2017-09-27 18:14:41', '2017-09-27 18:14:41', '', 0, 'http://localhost/wordpress/techno/?page_id=17', 0, 'page', '', 0),
(18, 1, '2017-09-27 15:24:24', '2017-09-27 15:24:24', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2017-09-27 15:24:24', '2017-09-27 15:24:24', '', 17, 'http://localhost/wordpress/techno/2017/09/27/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2017-09-27 15:24:40', '2017-09-27 15:24:40', '', 'Social Media Marketing', '', 'trash', 'closed', 'closed', '', 'social-media-marketing__trashed', '', '', '2017-09-27 15:25:14', '2017-09-27 15:25:14', '', 0, 'http://localhost/wordpress/techno/?page_id=19', 0, 'page', '', 0),
(20, 1, '2017-09-27 15:24:40', '2017-09-27 15:24:40', '', 'Social Media Marketing', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2017-09-27 15:24:40', '2017-09-27 15:24:40', '', 19, 'http://localhost/wordpress/techno/2017/09/27/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2017-09-27 15:27:00', '2017-09-27 15:27:00', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2017-09-27 15:58:27', '2017-09-27 15:58:27', '', 0, 'http://localhost/wordpress/techno/?p=21', 13, 'nav_menu_item', '', 0),
(22, 1, '2017-09-27 15:27:00', '2017-09-27 15:27:00', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2017-09-27 15:58:27', '2017-09-27 15:58:27', '', 0, 'http://localhost/wordpress/techno/?p=22', 12, 'nav_menu_item', '', 0),
(23, 1, '2017-09-27 15:27:00', '2017-09-27 15:27:00', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2017-09-27 15:58:27', '2017-09-27 15:58:27', '', 0, 'http://localhost/wordpress/techno/?p=23', 11, 'nav_menu_item', '', 0),
(24, 1, '2017-09-27 15:27:00', '2017-09-27 15:27:00', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2017-09-27 15:58:27', '2017-09-27 15:58:27', '', 0, 'http://localhost/wordpress/techno/?p=24', 10, 'nav_menu_item', '', 0),
(25, 1, '2017-09-27 15:27:00', '2017-09-27 15:27:00', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2017-09-27 15:58:27', '2017-09-27 15:58:27', '', 0, 'http://localhost/wordpress/techno/?p=25', 3, 'nav_menu_item', '', 0),
(26, 1, '2017-09-27 15:27:00', '2017-09-27 15:27:00', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2017-09-27 15:58:27', '2017-09-27 15:58:27', '', 0, 'http://localhost/wordpress/techno/?p=26', 2, 'nav_menu_item', '', 0),
(27, 1, '2017-09-27 15:27:00', '2017-09-27 15:27:00', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2017-09-27 15:58:27', '2017-09-27 15:58:27', '', 0, 'http://localhost/wordpress/techno/?p=27', 1, 'nav_menu_item', '', 0),
(28, 1, '2017-09-27 15:34:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-09-27 15:34:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/techno/?post_type=custom_theme_service&p=28', 0, 'custom_theme_service', '', 0),
(29, 1, '2017-09-27 15:41:51', '2017-09-27 15:41:51', 'Our comprehensive Online Marketing strategy will boost your website and traffic hence monthly sales.\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n&nbsp;\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Social Media Marketing', '', 'publish', 'open', 'closed', '', 'social-media-marketing', '', '', '2017-09-27 15:48:49', '2017-09-27 15:48:49', '', 0, 'http://localhost/wordpress/techno/?post_type=custom_theme_service&#038;p=29', 0, 'custom_theme_service', '', 0),
(30, 1, '2017-09-27 15:42:23', '2017-09-27 15:42:23', 'Our comprehensive Online Marketing strategy will boost your website and traffic hence monthly sales.\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Pay-Per-Click', '', 'publish', 'open', 'closed', '', 'pay-per-click', '', '', '2017-09-27 15:49:18', '2017-09-27 15:49:18', '', 0, 'http://localhost/wordpress/techno/?post_type=custom_theme_service&#038;p=30', 0, 'custom_theme_service', '', 0),
(31, 1, '2017-09-27 15:42:43', '2017-09-27 15:42:43', 'We design professional looking yet simple websites. Our designs are search engine and user friendly.\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n&nbsp;\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Search Engine Optimization', '', 'publish', 'open', 'closed', '', 'search-engine-optimization', '', '', '2017-09-27 15:49:38', '2017-09-27 15:49:38', '', 0, 'http://localhost/wordpress/techno/?post_type=custom_theme_service&#038;p=31', 0, 'custom_theme_service', '', 0),
(32, 1, '2017-09-27 15:43:02', '2017-09-27 15:43:02', 'Lorem ipsum dolor sit amet, diam id leo, aliquam duis, enim feugiat gravida per dis. Massa scelerisque ipsum nulla nullam blandit, nullam id eu tellus donec. Velit nulla, sapien amet odio idLorem ipsum dolor sit amet, diam id leo, aliquam duis, enim feugiat gravida per dis. Massa scelerisque ipsum nulla nullam blandit, nullam id eu tellus donec. Velit nulla, sapien amet odio idLorem', 'Mobile App Development', '', 'publish', 'open', 'closed', '', 'mobile-app-development', '', '', '2017-09-27 16:06:13', '2017-09-27 16:06:13', '', 0, 'http://localhost/wordpress/techno/?post_type=custom_theme_service&#038;p=32', 0, 'custom_theme_service', '', 0),
(33, 1, '2017-09-27 15:43:35', '2017-09-27 15:43:35', 'Lorem ipsum dolor sit amet, diam id leo, aliquam duis, enim feugiat gravida per dis. Massa scelerisque ipsum nulla nullam blandit, nullam id eu tellus donec. Velit nulla, sapien amet odio idLorem ipsum dolor sit amet, diam id leo, aliquam duis, enim feugiat gravida per dis. Massa scelerisque ipsum nulla nullam blandit, nullam id eu tellus donec. Velit nulla, sapien amet odio idLorem', 'Website Development', '', 'publish', 'open', 'closed', '', 'website-development', '', '', '2017-09-27 16:06:05', '2017-09-27 16:06:05', '', 0, 'http://localhost/wordpress/techno/?post_type=custom_theme_service&#038;p=33', 0, 'custom_theme_service', '', 0),
(34, 1, '2017-09-27 15:43:49', '2017-09-27 15:43:49', 'Lorem ipsum dolor sit amet, diam id leo, aliquam duis, enim feugiat gravida per dis. Massa scelerisque ipsum nulla nullam blandit, nullam id eu tellus donec. Velit nulla, sapien amet odio idLorem ipsum dolor sit amet, diam id leo, aliquam duis, enim feugiat gravida per dis. Massa scelerisque ipsum nulla nullam blandit, nullam id eu tellus donec. Velit nulla, sapien amet odio idLorem', 'Logo & Branding', '', 'publish', 'open', 'closed', '', 'logo-branding', '', '', '2017-09-27 16:05:56', '2017-09-27 16:05:56', '', 0, 'http://localhost/wordpress/techno/?post_type=custom_theme_service&#038;p=34', 0, 'custom_theme_service', '', 0),
(35, 1, '2017-09-27 15:52:43', '2017-09-27 15:52:43', '[theme-services]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-09-27 15:52:43', '2017-09-27 15:52:43', '', 5, 'http://localhost/wordpress/techno/2017/09/27/5-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2017-09-27 15:56:28', '2017-09-27 15:56:28', '[vc_row][vc_column][vc_column_text][theme-services][/vc_column_text][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-09-27 15:56:28', '2017-09-27 15:56:28', '', 5, 'http://localhost/wordpress/techno/2017/09/27/5-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2017-09-27 15:58:27', '2017-09-27 15:58:27', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2017-09-27 15:58:27', '2017-09-27 15:58:27', '', 0, 'http://localhost/wordpress/techno/?p=37', 4, 'nav_menu_item', '', 0),
(38, 1, '2017-09-27 15:58:27', '2017-09-27 15:58:27', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2017-09-27 15:58:27', '2017-09-27 15:58:27', '', 0, 'http://localhost/wordpress/techno/?p=38', 5, 'nav_menu_item', '', 0),
(39, 1, '2017-09-27 15:58:27', '2017-09-27 15:58:27', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2017-09-27 15:58:27', '2017-09-27 15:58:27', '', 0, 'http://localhost/wordpress/techno/?p=39', 6, 'nav_menu_item', '', 0),
(40, 1, '2017-09-27 15:58:27', '2017-09-27 15:58:27', ' ', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2017-09-27 15:58:27', '2017-09-27 15:58:27', '', 0, 'http://localhost/wordpress/techno/?p=40', 7, 'nav_menu_item', '', 0),
(41, 1, '2017-09-27 15:58:27', '2017-09-27 15:58:27', ' ', '', '', 'publish', 'closed', 'closed', '', '41', '', '', '2017-09-27 15:58:27', '2017-09-27 15:58:27', '', 0, 'http://localhost/wordpress/techno/?p=41', 8, 'nav_menu_item', '', 0),
(42, 1, '2017-09-27 15:58:27', '2017-09-27 15:58:27', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2017-09-27 15:58:27', '2017-09-27 15:58:27', '', 0, 'http://localhost/wordpress/techno/?p=42', 9, 'nav_menu_item', '', 0),
(43, 1, '2017-09-27 16:19:58', '0000-00-00 00:00:00', '', 'Web Development', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-09-27 16:19:58', '2017-09-27 16:19:58', '', 0, 'http://localhost/wordpress/techno/?post_type=technoportfolio&#038;p=43', 0, 'technoportfolio', '', 0),
(44, 1, '2017-09-27 16:21:19', '2017-09-27 16:21:19', 'Lorem ipsum dolor sit amet, diam id leo, aliquam duis, enim feugiat gravida per dis.', 'Web Development', '', 'publish', 'closed', 'closed', '', 'web-development', '', '', '2017-09-27 16:21:19', '2017-09-27 16:21:19', '', 0, 'http://localhost/wordpress/techno/?post_type=technoportfolio&#038;p=44', 0, 'technoportfolio', '', 0),
(45, 1, '2017-09-27 16:21:15', '2017-09-27 16:21:15', '', 'portfolio3', '', 'inherit', 'open', 'closed', '', 'portfolio3', '', '', '2017-09-27 16:21:15', '2017-09-27 16:21:15', '', 44, 'http://localhost/wordpress/techno/wp-content/uploads/2017/09/portfolio3.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2017-09-27 16:24:40', '2017-09-27 16:24:40', '[vc_row][vc_column][vc_column_text][theme-services][/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_column_text][theme-portfolios][/vc_column_text][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-09-27 16:24:40', '2017-09-27 16:24:40', '', 5, 'http://localhost/wordpress/techno/2017/09/27/5-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2017-09-27 17:36:09', '2017-09-27 17:36:09', '[vc_row][vc_column][vc_column_text][theme-services][/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_column_text][theme-portfolios][/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text="Reasons for Choosing Us" font_container="tag:h2|text_align:center"][vc_row_inner][vc_column_inner width="2/3"][vc_custom_heading text="We Lead from the Front" font_container="tag:h4|text_align:left"][vc_column_text]Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\n\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna. Quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.[/vc_column_text][/vc_column_inner][vc_column_inner width="1/3"][vc_custom_heading text="Get a free Quote" font_container="tag:h4|text_align:left"][vc_column_text][contact-form-7 id="48" title="Contact form 1"][/vc_column_text][/vc_column_inner][/vc_row_inner][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-autosave-v1', '', '', '2017-09-27 17:36:09', '2017-09-27 17:36:09', '', 5, 'http://localhost/wordpress/techno/2017/09/27/5-autosave-v1/', 0, 'revision', '', 0),
(48, 1, '2017-09-27 16:31:47', '2017-09-27 16:31:47', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit "Send"]\nTechnowolfs "[your-subject]"\n[your-name] <sanjay@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Technowolfs (http://localhost/wordpress/techno)\nsanjay@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nTechnowolfs "[your-subject]"\nTechnowolfs <sanjay@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Technowolfs (http://localhost/wordpress/techno)\n[your-email]\nReply-To: sanjay@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2017-09-27 16:31:47', '2017-09-27 16:31:47', '', 0, 'http://localhost/wordpress/techno/?post_type=wpcf7_contact_form&p=48', 0, 'wpcf7_contact_form', '', 0),
(49, 1, '2017-09-27 16:32:29', '2017-09-27 16:32:29', '[vc_row][vc_column][vc_column_text][theme-services][/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_column_text][theme-portfolios][/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text="Reasons for Choosing Us" font_container="tag:h2|text_align:center"][vc_row_inner][vc_column_inner width="1/2"][vc_custom_heading text="We Lead from the Front" font_container="tag:h4|text_align:left"][vc_column_text]Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna. Quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.[/vc_column_text][/vc_column_inner][vc_column_inner width="1/2"][vc_custom_heading text="Get a free Quote" font_container="tag:h4|text_align:left"][vc_column_text][contact-form-7 id="48" title="Contact form 1"][/vc_column_text][/vc_column_inner][/vc_row_inner][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-09-27 16:32:29', '2017-09-27 16:32:29', '', 5, 'http://localhost/wordpress/techno/2017/09/27/5-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2017-09-27 16:32:55', '2017-09-27 16:32:55', '[vc_row][vc_column][vc_column_text][theme-services][/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_column_text][theme-portfolios][/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text="Reasons for Choosing Us" font_container="tag:h2|text_align:center"][vc_row_inner][vc_column_inner width="2/3"][vc_custom_heading text="We Lead from the Front" font_container="tag:h4|text_align:left"][vc_column_text]Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna. Quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.[/vc_column_text][/vc_column_inner][vc_column_inner width="1/3"][vc_custom_heading text="Get a free Quote" font_container="tag:h4|text_align:left"][vc_column_text][contact-form-7 id="48" title="Contact form 1"][/vc_column_text][/vc_column_inner][/vc_row_inner][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-09-27 16:32:55', '2017-09-27 16:32:55', '', 5, 'http://localhost/wordpress/techno/2017/09/27/5-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2017-09-27 16:36:05', '2017-09-27 16:36:05', '[vc_row][vc_column][vc_column_text][theme-services][/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_column_text][theme-portfolios][/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text="Reasons for Choosing Us" font_container="tag:h2|text_align:center"][vc_row_inner][vc_column_inner width="2/3"][vc_custom_heading text="We Lead from the Front" font_container="tag:h4|text_align:left"][vc_column_text]Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna. Quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.[/vc_column_text][/vc_column_inner][vc_column_inner width="1/3"][vc_custom_heading text="Get a free Quote" font_container="tag:h4|text_align:left"][vc_column_text][contact-form-7 id="48" title="Contact form 1"][/vc_column_text][/vc_column_inner][/vc_row_inner][/vc_column][/vc_row][vc_row][vc_column][vc_column_text]\r\n\r\n<section>\r\n<div class="clearfix"></div>\r\n<div class="stuff" data-type="content">\r\n<div class="container"><!--section title -->\r\n<h2>Success In Numbers</h2>\r\n<!--end section title -->\r\n<div class="row counter-inner"><!-- features box -->\r\n<div class="col-md-4 col-sm-4 col-xs-4">\r\n<div class="icon-holder pull-left"></div>\r\n<div class="pull-left counter-text">\r\n<div class="counter no_count b-clor">157</div>\r\n<p class="semi-bold">Happy Clients</p>\r\n\r\n</div>\r\n</div>\r\n<!--end features box -->\r\n<!-- features box -->\r\n<div class="col-md-4 col-sm-4 col-xs-4">\r\n<div class="icon-holder pull-left"></div>\r\n<div class="pull-left counter-text">\r\n<div class="counter no_count b-clor">251</div>\r\n<p class="semi-bold">projects completed</p>\r\n\r\n</div>\r\n</div>\r\n<!--end features box -->\r\n<!-- features box -->\r\n<div class="col-md-4 col-sm-4 col-xs-4">\r\n<div class="icon-holder pull-left"></div>\r\n<div class="pull-left counter-text">\r\n<div class="counter no_count b-clor">24,100</div>\r\n<p class="semi-bold">projects completed</p>\r\n\r\n</div>\r\n</div>\r\n<!--end features box -->\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class="clearfix"></div>\r\n</section>[/vc_column_text][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-09-27 16:36:05', '2017-09-27 16:36:05', '', 5, 'http://localhost/wordpress/techno/2017/09/27/5-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2017-09-27 16:38:05', '2017-09-27 16:38:05', '[vc_row][vc_column][vc_column_text][theme-services][/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_column_text][theme-portfolios][/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text="Reasons for Choosing Us" font_container="tag:h2|text_align:center"][vc_row_inner][vc_column_inner width="2/3"][vc_custom_heading text="We Lead from the Front" font_container="tag:h4|text_align:left"][vc_column_text]Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna. Quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.[/vc_column_text][/vc_column_inner][vc_column_inner width="1/3"][vc_custom_heading text="Get a free Quote" font_container="tag:h4|text_align:left"][vc_column_text][contact-form-7 id="48" title="Contact form 1"][/vc_column_text][/vc_column_inner][/vc_row_inner][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-09-27 16:38:05', '2017-09-27 16:38:05', '', 5, 'http://localhost/wordpress/techno/2017/09/27/5-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2017-09-27 16:37:04', '2017-09-27 16:37:04', '[vc_row][vc_column][vc_column_text][theme-services][/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_column_text][theme-portfolios][/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text="Reasons for Choosing Us" font_container="tag:h2|text_align:center"][vc_row_inner][vc_column_inner width="2/3"][vc_custom_heading text="We Lead from the Front" font_container="tag:h4|text_align:left"][vc_column_text]Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna. Quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.[/vc_column_text][/vc_column_inner][vc_column_inner width="1/3"][vc_custom_heading text="Get a free Quote" font_container="tag:h4|text_align:left"][vc_column_text][contact-form-7 id="48" title="Contact form 1"][/vc_column_text][/vc_column_inner][/vc_row_inner][/vc_column][/vc_row][vc_row][vc_column][vc_column_text] <!--counter section-->\r\n<div class="clearfix"></div>\r\n<div class="banner o-hidden success-number">\r\n<div class="clearfix"></div>\r\n<div class="parallax-container">\r\n<div class="clearfix"></div>\r\n<section>\r\n<div class="clearfix"></div>\r\n<div class="stuff" data-type="content">\r\n<div class="container"><!--section title -->\r\n<h2>Success In Numbers</h2>\r\n<!--end section title -->\r\n<div class="row counter-inner"><!-- features box -->\r\n<div class="col-md-4 col-sm-4 col-xs-4">\r\n<div class="icon-holder pull-left"></div>\r\n<div class="pull-left counter-text">\r\n<div class="counter no_count b-clor">157</div>\r\n<p class="semi-bold">Happy Clients</p>\r\n\r\n</div>\r\n</div>\r\n<!--end features box -->\r\n<!-- features box -->\r\n<div class="col-md-4 col-sm-4 col-xs-4">\r\n<div class="icon-holder pull-left"></div>\r\n<div class="pull-left counter-text">\r\n<div class="counter no_count b-clor">251</div>\r\n<p class="semi-bold">projects completed</p>\r\n\r\n</div>\r\n</div>\r\n<!--end features box -->\r\n<!-- features box -->\r\n<div class="col-md-4 col-sm-4 col-xs-4">\r\n<div class="icon-holder pull-left"></div>\r\n<div class="pull-left counter-text">\r\n<div class="counter no_count b-clor">24,100</div>\r\n<p class="semi-bold">projects completed</p>\r\n\r\n</div>\r\n</div>\r\n<!--end features box -->\r\n\r\n</div>\r\n</div>\r\n</div>\r\n<div class="clearfix"></div>\r\n</section>\r\n<div class="clearfix"></div>\r\n</div>\r\n</div>\r\n<!--end counter section-->[/vc_column_text][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-09-27 16:37:04', '2017-09-27 16:37:04', '', 5, 'http://localhost/wordpress/techno/2017/09/27/5-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2017-09-27 17:25:41', '2017-09-27 17:25:41', 'Offer full service digital media solution to your clients.', 'Great websites add great values', '', 'publish', 'closed', 'closed', '', 'great-websites-add-great-values', '', '', '2017-09-27 17:25:41', '2017-09-27 17:25:41', '', 0, 'http://localhost/wordpress/techno/?post_type=technosliders&#038;p=54', 0, 'technosliders', '', 0),
(55, 1, '2017-09-27 17:25:34', '2017-09-27 17:25:34', '', 'slider-1', '', 'inherit', 'open', 'closed', '', 'slider-1', '', '', '2017-09-27 17:25:34', '2017-09-27 17:25:34', '', 54, 'http://localhost/wordpress/techno/wp-content/uploads/2017/09/slider-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2017-09-27 17:25:36', '2017-09-27 17:25:36', '', 'slider-2', '', 'inherit', 'open', 'closed', '', 'slider-2', '', '', '2017-09-27 17:25:36', '2017-09-27 17:25:36', '', 54, 'http://localhost/wordpress/techno/wp-content/uploads/2017/09/slider-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2017-09-27 17:26:20', '2017-09-27 17:26:20', 'Offer full service digital media solution to your clients.', 'Great websites add great values', '', 'publish', 'closed', 'closed', '', 'great-websites-add-great-values-2', '', '', '2017-09-27 17:26:20', '2017-09-27 17:26:20', '', 0, 'http://localhost/wordpress/techno/?post_type=technosliders&#038;p=57', 0, 'technosliders', '', 0),
(60, 1, '2017-09-27 17:37:38', '2017-09-27 17:37:38', '[vc_row][vc_column][vc_column_text][theme-services][/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_column_text][theme-portfolios][/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text="Reasons for Choosing Us" font_container="tag:h2|text_align:center"][vc_row_inner][vc_column_inner width="2/3"][vc_custom_heading text="We Lead from the Front" font_container="tag:h4|text_align:left"][vc_column_text]Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna. Quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.[/vc_column_text][/vc_column_inner][vc_column_inner width="1/3"][vc_custom_heading text="Get a free Quote" font_container="tag:h4|text_align:left"][vc_column_text][contact-form-7 id="48" title="Contact form 1"][/vc_column_text][/vc_column_inner][/vc_row_inner][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-09-27 17:37:38', '2017-09-27 17:37:38', '', 5, 'http://localhost/wordpress/techno/2017/09/27/5-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2017-09-27 17:27:08', '2017-09-27 17:27:08', '[vc_row][vc_column][vc_column_text][theme-slider][/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_column_text][theme-services][/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_column_text][theme-portfolios][/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text="Reasons for Choosing Us" font_container="tag:h2|text_align:center"][vc_row_inner][vc_column_inner width="2/3"][vc_custom_heading text="We Lead from the Front" font_container="tag:h4|text_align:left"][vc_column_text]Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna. Quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.[/vc_column_text][/vc_column_inner][vc_column_inner width="1/3"][vc_custom_heading text="Get a free Quote" font_container="tag:h4|text_align:left"][vc_column_text][contact-form-7 id="48" title="Contact form 1"][/vc_column_text][/vc_column_inner][/vc_row_inner][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-09-27 17:27:08', '2017-09-27 17:27:08', '', 5, 'http://localhost/wordpress/techno/2017/09/27/5-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2017-09-27 17:34:03', '2017-09-27 17:34:03', '[vc_row][vc_column][vc_column_text][theme-services][/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_column_text][theme-portfolios][/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text="Reasons for Choosing Us" font_container="tag:h2|text_align:center"][vc_row_inner][vc_column_inner width="2/3"][vc_custom_heading text="We Lead from the Front" font_container="tag:h4|text_align:left"][vc_column_text]Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna. Quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.[/vc_column_text][/vc_column_inner][vc_column_inner width="1/3"][vc_custom_heading text="Get a free Quote" font_container="tag:h4|text_align:left"][vc_column_text][contact-form-7 id="48" title="Contact form 1"][/vc_column_text][/vc_column_inner][/vc_row_inner][/vc_column][/vc_row][vc_row][vc_column][vc_column_text][theme-slider][/vc_column_text][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-09-27 17:34:03', '2017-09-27 17:34:03', '', 5, 'http://localhost/wordpress/techno/2017/09/27/5-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2017-09-27 17:51:58', '2017-09-27 17:51:58', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt.Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt.', 'Website Template for Digital Marketing Agency', '', 'publish', 'closed', 'closed', '', 'website-template-for-digital-marketing-agency', '', '', '2017-09-27 17:51:58', '2017-09-27 17:51:58', '', 0, 'http://localhost/wordpress/techno/?post_type=technoblogs&#038;p=61', 0, 'technoblogs', '', 0),
(62, 1, '2017-09-27 17:52:26', '2017-09-27 17:52:26', '[vc_row][vc_column][vc_column_text][theme-services][/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_column_text][theme-portfolios][/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text="Reasons for Choosing Us" font_container="tag:h2|text_align:center"][vc_row_inner][vc_column_inner width="2/3"][vc_custom_heading text="We Lead from the Front" font_container="tag:h4|text_align:left"][vc_column_text]Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna. Quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.[/vc_column_text][/vc_column_inner][vc_column_inner width="1/3"][vc_custom_heading text="Get a free Quote" font_container="tag:h4|text_align:left"][vc_column_text][contact-form-7 id="48" title="Contact form 1"][/vc_column_text][/vc_column_inner][/vc_row_inner][/vc_column][/vc_row][vc_row][vc_column][vc_column_text][theme-blogs][/vc_column_text][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-09-27 17:52:26', '2017-09-27 17:52:26', '', 5, 'http://localhost/wordpress/techno/2017/09/27/5-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2017-09-27 17:58:44', '2017-09-27 17:58:44', 'Lorem ipsum dolor sit amet, consectetuer adipi scing elit, sed diam nonummy nibh euismod tincidunt ut laoreet.Lorem ipsum dolor sit amet, consectetuer adipi scing elit, sed diam nonummy nibh euismod tincidunt ut laoreet.Lorem ipsum dolor sit amet, consectetuer adipi scing elit, sed diam nonummy nibh euismod tincidunt ut laoreet.Lorem ipsum dolor sit amet, consectetuer adipi scing elit, sed diam nonummy nibh euismod tincidunt ut laoreet.', 'Essential Tips for New Entrepreneurs', '', 'publish', 'closed', 'closed', '', 'essential-tips-for-new-entrepreneurs', '', '', '2017-09-27 18:04:17', '2017-09-27 18:04:17', '', 0, 'http://localhost/wordpress/techno/?post_type=technoblogs&#038;p=63', 0, 'technoblogs', '', 0),
(64, 1, '2017-09-27 18:13:32', '2017-09-27 18:13:32', '', 'about-banner', '', 'inherit', 'open', 'closed', '', 'about-banner', '', '', '2017-09-27 18:13:32', '2017-09-27 18:13:32', '', 7, 'http://localhost/wordpress/techno/wp-content/uploads/2017/09/about-banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2017-09-27 18:14:06', '2017-09-27 18:14:06', '', 'blog-img-standard-2', '', 'inherit', 'open', 'closed', '', 'blog-img-standard-2', '', '', '2017-09-27 18:14:06', '2017-09-27 18:14:06', '', 15, 'http://localhost/wordpress/techno/wp-content/uploads/2017/09/blog-img-standard-2.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(66, 1, '2017-09-27 18:14:15', '2017-09-27 18:14:15', '', 'blog-img-standard-3', '', 'inherit', 'open', 'closed', '', 'blog-img-standard-3', '', '', '2017-09-27 18:14:15', '2017-09-27 18:14:15', '', 15, 'http://localhost/wordpress/techno/wp-content/uploads/2017/09/blog-img-standard-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2017-09-27 18:14:37', '2017-09-27 18:14:37', '', 'contact-banner', '', 'inherit', 'open', 'closed', '', 'contact-banner', '', '', '2017-09-27 18:14:37', '2017-09-27 18:14:37', '', 17, 'http://localhost/wordpress/techno/wp-content/uploads/2017/09/contact-banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2017-09-28 16:36:43', '2017-09-28 16:36:43', '[vc_row][vc_column][vc_column_text][theme-portfolios][/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_column_text][theme-services][/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text="Reasons for Choosing Us" font_container="tag:h2|text_align:center"][vc_row_inner][vc_column_inner width="2/3"][vc_custom_heading text="We Lead from the Front" font_container="tag:h4|text_align:left"][vc_column_text]Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna. Quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.[/vc_column_text][/vc_column_inner][vc_column_inner width="1/3"][vc_custom_heading text="Get a free Quote" font_container="tag:h4|text_align:left"][vc_column_text][contact-form-7 id="48" title="Contact form 1"][/vc_column_text][/vc_column_inner][/vc_row_inner][/vc_column][/vc_row][vc_row][vc_column][vc_column_text][theme-blogs][/vc_column_text][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-09-28 16:36:43', '2017-09-28 16:36:43', '', 5, 'http://localhost/wordpress/techno/5-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2017-09-28 16:37:05', '2017-09-28 16:37:05', '[vc_row][vc_column][vc_column_text][theme-portfolios][/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_column_text][theme-services][/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text="Reasons for Choosing Us" font_container="tag:h2|text_align:center"][vc_row_inner][vc_column_inner width="2/3"][vc_custom_heading text="We Lead from the Front" font_container="tag:h4|text_align:left"][vc_column_text]Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna. Quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.[/vc_column_text][vc_column_text][contact-form-7 id="48" title="Contact form 1"][/vc_column_text][/vc_column_inner][vc_column_inner width="1/3"][vc_custom_heading text="Get a free Quote" font_container="tag:h4|text_align:left"][/vc_column_inner][/vc_row_inner][/vc_column][/vc_row][vc_row][vc_column][vc_column_text][theme-blogs][/vc_column_text][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-09-28 16:37:05', '2017-09-28 16:37:05', '', 5, 'http://localhost/wordpress/techno/5-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2017-09-28 16:37:39', '2017-09-28 16:37:39', '[vc_row][vc_column][vc_column_text][theme-portfolios][/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_column_text][theme-services][/vc_column_text][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text="Reasons for Choosing Us" font_container="tag:h2|text_align:center"][vc_row_inner][vc_column_inner width="2/3"][vc_custom_heading text="We Lead from the Front" font_container="tag:h4|text_align:left"][vc_column_text]Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna. Quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.[/vc_column_text][/vc_column_inner][vc_column_inner width="1/3"][vc_custom_heading text="Get a free Quote" font_container="tag:h4|text_align:left"][vc_column_text][contact-form-7 id="48" title="Contact form 1"][/vc_column_text][/vc_column_inner][/vc_row_inner][/vc_column][/vc_row][vc_row][vc_column][vc_column_text][theme-blogs][/vc_column_text][/vc_column][/vc_row]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-09-28 16:37:39', '2017-09-28 16:37:39', '', 5, 'http://localhost/wordpress/techno/5-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2017-09-29 03:01:12', '2017-09-29 03:01:12', '[vc_row][vc_column width="2/3"][vc_custom_heading text="We’re Your Partner in Your Success"][vc_column_text]\n<p class="regular-text">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum.</p>\n<p class="regular-text">Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum.</p>\n<p class="regular-text">Mirum est notare quam littera gothica, quam nunc putamus parum claram.</p>\n\n[/vc_column_text][/vc_column][vc_column width="1/3"][vc_single_image image="72" img_size="large" alignment="center"][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text="Know More about Us" font_container="tag:h2|text_align:center"][/vc_column][/vc_row][vc_row][vc_column width="1/3"][vc_column_text]<div class="round-icon-wrapper"></div>[/vc_column_text][vc_custom_heading text="Team" font_container="tag:h4|text_align:center"][vc_column_text]Lorem ipsum dolor sit amet, consect etuer adipi scing elit, sed diam nonum my nibh euismod tincidunt.[/vc_column_text][/vc_column][vc_column width="1/3"][vc_column_text]<div class="round-icon-wrapper"></div>[/vc_column_text][vc_custom_heading text="Team" font_container="tag:h4|text_align:center"][vc_custom_heading text="Team" font_container="tag:h4|text_align:center"][vc_column_text]Lorem ipsum dolor sit amet, consect etuer adipi scing elit, sed diam nonum my nibh euismod tincidunt.[/vc_column_text][/vc_column][vc_column width="1/3"][vc_column_text]<div class="round-icon-wrapper"></div>[/vc_column_text][/vc_column][/vc_row]', 'About', '', 'inherit', 'closed', 'closed', '', '7-autosave-v1', '', '', '2017-09-29 03:01:12', '2017-09-29 03:01:12', '', 7, 'http://localhost/wordpress/techno/7-autosave-v1/', 0, 'revision', '', 0),
(72, 1, '2017-09-29 02:55:47', '2017-09-29 02:55:47', '', 'about-right-img', '', 'inherit', 'open', 'closed', '', 'about-right-img', '', '', '2017-09-29 02:55:47', '2017-09-29 02:55:47', '', 7, 'http://localhost/wordpress/techno/wp-content/uploads/2017/09/about-right-img.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2017-09-29 02:56:08', '2017-09-29 02:56:08', '[vc_row][vc_column width="2/3"][vc_custom_heading text="We’re Your Partner in Your Success"][vc_column_text]\r\n<p class="regular-text">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum.</p>\r\n<p class="regular-text">Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum.</p>\r\n<p class="regular-text">Mirum est notare quam littera gothica, quam nunc putamus parum claram.</p>\r\n[/vc_column_text][/vc_column][vc_column width="1/3"][vc_single_image image="72" img_size="large" alignment="center"][/vc_column][/vc_row]', 'About', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-09-29 02:56:08', '2017-09-29 02:56:08', '', 7, 'http://localhost/wordpress/techno/7-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2017-09-29 03:02:04', '2017-09-29 03:02:04', '[vc_row][vc_column width="2/3"][vc_custom_heading text="We’re Your Partner in Your Success"][vc_column_text]\r\n<p class="regular-text">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum.</p>\r\n<p class="regular-text">Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum.</p>\r\n<p class="regular-text">Mirum est notare quam littera gothica, quam nunc putamus parum claram.</p>\r\n[/vc_column_text][/vc_column][vc_column width="1/3"][vc_single_image image="72" img_size="large" alignment="center"][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text="Know More about Us" font_container="tag:h2|text_align:center"][/vc_column][/vc_row][vc_row][vc_column width="1/3"][vc_custom_heading text="Team" font_container="tag:h4|text_align:center"][vc_column_text]Lorem ipsum dolor sit amet, consect etuer adipi scing elit, sed diam nonum my nibh euismod tincidunt.[/vc_column_text][/vc_column][vc_column width="1/3"][vc_custom_heading text="Team" font_container="tag:h4|text_align:center"][vc_column_text]Lorem ipsum dolor sit amet, consect etuer adipi scing elit, sed diam nonum my nibh euismod tincidunt.[/vc_column_text][/vc_column][vc_column width="1/3"][vc_custom_heading text="Team" font_container="tag:h4|text_align:center"][vc_column_text]Lorem ipsum dolor sit amet, consect etuer adipi scing elit, sed diam nonum my nibh euismod tincidunt.[/vc_column_text][/vc_column][/vc_row]', 'About', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-09-29 03:02:04', '2017-09-29 03:02:04', '', 7, 'http://localhost/wordpress/techno/7-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2017-09-29 03:01:31', '2017-09-29 03:01:31', '[vc_row][vc_column width="2/3"][vc_custom_heading text="We’re Your Partner in Your Success"][vc_column_text]\r\n<p class="regular-text">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum.</p>\r\n<p class="regular-text">Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum.</p>\r\n<p class="regular-text">Mirum est notare quam littera gothica, quam nunc putamus parum claram.</p>\r\n[/vc_column_text][/vc_column][vc_column width="1/3"][vc_single_image image="72" img_size="large" alignment="center"][/vc_column][/vc_row][vc_row][vc_column][vc_custom_heading text="Know More about Us" font_container="tag:h2|text_align:center"][/vc_column][/vc_row][vc_row][vc_column width="1/3"][vc_column_text]\r\n<div class="round-icon-wrapper"></div>\r\n[/vc_column_text][vc_custom_heading text="Team" font_container="tag:h4|text_align:center"][vc_column_text]Lorem ipsum dolor sit amet, consect etuer adipi scing elit, sed diam nonum my nibh euismod tincidunt.[/vc_column_text][/vc_column][vc_column width="1/3"][vc_column_text]\r\n<div class="round-icon-wrapper"></div>\r\n[/vc_column_text][vc_custom_heading text="Team" font_container="tag:h4|text_align:center"][vc_column_text]Lorem ipsum dolor sit amet, consect etuer adipi scing elit, sed diam nonum my nibh euismod tincidunt.[/vc_column_text][/vc_column][vc_column width="1/3"][vc_column_text]\r\n<div class="round-icon-wrapper"></div>\r\n[/vc_column_text][vc_custom_heading text="Team" font_container="tag:h4|text_align:center"][vc_column_text]Lorem ipsum dolor sit amet, consect etuer adipi scing elit, sed diam nonum my nibh euismod tincidunt.[/vc_column_text][/vc_column][/vc_row]', 'About', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-09-29 03:01:31', '2017-09-29 03:01:31', '', 7, 'http://localhost/wordpress/techno/7-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Primary Menu', 'primary-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(27, 2, 0),
(26, 2, 0),
(25, 2, 0),
(24, 2, 0),
(23, 2, 0),
(22, 2, 0),
(21, 2, 0),
(37, 2, 0),
(38, 2, 0),
(39, 2, 0),
(40, 2, 0),
(41, 2, 0),
(42, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 13);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:3:{s:64:"fdb319f0d3ed98c14b8e5ed56fc08c80c5335359643ef831d2e834c21c942fb8";a:4:{s:10:"expiration";i:1506698420;s:2:"ip";s:3:"::1";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36";s:5:"login";i:1506525620;}s:64:"d36513c958335b750636de0da9fc34a47ba8a9dcb2de2b16d2843d4375e62415";a:4:{s:10:"expiration";i:1506789295;s:2:"ip";s:3:"::1";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36";s:5:"login";i:1506616495;}s:64:"36b81d73c14ad3a64606540097f7e06ba15a89e91c5fd0d3b3a02325e71d7c0a";a:4:{s:10:"expiration";i:1506826197;s:2:"ip";s:3:"::1";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36";s:5:"login";i:1506653397;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(17, 1, 'community-events-location', 'a:1:{s:2:"ip";s:2:"::";}'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'wp_user-settings', 'editor=tinymce&libraryContent=browse&edit_element_vcUIPanelWidth=650&edit_element_vcUIPanelLeft=674px&edit_element_vcUIPanelTop=74px'),
(22, 1, 'wp_user-settings-time', '1506529781');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BN53cZqfJQw5QciTWf2S1Jvkj3xl9i/', 'admin', 'sanjay@gmail.com', '', '2017-09-27 15:20:12', '', 0, 'admin');

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
  ADD UNIQUE KEY `option_name` (`option_name`);

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
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=279;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
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
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
