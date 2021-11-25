-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2021-10-15 09:54:10','2021-10-15 09:54:10','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=308 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://huyenkhongsonthuong.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://huyenkhongsonthuong.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Huyền Không Sơn Thượng','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Cõi Phật giữa chốn trần gian','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','admin@gmail.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:93:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:1:{i:0;s:25:\"menu-image/menu-image.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','hkstv2','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','hkstv2','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','49752','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','posts','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','0','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','67','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1649843648','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','49752','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (102,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (104,'cron','a:7:{i:1637470451;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1637488450;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1637488451;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1637555921;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1637555924;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1638006850;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'nonce_key','*>O0{mGB51.tXQMxdU-9GTX(w^l0=2{4ehM.dqq+G;[)qln{g#!Cb.<3dq3*u/!(','no');
INSERT INTO `wp_options` VALUES (115,'nonce_salt','tW^}JI,,,E+F=u%P/;/m5n^EX;8_*mP4s}dunhZD-+dosd|~he}{IA,C3AhPt&1]','no');
INSERT INTO `wp_options` VALUES (116,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (121,'recovery_keys','a:1:{s:22:\"2Cpo2LY7f4AXDi9d6wTW8d\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BRvraq3k356yrArK19i.M5YaCvgJvb.\";s:10:\"created_at\";i:1637416504;}}','yes');
INSERT INTO `wp_options` VALUES (122,'theme_mods_twentytwentyone','a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:3;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1636958474;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (123,'https_detection_errors','a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}','yes');
INSERT INTO `wp_options` VALUES (128,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1637469554;s:7:\"checked\";a:4:{s:6:\"hkstv2\";s:3:\"2.0\";s:14:\"twentynineteen\";s:3:\"2.1\";s:12:\"twentytwenty\";s:3:\"1.8\";s:15:\"twentytwentyone\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.1.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (131,'auto_core_update_notified','a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:15:\"admin@gmail.com\";s:7:\"version\";s:5:\"5.8.2\";s:9:\"timestamp\";i:1636951026;}','no');
INSERT INTO `wp_options` VALUES (132,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1637555827','no');
INSERT INTO `wp_options` VALUES (133,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (134,'_transient_health-check-site-status-result','{\"good\":12,\"recommended\":6,\"critical\":0}','yes');
INSERT INTO `wp_options` VALUES (135,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.2\";s:7:\"version\";s:5:\"5.8.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1637469550;s:15:\"version_checked\";s:5:\"5.8.2\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (136,'_site_transient_timeout_browser_f8256d37159e3faf28ae61a6406601c3','1637555923','no');
INSERT INTO `wp_options` VALUES (137,'_site_transient_browser_f8256d37159e3faf28ae61a6406601c3','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"95.0.4638.69\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (141,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (154,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (157,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:3;}}','yes');
INSERT INTO `wp_options` VALUES (163,'current_theme','Huyền Không Sơn Thượng','yes');
INSERT INTO `wp_options` VALUES (164,'theme_mods_hkstv2','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:6:{s:7:\"primary\";i:3;s:19:\"primary_header_left\";i:3;s:20:\"primary_header_right\";i:26;s:18:\"footer_main_linked\";i:0;s:15:\"footer_category\";i:0;s:13:\"footer_social\";i:0;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:130;}','yes');
INSERT INTO `wp_options` VALUES (165,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (192,'category_children','a:5:{i:2;a:4:{i:0;i:10;i:1;i:11;i:2;i:12;i:3;i:13;}i:4;a:3:{i:0;i:14;i:1;i:15;i:2;i:16;}i:5;a:4:{i:0;i:17;i:1;i:18;i:2;i:19;i:3;i:20;}i:6;a:2:{i:0;i:21;i:1;i:22;}i:8;a:2:{i:0;i:23;i:1;i:24;}}','yes');
INSERT INTO `wp_options` VALUES (199,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (205,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1637469554;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:25:\"menu-image/menu-image.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:24:\"w.org/plugins/menu-image\";s:4:\"slug\";s:10:\"menu-image\";s:6:\"plugin\";s:25:\"menu-image/menu-image.php\";s:11:\"new_version\";s:5:\"3.0.5\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/menu-image/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/menu-image.3.0.5.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:63:\"https://ps.w.org/menu-image/assets/icon-128x128.png?rev=2123398\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/menu-image/assets/banner-772x250.png?rev=2441835\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"4.4.0\";}}}','no');
INSERT INTO `wp_options` VALUES (206,'fs_active_plugins','O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:19:\"menu-image/freemius\";O:8:\"stdClass\":4:{s:7:\"version\";s:5:\"2.4.2\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1637397903;s:11:\"plugin_path\";s:25:\"menu-image/menu-image.php\";}}s:7:\"abspath\";s:58:\"C:\\Users\\ducva\\Local Sites\\huyenkhongsonthuong\\app\\public/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:25:\"menu-image/menu-image.php\";s:8:\"sdk_path\";s:19:\"menu-image/freemius\";s:7:\"version\";s:5:\"2.4.2\";s:13:\"in_activation\";b:0;s:9:\"timestamp\";i:1637397903;}}','yes');
INSERT INTO `wp_options` VALUES (207,'fs_debug_mode','','yes');
INSERT INTO `wp_options` VALUES (208,'fs_accounts','a:6:{s:21:\"id_slug_type_path_map\";a:1:{i:4123;a:3:{s:4:\"slug\";s:10:\"menu-image\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:25:\"menu-image/menu-image.php\";}}s:11:\"plugin_data\";a:1:{s:10:\"menu-image\";a:16:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:25:\"menu-image/menu-image.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1636970881;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:1;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.4.2\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"3.0.5\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:14:\"mywppage.local\";s:9:\"server_ip\";s:3:\"::1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1636970881;s:7:\"version\";s:5:\"3.0.5\";}s:15:\"prev_is_premium\";b:0;s:21:\"is_pending_activation\";b:1;}}s:13:\"file_slug_map\";a:1:{s:25:\"menu-image/menu-image.php\";s:10:\"menu-image\";}s:7:\"plugins\";a:1:{s:10:\"menu-image\";O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:10:\"Menu Image\";s:4:\"slug\";s:10:\"menu-image\";s:12:\"premium_slug\";s:18:\"menu-image-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";s:8:\"selected\";s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:25:\"menu-image/menu-image.php\";s:7:\"version\";s:5:\"3.0.5\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:7:\"Premium\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_1a1cac31f5af1ba3d31bd86fe0e8b\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"4123\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"00ab2772c4121df314c83ab19e2d92ab\";s:13:\"admin_notices\";a:1:{s:10:\"menu-image\";a:1:{s:18:\"activation_pending\";a:8:{s:7:\"message\";s:191:\"You should receive an activation email for <b>Menu Image</b> to your mailbox at <b>admin@gmail.com</b>. Please make sure you click the activation button in that email to complete the install.\";s:5:\"title\";s:7:\"Thanks!\";s:4:\"type\";s:7:\"success\";s:6:\"sticky\";b:1;s:2:\"id\";s:18:\"activation_pending\";s:10:\"manager_id\";s:10:\"menu-image\";s:6:\"plugin\";s:10:\"Menu Image\";s:10:\"wp_user_id\";N;}}}}','yes');
INSERT INTO `wp_options` VALUES (209,'fs_gdpr','a:1:{s:2:\"u1\";a:1:{s:8:\"required\";b:0;}}','yes');
INSERT INTO `wp_options` VALUES (210,'fs_api_cache','a:0:{}','no');
INSERT INTO `wp_options` VALUES (213,'menu_image_size_1','24x24','yes');
INSERT INTO `wp_options` VALUES (214,'menu_image_size_2','36x36','yes');
INSERT INTO `wp_options` VALUES (215,'menu_image_size_3','65x65','yes');
INSERT INTO `wp_options` VALUES (216,'menu_image_disable_mobile','0','yes');
INSERT INTO `wp_options` VALUES (217,'menu_image_hover','1','yes');
INSERT INTO `wp_options` VALUES (238,'widget_recent-comments','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (239,'widget_recent-posts','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (271,'_site_transient_timeout_browser_b4088f046bf9a570f2964ffc86d258ff','1638002169','no');
INSERT INTO `wp_options` VALUES (272,'_site_transient_browser_b4088f046bf9a570f2964ffc86d258ff','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"96.0.4664.45\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (291,'recovery_mode_email_last_sent','1637416504','yes');
INSERT INTO `wp_options` VALUES (295,'site_logo','130','yes');
INSERT INTO `wp_options` VALUES (298,'_site_transient_timeout_theme_roots','1637471354','no');
INSERT INTO `wp_options` VALUES (299,'_site_transient_theme_roots','a:4:{s:6:\"hkstv2\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (300,'_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b','1637512772','no');
INSERT INTO `wp_options` VALUES (301,'_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b','<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: A valid URL was not provided.</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: A valid URL was not provided.</p></div>','no');
INSERT INTO `wp_options` VALUES (304,'_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e','1637512908','no');
INSERT INTO `wp_options` VALUES (305,'_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e','a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:1:{i:0;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:31:\"WordCamp São Paulo Online 2021\";s:3:\"url\";s:35:\"https://saopaulo.wordcamp.org/2021/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2021-11-27 14:15:00\";s:8:\"end_date\";s:19:\"2021-11-27 14:15:00\";s:20:\"start_unix_timestamp\";i:1638033300;s:18:\"end_unix_timestamp\";i:1638033300;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"BR\";s:8:\"latitude\";d:-23.555771400000001;s:9:\"longitude\";d:-46.639557099999998;}}}}','no');
INSERT INTO `wp_options` VALUES (306,'_site_transient_timeout_wp_remote_block_patterns_81e61ac1547ff34fec7bd771bd25e786','1637473315','no');
INSERT INTO `wp_options` VALUES (307,'_site_transient_wp_remote_block_patterns_81e61ac1547ff34fec7bd771bd25e786','a:13:{i:0;O:8:\"stdClass\":7:{s:2:\"id\";i:184;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:7:\"Heading\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:290:\"\n<h2 class=\"alignwide\" style=\"font-size:48px;line-height:1.1\">We&#8217;re a studio in Berlin with an international practice in architecture, urban planning and interior design. We believe in sharing knowledge and promoting dialogue to increase the creative potential of collaboration.</h2>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:12:\"Heading text\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:1:{i:0;s:12:\"core/heading\";}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:402:\"<!-- wp:heading {\"align\":\"wide\",\"style\":{\"typography\":{\"fontSize\":\"48px\",\"lineHeight\":\"1.1\"}}} -->\n<h2 class=\"alignwide\" style=\"font-size:48px;line-height:1.1\">We\'re a studio in Berlin with an international practice in architecture, urban planning and interior design. We believe in sharing knowledge and promoting dialogue to increase the creative potential of collaboration.</h2>\n<!-- /wp:heading -->\";}i:1;O:8:\"stdClass\":7:{s:2:\"id\";i:185;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:35:\"Large header with left-aligned text\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1019:\"\n<div class=\"wp-block-cover alignfull has-background-dim-60 has-background-dim\" style=\"min-height:800px\"><img class=\"wp-block-cover__image-background\" alt=\"\" src=\"https://s.w.org/images/core/5.8/forest.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container\">\n<h2 class=\"alignwide has-text-color\" style=\"color:#ffe074;font-size:64px\">Forest.</h2>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:55%\">\n<div style=\"height:330px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p class=\"has-text-color\" style=\"color:#ffe074;font-size:12px;line-height:1.3\"><em>Even a child knows how valuable the forest is. The fresh, breathtaking smell of trees. Echoing birds flying above that dense magnitude. A stable climate, a sustainable diverse life and a source of culture. Yet, forests and other ecosystems hang in the balance, threatened to become croplands, pasture, and plantations.</em></p>\n</div>\n\n\n\n<div class=\"wp-block-column\"></div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:29:\"Cover image with quote on top\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1610:\"<!-- wp:cover {\"url\":\"https://s.w.org/images/core/5.8/forest.jpg\",\"dimRatio\":60,\"minHeight\":800,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-background-dim-60 has-background-dim\" style=\"min-height:800px\"><img class=\"wp-block-cover__image-background\" alt=\"\" src=\"https://s.w.org/images/core/5.8/forest.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container\"><!-- wp:heading {\"align\":\"wide\",\"style\":{\"color\":{\"text\":\"#ffe074\"},\"typography\":{\"fontSize\":\"64px\"}}} -->\n<h2 class=\"alignwide has-text-color\" style=\"color:#ffe074;font-size:64px\">Forest.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"55%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:55%\"><!-- wp:spacer {\"height\":330} -->\n<div style=\"height:330px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#ffe074\"},\"typography\":{\"lineHeight\":\"1.3\",\"fontSize\":\"12px\"}}} -->\n<p class=\"has-text-color\" style=\"color:#ffe074;font-size:12px;line-height:1.3\"><em>Even a child knows how valuable the forest is. The fresh, breathtaking smell of trees. Echoing birds flying above that dense magnitude. A stable climate, a sustainable diverse life and a source of culture. Yet, forests and other ecosystems hang in the balance, threatened to become croplands, pasture, and plantations.</em></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:cover -->\";}i:2;O:8:\"stdClass\":7:{s:2:\"id\";i:186;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:35:\"Large header with text and a button\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1082:\"\n<div class=\"wp-block-cover alignfull has-background-dim-40 has-background-dim has-parallax\" style=\"background-image:url(https://s.w.org/images/core/5.8/art-01.jpg);background-color:#000000;min-height:100vh\"><div class=\"wp-block-cover__inner-container\">\n<h2 class=\"alignwide has-white-color has-text-color\" style=\"font-size:48px;line-height:1.2\"><strong><em>Overseas:</em></strong><br><strong><em>1500 — 1960</em></strong></h2>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:60%\">\n<p class=\"has-text-color\" style=\"color:#ffffff\">An exhibition about the different representations of the ocean throughout time, between the sixteenth and the twentieth century. Taking place in our Open Room in <em>Floor 2</em>.</p>\n\n\n\n<div class=\"wp-container-6199cdd4791a7 wp-block-buttons\">\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link has-text-color has-background no-border-radius\" style=\"background-color:#000000;color:#ffffff\">Visit</a></div>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-column\"></div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:62:\"Large header with background image and text and button on top.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1865:\"<!-- wp:cover {\"url\":\"https://s.w.org/images/core/5.8/art-01.jpg\",\"hasParallax\":true,\"dimRatio\":40,\"customOverlayColor\":\"#000000\",\"minHeight\":100,\"minHeightUnit\":\"vh\",\"contentPosition\":\"center center\",\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-background-dim-40 has-background-dim has-parallax\" style=\"background-image:url(https://s.w.org/images/core/5.8/art-01.jpg);background-color:#000000;min-height:100vh\"><div class=\"wp-block-cover__inner-container\"><!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"48px\",\"lineHeight\":\"1.2\"}},\"className\":\"alignwide has-white-color has-text-color\"} -->\n<h2 class=\"alignwide has-white-color has-text-color\" style=\"font-size:48px;line-height:1.2\"><strong><em>Overseas:</em></strong><br><strong><em>1500 — 1960</em></strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"60%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:60%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#ffffff\"}}} -->\n<p class=\"has-text-color\" style=\"color:#ffffff\">An exhibition about the different representations of the ocean throughout time, between the sixteenth and the twentieth century. Taking place in our Open Room in <em>Floor 2</em>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"borderRadius\":0,\"style\":{\"color\":{\"text\":\"#ffffff\",\"background\":\"#000000\"}},\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link has-text-color has-background no-border-radius\" style=\"background-color:#000000;color:#ffffff\">Visit</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:cover -->\";}i:3;O:8:\"stdClass\":7:{s:2:\"id\";i:196;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:41:\"Media and text in a full height container\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1221:\"\n<div class=\"wp-block-cover alignfull has-background-dim\" style=\"background-color:#ffffff;min-height:100vh\"><div class=\"wp-block-cover__inner-container\">\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile is-vertically-aligned-center is-image-fill\" style=\"grid-template-columns:56% auto\"><figure class=\"wp-block-media-text__media\" style=\"background-image:url(https://s.w.org/images/core/5.8/soil.jpg);background-position:50% 50%\"><img src=\"https://s.w.org/images/core/5.8/soil.jpg\" alt=\"Close-up of dried, cracked earth.\" /></figure><div class=\"wp-block-media-text__content\">\n<h2 class=\"has-text-color\" style=\"color:#000000;font-size:32px\"><strong>What&#8217;s the problem?</strong></h2>\n\n\n\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\">Trees are more important today than ever before. More than 10,000 products are reportedly made from trees. Through chemistry, the humble woodpile is yielding chemicals, plastics and fabrics that were beyond comprehension when an axe first felled a Texas tree.</p>\n\n\n\n<div class=\"wp-container-6199cdd47a162 wp-block-buttons\">\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link\">Learn more</a></div>\n</div>\n</div></div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:77:\"Media and text block with image to the left and text and button to the right.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1858:\"<!-- wp:cover {\"customOverlayColor\":\"#ffffff\",\"minHeight\":100,\"minHeightUnit\":\"vh\",\"contentPosition\":\"center center\",\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-background-dim\" style=\"background-color:#ffffff;min-height:100vh\"><div class=\"wp-block-cover__inner-container\"><!-- wp:media-text {\"mediaLink\":\"https://s.w.org/images/core/5.8/soil.jpg\",\"mediaType\":\"image\",\"mediaWidth\":56,\"verticalAlignment\":\"center\",\"imageFill\":true} -->\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile is-vertically-aligned-center is-image-fill\" style=\"grid-template-columns:56% auto\"><figure class=\"wp-block-media-text__media\" style=\"background-image:url(https://s.w.org/images/core/5.8/soil.jpg);background-position:50% 50%\"><img src=\"https://s.w.org/images/core/5.8/soil.jpg\" alt=\"Close-up of dried, cracked earth.\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"32px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<h2 class=\"has-text-color\" style=\"color:#000000;font-size:32px\"><strong>What\'s the problem?</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"17px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\">Trees are more important today than ever before. More than 10,000 products are reportedly made from trees. Through chemistry, the humble woodpile is yielding chemicals, plastics and fabrics that were beyond comprehension when an axe first felled a Texas tree.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link\">Learn more</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div></div>\n<!-- /wp:media-text --></div></div>\n<!-- /wp:cover -->\";}i:4;O:8:\"stdClass\":7:{s:2:\"id\";i:192;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:37:\"Media and text with image on the left\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:520:\"\n<div class=\"wp-block-media-text alignfull is-stacked-on-mobile is-vertically-aligned-center\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/architecture-04.jpg\" alt=\"Close-up, abstract view of architecture.\" /></figure><div class=\"wp-block-media-text__content\">\n<h3 class=\"has-text-align-center has-text-color\" style=\"color:#000000\"><strong>Open Spaces</strong></h3>\n\n\n\n<p class=\"has-text-align-center has-extra-small-font-size\"><a href=\"#\">See case study ↗</a></p>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:66:\"Media and text block with image to the left and text to the right.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:827:\"<!-- wp:media-text {\"align\":\"full\",\"mediaType\":\"image\",\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-media-text alignfull is-stacked-on-mobile is-vertically-aligned-center\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/architecture-04.jpg\" alt=\"Close-up, abstract view of architecture.\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"textAlign\":\"center\",\"level\":3,\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h3 class=\"has-text-align-center has-text-color\" style=\"color:#000000\"><strong>Open Spaces</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-align-center has-extra-small-font-size\"><a href=\"#\">See case study ↗</a></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\";}i:5;O:8:\"stdClass\":7:{s:2:\"id\";i:195;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:38:\"Media and text with image on the right\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:685:\"\n<div class=\"wp-block-media-text alignfull has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-center is-style-default\" style=\"grid-template-columns:auto 56%\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/art-02.jpg\" alt=\"A green and brown rural landscape leading into a bright blue ocean and slightly cloudy sky, done in oil paints.\" /></figure><div class=\"wp-block-media-text__content\">\n<h2 class=\"has-text-color\" style=\"color:#000000\"><strong>Shore with Blue Sea</strong></h2>\n\n\n\n<p class=\"has-text-color\" style=\"color:#636363;font-size:17px;line-height:1.1\">Eleanor Harris&nbsp;(American, 1901-1942)</p>\n</div></div>\n\n\n\n<p></p>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:66:\"Media and text block with image to the right and text to the left.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1138:\"<!-- wp:media-text {\"align\":\"full\",\"mediaPosition\":\"right\",\"mediaLink\":\"#\",\"mediaType\":\"image\",\"mediaWidth\":56,\"verticalAlignment\":\"center\",\"className\":\"is-style-default\"} -->\n<div class=\"wp-block-media-text alignfull has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-center is-style-default\" style=\"grid-template-columns:auto 56%\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/art-02.jpg\" alt=\"A green and brown rural landscape leading into a bright blue ocean and slightly cloudy sky, done in oil paints.\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h2 class=\"has-text-color\" style=\"color:#000000\"><strong>Shore with Blue Sea</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":\"17px\"},\"color\":{\"text\":\"#636363\"}}} -->\n<p class=\"has-text-color\" style=\"color:#636363;font-size:17px;line-height:1.1\">Eleanor Harris&nbsp;(American, 1901-1942)</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\";}i:6;O:8:\"stdClass\":7:{s:2:\"id\";i:27;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:5:\"Quote\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:656:\"\n<hr class=\"wp-block-separator is-style-default\" />\n\n\n\n<div class=\"wp-block-image is-style-rounded\"><figure class=\"aligncenter size-large is-resized\"><img loading=\"lazy\" src=\"https://s.w.org/images/core/5.8/portrait.jpg\" alt=\"A side profile of a woman in a russet-colored turtleneck and white bag. She looks up with her eyes closed.\" width=\"150\" height=\"150\" /></figure></div>\n\n\n\n<blockquote class=\"wp-block-quote has-text-align-center is-style-large\"><p>&#8220;Contributing makes me feel like I&#8217;m being useful to the planet.&#8221;</p><cite>— Anna Wong, <em>Volunteer</em></cite></blockquote>\n\n\n\n<hr class=\"wp-block-separator is-style-default\" />\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:0:\"\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:1:{i:0;s:10:\"core/quote\";}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:1:{i:0;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1012:\"<!-- wp:separator {\"className\":\"is-style-default\"} -->\n<hr class=\"wp-block-separator is-style-default\" />\n<!-- /wp:separator -->\n\n<!-- wp:image {\"align\":\"center\",\"width\":150,\"height\":150,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} -->\n<div class=\"wp-block-image is-style-rounded\"><figure class=\"aligncenter size-large is-resized\"><img src=\"https://s.w.org/images/core/5.8/portrait.jpg\" alt=\"A side profile of a woman in a russet-colored turtleneck and white bag. She looks up with her eyes closed.\" width=\"150\" height=\"150\" /></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:quote {\"align\":\"center\",\"className\":\"is-style-large\"} -->\n<blockquote class=\"wp-block-quote has-text-align-center is-style-large\"><p>\"Contributing makes me feel like I\'m being useful to the planet.\"</p><cite>— Anna Wong, <em>Volunteer</em></cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:separator {\"className\":\"is-style-default\"} -->\n<hr class=\"wp-block-separator is-style-default\" />\n<!-- /wp:separator -->\";}i:7;O:8:\"stdClass\":7:{s:2:\"id\";i:200;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:21:\"Three columns of text\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:801:\"\n<div class=\"wp-block-columns alignfull has-text-color has-background\" style=\"background-color:#ffffff;color:#000000\">\n<div class=\"wp-block-column\">\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"http://wordpress.org\">Virtual Tour ↗</a></strong></h3>\n\n\n\n<p>Get a virtual tour of the museum. Ideal for schools and events.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Current Shows ↗</a></strong></h3>\n\n\n\n<p>Stay updated and see our current exhibitions here.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Useful Info ↗</a></strong></h3>\n\n\n\n<p>Get to know our opening times, ticket prices and discounts.</p>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:22:\"Three columns of text.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:3:{i:0;s:7:\"columns\";i:1;s:8:\"featured\";i:2;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1496:\"<!-- wp:columns {\"align\":\"full\",\"style\":{\"color\":{\"text\":\"#000000\",\"background\":\"#ffffff\"}}} -->\n<div class=\"wp-block-columns alignfull has-text-color has-background\" style=\"background-color:#ffffff;color:#000000\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"http://wordpress.org\">Virtual Tour ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Get a virtual tour of the museum. Ideal for schools and events.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Current Shows ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Stay updated and see our current exhibitions here.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Useful Info ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Get to know our opening times, ticket prices and discounts.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:8;O:8:\"stdClass\":7:{s:2:\"id\";i:199;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:34:\"Three columns with images and text\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:2646:\"\n<div class=\"wp-container-6199cdd47e065 wp-block-group alignfull has-background\" style=\"background-color:#f8f4e4\"><div class=\"wp-block-group__inner-container\">\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\">\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<h6 class=\"has-text-color\" style=\"color:#000000\">ECOSYSTEM</h6>\n\n\n\n<p class=\"has-text-color\" style=\"color:#000000;font-size:5vw;line-height:1.1\"><strong>Positive growth.</strong></p>\n\n\n\n<div style=\"height:5px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:33.38%\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\"><em>Nature</em>, in the common sense, refers to essences unchanged by man; space, the air, the river, the leaf.&nbsp;<em>Art</em>&nbsp;is applied to the mixture of his will with the same things, as in a house, a canal, a statue, a picture. But his operations taken together are so insignificant, a little chipping, baking, patching, and washing, that in an impression so grand as that of the world on the human mind, they do not vary the result.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:33%\">\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-01.jpg\" alt=\"The sun setting through a dense forest of trees.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:33.62%\">\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-02.jpg\" alt=\"Wind turbines standing on a grassy plain, against a blue sky.\" /></figure>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:67%\">\n<div class=\"wp-block-image\"><figure class=\"alignright size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-03.jpg\" alt=\"The sun shining over a ridge leading down into the shore. In the distance, a car drives down a road.\" /></figure></div>\n</div>\n\n\n\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:33%\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Undoubtedly we have no questions to ask which are unanswerable. We must trust the perfection of the creation so far, as to believe that whatever curiosity the order of things has awakened in our minds, the order of things can satisfy. Every man&#8217;s condition is a solution in hieroglyphic to those inquiries he would put.</p>\n</div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:77:\"Three columns with images and text, with vertical spacing for an offset look.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"columns\";i:1;s:8:\"featured\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:3980:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"color\":{\"background\":\"#f8f4e4\"}}} -->\n<div class=\"wp-block-group alignfull has-background\" style=\"background-color:#f8f4e4\"><!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading {\"level\":6,\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h6 class=\"has-text-color\" style=\"color:#000000\">ECOSYSTEM</h6>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":\"5vw\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:5vw;line-height:1.1\"><strong>Positive growth.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":5} -->\n<div style=\"height:5px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"33.38%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.38%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\"><em>Nature</em>, in the common sense, refers to essences unchanged by man; space, the air, the river, the leaf.&nbsp;<em>Art</em>&nbsp;is applied to the mixture of his will with the same things, as in a house, a canal, a statue, a picture. But his operations taken together are so insignificant, a little chipping, baking, patching, and washing, that in an impression so grand as that of the world on the human mind, they do not vary the result.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33%\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-01.jpg\" alt=\"The sun setting through a dense forest of trees.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"33.62%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.62%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-02.jpg\" alt=\"Wind turbines standing on a grassy plain, against a blue sky.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"67%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:67%\"><!-- wp:image {\"align\":\"right\",\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignright size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-03.jpg\" alt=\"The sun shining over a ridge leading down into the shore. In the distance, a car drives down a road.\" /></figure></div>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"33%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:33%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Undoubtedly we have no questions to ask which are unanswerable. We must trust the perfection of the creation so far, as to believe that whatever curiosity the order of things has awakened in our minds, the order of things can satisfy. Every man\'s condition is a solution in hieroglyphic to those inquiries he would put.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group -->\";}i:9;O:8:\"stdClass\":7:{s:2:\"id\";i:201;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:32:\"Three columns with offset images\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1077:\"\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:25%\">\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-01.jpg\" alt=\"Close-up, abstract view of geometric architecture.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:25%\">\n<div style=\"height:500px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div style=\"height:150px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/architecture-02.jpg\" alt=\"Close-up, angled view of a window on a white building.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:45%\">\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-03.jpg\" alt=\"Close-up of the corner of a white, geometric building with both sharp points and round corners.\" /></figure>\n\n\n\n<div style=\"height:285px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:33:\"Three columns with offset images.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"gallery\";i:1;s:6:\"images\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1753:\"<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"25%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:25%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-01.jpg\" alt=\"Close-up, abstract view of geometric architecture.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"25%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:25%\"><!-- wp:spacer {\"height\":500} -->\n<div style=\"height:500px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:spacer {\"height\":150} -->\n<div style=\"height:150px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/architecture-02.jpg\" alt=\"Close-up, angled view of a window on a white building.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"45%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:45%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-03.jpg\" alt=\"Close-up of the corner of a white, geometric building with both sharp points and round corners.\" /></figure>\n<!-- /wp:image -->\n\n<!-- wp:spacer {\"height\":285} -->\n<div style=\"height:285px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:10;O:8:\"stdClass\":7:{s:2:\"id\";i:29;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:29:\"Two columns of text and title\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1337:\"\n<h2 style=\"font-size:38px;line-height:1.4\"><strong>The voyage had begun, and had begun happily with a soft blue sky, and a calm sea.</strong></h2>\n\n\n\n<div class=\"wp-block-columns\">\n<div class=\"wp-block-column\">\n<p style=\"font-size:18px\">They followed her on to the deck. All the smoke and the houses had disappeared, and the ship was out in a wide space of sea very fresh and clear though pale in the early light. They had left London sitting on its mud. A very thin line of shadow tapered on the horizon, scarcely thick enough to stand the burden of Paris, which nevertheless rested upon it. They were free of roads, free of mankind, and the same exhilaration at their freedom ran through them all.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<p style=\"font-size:18px\">The ship was making her way steadily through small waves which slapped her and then fizzled like effervescing water, leaving a little border of bubbles and foam on either side. The colourless October sky above was thinly clouded as if by the trail of wood-fire smoke, and the air was wonderfully salt and brisk. Indeed it was too cold to stand still. Mrs. Ambrose drew her arm within her husband&#8217;s, and as they moved off it could be seen from the way in which her sloping cheek turned up to his that she had something private to communicate.</p>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:47:\"Two columns of text preceded by a long heading.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"columns\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1711:\"<!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":38,\"lineHeight\":\"1.4\"}}} -->\n<h2 style=\"font-size:38px;line-height:1.4\"><strong>The voyage had begun, and had begun happily with a soft blue sky, and a calm sea.</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":18}}} -->\n<p style=\"font-size:18px\">They followed her on to the deck. All the smoke and the houses had disappeared, and the ship was out in a wide space of sea very fresh and clear though pale in the early light. They had left London sitting on its mud. A very thin line of shadow tapered on the horizon, scarcely thick enough to stand the burden of Paris, which nevertheless rested upon it. They were free of roads, free of mankind, and the same exhilaration at their freedom ran through them all.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":18}}} -->\n<p style=\"font-size:18px\">The ship was making her way steadily through small waves which slapped her and then fizzled like effervescing water, leaving a little border of bubbles and foam on either side. The colourless October sky above was thinly clouded as if by the trail of wood-fire smoke, and the air was wonderfully salt and brisk. Indeed it was too cold to stand still. Mrs. Ambrose drew her arm within her husband\'s, and as they moved off it could be seen from the way in which her sloping cheek turned up to his that she had something private to communicate.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:11;O:8:\"stdClass\":7:{s:2:\"id\";i:197;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:39:\"Two columns of text with offset heading\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1915:\"\n<div class=\"wp-container-6199cdd480d4d wp-block-group alignfull has-background\" style=\"background-color:#f2f0e9\"><div class=\"wp-block-group__inner-container\">\n<div style=\"height:70px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-block-columns alignwide are-vertically-aligned-center\">\n<div class=\"wp-block-column\" style=\"flex-basis:50%\">\n<p class=\"has-text-color\" style=\"color:#000000;font-size:30px;line-height:1.1\"><strong>Oceanic Inspiration</strong></p>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:50%\">\n<hr class=\"wp-block-separator has-text-color has-background is-style-wide\" style=\"background-color:#000000;color:#000000\" />\n</div>\n</div>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\"></div>\n\n\n\n<div class=\"wp-block-column\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Winding veils round their heads, the women walked on deck. They were now moving steadily down the river, passing the dark shapes of ships at anchor, and London was a swarm of lights with a pale yellow canopy drooping above it. There were the lights of the great theatres, the lights of the long streets, lights that indicated huge squares of domestic comfort, lights that hung high in air.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">No darkness would ever settle upon those lamps, as no darkness had settled upon them for hundreds of years. It seemed dreadful that the town should blaze for ever in the same spot; dreadful at least to people going away to adventure upon the sea, and beholding it as a circumscribed mound, eternally burnt, eternally scarred. From the deck of the ship the great city appeared a crouched and cowardly figure, a sedentary miser.</p>\n</div>\n</div>\n\n\n\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:43:\"Two columns of text with an offset heading.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"columns\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:2837:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"color\":{\"background\":\"#f2f0e9\"}}} -->\n<div class=\"wp-block-group alignfull has-background\" style=\"background-color:#f2f0e9\"><!-- wp:spacer {\"height\":70} -->\n<div style=\"height:70px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide are-vertically-aligned-center\"><!-- wp:column {\"width\":\"50%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:50%\"><!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":\"30px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:30px;line-height:1.1\"><strong>Oceanic Inspiration</strong></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"50%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:50%\"><!-- wp:separator {\"customColor\":\"#000000\",\"className\":\"is-style-wide\"} -->\n<hr class=\"wp-block-separator has-text-color has-background is-style-wide\" style=\"background-color:#000000;color:#000000\" />\n<!-- /wp:separator --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Winding veils round their heads, the women walked on deck. They were now moving steadily down the river, passing the dark shapes of ships at anchor, and London was a swarm of lights with a pale yellow canopy drooping above it. There were the lights of the great theatres, the lights of the long streets, lights that indicated huge squares of domestic comfort, lights that hung high in air.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">No darkness would ever settle upon those lamps, as no darkness had settled upon them for hundreds of years. It seemed dreadful that the town should blaze for ever in the same spot; dreadful at least to people going away to adventure upon the sea, and beholding it as a circumscribed mound, eternally burnt, eternally scarred. From the deck of the ship the great city appeared a crouched and cowardly figure, a sedentary miser.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:group -->\";}i:12;O:8:\"stdClass\":7:{s:2:\"id\";i:19;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:23:\"Two images side by side\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:647:\"\n<figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" alt=\"An aerial view of waves crashing against a shore.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" data-link=\"#\" /></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" alt=\"An aerial view of a field. A road runs through the upper right corner.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" data-link=\"#\" /></figure></li></ul></figure>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:41:\"An image gallery with two example images.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:20:\"wpop_unlisted_reason\";s:0:\"\";}s:14:\"category_slugs\";a:1:{i:0;s:7:\"gallery\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:737:\"<!-- wp:gallery {\"ids\":[null,null],\"linkTo\":\"none\",\"align\":\"wide\"} -->\n<figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" alt=\"An aerial view of waves crashing against a shore.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" data-link=\"#\" /></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" alt=\"An aerial view of a field. A road runs through the upper right corner.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" data-link=\"#\" /></figure></li></ul></figure>\n<!-- /wp:gallery -->\";}}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=751 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,5,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (4,5,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (5,5,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (6,5,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (7,5,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (8,5,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (9,5,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (10,5,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (11,5,'_menu_item_orphaned','1636952062');
INSERT INTO `wp_postmeta` VALUES (12,6,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (13,6,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (14,6,'_menu_item_object_id','6');
INSERT INTO `wp_postmeta` VALUES (15,6,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (16,6,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (17,6,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (18,6,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (19,6,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (20,6,'_menu_item_orphaned','1636952247');
INSERT INTO `wp_postmeta` VALUES (21,7,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (22,7,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (23,7,'_menu_item_object_id','7');
INSERT INTO `wp_postmeta` VALUES (24,7,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (25,7,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (26,7,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (27,7,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (28,7,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (29,7,'_menu_item_orphaned','1636968565');
INSERT INTO `wp_postmeta` VALUES (30,8,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (31,8,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (32,8,'_menu_item_object_id','8');
INSERT INTO `wp_postmeta` VALUES (33,8,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (34,8,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (35,8,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (36,8,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (37,8,'_menu_item_url','http://tat-ca-danh-muc');
INSERT INTO `wp_postmeta` VALUES (38,8,'_menu_item_orphaned','1636968582');
INSERT INTO `wp_postmeta` VALUES (39,9,'_edit_lock','1636968573:1');
INSERT INTO `wp_postmeta` VALUES (40,10,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (41,10,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (42,10,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (43,10,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (44,10,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (45,10,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (46,10,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (47,10,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (48,12,'_edit_lock','1636968612:1');
INSERT INTO `wp_postmeta` VALUES (57,15,'_edit_lock','1636969091:1');
INSERT INTO `wp_postmeta` VALUES (66,18,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (67,18,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (68,18,'_menu_item_object_id','18');
INSERT INTO `wp_postmeta` VALUES (69,18,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (70,18,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (71,18,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (72,18,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (73,18,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (75,19,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (76,19,'_menu_item_menu_item_parent','18');
INSERT INTO `wp_postmeta` VALUES (77,19,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (78,19,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (79,19,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (80,19,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (81,19,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (82,19,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (84,20,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (85,20,'_menu_item_menu_item_parent','18');
INSERT INTO `wp_postmeta` VALUES (86,20,'_menu_item_object_id','7');
INSERT INTO `wp_postmeta` VALUES (87,20,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (88,20,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (89,20,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (90,20,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (91,20,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (93,21,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (94,21,'_menu_item_menu_item_parent','18');
INSERT INTO `wp_postmeta` VALUES (95,21,'_menu_item_object_id','4');
INSERT INTO `wp_postmeta` VALUES (96,21,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (97,21,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (98,21,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (99,21,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (100,21,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (102,22,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (103,22,'_menu_item_menu_item_parent','21');
INSERT INTO `wp_postmeta` VALUES (104,22,'_menu_item_object_id','14');
INSERT INTO `wp_postmeta` VALUES (105,22,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (106,22,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (107,22,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (108,22,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (109,22,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (111,23,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (112,23,'_menu_item_menu_item_parent','21');
INSERT INTO `wp_postmeta` VALUES (113,23,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (114,23,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (115,23,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (116,23,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (117,23,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (118,23,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (120,24,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (121,24,'_menu_item_menu_item_parent','21');
INSERT INTO `wp_postmeta` VALUES (122,24,'_menu_item_object_id','16');
INSERT INTO `wp_postmeta` VALUES (123,24,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (124,24,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (125,24,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (126,24,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (127,24,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (129,25,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (130,25,'_menu_item_menu_item_parent','18');
INSERT INTO `wp_postmeta` VALUES (131,25,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (132,25,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (133,25,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (134,25,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (135,25,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (136,25,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (138,26,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (139,26,'_menu_item_menu_item_parent','25');
INSERT INTO `wp_postmeta` VALUES (140,26,'_menu_item_object_id','10');
INSERT INTO `wp_postmeta` VALUES (141,26,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (142,26,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (143,26,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (144,26,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (145,26,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (147,27,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (148,27,'_menu_item_menu_item_parent','25');
INSERT INTO `wp_postmeta` VALUES (149,27,'_menu_item_object_id','11');
INSERT INTO `wp_postmeta` VALUES (150,27,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (151,27,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (152,27,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (153,27,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (154,27,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (156,28,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (157,28,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (158,28,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (159,28,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (160,28,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (161,28,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (162,28,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (163,28,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (164,28,'_menu_item_orphaned','1636969435');
INSERT INTO `wp_postmeta` VALUES (165,29,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (166,29,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (167,29,'_menu_item_object_id','12');
INSERT INTO `wp_postmeta` VALUES (168,29,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (169,29,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (170,29,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (171,29,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (172,29,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (173,29,'_menu_item_orphaned','1636969435');
INSERT INTO `wp_postmeta` VALUES (174,30,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (175,30,'_menu_item_menu_item_parent','18');
INSERT INTO `wp_postmeta` VALUES (176,30,'_menu_item_object_id','5');
INSERT INTO `wp_postmeta` VALUES (177,30,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (178,30,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (179,30,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (180,30,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (181,30,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (183,31,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (184,31,'_menu_item_menu_item_parent','30');
INSERT INTO `wp_postmeta` VALUES (185,31,'_menu_item_object_id','17');
INSERT INTO `wp_postmeta` VALUES (186,31,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (187,31,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (188,31,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (189,31,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (190,31,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (192,32,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (193,32,'_menu_item_menu_item_parent','30');
INSERT INTO `wp_postmeta` VALUES (194,32,'_menu_item_object_id','18');
INSERT INTO `wp_postmeta` VALUES (195,32,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (196,32,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (197,32,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (198,32,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (199,32,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (201,33,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (202,33,'_menu_item_menu_item_parent','30');
INSERT INTO `wp_postmeta` VALUES (203,33,'_menu_item_object_id','19');
INSERT INTO `wp_postmeta` VALUES (204,33,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (205,33,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (206,33,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (207,33,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (208,33,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (210,34,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (211,34,'_menu_item_menu_item_parent','30');
INSERT INTO `wp_postmeta` VALUES (212,34,'_menu_item_object_id','20');
INSERT INTO `wp_postmeta` VALUES (213,34,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (214,34,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (215,34,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (216,34,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (217,34,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (219,35,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (220,35,'_menu_item_menu_item_parent','18');
INSERT INTO `wp_postmeta` VALUES (221,35,'_menu_item_object_id','8');
INSERT INTO `wp_postmeta` VALUES (222,35,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (223,35,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (224,35,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (225,35,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (226,35,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (228,36,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (229,36,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (230,36,'_menu_item_object_id','24');
INSERT INTO `wp_postmeta` VALUES (231,36,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (232,36,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (233,36,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (234,36,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (235,36,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (236,36,'_menu_item_orphaned','1636969436');
INSERT INTO `wp_postmeta` VALUES (237,37,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (238,37,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (239,37,'_menu_item_object_id','23');
INSERT INTO `wp_postmeta` VALUES (240,37,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (241,37,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (242,37,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (243,37,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (244,37,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (245,37,'_menu_item_orphaned','1636969436');
INSERT INTO `wp_postmeta` VALUES (246,38,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (247,38,'_menu_item_menu_item_parent','18');
INSERT INTO `wp_postmeta` VALUES (248,38,'_menu_item_object_id','6');
INSERT INTO `wp_postmeta` VALUES (249,38,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (250,38,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (251,38,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (252,38,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (253,38,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (255,39,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (256,39,'_menu_item_menu_item_parent','38');
INSERT INTO `wp_postmeta` VALUES (257,39,'_menu_item_object_id','22');
INSERT INTO `wp_postmeta` VALUES (258,39,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (259,39,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (260,39,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (261,39,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (262,39,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (264,40,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (265,40,'_menu_item_menu_item_parent','38');
INSERT INTO `wp_postmeta` VALUES (266,40,'_menu_item_object_id','21');
INSERT INTO `wp_postmeta` VALUES (267,40,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (268,40,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (269,40,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (270,40,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (271,40,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (282,42,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (283,42,'_menu_item_menu_item_parent','35');
INSERT INTO `wp_postmeta` VALUES (284,42,'_menu_item_object_id','24');
INSERT INTO `wp_postmeta` VALUES (285,42,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (286,42,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (287,42,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (288,42,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (289,42,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (291,43,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (292,43,'_menu_item_menu_item_parent','35');
INSERT INTO `wp_postmeta` VALUES (293,43,'_menu_item_object_id','23');
INSERT INTO `wp_postmeta` VALUES (294,43,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (295,43,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (296,43,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (297,43,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (298,43,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (300,44,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (301,44,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (302,44,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (303,44,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (304,44,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (305,44,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (306,44,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (307,44,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (308,44,'_menu_item_orphaned','1636969763');
INSERT INTO `wp_postmeta` VALUES (309,45,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (310,45,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (311,45,'_menu_item_object_id','12');
INSERT INTO `wp_postmeta` VALUES (312,45,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (313,45,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (314,45,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (315,45,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (316,45,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (317,45,'_menu_item_orphaned','1636969763');
INSERT INTO `wp_postmeta` VALUES (318,46,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (319,46,'_menu_item_menu_item_parent','25');
INSERT INTO `wp_postmeta` VALUES (320,46,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (321,46,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (322,46,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (323,46,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (324,46,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (325,46,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (327,47,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (328,47,'_menu_item_menu_item_parent','25');
INSERT INTO `wp_postmeta` VALUES (329,47,'_menu_item_object_id','12');
INSERT INTO `wp_postmeta` VALUES (330,47,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (331,47,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (332,47,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (333,47,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (334,47,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (336,48,'_wp_attached_file','2021/11/baiviet1.png');
INSERT INTO `wp_postmeta` VALUES (337,48,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:380;s:6:\"height\";i:380;s:4:\"file\";s:20:\"2021/11/baiviet1.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"baiviet1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"baiviet1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:18:\"baiviet1-24x24.png\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:18:\"baiviet1-36x36.png\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:18:\"baiviet1-65x65.png\";s:5:\"width\";i:65;s:6:\"height\";i:65;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (338,49,'_wp_attached_file','2021/11/baiviet2.jpg');
INSERT INTO `wp_postmeta` VALUES (339,49,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:380;s:6:\"height\";i:380;s:4:\"file\";s:20:\"2021/11/baiviet2.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"baiviet2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"baiviet2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:18:\"baiviet2-24x24.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:18:\"baiviet2-36x36.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:18:\"baiviet2-65x65.jpg\";s:5:\"width\";i:65;s:6:\"height\";i:65;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"13\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:21:\"Canon EOS 5D Mark III\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1496296825\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"100\";s:3:\"iso\";s:4:\"1000\";s:13:\"shutter_speed\";s:6:\"0.0025\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (340,50,'_wp_attached_file','2021/11/baiviet3.png');
INSERT INTO `wp_postmeta` VALUES (341,50,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:380;s:6:\"height\";i:380;s:4:\"file\";s:20:\"2021/11/baiviet3.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"baiviet3-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"baiviet3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:18:\"baiviet3-24x24.png\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:18:\"baiviet3-36x36.png\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:18:\"baiviet3-65x65.png\";s:5:\"width\";i:65;s:6:\"height\";i:65;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (342,51,'_wp_attached_file','2021/11/baiviet4.png');
INSERT INTO `wp_postmeta` VALUES (343,51,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:395;s:6:\"height\";i:395;s:4:\"file\";s:20:\"2021/11/baiviet4.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"baiviet4-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"baiviet4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:18:\"baiviet4-24x24.png\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:18:\"baiviet4-36x36.png\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:18:\"baiviet4-65x65.png\";s:5:\"width\";i:65;s:6:\"height\";i:65;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (344,52,'_wp_attached_file','2021/11/banner-1.png');
INSERT INTO `wp_postmeta` VALUES (345,52,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:960;s:6:\"height\";i:320;s:4:\"file\";s:20:\"2021/11/banner-1.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"banner-1-300x100.png\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"banner-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"banner-1-768x256.png\";s:5:\"width\";i:768;s:6:\"height\";i:256;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:17:\"banner-1-24x8.png\";s:5:\"width\";i:24;s:6:\"height\";i:8;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:18:\"banner-1-36x12.png\";s:5:\"width\";i:36;s:6:\"height\";i:12;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:18:\"banner-1-65x22.png\";s:5:\"width\";i:65;s:6:\"height\";i:22;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (346,53,'_wp_attached_file','2021/11/banner-2.png');
INSERT INTO `wp_postmeta` VALUES (347,53,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:960;s:6:\"height\";i:320;s:4:\"file\";s:20:\"2021/11/banner-2.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"banner-2-300x100.png\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"banner-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"banner-2-768x256.png\";s:5:\"width\";i:768;s:6:\"height\";i:256;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:17:\"banner-2-24x8.png\";s:5:\"width\";i:24;s:6:\"height\";i:8;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:18:\"banner-2-36x12.png\";s:5:\"width\";i:36;s:6:\"height\";i:12;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:18:\"banner-2-65x22.png\";s:5:\"width\";i:65;s:6:\"height\";i:22;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (348,54,'_wp_attached_file','2021/11/banner-3.png');
INSERT INTO `wp_postmeta` VALUES (349,54,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:960;s:6:\"height\";i:320;s:4:\"file\";s:20:\"2021/11/banner-3.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"banner-3-300x100.png\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"banner-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"banner-3-768x256.png\";s:5:\"width\";i:768;s:6:\"height\";i:256;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:17:\"banner-3-24x8.png\";s:5:\"width\";i:24;s:6:\"height\";i:8;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:18:\"banner-3-36x12.png\";s:5:\"width\";i:36;s:6:\"height\";i:12;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:18:\"banner-3-65x22.png\";s:5:\"width\";i:65;s:6:\"height\";i:22;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (350,55,'_wp_attached_file','2021/11/banner-4.png');
INSERT INTO `wp_postmeta` VALUES (351,55,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:378;s:6:\"height\";i:378;s:4:\"file\";s:20:\"2021/11/banner-4.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"banner-4-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"banner-4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:18:\"banner-4-24x24.png\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:18:\"banner-4-36x36.png\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:18:\"banner-4-65x65.png\";s:5:\"width\";i:65;s:6:\"height\";i:65;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (352,56,'_wp_attached_file','2021/11/gallery1.png');
INSERT INTO `wp_postmeta` VALUES (353,56,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:395;s:6:\"height\";i:395;s:4:\"file\";s:20:\"2021/11/gallery1.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"gallery1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"gallery1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:18:\"gallery1-24x24.png\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:18:\"gallery1-36x36.png\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:18:\"gallery1-65x65.png\";s:5:\"width\";i:65;s:6:\"height\";i:65;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (354,57,'_wp_attached_file','2021/11/gallery2.jpg');
INSERT INTO `wp_postmeta` VALUES (355,57,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2047;s:6:\"height\";i:914;s:4:\"file\";s:20:\"2021/11/gallery2.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"gallery2-300x134.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:134;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"gallery2-1024x457.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:457;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"gallery2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"gallery2-768x343.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:343;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:21:\"gallery2-1536x686.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:686;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:18:\"gallery2-24x11.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:11;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:18:\"gallery2-36x16.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:16;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:18:\"gallery2-65x29.jpg\";s:5:\"width\";i:65;s:6:\"height\";i:29;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (356,58,'_wp_attached_file','2021/11/gallery3.png');
INSERT INTO `wp_postmeta` VALUES (357,58,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:20:\"2021/11/gallery3.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"gallery3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:18:\"gallery3-24x24.png\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:18:\"gallery3-36x36.png\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:18:\"gallery3-65x65.png\";s:5:\"width\";i:65;s:6:\"height\";i:65;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (358,59,'_wp_attached_file','2021/11/gallery4.png');
INSERT INTO `wp_postmeta` VALUES (359,59,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:380;s:6:\"height\";i:380;s:4:\"file\";s:20:\"2021/11/gallery4.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"gallery4-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"gallery4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:18:\"gallery4-24x24.png\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:18:\"gallery4-36x36.png\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:18:\"gallery4-65x65.png\";s:5:\"width\";i:65;s:6:\"height\";i:65;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (360,60,'_wp_attached_file','2021/11/gallery5.png');
INSERT INTO `wp_postmeta` VALUES (361,60,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:20:\"2021/11/gallery5.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"gallery5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:18:\"gallery5-24x24.png\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:18:\"gallery5-36x36.png\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:18:\"gallery5-65x65.png\";s:5:\"width\";i:65;s:6:\"height\";i:65;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (362,61,'_wp_attached_file','2021/11/gallery6.png');
INSERT INTO `wp_postmeta` VALUES (363,61,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:380;s:6:\"height\";i:380;s:4:\"file\";s:20:\"2021/11/gallery6.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"gallery6-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"gallery6-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:18:\"gallery6-24x24.png\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:18:\"gallery6-36x36.png\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:18:\"gallery6-65x65.png\";s:5:\"width\";i:65;s:6:\"height\";i:65;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (364,62,'_wp_attached_file','2021/11/gallery7.png');
INSERT INTO `wp_postmeta` VALUES (365,62,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:378;s:6:\"height\";i:378;s:4:\"file\";s:20:\"2021/11/gallery7.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"gallery7-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"gallery7-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:18:\"gallery7-24x24.png\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:18:\"gallery7-36x36.png\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:18:\"gallery7-65x65.png\";s:5:\"width\";i:65;s:6:\"height\";i:65;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (366,63,'_wp_attached_file','2021/11/lk1.png');
INSERT INTO `wp_postmeta` VALUES (367,63,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:90;s:6:\"height\";i:90;s:4:\"file\";s:15:\"2021/11/lk1.png\";s:5:\"sizes\";a:3:{s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:13:\"lk1-24x24.png\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:13:\"lk1-36x36.png\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:13:\"lk1-65x65.png\";s:5:\"width\";i:65;s:6:\"height\";i:65;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (368,64,'_wp_attached_file','2021/11/lk2.png');
INSERT INTO `wp_postmeta` VALUES (369,64,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:90;s:6:\"height\";i:90;s:4:\"file\";s:15:\"2021/11/lk2.png\";s:5:\"sizes\";a:3:{s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:13:\"lk2-24x24.png\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:13:\"lk2-36x36.png\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:13:\"lk2-65x65.png\";s:5:\"width\";i:65;s:6:\"height\";i:65;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (370,65,'_wp_attached_file','2021/11/lk3.png');
INSERT INTO `wp_postmeta` VALUES (371,65,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:90;s:6:\"height\";i:90;s:4:\"file\";s:15:\"2021/11/lk3.png\";s:5:\"sizes\";a:3:{s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:13:\"lk3-24x24.png\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:13:\"lk3-36x36.png\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:13:\"lk3-65x65.png\";s:5:\"width\";i:65;s:6:\"height\";i:65;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (372,66,'_wp_attached_file','2021/11/lk4.png');
INSERT INTO `wp_postmeta` VALUES (373,66,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:90;s:6:\"height\";i:90;s:4:\"file\";s:15:\"2021/11/lk4.png\";s:5:\"sizes\";a:3:{s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:13:\"lk4-24x24.png\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:13:\"lk4-36x36.png\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:13:\"lk4-65x65.png\";s:5:\"width\";i:65;s:6:\"height\";i:65;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (374,67,'_wp_attached_file','2021/11/logo.png');
INSERT INTO `wp_postmeta` VALUES (375,67,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:160;s:6:\"height\";i:159;s:4:\"file\";s:16:\"2021/11/logo.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:14:\"logo-24x24.png\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:14:\"logo-36x36.png\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:14:\"logo-65x65.png\";s:5:\"width\";i:65;s:6:\"height\";i:65;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (376,68,'_wp_attached_file','2021/11/logo-text.png');
INSERT INTO `wp_postmeta` VALUES (377,68,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:456;s:6:\"height\";i:164;s:4:\"file\";s:21:\"2021/11/logo-text.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"logo-text-300x108.png\";s:5:\"width\";i:300;s:6:\"height\";i:108;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"logo-text-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:18:\"logo-text-24x9.png\";s:5:\"width\";i:24;s:6:\"height\";i:9;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:19:\"logo-text-36x13.png\";s:5:\"width\";i:36;s:6:\"height\";i:13;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:19:\"logo-text-65x23.png\";s:5:\"width\";i:65;s:6:\"height\";i:23;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (378,69,'_wp_attached_file','2021/11/poem1.png');
INSERT INTO `wp_postmeta` VALUES (379,69,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:17:\"2021/11/poem1.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"poem1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:15:\"poem1-24x24.png\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:15:\"poem1-36x36.png\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:15:\"poem1-65x65.png\";s:5:\"width\";i:65;s:6:\"height\";i:65;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (380,70,'_wp_attached_file','2021/11/poem2.png');
INSERT INTO `wp_postmeta` VALUES (381,70,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:378;s:6:\"height\";i:378;s:4:\"file\";s:17:\"2021/11/poem2.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"poem2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"poem2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:15:\"poem2-24x24.png\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:15:\"poem2-36x36.png\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:15:\"poem2-65x65.png\";s:5:\"width\";i:65;s:6:\"height\";i:65;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (382,71,'_wp_attached_file','2021/11/poem3.png');
INSERT INTO `wp_postmeta` VALUES (383,71,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:380;s:6:\"height\";i:380;s:4:\"file\";s:17:\"2021/11/poem3.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"poem3-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"poem3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:15:\"poem3-24x24.png\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:15:\"poem3-36x36.png\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:15:\"poem3-65x65.png\";s:5:\"width\";i:65;s:6:\"height\";i:65;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (384,72,'_wp_attached_file','2021/11/sinhhoat1.jpg');
INSERT INTO `wp_postmeta` VALUES (385,72,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1189;s:4:\"file\";s:21:\"2021/11/sinhhoat1.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"sinhhoat1-300x174.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:174;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"sinhhoat1-1024x595.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:595;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"sinhhoat1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"sinhhoat1-768x446.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:446;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"sinhhoat1-1536x892.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:892;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:19:\"sinhhoat1-24x14.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:14;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:19:\"sinhhoat1-36x21.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:21;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:19:\"sinhhoat1-65x38.jpg\";s:5:\"width\";i:65;s:6:\"height\";i:38;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (386,73,'_wp_attached_file','2021/11/sinhhoat2.jpg');
INSERT INTO `wp_postmeta` VALUES (387,73,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1536;s:4:\"file\";s:21:\"2021/11/sinhhoat2.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"sinhhoat2-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"sinhhoat2-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"sinhhoat2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"sinhhoat2-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"sinhhoat2-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:19:\"sinhhoat2-24x18.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:18;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:19:\"sinhhoat2-36x27.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:27;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:19:\"sinhhoat2-65x49.jpg\";s:5:\"width\";i:65;s:6:\"height\";i:49;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (388,74,'_wp_attached_file','2021/11/sinhhoat3.jpg');
INSERT INTO `wp_postmeta` VALUES (389,74,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1536;s:4:\"file\";s:21:\"2021/11/sinhhoat3.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"sinhhoat3-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"sinhhoat3-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"sinhhoat3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"sinhhoat3-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"sinhhoat3-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:19:\"sinhhoat3-24x18.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:18;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:19:\"sinhhoat3-36x27.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:27;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:19:\"sinhhoat3-65x49.jpg\";s:5:\"width\";i:65;s:6:\"height\";i:49;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (390,75,'_wp_attached_file','2021/11/sinhhoat4.jpg');
INSERT INTO `wp_postmeta` VALUES (391,75,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1276;s:6:\"height\";i:956;s:4:\"file\";s:21:\"2021/11/sinhhoat4.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"sinhhoat4-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"sinhhoat4-1024x767.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"sinhhoat4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"sinhhoat4-768x575.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:575;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:19:\"sinhhoat4-24x18.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:18;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:19:\"sinhhoat4-36x27.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:27;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:19:\"sinhhoat4-65x49.jpg\";s:5:\"width\";i:65;s:6:\"height\";i:49;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (392,76,'_wp_attached_file','2021/11/sinhhoat5.jpg');
INSERT INTO `wp_postmeta` VALUES (393,76,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1594;s:6:\"height\";i:1280;s:4:\"file\";s:21:\"2021/11/sinhhoat5.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"sinhhoat5-300x241.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:241;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"sinhhoat5-1024x822.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:822;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"sinhhoat5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"sinhhoat5-768x617.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:617;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"sinhhoat5-1536x1233.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1233;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:19:\"sinhhoat5-24x19.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:19;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:19:\"sinhhoat5-36x29.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:29;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:19:\"sinhhoat5-65x52.jpg\";s:5:\"width\";i:65;s:6:\"height\";i:52;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (394,77,'_wp_attached_file','2021/11/sinhhoat6.jpg');
INSERT INTO `wp_postmeta` VALUES (395,77,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:960;s:6:\"height\";i:540;s:4:\"file\";s:21:\"2021/11/sinhhoat6.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"sinhhoat6-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"sinhhoat6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"sinhhoat6-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:19:\"sinhhoat6-24x14.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:14;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:19:\"sinhhoat6-36x20.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:20;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:19:\"sinhhoat6-65x37.jpg\";s:5:\"width\";i:65;s:6:\"height\";i:37;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (396,78,'_wp_attached_file','2021/11/su.jpg');
INSERT INTO `wp_postmeta` VALUES (397,78,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1916;s:6:\"height\";i:1916;s:4:\"file\";s:14:\"2021/11/su.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"su-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"su-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"su-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"su-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"su-1536x1536.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:12:\"su-24x24.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:12:\"su-36x36.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:12:\"su-65x65.jpg\";s:5:\"width\";i:65;s:6:\"height\";i:65;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (398,79,'_wp_attached_file','2021/11/su@10x.png');
INSERT INTO `wp_postmeta` VALUES (399,79,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:6190;s:6:\"height\";i:6190;s:4:\"file\";s:18:\"2021/11/su@10x.png\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"su@10x-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"su@10x-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"su@10x-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"su@10x-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:20:\"su@10x-1536x1536.png\";s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:20:\"su@10x-2048x2048.png\";s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:16:\"su@10x-24x24.png\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:16:\"su@10x-36x36.png\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:16:\"su@10x-65x65.png\";s:5:\"width\";i:65;s:6:\"height\";i:65;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (400,80,'_wp_attached_file','2021/11/vancanh1.jpg');
INSERT INTO `wp_postmeta` VALUES (401,80,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:20:\"2021/11/vancanh1.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"vancanh1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"vancanh1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:18:\"vancanh1-24x24.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:18:\"vancanh1-36x36.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:18:\"vancanh1-65x65.jpg\";s:5:\"width\";i:65;s:6:\"height\";i:65;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (402,81,'_wp_attached_file','2021/11/vancanh2.jpg');
INSERT INTO `wp_postmeta` VALUES (403,81,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:20:\"2021/11/vancanh2.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"vancanh2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"vancanh2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:18:\"vancanh2-24x24.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:18:\"vancanh2-36x36.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:18:\"vancanh2-65x65.jpg\";s:5:\"width\";i:65;s:6:\"height\";i:65;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (404,82,'_wp_attached_file','2021/11/vancanh3.jpg');
INSERT INTO `wp_postmeta` VALUES (405,82,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:20:\"2021/11/vancanh3.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"vancanh3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"vancanh3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:18:\"vancanh3-24x24.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:18:\"vancanh3-36x36.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:18:\"vancanh3-65x65.jpg\";s:5:\"width\";i:65;s:6:\"height\";i:65;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (406,83,'_wp_attached_file','2021/11/vancanh4.jpg');
INSERT INTO `wp_postmeta` VALUES (407,83,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:20:\"2021/11/vancanh4.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"vancanh4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"vancanh4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:18:\"vancanh4-24x24.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:18:\"vancanh4-36x36.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:18:\"vancanh4-65x65.jpg\";s:5:\"width\";i:65;s:6:\"height\";i:65;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (408,84,'_wp_attached_file','2021/11/vancanh5.jpg');
INSERT INTO `wp_postmeta` VALUES (409,84,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:20:\"2021/11/vancanh5.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"vancanh5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"vancanh5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:18:\"vancanh5-24x24.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:18:\"vancanh5-36x36.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:18:\"vancanh5-65x65.jpg\";s:5:\"width\";i:65;s:6:\"height\";i:65;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (410,85,'_wp_attached_file','2021/11/vancanh6.jpg');
INSERT INTO `wp_postmeta` VALUES (411,85,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:20:\"2021/11/vancanh6.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"vancanh6-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"vancanh6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:18:\"vancanh6-24x24.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:18:\"vancanh6-36x36.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:18:\"vancanh6-65x65.jpg\";s:5:\"width\";i:65;s:6:\"height\";i:65;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (412,86,'_wp_attached_file','2021/11/vancanh7.jpg');
INSERT INTO `wp_postmeta` VALUES (413,86,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:20:\"2021/11/vancanh7.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"vancanh7-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"vancanh7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:18:\"vancanh7-24x24.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:18:\"vancanh7-36x36.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:18:\"vancanh7-65x65.jpg\";s:5:\"width\";i:65;s:6:\"height\";i:65;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (414,87,'_wp_attached_file','2021/11/vancanh8.jpg');
INSERT INTO `wp_postmeta` VALUES (415,87,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:20:\"2021/11/vancanh8.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"vancanh8-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"vancanh8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:18:\"vancanh8-24x24.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:18:\"vancanh8-36x36.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:18:\"vancanh8-65x65.jpg\";s:5:\"width\";i:65;s:6:\"height\";i:65;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (416,88,'_wp_attached_file','2021/11/vancanh9.jpg');
INSERT INTO `wp_postmeta` VALUES (417,88,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:20:\"2021/11/vancanh9.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"vancanh9-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"vancanh9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:18:\"vancanh9-24x24.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:18:\"vancanh9-36x36.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:18:\"vancanh9-65x65.jpg\";s:5:\"width\";i:65;s:6:\"height\";i:65;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (418,89,'_wp_attached_file','2021/11/vancanh10.jpg');
INSERT INTO `wp_postmeta` VALUES (419,89,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:21:\"2021/11/vancanh10.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"vancanh10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"vancanh10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:19:\"vancanh10-24x24.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:19:\"vancanh10-36x36.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:19:\"vancanh10-65x65.jpg\";s:5:\"width\";i:65;s:6:\"height\";i:65;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (420,90,'_wp_attached_file','2021/11/vancanh11.jpg');
INSERT INTO `wp_postmeta` VALUES (421,90,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:21:\"2021/11/vancanh11.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"vancanh11-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"vancanh11-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:19:\"vancanh11-24x24.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:19:\"vancanh11-36x36.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:19:\"vancanh11-65x65.jpg\";s:5:\"width\";i:65;s:6:\"height\";i:65;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (422,91,'_wp_attached_file','2021/11/vancanh12.jpg');
INSERT INTO `wp_postmeta` VALUES (423,91,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:21:\"2021/11/vancanh12.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"vancanh12-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"vancanh12-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:19:\"vancanh12-24x24.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:19:\"vancanh12-36x36.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:19:\"vancanh12-65x65.jpg\";s:5:\"width\";i:65;s:6:\"height\";i:65;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (424,92,'_wp_attached_file','2021/11/vancanh13.jpg');
INSERT INTO `wp_postmeta` VALUES (425,92,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:21:\"2021/11/vancanh13.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"vancanh13-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"vancanh13-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:19:\"vancanh13-24x24.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:19:\"vancanh13-36x36.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:19:\"vancanh13-65x65.jpg\";s:5:\"width\";i:65;s:6:\"height\";i:65;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (426,93,'_wp_attached_file','2021/11/vancanh14.jpg');
INSERT INTO `wp_postmeta` VALUES (427,93,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:21:\"2021/11/vancanh14.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"vancanh14-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"vancanh14-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:19:\"vancanh14-24x24.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:19:\"vancanh14-36x36.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:19:\"vancanh14-65x65.jpg\";s:5:\"width\";i:65;s:6:\"height\";i:65;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (428,94,'_wp_attached_file','2021/11/vancanh15.jpg');
INSERT INTO `wp_postmeta` VALUES (429,94,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:21:\"2021/11/vancanh15.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"vancanh15-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"vancanh15-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:19:\"vancanh15-24x24.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:19:\"vancanh15-36x36.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:19:\"vancanh15-65x65.jpg\";s:5:\"width\";i:65;s:6:\"height\";i:65;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (430,95,'_wp_attached_file','2021/11/vancanh16.jpg');
INSERT INTO `wp_postmeta` VALUES (431,95,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:21:\"2021/11/vancanh16.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"vancanh16-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"vancanh16-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:19:\"vancanh16-24x24.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:19:\"vancanh16-36x36.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:19:\"vancanh16-65x65.jpg\";s:5:\"width\";i:65;s:6:\"height\";i:65;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (432,96,'_wp_attached_file','2021/11/vancanh17.jpg');
INSERT INTO `wp_postmeta` VALUES (433,96,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:21:\"2021/11/vancanh17.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"vancanh17-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"vancanh17-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:19:\"vancanh17-24x24.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:19:\"vancanh17-36x36.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:19:\"vancanh17-65x65.jpg\";s:5:\"width\";i:65;s:6:\"height\";i:65;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (434,97,'_wp_attached_file','2021/11/vancanh18.jpg');
INSERT INTO `wp_postmeta` VALUES (435,97,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:21:\"2021/11/vancanh18.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"vancanh18-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"vancanh18-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:19:\"vancanh18-24x24.jpg\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:19:\"vancanh18-36x36.jpg\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:19:\"vancanh18-65x65.jpg\";s:5:\"width\";i:65;s:6:\"height\";i:65;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (436,98,'_wp_attached_file','2021/11/baiviet1-1.png');
INSERT INTO `wp_postmeta` VALUES (437,98,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:380;s:6:\"height\";i:380;s:4:\"file\";s:22:\"2021/11/baiviet1-1.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"baiviet1-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"baiviet1-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:20:\"baiviet1-1-24x24.png\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:20:\"baiviet1-1-36x36.png\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:20:\"baiviet1-1-65x65.png\";s:5:\"width\";i:65;s:6:\"height\";i:65;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (438,25,'_thumbnail_id','98');
INSERT INTO `wp_postmeta` VALUES (439,25,'_menu_item_image_title_position','after');
INSERT INTO `wp_postmeta` VALUES (440,25,'_menu_item_image_size','menu-65x65');
INSERT INTO `wp_postmeta` VALUES (441,25,'_menu_item_image_button','false');
INSERT INTO `wp_postmeta` VALUES (442,25,'_menu_item_image_type','image');
INSERT INTO `wp_postmeta` VALUES (443,21,'_thumbnail_id','49');
INSERT INTO `wp_postmeta` VALUES (444,21,'_menu_item_image_title_position','after');
INSERT INTO `wp_postmeta` VALUES (445,21,'_menu_item_image_size','menu-65x65');
INSERT INTO `wp_postmeta` VALUES (446,21,'_menu_item_image_button','false');
INSERT INTO `wp_postmeta` VALUES (447,21,'_menu_item_image_type','image');
INSERT INTO `wp_postmeta` VALUES (448,30,'_thumbnail_id','50');
INSERT INTO `wp_postmeta` VALUES (449,38,'_thumbnail_id','56');
INSERT INTO `wp_postmeta` VALUES (450,38,'_menu_item_image_title_position','after');
INSERT INTO `wp_postmeta` VALUES (451,38,'_menu_item_image_size','menu-65x65');
INSERT INTO `wp_postmeta` VALUES (452,38,'_menu_item_image_button','false');
INSERT INTO `wp_postmeta` VALUES (453,38,'_menu_item_image_type','image');
INSERT INTO `wp_postmeta` VALUES (454,20,'_thumbnail_id','52');
INSERT INTO `wp_postmeta` VALUES (455,20,'_menu_item_image_title_position','after');
INSERT INTO `wp_postmeta` VALUES (456,20,'_menu_item_image_size','menu-65x65');
INSERT INTO `wp_postmeta` VALUES (457,20,'_menu_item_image_button','false');
INSERT INTO `wp_postmeta` VALUES (458,20,'_menu_item_image_type','image');
INSERT INTO `wp_postmeta` VALUES (459,35,'_thumbnail_id','53');
INSERT INTO `wp_postmeta` VALUES (460,35,'_menu_item_image_title_position','after');
INSERT INTO `wp_postmeta` VALUES (461,35,'_menu_item_image_size','menu-65x65');
INSERT INTO `wp_postmeta` VALUES (462,35,'_menu_item_image_button','false');
INSERT INTO `wp_postmeta` VALUES (463,35,'_menu_item_image_type','image');
INSERT INTO `wp_postmeta` VALUES (464,19,'_thumbnail_id','54');
INSERT INTO `wp_postmeta` VALUES (465,19,'_menu_item_image_title_position','after');
INSERT INTO `wp_postmeta` VALUES (466,19,'_menu_item_image_size','menu-65x65');
INSERT INTO `wp_postmeta` VALUES (467,19,'_menu_item_image_button','false');
INSERT INTO `wp_postmeta` VALUES (468,19,'_menu_item_image_type','image');
INSERT INTO `wp_postmeta` VALUES (469,99,'_edit_lock','1636973086:1');
INSERT INTO `wp_postmeta` VALUES (470,18,'_wp_old_date','2021-11-15');
INSERT INTO `wp_postmeta` VALUES (471,25,'_wp_old_date','2021-11-15');
INSERT INTO `wp_postmeta` VALUES (472,27,'_wp_old_date','2021-11-15');
INSERT INTO `wp_postmeta` VALUES (473,26,'_wp_old_date','2021-11-15');
INSERT INTO `wp_postmeta` VALUES (474,46,'_wp_old_date','2021-11-15');
INSERT INTO `wp_postmeta` VALUES (475,47,'_wp_old_date','2021-11-15');
INSERT INTO `wp_postmeta` VALUES (476,21,'_wp_old_date','2021-11-15');
INSERT INTO `wp_postmeta` VALUES (477,24,'_wp_old_date','2021-11-15');
INSERT INTO `wp_postmeta` VALUES (478,23,'_wp_old_date','2021-11-15');
INSERT INTO `wp_postmeta` VALUES (479,22,'_wp_old_date','2021-11-15');
INSERT INTO `wp_postmeta` VALUES (480,30,'_wp_old_date','2021-11-15');
INSERT INTO `wp_postmeta` VALUES (481,34,'_wp_old_date','2021-11-15');
INSERT INTO `wp_postmeta` VALUES (482,33,'_wp_old_date','2021-11-15');
INSERT INTO `wp_postmeta` VALUES (483,32,'_wp_old_date','2021-11-15');
INSERT INTO `wp_postmeta` VALUES (484,31,'_wp_old_date','2021-11-15');
INSERT INTO `wp_postmeta` VALUES (485,38,'_wp_old_date','2021-11-15');
INSERT INTO `wp_postmeta` VALUES (486,40,'_wp_old_date','2021-11-15');
INSERT INTO `wp_postmeta` VALUES (487,39,'_wp_old_date','2021-11-15');
INSERT INTO `wp_postmeta` VALUES (488,20,'_wp_old_date','2021-11-15');
INSERT INTO `wp_postmeta` VALUES (489,35,'_wp_old_date','2021-11-15');
INSERT INTO `wp_postmeta` VALUES (490,42,'_wp_old_date','2021-11-15');
INSERT INTO `wp_postmeta` VALUES (491,43,'_wp_old_date','2021-11-15');
INSERT INTO `wp_postmeta` VALUES (492,19,'_wp_old_date','2021-11-15');
INSERT INTO `wp_postmeta` VALUES (493,10,'_wp_old_date','2021-11-15');
INSERT INTO `wp_postmeta` VALUES (497,100,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (498,100,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (499,100,'_menu_item_object_id','100');
INSERT INTO `wp_postmeta` VALUES (500,100,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (501,100,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (502,100,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (503,100,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (504,100,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (506,101,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (507,101,'_menu_item_menu_item_parent','100');
INSERT INTO `wp_postmeta` VALUES (508,101,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (509,101,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (510,101,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (511,101,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (512,101,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (513,101,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (515,102,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (516,102,'_menu_item_menu_item_parent','100');
INSERT INTO `wp_postmeta` VALUES (517,102,'_menu_item_object_id','7');
INSERT INTO `wp_postmeta` VALUES (518,102,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (519,102,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (520,102,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (521,102,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (522,102,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (524,103,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (525,103,'_menu_item_menu_item_parent','100');
INSERT INTO `wp_postmeta` VALUES (526,103,'_menu_item_object_id','4');
INSERT INTO `wp_postmeta` VALUES (527,103,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (528,103,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (529,103,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (530,103,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (531,103,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (533,104,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (534,104,'_menu_item_menu_item_parent','103');
INSERT INTO `wp_postmeta` VALUES (535,104,'_menu_item_object_id','14');
INSERT INTO `wp_postmeta` VALUES (536,104,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (537,104,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (538,104,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (539,104,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (540,104,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (542,105,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (543,105,'_menu_item_menu_item_parent','103');
INSERT INTO `wp_postmeta` VALUES (544,105,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (545,105,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (546,105,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (547,105,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (548,105,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (549,105,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (551,106,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (552,106,'_menu_item_menu_item_parent','103');
INSERT INTO `wp_postmeta` VALUES (553,106,'_menu_item_object_id','16');
INSERT INTO `wp_postmeta` VALUES (554,106,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (555,106,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (556,106,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (557,106,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (558,106,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (560,107,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (561,107,'_menu_item_menu_item_parent','100');
INSERT INTO `wp_postmeta` VALUES (562,107,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (563,107,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (564,107,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (565,107,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (566,107,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (567,107,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (569,108,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (570,108,'_menu_item_menu_item_parent','107');
INSERT INTO `wp_postmeta` VALUES (571,108,'_menu_item_object_id','10');
INSERT INTO `wp_postmeta` VALUES (572,108,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (573,108,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (574,108,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (575,108,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (576,108,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (578,109,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (579,109,'_menu_item_menu_item_parent','107');
INSERT INTO `wp_postmeta` VALUES (580,109,'_menu_item_object_id','11');
INSERT INTO `wp_postmeta` VALUES (581,109,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (582,109,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (583,109,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (584,109,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (585,109,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (587,110,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (588,110,'_menu_item_menu_item_parent','107');
INSERT INTO `wp_postmeta` VALUES (589,110,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (590,110,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (591,110,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (592,110,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (593,110,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (594,110,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (596,111,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (597,111,'_menu_item_menu_item_parent','107');
INSERT INTO `wp_postmeta` VALUES (598,111,'_menu_item_object_id','12');
INSERT INTO `wp_postmeta` VALUES (599,111,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (600,111,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (601,111,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (602,111,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (603,111,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (605,112,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (606,112,'_menu_item_menu_item_parent','100');
INSERT INTO `wp_postmeta` VALUES (607,112,'_menu_item_object_id','5');
INSERT INTO `wp_postmeta` VALUES (608,112,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (609,112,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (610,112,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (611,112,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (612,112,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (614,113,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (615,113,'_menu_item_menu_item_parent','112');
INSERT INTO `wp_postmeta` VALUES (616,113,'_menu_item_object_id','17');
INSERT INTO `wp_postmeta` VALUES (617,113,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (618,113,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (619,113,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (620,113,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (621,113,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (623,114,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (624,114,'_menu_item_menu_item_parent','112');
INSERT INTO `wp_postmeta` VALUES (625,114,'_menu_item_object_id','18');
INSERT INTO `wp_postmeta` VALUES (626,114,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (627,114,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (628,114,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (629,114,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (630,114,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (632,115,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (633,115,'_menu_item_menu_item_parent','112');
INSERT INTO `wp_postmeta` VALUES (634,115,'_menu_item_object_id','19');
INSERT INTO `wp_postmeta` VALUES (635,115,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (636,115,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (637,115,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (638,115,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (639,115,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (641,116,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (642,116,'_menu_item_menu_item_parent','112');
INSERT INTO `wp_postmeta` VALUES (643,116,'_menu_item_object_id','20');
INSERT INTO `wp_postmeta` VALUES (644,116,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (645,116,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (646,116,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (647,116,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (648,116,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (650,117,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (651,117,'_menu_item_menu_item_parent','100');
INSERT INTO `wp_postmeta` VALUES (652,117,'_menu_item_object_id','8');
INSERT INTO `wp_postmeta` VALUES (653,117,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (654,117,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (655,117,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (656,117,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (657,117,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (659,118,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (660,118,'_menu_item_menu_item_parent','117');
INSERT INTO `wp_postmeta` VALUES (661,118,'_menu_item_object_id','24');
INSERT INTO `wp_postmeta` VALUES (662,118,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (663,118,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (664,118,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (665,118,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (666,118,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (668,119,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (669,119,'_menu_item_menu_item_parent','117');
INSERT INTO `wp_postmeta` VALUES (670,119,'_menu_item_object_id','23');
INSERT INTO `wp_postmeta` VALUES (671,119,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (672,119,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (673,119,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (674,119,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (675,119,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (677,120,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (678,120,'_menu_item_menu_item_parent','100');
INSERT INTO `wp_postmeta` VALUES (679,120,'_menu_item_object_id','6');
INSERT INTO `wp_postmeta` VALUES (680,120,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (681,120,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (682,120,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (683,120,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (684,120,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (686,121,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (687,121,'_menu_item_menu_item_parent','120');
INSERT INTO `wp_postmeta` VALUES (688,121,'_menu_item_object_id','22');
INSERT INTO `wp_postmeta` VALUES (689,121,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (690,121,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (691,121,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (692,121,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (693,121,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (695,122,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (696,122,'_menu_item_menu_item_parent','120');
INSERT INTO `wp_postmeta` VALUES (697,122,'_menu_item_object_id','21');
INSERT INTO `wp_postmeta` VALUES (698,122,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (699,122,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (700,122,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (701,122,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (702,122,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (704,123,'_menu_item_type','taxonomy');
INSERT INTO `wp_postmeta` VALUES (705,123,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (706,123,'_menu_item_object_id','1');
INSERT INTO `wp_postmeta` VALUES (707,123,'_menu_item_object','category');
INSERT INTO `wp_postmeta` VALUES (708,123,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (709,123,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (710,123,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (711,123,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (712,123,'_menu_item_orphaned','1637035228');
INSERT INTO `wp_postmeta` VALUES (713,124,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (714,124,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (715,124,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (716,124,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (717,124,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (718,124,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (719,124,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (720,124,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (722,125,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (723,125,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (724,125,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (725,125,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (726,125,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (727,125,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (728,125,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (729,125,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (731,126,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (732,126,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (733,126,'_menu_item_object_id','12');
INSERT INTO `wp_postmeta` VALUES (734,126,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (735,126,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (736,126,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (737,126,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (738,126,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (739,127,'_edit_lock','1637416444:1');
INSERT INTO `wp_postmeta` VALUES (740,127,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (741,127,'_wp_trash_meta_time','1637416446');
INSERT INTO `wp_postmeta` VALUES (742,128,'_edit_lock','1637417322:1');
INSERT INTO `wp_postmeta` VALUES (745,130,'_wp_attached_file','2021/11/logo@10x.png');
INSERT INTO `wp_postmeta` VALUES (746,130,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:5465;s:6:\"height\";i:1403;s:4:\"file\";s:20:\"2021/11/logo@10x.png\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"logo@10x-300x77.png\";s:5:\"width\";i:300;s:6:\"height\";i:77;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"logo@10x-1024x263.png\";s:5:\"width\";i:1024;s:6:\"height\";i:263;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"logo@10x-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"logo@10x-768x197.png\";s:5:\"width\";i:768;s:6:\"height\";i:197;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:21:\"logo@10x-1536x394.png\";s:5:\"width\";i:1536;s:6:\"height\";i:394;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:21:\"logo@10x-2048x526.png\";s:5:\"width\";i:2048;s:6:\"height\";i:526;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:17:\"logo@10x-24x6.png\";s:5:\"width\";i:24;s:6:\"height\";i:6;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:17:\"logo@10x-36x9.png\";s:5:\"width\";i:36;s:6:\"height\";i:9;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-65x65\";a:4:{s:4:\"file\";s:18:\"logo@10x-65x17.png\";s:5:\"width\";i:65;s:6:\"height\";i:17;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (747,128,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (748,128,'_wp_trash_meta_time','1637417337');
INSERT INTO `wp_postmeta` VALUES (749,131,'_edit_lock','1637469703:1');
INSERT INTO `wp_postmeta` VALUES (750,132,'_edit_lock','1637469595:1');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2021-10-15 09:54:10','2021-10-15 09:54:10','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2021-10-15 09:54:10','2021-10-15 09:54:10','',0,'http://huyenkhongsonthuong.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2021-10-15 09:54:10','2021-10-15 09:54:10','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://huyenkhongsonthuong.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2021-10-15 09:54:10','2021-10-15 09:54:10','',0,'http://huyenkhongsonthuong.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2021-10-15 09:54:10','2021-10-15 09:54:10','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://huyenkhongsonthuong.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2021-10-15 09:54:10','2021-10-15 09:54:10','',0,'http://huyenkhongsonthuong.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,1,'2021-11-15 04:38:43','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2021-11-15 04:38:43','0000-00-00 00:00:00','',0,'http://huyenkhongsonthuong.local/?p=4',0,'post','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2021-11-15 04:54:22','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-11-15 04:54:22','0000-00-00 00:00:00','',0,'http://huyenkhongsonthuong.local/?p=5',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2021-11-15 04:57:27','0000-00-00 00:00:00','','Danh Mục','','draft','closed','closed','','','','','2021-11-15 04:57:27','0000-00-00 00:00:00','',0,'http://huyenkhongsonthuong.local/?p=6',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2021-11-15 09:29:25','0000-00-00 00:00:00','','Danh Mục','','draft','closed','closed','','','','','2021-11-15 09:29:25','0000-00-00 00:00:00','',0,'http://huyenkhongsonthuong.local/?p=7',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2021-11-15 09:29:42','0000-00-00 00:00:00','','Tất cả danh mục','','draft','closed','closed','','','','','2021-11-15 09:29:42','0000-00-00 00:00:00','',0,'http://huyenkhongsonthuong.local/?p=8',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2021-11-15 09:31:21','2021-11-15 09:31:21','','Tất cả danh mục','','publish','closed','closed','','tat-ca-danh-muc','','','2021-11-15 09:31:21','2021-11-15 09:31:21','',0,'http://huyenkhongsonthuong.local/?page_id=9',0,'page','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2021-11-16 04:29:41','2021-11-15 09:31:21',' ','','','publish','closed','closed','','10','','','2021-11-16 04:29:41','2021-11-16 04:29:41','',0,'http://huyenkhongsonthuong.local/10/',24,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2021-11-15 09:31:21','2021-11-15 09:31:21','','Tất cả danh mục','','inherit','closed','closed','','9-revision-v1','','','2021-11-15 09:31:21','2021-11-15 09:31:21','',9,'http://huyenkhongsonthuong.local/?p=11',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2021-11-15 09:32:31','2021-11-15 09:32:31','','Giới thiệu','','publish','closed','closed','','gioi-thieu','','','2021-11-15 09:32:31','2021-11-15 09:32:31','',0,'http://huyenkhongsonthuong.local/?page_id=12',0,'page','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2021-11-15 09:32:31','2021-11-15 09:32:31','','Giới thiệu','','inherit','closed','closed','','12-revision-v1','','','2021-11-15 09:32:31','2021-11-15 09:32:31','',12,'http://huyenkhongsonthuong.local/?p=14',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2021-11-15 09:32:46','2021-11-15 09:32:46','','Liên hệ','','publish','closed','closed','','lien-he','','','2021-11-15 09:32:46','2021-11-15 09:32:46','',0,'http://huyenkhongsonthuong.local/?page_id=15',0,'page','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2021-11-15 09:32:46','2021-11-15 09:32:46','','Liên hệ','','inherit','closed','closed','','15-revision-v1','','','2021-11-15 09:32:46','2021-11-15 09:32:46','',15,'http://huyenkhongsonthuong.local/?p=17',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2021-11-16 04:29:41','2021-11-15 09:50:40','','Danh Mục','','publish','closed','closed','','danh-muc','','','2021-11-16 04:29:41','2021-11-16 04:29:41','',0,'http://huyenkhongsonthuong.local/?p=18',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2021-11-16 04:29:41','2021-11-15 09:50:41',' ','','','publish','closed','closed','','19','','','2021-11-16 04:29:41','2021-11-16 04:29:41','',0,'http://huyenkhongsonthuong.local/?p=19',23,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2021-11-16 04:29:41','2021-11-15 09:50:41',' ','','','publish','closed','closed','','20','','','2021-11-16 04:29:41','2021-11-16 04:29:41','',0,'http://huyenkhongsonthuong.local/?p=20',19,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2021-11-16 04:29:41','2021-11-15 09:50:41',' ','','','publish','closed','closed','','21','','','2021-11-16 04:29:41','2021-11-16 04:29:41','',0,'http://huyenkhongsonthuong.local/?p=21',7,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2021-11-16 04:29:41','2021-11-15 09:50:41',' ','','','publish','closed','closed','','22','','','2021-11-16 04:29:41','2021-11-16 04:29:41','',4,'http://huyenkhongsonthuong.local/?p=22',10,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2021-11-16 04:29:41','2021-11-15 09:50:41',' ','','','publish','closed','closed','','23','','','2021-11-16 04:29:41','2021-11-16 04:29:41','',4,'http://huyenkhongsonthuong.local/?p=23',9,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2021-11-16 04:29:41','2021-11-15 09:50:41',' ','','','publish','closed','closed','','24','','','2021-11-16 04:29:41','2021-11-16 04:29:41','',4,'http://huyenkhongsonthuong.local/?p=24',8,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2021-11-16 04:29:41','2021-11-15 09:50:41',' ','','','publish','closed','closed','','25','','','2021-11-16 04:29:41','2021-11-16 04:29:41','',0,'http://huyenkhongsonthuong.local/?p=25',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2021-11-16 04:29:41','2021-11-15 09:50:41',' ','','','publish','closed','closed','','26','','','2021-11-16 04:29:41','2021-11-16 04:29:41','',2,'http://huyenkhongsonthuong.local/?p=26',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2021-11-16 04:29:41','2021-11-15 09:50:41',' ','','','publish','closed','closed','','27','','','2021-11-16 04:29:41','2021-11-16 04:29:41','',2,'http://huyenkhongsonthuong.local/?p=27',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2021-11-15 09:43:55','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-11-15 09:43:55','0000-00-00 00:00:00','',2,'http://huyenkhongsonthuong.local/?p=28',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2021-11-15 09:43:55','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-11-15 09:43:55','0000-00-00 00:00:00','',2,'http://huyenkhongsonthuong.local/?p=29',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2021-11-16 04:29:41','2021-11-15 09:50:41',' ','','','publish','closed','closed','','30','','','2021-11-16 04:29:41','2021-11-16 04:29:41','',0,'http://huyenkhongsonthuong.local/?p=30',11,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2021-11-16 04:29:41','2021-11-15 09:50:42',' ','','','publish','closed','closed','','31','','','2021-11-16 04:29:41','2021-11-16 04:29:41','',5,'http://huyenkhongsonthuong.local/?p=31',15,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2021-11-16 04:29:41','2021-11-15 09:50:41',' ','','','publish','closed','closed','','32','','','2021-11-16 04:29:41','2021-11-16 04:29:41','',5,'http://huyenkhongsonthuong.local/?p=32',14,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2021-11-16 04:29:41','2021-11-15 09:50:41',' ','','','publish','closed','closed','','33','','','2021-11-16 04:29:41','2021-11-16 04:29:41','',5,'http://huyenkhongsonthuong.local/?p=33',13,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2021-11-16 04:29:41','2021-11-15 09:50:41',' ','','','publish','closed','closed','','34','','','2021-11-16 04:29:41','2021-11-16 04:29:41','',5,'http://huyenkhongsonthuong.local/?p=34',12,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2021-11-16 04:29:41','2021-11-15 09:50:42',' ','','','publish','closed','closed','','35','','','2021-11-16 04:29:41','2021-11-16 04:29:41','',0,'http://huyenkhongsonthuong.local/?p=35',20,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2021-11-15 09:43:56','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-11-15 09:43:56','0000-00-00 00:00:00','',8,'http://huyenkhongsonthuong.local/?p=36',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2021-11-15 09:43:56','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-11-15 09:43:56','0000-00-00 00:00:00','',8,'http://huyenkhongsonthuong.local/?p=37',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2021-11-16 04:29:41','2021-11-15 09:50:42',' ','','','publish','closed','closed','','38','','','2021-11-16 04:29:41','2021-11-16 04:29:41','',0,'http://huyenkhongsonthuong.local/?p=38',16,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2021-11-16 04:29:41','2021-11-15 09:50:42',' ','','','publish','closed','closed','','39','','','2021-11-16 04:29:41','2021-11-16 04:29:41','',6,'http://huyenkhongsonthuong.local/?p=39',18,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2021-11-16 04:29:41','2021-11-15 09:50:42',' ','','','publish','closed','closed','','40','','','2021-11-16 04:29:41','2021-11-16 04:29:41','',6,'http://huyenkhongsonthuong.local/?p=40',17,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2021-11-16 04:29:41','2021-11-15 09:50:42',' ','','','publish','closed','closed','','42','','','2021-11-16 04:29:41','2021-11-16 04:29:41','',8,'http://huyenkhongsonthuong.local/?p=42',21,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2021-11-16 04:29:41','2021-11-15 09:50:42',' ','','','publish','closed','closed','','43','','','2021-11-16 04:29:41','2021-11-16 04:29:41','',8,'http://huyenkhongsonthuong.local/?p=43',22,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2021-11-15 09:49:23','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-11-15 09:49:23','0000-00-00 00:00:00','',2,'http://huyenkhongsonthuong.local/?p=44',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2021-11-15 09:49:23','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-11-15 09:49:23','0000-00-00 00:00:00','',2,'http://huyenkhongsonthuong.local/?p=45',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2021-11-16 04:29:41','2021-11-15 09:50:41',' ','','','publish','closed','closed','','46','','','2021-11-16 04:29:41','2021-11-16 04:29:41','',2,'http://huyenkhongsonthuong.local/?p=46',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2021-11-16 04:29:41','2021-11-15 09:50:41',' ','','','publish','closed','closed','','47','','','2021-11-16 04:29:41','2021-11-16 04:29:41','',2,'http://huyenkhongsonthuong.local/?p=47',6,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2021-11-15 10:09:57','2021-11-15 10:09:57','','baiviet1','','inherit','open','closed','','baiviet1','','','2021-11-15 10:09:57','2021-11-15 10:09:57','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/baiviet1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (49,1,'2021-11-15 10:09:58','2021-11-15 10:09:58','','baiviet2','','inherit','open','closed','','baiviet2','','','2021-11-15 10:09:58','2021-11-15 10:09:58','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/baiviet2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (50,1,'2021-11-15 10:09:58','2021-11-15 10:09:58','','baiviet3','','inherit','open','closed','','baiviet3','','','2021-11-15 10:09:58','2021-11-15 10:09:58','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/baiviet3.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (51,1,'2021-11-15 10:09:58','2021-11-15 10:09:58','','baiviet4','','inherit','open','closed','','baiviet4','','','2021-11-15 10:09:58','2021-11-15 10:09:58','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/baiviet4.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (52,1,'2021-11-15 10:09:59','2021-11-15 10:09:59','','banner-1','','inherit','open','closed','','banner-1','','','2021-11-15 10:09:59','2021-11-15 10:09:59','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/banner-1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (53,1,'2021-11-15 10:10:00','2021-11-15 10:10:00','','banner-2','','inherit','open','closed','','banner-2','','','2021-11-15 10:10:00','2021-11-15 10:10:00','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/banner-2.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (54,1,'2021-11-15 10:10:00','2021-11-15 10:10:00','','banner-3','','inherit','open','closed','','banner-3','','','2021-11-15 10:10:00','2021-11-15 10:10:00','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/banner-3.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (55,1,'2021-11-15 10:10:01','2021-11-15 10:10:01','','banner-4','','inherit','open','closed','','banner-4','','','2021-11-15 10:10:01','2021-11-15 10:10:01','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/banner-4.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (56,1,'2021-11-15 10:10:01','2021-11-15 10:10:01','','gallery1','','inherit','open','closed','','gallery1','','','2021-11-15 10:10:01','2021-11-15 10:10:01','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/gallery1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (57,1,'2021-11-15 10:10:02','2021-11-15 10:10:02','','gallery2','','inherit','open','closed','','gallery2','','','2021-11-15 10:10:02','2021-11-15 10:10:02','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/gallery2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (58,1,'2021-11-15 10:10:03','2021-11-15 10:10:03','','gallery3','','inherit','open','closed','','gallery3','','','2021-11-15 10:10:03','2021-11-15 10:10:03','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/gallery3.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (59,1,'2021-11-15 10:10:03','2021-11-15 10:10:03','','gallery4','','inherit','open','closed','','gallery4','','','2021-11-15 10:10:03','2021-11-15 10:10:03','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/gallery4.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (60,1,'2021-11-15 10:10:04','2021-11-15 10:10:04','','gallery5','','inherit','open','closed','','gallery5','','','2021-11-15 10:10:04','2021-11-15 10:10:04','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/gallery5.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (61,1,'2021-11-15 10:10:04','2021-11-15 10:10:04','','gallery6','','inherit','open','closed','','gallery6','','','2021-11-15 10:10:04','2021-11-15 10:10:04','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/gallery6.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (62,1,'2021-11-15 10:10:05','2021-11-15 10:10:05','','gallery7','','inherit','open','closed','','gallery7','','','2021-11-15 10:10:05','2021-11-15 10:10:05','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/gallery7.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (63,1,'2021-11-15 10:10:05','2021-11-15 10:10:05','','lk1','','inherit','open','closed','','lk1','','','2021-11-15 10:10:05','2021-11-15 10:10:05','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/lk1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (64,1,'2021-11-15 10:10:05','2021-11-15 10:10:05','','lk2','','inherit','open','closed','','lk2','','','2021-11-15 10:10:05','2021-11-15 10:10:05','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/lk2.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (65,1,'2021-11-15 10:10:06','2021-11-15 10:10:06','','lk3','','inherit','open','closed','','lk3','','','2021-11-15 10:10:06','2021-11-15 10:10:06','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/lk3.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (66,1,'2021-11-15 10:10:06','2021-11-15 10:10:06','','lk4','','inherit','open','closed','','lk4','','','2021-11-15 10:10:06','2021-11-15 10:10:06','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/lk4.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (67,1,'2021-11-15 10:10:06','2021-11-15 10:10:06','','logo-img','','inherit','open','closed','','logo','','','2021-11-20 13:57:42','2021-11-20 13:57:42','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/logo.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (68,1,'2021-11-15 10:10:07','2021-11-15 10:10:07','','logo-text','','inherit','open','closed','','logo-text','','','2021-11-15 10:10:07','2021-11-15 10:10:07','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/logo-text.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (69,1,'2021-11-15 10:10:07','2021-11-15 10:10:07','','poem1','','inherit','open','closed','','poem1','','','2021-11-15 10:10:07','2021-11-15 10:10:07','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/poem1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (70,1,'2021-11-15 10:10:08','2021-11-15 10:10:08','','poem2','','inherit','open','closed','','poem2','','','2021-11-15 10:10:08','2021-11-15 10:10:08','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/poem2.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (71,1,'2021-11-15 10:10:08','2021-11-15 10:10:08','','poem3','','inherit','open','closed','','poem3','','','2021-11-15 10:10:08','2021-11-15 10:10:08','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/poem3.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (72,1,'2021-11-15 10:10:08','2021-11-15 10:10:08','','sinhhoat1','','inherit','open','closed','','sinhhoat1','','','2021-11-15 10:10:08','2021-11-15 10:10:08','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/sinhhoat1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (73,1,'2021-11-15 10:10:10','2021-11-15 10:10:10','','sinhhoat2','','inherit','open','closed','','sinhhoat2','','','2021-11-15 10:10:10','2021-11-15 10:10:10','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/sinhhoat2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (74,1,'2021-11-15 10:10:12','2021-11-15 10:10:12','','sinhhoat3','','inherit','open','closed','','sinhhoat3','','','2021-11-15 10:10:12','2021-11-15 10:10:12','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/sinhhoat3.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (75,1,'2021-11-15 10:10:13','2021-11-15 10:10:13','','sinhhoat4','','inherit','open','closed','','sinhhoat4','','','2021-11-15 10:10:13','2021-11-15 10:10:13','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/sinhhoat4.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (76,1,'2021-11-15 10:10:14','2021-11-15 10:10:14','','sinhhoat5','','inherit','open','closed','','sinhhoat5','','','2021-11-15 10:10:14','2021-11-15 10:10:14','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/sinhhoat5.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (77,1,'2021-11-15 10:10:16','2021-11-15 10:10:16','','sinhhoat6','','inherit','open','closed','','sinhhoat6','','','2021-11-15 10:10:16','2021-11-15 10:10:16','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/sinhhoat6.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (78,1,'2021-11-15 10:10:16','2021-11-15 10:10:16','','su','','inherit','open','closed','','su','','','2021-11-15 10:10:16','2021-11-15 10:10:16','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/su.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (79,1,'2021-11-15 10:10:19','2021-11-15 10:10:19','','su@10x','','inherit','open','closed','','su10x','','','2021-11-15 10:10:19','2021-11-15 10:10:19','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/su@10x.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (80,1,'2021-11-15 10:10:19','2021-11-15 10:10:19','','vancanh1','','inherit','open','closed','','vancanh1','','','2021-11-15 10:10:19','2021-11-15 10:10:19','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/vancanh1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (81,1,'2021-11-15 10:10:20','2021-11-15 10:10:20','','vancanh2','','inherit','open','closed','','vancanh2','','','2021-11-15 10:10:20','2021-11-15 10:10:20','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/vancanh2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (82,1,'2021-11-15 10:10:40','2021-11-15 10:10:40','','vancanh3','','inherit','open','closed','','vancanh3','','','2021-11-15 10:10:40','2021-11-15 10:10:40','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/vancanh3.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (83,1,'2021-11-15 10:10:40','2021-11-15 10:10:40','','vancanh4','','inherit','open','closed','','vancanh4','','','2021-11-15 10:10:40','2021-11-15 10:10:40','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/vancanh4.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (84,1,'2021-11-15 10:10:41','2021-11-15 10:10:41','','vancanh5','','inherit','open','closed','','vancanh5','','','2021-11-15 10:10:41','2021-11-15 10:10:41','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/vancanh5.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (85,1,'2021-11-15 10:10:41','2021-11-15 10:10:41','','vancanh6','','inherit','open','closed','','vancanh6','','','2021-11-15 10:10:41','2021-11-15 10:10:41','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/vancanh6.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (86,1,'2021-11-15 10:10:42','2021-11-15 10:10:42','','vancanh7','','inherit','open','closed','','vancanh7','','','2021-11-15 10:10:42','2021-11-15 10:10:42','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/vancanh7.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (87,1,'2021-11-15 10:10:42','2021-11-15 10:10:42','','vancanh8','','inherit','open','closed','','vancanh8','','','2021-11-15 10:10:42','2021-11-15 10:10:42','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/vancanh8.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (88,1,'2021-11-15 10:10:43','2021-11-15 10:10:43','','vancanh9','','inherit','open','closed','','vancanh9','','','2021-11-15 10:10:43','2021-11-15 10:10:43','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/vancanh9.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (89,1,'2021-11-15 10:10:43','2021-11-15 10:10:43','','vancanh10','','inherit','open','closed','','vancanh10','','','2021-11-15 10:10:43','2021-11-15 10:10:43','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/vancanh10.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (90,1,'2021-11-15 10:10:43','2021-11-15 10:10:43','','vancanh11','','inherit','open','closed','','vancanh11','','','2021-11-15 10:10:43','2021-11-15 10:10:43','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/vancanh11.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (91,1,'2021-11-15 10:10:44','2021-11-15 10:10:44','','vancanh12','','inherit','open','closed','','vancanh12','','','2021-11-15 10:10:44','2021-11-15 10:10:44','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/vancanh12.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (92,1,'2021-11-15 10:10:44','2021-11-15 10:10:44','','vancanh13','','inherit','open','closed','','vancanh13','','','2021-11-15 10:10:44','2021-11-15 10:10:44','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/vancanh13.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (93,1,'2021-11-15 10:10:45','2021-11-15 10:10:45','','vancanh14','','inherit','open','closed','','vancanh14','','','2021-11-15 10:10:45','2021-11-15 10:10:45','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/vancanh14.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (94,1,'2021-11-15 10:10:45','2021-11-15 10:10:45','','vancanh15','','inherit','open','closed','','vancanh15','','','2021-11-15 10:10:45','2021-11-15 10:10:45','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/vancanh15.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (95,1,'2021-11-15 10:10:46','2021-11-15 10:10:46','','vancanh16','','inherit','open','closed','','vancanh16','','','2021-11-15 10:10:46','2021-11-15 10:10:46','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/vancanh16.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (96,1,'2021-11-15 10:10:46','2021-11-15 10:10:46','','vancanh17','','inherit','open','closed','','vancanh17','','','2021-11-15 10:10:46','2021-11-15 10:10:46','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/vancanh17.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (97,1,'2021-11-15 10:10:46','2021-11-15 10:10:46','','vancanh18','','inherit','open','closed','','vancanh18','','','2021-11-15 10:10:46','2021-11-15 10:10:46','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/vancanh18.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (98,1,'2021-11-15 10:11:23','2021-11-15 10:11:23','','baiviet1','','inherit','open','closed','','baiviet1-2','','','2021-11-15 10:11:23','2021-11-15 10:11:23','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/baiviet1-1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (99,1,'2021-11-15 10:47:02','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2021-11-15 10:47:02','0000-00-00 00:00:00','',0,'http://huyenkhongsonthuong.local/?p=99',0,'post','',0);
INSERT INTO `wp_posts` VALUES (100,1,'2021-11-16 04:02:54','2021-11-16 04:02:54','','Danh mục','','publish','closed','closed','','danh-muc-2','','','2021-11-16 04:02:54','2021-11-16 04:02:54','',0,'http://huyenkhongsonthuong.local/?p=100',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (101,1,'2021-11-16 04:02:55','2021-11-16 04:02:55',' ','','','publish','closed','closed','','101','','','2021-11-16 04:02:55','2021-11-16 04:02:55','',0,'http://huyenkhongsonthuong.local/?p=101',22,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (102,1,'2021-11-16 04:02:55','2021-11-16 04:02:55',' ','','','publish','closed','closed','','102','','','2021-11-16 04:02:55','2021-11-16 04:02:55','',0,'http://huyenkhongsonthuong.local/?p=102',23,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (103,1,'2021-11-16 04:02:55','2021-11-16 04:02:55',' ','','','publish','closed','closed','','103','','','2021-11-16 04:02:55','2021-11-16 04:02:55','',0,'http://huyenkhongsonthuong.local/?p=103',12,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (104,1,'2021-11-16 04:02:55','2021-11-16 04:02:55',' ','','','publish','closed','closed','','104','','','2021-11-16 04:02:55','2021-11-16 04:02:55','',4,'http://huyenkhongsonthuong.local/?p=104',13,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (105,1,'2021-11-16 04:02:55','2021-11-16 04:02:55',' ','','','publish','closed','closed','','105','','','2021-11-16 04:02:55','2021-11-16 04:02:55','',4,'http://huyenkhongsonthuong.local/?p=105',14,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (106,1,'2021-11-16 04:02:55','2021-11-16 04:02:55',' ','','','publish','closed','closed','','106','','','2021-11-16 04:02:55','2021-11-16 04:02:55','',4,'http://huyenkhongsonthuong.local/?p=106',15,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (107,1,'2021-11-16 04:02:55','2021-11-16 04:02:55',' ','','','publish','closed','closed','','107','','','2021-11-16 04:02:55','2021-11-16 04:02:55','',0,'http://huyenkhongsonthuong.local/?p=107',7,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (108,1,'2021-11-16 04:02:55','2021-11-16 04:02:55',' ','','','publish','closed','closed','','108','','','2021-11-16 04:02:55','2021-11-16 04:02:55','',2,'http://huyenkhongsonthuong.local/?p=108',8,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (109,1,'2021-11-16 04:02:55','2021-11-16 04:02:55',' ','','','publish','closed','closed','','109','','','2021-11-16 04:02:55','2021-11-16 04:02:55','',2,'http://huyenkhongsonthuong.local/?p=109',9,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (110,1,'2021-11-16 04:02:55','2021-11-16 04:02:55',' ','','','publish','closed','closed','','110','','','2021-11-16 04:02:55','2021-11-16 04:02:55','',2,'http://huyenkhongsonthuong.local/?p=110',10,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (111,1,'2021-11-16 04:02:55','2021-11-16 04:02:55',' ','','','publish','closed','closed','','111','','','2021-11-16 04:02:55','2021-11-16 04:02:55','',2,'http://huyenkhongsonthuong.local/?p=111',11,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (112,1,'2021-11-16 04:02:55','2021-11-16 04:02:55',' ','','','publish','closed','closed','','112','','','2021-11-16 04:02:55','2021-11-16 04:02:55','',0,'http://huyenkhongsonthuong.local/?p=112',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (113,1,'2021-11-16 04:02:55','2021-11-16 04:02:55',' ','','','publish','closed','closed','','113','','','2021-11-16 04:02:55','2021-11-16 04:02:55','',5,'http://huyenkhongsonthuong.local/?p=113',6,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (114,1,'2021-11-16 04:02:55','2021-11-16 04:02:55',' ','','','publish','closed','closed','','114','','','2021-11-16 04:02:55','2021-11-16 04:02:55','',5,'http://huyenkhongsonthuong.local/?p=114',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (115,1,'2021-11-16 04:02:55','2021-11-16 04:02:55',' ','','','publish','closed','closed','','115','','','2021-11-16 04:02:55','2021-11-16 04:02:55','',5,'http://huyenkhongsonthuong.local/?p=115',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (116,1,'2021-11-16 04:02:55','2021-11-16 04:02:55',' ','','','publish','closed','closed','','116','','','2021-11-16 04:02:55','2021-11-16 04:02:55','',5,'http://huyenkhongsonthuong.local/?p=116',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (117,1,'2021-11-16 04:02:55','2021-11-16 04:02:55',' ','','','publish','closed','closed','','117','','','2021-11-16 04:02:55','2021-11-16 04:02:55','',0,'http://huyenkhongsonthuong.local/?p=117',19,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (118,1,'2021-11-16 04:02:55','2021-11-16 04:02:55',' ','','','publish','closed','closed','','118','','','2021-11-16 04:02:55','2021-11-16 04:02:55','',8,'http://huyenkhongsonthuong.local/?p=118',21,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (119,1,'2021-11-16 04:02:55','2021-11-16 04:02:55',' ','','','publish','closed','closed','','119','','','2021-11-16 04:02:55','2021-11-16 04:02:55','',8,'http://huyenkhongsonthuong.local/?p=119',20,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (120,1,'2021-11-16 04:02:55','2021-11-16 04:02:55',' ','','','publish','closed','closed','','120','','','2021-11-16 04:02:55','2021-11-16 04:02:55','',0,'http://huyenkhongsonthuong.local/?p=120',16,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (121,1,'2021-11-16 04:02:55','2021-11-16 04:02:55',' ','','','publish','closed','closed','','121','','','2021-11-16 04:02:55','2021-11-16 04:02:55','',6,'http://huyenkhongsonthuong.local/?p=121',18,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (122,1,'2021-11-16 04:02:55','2021-11-16 04:02:55',' ','','','publish','closed','closed','','122','','','2021-11-16 04:02:55','2021-11-16 04:02:55','',6,'http://huyenkhongsonthuong.local/?p=122',17,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (123,1,'2021-11-16 04:00:28','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-11-16 04:00:28','0000-00-00 00:00:00','',0,'http://huyenkhongsonthuong.local/?p=123',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (124,1,'2021-11-16 04:02:55','2021-11-16 04:02:55',' ','','','publish','closed','closed','','124','','','2021-11-16 04:02:55','2021-11-16 04:02:55','',0,'http://huyenkhongsonthuong.local/?p=124',24,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (125,1,'2021-11-16 04:17:49','2021-11-16 04:03:48',' ','','','publish','closed','closed','','125','','','2021-11-16 04:17:49','2021-11-16 04:17:49','',0,'http://huyenkhongsonthuong.local/?p=125',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (126,1,'2021-11-16 04:17:49','2021-11-16 04:03:48',' ','','','publish','closed','closed','','126','','','2021-11-16 04:17:49','2021-11-16 04:17:49','',0,'http://huyenkhongsonthuong.local/?p=126',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (127,1,'2021-11-20 13:54:06','2021-11-20 13:54:06','{\n    \"blogname\": {\n        \"value\": \"Huy\\u1ec1n Kh\\u00f4ng S\\u01a1n Th\\u01b0\\u1ee3ng\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-11-20 13:53:31\"\n    },\n    \"blogdescription\": {\n        \"value\": \"C\\u00f5i Ph\\u1eadt gi\\u1eefa ch\\u1ed1n tr\\u1ea7n gian\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-11-20 13:54:06\"\n    }\n}','','','trash','closed','closed','','9dbbf4de-7ec7-4767-9356-b8a5b11f14cf','','','2021-11-20 13:54:06','2021-11-20 13:54:06','',0,'http://huyenkhongsonthuong.local/?p=127',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (128,1,'2021-11-20 14:08:57','2021-11-20 14:08:57','{\n    \"site_icon\": {\n        \"value\": 67,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-11-20 13:58:27\"\n    },\n    \"hkstv2::custom_logo\": {\n        \"value\": 130,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-11-20 14:08:57\"\n    }\n}','','','trash','closed','closed','','b9723106-702a-4f0a-95fa-67232096fa41','','','2021-11-20 14:08:57','2021-11-20 14:08:57','',0,'http://huyenkhongsonthuong.local/?p=128',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (130,1,'2021-11-20 14:08:27','2021-11-20 14:08:27','','logo@10x','','inherit','open','closed','','logo10x','','','2021-11-20 14:08:27','2021-11-20 14:08:27','',0,'http://huyenkhongsonthuong.local/wp-content/uploads/2021/11/logo@10x.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (131,1,'2021-11-21 04:41:26','0000-00-00 00:00:00','<!-- wp:image -->\n<figure class=\"wp-block-image\"><img alt=\"\"/></figure>\n<!-- /wp:image -->','','','draft','open','open','','','','','2021-11-21 04:41:26','2021-11-21 04:41:26','',0,'http://huyenkhongsonthuong.local/?p=131',0,'post','',0);
INSERT INTO `wp_posts` VALUES (132,1,'2021-11-21 04:41:55','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2021-11-21 04:41:55','0000-00-00 00:00:00','',0,'http://huyenkhongsonthuong.local/?p=132',0,'post','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (10,3,0);
INSERT INTO `wp_term_relationships` VALUES (18,3,0);
INSERT INTO `wp_term_relationships` VALUES (19,3,0);
INSERT INTO `wp_term_relationships` VALUES (20,3,0);
INSERT INTO `wp_term_relationships` VALUES (21,3,0);
INSERT INTO `wp_term_relationships` VALUES (22,3,0);
INSERT INTO `wp_term_relationships` VALUES (23,3,0);
INSERT INTO `wp_term_relationships` VALUES (24,3,0);
INSERT INTO `wp_term_relationships` VALUES (25,3,0);
INSERT INTO `wp_term_relationships` VALUES (26,3,0);
INSERT INTO `wp_term_relationships` VALUES (27,3,0);
INSERT INTO `wp_term_relationships` VALUES (30,3,0);
INSERT INTO `wp_term_relationships` VALUES (31,3,0);
INSERT INTO `wp_term_relationships` VALUES (32,3,0);
INSERT INTO `wp_term_relationships` VALUES (33,3,0);
INSERT INTO `wp_term_relationships` VALUES (34,3,0);
INSERT INTO `wp_term_relationships` VALUES (35,3,0);
INSERT INTO `wp_term_relationships` VALUES (38,3,0);
INSERT INTO `wp_term_relationships` VALUES (39,3,0);
INSERT INTO `wp_term_relationships` VALUES (40,3,0);
INSERT INTO `wp_term_relationships` VALUES (42,3,0);
INSERT INTO `wp_term_relationships` VALUES (43,3,0);
INSERT INTO `wp_term_relationships` VALUES (46,3,0);
INSERT INTO `wp_term_relationships` VALUES (47,3,0);
INSERT INTO `wp_term_relationships` VALUES (100,25,0);
INSERT INTO `wp_term_relationships` VALUES (101,25,0);
INSERT INTO `wp_term_relationships` VALUES (102,25,0);
INSERT INTO `wp_term_relationships` VALUES (103,25,0);
INSERT INTO `wp_term_relationships` VALUES (104,25,0);
INSERT INTO `wp_term_relationships` VALUES (105,25,0);
INSERT INTO `wp_term_relationships` VALUES (106,25,0);
INSERT INTO `wp_term_relationships` VALUES (107,25,0);
INSERT INTO `wp_term_relationships` VALUES (108,25,0);
INSERT INTO `wp_term_relationships` VALUES (109,25,0);
INSERT INTO `wp_term_relationships` VALUES (110,25,0);
INSERT INTO `wp_term_relationships` VALUES (111,25,0);
INSERT INTO `wp_term_relationships` VALUES (112,25,0);
INSERT INTO `wp_term_relationships` VALUES (113,25,0);
INSERT INTO `wp_term_relationships` VALUES (114,25,0);
INSERT INTO `wp_term_relationships` VALUES (115,25,0);
INSERT INTO `wp_term_relationships` VALUES (116,25,0);
INSERT INTO `wp_term_relationships` VALUES (117,25,0);
INSERT INTO `wp_term_relationships` VALUES (118,25,0);
INSERT INTO `wp_term_relationships` VALUES (119,25,0);
INSERT INTO `wp_term_relationships` VALUES (120,25,0);
INSERT INTO `wp_term_relationships` VALUES (121,25,0);
INSERT INTO `wp_term_relationships` VALUES (122,25,0);
INSERT INTO `wp_term_relationships` VALUES (124,25,0);
INSERT INTO `wp_term_relationships` VALUES (125,26,0);
INSERT INTO `wp_term_relationships` VALUES (126,26,0);
INSERT INTO `wp_term_relationships` VALUES (131,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,24);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (7,7,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (8,8,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (9,9,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (10,10,'category','',2,0);
INSERT INTO `wp_term_taxonomy` VALUES (11,11,'category','',2,0);
INSERT INTO `wp_term_taxonomy` VALUES (12,12,'category','',2,0);
INSERT INTO `wp_term_taxonomy` VALUES (13,13,'category','',2,0);
INSERT INTO `wp_term_taxonomy` VALUES (14,14,'category','',4,0);
INSERT INTO `wp_term_taxonomy` VALUES (15,15,'category','',4,0);
INSERT INTO `wp_term_taxonomy` VALUES (16,16,'category','',4,0);
INSERT INTO `wp_term_taxonomy` VALUES (17,17,'category','',5,0);
INSERT INTO `wp_term_taxonomy` VALUES (18,18,'category','',5,0);
INSERT INTO `wp_term_taxonomy` VALUES (19,19,'category','',5,0);
INSERT INTO `wp_term_taxonomy` VALUES (20,20,'category','',5,0);
INSERT INTO `wp_term_taxonomy` VALUES (21,21,'category','',6,0);
INSERT INTO `wp_term_taxonomy` VALUES (22,22,'category','',6,0);
INSERT INTO `wp_term_taxonomy` VALUES (23,23,'category','',8,0);
INSERT INTO `wp_term_taxonomy` VALUES (24,24,'category','',8,0);
INSERT INTO `wp_term_taxonomy` VALUES (25,25,'nav_menu','',0,24);
INSERT INTO `wp_term_taxonomy` VALUES (26,26,'nav_menu','',0,2);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Thư viện','thu-vien',0);
INSERT INTO `wp_terms` VALUES (3,'MainMobileMenu','mainmobilemenu',0);
INSERT INTO `wp_terms` VALUES (4,'Sử liệu','su-lieu',0);
INSERT INTO `wp_terms` VALUES (5,'Tin tức','tin-tuc',0);
INSERT INTO `wp_terms` VALUES (6,'Triển lãm','trien-lam',0);
INSERT INTO `wp_terms` VALUES (7,'Pháp âm','phap-am',0);
INSERT INTO `wp_terms` VALUES (8,'Trang cỏ lau','trang-co-lau',0);
INSERT INTO `wp_terms` VALUES (9,'Hương bút','huong-but',0);
INSERT INTO `wp_terms` VALUES (10,'Kinh','thu-vien-kinh',0);
INSERT INTO `wp_terms` VALUES (11,'Sách','thu-vien-sach',0);
INSERT INTO `wp_terms` VALUES (12,'Văn','thu-vien-van',0);
INSERT INTO `wp_terms` VALUES (13,'Thơ','thu-vien-tho',0);
INSERT INTO `wp_terms` VALUES (14,'Các bật trưởng lão','su-lieu-cac-bat-truong-lao',0);
INSERT INTO `wp_terms` VALUES (15,'Chùa nguyên thủy Hải Ngoại','su-lieu-chua-nguyen-thuy-hai-ngoai',0);
INSERT INTO `wp_terms` VALUES (16,'Chùa nguyên thủy Việt Nam','su-lieu-chua-nguyen-thuy-viet-nam',0);
INSERT INTO `wp_terms` VALUES (17,'Sinh hoạt tôn giáo','tin-tuc-sinh-hoat-ton-giao',0);
INSERT INTO `wp_terms` VALUES (18,'Từ thiện - xã hội','tin-tuc-tu-thien-xa-hoi',0);
INSERT INTO `wp_terms` VALUES (19,'Văn hóa - giáo dục','tin-tuc-van-hoa-giao-duc',0);
INSERT INTO `wp_terms` VALUES (20,'Xây dựng','tin-tuc-xay-dung',0);
INSERT INTO `wp_terms` VALUES (21,'Thư pháp','trien-lam-thu-phat',0);
INSERT INTO `wp_terms` VALUES (22,'Hội họa','trien-lam-hoi-hoa',0);
INSERT INTO `wp_terms` VALUES (23,'Văn','trang-co-lau-van',0);
INSERT INTO `wp_terms` VALUES (24,'Thơ','trang-co-lau-tho',0);
INSERT INTO `wp_terms` VALUES (25,'HeaderMenuLeft','headermenuleft',0);
INSERT INTO `wp_terms` VALUES (26,'HeaderMenuRight','headermenuright',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','admin');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:2:{s:64:\"74f92c9d895f29a5c3359111d590b8437080672009c9272e759741dd872a2766\";a:4:{s:10:\"expiration\";i:1637570168;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36\";s:5:\"login\";i:1637397368;}s:64:\"ba31c26262ec75924316e470f90b4b580dd32590c47eb12c9f7fbdf1bbfac963\";a:4:{s:10:\"expiration\";i:1637570925;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36\";s:5:\"login\";i:1637398125;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','4');
INSERT INTO `wp_usermeta` VALUES (18,1,'managenav-menuscolumnshidden','a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'metaboxhidden_nav-menus','a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'nav_menu_recently_edited','25');
INSERT INTO `wp_usermeta` VALUES (21,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (22,1,'wp_user-settings-time','1636971398');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$P$BYQlnCI2O1bLCaIRH4NjpXC91T/FVC1','admin','admin@gmail.com','http://huyenkhongsonthuong.local','2021-10-15 09:54:09','',0,'admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-21 11:42:51
