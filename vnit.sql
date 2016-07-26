-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 26, 2016 at 11:30 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `vnit`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_commentmeta`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2016-07-26 01:43:58', '2016-07-26 01:43:58', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_links`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=159 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/vnit', 'yes'),
(2, 'home', 'http://localhost/vnit', 'yes'),
(3, 'blogname', '', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'doanhieu230792@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:87:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:43:"better-font-awesome/better-font-awesome.php";i:1;s:45:"bootstrap-shortcodes/bootstrap-shortcodes.php";i:2;s:23:"revslider/revslider.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'vnit', 'yes'),
(41, 'stylesheet', 'vnit', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '36686', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
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
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '36686', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";N;s:9:"sidebar-3";N;s:13:"array_version";i:3;}', 'yes'),
(99, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'cron', 'a:4:{i:1469540640;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1469583853;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1469591116;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(106, '_transient_random_seed', 'd3eb38cb4423ff5f10d93f350a2d9ff8', 'yes'),
(107, 'nonce_key', 'VRxP^Tw.IX+f2n|lQ&@S_$I0R*`/49n^0Rvr&F9R3Qqjs=OoX]If7R!(]o;{6z+t', 'yes'),
(108, 'nonce_salt', 'rDJ7ZPhv2A/gUJQf-bC3ldZY%I3=zdR[V7R2MP9;B}fr*SI($:JI>Rd*}9Z~/c+h', 'yes'),
(110, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:58:"http://downloads.wordpress.org/release/wordpress-4.5.3.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:58:"http://downloads.wordpress.org/release/wordpress-4.5.3.zip";s:10:"no_content";s:69:"http://downloads.wordpress.org/release/wordpress-4.5.3-no-content.zip";s:11:"new_bundled";s:70:"http://downloads.wordpress.org/release/wordpress-4.5.3-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.5.3";s:7:"version";s:5:"4.5.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1469497446;s:15:"version_checked";s:5:"4.5.3";s:12:"translations";a:0:{}}', 'yes'),
(112, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1469519426;s:7:"checked";a:5:{s:19:"akismet/akismet.php";s:6:"3.1.11";s:43:"better-font-awesome/better-font-awesome.php";s:5:"1.6.0";s:45:"bootstrap-shortcodes/bootstrap-shortcodes.php";s:5:"3.4.0";s:9:"hello.php";s:3:"1.6";s:23:"revslider/revslider.php";s:5:"4.1.4";}s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:4:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:6:"3.1.11";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"http://downloads.wordpress.org/plugin/akismet.3.1.11.zip";}s:43:"better-font-awesome/better-font-awesome.php";O:8:"stdClass":7:{s:2:"id";s:5:"49298";s:4:"slug";s:19:"better-font-awesome";s:6:"plugin";s:43:"better-font-awesome/better-font-awesome.php";s:11:"new_version";s:5:"1.6.0";s:3:"url";s:50:"https://wordpress.org/plugins/better-font-awesome/";s:7:"package";s:67:"http://downloads.wordpress.org/plugin/better-font-awesome.1.6.0.zip";s:14:"upgrade_notice";s:39:"Update fallback Font Awesome to v4.6.3.";}s:45:"bootstrap-shortcodes/bootstrap-shortcodes.php";O:8:"stdClass":6:{s:2:"id";s:5:"43955";s:4:"slug";s:20:"bootstrap-shortcodes";s:6:"plugin";s:45:"bootstrap-shortcodes/bootstrap-shortcodes.php";s:11:"new_version";s:5:"3.4.0";s:3:"url";s:51:"https://wordpress.org/plugins/bootstrap-shortcodes/";s:7:"package";s:68:"http://downloads.wordpress.org/plugin/bootstrap-shortcodes.3.4.0.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:57:"http://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}}}', 'yes'),
(115, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1469502880;s:7:"checked";a:2:{s:13:"twentysixteen";s:3:"1.2";s:4:"vnit";s:3:"1.2";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(116, 'auth_key', 'h9wNBhh>bMi@^[0{!3s3[J+!4(bvl%?;kO|>F#Ag)^fJZ579`dc>0MZ7ZS&3a:UO', 'yes'),
(117, 'auth_salt', '!]m-)z~&BRC82$!EoW3?`@6?gt|a2j%yuEPm4}4&K-?q^P5jOaGq~SISrCO*I-zs', 'yes'),
(118, 'logged_in_key', '5zLXC1@!_aCzyf;nu,_UxIMS6R-~dlJ24Q7d}U8U0R,S0=<RURs@oe4]Hs>Qdy,?', 'yes'),
(119, 'logged_in_salt', 'o=4[2/]otasvaYeG`@J_|gb39R#t#%0,Z^0~KmmK`bg?xrRfgqey+P{8VUvH_UBw', 'yes'),
(120, '_site_transient_timeout_browser_fde113a12733788d3f0100206fd0ee9e', '1470102254', 'yes'),
(121, '_site_transient_browser_fde113a12733788d3f0100206fd0ee9e', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"51.0.2704.106";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(123, 'can_compress_scripts', '1', 'yes'),
(124, '_transient_timeout_plugin_slugs', '1469605830', 'no'),
(125, '_transient_plugin_slugs', 'a:5:{i:0;s:19:"akismet/akismet.php";i:1;s:43:"better-font-awesome/better-font-awesome.php";i:2;s:45:"bootstrap-shortcodes/bootstrap-shortcodes.php";i:3;s:9:"hello.php";i:4;s:23:"revslider/revslider.php";}', 'no'),
(126, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1469540657', 'no'),
(127, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: There are no HTTP transports available which can complete the requested request.</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: There are no HTTP transports available which can complete the requested request.</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(128, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1469497768;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(129, 'current_theme', 'Vnit', 'yes'),
(130, 'theme_mods_vnit', 'a:4:{i:0;b:0;s:11:"custom_logo";i:5;s:16:"header_textcolor";s:5:"blank";s:18:"nav_menu_locations";a:2:{s:7:"primary";i:7;s:6:"social";i:0;}}', 'yes'),
(131, 'theme_switched', '', 'yes'),
(133, '_transient_twentysixteen_categories', '1', 'yes'),
(134, 'recently_activated', 'a:0:{}', 'yes'),
(135, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1469509585', 'yes'),
(136, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5981";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3695";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3648";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"3163";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2824";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2439";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2240";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"2110";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"2070";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"2060";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"2009";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1949";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1883";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"1814";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1717";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1600";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1559";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1428";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1337";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1293";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1252";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1123";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1110";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:4:"1014";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:4:"1009";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:4:"1008";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"942";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"932";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"926";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"919";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"919";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"862";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"849";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"807";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"800";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"794";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"777";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"771";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"767";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"766";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"755";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"749";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"721";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"716";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"702";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"699";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"697";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"697";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"693";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"679";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"667";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"648";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"625";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"625";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"616";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"606";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"603";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"601";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"598";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"590";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"586";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"575";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"573";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"562";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"562";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"546";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"543";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"540";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"526";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"525";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"520";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"518";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"518";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"516";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"489";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"479";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"472";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"472";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"464";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"461";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"453";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"446";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"441";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"435";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"428";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"428";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"426";}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";s:3:"425";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"422";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"415";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"415";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"411";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"408";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"407";}s:7:"sharing";a:3:{s:4:"name";s:7:"sharing";s:4:"slug";s:7:"sharing";s:5:"count";s:3:"406";}s:6:"paypal";a:3:{s:4:"name";s:6:"paypal";s:4:"slug";s:6:"paypal";s:5:"count";s:3:"406";}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";s:3:"405";}s:7:"profile";a:3:{s:4:"name";s:7:"profile";s:4:"slug";s:7:"profile";s:5:"count";s:3:"404";}s:8:"linkedin";a:3:{s:4:"name";s:8:"linkedin";s:4:"slug";s:8:"linkedin";s:5:"count";s:3:"401";}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";s:3:"401";}}', 'yes'),
(138, '_site_transient_timeout_theme_roots', '1469504680', 'yes'),
(139, '_site_transient_theme_roots', 'a:2:{s:13:"twentysixteen";s:7:"/themes";s:4:"vnit";s:7:"/themes";}', 'yes'),
(140, 'bs_options', 'a:12:{s:23:"chk_default_options_css";s:1:"1";s:22:"chk_default_options_js";s:1:"1";s:24:"chk_default_options_grid";s:1:"1";s:24:"chk_default_options_tabs";s:1:"1";s:28:"chk_default_options_collapse";s:1:"1";s:26:"chk_default_options_alerts";s:1:"1";s:25:"chk_default_options_wells";s:1:"1";s:27:"chk_default_options_buttons";s:1:"1";s:26:"chk_default_options_labels";s:1:"1";s:25:"chk_default_options_icons";s:1:"1";s:24:"chk_default_options_lead";s:1:"1";s:27:"chk_default_options_tooltip";s:1:"1";}', 'yes'),
(143, 'better-font-awesome_options', 'a:4:{s:7:"version";s:6:"latest";s:8:"minified";i:1;s:18:"remove_existing_fa";s:0:"";s:18:"hide_admin_notices";s:0:"";}', 'yes'),
(144, '_transient_timeout_bfa-api-versions', '1469547241', 'no'),
(145, '_transient_bfa-api-versions', 'O:8:"stdClass":2:{s:8:"versions";a:19:{i:0;s:5:"4.6.3";i:1;s:5:"4.6.2";i:2;s:5:"4.6.1";i:3;s:5:"4.6.0";i:4;s:5:"4.5.0";i:5;s:5:"4.4.0";i:6;s:5:"4.3.0";i:7;s:5:"4.2.0";i:8;s:5:"4.1.0";i:9;s:5:"4.0.3";i:10;s:5:"4.0.1";i:11;s:5:"4.0.0";i:12;s:5:"3.2.1";i:13;s:5:"3.2.0";i:14;s:5:"3.1.1";i:15;s:5:"3.0.2";i:16;s:3:"3.0";i:17;s:3:"2.0";i:18;s:5:"1.0.0";}s:11:"lastversion";s:5:"4.6.3";}', 'no'),
(146, '_transient_timeout_bfa-css', '1472096041', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(147, '_transient_bfa-css', 'a:1:{s:5:"4.6.3";s:35134:"/*!\n *  Font Awesome 4.6.3 by @davegandy - http://fontawesome.io - @fontawesome\n *  License - http://fontawesome.io/license (Font: SIL OFL 1.1, CSS: MIT License)\n */\n/* FONT PATH\n * -------------------------- */\n@font-face {\n  font-family: ''FontAwesome'';\n  src: url(''../fonts/fontawesome-webfont.eot?v=4.6.3'');\n  src: url(''../fonts/fontawesome-webfont.eot?#iefix&v=4.6.3'') format(''embedded-opentype''), url(''../fonts/fontawesome-webfont.woff2?v=4.6.3'') format(''woff2''), url(''../fonts/fontawesome-webfont.woff?v=4.6.3'') format(''woff''), url(''../fonts/fontawesome-webfont.ttf?v=4.6.3'') format(''truetype''), url(''../fonts/fontawesome-webfont.svg?v=4.6.3#fontawesomeregular'') format(''svg'');\n  font-weight: normal;\n  font-style: normal;\n}\n.fa {\n  display: inline-block;\n  font: normal normal normal 14px/1 FontAwesome;\n  font-size: inherit;\n  text-rendering: auto;\n  -webkit-font-smoothing: antialiased;\n  -moz-osx-font-smoothing: grayscale;\n}\n/* makes the font 33% larger relative to the icon container */\n.fa-lg {\n  font-size: 1.33333333em;\n  line-height: 0.75em;\n  vertical-align: -15%;\n}\n.fa-2x {\n  font-size: 2em;\n}\n.fa-3x {\n  font-size: 3em;\n}\n.fa-4x {\n  font-size: 4em;\n}\n.fa-5x {\n  font-size: 5em;\n}\n.fa-fw {\n  width: 1.28571429em;\n  text-align: center;\n}\n.fa-ul {\n  padding-left: 0;\n  margin-left: 2.14285714em;\n  list-style-type: none;\n}\n.fa-ul > li {\n  position: relative;\n}\n.fa-li {\n  position: absolute;\n  left: -2.14285714em;\n  width: 2.14285714em;\n  top: 0.14285714em;\n  text-align: center;\n}\n.fa-li.fa-lg {\n  left: -1.85714286em;\n}\n.fa-border {\n  padding: .2em .25em .15em;\n  border: solid 0.08em #eeeeee;\n  border-radius: .1em;\n}\n.fa-pull-left {\n  float: left;\n}\n.fa-pull-right {\n  float: right;\n}\n.fa.fa-pull-left {\n  margin-right: .3em;\n}\n.fa.fa-pull-right {\n  margin-left: .3em;\n}\n/* Deprecated as of 4.4.0 */\n.pull-right {\n  float: right;\n}\n.pull-left {\n  float: left;\n}\n.fa.pull-left {\n  margin-right: .3em;\n}\n.fa.pull-right {\n  margin-left: .3em;\n}\n.fa-spin {\n  -webkit-animation: fa-spin 2s infinite linear;\n  animation: fa-spin 2s infinite linear;\n}\n.fa-pulse {\n  -webkit-animation: fa-spin 1s infinite steps(8);\n  animation: fa-spin 1s infinite steps(8);\n}\n@-webkit-keyframes fa-spin {\n  0% {\n    -webkit-transform: rotate(0deg);\n    transform: rotate(0deg);\n  }\n  100% {\n    -webkit-transform: rotate(359deg);\n    transform: rotate(359deg);\n  }\n}\n@keyframes fa-spin {\n  0% {\n    -webkit-transform: rotate(0deg);\n    transform: rotate(0deg);\n  }\n  100% {\n    -webkit-transform: rotate(359deg);\n    transform: rotate(359deg);\n  }\n}\n.fa-rotate-90 {\n  -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=1)";\n  -webkit-transform: rotate(90deg);\n  -ms-transform: rotate(90deg);\n  transform: rotate(90deg);\n}\n.fa-rotate-180 {\n  -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=2)";\n  -webkit-transform: rotate(180deg);\n  -ms-transform: rotate(180deg);\n  transform: rotate(180deg);\n}\n.fa-rotate-270 {\n  -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=3)";\n  -webkit-transform: rotate(270deg);\n  -ms-transform: rotate(270deg);\n  transform: rotate(270deg);\n}\n.fa-flip-horizontal {\n  -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=0, mirror=1)";\n  -webkit-transform: scale(-1, 1);\n  -ms-transform: scale(-1, 1);\n  transform: scale(-1, 1);\n}\n.fa-flip-vertical {\n  -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=2, mirror=1)";\n  -webkit-transform: scale(1, -1);\n  -ms-transform: scale(1, -1);\n  transform: scale(1, -1);\n}\n:root .fa-rotate-90,\n:root .fa-rotate-180,\n:root .fa-rotate-270,\n:root .fa-flip-horizontal,\n:root .fa-flip-vertical {\n  filter: none;\n}\n.fa-stack {\n  position: relative;\n  display: inline-block;\n  width: 2em;\n  height: 2em;\n  line-height: 2em;\n  vertical-align: middle;\n}\n.fa-stack-1x,\n.fa-stack-2x {\n  position: absolute;\n  left: 0;\n  width: 100%;\n  text-align: center;\n}\n.fa-stack-1x {\n  line-height: inherit;\n}\n.fa-stack-2x {\n  font-size: 2em;\n}\n.fa-inverse {\n  color: #ffffff;\n}\n/* Font Awesome uses the Unicode Private Use Area (PUA) to ensure screen\n   readers do not read off random characters that represent icons */\n.fa-glass:before {\n  content: "\\f000";\n}\n.fa-music:before {\n  content: "\\f001";\n}\n.fa-search:before {\n  content: "\\f002";\n}\n.fa-envelope-o:before {\n  content: "\\f003";\n}\n.fa-heart:before {\n  content: "\\f004";\n}\n.fa-star:before {\n  content: "\\f005";\n}\n.fa-star-o:before {\n  content: "\\f006";\n}\n.fa-user:before {\n  content: "\\f007";\n}\n.fa-film:before {\n  content: "\\f008";\n}\n.fa-th-large:before {\n  content: "\\f009";\n}\n.fa-th:before {\n  content: "\\f00a";\n}\n.fa-th-list:before {\n  content: "\\f00b";\n}\n.fa-check:before {\n  content: "\\f00c";\n}\n.fa-remove:before,\n.fa-close:before,\n.fa-times:before {\n  content: "\\f00d";\n}\n.fa-search-plus:before {\n  content: "\\f00e";\n}\n.fa-search-minus:before {\n  content: "\\f010";\n}\n.fa-power-off:before {\n  content: "\\f011";\n}\n.fa-signal:before {\n  content: "\\f012";\n}\n.fa-gear:before,\n.fa-cog:before {\n  content: "\\f013";\n}\n.fa-trash-o:before {\n  content: "\\f014";\n}\n.fa-home:before {\n  content: "\\f015";\n}\n.fa-file-o:before {\n  content: "\\f016";\n}\n.fa-clock-o:before {\n  content: "\\f017";\n}\n.fa-road:before {\n  content: "\\f018";\n}\n.fa-download:before {\n  content: "\\f019";\n}\n.fa-arrow-circle-o-down:before {\n  content: "\\f01a";\n}\n.fa-arrow-circle-o-up:before {\n  content: "\\f01b";\n}\n.fa-inbox:before {\n  content: "\\f01c";\n}\n.fa-play-circle-o:before {\n  content: "\\f01d";\n}\n.fa-rotate-right:before,\n.fa-repeat:before {\n  content: "\\f01e";\n}\n.fa-refresh:before {\n  content: "\\f021";\n}\n.fa-list-alt:before {\n  content: "\\f022";\n}\n.fa-lock:before {\n  content: "\\f023";\n}\n.fa-flag:before {\n  content: "\\f024";\n}\n.fa-headphones:before {\n  content: "\\f025";\n}\n.fa-volume-off:before {\n  content: "\\f026";\n}\n.fa-volume-down:before {\n  content: "\\f027";\n}\n.fa-volume-up:before {\n  content: "\\f028";\n}\n.fa-qrcode:before {\n  content: "\\f029";\n}\n.fa-barcode:before {\n  content: "\\f02a";\n}\n.fa-tag:before {\n  content: "\\f02b";\n}\n.fa-tags:before {\n  content: "\\f02c";\n}\n.fa-book:before {\n  content: "\\f02d";\n}\n.fa-bookmark:before {\n  content: "\\f02e";\n}\n.fa-print:before {\n  content: "\\f02f";\n}\n.fa-camera:before {\n  content: "\\f030";\n}\n.fa-font:before {\n  content: "\\f031";\n}\n.fa-bold:before {\n  content: "\\f032";\n}\n.fa-italic:before {\n  content: "\\f033";\n}\n.fa-text-height:before {\n  content: "\\f034";\n}\n.fa-text-width:before {\n  content: "\\f035";\n}\n.fa-align-left:before {\n  content: "\\f036";\n}\n.fa-align-center:before {\n  content: "\\f037";\n}\n.fa-align-right:before {\n  content: "\\f038";\n}\n.fa-align-justify:before {\n  content: "\\f039";\n}\n.fa-list:before {\n  content: "\\f03a";\n}\n.fa-dedent:before,\n.fa-outdent:before {\n  content: "\\f03b";\n}\n.fa-indent:before {\n  content: "\\f03c";\n}\n.fa-video-camera:before {\n  content: "\\f03d";\n}\n.fa-photo:before,\n.fa-image:before,\n.fa-picture-o:before {\n  content: "\\f03e";\n}\n.fa-pencil:before {\n  content: "\\f040";\n}\n.fa-map-marker:before {\n  content: "\\f041";\n}\n.fa-adjust:before {\n  content: "\\f042";\n}\n.fa-tint:before {\n  content: "\\f043";\n}\n.fa-edit:before,\n.fa-pencil-square-o:before {\n  content: "\\f044";\n}\n.fa-share-square-o:before {\n  content: "\\f045";\n}\n.fa-check-square-o:before {\n  content: "\\f046";\n}\n.fa-arrows:before {\n  content: "\\f047";\n}\n.fa-step-backward:before {\n  content: "\\f048";\n}\n.fa-fast-backward:before {\n  content: "\\f049";\n}\n.fa-backward:before {\n  content: "\\f04a";\n}\n.fa-play:before {\n  content: "\\f04b";\n}\n.fa-pause:before {\n  content: "\\f04c";\n}\n.fa-stop:before {\n  content: "\\f04d";\n}\n.fa-forward:before {\n  content: "\\f04e";\n}\n.fa-fast-forward:before {\n  content: "\\f050";\n}\n.fa-step-forward:before {\n  content: "\\f051";\n}\n.fa-eject:before {\n  content: "\\f052";\n}\n.fa-chevron-left:before {\n  content: "\\f053";\n}\n.fa-chevron-right:before {\n  content: "\\f054";\n}\n.fa-plus-circle:before {\n  content: "\\f055";\n}\n.fa-minus-circle:before {\n  content: "\\f056";\n}\n.fa-times-circle:before {\n  content: "\\f057";\n}\n.fa-check-circle:before {\n  content: "\\f058";\n}\n.fa-question-circle:before {\n  content: "\\f059";\n}\n.fa-info-circle:before {\n  content: "\\f05a";\n}\n.fa-crosshairs:before {\n  content: "\\f05b";\n}\n.fa-times-circle-o:before {\n  content: "\\f05c";\n}\n.fa-check-circle-o:before {\n  content: "\\f05d";\n}\n.fa-ban:before {\n  content: "\\f05e";\n}\n.fa-arrow-left:before {\n  content: "\\f060";\n}\n.fa-arrow-right:before {\n  content: "\\f061";\n}\n.fa-arrow-up:before {\n  content: "\\f062";\n}\n.fa-arrow-down:before {\n  content: "\\f063";\n}\n.fa-mail-forward:before,\n.fa-share:before {\n  content: "\\f064";\n}\n.fa-expand:before {\n  content: "\\f065";\n}\n.fa-compress:before {\n  content: "\\f066";\n}\n.fa-plus:before {\n  content: "\\f067";\n}\n.fa-minus:before {\n  content: "\\f068";\n}\n.fa-asterisk:before {\n  content: "\\f069";\n}\n.fa-exclamation-circle:before {\n  content: "\\f06a";\n}\n.fa-gift:before {\n  content: "\\f06b";\n}\n.fa-leaf:before {\n  content: "\\f06c";\n}\n.fa-fire:before {\n  content: "\\f06d";\n}\n.fa-eye:before {\n  content: "\\f06e";\n}\n.fa-eye-slash:before {\n  content: "\\f070";\n}\n.fa-warning:before,\n.fa-exclamation-triangle:before {\n  content: "\\f071";\n}\n.fa-plane:before {\n  content: "\\f072";\n}\n.fa-calendar:before {\n  content: "\\f073";\n}\n.fa-random:before {\n  content: "\\f074";\n}\n.fa-comment:before {\n  content: "\\f075";\n}\n.fa-magnet:before {\n  content: "\\f076";\n}\n.fa-chevron-up:before {\n  content: "\\f077";\n}\n.fa-chevron-down:before {\n  content: "\\f078";\n}\n.fa-retweet:before {\n  content: "\\f079";\n}\n.fa-shopping-cart:before {\n  content: "\\f07a";\n}\n.fa-folder:before {\n  content: "\\f07b";\n}\n.fa-folder-open:before {\n  content: "\\f07c";\n}\n.fa-arrows-v:before {\n  content: "\\f07d";\n}\n.fa-arrows-h:before {\n  content: "\\f07e";\n}\n.fa-bar-chart-o:before,\n.fa-bar-chart:before {\n  content: "\\f080";\n}\n.fa-twitter-square:before {\n  content: "\\f081";\n}\n.fa-facebook-square:before {\n  content: "\\f082";\n}\n.fa-camera-retro:before {\n  content: "\\f083";\n}\n.fa-key:before {\n  content: "\\f084";\n}\n.fa-gears:before,\n.fa-cogs:before {\n  content: "\\f085";\n}\n.fa-comments:before {\n  content: "\\f086";\n}\n.fa-thumbs-o-up:before {\n  content: "\\f087";\n}\n.fa-thumbs-o-down:before {\n  content: "\\f088";\n}\n.fa-star-half:before {\n  content: "\\f089";\n}\n.fa-heart-o:before {\n  content: "\\f08a";\n}\n.fa-sign-out:before {\n  content: "\\f08b";\n}\n.fa-linkedin-square:before {\n  content: "\\f08c";\n}\n.fa-thumb-tack:before {\n  content: "\\f08d";\n}\n.fa-external-link:before {\n  content: "\\f08e";\n}\n.fa-sign-in:before {\n  content: "\\f090";\n}\n.fa-trophy:before {\n  content: "\\f091";\n}\n.fa-github-square:before {\n  content: "\\f092";\n}\n.fa-upload:before {\n  content: "\\f093";\n}\n.fa-lemon-o:before {\n  content: "\\f094";\n}\n.fa-phone:before {\n  content: "\\f095";\n}\n.fa-square-o:before {\n  content: "\\f096";\n}\n.fa-bookmark-o:before {\n  content: "\\f097";\n}\n.fa-phone-square:before {\n  content: "\\f098";\n}\n.fa-twitter:before {\n  content: "\\f099";\n}\n.fa-facebook-f:before,\n.fa-facebook:before {\n  content: "\\f09a";\n}\n.fa-github:before {\n  content: "\\f09b";\n}\n.fa-unlock:before {\n  content: "\\f09c";\n}\n.fa-credit-card:before {\n  content: "\\f09d";\n}\n.fa-feed:before,\n.fa-rss:before {\n  content: "\\f09e";\n}\n.fa-hdd-o:before {\n  content: "\\f0a0";\n}\n.fa-bullhorn:before {\n  content: "\\f0a1";\n}\n.fa-bell:before {\n  content: "\\f0f3";\n}\n.fa-certificate:before {\n  content: "\\f0a3";\n}\n.fa-hand-o-right:before {\n  content: "\\f0a4";\n}\n.fa-hand-o-left:before {\n  content: "\\f0a5";\n}\n.fa-hand-o-up:before {\n  content: "\\f0a6";\n}\n.fa-hand-o-down:before {\n  content: "\\f0a7";\n}\n.fa-arrow-circle-left:before {\n  content: "\\f0a8";\n}\n.fa-arrow-circle-right:before {\n  content: "\\f0a9";\n}\n.fa-arrow-circle-up:before {\n  content: "\\f0aa";\n}\n.fa-arrow-circle-down:before {\n  content: "\\f0ab";\n}\n.fa-globe:before {\n  content: "\\f0ac";\n}\n.fa-wrench:before {\n  content: "\\f0ad";\n}\n.fa-tasks:before {\n  content: "\\f0ae";\n}\n.fa-filter:before {\n  content: "\\f0b0";\n}\n.fa-briefcase:before {\n  content: "\\f0b1";\n}\n.fa-arrows-alt:before {\n  content: "\\f0b2";\n}\n.fa-group:before,\n.fa-users:before {\n  content: "\\f0c0";\n}\n.fa-chain:before,\n.fa-link:before {\n  content: "\\f0c1";\n}\n.fa-cloud:before {\n  content: "\\f0c2";\n}\n.fa-flask:before {\n  content: "\\f0c3";\n}\n.fa-cut:before,\n.fa-scissors:before {\n  content: "\\f0c4";\n}\n.fa-copy:before,\n.fa-files-o:before {\n  content: "\\f0c5";\n}\n.fa-paperclip:before {\n  content: "\\f0c6";\n}\n.fa-save:before,\n.fa-floppy-o:before {\n  content: "\\f0c7";\n}\n.fa-square:before {\n  content: "\\f0c8";\n}\n.fa-navicon:before,\n.fa-reorder:before,\n.fa-bars:before {\n  content: "\\f0c9";\n}\n.fa-list-ul:before {\n  content: "\\f0ca";\n}\n.fa-list-ol:before {\n  content: "\\f0cb";\n}\n.fa-strikethrough:before {\n  content: "\\f0cc";\n}\n.fa-underline:before {\n  content: "\\f0cd";\n}\n.fa-table:before {\n  content: "\\f0ce";\n}\n.fa-magic:before {\n  content: "\\f0d0";\n}\n.fa-truck:before {\n  content: "\\f0d1";\n}\n.fa-pinterest:before {\n  content: "\\f0d2";\n}\n.fa-pinterest-square:before {\n  content: "\\f0d3";\n}\n.fa-google-plus-square:before {\n  content: "\\f0d4";\n}\n.fa-google-plus:before {\n  content: "\\f0d5";\n}\n.fa-money:before {\n  content: "\\f0d6";\n}\n.fa-caret-down:before {\n  content: "\\f0d7";\n}\n.fa-caret-up:before {\n  content: "\\f0d8";\n}\n.fa-caret-left:before {\n  content: "\\f0d9";\n}\n.fa-caret-right:before {\n  content: "\\f0da";\n}\n.fa-columns:before {\n  content: "\\f0db";\n}\n.fa-unsorted:before,\n.fa-sort:before {\n  content: "\\f0dc";\n}\n.fa-sort-down:before,\n.fa-sort-desc:before {\n  content: "\\f0dd";\n}\n.fa-sort-up:before,\n.fa-sort-asc:before {\n  content: "\\f0de";\n}\n.fa-envelope:before {\n  content: "\\f0e0";\n}\n.fa-linkedin:before {\n  content: "\\f0e1";\n}\n.fa-rotate-left:before,\n.fa-undo:before {\n  content: "\\f0e2";\n}\n.fa-legal:before,\n.fa-gavel:before {\n  content: "\\f0e3";\n}\n.fa-dashboard:before,\n.fa-tachometer:before {\n  content: "\\f0e4";\n}\n.fa-comment-o:before {\n  content: "\\f0e5";\n}\n.fa-comments-o:before {\n  content: "\\f0e6";\n}\n.fa-flash:before,\n.fa-bolt:before {\n  content: "\\f0e7";\n}\n.fa-sitemap:before {\n  content: "\\f0e8";\n}\n.fa-umbrella:before {\n  content: "\\f0e9";\n}\n.fa-paste:before,\n.fa-clipboard:before {\n  content: "\\f0ea";\n}\n.fa-lightbulb-o:before {\n  content: "\\f0eb";\n}\n.fa-exchange:before {\n  content: "\\f0ec";\n}\n.fa-cloud-download:before {\n  content: "\\f0ed";\n}\n.fa-cloud-upload:before {\n  content: "\\f0ee";\n}\n.fa-user-md:before {\n  content: "\\f0f0";\n}\n.fa-stethoscope:before {\n  content: "\\f0f1";\n}\n.fa-suitcase:before {\n  content: "\\f0f2";\n}\n.fa-bell-o:before {\n  content: "\\f0a2";\n}\n.fa-coffee:before {\n  content: "\\f0f4";\n}\n.fa-cutlery:before {\n  content: "\\f0f5";\n}\n.fa-file-text-o:before {\n  content: "\\f0f6";\n}\n.fa-building-o:before {\n  content: "\\f0f7";\n}\n.fa-hospital-o:before {\n  content: "\\f0f8";\n}\n.fa-ambulance:before {\n  content: "\\f0f9";\n}\n.fa-medkit:before {\n  content: "\\f0fa";\n}\n.fa-fighter-jet:before {\n  content: "\\f0fb";\n}\n.fa-beer:before {\n  content: "\\f0fc";\n}\n.fa-h-square:before {\n  content: "\\f0fd";\n}\n.fa-plus-square:before {\n  content: "\\f0fe";\n}\n.fa-angle-double-left:before {\n  content: "\\f100";\n}\n.fa-angle-double-right:before {\n  content: "\\f101";\n}\n.fa-angle-double-up:before {\n  content: "\\f102";\n}\n.fa-angle-double-down:before {\n  content: "\\f103";\n}\n.fa-angle-left:before {\n  content: "\\f104";\n}\n.fa-angle-right:before {\n  content: "\\f105";\n}\n.fa-angle-up:before {\n  content: "\\f106";\n}\n.fa-angle-down:before {\n  content: "\\f107";\n}\n.fa-desktop:before {\n  content: "\\f108";\n}\n.fa-laptop:before {\n  content: "\\f109";\n}\n.fa-tablet:before {\n  content: "\\f10a";\n}\n.fa-mobile-phone:before,\n.fa-mobile:before {\n  content: "\\f10b";\n}\n.fa-circle-o:before {\n  content: "\\f10c";\n}\n.fa-quote-left:before {\n  content: "\\f10d";\n}\n.fa-quote-right:before {\n  content: "\\f10e";\n}\n.fa-spinner:before {\n  content: "\\f110";\n}\n.fa-circle:before {\n  content: "\\f111";\n}\n.fa-mail-reply:before,\n.fa-reply:before {\n  content: "\\f112";\n}\n.fa-github-alt:before {\n  content: "\\f113";\n}\n.fa-folder-o:before {\n  content: "\\f114";\n}\n.fa-folder-open-o:before {\n  content: "\\f115";\n}\n.fa-smile-o:before {\n  content: "\\f118";\n}\n.fa-frown-o:before {\n  content: "\\f119";\n}\n.fa-meh-o:before {\n  content: "\\f11a";\n}\n.fa-gamepad:before {\n  content: "\\f11b";\n}\n.fa-keyboard-o:before {\n  content: "\\f11c";\n}\n.fa-flag-o:before {\n  content: "\\f11d";\n}\n.fa-flag-checkered:before {\n  content: "\\f11e";\n}\n.fa-terminal:before {\n  content: "\\f120";\n}\n.fa-code:before {\n  content: "\\f121";\n}\n.fa-mail-reply-all:before,\n.fa-reply-all:before {\n  content: "\\f122";\n}\n.fa-star-half-empty:before,\n.fa-star-half-full:before,\n.fa-star-half-o:before {\n  content: "\\f123";\n}\n.fa-location-arrow:before {\n  content: "\\f124";\n}\n.fa-crop:before {\n  content: "\\f125";\n}\n.fa-code-fork:before {\n  content: "\\f126";\n}\n.fa-unlink:before,\n.fa-chain-broken:before {\n  content: "\\f127";\n}\n.fa-question:before {\n  content: "\\f128";\n}\n.fa-info:before {\n  content: "\\f129";\n}\n.fa-exclamation:before {\n  content: "\\f12a";\n}\n.fa-superscript:before {\n  content: "\\f12b";\n}\n.fa-subscript:before {\n  content: "\\f12c";\n}\n.fa-eraser:before {\n  content: "\\f12d";\n}\n.fa-puzzle-piece:before {\n  content: "\\f12e";\n}\n.fa-microphone:before {\n  content: "\\f130";\n}\n.fa-microphone-slash:before {\n  content: "\\f131";\n}\n.fa-shield:before {\n  content: "\\f132";\n}\n.fa-calendar-o:before {\n  content: "\\f133";\n}\n.fa-fire-extinguisher:before {\n  content: "\\f134";\n}\n.fa-rocket:before {\n  content: "\\f135";\n}\n.fa-maxcdn:before {\n  content: "\\f136";\n}\n.fa-chevron-circle-left:before {\n  content: "\\f137";\n}\n.fa-chevron-circle-right:before {\n  content: "\\f138";\n}\n.fa-chevron-circle-up:before {\n  content: "\\f139";\n}\n.fa-chevron-circle-down:before {\n  content: "\\f13a";\n}\n.fa-html5:before {\n  content: "\\f13b";\n}\n.fa-css3:before {\n  content: "\\f13c";\n}\n.fa-anchor:before {\n  content: "\\f13d";\n}\n.fa-unlock-alt:before {\n  content: "\\f13e";\n}\n.fa-bullseye:before {\n  content: "\\f140";\n}\n.fa-ellipsis-h:before {\n  content: "\\f141";\n}\n.fa-ellipsis-v:before {\n  content: "\\f142";\n}\n.fa-rss-square:before {\n  content: "\\f143";\n}\n.fa-play-circle:before {\n  content: "\\f144";\n}\n.fa-ticket:before {\n  content: "\\f145";\n}\n.fa-minus-square:before {\n  content: "\\f146";\n}\n.fa-minus-square-o:before {\n  content: "\\f147";\n}\n.fa-level-up:before {\n  content: "\\f148";\n}\n.fa-level-down:before {\n  content: "\\f149";\n}\n.fa-check-square:before {\n  content: "\\f14a";\n}\n.fa-pencil-square:before {\n  content: "\\f14b";\n}\n.fa-external-link-square:before {\n  content: "\\f14c";\n}\n.fa-share-square:before {\n  content: "\\f14d";\n}\n.fa-compass:before {\n  content: "\\f14e";\n}\n.fa-toggle-down:before,\n.fa-caret-square-o-down:before {\n  content: "\\f150";\n}\n.fa-toggle-up:before,\n.fa-caret-square-o-up:before {\n  content: "\\f151";\n}\n.fa-toggle-right:before,\n.fa-caret-square-o-right:before {\n  content: "\\f152";\n}\n.fa-euro:before,\n.fa-eur:before {\n  content: "\\f153";\n}\n.fa-gbp:before {\n  content: "\\f154";\n}\n.fa-dollar:before,\n.fa-usd:before {\n  content: "\\f155";\n}\n.fa-rupee:before,\n.fa-inr:before {\n  content: "\\f156";\n}\n.fa-cny:before,\n.fa-rmb:before,\n.fa-yen:before,\n.fa-jpy:before {\n  content: "\\f157";\n}\n.fa-ruble:before,\n.fa-rouble:before,\n.fa-rub:before {\n  content: "\\f158";\n}\n.fa-won:before,\n.fa-krw:before {\n  content: "\\f159";\n}\n.fa-bitcoin:before,\n.fa-btc:before {\n  content: "\\f15a";\n}\n.fa-file:before {\n  content: "\\f15b";\n}\n.fa-file-text:before {\n  content: "\\f15c";\n}\n.fa-sort-alpha-asc:before {\n  content: "\\f15d";\n}\n.fa-sort-alpha-desc:before {\n  content: "\\f15e";\n}\n.fa-sort-amount-asc:before {\n  content: "\\f160";\n}\n.fa-sort-amount-desc:before {\n  content: "\\f161";\n}\n.fa-sort-numeric-asc:before {\n  content: "\\f162";\n}\n.fa-sort-numeric-desc:before {\n  content: "\\f163";\n}\n.fa-thumbs-up:before {\n  content: "\\f164";\n}\n.fa-thumbs-down:before {\n  content: "\\f165";\n}\n.fa-youtube-square:before {\n  content: "\\f166";\n}\n.fa-youtube:before {\n  content: "\\f167";\n}\n.fa-xing:before {\n  content: "\\f168";\n}\n.fa-xing-square:before {\n  content: "\\f169";\n}\n.fa-youtube-play:before {\n  content: "\\f16a";\n}\n.fa-dropbox:before {\n  content: "\\f16b";\n}\n.fa-stack-overflow:before {\n  content: "\\f16c";\n}\n.fa-instagram:before {\n  content: "\\f16d";\n}\n.fa-flickr:before {\n  content: "\\f16e";\n}\n.fa-adn:before {\n  content: "\\f170";\n}\n.fa-bitbucket:before {\n  content: "\\f171";\n}\n.fa-bitbucket-square:before {\n  content: "\\f172";\n}\n.fa-tumblr:before {\n  content: "\\f173";\n}\n.fa-tumblr-square:before {\n  content: "\\f174";\n}\n.fa-long-arrow-down:before {\n  content: "\\f175";\n}\n.fa-long-arrow-up:before {\n  content: "\\f176";\n}\n.fa-long-arrow-left:before {\n  content: "\\f177";\n}\n.fa-long-arrow-right:before {\n  content: "\\f178";\n}\n.fa-apple:before {\n  content: "\\f179";\n}\n.fa-windows:before {\n  content: "\\f17a";\n}\n.fa-android:before {\n  content: "\\f17b";\n}\n.fa-linux:before {\n  content: "\\f17c";\n}\n.fa-dribbble:before {\n  content: "\\f17d";\n}\n.fa-skype:before {\n  content: "\\f17e";\n}\n.fa-foursquare:before {\n  content: "\\f180";\n}\n.fa-trello:before {\n  content: "\\f181";\n}\n.fa-female:before {\n  content: "\\f182";\n}\n.fa-male:before {\n  content: "\\f183";\n}\n.fa-gittip:before,\n.fa-gratipay:before {\n  content: "\\f184";\n}\n.fa-sun-o:before {\n  content: "\\f185";\n}\n.fa-moon-o:before {\n  content: "\\f186";\n}\n.fa-archive:before {\n  content: "\\f187";\n}\n.fa-bug:before {\n  content: "\\f188";\n}\n.fa-vk:before {\n  content: "\\f189";\n}\n.fa-weibo:before {\n  content: "\\f18a";\n}\n.fa-renren:before {\n  content: "\\f18b";\n}\n.fa-pagelines:before {\n  content: "\\f18c";\n}\n.fa-stack-exchange:before {\n  content: "\\f18d";\n}\n.fa-arrow-circle-o-right:before {\n  content: "\\f18e";\n}\n.fa-arrow-circle-o-left:before {\n  content: "\\f190";\n}\n.fa-toggle-left:before,\n.fa-caret-square-o-left:before {\n  content: "\\f191";\n}\n.fa-dot-circle-o:before {\n  content: "\\f192";\n}\n.fa-wheelchair:before {\n  content: "\\f193";\n}\n.fa-vimeo-square:before {\n  content: "\\f194";\n}\n.fa-turkish-lira:before,\n.fa-try:before {\n  content: "\\f195";\n}\n.fa-plus-square-o:before {\n  content: "\\f196";\n}\n.fa-space-shuttle:before {\n  content: "\\f197";\n}\n.fa-slack:before {\n  content: "\\f198";\n}\n.fa-envelope-square:before {\n  content: "\\f199";\n}\n.fa-wordpress:before {\n  content: "\\f19a";\n}\n.fa-openid:before {\n  content: "\\f19b";\n}\n.fa-institution:before,\n.fa-bank:before,\n.fa-university:before {\n  content: "\\f19c";\n}\n.fa-mortar-board:before,\n.fa-graduation-cap:before {\n  content: "\\f19d";\n}\n.fa-yahoo:before {\n  content: "\\f19e";\n}\n.fa-google:before {\n  content: "\\f1a0";\n}\n.fa-reddit:before {\n  content: "\\f1a1";\n}\n.fa-reddit-square:before {\n  content: "\\f1a2";\n}\n.fa-stumbleupon-circle:before {\n  content: "\\f1a3";\n}\n.fa-stumbleupon:before {\n  content: "\\f1a4";\n}\n.fa-delicious:before {\n  content: "\\f1a5";\n}\n.fa-digg:before {\n  content: "\\f1a6";\n}\n.fa-pied-piper-pp:before {\n  content: "\\f1a7";\n}\n.fa-pied-piper-alt:before {\n  content: "\\f1a8";\n}\n.fa-drupal:before {\n  content: "\\f1a9";\n}\n.fa-joomla:before {\n  content: "\\f1aa";\n}\n.fa-language:before {\n  content: "\\f1ab";\n}\n.fa-fax:before {\n  content: "\\f1ac";\n}\n.fa-building:before {\n  content: "\\f1ad";\n}\n.fa-child:before {\n  content: "\\f1ae";\n}\n.fa-paw:before {\n  content: "\\f1b0";\n}\n.fa-spoon:before {\n  content: "\\f1b1";\n}\n.fa-cube:before {\n  content: "\\f1b2";\n}\n.fa-cubes:before {\n  content: "\\f1b3";\n}\n.fa-behance:before {\n  content: "\\f1b4";\n}\n.fa-behance-square:before {\n  content: "\\f1b5";\n}\n.fa-steam:before {\n  content: "\\f1b6";\n}\n.fa-steam-square:before {\n  content: "\\f1b7";\n}\n.fa-recycle:before {\n  content: "\\f1b8";\n}\n.fa-automobile:before,\n.fa-car:before {\n  content: "\\f1b9";\n}\n.fa-cab:before,\n.fa-taxi:before {\n  content: "\\f1ba";\n}\n.fa-tree:before {\n  content: "\\f1bb";\n}\n.fa-spotify:before {\n  content: "\\f1bc";\n}\n.fa-deviantart:before {\n  content: "\\f1bd";\n}\n.fa-soundcloud:before {\n  content: "\\f1be";\n}\n.fa-database:before {\n  content: "\\f1c0";\n}\n.fa-file-pdf-o:before {\n  content: "\\f1c1";\n}\n.fa-file-word-o:before {\n  content: "\\f1c2";\n}\n.fa-file-excel-o:before {\n  content: "\\f1c3";\n}\n.fa-file-powerpoint-o:before {\n  content: "\\f1c4";\n}\n.fa-file-photo-o:before,\n.fa-file-picture-o:before,\n.fa-file-image-o:before {\n  content: "\\f1c5";\n}\n.fa-file-zip-o:before,\n.fa-file-archive-o:before {\n  content: "\\f1c6";\n}\n.fa-file-sound-o:before,\n.fa-file-audio-o:before {\n  content: "\\f1c7";\n}\n.fa-file-movie-o:before,\n.fa-file-video-o:before {\n  content: "\\f1c8";\n}\n.fa-file-code-o:before {\n  content: "\\f1c9";\n}\n.fa-vine:before {\n  content: "\\f1ca";\n}\n.fa-codepen:before {\n  content: "\\f1cb";\n}\n.fa-jsfiddle:before {\n  content: "\\f1cc";\n}\n.fa-life-bouy:before,\n.fa-life-buoy:before,\n.fa-life-saver:before,\n.fa-support:before,\n.fa-life-ring:before {\n  content: "\\f1cd";\n}\n.fa-circle-o-notch:before {\n  content: "\\f1ce";\n}\n.fa-ra:before,\n.fa-resistance:before,\n.fa-rebel:before {\n  content: "\\f1d0";\n}\n.fa-ge:before,\n.fa-empire:before {\n  content: "\\f1d1";\n}\n.fa-git-square:before {\n  content: "\\f1d2";\n}\n.fa-git:before {\n  content: "\\f1d3";\n}\n.fa-y-combinator-square:before,\n.fa-yc-square:before,\n.fa-hacker-news:before {\n  content: "\\f1d4";\n}\n.fa-tencent-weibo:before {\n  content: "\\f1d5";\n}\n.fa-qq:before {\n  content: "\\f1d6";\n}\n.fa-wechat:before,\n.fa-weixin:before {\n  content: "\\f1d7";\n}\n.fa-send:before,\n.fa-paper-plane:before {\n  content: "\\f1d8";\n}\n.fa-send-o:before,\n.fa-paper-plane-o:before {\n  content: "\\f1d9";\n}\n.fa-history:before {\n  content: "\\f1da";\n}\n.fa-circle-thin:before {\n  content: "\\f1db";\n}\n.fa-header:before {\n  content: "\\f1dc";\n}\n.fa-paragraph:before {\n  content: "\\f1dd";\n}\n.fa-sliders:before {\n  content: "\\f1de";\n}\n.fa-share-alt:before {\n  content: "\\f1e0";\n}\n.fa-share-alt-square:before {\n  content: "\\f1e1";\n}\n.fa-bomb:before {\n  content: "\\f1e2";\n}\n.fa-soccer-ball-o:before,\n.fa-futbol-o:before {\n  content: "\\f1e3";\n}\n.fa-tty:before {\n  content: "\\f1e4";\n}\n.fa-binoculars:before {\n  content: "\\f1e5";\n}\n.fa-plug:before {\n  content: "\\f1e6";\n}\n.fa-slideshare:before {\n  content: "\\f1e7";\n}\n.fa-twitch:before {\n  content: "\\f1e8";\n}\n.fa-yelp:before {\n  content: "\\f1e9";\n}\n.fa-newspaper-o:before {\n  content: "\\f1ea";\n}\n.fa-wifi:before {\n  content: "\\f1eb";\n}\n.fa-calculator:before {\n  content: "\\f1ec";\n}\n.fa-paypal:before {\n  content: "\\f1ed";\n}\n.fa-google-wallet:before {\n  content: "\\f1ee";\n}\n.fa-cc-visa:before {\n  content: "\\f1f0";\n}\n.fa-cc-mastercard:before {\n  content: "\\f1f1";\n}\n.fa-cc-discover:before {\n  content: "\\f1f2";\n}\n.fa-cc-amex:before {\n  content: "\\f1f3";\n}\n.fa-cc-paypal:before {\n  content: "\\f1f4";\n}\n.fa-cc-stripe:before {\n  content: "\\f1f5";\n}\n.fa-bell-slash:before {\n  content: "\\f1f6";\n}\n.fa-bell-slash-o:before {\n  content: "\\f1f7";\n}\n.fa-trash:before {\n  content: "\\f1f8";\n}\n.fa-copyright:before {\n  content: "\\f1f9";\n}\n.fa-at:before {\n  content: "\\f1fa";\n}\n.fa-eyedropper:before {\n  content: "\\f1fb";\n}\n.fa-paint-brush:before {\n  content: "\\f1fc";\n}\n.fa-birthday-cake:before {\n  content: "\\f1fd";\n}\n.fa-area-chart:before {\n  content: "\\f1fe";\n}\n.fa-pie-chart:before {\n  content: "\\f200";\n}\n.fa-line-chart:before {\n  content: "\\f201";\n}\n.fa-lastfm:before {\n  content: "\\f202";\n}\n.fa-lastfm-square:before {\n  content: "\\f203";\n}\n.fa-toggle-off:before {\n  content: "\\f204";\n}\n.fa-toggle-on:before {\n  content: "\\f205";\n}\n.fa-bicycle:before {\n  content: "\\f206";\n}\n.fa-bus:before {\n  content: "\\f207";\n}\n.fa-ioxhost:before {\n  content: "\\f208";\n}\n.fa-angellist:before {\n  content: "\\f209";\n}\n.fa-cc:before {\n  content: "\\f20a";\n}\n.fa-shekel:before,\n.fa-sheqel:before,\n.fa-ils:before {\n  content: "\\f20b";\n}\n.fa-meanpath:before {\n  content: "\\f20c";\n}\n.fa-buysellads:before {\n  content: "\\f20d";\n}\n.fa-connectdevelop:before {\n  content: "\\f20e";\n}\n.fa-dashcube:before {\n  content: "\\f210";\n}\n.fa-forumbee:before {\n  content: "\\f211";\n}\n.fa-leanpub:before {\n  content: "\\f212";\n}\n.fa-sellsy:before {\n  content: "\\f213";\n}\n.fa-shirtsinbulk:before {\n  content: "\\f214";\n}\n.fa-simplybuilt:before {\n  content: "\\f215";\n}\n.fa-skyatlas:before {\n  content: "\\f216";\n}\n.fa-cart-plus:before {\n  content: "\\f217";\n}\n.fa-cart-arrow-down:before {\n  content: "\\f218";\n}\n.fa-diamond:before {\n  content: "\\f219";\n}\n.fa-ship:before {\n  content: "\\f21a";\n}\n.fa-user-secret:before {\n  content: "\\f21b";\n}\n.fa-motorcycle:before {\n  content: "\\f21c";\n}\n.fa-street-view:before {\n  content: "\\f21d";\n}\n.fa-heartbeat:before {\n  content: "\\f21e";\n}\n.fa-venus:before {\n  content: "\\f221";\n}\n.fa-mars:before {\n  content: "\\f222";\n}\n.fa-mercury:before {\n  content: "\\f223";\n}\n.fa-intersex:before,\n.fa-transgender:before {\n  content: "\\f224";\n}\n.fa-transgender-alt:before {\n  content: "\\f225";\n}\n.fa-venus-double:before {\n  content: "\\f226";\n}\n.fa-mars-double:before {\n  content: "\\f227";\n}\n.fa-venus-mars:before {\n  content: "\\f228";\n}\n.fa-mars-stroke:before {\n  content: "\\f229";\n}\n.fa-mars-stroke-v:before {\n  content: "\\f22a";\n}\n.fa-mars-stroke-h:before {\n  content: "\\f22b";\n}\n.fa-neuter:before {\n  content: "\\f22c";\n}\n.fa-genderless:before {\n  content: "\\f22d";\n}\n.fa-facebook-official:before {\n  content: "\\f230";\n}\n.fa-pinterest-p:before {\n  content: "\\f231";\n}\n.fa-whatsapp:before {\n  content: "\\f232";\n}\n.fa-server:before {\n  content: "\\f233";\n}\n.fa-user-plus:before {\n  content: "\\f234";\n}\n.fa-user-times:before {\n  content: "\\f235";\n}\n.fa-hotel:before,\n.fa-bed:before {\n  content: "\\f236";\n}\n.fa-viacoin:before {\n  content: "\\f237";\n}\n.fa-train:before {\n  content: "\\f238";\n}\n.fa-subway:before {\n  content: "\\f239";\n}\n.fa-medium:before {\n  content: "\\f23a";\n}\n.fa-yc:before,\n.fa-y-combinator:before {\n  content: "\\f23b";\n}\n.fa-optin-monster:before {\n  content: "\\f23c";\n}\n.fa-opencart:before {\n  content: "\\f23d";\n}\n.fa-expeditedssl:before {\n  content: "\\f23e";\n}\n.fa-battery-4:before,\n.fa-battery-full:before {\n  content: "\\f240";\n}\n.fa-battery-3:before,\n.fa-battery-three-quarters:before {\n  content: "\\f241";\n}\n.fa-battery-2:before,\n.fa-battery-half:before {\n  content: "\\f242";\n}\n.fa-battery-1:before,\n.fa-battery-quarter:before {\n  content: "\\f243";\n}\n.fa-battery-0:before,\n.fa-battery-empty:before {\n  content: "\\f244";\n}\n.fa-mouse-pointer:before {\n  content: "\\f245";\n}\n.fa-i-cursor:before {\n  content: "\\f246";\n}\n.fa-object-group:before {\n  content: "\\f247";\n}\n.fa-object-ungroup:before {\n  content: "\\f248";\n}\n.fa-sticky-note:before {\n  content: "\\f249";\n}\n.fa-sticky-note-o:before {\n  content: "\\f24a";\n}\n.fa-cc-jcb:before {\n  content: "\\f24b";\n}\n.fa-cc-diners-club:before {\n  content: "\\f24c";\n}\n.fa-clone:before {\n  content: "\\f24d";\n}\n.fa-balance-scale:before {\n  content: "\\f24e";\n}\n.fa-hourglass-o:before {\n  content: "\\f250";\n}\n.fa-hourglass-1:before,\n.fa-hourglass-start:before {\n  content: "\\f251";\n}\n.fa-hourglass-2:before,\n.fa-hourglass-half:before {\n  content: "\\f252";\n}\n.fa-hourglass-3:before,\n.fa-hourglass-end:before {\n  content: "\\f253";\n}\n.fa-hourglass:before {\n  content: "\\f254";\n}\n.fa-hand-grab-o:before,\n.fa-hand-rock-o:before {\n  content: "\\f255";\n}\n.fa-hand-stop-o:before,\n.fa-hand-paper-o:before {\n  content: "\\f256";\n}\n.fa-hand-scissors-o:before {\n  content: "\\f257";\n}\n.fa-hand-lizard-o:before {\n  content: "\\f258";\n}\n.fa-hand-spock-o:before {\n  content: "\\f259";\n}\n.fa-hand-pointer-o:before {\n  content: "\\f25a";\n}\n.fa-hand-peace-o:before {\n  content: "\\f25b";\n}\n.fa-trademark:before {\n  content: "\\f25c";\n}\n.fa-registered:before {\n  content: "\\f25d";\n}\n.fa-creative-commons:before {\n  content: "\\f25e";\n}\n.fa-gg:before {\n  content: "\\f260";\n}\n.fa-gg-circle:before {\n  content: "\\f261";\n}\n.fa-tripadvisor:before {\n  content: "\\f262";\n}\n.fa-odnoklassniki:before {\n  content: "\\f263";\n}\n.fa-odnoklassniki-square:before {\n  content: "\\f264";\n}\n.fa-get-pocket:before {\n  content: "\\f265";\n}\n.fa-wikipedia-w:before {\n  content: "\\f266";\n}\n.fa-safari:before {\n  content: "\\f267";\n}\n.fa-chrome:before {\n  content: "\\f268";\n}\n.fa-firefox:before {\n  content: "\\f269";\n}\n.fa-opera:before {\n  content: "\\f26a";\n}\n.fa-internet-explorer:before {\n  content: "\\f26b";\n}\n.fa-tv:before,\n.fa-television:before {\n  content: "\\f26c";\n}\n.fa-contao:before {\n  content: "\\f26d";\n}\n.fa-500px:before {\n  content: "\\f26e";\n}\n.fa-amazon:before {\n  content: "\\f270";\n}\n.fa-calendar-plus-o:before {\n  content: "\\f271";\n}\n.fa-calendar-minus-o:before {\n  content: "\\f272";\n}\n.fa-calendar-times-o:before {\n  content: "\\f273";\n}\n.fa-calendar-check-o:before {\n  content: "\\f274";\n}\n.fa-industry:before {\n  content: "\\f275";\n}\n.fa-map-pin:before {\n  content: "\\f276";\n}\n.fa-map-signs:before {\n  content: "\\f277";\n}\n.fa-map-o:before {\n  content: "\\f278";\n}\n.fa-map:before {\n  content: "\\f279";\n}\n.fa-commenting:before {\n  content: "\\f27a";\n}\n.fa-commenting-o:before {\n  content: "\\f27b";\n}\n.fa-houzz:before {\n  content: "\\f27c";\n}\n.fa-vimeo:before {\n  content: "\\f27d";\n}\n.fa-black-tie:before {\n  content: "\\f27e";\n}\n.fa-fonticons:before {\n  content: "\\f280";\n}\n.fa-reddit-alien:before {\n  content: "\\f281";\n}\n.fa-edge:before {\n  content: "\\f282";\n}\n.fa-credit-card-alt:before {\n  content: "\\f283";\n}\n.fa-codiepie:before {\n  content: "\\f284";\n}\n.fa-modx:before {\n  content: "\\f285";\n}\n.fa-fort-awesome:before {\n  content: "\\f286";\n}\n.fa-usb:before {\n  content: "\\f287";\n}\n.fa-product-hunt:before {\n  content: "\\f288";\n}\n.fa-mixcloud:before {\n  content: "\\f289";\n}\n.fa-scribd:before {\n  content: "\\f28a";\n}\n.fa-pause-circle:before {\n  content: "\\f28b";\n}\n.fa-pause-circle-o:before {\n  content: "\\f28c";\n}\n.fa-stop-circle:before {\n  content: "\\f28d";\n}\n.fa-stop-circle-o:before {\n  content: "\\f28e";\n}\n.fa-shopping-bag:before {\n  content: "\\f290";\n}\n.fa-shopping-basket:before {\n  content: "\\f291";\n}\n.fa-hashtag:before {\n  content: "\\f292";\n}\n.fa-bluetooth:before {\n  content: "\\f293";\n}\n.fa-bluetooth-b:before {\n  content: "\\f294";\n}\n.fa-percent:before {\n  content: "\\f295";\n}\n.fa-gitlab:before {\n  content: "\\f296";\n}\n.fa-wpbeginner:before {\n  content: "\\f297";\n}\n.fa-wpforms:before {\n  content: "\\f298";\n}\n.fa-envira:before {\n  content: "\\f299";\n}\n.fa-universal-access:before {\n  content: "\\f29a";\n}\n.fa-wheelchair-alt:before {\n  content: "\\f29b";\n}\n.fa-question-circle-o:before {\n  content: "\\f29c";\n}\n.fa-blind:before {\n  content: "\\f29d";\n}\n.fa-audio-description:before {\n  content: "\\f29e";\n}\n.fa-volume-control-phone:before {\n  content: "\\f2a0";\n}\n.fa-braille:before {\n  content: "\\f2a1";\n}\n.fa-assistive-listening-systems:before {\n  content: "\\f2a2";\n}\n.fa-asl-interpreting:before,\n.fa-american-sign-language-interpreting:before {\n  content: "\\f2a3";\n}\n.fa-deafness:before,\n.fa-hard-of-hearing:before,\n.fa-deaf:before {\n  content: "\\f2a4";\n}\n.fa-glide:before {\n  content: "\\f2a5";\n}\n.fa-glide-g:before {\n  content: "\\f2a6";\n}\n.fa-signing:before,\n.fa-sign-language:before {\n  content: "\\f2a7";\n}\n.fa-low-vision:before {\n  content: "\\f2a8";\n}\n.fa-viadeo:before {\n  content: "\\f2a9";\n}\n.fa-viadeo-square:before {\n  content: "\\f2aa";\n}\n.fa-snapchat:before {\n  content: "\\f2ab";\n}\n.fa-snapchat-ghost:before {\n  content: "\\f2ac";\n}\n.fa-snapchat-square:before {\n  content: "\\f2ad";\n}\n.fa-pied-piper:before {\n  content: "\\f2ae";\n}\n.fa-first-order:before {\n  content: "\\f2b0";\n}\n.fa-yoast:before {\n  content: "\\f2b1";\n}\n.fa-themeisle:before {\n  content: "\\f2b2";\n}\n.fa-google-plus-circle:before,\n.fa-google-plus-official:before {\n  content: "\\f2b3";\n}\n.fa-fa:before,\n.fa-font-awesome:before {\n  content: "\\f2b4";\n}\n.sr-only {\n  position: absolute;\n  width: 1px;\n  height: 1px;\n  padding: 0;\n  margin: -1px;\n  overflow: hidden;\n  clip: rect(0, 0, 0, 0);\n  border: 0;\n}\n.sr-only-focusable:active,\n.sr-only-focusable:focus {\n  position: static;\n  width: auto;\n  height: auto;\n  margin: 0;\n  overflow: visible;\n  clip: auto;\n}\n";}', 'no'),
(153, 'category_children', 'a:0:{}', 'yes'),
(155, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(156, '_transient_is_multi_author', '0', 'yes'),
(157, '_transient_vnit_categories', '1', 'yes'),
(158, 'widget_rev-slider-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=76 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_wp_attached_file', '2016/07/logo.png'),
(3, 4, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:230;s:6:"height";i:65;s:4:"file";s:16:"2016/07/logo.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"logo-150x65.png";s:5:"width";i:150;s:6:"height";i:65;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(4, 5, '_wp_attached_file', '2016/07/cropped-logo.png'),
(5, 5, '_wp_attachment_context', 'custom-logo'),
(6, 5, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:240;s:6:"height";i:67;s:4:"file";s:24:"2016/07/cropped-logo.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"cropped-logo-150x67.png";s:5:"width";i:150;s:6:"height";i:67;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(7, 6, '_edit_last', '1'),
(8, 6, '_edit_lock', '1469504582:1'),
(9, 8, '_menu_item_type', 'post_type'),
(10, 8, '_menu_item_menu_item_parent', '0'),
(11, 8, '_menu_item_object_id', '6'),
(12, 8, '_menu_item_object', 'page'),
(13, 8, '_menu_item_target', ''),
(14, 8, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(15, 8, '_menu_item_xfn', ''),
(16, 8, '_menu_item_url', ''),
(18, 9, '_menu_item_type', 'custom'),
(19, 9, '_menu_item_menu_item_parent', '0'),
(20, 9, '_menu_item_object_id', '9'),
(21, 9, '_menu_item_object', 'custom'),
(22, 9, '_menu_item_target', ''),
(23, 9, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(24, 9, '_menu_item_xfn', ''),
(25, 9, '_menu_item_url', 'http://localhost/vnit/'),
(27, 10, '_menu_item_type', 'taxonomy'),
(28, 10, '_menu_item_menu_item_parent', '0'),
(29, 10, '_menu_item_object_id', '5'),
(30, 10, '_menu_item_object', 'category'),
(31, 10, '_menu_item_target', ''),
(32, 10, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(33, 10, '_menu_item_xfn', ''),
(34, 10, '_menu_item_url', ''),
(36, 11, '_menu_item_type', 'taxonomy'),
(37, 11, '_menu_item_menu_item_parent', '0'),
(38, 11, '_menu_item_object_id', '4'),
(39, 11, '_menu_item_object', 'category'),
(40, 11, '_menu_item_target', ''),
(41, 11, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(42, 11, '_menu_item_xfn', ''),
(43, 11, '_menu_item_url', ''),
(45, 12, '_menu_item_type', 'taxonomy'),
(46, 12, '_menu_item_menu_item_parent', '0'),
(47, 12, '_menu_item_object_id', '2'),
(48, 12, '_menu_item_object', 'category'),
(49, 12, '_menu_item_target', ''),
(50, 12, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(51, 12, '_menu_item_xfn', ''),
(52, 12, '_menu_item_url', ''),
(54, 13, '_menu_item_type', 'taxonomy'),
(55, 13, '_menu_item_menu_item_parent', '0'),
(56, 13, '_menu_item_object_id', '6'),
(57, 13, '_menu_item_object', 'category'),
(58, 13, '_menu_item_target', ''),
(59, 13, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(60, 13, '_menu_item_xfn', ''),
(61, 13, '_menu_item_url', ''),
(63, 14, '_menu_item_type', 'taxonomy'),
(64, 14, '_menu_item_menu_item_parent', '0'),
(65, 14, '_menu_item_object_id', '3'),
(66, 14, '_menu_item_object', 'category'),
(67, 14, '_menu_item_target', ''),
(68, 14, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(69, 14, '_menu_item_xfn', ''),
(70, 14, '_menu_item_url', ''),
(72, 15, '_wp_attached_file', '2016/07/bg2.jpg'),
(73, 15, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:700;s:4:"file";s:15:"2016/07/bg2.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"bg2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"bg2-300x131.jpg";s:5:"width";i:300;s:6:"height";i:131;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:15:"bg2-768x336.jpg";s:5:"width";i:768;s:6:"height";i:336;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:16:"bg2-1024x448.jpg";s:5:"width";i:1024;s:6:"height";i:448;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:16:"bg2-1200x525.jpg";s:5:"width";i:1200;s:6:"height";i:525;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(74, 16, '_wp_attached_file', '2016/07/bg31.jpg'),
(75, 16, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:700;s:4:"file";s:16:"2016/07/bg31.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"bg31-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"bg31-300x131.jpg";s:5:"width";i:300;s:6:"height";i:131;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:16:"bg31-768x336.jpg";s:5:"width";i:768;s:6:"height";i:336;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"bg31-1024x448.jpg";s:5:"width";i:1024;s:6:"height";i:448;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:17:"bg31-1200x525.jpg";s:5:"width";i:1200;s:6:"height";i:525;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-07-26 01:43:58', '2016-07-26 01:43:58', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2016-07-26 01:43:58', '2016-07-26 01:43:58', '', 0, 'http://localhost/vnit/?p=1', 0, 'post', '', 1),
(2, 1, '2016-07-26 01:43:58', '2016-07-26 01:43:58', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/vnit/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2016-07-26 01:43:58', '2016-07-26 01:43:58', '', 0, 'http://localhost/vnit/?page_id=2', 0, 'page', '', 0),
(3, 1, '2016-07-26 01:44:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-07-26 01:44:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/vnit/?p=3', 0, 'post', '', 0),
(4, 1, '2016-07-26 03:21:44', '2016-07-26 03:21:44', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2016-07-26 03:21:44', '2016-07-26 03:21:44', '', 0, 'http://localhost/vnit/wp-content/uploads/2016/07/logo.png', 0, 'attachment', 'image/png', 0),
(5, 1, '2016-07-26 03:21:52', '2016-07-26 03:21:52', 'http://localhost/vnit/wp-content/uploads/2016/07/cropped-logo.png', 'cropped-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-png', '', '', '2016-07-26 03:21:52', '2016-07-26 03:21:52', '', 0, 'http://localhost/vnit/wp-content/uploads/2016/07/cropped-logo.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2016-07-26 03:45:21', '2016-07-26 03:45:21', '', 'Giới thiệu', '', 'publish', 'closed', 'closed', '', 'gioi-thieu', '', '', '2016-07-26 03:45:21', '2016-07-26 03:45:21', '', 0, 'http://localhost/vnit/?page_id=6', 0, 'page', '', 0),
(7, 1, '2016-07-26 03:45:21', '2016-07-26 03:45:21', '', 'Giới thiệu', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2016-07-26 03:45:21', '2016-07-26 03:45:21', '', 6, 'http://localhost/vnit/2016/07/26/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2016-07-26 03:46:08', '2016-07-26 03:46:08', ' ', '', '', 'publish', 'closed', 'closed', '', '8', '', '', '2016-07-26 03:46:08', '2016-07-26 03:46:08', '', 0, 'http://localhost/vnit/?p=8', 2, 'nav_menu_item', '', 0),
(9, 1, '2016-07-26 03:46:08', '2016-07-26 03:46:08', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2016-07-26 03:46:08', '2016-07-26 03:46:08', '', 0, 'http://localhost/vnit/?p=9', 1, 'nav_menu_item', '', 0),
(10, 1, '2016-07-26 03:46:09', '2016-07-26 03:46:09', ' ', '', '', 'publish', 'closed', 'closed', '', '10', '', '', '2016-07-26 03:46:09', '2016-07-26 03:46:09', '', 0, 'http://localhost/vnit/?p=10', 5, 'nav_menu_item', '', 0),
(11, 1, '2016-07-26 03:46:09', '2016-07-26 03:46:09', ' ', '', '', 'publish', 'closed', 'closed', '', '11', '', '', '2016-07-26 03:46:09', '2016-07-26 03:46:09', '', 0, 'http://localhost/vnit/?p=11', 6, 'nav_menu_item', '', 0),
(12, 1, '2016-07-26 03:46:08', '2016-07-26 03:46:08', ' ', '', '', 'publish', 'closed', 'closed', '', '12', '', '', '2016-07-26 03:46:08', '2016-07-26 03:46:08', '', 0, 'http://localhost/vnit/?p=12', 3, 'nav_menu_item', '', 0),
(13, 1, '2016-07-26 03:46:09', '2016-07-26 03:46:09', ' ', '', '', 'publish', 'closed', 'closed', '', '13', '', '', '2016-07-26 03:46:09', '2016-07-26 03:46:09', '', 0, 'http://localhost/vnit/?p=13', 7, 'nav_menu_item', '', 0),
(14, 1, '2016-07-26 03:46:08', '2016-07-26 03:46:08', ' ', '', '', 'publish', 'closed', 'closed', '', '14', '', '', '2016-07-26 03:46:08', '2016-07-26 03:46:08', '', 0, 'http://localhost/vnit/?p=14', 4, 'nav_menu_item', '', 0),
(15, 1, '2016-07-26 08:03:26', '2016-07-26 08:03:26', '', 'bg2', '', 'inherit', 'open', 'closed', '', 'bg2', '', '', '2016-07-26 08:03:26', '2016-07-26 08:03:26', '', 0, 'http://localhost/vnit/wp-content/uploads/2016/07/bg2.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2016-07-26 08:03:37', '2016-07-26 08:03:37', '', 'bg31', '', 'inherit', 'open', 'closed', '', 'bg31', '', '', '2016-07-26 08:03:37', '2016-07-26 08:03:37', '', 0, 'http://localhost/vnit/wp-content/uploads/2016/07/bg31.jpg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_revslider_css`
--

CREATE TABLE IF NOT EXISTS `wp_revslider_css` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `handle` text NOT NULL,
  `settings` text,
  `hover` text,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `wp_revslider_css`
--

INSERT INTO `wp_revslider_css` (`id`, `handle`, `settings`, `hover`, `params`) VALUES
(1, '.tp-caption.medium_grey', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"20px","line-height":"20px","font-family":"Arial","padding":"2px 4px","margin":"0px","border-width":"0px","border-style":"none","background-color":"#888","white-space":"nowrap"}'),
(2, '.tp-caption.small_text', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"14px","line-height":"20px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(3, '.tp-caption.medium_text', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"20px","line-height":"20px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(4, '.tp-caption.large_text', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"40px","line-height":"40px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(5, '.tp-caption.very_large_text', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"60px","line-height":"60px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap","letter-spacing":"-2px"}'),
(6, '.tp-caption.very_big_white', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"800","font-size":"60px","line-height":"60px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap","padding":"0px 4px","padding-top":"1px","background-color":"#000"}'),
(7, '.tp-caption.very_big_black', NULL, NULL, '{"position":"absolute","color":"#000","text-shadow":"none","font-weight":"700","font-size":"60px","line-height":"60px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap","padding":"0px 4px","padding-top":"1px","background-color":"#fff"}'),
(8, '.tp-caption.modern_medium_fat', NULL, NULL, '{"position":"absolute","color":"#000","text-shadow":"none","font-weight":"800","font-size":"24px","line-height":"20px","font-family":"\\"Open Sans\\", sans-serif","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(9, '.tp-caption.modern_medium_fat_white', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"800","font-size":"24px","line-height":"20px","font-family":"\\"Open Sans\\", sans-serif","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(10, '.tp-caption.modern_medium_light', NULL, NULL, '{"position":"absolute","color":"#000","text-shadow":"none","font-weight":"300","font-size":"24px","line-height":"20px","font-family":"\\"Open Sans\\", sans-serif","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(11, '.tp-caption.modern_big_bluebg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"800","font-size":"30px","line-height":"36px","font-family":"\\"Open Sans\\", sans-serif","padding":"3px 10px","margin":"0px","border-width":"0px","border-style":"none","background-color":"#4e5b6c","letter-spacing":"0"}'),
(12, '.tp-caption.modern_big_redbg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"300","font-size":"30px","line-height":"36px","font-family":"\\"Open Sans\\", sans-serif","padding":"3px 10px","padding-top":"1px","margin":"0px","border-width":"0px","border-style":"none","background-color":"#de543e","letter-spacing":"0"}'),
(13, '.tp-caption.modern_small_text_dark', NULL, NULL, '{"position":"absolute","color":"#555","text-shadow":"none","font-size":"14px","line-height":"22px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(14, '.tp-caption.boxshadow', NULL, NULL, '{"-moz-box-shadow":"0px 0px 20px rgba(0, 0, 0, 0.5)","-webkit-box-shadow":"0px 0px 20px rgba(0, 0, 0, 0.5)","box-shadow":"0px 0px 20px rgba(0, 0, 0, 0.5)"}'),
(15, '.tp-caption.black', NULL, NULL, '{"color":"#000","text-shadow":"none"}'),
(16, '.tp-caption.noshadow', NULL, NULL, '{"text-shadow":"none"}'),
(17, '.tp-caption.thinheadline_dark', NULL, NULL, '{"position":"absolute","color":"rgba(0,0,0,0.85)","text-shadow":"none","font-weight":"300","font-size":"30px","line-height":"30px","font-family":"\\"Open Sans\\"","background-color":"transparent"}'),
(18, '.tp-caption.thintext_dark', NULL, NULL, '{"position":"absolute","color":"rgba(0,0,0,0.85)","text-shadow":"none","font-weight":"300","font-size":"16px","line-height":"26px","font-family":"\\"Open Sans\\"","background-color":"transparent"}'),
(19, '.tp-caption.largeblackbg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#000","padding":"0px 20px","-webkit-border-radius":"0px","-moz-border-radius":"0px","border-radius":"0px"}'),
(20, '.tp-caption.largepinkbg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#db4360","padding":"0px 20px","-webkit-border-radius":"0px","-moz-border-radius":"0px","border-radius":"0px"}'),
(21, '.tp-caption.largewhitebg', NULL, NULL, '{"position":"absolute","color":"#000","text-shadow":"none","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#fff","padding":"0px 20px","-webkit-border-radius":"0px","-moz-border-radius":"0px","border-radius":"0px"}'),
(22, '.tp-caption.largegreenbg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#67ae73","padding":"0px 20px","-webkit-border-radius":"0px","-moz-border-radius":"0px","border-radius":"0px"}'),
(23, '.tp-caption.excerpt', NULL, NULL, '{"font-size":"36px","line-height":"36px","font-weight":"700","font-family":"Arial","color":"#ffffff","text-decoration":"none","background-color":"rgba(0, 0, 0, 1)","text-shadow":"none","margin":"0px","letter-spacing":"-1.5px","padding":"1px 4px 0px 4px","width":"150px","white-space":"normal !important","height":"auto","border-width":"0px","border-color":"rgb(255, 255, 255)","border-style":"none"}'),
(24, '.tp-caption.large_bold_grey', NULL, NULL, '{"font-size":"60px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(102, 102, 102)","text-decoration":"none","background-color":"transparent","text-shadow":"none","margin":"0px","padding":"1px 4px 0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(25, '.tp-caption.medium_thin_grey', NULL, NULL, '{"font-size":"34px","line-height":"30px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(102, 102, 102)","text-decoration":"none","background-color":"transparent","padding":"1px 4px 0px","text-shadow":"none","margin":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(26, '.tp-caption.small_thin_grey', NULL, NULL, '{"font-size":"18px","line-height":"26px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(117, 117, 117)","text-decoration":"none","background-color":"transparent","padding":"1px 4px 0px","text-shadow":"none","margin":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(27, '.tp-caption.lightgrey_divider', NULL, NULL, '{"text-decoration":"none","background-color":"rgba(235, 235, 235, 1)","width":"370px","height":"3px","background-position":"initial initial","background-repeat":"initial initial","border-width":"0px","border-color":"rgb(34, 34, 34)","border-style":"none"}'),
(28, '.tp-caption.large_bold_darkblue', NULL, NULL, '{"font-size":"58px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(52, 73, 94)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(29, '.tp-caption.medium_bg_darkblue', NULL, NULL, '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(52, 73, 94)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(30, '.tp-caption.medium_bold_red', NULL, NULL, '{"font-size":"24px","line-height":"30px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(227, 58, 12)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(31, '.tp-caption.medium_light_red', NULL, NULL, '{"font-size":"21px","line-height":"26px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(227, 58, 12)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(32, '.tp-caption.medium_bg_red', NULL, NULL, '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(227, 58, 12)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(33, '.tp-caption.medium_bold_orange', NULL, NULL, '{"font-size":"24px","line-height":"30px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(243, 156, 18)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(34, '.tp-caption.medium_bg_orange', NULL, NULL, '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(243, 156, 18)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(35, '.tp-caption.grassfloor', NULL, NULL, '{"text-decoration":"none","background-color":"rgba(160, 179, 151, 1)","width":"4000px","height":"150px","border-width":"0px","border-color":"rgb(34, 34, 34)","border-style":"none"}'),
(36, '.tp-caption.large_bold_white', NULL, NULL, '{"font-size":"58px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(37, '.tp-caption.medium_light_white', NULL, NULL, '{"font-size":"30px","line-height":"36px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(38, '.tp-caption.mediumlarge_light_white', NULL, NULL, '{"font-size":"34px","line-height":"40px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(39, '.tp-caption.mediumlarge_light_white_center', NULL, NULL, '{"font-size":"34px","line-height":"40px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"#ffffff","text-decoration":"none","background-color":"transparent","padding":"0px 0px 0px 0px","text-align":"center","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(40, '.tp-caption.medium_bg_asbestos', NULL, NULL, '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(127, 140, 141)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(41, '.tp-caption.medium_light_black', NULL, NULL, '{"font-size":"30px","line-height":"36px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(0, 0, 0)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(42, '.tp-caption.large_bold_black', NULL, NULL, '{"font-size":"58px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(0, 0, 0)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(43, '.tp-caption.mediumlarge_light_darkblue', NULL, NULL, '{"font-size":"34px","line-height":"40px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(52, 73, 94)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(44, '.tp-caption.small_light_white', NULL, NULL, '{"font-size":"17px","line-height":"28px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(45, '.tp-caption.roundedimage', NULL, NULL, '{"border-width":"0px","border-color":"rgb(34, 34, 34)","border-style":"none"}'),
(46, '.tp-caption.large_bg_black', NULL, NULL, '{"font-size":"40px","line-height":"40px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(0, 0, 0)","padding":"10px 20px 15px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(47, '.tp-caption.mediumwhitebg', NULL, NULL, '{"font-size":"30px","line-height":"30px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(0, 0, 0)","text-decoration":"none","background-color":"rgb(255, 255, 255)","padding":"5px 15px 10px","text-shadow":"none","border-width":"0px","border-color":"rgb(0, 0, 0)","border-style":"none"}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_revslider_layer_animations`
--

CREATE TABLE IF NOT EXISTS `wp_revslider_layer_animations` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `handle` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_revslider_layer_animations`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_revslider_settings`
--

CREATE TABLE IF NOT EXISTS `wp_revslider_settings` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `general` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_revslider_settings`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_revslider_sliders`
--

CREATE TABLE IF NOT EXISTS `wp_revslider_sliders` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `title` tinytext NOT NULL,
  `alias` tinytext,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_revslider_sliders`
--

INSERT INTO `wp_revslider_sliders` (`id`, `title`, `alias`, `params`) VALUES
(1, 'vnitSlider1', 'vnit', '{"title":"vnitSlider1","alias":"vnit","shortcode":"[rev_slider vnit]","source_type":"gallery","post_types":"post","post_category":"category_1","post_sortby":"ID","posts_sort_direction":"DESC","max_slider_posts":"30","excerpt_limit":"55","slider_template_id":"","posts_list":"","slider_type":"fullwidth","fullscreen_offset_container":"","fullscreen_min_height":"","full_screen_align_force":"off","auto_height":"off","force_full_width":"on","width":"960","height":"400","responsitive_w1":"940","responsitive_sw1":"770","responsitive_w2":"780","responsitive_sw2":"500","responsitive_w3":"510","responsitive_sw3":"310","responsitive_w4":"0","responsitive_sw4":"0","responsitive_w5":"0","responsitive_sw5":"0","responsitive_w6":"0","responsitive_sw6":"0","delay":"9000","shuffle":"off","lazy_load":"off","use_wpml":"off","stop_slider":"off","stop_after_loops":0,"stop_at_slide":2,"load_googlefont":"false","google_font":["<link href=\\\\''http:\\/\\/fonts.googleapis.com\\/css?family=PT+Sans+Narrow:400,700\\\\'' rel=\\\\''stylesheet\\\\'' type=\\\\''text\\/css\\\\''>"],"position":"center","margin_top":0,"margin_bottom":0,"margin_left":0,"margin_right":0,"shadow_type":"0","show_timerbar":"top","padding":0,"background_color":"#E9E9E9","background_dotted_overlay":"none","show_background_image":"false","background_image":"","bg_fit":"cover","bg_repeat":"no-repeat","bg_position":"center top","touchenabled":"on","stop_on_hover":"on","navigaion_type":"bullet","navigation_arrows":"solo","navigation_style":"round","navigaion_always_on":"false","hide_thumbs":200,"navigaion_align_hor":"center","navigaion_align_vert":"bottom","navigaion_offset_hor":"0","navigaion_offset_vert":20,"leftarrow_align_hor":"left","leftarrow_align_vert":"center","leftarrow_offset_hor":20,"leftarrow_offset_vert":0,"rightarrow_align_hor":"right","rightarrow_align_vert":"center","rightarrow_offset_hor":20,"rightarrow_offset_vert":0,"thumb_width":100,"thumb_height":50,"thumb_amount":5,"hide_slider_under":0,"hide_defined_layers_under":0,"hide_all_layers_under":0,"hide_thumbs_under_resolution":0,"start_with_slide":"1","first_transition_type":"fade","first_transition_duration":300,"first_transition_slot_amount":7,"reset_transitions":"","reset_transition_duration":0,"0":"Execute settings on all slides","jquery_noconflict":"on","js_to_body":"false","output_type":"none","template":"false"}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_revslider_slides`
--

CREATE TABLE IF NOT EXISTS `wp_revslider_slides` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `slider_id` int(9) NOT NULL,
  `slide_order` int(11) NOT NULL,
  `params` text NOT NULL,
  `layers` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_revslider_slides`
--

INSERT INTO `wp_revslider_slides` (`id`, `slider_id`, `slide_order`, `params`, `layers`) VALUES
(1, 1, 1, '{"background_type":"image","image":"http:\\/\\/localhost\\/vnit\\/wp-content\\/uploads\\/2016\\/07\\/bg2.jpg","image_id":"15"}', ''),
(2, 1, 2, '{"background_type":"image","image":"http:\\/\\/localhost\\/vnit\\/wp-content\\/uploads\\/2016\\/07\\/bg31.jpg","image_id":"16"}', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_termmeta`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Dự án', 'du-an', 0),
(3, 'Tin tức', 'tin-tuc', 0),
(4, 'Dịch vụ', 'dich-vu', 0),
(5, 'Bảng giá hosting', 'bang-gia-hosting', 0),
(6, 'Liên hệ', 'lien-he', 0),
(7, 'main menu', 'main-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(8, 7, 0),
(9, 7, 0),
(10, 7, 0),
(11, 7, 0),
(12, 7, 0),
(13, 7, 0),
(14, 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'category', '', 0, 0),
(3, 3, 'category', '', 0, 0),
(4, 4, 'category', '', 0, 0),
(5, 5, 'category', '', 0, 0),
(6, 6, 'category', '', 0, 0),
(7, 7, 'nav_menu', '', 0, 7);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

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
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:1:{s:64:"3379564d7aa54eaa884f0e707e29956a9975bd0e66de243ec26c0729dea3ddec";a:4:{s:10:"expiration";i:1469670252;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36";s:5:"login";i:1469497452;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'wp_user-settings', 'libraryContent=browse'),
(17, 1, 'wp_user-settings-time', '1469503964'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(20, 1, 'nav_menu_recently_edited', '7');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B94vq7D5GeNM4mABkrsscZHWmMSryb1', 'admin', 'doanhieu230792@gmail.com', '', '2016-07-26 01:43:57', '', 0, 'admin');
