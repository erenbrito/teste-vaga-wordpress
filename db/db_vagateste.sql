-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 30/03/2022 às 18:23
-- Versão do servidor: 10.1.38-MariaDB
-- Versão do PHP: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_vagateste`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_comments`
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2022-03-28 14:59:32', '2022-03-28 17:59:32', 'Olá, isso é um comentário.\nPara começar a moderar, editar e excluir comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_links`
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
-- Estrutura para tabela `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/teste-vaga', 'yes'),
(2, 'home', 'http://localhost/teste-vaga', 'yes'),
(3, 'blogname', 'Reembolsos corporativos', 'yes'),
(4, 'blogdescription', 'Só mais um site WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'britousouza@gmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'teste-vaga', 'yes'),
(41, 'stylesheet', 'teste-vaga', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '51917', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', '', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '2', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1664042372', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '51917', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'pt_BR', 'yes'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:156:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Posts recentes</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:224:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Arquivos</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorias</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:6:{i:1648659573;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1648663173;a:5:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1648663196;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1648663198;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1649181573;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:25:\"Verificação SSL falhou.\";}}', 'yes'),
(132, '_site_transient_timeout_browser_988d7a8c53614fb951ba87aef4ed3ae4', '1649095197', 'no'),
(133, '_site_transient_browser_988d7a8c53614fb951ba87aef4ed3ae4', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"99.0.4844.83\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(134, '_site_transient_timeout_php_check_abb6d88a45d814554e5d096b10501bca', '1649095197', 'no'),
(135, '_site_transient_php_check_abb6d88a45d814554e5d096b10501bca', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:0;}', 'no'),
(139, 'can_compress_scripts', '1', 'no'),
(150, 'theme_mods_twentytwentytwo', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1648490406;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(151, 'current_theme', 'Vaga Teste Dev', 'yes'),
(152, 'theme_mods_confluentes', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1648490548;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(153, 'theme_switched', '', 'yes'),
(158, 'finished_updating_comment_type', '1', 'yes'),
(162, 'theme_mods_teste-vaga', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(167, 'recently_activated', 'a:0:{}', 'yes'),
(174, 'acf_version', '5.7.7', 'yes'),
(344, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(370, '_transient_timeout_acf_plugin_updates', '1648727480', 'no'),
(371, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"5.12.1\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.9.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.7.7\";}}', 'no'),
(506, '_transient_health-check-site-status-result', '{\"good\":12,\"recommended\":5,\"critical\":2}', 'yes'),
(817, '_site_transient_timeout_wp_remote_block_patterns_61ee39b2dc218de73b7fccf4294970f5', '1648608714', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(818, '_site_transient_wp_remote_block_patterns_61ee39b2dc218de73b7fccf4294970f5', 'a:13:{i:0;O:8:\"stdClass\":7:{s:2:\"id\";i:184;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:7:\"Heading\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:509:\"\n<h2 class=\"alignwide\" id=\"we-re-a-studio-in-berlin-with-an-international-practice-in-architecture-urban-planning-and-interior-design-we-believe-in-sharing-knowledge-and-promoting-dialogue-to-increase-the-creative-potential-of-collaboration\" style=\"font-size:48px;line-height:1.1\">We&#8217;re a studio in Berlin with an international practice in architecture, urban planning and interior design. We believe in sharing knowledge and promoting dialogue to increase the creative potential of collaboration.</h2>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:17:\"large text, title\";s:16:\"wpop_description\";s:12:\"Heading text\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:1:{i:0;s:12:\"core/heading\";}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:621:\"<!-- wp:heading {\"align\":\"wide\",\"style\":{\"typography\":{\"fontSize\":\"48px\",\"lineHeight\":\"1.1\"}}} -->\n<h2 class=\"alignwide\" id=\"we-re-a-studio-in-berlin-with-an-international-practice-in-architecture-urban-planning-and-interior-design-we-believe-in-sharing-knowledge-and-promoting-dialogue-to-increase-the-creative-potential-of-collaboration\" style=\"font-size:48px;line-height:1.1\">We\'re a studio in Berlin with an international practice in architecture, urban planning and interior design. We believe in sharing knowledge and promoting dialogue to increase the creative potential of collaboration.</h2>\n<!-- /wp:heading -->\";}i:1;O:8:\"stdClass\":7:{s:2:\"id\";i:185;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:35:\"Large header with left-aligned text\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1231:\"\n<div class=\"wp-block-cover alignfull has-background-dim-60 has-background-dim\" style=\"min-height:800px\"><img class=\"wp-block-cover__image-background\" alt=\"\" src=\"https://s.w.org/images/core/5.8/forest.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container\">\n<h2 class=\"alignwide has-text-color\" style=\"color:#ffe074;font-size:64px\">Forest.</h2>\n\n\n\n<div class=\"wp-container-6243b79a85f17 wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:55%\">\n<div style=\"height:330px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p class=\"has-text-color\" style=\"color:#ffe074;font-size:12px;line-height:1.3\"><em>Even a child knows how valuable the forest is. The fresh, breathtaking smell of trees. Echoing birds flying above that dense magnitude. A stable climate, a sustainable diverse life and a source of culture. Yet, forests and other ecosystems hang in the balance, threatened to become croplands, pasture, and plantations.</em></p>\n</div>\n\n\n\n<div class=\"wp-block-column\"></div>\n</div>\n<style>.wp-container-6243b79a85f17 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-6243b79a85f17 > * { margin: 0; }</style></div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:29:\"Cover image with quote on top\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1610:\"<!-- wp:cover {\"url\":\"https://s.w.org/images/core/5.8/forest.jpg\",\"dimRatio\":60,\"minHeight\":800,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-background-dim-60 has-background-dim\" style=\"min-height:800px\"><img class=\"wp-block-cover__image-background\" alt=\"\" src=\"https://s.w.org/images/core/5.8/forest.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container\"><!-- wp:heading {\"align\":\"wide\",\"style\":{\"color\":{\"text\":\"#ffe074\"},\"typography\":{\"fontSize\":\"64px\"}}} -->\n<h2 class=\"alignwide has-text-color\" style=\"color:#ffe074;font-size:64px\">Forest.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"55%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:55%\"><!-- wp:spacer {\"height\":330} -->\n<div style=\"height:330px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#ffe074\"},\"typography\":{\"lineHeight\":\"1.3\",\"fontSize\":\"12px\"}}} -->\n<p class=\"has-text-color\" style=\"color:#ffe074;font-size:12px;line-height:1.3\"><em>Even a child knows how valuable the forest is. The fresh, breathtaking smell of trees. Echoing birds flying above that dense magnitude. A stable climate, a sustainable diverse life and a source of culture. Yet, forests and other ecosystems hang in the balance, threatened to become croplands, pasture, and plantations.</em></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:cover -->\";}i:2;O:8:\"stdClass\":7:{s:2:\"id\";i:186;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:35:\"Large header with text and a button\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1477:\"\n<div class=\"wp-block-cover alignfull has-background-dim-40 has-background-dim has-parallax\" style=\"background-image:url(https://s.w.org/images/core/5.8/art-01.jpg);background-color:#000000;min-height:100vh\"><div class=\"wp-block-cover__inner-container\">\n<h2 class=\"alignwide has-white-color has-text-color\" style=\"font-size:48px;line-height:1.2\"><strong><em>Overseas:</em></strong><br><strong><em>1500 — 1960</em></strong></h2>\n\n\n\n<div class=\"wp-container-6243b79a874cf wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:60%\">\n<p class=\"has-text-color\" style=\"color:#ffffff\">An exhibition about the different representations of the ocean throughout time, between the sixteenth and the twentieth century. Taking place in our Open Room in <em>Floor 2</em>.</p>\n\n\n\n<div class=\"wp-container-6243b79a86f7f wp-block-buttons\">\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link has-text-color has-background no-border-radius\" style=\"background-color:#000000;color:#ffffff\">Visit</a></div>\n</div>\n<style>.wp-container-6243b79a86f7f {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: wrap;align-items: center;}.wp-container-6243b79a86f7f > * { margin: 0; }</style></div>\n\n\n\n<div class=\"wp-block-column\"></div>\n</div>\n<style>.wp-container-6243b79a874cf {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-6243b79a874cf > * { margin: 0; }</style></div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:62:\"Large header with background image and text and button on top.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1865:\"<!-- wp:cover {\"url\":\"https://s.w.org/images/core/5.8/art-01.jpg\",\"hasParallax\":true,\"dimRatio\":40,\"customOverlayColor\":\"#000000\",\"minHeight\":100,\"minHeightUnit\":\"vh\",\"contentPosition\":\"center center\",\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-background-dim-40 has-background-dim has-parallax\" style=\"background-image:url(https://s.w.org/images/core/5.8/art-01.jpg);background-color:#000000;min-height:100vh\"><div class=\"wp-block-cover__inner-container\"><!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"48px\",\"lineHeight\":\"1.2\"}},\"className\":\"alignwide has-white-color has-text-color\"} -->\n<h2 class=\"alignwide has-white-color has-text-color\" style=\"font-size:48px;line-height:1.2\"><strong><em>Overseas:</em></strong><br><strong><em>1500 — 1960</em></strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"60%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:60%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#ffffff\"}}} -->\n<p class=\"has-text-color\" style=\"color:#ffffff\">An exhibition about the different representations of the ocean throughout time, between the sixteenth and the twentieth century. Taking place in our Open Room in <em>Floor 2</em>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"borderRadius\":0,\"style\":{\"color\":{\"text\":\"#ffffff\",\"background\":\"#000000\"}},\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link has-text-color has-background no-border-radius\" style=\"background-color:#000000;color:#ffffff\">Visit</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:cover -->\";}i:3;O:8:\"stdClass\":7:{s:2:\"id\";i:196;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:41:\"Media and text in a full height container\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1404:\"\n<div class=\"wp-block-cover alignfull has-background-dim\" style=\"background-color:#ffffff;min-height:100vh\"><div class=\"wp-block-cover__inner-container\">\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile is-vertically-aligned-center is-image-fill\" style=\"grid-template-columns:56% auto\"><figure class=\"wp-block-media-text__media\" style=\"background-image:url(https://s.w.org/images/core/5.8/soil.jpg);background-position:50% 50%\"><img src=\"https://s.w.org/images/core/5.8/soil.jpg\" alt=\"Close-up of dried, cracked earth.\" /></figure><div class=\"wp-block-media-text__content\">\n<h2 class=\"has-text-color\" style=\"color:#000000;font-size:32px\"><strong>What&#8217;s the problem?</strong></h2>\n\n\n\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\">Trees are more important today than ever before. More than 10,000 products are reportedly made from trees. Through chemistry, the humble woodpile is yielding chemicals, plastics and fabrics that were beyond comprehension when an axe first felled a Texas tree.</p>\n\n\n\n<div class=\"wp-container-6243b79a88583 wp-block-buttons\">\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link\">Learn more</a></div>\n</div>\n<style>.wp-container-6243b79a88583 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: wrap;align-items: center;}.wp-container-6243b79a88583 > * { margin: 0; }</style></div></div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:77:\"Media and text block with image to the left and text and button to the right.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1858:\"<!-- wp:cover {\"customOverlayColor\":\"#ffffff\",\"minHeight\":100,\"minHeightUnit\":\"vh\",\"contentPosition\":\"center center\",\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-background-dim\" style=\"background-color:#ffffff;min-height:100vh\"><div class=\"wp-block-cover__inner-container\"><!-- wp:media-text {\"mediaLink\":\"https://s.w.org/images/core/5.8/soil.jpg\",\"mediaType\":\"image\",\"mediaWidth\":56,\"verticalAlignment\":\"center\",\"imageFill\":true} -->\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile is-vertically-aligned-center is-image-fill\" style=\"grid-template-columns:56% auto\"><figure class=\"wp-block-media-text__media\" style=\"background-image:url(https://s.w.org/images/core/5.8/soil.jpg);background-position:50% 50%\"><img src=\"https://s.w.org/images/core/5.8/soil.jpg\" alt=\"Close-up of dried, cracked earth.\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"32px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<h2 class=\"has-text-color\" style=\"color:#000000;font-size:32px\"><strong>What\'s the problem?</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"17px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\">Trees are more important today than ever before. More than 10,000 products are reportedly made from trees. Through chemistry, the humble woodpile is yielding chemicals, plastics and fabrics that were beyond comprehension when an axe first felled a Texas tree.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link\">Learn more</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div></div>\n<!-- /wp:media-text --></div></div>\n<!-- /wp:cover -->\";}i:4;O:8:\"stdClass\":7:{s:2:\"id\";i:192;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:37:\"Media and text with image on the left\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:520:\"\n<div class=\"wp-block-media-text alignfull is-stacked-on-mobile is-vertically-aligned-center\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/architecture-04.jpg\" alt=\"Close-up, abstract view of architecture.\" /></figure><div class=\"wp-block-media-text__content\">\n<h3 class=\"has-text-align-center has-text-color\" style=\"color:#000000\"><strong>Open Spaces</strong></h3>\n\n\n\n<p class=\"has-text-align-center has-extra-small-font-size\"><a href=\"#\">See case study ↗</a></p>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:66:\"Media and text block with image to the left and text to the right.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:827:\"<!-- wp:media-text {\"align\":\"full\",\"mediaType\":\"image\",\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-media-text alignfull is-stacked-on-mobile is-vertically-aligned-center\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/architecture-04.jpg\" alt=\"Close-up, abstract view of architecture.\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"textAlign\":\"center\",\"level\":3,\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h3 class=\"has-text-align-center has-text-color\" style=\"color:#000000\"><strong>Open Spaces</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-align-center has-extra-small-font-size\"><a href=\"#\">See case study ↗</a></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\";}i:5;O:8:\"stdClass\":7:{s:2:\"id\";i:195;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:38:\"Media and text with image on the right\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:685:\"\n<div class=\"wp-block-media-text alignfull has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-center is-style-default\" style=\"grid-template-columns:auto 56%\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/art-02.jpg\" alt=\"A green and brown rural landscape leading into a bright blue ocean and slightly cloudy sky, done in oil paints.\" /></figure><div class=\"wp-block-media-text__content\">\n<h2 class=\"has-text-color\" style=\"color:#000000\"><strong>Shore with Blue Sea</strong></h2>\n\n\n\n<p class=\"has-text-color\" style=\"color:#636363;font-size:17px;line-height:1.1\">Eleanor Harris&nbsp;(American, 1901-1942)</p>\n</div></div>\n\n\n\n<p></p>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:66:\"Media and text block with image to the right and text to the left.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1138:\"<!-- wp:media-text {\"align\":\"full\",\"mediaPosition\":\"right\",\"mediaLink\":\"#\",\"mediaType\":\"image\",\"mediaWidth\":56,\"verticalAlignment\":\"center\",\"className\":\"is-style-default\"} -->\n<div class=\"wp-block-media-text alignfull has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-center is-style-default\" style=\"grid-template-columns:auto 56%\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/art-02.jpg\" alt=\"A green and brown rural landscape leading into a bright blue ocean and slightly cloudy sky, done in oil paints.\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h2 class=\"has-text-color\" style=\"color:#000000\"><strong>Shore with Blue Sea</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":\"17px\"},\"color\":{\"text\":\"#636363\"}}} -->\n<p class=\"has-text-color\" style=\"color:#636363;font-size:17px;line-height:1.1\">Eleanor Harris&nbsp;(American, 1901-1942)</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\";}i:6;O:8:\"stdClass\":7:{s:2:\"id\";i:27;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:5:\"Quote\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:656:\"\n<hr class=\"wp-block-separator is-style-default\" />\n\n\n\n<div class=\"wp-block-image is-style-rounded\"><figure class=\"aligncenter size-large is-resized\"><img loading=\"lazy\" src=\"https://s.w.org/images/core/5.8/portrait.jpg\" alt=\"A side profile of a woman in a russet-colored turtleneck and white bag. She looks up with her eyes closed.\" width=\"150\" height=\"150\" /></figure></div>\n\n\n\n<blockquote class=\"wp-block-quote has-text-align-center is-style-large\"><p>&#8220;Contributing makes me feel like I&#8217;m being useful to the planet.&#8221;</p><cite>— Anna Wong, <em>Volunteer</em></cite></blockquote>\n\n\n\n<hr class=\"wp-block-separator is-style-default\" />\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:0:\"\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:1:{i:0;s:10:\"core/quote\";}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:1:{i:0;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1012:\"<!-- wp:separator {\"className\":\"is-style-default\"} -->\n<hr class=\"wp-block-separator is-style-default\" />\n<!-- /wp:separator -->\n\n<!-- wp:image {\"align\":\"center\",\"width\":150,\"height\":150,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} -->\n<div class=\"wp-block-image is-style-rounded\"><figure class=\"aligncenter size-large is-resized\"><img src=\"https://s.w.org/images/core/5.8/portrait.jpg\" alt=\"A side profile of a woman in a russet-colored turtleneck and white bag. She looks up with her eyes closed.\" width=\"150\" height=\"150\" /></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:quote {\"align\":\"center\",\"className\":\"is-style-large\"} -->\n<blockquote class=\"wp-block-quote has-text-align-center is-style-large\"><p>\"Contributing makes me feel like I\'m being useful to the planet.\"</p><cite>— Anna Wong, <em>Volunteer</em></cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:separator {\"className\":\"is-style-default\"} -->\n<hr class=\"wp-block-separator is-style-default\" />\n<!-- /wp:separator -->\";}i:7;O:8:\"stdClass\":7:{s:2:\"id\";i:200;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:21:\"Three columns of text\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1013:\"\n<div class=\"wp-container-6243b79a8b51b wp-block-columns alignfull has-text-color has-background\" style=\"background-color:#ffffff;color:#000000\">\n<div class=\"wp-block-column\">\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"http://wordpress.org\">Virtual Tour ↗</a></strong></h3>\n\n\n\n<p>Get a virtual tour of the museum. Ideal for schools and events.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Current Shows ↗</a></strong></h3>\n\n\n\n<p>Stay updated and see our current exhibitions here.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Useful Info ↗</a></strong></h3>\n\n\n\n<p>Get to know our opening times, ticket prices and discounts.</p>\n</div>\n</div>\n<style>.wp-container-6243b79a8b51b {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-6243b79a8b51b > * { margin: 0; }</style>\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:22:\"Three columns of text.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:3:{i:0;s:7:\"columns\";i:1;s:8:\"featured\";i:2;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1496:\"<!-- wp:columns {\"align\":\"full\",\"style\":{\"color\":{\"text\":\"#000000\",\"background\":\"#ffffff\"}}} -->\n<div class=\"wp-block-columns alignfull has-text-color has-background\" style=\"background-color:#ffffff;color:#000000\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"http://wordpress.org\">Virtual Tour ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Get a virtual tour of the museum. Ideal for schools and events.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Current Shows ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Stay updated and see our current exhibitions here.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Useful Info ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Get to know our opening times, ticket prices and discounts.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:8;O:8:\"stdClass\":7:{s:2:\"id\";i:199;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:34:\"Three columns with images and text\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:3603:\"\n<div class=\"wp-container-6243b79a8cfaa wp-block-group alignfull has-background\" style=\"background-color:#f8f4e4\">\n<div class=\"wp-container-6243b79a8c5b0 wp-block-columns alignwide\">\n<div class=\"wp-block-column\">\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<h6 class=\"has-text-color\" id=\"ecosystem\" style=\"color:#000000\">ECOSYSTEM</h6>\n\n\n\n<p class=\"has-text-color\" style=\"color:#000000;font-size:5vw;line-height:1.1\"><strong>Positive growth.</strong></p>\n\n\n\n<div style=\"height:5px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n</div>\n<style>.wp-container-6243b79a8c5b0 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-6243b79a8c5b0 > * { margin: 0; }</style>\n\n\n<div class=\"wp-container-6243b79a8c959 wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:33.38%\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\"><em>Nature</em>, in the common sense, refers to essences unchanged by man; space, the air, the river, the leaf.&nbsp;<em>Art</em>&nbsp;is applied to the mixture of his will with the same things, as in a house, a canal, a statue, a picture. But his operations taken together are so insignificant, a little chipping, baking, patching, and washing, that in an impression so grand as that of the world on the human mind, they do not vary the result.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:33%\">\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-01.jpg\" alt=\"The sun setting through a dense forest.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:33.62%\">\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-02.jpg\" alt=\"Wind turbines standing on a grassy plain, against a blue sky.\" /></figure>\n</div>\n</div>\n<style>.wp-container-6243b79a8c959 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-6243b79a8c959 > * { margin: 0; }</style>\n\n\n<div class=\"wp-container-6243b79a8cca5 wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:67%\">\n<div class=\"wp-block-image\"><figure class=\"alignright size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-03.jpg\" alt=\"The sun shining over a ridge leading down into the shore. In the distance, a car drives down a road.\" /></figure></div>\n</div>\n\n\n\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:33%\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Undoubtedly we have no questions to ask which are unanswerable. We must trust the perfection of the creation so far, as to believe that whatever curiosity the order of things has awakened in our minds, the order of things can satisfy. Every man&#8217;s condition is a solution in hieroglyphic to those inquiries he would put.</p>\n</div>\n</div>\n<style>.wp-container-6243b79a8cca5 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-6243b79a8cca5 > * { margin: 0; }</style></div>\n<style>.wp-container-6243b79a8cfaa .alignleft { float: left; margin-right: 2em; margin-left: 0; }.wp-container-6243b79a8cfaa .alignright { float: right; margin-left: 2em; margin-right: 0; }.wp-container-6243b79a8cfaa > * { margin-top: 0; margin-bottom: 0; }.wp-container-6243b79a8cfaa > * + * { margin-top: var( --wp--style--block-gap );  margin-bottom: 0; }</style>\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:77:\"Three columns with images and text, with vertical spacing for an offset look.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"columns\";i:1;s:8:\"featured\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:3990:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"color\":{\"background\":\"#f8f4e4\"}}} -->\n<div class=\"wp-block-group alignfull has-background\" style=\"background-color:#f8f4e4\"><!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading {\"level\":6,\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h6 class=\"has-text-color\" id=\"ecosystem\" style=\"color:#000000\">ECOSYSTEM</h6>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":\"5vw\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:5vw;line-height:1.1\"><strong>Positive growth.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":\"5px\"} -->\n<div style=\"height:5px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"33.38%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.38%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\"><em>Nature</em>, in the common sense, refers to essences unchanged by man; space, the air, the river, the leaf.&nbsp;<em>Art</em>&nbsp;is applied to the mixture of his will with the same things, as in a house, a canal, a statue, a picture. But his operations taken together are so insignificant, a little chipping, baking, patching, and washing, that in an impression so grand as that of the world on the human mind, they do not vary the result.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33%\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-01.jpg\" alt=\"The sun setting through a dense forest.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"33.62%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.62%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-02.jpg\" alt=\"Wind turbines standing on a grassy plain, against a blue sky.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"67%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:67%\"><!-- wp:image {\"align\":\"right\",\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignright size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-03.jpg\" alt=\"The sun shining over a ridge leading down into the shore. In the distance, a car drives down a road.\" /></figure></div>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"33%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:33%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Undoubtedly we have no questions to ask which are unanswerable. We must trust the perfection of the creation so far, as to believe that whatever curiosity the order of things has awakened in our minds, the order of things can satisfy. Every man\'s condition is a solution in hieroglyphic to those inquiries he would put.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group -->\";}i:9;O:8:\"stdClass\":7:{s:2:\"id\";i:201;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:32:\"Three columns with offset images\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1289:\"\n<div class=\"wp-container-6243b79a8e373 wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:25%\">\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-01.jpg\" alt=\"Close-up, abstract view of geometric architecture.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:25%\">\n<div style=\"height:500px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div style=\"height:150px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/architecture-02.jpg\" alt=\"Close-up, angled view of a window on a white building.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:45%\">\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-03.jpg\" alt=\"Close-up of the corner of a white, geometric building with both sharp points and round corners.\" /></figure>\n\n\n\n<div style=\"height:285px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n</div>\n<style>.wp-container-6243b79a8e373 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-6243b79a8e373 > * { margin: 0; }</style>\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:33:\"Three columns with offset images.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"gallery\";i:1;s:6:\"images\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1753:\"<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"25%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:25%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-01.jpg\" alt=\"Close-up, abstract view of geometric architecture.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"25%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:25%\"><!-- wp:spacer {\"height\":500} -->\n<div style=\"height:500px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:spacer {\"height\":150} -->\n<div style=\"height:150px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/architecture-02.jpg\" alt=\"Close-up, angled view of a window on a white building.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"45%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:45%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-03.jpg\" alt=\"Close-up of the corner of a white, geometric building with both sharp points and round corners.\" /></figure>\n<!-- /wp:image -->\n\n<!-- wp:spacer {\"height\":285} -->\n<div style=\"height:285px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:10;O:8:\"stdClass\":7:{s:2:\"id\";i:29;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:29:\"Two columns of text and title\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1549:\"\n<h2 style=\"font-size:38px;line-height:1.4\"><strong>The voyage had begun, and had begun happily with a soft blue sky, and a calm sea.</strong></h2>\n\n\n\n<div class=\"wp-container-6243b79a8f40b wp-block-columns\">\n<div class=\"wp-block-column\">\n<p style=\"font-size:18px\">They followed her on to the deck. All the smoke and the houses had disappeared, and the ship was out in a wide space of sea very fresh and clear though pale in the early light. They had left London sitting on its mud. A very thin line of shadow tapered on the horizon, scarcely thick enough to stand the burden of Paris, which nevertheless rested upon it. They were free of roads, free of mankind, and the same exhilaration at their freedom ran through them all.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<p style=\"font-size:18px\">The ship was making her way steadily through small waves which slapped her and then fizzled like effervescing water, leaving a little border of bubbles and foam on either side. The colourless October sky above was thinly clouded as if by the trail of wood-fire smoke, and the air was wonderfully salt and brisk. Indeed it was too cold to stand still. Mrs. Ambrose drew her arm within her husband&#8217;s, and as they moved off it could be seen from the way in which her sloping cheek turned up to his that she had something private to communicate.</p>\n</div>\n</div>\n<style>.wp-container-6243b79a8f40b {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-6243b79a8f40b > * { margin: 0; }</style>\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:47:\"Two columns of text preceded by a long heading.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"columns\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1711:\"<!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":38,\"lineHeight\":\"1.4\"}}} -->\n<h2 style=\"font-size:38px;line-height:1.4\"><strong>The voyage had begun, and had begun happily with a soft blue sky, and a calm sea.</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":18}}} -->\n<p style=\"font-size:18px\">They followed her on to the deck. All the smoke and the houses had disappeared, and the ship was out in a wide space of sea very fresh and clear though pale in the early light. They had left London sitting on its mud. A very thin line of shadow tapered on the horizon, scarcely thick enough to stand the burden of Paris, which nevertheless rested upon it. They were free of roads, free of mankind, and the same exhilaration at their freedom ran through them all.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":18}}} -->\n<p style=\"font-size:18px\">The ship was making her way steadily through small waves which slapped her and then fizzled like effervescing water, leaving a little border of bubbles and foam on either side. The colourless October sky above was thinly clouded as if by the trail of wood-fire smoke, and the air was wonderfully salt and brisk. Indeed it was too cold to stand still. Mrs. Ambrose drew her arm within her husband\'s, and as they moved off it could be seen from the way in which her sloping cheek turned up to his that she had something private to communicate.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:11;O:8:\"stdClass\":7:{s:2:\"id\";i:197;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:39:\"Two columns of text with offset heading\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:2654:\"\n<div class=\"wp-container-6243b79a90957 wp-block-group alignfull has-background\" style=\"background-color:#f2f0e9\">\n<div style=\"height:70px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-container-6243b79a90297 wp-block-columns alignwide are-vertically-aligned-center\">\n<div class=\"wp-block-column\" style=\"flex-basis:50%\">\n<p class=\"has-text-color\" style=\"color:#000000;font-size:30px;line-height:1.1\"><strong>Oceanic Inspiration</strong></p>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:50%\">\n<hr class=\"wp-block-separator has-text-color has-background is-style-wide\" style=\"background-color:#000000;color:#000000\" />\n</div>\n</div>\n<style>.wp-container-6243b79a90297 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-6243b79a90297 > * { margin: 0; }</style>\n\n\n<div class=\"wp-container-6243b79a9063b wp-block-columns alignwide\">\n<div class=\"wp-block-column\"></div>\n\n\n\n<div class=\"wp-block-column\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Winding veils round their heads, the women walked on deck. They were now moving steadily down the river, passing the dark shapes of ships at anchor, and London was a swarm of lights with a pale yellow canopy drooping above it. There were the lights of the great theatres, the lights of the long streets, lights that indicated huge squares of domestic comfort, lights that hung high in air.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">No darkness would ever settle upon those lamps, as no darkness had settled upon them for hundreds of years. It seemed dreadful that the town should blaze for ever in the same spot; dreadful at least to people going away to adventure upon the sea, and beholding it as a circumscribed mound, eternally burnt, eternally scarred. From the deck of the ship the great city appeared a crouched and cowardly figure, a sedentary miser.</p>\n</div>\n</div>\n<style>.wp-container-6243b79a9063b {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-6243b79a9063b > * { margin: 0; }</style>\n\n\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n<style>.wp-container-6243b79a90957 .alignleft { float: left; margin-right: 2em; margin-left: 0; }.wp-container-6243b79a90957 .alignright { float: right; margin-left: 2em; margin-right: 0; }.wp-container-6243b79a90957 > * { margin-top: 0; margin-bottom: 0; }.wp-container-6243b79a90957 > * + * { margin-top: var( --wp--style--block-gap );  margin-bottom: 0; }</style>\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:43:\"Two columns of text with an offset heading.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"columns\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:2837:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"color\":{\"background\":\"#f2f0e9\"}}} -->\n<div class=\"wp-block-group alignfull has-background\" style=\"background-color:#f2f0e9\"><!-- wp:spacer {\"height\":70} -->\n<div style=\"height:70px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide are-vertically-aligned-center\"><!-- wp:column {\"width\":\"50%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:50%\"><!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":\"30px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:30px;line-height:1.1\"><strong>Oceanic Inspiration</strong></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"50%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:50%\"><!-- wp:separator {\"customColor\":\"#000000\",\"className\":\"is-style-wide\"} -->\n<hr class=\"wp-block-separator has-text-color has-background is-style-wide\" style=\"background-color:#000000;color:#000000\" />\n<!-- /wp:separator --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Winding veils round their heads, the women walked on deck. They were now moving steadily down the river, passing the dark shapes of ships at anchor, and London was a swarm of lights with a pale yellow canopy drooping above it. There were the lights of the great theatres, the lights of the long streets, lights that indicated huge squares of domestic comfort, lights that hung high in air.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">No darkness would ever settle upon those lamps, as no darkness had settled upon them for hundreds of years. It seemed dreadful that the town should blaze for ever in the same spot; dreadful at least to people going away to adventure upon the sea, and beholding it as a circumscribed mound, eternally burnt, eternally scarred. From the deck of the ship the great city appeared a crouched and cowardly figure, a sedentary miser.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:group -->\";}i:12;O:8:\"stdClass\":7:{s:2:\"id\";i:19;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:23:\"Two images side by side\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:647:\"\n<figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" alt=\"An aerial view of waves crashing against a shore.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" data-link=\"#\" /></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" alt=\"An aerial view of a field. A road runs through the upper right corner.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" data-link=\"#\" /></figure></li></ul></figure>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:41:\"An image gallery with two example images.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:1:{i:0;s:7:\"gallery\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:737:\"<!-- wp:gallery {\"ids\":[null,null],\"linkTo\":\"none\",\"align\":\"wide\"} -->\n<figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" alt=\"An aerial view of waves crashing against a shore.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" data-link=\"#\" /></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" alt=\"An aerial view of a field. A road runs through the upper right corner.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" data-link=\"#\" /></figure></li></ul></figure>\n<!-- /wp:gallery -->\";}}', 'no'),
(819, '_site_transient_timeout_wp_remote_block_patterns_83ac441feb040bd61e471205ae0c73d4', '1648608715', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(820, '_site_transient_wp_remote_block_patterns_83ac441feb040bd61e471205ae0c73d4', 'a:14:{i:0;O:8:\"stdClass\":7:{s:2:\"id\";i:591;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:5:\"Event\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:2119:\"\n<div class=\"wp-elements-6243b77ce89a3 wp-block-media-text alignfull has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-top has-text-color has-background has-link-color\" style=\"background-color:#121c1c;color:#fffdc7;grid-template-columns:auto 60%\"><figure class=\"wp-block-media-text__media\"><img loading=\"lazy\" width=\"1024\" height=\"1024\" src=\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-1024x1024.jpg\" alt=\"\" class=\"wp-image-590 size-full\" srcset=\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-1024x1024.jpg 1024w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-300x300.jpg 300w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-150x150.jpg 150w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-768x768.jpg 768w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-1536x1536.jpg 1536w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1.jpg 1572w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></figure><div class=\"wp-block-media-text__content\">\n<div class=\"wp-elements-6243b77ce8980 wp-container-6243b77ce896f wp-block-group has-link-color\" style=\"padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\">\n<h2 style=\"font-size:48px;font-weight:700;line-height:1.15\">Opening <br>Party</h2>\n\n\n\n<p class=\"wp-elements-6243b77ce8060 has-text-color has-link-color\" style=\"color:#fffdc7\"><strong><a href=\"#\">RSVP →</a></strong></p>\n<style>.wp-elements-6243b77ce8060 a{color: #fffdc7;}</style>\n</div>\n<style>.wp-container-6243b77ce896f .alignleft { float: left; margin-right: 2em; margin-left: 0; }.wp-container-6243b77ce896f .alignright { float: right; margin-left: 2em; margin-right: 0; }.wp-container-6243b77ce896f > * { margin-top: 0; margin-bottom: 0; }.wp-container-6243b77ce896f > * + * { margin-top: var( --wp--style--block-gap );  margin-bottom: 0; }</style><style>.wp-elements-6243b77ce8980 a{color: #fffdc7;}</style>\n</div></div>\n<style>.wp-elements-6243b77ce89a3 a{color: #fffdc7;}</style>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:0:\"\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:3:{i:0;s:8:\"featured\";i:1;s:6:\"header\";i:2;s:6:\"images\";}s:13:\"keyword_slugs\";a:0:{}s:15:\"pattern_content\";s:1592:\"<!-- wp:media-text {\"align\":\"full\",\"mediaPosition\":\"right\",\"mediaId\":590,\"mediaLink\":\"https://wordpress.org/patterns/image-from-rawpixel-id-430289-jpeg-1/\",\"mediaType\":\"image\",\"mediaWidth\":60,\"verticalAlignment\":\"top\",\"style\":{\"color\":{\"background\":\"#121c1c\",\"text\":\"#fffdc7\"},\"elements\":{\"link\":{\"color\":{\"text\":\"#fffdc7\"}}}}} -->\n<div class=\"wp-block-media-text alignfull has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-top has-text-color has-background has-link-color\" style=\"background-color:#121c1c;color:#fffdc7;grid-template-columns:auto 60%\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-1024x1024.jpg\" alt=\"\" class=\"wp-image-590 size-full\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:group {\"style\":{\"spacing\":{\"padding\":{\"top\":\"2em\",\"right\":\"2em\",\"bottom\":\"2em\",\"left\":\"2em\"}},\"elements\":{\"link\":{\"color\":{\"text\":\"#fffdc7\"}}}}} -->\n<div class=\"wp-block-group has-link-color\" style=\"padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\"><!-- wp:heading {\"style\":{\"typography\":{\"fontWeight\":\"700\",\"fontSize\":\"48px\",\"lineHeight\":\"1.15\"}}} -->\n<h2 style=\"font-size:48px;font-weight:700;line-height:1.15\">Opening <br>Party</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"#fffdc7\"}}},\"color\":{\"text\":\"#fffdc7\"}}} -->\n<p class=\"has-text-color has-link-color\" style=\"color:#fffdc7\"><strong><a href=\"#\">RSVP →</a></strong></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:media-text -->\";}i:1;O:8:\"stdClass\":7:{s:2:\"id\";i:566;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:30:\"Event announcement and details\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:2309:\"\n<div class=\"wp-elements-6243b77cea5d0 wp-container-6243b77cea5c5 wp-block-group alignfull has-black-color has-text-color has-background has-link-color\" style=\"background-color:#d2cdc7\">\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<h2 class=\"alignwide\" style=\"font-size:46px;font-weight:400;line-height:1.1\">HÉLÈNE DUMAS<br><em>FRAGMENTS</em></h2>\n\n\n\n<h3 class=\"alignwide\" style=\"font-size:46px;font-weight:400;line-height:1.1\">20/4 — 9/9/2021<br>SOUTH LONDON ART GALLERY</h3>\n\n\n\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-container-6243b77ce9ec4 wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:25%\"></div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:75%\">\n<figure class=\"wp-block-image size-full\"><img src=\"https://mywptesting.site/wp-content/uploads/2021/06/Histoire_naturelle_..._-fragments-_-_Upper_cover_C108eee15-1.jpg\" alt=\"\" class=\"wp-image-3173\" /></figure>\n</div>\n</div>\n<style>.wp-container-6243b77ce9ec4 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-6243b77ce9ec4 > * { margin: 0; }</style>\n\n\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-container-6243b77cea291 wp-block-columns alignwide\">\n<div class=\"wp-block-column\">\n<p style=\"font-size:25px\">MORE INFO AT: WP.ORG · +44 21 1234 5678</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<p class=\"has-text-align-right\" style=\"font-size:25px\">INSTAGRAM · <a href=\"#\">TICKETS</a></p>\n</div>\n</div>\n<style>.wp-container-6243b77cea291 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-6243b77cea291 > * { margin: 0; }</style>\n\n\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n<style>.wp-container-6243b77cea5c5 .alignleft { float: left; margin-right: 2em; margin-left: 0; }.wp-container-6243b77cea5c5 .alignright { float: right; margin-left: 2em; margin-right: 0; }.wp-container-6243b77cea5c5 > * { margin-top: 0; margin-bottom: 0; }.wp-container-6243b77cea5c5 > * + * { margin-top: var( --wp--style--block-gap );  margin-bottom: 0; }</style><style>.wp-elements-6243b77cea5d0 a{color: var(--wp--preset--color--black);}</style>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:0:\"\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:3:{i:0;s:8:\"featured\";i:1;s:6:\"images\";i:2;s:4:\"text\";}s:13:\"keyword_slugs\";a:0:{}s:15:\"pattern_content\";s:2622:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"color\":{\"background\":\"#d2cdc7\"},\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|black\"}}}},\"textColor\":\"black\"} -->\n<div class=\"wp-block-group alignfull has-black-color has-text-color has-background has-link-color\" style=\"background-color:#d2cdc7\"><!-- wp:spacer {\"height\":50} -->\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading {\"align\":\"wide\",\"style\":{\"typography\":{\"fontSize\":\"46px\",\"lineHeight\":\"1.1\",\"fontWeight\":\"400\"}}} -->\n<h2 class=\"alignwide\" style=\"font-size:46px;font-weight:400;line-height:1.1\">HÉLÈNE DUMAS<br><em>FRAGMENTS</em></h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3,\"align\":\"wide\",\"style\":{\"typography\":{\"fontSize\":\"46px\",\"lineHeight\":\"1.1\",\"fontWeight\":\"400\"}}} -->\n<h3 class=\"alignwide\" style=\"font-size:46px;font-weight:400;line-height:1.1\">20/4 — 9/9/2021<br>SOUTH LONDON ART GALLERY</h3>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":50} -->\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"25%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:25%\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"75%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:75%\"><!-- wp:image {\"id\":3173,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"https://mywptesting.site/wp-content/uploads/2021/06/Histoire_naturelle_..._-fragments-_-_Upper_cover_C108eee15-1.jpg\" alt=\"\" class=\"wp-image-3173\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":50} -->\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"25px\"}}} -->\n<p style=\"font-size:25px\">MORE INFO AT: WP.ORG · +44 21 1234 5678</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"align\":\"right\",\"style\":{\"typography\":{\"fontSize\":\"25px\"}}} -->\n<p class=\"has-text-align-right\" style=\"font-size:25px\">INSTAGRAM · <a href=\"#\">TICKETS</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":50} -->\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:group -->\";}i:2;O:8:\"stdClass\":7:{s:2:\"id\";i:502;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:13:\"Event details\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1823:\"\n<figure class=\"wp-block-image alignwide size-full\"><img loading=\"lazy\" width=\"2560\" height=\"1227\" src=\"https://s.w.org/patterns/files/2021/06/Group-17-scaled.jpg\" alt=\"Image of a woman being carried through the air by swans.\" class=\"wp-image-501\" srcset=\"https://s.w.org/patterns/files/2021/06/Group-17-scaled.jpg 2560w, https://s.w.org/patterns/files/2021/06/Group-17-300x144.jpg 300w, https://s.w.org/patterns/files/2021/06/Group-17-1024x491.jpg 1024w, https://s.w.org/patterns/files/2021/06/Group-17-768x368.jpg 768w, https://s.w.org/patterns/files/2021/06/Group-17-1536x736.jpg 1536w, https://s.w.org/patterns/files/2021/06/Group-17-2048x981.jpg 2048w\" sizes=\"(max-width: 2560px) 100vw, 2560px\" /></figure>\n\n\n\n<div class=\"wp-container-6243b77cebca8 wp-block-columns alignwide are-vertically-aligned-center\">\n<div class=\"wp-block-column is-vertically-aligned-center\">\n<p style=\"line-height:2\"><strong>Location:</strong><br>82 Main St. Brooklyn, NY</p>\n</div>\n\n\n\n<div class=\"wp-block-column is-vertically-aligned-center\">\n<p style=\"line-height:2\"><strong>Date:</strong><br>October 24, 2021</p>\n</div>\n\n\n\n<div class=\"wp-block-column is-vertically-aligned-center\">\n<div class=\"wp-container-6243b77ceb98d wp-block-buttons\">\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"background-color:#262626;color:#efefef\">Purchase Tickets</a></div>\n</div>\n<style>.wp-container-6243b77ceb98d {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: wrap;align-items: center;}.wp-container-6243b77ceb98d > * { margin: 0; }</style></div>\n</div>\n<style>.wp-container-6243b77cebca8 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-6243b77cebca8 > * { margin: 0; }</style>\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:14:\"Event details.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:0:{}s:15:\"pattern_content\";s:1624:\"<!-- wp:image {\"align\":\"wide\",\"id\":501,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image alignwide size-full\"><img src=\"https://s.w.org/patterns/files/2021/06/Group-17-scaled.jpg\" alt=\"Image of a woman being carried through the air by swans.\" class=\"wp-image-501\" /></figure>\n<!-- /wp:image -->\n\n<!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide are-vertically-aligned-center\"><!-- wp:column {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"2\"}}} -->\n<p style=\"line-height:2\"><strong>Location:</strong><br>82 Main St. Brooklyn, NY</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"2\"}}} -->\n<p style=\"line-height:2\"><strong>Date:</strong><br>October 24, 2021</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"width\":100,\"style\":{\"color\":{\"background\":\"#262626\",\"text\":\"#efefef\"}}} -->\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"background-color:#262626;color:#efefef\">Purchase Tickets</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:3;O:8:\"stdClass\":7:{s:2:\"id\";i:184;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:7:\"Heading\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:509:\"\n<h2 class=\"alignwide\" id=\"we-re-a-studio-in-berlin-with-an-international-practice-in-architecture-urban-planning-and-interior-design-we-believe-in-sharing-knowledge-and-promoting-dialogue-to-increase-the-creative-potential-of-collaboration\" style=\"font-size:48px;line-height:1.1\">We&#8217;re a studio in Berlin with an international practice in architecture, urban planning and interior design. We believe in sharing knowledge and promoting dialogue to increase the creative potential of collaboration.</h2>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:17:\"large text, title\";s:16:\"wpop_description\";s:12:\"Heading text\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:1:{i:0;s:12:\"core/heading\";}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:621:\"<!-- wp:heading {\"align\":\"wide\",\"style\":{\"typography\":{\"fontSize\":\"48px\",\"lineHeight\":\"1.1\"}}} -->\n<h2 class=\"alignwide\" id=\"we-re-a-studio-in-berlin-with-an-international-practice-in-architecture-urban-planning-and-interior-design-we-believe-in-sharing-knowledge-and-promoting-dialogue-to-increase-the-creative-potential-of-collaboration\" style=\"font-size:48px;line-height:1.1\">We\'re a studio in Berlin with an international practice in architecture, urban planning and interior design. We believe in sharing knowledge and promoting dialogue to increase the creative potential of collaboration.</h2>\n<!-- /wp:heading -->\";}i:4;O:8:\"stdClass\":7:{s:2:\"id\";i:669;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:31:\"Image and quote on a background\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:2943:\"\n<div class=\"wp-block-media-text alignwide has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-center has-background\" style=\"background-color:#f1f5c7\"><figure class=\"wp-block-media-text__media\"><img loading=\"lazy\" width=\"1024\" height=\"1024\" src=\"https://s.w.org/patterns/files/2021/06/pear-1-1024x1024.png\" alt=\"\" class=\"wp-image-5263 size-full\" srcset=\"https://s.w.org/patterns/files/2021/06/pear-1-1024x1024.png 1024w, https://s.w.org/patterns/files/2021/06/pear-1-300x300.png 300w, https://s.w.org/patterns/files/2021/06/pear-1-150x150.png 150w, https://s.w.org/patterns/files/2021/06/pear-1-768x768.png 768w, https://s.w.org/patterns/files/2021/06/pear-1.png 1300w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></figure><div class=\"wp-block-media-text__content\">\n<div class=\"wp-container-6243b77ced612 wp-block-group\" style=\"padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\">\n<p style=\"font-size:36px;line-height:1.2\"><strong>Even the bitterest fruit has sugar in it.</strong></p>\n\n\n\n<p class=\"has-extra-small-font-size\">– Terry a O&#8217;Neal</p>\n</div>\n<style>.wp-container-6243b77ced612 .alignleft { float: left; margin-right: 2em; margin-left: 0; }.wp-container-6243b77ced612 .alignright { float: right; margin-left: 2em; margin-right: 0; }.wp-container-6243b77ced612 > * { margin-top: 0; margin-bottom: 0; }.wp-container-6243b77ced612 > * + * { margin-top: var( --wp--style--block-gap );  margin-bottom: 0; }</style></div></div>\n\n\n\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile is-vertically-aligned-center has-background\" style=\"background-color:#fffdea\"><figure class=\"wp-block-media-text__media\"><img loading=\"lazy\" width=\"1024\" height=\"1024\" src=\"https://s.w.org/patterns/files/2021/06/pear-half-1024x1024.png\" alt=\"\" class=\"wp-image-673 size-full\" srcset=\"https://s.w.org/patterns/files/2021/06/pear-half-1024x1024.png 1024w, https://s.w.org/patterns/files/2021/06/pear-half-300x300.png 300w, https://s.w.org/patterns/files/2021/06/pear-half-150x150.png 150w, https://s.w.org/patterns/files/2021/06/pear-half-768x768.png 768w, https://s.w.org/patterns/files/2021/06/pear-half.png 1300w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></figure><div class=\"wp-block-media-text__content\">\n<div class=\"wp-container-6243b77ced99b wp-block-group\" style=\"padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\">\n<p style=\"font-size:36px;line-height:1.2\"><strong>The trees that are slow to grow bear the best fruit.</strong></p>\n\n\n\n<p class=\"has-extra-small-font-size\">– Molière</p>\n</div>\n<style>.wp-container-6243b77ced99b .alignleft { float: left; margin-right: 2em; margin-left: 0; }.wp-container-6243b77ced99b .alignright { float: right; margin-left: 2em; margin-right: 0; }.wp-container-6243b77ced99b > * { margin-top: 0; margin-bottom: 0; }.wp-container-6243b77ced99b > * + * { margin-top: var( --wp--style--block-gap );  margin-bottom: 0; }</style></div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:221:\"Two media and text blocks. The top one has a pale green background. The text is on the left and contains a quote, and the image is on the right. The next block underneath has the image on the left, and quote on the right.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:3:{i:0;s:8:\"featured\";i:1;s:6:\"images\";i:2;s:4:\"text\";}s:13:\"keyword_slugs\";a:0:{}s:15:\"pattern_content\";s:2404:\"<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":5263,\"mediaLink\":\"https://wordpress.org/patterns/pattern/image-and-quote-on-a-background/pear-3/\",\"mediaType\":\"image\",\"verticalAlignment\":\"center\",\"style\":{\"color\":{\"background\":\"#f1f5c7\"}}} -->\n<div class=\"wp-block-media-text alignwide has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-center has-background\" style=\"background-color:#f1f5c7\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/patterns/files/2021/06/pear-1-1024x1024.png\" alt=\"\" class=\"wp-image-5263 size-full\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:group {\"style\":{\"spacing\":{\"padding\":{\"top\":\"2em\",\"right\":\"2em\",\"bottom\":\"2em\",\"left\":\"2em\"}}}} -->\n<div class=\"wp-block-group\" style=\"padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\"><!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.2\",\"fontSize\":\"36px\"}}} -->\n<p style=\"font-size:36px;line-height:1.2\"><strong>Even the bitterest fruit has sugar in it.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"extra-small\"} -->\n<p class=\"has-extra-small-font-size\">– Terry a O\'Neal</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:media-text {\"mediaId\":673,\"mediaLink\":\"https://wordpress.org/patterns/pear-half/\",\"mediaType\":\"image\",\"verticalAlignment\":\"center\",\"style\":{\"color\":{\"background\":\"#fffdea\"}}} -->\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile is-vertically-aligned-center has-background\" style=\"background-color:#fffdea\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/patterns/files/2021/06/pear-half-1024x1024.png\" alt=\"\" class=\"wp-image-673 size-full\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:group {\"style\":{\"spacing\":{\"padding\":{\"top\":\"2em\",\"right\":\"2em\",\"bottom\":\"2em\",\"left\":\"2em\"}}}} -->\n<div class=\"wp-block-group\" style=\"padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\"><!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.2\",\"fontSize\":\"36px\"}}} -->\n<p style=\"font-size:36px;line-height:1.2\"><strong>The trees that are slow to grow bear the best fruit.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"extra-small\"} -->\n<p class=\"has-extra-small-font-size\">– Molière</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:media-text -->\";}i:5;O:8:\"stdClass\":7:{s:2:\"id\";i:573;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:37:\"Image on solid color with description\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1928:\"\n<div class=\"wp-container-6243b77cef036 wp-block-columns alignfull\">\n<div class=\"wp-block-column\" style=\"flex-basis:50%\">\n<div class=\"wp-block-cover has-background-dim\" style=\"background-color:#f6f6f6;min-height:600px\"><div class=\"wp-block-cover__inner-container\">\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-medium\"><img loading=\"lazy\" width=\"263\" height=\"300\" src=\"https://s.w.org/patterns/files/2021/06/wire-sculpture-263x300.jpg\" alt=\"\" class=\"wp-image-571\" srcset=\"https://s.w.org/patterns/files/2021/06/wire-sculpture-263x300.jpg 263w, https://s.w.org/patterns/files/2021/06/wire-sculpture-898x1024.jpg 898w, https://s.w.org/patterns/files/2021/06/wire-sculpture-768x875.jpg 768w, https://s.w.org/patterns/files/2021/06/wire-sculpture-1347x1536.jpg 1347w, https://s.w.org/patterns/files/2021/06/wire-sculpture.jpg 1658w\" sizes=\"(max-width: 263px) 100vw, 263px\" /></figure></div>\n</div></div>\n</div>\n\n\n\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"padding-top:1em;padding-right:1em;padding-bottom:1em;padding-left:1em\">\n<div class=\"wp-container-6243b77ceeccf wp-block-columns\">\n<div class=\"wp-block-column\" style=\"flex-basis:320px\">\n<p class=\"has-small-font-size\" style=\"line-height:1.6\"><strong>Airplane</strong></p>\n\n\n\n<p class=\"has-small-font-size\" style=\"line-height:1.6\">Copper wire, wood base. I created this piece in late 2008. For this work, I aimed to convey both the industrial heaviness of an airplane, but also the cloudlike floating quality you feel when you’re in one.</p>\n</div>\n</div>\n<style>.wp-container-6243b77ceeccf {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-6243b77ceeccf > * { margin: 0; }</style></div>\n</div>\n<style>.wp-container-6243b77cef036 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-6243b77cef036 > * { margin: 0; }</style>\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:38:\"Image on solid color with description.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:3:{i:0;s:8:\"featured\";i:1;s:6:\"images\";i:2;s:4:\"text\";}s:13:\"keyword_slugs\";a:0:{}s:15:\"pattern_content\";s:1826:\"<!-- wp:columns {\"align\":\"full\"} -->\n<div class=\"wp-block-columns alignfull\"><!-- wp:column {\"width\":\"50%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:50%\"><!-- wp:cover {\"customOverlayColor\":\"#f6f6f6\",\"minHeight\":600} -->\n<div class=\"wp-block-cover has-background-dim\" style=\"background-color:#f6f6f6;min-height:600px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:image {\"align\":\"center\",\"id\":571,\"sizeSlug\":\"medium\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-medium\"><img src=\"https://s.w.org/patterns/files/2021/06/wire-sculpture-263x300.jpg\" alt=\"\" class=\"wp-image-571\" /></figure></div>\n<!-- /wp:image --></div></div>\n<!-- /wp:cover --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"1em\",\"right\":\"1em\",\"bottom\":\"1em\",\"left\":\"1em\"}}}} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"padding-top:1em;padding-right:1em;padding-bottom:1em;padding-left:1em\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"320px\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:320px\"><!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.6\"}},\"fontSize\":\"small\"} -->\n<p class=\"has-small-font-size\" style=\"line-height:1.6\"><strong>Airplane</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.6\"}},\"fontSize\":\"small\"} -->\n<p class=\"has-small-font-size\" style=\"line-height:1.6\">Copper wire, wood base. I created this piece in late 2008. For this work, I aimed to convey both the industrial heaviness of an airplane, but also the cloudlike floating quality you feel when you’re in one.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:6;O:8:\"stdClass\":7:{s:2:\"id\";i:521;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:45:\"Image with description below and to the right\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1670:\"\n<div class=\"wp-container-6243b77cf0071 wp-block-columns\">\n<div class=\"wp-block-column\" style=\"flex-basis:10%\"></div>\n\n\n\n<div class=\"wp-block-column\">\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" width=\"1024\" height=\"1024\" src=\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-539759-jpeg-1-1024x1024.jpg\" alt=\"Vintage Cupid Illustration\" class=\"wp-image-522\" srcset=\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-539759-jpeg-1-1024x1024.jpg 1024w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-539759-jpeg-1-300x300.jpg 300w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-539759-jpeg-1-150x150.jpg 150w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-539759-jpeg-1-768x768.jpg 768w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-539759-jpeg-1.jpg 1510w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column\"></div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:10%\"></div>\n</div>\n<style>.wp-container-6243b77cf0071 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-6243b77cf0071 > * { margin: 0; }</style>\n\n\n<div class=\"wp-container-6243b77cf039d wp-block-columns\">\n<div class=\"wp-block-column\"></div>\n\n\n\n<div class=\"wp-block-column\">\n<p style=\"font-size:14px\"><strong>Cupid in Flight</strong><br>48” x 48” Giclee print on archival paper.</p>\n</div>\n</div>\n<style>.wp-container-6243b77cf039d {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-6243b77cf039d > * { margin: 0; }</style>\n\n\n<p></p>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:46:\"Image with description below and to the right.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:6:\"images\";}s:13:\"keyword_slugs\";a:0:{}s:15:\"pattern_content\";s:1241:\"<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"10%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:10%\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":522,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-539759-jpeg-1-1024x1024.jpg\" alt=\"Vintage Cupid Illustration\" class=\"wp-image-522\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"10%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:10%\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"14px\"}}} -->\n<p style=\"font-size:14px\"><strong>Cupid in Flight</strong><br>48” x 48” Giclee print on archival paper.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\";}i:7;O:8:\"stdClass\":7:{s:2:\"id\";i:185;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:35:\"Large header with left-aligned text\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1231:\"\n<div class=\"wp-block-cover alignfull has-background-dim-60 has-background-dim\" style=\"min-height:800px\"><img class=\"wp-block-cover__image-background\" alt=\"\" src=\"https://s.w.org/images/core/5.8/forest.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container\">\n<h2 class=\"alignwide has-text-color\" style=\"color:#ffe074;font-size:64px\">Forest.</h2>\n\n\n\n<div class=\"wp-container-6243b77cf135e wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:55%\">\n<div style=\"height:330px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p class=\"has-text-color\" style=\"color:#ffe074;font-size:12px;line-height:1.3\"><em>Even a child knows how valuable the forest is. The fresh, breathtaking smell of trees. Echoing birds flying above that dense magnitude. A stable climate, a sustainable diverse life and a source of culture. Yet, forests and other ecosystems hang in the balance, threatened to become croplands, pasture, and plantations.</em></p>\n</div>\n\n\n\n<div class=\"wp-block-column\"></div>\n</div>\n<style>.wp-container-6243b77cf135e {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-6243b77cf135e > * { margin: 0; }</style></div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:29:\"Cover image with quote on top\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1610:\"<!-- wp:cover {\"url\":\"https://s.w.org/images/core/5.8/forest.jpg\",\"dimRatio\":60,\"minHeight\":800,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-background-dim-60 has-background-dim\" style=\"min-height:800px\"><img class=\"wp-block-cover__image-background\" alt=\"\" src=\"https://s.w.org/images/core/5.8/forest.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container\"><!-- wp:heading {\"align\":\"wide\",\"style\":{\"color\":{\"text\":\"#ffe074\"},\"typography\":{\"fontSize\":\"64px\"}}} -->\n<h2 class=\"alignwide has-text-color\" style=\"color:#ffe074;font-size:64px\">Forest.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"55%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:55%\"><!-- wp:spacer {\"height\":330} -->\n<div style=\"height:330px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#ffe074\"},\"typography\":{\"lineHeight\":\"1.3\",\"fontSize\":\"12px\"}}} -->\n<p class=\"has-text-color\" style=\"color:#ffe074;font-size:12px;line-height:1.3\"><em>Even a child knows how valuable the forest is. The fresh, breathtaking smell of trees. Echoing birds flying above that dense magnitude. A stable climate, a sustainable diverse life and a source of culture. Yet, forests and other ecosystems hang in the balance, threatened to become croplands, pasture, and plantations.</em></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:cover -->\";}i:8;O:8:\"stdClass\":7:{s:2:\"id\";i:192;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:37:\"Media and text with image on the left\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:520:\"\n<div class=\"wp-block-media-text alignfull is-stacked-on-mobile is-vertically-aligned-center\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/architecture-04.jpg\" alt=\"Close-up, abstract view of architecture.\" /></figure><div class=\"wp-block-media-text__content\">\n<h3 class=\"has-text-align-center has-text-color\" style=\"color:#000000\"><strong>Open Spaces</strong></h3>\n\n\n\n<p class=\"has-text-align-center has-extra-small-font-size\"><a href=\"#\">See case study ↗</a></p>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:66:\"Media and text block with image to the left and text to the right.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:827:\"<!-- wp:media-text {\"align\":\"full\",\"mediaType\":\"image\",\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-media-text alignfull is-stacked-on-mobile is-vertically-aligned-center\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/architecture-04.jpg\" alt=\"Close-up, abstract view of architecture.\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"textAlign\":\"center\",\"level\":3,\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h3 class=\"has-text-align-center has-text-color\" style=\"color:#000000\"><strong>Open Spaces</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-align-center has-extra-small-font-size\"><a href=\"#\">See case study ↗</a></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\";}i:9;O:8:\"stdClass\":7:{s:2:\"id\";i:526;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:32:\"Offset images with descriptions.\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1871:\"\n<div class=\"wp-container-6243b77cf2cd5 wp-block-columns\">\n<div class=\"wp-block-column\">\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" width=\"793\" height=\"1024\" src=\"https://s.w.org/patterns/files/2021/06/Iris-793x1024.jpg\" alt=\"\" class=\"wp-image-525\" srcset=\"https://s.w.org/patterns/files/2021/06/Iris-793x1024.jpg 793w, https://s.w.org/patterns/files/2021/06/Iris-232x300.jpg 232w, https://s.w.org/patterns/files/2021/06/Iris-768x992.jpg 768w, https://s.w.org/patterns/files/2021/06/Iris-1189x1536.jpg 1189w, https://s.w.org/patterns/files/2021/06/Iris-1586x2048.jpg 1586w, https://s.w.org/patterns/files/2021/06/Iris.jpg 1920w\" sizes=\"(max-width: 793px) 100vw, 793px\" /></figure>\n\n\n\n<p style=\"font-size:14px\"><strong>White Irises</strong><br>Ogawa Kazumasa</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p style=\"font-size:14px\"><strong>Cherry Blossom</strong><br>Ogawa Kazumasa</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" width=\"707\" height=\"1024\" src=\"https://s.w.org/patterns/files/2021/06/Cherry-Blossom-707x1024.jpg\" alt=\"\" class=\"wp-image-524\" srcset=\"https://s.w.org/patterns/files/2021/06/Cherry-Blossom-707x1024.jpg 707w, https://s.w.org/patterns/files/2021/06/Cherry-Blossom-207x300.jpg 207w, https://s.w.org/patterns/files/2021/06/Cherry-Blossom-768x1112.jpg 768w, https://s.w.org/patterns/files/2021/06/Cherry-Blossom-1061x1536.jpg 1061w, https://s.w.org/patterns/files/2021/06/Cherry-Blossom-1414x2048.jpg 1414w, https://s.w.org/patterns/files/2021/06/Cherry-Blossom-scaled.jpg 1768w\" sizes=\"(max-width: 707px) 100vw, 707px\" /></figure>\n</div>\n</div>\n<style>.wp-container-6243b77cf2cd5 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-6243b77cf2cd5 > * { margin: 0; }</style>\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:32:\"Offset images with descriptions.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:3:{i:0;s:8:\"featured\";i:1;s:7:\"gallery\";i:2;s:6:\"images\";}s:13:\"keyword_slugs\";a:0:{}s:15:\"pattern_content\";s:1175:\"<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":525,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/patterns/files/2021/06/Iris-793x1024.jpg\" alt=\"\" class=\"wp-image-525\" /></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"14px\"}}} -->\n<p style=\"font-size:14px\"><strong>White Irises</strong><br>Ogawa Kazumasa</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"14px\"}}} -->\n<p style=\"font-size:14px\"><strong>Cherry Blossom</strong><br>Ogawa Kazumasa</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":524,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/patterns/files/2021/06/Cherry-Blossom-707x1024.jpg\" alt=\"\" class=\"wp-image-524\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:10;O:8:\"stdClass\":7:{s:2:\"id\";i:678;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:13:\"Pricing table\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:4000:\"\n<div class=\"wp-container-6243b77d006cd wp-block-columns alignwide\">\n<div class=\"wp-elements-6243b77cf3f34 wp-block-column has-text-color has-background has-link-color\" style=\"background-color:#ffe97d;color:#000000;padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\">\n<h2 id=\"single\" style=\"font-size:40px\"><strong>Single</strong></h2>\n\n\n\n<p class=\"has-normal-font-size\" style=\"line-height:1.5\"><strong>Enrich our growing community.</strong> </p>\n\n\n\n<hr class=\"wp-block-separator has-text-color has-background is-style-wide\" style=\"background-color:#000000;color:#000000\" />\n\n\n\n<ul class=\"has-normal-font-size\"><li>General admission and member discounts for one adult</li><li>One free ticket per special exhibition</li><li>Two single-use guest passes per year</li></ul>\n\n\n\n<div class=\"wp-container-6243b77cf3f1a wp-block-buttons alignfull\">\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link has-white-color has-text-color has-background no-border-radius\" style=\"background-color:#000000\">$110 / year</a></div>\n</div>\n<style>.wp-container-6243b77cf3f1a {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: wrap;align-items: center;justify-content: center;}.wp-container-6243b77cf3f1a > * { margin: 0; }</style></div>\n<style>.wp-elements-6243b77cf3f34 a{color: #000000;}</style>\n\n\n\n<div class=\"wp-elements-6243b77d00073 wp-block-column has-text-color has-background has-link-color\" style=\"background-color:#d1d1e1;color:#000000;padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\">\n<h2 id=\"family\" style=\"font-size:40px\"><strong>Family</strong></h2>\n\n\n\n<p class=\"has-normal-font-size\" style=\"line-height:1.5\"><strong>Support special exhibitions.</strong></p>\n\n\n\n<hr class=\"wp-block-separator is-style-wide\" />\n\n\n\n<ul class=\"has-normal-font-size\"><li>General admission and member discounts for two adults</li><li>Four free tickets per special exhibition</li><li>Four single-use guest passes per year</li></ul>\n\n\n\n<div class=\"wp-container-6243b77d0005d wp-block-buttons alignfull\">\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100 is-style-fill\"><a class=\"wp-block-button__link has-white-color has-text-color has-background no-border-radius\" style=\"background-color:#000000\">$200 / year</a></div>\n</div>\n<style>.wp-container-6243b77d0005d {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: wrap;align-items: center;justify-content: center;}.wp-container-6243b77d0005d > * { margin: 0; }</style></div>\n<style>.wp-elements-6243b77d00073 a{color: #000000;}</style>\n\n\n\n<div class=\"wp-elements-6243b77d003c8 wp-block-column has-text-color has-background has-link-color\" style=\"background-color:#c0ebf1;color:#000000;padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\">\n<h2 id=\"patron\" style=\"font-size:40px\"><strong>Patron</strong></h2>\n\n\n\n<p class=\"has-normal-font-size\"><strong>Take support to the next level.</strong></p>\n\n\n\n<hr class=\"wp-block-separator is-style-wide\" />\n\n\n\n<ul class=\"has-normal-font-size\"><li>General admission and member discounts for two adults</li><li>Five free tickets per special exhibition</li><li>Six single-use guest passes per year</li></ul>\n\n\n\n<div class=\"wp-container-6243b77d003b3 wp-block-buttons alignfull\">\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link has-white-color has-text-color has-background no-border-radius\" style=\"background-color:#000000\">$400 / year</a></div>\n</div>\n<style>.wp-container-6243b77d003b3 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: wrap;align-items: center;justify-content: center;}.wp-container-6243b77d003b3 > * { margin: 0; }</style></div>\n<style>.wp-elements-6243b77d003c8 a{color: #000000;}</style>\n</div>\n<style>.wp-container-6243b77d006cd {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-6243b77d006cd > * { margin: 0; }</style>\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:272:\"Three equal-width columns set up as a pricing table. The left column has a yellow background, the middle column has a light purple background, and the right column has a light blue background. Each column contains a heading, subheading, separator, list, and then a button.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:3:{i:0;s:7:\"buttons\";i:1;s:7:\"columns\";i:2;s:8:\"featured\";}s:13:\"keyword_slugs\";a:0:{}s:15:\"pattern_content\";s:5340:\"<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"style\":{\"color\":{\"background\":\"#ffe97d\",\"text\":\"#000000\"},\"elements\":{\"link\":{\"color\":{\"text\":\"#000000\"}}},\"spacing\":{\"padding\":{\"top\":\"2em\",\"right\":\"2em\",\"bottom\":\"2em\",\"left\":\"2em\"}}}} -->\n<div class=\"wp-block-column has-text-color has-background has-link-color\" style=\"background-color:#ffe97d;color:#000000;padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\"><!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"40px\"}}} -->\n<h2 id=\"single\" style=\"font-size:40px\"><strong>Single</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.5\"}},\"fontSize\":\"normal\"} -->\n<p class=\"has-normal-font-size\" style=\"line-height:1.5\"><strong>Enrich our growing community.</strong> </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator {\"customColor\":\"#000000\",\"className\":\"is-style-wide\"} -->\n<hr class=\"wp-block-separator has-text-color has-background is-style-wide\" style=\"background-color:#000000;color:#000000\" />\n<!-- /wp:separator -->\n\n<!-- wp:list {\"fontSize\":\"normal\"} -->\n<ul class=\"has-normal-font-size\"><li>General admission and member discounts for one adult</li><li>One free ticket per special exhibition</li><li>Two single-use guest passes per year</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:buttons {\"align\":\"full\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\",\"orientation\":\"horizontal\"}} -->\n<div class=\"wp-block-buttons alignfull\"><!-- wp:button {\"textColor\":\"white\",\"width\":100,\"style\":{\"color\":{\"background\":\"#000000\"},\"border\":{\"radius\":0}}} -->\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link has-white-color has-text-color has-background no-border-radius\" style=\"background-color:#000000\">$110 / year</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"style\":{\"color\":{\"background\":\"#d1d1e1\",\"text\":\"#000000\"},\"elements\":{\"link\":{\"color\":{\"text\":\"#000000\"}}},\"spacing\":{\"padding\":{\"top\":\"2em\",\"right\":\"2em\",\"bottom\":\"2em\",\"left\":\"2em\"}}}} -->\n<div class=\"wp-block-column has-text-color has-background has-link-color\" style=\"background-color:#d1d1e1;color:#000000;padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\"><!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"40px\"}}} -->\n<h2 id=\"family\" style=\"font-size:40px\"><strong>Family</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.5\"}},\"fontSize\":\"normal\"} -->\n<p class=\"has-normal-font-size\" style=\"line-height:1.5\"><strong>Support special exhibitions.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator {\"className\":\"is-style-wide\"} -->\n<hr class=\"wp-block-separator is-style-wide\" />\n<!-- /wp:separator -->\n\n<!-- wp:list {\"fontSize\":\"normal\"} -->\n<ul class=\"has-normal-font-size\"><li>General admission and member discounts for two adults</li><li>Four free tickets per special exhibition</li><li>Four single-use guest passes per year</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:buttons {\"align\":\"full\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\",\"orientation\":\"horizontal\"}} -->\n<div class=\"wp-block-buttons alignfull\"><!-- wp:button {\"textColor\":\"white\",\"width\":100,\"style\":{\"color\":{\"background\":\"#000000\"},\"border\":{\"radius\":0}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100 is-style-fill\"><a class=\"wp-block-button__link has-white-color has-text-color has-background no-border-radius\" style=\"background-color:#000000\">$200 / year</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"style\":{\"color\":{\"background\":\"#c0ebf1\",\"text\":\"#000000\"},\"elements\":{\"link\":{\"color\":{\"text\":\"#000000\"}}},\"spacing\":{\"padding\":{\"top\":\"2em\",\"right\":\"2em\",\"bottom\":\"2em\",\"left\":\"2em\"}}}} -->\n<div class=\"wp-block-column has-text-color has-background has-link-color\" style=\"background-color:#c0ebf1;color:#000000;padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\"><!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"40px\"}}} -->\n<h2 id=\"patron\" style=\"font-size:40px\"><strong>Patron</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"fontSize\":\"normal\"} -->\n<p class=\"has-normal-font-size\"><strong>Take support to the next level.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator {\"className\":\"is-style-wide\"} -->\n<hr class=\"wp-block-separator is-style-wide\" />\n<!-- /wp:separator -->\n\n<!-- wp:list {\"fontSize\":\"normal\"} -->\n<ul class=\"has-normal-font-size\"><li>General admission and member discounts for two adults</li><li>Five free tickets per special exhibition</li><li>Six single-use guest passes per year</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:buttons {\"align\":\"full\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\",\"orientation\":\"horizontal\"}} -->\n<div class=\"wp-block-buttons alignfull\"><!-- wp:button {\"textColor\":\"white\",\"width\":100,\"style\":{\"color\":{\"background\":\"#000000\"},\"border\":{\"radius\":0}}} -->\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link has-white-color has-text-color has-background no-border-radius\" style=\"background-color:#000000\">$400 / year</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:11;O:8:\"stdClass\":7:{s:2:\"id\";i:732;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:21:\"Simple call to action\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1418:\"\n<div class=\"wp-container-6243b77d01f88 wp-block-group alignfull has-text-color has-background\" style=\"background-color:#ffffff;color:#000000\">\n<div style=\"height:64px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p class=\"has-text-align-center has-small-font-size\" style=\"line-height:.9\"><strong>GET IN TOUCH</strong></p>\n\n\n\n<h2 class=\"has-text-align-center\" id=\"schedule-a-visit\" style=\"font-size:59px;line-height:1.15\"><strong>Schedule a Visit</strong></h2>\n\n\n\n<div class=\"wp-container-6243b77d01c4d wp-block-buttons\">\n<div class=\"wp-block-button has-custom-width wp-block-button__width-50\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"border-radius:50px;background-color:#000000;color:#ffffff\">Contact us</a></div>\n</div>\n<style>.wp-container-6243b77d01c4d {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: wrap;align-items: center;justify-content: center;}.wp-container-6243b77d01c4d > * { margin: 0; }</style>\n\n\n<div style=\"height:64px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n<style>.wp-container-6243b77d01f88 .alignleft { float: left; margin-right: 2em; margin-left: 0; }.wp-container-6243b77d01f88 .alignright { float: right; margin-left: 2em; margin-right: 0; }.wp-container-6243b77d01f88 > * { margin-top: 0; margin-bottom: 0; }.wp-container-6243b77d01f88 > * + * { margin-top: var( --wp--style--block-gap );  margin-bottom: 0; }</style>\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:89:\"A container with a white background. Inside is a centered paragraph, heading, and button.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"buttons\";i:1;s:8:\"featured\";}s:13:\"keyword_slugs\";a:0:{}s:15:\"pattern_content\";s:1506:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"color\":{\"text\":\"#000000\",\"background\":\"#ffffff\"}}} -->\n<div class=\"wp-block-group alignfull has-text-color has-background\" style=\"background-color:#ffffff;color:#000000\"><!-- wp:spacer {\"height\":64} -->\n<div style=\"height:64px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"style\":{\"typography\":{\"lineHeight\":\".9\"}},\"fontSize\":\"small\"} -->\n<p class=\"has-text-align-center has-small-font-size\" style=\"line-height:.9\"><strong>GET IN TOUCH</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"textAlign\":\"center\",\"style\":{\"typography\":{\"fontSize\":59,\"lineHeight\":\"1.15\"}}} -->\n<h2 class=\"has-text-align-center\" id=\"schedule-a-visit\" style=\"font-size:59px;line-height:1.15\"><strong>Schedule a Visit</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\",\"orientation\":\"horizontal\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"width\":50,\"style\":{\"color\":{\"background\":\"#000000\",\"text\":\"#ffffff\"},\"border\":{\"radius\":\"50px\"}}} -->\n<div class=\"wp-block-button has-custom-width wp-block-button__width-50\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"border-radius:50px;background-color:#000000;color:#ffffff\">Contact us</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:spacer {\"height\":64} -->\n<div style=\"height:64px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:group -->\";}i:12;O:8:\"stdClass\":7:{s:2:\"id\";i:200;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:21:\"Three columns of text\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1013:\"\n<div class=\"wp-container-6243b77d02e81 wp-block-columns alignfull has-text-color has-background\" style=\"background-color:#ffffff;color:#000000\">\n<div class=\"wp-block-column\">\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"http://wordpress.org\">Virtual Tour ↗</a></strong></h3>\n\n\n\n<p>Get a virtual tour of the museum. Ideal for schools and events.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Current Shows ↗</a></strong></h3>\n\n\n\n<p>Stay updated and see our current exhibitions here.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Useful Info ↗</a></strong></h3>\n\n\n\n<p>Get to know our opening times, ticket prices and discounts.</p>\n</div>\n</div>\n<style>.wp-container-6243b77d02e81 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-6243b77d02e81 > * { margin: 0; }</style>\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:22:\"Three columns of text.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:3:{i:0;s:7:\"columns\";i:1;s:8:\"featured\";i:2;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1496:\"<!-- wp:columns {\"align\":\"full\",\"style\":{\"color\":{\"text\":\"#000000\",\"background\":\"#ffffff\"}}} -->\n<div class=\"wp-block-columns alignfull has-text-color has-background\" style=\"background-color:#ffffff;color:#000000\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"http://wordpress.org\">Virtual Tour ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Get a virtual tour of the museum. Ideal for schools and events.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Current Shows ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Stay updated and see our current exhibitions here.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Useful Info ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Get to know our opening times, ticket prices and discounts.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:13;O:8:\"stdClass\":7:{s:2:\"id\";i:199;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:34:\"Three columns with images and text\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:3603:\"\n<div class=\"wp-container-6243b77d04920 wp-block-group alignfull has-background\" style=\"background-color:#f8f4e4\">\n<div class=\"wp-container-6243b77d03efe wp-block-columns alignwide\">\n<div class=\"wp-block-column\">\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<h6 class=\"has-text-color\" id=\"ecosystem\" style=\"color:#000000\">ECOSYSTEM</h6>\n\n\n\n<p class=\"has-text-color\" style=\"color:#000000;font-size:5vw;line-height:1.1\"><strong>Positive growth.</strong></p>\n\n\n\n<div style=\"height:5px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n</div>\n<style>.wp-container-6243b77d03efe {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-6243b77d03efe > * { margin: 0; }</style>\n\n\n<div class=\"wp-container-6243b77d04280 wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:33.38%\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\"><em>Nature</em>, in the common sense, refers to essences unchanged by man; space, the air, the river, the leaf.&nbsp;<em>Art</em>&nbsp;is applied to the mixture of his will with the same things, as in a house, a canal, a statue, a picture. But his operations taken together are so insignificant, a little chipping, baking, patching, and washing, that in an impression so grand as that of the world on the human mind, they do not vary the result.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:33%\">\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-01.jpg\" alt=\"The sun setting through a dense forest.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:33.62%\">\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-02.jpg\" alt=\"Wind turbines standing on a grassy plain, against a blue sky.\" /></figure>\n</div>\n</div>\n<style>.wp-container-6243b77d04280 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-6243b77d04280 > * { margin: 0; }</style>\n\n\n<div class=\"wp-container-6243b77d045d2 wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:67%\">\n<div class=\"wp-block-image\"><figure class=\"alignright size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-03.jpg\" alt=\"The sun shining over a ridge leading down into the shore. In the distance, a car drives down a road.\" /></figure></div>\n</div>\n\n\n\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:33%\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Undoubtedly we have no questions to ask which are unanswerable. We must trust the perfection of the creation so far, as to believe that whatever curiosity the order of things has awakened in our minds, the order of things can satisfy. Every man&#8217;s condition is a solution in hieroglyphic to those inquiries he would put.</p>\n</div>\n</div>\n<style>.wp-container-6243b77d045d2 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-6243b77d045d2 > * { margin: 0; }</style></div>\n<style>.wp-container-6243b77d04920 .alignleft { float: left; margin-right: 2em; margin-left: 0; }.wp-container-6243b77d04920 .alignright { float: right; margin-left: 2em; margin-right: 0; }.wp-container-6243b77d04920 > * { margin-top: 0; margin-bottom: 0; }.wp-container-6243b77d04920 > * + * { margin-top: var( --wp--style--block-gap );  margin-bottom: 0; }</style>\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:77:\"Three columns with images and text, with vertical spacing for an offset look.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"columns\";i:1;s:8:\"featured\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:3990:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"color\":{\"background\":\"#f8f4e4\"}}} -->\n<div class=\"wp-block-group alignfull has-background\" style=\"background-color:#f8f4e4\"><!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading {\"level\":6,\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h6 class=\"has-text-color\" id=\"ecosystem\" style=\"color:#000000\">ECOSYSTEM</h6>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":\"5vw\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:5vw;line-height:1.1\"><strong>Positive growth.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":\"5px\"} -->\n<div style=\"height:5px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"33.38%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.38%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\"><em>Nature</em>, in the common sense, refers to essences unchanged by man; space, the air, the river, the leaf.&nbsp;<em>Art</em>&nbsp;is applied to the mixture of his will with the same things, as in a house, a canal, a statue, a picture. But his operations taken together are so insignificant, a little chipping, baking, patching, and washing, that in an impression so grand as that of the world on the human mind, they do not vary the result.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33%\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-01.jpg\" alt=\"The sun setting through a dense forest.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"33.62%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.62%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-02.jpg\" alt=\"Wind turbines standing on a grassy plain, against a blue sky.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"67%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:67%\"><!-- wp:image {\"align\":\"right\",\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignright size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-03.jpg\" alt=\"The sun shining over a ridge leading down into the shore. In the distance, a car drives down a road.\" /></figure></div>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"33%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:33%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Undoubtedly we have no questions to ask which are unanswerable. We must trust the perfection of the creation so far, as to believe that whatever curiosity the order of things has awakened in our minds, the order of things can satisfy. Every man\'s condition is a solution in hieroglyphic to those inquiries he would put.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group -->\";}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(834, '_site_transient_timeout_theme_roots', '1648650432', 'no'),
(835, '_site_transient_theme_roots', 'a:1:{s:10:\"teste-vaga\";s:7:\"/themes\";}', 'no'),
(837, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.9.2.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.9.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.9.2\";s:7:\"version\";s:5:\"5.9.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1648648635;s:15:\"version_checked\";s:5:\"5.9.2\";s:12:\"translations\";a:0:{}}', 'no'),
(838, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1648648636;s:7:\"checked\";a:1:{s:10:\"teste-vaga\";s:0:\"\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(839, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1648648636;s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"5.12.1\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.9.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"hello-dolly\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"1.7.2\";s:7:\"updated\";s:19:\"2019-08-13 18:09:11\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/hello-dolly/1.7.2/pt_BR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.2.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.2.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:3:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.7.7\";s:19:\"akismet/akismet.php\";s:5:\"4.2.2\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no'),
(969, '_transient_timeout_global_styles_teste-vaga', '1648656843', 'no'),
(970, '_transient_global_styles_teste-vaga', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_edit_lock', '1648493132:1'),
(4, 8, '_edit_lock', '1648493342:1'),
(5, 2, '_edit_lock', '1648605889:1'),
(6, 10, '_edit_last', '1'),
(7, 10, '_edit_lock', '1648592926:1'),
(8, 19, '_wp_attached_file', '2022/03/asset-header.png'),
(9, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:595;s:6:\"height\";i:522;s:4:\"file\";s:24:\"2022/03/asset-header.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"asset-header-300x263.png\";s:5:\"width\";i:300;s:6:\"height\";i:263;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"asset-header-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(10, 2, '_edit_last', '1'),
(11, 2, 'banner_0_titulo', 'Reembolsos corporativos de forma simples e rápida.<br/> <strong>Como deve ser.</strong>'),
(12, 2, '_banner_0_titulo', 'field_624204170712b'),
(13, 2, 'banner_0_texto_abaixo_do_titulo', 'Acabe com a dor de cabeça da gestão de despesas do dia a dia da sua empresa: pagamentos, reembolsos, compras on-line e gestão do fundo fixo. \r\nControle seus gastos escaneando notas fiscais, acompanhando aprovações, visualizando relatórios e muito mais!'),
(14, 2, '_banner_0_texto_abaixo_do_titulo', 'field_624204200712c'),
(15, 2, 'banner_0_botao_0_texto', 'Peça já sua proposta'),
(16, 2, '_banner_0_botao_0_texto', 'field_6242044f0712e'),
(17, 2, 'banner_0_botao_0_link', '#calcule'),
(18, 2, '_banner_0_botao_0_link', 'field_624204540712f'),
(19, 2, 'banner_0_botao', '1'),
(20, 2, '_banner_0_botao', 'field_624204320712d'),
(21, 2, 'banner_0_texto_abaixo_botao', 'Responderemos <strong>em até 24h.</strong>'),
(22, 2, '_banner_0_texto_abaixo_botao', 'field_6242045a07130'),
(23, 2, 'banner_0_imagem', '19'),
(24, 2, '_banner_0_imagem', 'field_6242046407131'),
(25, 2, 'banner', '1'),
(26, 2, '_banner', 'field_624204050712a'),
(27, 20, 'banner_0_titulo', 'Reembolsos corporativos de forma simples e rápida. \r\n<strong>Como deve ser.</strong>'),
(28, 20, '_banner_0_titulo', 'field_624204170712b'),
(29, 20, 'banner_0_texto_abaixo_do_titulo', 'Acabe com a dor de cabeça da gestão de despesas do dia a dia da sua empresa: pagamentos, reembolsos, compras on-line e gestão do fundo fixo. \r\nControle seus gastos escaneando notas fiscais, acompanhando aprovações, visualizando relatórios e muito mais!'),
(30, 20, '_banner_0_texto_abaixo_do_titulo', 'field_624204200712c'),
(31, 20, 'banner_0_botao_0_texto', 'Peça já sua proposta'),
(32, 20, '_banner_0_botao_0_texto', 'field_6242044f0712e'),
(33, 20, 'banner_0_botao_0_link', '#'),
(34, 20, '_banner_0_botao_0_link', 'field_624204540712f'),
(35, 20, 'banner_0_botao', '1'),
(36, 20, '_banner_0_botao', 'field_624204320712d'),
(37, 20, 'banner_0_texto_abaixo_botao', 'Responderemos em até 24h.'),
(38, 20, '_banner_0_texto_abaixo_botao', 'field_6242045a07130'),
(39, 20, 'banner_0_imagem', '19'),
(40, 20, '_banner_0_imagem', 'field_6242046407131'),
(41, 20, 'banner', '1'),
(42, 20, '_banner', 'field_624204050712a'),
(43, 2, 'teste', 'Acabe com a dor de cabeça da gestão de despesas do dia a dia da sua empresa: pagamentos, reembolsos, compras on-line e gestão do fundo fixo.  Controle seus gastos escaneando notas fiscais, acompanhando aprovações, visualizando relatórios e muito mais!'),
(44, 2, '_teste', 'field_624210290992a'),
(45, 22, 'banner_0_titulo', 'Reembolsos corporativos de forma simples e rápida. \r\n<strong>Como deve ser.</strong>'),
(46, 22, '_banner_0_titulo', 'field_624204170712b'),
(47, 22, 'banner_0_texto_abaixo_do_titulo', 'Acabe com a dor de cabeça da gestão de despesas do dia a dia da sua empresa: pagamentos, reembolsos, compras on-line e gestão do fundo fixo. \r\nControle seus gastos escaneando notas fiscais, acompanhando aprovações, visualizando relatórios e muito mais!'),
(48, 22, '_banner_0_texto_abaixo_do_titulo', 'field_624204200712c'),
(49, 22, 'banner_0_botao_0_texto', 'Peça já sua proposta'),
(50, 22, '_banner_0_botao_0_texto', 'field_6242044f0712e'),
(51, 22, 'banner_0_botao_0_link', '#'),
(52, 22, '_banner_0_botao_0_link', 'field_624204540712f'),
(53, 22, 'banner_0_botao', '1'),
(54, 22, '_banner_0_botao', 'field_624204320712d'),
(55, 22, 'banner_0_texto_abaixo_botao', 'Responderemos em até 24h.'),
(56, 22, '_banner_0_texto_abaixo_botao', 'field_6242045a07130'),
(57, 22, 'banner_0_imagem', '19'),
(58, 22, '_banner_0_imagem', 'field_6242046407131'),
(59, 22, 'banner', '1'),
(60, 22, '_banner', 'field_624204050712a'),
(61, 22, 'teste', 'Acabe com a dor de cabeça da gestão de despesas do dia a dia da sua empresa: pagamentos, reembolsos, compras on-line e gestão do fundo fixo.  Controle seus gastos escaneando notas fiscais, acompanhando aprovações, visualizando relatórios e muito mais!'),
(62, 22, '_teste', 'field_624210290992a'),
(63, 23, 'banner_0_titulo', 'Reembolsos corporativos de forma simples e rápida. \r\n<strong>Como deve ser.</strong>'),
(64, 23, '_banner_0_titulo', 'field_624204170712b'),
(65, 23, 'banner_0_texto_abaixo_do_titulo', 'Acabe com a dor de cabeça da gestão de despesas do dia a dia da sua empresa: pagamentos, reembolsos, compras on-line e gestão do fundo fixo. \r\nControle seus gastos escaneando notas fiscais, acompanhando aprovações, visualizando relatórios e muito mais!'),
(66, 23, '_banner_0_texto_abaixo_do_titulo', 'field_624204200712c'),
(67, 23, 'banner_0_botao_0_texto', 'Peça já sua proposta'),
(68, 23, '_banner_0_botao_0_texto', 'field_6242044f0712e'),
(69, 23, 'banner_0_botao_0_link', '#'),
(70, 23, '_banner_0_botao_0_link', 'field_624204540712f'),
(71, 23, 'banner_0_botao', '1'),
(72, 23, '_banner_0_botao', 'field_624204320712d'),
(73, 23, 'banner_0_texto_abaixo_botao', 'Responderemos <strong>em até 24h.</strong>'),
(74, 23, '_banner_0_texto_abaixo_botao', 'field_6242045a07130'),
(75, 23, 'banner_0_imagem', '19'),
(76, 23, '_banner_0_imagem', 'field_6242046407131'),
(77, 23, 'banner', '1'),
(78, 23, '_banner', 'field_624204050712a'),
(79, 23, 'teste', 'Acabe com a dor de cabeça da gestão de despesas do dia a dia da sua empresa: pagamentos, reembolsos, compras on-line e gestão do fundo fixo.  Controle seus gastos escaneando notas fiscais, acompanhando aprovações, visualizando relatórios e muito mais!'),
(80, 23, '_teste', 'field_624210290992a'),
(81, 24, 'banner_0_titulo', 'Reembolsos corporativos de forma simples e rápida.<br/> \r\n<strong>Como deve ser.</strong>'),
(82, 24, '_banner_0_titulo', 'field_624204170712b'),
(83, 24, 'banner_0_texto_abaixo_do_titulo', 'Acabe com a dor de cabeça da gestão de despesas do dia a dia da sua empresa: pagamentos, reembolsos, compras on-line e gestão do fundo fixo. \r\nControle seus gastos escaneando notas fiscais, acompanhando aprovações, visualizando relatórios e muito mais!'),
(84, 24, '_banner_0_texto_abaixo_do_titulo', 'field_624204200712c'),
(85, 24, 'banner_0_botao_0_texto', 'Peça já sua proposta'),
(86, 24, '_banner_0_botao_0_texto', 'field_6242044f0712e'),
(87, 24, 'banner_0_botao_0_link', '#'),
(88, 24, '_banner_0_botao_0_link', 'field_624204540712f'),
(89, 24, 'banner_0_botao', '1'),
(90, 24, '_banner_0_botao', 'field_624204320712d'),
(91, 24, 'banner_0_texto_abaixo_botao', 'Responderemos <strong>em até 24h.</strong>'),
(92, 24, '_banner_0_texto_abaixo_botao', 'field_6242045a07130'),
(93, 24, 'banner_0_imagem', '19'),
(94, 24, '_banner_0_imagem', 'field_6242046407131'),
(95, 24, 'banner', '1'),
(96, 24, '_banner', 'field_624204050712a'),
(97, 24, 'teste', 'Acabe com a dor de cabeça da gestão de despesas do dia a dia da sua empresa: pagamentos, reembolsos, compras on-line e gestão do fundo fixo.  Controle seus gastos escaneando notas fiscais, acompanhando aprovações, visualizando relatórios e muito mais!'),
(98, 24, '_teste', 'field_624210290992a'),
(99, 32, '_wp_attached_file', '2022/03/asset-seção-3.png'),
(100, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:547;s:6:\"height\";i:628;s:4:\"file\";s:29:\"2022/03/asset-seção-3.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"asset-seção-3-261x300.png\";s:5:\"width\";i:261;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"asset-seção-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(101, 2, 'secao_organizar_0_titulo', '<strong>Organizar reembolsos</strong> da sua empresa nunca foi tão rápido'),
(102, 2, '_secao_organizar_0_titulo', 'field_6242333215134'),
(103, 2, 'secao_organizar_0_texto_abaixo_do_titulo', 'Utilizando BPP Corp, você tem controle total sobre o budget de sua equipe podendo realizar transferências instantâneas para os cartões corporativos dos colaboradores, acompanhar gastos, receber comprovantes e visualizar relatórios que organizam seu reembolso. '),
(104, 2, '_secao_organizar_0_texto_abaixo_do_titulo', 'field_6242334215135'),
(105, 2, 'secao_organizar_0_botao_0_texto_botao', 'Peça já sua proposta'),
(106, 2, '_secao_organizar_0_botao_0_texto_botao', 'field_6242336e15137'),
(107, 2, 'secao_organizar_0_botao_0_link', '#calcule'),
(108, 2, '_secao_organizar_0_botao_0_link', 'field_6242337415138'),
(109, 2, 'secao_organizar_0_botao', '1'),
(110, 2, '_secao_organizar_0_botao', 'field_6242335f15136'),
(111, 2, 'secao_organizar_0_imagem', '32'),
(112, 2, '_secao_organizar_0_imagem', 'field_6242337b15139'),
(113, 2, 'secao_organizar', '1'),
(114, 2, '_secao_organizar', 'field_6242332215133'),
(115, 33, 'banner_0_titulo', 'Reembolsos corporativos de forma simples e rápida.<br/> \r\n<strong>Como deve ser.</strong>'),
(116, 33, '_banner_0_titulo', 'field_624204170712b'),
(117, 33, 'banner_0_texto_abaixo_do_titulo', 'Acabe com a dor de cabeça da gestão de despesas do dia a dia da sua empresa: pagamentos, reembolsos, compras on-line e gestão do fundo fixo. \r\nControle seus gastos escaneando notas fiscais, acompanhando aprovações, visualizando relatórios e muito mais!'),
(118, 33, '_banner_0_texto_abaixo_do_titulo', 'field_624204200712c'),
(119, 33, 'banner_0_botao_0_texto', 'Peça já sua proposta'),
(120, 33, '_banner_0_botao_0_texto', 'field_6242044f0712e'),
(121, 33, 'banner_0_botao_0_link', '#'),
(122, 33, '_banner_0_botao_0_link', 'field_624204540712f'),
(123, 33, 'banner_0_botao', '1'),
(124, 33, '_banner_0_botao', 'field_624204320712d'),
(125, 33, 'banner_0_texto_abaixo_botao', 'Responderemos <strong>em até 24h.</strong>'),
(126, 33, '_banner_0_texto_abaixo_botao', 'field_6242045a07130'),
(127, 33, 'banner_0_imagem', '19'),
(128, 33, '_banner_0_imagem', 'field_6242046407131'),
(129, 33, 'banner', '1'),
(130, 33, '_banner', 'field_624204050712a'),
(131, 33, 'teste', 'Acabe com a dor de cabeça da gestão de despesas do dia a dia da sua empresa: pagamentos, reembolsos, compras on-line e gestão do fundo fixo.  Controle seus gastos escaneando notas fiscais, acompanhando aprovações, visualizando relatórios e muito mais!'),
(132, 33, '_teste', 'field_624210290992a'),
(133, 33, 'secao_organizar_0_titulo', '<strong>Organizar reembolsos</strong> da sua empresa nunca foi tão rápido'),
(134, 33, '_secao_organizar_0_titulo', 'field_6242333215134'),
(135, 33, 'secao_organizar_0_texto_abaixo_do_titulo', 'Utilizando BPP Corp, você tem controle total sobre o budget de sua equipe podendo realizar transferências instantâneas para os cartões corporativos dos colaboradores, acompanhar gastos, receber comprovantes e visualizar relatórios que organizam seu reembolso. '),
(136, 33, '_secao_organizar_0_texto_abaixo_do_titulo', 'field_6242334215135'),
(137, 33, 'secao_organizar_0_botao_0_texto_botao', 'Peça já sua proposta'),
(138, 33, '_secao_organizar_0_botao_0_texto_botao', 'field_6242336e15137'),
(139, 33, 'secao_organizar_0_botao_0_link', ''),
(140, 33, '_secao_organizar_0_botao_0_link', 'field_6242337415138'),
(141, 33, 'secao_organizar_0_botao', '1'),
(142, 33, '_secao_organizar_0_botao', 'field_6242335f15136'),
(143, 33, 'secao_organizar_0_imagem', '32'),
(144, 33, '_secao_organizar_0_imagem', 'field_6242337b15139'),
(145, 33, 'secao_organizar', '1'),
(146, 33, '_secao_organizar', 'field_6242332215133'),
(147, 34, '_edit_lock', '1648557931:1'),
(148, 35, '_wp_attached_file', '2022/03/post-1.png'),
(149, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:410;s:6:\"height\";i:410;s:4:\"file\";s:18:\"2022/03/post-1.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"post-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"post-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(150, 36, '_wp_attached_file', '2022/03/post-2.png'),
(151, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:410;s:6:\"height\";i:410;s:4:\"file\";s:18:\"2022/03/post-2.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"post-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"post-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(152, 37, '_wp_attached_file', '2022/03/post3-.png'),
(153, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:410;s:6:\"height\";i:410;s:4:\"file\";s:18:\"2022/03/post3-.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"post3--300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"post3--150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(155, 34, '_thumbnail_id', '35'),
(156, 34, '_edit_last', '1'),
(158, 39, '_edit_lock', '1648556181:1'),
(160, 39, '_thumbnail_id', '36'),
(161, 39, '_edit_last', '1'),
(163, 41, '_edit_lock', '1648556171:1'),
(165, 41, '_thumbnail_id', '37'),
(166, 41, '_edit_last', '1'),
(168, 1, '_wp_trash_meta_status', 'publish'),
(169, 1, '_wp_trash_meta_time', '1648509263'),
(170, 1, '_wp_desired_post_slug', 'ola-mundo'),
(171, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(181, 41, '_wp_old_slug', 'post-blog-3__trashed'),
(183, 39, '_wp_old_slug', 'post-blog-2__trashed'),
(185, 34, '_wp_old_slug', 'post-blog-1__trashed'),
(197, 34, '_encloseme', '1'),
(198, 47, '_wp_attached_file', '2022/03/facebook.png'),
(199, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:4:\"file\";s:20:\"2022/03/facebook.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(200, 48, '_wp_attached_file', '2022/03/instagram.png'),
(201, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:4:\"file\";s:21:\"2022/03/instagram.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(202, 49, '_wp_attached_file', '2022/03/youtube.png'),
(203, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:4:\"file\";s:19:\"2022/03/youtube.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(204, 50, '_wp_attached_file', '2022/03/twitter.png'),
(205, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:4:\"file\";s:19:\"2022/03/twitter.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(206, 51, '_wp_attached_file', '2022/03/linkedin.png'),
(207, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:4:\"file\";s:20:\"2022/03/linkedin.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(208, 2, 'rodape_redes_sociais_0_imagem', '48'),
(209, 2, '_rodape_redes_sociais_0_imagem', 'field_6242ffa534899'),
(210, 2, 'rodape_redes_sociais_0_link', '#'),
(211, 2, '_rodape_redes_sociais_0_link', 'field_6242ffaf3489a'),
(212, 2, 'rodape_redes_sociais_1_imagem', '51'),
(213, 2, '_rodape_redes_sociais_1_imagem', 'field_6242ffa534899'),
(214, 2, 'rodape_redes_sociais_1_link', '#'),
(215, 2, '_rodape_redes_sociais_1_link', 'field_6242ffaf3489a'),
(216, 2, 'rodape_redes_sociais_2_imagem', '50'),
(217, 2, '_rodape_redes_sociais_2_imagem', 'field_6242ffa534899'),
(218, 2, 'rodape_redes_sociais_2_link', '#'),
(219, 2, '_rodape_redes_sociais_2_link', 'field_6242ffaf3489a'),
(220, 2, 'rodape_redes_sociais_3_imagem', '47'),
(221, 2, '_rodape_redes_sociais_3_imagem', 'field_6242ffa534899'),
(222, 2, 'rodape_redes_sociais_3_link', '#'),
(223, 2, '_rodape_redes_sociais_3_link', 'field_6242ffaf3489a'),
(224, 2, 'rodape_redes_sociais_4_imagem', '49'),
(225, 2, '_rodape_redes_sociais_4_imagem', 'field_6242ffa534899'),
(226, 2, 'rodape_redes_sociais_4_link', '#'),
(227, 2, '_rodape_redes_sociais_4_link', 'field_6242ffaf3489a'),
(228, 2, 'rodape_redes_sociais', '5'),
(229, 2, '_rodape_redes_sociais', 'field_6242ff8534898'),
(230, 52, 'banner_0_titulo', 'Reembolsos corporativos de forma simples e rápida.<br/> \r\n<strong>Como deve ser.</strong>'),
(231, 52, '_banner_0_titulo', 'field_624204170712b'),
(232, 52, 'banner_0_texto_abaixo_do_titulo', 'Acabe com a dor de cabeça da gestão de despesas do dia a dia da sua empresa: pagamentos, reembolsos, compras on-line e gestão do fundo fixo. \r\nControle seus gastos escaneando notas fiscais, acompanhando aprovações, visualizando relatórios e muito mais!'),
(233, 52, '_banner_0_texto_abaixo_do_titulo', 'field_624204200712c'),
(234, 52, 'banner_0_botao_0_texto', 'Peça já sua proposta'),
(235, 52, '_banner_0_botao_0_texto', 'field_6242044f0712e'),
(236, 52, 'banner_0_botao_0_link', '#'),
(237, 52, '_banner_0_botao_0_link', 'field_624204540712f'),
(238, 52, 'banner_0_botao', '1'),
(239, 52, '_banner_0_botao', 'field_624204320712d'),
(240, 52, 'banner_0_texto_abaixo_botao', 'Responderemos <strong>em até 24h.</strong>'),
(241, 52, '_banner_0_texto_abaixo_botao', 'field_6242045a07130'),
(242, 52, 'banner_0_imagem', '19'),
(243, 52, '_banner_0_imagem', 'field_6242046407131'),
(244, 52, 'banner', '1'),
(245, 52, '_banner', 'field_624204050712a'),
(246, 52, 'teste', 'Acabe com a dor de cabeça da gestão de despesas do dia a dia da sua empresa: pagamentos, reembolsos, compras on-line e gestão do fundo fixo.  Controle seus gastos escaneando notas fiscais, acompanhando aprovações, visualizando relatórios e muito mais!'),
(247, 52, '_teste', 'field_624210290992a'),
(248, 52, 'secao_organizar_0_titulo', '<strong>Organizar reembolsos</strong> da sua empresa nunca foi tão rápido'),
(249, 52, '_secao_organizar_0_titulo', 'field_6242333215134'),
(250, 52, 'secao_organizar_0_texto_abaixo_do_titulo', 'Utilizando BPP Corp, você tem controle total sobre o budget de sua equipe podendo realizar transferências instantâneas para os cartões corporativos dos colaboradores, acompanhar gastos, receber comprovantes e visualizar relatórios que organizam seu reembolso. '),
(251, 52, '_secao_organizar_0_texto_abaixo_do_titulo', 'field_6242334215135'),
(252, 52, 'secao_organizar_0_botao_0_texto_botao', 'Peça já sua proposta'),
(253, 52, '_secao_organizar_0_botao_0_texto_botao', 'field_6242336e15137'),
(254, 52, 'secao_organizar_0_botao_0_link', '#'),
(255, 52, '_secao_organizar_0_botao_0_link', 'field_6242337415138'),
(256, 52, 'secao_organizar_0_botao', '1'),
(257, 52, '_secao_organizar_0_botao', 'field_6242335f15136'),
(258, 52, 'secao_organizar_0_imagem', '32'),
(259, 52, '_secao_organizar_0_imagem', 'field_6242337b15139'),
(260, 52, 'secao_organizar', '1'),
(261, 52, '_secao_organizar', 'field_6242332215133'),
(262, 52, 'rodape_redes_sociais_0_imagem', '48'),
(263, 52, '_rodape_redes_sociais_0_imagem', 'field_6242ffa534899'),
(264, 52, 'rodape_redes_sociais_0_link', '#'),
(265, 52, '_rodape_redes_sociais_0_link', 'field_6242ffaf3489a'),
(266, 52, 'rodape_redes_sociais_1_imagem', '51'),
(267, 52, '_rodape_redes_sociais_1_imagem', 'field_6242ffa534899'),
(268, 52, 'rodape_redes_sociais_1_link', '#'),
(269, 52, '_rodape_redes_sociais_1_link', 'field_6242ffaf3489a'),
(270, 52, 'rodape_redes_sociais_2_imagem', '50'),
(271, 52, '_rodape_redes_sociais_2_imagem', 'field_6242ffa534899'),
(272, 52, 'rodape_redes_sociais_2_link', '#'),
(273, 52, '_rodape_redes_sociais_2_link', 'field_6242ffaf3489a'),
(274, 52, 'rodape_redes_sociais_3_imagem', '47'),
(275, 52, '_rodape_redes_sociais_3_imagem', 'field_6242ffa534899'),
(276, 52, 'rodape_redes_sociais_3_link', '#'),
(277, 52, '_rodape_redes_sociais_3_link', 'field_6242ffaf3489a'),
(278, 52, 'rodape_redes_sociais_4_imagem', '49'),
(279, 52, '_rodape_redes_sociais_4_imagem', 'field_6242ffa534899'),
(280, 52, 'rodape_redes_sociais_4_link', '#'),
(281, 52, '_rodape_redes_sociais_4_link', 'field_6242ffaf3489a'),
(282, 52, 'rodape_redes_sociais', '5'),
(283, 52, '_rodape_redes_sociais', 'field_6242ff8534898'),
(284, 60, '_wp_attached_file', '2022/03/20200109_BPP_CORP_LP-ICONS_CARTAO-PRE-PAGO-1.png'),
(285, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:156;s:6:\"height\";i:100;s:4:\"file\";s:56:\"2022/03/20200109_BPP_CORP_LP-ICONS_CARTAO-PRE-PAGO-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:56:\"20200109_BPP_CORP_LP-ICONS_CARTAO-PRE-PAGO-1-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(286, 61, '_wp_attached_file', '2022/03/20200109_BPP_CORP_LP-ICONS_CONTA-DIGITAL-1.png'),
(287, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:154;s:6:\"height\";i:100;s:4:\"file\";s:54:\"2022/03/20200109_BPP_CORP_LP-ICONS_CONTA-DIGITAL-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:54:\"20200109_BPP_CORP_LP-ICONS_CONTA-DIGITAL-1-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(288, 62, '_wp_attached_file', '2022/03/20200109_BPP_CORP_LP-ICONS_FOTO-COMPROVANTE-1.png'),
(289, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:154;s:6:\"height\";i:100;s:4:\"file\";s:57:\"2022/03/20200109_BPP_CORP_LP-ICONS_FOTO-COMPROVANTE-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:57:\"20200109_BPP_CORP_LP-ICONS_FOTO-COMPROVANTE-1-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(290, 63, '_wp_attached_file', '2022/03/20200109_BPP_CORP_LP-ICONS_ORGANIZE-1.png'),
(291, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:156;s:6:\"height\";i:100;s:4:\"file\";s:49:\"2022/03/20200109_BPP_CORP_LP-ICONS_ORGANIZE-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"20200109_BPP_CORP_LP-ICONS_ORGANIZE-1-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(292, 64, '_wp_attached_file', '2022/03/20200109_BPP_CORP_LP-ICONS_RELATORIO-2.png'),
(293, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:154;s:6:\"height\";i:100;s:4:\"file\";s:50:\"2022/03/20200109_BPP_CORP_LP-ICONS_RELATORIO-2.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"20200109_BPP_CORP_LP-ICONS_RELATORIO-2-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(294, 65, '_wp_attached_file', '2022/03/Group-11.png'),
(295, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:156;s:6:\"height\";i:100;s:4:\"file\";s:20:\"2022/03/Group-11.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Group-11-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(296, 66, '_wp_attached_file', '2022/03/Group-12.png'),
(297, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:154;s:6:\"height\";i:100;s:4:\"file\";s:20:\"2022/03/Group-12.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Group-12-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(298, 2, 'secao_plataforma_0_titulo', 'A plataforma que ajuda a <strong>reduzir os gastos</strong> do dia a dia'),
(299, 2, '_secao_plataforma_0_titulo', 'field_62433e0a4c2ae'),
(300, 2, 'secao_plataforma_0_subtitulo', 'Simplifique a gestão das despesas, evitando a perda de tempo com comprovantes e planilhas, reduzindo custos e aumentando os resultados da sua empresa.'),
(301, 2, '_secao_plataforma_0_subtitulo', 'field_62433e104c2af'),
(302, 2, 'secao_plataforma_0_beneficios_0_imagem', '65'),
(303, 2, '_secao_plataforma_0_beneficios_0_imagem', 'field_62433e414c2b1'),
(304, 2, 'secao_plataforma_0_beneficios_0_titulo', 'Mais rapidez na gestão das suas despesas'),
(305, 2, '_secao_plataforma_0_beneficios_0_titulo', 'field_62433e5d4c2b2'),
(306, 2, 'secao_plataforma_0_beneficios_0_conteudo', 'Para que seu negócio cresça de maneira inteligente e rápida, substitua os processos demorados de reembolsos, aprovações, criação de relatórios e etc. por uma plataforma que te oferece tudo isso de forma rápida e digital. '),
(307, 2, '_secao_plataforma_0_beneficios_0_conteudo', 'field_62433e634c2b3'),
(308, 2, 'secao_plataforma_0_beneficios_1_imagem', '64'),
(309, 2, '_secao_plataforma_0_beneficios_1_imagem', 'field_62433e414c2b1'),
(310, 2, 'secao_plataforma_0_beneficios_1_titulo', 'Os relatórios que você precisa em um único lugar'),
(311, 2, '_secao_plataforma_0_beneficios_1_titulo', 'field_62433e5d4c2b2'),
(312, 2, 'secao_plataforma_0_beneficios_1_conteudo', 'Encontre relatórios detalhados sobre as utilizações de cada cartão corporativo cadastrado em sua equipe. Confira o saldo de cada cartão, redistribua valores, faça transferências instantâneas e não perca tempo com formulários e planilhas. '),
(313, 2, '_secao_plataforma_0_beneficios_1_conteudo', 'field_62433e634c2b3'),
(314, 2, 'secao_plataforma_0_beneficios_2_imagem', '66'),
(315, 2, '_secao_plataforma_0_beneficios_2_imagem', 'field_62433e414c2b1'),
(316, 2, 'secao_plataforma_0_beneficios_2_titulo', 'Organize todos os seus comprovantes'),
(317, 2, '_secao_plataforma_0_beneficios_2_titulo', 'field_62433e5d4c2b2'),
(318, 2, 'secao_plataforma_0_beneficios_2_conteudo', 'Recebendo os comprovantes de gastos de seus colaboradores através da plataforma, você não precisa mais guardar comprovantes e notas fiscais em lugar nenhum. Os gastos podem ser classificados por tipo ou por projeto, da forma que você precisar.'),
(319, 2, '_secao_plataforma_0_beneficios_2_conteudo', 'field_62433e634c2b3'),
(320, 2, 'secao_plataforma_0_beneficios_3_imagem', '62'),
(321, 2, '_secao_plataforma_0_beneficios_3_imagem', 'field_62433e414c2b1'),
(322, 2, 'secao_plataforma_0_beneficios_3_titulo', 'Apresente suas despesas com um só clique'),
(323, 2, '_secao_plataforma_0_beneficios_3_titulo', 'field_62433e5d4c2b2'),
(324, 2, 'secao_plataforma_0_beneficios_3_conteudo', 'Enviar seus comprovantes é mais simples do que você imagina. Basta que o colaborador tire uma foto do cupom fiscal com seu smartphone através do aplicativo BPP Card. O gestor das despesas pode aprovar ou reprovar aquele gasto através do App.'),
(325, 2, '_secao_plataforma_0_beneficios_3_conteudo', 'field_62433e634c2b3'),
(326, 2, 'secao_plataforma_0_beneficios_4_imagem', '60'),
(327, 2, '_secao_plataforma_0_beneficios_4_imagem', 'field_62433e414c2b1'),
(328, 2, 'secao_plataforma_0_beneficios_4_titulo', 'Controle seus gastos com cartões pré-pagos VISA'),
(329, 2, '_secao_plataforma_0_beneficios_4_titulo', 'field_62433e5d4c2b2'),
(330, 2, 'secao_plataforma_0_beneficios_4_conteudo', 'Os cartões pré-pago BPP Corp são fáceis de controlar: o colaborador só gasta o que a empresa disponibiliza para compras online ou em lojas físicas. Conte com cartões VISA aceitos em mais de 30 milhões de estabelecimentos no mundo todo, incluindo sites e aplicativos!'),
(331, 2, '_secao_plataforma_0_beneficios_4_conteudo', 'field_62433e634c2b3'),
(332, 2, 'secao_plataforma_0_beneficios_5_imagem', '61'),
(333, 2, '_secao_plataforma_0_beneficios_5_imagem', 'field_62433e414c2b1'),
(334, 2, 'secao_plataforma_0_beneficios_5_titulo', 'Conta digital gratuita e exclusiva para sua empresa'),
(335, 2, '_secao_plataforma_0_beneficios_5_titulo', 'field_62433e5d4c2b2'),
(336, 2, 'secao_plataforma_0_beneficios_5_conteudo', 'Oferecemos uma conta digital gratuita especialmente para gerenciar despesas.  Transfira o saldo de sua conta para os cartões de maneira instantânea, sempre livre de taxas de manutenção ou de juros.'),
(337, 2, '_secao_plataforma_0_beneficios_5_conteudo', 'field_62433e634c2b3'),
(338, 2, 'secao_plataforma_0_beneficios', '6'),
(339, 2, '_secao_plataforma_0_beneficios', 'field_62433e364c2b0'),
(340, 2, 'secao_plataforma', '1'),
(341, 2, '_secao_plataforma', 'field_62433dec4c2ad'),
(342, 67, 'banner_0_titulo', 'Reembolsos corporativos de forma simples e rápida.<br/> <strong>Como deve ser.</strong>'),
(343, 67, '_banner_0_titulo', 'field_624204170712b'),
(344, 67, 'banner_0_texto_abaixo_do_titulo', 'Acabe com a dor de cabeça da gestão de despesas do dia a dia da sua empresa: pagamentos, reembolsos, compras on-line e gestão do fundo fixo. \r\nControle seus gastos escaneando notas fiscais, acompanhando aprovações, visualizando relatórios e muito mais!'),
(345, 67, '_banner_0_texto_abaixo_do_titulo', 'field_624204200712c'),
(346, 67, 'banner_0_botao_0_texto', 'Peça já sua proposta'),
(347, 67, '_banner_0_botao_0_texto', 'field_6242044f0712e'),
(348, 67, 'banner_0_botao_0_link', '#'),
(349, 67, '_banner_0_botao_0_link', 'field_624204540712f'),
(350, 67, 'banner_0_botao', '1'),
(351, 67, '_banner_0_botao', 'field_624204320712d'),
(352, 67, 'banner_0_texto_abaixo_botao', 'Responderemos <strong>em até 24h.</strong>'),
(353, 67, '_banner_0_texto_abaixo_botao', 'field_6242045a07130'),
(354, 67, 'banner_0_imagem', '19'),
(355, 67, '_banner_0_imagem', 'field_6242046407131'),
(356, 67, 'banner', '1'),
(357, 67, '_banner', 'field_624204050712a'),
(358, 67, 'teste', 'Acabe com a dor de cabeça da gestão de despesas do dia a dia da sua empresa: pagamentos, reembolsos, compras on-line e gestão do fundo fixo.  Controle seus gastos escaneando notas fiscais, acompanhando aprovações, visualizando relatórios e muito mais!'),
(359, 67, '_teste', 'field_624210290992a'),
(360, 67, 'secao_organizar_0_titulo', '<strong>Organizar reembolsos</strong> da sua empresa nunca foi tão rápido'),
(361, 67, '_secao_organizar_0_titulo', 'field_6242333215134'),
(362, 67, 'secao_organizar_0_texto_abaixo_do_titulo', 'Utilizando BPP Corp, você tem controle total sobre o budget de sua equipe podendo realizar transferências instantâneas para os cartões corporativos dos colaboradores, acompanhar gastos, receber comprovantes e visualizar relatórios que organizam seu reembolso. '),
(363, 67, '_secao_organizar_0_texto_abaixo_do_titulo', 'field_6242334215135'),
(364, 67, 'secao_organizar_0_botao_0_texto_botao', 'Peça já sua proposta'),
(365, 67, '_secao_organizar_0_botao_0_texto_botao', 'field_6242336e15137'),
(366, 67, 'secao_organizar_0_botao_0_link', '#'),
(367, 67, '_secao_organizar_0_botao_0_link', 'field_6242337415138'),
(368, 67, 'secao_organizar_0_botao', '1'),
(369, 67, '_secao_organizar_0_botao', 'field_6242335f15136'),
(370, 67, 'secao_organizar_0_imagem', '32'),
(371, 67, '_secao_organizar_0_imagem', 'field_6242337b15139'),
(372, 67, 'secao_organizar', '1'),
(373, 67, '_secao_organizar', 'field_6242332215133'),
(374, 67, 'rodape_redes_sociais_0_imagem', '48'),
(375, 67, '_rodape_redes_sociais_0_imagem', 'field_6242ffa534899'),
(376, 67, 'rodape_redes_sociais_0_link', '#'),
(377, 67, '_rodape_redes_sociais_0_link', 'field_6242ffaf3489a'),
(378, 67, 'rodape_redes_sociais_1_imagem', '51'),
(379, 67, '_rodape_redes_sociais_1_imagem', 'field_6242ffa534899'),
(380, 67, 'rodape_redes_sociais_1_link', '#'),
(381, 67, '_rodape_redes_sociais_1_link', 'field_6242ffaf3489a'),
(382, 67, 'rodape_redes_sociais_2_imagem', '50'),
(383, 67, '_rodape_redes_sociais_2_imagem', 'field_6242ffa534899'),
(384, 67, 'rodape_redes_sociais_2_link', '#'),
(385, 67, '_rodape_redes_sociais_2_link', 'field_6242ffaf3489a'),
(386, 67, 'rodape_redes_sociais_3_imagem', '47'),
(387, 67, '_rodape_redes_sociais_3_imagem', 'field_6242ffa534899'),
(388, 67, 'rodape_redes_sociais_3_link', '#'),
(389, 67, '_rodape_redes_sociais_3_link', 'field_6242ffaf3489a'),
(390, 67, 'rodape_redes_sociais_4_imagem', '49'),
(391, 67, '_rodape_redes_sociais_4_imagem', 'field_6242ffa534899'),
(392, 67, 'rodape_redes_sociais_4_link', '#'),
(393, 67, '_rodape_redes_sociais_4_link', 'field_6242ffaf3489a'),
(394, 67, 'rodape_redes_sociais', '5'),
(395, 67, '_rodape_redes_sociais', 'field_6242ff8534898'),
(396, 67, 'secao_plataforma_0_titulo', 'A plataforma que ajuda a <br>reduzir os gastos</br> do dia a dia'),
(397, 67, '_secao_plataforma_0_titulo', 'field_62433e0a4c2ae'),
(398, 67, 'secao_plataforma_0_subtitulo', 'Simplifique a gestão das despesas, evitando a perda de tempo com comprovantes e planilhas, reduzindo custos e aumentando os resultados da sua empresa.'),
(399, 67, '_secao_plataforma_0_subtitulo', 'field_62433e104c2af'),
(400, 67, 'secao_plataforma_0_beneficios_0_imagem', '65'),
(401, 67, '_secao_plataforma_0_beneficios_0_imagem', 'field_62433e414c2b1'),
(402, 67, 'secao_plataforma_0_beneficios_0_titulo', 'Mais rapidez na gestão das suas despesas'),
(403, 67, '_secao_plataforma_0_beneficios_0_titulo', 'field_62433e5d4c2b2'),
(404, 67, 'secao_plataforma_0_beneficios_0_conteudo', 'Para que seu negócio cresça de maneira inteligente e rápida, substitua os processos demorados de reembolsos, aprovações, criação de relatórios e etc. por uma plataforma que te oferece tudo isso de forma rápida e digital. '),
(405, 67, '_secao_plataforma_0_beneficios_0_conteudo', 'field_62433e634c2b3'),
(406, 67, 'secao_plataforma_0_beneficios_1_imagem', '64'),
(407, 67, '_secao_plataforma_0_beneficios_1_imagem', 'field_62433e414c2b1'),
(408, 67, 'secao_plataforma_0_beneficios_1_titulo', 'Os relatórios que você precisa em um único lugar'),
(409, 67, '_secao_plataforma_0_beneficios_1_titulo', 'field_62433e5d4c2b2'),
(410, 67, 'secao_plataforma_0_beneficios_1_conteudo', 'Encontre relatórios detalhados sobre as utilizações de cada cartão corporativo cadastrado em sua equipe. Confira o saldo de cada cartão, redistribua valores, faça transferências instantâneas e não perca tempo com formulários e planilhas. '),
(411, 67, '_secao_plataforma_0_beneficios_1_conteudo', 'field_62433e634c2b3'),
(412, 67, 'secao_plataforma_0_beneficios_2_imagem', '66'),
(413, 67, '_secao_plataforma_0_beneficios_2_imagem', 'field_62433e414c2b1'),
(414, 67, 'secao_plataforma_0_beneficios_2_titulo', 'Organize todos os seus comprovantes'),
(415, 67, '_secao_plataforma_0_beneficios_2_titulo', 'field_62433e5d4c2b2'),
(416, 67, 'secao_plataforma_0_beneficios_2_conteudo', 'Recebendo os comprovantes de gastos de seus colaboradores através da plataforma, você não precisa mais guardar comprovantes e notas fiscais em lugar nenhum. Os gastos podem ser classificados por tipo ou por projeto, da forma que você precisar.'),
(417, 67, '_secao_plataforma_0_beneficios_2_conteudo', 'field_62433e634c2b3'),
(418, 67, 'secao_plataforma_0_beneficios_3_imagem', '62'),
(419, 67, '_secao_plataforma_0_beneficios_3_imagem', 'field_62433e414c2b1'),
(420, 67, 'secao_plataforma_0_beneficios_3_titulo', 'Apresente suas despesas com um só clique'),
(421, 67, '_secao_plataforma_0_beneficios_3_titulo', 'field_62433e5d4c2b2'),
(422, 67, 'secao_plataforma_0_beneficios_3_conteudo', 'Enviar seus comprovantes é mais simples do que você imagina. Basta que o colaborador tire uma foto do cupom fiscal com seu smartphone através do aplicativo BPP Card. O gestor das despesas pode aprovar ou reprovar aquele gasto através do App.'),
(423, 67, '_secao_plataforma_0_beneficios_3_conteudo', 'field_62433e634c2b3'),
(424, 67, 'secao_plataforma_0_beneficios_4_imagem', '60'),
(425, 67, '_secao_plataforma_0_beneficios_4_imagem', 'field_62433e414c2b1'),
(426, 67, 'secao_plataforma_0_beneficios_4_titulo', 'Controle seus gastos com cartões pré-pagos VISA'),
(427, 67, '_secao_plataforma_0_beneficios_4_titulo', 'field_62433e5d4c2b2'),
(428, 67, 'secao_plataforma_0_beneficios_4_conteudo', 'Os cartões pré-pago BPP Corp são fáceis de controlar: o colaborador só gasta o que a empresa disponibiliza para compras online ou em lojas físicas. Conte com cartões VISA aceitos em mais de 30 milhões de estabelecimentos no mundo todo, incluindo sites e aplicativos!'),
(429, 67, '_secao_plataforma_0_beneficios_4_conteudo', 'field_62433e634c2b3'),
(430, 67, 'secao_plataforma_0_beneficios_5_imagem', '61'),
(431, 67, '_secao_plataforma_0_beneficios_5_imagem', 'field_62433e414c2b1'),
(432, 67, 'secao_plataforma_0_beneficios_5_titulo', 'Conta digital gratuita e exclusiva para sua empresa'),
(433, 67, '_secao_plataforma_0_beneficios_5_titulo', 'field_62433e5d4c2b2'),
(434, 67, 'secao_plataforma_0_beneficios_5_conteudo', 'Oferecemos uma conta digital gratuita especialmente para gerenciar despesas.  Transfira o saldo de sua conta para os cartões de maneira instantânea, sempre livre de taxas de manutenção ou de juros.'),
(435, 67, '_secao_plataforma_0_beneficios_5_conteudo', 'field_62433e634c2b3'),
(436, 67, 'secao_plataforma_0_beneficios', '6'),
(437, 67, '_secao_plataforma_0_beneficios', 'field_62433e364c2b0'),
(438, 67, 'secao_plataforma', '1'),
(439, 67, '_secao_plataforma', 'field_62433dec4c2ad'),
(440, 68, 'banner_0_titulo', 'Reembolsos corporativos de forma simples e rápida.<br/> <strong>Como deve ser.</strong>'),
(441, 68, '_banner_0_titulo', 'field_624204170712b'),
(442, 68, 'banner_0_texto_abaixo_do_titulo', 'Acabe com a dor de cabeça da gestão de despesas do dia a dia da sua empresa: pagamentos, reembolsos, compras on-line e gestão do fundo fixo. \r\nControle seus gastos escaneando notas fiscais, acompanhando aprovações, visualizando relatórios e muito mais!'),
(443, 68, '_banner_0_texto_abaixo_do_titulo', 'field_624204200712c'),
(444, 68, 'banner_0_botao_0_texto', 'Peça já sua proposta'),
(445, 68, '_banner_0_botao_0_texto', 'field_6242044f0712e'),
(446, 68, 'banner_0_botao_0_link', '#'),
(447, 68, '_banner_0_botao_0_link', 'field_624204540712f'),
(448, 68, 'banner_0_botao', '1'),
(449, 68, '_banner_0_botao', 'field_624204320712d'),
(450, 68, 'banner_0_texto_abaixo_botao', 'Responderemos <strong>em até 24h.</strong>'),
(451, 68, '_banner_0_texto_abaixo_botao', 'field_6242045a07130'),
(452, 68, 'banner_0_imagem', '19'),
(453, 68, '_banner_0_imagem', 'field_6242046407131'),
(454, 68, 'banner', '1'),
(455, 68, '_banner', 'field_624204050712a'),
(456, 68, 'teste', 'Acabe com a dor de cabeça da gestão de despesas do dia a dia da sua empresa: pagamentos, reembolsos, compras on-line e gestão do fundo fixo.  Controle seus gastos escaneando notas fiscais, acompanhando aprovações, visualizando relatórios e muito mais!'),
(457, 68, '_teste', 'field_624210290992a'),
(458, 68, 'secao_organizar_0_titulo', '<strong>Organizar reembolsos</strong> da sua empresa nunca foi tão rápido'),
(459, 68, '_secao_organizar_0_titulo', 'field_6242333215134'),
(460, 68, 'secao_organizar_0_texto_abaixo_do_titulo', 'Utilizando BPP Corp, você tem controle total sobre o budget de sua equipe podendo realizar transferências instantâneas para os cartões corporativos dos colaboradores, acompanhar gastos, receber comprovantes e visualizar relatórios que organizam seu reembolso. '),
(461, 68, '_secao_organizar_0_texto_abaixo_do_titulo', 'field_6242334215135'),
(462, 68, 'secao_organizar_0_botao_0_texto_botao', 'Peça já sua proposta'),
(463, 68, '_secao_organizar_0_botao_0_texto_botao', 'field_6242336e15137'),
(464, 68, 'secao_organizar_0_botao_0_link', '#'),
(465, 68, '_secao_organizar_0_botao_0_link', 'field_6242337415138'),
(466, 68, 'secao_organizar_0_botao', '1'),
(467, 68, '_secao_organizar_0_botao', 'field_6242335f15136'),
(468, 68, 'secao_organizar_0_imagem', '32'),
(469, 68, '_secao_organizar_0_imagem', 'field_6242337b15139'),
(470, 68, 'secao_organizar', '1'),
(471, 68, '_secao_organizar', 'field_6242332215133'),
(472, 68, 'rodape_redes_sociais_0_imagem', '48'),
(473, 68, '_rodape_redes_sociais_0_imagem', 'field_6242ffa534899'),
(474, 68, 'rodape_redes_sociais_0_link', '#'),
(475, 68, '_rodape_redes_sociais_0_link', 'field_6242ffaf3489a'),
(476, 68, 'rodape_redes_sociais_1_imagem', '51'),
(477, 68, '_rodape_redes_sociais_1_imagem', 'field_6242ffa534899'),
(478, 68, 'rodape_redes_sociais_1_link', '#'),
(479, 68, '_rodape_redes_sociais_1_link', 'field_6242ffaf3489a'),
(480, 68, 'rodape_redes_sociais_2_imagem', '50'),
(481, 68, '_rodape_redes_sociais_2_imagem', 'field_6242ffa534899'),
(482, 68, 'rodape_redes_sociais_2_link', '#'),
(483, 68, '_rodape_redes_sociais_2_link', 'field_6242ffaf3489a'),
(484, 68, 'rodape_redes_sociais_3_imagem', '47'),
(485, 68, '_rodape_redes_sociais_3_imagem', 'field_6242ffa534899'),
(486, 68, 'rodape_redes_sociais_3_link', '#'),
(487, 68, '_rodape_redes_sociais_3_link', 'field_6242ffaf3489a'),
(488, 68, 'rodape_redes_sociais_4_imagem', '49'),
(489, 68, '_rodape_redes_sociais_4_imagem', 'field_6242ffa534899'),
(490, 68, 'rodape_redes_sociais_4_link', '#'),
(491, 68, '_rodape_redes_sociais_4_link', 'field_6242ffaf3489a'),
(492, 68, 'rodape_redes_sociais', '5'),
(493, 68, '_rodape_redes_sociais', 'field_6242ff8534898'),
(494, 68, 'secao_plataforma_0_titulo', 'A plataforma que ajuda a <strong>reduzir os gastos</strong> do dia a dia'),
(495, 68, '_secao_plataforma_0_titulo', 'field_62433e0a4c2ae'),
(496, 68, 'secao_plataforma_0_subtitulo', 'Simplifique a gestão das despesas, evitando a perda de tempo com comprovantes e planilhas, reduzindo custos e aumentando os resultados da sua empresa.'),
(497, 68, '_secao_plataforma_0_subtitulo', 'field_62433e104c2af'),
(498, 68, 'secao_plataforma_0_beneficios_0_imagem', '65'),
(499, 68, '_secao_plataforma_0_beneficios_0_imagem', 'field_62433e414c2b1'),
(500, 68, 'secao_plataforma_0_beneficios_0_titulo', 'Mais rapidez na gestão das suas despesas'),
(501, 68, '_secao_plataforma_0_beneficios_0_titulo', 'field_62433e5d4c2b2'),
(502, 68, 'secao_plataforma_0_beneficios_0_conteudo', 'Para que seu negócio cresça de maneira inteligente e rápida, substitua os processos demorados de reembolsos, aprovações, criação de relatórios e etc. por uma plataforma que te oferece tudo isso de forma rápida e digital. '),
(503, 68, '_secao_plataforma_0_beneficios_0_conteudo', 'field_62433e634c2b3'),
(504, 68, 'secao_plataforma_0_beneficios_1_imagem', '64'),
(505, 68, '_secao_plataforma_0_beneficios_1_imagem', 'field_62433e414c2b1'),
(506, 68, 'secao_plataforma_0_beneficios_1_titulo', 'Os relatórios que você precisa em um único lugar'),
(507, 68, '_secao_plataforma_0_beneficios_1_titulo', 'field_62433e5d4c2b2'),
(508, 68, 'secao_plataforma_0_beneficios_1_conteudo', 'Encontre relatórios detalhados sobre as utilizações de cada cartão corporativo cadastrado em sua equipe. Confira o saldo de cada cartão, redistribua valores, faça transferências instantâneas e não perca tempo com formulários e planilhas. '),
(509, 68, '_secao_plataforma_0_beneficios_1_conteudo', 'field_62433e634c2b3'),
(510, 68, 'secao_plataforma_0_beneficios_2_imagem', '66'),
(511, 68, '_secao_plataforma_0_beneficios_2_imagem', 'field_62433e414c2b1'),
(512, 68, 'secao_plataforma_0_beneficios_2_titulo', 'Organize todos os seus comprovantes'),
(513, 68, '_secao_plataforma_0_beneficios_2_titulo', 'field_62433e5d4c2b2'),
(514, 68, 'secao_plataforma_0_beneficios_2_conteudo', 'Recebendo os comprovantes de gastos de seus colaboradores através da plataforma, você não precisa mais guardar comprovantes e notas fiscais em lugar nenhum. Os gastos podem ser classificados por tipo ou por projeto, da forma que você precisar.'),
(515, 68, '_secao_plataforma_0_beneficios_2_conteudo', 'field_62433e634c2b3'),
(516, 68, 'secao_plataforma_0_beneficios_3_imagem', '62'),
(517, 68, '_secao_plataforma_0_beneficios_3_imagem', 'field_62433e414c2b1'),
(518, 68, 'secao_plataforma_0_beneficios_3_titulo', 'Apresente suas despesas com um só clique'),
(519, 68, '_secao_plataforma_0_beneficios_3_titulo', 'field_62433e5d4c2b2'),
(520, 68, 'secao_plataforma_0_beneficios_3_conteudo', 'Enviar seus comprovantes é mais simples do que você imagina. Basta que o colaborador tire uma foto do cupom fiscal com seu smartphone através do aplicativo BPP Card. O gestor das despesas pode aprovar ou reprovar aquele gasto através do App.'),
(521, 68, '_secao_plataforma_0_beneficios_3_conteudo', 'field_62433e634c2b3'),
(522, 68, 'secao_plataforma_0_beneficios_4_imagem', '60'),
(523, 68, '_secao_plataforma_0_beneficios_4_imagem', 'field_62433e414c2b1'),
(524, 68, 'secao_plataforma_0_beneficios_4_titulo', 'Controle seus gastos com cartões pré-pagos VISA'),
(525, 68, '_secao_plataforma_0_beneficios_4_titulo', 'field_62433e5d4c2b2'),
(526, 68, 'secao_plataforma_0_beneficios_4_conteudo', 'Os cartões pré-pago BPP Corp são fáceis de controlar: o colaborador só gasta o que a empresa disponibiliza para compras online ou em lojas físicas. Conte com cartões VISA aceitos em mais de 30 milhões de estabelecimentos no mundo todo, incluindo sites e aplicativos!'),
(527, 68, '_secao_plataforma_0_beneficios_4_conteudo', 'field_62433e634c2b3'),
(528, 68, 'secao_plataforma_0_beneficios_5_imagem', '61'),
(529, 68, '_secao_plataforma_0_beneficios_5_imagem', 'field_62433e414c2b1'),
(530, 68, 'secao_plataforma_0_beneficios_5_titulo', 'Conta digital gratuita e exclusiva para sua empresa');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(531, 68, '_secao_plataforma_0_beneficios_5_titulo', 'field_62433e5d4c2b2'),
(532, 68, 'secao_plataforma_0_beneficios_5_conteudo', 'Oferecemos uma conta digital gratuita especialmente para gerenciar despesas.  Transfira o saldo de sua conta para os cartões de maneira instantânea, sempre livre de taxas de manutenção ou de juros.'),
(533, 68, '_secao_plataforma_0_beneficios_5_conteudo', 'field_62433e634c2b3'),
(534, 68, 'secao_plataforma_0_beneficios', '6'),
(535, 68, '_secao_plataforma_0_beneficios', 'field_62433e364c2b0'),
(536, 68, 'secao_plataforma', '1'),
(537, 68, '_secao_plataforma', 'field_62433dec4c2ad'),
(538, 2, 'secao_chega_de_pagar_caro_0_titulo', 'Chega de pagar caro!'),
(539, 2, '_secao_chega_de_pagar_caro_0_titulo', 'field_6243775c4aaf1'),
(540, 2, 'secao_chega_de_pagar_caro_0_conteudo', 'Economize 53% nos TEDs da sua empresa. \r\nQuer descobrir quanto você pode economizar em TEDs? É só preencher os campos ao lado que a gente faz a conta.'),
(541, 2, '_secao_chega_de_pagar_caro_0_conteudo', 'field_624377604aaf2'),
(542, 2, 'secao_chega_de_pagar_caro', '1'),
(543, 2, '_secao_chega_de_pagar_caro', 'field_624377344aaf0'),
(544, 72, 'banner_0_titulo', 'Reembolsos corporativos de forma simples e rápida.<br/> <strong>Como deve ser.</strong>'),
(545, 72, '_banner_0_titulo', 'field_624204170712b'),
(546, 72, 'banner_0_texto_abaixo_do_titulo', 'Acabe com a dor de cabeça da gestão de despesas do dia a dia da sua empresa: pagamentos, reembolsos, compras on-line e gestão do fundo fixo. \r\nControle seus gastos escaneando notas fiscais, acompanhando aprovações, visualizando relatórios e muito mais!'),
(547, 72, '_banner_0_texto_abaixo_do_titulo', 'field_624204200712c'),
(548, 72, 'banner_0_botao_0_texto', 'Peça já sua proposta'),
(549, 72, '_banner_0_botao_0_texto', 'field_6242044f0712e'),
(550, 72, 'banner_0_botao_0_link', '#'),
(551, 72, '_banner_0_botao_0_link', 'field_624204540712f'),
(552, 72, 'banner_0_botao', '1'),
(553, 72, '_banner_0_botao', 'field_624204320712d'),
(554, 72, 'banner_0_texto_abaixo_botao', 'Responderemos <strong>em até 24h.</strong>'),
(555, 72, '_banner_0_texto_abaixo_botao', 'field_6242045a07130'),
(556, 72, 'banner_0_imagem', '19'),
(557, 72, '_banner_0_imagem', 'field_6242046407131'),
(558, 72, 'banner', '1'),
(559, 72, '_banner', 'field_624204050712a'),
(560, 72, 'teste', 'Acabe com a dor de cabeça da gestão de despesas do dia a dia da sua empresa: pagamentos, reembolsos, compras on-line e gestão do fundo fixo.  Controle seus gastos escaneando notas fiscais, acompanhando aprovações, visualizando relatórios e muito mais!'),
(561, 72, '_teste', 'field_624210290992a'),
(562, 72, 'secao_organizar_0_titulo', '<strong>Organizar reembolsos</strong> da sua empresa nunca foi tão rápido'),
(563, 72, '_secao_organizar_0_titulo', 'field_6242333215134'),
(564, 72, 'secao_organizar_0_texto_abaixo_do_titulo', 'Utilizando BPP Corp, você tem controle total sobre o budget de sua equipe podendo realizar transferências instantâneas para os cartões corporativos dos colaboradores, acompanhar gastos, receber comprovantes e visualizar relatórios que organizam seu reembolso. '),
(565, 72, '_secao_organizar_0_texto_abaixo_do_titulo', 'field_6242334215135'),
(566, 72, 'secao_organizar_0_botao_0_texto_botao', 'Peça já sua proposta'),
(567, 72, '_secao_organizar_0_botao_0_texto_botao', 'field_6242336e15137'),
(568, 72, 'secao_organizar_0_botao_0_link', '#'),
(569, 72, '_secao_organizar_0_botao_0_link', 'field_6242337415138'),
(570, 72, 'secao_organizar_0_botao', '1'),
(571, 72, '_secao_organizar_0_botao', 'field_6242335f15136'),
(572, 72, 'secao_organizar_0_imagem', '32'),
(573, 72, '_secao_organizar_0_imagem', 'field_6242337b15139'),
(574, 72, 'secao_organizar', '1'),
(575, 72, '_secao_organizar', 'field_6242332215133'),
(576, 72, 'rodape_redes_sociais_0_imagem', '48'),
(577, 72, '_rodape_redes_sociais_0_imagem', 'field_6242ffa534899'),
(578, 72, 'rodape_redes_sociais_0_link', '#'),
(579, 72, '_rodape_redes_sociais_0_link', 'field_6242ffaf3489a'),
(580, 72, 'rodape_redes_sociais_1_imagem', '51'),
(581, 72, '_rodape_redes_sociais_1_imagem', 'field_6242ffa534899'),
(582, 72, 'rodape_redes_sociais_1_link', '#'),
(583, 72, '_rodape_redes_sociais_1_link', 'field_6242ffaf3489a'),
(584, 72, 'rodape_redes_sociais_2_imagem', '50'),
(585, 72, '_rodape_redes_sociais_2_imagem', 'field_6242ffa534899'),
(586, 72, 'rodape_redes_sociais_2_link', '#'),
(587, 72, '_rodape_redes_sociais_2_link', 'field_6242ffaf3489a'),
(588, 72, 'rodape_redes_sociais_3_imagem', '47'),
(589, 72, '_rodape_redes_sociais_3_imagem', 'field_6242ffa534899'),
(590, 72, 'rodape_redes_sociais_3_link', '#'),
(591, 72, '_rodape_redes_sociais_3_link', 'field_6242ffaf3489a'),
(592, 72, 'rodape_redes_sociais_4_imagem', '49'),
(593, 72, '_rodape_redes_sociais_4_imagem', 'field_6242ffa534899'),
(594, 72, 'rodape_redes_sociais_4_link', '#'),
(595, 72, '_rodape_redes_sociais_4_link', 'field_6242ffaf3489a'),
(596, 72, 'rodape_redes_sociais', '5'),
(597, 72, '_rodape_redes_sociais', 'field_6242ff8534898'),
(598, 72, 'secao_plataforma_0_titulo', 'A plataforma que ajuda a <strong>reduzir os gastos</strong> do dia a dia'),
(599, 72, '_secao_plataforma_0_titulo', 'field_62433e0a4c2ae'),
(600, 72, 'secao_plataforma_0_subtitulo', 'Simplifique a gestão das despesas, evitando a perda de tempo com comprovantes e planilhas, reduzindo custos e aumentando os resultados da sua empresa.'),
(601, 72, '_secao_plataforma_0_subtitulo', 'field_62433e104c2af'),
(602, 72, 'secao_plataforma_0_beneficios_0_imagem', '65'),
(603, 72, '_secao_plataforma_0_beneficios_0_imagem', 'field_62433e414c2b1'),
(604, 72, 'secao_plataforma_0_beneficios_0_titulo', 'Mais rapidez na gestão das suas despesas'),
(605, 72, '_secao_plataforma_0_beneficios_0_titulo', 'field_62433e5d4c2b2'),
(606, 72, 'secao_plataforma_0_beneficios_0_conteudo', 'Para que seu negócio cresça de maneira inteligente e rápida, substitua os processos demorados de reembolsos, aprovações, criação de relatórios e etc. por uma plataforma que te oferece tudo isso de forma rápida e digital. '),
(607, 72, '_secao_plataforma_0_beneficios_0_conteudo', 'field_62433e634c2b3'),
(608, 72, 'secao_plataforma_0_beneficios_1_imagem', '64'),
(609, 72, '_secao_plataforma_0_beneficios_1_imagem', 'field_62433e414c2b1'),
(610, 72, 'secao_plataforma_0_beneficios_1_titulo', 'Os relatórios que você precisa em um único lugar'),
(611, 72, '_secao_plataforma_0_beneficios_1_titulo', 'field_62433e5d4c2b2'),
(612, 72, 'secao_plataforma_0_beneficios_1_conteudo', 'Encontre relatórios detalhados sobre as utilizações de cada cartão corporativo cadastrado em sua equipe. Confira o saldo de cada cartão, redistribua valores, faça transferências instantâneas e não perca tempo com formulários e planilhas. '),
(613, 72, '_secao_plataforma_0_beneficios_1_conteudo', 'field_62433e634c2b3'),
(614, 72, 'secao_plataforma_0_beneficios_2_imagem', '66'),
(615, 72, '_secao_plataforma_0_beneficios_2_imagem', 'field_62433e414c2b1'),
(616, 72, 'secao_plataforma_0_beneficios_2_titulo', 'Organize todos os seus comprovantes'),
(617, 72, '_secao_plataforma_0_beneficios_2_titulo', 'field_62433e5d4c2b2'),
(618, 72, 'secao_plataforma_0_beneficios_2_conteudo', 'Recebendo os comprovantes de gastos de seus colaboradores através da plataforma, você não precisa mais guardar comprovantes e notas fiscais em lugar nenhum. Os gastos podem ser classificados por tipo ou por projeto, da forma que você precisar.'),
(619, 72, '_secao_plataforma_0_beneficios_2_conteudo', 'field_62433e634c2b3'),
(620, 72, 'secao_plataforma_0_beneficios_3_imagem', '62'),
(621, 72, '_secao_plataforma_0_beneficios_3_imagem', 'field_62433e414c2b1'),
(622, 72, 'secao_plataforma_0_beneficios_3_titulo', 'Apresente suas despesas com um só clique'),
(623, 72, '_secao_plataforma_0_beneficios_3_titulo', 'field_62433e5d4c2b2'),
(624, 72, 'secao_plataforma_0_beneficios_3_conteudo', 'Enviar seus comprovantes é mais simples do que você imagina. Basta que o colaborador tire uma foto do cupom fiscal com seu smartphone através do aplicativo BPP Card. O gestor das despesas pode aprovar ou reprovar aquele gasto através do App.'),
(625, 72, '_secao_plataforma_0_beneficios_3_conteudo', 'field_62433e634c2b3'),
(626, 72, 'secao_plataforma_0_beneficios_4_imagem', '60'),
(627, 72, '_secao_plataforma_0_beneficios_4_imagem', 'field_62433e414c2b1'),
(628, 72, 'secao_plataforma_0_beneficios_4_titulo', 'Controle seus gastos com cartões pré-pagos VISA'),
(629, 72, '_secao_plataforma_0_beneficios_4_titulo', 'field_62433e5d4c2b2'),
(630, 72, 'secao_plataforma_0_beneficios_4_conteudo', 'Os cartões pré-pago BPP Corp são fáceis de controlar: o colaborador só gasta o que a empresa disponibiliza para compras online ou em lojas físicas. Conte com cartões VISA aceitos em mais de 30 milhões de estabelecimentos no mundo todo, incluindo sites e aplicativos!'),
(631, 72, '_secao_plataforma_0_beneficios_4_conteudo', 'field_62433e634c2b3'),
(632, 72, 'secao_plataforma_0_beneficios_5_imagem', '61'),
(633, 72, '_secao_plataforma_0_beneficios_5_imagem', 'field_62433e414c2b1'),
(634, 72, 'secao_plataforma_0_beneficios_5_titulo', 'Conta digital gratuita e exclusiva para sua empresa'),
(635, 72, '_secao_plataforma_0_beneficios_5_titulo', 'field_62433e5d4c2b2'),
(636, 72, 'secao_plataforma_0_beneficios_5_conteudo', 'Oferecemos uma conta digital gratuita especialmente para gerenciar despesas.  Transfira o saldo de sua conta para os cartões de maneira instantânea, sempre livre de taxas de manutenção ou de juros.'),
(637, 72, '_secao_plataforma_0_beneficios_5_conteudo', 'field_62433e634c2b3'),
(638, 72, 'secao_plataforma_0_beneficios', '6'),
(639, 72, '_secao_plataforma_0_beneficios', 'field_62433e364c2b0'),
(640, 72, 'secao_plataforma', '1'),
(641, 72, '_secao_plataforma', 'field_62433dec4c2ad'),
(642, 72, 'secao_chega_de_pagar_caro_0_titulo', 'Chega de pagar caro!'),
(643, 72, '_secao_chega_de_pagar_caro_0_titulo', 'field_6243775c4aaf1'),
(644, 72, 'secao_chega_de_pagar_caro_0_conteudo', 'Economize 53% nos TEDs da sua empresa. \r\nQuer descobrir quanto você pode economizar em TEDs? É só preencher os campos ao lado que a gente faz a conta.'),
(645, 72, '_secao_chega_de_pagar_caro_0_conteudo', 'field_624377604aaf2'),
(646, 72, 'secao_chega_de_pagar_caro', '1'),
(647, 72, '_secao_chega_de_pagar_caro', 'field_624377344aaf0'),
(648, 73, 'banner_0_titulo', 'Reembolsos corporativos de forma simples e rápida.<br/> <strong>Como deve ser.</strong>'),
(649, 73, '_banner_0_titulo', 'field_624204170712b'),
(650, 73, 'banner_0_texto_abaixo_do_titulo', 'Acabe com a dor de cabeça da gestão de despesas do dia a dia da sua empresa: pagamentos, reembolsos, compras on-line e gestão do fundo fixo. \r\nControle seus gastos escaneando notas fiscais, acompanhando aprovações, visualizando relatórios e muito mais!'),
(651, 73, '_banner_0_texto_abaixo_do_titulo', 'field_624204200712c'),
(652, 73, 'banner_0_botao_0_texto', 'Peça já sua proposta'),
(653, 73, '_banner_0_botao_0_texto', 'field_6242044f0712e'),
(654, 73, 'banner_0_botao_0_link', '#calcule'),
(655, 73, '_banner_0_botao_0_link', 'field_624204540712f'),
(656, 73, 'banner_0_botao', '1'),
(657, 73, '_banner_0_botao', 'field_624204320712d'),
(658, 73, 'banner_0_texto_abaixo_botao', 'Responderemos <strong>em até 24h.</strong>'),
(659, 73, '_banner_0_texto_abaixo_botao', 'field_6242045a07130'),
(660, 73, 'banner_0_imagem', '19'),
(661, 73, '_banner_0_imagem', 'field_6242046407131'),
(662, 73, 'banner', '1'),
(663, 73, '_banner', 'field_624204050712a'),
(664, 73, 'teste', 'Acabe com a dor de cabeça da gestão de despesas do dia a dia da sua empresa: pagamentos, reembolsos, compras on-line e gestão do fundo fixo.  Controle seus gastos escaneando notas fiscais, acompanhando aprovações, visualizando relatórios e muito mais!'),
(665, 73, '_teste', 'field_624210290992a'),
(666, 73, 'secao_organizar_0_titulo', '<strong>Organizar reembolsos</strong> da sua empresa nunca foi tão rápido'),
(667, 73, '_secao_organizar_0_titulo', 'field_6242333215134'),
(668, 73, 'secao_organizar_0_texto_abaixo_do_titulo', 'Utilizando BPP Corp, você tem controle total sobre o budget de sua equipe podendo realizar transferências instantâneas para os cartões corporativos dos colaboradores, acompanhar gastos, receber comprovantes e visualizar relatórios que organizam seu reembolso. '),
(669, 73, '_secao_organizar_0_texto_abaixo_do_titulo', 'field_6242334215135'),
(670, 73, 'secao_organizar_0_botao_0_texto_botao', 'Peça já sua proposta'),
(671, 73, '_secao_organizar_0_botao_0_texto_botao', 'field_6242336e15137'),
(672, 73, 'secao_organizar_0_botao_0_link', '#calcule'),
(673, 73, '_secao_organizar_0_botao_0_link', 'field_6242337415138'),
(674, 73, 'secao_organizar_0_botao', '1'),
(675, 73, '_secao_organizar_0_botao', 'field_6242335f15136'),
(676, 73, 'secao_organizar_0_imagem', '32'),
(677, 73, '_secao_organizar_0_imagem', 'field_6242337b15139'),
(678, 73, 'secao_organizar', '1'),
(679, 73, '_secao_organizar', 'field_6242332215133'),
(680, 73, 'rodape_redes_sociais_0_imagem', '48'),
(681, 73, '_rodape_redes_sociais_0_imagem', 'field_6242ffa534899'),
(682, 73, 'rodape_redes_sociais_0_link', '#'),
(683, 73, '_rodape_redes_sociais_0_link', 'field_6242ffaf3489a'),
(684, 73, 'rodape_redes_sociais_1_imagem', '51'),
(685, 73, '_rodape_redes_sociais_1_imagem', 'field_6242ffa534899'),
(686, 73, 'rodape_redes_sociais_1_link', '#'),
(687, 73, '_rodape_redes_sociais_1_link', 'field_6242ffaf3489a'),
(688, 73, 'rodape_redes_sociais_2_imagem', '50'),
(689, 73, '_rodape_redes_sociais_2_imagem', 'field_6242ffa534899'),
(690, 73, 'rodape_redes_sociais_2_link', '#'),
(691, 73, '_rodape_redes_sociais_2_link', 'field_6242ffaf3489a'),
(692, 73, 'rodape_redes_sociais_3_imagem', '47'),
(693, 73, '_rodape_redes_sociais_3_imagem', 'field_6242ffa534899'),
(694, 73, 'rodape_redes_sociais_3_link', '#'),
(695, 73, '_rodape_redes_sociais_3_link', 'field_6242ffaf3489a'),
(696, 73, 'rodape_redes_sociais_4_imagem', '49'),
(697, 73, '_rodape_redes_sociais_4_imagem', 'field_6242ffa534899'),
(698, 73, 'rodape_redes_sociais_4_link', '#'),
(699, 73, '_rodape_redes_sociais_4_link', 'field_6242ffaf3489a'),
(700, 73, 'rodape_redes_sociais', '5'),
(701, 73, '_rodape_redes_sociais', 'field_6242ff8534898'),
(702, 73, 'secao_plataforma_0_titulo', 'A plataforma que ajuda a <strong>reduzir os gastos</strong> do dia a dia'),
(703, 73, '_secao_plataforma_0_titulo', 'field_62433e0a4c2ae'),
(704, 73, 'secao_plataforma_0_subtitulo', 'Simplifique a gestão das despesas, evitando a perda de tempo com comprovantes e planilhas, reduzindo custos e aumentando os resultados da sua empresa.'),
(705, 73, '_secao_plataforma_0_subtitulo', 'field_62433e104c2af'),
(706, 73, 'secao_plataforma_0_beneficios_0_imagem', '65'),
(707, 73, '_secao_plataforma_0_beneficios_0_imagem', 'field_62433e414c2b1'),
(708, 73, 'secao_plataforma_0_beneficios_0_titulo', 'Mais rapidez na gestão das suas despesas'),
(709, 73, '_secao_plataforma_0_beneficios_0_titulo', 'field_62433e5d4c2b2'),
(710, 73, 'secao_plataforma_0_beneficios_0_conteudo', 'Para que seu negócio cresça de maneira inteligente e rápida, substitua os processos demorados de reembolsos, aprovações, criação de relatórios e etc. por uma plataforma que te oferece tudo isso de forma rápida e digital. '),
(711, 73, '_secao_plataforma_0_beneficios_0_conteudo', 'field_62433e634c2b3'),
(712, 73, 'secao_plataforma_0_beneficios_1_imagem', '64'),
(713, 73, '_secao_plataforma_0_beneficios_1_imagem', 'field_62433e414c2b1'),
(714, 73, 'secao_plataforma_0_beneficios_1_titulo', 'Os relatórios que você precisa em um único lugar'),
(715, 73, '_secao_plataforma_0_beneficios_1_titulo', 'field_62433e5d4c2b2'),
(716, 73, 'secao_plataforma_0_beneficios_1_conteudo', 'Encontre relatórios detalhados sobre as utilizações de cada cartão corporativo cadastrado em sua equipe. Confira o saldo de cada cartão, redistribua valores, faça transferências instantâneas e não perca tempo com formulários e planilhas. '),
(717, 73, '_secao_plataforma_0_beneficios_1_conteudo', 'field_62433e634c2b3'),
(718, 73, 'secao_plataforma_0_beneficios_2_imagem', '66'),
(719, 73, '_secao_plataforma_0_beneficios_2_imagem', 'field_62433e414c2b1'),
(720, 73, 'secao_plataforma_0_beneficios_2_titulo', 'Organize todos os seus comprovantes'),
(721, 73, '_secao_plataforma_0_beneficios_2_titulo', 'field_62433e5d4c2b2'),
(722, 73, 'secao_plataforma_0_beneficios_2_conteudo', 'Recebendo os comprovantes de gastos de seus colaboradores através da plataforma, você não precisa mais guardar comprovantes e notas fiscais em lugar nenhum. Os gastos podem ser classificados por tipo ou por projeto, da forma que você precisar.'),
(723, 73, '_secao_plataforma_0_beneficios_2_conteudo', 'field_62433e634c2b3'),
(724, 73, 'secao_plataforma_0_beneficios_3_imagem', '62'),
(725, 73, '_secao_plataforma_0_beneficios_3_imagem', 'field_62433e414c2b1'),
(726, 73, 'secao_plataforma_0_beneficios_3_titulo', 'Apresente suas despesas com um só clique'),
(727, 73, '_secao_plataforma_0_beneficios_3_titulo', 'field_62433e5d4c2b2'),
(728, 73, 'secao_plataforma_0_beneficios_3_conteudo', 'Enviar seus comprovantes é mais simples do que você imagina. Basta que o colaborador tire uma foto do cupom fiscal com seu smartphone através do aplicativo BPP Card. O gestor das despesas pode aprovar ou reprovar aquele gasto através do App.'),
(729, 73, '_secao_plataforma_0_beneficios_3_conteudo', 'field_62433e634c2b3'),
(730, 73, 'secao_plataforma_0_beneficios_4_imagem', '60'),
(731, 73, '_secao_plataforma_0_beneficios_4_imagem', 'field_62433e414c2b1'),
(732, 73, 'secao_plataforma_0_beneficios_4_titulo', 'Controle seus gastos com cartões pré-pagos VISA'),
(733, 73, '_secao_plataforma_0_beneficios_4_titulo', 'field_62433e5d4c2b2'),
(734, 73, 'secao_plataforma_0_beneficios_4_conteudo', 'Os cartões pré-pago BPP Corp são fáceis de controlar: o colaborador só gasta o que a empresa disponibiliza para compras online ou em lojas físicas. Conte com cartões VISA aceitos em mais de 30 milhões de estabelecimentos no mundo todo, incluindo sites e aplicativos!'),
(735, 73, '_secao_plataforma_0_beneficios_4_conteudo', 'field_62433e634c2b3'),
(736, 73, 'secao_plataforma_0_beneficios_5_imagem', '61'),
(737, 73, '_secao_plataforma_0_beneficios_5_imagem', 'field_62433e414c2b1'),
(738, 73, 'secao_plataforma_0_beneficios_5_titulo', 'Conta digital gratuita e exclusiva para sua empresa'),
(739, 73, '_secao_plataforma_0_beneficios_5_titulo', 'field_62433e5d4c2b2'),
(740, 73, 'secao_plataforma_0_beneficios_5_conteudo', 'Oferecemos uma conta digital gratuita especialmente para gerenciar despesas.  Transfira o saldo de sua conta para os cartões de maneira instantânea, sempre livre de taxas de manutenção ou de juros.'),
(741, 73, '_secao_plataforma_0_beneficios_5_conteudo', 'field_62433e634c2b3'),
(742, 73, 'secao_plataforma_0_beneficios', '6'),
(743, 73, '_secao_plataforma_0_beneficios', 'field_62433e364c2b0'),
(744, 73, 'secao_plataforma', '1'),
(745, 73, '_secao_plataforma', 'field_62433dec4c2ad'),
(746, 73, 'secao_chega_de_pagar_caro_0_titulo', 'Chega de pagar caro!'),
(747, 73, '_secao_chega_de_pagar_caro_0_titulo', 'field_6243775c4aaf1'),
(748, 73, 'secao_chega_de_pagar_caro_0_conteudo', 'Economize 53% nos TEDs da sua empresa. \r\nQuer descobrir quanto você pode economizar em TEDs? É só preencher os campos ao lado que a gente faz a conta.'),
(749, 73, '_secao_chega_de_pagar_caro_0_conteudo', 'field_624377604aaf2'),
(750, 73, 'secao_chega_de_pagar_caro', '1'),
(751, 73, '_secao_chega_de_pagar_caro', 'field_624377344aaf0');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_posts`
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
-- Despejando dados para a tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-03-28 14:59:32', '2022-03-28 17:59:32', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'trash', 'open', 'open', '', 'ola-mundo__trashed', '', '', '2022-03-28 20:14:23', '2022-03-28 23:14:23', '', 0, 'http://localhost/teste-vaga/?p=1', 0, 'post', '', 1),
(2, 1, '2022-03-28 14:59:32', '2022-03-28 17:59:32', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/teste-vaga/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Home', '', 'publish', 'closed', 'open', '', 'pagina-exemplo', '', '', '2022-03-29 22:51:53', '2022-03-30 01:51:53', '', 0, 'http://localhost/teste-vaga/?page_id=2', 0, 'page', '', 0),
(3, 1, '2022-03-28 14:59:32', '2022-03-28 17:59:32', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>O endereço do nosso site é: http://localhost/teste-vaga.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia incorporada de outros sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Com quem compartilhamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você solicitar uma redefinição de senha, seu endereço de IP será incluído no e-mail de redefinição de senha.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde enviamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph -->', 'Política de privacidade', '', 'draft', 'closed', 'open', '', 'politica-de-privacidade', '', '', '2022-03-28 14:59:32', '2022-03-28 17:59:32', '', 0, 'http://localhost/teste-vaga/?page_id=3', 0, 'page', '', 0),
(4, 1, '2022-03-28 14:59:58', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-03-28 14:59:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/teste-vaga/?p=4', 0, 'post', '', 0),
(5, 1, '2022-03-28 15:46:44', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-03-28 15:46:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/teste-vaga/?post_type=acf-field-group&p=5', 0, 'acf-field-group', '', 0),
(6, 1, '2022-03-28 15:47:50', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-03-28 15:47:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/teste-vaga/?page_id=6', 0, 'page', '', 0),
(7, 1, '2022-03-28 15:47:52', '2022-03-28 18:47:52', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-teste-vaga', '', '', '2022-03-28 15:47:52', '2022-03-28 18:47:52', '', 0, 'http://localhost/teste-vaga/2022/03/28/wp-global-styles-teste-vaga/', 0, 'wp_global_styles', '', 0),
(8, 1, '2022-03-28 15:48:01', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-03-28 15:48:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/teste-vaga/?page_id=8', 0, 'page', '', 0),
(9, 1, '2022-03-28 15:52:18', '2022-03-28 18:52:18', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/teste-vaga/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2022-03-28 15:52:18', '2022-03-28 18:52:18', '', 2, 'http://localhost/teste-vaga/?p=9', 0, 'revision', '', 0),
(10, 1, '2022-03-28 15:54:49', '2022-03-28 18:54:49', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"2\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Home', 'home', 'publish', 'closed', 'closed', '', 'group_624203f2274a3', '', '', '2022-03-29 18:35:16', '2022-03-29 21:35:16', '', 0, 'http://localhost/teste-vaga/?post_type=acf-field-group&#038;p=10', 0, 'acf-field-group', '', 0),
(11, 1, '2022-03-28 15:54:49', '2022-03-28 18:54:49', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:1;s:3:\"max\";i:1;s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:0:\"\";}', 'Banner', 'banner', 'publish', 'closed', 'closed', '', 'field_624204050712a', '', '', '2022-03-28 16:44:46', '2022-03-28 19:44:46', '', 10, 'http://localhost/teste-vaga/?post_type=acf-field&#038;p=11', 0, 'acf-field', '', 0),
(12, 1, '2022-03-28 15:54:49', '2022-03-28 18:54:49', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Título', 'titulo', 'publish', 'closed', 'closed', '', 'field_624204170712b', '', '', '2022-03-29 14:16:27', '2022-03-29 17:16:27', '', 11, 'http://localhost/teste-vaga/?post_type=acf-field&#038;p=12', 0, 'acf-field', '', 0),
(13, 1, '2022-03-28 15:54:49', '2022-03-28 18:54:49', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Texto abaixo do título', 'texto_abaixo_do_titulo', 'publish', 'closed', 'closed', '', 'field_624204200712c', '', '', '2022-03-28 15:54:49', '2022-03-28 18:54:49', '', 11, 'http://localhost/teste-vaga/?post_type=acf-field&p=13', 1, 'acf-field', '', 0),
(14, 1, '2022-03-28 15:54:49', '2022-03-28 18:54:49', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";i:1;s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Botão', 'botao', 'publish', 'closed', 'closed', '', 'field_624204320712d', '', '', '2022-03-29 14:16:27', '2022-03-29 17:16:27', '', 11, 'http://localhost/teste-vaga/?post_type=acf-field&#038;p=14', 2, 'acf-field', '', 0),
(15, 1, '2022-03-28 15:54:49', '2022-03-28 18:54:49', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Texto', 'texto', 'publish', 'closed', 'closed', '', 'field_6242044f0712e', '', '', '2022-03-28 15:54:49', '2022-03-28 18:54:49', '', 14, 'http://localhost/teste-vaga/?post_type=acf-field&p=15', 0, 'acf-field', '', 0),
(16, 1, '2022-03-28 15:54:49', '2022-03-28 18:54:49', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_624204540712f', '', '', '2022-03-28 15:54:49', '2022-03-28 18:54:49', '', 14, 'http://localhost/teste-vaga/?post_type=acf-field&p=16', 1, 'acf-field', '', 0),
(17, 1, '2022-03-28 15:54:49', '2022-03-28 18:54:49', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Texto abaixo botão', 'texto_abaixo_botao', 'publish', 'closed', 'closed', '', 'field_6242045a07130', '', '', '2022-03-28 15:54:49', '2022-03-28 18:54:49', '', 11, 'http://localhost/teste-vaga/?post_type=acf-field&p=17', 3, 'acf-field', '', 0),
(18, 1, '2022-03-28 15:54:49', '2022-03-28 18:54:49', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem', 'imagem', 'publish', 'closed', 'closed', '', 'field_6242046407131', '', '', '2022-03-28 15:54:49', '2022-03-28 18:54:49', '', 11, 'http://localhost/teste-vaga/?post_type=acf-field&p=18', 4, 'acf-field', '', 0),
(19, 1, '2022-03-28 16:36:38', '2022-03-28 19:36:38', '', 'asset-header', '', 'inherit', 'open', 'closed', '', 'asset-header', '', '', '2022-03-28 16:36:38', '2022-03-28 19:36:38', '', 2, 'http://localhost/teste-vaga/wp-content/uploads/2022/03/asset-header.png', 0, 'attachment', 'image/png', 0),
(20, 1, '2022-03-28 16:37:20', '2022-03-28 19:37:20', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/teste-vaga/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2022-03-28 16:37:20', '2022-03-28 19:37:20', '', 2, 'http://localhost/teste-vaga/?p=20', 0, 'revision', '', 0),
(22, 1, '2022-03-28 16:45:10', '2022-03-28 19:45:10', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/teste-vaga/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2022-03-28 16:45:10', '2022-03-28 19:45:10', '', 2, 'http://localhost/teste-vaga/?p=22', 0, 'revision', '', 0),
(23, 1, '2022-03-28 17:33:27', '2022-03-28 20:33:27', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/teste-vaga/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2022-03-28 17:33:27', '2022-03-28 20:33:27', '', 2, 'http://localhost/teste-vaga/?p=23', 0, 'revision', '', 0),
(24, 1, '2022-03-28 18:40:03', '2022-03-28 21:40:03', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/teste-vaga/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2022-03-28 18:40:03', '2022-03-28 21:40:03', '', 2, 'http://localhost/teste-vaga/?p=24', 0, 'revision', '', 0),
(25, 1, '2022-03-28 19:15:35', '2022-03-28 22:15:35', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:1;s:3:\"max\";i:1;s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:0:\"\";}', 'Seção Organizar', 'secao_organizar', 'publish', 'closed', 'closed', '', 'field_6242332215133', '', '', '2022-03-28 19:15:35', '2022-03-28 22:15:35', '', 10, 'http://localhost/teste-vaga/?post_type=acf-field&p=25', 1, 'acf-field', '', 0),
(26, 1, '2022-03-28 19:15:35', '2022-03-28 22:15:35', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Título', 'titulo', 'publish', 'closed', 'closed', '', 'field_6242333215134', '', '', '2022-03-28 19:15:35', '2022-03-28 22:15:35', '', 25, 'http://localhost/teste-vaga/?post_type=acf-field&p=26', 0, 'acf-field', '', 0),
(27, 1, '2022-03-28 19:15:35', '2022-03-28 22:15:35', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Texto abaixo do título', 'texto_abaixo_do_titulo', 'publish', 'closed', 'closed', '', 'field_6242334215135', '', '', '2022-03-28 19:15:35', '2022-03-28 22:15:35', '', 25, 'http://localhost/teste-vaga/?post_type=acf-field&p=27', 1, 'acf-field', '', 0),
(28, 1, '2022-03-28 19:15:35', '2022-03-28 22:15:35', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:0;s:3:\"max\";i:1;s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Botão', 'botao', 'publish', 'closed', 'closed', '', 'field_6242335f15136', '', '', '2022-03-29 14:16:27', '2022-03-29 17:16:27', '', 25, 'http://localhost/teste-vaga/?post_type=acf-field&#038;p=28', 2, 'acf-field', '', 0),
(29, 1, '2022-03-28 19:15:35', '2022-03-28 22:15:35', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Texto botão', 'texto_botao', 'publish', 'closed', 'closed', '', 'field_6242336e15137', '', '', '2022-03-28 19:15:35', '2022-03-28 22:15:35', '', 28, 'http://localhost/teste-vaga/?post_type=acf-field&p=29', 0, 'acf-field', '', 0),
(30, 1, '2022-03-28 19:15:35', '2022-03-28 22:15:35', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_6242337415138', '', '', '2022-03-28 19:15:35', '2022-03-28 22:15:35', '', 28, 'http://localhost/teste-vaga/?post_type=acf-field&p=30', 1, 'acf-field', '', 0),
(31, 1, '2022-03-28 19:15:35', '2022-03-28 22:15:35', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem', 'imagem', 'publish', 'closed', 'closed', '', 'field_6242337b15139', '', '', '2022-03-28 19:15:35', '2022-03-28 22:15:35', '', 25, 'http://localhost/teste-vaga/?post_type=acf-field&p=31', 3, 'acf-field', '', 0),
(32, 1, '2022-03-28 19:16:48', '2022-03-28 22:16:48', '', 'asset-seção 3', '', 'inherit', 'open', 'closed', '', 'asset-sec%cc%a7a%cc%83o-3', '', '', '2022-03-28 19:16:48', '2022-03-28 22:16:48', '', 2, 'http://localhost/teste-vaga/wp-content/uploads/2022/03/asset-seção-3.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2022-03-28 19:16:51', '2022-03-28 22:16:51', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/teste-vaga/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2022-03-28 19:16:51', '2022-03-28 22:16:51', '', 2, 'http://localhost/teste-vaga/?p=33', 0, 'revision', '', 0),
(34, 1, '2022-03-28 20:13:04', '2022-03-28 23:13:04', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec velit leo maecenas. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\n<!-- /wp:paragraph -->', 'Post blog 1', '', 'publish', 'open', 'open', '', 'post-blog-1', '', '', '2022-03-29 09:16:28', '2022-03-29 12:16:28', '', 0, 'http://localhost/teste-vaga/?p=34', 0, 'post', '', 0),
(35, 1, '2022-03-28 20:12:57', '2022-03-28 23:12:57', '', 'post-1', '', 'inherit', 'open', 'closed', '', 'post-1', '', '', '2022-03-28 20:12:57', '2022-03-28 23:12:57', '', 34, 'http://localhost/teste-vaga/wp-content/uploads/2022/03/post-1.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2022-03-28 20:12:58', '2022-03-28 23:12:58', '', 'post-2', '', 'inherit', 'open', 'closed', '', 'post-2', '', '', '2022-03-28 20:12:58', '2022-03-28 23:12:58', '', 34, 'http://localhost/teste-vaga/wp-content/uploads/2022/03/post-2.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2022-03-28 20:12:58', '2022-03-28 23:12:58', '', 'post3-', '', 'inherit', 'open', 'closed', '', 'post3', '', '', '2022-03-28 20:12:58', '2022-03-28 23:12:58', '', 34, 'http://localhost/teste-vaga/wp-content/uploads/2022/03/post3-.png', 0, 'attachment', 'image/png', 0),
(38, 1, '2022-03-28 20:13:04', '2022-03-28 23:13:04', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec velit leo maecenas. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\n<!-- /wp:paragraph -->', 'Post blog 1', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2022-03-28 20:13:04', '2022-03-28 23:13:04', '', 34, 'http://localhost/teste-vaga/?p=38', 0, 'revision', '', 0),
(39, 1, '2022-03-28 20:13:31', '2022-03-28 23:13:31', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec velit leo maecenas. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\n<!-- /wp:paragraph -->', 'Post blog 2', '', 'publish', 'open', 'open', '', 'post-blog-2', '', '', '2022-03-29 09:16:20', '2022-03-29 12:16:20', '', 0, 'http://localhost/teste-vaga/?p=39', 0, 'post', '', 0),
(40, 1, '2022-03-28 20:13:31', '2022-03-28 23:13:31', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec velit leo maecenas. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\n<!-- /wp:paragraph -->', 'Post blog 2', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2022-03-28 20:13:31', '2022-03-28 23:13:31', '', 39, 'http://localhost/teste-vaga/?p=40', 0, 'revision', '', 0),
(41, 1, '2022-03-28 20:13:57', '2022-03-28 23:13:57', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec velit leo maecenas. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\n<!-- /wp:paragraph -->', 'Post blog 3', '', 'publish', 'open', 'open', '', 'post-blog-3', '', '', '2022-03-29 09:16:11', '2022-03-29 12:16:11', '', 0, 'http://localhost/teste-vaga/?p=41', 0, 'post', '', 0),
(42, 1, '2022-03-28 20:13:57', '2022-03-28 23:13:57', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec velit leo maecenas. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\n<!-- /wp:paragraph -->', 'Post blog 3', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2022-03-28 20:13:57', '2022-03-28 23:13:57', '', 41, 'http://localhost/teste-vaga/?p=42', 0, 'revision', '', 0),
(43, 1, '2022-03-28 20:14:23', '2022-03-28 23:14:23', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2022-03-28 20:14:23', '2022-03-28 23:14:23', '', 1, 'http://localhost/teste-vaga/?p=43', 0, 'revision', '', 0),
(44, 1, '2022-03-29 09:46:46', '2022-03-29 12:46:46', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";i:0;s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Rodapé redes sociais', 'rodape_redes_sociais', 'publish', 'closed', 'closed', '', 'field_6242ff8534898', '', '', '2022-03-29 18:35:16', '2022-03-29 21:35:16', '', 10, 'http://localhost/teste-vaga/?post_type=acf-field&#038;p=44', 4, 'acf-field', '', 0),
(45, 1, '2022-03-29 09:46:46', '2022-03-29 12:46:46', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem', 'imagem', 'publish', 'closed', 'closed', '', 'field_6242ffa534899', '', '', '2022-03-29 09:46:46', '2022-03-29 12:46:46', '', 44, 'http://localhost/teste-vaga/?post_type=acf-field&p=45', 0, 'acf-field', '', 0),
(46, 1, '2022-03-29 09:46:46', '2022-03-29 12:46:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_6242ffaf3489a', '', '', '2022-03-29 09:46:46', '2022-03-29 12:46:46', '', 44, 'http://localhost/teste-vaga/?post_type=acf-field&p=46', 1, 'acf-field', '', 0),
(47, 1, '2022-03-29 09:50:28', '2022-03-29 12:50:28', '', 'facebook', '', 'inherit', 'open', 'closed', '', 'facebook', '', '', '2022-03-29 09:50:28', '2022-03-29 12:50:28', '', 2, 'http://localhost/teste-vaga/wp-content/uploads/2022/03/facebook.png', 0, 'attachment', 'image/png', 0),
(48, 1, '2022-03-29 09:50:28', '2022-03-29 12:50:28', '', 'instagram', '', 'inherit', 'open', 'closed', '', 'instagram', '', '', '2022-03-29 09:50:28', '2022-03-29 12:50:28', '', 2, 'http://localhost/teste-vaga/wp-content/uploads/2022/03/instagram.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2022-03-29 09:50:29', '2022-03-29 12:50:29', '', 'youtube', '', 'inherit', 'open', 'closed', '', 'youtube', '', '', '2022-03-29 09:50:29', '2022-03-29 12:50:29', '', 2, 'http://localhost/teste-vaga/wp-content/uploads/2022/03/youtube.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2022-03-29 09:50:30', '2022-03-29 12:50:30', '', 'twitter', '', 'inherit', 'open', 'closed', '', 'twitter', '', '', '2022-03-29 09:50:30', '2022-03-29 12:50:30', '', 2, 'http://localhost/teste-vaga/wp-content/uploads/2022/03/twitter.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2022-03-29 09:50:30', '2022-03-29 12:50:30', '', 'linkedin', '', 'inherit', 'open', 'closed', '', 'linkedin', '', '', '2022-03-29 09:50:30', '2022-03-29 12:50:30', '', 2, 'http://localhost/teste-vaga/wp-content/uploads/2022/03/linkedin.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2022-03-29 09:51:15', '2022-03-29 12:51:15', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/teste-vaga/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2022-03-29 09:51:15', '2022-03-29 12:51:15', '', 2, 'http://localhost/teste-vaga/?p=52', 0, 'revision', '', 0),
(53, 1, '2022-03-29 14:14:46', '2022-03-29 17:14:46', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";i:1;s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:0:\"\";}', 'Seção plataforma', 'secao_plataforma', 'publish', 'closed', 'closed', '', 'field_62433dec4c2ad', '', '', '2022-03-29 18:35:16', '2022-03-29 21:35:16', '', 10, 'http://localhost/teste-vaga/?post_type=acf-field&#038;p=53', 3, 'acf-field', '', 0),
(54, 1, '2022-03-29 14:14:46', '2022-03-29 17:14:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Título', 'titulo', 'publish', 'closed', 'closed', '', 'field_62433e0a4c2ae', '', '', '2022-03-29 14:16:27', '2022-03-29 17:16:27', '', 53, 'http://localhost/teste-vaga/?post_type=acf-field&#038;p=54', 0, 'acf-field', '', 0),
(55, 1, '2022-03-29 14:14:46', '2022-03-29 17:14:46', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Subtítulo', 'subtitulo', 'publish', 'closed', 'closed', '', 'field_62433e104c2af', '', '', '2022-03-29 14:14:46', '2022-03-29 17:14:46', '', 53, 'http://localhost/teste-vaga/?post_type=acf-field&p=55', 1, 'acf-field', '', 0),
(56, 1, '2022-03-29 14:14:46', '2022-03-29 17:14:46', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Benefícios', 'beneficios', 'publish', 'closed', 'closed', '', 'field_62433e364c2b0', '', '', '2022-03-29 14:14:46', '2022-03-29 17:14:46', '', 53, 'http://localhost/teste-vaga/?post_type=acf-field&p=56', 2, 'acf-field', '', 0),
(57, 1, '2022-03-29 14:14:46', '2022-03-29 17:14:46', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem', 'imagem', 'publish', 'closed', 'closed', '', 'field_62433e414c2b1', '', '', '2022-03-29 14:14:46', '2022-03-29 17:14:46', '', 56, 'http://localhost/teste-vaga/?post_type=acf-field&p=57', 0, 'acf-field', '', 0),
(58, 1, '2022-03-29 14:14:46', '2022-03-29 17:14:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Título', 'titulo', 'publish', 'closed', 'closed', '', 'field_62433e5d4c2b2', '', '', '2022-03-29 14:14:46', '2022-03-29 17:14:46', '', 56, 'http://localhost/teste-vaga/?post_type=acf-field&p=58', 1, 'acf-field', '', 0),
(59, 1, '2022-03-29 14:14:46', '2022-03-29 17:14:46', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Conteúdo', 'conteudo', 'publish', 'closed', 'closed', '', 'field_62433e634c2b3', '', '', '2022-03-29 14:14:46', '2022-03-29 17:14:46', '', 56, 'http://localhost/teste-vaga/?post_type=acf-field&p=59', 2, 'acf-field', '', 0),
(60, 1, '2022-03-29 14:26:17', '2022-03-29 17:26:17', '', '20200109_BPP_CORP_LP ICONS_CARTAO PRE PAGO 1', '', 'inherit', 'open', 'closed', '', '20200109_bpp_corp_lp-icons_cartao-pre-pago-1', '', '', '2022-03-29 14:26:17', '2022-03-29 17:26:17', '', 2, 'http://localhost/teste-vaga/wp-content/uploads/2022/03/20200109_BPP_CORP_LP-ICONS_CARTAO-PRE-PAGO-1.png', 0, 'attachment', 'image/png', 0),
(61, 1, '2022-03-29 14:26:17', '2022-03-29 17:26:17', '', '20200109_BPP_CORP_LP ICONS_CONTA DIGITAL 1', '', 'inherit', 'open', 'closed', '', '20200109_bpp_corp_lp-icons_conta-digital-1', '', '', '2022-03-29 14:26:17', '2022-03-29 17:26:17', '', 2, 'http://localhost/teste-vaga/wp-content/uploads/2022/03/20200109_BPP_CORP_LP-ICONS_CONTA-DIGITAL-1.png', 0, 'attachment', 'image/png', 0),
(62, 1, '2022-03-29 14:26:18', '2022-03-29 17:26:18', '', '20200109_BPP_CORP_LP ICONS_FOTO COMPROVANTE 1', '', 'inherit', 'open', 'closed', '', '20200109_bpp_corp_lp-icons_foto-comprovante-1', '', '', '2022-03-29 14:26:18', '2022-03-29 17:26:18', '', 2, 'http://localhost/teste-vaga/wp-content/uploads/2022/03/20200109_BPP_CORP_LP-ICONS_FOTO-COMPROVANTE-1.png', 0, 'attachment', 'image/png', 0),
(63, 1, '2022-03-29 14:26:20', '2022-03-29 17:26:20', '', '20200109_BPP_CORP_LP ICONS_ORGANIZE 1', '', 'inherit', 'open', 'closed', '', '20200109_bpp_corp_lp-icons_organize-1', '', '', '2022-03-29 14:26:20', '2022-03-29 17:26:20', '', 2, 'http://localhost/teste-vaga/wp-content/uploads/2022/03/20200109_BPP_CORP_LP-ICONS_ORGANIZE-1.png', 0, 'attachment', 'image/png', 0),
(64, 1, '2022-03-29 14:26:20', '2022-03-29 17:26:20', '', '20200109_BPP_CORP_LP ICONS_RELATORIO 2', '', 'inherit', 'open', 'closed', '', '20200109_bpp_corp_lp-icons_relatorio-2', '', '', '2022-03-29 14:26:20', '2022-03-29 17:26:20', '', 2, 'http://localhost/teste-vaga/wp-content/uploads/2022/03/20200109_BPP_CORP_LP-ICONS_RELATORIO-2.png', 0, 'attachment', 'image/png', 0),
(65, 1, '2022-03-29 14:26:21', '2022-03-29 17:26:21', '', 'Group 11', '', 'inherit', 'open', 'closed', '', 'group-11', '', '', '2022-03-29 14:26:21', '2022-03-29 17:26:21', '', 2, 'http://localhost/teste-vaga/wp-content/uploads/2022/03/Group-11.png', 0, 'attachment', 'image/png', 0),
(66, 1, '2022-03-29 14:28:07', '2022-03-29 17:28:07', '', 'Group 12', '', 'inherit', 'open', 'closed', '', 'group-12', '', '', '2022-03-29 14:28:07', '2022-03-29 17:28:07', '', 2, 'http://localhost/teste-vaga/wp-content/uploads/2022/03/Group-12.png', 0, 'attachment', 'image/png', 0),
(67, 1, '2022-03-29 14:28:46', '2022-03-29 17:28:46', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/teste-vaga/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2022-03-29 14:28:46', '2022-03-29 17:28:46', '', 2, 'http://localhost/teste-vaga/?p=67', 0, 'revision', '', 0),
(68, 1, '2022-03-29 14:39:27', '2022-03-29 17:39:27', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/teste-vaga/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2022-03-29 14:39:27', '2022-03-29 17:39:27', '', 2, 'http://localhost/teste-vaga/?p=68', 0, 'revision', '', 0),
(69, 1, '2022-03-29 18:34:36', '2022-03-29 21:34:36', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";i:1;s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:0:\"\";}', 'Seção chega de pagar caro', 'secao_chega_de_pagar_caro', 'publish', 'closed', 'closed', '', 'field_624377344aaf0', '', '', '2022-03-29 18:35:16', '2022-03-29 21:35:16', '', 10, 'http://localhost/teste-vaga/?post_type=acf-field&#038;p=69', 2, 'acf-field', '', 0),
(70, 1, '2022-03-29 18:34:36', '2022-03-29 21:34:36', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Título', 'titulo', 'publish', 'closed', 'closed', '', 'field_6243775c4aaf1', '', '', '2022-03-29 18:34:36', '2022-03-29 21:34:36', '', 69, 'http://localhost/teste-vaga/?post_type=acf-field&p=70', 0, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(71, 1, '2022-03-29 18:34:36', '2022-03-29 21:34:36', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Conteúdo', 'conteudo', 'publish', 'closed', 'closed', '', 'field_624377604aaf2', '', '', '2022-03-29 18:34:36', '2022-03-29 21:34:36', '', 69, 'http://localhost/teste-vaga/?post_type=acf-field&p=71', 1, 'acf-field', '', 0),
(72, 1, '2022-03-29 18:35:10', '2022-03-29 21:35:10', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/teste-vaga/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2022-03-29 18:35:10', '2022-03-29 21:35:10', '', 2, 'http://localhost/teste-vaga/?p=72', 0, 'revision', '', 0),
(73, 1, '2022-03-29 22:51:53', '2022-03-30 01:51:53', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/teste-vaga/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2022-03-29 22:51:53', '2022-03-30 01:51:53', '', 2, 'http://localhost/teste-vaga/?p=73', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'teste-vaga', 'teste-vaga', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(7, 2, 0),
(34, 1, 0),
(39, 1, 0),
(41, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_term_taxonomy`
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
-- Despejando dados para a tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'wp_theme', '', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Brito'),
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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"b6dd129f88289c65a8f3231732a6b1c3a1b05fa66f8d819d4d9c5e4e4512d3c8\";a:4:{s:10:\"expiration\";i:1649699996;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36\";s:5:\"login\";i:1648490396;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1648494116');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_users`
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
-- Despejando dados para a tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Brito', '$P$BzcQnJUZGBmMdEXTGMTI68.SgyEhor1', 'brito', 'britousouza@gmail.com', 'http://localhost/teste-vaga', '2022-03-28 17:59:32', '', 0, 'Brito');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Índices de tabela `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Índices de tabela `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Índices de tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Índices de tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Índices de tabela `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Índices de tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Índices de tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=971;

--
-- AUTO_INCREMENT de tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=752;

--
-- AUTO_INCREMENT de tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT de tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
