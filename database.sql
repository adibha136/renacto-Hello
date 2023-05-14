-- MySQL dump 10.13  Distrib 8.0.32, for macos13.0 (arm64)
--
-- Host: localhost    Database: nest
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'iqZ7UDTjul5Uqdh47BAliICFUy7W9W48',1,'2023-04-08 19:13:54','2023-04-08 19:13:54','2023-04-08 19:13:54');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Everyday Fresh','2028-04-09 00:00:00','not_set','IZ6WU8KUALYD','promotion/1.png','/products',0,1,'published','2023-04-08 19:13:55','2023-04-08 19:13:55'),(2,'Make your Breakfast','2028-04-09 00:00:00','not_set','ILSFJVYFGCPZ','promotion/2.png','/products',0,2,'published','2023-04-08 19:13:55','2023-04-08 19:13:55'),(3,'The best Organic','2028-04-09 00:00:00','not_set','ILSDKVYFGXPH','promotion/3.png','/products',0,3,'published','2023-04-08 19:13:55','2023-04-08 19:13:55'),(4,'Bring nature into your home','2028-04-09 00:00:00','not_set','IZ6WU8KUALYG','promotion/4.png','/products',0,4,'published','2023-04-08 19:13:55','2023-04-08 19:13:55'),(5,'Delivered to your home','2028-04-09 00:00:00','banner-big','IZ6WU8KUALYH','promotion/5.png','/products',0,5,'published','2023-04-08 19:13:55','2023-04-08 19:13:55'),(6,'Save 17% on Oganic Juice','2028-04-09 00:00:00','no_set','IZ6WU8KUALYI','promotion/6.png','/products',0,6,'published','2023-04-08 19:13:55','2023-04-08 19:13:55'),(7,'Everyday Fresh & Clean with Our Products','2028-04-09 00:00:00','item-style-4','IZ6WU8KUALYJ','promotion/7.png','/products',0,7,'published','2023-04-08 19:13:55','2023-04-08 19:13:55'),(8,'The best Organic Products Online','2028-04-09 00:00:00','item-style-5','IZ6WU8KUALYK','promotion/8.png','/products',0,8,'published','2023-04-08 19:13:55','2023-04-08 19:13:55'),(9,'Everyday Fresh with Our Products','2028-04-09 00:00:00','item-style-2','IZ6WU8KUALYL','promotion/9.png',NULL,0,9,'published','2023-04-08 19:13:55','2023-04-08 19:13:55'),(10,'100% guaranteed all Fresh items','2028-04-09 00:00:00','item-style-2','IZ6WU8KUALYM','promotion/10.png',NULL,0,10,'published','2023-04-08 19:13:55','2023-04-08 19:13:55'),(11,'Special grocery sale off this month','2028-04-09 00:00:00','item-style-2','IZ6WU8KUALYN','promotion/11.png',NULL,0,11,'published','2023-04-08 19:13:55','2023-04-08 19:13:55'),(12,'Enjoy 15% OFF for all vegetable and fruit','2028-04-09 00:00:00','item-style-2','IZ6WU8KUALYO','promotion/12.png',NULL,0,12,'published','2023-04-08 19:13:55','2023-04-08 19:13:55');
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
INSERT INTO `ads_translations` VALUES ('vi',1,'Tươi mỗi ngày','promotion/1.png','/vi/products'),('vi',2,'Nấu bữa sáng của bạn','promotion/2.png','/vi/products'),('vi',3,'Hữu cơ tốt nhất','promotion/3.png','/vi/products'),('vi',4,'Mang thiên nhiên vào ngôi nhà của bạn','promotion/4.png','/vi/products'),('vi',5,'Giao tận nhà','promotion/5.png','/vi/products'),('vi',6,'Tiết kiệm 17% khi mua nước ép hữu cơ','promotion/6.png','/vi/products'),('vi',7,'Tươi và Sạch hàng ngày với các sản phẩm của chúng tôi','promotion/7.png','/vi/products'),('vi',8,'Các sản phẩm hữu cơ tốt nhất trực tuyến','promotion/8.png','/vi/products'),('vi',9,'Tươi mới mỗi ngày với các sản phẩm của chúng tôi','promotion/9.png','/vi/products'),('vi',10,'100% đảm bảo tất cả các mặt hàng tươi','promotion/10.png','/vi/products'),('vi',11,'Giảm giá hàng tạp hóa đặc biệt trong tháng này','promotion/11.png','/vi/products'),('vi',12,'GIẢM GIÁ 15% cho tất cả rau và trái cây','promotion/12.png','/vi/products');
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `status` (`status`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Architecto corporis optio nesciunt ducimus rerum necessitatibus fuga sunt. Voluptatem libero ut eum repudiandae delectus nobis eos. Optio voluptatum non sunt et animi aut.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2023-04-08 19:13:53','2023-04-08 19:13:53'),(2,'Fashion',0,'Sequi eum suscipit exercitationem. Veniam non commodi aut enim exercitationem. Cupiditate error eos perspiciatis laudantium in voluptatem illo.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2023-04-08 19:13:53','2023-04-08 19:13:53'),(3,'Electronic',0,'Eius quia reprehenderit ipsa. Qui nobis non ipsam sequi consequatur adipisci quidem. Aut ipsa est odit id et. Inventore nemo ut officia rerum voluptates aut.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2023-04-08 19:13:53','2023-04-08 19:13:53'),(4,'Commercial',0,'Illo natus qui dolorem aut. Neque harum suscipit veniam rerum illo aliquam accusantium quo. Animi consequuntur facere mollitia iste debitis.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2023-04-08 19:13:53','2023-04-08 19:13:53');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
INSERT INTO `categories_translations` VALUES ('vi',1,'Thương mại điện tử',NULL),('vi',2,'Thời trang',NULL),('vi',3,'Điện tử',NULL),('vi',4,'Thương mại',NULL);
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` bigint unsigned NOT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Perxsion',NULL,NULL,NULL,'published',0,1,'2023-04-08 19:13:38','2023-04-08 19:13:38'),(2,'Hiching',NULL,NULL,NULL,'published',1,1,'2023-04-08 19:13:38','2023-04-08 19:13:38'),(3,'Kepslo',NULL,NULL,NULL,'published',2,1,'2023-04-08 19:13:38','2023-04-08 19:13:38'),(4,'Groneba',NULL,NULL,NULL,'published',3,1,'2023-04-08 19:13:38','2023-04-08 19:13:38'),(5,'Babian',NULL,NULL,NULL,'published',4,1,'2023-04-08 19:13:38','2023-04-08 19:13:38'),(6,'Valorant',NULL,NULL,NULL,'published',5,1,'2023-04-08 19:13:38','2023-04-08 19:13:38'),(7,'Pure',NULL,NULL,NULL,'published',6,1,'2023-04-08 19:13:38','2023-04-08 19:13:38');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
INSERT INTO `ec_brands_translations` VALUES ('vi',1,'Perxsion',NULL),('vi',2,'Hiching',NULL),('vi',3,'Kepslo',NULL),('vi',4,'Groneba',NULL),('vi',5,'Babian',NULL),('vi',6,'Valorant',NULL),('vi',7,'Pure',NULL);
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2023-04-08 19:13:38','2023-04-08 19:13:38'),(2,'EUR','€',0,2,1,0,0.84,'2023-04-08 19:13:38','2023-04-08 19:13:38'),(3,'VND','₫',0,0,2,0,23203,'2023-04-08 19:13:38','2023-04-08 19:13:38');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Kara Strosin','customer@botble.com','+16519843020','SR','Missouri','Jaylanside','91458 Rutherford Estates',1,1,'2023-04-08 19:13:48','2023-04-08 19:13:48','15826'),(2,'Kara Strosin','customer@botble.com','+14258878017','AO','Maryland','Vandervortberg','686 Jenkins Creek',1,0,'2023-04-08 19:13:48','2023-04-08 19:13:48','43306-6528'),(3,'Hans Lemke','vendor@botble.com','+18648883759','LR','Illinois','Parisianmouth','5052 Elfrieda Landing',2,1,'2023-04-08 19:13:48','2023-04-08 19:13:48','51655'),(4,'Hans Lemke','vendor@botble.com','+13526990465','AS','Oklahoma','Lucilestad','8716 Turcotte Fort Suite 873',2,0,'2023-04-08 19:13:48','2023-04-08 19:13:48','81324-5556'),(5,'Arturo Fadel','angelo.windler@example.com','+12083458515','TL','North Carolina','East Cordiafurt','703 Goodwin Rue Suite 073',3,1,'2023-04-08 19:13:48','2023-04-08 19:13:48','98250'),(6,'Efrain Franecki','sgutkowski@example.net','+13185366237','DJ','Michigan','Tobinland','90621 Destin Green',4,1,'2023-04-08 19:13:48','2023-04-08 19:13:48','14347-5528'),(7,'Prof. Brooke Cartwright Jr.','alberto.cronin@example.org','+16783428552','ZA','Minnesota','Brendonside','2373 Kiarra Unions',5,1,'2023-04-08 19:13:48','2023-04-08 19:13:48','97424'),(8,'Nettie Crist','alana20@example.net','+12078441751','SM','Oregon','East Tyson','76833 Emilia Tunnel Apt. 893',6,1,'2023-04-08 19:13:48','2023-04-08 19:13:48','85049-1634'),(9,'Mrs. Creola Kozey II','hauck.ethyl@example.net','+19093867125','TO','Louisiana','Leannburgh','54250 Else Forks',7,1,'2023-04-08 19:13:48','2023-04-08 19:13:48','85189-8545'),(10,'Nikko Hahn','crooks.buster@example.net','+12312888543','CK','Wisconsin','Binsburgh','9886 Verona Underpass Suite 408',8,1,'2023-04-08 19:13:48','2023-04-08 19:13:48','26520-6998'),(11,'Foster Kling III','dtillman@example.org','+15207193572','GR','Missouri','Vicenteshire','7643 Langworth Mall Apt. 405',9,1,'2023-04-08 19:13:49','2023-04-08 19:13:49','16715-0371'),(12,'Prof. Cary Torphy','pink39@example.com','+16299474096','SR','Tennessee','Elsechester','7207 Reinger Cliffs',10,1,'2023-04-08 19:13:49','2023-04-08 19:13:49','03179');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Kara Strosin','customer@botble.com','$2y$10$JEt/HpEzZXSZ1Tq.tZ.pPui84Z8UIlsWjpbwKUJ3xFeneHgJf81Wy','customers/6.jpg','1999-03-16','+13237247370',NULL,'2023-04-08 19:13:48','2023-04-08 19:13:48','2023-04-09 02:13:48',NULL,'activated',0,NULL),(2,'Hans Lemke','vendor@botble.com','$2y$10$OspBbDbSZzPwBHhM2swG1eCZvo.s91vlLskN7buDCZsWGrxC5wkGG','customers/9.jpg','1978-03-19','+16265217351',NULL,'2023-04-08 19:13:48','2023-04-08 19:13:58','2023-04-09 02:13:48',NULL,'activated',1,'2023-04-09 02:13:58'),(3,'Arturo Fadel','angelo.windler@example.com','$2y$10$kLv8yCrNGF810Xt0oZ/x0esheNnndg2Fp/lfSqkSdnA3NCv8Lwihu','customers/1.jpg','1984-03-29','+19374039375',NULL,'2023-04-08 19:13:48','2023-04-08 19:13:48','2023-04-09 02:13:48',NULL,'activated',0,NULL),(4,'Efrain Franecki','sgutkowski@example.net','$2y$10$/C.LbRPAGLA8EK9jbxcZ4O5x7/S9SIaLw7ETOMEkjnjC3RQmpg1Xy','customers/2.jpg','1977-03-28','+18044575343',NULL,'2023-04-08 19:13:48','2023-04-08 19:13:48','2023-04-09 02:13:48',NULL,'activated',0,NULL),(5,'Prof. Brooke Cartwright Jr.','alberto.cronin@example.org','$2y$10$ZEXu3hYSuA6nvqkAE44H3.rvV7SKFNz9eanO2CqLY75rs3DwGFNFi','customers/3.jpg','1991-03-19','+19417308002',NULL,'2023-04-08 19:13:48','2023-04-08 19:13:59','2023-04-09 02:13:48',NULL,'activated',1,'2023-04-09 02:13:59'),(6,'Nettie Crist','alana20@example.net','$2y$10$WYRuqAD14Yow05vxsmmLWu8Bg16bto7SKpq2sVnqImnfuZ4jnNLqG','customers/4.jpg','1977-03-17','+13309617943',NULL,'2023-04-08 19:13:48','2023-04-08 19:13:48','2023-04-09 02:13:48',NULL,'activated',0,NULL),(7,'Mrs. Creola Kozey II','hauck.ethyl@example.net','$2y$10$8HWa0CvRSujOJs99SOJDYePMFNS00CSu8QjSc3IcI9/65ewC0r4re','customers/5.jpg','1975-03-16','+15205574732',NULL,'2023-04-08 19:13:48','2023-04-08 19:13:59','2023-04-09 02:13:48',NULL,'activated',1,'2023-04-09 02:13:59'),(8,'Nikko Hahn','crooks.buster@example.net','$2y$10$4m3lMWrd1XzHa7Dh5bacDuBW0E8ZeOPd7DHVh77m8YyQpw1MIWKLy','customers/6.jpg','1976-03-25','+19499869473',NULL,'2023-04-08 19:13:48','2023-04-08 19:13:48','2023-04-09 02:13:48',NULL,'activated',0,NULL),(9,'Foster Kling III','dtillman@example.org','$2y$10$q4FNaBQSvsK/xBU.ICB.yeiZ0PTwIfpbJSFUDnVLxp4sjpXhk81JC','customers/7.jpg','2001-04-02','+17862020698',NULL,'2023-04-08 19:13:49','2023-04-08 19:13:49','2023-04-09 02:13:49',NULL,'activated',0,NULL),(10,'Prof. Cary Torphy','pink39@example.com','$2y$10$g1NU0SRDpTkLkveT213kNO/Qk30wOhVXLfP3FoNHcAfLhU.z0zGeS','customers/8.jpg','1975-03-11','+19862305231',NULL,'2023-04-08 19:13:49','2023-04-08 19:13:59','2023-04-09 02:13:49',NULL,'activated',1,'2023-04-09 02:13:59');
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint unsigned NOT NULL,
  `product_collection_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,5,21.73,10,5),(2,8,81.432,18,5),(3,11,76.86,16,5),(4,22,46.62,19,2),(5,1,283.08,15,4),(6,1,269.6,12,2),(6,2,136.3,10,5),(6,3,123.31,9,5),(6,4,23.408,12,2),(6,5,23.78,15,3),(6,6,29,14,3),(6,7,41.82,8,5),(6,8,72.036,19,1),(6,9,37.74,11,1),(6,10,114.08,20,2),(6,11,67.1,16,3),(6,12,55.5408,9,3),(6,13,81.6,12,2),(6,14,110.94,16,5),(6,15,49.2,11,5),(6,16,32.25,19,1),(6,17,96.52,14,3),(6,18,98.4,6,4),(6,19,84.24,8,2),(6,20,64.824,9,5);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Deal of the Day','2023-05-18 00:00:00','published','2023-04-08 19:13:49','2023-04-08 19:13:49'),(2,'Flash sale 2','2023-05-19 00:00:00','published','2023-04-08 19:13:49','2023-04-08 19:13:49'),(3,'Flash sale 3','2023-05-18 00:00:00','published','2023-04-08 19:13:49','2023-04-08 19:13:49'),(4,'Flash sale 4','2023-04-30 00:00:00','published','2023-04-08 19:13:49','2023-04-08 19:13:49'),(5,'Flash sale 5','2023-05-26 00:00:00','published','2023-04-08 19:13:49','2023-04-08 19:13:49'),(6,'Daily Best Sales','2023-05-09 00:00:00','published','2023-04-08 19:13:49','2023-04-08 19:13:49');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
INSERT INTO `ec_flash_sales_translations` VALUES ('vi',1,'Ưu đãi trong ngày'),('vi',2,'Khuyến mãi 2'),('vi',3,'Khuyến mãi 3'),('vi',4,'Khuyến mãi 4'),('vi',5,'Khuyến mãi 5'),('vi',6,'Bán tốt nhất hàng ngày');
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2023-04-08 19:13:57','2023-04-08 19:13:57'),(1,2,'2 Year',10,9999,0,'2023-04-08 19:13:57','2023-04-08 19:13:57'),(1,3,'3 Year',20,9999,0,'2023-04-08 19:13:57','2023-04-08 19:13:57'),(2,4,'4GB',0,9999,0,'2023-04-08 19:13:57','2023-04-08 19:13:57'),(2,5,'8GB',10,9999,0,'2023-04-08 19:13:57','2023-04-08 19:13:57'),(2,6,'16GB',20,9999,0,'2023-04-08 19:13:57','2023-04-08 19:13:57'),(3,7,'Core i5',0,9999,0,'2023-04-08 19:13:57','2023-04-08 19:13:57'),(3,8,'Core i7',10,9999,0,'2023-04-08 19:13:57','2023-04-08 19:13:57'),(3,9,'Core i9',20,9999,0,'2023-04-08 19:13:57','2023-04-08 19:13:57'),(4,10,'128GB',0,9999,0,'2023-04-08 19:13:57','2023-04-08 19:13:57'),(4,11,'256GB',10,9999,0,'2023-04-08 19:13:57','2023-04-08 19:13:57'),(4,12,'512GB',20,9999,0,'2023-04-08 19:13:57','2023-04-08 19:13:57');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2023-04-08 19:13:57','2023-04-08 19:13:57'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2023-04-08 19:13:57','2023-04-08 19:13:57'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2023-04-08 19:13:57','2023-04-08 19:13:57'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2023-04-08 19:13:57','2023-04-08 19:13:57');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint unsigned NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
INSERT INTO `ec_order_addresses` VALUES (1,'Foster Kling III','+15207193572','dtillman@example.org','GR','Missouri','Vicenteshire','7643 Langworth Mall Apt. 405',1,'16715-0371','shipping_address'),(2,'Foster Kling III','+15207193572','dtillman@example.org','GR','Missouri','Vicenteshire','7643 Langworth Mall Apt. 405',2,'16715-0371','shipping_address'),(3,'Nettie Crist','+12078441751','alana20@example.net','SM','Oregon','East Tyson','76833 Emilia Tunnel Apt. 893',3,'85049-1634','shipping_address'),(4,'Nettie Crist','+12078441751','alana20@example.net','SM','Oregon','East Tyson','76833 Emilia Tunnel Apt. 893',4,'85049-1634','shipping_address'),(5,'Arturo Fadel','+12083458515','angelo.windler@example.com','TL','North Carolina','East Cordiafurt','703 Goodwin Rue Suite 073',5,'98250','shipping_address'),(6,'Arturo Fadel','+12083458515','angelo.windler@example.com','TL','North Carolina','East Cordiafurt','703 Goodwin Rue Suite 073',6,'98250','shipping_address'),(7,'Foster Kling III','+15207193572','dtillman@example.org','GR','Missouri','Vicenteshire','7643 Langworth Mall Apt. 405',7,'16715-0371','shipping_address'),(8,'Foster Kling III','+15207193572','dtillman@example.org','GR','Missouri','Vicenteshire','7643 Langworth Mall Apt. 405',8,'16715-0371','shipping_address'),(9,'Foster Kling III','+15207193572','dtillman@example.org','GR','Missouri','Vicenteshire','7643 Langworth Mall Apt. 405',9,'16715-0371','shipping_address'),(10,'Kara Strosin','+16519843020','customer@botble.com','SR','Missouri','Jaylanside','91458 Rutherford Estates',10,'15826','shipping_address'),(11,'Kara Strosin','+16519843020','customer@botble.com','SR','Missouri','Jaylanside','91458 Rutherford Estates',11,'15826','shipping_address'),(12,'Kara Strosin','+16519843020','customer@botble.com','SR','Missouri','Jaylanside','91458 Rutherford Estates',12,'15826','shipping_address'),(13,'Arturo Fadel','+12083458515','angelo.windler@example.com','TL','North Carolina','East Cordiafurt','703 Goodwin Rue Suite 073',13,'98250','shipping_address'),(14,'Arturo Fadel','+12083458515','angelo.windler@example.com','TL','North Carolina','East Cordiafurt','703 Goodwin Rue Suite 073',14,'98250','shipping_address'),(15,'Arturo Fadel','+12083458515','angelo.windler@example.com','TL','North Carolina','East Cordiafurt','703 Goodwin Rue Suite 073',15,'98250','shipping_address'),(16,'Arturo Fadel','+12083458515','angelo.windler@example.com','TL','North Carolina','East Cordiafurt','703 Goodwin Rue Suite 073',16,'98250','shipping_address'),(17,'Arturo Fadel','+12083458515','angelo.windler@example.com','TL','North Carolina','East Cordiafurt','703 Goodwin Rue Suite 073',17,'98250','shipping_address'),(18,'Kara Strosin','+16519843020','customer@botble.com','SR','Missouri','Jaylanside','91458 Rutherford Estates',18,'15826','shipping_address'),(19,'Kara Strosin','+16519843020','customer@botble.com','SR','Missouri','Jaylanside','91458 Rutherford Estates',19,'15826','shipping_address'),(20,'Kara Strosin','+16519843020','customer@botble.com','SR','Missouri','Jaylanside','91458 Rutherford Estates',20,'15826','shipping_address'),(21,'Kara Strosin','+16519843020','customer@botble.com','SR','Missouri','Jaylanside','91458 Rutherford Estates',21,'15826','shipping_address'),(22,'Kara Strosin','+16519843020','customer@botble.com','SR','Missouri','Jaylanside','91458 Rutherford Estates',22,'15826','shipping_address'),(23,'Nikko Hahn','+12312888543','crooks.buster@example.net','CK','Wisconsin','Binsburgh','9886 Verona Underpass Suite 408',23,'26520-6998','shipping_address'),(24,'Nikko Hahn','+12312888543','crooks.buster@example.net','CK','Wisconsin','Binsburgh','9886 Verona Underpass Suite 408',24,'26520-6998','shipping_address'),(25,'Nikko Hahn','+12312888543','crooks.buster@example.net','CK','Wisconsin','Binsburgh','9886 Verona Underpass Suite 408',25,'26520-6998','shipping_address'),(26,'Nikko Hahn','+12312888543','crooks.buster@example.net','CK','Wisconsin','Binsburgh','9886 Verona Underpass Suite 408',26,'26520-6998','shipping_address'),(27,'Nikko Hahn','+12312888543','crooks.buster@example.net','CK','Wisconsin','Binsburgh','9886 Verona Underpass Suite 408',27,'26520-6998','shipping_address'),(28,'Efrain Franecki','+13185366237','sgutkowski@example.net','DJ','Michigan','Tobinland','90621 Destin Green',28,'14347-5528','shipping_address'),(29,'Efrain Franecki','+13185366237','sgutkowski@example.net','DJ','Michigan','Tobinland','90621 Destin Green',29,'14347-5528','shipping_address'),(30,'Efrain Franecki','+13185366237','sgutkowski@example.net','DJ','Michigan','Tobinland','90621 Destin Green',30,'14347-5528','shipping_address'),(31,'Kara Strosin','+16519843020','customer@botble.com','SR','Missouri','Jaylanside','91458 Rutherford Estates',31,'15826','shipping_address'),(32,'Kara Strosin','+16519843020','customer@botble.com','SR','Missouri','Jaylanside','91458 Rutherford Estates',32,'15826','shipping_address'),(33,'Nikko Hahn','+12312888543','crooks.buster@example.net','CK','Wisconsin','Binsburgh','9886 Verona Underpass Suite 408',33,'26520-6998','shipping_address'),(34,'Nikko Hahn','+12312888543','crooks.buster@example.net','CK','Wisconsin','Binsburgh','9886 Verona Underpass Suite 408',34,'26520-6998','shipping_address'),(35,'Efrain Franecki','+13185366237','sgutkowski@example.net','DJ','Michigan','Tobinland','90621 Destin Green',35,'14347-5528','shipping_address'),(36,'Efrain Franecki','+13185366237','sgutkowski@example.net','DJ','Michigan','Tobinland','90621 Destin Green',36,'14347-5528','shipping_address'),(37,'Nikko Hahn','+12312888543','crooks.buster@example.net','CK','Wisconsin','Binsburgh','9886 Verona Underpass Suite 408',37,'26520-6998','shipping_address'),(38,'Nikko Hahn','+12312888543','crooks.buster@example.net','CK','Wisconsin','Binsburgh','9886 Verona Underpass Suite 408',38,'26520-6998','shipping_address'),(39,'Arturo Fadel','+12083458515','angelo.windler@example.com','TL','North Carolina','East Cordiafurt','703 Goodwin Rue Suite 073',39,'98250','shipping_address'),(40,'Arturo Fadel','+12083458515','angelo.windler@example.com','TL','North Carolina','East Cordiafurt','703 Goodwin Rue Suite 073',40,'98250','shipping_address'),(41,'Kara Strosin','+16519843020','customer@botble.com','SR','Missouri','Jaylanside','91458 Rutherford Estates',41,'15826','shipping_address'),(42,'Kara Strosin','+16519843020','customer@botble.com','SR','Missouri','Jaylanside','91458 Rutherford Estates',42,'15826','shipping_address'),(43,'Nettie Crist','+12078441751','alana20@example.net','SM','Oregon','East Tyson','76833 Emilia Tunnel Apt. 893',43,'85049-1634','shipping_address'),(44,'Nettie Crist','+12078441751','alana20@example.net','SM','Oregon','East Tyson','76833 Emilia Tunnel Apt. 893',44,'85049-1634','shipping_address'),(45,'Efrain Franecki','+13185366237','sgutkowski@example.net','DJ','Michigan','Tobinland','90621 Destin Green',45,'14347-5528','shipping_address'),(46,'Efrain Franecki','+13185366237','sgutkowski@example.net','DJ','Michigan','Tobinland','90621 Destin Green',46,'14347-5528','shipping_address');
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
INSERT INTO `ec_order_histories` VALUES (1,'create_order_from_seeder','Order is created from the checkout page',NULL,1,NULL,'2023-04-05 11:13:59','2023-04-05 11:13:59'),(2,'confirm_order','Order was verified by %user_name%',0,1,NULL,'2023-04-05 11:13:59','2023-04-05 11:13:59'),(3,'confirm_payment','Payment was confirmed (amount $126.00) by %user_name%',0,1,NULL,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(4,'create_shipment','Created shipment for order',0,1,NULL,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(5,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,1,NULL,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(6,'create_order_from_seeder','Order is created from the checkout page',NULL,2,NULL,'2023-03-24 19:13:59','2023-03-24 19:13:59'),(7,'confirm_order','Order was verified by %user_name%',0,2,NULL,'2023-03-24 19:13:59','2023-03-24 19:13:59'),(8,'confirm_payment','Payment was confirmed (amount $129.00) by %user_name%',0,2,NULL,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(9,'create_shipment','Created shipment for order',0,2,NULL,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(10,'create_order_from_seeder','Order is created from the checkout page',NULL,3,NULL,'2023-03-28 17:13:59','2023-03-28 17:13:59'),(11,'confirm_order','Order was verified by %user_name%',0,3,NULL,'2023-03-28 17:13:59','2023-03-28 17:13:59'),(12,'confirm_payment','Payment was confirmed (amount $126.00) by %user_name%',0,3,NULL,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(13,'create_shipment','Created shipment for order',0,3,NULL,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(14,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,3,NULL,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(15,'create_order_from_seeder','Order is created from the checkout page',NULL,4,NULL,'2023-04-05 15:13:59','2023-04-05 15:13:59'),(16,'confirm_order','Order was verified by %user_name%',0,4,NULL,'2023-04-05 15:13:59','2023-04-05 15:13:59'),(17,'confirm_payment','Payment was confirmed (amount $333.00) by %user_name%',0,4,NULL,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(18,'create_shipment','Created shipment for order',0,4,NULL,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(19,'create_order_from_seeder','Order is created from the checkout page',NULL,5,NULL,'2023-04-07 07:13:59','2023-04-07 07:13:59'),(20,'confirm_order','Order was verified by %user_name%',0,5,NULL,'2023-04-07 07:13:59','2023-04-07 07:13:59'),(21,'confirm_payment','Payment was confirmed (amount $333.00) by %user_name%',0,5,NULL,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(22,'create_shipment','Created shipment for order',0,5,NULL,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(23,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,5,NULL,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(24,'create_order_from_seeder','Order is created from the checkout page',NULL,6,NULL,'2023-04-04 07:13:59','2023-04-04 07:13:59'),(25,'confirm_order','Order was verified by %user_name%',0,6,NULL,'2023-04-04 07:13:59','2023-04-04 07:13:59'),(26,'confirm_payment','Payment was confirmed (amount $124.00) by %user_name%',0,6,NULL,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(27,'create_shipment','Created shipment for order',0,6,NULL,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(28,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,6,NULL,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(29,'create_order_from_seeder','Order is created from the checkout page',NULL,7,NULL,'2023-04-03 03:13:59','2023-04-03 03:13:59'),(30,'confirm_order','Order was verified by %user_name%',0,7,NULL,'2023-04-03 03:13:59','2023-04-03 03:13:59'),(31,'confirm_payment','Payment was confirmed (amount $378.00) by %user_name%',0,7,NULL,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(32,'create_shipment','Created shipment for order',0,7,NULL,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(33,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,7,NULL,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(34,'create_order_from_seeder','Order is created from the checkout page',NULL,8,NULL,'2023-04-03 03:13:59','2023-04-03 03:13:59'),(35,'confirm_order','Order was verified by %user_name%',0,8,NULL,'2023-04-03 03:13:59','2023-04-03 03:13:59'),(36,'confirm_payment','Payment was confirmed (amount $240.00) by %user_name%',0,8,NULL,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(37,'create_shipment','Created shipment for order',0,8,NULL,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(38,'create_order_from_seeder','Order is created from the checkout page',NULL,9,NULL,'2023-04-07 09:13:59','2023-04-07 09:13:59'),(39,'confirm_order','Order was verified by %user_name%',0,9,NULL,'2023-04-07 09:13:59','2023-04-07 09:13:59'),(40,'create_shipment','Created shipment for order',0,9,NULL,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(41,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,9,NULL,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(42,'create_order_from_seeder','Order is created from the checkout page',NULL,10,NULL,'2023-03-27 19:14:00','2023-03-27 19:14:00'),(43,'confirm_order','Order was verified by %user_name%',0,10,NULL,'2023-03-27 19:14:00','2023-03-27 19:14:00'),(44,'confirm_payment','Payment was confirmed (amount $123.00) by %user_name%',0,10,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(45,'create_shipment','Created shipment for order',0,10,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(46,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,10,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(47,'create_order_from_seeder','Order is created from the checkout page',NULL,11,NULL,'2023-03-27 19:14:00','2023-03-27 19:14:00'),(48,'confirm_order','Order was verified by %user_name%',0,11,NULL,'2023-03-27 19:14:00','2023-03-27 19:14:00'),(49,'confirm_payment','Payment was confirmed (amount $361.00) by %user_name%',0,11,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(50,'create_shipment','Created shipment for order',0,11,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(51,'create_order_from_seeder','Order is created from the checkout page',NULL,12,NULL,'2023-03-29 03:14:00','2023-03-29 03:14:00'),(52,'confirm_order','Order was verified by %user_name%',0,12,NULL,'2023-03-29 03:14:00','2023-03-29 03:14:00'),(53,'confirm_payment','Payment was confirmed (amount $111.00) by %user_name%',0,12,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(54,'create_shipment','Created shipment for order',0,12,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(55,'create_order_from_seeder','Order is created from the checkout page',NULL,13,NULL,'2023-04-07 13:14:00','2023-04-07 13:14:00'),(56,'confirm_order','Order was verified by %user_name%',0,13,NULL,'2023-04-07 13:14:00','2023-04-07 13:14:00'),(57,'confirm_payment','Payment was confirmed (amount $366.00) by %user_name%',0,13,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(58,'create_shipment','Created shipment for order',0,13,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(59,'create_order_from_seeder','Order is created from the checkout page',NULL,14,NULL,'2023-04-01 07:14:00','2023-04-01 07:14:00'),(60,'confirm_order','Order was verified by %user_name%',0,14,NULL,'2023-04-01 07:14:00','2023-04-01 07:14:00'),(61,'confirm_payment','Payment was confirmed (amount $234.00) by %user_name%',0,14,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(62,'create_shipment','Created shipment for order',0,14,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(63,'create_order_from_seeder','Order is created from the checkout page',NULL,15,NULL,'2023-03-31 15:14:00','2023-03-31 15:14:00'),(64,'confirm_order','Order was verified by %user_name%',0,15,NULL,'2023-03-31 15:14:00','2023-03-31 15:14:00'),(65,'confirm_payment','Payment was confirmed (amount $410.00) by %user_name%',0,15,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(66,'create_shipment','Created shipment for order',0,15,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(67,'create_order_from_seeder','Order is created from the checkout page',NULL,16,NULL,'2023-03-28 03:14:00','2023-03-28 03:14:00'),(68,'confirm_order','Order was verified by %user_name%',0,16,NULL,'2023-03-28 03:14:00','2023-03-28 03:14:00'),(69,'confirm_payment','Payment was confirmed (amount $246.00) by %user_name%',0,16,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(70,'create_shipment','Created shipment for order',0,16,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(71,'create_order_from_seeder','Order is created from the checkout page',NULL,17,NULL,'2023-04-05 07:14:00','2023-04-05 07:14:00'),(72,'confirm_order','Order was verified by %user_name%',0,17,NULL,'2023-04-05 07:14:00','2023-04-05 07:14:00'),(73,'confirm_payment','Payment was confirmed (amount $252.00) by %user_name%',0,17,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(74,'create_shipment','Created shipment for order',0,17,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(75,'create_order_from_seeder','Order is created from the checkout page',NULL,18,NULL,'2023-04-06 15:14:00','2023-04-06 15:14:00'),(76,'confirm_order','Order was verified by %user_name%',0,18,NULL,'2023-04-06 15:14:00','2023-04-06 15:14:00'),(77,'confirm_payment','Payment was confirmed (amount $360.00) by %user_name%',0,18,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(78,'create_shipment','Created shipment for order',0,18,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(79,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,18,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(80,'create_order_from_seeder','Order is created from the checkout page',NULL,19,NULL,'2023-03-31 03:14:00','2023-03-31 03:14:00'),(81,'confirm_order','Order was verified by %user_name%',0,19,NULL,'2023-03-31 03:14:00','2023-03-31 03:14:00'),(82,'confirm_payment','Payment was confirmed (amount $254.00) by %user_name%',0,19,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(83,'create_shipment','Created shipment for order',0,19,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(84,'create_order_from_seeder','Order is created from the checkout page',NULL,20,NULL,'2023-04-01 19:14:00','2023-04-01 19:14:00'),(85,'confirm_order','Order was verified by %user_name%',0,20,NULL,'2023-04-01 19:14:00','2023-04-01 19:14:00'),(86,'confirm_payment','Payment was confirmed (amount $360.00) by %user_name%',0,20,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(87,'create_shipment','Created shipment for order',0,20,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(88,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,20,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(89,'create_order_from_seeder','Order is created from the checkout page',NULL,21,NULL,'2023-04-03 19:14:00','2023-04-03 19:14:00'),(90,'confirm_order','Order was verified by %user_name%',0,21,NULL,'2023-04-03 19:14:00','2023-04-03 19:14:00'),(91,'confirm_payment','Payment was confirmed (amount $366.00) by %user_name%',0,21,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(92,'create_shipment','Created shipment for order',0,21,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(93,'create_order_from_seeder','Order is created from the checkout page',NULL,22,NULL,'2023-04-04 19:14:00','2023-04-04 19:14:00'),(94,'confirm_order','Order was verified by %user_name%',0,22,NULL,'2023-04-04 19:14:00','2023-04-04 19:14:00'),(95,'confirm_payment','Payment was confirmed (amount $345.00) by %user_name%',0,22,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(96,'create_shipment','Created shipment for order',0,22,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(97,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,22,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(98,'create_order_from_seeder','Order is created from the checkout page',NULL,23,NULL,'2023-03-31 13:14:00','2023-03-31 13:14:00'),(99,'confirm_order','Order was verified by %user_name%',0,23,NULL,'2023-03-31 13:14:00','2023-03-31 13:14:00'),(100,'confirm_payment','Payment was confirmed (amount $456.00) by %user_name%',0,23,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(101,'create_shipment','Created shipment for order',0,23,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(102,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,23,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(103,'create_order_from_seeder','Order is created from the checkout page',NULL,24,NULL,'2023-04-04 05:14:00','2023-04-04 05:14:00'),(104,'confirm_order','Order was verified by %user_name%',0,24,NULL,'2023-04-04 05:14:00','2023-04-04 05:14:00'),(105,'create_shipment','Created shipment for order',0,24,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(106,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,24,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(107,'create_order_from_seeder','Order is created from the checkout page',NULL,25,NULL,'2023-04-06 23:14:00','2023-04-06 23:14:00'),(108,'confirm_order','Order was verified by %user_name%',0,25,NULL,'2023-04-06 23:14:00','2023-04-06 23:14:00'),(109,'create_shipment','Created shipment for order',0,25,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(110,'create_order_from_seeder','Order is created from the checkout page',NULL,26,NULL,'2023-04-01 07:14:00','2023-04-01 07:14:00'),(111,'confirm_order','Order was verified by %user_name%',0,26,NULL,'2023-04-01 07:14:00','2023-04-01 07:14:00'),(112,'confirm_payment','Payment was confirmed (amount $615.00) by %user_name%',0,26,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(113,'create_shipment','Created shipment for order',0,26,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(114,'create_order_from_seeder','Order is created from the checkout page',NULL,27,NULL,'2023-04-03 19:14:00','2023-04-03 19:14:00'),(115,'confirm_order','Order was verified by %user_name%',0,27,NULL,'2023-04-03 19:14:00','2023-04-03 19:14:00'),(116,'confirm_payment','Payment was confirmed (amount $333.00) by %user_name%',0,27,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(117,'create_shipment','Created shipment for order',0,27,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(118,'create_order_from_seeder','Order is created from the checkout page',NULL,28,NULL,'2023-04-05 01:14:00','2023-04-05 01:14:00'),(119,'confirm_order','Order was verified by %user_name%',0,28,NULL,'2023-04-05 01:14:00','2023-04-05 01:14:00'),(120,'confirm_payment','Payment was confirmed (amount $82.00) by %user_name%',0,28,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(121,'create_shipment','Created shipment for order',0,28,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(122,'create_order_from_seeder','Order is created from the checkout page',NULL,29,NULL,'2023-04-02 19:14:00','2023-04-02 19:14:00'),(123,'confirm_order','Order was verified by %user_name%',0,29,NULL,'2023-04-02 19:14:00','2023-04-02 19:14:00'),(124,'confirm_payment','Payment was confirmed (amount $476.00) by %user_name%',0,29,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(125,'create_shipment','Created shipment for order',0,29,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(126,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,29,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(127,'create_order_from_seeder','Order is created from the checkout page',NULL,30,NULL,'2023-04-02 01:14:00','2023-04-02 01:14:00'),(128,'confirm_order','Order was verified by %user_name%',0,30,NULL,'2023-04-02 01:14:00','2023-04-02 01:14:00'),(129,'confirm_payment','Payment was confirmed (amount $333.00) by %user_name%',0,30,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(130,'create_shipment','Created shipment for order',0,30,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(131,'create_order_from_seeder','Order is created from the checkout page',NULL,31,NULL,'2023-04-02 03:14:00','2023-04-02 03:14:00'),(132,'confirm_order','Order was verified by %user_name%',0,31,NULL,'2023-04-02 03:14:00','2023-04-02 03:14:00'),(133,'confirm_payment','Payment was confirmed (amount $360.00) by %user_name%',0,31,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(134,'create_shipment','Created shipment for order',0,31,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(135,'create_order_from_seeder','Order is created from the checkout page',NULL,32,NULL,'2023-04-05 11:14:00','2023-04-05 11:14:00'),(136,'confirm_order','Order was verified by %user_name%',0,32,NULL,'2023-04-05 11:14:00','2023-04-05 11:14:00'),(137,'confirm_payment','Payment was confirmed (amount $126.00) by %user_name%',0,32,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(138,'create_shipment','Created shipment for order',0,32,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(139,'create_order_from_seeder','Order is created from the checkout page',NULL,33,NULL,'2023-04-04 17:14:00','2023-04-04 17:14:00'),(140,'confirm_order','Order was verified by %user_name%',0,33,NULL,'2023-04-04 17:14:00','2023-04-04 17:14:00'),(141,'confirm_payment','Payment was confirmed (amount $369.00) by %user_name%',0,33,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(142,'create_shipment','Created shipment for order',0,33,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(143,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,33,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(144,'create_order_from_seeder','Order is created from the checkout page',NULL,34,NULL,'2023-04-08 05:14:00','2023-04-08 05:14:00'),(145,'confirm_order','Order was verified by %user_name%',0,34,NULL,'2023-04-08 05:14:00','2023-04-08 05:14:00'),(146,'create_shipment','Created shipment for order',0,34,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(147,'create_order_from_seeder','Order is created from the checkout page',NULL,35,NULL,'2023-04-08 07:14:00','2023-04-08 07:14:00'),(148,'confirm_order','Order was verified by %user_name%',0,35,NULL,'2023-04-08 07:14:00','2023-04-08 07:14:00'),(149,'create_shipment','Created shipment for order',0,35,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(150,'create_order_from_seeder','Order is created from the checkout page',NULL,36,NULL,'2023-04-04 07:14:00','2023-04-04 07:14:00'),(151,'confirm_order','Order was verified by %user_name%',0,36,NULL,'2023-04-04 07:14:00','2023-04-04 07:14:00'),(152,'confirm_payment','Payment was confirmed (amount $252.00) by %user_name%',0,36,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(153,'create_shipment','Created shipment for order',0,36,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(154,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,36,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(155,'create_order_from_seeder','Order is created from the checkout page',NULL,37,NULL,'2023-04-07 13:14:00','2023-04-07 13:14:00'),(156,'confirm_order','Order was verified by %user_name%',0,37,NULL,'2023-04-07 13:14:00','2023-04-07 13:14:00'),(157,'create_shipment','Created shipment for order',0,37,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(158,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,37,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(159,'create_order_from_seeder','Order is created from the checkout page',NULL,38,NULL,'2023-04-05 11:14:00','2023-04-05 11:14:00'),(160,'confirm_order','Order was verified by %user_name%',0,38,NULL,'2023-04-05 11:14:00','2023-04-05 11:14:00'),(161,'confirm_payment','Payment was confirmed (amount $240.00) by %user_name%',0,38,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(162,'create_shipment','Created shipment for order',0,38,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(163,'create_order_from_seeder','Order is created from the checkout page',NULL,39,NULL,'2023-04-07 11:14:00','2023-04-07 11:14:00'),(164,'confirm_order','Order was verified by %user_name%',0,39,NULL,'2023-04-07 11:14:00','2023-04-07 11:14:00'),(165,'create_shipment','Created shipment for order',0,39,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(166,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,39,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(167,'create_order_from_seeder','Order is created from the checkout page',NULL,40,NULL,'2023-04-07 03:14:00','2023-04-07 03:14:00'),(168,'confirm_order','Order was verified by %user_name%',0,40,NULL,'2023-04-07 03:14:00','2023-04-07 03:14:00'),(169,'confirm_payment','Payment was confirmed (amount $585.00) by %user_name%',0,40,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(170,'create_shipment','Created shipment for order',0,40,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(171,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,40,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(172,'create_order_from_seeder','Order is created from the checkout page',NULL,41,NULL,'2023-04-07 07:14:00','2023-04-07 07:14:00'),(173,'confirm_order','Order was verified by %user_name%',0,41,NULL,'2023-04-07 07:14:00','2023-04-07 07:14:00'),(174,'confirm_payment','Payment was confirmed (amount $209.00) by %user_name%',0,41,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(175,'create_shipment','Created shipment for order',0,41,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(176,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,41,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(177,'create_order_from_seeder','Order is created from the checkout page',NULL,42,NULL,'2023-04-08 01:14:00','2023-04-08 01:14:00'),(178,'confirm_order','Order was verified by %user_name%',0,42,NULL,'2023-04-08 01:14:00','2023-04-08 01:14:00'),(179,'confirm_payment','Payment was confirmed (amount $351.00) by %user_name%',0,42,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(180,'create_shipment','Created shipment for order',0,42,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(181,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,42,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(182,'create_order_from_seeder','Order is created from the checkout page',NULL,43,NULL,'2023-04-07 23:14:00','2023-04-07 23:14:00'),(183,'confirm_order','Order was verified by %user_name%',0,43,NULL,'2023-04-07 23:14:00','2023-04-07 23:14:00'),(184,'confirm_payment','Payment was confirmed (amount $41.00) by %user_name%',0,43,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(185,'create_shipment','Created shipment for order',0,43,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(186,'create_order_from_seeder','Order is created from the checkout page',NULL,44,NULL,'2023-04-07 15:14:00','2023-04-07 15:14:00'),(187,'confirm_order','Order was verified by %user_name%',0,44,NULL,'2023-04-07 15:14:00','2023-04-07 15:14:00'),(188,'confirm_payment','Payment was confirmed (amount $120.00) by %user_name%',0,44,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(189,'create_shipment','Created shipment for order',0,44,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(190,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,44,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(191,'create_order_from_seeder','Order is created from the checkout page',NULL,45,NULL,'2023-04-08 05:14:00','2023-04-08 05:14:00'),(192,'confirm_order','Order was verified by %user_name%',0,45,NULL,'2023-04-08 05:14:00','2023-04-08 05:14:00'),(193,'confirm_payment','Payment was confirmed (amount $958.00) by %user_name%',0,45,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(194,'create_shipment','Created shipment for order',0,45,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(195,'create_order_from_seeder','Order is created from the checkout page',NULL,46,NULL,'2023-04-08 03:14:00','2023-04-08 03:14:00'),(196,'confirm_order','Order was verified by %user_name%',0,46,NULL,'2023-04-08 03:14:00','2023-04-08 03:14:00'),(197,'create_shipment','Created shipment for order',0,46,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(198,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,46,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(199,'update_status','Order confirmed by %user_name%',0,1,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(200,'update_status','Order confirmed by %user_name%',0,3,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00'),(201,'update_status','Order confirmed by %user_name%',0,5,NULL,'2023-04-08 19:14:01','2023-04-08 19:14:01'),(202,'update_status','Order confirmed by %user_name%',0,6,NULL,'2023-04-08 19:14:01','2023-04-08 19:14:01'),(203,'update_status','Order confirmed by %user_name%',0,7,NULL,'2023-04-08 19:14:01','2023-04-08 19:14:01'),(204,'update_status','Order confirmed by %user_name%',0,10,NULL,'2023-04-08 19:14:01','2023-04-08 19:14:01'),(205,'update_status','Order confirmed by %user_name%',0,18,NULL,'2023-04-08 19:14:01','2023-04-08 19:14:01'),(206,'update_status','Order confirmed by %user_name%',0,20,NULL,'2023-04-08 19:14:01','2023-04-08 19:14:01'),(207,'update_status','Order confirmed by %user_name%',0,22,NULL,'2023-04-08 19:14:01','2023-04-08 19:14:01'),(208,'update_status','Order confirmed by %user_name%',0,23,NULL,'2023-04-08 19:14:02','2023-04-08 19:14:02'),(209,'update_status','Order confirmed by %user_name%',0,29,NULL,'2023-04-08 19:14:02','2023-04-08 19:14:02'),(210,'update_status','Order confirmed by %user_name%',0,33,NULL,'2023-04-08 19:14:02','2023-04-08 19:14:02'),(211,'update_status','Order confirmed by %user_name%',0,36,NULL,'2023-04-08 19:14:02','2023-04-08 19:14:02'),(212,'update_status','Order confirmed by %user_name%',0,40,NULL,'2023-04-08 19:14:02','2023-04-08 19:14:02'),(213,'update_status','Order confirmed by %user_name%',0,41,NULL,'2023-04-08 19:14:02','2023-04-08 19:14:02'),(214,'update_status','Order confirmed by %user_name%',0,42,NULL,'2023-04-08 19:14:03','2023-04-08 19:14:03'),(215,'update_status','Order confirmed by %user_name%',0,44,NULL,'2023-04-08 19:14:03','2023-04-08 19:14:03');
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
INSERT INTO `ec_order_product` VALUES (1,1,1,126.00,0.00,'[]',NULL,49,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee','products/12.jpg',841.00,0,'2023-04-08 19:13:59','2023-04-08 19:13:59','physical',0),(2,2,1,129.00,0.00,'[]',NULL,56,'Organic Frozen Triple Berry Blend','products/14-1.jpg',794.00,0,'2023-04-08 19:13:59','2023-04-08 19:13:59','physical',0),(3,3,1,126.00,0.00,'[]',NULL,50,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee','products/12-1.jpg',841.00,0,'2023-04-08 19:13:59','2023-04-08 19:13:59','physical',0),(4,4,3,111.00,0.00,'[]',NULL,69,'Perdue Simply Smart Organics Gluten Free','products/20.jpg',2274.00,0,'2023-04-08 19:13:59','2023-04-08 19:13:59','physical',0),(5,5,3,111.00,0.00,'[]',NULL,70,'Perdue Simply Smart Organics Gluten Free','products/20-1.jpg',2274.00,0,'2023-04-08 19:13:59','2023-04-08 19:13:59','physical',0),(6,6,1,124.00,0.00,'[]',NULL,75,'Colorful Banana','products/23.jpg',880.00,0,'2023-04-08 19:13:59','2023-04-08 19:13:59','physical',0),(7,7,3,126.00,0.00,'[]',NULL,50,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee','products/12-1.jpg',2523.00,0,'2023-04-08 19:13:59','2023-04-08 19:13:59','physical',0),(8,8,2,120.00,0.00,'[]',NULL,57,'Oroweat Country Buttermilk Bread','products/15.jpg',1320.00,0,'2023-04-08 19:13:59','2023-04-08 19:13:59','physical',0),(9,9,3,123.00,0.00,'[]',NULL,66,'All Natural Italian-Style Chicken Meatballs','products/18.jpg',2463.00,0,'2023-04-08 19:13:59','2023-04-08 19:13:59','physical',0),(10,10,3,41.00,0.00,'[]',NULL,35,'Blue Diamond Almonds Lightly (Digital)','products/5-1.jpg',2592.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(11,11,1,127.00,0.00,'[]',NULL,63,'Angie’s Boomchickapop Sweet & Salty Kettle Corn (Digital)','products/17.jpg',615.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(12,11,2,117.00,0.00,'[]',NULL,67,'Simply Lemonade with Raspberry Juice','products/19.jpg',1454.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(13,12,1,111.00,0.00,'[]',NULL,70,'Perdue Simply Smart Organics Gluten Free','products/20-1.jpg',758.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(14,13,3,122.00,0.00,'[]',NULL,47,'Nestle Original Coffee-Mate Coffee Creamer','products/11.jpg',1659.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(15,14,2,117.00,0.00,'[]',NULL,67,'Simply Lemonade with Raspberry Juice','products/19.jpg',1454.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(16,15,1,41.00,0.00,'[]',NULL,35,'Blue Diamond Almonds Lightly (Digital)','products/5-1.jpg',864.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(17,15,3,123.00,0.00,'[]',NULL,65,'All Natural Italian-Style Chicken Meatballs','products/18-1.jpg',2463.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(18,16,2,123.00,0.00,'[]',NULL,37,'Canada Dry Ginger Ale – 2 L Bottle','products/7.jpg',1402.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(19,17,2,126.00,0.00,'[]',NULL,50,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee','products/12-1.jpg',1682.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(20,18,3,120.00,0.00,'[]',NULL,42,'Encore Seafoods Stuffed Alaskan','products/8.jpg',1707.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(21,19,2,127.00,0.00,'[]',NULL,63,'Angie’s Boomchickapop Sweet & Salty Kettle Corn (Digital)','products/17.jpg',1230.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(22,20,3,77.00,0.00,'[]',NULL,33,'Foster Farms Takeout Crispy Classic','products/4-1.jpg',1656.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(23,20,1,129.00,0.00,'[]',NULL,55,'Organic Frozen Triple Berry Blend','products/14.jpg',794.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(24,21,3,122.00,0.00,'[]',NULL,48,'Nestle Original Coffee-Mate Coffee Creamer','products/11-1.jpg',1659.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(25,22,3,115.00,0.00,'[]',NULL,72,'Chen Watermelon (Digital)','products/21-1.jpg',2187.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(26,23,1,123.00,0.00,'[]',NULL,37,'Canada Dry Ginger Ale – 2 L Bottle','products/7.jpg',701.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(27,23,3,111.00,0.00,'[]',NULL,70,'Perdue Simply Smart Organics Gluten Free','products/20-1.jpg',2274.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(28,24,1,111.00,0.00,'[]',NULL,44,'Gorton’s Beer Battered Fish Fillets (Digital)','products/9.jpg',666.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(29,25,3,125.00,0.00,'[]',NULL,58,'Foster Farms Takeout Crispy Classic Buffalo Wings','products/16.jpg',2463.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(30,26,2,120.00,0.00,'[]',NULL,42,'Encore Seafoods Stuffed Alaskan','products/8.jpg',1138.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(31,26,1,125.00,0.00,'[]',NULL,59,'Foster Farms Takeout Crispy Classic Buffalo Wings','products/16-1.jpg',821.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(32,26,2,125.00,0.00,'[]',NULL,60,'Foster Farms Takeout Crispy Classic Buffalo Wings','products/16-2.jpg',1642.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(33,27,3,111.00,0.00,'[]',NULL,69,'Perdue Simply Smart Organics Gluten Free','products/20.jpg',2274.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(34,28,2,41.00,0.00,'[]',NULL,35,'Blue Diamond Almonds Lightly (Digital)','products/5-1.jpg',1728.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(35,29,3,120.00,0.00,'[]',NULL,57,'Oroweat Country Buttermilk Bread','products/15.jpg',1980.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(36,29,1,116.00,0.00,'[]',NULL,76,'Signature Wood-Fired Mushroom and Caramelized','products/24.jpg',540.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(37,30,3,111.00,0.00,'[]',NULL,69,'Perdue Simply Smart Organics Gluten Free','products/20.jpg',2274.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(38,31,3,120.00,0.00,'[]',NULL,40,'Encore Seafoods Stuffed Alaskan','products/8.jpg',1707.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(39,32,1,126.00,0.00,'[]',NULL,50,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee','products/12-1.jpg',841.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(40,33,3,123.00,0.00,'[]',NULL,37,'Canada Dry Ginger Ale – 2 L Bottle','products/7.jpg',2103.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(41,34,3,120.00,0.00,'[]',NULL,53,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)','products/13.jpg',2586.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(42,35,1,209.00,0.00,'[]',NULL,31,'Angie’s Boomchickapop Sweet & Salty Kettle Corn','products/3-1.jpg',751.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(43,35,3,111.00,0.00,'[]',NULL,69,'Perdue Simply Smart Organics Gluten Free','products/20.jpg',2274.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(44,35,2,111.00,0.00,'[]',NULL,70,'Perdue Simply Smart Organics Gluten Free','products/20-1.jpg',1516.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(45,36,2,126.00,0.00,'[]',NULL,49,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee','products/12.jpg',1682.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(46,37,1,77.00,0.00,'[]',NULL,33,'Foster Farms Takeout Crispy Classic','products/4-1.jpg',552.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(47,38,2,120.00,0.00,'[]',NULL,43,'Encore Seafoods Stuffed Alaskan','products/8.jpg',1138.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(48,39,2,235.00,0.00,'[]',NULL,27,'All Natural Italian-Style Chicken Meatballs','products/2.jpg',1180.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(49,40,2,120.00,0.00,'[]',NULL,42,'Encore Seafoods Stuffed Alaskan','products/8.jpg',1138.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(50,40,3,115.00,0.00,'[]',NULL,72,'Chen Watermelon (Digital)','products/21-1.jpg',2187.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(51,41,1,209.00,0.00,'[]',NULL,30,'Angie’s Boomchickapop Sweet & Salty Kettle Corn','products/3.jpg',751.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(52,42,3,117.00,0.00,'[]',NULL,67,'Simply Lemonade with Raspberry Juice','products/19.jpg',2181.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(53,43,1,41.00,0.00,'[]',NULL,35,'Blue Diamond Almonds Lightly (Digital)','products/5-1.jpg',864.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(54,44,1,120.00,0.00,'[]',NULL,53,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)','products/13.jpg',862.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(55,45,2,368.00,0.00,'[]',NULL,46,'Haagen-Dazs Caramel Cone Ice Cream','products/10-1.jpg',1044.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(56,45,2,111.00,0.00,'[]',NULL,69,'Perdue Simply Smart Organics Gluten Free','products/20.jpg',1516.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0),(57,46,2,115.00,0.00,'[]',NULL,73,'Chen Watermelon (Digital)','products/21.jpg',1458.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','physical',0);
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint unsigned NOT NULL COMMENT 'Order product id',
  `product_id` bigint unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
INSERT INTO `ec_orders` VALUES (1,'#10000001',9,'1','default','completed',126.00,0.00,0.00,NULL,NULL,0.00,126.00,1,NULL,1,'2023-04-08 19:14:00','Jhd8KVdmR2nrdSiJkeyv05QWPaUDz',1,'2023-04-05 11:13:59','2023-04-08 19:14:00',4),(2,'#10000002',9,'1','default','pending',129.00,0.00,0.00,NULL,NULL,0.00,129.00,1,NULL,1,NULL,'KHdGKXRvSiquG0VVzrIArXtkGgU3Y',2,'2023-03-24 19:13:59','2023-04-08 19:13:59',3),(3,'#10000003',6,'1','default','completed',126.00,0.00,0.00,NULL,NULL,0.00,126.00,1,NULL,1,'2023-04-08 19:14:00','nAe57eLmwuZQuUvtzcDU7bmQpZWkA',3,'2023-03-28 17:13:59','2023-04-08 19:14:00',4),(4,'#10000004',6,'1','default','pending',333.00,0.00,0.00,NULL,NULL,0.00,333.00,1,NULL,1,NULL,'8Y65vIkClDQBwBAWd9YV35CKG5ayJ',4,'2023-04-05 15:13:59','2023-04-08 19:13:59',3),(5,'#10000005',3,'1','default','completed',333.00,0.00,0.00,NULL,NULL,0.00,333.00,1,NULL,1,'2023-04-08 19:14:01','IaVn5CCmwQlpGHUPoiacU3y3oJdei',5,'2023-04-07 07:13:59','2023-04-08 19:14:01',3),(6,'#10000006',3,'1','default','completed',124.00,0.00,0.00,NULL,NULL,0.00,124.00,1,NULL,1,'2023-04-08 19:14:01','uyUCVcUsRKQfNbr77GkoKmG42iusz',6,'2023-04-04 07:13:59','2023-04-08 19:14:01',1),(7,'#10000007',9,'1','default','completed',378.00,0.00,0.00,NULL,NULL,0.00,378.00,1,NULL,1,'2023-04-08 19:14:01','EiW8AvTEUbhYBJn4m45GObRAf9CCZ',7,'2023-04-03 03:13:59','2023-04-08 19:14:01',4),(8,'#10000008',9,'1','default','pending',240.00,0.00,0.00,NULL,NULL,0.00,240.00,1,NULL,1,NULL,'fvAL0dLZahYS5CFg3PX2ciOQ8Ebot',8,'2023-04-03 03:13:59','2023-04-08 19:13:59',1),(9,'#10000009',9,'1','default','completed',369.00,0.00,0.00,NULL,NULL,0.00,369.00,1,NULL,1,'2023-04-08 19:13:59','mP1Ehko3l5xjoJb7RcdgGvXVsRBag',9,'2023-04-07 09:13:59','2023-04-08 19:13:59',2),(10,'#10000010',1,'1','default','completed',123.00,0.00,0.00,NULL,NULL,0.00,123.00,1,NULL,1,'2023-04-08 19:14:01','haohmabnnzSdW4edzsiCU0TWDCsOV',10,'2023-03-27 19:14:00','2023-04-08 19:14:01',2),(11,'#10000011',1,'1','default','pending',361.00,0.00,0.00,NULL,NULL,0.00,361.00,1,NULL,1,NULL,'NeivgLki3xr2rL6XlyxvQBIbIUyqc',11,'2023-03-27 19:14:00','2023-04-08 19:14:00',4),(12,'#10000012',1,'1','default','pending',111.00,0.00,0.00,NULL,NULL,0.00,111.00,1,NULL,1,NULL,'HmDSKNbAf18nQ6Xkh0BtR6bERCtGN',12,'2023-03-29 03:14:00','2023-04-08 19:14:00',3),(13,'#10000013',3,'1','default','pending',366.00,0.00,0.00,NULL,NULL,0.00,366.00,1,NULL,1,NULL,'PUb1EfGwVNZOTn0MXCC3LnEyMDWIy',13,'2023-04-07 13:14:00','2023-04-08 19:14:00',1),(14,'#10000014',3,'1','default','pending',234.00,0.00,0.00,NULL,NULL,0.00,234.00,1,NULL,1,NULL,'bBz7OWoZNcWKefgzX9Jyh0NhVmrwr',14,'2023-04-01 07:14:00','2023-04-08 19:14:00',4),(15,'#10000015',3,'1','default','pending',410.00,0.00,0.00,NULL,NULL,0.00,410.00,1,NULL,1,NULL,'i8s5bqLPcqYLGXNCZA7n0AD9zBfOC',15,'2023-03-31 15:14:00','2023-04-08 19:14:00',2),(16,'#10000016',3,'1','default','pending',246.00,0.00,0.00,NULL,NULL,0.00,246.00,1,NULL,1,NULL,'L4VSKPN2j7So4E4sJkfQXuBpOMncU',16,'2023-03-28 03:14:00','2023-04-08 19:14:00',3),(17,'#10000017',3,'1','default','pending',252.00,0.00,0.00,NULL,NULL,0.00,252.00,1,NULL,1,NULL,'GZcfPOhRpTgArwRnV4DKokrPFuooB',17,'2023-04-05 07:14:00','2023-04-08 19:14:00',4),(18,'#10000018',1,'1','default','completed',360.00,0.00,0.00,NULL,NULL,0.00,360.00,1,NULL,1,'2023-04-08 19:14:01','V5maGgDaZKB2wFmbHh8geuyFXoLNL',18,'2023-04-06 15:14:00','2023-04-08 19:14:01',2),(19,'#10000019',1,'1','default','pending',254.00,0.00,0.00,NULL,NULL,0.00,254.00,1,NULL,1,NULL,'2quM8TuUKzWaxuE3Y5u5R4j58UcjE',19,'2023-03-31 03:14:00','2023-04-08 19:14:00',4),(20,'#10000020',1,'1','default','completed',360.00,0.00,0.00,NULL,NULL,0.00,360.00,1,NULL,1,'2023-04-08 19:14:01','RS6I0cC4bKVz8qmes7A8tDIQzNnGB',20,'2023-04-01 19:14:00','2023-04-08 19:14:01',3),(21,'#10000021',1,'1','default','pending',366.00,0.00,0.00,NULL,NULL,0.00,366.00,1,NULL,1,NULL,'a0vy0ayuxsi4YKvKNTngsB3tns2u9',21,'2023-04-03 19:14:00','2023-04-08 19:14:00',1),(22,'#10000022',1,'1','default','completed',345.00,0.00,0.00,NULL,NULL,0.00,345.00,1,NULL,1,'2023-04-08 19:14:01','CvnGtwKCrAg7GZKJlMtsqxbku5RQ4',22,'2023-04-04 19:14:00','2023-04-08 19:14:01',2),(23,'#10000023',8,'1','default','completed',456.00,0.00,0.00,NULL,NULL,0.00,456.00,1,NULL,1,'2023-04-08 19:14:02','HsPYLED47n6hYahl4iZZdZjtnIh3A',23,'2023-03-31 13:14:00','2023-04-08 19:14:02',3),(24,'#10000024',8,'1','default','completed',111.00,0.00,0.00,NULL,NULL,0.00,111.00,1,NULL,1,'2023-04-08 19:14:00','4pUTvVGoC9T2r0HSGoZ87likSXaVo',24,'2023-04-04 05:14:00','2023-04-08 19:14:00',4),(25,'#10000025',8,'1','default','pending',375.00,0.00,0.00,NULL,NULL,0.00,375.00,1,NULL,1,NULL,'R9qoxVdZksmLDAnE01YOikpwRJZOp',25,'2023-04-06 23:14:00','2023-04-08 19:14:00',2),(26,'#10000026',8,'1','default','pending',615.00,0.00,0.00,NULL,NULL,0.00,615.00,1,NULL,1,NULL,'eV2W7p7x8aK8temQi7tvB1ZNHx2mL',26,'2023-04-01 07:14:00','2023-04-08 19:14:00',2),(27,'#10000027',8,'1','default','pending',333.00,0.00,0.00,NULL,NULL,0.00,333.00,1,NULL,1,NULL,'YqBgRd6HUYUqc2wXaaOOObtDBgnOY',27,'2023-04-03 19:14:00','2023-04-08 19:14:00',3),(28,'#10000028',4,'1','default','pending',82.00,0.00,0.00,NULL,NULL,0.00,82.00,1,NULL,1,NULL,'SrgR2qQDoUIMIlZybJnrVrvafTAbc',28,'2023-04-05 01:14:00','2023-04-08 19:14:00',2),(29,'#10000029',4,'1','default','completed',476.00,0.00,0.00,NULL,NULL,0.00,476.00,1,NULL,1,'2023-04-08 19:14:02','cGHBc4jHglL7SzMb0lxNLTFKBnC0y',29,'2023-04-02 19:14:00','2023-04-08 19:14:02',1),(30,'#10000030',4,'1','default','pending',333.00,0.00,0.00,NULL,NULL,0.00,333.00,1,NULL,1,NULL,'MvBSlRNpIodkP3I9QHqoB1FRwmoUP',30,'2023-04-02 01:14:00','2023-04-08 19:14:00',3),(31,'#10000031',1,'1','default','pending',360.00,0.00,0.00,NULL,NULL,0.00,360.00,1,NULL,1,NULL,'4Q9HPQ2iapADQ5Jws3LujzGhfxBJH',31,'2023-04-02 03:14:00','2023-04-08 19:14:00',2),(32,'#10000032',1,'1','default','pending',126.00,0.00,0.00,NULL,NULL,0.00,126.00,1,NULL,1,NULL,'Zhxs6t4wEMkCE8rR5RI1xxSW3NKuF',32,'2023-04-05 11:14:00','2023-04-08 19:14:00',4),(33,'#10000033',8,'1','default','completed',369.00,0.00,0.00,NULL,NULL,0.00,369.00,1,NULL,1,'2023-04-08 19:14:02','m5nCus8xkd9Afu3nZAX23m62M1Qmm',33,'2023-04-04 17:14:00','2023-04-08 19:14:02',3),(34,'#10000034',8,'1','default','pending',360.00,0.00,0.00,NULL,NULL,0.00,360.00,1,NULL,1,NULL,'4YZFBDzSfSwZ7wULR2j6t7XuAEVsR',34,'2023-04-08 05:14:00','2023-04-08 19:14:00',1),(35,'#10000035',4,'1','default','pending',764.00,0.00,0.00,NULL,NULL,0.00,764.00,1,NULL,1,NULL,'9DlpSWCP6OxRJijCwo30UQol1q5yf',35,'2023-04-08 07:14:00','2023-04-08 19:14:00',3),(36,'#10000036',4,'1','default','completed',252.00,0.00,0.00,NULL,NULL,0.00,252.00,1,NULL,1,'2023-04-08 19:14:02','J5v02am7cy5v4CVzY5XUEyGM6w5Cf',36,'2023-04-04 07:14:00','2023-04-08 19:14:02',4),(37,'#10000037',8,'1','default','completed',77.00,0.00,0.00,NULL,NULL,0.00,77.00,1,NULL,1,'2023-04-08 19:14:00','pgkpRF3JrXAVncOGq4kB5xHbyCOOJ',37,'2023-04-07 13:14:00','2023-04-08 19:14:00',3),(38,'#10000038',8,'1','default','pending',240.00,0.00,0.00,NULL,NULL,0.00,240.00,1,NULL,1,NULL,'sH0w8DdOzNR2DfD4f1QtUSdtmhbP6',38,'2023-04-05 11:14:00','2023-04-08 19:14:00',2),(39,'#10000039',3,'1','default','completed',470.00,0.00,0.00,NULL,NULL,0.00,470.00,1,NULL,1,'2023-04-08 19:14:00','6GfToQ6Z47zDmOUGVJN5dpSJsKn7J',39,'2023-04-07 11:14:00','2023-04-08 19:14:00',4),(40,'#10000040',3,'1','default','completed',585.00,0.00,0.00,NULL,NULL,0.00,585.00,1,NULL,1,'2023-04-08 19:14:02','ekwjQTxSfly37cjxpUgwzpVSdZTuK',40,'2023-04-07 03:14:00','2023-04-08 19:14:02',2),(41,'#10000041',1,'1','default','completed',209.00,0.00,0.00,NULL,NULL,0.00,209.00,1,NULL,1,'2023-04-08 19:14:02','W0OATmnNmWkpCxCD1Xrk3cgr1bo0S',41,'2023-04-07 07:14:00','2023-04-08 19:14:02',3),(42,'#10000042',1,'1','default','completed',351.00,0.00,0.00,NULL,NULL,0.00,351.00,1,NULL,1,'2023-04-08 19:14:03','tNn7b7s2fmPmXNjrF5B3ieQvIIEfl',42,'2023-04-08 01:14:00','2023-04-08 19:14:03',4),(43,'#10000043',6,'1','default','pending',41.00,0.00,0.00,NULL,NULL,0.00,41.00,1,NULL,1,NULL,'SEHrQiG4gUCOUxl22Ro5DIkJlPF0K',43,'2023-04-07 23:14:00','2023-04-08 19:14:00',2),(44,'#10000044',6,'1','default','completed',120.00,0.00,0.00,NULL,NULL,0.00,120.00,1,NULL,1,'2023-04-08 19:14:03','WDcffoajqZ2SSxKGtfXBOXlYE7Dl1',44,'2023-04-07 15:14:00','2023-04-08 19:14:03',1),(45,'#10000045',4,'1','default','pending',958.00,0.00,0.00,NULL,NULL,0.00,958.00,1,NULL,1,NULL,'2IabnwAPTEAHfHErh3X1W92La1Yvh',45,'2023-04-08 05:14:00','2023-04-08 19:14:00',3),(46,'#10000046',4,'1','default','completed',230.00,0.00,0.00,NULL,NULL,0.00,230.00,1,NULL,1,'2023-04-08 19:14:00','YYjd4nM0mAxmLwgYuaECEpJd0XLTP',46,'2023-04-08 03:14:00','2023-04-08 19:14:00',2);
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Weight','weight','text',1,1,1,'published',0,'2023-04-08 19:13:41','2023-04-08 19:13:41',0),(2,'Boxes','boxes','text',1,1,1,'published',1,'2023-04-08 19:13:41','2023-04-08 19:13:41',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets_translations` VALUES ('vi',1,'Cân nặng'),('vi',2,'Số hộp');
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_attributes_attribute_set_id_status_index` (`attribute_set_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'1KG','1kg',NULL,NULL,1,1,'published','2023-04-08 19:13:41','2023-04-08 19:13:41'),(2,1,'2KG','2kg',NULL,NULL,0,2,'published','2023-04-08 19:13:41','2023-04-08 19:13:41'),(3,1,'3KG','3kg',NULL,NULL,0,3,'published','2023-04-08 19:13:41','2023-04-08 19:13:41'),(4,1,'4KG','4kg',NULL,NULL,0,4,'published','2023-04-08 19:13:41','2023-04-08 19:13:41'),(5,1,'5KG','5kg',NULL,NULL,0,5,'published','2023-04-08 19:13:41','2023-04-08 19:13:41'),(6,2,'1 Box','1box',NULL,NULL,1,1,'published','2023-04-08 19:13:41','2023-04-08 19:13:41'),(7,2,'2 Boxes','2boxes',NULL,NULL,0,2,'published','2023-04-08 19:13:41','2023-04-08 19:13:41'),(8,2,'3 Boxes','3boxes',NULL,NULL,0,3,'published','2023-04-08 19:13:41','2023-04-08 19:13:41'),(9,2,'4 Boxes','4boxes',NULL,NULL,0,4,'published','2023-04-08 19:13:41','2023-04-08 19:13:41'),(10,2,'5 Boxes','5boxes',NULL,NULL,0,5,'published','2023-04-08 19:13:41','2023-04-08 19:13:41');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attributes_translations` VALUES ('vi',1,'1KG'),('vi',2,'2KG'),('vi',3,'3KG'),('vi',4,'4KG'),('vi',5,'5KG'),('vi',6,'1 Hộp'),('vi',7,'2 Hộp'),('vi',8,'3 Hộp'),('vi',9,'4 Hộp'),('vi',10,'5 Hộp');
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Milks and Dairies',0,NULL,'published',0,'product-categories/image-1.png',1,'2023-04-08 19:13:41','2023-04-08 19:13:41'),(2,'Clothing & beauty',0,NULL,'published',1,'product-categories/image-2.png',1,'2023-04-08 19:13:41','2023-04-08 19:13:41'),(3,'Pet Toy',0,NULL,'published',2,'product-categories/image-3.png',1,'2023-04-08 19:13:41','2023-04-08 19:13:41'),(4,'Baking material',0,NULL,'published',3,'product-categories/image-4.png',1,'2023-04-08 19:13:41','2023-04-08 19:13:41'),(5,'Fresh Fruit',0,NULL,'published',4,'product-categories/image-5.png',1,'2023-04-08 19:13:41','2023-04-08 19:13:41'),(6,'Wines & Drinks',0,NULL,'published',5,'product-categories/image-6.png',1,'2023-04-08 19:13:41','2023-04-08 19:13:41'),(7,'Fresh Seafood',0,NULL,'published',6,'product-categories/image-7.png',1,'2023-04-08 19:13:41','2023-04-08 19:13:41'),(8,'Fast food',0,NULL,'published',7,'product-categories/image-8.png',1,'2023-04-08 19:13:41','2023-04-08 19:13:41'),(9,'Vegetables',0,NULL,'published',8,'product-categories/image-9.png',1,'2023-04-08 19:13:41','2023-04-08 19:13:41'),(10,'Bread and Juice',0,NULL,'published',9,'product-categories/image-10.png',1,'2023-04-08 19:13:41','2023-04-08 19:13:41'),(11,'Cake & Milk',0,NULL,'published',10,'product-categories/image-11.png',1,'2023-04-08 19:13:41','2023-04-08 19:13:41'),(12,'Coffee & Teas',0,NULL,'published',11,'product-categories/image-12.png',1,'2023-04-08 19:13:41','2023-04-08 19:13:41'),(13,'Pet Foods',0,NULL,'published',12,'product-categories/image-13.png',0,'2023-04-08 19:13:41','2023-04-08 19:13:41'),(14,'Diet Foods',0,NULL,'published',13,'product-categories/image-14.png',0,'2023-04-08 19:13:41','2023-04-08 19:13:41');
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
INSERT INTO `ec_product_categories_translations` VALUES ('vi',1,'Sữa',NULL),('vi',2,'Quần áo và làm đẹp',NULL),('vi',3,'Đồ chơi thú cưng',NULL),('vi',4,'Nguyên liệu làm bánh',NULL),('vi',5,'Trái cây tươi',NULL),('vi',6,'Rượu & Đồ uống',NULL),('vi',7,'Hải sản tươi sống',NULL),('vi',8,'Đồ ăn nhanh',NULL),('vi',9,'Rau',NULL),('vi',10,'Bánh và đồ uống',NULL),('vi',11,'Bánh và sữa',NULL),('vi',12,'Cà phê và trà',NULL),('vi',13,'Đồ ăn thú nuôi',NULL),('vi',14,'Đồ ăn kiêng',NULL);
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `category_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,9),(2,1),(2,21),(3,19),(4,13),(5,2),(5,4),(5,8),(5,12),(5,22),(6,5),(6,17),(7,3),(8,14),(9,7),(10,20),(10,23),(10,24),(11,18),(12,10),(12,11),(12,16),(13,6),(13,15);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_collection_id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,4),(1,5),(1,6),(1,7),(1,8),(1,13),(1,14),(1,15),(1,16),(1,21),(2,3),(2,9),(2,10),(2,11),(2,12),(2,18),(2,20),(2,24),(3,1),(3,2),(3,17),(3,19),(3,22),(3,23);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2023-04-08 19:13:41','2023-04-08 19:13:41',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2023-04-08 19:13:41','2023-04-08 19:13:41',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2023-04-08 19:13:41','2023-04-08 19:13:41',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
INSERT INTO `ec_product_collections_translations` VALUES ('vi',1,'Hàng mới về',NULL),('vi',2,'Bán chạy nhất',NULL),('vi',3,'Khuyến mãi đặc biệt',NULL);
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,2),(1,13),(1,19),(2,14),(2,18),(2,21),(2,24),(3,2),(3,9),(3,10),(3,21),(4,7),(4,9),(4,16),(4,18),(5,4),(5,6),(5,16),(5,20),(6,4),(6,8),(6,9),(7,2),(7,9),(7,16),(7,24),(8,12),(8,15),(8,19),(8,23),(9,12),(9,16),(9,18),(9,24),(10,9),(10,19),(10,21),(11,3),(11,14),(11,20),(11,22),(12,7),(12,11),(12,20),(12,21),(13,4),(13,7),(13,11),(13,21),(14,1),(14,12),(14,20),(15,13),(15,16),(15,17),(16,5),(16,14),(16,21),(16,23),(17,4),(17,9),(17,16),(17,21),(18,5),(18,20),(18,24),(19,6),(19,7),(19,15),(19,23),(20,1),(20,9),(20,16),(20,22),(21,2),(21,3),(21,17),(21,19),(22,6),(22,8),(22,12),(22,19),(23,1),(23,2),(23,7),(24,1),(24,3),(24,4),(24,12);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,25,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-04-09 02:13:46\",\"name\":\"1\",\"extension\":\"jpg\"}','2023-04-08 19:13:46','2023-04-08 19:13:46'),(2,25,'product-files/1-1.jpg','{\"filename\":\"1-1.jpg\",\"url\":\"product-files\\/1-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-04-09 02:13:46\",\"name\":\"1-1\",\"extension\":\"jpg\"}','2023-04-08 19:13:46','2023-04-08 19:13:46'),(3,26,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-04-09 02:13:46\",\"name\":\"1\",\"extension\":\"jpg\"}','2023-04-08 19:13:46','2023-04-08 19:13:46'),(4,26,'product-files/1-1.jpg','{\"filename\":\"1-1.jpg\",\"url\":\"product-files\\/1-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-04-09 02:13:46\",\"name\":\"1-1\",\"extension\":\"jpg\"}','2023-04-08 19:13:46','2023-04-08 19:13:46'),(5,34,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-04-09 02:13:46\",\"name\":\"5\",\"extension\":\"jpg\"}','2023-04-08 19:13:46','2023-04-08 19:13:46'),(6,34,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-04-09 02:13:46\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2023-04-08 19:13:46','2023-04-08 19:13:46'),(7,35,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-04-09 02:13:46\",\"name\":\"5\",\"extension\":\"jpg\"}','2023-04-08 19:13:46','2023-04-08 19:13:46'),(8,35,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-04-09 02:13:46\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2023-04-08 19:13:46','2023-04-08 19:13:46'),(9,44,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-04-09 02:13:47\",\"name\":\"9\",\"extension\":\"jpg\"}','2023-04-08 19:13:47','2023-04-08 19:13:47'),(10,44,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-04-09 02:13:47\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2023-04-08 19:13:47','2023-04-08 19:13:47'),(11,53,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-04-09 02:13:47\",\"name\":\"13\",\"extension\":\"jpg\"}','2023-04-08 19:13:47','2023-04-08 19:13:47'),(12,53,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-04-09 02:13:47\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2023-04-08 19:13:47','2023-04-08 19:13:47'),(13,54,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-04-09 02:13:47\",\"name\":\"13\",\"extension\":\"jpg\"}','2023-04-08 19:13:47','2023-04-08 19:13:47'),(14,54,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-04-09 02:13:47\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2023-04-08 19:13:47','2023-04-08 19:13:47'),(15,61,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-04-09 02:13:47\",\"name\":\"17\",\"extension\":\"jpg\"}','2023-04-08 19:13:47','2023-04-08 19:13:47'),(16,61,'product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-04-09 02:13:47\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2023-04-08 19:13:47','2023-04-08 19:13:47'),(17,62,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-04-09 02:13:47\",\"name\":\"17\",\"extension\":\"jpg\"}','2023-04-08 19:13:47','2023-04-08 19:13:47'),(18,62,'product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-04-09 02:13:47\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2023-04-08 19:13:47','2023-04-08 19:13:47'),(19,63,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-04-09 02:13:47\",\"name\":\"17\",\"extension\":\"jpg\"}','2023-04-08 19:13:47','2023-04-08 19:13:47'),(20,63,'product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-04-09 02:13:47\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2023-04-08 19:13:47','2023-04-08 19:13:47'),(21,71,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-04-09 02:13:47\",\"name\":\"21\",\"extension\":\"jpg\"}','2023-04-08 19:13:47','2023-04-08 19:13:47'),(22,71,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-04-09 02:13:47\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2023-04-08 19:13:47','2023-04-08 19:13:47'),(23,72,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-04-09 02:13:47\",\"name\":\"21\",\"extension\":\"jpg\"}','2023-04-08 19:13:47','2023-04-08 19:13:47'),(24,72,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-04-09 02:13:47\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2023-04-08 19:13:47','2023-04-08 19:13:47'),(25,73,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-04-09 02:13:47\",\"name\":\"21\",\"extension\":\"jpg\"}','2023-04-08 19:13:47','2023-04-08 19:13:47'),(26,73,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-04-09 02:13:47\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2023-04-08 19:13:47','2023-04-08 19:13:47');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,7),(1,14),(3,21);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#ec2434','published','2023-04-08 19:13:41','2023-04-08 19:13:41'),(2,'New','#00c9a7','published','2023-04-08 19:13:41','2023-04-08 19:13:41'),(3,'Sale','#fe9931','published','2023-04-08 19:13:41','2023-04-08 19:13:41');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
INSERT INTO `ec_product_labels_translations` VALUES ('vi',1,'Nổi bật',NULL),('vi',2,'Mới',NULL),('vi',3,'Giảm giá',NULL);
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,2),(2,1),(2,2),(3,1),(3,3),(4,2),(4,6),(5,4),(6,3),(6,4),(6,6),(7,3),(7,5),(7,6),(8,5),(8,6),(9,2),(9,3),(9,4),(10,4),(10,5),(11,2),(11,5),(12,3),(12,6),(13,2),(13,4),(13,5),(14,2),(14,4),(14,6),(15,2),(15,3),(15,6),(16,1),(16,3),(17,3),(18,2),(18,6),(19,4),(19,5),(19,6),(20,2),(20,3),(20,5),(21,2),(21,6),(22,1),(22,5),(22,6),(23,4),(23,5),(23,6),(24,1),(24,4),(24,5);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Wallet',NULL,'published','2023-04-08 19:13:41','2023-04-08 19:13:41'),(2,'Bags',NULL,'published','2023-04-08 19:13:41','2023-04-08 19:13:41'),(3,'Shoes',NULL,'published','2023-04-08 19:13:41','2023-04-08 19:13:41'),(4,'Clothes',NULL,'published','2023-04-08 19:13:41','2023-04-08 19:13:41'),(5,'Hand bag',NULL,'published','2023-04-08 19:13:41','2023-04-08 19:13:41');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_variation_items_attribute_id_variation_id_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (1,1,1),(11,1,6),(13,1,7),(27,1,14),(57,1,29),(63,1,32),(67,1,34),(69,1,35),(73,1,37),(77,1,39),(79,1,40),(83,1,42),(85,1,43),(105,1,53),(7,2,4),(9,2,5),(15,2,8),(19,2,10),(21,2,11),(41,2,21),(47,2,24),(59,2,30),(65,2,33),(75,2,38),(97,2,49),(101,2,51),(5,3,3),(43,3,22),(53,3,27),(89,3,45),(99,3,50),(3,4,2),(23,4,12),(31,4,16),(33,4,17),(35,4,18),(39,4,20),(51,4,26),(55,4,28),(81,4,41),(87,4,44),(17,5,9),(25,5,13),(29,5,15),(37,5,19),(45,5,23),(49,5,25),(61,5,31),(71,5,36),(91,5,46),(93,5,47),(95,5,48),(103,5,52),(6,6,3),(24,6,12),(48,6,24),(64,6,32),(86,6,43),(100,6,50),(28,7,14),(36,7,18),(46,7,23),(56,7,28),(68,7,34),(72,7,36),(74,7,37),(76,7,38),(80,7,40),(98,7,49),(4,8,2),(20,8,10),(42,8,21),(58,8,29),(62,8,31),(70,8,35),(84,8,42),(92,8,46),(96,8,48),(104,8,52),(106,8,53),(14,9,7),(26,9,13),(34,9,17),(38,9,19),(40,9,20),(44,9,22),(54,9,27),(60,9,30),(66,9,33),(78,9,39),(82,9,41),(88,9,44),(90,9,45),(2,10,1),(8,10,4),(10,10,5),(12,10,6),(16,10,8),(18,10,9),(22,10,11),(30,10,15),(32,10,16),(50,10,25),(52,10,26),(94,10,47),(102,10,51);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_product_variations_product_id_configurable_product_id_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,25,1,1),(2,26,1,0),(3,27,2,1),(4,28,2,0),(5,29,2,0),(6,30,3,1),(7,31,3,0),(8,32,4,1),(9,33,4,0),(10,34,5,1),(11,35,5,0),(12,36,6,1),(13,37,7,1),(14,38,7,0),(15,39,7,0),(16,40,8,1),(17,41,8,0),(18,42,8,0),(19,43,8,0),(20,44,9,1),(21,45,10,1),(22,46,10,0),(23,47,11,1),(24,48,11,0),(25,49,12,1),(26,50,12,0),(27,51,12,0),(28,52,12,0),(29,53,13,1),(30,54,13,0),(31,55,14,1),(32,56,14,0),(33,57,15,1),(34,58,16,1),(35,59,16,0),(36,60,16,0),(37,61,17,1),(38,62,17,0),(39,63,17,0),(40,64,18,1),(41,65,18,0),(42,66,18,0),(43,67,19,1),(44,68,19,0),(45,69,20,1),(46,70,20,0),(47,71,21,1),(48,72,21,0),(49,73,21,0),(50,74,22,1),(51,75,23,1),(52,76,24,1),(53,77,24,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2023-04-09',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,0),(2,1,0),(1,2,0),(2,2,0),(1,3,0),(2,3,0),(1,4,0),(2,4,0),(1,5,0),(2,5,0),(1,6,0),(2,6,0),(1,7,0),(2,7,0),(1,8,0),(2,8,0),(1,9,0),(2,9,0),(1,10,0),(2,10,0),(1,11,0),(2,11,0),(1,12,0),(2,12,0),(1,13,0),(2,13,0),(1,14,0),(2,14,0),(1,15,0),(2,15,0),(1,16,0),(2,16,0),(1,17,0),(2,17,0),(1,18,0),(2,18,0),(1,19,0),(2,19,0),(1,20,0),(2,20,0),(1,21,0),(2,21,0),(1,22,0),(2,22,0),(1,23,0),(2,23,0),(1,24,0),(2,24,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` bigint unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  `approved_by` bigint unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_products_barcode_unique` (`barcode`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `ec_products_sale_type_index` (`sale_type`),
  KEY `ec_products_start_date_index` (`start_date`),
  KEY `ec_products_end_date_index` (`end_date`),
  KEY `ec_products_sale_price_index` (`sale_price`),
  KEY `ec_products_is_variation_index` (`is_variation`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Seeds of Change Organic Quinoe (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/1.jpg\",\"products\\/1-1.jpg\"]','HS-126-A0',0,15,0,1,1,4,0,0,337,NULL,NULL,NULL,16.00,19.00,16.00,656.00,NULL,89296,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,1,0),(2,'All Natural Italian-Style Chicken Meatballs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\"]','HS-171-A0',0,15,0,1,1,5,0,0,235,NULL,NULL,NULL,15.00,19.00,18.00,590.00,NULL,41319,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,4,0),(3,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/3.jpg\",\"products\\/3-1.jpg\"]','HS-161-A0',0,12,0,1,1,4,0,0,209,NULL,NULL,NULL,10.00,15.00,12.00,751.00,NULL,172264,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,3,0),(4,'Foster Farms Takeout Crispy Classic','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\"]','HS-115-A0',0,19,0,1,1,1,0,0,77,58.52,NULL,NULL,14.00,20.00,20.00,552.00,NULL,165629,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,3,0),(5,'Blue Diamond Almonds Lightly (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\"]','HS-156-A0',0,14,0,1,1,6,0,0,41,NULL,NULL,NULL,14.00,19.00,15.00,864.00,NULL,7009,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,2,0),(6,'Chobani Complete Vanilla Greek','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/6.jpg\",\"products\\/6-1.jpg\"]','HS-143-A0',0,15,0,1,1,1,0,0,50,NULL,NULL,NULL,18.00,18.00,14.00,597.00,NULL,125076,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,2,0),(7,'Canada Dry Ginger Ale – 2 L Bottle','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/7.jpg\",\"products\\/7-1.jpg\"]','HS-114-A0',0,16,0,1,1,4,0,0,123,NULL,NULL,NULL,10.00,12.00,14.00,701.00,NULL,9792,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,3,0),(8,'Encore Seafoods Stuffed Alaskan','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\"]','HS-106-A0',0,13,0,1,1,5,0,0,120,104.4,NULL,NULL,20.00,13.00,20.00,569.00,NULL,142387,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,2,0),(9,'Gorton’s Beer Battered Fish Fillets (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\"]','HS-138-A0',0,15,0,1,1,1,0,0,111,NULL,NULL,NULL,11.00,12.00,11.00,666.00,NULL,65629,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,4,0),(10,'Haagen-Dazs Caramel Cone Ice Cream','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\"]','HS-140-A0',0,18,0,1,1,3,0,0,368,NULL,NULL,NULL,17.00,19.00,16.00,522.00,NULL,155204,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,3,0),(11,'Nestle Original Coffee-Mate Coffee Creamer','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\"]','HS-196-A0',0,11,0,1,1,4,0,0,122,NULL,NULL,NULL,15.00,13.00,19.00,553.00,NULL,153482,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,1,0),(12,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\"]','HS-188-A0',0,10,0,1,1,3,0,0,126,95.76,NULL,NULL,11.00,14.00,17.00,841.00,NULL,96344,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,4,0),(13,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]','HS-195-A0',0,12,0,1,1,3,0,0,120,NULL,NULL,NULL,20.00,13.00,12.00,862.00,NULL,160452,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,1,0),(14,'Organic Frozen Triple Berry Blend','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/14.jpg\",\"products\\/14-1.jpg\"]','HS-194-A0',0,14,0,1,1,6,0,0,129,NULL,NULL,NULL,10.00,19.00,19.00,794.00,NULL,21318,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,3,0),(15,'Oroweat Country Buttermilk Bread','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]','HS-190-A0',0,10,0,1,1,3,0,0,120,NULL,NULL,NULL,11.00,17.00,16.00,660.00,NULL,188581,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,1,0),(16,'Foster Farms Takeout Crispy Classic Buffalo Wings','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/16.jpg\",\"products\\/16-1.jpg\",\"products\\/16-2.jpg\",\"products\\/16-3.jpg\",\"products\\/16-4.jpg\",\"products\\/16-5.jpg\",\"products\\/16-6.jpg\"]','HS-105-A0',0,13,0,1,1,7,0,0,125,107.5,NULL,NULL,17.00,18.00,13.00,821.00,NULL,69657,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,2,0),(17,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/17.jpg\",\"products\\/17-1.jpg\"]','HS-111-A0',0,17,0,1,1,5,0,0,127,NULL,NULL,NULL,15.00,13.00,14.00,615.00,NULL,127939,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,4,0),(18,'All Natural Italian-Style Chicken Meatballs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\"]','HS-185-A0',0,14,0,1,1,6,0,0,123,NULL,NULL,NULL,16.00,17.00,20.00,821.00,NULL,150258,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,2,0),(19,'Simply Lemonade with Raspberry Juice','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\"]','HS-179-A0',0,18,0,1,1,6,0,0,117,NULL,NULL,NULL,20.00,12.00,19.00,727.00,NULL,118690,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,4,0),(20,'Perdue Simply Smart Organics Gluten Free','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\"]','HS-113-A0',0,20,0,1,1,3,0,0,111,81.03,NULL,NULL,16.00,10.00,10.00,758.00,NULL,137907,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,3,0),(21,'Chen Watermelon (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\"]','HS-152-A0',0,11,0,1,1,3,0,0,115,NULL,NULL,NULL,14.00,10.00,13.00,729.00,NULL,119107,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,2,0),(22,'Organic Cage-Free Grade A Large Brown Eggs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\"]','HS-103-A0',0,15,0,1,1,3,0,0,126,NULL,NULL,NULL,19.00,18.00,17.00,629.00,NULL,184941,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,2,0),(23,'Colorful Banana','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\"]','HS-107-A0',0,12,0,1,1,3,0,0,124,NULL,NULL,NULL,16.00,11.00,19.00,880.00,NULL,164179,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,1,0),(24,'Signature Wood-Fired Mushroom and Caramelized','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327819_a31bd967f3_b.jpg\" alt=\"icon\" style=\"height:15px;\">    1 Year AL Jazeera Brand Warranty</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425495800_97e79701b2_b.jpg\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"https://farm66.staticflickr.com/65535/52425327779_367e302b1e_b.jpg\" alt=\"icon\" style=\"height:15px;\"> Cash on Delivery available</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/24.jpg\",\"products\\/24-1.jpg\"]','HS-194-A0',0,13,0,1,1,6,0,0,116,88.16,NULL,NULL,12.00,18.00,17.00,540.00,NULL,159370,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,1,0),(25,'Seeds of Change Organic Quinoe (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','HS-126-A0',0,15,0,1,0,4,1,0,337,NULL,NULL,NULL,16.00,19.00,16.00,656.00,NULL,0,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(26,'Seeds of Change Organic Quinoe (Digital)',NULL,NULL,'published','[\"products\\/1-1.jpg\"]','HS-126-A0-A1',0,15,0,1,0,4,1,0,337,NULL,NULL,NULL,16.00,19.00,16.00,656.00,NULL,0,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(27,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/2.jpg\"]','HS-171-A0',0,15,0,1,0,5,1,0,235,NULL,NULL,NULL,15.00,19.00,18.00,590.00,NULL,0,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(28,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/2-1.jpg\"]','HS-171-A0-A1',0,15,0,1,0,5,1,0,235,NULL,NULL,NULL,15.00,19.00,18.00,590.00,NULL,0,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(29,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/2.jpg\"]','HS-171-A0-A2',0,15,0,1,0,5,1,0,235,NULL,NULL,NULL,15.00,19.00,18.00,590.00,NULL,0,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(30,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,'published','[\"products\\/3.jpg\"]','HS-161-A0',0,12,0,1,0,4,1,0,209,NULL,NULL,NULL,10.00,15.00,12.00,751.00,NULL,0,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(31,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,'published','[\"products\\/3-1.jpg\"]','HS-161-A0-A1',0,12,0,1,0,4,1,0,209,NULL,NULL,NULL,10.00,15.00,12.00,751.00,NULL,0,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(32,'Foster Farms Takeout Crispy Classic',NULL,NULL,'published','[\"products\\/4.jpg\"]','HS-115-A0',0,19,0,1,0,1,1,0,77,58.52,NULL,NULL,14.00,20.00,20.00,552.00,NULL,0,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(33,'Foster Farms Takeout Crispy Classic',NULL,NULL,'published','[\"products\\/4-1.jpg\"]','HS-115-A0-A1',0,19,0,1,0,1,1,0,77,62.37,NULL,NULL,14.00,20.00,20.00,552.00,NULL,0,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(34,'Blue Diamond Almonds Lightly (Digital)',NULL,NULL,'published','[\"products\\/5.jpg\"]','HS-156-A0',0,14,0,1,0,6,1,0,41,NULL,NULL,NULL,14.00,19.00,15.00,864.00,NULL,0,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(35,'Blue Diamond Almonds Lightly (Digital)',NULL,NULL,'published','[\"products\\/5-1.jpg\"]','HS-156-A0-A1',0,14,0,1,0,6,1,0,41,NULL,NULL,NULL,14.00,19.00,15.00,864.00,NULL,0,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(36,'Chobani Complete Vanilla Greek',NULL,NULL,'published','[\"products\\/6.jpg\"]','HS-143-A0',0,15,0,1,0,1,1,0,50,NULL,NULL,NULL,18.00,18.00,14.00,597.00,NULL,0,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(37,'Canada Dry Ginger Ale – 2 L Bottle',NULL,NULL,'published','[\"products\\/7.jpg\"]','HS-114-A0',0,16,0,1,0,4,1,0,123,NULL,NULL,NULL,10.00,12.00,14.00,701.00,NULL,0,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(38,'Canada Dry Ginger Ale – 2 L Bottle',NULL,NULL,'published','[\"products\\/7-1.jpg\"]','HS-114-A0-A1',0,16,0,1,0,4,1,0,123,NULL,NULL,NULL,10.00,12.00,14.00,701.00,NULL,0,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(39,'Canada Dry Ginger Ale – 2 L Bottle',NULL,NULL,'published','[\"products\\/7.jpg\"]','HS-114-A0-A2',0,16,0,1,0,4,1,0,123,NULL,NULL,NULL,10.00,12.00,14.00,701.00,NULL,0,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(40,'Encore Seafoods Stuffed Alaskan',NULL,NULL,'published','[\"products\\/8.jpg\"]','HS-106-A0',0,13,0,1,0,5,1,0,120,104.4,NULL,NULL,20.00,13.00,20.00,569.00,NULL,0,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(41,'Encore Seafoods Stuffed Alaskan',NULL,NULL,'published','[\"products\\/8-1.jpg\"]','HS-106-A0-A1',0,13,0,1,0,5,1,0,120,102,NULL,NULL,20.00,13.00,20.00,569.00,NULL,0,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(42,'Encore Seafoods Stuffed Alaskan',NULL,NULL,'published','[\"products\\/8.jpg\"]','HS-106-A0-A2',0,13,0,1,0,5,1,0,120,84,NULL,NULL,20.00,13.00,20.00,569.00,NULL,0,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(43,'Encore Seafoods Stuffed Alaskan',NULL,NULL,'published','[\"products\\/8.jpg\"]','HS-106-A0-A3',0,13,0,1,0,5,1,0,120,99.6,NULL,NULL,20.00,13.00,20.00,569.00,NULL,0,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(44,'Gorton’s Beer Battered Fish Fillets (Digital)',NULL,NULL,'published','[\"products\\/9.jpg\"]','HS-138-A0',0,15,0,1,0,1,1,0,111,NULL,NULL,NULL,11.00,12.00,11.00,666.00,NULL,0,'2023-04-08 19:13:46','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(45,'Haagen-Dazs Caramel Cone Ice Cream',NULL,NULL,'published','[\"products\\/10.jpg\"]','HS-140-A0',0,18,0,1,0,3,1,0,368,NULL,NULL,NULL,17.00,19.00,16.00,522.00,NULL,0,'2023-04-08 19:13:47','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(46,'Haagen-Dazs Caramel Cone Ice Cream',NULL,NULL,'published','[\"products\\/10-1.jpg\"]','HS-140-A0-A1',0,18,0,1,0,3,1,0,368,NULL,NULL,NULL,17.00,19.00,16.00,522.00,NULL,0,'2023-04-08 19:13:47','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(47,'Nestle Original Coffee-Mate Coffee Creamer',NULL,NULL,'published','[\"products\\/11.jpg\"]','HS-196-A0',0,11,0,1,0,4,1,0,122,NULL,NULL,NULL,15.00,13.00,19.00,553.00,NULL,0,'2023-04-08 19:13:47','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(48,'Nestle Original Coffee-Mate Coffee Creamer',NULL,NULL,'published','[\"products\\/11-1.jpg\"]','HS-196-A0-A1',0,11,0,1,0,4,1,0,122,NULL,NULL,NULL,15.00,13.00,19.00,553.00,NULL,0,'2023-04-08 19:13:47','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(49,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,NULL,'published','[\"products\\/12.jpg\"]','HS-188-A0',0,10,0,1,0,3,1,0,126,95.76,NULL,NULL,11.00,14.00,17.00,841.00,NULL,0,'2023-04-08 19:13:47','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(50,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,NULL,'published','[\"products\\/12-1.jpg\"]','HS-188-A0-A1',0,10,0,1,0,3,1,0,126,103.32,NULL,NULL,11.00,14.00,17.00,841.00,NULL,0,'2023-04-08 19:13:47','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(51,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,NULL,'published','[\"products\\/12.jpg\"]','HS-188-A0-A2',0,10,0,1,0,3,1,0,126,99.54,NULL,NULL,11.00,14.00,17.00,841.00,NULL,0,'2023-04-08 19:13:47','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(52,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,NULL,'published','[\"products\\/12.jpg\"]','HS-188-A0-A3',0,10,0,1,0,3,1,0,126,113.4,NULL,NULL,11.00,14.00,17.00,841.00,NULL,0,'2023-04-08 19:13:47','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(53,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]','HS-195-A0',0,12,0,1,0,3,1,0,120,NULL,NULL,NULL,20.00,13.00,12.00,862.00,NULL,0,'2023-04-08 19:13:47','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(54,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)',NULL,NULL,'published','[\"products\\/13-1.jpg\"]','HS-195-A0-A1',0,12,0,1,0,3,1,0,120,NULL,NULL,NULL,20.00,13.00,12.00,862.00,NULL,0,'2023-04-08 19:13:47','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(55,'Organic Frozen Triple Berry Blend',NULL,NULL,'published','[\"products\\/14.jpg\"]','HS-194-A0',0,14,0,1,0,6,1,0,129,NULL,NULL,NULL,10.00,19.00,19.00,794.00,NULL,0,'2023-04-08 19:13:47','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(56,'Organic Frozen Triple Berry Blend',NULL,NULL,'published','[\"products\\/14-1.jpg\"]','HS-194-A0-A1',0,14,0,1,0,6,1,0,129,NULL,NULL,NULL,10.00,19.00,19.00,794.00,NULL,0,'2023-04-08 19:13:47','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(57,'Oroweat Country Buttermilk Bread',NULL,NULL,'published','[\"products\\/15.jpg\"]','HS-190-A0',0,10,0,1,0,3,1,0,120,NULL,NULL,NULL,11.00,17.00,16.00,660.00,NULL,0,'2023-04-08 19:13:47','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(58,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL,'published','[\"products\\/16.jpg\"]','HS-105-A0',0,13,0,1,0,7,1,0,125,107.5,NULL,NULL,17.00,18.00,13.00,821.00,NULL,0,'2023-04-08 19:13:47','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(59,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL,'published','[\"products\\/16-1.jpg\"]','HS-105-A0-A1',0,13,0,1,0,7,1,0,125,97.5,NULL,NULL,17.00,18.00,13.00,821.00,NULL,0,'2023-04-08 19:13:47','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(60,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL,'published','[\"products\\/16-2.jpg\"]','HS-105-A0-A2',0,13,0,1,0,7,1,0,125,108.75,NULL,NULL,17.00,18.00,13.00,821.00,NULL,0,'2023-04-08 19:13:47','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(61,'Angie’s Boomchickapop Sweet & Salty Kettle Corn (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-111-A0',0,17,0,1,0,5,1,0,127,NULL,NULL,NULL,15.00,13.00,14.00,615.00,NULL,0,'2023-04-08 19:13:47','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(62,'Angie’s Boomchickapop Sweet & Salty Kettle Corn (Digital)',NULL,NULL,'published','[\"products\\/17-1.jpg\"]','HS-111-A0-A1',0,17,0,1,0,5,1,0,127,NULL,NULL,NULL,15.00,13.00,14.00,615.00,NULL,0,'2023-04-08 19:13:47','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(63,'Angie’s Boomchickapop Sweet & Salty Kettle Corn (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-111-A0-A2',0,17,0,1,0,5,1,0,127,NULL,NULL,NULL,15.00,13.00,14.00,615.00,NULL,0,'2023-04-08 19:13:47','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(64,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/18.jpg\"]','HS-185-A0',0,14,0,1,0,6,1,0,123,NULL,NULL,NULL,16.00,17.00,20.00,821.00,NULL,0,'2023-04-08 19:13:47','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(65,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/18-1.jpg\"]','HS-185-A0-A1',0,14,0,1,0,6,1,0,123,NULL,NULL,NULL,16.00,17.00,20.00,821.00,NULL,0,'2023-04-08 19:13:47','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(66,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/18.jpg\"]','HS-185-A0-A2',0,14,0,1,0,6,1,0,123,NULL,NULL,NULL,16.00,17.00,20.00,821.00,NULL,0,'2023-04-08 19:13:47','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(67,'Simply Lemonade with Raspberry Juice',NULL,NULL,'published','[\"products\\/19.jpg\"]','HS-179-A0',0,18,0,1,0,6,1,0,117,NULL,NULL,NULL,20.00,12.00,19.00,727.00,NULL,0,'2023-04-08 19:13:47','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(68,'Simply Lemonade with Raspberry Juice',NULL,NULL,'published','[\"products\\/19-1.jpg\"]','HS-179-A0-A1',0,18,0,1,0,6,1,0,117,NULL,NULL,NULL,20.00,12.00,19.00,727.00,NULL,0,'2023-04-08 19:13:47','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(69,'Perdue Simply Smart Organics Gluten Free',NULL,NULL,'published','[\"products\\/20.jpg\"]','HS-113-A0',0,20,0,1,0,3,1,0,111,81.03,NULL,NULL,16.00,10.00,10.00,758.00,NULL,0,'2023-04-08 19:13:47','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(70,'Perdue Simply Smart Organics Gluten Free',NULL,NULL,'published','[\"products\\/20-1.jpg\"]','HS-113-A0-A1',0,20,0,1,0,3,1,0,111,81.03,NULL,NULL,16.00,10.00,10.00,758.00,NULL,0,'2023-04-08 19:13:47','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(71,'Chen Watermelon (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]','HS-152-A0',0,11,0,1,0,3,1,0,115,NULL,NULL,NULL,14.00,10.00,13.00,729.00,NULL,0,'2023-04-08 19:13:47','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(72,'Chen Watermelon (Digital)',NULL,NULL,'published','[\"products\\/21-1.jpg\"]','HS-152-A0-A1',0,11,0,1,0,3,1,0,115,NULL,NULL,NULL,14.00,10.00,13.00,729.00,NULL,0,'2023-04-08 19:13:47','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(73,'Chen Watermelon (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]','HS-152-A0-A2',0,11,0,1,0,3,1,0,115,NULL,NULL,NULL,14.00,10.00,13.00,729.00,NULL,0,'2023-04-08 19:13:47','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,NULL,0),(74,'Organic Cage-Free Grade A Large Brown Eggs',NULL,NULL,'published','[\"products\\/22.jpg\"]','HS-103-A0',0,15,0,1,0,3,1,0,126,NULL,NULL,NULL,19.00,18.00,17.00,629.00,NULL,0,'2023-04-08 19:13:47','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(75,'Colorful Banana',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-107-A0',0,12,0,1,0,3,1,0,124,NULL,NULL,NULL,16.00,11.00,19.00,880.00,NULL,0,'2023-04-08 19:13:47','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(76,'Signature Wood-Fired Mushroom and Caramelized',NULL,NULL,'published','[\"products\\/24.jpg\"]','HS-194-A0',0,13,0,1,0,6,1,0,116,88.16,NULL,NULL,12.00,18.00,17.00,540.00,NULL,0,'2023-04-08 19:13:47','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0),(77,'Signature Wood-Fired Mushroom and Caramelized',NULL,NULL,'published','[\"products\\/24-1.jpg\"]','HS-194-A0-A1',0,13,0,1,0,6,1,0,116,92.8,NULL,NULL,12.00,18.00,17.00,540.00,NULL,0,'2023-04-08 19:13:47','2023-04-08 19:13:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
INSERT INTO `ec_products_translations` VALUES ('vi',1,'Hạt Quinoa hữu cơ',NULL,NULL),('vi',2,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',3,'Angie’s Boomchickapop Sweet & Salty',NULL,NULL),('vi',4,'Foster Farms Takeout Crispy Classic',NULL,NULL),('vi',5,'Diamond Almonds xanh nhạt',NULL,NULL),('vi',6,'Chobani vani Hy Lạp',NULL,NULL),('vi',7,'Gừng khô Canada',NULL,NULL),('vi',8,'Hải sản Alaska',NULL,NULL),('vi',9,'Cá phi lê tẩm Gorton',NULL,NULL),('vi',10,'Kem Haagen-Dazs Caramel Cone',NULL,NULL),('vi',11,'Máy làm kem cà phê nguyên bản của Nestle',NULL,NULL),('vi',12,'Cà phê rang nhẹ hương vị quế vani tự nhiên',NULL,NULL),('vi',13,'Pepperidge Farm Farmhouse Hearty White Bread',NULL,NULL),('vi',14,'Hỗn hợp ba quả mọng đông lạnh hữu cơ',NULL,NULL),('vi',15,'Bánh mì bơ sữa đồng quê Oroweat',NULL,NULL),('vi',16,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL),('vi',17,'Ngô Angie’s boomchickapop ngọt và mặn',NULL,NULL),('vi',18,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',19,'Nước ép chanh và mâm xôi',NULL,NULL),('vi',20,'Perdue hữu cơ không chứa Gluten',NULL,NULL),('vi',21,'Dưa hấu chen',NULL,NULL),('vi',22,'Trứng loại A lớn hữu cơ',NULL,NULL),('vi',23,'Chuối đầy màu sắc',NULL,NULL),('vi',24,'Nấm đặc trưng và caramel',NULL,NULL),('vi',25,'Hạt Quinoa hữu cơ',NULL,NULL),('vi',26,'Hạt Quinoa hữu cơ',NULL,NULL),('vi',27,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',28,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',29,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',30,'Angie’s Boomchickapop Sweet & Salty',NULL,NULL),('vi',31,'Angie’s Boomchickapop Sweet & Salty',NULL,NULL),('vi',32,'Foster Farms Takeout Crispy Classic',NULL,NULL),('vi',33,'Foster Farms Takeout Crispy Classic',NULL,NULL),('vi',34,'Diamond Almonds xanh nhạt',NULL,NULL),('vi',35,'Diamond Almonds xanh nhạt',NULL,NULL),('vi',36,'Chobani vani Hy Lạp',NULL,NULL),('vi',37,'Gừng khô Canada',NULL,NULL),('vi',38,'Gừng khô Canada',NULL,NULL),('vi',39,'Gừng khô Canada',NULL,NULL),('vi',40,'Hải sản Alaska',NULL,NULL),('vi',41,'Hải sản Alaska',NULL,NULL),('vi',42,'Hải sản Alaska',NULL,NULL),('vi',43,'Hải sản Alaska',NULL,NULL),('vi',44,'Cá phi lê tẩm Gorton',NULL,NULL),('vi',45,'Kem Haagen-Dazs Caramel Cone',NULL,NULL),('vi',46,'Kem Haagen-Dazs Caramel Cone',NULL,NULL),('vi',47,'Máy làm kem cà phê nguyên bản của Nestle',NULL,NULL),('vi',48,'Máy làm kem cà phê nguyên bản của Nestle',NULL,NULL),('vi',49,'Cà phê rang nhẹ hương vị quế vani tự nhiên',NULL,NULL),('vi',50,'Cà phê rang nhẹ hương vị quế vani tự nhiên',NULL,NULL),('vi',51,'Cà phê rang nhẹ hương vị quế vani tự nhiên',NULL,NULL),('vi',52,'Cà phê rang nhẹ hương vị quế vani tự nhiên',NULL,NULL),('vi',53,'Pepperidge Farm Farmhouse Hearty White Bread',NULL,NULL),('vi',54,'Pepperidge Farm Farmhouse Hearty White Bread',NULL,NULL),('vi',55,'Hỗn hợp ba quả mọng đông lạnh hữu cơ',NULL,NULL),('vi',56,'Hỗn hợp ba quả mọng đông lạnh hữu cơ',NULL,NULL),('vi',57,'Bánh mì bơ sữa đồng quê Oroweat',NULL,NULL),('vi',58,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL),('vi',59,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL),('vi',60,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL),('vi',61,'Ngô Angie’s boomchickapop ngọt và mặn',NULL,NULL),('vi',62,'Ngô Angie’s boomchickapop ngọt và mặn',NULL,NULL),('vi',63,'Ngô Angie’s boomchickapop ngọt và mặn',NULL,NULL),('vi',64,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',65,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',66,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',67,'Nước ép chanh và mâm xôi',NULL,NULL),('vi',68,'Nước ép chanh và mâm xôi',NULL,NULL),('vi',69,'Perdue hữu cơ không chứa Gluten',NULL,NULL),('vi',70,'Perdue hữu cơ không chứa Gluten',NULL,NULL),('vi',71,'Dưa hấu chen',NULL,NULL),('vi',72,'Dưa hấu chen',NULL,NULL),('vi',73,'Dưa hấu chen',NULL,NULL),('vi',74,'Trứng loại A lớn hữu cơ',NULL,NULL),('vi',75,'Chuối đầy màu sắc',NULL,NULL),('vi',76,'Nấm đặc trưng và caramel',NULL,NULL),('vi',77,'Nấm đặc trưng và caramel',NULL,NULL);
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `ec_reviews_product_id_customer_id_status_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,3,19,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(2,10,5,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/2.jpg\"]'),(3,3,22,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(4,2,12,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(5,5,1,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/20.jpg\"}'),(6,10,22,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(7,8,1,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/15.jpg\"}'),(8,8,3,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/1.jpg\",\"products\\/5.jpg\",\"products\\/14.jpg\"]'),(9,6,10,1.00,'Clean & perfect source code','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(10,10,4,4.00,'Clean & perfect source code','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/3.jpg\"]'),(11,3,6,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(12,8,8,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/2.jpg\"]'),(13,5,9,1.00,'Clean & perfect source code','published','2023-04-08 19:13:49','2023-04-08 19:13:49','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/20.jpg\"}'),(14,3,7,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/2.jpg\"]'),(15,10,2,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(16,4,4,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/3.jpg\"]'),(17,9,24,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(18,5,16,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/8.jpg\"]'),(19,6,21,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(20,10,1,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/14.jpg\"}'),(21,4,19,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/3.jpg\"]'),(22,3,20,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/1.jpg\"]'),(23,1,4,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-04-08 19:13:49','2023-04-08 19:13:49','{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/8.jpg\"}'),(24,1,23,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/18.jpg\"]'),(25,2,6,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(26,7,11,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(27,3,8,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/3.jpg\"]'),(28,8,19,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/1.jpg\",\"products\\/5.jpg\",\"products\\/14.jpg\"]'),(29,9,17,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(30,6,23,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/18.jpg\"]'),(31,10,14,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(33,4,8,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(34,2,16,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/17.jpg\"]'),(35,8,23,3.00,'Good app, good backup service and support. Good documentation.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/13.jpg\"]'),(36,3,11,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(37,7,16,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(38,1,21,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(39,7,15,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(40,5,23,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-04-08 19:13:49','2023-04-08 19:13:49','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/10.jpg\"}'),(41,1,6,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/2.jpg\"]'),(42,2,21,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(43,10,3,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(44,6,15,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(45,9,22,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(46,9,8,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(47,7,14,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(48,2,14,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(50,1,3,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(51,2,4,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/8.jpg\"]'),(52,6,14,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/1.jpg\",\"products\\/6.jpg\",\"products\\/9.jpg\"]'),(53,6,24,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/4.jpg\"]'),(54,2,24,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/10.jpg\"]'),(55,1,13,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/17.jpg\"]'),(56,5,8,4.00,'Clean & perfect source code','published','2023-04-08 19:13:49','2023-04-08 19:13:49','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/13.jpg\"}'),(57,7,10,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/1.jpg\"]'),(58,7,17,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/24.jpg\"]'),(60,3,2,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/20.jpg\"]'),(61,10,12,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(63,6,16,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-04-08 19:13:49','2023-04-08 19:13:49','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/11.jpg\"}'),(64,2,1,4.00,'Clean & perfect source code','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/3.jpg\"]'),(65,9,13,3.00,'Clean & perfect source code','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(67,8,20,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/2.jpg\"]'),(68,6,3,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(69,6,6,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/21.jpg\"]'),(70,10,9,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/17.jpg\"]'),(71,9,9,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/8.jpg\"]'),(72,7,8,3.00,'Good app, good backup service and support. Good documentation.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/4.jpg\"]'),(73,10,15,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(75,6,18,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/18.jpg\"]'),(76,6,9,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(79,10,20,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(81,9,19,3.00,'Best ecommerce CMS online store!','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(82,10,10,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(84,9,2,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/19.jpg\"]'),(85,3,17,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(86,1,11,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(88,4,1,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/9.jpg\"]'),(89,7,18,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/3.jpg\"]'),(92,7,7,3.00,'Clean & perfect source code','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(93,3,18,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(94,10,8,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(96,7,5,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/11.jpg\"]'),(97,9,21,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(99,8,2,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-04-08 19:13:49','2023-04-08 19:13:49','[\"products\\/4.jpg\",\"products\\/7.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
INSERT INTO `ec_shipment_histories` VALUES (1,'create_from_order','Shipping was created from order %order_id%',0,1,1,'2023-04-05 11:13:59','2023-04-05 11:13:59','Botble\\ACL\\Models\\User'),(2,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,1,1,'2023-04-07 03:13:59','2023-04-08 19:13:59','Botble\\ACL\\Models\\User'),(3,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,1,1,'2023-04-08 19:13:59','2023-04-08 19:13:59','Botble\\ACL\\Models\\User'),(4,'create_from_order','Shipping was created from order %order_id%',0,2,2,'2023-03-24 19:13:59','2023-03-24 19:13:59','Botble\\ACL\\Models\\User'),(5,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,2,2,'2023-04-07 03:13:59','2023-04-08 19:13:59','Botble\\ACL\\Models\\User'),(6,'create_from_order','Shipping was created from order %order_id%',0,3,3,'2023-03-28 17:13:59','2023-03-28 17:13:59','Botble\\ACL\\Models\\User'),(7,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,3,3,'2023-04-07 05:13:59','2023-04-08 19:13:59','Botble\\ACL\\Models\\User'),(8,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,3,3,'2023-04-08 19:13:59','2023-04-08 19:13:59','Botble\\ACL\\Models\\User'),(9,'create_from_order','Shipping was created from order %order_id%',0,4,4,'2023-04-05 15:13:59','2023-04-05 15:13:59','Botble\\ACL\\Models\\User'),(10,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,4,4,'2023-04-07 05:13:59','2023-04-08 19:13:59','Botble\\ACL\\Models\\User'),(11,'create_from_order','Shipping was created from order %order_id%',0,5,5,'2023-04-07 07:13:59','2023-04-07 07:13:59','Botble\\ACL\\Models\\User'),(12,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,5,5,'2023-04-07 07:13:59','2023-04-08 19:13:59','Botble\\ACL\\Models\\User'),(13,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,5,5,'2023-04-08 19:13:59','2023-04-08 19:13:59','Botble\\ACL\\Models\\User'),(14,'create_from_order','Shipping was created from order %order_id%',0,6,6,'2023-04-04 07:13:59','2023-04-04 07:13:59','Botble\\ACL\\Models\\User'),(15,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,6,6,'2023-04-07 07:13:59','2023-04-08 19:13:59','Botble\\ACL\\Models\\User'),(16,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,6,6,'2023-04-08 19:13:59','2023-04-08 19:13:59','Botble\\ACL\\Models\\User'),(17,'create_from_order','Shipping was created from order %order_id%',0,7,7,'2023-04-03 03:13:59','2023-04-03 03:13:59','Botble\\ACL\\Models\\User'),(18,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,7,7,'2023-04-07 09:13:59','2023-04-08 19:13:59','Botble\\ACL\\Models\\User'),(19,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,7,7,'2023-04-08 19:13:59','2023-04-08 19:13:59','Botble\\ACL\\Models\\User'),(20,'create_from_order','Shipping was created from order %order_id%',0,8,8,'2023-04-03 03:13:59','2023-04-03 03:13:59','Botble\\ACL\\Models\\User'),(21,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,8,8,'2023-04-07 09:13:59','2023-04-08 19:13:59','Botble\\ACL\\Models\\User'),(22,'create_from_order','Shipping was created from order %order_id%',0,9,9,'2023-04-07 09:13:59','2023-04-07 09:13:59','Botble\\ACL\\Models\\User'),(23,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,9,9,'2023-04-07 09:13:59','2023-04-08 19:13:59','Botble\\ACL\\Models\\User'),(24,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,9,9,'2023-04-08 19:13:59','2023-04-08 19:13:59','Botble\\ACL\\Models\\User'),(25,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,9,9,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(26,'create_from_order','Shipping was created from order %order_id%',0,10,10,'2023-03-27 19:14:00','2023-03-27 19:14:00','Botble\\ACL\\Models\\User'),(27,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,10,10,'2023-04-07 11:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(28,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,10,10,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(29,'create_from_order','Shipping was created from order %order_id%',0,11,11,'2023-03-27 19:14:00','2023-03-27 19:14:00','Botble\\ACL\\Models\\User'),(30,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,11,11,'2023-04-07 11:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(31,'create_from_order','Shipping was created from order %order_id%',0,12,12,'2023-03-29 03:14:00','2023-03-29 03:14:00','Botble\\ACL\\Models\\User'),(32,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,12,12,'2023-04-07 11:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(33,'create_from_order','Shipping was created from order %order_id%',0,13,13,'2023-04-07 13:14:00','2023-04-07 13:14:00','Botble\\ACL\\Models\\User'),(34,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,13,13,'2023-04-07 13:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(35,'create_from_order','Shipping was created from order %order_id%',0,14,14,'2023-04-01 07:14:00','2023-04-01 07:14:00','Botble\\ACL\\Models\\User'),(36,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,14,14,'2023-04-07 13:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(37,'create_from_order','Shipping was created from order %order_id%',0,15,15,'2023-03-31 15:14:00','2023-03-31 15:14:00','Botble\\ACL\\Models\\User'),(38,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,15,15,'2023-04-07 15:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(39,'create_from_order','Shipping was created from order %order_id%',0,16,16,'2023-03-28 03:14:00','2023-03-28 03:14:00','Botble\\ACL\\Models\\User'),(40,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,16,16,'2023-04-07 15:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(41,'create_from_order','Shipping was created from order %order_id%',0,17,17,'2023-04-05 07:14:00','2023-04-05 07:14:00','Botble\\ACL\\Models\\User'),(42,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,17,17,'2023-04-07 15:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(43,'create_from_order','Shipping was created from order %order_id%',0,18,18,'2023-04-06 15:14:00','2023-04-06 15:14:00','Botble\\ACL\\Models\\User'),(44,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,18,18,'2023-04-07 17:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(45,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,18,18,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(46,'create_from_order','Shipping was created from order %order_id%',0,19,19,'2023-03-31 03:14:00','2023-03-31 03:14:00','Botble\\ACL\\Models\\User'),(47,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,19,19,'2023-04-07 17:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(48,'create_from_order','Shipping was created from order %order_id%',0,20,20,'2023-04-01 19:14:00','2023-04-01 19:14:00','Botble\\ACL\\Models\\User'),(49,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,20,20,'2023-04-07 19:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(50,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,20,20,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(51,'create_from_order','Shipping was created from order %order_id%',0,21,21,'2023-04-03 19:14:00','2023-04-03 19:14:00','Botble\\ACL\\Models\\User'),(52,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,21,21,'2023-04-07 19:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(53,'create_from_order','Shipping was created from order %order_id%',0,22,22,'2023-04-04 19:14:00','2023-04-04 19:14:00','Botble\\ACL\\Models\\User'),(54,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,22,22,'2023-04-07 19:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(55,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,22,22,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(56,'create_from_order','Shipping was created from order %order_id%',0,23,23,'2023-03-31 13:14:00','2023-03-31 13:14:00','Botble\\ACL\\Models\\User'),(57,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,23,23,'2023-04-07 21:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(58,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,23,23,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(59,'create_from_order','Shipping was created from order %order_id%',0,24,24,'2023-04-04 05:14:00','2023-04-04 05:14:00','Botble\\ACL\\Models\\User'),(60,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,24,24,'2023-04-07 21:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(61,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,24,24,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(62,'create_from_order','Shipping was created from order %order_id%',0,25,25,'2023-04-06 23:14:00','2023-04-06 23:14:00','Botble\\ACL\\Models\\User'),(63,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,25,25,'2023-04-07 21:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(64,'create_from_order','Shipping was created from order %order_id%',0,26,26,'2023-04-01 07:14:00','2023-04-01 07:14:00','Botble\\ACL\\Models\\User'),(65,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,26,26,'2023-04-07 23:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(66,'create_from_order','Shipping was created from order %order_id%',0,27,27,'2023-04-03 19:14:00','2023-04-03 19:14:00','Botble\\ACL\\Models\\User'),(67,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,27,27,'2023-04-07 23:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(68,'create_from_order','Shipping was created from order %order_id%',0,28,28,'2023-04-05 01:14:00','2023-04-05 01:14:00','Botble\\ACL\\Models\\User'),(69,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,28,28,'2023-04-08 01:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(70,'create_from_order','Shipping was created from order %order_id%',0,29,29,'2023-04-02 19:14:00','2023-04-02 19:14:00','Botble\\ACL\\Models\\User'),(71,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,29,29,'2023-04-08 01:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(72,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,29,29,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(73,'create_from_order','Shipping was created from order %order_id%',0,30,30,'2023-04-02 01:14:00','2023-04-02 01:14:00','Botble\\ACL\\Models\\User'),(74,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,30,30,'2023-04-08 01:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(75,'create_from_order','Shipping was created from order %order_id%',0,31,31,'2023-04-02 03:14:00','2023-04-02 03:14:00','Botble\\ACL\\Models\\User'),(76,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,31,31,'2023-04-08 03:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(77,'create_from_order','Shipping was created from order %order_id%',0,32,32,'2023-04-05 11:14:00','2023-04-05 11:14:00','Botble\\ACL\\Models\\User'),(78,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,32,32,'2023-04-08 03:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(79,'create_from_order','Shipping was created from order %order_id%',0,33,33,'2023-04-04 17:14:00','2023-04-04 17:14:00','Botble\\ACL\\Models\\User'),(80,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,33,33,'2023-04-08 05:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(81,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,33,33,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(82,'create_from_order','Shipping was created from order %order_id%',0,34,34,'2023-04-08 05:14:00','2023-04-08 05:14:00','Botble\\ACL\\Models\\User'),(83,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,34,34,'2023-04-08 05:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(84,'create_from_order','Shipping was created from order %order_id%',0,35,35,'2023-04-08 07:14:00','2023-04-08 07:14:00','Botble\\ACL\\Models\\User'),(85,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,35,35,'2023-04-08 07:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(86,'create_from_order','Shipping was created from order %order_id%',0,36,36,'2023-04-04 07:14:00','2023-04-04 07:14:00','Botble\\ACL\\Models\\User'),(87,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,36,36,'2023-04-08 07:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(88,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,36,36,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(89,'create_from_order','Shipping was created from order %order_id%',0,37,37,'2023-04-07 13:14:00','2023-04-07 13:14:00','Botble\\ACL\\Models\\User'),(90,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,37,37,'2023-04-08 09:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(91,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,37,37,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(92,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,37,37,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(93,'create_from_order','Shipping was created from order %order_id%',0,38,38,'2023-04-05 11:14:00','2023-04-05 11:14:00','Botble\\ACL\\Models\\User'),(94,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,38,38,'2023-04-08 09:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(95,'create_from_order','Shipping was created from order %order_id%',0,39,39,'2023-04-07 11:14:00','2023-04-07 11:14:00','Botble\\ACL\\Models\\User'),(96,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,39,39,'2023-04-08 11:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(97,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,39,39,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(98,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,39,39,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(99,'create_from_order','Shipping was created from order %order_id%',0,40,40,'2023-04-07 03:14:00','2023-04-07 03:14:00','Botble\\ACL\\Models\\User'),(100,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,40,40,'2023-04-08 11:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(101,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,40,40,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(102,'create_from_order','Shipping was created from order %order_id%',0,41,41,'2023-04-07 07:14:00','2023-04-07 07:14:00','Botble\\ACL\\Models\\User'),(103,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,41,41,'2023-04-08 13:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(104,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,41,41,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(105,'create_from_order','Shipping was created from order %order_id%',0,42,42,'2023-04-08 01:14:00','2023-04-08 01:14:00','Botble\\ACL\\Models\\User'),(106,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,42,42,'2023-04-08 13:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(107,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,42,42,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(108,'create_from_order','Shipping was created from order %order_id%',0,43,43,'2023-04-07 23:14:00','2023-04-07 23:14:00','Botble\\ACL\\Models\\User'),(109,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,43,43,'2023-04-08 15:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(110,'create_from_order','Shipping was created from order %order_id%',0,44,44,'2023-04-07 15:14:00','2023-04-07 15:14:00','Botble\\ACL\\Models\\User'),(111,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,44,44,'2023-04-08 15:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(112,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,44,44,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(113,'create_from_order','Shipping was created from order %order_id%',0,45,45,'2023-04-08 05:14:00','2023-04-08 05:14:00','Botble\\ACL\\Models\\User'),(114,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,45,45,'2023-04-08 17:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(115,'create_from_order','Shipping was created from order %order_id%',0,46,46,'2023-04-08 03:14:00','2023-04-08 03:14:00','Botble\\ACL\\Models\\User'),(116,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,46,46,'2023-04-08 17:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User'),(117,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,46,46,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\ACL\\Models\\User');
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
INSERT INTO `ec_shipments` VALUES (1,1,NULL,841.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-04-08 19:13:59','2023-04-08 19:13:59','JJD0043085529','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-16 02:13:59','2023-04-09 02:13:59',NULL,NULL),(2,2,NULL,794.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-04-08 19:13:59','2023-04-08 19:13:59','JJD009326851','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-15 02:13:59',NULL,NULL,NULL),(3,3,NULL,841.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-04-08 19:13:59','2023-04-08 19:13:59','JJD0075769873','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-10 02:13:59','2023-04-09 02:13:59',NULL,NULL),(4,4,NULL,2274.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-04-08 19:13:59','2023-04-08 19:13:59','JJD0080891213','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-10 02:13:59',NULL,NULL,NULL),(5,5,NULL,2274.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-04-08 19:13:59','2023-04-08 19:13:59','JJD0043525792','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-18 02:13:59','2023-04-09 02:13:59',NULL,NULL),(6,6,NULL,880.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-04-08 19:13:59','2023-04-08 19:13:59','JJD0042889642','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-15 02:13:59','2023-04-09 02:13:59',NULL,NULL),(7,7,NULL,2523.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-04-08 19:13:59','2023-04-08 19:13:59','JJD0010151277','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-13 02:13:59','2023-04-09 02:13:59',NULL,NULL),(8,8,NULL,1320.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-04-08 19:13:59','2023-04-08 19:13:59','JJD0032735576','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-17 02:13:59',NULL,NULL,NULL),(9,9,NULL,2463.00,NULL,NULL,'','delivered',369.00,'completed','pending',0.00,0,'2023-04-08 19:13:59','2023-04-08 19:13:59','JJD0091423811','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-10 02:13:59','2023-04-09 02:13:59',NULL,NULL),(10,10,NULL,2592.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','JJD0036557108','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-15 02:14:00','2023-04-09 02:14:00',NULL,NULL),(11,11,NULL,2069.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','JJD0089213167','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-11 02:14:00',NULL,NULL,NULL),(12,12,NULL,758.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','JJD0045172176','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-18 02:14:00',NULL,NULL,NULL),(13,13,NULL,1659.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','JJD0067953454','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-15 02:14:00',NULL,NULL,NULL),(14,14,NULL,1454.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','JJD0041061651','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-18 02:14:00',NULL,NULL,NULL),(15,15,NULL,3327.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','JJD0067269683','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-15 02:14:00',NULL,NULL,NULL),(16,16,NULL,1402.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','JJD0064211136','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-18 02:14:00',NULL,NULL,NULL),(17,17,NULL,1682.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','JJD0066711241','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-19 02:14:00',NULL,NULL,NULL),(18,18,NULL,1707.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','JJD0032508483','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-19 02:14:00','2023-04-09 02:14:00',NULL,NULL),(19,19,NULL,1230.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','JJD0068841203','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-12 02:14:00',NULL,NULL,NULL),(20,20,NULL,2450.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','JJD0040601055','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-18 02:14:00','2023-04-09 02:14:00',NULL,NULL),(21,21,NULL,1659.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','JJD0092345538','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-14 02:14:00',NULL,NULL,NULL),(22,22,NULL,2187.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','JJD0014558343','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-19 02:14:00','2023-04-09 02:14:00',NULL,NULL),(23,23,NULL,2975.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','JJD0076760163','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-12 02:14:00','2023-04-09 02:14:00',NULL,NULL),(24,24,NULL,666.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','JJD0012358424','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-16 02:14:00','2023-04-09 02:14:00',NULL,NULL),(25,25,NULL,2463.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','JJD001147583','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-13 02:14:00',NULL,NULL,NULL),(26,26,NULL,3601.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','JJD0029438245','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-14 02:14:00',NULL,NULL,NULL),(27,27,NULL,2274.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','JJD0067661256','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-13 02:14:00',NULL,NULL,NULL),(28,28,NULL,1728.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','JJD0026496513','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-10 02:14:00',NULL,NULL,NULL),(29,29,NULL,2520.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','JJD0020844889','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-18 02:14:00','2023-04-09 02:14:00',NULL,NULL),(30,30,NULL,2274.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','JJD0021966090','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-18 02:14:00',NULL,NULL,NULL),(31,31,NULL,1707.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','JJD0096609195','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-18 02:14:00',NULL,NULL,NULL),(32,32,NULL,841.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','JJD0016433053','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-17 02:14:00',NULL,NULL,NULL),(33,33,NULL,2103.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','JJD007103587','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-18 02:14:00','2023-04-09 02:14:00',NULL,NULL),(34,34,NULL,2586.00,NULL,NULL,'','approved',360.00,'pending','pending',0.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','JJD0014736942','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-16 02:14:00',NULL,NULL,NULL),(35,35,NULL,4541.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','JJD0099401665','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-11 02:14:00',NULL,NULL,NULL),(36,36,NULL,1682.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','JJD003363092','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-15 02:14:00','2023-04-09 02:14:00',NULL,NULL),(37,37,NULL,552.00,NULL,NULL,'','delivered',77.00,'completed','pending',0.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','JJD0080104311','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-10 02:14:00','2023-04-09 02:14:00',NULL,NULL),(38,38,NULL,1138.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','JJD0023736717','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-12 02:14:00',NULL,NULL,NULL),(39,39,NULL,1180.00,NULL,NULL,'','delivered',470.00,'completed','pending',0.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','JJD0036490722','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-12 02:14:00','2023-04-09 02:14:00',NULL,NULL),(40,40,NULL,3325.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','JJD0034372204','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-12 02:14:00','2023-04-09 02:14:00',NULL,NULL),(41,41,NULL,751.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','JJD0054447463','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-10 02:14:00','2023-04-09 02:14:00',NULL,NULL),(42,42,NULL,2181.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','JJD0090141745','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-12 02:14:00','2023-04-09 02:14:00',NULL,NULL),(43,43,NULL,864.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','JJD0056029858','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-11 02:14:00',NULL,NULL,NULL),(44,44,NULL,862.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','JJD0024483031','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-12 02:14:00','2023-04-09 02:14:00',NULL,NULL),(45,45,NULL,2560.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','JJD0017413981','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-18 02:14:00',NULL,NULL,NULL),(46,46,NULL,1458.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-04-08 19:14:00','2023-04-08 19:14:00','JJD0097780475','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-04-18 02:14:00','2023-04-09 02:14:00',NULL,NULL);
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2023-04-08 19:13:49','2023-04-08 19:13:49');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` bigint unsigned NOT NULL,
  `type` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',0.00,NULL,0.00,'2023-04-08 19:13:49','2023-04-08 19:13:49');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Nest','sales@botble.com','18006268','North Link Building, 10 Admiralty Street','SG','Singapore','Singapore',1,1,'2023-04-08 19:13:49','2023-04-08 19:13:49');
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_products` (
  `tax_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tax_id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
INSERT INTO `ec_tax_products` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23),(1,24);
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2023-04-08 19:13:47','2023-04-08 19:13:47'),(2,'None',0.000000,2,'published','2023-04-08 19:13:47','2023-04-08 19:13:47'),(3,'Import Tax',15.000000,3,'published','2023-04-08 19:13:47','2023-04-08 19:13:47');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_wish_lists_product_id_customer_id_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Shipping',0,'published','2023-04-08 19:13:55','2023-04-08 19:13:55'),(2,'Payment',1,'published','2023-04-08 19:13:55','2023-04-08 19:13:55'),(3,'Order &amp; Returns',2,'published','2023-04-08 19:13:55','2023-04-08 19:13:55');
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
INSERT INTO `faq_categories_translations` VALUES ('vi',1,'VẬN CHUYỂN'),('vi',2,'THANH TOÁN'),('vi',3,'ĐƠN HÀNG & HOÀN TRẢ');
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2023-04-08 19:13:55','2023-04-08 19:13:55'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2023-04-08 19:13:55','2023-04-08 19:13:55'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2023-04-08 19:13:55','2023-04-08 19:13:55'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2023-04-08 19:13:55','2023-04-08 19:13:55'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2023-04-08 19:13:55','2023-04-08 19:13:55'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2023-04-08 19:13:55','2023-04-08 19:13:55'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2023-04-08 19:13:55','2023-04-08 19:13:55'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2023-04-08 19:13:55','2023-04-08 19:13:55'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2023-04-08 19:13:55','2023-04-08 19:13:55'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2023-04-08 19:13:55','2023-04-08 19:13:55');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
INSERT INTO `faqs_translations` VALUES ('vi',1,'Có những phương thức vận chuyển nào?','Ex Portland Pitchfork irure ria mép. Eutra fap trước khi họ bán hết theo đúng nghĩa đen. Aliquip ugh quyền xe đạp thực sự mlkshk, rượu bia thủ công mực seitan. '),('vi',2,'Bạn có giao hàng quốc tế không?','Áo hoodie túi tote Tofu mixtape. Quần đùi jean đánh chữ Wolf quinoa, túi messenger hữu cơ freegan cray. '),('vi',3,'Mất bao lâu để nhận được gói hàng của tôi?','Bữa nửa buổi ăn sáng bằng bụng heo quay từ máy đánh chữ VHS, cà phê có nguồn gốc đơn Paleo, Wes Anderson. Khoan Pitchfork linh hoạt, theo nghĩa đen là đổ qua fap theo nghĩa đen. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray bền vững slow-carb raw denim Church-key fap chillwave Etsy. +1 bộ dụng cụ đánh máy, đậu phụ Banksy Vice của American Apparel. '),('vi',4,'Phương thức thanh toán nào được chấp nhận?','Fashion Axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Quầy ảnh Voluptate fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur ria mép. Twee chia gian hàng chụp ảnh xe bán đồ ăn sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. '),('vi',5,'Mua trực tuyến có an toàn không?','Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia credit. Tiệc trên mái nhà Neutra Austin Brooklyn, Thundercats swag synth gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. '),('vi',6,'Làm cách nào để đặt hàng?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Định mức seitan trong tương lai. Master làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt chậm carb cấp độ tiếp theo. Vải thô denim polaroid nhạt từ trang trại đến bàn, đặt một con chim trên đó hình xăm lo-fi Wes Anderson Pinterest letterpress. Bậc thầy gian hàng ảnh Schlitz của Fingerstache McSweeney đang làm sạch thẻ bắt đầu bằng hashtag theo yêu cầu riêng, chillwave gentrify. '),('vi',7,'Làm cách nào để tôi có thể hủy hoặc thay đổi đơn hàng của mình?','Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia tín. Tiệc trên mái nhà Neutra Austin ở Brooklyn, synth Thundercats có gian hàng ảnh 8-bit. '),('vi',8,'Tôi có cần tài khoản để đặt hàng không?','Thundercats làm lung lay gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Twee chia ảnh gian hàng xe bán thức ăn làm sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. Cray ugh 3 wolf moon fap, rìu thời trang mỉa mai người bán thịt máy đánh chữ chambray VHS banjo nghệ thuật đường phố. '),('vi',9,'Làm cách nào để theo dõi đơn hàng của tôi?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Định mức seitan trong tương lai. Bậc thầy làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt theo kiểu chậm carb cấp độ tiếp theo. '),('vi',10,'Làm cách nào để trả lại sản phẩm?','Kale chips Truffaut Williamsburg, fixie hashtag Pinterest raw denim c hambray uống giấm Carles street art Bushwick gastropub. Chìa khóa nhà thờ Wolf Tumblr. Xe tải thực phẩm kẻ sọc Echo Park YOLO cắn hella, giao dịch trực tiếp Thundercats legging quinoa trước khi bán hết. Có thể bạn chưa từng nghe nói về họ những người truyền bá vị umami đích thực uống giấm Pinterest Áo len Cosby, fingerstache fap High Life. ');
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','2d7d2f4762942162baedc804ba8a4855',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','684e64614497137e1a8e25a621b8475b',2,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(3,'en_US','87603300937f88be4beb9b24b99567a5',3,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(4,'en_US','3cd2741f599f9ec217d3cbc7c7bc0d2a',4,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(5,'en_US','362def811f3c22f586af9c8e3398171d',5,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(6,'en_US','c3a5092df58dfcdbf6557af423ccef87',6,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(7,'en_US','d6fc416c3cb202696b3781e0ccb2f044',7,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(8,'vi','2d7d2f4762942162baedc804ba8a4855',8,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(9,'vi','684e64614497137e1a8e25a621b8475b',9,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(10,'vi','87603300937f88be4beb9b24b99567a5',10,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(11,'vi','3cd2741f599f9ec217d3cbc7c7bc0d2a',11,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(12,'vi','362def811f3c22f586af9c8e3398171d',12,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(13,'vi','c3a5092df58dfcdbf6557af423ccef87',13,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(14,'vi','d6fc416c3cb202696b3781e0ccb2f044',14,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(15,'en_US','2aae7d06487f0e9b1f908c4f3ea78ddf',1,'Botble\\Menu\\Models\\MenuLocation'),(16,'en_US','8c7ac0da607b91351ad0efd896778f05',1,'Botble\\Menu\\Models\\Menu'),(17,'en_US','a6978c8b7f59a288680fd94fb2d97d85',2,'Botble\\Menu\\Models\\MenuLocation'),(18,'en_US','777fa69dc722542fff3737b01056852b',2,'Botble\\Menu\\Models\\Menu'),(19,'en_US','f92960e2ec05142ecb82d48265f8bbf4',3,'Botble\\Menu\\Models\\Menu'),(20,'en_US','27f7ed4e60ee7da7ca15d8e27557c2ab',4,'Botble\\Menu\\Models\\Menu'),(21,'en_US','2e440be0d60ed533b47cd4ceea16a1cf',5,'Botble\\Menu\\Models\\Menu'),(22,'vi','592482d60bb066954bad30fa38c96bc5',3,'Botble\\Menu\\Models\\MenuLocation'),(23,'vi','8c7ac0da607b91351ad0efd896778f05',6,'Botble\\Menu\\Models\\Menu'),(24,'vi','79dbce9fe8b6d0dac4f55af7e01d04ea',4,'Botble\\Menu\\Models\\MenuLocation'),(25,'vi','777fa69dc722542fff3737b01056852b',7,'Botble\\Menu\\Models\\Menu'),(26,'vi','f92960e2ec05142ecb82d48265f8bbf4',8,'Botble\\Menu\\Models\\Menu'),(27,'vi','27f7ed4e60ee7da7ca15d8e27557c2ab',9,'Botble\\Menu\\Models\\Menu'),(28,'vi','2e440be0d60ed533b47cd4ceea16a1cf',10,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0),(2,'Tiếng Việt','vi','vi','vn',0,1,0),(3,'Arabic','ar','ar','ar',0,2,1);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'icon-1','icon-1',1,'image/png',1307,'product-categories/icon-1.png','[]','2023-04-08 19:13:38','2023-04-08 19:13:38',NULL),(2,0,'icon-10','icon-10',1,'image/png',1307,'product-categories/icon-10.png','[]','2023-04-08 19:13:38','2023-04-08 19:13:38',NULL),(3,0,'icon-11','icon-11',1,'image/png',1307,'product-categories/icon-11.png','[]','2023-04-08 19:13:38','2023-04-08 19:13:38',NULL),(4,0,'icon-12','icon-12',1,'image/png',1307,'product-categories/icon-12.png','[]','2023-04-08 19:13:39','2023-04-08 19:13:39',NULL),(5,0,'icon-13','icon-13',1,'image/png',1307,'product-categories/icon-13.png','[]','2023-04-08 19:13:39','2023-04-08 19:13:39',NULL),(6,0,'icon-14','icon-14',1,'image/png',1307,'product-categories/icon-14.png','[]','2023-04-08 19:13:39','2023-04-08 19:13:39',NULL),(7,0,'icon-2','icon-2',1,'image/png',1307,'product-categories/icon-2.png','[]','2023-04-08 19:13:39','2023-04-08 19:13:39',NULL),(8,0,'icon-3','icon-3',1,'image/png',1307,'product-categories/icon-3.png','[]','2023-04-08 19:13:39','2023-04-08 19:13:39',NULL),(9,0,'icon-4','icon-4',1,'image/png',1307,'product-categories/icon-4.png','[]','2023-04-08 19:13:39','2023-04-08 19:13:39',NULL),(10,0,'icon-5','icon-5',1,'image/png',1307,'product-categories/icon-5.png','[]','2023-04-08 19:13:39','2023-04-08 19:13:39',NULL),(11,0,'icon-6','icon-6',1,'image/png',1307,'product-categories/icon-6.png','[]','2023-04-08 19:13:39','2023-04-08 19:13:39',NULL),(12,0,'icon-7','icon-7',1,'image/png',1307,'product-categories/icon-7.png','[]','2023-04-08 19:13:39','2023-04-08 19:13:39',NULL),(13,0,'icon-8','icon-8',1,'image/png',1307,'product-categories/icon-8.png','[]','2023-04-08 19:13:39','2023-04-08 19:13:39',NULL),(14,0,'icon-9','icon-9',1,'image/png',1307,'product-categories/icon-9.png','[]','2023-04-08 19:13:39','2023-04-08 19:13:39',NULL),(15,0,'image-1','image-1',1,'image/png',1307,'product-categories/image-1.png','[]','2023-04-08 19:13:39','2023-04-08 19:13:39',NULL),(16,0,'image-10','image-10',1,'image/png',1307,'product-categories/image-10.png','[]','2023-04-08 19:13:39','2023-04-08 19:13:39',NULL),(17,0,'image-11','image-11',1,'image/png',1307,'product-categories/image-11.png','[]','2023-04-08 19:13:40','2023-04-08 19:13:40',NULL),(18,0,'image-12','image-12',1,'image/png',1307,'product-categories/image-12.png','[]','2023-04-08 19:13:40','2023-04-08 19:13:40',NULL),(19,0,'image-13','image-13',1,'image/png',1307,'product-categories/image-13.png','[]','2023-04-08 19:13:40','2023-04-08 19:13:40',NULL),(20,0,'image-14','image-14',1,'image/png',1307,'product-categories/image-14.png','[]','2023-04-08 19:13:40','2023-04-08 19:13:40',NULL),(21,0,'image-15','image-15',1,'image/png',1307,'product-categories/image-15.png','[]','2023-04-08 19:13:40','2023-04-08 19:13:40',NULL),(22,0,'image-2','image-2',1,'image/png',1307,'product-categories/image-2.png','[]','2023-04-08 19:13:40','2023-04-08 19:13:40',NULL),(23,0,'image-3','image-3',1,'image/png',1307,'product-categories/image-3.png','[]','2023-04-08 19:13:40','2023-04-08 19:13:40',NULL),(24,0,'image-4','image-4',1,'image/png',1307,'product-categories/image-4.png','[]','2023-04-08 19:13:40','2023-04-08 19:13:40',NULL),(25,0,'image-5','image-5',1,'image/png',1307,'product-categories/image-5.png','[]','2023-04-08 19:13:40','2023-04-08 19:13:40',NULL),(26,0,'image-6','image-6',1,'image/png',1307,'product-categories/image-6.png','[]','2023-04-08 19:13:40','2023-04-08 19:13:40',NULL),(27,0,'image-7','image-7',1,'image/png',1307,'product-categories/image-7.png','[]','2023-04-08 19:13:40','2023-04-08 19:13:40',NULL),(28,0,'image-8','image-8',1,'image/png',1307,'product-categories/image-8.png','[]','2023-04-08 19:13:40','2023-04-08 19:13:40',NULL),(29,0,'image-9','image-9',1,'image/png',1307,'product-categories/image-9.png','[]','2023-04-08 19:13:40','2023-04-08 19:13:40',NULL),(30,0,'1-1','1-1',2,'image/jpeg',2165,'products/1-1.jpg','[]','2023-04-08 19:13:41','2023-04-08 19:13:41',NULL),(31,0,'1','1',2,'image/jpeg',2165,'products/1.jpg','[]','2023-04-08 19:13:41','2023-04-08 19:13:41',NULL),(32,0,'10-1','10-1',2,'image/jpeg',2165,'products/10-1.jpg','[]','2023-04-08 19:13:41','2023-04-08 19:13:41',NULL),(33,0,'10','10',2,'image/jpeg',2165,'products/10.jpg','[]','2023-04-08 19:13:41','2023-04-08 19:13:41',NULL),(34,0,'11-1','11-1',2,'image/jpeg',2165,'products/11-1.jpg','[]','2023-04-08 19:13:41','2023-04-08 19:13:41',NULL),(35,0,'11','11',2,'image/jpeg',2165,'products/11.jpg','[]','2023-04-08 19:13:41','2023-04-08 19:13:41',NULL),(36,0,'12-1','12-1',2,'image/jpeg',2165,'products/12-1.jpg','[]','2023-04-08 19:13:41','2023-04-08 19:13:41',NULL),(37,0,'12','12',2,'image/jpeg',2165,'products/12.jpg','[]','2023-04-08 19:13:41','2023-04-08 19:13:41',NULL),(38,0,'13-1','13-1',2,'image/jpeg',2165,'products/13-1.jpg','[]','2023-04-08 19:13:42','2023-04-08 19:13:42',NULL),(39,0,'13','13',2,'image/jpeg',2165,'products/13.jpg','[]','2023-04-08 19:13:42','2023-04-08 19:13:42',NULL),(40,0,'14-1','14-1',2,'image/jpeg',2165,'products/14-1.jpg','[]','2023-04-08 19:13:42','2023-04-08 19:13:42',NULL),(41,0,'14','14',2,'image/jpeg',2165,'products/14.jpg','[]','2023-04-08 19:13:42','2023-04-08 19:13:42',NULL),(42,0,'15-1','15-1',2,'image/jpeg',2165,'products/15-1.jpg','[]','2023-04-08 19:13:42','2023-04-08 19:13:42',NULL),(43,0,'15','15',2,'image/jpeg',2165,'products/15.jpg','[]','2023-04-08 19:13:42','2023-04-08 19:13:42',NULL),(44,0,'16-1','16-1',2,'image/jpeg',2165,'products/16-1.jpg','[]','2023-04-08 19:13:42','2023-04-08 19:13:42',NULL),(45,0,'16-2','16-2',2,'image/jpeg',2165,'products/16-2.jpg','[]','2023-04-08 19:13:42','2023-04-08 19:13:42',NULL),(46,0,'16-3','16-3',2,'image/jpeg',2165,'products/16-3.jpg','[]','2023-04-08 19:13:42','2023-04-08 19:13:42',NULL),(47,0,'16-4','16-4',2,'image/jpeg',2165,'products/16-4.jpg','[]','2023-04-08 19:13:42','2023-04-08 19:13:42',NULL),(48,0,'16-5','16-5',2,'image/jpeg',2165,'products/16-5.jpg','[]','2023-04-08 19:13:42','2023-04-08 19:13:42',NULL),(49,0,'16-6','16-6',2,'image/jpeg',2165,'products/16-6.jpg','[]','2023-04-08 19:13:43','2023-04-08 19:13:43',NULL),(50,0,'16','16',2,'image/jpeg',2165,'products/16.jpg','[]','2023-04-08 19:13:43','2023-04-08 19:13:43',NULL),(51,0,'17-1','17-1',2,'image/jpeg',2165,'products/17-1.jpg','[]','2023-04-08 19:13:43','2023-04-08 19:13:43',NULL),(52,0,'17','17',2,'image/jpeg',2165,'products/17.jpg','[]','2023-04-08 19:13:43','2023-04-08 19:13:43',NULL),(53,0,'18-1','18-1',2,'image/jpeg',2165,'products/18-1.jpg','[]','2023-04-08 19:13:43','2023-04-08 19:13:43',NULL),(54,0,'18','18',2,'image/jpeg',2165,'products/18.jpg','[]','2023-04-08 19:13:43','2023-04-08 19:13:43',NULL),(55,0,'19-1','19-1',2,'image/jpeg',2165,'products/19-1.jpg','[]','2023-04-08 19:13:43','2023-04-08 19:13:43',NULL),(56,0,'19','19',2,'image/jpeg',2165,'products/19.jpg','[]','2023-04-08 19:13:43','2023-04-08 19:13:43',NULL),(57,0,'2-1','2-1',2,'image/jpeg',2165,'products/2-1.jpg','[]','2023-04-08 19:13:43','2023-04-08 19:13:43',NULL),(58,0,'2','2',2,'image/jpeg',2165,'products/2.jpg','[]','2023-04-08 19:13:43','2023-04-08 19:13:43',NULL),(59,0,'20-1','20-1',2,'image/jpeg',2165,'products/20-1.jpg','[]','2023-04-08 19:13:44','2023-04-08 19:13:44',NULL),(60,0,'20','20',2,'image/jpeg',2165,'products/20.jpg','[]','2023-04-08 19:13:44','2023-04-08 19:13:44',NULL),(61,0,'21-1','21-1',2,'image/jpeg',2165,'products/21-1.jpg','[]','2023-04-08 19:13:44','2023-04-08 19:13:44',NULL),(62,0,'21','21',2,'image/jpeg',2165,'products/21.jpg','[]','2023-04-08 19:13:44','2023-04-08 19:13:44',NULL),(63,0,'22-1','22-1',2,'image/jpeg',2165,'products/22-1.jpg','[]','2023-04-08 19:13:44','2023-04-08 19:13:44',NULL),(64,0,'22','22',2,'image/jpeg',2165,'products/22.jpg','[]','2023-04-08 19:13:44','2023-04-08 19:13:44',NULL),(65,0,'23-1','23-1',2,'image/jpeg',2165,'products/23-1.jpg','[]','2023-04-08 19:13:44','2023-04-08 19:13:44',NULL),(66,0,'23','23',2,'image/jpeg',2165,'products/23.jpg','[]','2023-04-08 19:13:44','2023-04-08 19:13:44',NULL),(67,0,'24-1','24-1',2,'image/jpeg',2165,'products/24-1.jpg','[]','2023-04-08 19:13:44','2023-04-08 19:13:44',NULL),(68,0,'24','24',2,'image/jpeg',2165,'products/24.jpg','[]','2023-04-08 19:13:44','2023-04-08 19:13:44',NULL),(69,0,'3-1','3-1',2,'image/jpeg',2165,'products/3-1.jpg','[]','2023-04-08 19:13:44','2023-04-08 19:13:44',NULL),(70,0,'3','3',2,'image/jpeg',2165,'products/3.jpg','[]','2023-04-08 19:13:45','2023-04-08 19:13:45',NULL),(71,0,'4-1','4-1',2,'image/jpeg',2165,'products/4-1.jpg','[]','2023-04-08 19:13:45','2023-04-08 19:13:45',NULL),(72,0,'4','4',2,'image/jpeg',2165,'products/4.jpg','[]','2023-04-08 19:13:45','2023-04-08 19:13:45',NULL),(73,0,'5-1','5-1',2,'image/jpeg',2165,'products/5-1.jpg','[]','2023-04-08 19:13:45','2023-04-08 19:13:45',NULL),(74,0,'5','5',2,'image/jpeg',2165,'products/5.jpg','[]','2023-04-08 19:13:45','2023-04-08 19:13:45',NULL),(75,0,'6-1','6-1',2,'image/jpeg',2165,'products/6-1.jpg','[]','2023-04-08 19:13:45','2023-04-08 19:13:45',NULL),(76,0,'6','6',2,'image/jpeg',2165,'products/6.jpg','[]','2023-04-08 19:13:45','2023-04-08 19:13:45',NULL),(77,0,'7-1','7-1',2,'image/jpeg',2165,'products/7-1.jpg','[]','2023-04-08 19:13:45','2023-04-08 19:13:45',NULL),(78,0,'7','7',2,'image/jpeg',2165,'products/7.jpg','[]','2023-04-08 19:13:45','2023-04-08 19:13:45',NULL),(79,0,'8-1','8-1',2,'image/jpeg',2165,'products/8-1.jpg','[]','2023-04-08 19:13:45','2023-04-08 19:13:45',NULL),(80,0,'8','8',2,'image/jpeg',2165,'products/8.jpg','[]','2023-04-08 19:13:46','2023-04-08 19:13:46',NULL),(81,0,'9-1','9-1',2,'image/jpeg',2165,'products/9-1.jpg','[]','2023-04-08 19:13:46','2023-04-08 19:13:46',NULL),(82,0,'9','9',2,'image/jpeg',2165,'products/9.jpg','[]','2023-04-08 19:13:46','2023-04-08 19:13:46',NULL),(83,0,'1','1',3,'image/jpeg',2165,'customers/1.jpg','[]','2023-04-08 19:13:47','2023-04-08 19:13:47',NULL),(84,0,'2','2',3,'image/jpeg',2165,'customers/2.jpg','[]','2023-04-08 19:13:47','2023-04-08 19:13:47',NULL),(85,0,'3','3',3,'image/jpeg',2165,'customers/3.jpg','[]','2023-04-08 19:13:47','2023-04-08 19:13:47',NULL),(86,0,'4','4',3,'image/jpeg',2165,'customers/4.jpg','[]','2023-04-08 19:13:47','2023-04-08 19:13:47',NULL),(87,0,'5','5',3,'image/jpeg',2165,'customers/5.jpg','[]','2023-04-08 19:13:47','2023-04-08 19:13:47',NULL),(88,0,'6','6',3,'image/jpeg',2165,'customers/6.jpg','[]','2023-04-08 19:13:47','2023-04-08 19:13:47',NULL),(89,0,'7','7',3,'image/jpeg',2165,'customers/7.jpg','[]','2023-04-08 19:13:47','2023-04-08 19:13:47',NULL),(90,0,'8','8',3,'image/jpeg',2165,'customers/8.jpg','[]','2023-04-08 19:13:48','2023-04-08 19:13:48',NULL),(91,0,'9','9',3,'image/jpeg',2165,'customers/9.jpg','[]','2023-04-08 19:13:48','2023-04-08 19:13:48',NULL),(92,0,'1','1',4,'image/png',3187,'flash-sales/1.png','[]','2023-04-08 19:13:49','2023-04-08 19:13:49',NULL),(93,0,'2','2',4,'image/png',2392,'flash-sales/2.png','[]','2023-04-08 19:13:49','2023-04-08 19:13:49',NULL),(94,0,'3','3',4,'image/png',2392,'flash-sales/3.png','[]','2023-04-08 19:13:49','2023-04-08 19:13:49',NULL),(95,0,'4','4',4,'image/png',2392,'flash-sales/4.png','[]','2023-04-08 19:13:49','2023-04-08 19:13:49',NULL),(96,0,'5','5',4,'image/png',2392,'flash-sales/5.png','[]','2023-04-08 19:13:49','2023-04-08 19:13:49',NULL),(97,0,'1-1','1-1',5,'image/png',10577,'sliders/1-1.png','[]','2023-04-08 19:13:49','2023-04-08 19:13:49',NULL),(98,0,'1-2','1-2',5,'image/png',10577,'sliders/1-2.png','[]','2023-04-08 19:13:50','2023-04-08 19:13:50',NULL),(99,0,'1-3','1-3',5,'image/png',2697,'sliders/1-3.png','[]','2023-04-08 19:13:50','2023-04-08 19:13:50',NULL),(100,0,'2-1','2-1',5,'image/png',4556,'sliders/2-1.png','[]','2023-04-08 19:13:50','2023-04-08 19:13:50',NULL),(101,0,'2-2','2-2',5,'image/png',4556,'sliders/2-2.png','[]','2023-04-08 19:13:50','2023-04-08 19:13:50',NULL),(102,0,'2-3','2-3',5,'image/png',2697,'sliders/2-3.png','[]','2023-04-08 19:13:50','2023-04-08 19:13:50',NULL),(103,0,'3-1','3-1',5,'image/png',10577,'sliders/3-1.png','[]','2023-04-08 19:13:50','2023-04-08 19:13:50',NULL),(104,0,'3-2','3-2',5,'image/png',10577,'sliders/3-2.png','[]','2023-04-08 19:13:50','2023-04-08 19:13:50',NULL),(105,0,'4-1','4-1',5,'image/png',10577,'sliders/4-1.png','[]','2023-04-08 19:13:51','2023-04-08 19:13:51',NULL),(106,0,'4-2','4-2',5,'image/png',10577,'sliders/4-2.png','[]','2023-04-08 19:13:51','2023-04-08 19:13:51',NULL),(107,0,'4-3','4-3',5,'image/png',2697,'sliders/4-3.png','[]','2023-04-08 19:13:51','2023-04-08 19:13:51',NULL),(108,0,'5-1','5-1',5,'image/png',5213,'sliders/5-1.png','[]','2023-04-08 19:13:51','2023-04-08 19:13:51',NULL),(109,0,'5-2','5-2',5,'image/png',5213,'sliders/5-2.png','[]','2023-04-08 19:13:51','2023-04-08 19:13:51',NULL),(110,0,'banner-1','banner-1',5,'image/png',12801,'sliders/banner-1.png','[]','2023-04-08 19:13:51','2023-04-08 19:13:51',NULL),(111,0,'thumbnail-1','thumbnail-1',5,'image/jpeg',2165,'sliders/thumbnail-1.jpg','[]','2023-04-08 19:13:52','2023-04-08 19:13:52',NULL),(112,0,'thumbnail-2','thumbnail-2',5,'image/jpeg',2165,'sliders/thumbnail-2.jpg','[]','2023-04-08 19:13:52','2023-04-08 19:13:52',NULL),(113,0,'thumbnail-3','thumbnail-3',5,'image/jpeg',2165,'sliders/thumbnail-3.jpg','[]','2023-04-08 19:13:52','2023-04-08 19:13:52',NULL),(114,0,'thumbnail-4','thumbnail-4',5,'image/jpeg',2165,'sliders/thumbnail-4.jpg','[]','2023-04-08 19:13:52','2023-04-08 19:13:52',NULL),(115,0,'thumbnail-5','thumbnail-5',5,'image/jpeg',2165,'sliders/thumbnail-5.jpg','[]','2023-04-08 19:13:52','2023-04-08 19:13:52',NULL),(116,0,'thumbnail-6','thumbnail-6',5,'image/jpeg',2165,'sliders/thumbnail-6.jpg','[]','2023-04-08 19:13:52','2023-04-08 19:13:52',NULL),(117,0,'1','1',6,'image/png',2165,'news/1.png','[]','2023-04-08 19:13:52','2023-04-08 19:13:52',NULL),(118,0,'10','10',6,'image/png',2165,'news/10.png','[]','2023-04-08 19:13:52','2023-04-08 19:13:52',NULL),(119,0,'11','11',6,'image/png',2165,'news/11.png','[]','2023-04-08 19:13:53','2023-04-08 19:13:53',NULL),(120,0,'2','2',6,'image/png',2165,'news/2.png','[]','2023-04-08 19:13:53','2023-04-08 19:13:53',NULL),(121,0,'3','3',6,'image/png',2165,'news/3.png','[]','2023-04-08 19:13:53','2023-04-08 19:13:53',NULL),(122,0,'4','4',6,'image/png',2165,'news/4.png','[]','2023-04-08 19:13:53','2023-04-08 19:13:53',NULL),(123,0,'5','5',6,'image/png',2165,'news/5.png','[]','2023-04-08 19:13:53','2023-04-08 19:13:53',NULL),(124,0,'6','6',6,'image/png',2165,'news/6.png','[]','2023-04-08 19:13:53','2023-04-08 19:13:53',NULL),(125,0,'7','7',6,'image/png',2165,'news/7.png','[]','2023-04-08 19:13:53','2023-04-08 19:13:53',NULL),(126,0,'8','8',6,'image/png',2165,'news/8.png','[]','2023-04-08 19:13:53','2023-04-08 19:13:53',NULL),(127,0,'9','9',6,'image/png',2165,'news/9.png','[]','2023-04-08 19:13:53','2023-04-08 19:13:53',NULL),(128,0,'1','1',7,'image/png',3010,'promotion/1.png','[]','2023-04-08 19:13:54','2023-04-08 19:13:54',NULL),(129,0,'10','10',7,'image/png',2722,'promotion/10.png','[]','2023-04-08 19:13:54','2023-04-08 19:13:54',NULL),(130,0,'11','11',7,'image/png',2722,'promotion/11.png','[]','2023-04-08 19:13:54','2023-04-08 19:13:54',NULL),(131,0,'12','12',7,'image/png',2722,'promotion/12.png','[]','2023-04-08 19:13:54','2023-04-08 19:13:54',NULL),(132,0,'2','2',7,'image/png',3010,'promotion/2.png','[]','2023-04-08 19:13:54','2023-04-08 19:13:54',NULL),(133,0,'3','3',7,'image/png',3010,'promotion/3.png','[]','2023-04-08 19:13:54','2023-04-08 19:13:54',NULL),(134,0,'4','4',7,'image/png',2266,'promotion/4.png','[]','2023-04-08 19:13:54','2023-04-08 19:13:54',NULL),(135,0,'5','5',7,'image/png',3847,'promotion/5.png','[]','2023-04-08 19:13:54','2023-04-08 19:13:54',NULL),(136,0,'6','6',7,'image/png',3847,'promotion/6.png','[]','2023-04-08 19:13:55','2023-04-08 19:13:55',NULL),(137,0,'7','7',7,'image/png',2905,'promotion/7.png','[]','2023-04-08 19:13:55','2023-04-08 19:13:55',NULL),(138,0,'8','8',7,'image/png',1926,'promotion/8.png','[]','2023-04-08 19:13:55','2023-04-08 19:13:55',NULL),(139,0,'9','9',7,'image/png',2722,'promotion/9.png','[]','2023-04-08 19:13:55','2023-04-08 19:13:55',NULL),(140,0,'app-store','app-store',8,'image/jpeg',1064,'general/app-store.jpg','[]','2023-04-08 19:13:55','2023-04-08 19:13:55',NULL),(141,0,'category-1','category-1',8,'image/png',231,'general/category-1.png','[]','2023-04-08 19:13:55','2023-04-08 19:13:55',NULL),(142,0,'facebook','facebook',8,'image/png',646,'general/facebook.png','[]','2023-04-08 19:13:55','2023-04-08 19:13:55',NULL),(143,0,'favicon','favicon',8,'image/png',3890,'general/favicon.png','[]','2023-04-08 19:13:55','2023-04-08 19:13:55',NULL),(144,0,'google-play','google-play',8,'image/jpeg',1064,'general/google-play.jpg','[]','2023-04-08 19:13:56','2023-04-08 19:13:56',NULL),(145,0,'header-bg','header-bg',8,'image/png',16995,'general/header-bg.png','[]','2023-04-08 19:13:56','2023-04-08 19:13:56',NULL),(146,0,'home-6','home-6',8,'image/jpeg',799491,'general/home-6.jpeg','[]','2023-04-08 19:13:56','2023-04-08 19:13:56',NULL),(147,0,'icon-1','icon-1',8,'image/png',2024,'general/icon-1.png','[]','2023-04-08 19:13:56','2023-04-08 19:13:56',NULL),(148,0,'icon-2','icon-2',8,'image/png',3531,'general/icon-2.png','[]','2023-04-08 19:13:56','2023-04-08 19:13:56',NULL),(149,0,'icon-3','icon-3',8,'image/png',2344,'general/icon-3.png','[]','2023-04-08 19:13:56','2023-04-08 19:13:56',NULL),(150,0,'icon-4','icon-4',8,'image/png',2314,'general/icon-4.png','[]','2023-04-08 19:13:56','2023-04-08 19:13:56',NULL),(151,0,'icon-5','icon-5',8,'image/png',2853,'general/icon-5.png','[]','2023-04-08 19:13:56','2023-04-08 19:13:56',NULL),(152,0,'instagram','instagram',8,'image/png',2586,'general/instagram.png','[]','2023-04-08 19:13:56','2023-04-08 19:13:56',NULL),(153,0,'loading','loading',8,'image/gif',25062,'general/loading.gif','[]','2023-04-08 19:13:56','2023-04-08 19:13:56',NULL),(154,0,'login-1','login-1',8,'image/png',3099,'general/login-1.png','[]','2023-04-08 19:13:56','2023-04-08 19:13:56',NULL),(155,0,'logo','logo',8,'image/png',16457,'general/logo.png','[]','2023-04-08 19:13:56','2023-04-08 19:13:56',NULL),(156,0,'newsletter-background-image','newsletter-background-image',8,'image/png',28409,'general/newsletter-background-image.png','[]','2023-04-08 19:13:57','2023-04-08 19:13:57',NULL),(157,0,'newsletter-image','newsletter-image',8,'image/png',3997,'general/newsletter-image.png','[]','2023-04-08 19:13:57','2023-04-08 19:13:57',NULL),(158,0,'open-graph-image','open-graph-image',8,'image/png',436809,'general/open-graph-image.png','[]','2023-04-08 19:13:57','2023-04-08 19:13:57',NULL),(159,0,'payment-methods','payment-methods',8,'image/png',268,'general/payment-methods.png','[]','2023-04-08 19:13:57','2023-04-08 19:13:57',NULL),(160,0,'pinterest','pinterest',8,'image/png',2128,'general/pinterest.png','[]','2023-04-08 19:13:57','2023-04-08 19:13:57',NULL),(161,0,'twitter','twitter',8,'image/png',1759,'general/twitter.png','[]','2023-04-08 19:13:57','2023-04-08 19:13:57',NULL),(162,0,'youtube','youtube',8,'image/png',1083,'general/youtube.png','[]','2023-04-08 19:13:57','2023-04-08 19:13:57',NULL),(163,0,'1','1',9,'image/png',1307,'stores/1.png','[]','2023-04-08 19:13:57','2023-04-08 19:13:57',NULL),(164,0,'10','10',9,'image/png',1307,'stores/10.png','[]','2023-04-08 19:13:57','2023-04-08 19:13:57',NULL),(165,0,'11','11',9,'image/png',1307,'stores/11.png','[]','2023-04-08 19:13:57','2023-04-08 19:13:57',NULL),(166,0,'12','12',9,'image/png',1307,'stores/12.png','[]','2023-04-08 19:13:58','2023-04-08 19:13:58',NULL),(167,0,'13','13',9,'image/png',1307,'stores/13.png','[]','2023-04-08 19:13:58','2023-04-08 19:13:58',NULL),(168,0,'14','14',9,'image/png',1307,'stores/14.png','[]','2023-04-08 19:13:58','2023-04-08 19:13:58',NULL),(169,0,'15','15',9,'image/png',1307,'stores/15.png','[]','2023-04-08 19:13:58','2023-04-08 19:13:58',NULL),(170,0,'16','16',9,'image/png',1307,'stores/16.png','[]','2023-04-08 19:13:58','2023-04-08 19:13:58',NULL),(171,0,'17','17',9,'image/png',1307,'stores/17.png','[]','2023-04-08 19:13:58','2023-04-08 19:13:58',NULL),(172,0,'2','2',9,'image/png',1307,'stores/2.png','[]','2023-04-08 19:13:58','2023-04-08 19:13:58',NULL),(173,0,'3','3',9,'image/png',1307,'stores/3.png','[]','2023-04-08 19:13:58','2023-04-08 19:13:58',NULL),(174,0,'4','4',9,'image/png',1307,'stores/4.png','[]','2023-04-08 19:13:58','2023-04-08 19:13:58',NULL),(175,0,'5','5',9,'image/png',1307,'stores/5.png','[]','2023-04-08 19:13:58','2023-04-08 19:13:58',NULL),(176,0,'6','6',9,'image/png',1307,'stores/6.png','[]','2023-04-08 19:13:58','2023-04-08 19:13:58',NULL),(177,0,'7','7',9,'image/png',1307,'stores/7.png','[]','2023-04-08 19:13:58','2023-04-08 19:13:58',NULL),(178,0,'8','8',9,'image/png',1307,'stores/8.png','[]','2023-04-08 19:13:58','2023-04-08 19:13:58',NULL),(179,0,'9','9',9,'image/png',1307,'stores/9.png','[]','2023-04-08 19:13:58','2023-04-08 19:13:58',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'product-categories','product-categories',0,'2023-04-08 19:13:38','2023-04-08 19:13:38',NULL),(2,0,'products','products',0,'2023-04-08 19:13:41','2023-04-08 19:13:41',NULL),(3,0,'customers','customers',0,'2023-04-08 19:13:47','2023-04-08 19:13:47',NULL),(4,0,'flash-sales','flash-sales',0,'2023-04-08 19:13:49','2023-04-08 19:13:49',NULL),(5,0,'sliders','sliders',0,'2023-04-08 19:13:49','2023-04-08 19:13:49',NULL),(6,0,'news','news',0,'2023-04-08 19:13:52','2023-04-08 19:13:52',NULL),(7,0,'promotion','promotion',0,'2023-04-08 19:13:54','2023-04-08 19:13:54',NULL),(8,0,'general','general',0,'2023-04-08 19:13:55','2023-04-08 19:13:55',NULL),(9,0,'stores','stores',0,'2023-04-08 19:13:57','2023-04-08 19:13:57',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2023-04-08 19:13:59','2023-04-08 19:13:59'),(2,2,'header-navigation','2023-04-08 19:13:59','2023-04-08 19:13:59'),(3,6,'main-menu','2023-04-08 19:13:59','2023-04-08 19:13:59'),(4,7,'header-navigation','2023-04-08 19:13:59','2023-04-08 19:13:59');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/','fi-rs-home',0,'Home',NULL,'_self',1,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(2,1,1,1,'Botble\\Page\\Models\\Page','/homepage',NULL,0,'Home 1',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(3,1,1,2,'Botble\\Page\\Models\\Page','/homepage-2',NULL,0,'Home 2',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(4,1,1,3,'Botble\\Page\\Models\\Page','/homepage-3',NULL,0,'Home 3',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(5,1,1,4,'Botble\\Page\\Models\\Page','/homepage-4',NULL,0,'Home 4',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(6,1,1,16,'Botble\\Page\\Models\\Page','/homepage-5',NULL,0,'Home 5',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(7,1,1,17,'Botble\\Page\\Models\\Page','/homepage-6',NULL,0,'Home 6',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(8,1,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',1,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(9,1,8,NULL,NULL,'/products',NULL,0,'Shop Grid - Full Width',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(10,1,8,NULL,NULL,'/products?layout=product-right-sidebar',NULL,0,'Shop Grid - Right Sidebar',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(11,1,8,NULL,NULL,'/products?layout=product-left-sidebar',NULL,0,'Shop Grid - Left Sidebar',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(12,1,8,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/milks-and-dairies',NULL,0,'Products Of Category',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(13,1,0,NULL,NULL,'/stores',NULL,0,'Stores',NULL,'_self',1,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(14,1,13,NULL,NULL,'/stores',NULL,0,'Stores - Grid',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(15,1,13,NULL,NULL,'/stores?layout=stores-list',NULL,0,'Stores - List',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(16,1,13,NULL,NULL,'/stores/gopro',NULL,0,'Store - Detail',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(17,1,0,NULL,NULL,'/products/seeds-of-change-organic-quinoe',NULL,0,'Product',NULL,'_self',1,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(18,1,17,NULL,NULL,'/products/seeds-of-change-organic-quinoe',NULL,0,'Product Right Sidebar',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(19,1,17,NULL,NULL,'/products/all-natural-italian-style-chicken-meatballs',NULL,0,'Product Left Sidebar',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(20,1,17,NULL,NULL,'/products/angies-boomchickapop-sweet-salty-kettle-corn',NULL,0,'Product Full Width',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(21,1,0,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',1,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(22,1,21,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog Grid',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(23,1,21,13,'Botble\\Page\\Models\\Page','/blog-list',NULL,0,'Blog List',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(24,1,21,14,'Botble\\Page\\Models\\Page','/blog-big',NULL,0,'Blog Big',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(25,1,21,15,'Botble\\Page\\Models\\Page','/blog-wide',NULL,0,'Blog Wide',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(26,1,21,NULL,NULL,'/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Single Post',NULL,'_self',1,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(27,1,26,NULL,NULL,'/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Single Post Right Sidebar',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(28,1,26,NULL,NULL,'/blog/sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',NULL,0,'Single Post Left Sidebar',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(29,1,26,NULL,NULL,'/blog/the-top-2020-handbag-trends-to-know',NULL,0,'Single Post Full Width',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(30,1,26,NULL,NULL,'/blog/how-to-match-the-color-of-your-handbag-with-an-outfit',NULL,0,'Single Post with Product Listing',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(31,1,0,18,'Botble\\Page\\Models\\Page','/faq',NULL,0,'FAQ',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(32,1,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(33,2,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About Us',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(34,2,0,NULL,NULL,'/orders/tracking',NULL,0,'Order Tracking',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(35,3,0,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/milks-and-dairies',NULL,0,'Men',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(36,3,0,2,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/clothing-beauty',NULL,0,'Women',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(37,3,0,3,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/pet-toy',NULL,0,'Accessories',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(38,3,0,4,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/baking-material',NULL,0,'Shoes',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(39,3,0,5,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/fresh-fruit',NULL,0,'Denim',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(40,3,0,6,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/wines-drinks',NULL,0,'Dress',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(41,4,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact Us',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(42,4,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About Us',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(43,4,0,8,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'Cookie Policy',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(44,4,0,9,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(45,4,0,10,'Botble\\Page\\Models\\Page','/returns-exchanges',NULL,0,'Returns & Exchanges',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(46,4,0,11,'Botble\\Page\\Models\\Page','/shipping-delivery',NULL,0,'Shipping & Delivery',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(47,4,0,12,'Botble\\Page\\Models\\Page','/privacy-policy',NULL,0,'Privacy Policy',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(48,5,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(49,5,0,NULL,NULL,'#',NULL,0,'Affiliate',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(50,5,0,NULL,NULL,'#',NULL,0,'Career',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(51,5,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact us',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(52,6,0,NULL,NULL,'/',NULL,0,'Trang chủ',NULL,'_self',1,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(53,6,52,1,'Botble\\Page\\Models\\Page','/homepage',NULL,0,'Trang chủ 1',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(54,6,52,2,'Botble\\Page\\Models\\Page','/homepage-2',NULL,0,'Trang chủ 2',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(55,6,52,3,'Botble\\Page\\Models\\Page','/homepage-3',NULL,0,'Trang chủ 3',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(56,6,52,4,'Botble\\Page\\Models\\Page','/homepage-4',NULL,0,'Trang chủ 4',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(57,6,52,16,'Botble\\Page\\Models\\Page','/homepage-5',NULL,0,'Trang chủ 5',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(58,6,52,17,'Botble\\Page\\Models\\Page','/homepage-6',NULL,0,'Trang chủ 6',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(59,6,0,NULL,NULL,'/products',NULL,0,'Bán hàng',NULL,'_self',1,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(60,6,59,NULL,NULL,'/products',NULL,0,'Tất cả sản phẩm',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(61,6,59,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/milks-and-dairies',NULL,0,'Danh mục sản phẩm',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(62,6,0,NULL,NULL,'/stores',NULL,0,'Cửa hàng',NULL,'_self',1,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(63,6,62,NULL,NULL,'/stores',NULL,0,'Cửa hàng - Grid',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(64,6,62,NULL,NULL,'/stores?layout=stores-list',NULL,0,'Cửa hàng - List',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(65,6,62,NULL,NULL,'/stores/gopro',NULL,0,'Cửa hàng - Detail',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(66,6,0,NULL,NULL,'#',NULL,0,'Sản phẩm',NULL,'_self',1,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(67,6,66,NULL,NULL,'/products/seeds-of-change-organic-quinoe',NULL,0,'Sản phẩm Sidebar phải',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(68,6,66,NULL,NULL,'/products/all-natural-italian-style-chicken-meatballs',NULL,0,'Sản phẩm Sidebar trái',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(69,6,66,NULL,NULL,'/products/angies-boomchickapop-sweet-salty-kettle-corn',NULL,0,'Sản phẩm full width',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(70,6,0,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức',NULL,'_self',1,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(71,6,70,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức Sidebar phải',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(72,6,70,13,'Botble\\Page\\Models\\Page','/blog-list',NULL,0,'Tin tức Sidebar trái',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(73,6,70,NULL,NULL,'/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Bài viết Sidebar phải',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(74,6,70,NULL,NULL,'/blog/sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',NULL,0,'Bài viết Sidebar trái',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(75,6,70,NULL,NULL,'/blog/the-top-2020-handbag-trends-to-know',NULL,0,'Bài viết Full Width',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(76,6,70,NULL,NULL,'/blog/how-to-match-the-color-of-your-handbag-with-an-outfit',NULL,0,'Bài viết kèm sản phẩm',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(77,6,0,18,'Botble\\Page\\Models\\Page','/faq',NULL,0,'FAQ',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(78,6,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(79,7,0,8,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'Về Chúng Tôi',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(80,7,0,NULL,NULL,'/orders/tracking',NULL,0,'Theo Dõi Đơn Hàng',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(81,8,0,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/milks-and-dairies',NULL,0,'Sữa',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(82,8,0,2,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/clothing-beauty',NULL,0,'Quần áo và làm đẹp',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(83,8,0,3,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/pet-toy',NULL,0,'Đồ chơi thú cưng',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(84,8,0,4,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/baking-material',NULL,0,'Nguyên liệu làm bánh',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(85,8,0,5,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/fresh-fruit',NULL,0,'Trái cây tươi',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(86,8,0,6,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/wines-drinks',NULL,0,'Rượu & Đồ uống',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(87,9,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(88,9,0,8,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'Về chúng tôi',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(89,9,0,9,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Điều khoản & quy định',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(90,9,0,10,'Botble\\Page\\Models\\Page','/returns-exchanges',NULL,0,'Chính sách đổi trả',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(91,9,0,11,'Botble\\Page\\Models\\Page','/shipping-delivery',NULL,0,'Chính sách vận chuyển',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(92,9,0,12,'Botble\\Page\\Models\\Page','/privacy-policy',NULL,0,'Chính sách bảo mật',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(93,10,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'Về chúng tôi',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(94,10,0,NULL,NULL,'#',NULL,0,'Tiếp thị liên kết',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(95,10,0,NULL,NULL,'#',NULL,0,'Tuyển dụng',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59'),(96,10,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2023-04-08 19:13:59','2023-04-08 19:13:59');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2023-04-08 19:13:59','2023-04-08 19:13:59'),(2,'Header menu','header-menu','published','2023-04-08 19:13:59','2023-04-08 19:13:59'),(3,'Product categories','product-categories','published','2023-04-08 19:13:59','2023-04-08 19:13:59'),(4,'Information','information','published','2023-04-08 19:13:59','2023-04-08 19:13:59'),(5,'Company','company','published','2023-04-08 19:13:59','2023-04-08 19:13:59'),(6,'Menu chính','menu-chinh','published','2023-04-08 19:13:59','2023-04-08 19:13:59'),(7,'Menu trên cùng','menu-tren-cung','published','2023-04-08 19:13:59','2023-04-08 19:13:59'),(8,'Product categories','danh-muc-san-pham','published','2023-04-08 19:13:59','2023-04-08 19:13:59'),(9,'Information','thong-tin','published','2023-04-08 19:13:59','2023-04-08 19:13:59'),(10,'Công ty','cong-ty','published','2023-04-08 19:13:59','2023-04-08 19:13:59');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'icon_image','[\"product-categories\\/icon-1.png\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2023-04-08 19:13:41','2023-04-08 19:13:41'),(2,'background_color','[\"#F2FCE4\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2023-04-08 19:13:41','2023-04-08 19:13:41'),(3,'icon_image','[\"product-categories\\/icon-2.png\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2023-04-08 19:13:41','2023-04-08 19:13:41'),(4,'background_color','[\"#FFFCEB\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2023-04-08 19:13:41','2023-04-08 19:13:41'),(5,'icon_image','[\"product-categories\\/icon-3.png\"]',3,'Botble\\Ecommerce\\Models\\ProductCategory','2023-04-08 19:13:41','2023-04-08 19:13:41'),(6,'background_color','[\"#ECFFEC\"]',3,'Botble\\Ecommerce\\Models\\ProductCategory','2023-04-08 19:13:41','2023-04-08 19:13:41'),(7,'icon_image','[\"product-categories\\/icon-4.png\"]',4,'Botble\\Ecommerce\\Models\\ProductCategory','2023-04-08 19:13:41','2023-04-08 19:13:41'),(8,'background_color','[\"#FEEFEA\"]',4,'Botble\\Ecommerce\\Models\\ProductCategory','2023-04-08 19:13:41','2023-04-08 19:13:41'),(9,'icon_image','[\"product-categories\\/icon-5.png\"]',5,'Botble\\Ecommerce\\Models\\ProductCategory','2023-04-08 19:13:41','2023-04-08 19:13:41'),(10,'background_color','[\"#FFF3EB\"]',5,'Botble\\Ecommerce\\Models\\ProductCategory','2023-04-08 19:13:41','2023-04-08 19:13:41'),(11,'icon_image','[\"product-categories\\/icon-6.png\"]',6,'Botble\\Ecommerce\\Models\\ProductCategory','2023-04-08 19:13:41','2023-04-08 19:13:41'),(12,'background_color','[\"#FFF3FF\"]',6,'Botble\\Ecommerce\\Models\\ProductCategory','2023-04-08 19:13:41','2023-04-08 19:13:41'),(13,'icon_image','[\"product-categories\\/icon-7.png\"]',7,'Botble\\Ecommerce\\Models\\ProductCategory','2023-04-08 19:13:41','2023-04-08 19:13:41'),(14,'background_color','[\"#F2FCE4\"]',7,'Botble\\Ecommerce\\Models\\ProductCategory','2023-04-08 19:13:41','2023-04-08 19:13:41'),(15,'icon_image','[\"product-categories\\/icon-8.png\"]',8,'Botble\\Ecommerce\\Models\\ProductCategory','2023-04-08 19:13:41','2023-04-08 19:13:41'),(16,'background_color','[\"#FFFCEB\"]',8,'Botble\\Ecommerce\\Models\\ProductCategory','2023-04-08 19:13:41','2023-04-08 19:13:41'),(17,'icon_image','[\"product-categories\\/icon-9.png\"]',9,'Botble\\Ecommerce\\Models\\ProductCategory','2023-04-08 19:13:41','2023-04-08 19:13:41'),(18,'background_color','[\"#ECFFEC\"]',9,'Botble\\Ecommerce\\Models\\ProductCategory','2023-04-08 19:13:41','2023-04-08 19:13:41'),(19,'icon_image','[\"product-categories\\/icon-10.png\"]',10,'Botble\\Ecommerce\\Models\\ProductCategory','2023-04-08 19:13:41','2023-04-08 19:13:41'),(20,'background_color','[\"#FEEFEA\"]',10,'Botble\\Ecommerce\\Models\\ProductCategory','2023-04-08 19:13:41','2023-04-08 19:13:41'),(21,'icon_image','[\"product-categories\\/icon-11.png\"]',11,'Botble\\Ecommerce\\Models\\ProductCategory','2023-04-08 19:13:41','2023-04-08 19:13:41'),(22,'background_color','[\"#FFF3EB\"]',11,'Botble\\Ecommerce\\Models\\ProductCategory','2023-04-08 19:13:41','2023-04-08 19:13:41'),(23,'icon_image','[\"product-categories\\/icon-12.png\"]',12,'Botble\\Ecommerce\\Models\\ProductCategory','2023-04-08 19:13:41','2023-04-08 19:13:41'),(24,'background_color','[\"#FFF3FF\"]',12,'Botble\\Ecommerce\\Models\\ProductCategory','2023-04-08 19:13:41','2023-04-08 19:13:41'),(25,'icon_image','[\"product-categories\\/icon-13.png\"]',13,'Botble\\Ecommerce\\Models\\ProductCategory','2023-04-08 19:13:41','2023-04-08 19:13:41'),(26,'background_color','[\"#F2FCE4\"]',13,'Botble\\Ecommerce\\Models\\ProductCategory','2023-04-08 19:13:41','2023-04-08 19:13:41'),(27,'icon_image','[\"product-categories\\/icon-14.png\"]',14,'Botble\\Ecommerce\\Models\\ProductCategory','2023-04-08 19:13:41','2023-04-08 19:13:41'),(28,'background_color','[\"#FFFCEB\"]',14,'Botble\\Ecommerce\\Models\\ProductCategory','2023-04-08 19:13:41','2023-04-08 19:13:41'),(29,'layout','[\"product-right-sidebar\"]',1,'Botble\\Ecommerce\\Models\\Product','2023-04-08 19:13:46','2023-04-08 19:13:46'),(30,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',1,'Botble\\Ecommerce\\Models\\Product','2023-04-08 19:13:46','2023-04-08 19:13:46'),(31,'layout','[\"product-left-sidebar\"]',2,'Botble\\Ecommerce\\Models\\Product','2023-04-08 19:13:46','2023-04-08 19:13:46'),(32,'is_popular','[\"1\"]',2,'Botble\\Ecommerce\\Models\\Product','2023-04-08 19:13:46','2023-04-08 19:13:46'),(33,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',2,'Botble\\Ecommerce\\Models\\Product','2023-04-08 19:13:46','2023-04-08 19:13:46'),(34,'layout','[\"product-full-width\"]',3,'Botble\\Ecommerce\\Models\\Product','2023-04-08 19:13:46','2023-04-08 19:13:46'),(35,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',3,'Botble\\Ecommerce\\Models\\Product','2023-04-08 19:13:46','2023-04-08 19:13:46'),(36,'is_popular','[\"1\"]',4,'Botble\\Ecommerce\\Models\\Product','2023-04-08 19:13:46','2023-04-08 19:13:46'),(37,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',4,'Botble\\Ecommerce\\Models\\Product','2023-04-08 19:13:46','2023-04-08 19:13:46'),(38,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',5,'Botble\\Ecommerce\\Models\\Product','2023-04-08 19:13:46','2023-04-08 19:13:46'),(39,'is_popular','[\"1\"]',6,'Botble\\Ecommerce\\Models\\Product','2023-04-08 19:13:46','2023-04-08 19:13:46'),(40,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',6,'Botble\\Ecommerce\\Models\\Product','2023-04-08 19:13:46','2023-04-08 19:13:46'),(41,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',7,'Botble\\Ecommerce\\Models\\Product','2023-04-08 19:13:46','2023-04-08 19:13:46'),(42,'is_popular','[\"1\"]',8,'Botble\\Ecommerce\\Models\\Product','2023-04-08 19:13:46','2023-04-08 19:13:46'),(43,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',8,'Botble\\Ecommerce\\Models\\Product','2023-04-08 19:13:46','2023-04-08 19:13:46'),(44,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',9,'Botble\\Ecommerce\\Models\\Product','2023-04-08 19:13:46','2023-04-08 19:13:46'),(45,'is_popular','[\"1\"]',10,'Botble\\Ecommerce\\Models\\Product','2023-04-08 19:13:46','2023-04-08 19:13:46'),(46,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',10,'Botble\\Ecommerce\\Models\\Product','2023-04-08 19:13:46','2023-04-08 19:13:46'),(47,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',11,'Botble\\Ecommerce\\Models\\Product','2023-04-08 19:13:46','2023-04-08 19:13:46'),(48,'is_popular','[\"1\"]',12,'Botble\\Ecommerce\\Models\\Product','2023-04-08 19:13:46','2023-04-08 19:13:46'),(49,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',12,'Botble\\Ecommerce\\Models\\Product','2023-04-08 19:13:46','2023-04-08 19:13:46'),(50,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',13,'Botble\\Ecommerce\\Models\\Product','2023-04-08 19:13:46','2023-04-08 19:13:46'),(51,'is_popular','[\"1\"]',14,'Botble\\Ecommerce\\Models\\Product','2023-04-08 19:13:46','2023-04-08 19:13:46'),(52,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',14,'Botble\\Ecommerce\\Models\\Product','2023-04-08 19:13:46','2023-04-08 19:13:46'),(53,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',15,'Botble\\Ecommerce\\Models\\Product','2023-04-08 19:13:46','2023-04-08 19:13:46'),(54,'is_popular','[\"1\"]',16,'Botble\\Ecommerce\\Models\\Product','2023-04-08 19:13:46','2023-04-08 19:13:46'),(55,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',16,'Botble\\Ecommerce\\Models\\Product','2023-04-08 19:13:46','2023-04-08 19:13:46'),(56,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',17,'Botble\\Ecommerce\\Models\\Product','2023-04-08 19:13:46','2023-04-08 19:13:46'),(57,'is_popular','[\"1\"]',18,'Botble\\Ecommerce\\Models\\Product','2023-04-08 19:13:46','2023-04-08 19:13:46'),(58,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',18,'Botble\\Ecommerce\\Models\\Product','2023-04-08 19:13:46','2023-04-08 19:13:46'),(59,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',19,'Botble\\Ecommerce\\Models\\Product','2023-04-08 19:13:46','2023-04-08 19:13:46'),(60,'is_popular','[\"1\"]',20,'Botble\\Ecommerce\\Models\\Product','2023-04-08 19:13:46','2023-04-08 19:13:46'),(61,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',20,'Botble\\Ecommerce\\Models\\Product','2023-04-08 19:13:46','2023-04-08 19:13:46'),(62,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',21,'Botble\\Ecommerce\\Models\\Product','2023-04-08 19:13:46','2023-04-08 19:13:46'),(63,'is_popular','[\"1\"]',22,'Botble\\Ecommerce\\Models\\Product','2023-04-08 19:13:46','2023-04-08 19:13:46'),(64,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',22,'Botble\\Ecommerce\\Models\\Product','2023-04-08 19:13:46','2023-04-08 19:13:46'),(65,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',23,'Botble\\Ecommerce\\Models\\Product','2023-04-08 19:13:46','2023-04-08 19:13:46'),(66,'is_popular','[\"1\"]',24,'Botble\\Ecommerce\\Models\\Product','2023-04-08 19:13:46','2023-04-08 19:13:46'),(67,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',24,'Botble\\Ecommerce\\Models\\Product','2023-04-08 19:13:46','2023-04-08 19:13:46'),(68,'image','[\"flash-sales\\/1.png\"]',1,'Botble\\Ecommerce\\Models\\FlashSale','2023-04-08 19:13:49','2023-04-08 19:13:49'),(69,'image','[\"flash-sales\\/2.png\"]',2,'Botble\\Ecommerce\\Models\\FlashSale','2023-04-08 19:13:49','2023-04-08 19:13:49'),(70,'image','[\"flash-sales\\/3.png\"]',3,'Botble\\Ecommerce\\Models\\FlashSale','2023-04-08 19:13:49','2023-04-08 19:13:49'),(71,'image','[\"flash-sales\\/4.png\"]',4,'Botble\\Ecommerce\\Models\\FlashSale','2023-04-08 19:13:49','2023-04-08 19:13:49'),(72,'image','[\"flash-sales\\/5.png\"]',5,'Botble\\Ecommerce\\Models\\FlashSale','2023-04-08 19:13:49','2023-04-08 19:13:49'),(73,'vi_image','[\"flash-sales\\/1.png\"]',1,'Botble\\Ecommerce\\Models\\FlashSale','2023-04-08 19:13:49','2023-04-08 19:13:49'),(74,'vi_image','[\"flash-sales\\/2.png\"]',2,'Botble\\Ecommerce\\Models\\FlashSale','2023-04-08 19:13:49','2023-04-08 19:13:49'),(75,'vi_image','[\"flash-sales\\/3.png\"]',3,'Botble\\Ecommerce\\Models\\FlashSale','2023-04-08 19:13:49','2023-04-08 19:13:49'),(76,'vi_image','[\"flash-sales\\/4.png\"]',4,'Botble\\Ecommerce\\Models\\FlashSale','2023-04-08 19:13:49','2023-04-08 19:13:49'),(77,'vi_image','[\"flash-sales\\/5.png\"]',5,'Botble\\Ecommerce\\Models\\FlashSale','2023-04-08 19:13:49','2023-04-08 19:13:49'),(78,'simple_slider_style','[\"style-4\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-04-08 19:13:52','2023-04-08 19:13:52'),(79,'simple_slider_style','[\"style-2\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-04-08 19:13:52','2023-04-08 19:13:52'),(80,'simple_slider_style','[\"style-3\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-04-08 19:13:52','2023-04-08 19:13:52'),(81,'simple_slider_style','[\"style-1\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-04-08 19:13:52','2023-04-08 19:13:52'),(82,'simple_slider_style','[\"style-5\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-04-08 19:13:52','2023-04-08 19:13:52'),(83,'simple_slider_style','[\"style-6\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-04-08 19:13:52','2023-04-08 19:13:52'),(84,'simple_slider_style','[\"style-1\"]',7,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-04-08 19:13:52','2023-04-08 19:13:52'),(85,'simple_slider_style','[\"style-4\"]',8,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-04-08 19:13:52','2023-04-08 19:13:52'),(86,'simple_slider_style','[\"style-2\"]',9,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-04-08 19:13:52','2023-04-08 19:13:52'),(87,'simple_slider_style','[\"style-3\"]',10,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-04-08 19:13:52','2023-04-08 19:13:52'),(88,'simple_slider_style','[\"style-1\"]',11,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-04-08 19:13:52','2023-04-08 19:13:52'),(89,'simple_slider_style','[\"style-5\"]',12,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-04-08 19:13:52','2023-04-08 19:13:52'),(90,'simple_slider_style','[\"style-6\"]',13,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-04-08 19:13:52','2023-04-08 19:13:52'),(91,'simple_slider_style','[\"style-1\"]',14,'Botble\\SimpleSlider\\Models\\SimpleSlider','2023-04-08 19:13:52','2023-04-08 19:13:52'),(92,'layout','[\"blog-post-right-sidebar\"]',1,'Botble\\Blog\\Models\\Post','2023-04-08 19:13:53','2023-04-08 19:13:53'),(93,'layout','[\"blog-post-left-sidebar\"]',2,'Botble\\Blog\\Models\\Post','2023-04-08 19:13:53','2023-04-08 19:13:53'),(94,'layout','[\"blog-post-full-width\"]',3,'Botble\\Blog\\Models\\Post','2023-04-08 19:13:53','2023-04-08 19:13:53'),(95,'layout','[\"blog-post-full-width\"]',4,'Botble\\Blog\\Models\\Post','2023-04-08 19:13:53','2023-04-08 19:13:53'),(96,'header_style','[\"header-style-5\"]',16,'Botble\\Page\\Models\\Page','2023-04-08 19:13:54','2023-04-08 19:13:54'),(97,'header_style','[\"header-style-5\"]',17,'Botble\\Page\\Models\\Page','2023-04-08 19:13:54','2023-04-08 19:13:54'),(98,'button_text','[\"Shop now\"]',1,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(99,'subtitle','[\"Everyday Fresh & \\nClean with Our \\nProducts\"]',1,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(100,'button_text','[\"Shop now\"]',2,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(101,'subtitle','[\"Make your Breakfast Healthy and Easy\"]',2,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(102,'button_text','[\"Shop now\"]',3,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(103,'subtitle','[\"The best Organic Products Online\"]',3,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(104,'button_text','[\"Shop now\"]',4,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(105,'subtitle','[\"Bring nature into your home\"]',4,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(106,'button_text','[\"Shop now\"]',5,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(107,'subtitle','[\"Delivered to your home\"]',5,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(108,'button_text','[\"Shop now\"]',6,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(109,'subtitle','[\"Save 17% <br \\/>on Oganic <br \\/>Juice\"]',6,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(110,'button_text','[\"Shop now\"]',7,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(111,'subtitle','[\"Everyday Fresh & Clean with Our Products\"]',7,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(112,'button_text','[\"Shop now\"]',8,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(113,'subtitle','[\"The best Organic Products Online\"]',8,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(114,'button_text','[\"Go to supplier\"]',9,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(115,'subtitle','[\"Everyday Fresh with\\n Our Products\"]',9,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(116,'button_text','[\"Go to supplier\"]',10,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(117,'subtitle','[\"100% guaranteed all\\n Fresh items\"]',10,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(118,'button_text','[\"Go to supplier\"]',11,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(119,'subtitle','[\"Special grocery sale\\n off this month\"]',11,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(120,'button_text','[\"Go to supplier\"]',12,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(121,'subtitle','[\"Enjoy 15% OFF for all\\n vegetable and fruit\"]',12,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(122,'vi_subtitle','[\"S\\u1ea1ch s\\u1ebd h\\u00e0ng ng\\u00e0y v\\u1edbi \\nc\\u00e1c s\\u1ea3n ph\\u1ea9m c\\u1ee7a \\nch\\u00fang t\\u00f4i\"]',1,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(123,'vi_button_text','[\"Mua ngay\"]',1,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(124,'vi_subtitle','[\"N\\u1eabu b\\u1eefa s\\u00e1ng c\\u1ee7a b\\u1ea1n l\\u00e0nh m\\u1ea1nh v\\u00e0 d\\u1ec5 d\\u00e0ng\"]',2,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(125,'vi_button_text','[\"Mua ngay\"]',2,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(126,'vi_subtitle','[\"C\\u00e1c s\\u1ea3n ph\\u1ea9m h\\u1eefu c\\u01a1 t\\u1ed1t nh\\u1ea5t tr\\u1ef1c tuy\\u1ebfn\"]',3,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(127,'vi_button_text','[\"Mua ngay\"]',3,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(128,'vi_subtitle','[\"Mang thi\\u00ean nhi\\u00ean v\\u00e0o ng\\u00f4i nh\\u00e0 c\\u1ee7a b\\u1ea1n\"]',4,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(129,'vi_button_text','[\"Mua ngay\"]',4,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(130,'vi_subtitle','[\"Giao t\\u1eadn nh\\u00e0\"]',5,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(131,'vi_button_text','[\"Mua ngay\"]',5,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(132,'vi_subtitle','[\"Ti\\u1ebft ki\\u1ec7m 17% <br \\/> khi mua N\\u01b0\\u1edbc \\u00e9p <br \\/> Oganic\"]',6,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(133,'vi_button_text','[\"Mua ngay\"]',6,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(134,'vi_subtitle','[\"T\\u01b0\\u01a1i v\\u00e0 S\\u1ea1ch h\\u00e0ng ng\\u00e0y v\\u1edbi c\\u00e1c s\\u1ea3n ph\\u1ea9m c\\u1ee7a ch\\u00fang t\\u00f4i\"]',7,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(135,'vi_button_text','[\"Shop now\"]',7,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(136,'vi_subtitle','[\"C\\u00e1c s\\u1ea3n ph\\u1ea9m h\\u1eefu c\\u01a1 t\\u1ed1t nh\\u1ea5t tr\\u1ef1c tuy\\u1ebfn\"]',8,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(137,'vi_button_text','[\"Shop now\"]',8,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(138,'vi_subtitle','[\"T\\u01b0\\u01a1i m\\u1edbi m\\u1ed7i ng\\u00e0y v\\u1edbi\\n c\\u00e1c s\\u1ea3n ph\\u1ea9m c\\u1ee7a ch\\u00fang t\\u00f4i\"]',9,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(139,'vi_button_text','[\"\\u0110i \\u0111\\u1ebfn nh\\u00e0 cung c\\u1ea5p\"]',9,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(140,'vi_subtitle','[\"100% \\u0111\\u1ea3m b\\u1ea3o t\\u1ea5t c\\u1ea3\\n c\\u00e1c m\\u1eb7t h\\u00e0ng t\\u01b0\\u01a1i\"]',10,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(141,'vi_button_text','[\"\\u0110i \\u0111\\u1ebfn nh\\u00e0 cung c\\u1ea5p\"]',10,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(142,'vi_subtitle','[\"Gi\\u1ea3m gi\\u00e1 h\\u00e0ng t\\u1ea1p h\\u00f3a\\n \\u0111\\u1eb7c bi\\u1ec7t trong th\\u00e1ng n\\u00e0y\"]',11,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(143,'vi_button_text','[\"\\u0110i \\u0111\\u1ebfn nh\\u00e0 cung c\\u1ea5p\"]',11,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(144,'vi_subtitle','[\"GI\\u1ea2M GI\\u00c1 15% cho t\\u1ea5t c\\u1ea3\\n rau v\\u00e0 tr\\u00e1i c\\u00e2y\"]',12,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(145,'vi_button_text','[\"\\u0110i \\u0111\\u1ebfn nh\\u00e0 cung c\\u1ea5p\"]',12,'Botble\\Ads\\Models\\Ads','2023-04-08 19:13:55','2023-04-08 19:13:55'),(146,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',1,'Botble\\Marketplace\\Models\\Store','2023-04-08 19:13:59','2023-04-08 19:13:59'),(147,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',2,'Botble\\Marketplace\\Models\\Store','2023-04-08 19:13:59','2023-04-08 19:13:59'),(148,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',3,'Botble\\Marketplace\\Models\\Store','2023-04-08 19:13:59','2023-04-08 19:13:59'),(149,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',4,'Botble\\Marketplace\\Models\\Store','2023-04-08 19:13:59','2023-04-08 19:13:59');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2022_04_20_100851_add_index_to_media_table',1),(17,'2022_04_20_101046_add_index_to_menu_table',1),(18,'2022_07_10_034813_move_lang_folder_to_root',1),(19,'2022_08_04_051940_add_missing_column_expires_at',1),(20,'2022_09_01_000001_create_admin_notifications_tables',1),(21,'2022_10_14_024629_drop_column_is_featured',1),(22,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(23,'2022_12_02_093615_update_slug_index_columns',1),(24,'2023_01_30_024431_add_alt_to_media_table',1),(25,'2023_02_16_042611_drop_table_password_resets',1),(26,'2020_11_18_150916_ads_create_ads_table',2),(27,'2021_12_02_035301_add_ads_translations_table',2),(28,'2015_06_29_025744_create_audit_history',3),(29,'2015_06_18_033822_create_blog_table',4),(30,'2021_02_16_092633_remove_default_value_for_author_type',4),(31,'2021_12_03_030600_create_blog_translations',4),(32,'2022_04_19_113923_add_index_to_table_posts',4),(33,'2016_06_17_091537_create_contacts_table',5),(34,'2020_03_05_041139_create_ecommerce_tables',6),(35,'2021_01_01_044147_ecommerce_create_flash_sale_table',6),(36,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',6),(37,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',6),(38,'2021_02_18_073505_update_table_ec_reviews',6),(39,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',6),(40,'2021_03_10_025153_change_column_tax_amount',6),(41,'2021_03_20_033103_add_column_availability_to_table_ec_products',6),(42,'2021_04_28_074008_ecommerce_create_product_label_table',6),(43,'2021_05_31_173037_ecommerce_create_ec_products_translations',6),(44,'2021_06_28_153141_correct_slugs_data',6),(45,'2021_08_17_105016_remove_column_currency_id_in_some_tables',6),(46,'2021_08_30_142128_add_images_column_to_ec_reviews_table',6),(47,'2021_09_01_115151_remove_unused_fields_in_ec_products',6),(48,'2021_10_04_030050_add_column_created_by_to_table_ec_products',6),(49,'2021_10_05_122616_add_status_column_to_ec_customers_table',6),(50,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',6),(51,'2021_11_23_071403_correct_languages_for_product_variations',6),(52,'2021_11_28_031808_add_product_tags_translations',6),(53,'2021_12_01_031123_add_featured_image_to_ec_products',6),(54,'2022_01_01_033107_update_table_ec_shipments',6),(55,'2022_02_16_042457_improve_product_attribute_sets',6),(56,'2022_03_22_075758_correct_product_name',6),(57,'2022_04_19_113334_add_index_to_ec_products',6),(58,'2022_04_28_144405_remove_unused_table',6),(59,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',6),(60,'2022_05_18_143720_add_index_to_table_ec_product_categories',6),(61,'2022_06_16_095633_add_index_to_some_tables',6),(62,'2022_06_30_035148_create_order_referrals_table',6),(63,'2022_07_24_153815_add_completed_at_to_ec_orders_table',6),(64,'2022_08_14_032836_create_ec_order_returns_table',6),(65,'2022_08_14_033554_create_ec_order_return_items_table',6),(66,'2022_08_15_040324_add_billing_address',6),(67,'2022_08_30_091114_support_digital_products_table',6),(68,'2022_09_13_095744_create_options_table',6),(69,'2022_09_13_104347_create_option_value_table',6),(70,'2022_10_05_163518_alter_table_ec_order_product',6),(71,'2022_10_12_041517_create_invoices_table',6),(72,'2022_10_12_142226_update_orders_table',6),(73,'2022_10_13_024916_update_table_order_returns',6),(74,'2022_10_21_030830_update_columns_in_ec_shipments_table',6),(75,'2022_10_28_021046_update_columns_in_ec_shipments_table',6),(76,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',6),(77,'2022_11_19_041643_add_ec_tax_product_table',6),(78,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',6),(79,'2022_12_17_041532_fix_address_in_order_invoice',6),(80,'2022_12_26_070329_create_ec_product_views_table',6),(81,'2023_01_04_033051_fix_product_categories',6),(82,'2023_01_09_050400_add_ec_global_options_translations_table',6),(83,'2023_01_10_093754_add_missing_option_value_id',6),(84,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',6),(85,'2023_01_26_021854_add_ec_customer_used_coupons_table',6),(86,'2023_02_08_015900_update_options_column_in_ec_order_product_table',6),(87,'2023_02_27_095752_remove_duplicate_reviews',6),(88,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',6),(89,'2018_07_09_221238_create_faq_table',7),(90,'2021_12_03_082134_create_faq_translations',7),(91,'2016_10_03_032336_create_languages_table',8),(92,'2021_10_25_021023_fix-priority-load-for-language-advanced',9),(93,'2021_12_03_075608_create_page_translations',9),(94,'2019_11_18_061011_create_country_table',10),(95,'2021_12_03_084118_create_location_translations',10),(96,'2021_12_03_094518_migrate_old_location_data',10),(97,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',10),(98,'2022_01_16_085908_improve_plugin_location',10),(99,'2022_08_04_052122_delete_location_backup_tables',10),(100,'2022_10_29_065232_increase_states_abbreviation_column',10),(101,'2022_11_06_061847_increase_state_translations_abbreviation_column',10),(102,'2021_07_06_030002_create_marketplace_table',11),(103,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',11),(104,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',11),(105,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',11),(106,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',11),(107,'2021_12_06_031304_update_table_mp_customer_revenues',11),(108,'2022_10_19_152916_add_columns_to_mp_stores_table',11),(109,'2022_10_20_062849_create_mp_category_sale_commissions_table',11),(110,'2022_11_02_071413_add_more_info_for_store',11),(111,'2022_11_02_080444_add_tax_info',11),(112,'2023_02_01_062030_add_store_translations',11),(113,'2023_02_13_032133_update_fee_column_mp_customer_revenues_table',11),(114,'2023_02_17_023648_fix_store_prefix',11),(115,'2017_10_24_154832_create_newsletter_table',12),(116,'2017_05_18_080441_create_payment_tables',13),(117,'2021_03_27_144913_add_customer_type_into_table_payments',13),(118,'2021_05_24_034720_make_column_currency_nullable',13),(119,'2021_08_09_161302_add_metadata_column_to_payments_table',13),(120,'2021_10_19_020859_update_metadata_field',13),(121,'2022_06_28_151901_activate_paypal_stripe_plugin',13),(122,'2022_07_07_153354_update_charge_id_in_table_payments',13),(123,'2017_07_11_140018_create_simple_slider_table',14),(124,'2016_10_07_193005_create_translations_table',15);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_category_sale_commissions`
--

DROP TABLE IF EXISTS `mp_category_sale_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_category_sale_commissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint unsigned NOT NULL,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mp_category_sale_commissions_product_category_id_unique` (`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_category_sale_commissions`
--

LOCK TABLES `mp_category_sale_commissions` WRITE;
/*!40000 ALTER TABLE `mp_category_sale_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_category_sale_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
INSERT INTO `mp_customer_revenues` VALUES (1,10,1,126.00,0.00,126.00,0.00,'USD',NULL,'2023-04-07 15:14:00','2023-04-07 15:14:00',0,NULL),(2,10,3,126.00,0.00,126.00,126.00,'USD',NULL,'2023-04-06 19:14:00','2023-04-06 19:14:00',0,NULL),(3,7,5,333.00,0.00,333.00,0.00,'USD',NULL,'2023-04-03 19:14:01','2023-04-03 19:14:01',0,NULL),(4,2,6,124.00,0.00,124.00,0.00,'USD',NULL,'2023-04-04 03:14:01','2023-04-04 03:14:01',0,NULL),(5,10,7,378.00,0.00,378.00,252.00,'USD',NULL,'2023-04-04 19:14:01','2023-04-04 19:14:01',0,NULL),(6,5,10,123.00,0.00,123.00,0.00,'USD',NULL,'2023-04-06 23:14:01','2023-04-06 23:14:01',0,NULL),(7,5,18,360.00,0.00,360.00,123.00,'USD',NULL,'2023-03-23 23:14:01','2023-03-23 23:14:01',0,NULL),(8,7,20,360.00,0.00,360.00,333.00,'USD',NULL,'2023-04-07 01:14:01','2023-04-07 01:14:01',0,NULL),(9,5,22,345.00,0.00,345.00,483.00,'USD',NULL,'2023-03-20 15:14:01','2023-03-20 15:14:01',0,NULL),(10,7,23,456.00,0.00,456.00,693.00,'USD',NULL,'2023-03-29 19:14:02','2023-03-29 19:14:02',0,NULL),(11,2,29,476.00,0.00,476.00,124.00,'USD',NULL,'2023-03-24 19:14:02','2023-03-24 19:14:02',0,NULL),(12,7,33,369.00,0.00,369.00,1149.00,'USD',NULL,'2023-03-17 03:14:02','2023-03-17 03:14:02',0,NULL),(13,10,36,252.00,0.00,252.00,630.00,'USD',NULL,'2023-03-08 23:14:02','2023-03-08 23:14:02',0,NULL),(14,5,40,585.00,0.00,585.00,828.00,'USD',NULL,'2023-03-19 07:14:02','2023-03-19 07:14:02',0,NULL),(15,7,41,209.00,0.00,209.00,1518.00,'USD',NULL,'2023-03-18 19:14:02','2023-03-18 19:14:02',0,NULL),(16,10,42,351.00,0.00,351.00,882.00,'USD',NULL,'2023-03-18 07:14:03','2023-03-18 07:14:03',0,NULL),(17,2,44,120.00,0.00,120.00,600.00,'USD',NULL,'2023-04-01 07:14:03','2023-04-01 07:14:03',0,NULL);
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
INSERT INTO `mp_customer_withdrawals` VALUES (1,2,0.00,193.00,720.00,'USD','','{\"name\":\"Madeline Gaylord\",\"number\":\"+17579747422\",\"full_name\":\"Araceli Huels\",\"description\":\"Harry Schmeler\"}',NULL,0,'processing',NULL,'2023-04-08 19:14:03','2023-04-08 19:14:03',NULL),(2,2,0.00,65.00,527.00,'USD','','{\"name\":\"Madeline Gaylord\",\"number\":\"+17579747422\",\"full_name\":\"Araceli Huels\",\"description\":\"Harry Schmeler\"}',NULL,0,'completed',NULL,'2023-04-08 19:14:03','2023-04-08 19:14:03',NULL),(3,2,0.00,116.00,462.00,'USD','','{\"name\":\"Madeline Gaylord\",\"number\":\"+17579747422\",\"full_name\":\"Araceli Huels\",\"description\":\"Harry Schmeler\"}',NULL,0,'pending',NULL,'2023-04-08 19:14:03','2023-04-08 19:14:03',NULL),(4,2,0.00,96.00,346.00,'USD','','{\"name\":\"Madeline Gaylord\",\"number\":\"+17579747422\",\"full_name\":\"Araceli Huels\",\"description\":\"Harry Schmeler\"}',NULL,0,'pending',NULL,'2023-04-08 19:14:03','2023-04-08 19:14:03',NULL),(5,5,0.00,103.00,1413.00,'USD','','{\"name\":\"Alphonso Huel I\",\"number\":\"+12406147245\",\"full_name\":\"Maud Jacobi\",\"description\":\"Alexandria Strosin IV\"}',NULL,0,'pending',NULL,'2023-04-08 19:14:04','2023-04-08 19:14:04',NULL),(6,5,0.00,24.00,1310.00,'USD','','{\"name\":\"Alphonso Huel I\",\"number\":\"+12406147245\",\"full_name\":\"Maud Jacobi\",\"description\":\"Alexandria Strosin IV\"}',NULL,0,'completed',NULL,'2023-04-08 19:14:04','2023-04-08 19:14:04',NULL),(7,7,0.00,280.00,1727.00,'USD','','{\"name\":\"Syble Jast DVM\",\"number\":\"+16068959024\",\"full_name\":\"Trycia Hoppe PhD\",\"description\":\"Russel Gaylord\"}',NULL,0,'processing',NULL,'2023-04-08 19:14:04','2023-04-08 19:14:04',NULL),(8,7,0.00,175.00,1447.00,'USD','','{\"name\":\"Syble Jast DVM\",\"number\":\"+16068959024\",\"full_name\":\"Trycia Hoppe PhD\",\"description\":\"Russel Gaylord\"}',NULL,0,'completed',NULL,'2023-04-08 19:14:04','2023-04-08 19:14:04',NULL),(9,7,0.00,138.00,1272.00,'USD','','{\"name\":\"Syble Jast DVM\",\"number\":\"+16068959024\",\"full_name\":\"Trycia Hoppe PhD\",\"description\":\"Russel Gaylord\"}',NULL,0,'pending',NULL,'2023-04-08 19:14:04','2023-04-08 19:14:04',NULL),(10,7,0.00,332.00,1134.00,'USD','','{\"name\":\"Syble Jast DVM\",\"number\":\"+16068959024\",\"full_name\":\"Trycia Hoppe PhD\",\"description\":\"Russel Gaylord\"}',NULL,0,'processing',NULL,'2023-04-08 19:14:04','2023-04-08 19:14:04',NULL),(11,10,0.00,230.00,1233.00,'USD','','{\"name\":\"Raquel Lakin\",\"number\":\"+18288652681\",\"full_name\":\"David Carroll\",\"description\":\"Cecile Bosco\"}',NULL,0,'pending',NULL,'2023-04-08 19:14:05','2023-04-08 19:14:05',NULL),(12,10,0.00,5.00,1003.00,'USD','','{\"name\":\"Raquel Lakin\",\"number\":\"+18288652681\",\"full_name\":\"David Carroll\",\"description\":\"Cecile Bosco\"}',NULL,0,'processing',NULL,'2023-04-08 19:14:05','2023-04-08 19:14:05',NULL),(13,10,0.00,59.00,998.00,'USD','','{\"name\":\"Raquel Lakin\",\"number\":\"+18288652681\",\"full_name\":\"David Carroll\",\"description\":\"Cecile Bosco\"}',NULL,0,'processing',NULL,'2023-04-08 19:14:05','2023-04-08 19:14:05',NULL);
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','aaliyah.damore@example.net','+16502708972','569 Denis Skyway Apt. 263','ZA','Massachusetts','Titusberg',2,'stores/1.png','Porro sed possimus consectetur.','Quis magnam fuga id vel. Et fugit fugit occaecati minus. Repellendus et ullam et iure. Et quasi eum ut impedit sit ut.','published',NULL,'2023-04-08 19:13:59','2023-04-08 19:13:59',NULL,NULL),(2,'Global Office','runte.cathrine@example.com','+17313044730','7035 Broderick Wall','IS','Maine','Wintheiserview',5,'stores/2.png','Aut dolore saepe odio eaque voluptate.','Ut vel vero vitae eum. Iste in molestias aut recusandae. A est consequuntur et et aut ab fuga.','published',NULL,'2023-04-08 19:13:59','2023-04-08 19:13:59',NULL,NULL),(3,'Young Shop','henderson82@example.net','+13867348748','56507 Hermiston Place Apt. 650','DO','Kansas','Goyetteshire',7,'stores/3.png','Eius non quisquam vel in cum.','Deserunt qui et quisquam minima nesciunt quos. Ipsum enim corrupti sed aut suscipit id. Cum veritatis blanditiis corporis et quod.','published',NULL,'2023-04-08 19:13:59','2023-04-08 19:13:59',NULL,NULL),(4,'Global Store','jaylen48@example.org','+17819645587','56275 Gulgowski Fields Apt. 922','LU','Georgia','Linneaborough',10,'stores/4.png','Qui nulla qui deleniti suscipit.','Distinctio qui deleniti ut est ea. Ex eius laboriosam est. Quos aut quod rem corrupti.','published',NULL,'2023-04-08 19:13:59','2023-04-08 19:13:59',NULL,NULL);
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores_translations`
--

DROP TABLE IF EXISTS `mp_stores_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mp_stores_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`mp_stores_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores_translations`
--

LOCK TABLES `mp_stores_translations` WRITE;
/*!40000 ALTER TABLE `mp_stores_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_stores_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT 'bank_transfer',
  `tax_info` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,250.00,0.00,720.00,'$2y$10$zFECdbM.0hQyYUNkGOt0we7EDm/kl9GThe7.2jQtoitoL6EdC2ZWO','{\"name\":\"Madeline Gaylord\",\"number\":\"+17579747422\",\"full_name\":\"Araceli Huels\",\"description\":\"Harry Schmeler\"}','2023-04-08 19:13:59','2023-04-08 19:14:04','bank_transfer',NULL),(2,5,1286.00,0.00,1413.00,'$2y$10$evAnCtn2hhC/xdUl25ITIOOn1Q7hr5vshqO3j0NvKJyAXDFxKhbqu','{\"name\":\"Alphonso Huel I\",\"number\":\"+12406147245\",\"full_name\":\"Maud Jacobi\",\"description\":\"Alexandria Strosin IV\"}','2023-04-08 19:13:59','2023-04-08 19:14:04','bank_transfer',NULL),(3,7,802.00,0.00,1727.00,'$2y$10$dkNglShon6tnJ2PT75rXMu5xCTFtgyoW9tiHUnBmijx2X.l.l4NGG','{\"name\":\"Syble Jast DVM\",\"number\":\"+16068959024\",\"full_name\":\"Trycia Hoppe PhD\",\"description\":\"Russel Gaylord\"}','2023-04-08 19:13:59','2023-04-08 19:14:05','bank_transfer',NULL),(4,10,939.00,0.00,1233.00,'$2y$10$sWEhzTnPcIIuIrj27eGsyeoiFSHRksQ47X4NJ8oXe.3yspNFkXxwO','{\"name\":\"Raquel Lakin\",\"number\":\"+18288652681\",\"full_name\":\"David Carroll\",\"description\":\"Cecile Bosco\"}','2023-04-08 19:13:59','2023-04-08 19:14:05','bank_transfer',NULL);
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage','<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2023-04-08 19:13:54','2023-04-08 19:13:54'),(2,'Homepage 2','<div>[simple-slider key=\"home-slider-2\" ads_1=\"IZ6WU8KUALYH\" show_newsletter_form=\"yes\" cover_image=\"sliders/banner-1.png\"][/simple-slider]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div>',1,NULL,'homepage',NULL,'published','2023-04-08 19:13:54','2023-04-08 19:13:54'),(3,'Homepage 3','<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2023-04-08 19:13:54','2023-04-08 19:13:54'),(4,'Homepage 4','<div>[simple-slider key=\"home-slider-4\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2023-04-08 19:13:54','2023-04-08 19:13:54'),(5,'Blog','<p>---</p>',1,NULL,'blog-grid',NULL,'published','2023-04-08 19:13:54','2023-04-08 19:13:54'),(6,'Contact','<p>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</p><p>[our-offices][/our-offices]</p><p>[contact-form][/contact-form]</p>',1,NULL,'default',NULL,'published','2023-04-08 19:13:54','2023-04-08 19:13:54'),(7,'About us','<p>Dormouse, without considering at all comfortable, and it sat down with wonder at the Caterpillar\'s making such a thing I ever heard!\' \'Yes, I think you\'d take a fancy to herself in a louder tone. \'ARE you to set about it; and the soldiers had to leave off this minute!\' She generally gave herself very good height indeed!\' said the Duchess: \'flamingoes and mustard both bite. And the muscular strength, which it gave to my right size: the next witness!\' said the Cat, and vanished. Alice was rather.</p><p>I only knew how to begin.\' For, you see, Alice had got to do,\' said the youth, \'one would hardly suppose That your eye was as steady as ever; Yet you turned a corner, \'Oh my ears and whiskers, how late it\'s getting!\' She was a different person then.\' \'Explain all that,\' he said to herself. (Alice had been looking over his shoulder with some surprise that the best of educations--in fact, we went to school every day--\' \'I\'VE been to the Cheshire Cat sitting on a crimson velvet cushion; and, last.</p><p>I get it home?\' when it saw Alice. It looked good-natured, she thought: still it was too dark to see that she was going off into a conversation. \'You don\'t know where Dinn may be,\' said the last time she found it advisable--\"\' \'Found WHAT?\' said the Eaglet. \'I don\'t think--\' \'Then you should say \"With what porpoise?\"\' \'Don\'t you mean that you weren\'t to talk to.\' \'How are you getting on now, my dear?\' it continued, turning to Alice an excellent plan, no doubt, and very angrily. \'A knot!\' said.</p><p>Mock Turtle said: \'advance twice, set to work shaking him and punching him in the sea. The master was an uncomfortably sharp chin. However, she got into the wood to listen. The Fish-Footman began by producing from under his arm a great many more than that, if you could draw treacle out of a book,\' thought Alice to herself, for she thought, and looked into its mouth and began bowing to the garden door. Poor Alice! It was so long since she had finished, her sister was reading, but it said.</p>',1,NULL,'right-sidebar',NULL,'published','2023-04-08 19:13:54','2023-04-08 19:13:54'),(8,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2023-04-08 19:13:54','2023-04-08 19:13:54'),(9,'Terms &amp; Conditions','<p>But do cats eat bats?\' and sometimes, \'Do bats eat cats?\' for, you see, so many tea-things are put out here?\' she asked. \'Yes, that\'s it,\' said the Mock Turtle Soup is made from,\' said the Duchess. \'Everything\'s got a moral, if only you can find them.\' As she said this, she noticed that the way out of its voice. \'Back to land again, and she set to work throwing everything within her reach at the picture.) \'Up, lazy thing!\' said the Duchess, the Duchess! Oh! won\'t she be savage if I\'ve been.</p><p>Rabbit hastily interrupted. \'There\'s a great hurry. \'You did!\' said the Hatter, with an air of great relief. \'Now at OURS they had to pinch it to his ear. Alice considered a little bit, and said \'What else have you executed, whether you\'re a little three-legged table, all made of solid glass; there was the Cat went on, turning to Alice to herself, \'Which way? Which way?\', holding her hand in hand, in couples: they were filled with tears running down his brush, and had come back in a hoarse.</p><p>Alice rather unwillingly took the hookah out of sight: \'but it seems to like her, down here, that I should be raving mad after all! I almost wish I hadn\'t cried so much!\' Alas! it was labelled \'ORANGE MARMALADE\', but to get out of its right paw round, \'lives a Hatter: and in despair she put it. She stretched herself up and walking off to the Queen, but she did not venture to ask the question?\' said the King. \'I can\'t explain it,\' said the King, \'that saves a world of trouble, you know, upon.</p><p>Mouse, sharply and very soon came to ME, and told me you had been to a shriek, \'and just as well to say it out again, and all dripping wet, cross, and uncomfortable. The moment Alice felt that it would be quite absurd for her neck from being run over; and the poor little thing was to find that she could not possibly reach it: she could do to come yet, please your Majesty,\' said Two, in a more subdued tone, and she looked up and ran the faster, while more and more puzzled, but she gained.</p>',1,NULL,'default',NULL,'published','2023-04-08 19:13:54','2023-04-08 19:13:54'),(10,'Returns &amp; Exchanges','<p>White Rabbit was no longer to be almost out of its mouth open, gazing up into the way the people near the looking-glass. There was not even room for this, and after a minute or two. \'They couldn\'t have done that, you know,\' the Mock Turtle yet?\' \'No,\' said the Mock Turtle had just upset the week before. \'Oh, I beg your pardon!\' cried Alice in a deep, hollow tone: \'sit down, both of you, and don\'t speak a word till I\'ve finished.\' So they began moving about again, and that\'s very like having a.</p><p>Alice asked. \'We called him a fish)--and rapped loudly at the March Hare will be When they take us up and to wonder what I see\"!\' \'You might just as she had not attended to this last remark, \'it\'s a vegetable. It doesn\'t look like one, but it was her turn or not. So she tucked her arm affectionately into Alice\'s, and they all spoke at once, in a day is very confusing.\' \'It isn\'t,\' said the Knave, \'I didn\'t write it, and burning with curiosity, she ran with all her knowledge of history, Alice.</p><p>Ugh, Serpent!\' \'But I\'m NOT a serpent!\' said Alice hastily; \'but I\'m not used to say.\' \'So he did, so he did,\' said the Mouse had changed his mind, and was going to give the hedgehog to, and, as the March Hare. The Hatter was the first day,\' said the King. \'When did you begin?\' The Hatter shook his head sadly. \'Do I look like one, but the Dormouse denied nothing, being fast asleep. \'After that,\' continued the Gryphon. \'Then, you know,\' said the March Hare meekly replied. \'Yes, but some crumbs.</p><p>Dodo could not help bursting out laughing: and when she noticed a curious croquet-ground in her haste, she had never before seen a rabbit with either a waistcoat-pocket, or a watch to take the roof off.\' After a while she ran, as well go in at the window, I only knew the meaning of it at all. \'But perhaps he can\'t help it,\' said the King said to herself, \'if one only knew how to begin.\' For, you see, Miss, this here ought to go from here?\' \'That depends a good thing!\' she said to herself; \'his.</p>',1,NULL,'default',NULL,'published','2023-04-08 19:13:54','2023-04-08 19:13:54'),(11,'Shipping &amp; Delivery','<p>I\'ll get into that beautiful garden--how IS that to be otherwise than what it might belong to one of the Queen\'s shrill cries to the end: then stop.\' These were the cook, to see how he did not at all like the wind, and was going to leave off being arches to do THAT in a piteous tone. And she tried to fancy what the moral of that is--\"Oh, \'tis love, \'tis love, \'tis love, \'tis love, that makes the matter on, What would become of you? I gave her one, they gave him two, You gave us three or more.</p><p>I know?\' said Alice, seriously, \'I\'ll have nothing more to come, so she waited. The Gryphon lifted up both its paws in surprise. \'What! Never heard of \"Uglification,\"\' Alice ventured to remark. \'Tut, tut, child!\' said the Mock Turtle: \'why, if a fish came to the Knave of Hearts, she made it out into the earth. At last the Mock Turtle drew a long way. So she tucked it away under her arm, that it had no reason to be sure, she had sat down a very little! Besides, SHE\'S she, and I\'m sure she\'s the.</p><p>I\'ll eat it,\' said the Caterpillar took the hookah out of sight: then it chuckled. \'What fun!\' said the Pigeon; \'but I must go by the carrier,\' she thought; \'and how funny it\'ll seem, sending presents to one\'s own feet! And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then she walked sadly down the little door into that lovely garden. I think I can find them.\' As she said to one of them.\'.</p><p>Dormouse,\' the Queen merely remarking as it was quite pale (with passion, Alice thought), and it said nothing. \'Perhaps it doesn\'t matter a bit,\' said the Caterpillar. \'Well, perhaps you were never even spoke to Time!\' \'Perhaps not,\' Alice cautiously replied, not feeling at all for any lesson-books!\' And so she took up the little dears came jumping merrily along hand in hand, in couples: they were filled with cupboards and book-shelves; here and there. There was not going to do next, when.</p>',1,NULL,'default',NULL,'published','2023-04-08 19:13:54','2023-04-08 19:13:54'),(12,'Privacy Policy','<p>And he added in an undertone to the voice of the hall; but, alas! either the locks were too large, or the key was lying on the spot.\' This did not dare to disobey, though she knew she had never seen such a thing before, but she saw maps and pictures hung upon pegs. She took down a good way off, and found that it might end, you know,\' said the Duck. \'Found IT,\' the Mouse heard this, it turned round and swam slowly back again, and she trembled till she fancied she heard it before,\' said the.</p><p>Alice started to her feet, for it flashed across her mind that she began again. \'I should like to drop the jar for fear of their hearing her; and the little crocodile Improve his shining tail, And pour the waters of the country is, you see, Miss, this here ought to have finished,\' said the King. Here one of them even when they arrived, with a melancholy air, and, after folding his arms and legs in all my life!\' She had not noticed before, and he hurried off. Alice thought she might as well.</p><p>I would talk on such a pleasant temper, and thought to herself how she would manage it. \'They were obliged to write this down on one side, to look at me like that!\' He got behind him, and said to herself; \'his eyes are so VERY wide, but she did not answer, so Alice ventured to ask. \'Suppose we change the subject. \'Go on with the other side of the sort. Next came the royal children, and make out that it led into the garden at once; but, alas for poor Alice! when she got up this morning? I.</p><p>King said, turning to Alice. \'Only a thimble,\' said Alice in a very poor speaker,\' said the Mock Turtle drew a long and a Long Tale They were indeed a queer-looking party that assembled on the hearth and grinning from ear to ear. \'Please would you like the look of the house!\' (Which was very hot, she kept tossing the baby violently up and rubbed its eyes: then it chuckled. \'What fun!\' said the Hatter. \'You might just as if he had taken his watch out of their hearing her; and when she was.</p>',1,NULL,'default',NULL,'published','2023-04-08 19:13:54','2023-04-08 19:13:54'),(13,'Blog List','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-list',NULL,'published','2023-04-08 19:13:54','2023-04-08 19:13:54'),(14,'Blog Big','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-big',NULL,'published','2023-04-08 19:13:54','2023-04-08 19:13:54'),(15,'Blog Wide','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-wide',NULL,'published','2023-04-08 19:13:54','2023-04-08 19:13:54'),(16,'Homepage 5','<div>[simple-slider key=\"home-slider-5\" ads_1=\"IZ6WU8KUALYJ\" ads_2=\"IZ6WU8KUALYK\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYL\" ads_2=\"IZ6WU8KUALYM\" ads_3=\"IZ6WU8KUALYN\" ads_4=\"IZ6WU8KUALYO\" style=\"style-5\"][/theme-ads]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2023-04-08 19:13:54','2023-04-08 19:13:54'),(17,'Homepage 6','<div>[big-banner cover_image=\"general/home-6.jpeg\" show_newsletter_form=\"yes\" number_display_featured_categories=\"4\" title=\"What are you looking for?\"][/big-banner]</div><div>[trending-products title=\"Trending items\" limit=\"20\"][/trending-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2023-04-08 19:13:54','2023-04-08 19:13:54'),(18,'Faq','<div>[faqs][/faqs]</div>',1,NULL,'default',NULL,'published','2023-04-08 19:13:54','2023-04-08 19:13:54');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
INSERT INTO `pages_translations` VALUES ('vi',1,'Trang chủ',NULL,'<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Sản phẩm phổ biến\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[best-flash-sale title=\"Bán chạy nhất hàng ngày\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>'),('vi',2,'Trang chủ 2',NULL,'<div>[simple-slider key=\"home-slider-2\" ads_1=\"IZ6WU8KUALYH\" show_newsletter_form=\"yes\" cover_image=\"sliders/banner-1.png\"][/simple-slider]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Sản phẩm phổ biến\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[best-flash-sale title=\"Bán chạy nhất hàng ngày\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div><div>[product-categories title=\"Mua sắm theo danh mục\"][/product-categories]</div>'),('vi',3,'Trang chủ 3',NULL,'<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Sản phẩm phổ biến\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Mua sắm theo danh mục\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>'),('vi',4,'Trang chủ 4',NULL,'<div>[simple-slider key=\"home-slider-4\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Sản phẩm phổ biến\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Mua sắm theo danh mục\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>'),('vi',5,'Tin tức',NULL,'<p>---</p>'),('vi',6,'Liên hệ',NULL,'<p>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</p><p>[our-offices][/our-offices]</p><p>[contact-form][/contact-form]</p>'),('vi',7,'Về chúng tôi',NULL,'<p>I think--\' (she was so ordered about in a trembling voice to its children, \'Come away, my dears! It\'s high time you were never even spoke to Time!\' \'Perhaps not,\' Alice cautiously replied, not feeling at all know whether it would make with the tea,\' the Hatter began, in rather a hard word, I will tell you just now what the next verse.\' \'But about his toes?\' the Mock Turtle in a voice outside, and stopped to listen. The Fish-Footman began by taking the little golden key, and unlocking the door.</p><p>Hatter, \'or you\'ll be asleep again before it\'s done.\' \'Once upon a little glass table. \'Now, I\'ll manage better this time,\' she said to the Mock Turtle. \'Very much indeed,\' said Alice. \'I mean what I was thinking I should think!\' (Dinah was the first verse,\' said the Hatter: \'but you could draw treacle out of a tree. By the time they were mine before. If I or she should chance to be nothing but the Dormouse say?\' one of the house till she fancied she heard the Rabbit was still in existence.</p><p>Alice. \'Come on, then!\' roared the Queen, who was a little way out of a candle is blown out, for she was talking. \'How CAN I have ordered\'; and she trembled till she too began dreaming after a few minutes, and began whistling. \'Oh, there\'s no use denying it. I suppose you\'ll be asleep again before it\'s done.\' \'Once upon a low trembling voice, \'--and I hadn\'t quite finished my tea when I was going to do it! Oh dear! I shall fall right THROUGH the earth! How funny it\'ll seem, sending presents to.</p><p>For instance, suppose it doesn\'t matter much,\' thought Alice, \'to pretend to be told so. \'It\'s really dreadful,\' she muttered to herself, \'I wish you would seem to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was THAT like?\' said Alice. \'Exactly so,\' said Alice. \'Of course not,\' said the King; \'and don\'t look at a king,\' said Alice. \'I wonder what Latitude or Longitude I\'ve got back to the table, but there was nothing else to do, and in another moment down.</p>'),('vi',8,'Chính sách cookie',NULL,'<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>'),('vi',9,'Điều kiện và điều khoản',NULL,'<p>Hatter. \'Does YOUR watch tell you his history,\' As they walked off together, Alice heard it say to itself \'The Duchess! The Duchess! Oh my dear paws! Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have dropped them, I wonder?\' And here Alice began to say it out to sea!\" But the insolence of his teacup and bread-and-butter, and went back to yesterday, because I was a sound of a muchness\"--did you ever eat a bat?\' when suddenly, thump! thump! down she.</p><p>I think?\' he said to herself, \'I don\'t see any wine,\' she remarked. \'There isn\'t any,\' said the White Rabbit, who said in a long, low hall, which was the Hatter. Alice felt so desperate that she wanted much to know, but the great question is, what?\' The great question certainly was, what? Alice looked all round the court and got behind him, and said \'No, never\') \'--so you can have no answers.\' \'If you knew Time as well as she was in the prisoner\'s handwriting?\' asked another of the hall; but.</p><p>I only knew how to speak again. In a little bottle on it, (\'which certainly was not a moment that it might not escape again, and we put a white one in by mistake; and if it please your Majesty!\' the soldiers remaining behind to execute the unfortunate gardeners, who ran to Alice with one eye; but to get in?\' she repeated, aloud. \'I must be removed,\' said the sage, as he spoke. \'UNimportant, of course, Alice could not be denied, so she took up the conversation a little. \'\'Tis so,\' said the.</p><p>Alice. \'Off with her friend. When she got to see if there were three little sisters,\' the Dormouse followed him: the March Hare. \'Then it doesn\'t matter much,\' thought Alice, \'or perhaps they won\'t walk the way out of sight; and an Eaglet, and several other curious creatures. Alice led the way, and nothing seems to suit them!\' \'I haven\'t the slightest idea,\' said the Duchess, as she added, \'and the moral of THAT is--\"Take care of the thing yourself, some winter day, I will prosecute.</p>'),('vi',10,'Chính sách trả hàng',NULL,'<p>Gryphon only answered \'Come on!\' and ran till she was talking. Alice could bear: she got up in spite of all this time, and was suppressed. \'Come, that finished the guinea-pigs!\' thought Alice. \'I\'ve read that in the shade: however, the moment she felt that this could not remember ever having seen in her French lesson-book. The Mouse looked at Alice, and her eyes filled with cupboards and book-shelves; here and there was mouth enough for it flashed across her mind that she had succeeded in.</p><p>King. \'When did you manage on the look-out for serpents night and day! Why, I haven\'t had a VERY turn-up nose, much more like a telescope! I think I must have been changed several times since then.\' \'What do you know about this business?\' the King replied. Here the other was sitting on a little way out of court! Suppress him! Pinch him! Off with his head!\"\' \'How dreadfully savage!\' exclaimed Alice. \'And where HAVE my shoulders got to? And oh, I wish I could shut up like a tunnel for some time.</p><p>Gryphon is, look at all for any lesson-books!\' And so she bore it as to the jury, who instantly made a snatch in the wind, and the three gardeners at it, busily painting them red. Alice thought to herself. (Alice had been all the party were placed along the passage into the book her sister on the second time round, she came upon a neat little house, on the Duchess\'s cook. She carried the pepper-box in her own child-life, and the Queen, and Alice thought over all the jurymen are back in a tone.</p><p>Do cats eat bats?\' and sometimes, \'Do bats eat cats?\' for, you see, because some of them were animals, and some \'unimportant.\' Alice could see, when she got to the beginning again?\' Alice ventured to ask. \'Suppose we change the subject. \'Ten hours the first verse,\' said the White Rabbit blew three blasts on the look-out for serpents night and day! Why, I wouldn\'t be so proud as all that.\' \'With extras?\' asked the Gryphon, with a pair of white kid gloves: she took courage, and went on again.</p>'),('vi',11,'Chính sách vận chuyển',NULL,'<p>Why, she\'ll eat a little way out of its mouth again, and we put a white one in by mistake; and if I must, I must,\' the King added in a soothing tone: \'don\'t be angry about it. And yet I don\'t know the meaning of half those long words, and, what\'s more, I don\'t want to get dry again: they had a vague sort of idea that they could not taste theirs, and the King repeated angrily, \'or I\'ll have you executed, whether you\'re a little startled by seeing the Cheshire Cat sitting on the bank, and of.</p><p>English coast you find a thing,\' said the Mock Turtle at last, and they lived at the mushroom (she had grown so large in the flurry of the singers in the common way. So she was now about two feet high: even then she walked sadly down the middle, being held up by wild beasts and other unpleasant things, all because they WOULD not remember ever having heard of one,\' said Alice. \'Then you shouldn\'t talk,\' said the Duchess, \'as pigs have to ask any more questions about it, and found herself in the.</p><p>Alice said; \'there\'s a large pool all round her head. Still she went down to them, and it\'ll sit up and walking off to the tarts on the floor, as it went. So she began fancying the sort of life! I do so like that curious song about the twentieth time that day. \'That PROVES his guilt,\' said the Duchess; \'I never went to the game. CHAPTER IX. The Mock Turtle at last, with a little pattering of feet in a fight with another dig of her hedgehog. The hedgehog was engaged in a natural way. \'I thought.</p><p>March Hare. \'Exactly so,\' said the Mock Turtle. \'Certainly not!\' said Alice to herself, as she could, and waited to see the earth takes twenty-four hours to turn into a small passage, not much surprised at her for a dunce? Go on!\' \'I\'m a poor man, your Majesty,\' he began, \'for bringing these in: but I grow up, I\'ll write one--but I\'m grown up now,\' she added aloud. \'Do you take me for asking! No, it\'ll never do to hold it. As soon as look at the stick, running a very grave voice, \'until all.</p>'),('vi',12,'Chính sách bảo mật',NULL,'<p>Hatter went on without attending to her, though, as they used to it in a hoarse growl, \'the world would go anywhere without a great crowd assembled about them--all sorts of little animals and birds waiting outside. The poor little Lizard, Bill, was in managing her flamingo: she succeeded in getting its body tucked away, comfortably enough, under her arm, that it felt quite unhappy at the Caterpillar\'s making such a very pretty dance,\' said Alice hastily; \'but I\'m not used to know. Let me see.</p><p>Mouse\'s tail; \'but why do you want to go! Let me see: that would happen: \'\"Miss Alice! Come here directly, and get ready to ask any more HERE.\' \'But then,\' thought she, \'if people had all to lie down on one side, to look for her, and the second verse of the birds and beasts, as well she might, what a delightful thing a bit!\' said the Hatter. This piece of bread-and-butter in the grass, merely remarking that a moment\'s pause. The only things in the sea, though you mayn\'t believe it--\' \'I never.</p><p>It was as steady as ever; Yet you turned a back-somersault in at the cook, and a sad tale!\' said the Mouse, turning to the general conclusion, that wherever you go on? It\'s by far the most confusing thing I know. Silence all round, if you hold it too long; and that is enough,\' Said his father; \'don\'t give yourself airs! Do you think you can have no sort of use in talking to herself, \'in my going out altogether, like a star-fish,\' thought Alice. \'Now we shall get on better.\' \'I\'d rather not,\'.</p><p>ME\' beautifully printed on it except a little of it?\' said the Cat. \'--so long as there was mouth enough for it flashed across her mind that she looked up and picking the daisies, when suddenly a White Rabbit returning, splendidly dressed, with a melancholy air, and, after folding his arms and frowning at the frontispiece if you don\'t like them!\' When the pie was all finished, the Owl, as a drawing of a tree. By the use of a water-well,\' said the Hatter; \'so I can\'t be civil, you\'d better.</p>'),('vi',13,'Blog danh sách',NULL,'<p>[blog-posts paginate=\"12\"][/blog-posts]</p>'),('vi',14,'Blog Lớn',NULL,'<p>[blog-posts paginate=\"12\"][/blog-posts]</p>'),('vi',15,'Blog Rộng',NULL,'<p>[blog-posts paginate=\"12\"][/blog-posts]</p>'),('vi',16,'Trang chủ 5',NULL,'<div>[simple-slider key=\"home-slider-5\" ads_1=\"IZ6WU8KUALYJ\" ads_2=\"IZ6WU8KUALYK\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Sản phẩm phổ biến\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYL\" ads_2=\"IZ6WU8KUALYM\" ads_3=\"IZ6WU8KUALYN\" ads_4=\"IZ6WU8KUALYO\" style=\"style-5\"][/theme-ads]</div><div>[best-flash-sale title=\"Bán chạy nhất hàng ngày\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>'),('vi',17,'Trang chủ 6',NULL,'<div>[big-banner cover_image=\"general/home-6.jpeg\" show_newsletter_form=\"yes\" number_display_featured_categories=\"4\" title=\"Bạn đang tìm kiếm sản phẩm?\"][/big-banner]</div><div>[trending-products title=\"Các mặt hàng thịnh hành\" limit=\"20\"][/trending-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>'),('vi',18,'Câu hỏi thường gặp',NULL,'<div>[faqs][/faqs]</div>');
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'USD',0,'QMRJIGQOOT','stripe',NULL,126.00,1,'completed','confirm',9,NULL,NULL,'2023-04-08 19:13:59','2023-04-08 19:13:59','Botble\\Ecommerce\\Models\\Customer',NULL),(2,'USD',0,'1GUEB2WGY2','stripe',NULL,129.00,2,'completed','confirm',9,NULL,NULL,'2023-04-08 19:13:59','2023-04-08 19:13:59','Botble\\Ecommerce\\Models\\Customer',NULL),(3,'USD',0,'MXNVZEZI3T','mollie',NULL,126.00,3,'completed','confirm',6,NULL,NULL,'2023-04-08 19:13:59','2023-04-08 19:13:59','Botble\\Ecommerce\\Models\\Customer',NULL),(4,'USD',0,'XDCN48RYQQ','paypal',NULL,333.00,4,'completed','confirm',6,NULL,NULL,'2023-04-08 19:13:59','2023-04-08 19:13:59','Botble\\Ecommerce\\Models\\Customer',NULL),(5,'USD',0,'YCEDTASMV8','sslcommerz',NULL,333.00,5,'completed','confirm',3,NULL,NULL,'2023-04-08 19:13:59','2023-04-08 19:13:59','Botble\\Ecommerce\\Models\\Customer',NULL),(6,'USD',0,'KMVXY56SA5','razorpay',NULL,124.00,6,'completed','confirm',3,NULL,NULL,'2023-04-08 19:13:59','2023-04-08 19:13:59','Botble\\Ecommerce\\Models\\Customer',NULL),(7,'USD',0,'3GFAD4M5WW','sslcommerz',NULL,378.00,7,'completed','confirm',9,NULL,NULL,'2023-04-08 19:13:59','2023-04-08 19:13:59','Botble\\Ecommerce\\Models\\Customer',NULL),(8,'USD',0,'GC1HRPJWLR','sslcommerz',NULL,240.00,8,'completed','confirm',9,NULL,NULL,'2023-04-08 19:13:59','2023-04-08 19:13:59','Botble\\Ecommerce\\Models\\Customer',NULL),(9,'USD',0,'IEXNIEVQAF','cod',NULL,369.00,9,'pending','confirm',9,NULL,NULL,'2023-04-08 19:13:59','2023-04-08 19:13:59','Botble\\Ecommerce\\Models\\Customer',NULL),(10,'USD',0,'6UH5BPJEOQ','razorpay',NULL,123.00,10,'completed','confirm',1,NULL,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\Ecommerce\\Models\\Customer',NULL),(11,'USD',0,'D1JGKTJAIX','mollie',NULL,361.00,11,'completed','confirm',1,NULL,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\Ecommerce\\Models\\Customer',NULL),(12,'USD',0,'VQNOCRLNKL','stripe',NULL,111.00,12,'completed','confirm',1,NULL,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\Ecommerce\\Models\\Customer',NULL),(13,'USD',0,'CRCGVXCFEQ','mollie',NULL,366.00,13,'completed','confirm',3,NULL,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\Ecommerce\\Models\\Customer',NULL),(14,'USD',0,'ZZOQPKOQ7O','razorpay',NULL,234.00,14,'completed','confirm',3,NULL,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\Ecommerce\\Models\\Customer',NULL),(15,'USD',0,'DXAVLBDEG2','sslcommerz',NULL,410.00,15,'completed','confirm',3,NULL,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\Ecommerce\\Models\\Customer',NULL),(16,'USD',0,'XYVPSVLB0X','paypal',NULL,246.00,16,'completed','confirm',3,NULL,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\Ecommerce\\Models\\Customer',NULL),(17,'USD',0,'HH3D7OK1CE','paypal',NULL,252.00,17,'completed','confirm',3,NULL,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\Ecommerce\\Models\\Customer',NULL),(18,'USD',0,'FSEMK0JOCE','sslcommerz',NULL,360.00,18,'completed','confirm',1,NULL,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\Ecommerce\\Models\\Customer',NULL),(19,'USD',0,'Q9EPPBCWXZ','razorpay',NULL,254.00,19,'completed','confirm',1,NULL,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\Ecommerce\\Models\\Customer',NULL),(20,'USD',0,'X3HQ3JXKEO','razorpay',NULL,360.00,20,'completed','confirm',1,NULL,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\Ecommerce\\Models\\Customer',NULL),(21,'USD',0,'CBG5YVJBPU','paystack',NULL,366.00,21,'completed','confirm',1,NULL,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\Ecommerce\\Models\\Customer',NULL),(22,'USD',0,'GJRLTHPSLP','razorpay',NULL,345.00,22,'completed','confirm',1,NULL,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\Ecommerce\\Models\\Customer',NULL),(23,'USD',0,'PRH35RIJXL','razorpay',NULL,456.00,23,'completed','confirm',8,NULL,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\Ecommerce\\Models\\Customer',NULL),(24,'USD',0,'NVOLPBMZKG','bank_transfer',NULL,111.00,24,'pending','confirm',8,NULL,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\Ecommerce\\Models\\Customer',NULL),(25,'USD',0,'KYXFC8LZJU','bank_transfer',NULL,375.00,25,'pending','confirm',8,NULL,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\Ecommerce\\Models\\Customer',NULL),(26,'USD',0,'UO1RYHW8KJ','paypal',NULL,615.00,26,'completed','confirm',8,NULL,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\Ecommerce\\Models\\Customer',NULL),(27,'USD',0,'4YHMJSC3GJ','stripe',NULL,333.00,27,'completed','confirm',8,NULL,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\Ecommerce\\Models\\Customer',NULL),(28,'USD',0,'4OSN6USJ2N','sslcommerz',NULL,82.00,28,'completed','confirm',4,NULL,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\Ecommerce\\Models\\Customer',NULL),(29,'USD',0,'91W9Q1PJDI','stripe',NULL,476.00,29,'completed','confirm',4,NULL,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\Ecommerce\\Models\\Customer',NULL),(30,'USD',0,'STM8VMVTCY','mollie',NULL,333.00,30,'completed','confirm',4,NULL,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\Ecommerce\\Models\\Customer',NULL),(31,'USD',0,'1KA05YL17F','stripe',NULL,360.00,31,'completed','confirm',1,NULL,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\Ecommerce\\Models\\Customer',NULL),(32,'USD',0,'RVQC9KQPOA','razorpay',NULL,126.00,32,'completed','confirm',1,NULL,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\Ecommerce\\Models\\Customer',NULL),(33,'USD',0,'2CG54QQ5GP','paystack',NULL,369.00,33,'completed','confirm',8,NULL,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\Ecommerce\\Models\\Customer',NULL),(34,'USD',0,'UYZDVFO9EG','cod',NULL,360.00,34,'pending','confirm',8,NULL,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\Ecommerce\\Models\\Customer',NULL),(35,'USD',0,'OG1EL9YKWH','bank_transfer',NULL,764.00,35,'pending','confirm',4,NULL,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\Ecommerce\\Models\\Customer',NULL),(36,'USD',0,'WCTLSYZ0VA','paystack',NULL,252.00,36,'completed','confirm',4,NULL,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\Ecommerce\\Models\\Customer',NULL),(37,'USD',0,'WQAZN427AW','cod',NULL,77.00,37,'pending','confirm',8,NULL,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\Ecommerce\\Models\\Customer',NULL),(38,'USD',0,'SEJKTHJ8PY','stripe',NULL,240.00,38,'completed','confirm',8,NULL,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\Ecommerce\\Models\\Customer',NULL),(39,'USD',0,'PRFAJJ2OGB','cod',NULL,470.00,39,'pending','confirm',3,NULL,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\Ecommerce\\Models\\Customer',NULL),(40,'USD',0,'JYH4EEJPPM','sslcommerz',NULL,585.00,40,'completed','confirm',3,NULL,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\Ecommerce\\Models\\Customer',NULL),(41,'USD',0,'LXAGH4FG8A','razorpay',NULL,209.00,41,'completed','confirm',1,NULL,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\Ecommerce\\Models\\Customer',NULL),(42,'USD',0,'FLSLVQDETF','razorpay',NULL,351.00,42,'completed','confirm',1,NULL,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\Ecommerce\\Models\\Customer',NULL),(43,'USD',0,'69XLFSMINA','paypal',NULL,41.00,43,'completed','confirm',6,NULL,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\Ecommerce\\Models\\Customer',NULL),(44,'USD',0,'IZUAXKKWWL','mollie',NULL,120.00,44,'completed','confirm',6,NULL,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\Ecommerce\\Models\\Customer',NULL),(45,'USD',0,'MLYZEGYNW4','sslcommerz',NULL,958.00,45,'completed','confirm',4,NULL,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\Ecommerce\\Models\\Customer',NULL),(46,'USD',0,'0OA5L0UK7D','bank_transfer',NULL,230.00,46,'pending','confirm',4,NULL,NULL,'2023-04-08 19:14:00','2023-04-08 19:14:00','Botble\\Ecommerce\\Models\\Customer',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (2,1),(3,1),(1,2),(3,2),(1,3),(3,3),(1,4),(4,4),(1,5),(4,5),(1,6),(4,6),(2,7),(4,7),(2,8),(3,8),(1,9),(4,9),(2,10),(3,10),(1,11),(4,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,2),(2,2),(3,2),(4,2),(5,2),(1,3),(2,3),(3,3),(4,3),(5,3),(1,4),(2,4),(3,4),(4,4),(5,4),(1,5),(2,5),(3,5),(4,5),(5,5),(1,6),(2,6),(3,6),(4,6),(5,6),(1,7),(2,7),(3,7),(4,7),(5,7),(1,8),(2,8),(3,8),(4,8),(5,8),(1,9),(2,9),(3,9),(4,9),(5,9),(1,10),(2,10),(3,10),(4,10),(5,10),(1,11),(2,11),(3,11),(4,11),(5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `author_id` (`author_id`),
  KEY `author_type` (`author_type`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.png',328,NULL,'2023-04-08 19:13:53','2023-04-08 19:13:53'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.png',2278,NULL,'2023-04-08 19:13:53','2023-04-08 19:13:53'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.png',1597,NULL,'2023-04-08 19:13:53','2023-04-08 19:13:53'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n[featured-products title=\"Shop The Look\" limit=\"6\"][/featured-products]\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.png',1587,NULL,'2023-04-08 19:13:53','2023-04-08 19:13:53'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.png',2319,NULL,'2023-04-08 19:13:54','2023-04-08 19:13:54'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.png',2435,NULL,'2023-04-08 19:13:54','2023-04-08 19:13:54'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.png',647,NULL,'2023-04-08 19:13:54','2023-04-08 19:13:54'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.png',1058,NULL,'2023-04-08 19:13:54','2023-04-08 19:13:54'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.png',869,NULL,'2023-04-08 19:13:54','2023-04-08 19:13:54'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.png',1229,NULL,'2023-04-08 19:13:54','2023-04-08 19:13:54'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.png',394,NULL,'2023-04-08 19:13:54','2023-04-08 19:13:54');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
INSERT INTO `posts_translations` VALUES ('vi',1,'4 Lời khuyên của Chuyên gia về Cách Chọn Ví Nam Phù hợp','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n'),('vi',2,'Sexy Clutches: Cách Mua & Đeo Túi Clutch Thiết kế','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n'),('vi',3,'Xu hướng túi xách hàng đầu năm 2020 cần biết','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n'),('vi',4,'Cách Phối Màu Túi Xách Của Bạn Với Trang Phục','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n'),('vi',5,'Cách Chăm sóc Túi Da','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n'),('vi',6,'Chúng tôi đang nghiền ngẫm 10 xu hướng túi lớn nhất của mùa hè','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n'),('vi',7,'Những phẩm chất cần thiết của âm nhạc thành công cao','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n'),('vi',8,'9 điều tôi thích khi cạo đầu','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n'),('vi',9,'Tại sao làm việc theo nhóm thực sự biến giấc mơ thành công','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n'),('vi',10,'Thế giới phục vụ cho những người trung bình','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n'),('vi',11,'Các đương sự trên màn hình không phải là diễn viên','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.png\"></p>\n\n<p><br>\n </p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.png\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\"></p>\n\n<p> </p>\n');
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"bottom-bar-menu\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"marketplace\",\"newsletter\",\"payment\",\"paypal\",\"paystack\",\"razorpay\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"translation\",\"mollie\"]',NULL,'2023-04-08 19:13:38'),(4,'language_hide_default','1',NULL,NULL),(5,'language_switcher_display','dropdown',NULL,NULL),(6,'language_display','all',NULL,NULL),(7,'language_hide_languages','[]',NULL,NULL),(8,'ecommerce_store_name','Nest',NULL,NULL),(9,'ecommerce_store_phone','18006268',NULL,NULL),(10,'ecommerce_store_address','North Link Building, 10 Admiralty Street',NULL,NULL),(11,'ecommerce_store_state','Singapore',NULL,NULL),(12,'ecommerce_store_city','Singapore',NULL,NULL),(13,'ecommerce_store_country','SG',NULL,NULL),(14,'media_random_hash','cee499fba9c1a867756f4dde587365b3',NULL,NULL),(15,'permalink-botble-blog-models-post','blog',NULL,NULL),(16,'permalink-botble-blog-models-category','blog',NULL,NULL),(17,'payment_cod_status','1',NULL,NULL),(18,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,NULL),(19,'payment_bank_transfer_status','1',NULL,NULL),(20,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,NULL),(21,'plugins_ecommerce_customer_new_order_status','0',NULL,NULL),(22,'plugins_ecommerce_admin_new_order_status','0',NULL,NULL),(23,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,NULL),(24,'payment_stripe_payment_type','stripe_checkout',NULL,NULL),(25,'simple_slider_using_assets','0',NULL,NULL),(26,'sale_popup_display_pages','[\"public.index\"]',NULL,NULL),(27,'ecommerce_is_enabled_support_digital_products','1',NULL,NULL),(28,'theme','nest',NULL,NULL),(29,'admin_favicon','general/favicon.png',NULL,NULL),(30,'admin_logo','general/logo.png',NULL,NULL),(31,'theme-nest-site_title','Nest - Laravel Multipurpose eCommerce Script',NULL,NULL),(32,'theme-nest-seo_description','Nest is an attractive Laravel multivendor eCommerce script specially designed for the multipurpose shops like mega store, grocery store, supermarket, organic shop, and online stores selling products like beverages, vegetables, fruits, ice creams, paste, herbs, juice, meat, cold drinks, sausages, cocktails, soft drinks, cookies…',NULL,NULL),(33,'theme-nest-copyright','Copyright © 2021 Nest all rights reserved. Powered by Botble.',NULL,NULL),(34,'theme-nest-favicon','general/favicon.png',NULL,NULL),(35,'theme-nest-logo','general/logo.png',NULL,NULL),(36,'theme-nest-seo_og_image','general/open-graph-image.png',NULL,NULL),(37,'theme-nest-address','562 Wellington Road, Street 32, San Francisco',NULL,NULL),(38,'theme-nest-hotline','1900 - 888',NULL,NULL),(39,'theme-nest-phone','+01 2222 365 /(+91) 01 2345 6789',NULL,NULL),(40,'theme-nest-working_hours','10:00 - 18:00, Mon - Sat',NULL,NULL),(41,'theme-nest-homepage_id','1',NULL,NULL),(42,'theme-nest-blog_page_id','5',NULL,NULL),(43,'theme-nest-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(44,'theme-nest-cookie_consent_learn_more_url','https://nest.test/cookie-policy',NULL,NULL),(45,'theme-nest-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(46,'theme-nest-payment_methods','general/payment-methods.png',NULL,NULL),(47,'theme-nest-number_of_cross_sale_product','4',NULL,NULL),(48,'theme-nest-mobile-header-message','<span>Grand opening, <strong>up to 15%</strong> off all items. Only <strong>3 days</strong> left</span>',NULL,NULL),(49,'theme-nest-blog_page_background','general/header-bg.png',NULL,NULL),(50,'theme-nest-blog_page_icon','general/category-1.png',NULL,NULL),(51,'theme-nest-image_in_login_page','general/login-1.png',NULL,NULL),(52,'theme-nest-number_of_products_per_page','12',NULL,NULL),(53,'theme-nest-preloader_enabled','yes',NULL,NULL),(54,'theme-nest-preloader_version','v2',NULL,NULL),(55,'theme-nest-preloader_image','general/loading.gif',NULL,NULL),(56,'theme-nest-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"general\\/facebook.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"general\\/twitter.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"general\\/instagram.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Pinterest\"},{\"key\":\"social-icon\",\"value\":\"general\\/pinterest.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Youtube\"},{\"key\":\"social-icon\",\"value\":\"general\\/youtube.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]',NULL,NULL),(57,'theme-nest-header_messages','[[{\"key\":\"icon\",\"value\":\"fi-rs-bell\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-success\\\"> Trendy 25<\\/b> silver jewelry, save up 35% off today\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Shop now\"}],[{\"key\":\"icon\",\"value\":\"fi-rs-asterisk\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-danger\\\">Super Value Deals<\\/b> - Save more with coupons\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":null}],[{\"key\":\"icon\",\"value\":\"fi-rs-angle-double-right\"},{\"key\":\"message\",\"value\":\"Get great devices up to 50% off\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"View details\"}]]',NULL,NULL),(58,'theme-nest-contact_info_boxes','[[{\"key\":\"name\",\"value\":\"Head Office\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"office@botble.com\"}],[{\"key\":\"name\",\"value\":\"Our Studio\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"studio@botble.com\"}],[{\"key\":\"name\",\"value\":\"Our Shop\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"shop@botble.com\"}]]',NULL,NULL),(59,'theme-nest-vi-font_text','Roboto Condensed',NULL,NULL),(60,'theme-nest-vi-copyright','Bản quyền © 2021 Nest tất cả quyền đã được bảo hộ. Phát triển bởi Botble.',NULL,NULL),(61,'theme-nest-vi-working_hours','10:00 - 18:00, Thứ Hai - Thứ Bảy',NULL,NULL),(62,'theme-nest-vi-cookie_consent_message','Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ',NULL,NULL),(63,'theme-nest-vi-cookie_consent_learn_more_url','https://nest.test/cookie-policy',NULL,NULL),(64,'theme-nest-vi-cookie_consent_learn_more_text','Chính sách cookie',NULL,NULL),(65,'theme-nest-vi-homepage_id','1',NULL,NULL),(66,'theme-nest-vi-blog_page_id','5',NULL,NULL),(67,'theme-nest-vi-header_messages','[[{\"key\":\"icon\",\"value\":\"fi-rs-bell\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-success\\\">Trang s\\u1ee9c b\\u1ea1c 25 <\\/b> th\\u1eddi th\\u01b0\\u1ee3ng, ti\\u1ebft ki\\u1ec7m \\u0111\\u1ebfn 35%\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Mua ngay\"}],[{\"key\":\"icon\",\"value\":\"fi-rs-asterisk\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-danger\\\">\\u01afu \\u0111\\u00e3i si\\u00eau gi\\u00e1 tr\\u1ecb <\\/b> - Ti\\u1ebft ki\\u1ec7m h\\u01a1n v\\u1edbi phi\\u1ebfu th\\u01b0\\u1edfng\"},{\"key\":\"link\",\"value\":null},{\"key\":\"link_text\",\"value\":null}],[{\"key\":\"icon\",\"value\":\"fi-rs-angle-double-right\"},{\"key\":\"message\",\"value\":\"Nh\\u1eadn c\\u00e1c s\\u1ea3n ph\\u1ea9m tuy\\u1ec7t v\\u1eddi gi\\u1ea3m gi\\u00e1 t\\u1edbi 50%\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Xem chi ti\\u1ebft\"}]]',NULL,NULL),(68,'theme-nest-vi-contact_info_boxes','[[{\"key\":\"name\",\"value\":\"Tr\\u1ee5 s\\u1edf ch\\u00ednh\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"office@botble.com\"}],[{\"key\":\"name\",\"value\":\"Gian h\\u00e0ng tr\\u01b0ng b\\u00e0y\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"studio@botble.com\"}],[{\"key\":\"name\",\"value\":\"C\\u1eeda h\\u00e0ng\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"shop@botble.com\"}]]',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Don’t miss amazing<br> grocery deals','sliders/1-1.png','/products','Sign up for the daily newsletter',1,'2023-04-08 19:13:52','2023-04-08 19:13:52'),(2,1,'Fresh Vegetables<br>\n										Big discount','sliders/1-2.png','/products','Save up to 50% off on your first order',2,'2023-04-08 19:13:52','2023-04-08 19:13:52'),(3,2,'Don’t miss amazing<br> grocery deals','sliders/2-1.png','/products','Sign up for the daily newsletter',1,'2023-04-08 19:13:52','2023-04-08 19:13:52'),(4,2,'Fresh Vegetables<br>\n										Big discount','sliders/2-2.png','/products','Save up to 50% off on your first order',2,'2023-04-08 19:13:52','2023-04-08 19:13:52'),(5,3,'Don’t miss amazing<br> grocery deals','sliders/3-1.png','/products','Sign up for the daily newsletter',1,'2023-04-08 19:13:52','2023-04-08 19:13:52'),(6,3,'Fresh Vegetables<br>\n										Big discount','sliders/3-2.png','/products','Save up to 50% off on your first order',2,'2023-04-08 19:13:52','2023-04-08 19:13:52'),(7,4,'Don’t miss amazing<br> grocery deals','sliders/4-1.png','/products','Sign up for the daily newsletter',1,'2023-04-08 19:13:52','2023-04-08 19:13:52'),(8,4,'Fresh Vegetables<br>\n										Big discount','sliders/4-2.png','/products','Save up to 50% off on your first order',2,'2023-04-08 19:13:52','2023-04-08 19:13:52'),(9,5,'Don’t miss amazing<br> grocery deals','sliders/5-1.png','/products','Sign up for the daily newsletter',1,'2023-04-08 19:13:52','2023-04-08 19:13:52'),(10,5,'Fresh Vegetables<br>\n										Big discount','sliders/5-2.png','/products','Save up to 50% off on your first order',2,'2023-04-08 19:13:52','2023-04-08 19:13:52'),(11,6,'Don’t miss amazing<br> grocery deals','sliders/6-1.png','/products','Sign up for the daily newsletter',1,'2023-04-08 19:13:52','2023-04-08 19:13:52'),(12,7,NULL,'sliders/thumbnail-1.jpg',NULL,NULL,1,'2023-04-08 19:13:52','2023-04-08 19:13:52'),(13,7,NULL,'sliders/thumbnail-2.jpg',NULL,NULL,2,'2023-04-08 19:13:52','2023-04-08 19:13:52'),(14,7,NULL,'sliders/thumbnail-3.jpg',NULL,NULL,3,'2023-04-08 19:13:52','2023-04-08 19:13:52'),(15,7,NULL,'sliders/thumbnail-4.jpg',NULL,NULL,4,'2023-04-08 19:13:52','2023-04-08 19:13:52'),(16,7,NULL,'sliders/thumbnail-5.jpg',NULL,NULL,5,'2023-04-08 19:13:52','2023-04-08 19:13:52'),(17,7,NULL,'sliders/thumbnail-6.jpg',NULL,NULL,6,'2023-04-08 19:13:52','2023-04-08 19:13:52'),(18,8,'Đừng bỏ lỡ <br> tuyệt vời giao dịch hàng tạp hóa','sliders/1-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2023-04-08 19:13:52','2023-04-08 19:13:52'),(19,8,'Rau tươi <br>Giảm giá lớn','sliders/1-2.png','/products','Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn',2,'2023-04-08 19:13:52','2023-04-08 19:13:52'),(20,9,'Đừng bỏ lỡ <br> tuyệt vời giao dịch hàng tạp hóa','sliders/2-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2023-04-08 19:13:52','2023-04-08 19:13:52'),(21,9,'Rau tươi <br>Giảm giá lớn','sliders/2-2.png','/products','Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn',2,'2023-04-08 19:13:52','2023-04-08 19:13:52'),(22,10,'Đừng bỏ lỡ <br> tuyệt vời giao dịch hàng tạp hóa','sliders/3-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2023-04-08 19:13:52','2023-04-08 19:13:52'),(23,10,'Rau tươi <br>Giảm giá lớn','sliders/3-2.png','/products','Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn',2,'2023-04-08 19:13:52','2023-04-08 19:13:52'),(24,11,'Đừng bỏ lỡ <br> tuyệt vời giao dịch hàng tạp hóa','sliders/4-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2023-04-08 19:13:52','2023-04-08 19:13:52'),(25,11,'Rau tươi <br>Giảm giá lớn','sliders/4-2.png','/products','Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn',2,'2023-04-08 19:13:52','2023-04-08 19:13:52'),(26,12,'Đừng bỏ lỡ <br> tuyệt vời giao dịch hàng tạp hóa','sliders/5-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2023-04-08 19:13:52','2023-04-08 19:13:52'),(27,12,'Rau tươi <br>Giảm giá lớn','sliders/5-2.png','/products','Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn',2,'2023-04-08 19:13:52','2023-04-08 19:13:52'),(28,13,'Đừng bỏ lỡ <br> tuyệt vời giao dịch hàng tạp hóa','sliders/6-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2023-04-08 19:13:52','2023-04-08 19:13:52'),(29,14,NULL,'sliders/thumbnail-1.jpg',NULL,NULL,1,'2023-04-08 19:13:52','2023-04-08 19:13:52'),(30,14,NULL,'sliders/thumbnail-2.jpg',NULL,NULL,2,'2023-04-08 19:13:52','2023-04-08 19:13:52'),(31,14,NULL,'sliders/thumbnail-3.jpg',NULL,NULL,3,'2023-04-08 19:13:52','2023-04-08 19:13:52'),(32,14,NULL,'sliders/thumbnail-4.jpg',NULL,NULL,4,'2023-04-08 19:13:52','2023-04-08 19:13:52'),(33,14,NULL,'sliders/thumbnail-5.jpg',NULL,NULL,5,'2023-04-08 19:13:52','2023-04-08 19:13:52'),(34,14,NULL,'sliders/thumbnail-6.jpg',NULL,NULL,6,'2023-04-08 19:13:52','2023-04-08 19:13:52');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider 1','home-slider-1',NULL,'published','2023-04-08 19:13:52','2023-04-08 19:13:52'),(2,'Home slider 2','home-slider-2',NULL,'published','2023-04-08 19:13:52','2023-04-08 19:13:52'),(3,'Home slider 3','home-slider-3',NULL,'published','2023-04-08 19:13:52','2023-04-08 19:13:52'),(4,'Home slider 4','home-slider-4',NULL,'published','2023-04-08 19:13:52','2023-04-08 19:13:52'),(5,'Home slider 5','home-slider-5',NULL,'published','2023-04-08 19:13:52','2023-04-08 19:13:52'),(6,'Home slider 6','home-slider-6',NULL,'published','2023-04-08 19:13:52','2023-04-08 19:13:52'),(7,'Blog slider 1','blog-slider-1',NULL,'published','2023-04-08 19:13:52','2023-04-08 19:13:52'),(8,'Slider trang chủ 1','slider-trang-chu-1',NULL,'published','2023-04-08 19:13:52','2023-04-08 19:13:52'),(9,'Slider trang chủ 2','slider-trang-chu-2',NULL,'published','2023-04-08 19:13:52','2023-04-08 19:13:52'),(10,'Slider trang chủ 3','slider-trang-chu-3',NULL,'published','2023-04-08 19:13:52','2023-04-08 19:13:52'),(11,'Slider trang chủ 4','slider-trang-chu-4',NULL,'published','2023-04-08 19:13:52','2023-04-08 19:13:52'),(12,'Slider trang chủ 5','slider-trang-chu-5',NULL,'published','2023-04-08 19:13:52','2023-04-08 19:13:52'),(13,'Slider trang chủ 6','slider-trang-chu-6',NULL,'published','2023-04-08 19:13:52','2023-04-08 19:13:52'),(14,'Slider blog 1','slider-blog-1',NULL,'published','2023-04-08 19:13:52','2023-04-08 19:13:52');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'perxsion',1,'Botble\\Ecommerce\\Models\\Brand','brands','2023-04-08 19:13:38','2023-04-08 19:13:38'),(2,'hiching',2,'Botble\\Ecommerce\\Models\\Brand','brands','2023-04-08 19:13:38','2023-04-08 19:13:38'),(3,'kepslo',3,'Botble\\Ecommerce\\Models\\Brand','brands','2023-04-08 19:13:38','2023-04-08 19:13:38'),(4,'groneba',4,'Botble\\Ecommerce\\Models\\Brand','brands','2023-04-08 19:13:38','2023-04-08 19:13:38'),(5,'babian',5,'Botble\\Ecommerce\\Models\\Brand','brands','2023-04-08 19:13:38','2023-04-08 19:13:38'),(6,'valorant',6,'Botble\\Ecommerce\\Models\\Brand','brands','2023-04-08 19:13:38','2023-04-08 19:13:38'),(7,'pure',7,'Botble\\Ecommerce\\Models\\Brand','brands','2023-04-08 19:13:38','2023-04-08 19:13:38'),(8,'milks-and-dairies',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-04-08 19:13:41','2023-04-08 19:13:41'),(9,'clothing-beauty',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-04-08 19:13:41','2023-04-08 19:13:41'),(10,'pet-toy',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-04-08 19:13:41','2023-04-08 19:13:41'),(11,'baking-material',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-04-08 19:13:41','2023-04-08 19:13:41'),(12,'fresh-fruit',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-04-08 19:13:41','2023-04-08 19:13:41'),(13,'wines-drinks',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-04-08 19:13:41','2023-04-08 19:13:41'),(14,'fresh-seafood',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-04-08 19:13:41','2023-04-08 19:13:41'),(15,'fast-food',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-04-08 19:13:41','2023-04-08 19:13:41'),(16,'vegetables',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-04-08 19:13:41','2023-04-08 19:13:41'),(17,'bread-and-juice',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-04-08 19:13:41','2023-04-08 19:13:41'),(18,'cake-milk',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-04-08 19:13:41','2023-04-08 19:13:41'),(19,'coffee-teas',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-04-08 19:13:41','2023-04-08 19:13:41'),(20,'pet-foods',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-04-08 19:13:41','2023-04-08 19:13:41'),(21,'diet-foods',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-04-08 19:13:41','2023-04-08 19:13:41'),(22,'wallet',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-04-08 19:13:41','2023-04-08 19:13:41'),(23,'bags',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-04-08 19:13:41','2023-04-08 19:13:41'),(24,'shoes',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-04-08 19:13:41','2023-04-08 19:13:41'),(25,'clothes',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-04-08 19:13:41','2023-04-08 19:13:41'),(26,'hand-bag',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-04-08 19:13:41','2023-04-08 19:13:41'),(27,'seeds-of-change-organic-quinoe',1,'Botble\\Ecommerce\\Models\\Product','products','2023-04-08 19:13:46','2023-04-08 19:13:46'),(28,'all-natural-italian-style-chicken-meatballs',2,'Botble\\Ecommerce\\Models\\Product','products','2023-04-08 19:13:46','2023-04-08 19:13:46'),(29,'angies-boomchickapop-sweet-salty-kettle-corn',3,'Botble\\Ecommerce\\Models\\Product','products','2023-04-08 19:13:46','2023-04-08 19:13:46'),(30,'foster-farms-takeout-crispy-classic',4,'Botble\\Ecommerce\\Models\\Product','products','2023-04-08 19:13:46','2023-04-08 19:13:46'),(31,'blue-diamond-almonds-lightly',5,'Botble\\Ecommerce\\Models\\Product','products','2023-04-08 19:13:46','2023-04-08 19:13:46'),(32,'chobani-complete-vanilla-greek',6,'Botble\\Ecommerce\\Models\\Product','products','2023-04-08 19:13:46','2023-04-08 19:13:46'),(33,'canada-dry-ginger-ale-2-l-bottle',7,'Botble\\Ecommerce\\Models\\Product','products','2023-04-08 19:13:46','2023-04-08 19:13:46'),(34,'encore-seafoods-stuffed-alaskan',8,'Botble\\Ecommerce\\Models\\Product','products','2023-04-08 19:13:46','2023-04-08 19:13:46'),(35,'gortons-beer-battered-fish-fillets',9,'Botble\\Ecommerce\\Models\\Product','products','2023-04-08 19:13:46','2023-04-08 19:13:46'),(36,'haagen-dazs-caramel-cone-ice-cream',10,'Botble\\Ecommerce\\Models\\Product','products','2023-04-08 19:13:46','2023-04-08 19:13:46'),(37,'nestle-original-coffee-mate-coffee-creamer',11,'Botble\\Ecommerce\\Models\\Product','products','2023-04-08 19:13:46','2023-04-08 19:13:46'),(38,'naturally-flavored-cinnamon-vanilla-light-roast-coffee',12,'Botble\\Ecommerce\\Models\\Product','products','2023-04-08 19:13:46','2023-04-08 19:13:46'),(39,'pepperidge-farm-farmhouse-hearty-white-bread',13,'Botble\\Ecommerce\\Models\\Product','products','2023-04-08 19:13:46','2023-04-08 19:13:46'),(40,'organic-frozen-triple-berry-blend',14,'Botble\\Ecommerce\\Models\\Product','products','2023-04-08 19:13:46','2023-04-08 19:13:46'),(41,'oroweat-country-buttermilk-bread',15,'Botble\\Ecommerce\\Models\\Product','products','2023-04-08 19:13:46','2023-04-08 19:13:46'),(42,'foster-farms-takeout-crispy-classic-buffalo-wings',16,'Botble\\Ecommerce\\Models\\Product','products','2023-04-08 19:13:46','2023-04-08 19:13:46'),(43,'angies-boomchickapop-sweet-salty-kettle-corn',17,'Botble\\Ecommerce\\Models\\Product','products','2023-04-08 19:13:46','2023-04-08 19:13:46'),(44,'all-natural-italian-style-chicken-meatballs',18,'Botble\\Ecommerce\\Models\\Product','products','2023-04-08 19:13:46','2023-04-08 19:13:46'),(45,'simply-lemonade-with-raspberry-juice',19,'Botble\\Ecommerce\\Models\\Product','products','2023-04-08 19:13:46','2023-04-08 19:13:46'),(46,'perdue-simply-smart-organics-gluten-free',20,'Botble\\Ecommerce\\Models\\Product','products','2023-04-08 19:13:46','2023-04-08 19:13:46'),(47,'chen-watermelon',21,'Botble\\Ecommerce\\Models\\Product','products','2023-04-08 19:13:46','2023-04-08 19:13:46'),(48,'organic-cage-free-grade-a-large-brown-eggs',22,'Botble\\Ecommerce\\Models\\Product','products','2023-04-08 19:13:46','2023-04-08 19:13:46'),(49,'colorful-banana',23,'Botble\\Ecommerce\\Models\\Product','products','2023-04-08 19:13:46','2023-04-08 19:13:46'),(50,'signature-wood-fired-mushroom-and-caramelized',24,'Botble\\Ecommerce\\Models\\Product','products','2023-04-08 19:13:46','2023-04-08 19:13:46'),(51,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2023-04-08 19:13:53','2023-04-08 19:13:54'),(52,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2023-04-08 19:13:53','2023-04-08 19:13:54'),(53,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2023-04-08 19:13:53','2023-04-08 19:13:54'),(54,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2023-04-08 19:13:53','2023-04-08 19:13:54'),(55,'general',1,'Botble\\Blog\\Models\\Tag','tag','2023-04-08 19:13:53','2023-04-08 19:13:53'),(56,'design',2,'Botble\\Blog\\Models\\Tag','tag','2023-04-08 19:13:53','2023-04-08 19:13:53'),(57,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2023-04-08 19:13:53','2023-04-08 19:13:53'),(58,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2023-04-08 19:13:53','2023-04-08 19:13:53'),(59,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2023-04-08 19:13:53','2023-04-08 19:13:53'),(60,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2023-04-08 19:13:53','2023-04-08 19:13:54'),(61,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2023-04-08 19:13:53','2023-04-08 19:13:54'),(62,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2023-04-08 19:13:53','2023-04-08 19:13:54'),(63,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2023-04-08 19:13:54','2023-04-08 19:13:54'),(64,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2023-04-08 19:13:54','2023-04-08 19:13:54'),(65,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2023-04-08 19:13:54','2023-04-08 19:13:54'),(66,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2023-04-08 19:13:54','2023-04-08 19:13:54'),(67,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2023-04-08 19:13:54','2023-04-08 19:13:54'),(68,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2023-04-08 19:13:54','2023-04-08 19:13:54'),(69,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2023-04-08 19:13:54','2023-04-08 19:13:54'),(70,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2023-04-08 19:13:54','2023-04-08 19:13:54'),(71,'homepage',1,'Botble\\Page\\Models\\Page','','2023-04-08 19:13:54','2023-04-08 19:13:54'),(72,'homepage-2',2,'Botble\\Page\\Models\\Page','','2023-04-08 19:13:54','2023-04-08 19:13:54'),(73,'homepage-3',3,'Botble\\Page\\Models\\Page','','2023-04-08 19:13:54','2023-04-08 19:13:54'),(74,'homepage-4',4,'Botble\\Page\\Models\\Page','','2023-04-08 19:13:54','2023-04-08 19:13:54'),(75,'blog',5,'Botble\\Page\\Models\\Page','','2023-04-08 19:13:54','2023-04-08 19:13:54'),(76,'contact',6,'Botble\\Page\\Models\\Page','','2023-04-08 19:13:54','2023-04-08 19:13:54'),(77,'about-us',7,'Botble\\Page\\Models\\Page','','2023-04-08 19:13:54','2023-04-08 19:13:54'),(78,'cookie-policy',8,'Botble\\Page\\Models\\Page','','2023-04-08 19:13:54','2023-04-08 19:13:54'),(79,'terms-conditions',9,'Botble\\Page\\Models\\Page','','2023-04-08 19:13:54','2023-04-08 19:13:54'),(80,'returns-exchanges',10,'Botble\\Page\\Models\\Page','','2023-04-08 19:13:54','2023-04-08 19:13:54'),(81,'shipping-delivery',11,'Botble\\Page\\Models\\Page','','2023-04-08 19:13:54','2023-04-08 19:13:54'),(82,'privacy-policy',12,'Botble\\Page\\Models\\Page','','2023-04-08 19:13:54','2023-04-08 19:13:54'),(83,'blog-list',13,'Botble\\Page\\Models\\Page','','2023-04-08 19:13:54','2023-04-08 19:13:54'),(84,'blog-big',14,'Botble\\Page\\Models\\Page','','2023-04-08 19:13:54','2023-04-08 19:13:54'),(85,'blog-wide',15,'Botble\\Page\\Models\\Page','','2023-04-08 19:13:54','2023-04-08 19:13:54'),(86,'homepage-5',16,'Botble\\Page\\Models\\Page','','2023-04-08 19:13:54','2023-04-08 19:13:54'),(87,'homepage-6',17,'Botble\\Page\\Models\\Page','','2023-04-08 19:13:54','2023-04-08 19:13:54'),(88,'faq',18,'Botble\\Page\\Models\\Page','','2023-04-08 19:13:54','2023-04-08 19:13:54'),(89,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2023-04-08 19:13:59','2023-04-08 19:13:59'),(90,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2023-04-08 19:13:59','2023-04-08 19:13:59'),(91,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2023-04-08 19:13:59','2023-04-08 19:13:59'),(92,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2023-04-08 19:13:59','2023-04-08 19:13:59');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User','','published','2023-04-08 19:13:53','2023-04-08 19:13:53'),(2,'Design',1,'Botble\\ACL\\Models\\User','','published','2023-04-08 19:13:53','2023-04-08 19:13:53'),(3,'Fashion',1,'Botble\\ACL\\Models\\User','','published','2023-04-08 19:13:53','2023-04-08 19:13:53'),(4,'Branding',1,'Botble\\ACL\\Models\\User','','published','2023-04-08 19:13:53','2023-04-08 19:13:53'),(5,'Modern',1,'Botble\\ACL\\Models\\User','','published','2023-04-08 19:13:53','2023-04-08 19:13:53');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
INSERT INTO `tags_translations` VALUES ('vi',1,'Chung',NULL),('vi',2,'Thiết kế',NULL),('vi',3,'Thời trang',NULL),('vi',4,'Thương hiệu',NULL),('vi',5,'Hiện đại',NULL);
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5386 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@botble.com',NULL,'$2y$10$6DMziK8uz3IF7.6fYxbMcOiZAkxMrNn6VI3QBSgLJXsQc9wpQvyAS',NULL,'2023-04-08 19:13:54','2023-04-08 19:13:54','System','Admin','botble',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SiteInfoWidget','footer_sidebar','nest',0,'{\"id\":\"SiteInfoWidget\",\"name\":\"Site information\",\"about\":\"Awesome grocery store website template\",\"phone\":\"(+91) - 540-025-124553\",\"address\":\"5171 W Campbell Ave undefined Kent, Utah 53127 United States\",\"email\":\"sale@Nest.com\",\"working_hours\":\"10:00 - 18:00, Mon - Sat\"}','2023-04-08 19:13:55','2023-04-08 19:13:55'),(2,'CustomMenuWidget','footer_sidebar','nest',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}','2023-04-08 19:13:55','2023-04-08 19:13:55'),(3,'CustomMenuWidget','footer_sidebar','nest',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"product-categories\"}','2023-04-08 19:13:55','2023-04-08 19:13:55'),(4,'CustomMenuWidget','footer_sidebar','nest',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Information\",\"menu_id\":\"information\"}','2023-04-08 19:13:55','2023-04-08 19:13:55'),(5,'InstallAppWidget','footer_sidebar','nest',3,'{\"id\":\"InstallAppWidget\",\"name\":\"Install App\",\"apps_description\":\"From App Store or Google Play\",\"ios_app_url\":\"#\",\"ios_app_image\":\"general\\/app-store.jpg\",\"android_app_url\":\"#\",\"android_app_image\":\"general\\/google-play.jpg\",\"payment_gateway_description\":\"Secured Payment Gateways\",\"payment_gateway_image\":\"general\\/payment-methods.png\"}','2023-04-08 19:13:55','2023-04-08 19:13:55'),(6,'BlogSearchWidget','primary_sidebar','nest',0,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2023-04-08 19:13:55','2023-04-08 19:13:55'),(7,'ProductCategoriesWidget','primary_sidebar','nest',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Categories\"}','2023-04-08 19:13:55','2023-04-08 19:13:55'),(8,'TrendingProductsWidget','primary_sidebar','nest',2,'{\"id\":\"TrendingProductsWidget\",\"name\":\"Trending Now\",\"number_display\":4}','2023-04-08 19:13:55','2023-04-08 19:13:55'),(9,'GalleryWidget','primary_sidebar','nest',3,'{\"id\":\"GalleryWidget\",\"name\":\"Gallery\",\"slider_key\":\"slider-blog-1\"}','2023-04-08 19:13:55','2023-04-08 19:13:55'),(10,'TagsWidget','primary_sidebar','nest',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2023-04-08 19:13:55','2023-04-08 19:13:55'),(11,'AdsWidget','primary_sidebar','nest',5,'{\"id\":\"AdsWidget\",\"name\":\"Oganic\",\"ads_key\":\"IZ6WU8KUALYI\"}','2023-04-08 19:13:55','2023-04-08 19:13:55'),(12,'ProductCategoriesWidget','product_sidebar','nest',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Categories\"}','2023-04-08 19:13:55','2023-04-08 19:13:55'),(13,'PriceFilterWidget','product_sidebar','nest',2,'{\"id\":\"PriceFilterWidget\",\"name\":\"Filter by price\"}','2023-04-08 19:13:55','2023-04-08 19:13:55'),(14,'NewProductsWidget','product_sidebar','nest',3,'{\"id\":\"NewProductsWidget\",\"name\":\"New products\"}','2023-04-08 19:13:55','2023-04-08 19:13:55'),(15,'AdsWidget','product_sidebar','nest',4,'{\"id\":\"AdsWidget\",\"name\":\"Oganic\",\"ads_key\":\"IZ6WU8KUALYI\"}','2023-04-08 19:13:55','2023-04-08 19:13:55'),(16,'NewsletterWidget','pre_footer_sidebar','nest',0,'{\"id\":\"NewsletterWidget\",\"title\":\"Stay home & get your daily <br \\/>needs from our shop\",\"subtitle\":\"Start Your Daily Shopping with <span>Nest Mart<\\/span>\",\"image\":\"general\\/newsletter-image.png\",\"background_image\":\"general\\/newsletter-background-image.png\"}','2023-04-08 19:13:55','2023-04-08 19:13:55'),(17,'SiteFeaturesWidget','pre_footer_sidebar','nest',1,'{\"id\":\"SiteFeaturesWidget\",\"title\":\"Site Features\",\"data\":{\"1\":{\"icon\":\"general\\/icon-1.png\",\"title\":\"Best prices & offers\",\"subtitle\":\"Orders $50 or more\"},\"2\":{\"icon\":\"general\\/icon-2.png\",\"title\":\"Free delivery\",\"subtitle\":\"24\\/7 amazing services\"},\"3\":{\"icon\":\"general\\/icon-3.png\",\"title\":\"Great daily deal\",\"subtitle\":\"When you sign up\"},\"4\":{\"icon\":\"general\\/icon-4.png\",\"title\":\"Wide assortment\",\"subtitle\":\"Mega Discounts\"},\"5\":{\"icon\":\"general\\/icon-5.png\",\"title\":\"Easy returns\",\"subtitle\":\"Within 30 days\"}}}','2023-04-08 19:13:55','2023-04-08 19:13:55'),(18,'SiteInfoWidget','footer_sidebar','nest-vi',0,'{\"id\":\"SiteInfoWidget\",\"name\":\"V\\u1ec1 ch\\u00fang t\\u00f4i\",\"about\":\"M\\u1eabu trang web c\\u1eeda h\\u00e0ng t\\u1ea1p h\\u00f3a tuy\\u1ec7t v\\u1eddi\",\"phone\":\"(+91) - 540-025-124553\",\"address\":\"5171 W Campbell Ave undefined Kent, Utah 53127 United States\",\"email\":\"sale@Nest.com\",\"working_hours\":\"10:00 - 18:00, Th\\u1ee9 2 - Th\\u1ee9 7\"}','2023-04-08 19:13:55','2023-04-08 19:13:55'),(19,'CustomMenuWidget','footer_sidebar','nest-vi',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"C\\u00f4ng ty\",\"menu_id\":\"cong-ty\"}','2023-04-08 19:13:55','2023-04-08 19:13:55'),(20,'CustomMenuWidget','footer_sidebar','nest-vi',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Danh m\\u1ee5c s\\u1ea3n ph\\u1ea9m\",\"menu_id\":\"danh-muc-san-pham\"}','2023-04-08 19:13:55','2023-04-08 19:13:55'),(21,'CustomMenuWidget','footer_sidebar','nest-vi',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Th\\u00f4ng tin\",\"menu_id\":\"thong-tin\"}','2023-04-08 19:13:55','2023-04-08 19:13:55'),(22,'BlogSearchWidget','primary_sidebar','nest-vi',0,'{\"id\":\"BlogSearchWidget\",\"name\":\"T\\u00ecm ki\\u1ebfm\"}','2023-04-08 19:13:55','2023-04-08 19:13:55'),(23,'BlogCategoriesWidget','primary_sidebar','nest-vi',1,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Danh m\\u1ee5c\"}','2023-04-08 19:13:55','2023-04-08 19:13:55'),(24,'RecentPostsWidget','primary_sidebar','nest-vi',2,'{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft g\\u1ea7n \\u0111\\u00e2y\"}','2023-04-08 19:13:55','2023-04-08 19:13:55'),(25,'TagsWidget','primary_sidebar','nest-vi',4,'{\"id\":\"TagsWidget\",\"name\":\"Tags ph\\u1ed5 bi\\u1ebfn\"}','2023-04-08 19:13:55','2023-04-08 19:13:55'),(26,'ProductCategoriesWidget','product_sidebar','nest-vi',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Danh m\\u1ee5c s\\u1ea3n ph\\u1ea9m\"}','2023-04-08 19:13:55','2023-04-08 19:13:55'),(27,'FeaturedProductsWidget','product_sidebar','nest-vi',2,'{\"id\":\"FeaturedProductsWidget\",\"name\":\"S\\u1ea3n ph\\u1ea9m n\\u1ed5i b\\u1eadt\"}','2023-04-08 19:13:55','2023-04-08 19:13:55'),(28,'FeaturedBrandsWidget','product_sidebar','nest-vi',3,'{\"id\":\"FeaturedBrandsWidget\",\"name\":\"Nh\\u00e0 cung c\\u1ea5p\"}','2023-04-08 19:13:55','2023-04-08 19:13:55'),(29,'NewsletterWidget','pre_footer_sidebar','nest-vi',0,'{\"id\":\"NewsletterWidget\",\"title\":\"\\u1ede nh\\u00e0 & \\u0111\\u00e1p \\u1ee9ng nhu c\\u1ea7u <br \\/> h\\u00e0ng ng\\u00e0y c\\u1ee7a b\\u1ea1n t\\u1eeb c\\u1eeda h\\u00e0ng c\\u1ee7a ch\\u00fang t\\u00f4i\",\"subtitle\":\"B\\u1eaft \\u0111\\u1ea7u mua s\\u1eafm v\\u1edbi <span>Nest Mart<\\/span>\",\"image\":\"general\\/newsletter-image.png\",\"background_image\":\"general\\/newsletter-background-image.png\"}','2023-04-08 19:13:55','2023-04-08 19:13:55'),(30,'SiteFeaturesWidget','pre_footer_sidebar','nest-vi',1,'{\"id\":\"SiteFeaturesWidget\",\"title\":\"Site Features\",\"data\":{\"1\":{\"icon\":\"general\\/icon-1.png\",\"title\":\"Gi\\u00e1 & \\u01b0u \\u0111\\u00e3i t\\u1ed1t nh\\u1ea5t\",\"subtitle\":\"Cho \\u0111\\u01a1n h\\u00e0ng t\\u1eeb $50\"},\"2\":{\"icon\":\"general\\/icon-2.png\",\"title\":\"Mi\\u1ec5n ph\\u00ed v\\u1eadn chuy\\u1ec3n\",\"subtitle\":\"D\\u1ecbch v\\u1ee5 tuy\\u1ec7t v\\u1eddi 24\\/7\"},\"3\":{\"icon\":\"general\\/icon-3.png\",\"title\":\"\\u01afu \\u0111\\u00e3i h\\u00e0ng ng\\u00e0y\",\"subtitle\":\"Khi b\\u1ea1n \\u0111\\u0103ng k\\u00fd\"},\"4\":{\"icon\":\"general\\/icon-4.png\",\"title\":\"Nhi\\u1ec1u m\\u1eb7t h\\u00e0ng\",\"subtitle\":\"Gi\\u1ea3m gi\\u00e1 c\\u1ef1c l\\u1edbn\"},\"5\":{\"icon\":\"general\\/icon-5.png\",\"title\":\"D\\u1ec5 d\\u00e0ng ho\\u00e0n tr\\u1ea3\",\"subtitle\":\"Trong v\\u00f2ng 30 ng\\u00e0y\"}}}','2023-04-08 19:13:55','2023-04-08 19:13:55');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-09  9:14:20