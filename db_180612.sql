-- MySQL dump 10.16  Distrib 10.1.32-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: wpms
-- ------------------------------------------------------
-- Server version	10.1.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configs`
--

DROP TABLE IF EXISTS `configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vars` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configs`
--

LOCK TABLES `configs` WRITE;
/*!40000 ALTER TABLE `configs` DISABLE KEYS */;
INSERT INTO `configs` VALUES (1,'config.website','{\"admin\":\"css@wcms.kr\",\"title\":\"WPMS\",\"description\":\"Web Project Management System v1.0\",\"keywords\":\"10\\uc5b5\\ud648\\ud53c, \\ud648\\ud398\\uc774\\uc9c0, WCMS, WPMS\",\"filterwords\":[\"18\\uc544,18\\ub188,18\\uc0c8\\ub07c,18\\ub1ec,18\\ub178,18\\uac83,18\\ub118,\\uac1c\\ub144,\\uac1c\\ub188,\\uac1c\\ub1ec,\\uac1c\\uc0c8,\\uac1c\\uc0c9\\ub07c,\\uac1c\\uc138\\ub07c,\\uac1c\\uc138\\uc774,\\uac1c\\uc250\\uc774,\\uac1c\\uc251,\\uac1c\\uc27d,\\uac1c\\uc2dc\\ud0a4,\\uac1c\\uc790\\uc2dd,\\uac1c\\uc886,\\uac8c\\uc0c9\\uae30,\\uac8c\\uc0c9\\ub07c,\\uad11\\ub1ec,\\ub1ec,\\ub208\\uae54,\\ub258\\ubbf8\\ub7f4,\\ub2c8\\uadc0\\ubbf8,\\ub2c8\\uae30\\ubbf8,\\ub2c8\\ubbf8,\\ub3c4\\ucd2c,\\ub418\\uc9c8\\ub798,\\ub488\\uc838\\ub77c,\\ub488\\uc9c4\\ub2e4,\\ub514\\uc838\\ub77c,\\ub514\\uc9c4\\ub2e4,\\ub514\\uc9c8\\ub798,\\ubcd1\\uc270,\\ubcd1\\uc2e0,\\ubed0\\ud050,\\ubed1\\ud050,\\ubf41\\ud050,\\uc090\\ub9ac\\ub137,\\uc0c8\\uae84,\\uc26c\\ubc1c,\\uc26c\\ubc38,\\uc26c\\ud314,\\uc27d\\uc54c,\\uc2a4\\ud328\\ud0b9,\\uc2a4\\ud33d,\\uc2dc\\ubc8c,\\uc2dc\\ubd80\\ub784,\\uc2dc\\ubd80\\ub7f4,\\uc2dc\\ubd80\\ub9ac,\\uc2dc\\ubd88,\\uc2dc\\ube0c\\ub784,\\uc2dc\\ud30d,\\uc2dc\\ud314,\\uc2dc\\ud384,\\uc2e4\\ubc38,\\uc2ed8,\\uc2ed\\uc314,\\uc2ed\\ucc3d,\\uc2f6\\uc54c,\\uc309\\ub144,\\uc345\\ub188,\\uc314\\ub07c,\\uc329\\uc448,\\uc345,\\uc368\\ubc8c,\\uc369\\uc744\\ub144,\\uc384\\uae84,\\uc384\\uc5d1,\\uc4f0\\ubc14,\\uc4f0\\ubc1c,\\uc4f0\\ubc8c,\\uc4f0\\ud314,\\uc5288,\\uc528\\ub315,\\uc528\\ubc14,\\uc528\\ubc1c,\\uc528\\ubc45,\\uc528\\ubd09\\uc54c,\\uc528\\ubd80\\ub784,\\uc528\\ubd80\\ub7f4,\\uc528\\ubd80\\ub801,\\uc528\\ubd80\\ub9ac,\\uc528\\ubd88,\\uc528\\ube0c\\ub784,\\uc528\\ube60,\\uc528\\ube68,\\uc528\\ubf40\\ub784,\\uc528\\ud30d,\\uc528\\ud314,\\uc528\\ud384,\\uc539,\\uc544\\uac00\\ub9ac,\\uc544\\uac08\\uc774,\\uc5c4\\ucc3d,\\uc811\\ub144,\\uc7a1\\ub188,\\uc7ac\\ub784,\\uc800\\uc8fc\\uae00,\\uc870\\uae4c,\\uc870\\ube60,\\uc870\\uc7c1\\uc774,\\uc870\\uc9c0\\ub0d0,\\uc870\\uc9c4\\ub2e4,\\uc870\\uc9c8\\ub798,\\uc874\\ub098,\\uc874\\ub2c8,\\uc880\\ubb3c,\\uc881\\ub144,\\uc883,\\uc886,\\uc887,\\uc950\\ub784,\\uc950\\ub864,\\uc96c\\ub514,\\uc9c0\\ub784,\\uc9c0\\ub7f4,\\uc9c0\\ub864,\\uc9c0\\ubbf8\\ub784,\\ucacd\\ube71,\\u51f8,\\ud37d\\ud050,\\ubed1\\ud050,\\ube60\\ud050,\\u3145\\u3142\\u3139\\u3141\"],\"ipallow\":[\"\"],\"ipdeny\":[\"\"],\"metatag\":\"\",\"script\":\"\",\"css\":\"\",\"fileallow\":\"gif|jpg|jpeg|png|swf|asx|asf|wmv|wma|mpg|mpeg|mov|avi|mp3|hwp|doc|docx|xls|xlsx|ppt|pptx|zip\"}','2018-06-11 23:37:45','2018-06-11 23:45:32'),(2,'config.policy','{\"pointUse\":1,\"potinLogin\":100,\"pointRegist\":1000,\"pointSendMemo\":0,\"pointTerm\":0,\"pointRread\":0,\"pointWrite\":0,\"pointComment\":0,\"pointDownload\":0,\"pointFirstBuy\":1000,\"pointBirth\":1000,\"pointRenewal\":1000,\"pointRecommend\":0}','2018-06-11 23:37:45','2018-06-11 23:37:45'),(3,'config.user','{\"useSns\":0,\"useName\":0,\"useWebsite\":0,\"useTel\":0,\"useMobile\":0,\"useAddress\":0,\"useSignature\":0,\"useCertEamil\":0,\"useProfile\":0,\"defaultLevel\":2,\"expireNick\":30,\"expireDate\":30,\"useFilter\":[\"admin,administrator,\\uad00\\ub9ac\\uc790,\\uc6b4\\uc601\\uc790,\\uc5b4\\ub4dc\\ubbfc,\\uc8fc\\uc778\\uc7a5,webmaster,\\uc6f9\\ub9c8\\uc2a4\\ud130,sysop,\\uc2dc\\uc0bd,\\uc2dc\\uc0f5,manager,\\ub9e4\\ub2c8\\uc800,\\uba54\\ub2c8\\uc800,root,\\ub8e8\\ud2b8,su,guest,\\ubc29\\ubb38\\uac1d\"],\"useStipulation\":\"\\ud574\\ub2f9 \\ud648\\ud398\\uc774\\uc9c0\\uc5d0 \\ub9de\\ub294 \\ud68c\\uc6d0\\uc57d\\uad00\\uc744 \\uc785\\ub825\\ud569\\ub2c8\\ub2e4.\",\"usePrivacy\":\"\\ud574\\ub2f9 \\ud648\\ud398\\uc774\\uc9c0\\uc5d0 \\ub9de\\ub294 \\uac1c\\uc778\\uc815\\ubcf4\\ucc98\\ub9ac\\ubc29\\uce68\\uc744 \\uc785\\ub825\\ud569\\ub2c8\\ub2e4.\",\"passwordPolicyDigits\":6,\"passwordPolicySpecial\":0,\"passwordPolicyUpper\":0,\"passwordPolicyNumber\":0}','2018-06-11 23:37:45','2018-06-11 23:37:45'),(4,'config.mail','{\"emailUse\":1,\"emailMaster\":\"css@wcms.kr\",\"emailMasterName\":\"10\\uc5b5\\ud648\\ud53c\",\"emailSendMaster\":0,\"emailSendWriter\":0,\"emailSendRegister\":0}','2018-06-11 23:37:45','2018-06-11 23:37:45'),(5,'config.theme','{\"theme\":\"default\"}','2018-06-11 23:37:45','2018-06-11 23:37:45'),(6,'config.api','{\"kakaoKey\":null,\"kakaoSecret\":null,\"kakaoRedirect\":null,\"naverKey\":null,\"naverSecret\":null,\"naverRedirect\":null,\"facebookKey\":null,\"facebookSecret\":null,\"facebookRedirect\":null,\"googleKey\":null,\"googleSecret\":null,\"googleRedirect\":null}','2018-06-11 23:37:45','2018-06-11 23:37:45');
/*!40000 ALTER TABLE `configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domains`
--

DROP TABLE IF EXISTS `domains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domains` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `domain` varchar(45) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `title` varchar(45) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `description` text CHARACTER SET utf8,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domains`
--

LOCK TABLES `domains` WRITE;
/*!40000 ALTER TABLE `domains` DISABLE KEYS */;
INSERT INTO `domains` VALUES (1,'demo01.wpms.kr','WPMS v1.0','Web Project Management System');
/*!40000 ALTER TABLE `domains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (4,'2018_05_28_045442_add_colums_to_todos_table',2),(5,'2018_05_28_055407_add_done_to_todos_table',3),(6,'2018_05_28_084441_add_progress_to_todos_table',4),(7,'2018_05_31_070245_add_soft_deletes',5),(132,'2018_05_28_044605_create_todos_table',6),(133,'2018_06_07_075635_create_configs_table',6),(134,'2018_06_12_032626_create_users_table',6);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todos`
--

DROP TABLE IF EXISTS `todos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `todos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `done` tinyint(4) NOT NULL,
  `progress` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todos`
--

LOCK TABLES `todos` WRITE;
/*!40000 ALTER TABLE `todos` DISABLE KEYS */;
INSERT INTO `todos` VALUES (1,'Laravel 5.6 + Admin-Lte 援ъ꽦?섍린',1,90,'2018-06-12 00:00:06','2018-06-12 00:03:23',NULL),(2,'Install 紐⑤뜽 - WPMS ?ㅼ튂 ?꾨줈?몄뒪 援ы쁽',0,90,'2018-06-12 00:01:01','2018-06-12 00:04:14',NULL),(3,'ToDo 紐⑤뜽 - Ajax ?곕룞 援ы쁽',0,90,'2018-06-12 00:01:54','2018-06-12 00:05:21',NULL),(4,'Config 紐⑤뜽 - Cache瑜??듯븳 ?섍꼍?ㅼ젙 援ы쁽',0,50,'2018-06-12 00:02:15','2018-06-12 00:03:48',NULL),(5,'ToDo 紐⑤뜽 - Notification + Sound 援ы쁽',1,100,'2018-06-12 00:05:09','2018-06-12 00:05:25',NULL);
/*!40000 ALTER TABLE `todos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nick` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nick_date` date DEFAULT NULL,
  `homepage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` tinyint(4) DEFAULT '0',
  `sex` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certify` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adult` tinyint(4) DEFAULT '0',
  `dupinfo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` char(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addr1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addr2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addr_jibeon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature` text COLLATE utf8mb4_unicode_ci,
  `recommend` int(10) unsigned DEFAULT NULL,
  `point` int(11) DEFAULT '0',
  `today_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `login_ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leave_date` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intercept_date` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_certify` timestamp NULL DEFAULT NULL,
  `email_certify2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `memo` text COLLATE utf8mb4_unicode_ci,
  `lost_certify` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mailing` tinyint(4) DEFAULT '0',
  `sms` tinyint(4) DEFAULT '0',
  `open` tinyint(4) DEFAULT '0',
  `open_date` date DEFAULT NULL,
  `profile` text COLLATE utf8mb4_unicode_ci,
  `memo_call` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_hashkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `extra_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_8` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_9` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_10` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_today_login_index` (`today_login`),
  KEY `users_updated_at_index` (`updated_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'10?듯솃??,'css@wcms.kr','$2y$10$Hq0us.Af.16345lN5EhYqOr/YitYV8q2PWE.mDEcj2lK4yc/NhLq6','10?듯솃??,'2018-06-12',NULL,10,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9999999,'2018-06-12 08:37:45',NULL,NULL,NULL,NULL,'2018-06-11 23:37:45',NULL,NULL,NULL,1,0,1,'2018-06-12',NULL,NULL,'$2y$10$jxc5-s9SoeOfS3u4EjU8r.wYEXg7r4vEbdTkPJk8qkpmHkOMVaz7O',NULL,'2018-06-11 23:37:45','2018-06-11 23:37:45',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-12 18:49:41
