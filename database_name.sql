-- MariaDB dump 10.19  Distrib 10.4.21-MariaDB, for osx10.10 (x86_64)
--
-- Host: localhost    Database: lfy
-- ------------------------------------------------------
-- Server version	10.4.21-MariaDB

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
-- Table structure for table `advertisement_language`
--

DROP TABLE IF EXISTS `advertisement_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advertisement_language` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `advertisement_id` bigint(20) unsigned NOT NULL,
  `language_id` bigint(20) unsigned NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertisement_language`
--

LOCK TABLES `advertisement_language` WRITE;
/*!40000 ALTER TABLE `advertisement_language` DISABLE KEYS */;
INSERT INTO `advertisement_language` VALUES (1,0,119,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(2,1,39,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(3,2,90,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(4,3,133,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(5,4,34,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(6,5,52,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(7,6,36,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(8,7,72,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(9,8,58,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(10,9,68,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(11,10,52,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(12,11,92,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(13,12,98,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(14,13,19,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(15,14,122,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(16,15,117,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(17,16,122,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(18,17,112,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(19,18,1,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(20,19,29,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(21,20,96,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(22,21,85,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(23,22,34,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(24,23,50,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(25,24,47,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(26,25,90,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(27,26,38,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(28,27,129,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(29,28,75,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(30,29,60,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(31,30,37,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(32,31,137,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(33,32,116,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(34,33,52,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(35,34,87,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(36,35,115,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(37,36,113,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(38,37,101,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(39,38,103,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(40,39,4,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(41,40,9,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(42,41,142,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(43,42,86,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(44,43,40,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(45,44,120,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(46,45,3,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(47,46,98,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(48,47,135,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(49,48,91,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(50,49,44,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(51,50,133,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(52,51,87,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(53,52,102,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(54,53,147,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(55,54,138,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(56,55,11,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(57,56,25,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(58,57,95,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(59,58,69,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(60,59,113,'2022-03-29 12:23:27','2022-03-29 12:23:27'),(61,60,82,'2022-03-29 12:23:27','2022-03-29 12:23:27');
/*!40000 ALTER TABLE `advertisement_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advertisements`
--

DROP TABLE IF EXISTS `advertisements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advertisements` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `position_id` bigint(20) unsigned NOT NULL,
  `game_id` bigint(20) unsigned DEFAULT NULL,
  `organization_id` bigint(20) unsigned DEFAULT NULL,
  `individual_id` bigint(20) unsigned DEFAULT NULL,
  `status_id` bigint(20) unsigned NOT NULL,
  `rank_id` bigint(20) unsigned DEFAULT NULL,
  `game_role_id` bigint(20) unsigned DEFAULT NULL,
  `offer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expectation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `availability` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertisements`
--

LOCK TABLES `advertisements` WRITE;
/*!40000 ALTER TABLE `advertisements` DISABLE KEYS */;
INSERT INTO `advertisements` VALUES (1,'2022-03-29 10:23:27','2022-03-29 10:23:27',3,2,3,1,1,25,10,NULL,NULL,NULL),(2,'2022-03-29 10:23:27','2022-03-29 10:23:27',8,2,49,2,2,21,12,NULL,NULL,NULL),(3,'2022-03-29 10:23:27','2022-03-29 10:23:27',4,4,7,3,2,21,1,NULL,NULL,NULL),(4,'2022-03-29 10:23:27','2022-03-29 10:23:27',7,3,71,4,1,16,9,NULL,NULL,NULL),(5,'2022-03-29 10:23:27','2022-03-29 10:23:27',8,2,30,5,2,28,7,NULL,NULL,NULL),(6,'2022-03-29 10:23:27','2022-03-29 10:23:27',1,3,3,6,1,16,12,NULL,NULL,NULL),(7,'2022-03-29 10:23:27','2022-03-29 10:23:27',3,1,53,7,2,21,12,NULL,NULL,NULL),(8,'2022-03-29 10:23:27','2022-03-29 10:23:27',5,1,87,8,2,9,5,NULL,NULL,NULL),(9,'2022-03-29 10:23:27','2022-03-29 10:23:27',2,2,41,9,1,22,14,NULL,NULL,NULL),(10,'2022-03-29 10:23:27','2022-03-29 10:23:27',3,4,85,10,1,12,1,NULL,NULL,NULL),(11,'2022-03-29 10:23:27','2022-03-29 10:23:27',1,2,14,11,1,10,12,NULL,NULL,NULL),(12,'2022-03-29 10:23:27','2022-03-29 10:23:27',2,3,55,12,2,33,4,NULL,NULL,NULL),(13,'2022-03-29 10:23:27','2022-03-29 10:23:27',8,3,18,13,2,8,3,NULL,NULL,NULL),(14,'2022-03-29 10:23:27','2022-03-29 10:23:27',7,1,2,14,2,6,4,NULL,NULL,NULL),(15,'2022-03-29 10:23:27','2022-03-29 10:23:27',5,4,13,15,2,25,2,NULL,NULL,NULL),(16,'2022-03-29 10:23:27','2022-03-29 10:23:27',8,1,34,16,1,17,3,NULL,NULL,NULL),(17,'2022-03-29 10:23:27','2022-03-29 10:23:27',3,2,53,17,1,2,5,NULL,NULL,NULL),(18,'2022-03-29 10:23:27','2022-03-29 10:23:27',3,2,68,18,1,20,1,NULL,NULL,NULL),(19,'2022-03-29 10:23:27','2022-03-29 10:23:27',5,4,35,19,1,14,10,NULL,NULL,NULL),(20,'2022-03-29 10:23:27','2022-03-29 10:23:27',4,2,68,20,2,19,14,NULL,NULL,NULL),(21,'2022-03-29 10:23:27','2022-03-29 10:23:27',2,2,44,21,2,29,9,NULL,NULL,NULL),(22,'2022-03-29 10:23:27','2022-03-29 10:23:27',5,4,4,22,1,26,13,NULL,NULL,NULL),(23,'2022-03-29 10:23:27','2022-03-29 10:23:27',6,2,62,23,2,5,7,NULL,NULL,NULL),(24,'2022-03-29 10:23:27','2022-03-29 10:23:27',6,4,51,24,2,19,1,NULL,NULL,NULL),(25,'2022-03-29 10:23:27','2022-03-29 10:23:27',8,1,53,25,1,33,4,NULL,NULL,NULL),(26,'2022-03-29 10:23:27','2022-03-29 10:23:27',6,2,96,26,2,33,14,NULL,NULL,NULL),(27,'2022-03-29 10:23:27','2022-03-29 10:23:27',6,2,14,27,1,9,1,NULL,NULL,NULL),(28,'2022-03-29 10:23:27','2022-03-29 10:23:27',7,4,3,28,1,31,12,NULL,NULL,NULL),(29,'2022-03-29 10:23:27','2022-03-29 10:23:27',8,1,74,29,2,7,13,NULL,NULL,NULL),(30,'2022-03-29 10:23:27','2022-03-29 10:23:27',4,1,76,30,1,23,15,NULL,NULL,NULL),(31,'2022-03-29 10:23:27','2022-03-29 10:23:27',2,4,74,31,1,4,14,NULL,NULL,NULL),(32,'2022-03-29 10:23:27','2022-03-29 10:23:27',2,4,60,32,1,13,11,NULL,NULL,NULL),(33,'2022-03-29 10:23:27','2022-03-29 10:23:27',1,1,34,33,2,26,9,NULL,NULL,NULL),(34,'2022-03-29 10:23:27','2022-03-29 10:23:27',4,1,80,34,1,13,6,NULL,NULL,NULL),(35,'2022-03-29 10:23:27','2022-03-29 10:23:27',6,3,4,35,1,5,1,NULL,NULL,NULL),(36,'2022-03-29 10:23:27','2022-03-29 10:23:27',6,2,11,36,2,6,7,NULL,NULL,NULL),(37,'2022-03-29 10:23:27','2022-03-29 10:23:27',3,3,3,37,2,2,9,NULL,NULL,NULL),(38,'2022-03-29 10:23:27','2022-03-29 10:23:27',3,2,30,38,1,1,2,NULL,NULL,NULL),(39,'2022-03-29 10:23:27','2022-03-29 10:23:27',2,3,65,39,1,33,11,NULL,NULL,NULL),(40,'2022-03-29 10:23:27','2022-03-29 10:23:27',1,4,90,40,1,30,4,NULL,NULL,NULL),(41,'2022-03-29 10:23:27','2022-03-29 10:23:27',8,3,5,41,2,1,3,NULL,NULL,NULL),(42,'2022-03-29 10:23:27','2022-03-29 10:23:27',1,2,88,42,1,9,4,NULL,NULL,NULL),(43,'2022-03-29 10:23:27','2022-03-29 10:23:27',4,4,92,43,2,6,11,NULL,NULL,NULL),(44,'2022-03-29 10:23:27','2022-03-29 10:23:27',1,2,95,44,1,30,6,NULL,NULL,NULL),(45,'2022-03-29 10:23:27','2022-03-29 10:23:27',6,2,30,45,2,22,6,NULL,NULL,NULL),(46,'2022-03-29 10:23:27','2022-03-29 10:23:27',5,4,59,46,2,10,2,NULL,NULL,NULL),(47,'2022-03-29 10:23:27','2022-03-29 10:23:27',8,3,97,47,1,33,3,NULL,NULL,NULL),(48,'2022-03-29 10:23:27','2022-03-29 10:23:27',1,2,43,48,1,29,12,NULL,NULL,NULL),(49,'2022-03-29 10:23:27','2022-03-29 10:23:27',7,3,30,49,2,23,1,NULL,NULL,NULL),(50,'2022-03-29 10:23:27','2022-03-29 10:23:27',3,1,58,50,2,20,7,NULL,NULL,NULL),(51,'2022-03-29 10:23:27','2022-03-29 10:23:27',3,1,14,51,2,4,15,NULL,NULL,NULL),(52,'2022-03-29 10:23:27','2022-03-29 10:23:27',3,3,86,52,2,19,10,NULL,NULL,NULL),(53,'2022-03-29 10:23:27','2022-03-29 10:23:27',7,2,64,53,1,8,8,NULL,NULL,NULL),(54,'2022-03-29 10:23:27','2022-03-29 10:23:27',8,1,90,54,2,18,5,NULL,NULL,NULL),(55,'2022-03-29 10:23:27','2022-03-29 10:23:27',4,2,86,55,2,10,9,NULL,NULL,NULL),(56,'2022-03-29 10:23:27','2022-03-29 10:23:27',3,2,68,56,2,25,6,NULL,NULL,NULL),(57,'2022-03-29 10:23:27','2022-03-29 10:23:27',8,1,15,57,2,34,8,NULL,NULL,NULL),(58,'2022-03-29 10:23:27','2022-03-29 10:23:27',6,1,33,58,2,27,8,NULL,NULL,NULL),(59,'2022-03-29 10:23:27','2022-03-29 10:23:27',3,4,14,59,1,10,11,NULL,NULL,NULL),(60,'2022-03-29 10:23:27','2022-03-29 10:23:27',2,2,26,60,2,9,8,NULL,NULL,NULL);
/*!40000 ALTER TABLE `advertisements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_individual`
--

DROP TABLE IF EXISTS `contact_individual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_individual` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `individual_id` bigint(20) unsigned NOT NULL,
  `contact_id` bigint(20) unsigned NOT NULL,
  `url` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_individual`
--

LOCK TABLES `contact_individual` WRITE;
/*!40000 ALTER TABLE `contact_individual` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_individual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_organization`
--

DROP TABLE IF EXISTS `contact_organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_organization` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` bigint(20) unsigned NOT NULL,
  `contact_id` bigint(20) unsigned NOT NULL,
  `url` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_organization`
--

LOCK TABLES `contact_organization` WRITE;
/*!40000 ALTER TABLE `contact_organization` DISABLE KEYS */;
INSERT INTO `contact_organization` VALUES (1,NULL,NULL,5,1,'dc'),(2,NULL,NULL,5,3,'ig'),(3,NULL,NULL,5,6,'opgg'),(4,NULL,NULL,7,7,'lolpros'),(5,NULL,NULL,7,4,'fb');
/*!40000 ALTER TABLE `contact_organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'2022-03-29 10:23:27','2022-03-29 10:23:27','Discord'),(2,'2022-03-29 10:23:27','2022-03-29 10:23:27','Twitter'),(3,'2022-03-29 10:23:27','2022-03-29 10:23:27','Instagram'),(4,'2022-03-29 10:23:27','2022-03-29 10:23:27','Facebook'),(5,'2022-03-29 10:23:27','2022-03-29 10:23:27','Twitch'),(6,'2022-03-29 10:23:27','2022-03-29 10:23:27','opgg'),(7,'2022-03-29 10:23:27','2022-03-29 10:23:27','lolpros');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
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
-- Table structure for table `game_individual`
--

DROP TABLE IF EXISTS `game_individual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_individual` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `individual_id` bigint(20) unsigned NOT NULL,
  `game_id` bigint(20) unsigned NOT NULL,
  `server_id` bigint(20) unsigned DEFAULT NULL,
  `game_role_id` bigint(20) unsigned DEFAULT NULL,
  `rank_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_individual`
--

LOCK TABLES `game_individual` WRITE;
/*!40000 ALTER TABLE `game_individual` DISABLE KEYS */;
INSERT INTO `game_individual` VALUES (1,2,3,26,6,21,'2022-03-29 14:23:27',NULL),(2,3,1,18,2,9,'2022-03-29 14:23:27',NULL),(3,19,3,14,2,1,'2022-03-29 14:23:27',NULL),(4,21,3,6,14,23,'2022-03-29 14:23:27',NULL),(5,9,1,11,2,2,'2022-03-29 14:23:27',NULL),(6,6,3,12,1,8,'2022-03-29 14:23:27',NULL),(7,29,1,11,8,2,'2022-03-29 14:23:27',NULL),(8,12,2,30,8,5,'2022-03-29 14:23:27',NULL),(9,24,2,14,1,27,'2022-03-29 14:23:27',NULL),(10,9,2,27,11,28,'2022-03-29 14:23:27',NULL),(11,5,1,15,10,15,'2022-03-29 14:23:27',NULL),(12,28,2,9,1,23,'2022-03-29 14:23:27',NULL),(13,2,2,18,5,7,'2022-03-29 14:23:27',NULL),(14,10,2,25,5,9,'2022-03-29 14:23:27',NULL),(15,15,4,18,15,21,'2022-03-29 14:23:27',NULL),(16,14,3,6,1,28,'2022-03-29 14:23:27',NULL),(17,8,2,23,10,28,'2022-03-29 14:23:27',NULL),(18,7,2,10,6,25,'2022-03-29 14:23:27',NULL),(19,26,1,16,10,5,'2022-03-29 14:23:27',NULL),(20,7,3,17,7,5,'2022-03-29 14:23:27',NULL),(21,22,2,30,12,27,'2022-03-29 14:23:27',NULL),(22,17,3,1,7,19,'2022-03-29 14:23:27',NULL),(23,27,1,29,7,29,'2022-03-29 14:23:27',NULL),(24,23,4,13,7,27,'2022-03-29 14:23:27',NULL),(25,21,3,11,2,30,'2022-03-29 14:23:27',NULL),(26,16,2,29,9,19,'2022-03-29 14:23:27',NULL),(27,9,1,3,6,24,'2022-03-29 14:23:27',NULL),(28,27,1,18,10,6,'2022-03-29 14:23:27',NULL),(29,7,3,3,9,30,'2022-03-29 14:23:27',NULL),(30,19,4,9,5,11,'2022-03-29 14:23:27',NULL),(31,1,3,29,9,27,'2022-03-29 14:23:27',NULL),(32,1,4,5,5,27,'2022-03-29 14:23:27',NULL),(33,15,3,6,14,24,'2022-03-29 14:23:27',NULL),(34,27,1,18,6,29,'2022-03-29 14:23:27',NULL),(35,5,2,10,8,15,'2022-03-29 14:23:27',NULL),(36,24,1,17,7,2,'2022-03-29 14:23:27',NULL),(37,23,3,18,5,9,'2022-03-29 14:23:27',NULL),(38,18,4,13,4,8,'2022-03-29 14:23:27',NULL),(39,25,4,20,5,22,'2022-03-29 14:23:27',NULL),(40,9,2,17,13,7,'2022-03-29 14:23:27',NULL),(41,14,4,3,4,13,'2022-03-29 14:23:27',NULL),(42,3,1,7,3,19,'2022-03-29 14:23:27',NULL),(43,5,1,17,14,24,'2022-03-29 14:23:27',NULL),(44,15,4,10,7,28,'2022-03-29 14:23:27',NULL),(45,21,4,22,6,9,'2022-03-29 14:23:27',NULL),(46,18,3,19,5,15,'2022-03-29 14:23:27',NULL),(47,5,1,14,6,19,'2022-03-29 14:23:27',NULL),(48,2,2,25,11,11,'2022-03-29 14:23:27',NULL),(49,27,1,5,5,23,'2022-03-29 14:23:27',NULL),(50,10,4,16,6,26,'2022-03-29 14:23:27',NULL),(51,14,3,18,7,24,'2022-03-29 14:23:27',NULL),(52,6,2,27,4,10,'2022-03-29 14:23:27',NULL),(53,18,2,26,6,5,'2022-03-29 14:23:27',NULL),(54,24,2,6,7,17,'2022-03-29 14:23:27',NULL),(55,6,2,14,11,30,'2022-03-29 14:23:27',NULL),(56,5,1,30,12,17,'2022-03-29 14:23:27',NULL),(57,24,3,30,15,9,'2022-03-29 14:23:27',NULL),(58,27,2,26,14,23,'2022-03-29 14:23:27',NULL),(59,9,1,21,15,23,'2022-03-29 14:23:27',NULL),(60,26,2,26,15,2,'2022-03-29 14:23:27',NULL),(61,23,1,28,9,22,'2022-03-29 14:23:27',NULL),(62,24,2,12,1,11,'2022-03-29 14:23:27',NULL),(63,15,2,16,4,19,'2022-03-29 14:23:27',NULL),(64,14,1,26,10,8,'2022-03-29 14:23:27',NULL),(65,3,2,12,8,4,'2022-03-29 14:23:27',NULL),(66,8,2,7,6,4,'2022-03-29 14:23:27',NULL),(67,16,4,11,12,8,'2022-03-29 14:23:27',NULL),(68,18,3,9,15,21,'2022-03-29 14:23:27',NULL),(69,4,4,14,2,4,'2022-03-29 14:23:27',NULL),(70,9,3,17,8,7,'2022-03-29 14:23:27',NULL),(71,1,2,13,4,1,'2022-03-29 14:23:27',NULL),(72,18,1,11,3,30,'2022-03-29 14:23:27',NULL),(73,20,3,7,2,15,'2022-03-29 14:23:27',NULL),(74,2,2,6,1,29,'2022-03-29 14:23:27',NULL),(75,12,3,9,15,16,'2022-03-29 14:23:27',NULL),(76,5,3,1,1,30,'2022-03-29 14:23:27',NULL),(77,29,3,22,14,6,'2022-03-29 14:23:27',NULL),(78,24,3,9,9,29,'2022-03-29 14:23:27',NULL),(79,27,2,3,11,16,'2022-03-29 14:23:27',NULL),(80,30,1,10,1,3,'2022-03-29 14:23:27',NULL),(81,1,4,8,4,2,'2022-03-29 14:23:27',NULL),(82,14,2,30,14,4,'2022-03-29 14:23:27',NULL),(83,3,3,14,13,20,'2022-03-29 14:23:27',NULL),(84,19,2,23,9,26,'2022-03-29 14:23:27',NULL),(85,16,1,21,11,21,'2022-03-29 14:23:27',NULL),(86,17,1,19,13,22,'2022-03-29 14:23:27',NULL),(87,5,1,6,7,14,'2022-03-29 14:23:27',NULL),(88,22,4,12,15,1,'2022-03-29 14:23:27',NULL),(89,8,1,27,2,3,'2022-03-29 14:23:27',NULL),(90,29,1,29,10,23,'2022-03-29 14:23:27',NULL),(91,10,4,30,9,19,'2022-03-29 14:23:27',NULL),(92,15,1,11,1,18,'2022-03-29 14:23:27',NULL),(93,5,2,9,9,23,'2022-03-29 14:23:27',NULL),(94,18,2,25,4,15,'2022-03-29 14:23:27',NULL),(95,26,3,22,15,30,'2022-03-29 14:23:27',NULL),(96,27,4,11,11,3,'2022-03-29 14:23:27',NULL),(97,12,3,26,4,7,'2022-03-29 14:23:27',NULL),(98,27,4,10,8,18,'2022-03-29 14:23:27',NULL),(99,6,3,14,5,29,'2022-03-29 14:23:27',NULL);
/*!40000 ALTER TABLE `game_individual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_organization`
--

DROP TABLE IF EXISTS `game_organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_organization` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `game_id` bigint(20) unsigned NOT NULL,
  `organization_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_organization`
--

LOCK TABLES `game_organization` WRITE;
/*!40000 ALTER TABLE `game_organization` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_roles`
--

DROP TABLE IF EXISTS `game_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `game_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_roles`
--

LOCK TABLES `game_roles` WRITE;
/*!40000 ALTER TABLE `game_roles` DISABLE KEYS */;
INSERT INTO `game_roles` VALUES (1,'2022-03-29 10:23:27','2022-03-29 10:23:27','Top',1),(2,'2022-03-29 10:23:27','2022-03-29 10:23:27','Jungle',1),(3,'2022-03-29 10:23:27','2022-03-29 10:23:27','Mid',1),(4,'2022-03-29 10:23:27','2022-03-29 10:23:27','ADC',1),(5,'2022-03-29 10:23:27','2022-03-29 10:23:27','Support',1),(6,'2022-03-29 10:23:27','2022-03-29 10:23:27','Fragger',2),(7,'2022-03-29 10:23:27','2022-03-29 10:23:27','Support',2),(8,'2022-03-29 10:23:27','2022-03-29 10:23:27','Leader',2),(9,'2022-03-29 10:23:27','2022-03-29 10:23:27','Lurker',2),(10,'2022-03-29 10:23:27','2022-03-29 10:23:27','Awper',2),(11,'2022-03-29 10:23:27','2022-03-29 10:23:27','Scout',3),(12,'2022-03-29 10:23:27','2022-03-29 10:23:27','Leader',3),(13,'2022-03-29 10:23:27','2022-03-29 10:23:27','Carry',3),(14,'2022-03-29 10:23:27','2022-03-29 10:23:27','Lurker',3),(15,'2022-03-29 10:23:27','2022-03-29 10:23:27','Support',3);
/*!40000 ALTER TABLE `game_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_server`
--

DROP TABLE IF EXISTS `game_server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_server` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `game_id` bigint(20) unsigned NOT NULL,
  `server_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_server`
--

LOCK TABLES `game_server` WRITE;
/*!40000 ALTER TABLE `game_server` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_server` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `games` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES (1,'League of Legends','2022-03-29 10:23:27','2022-03-29 10:23:27'),(2,'Counter-Strike: Global Offensive','2022-03-29 10:23:27','2022-03-29 10:23:27'),(3,'PlayerUnknown\'s Battlegrounds','2022-03-29 10:23:27','2022-03-29 10:23:27'),(4,'Fortnite','2022-03-29 10:23:27','2022-03-29 10:23:27');
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `individual_language`
--

DROP TABLE IF EXISTS `individual_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `individual_language` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `individual_id` bigint(20) unsigned NOT NULL,
  `language_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `individual_language`
--

LOCK TABLES `individual_language` WRITE;
/*!40000 ALTER TABLE `individual_language` DISABLE KEYS */;
INSERT INTO `individual_language` VALUES (1,5,148,NULL,NULL),(2,36,23,NULL,NULL),(3,97,124,NULL,NULL),(4,46,129,NULL,NULL),(5,9,106,NULL,NULL),(6,34,25,NULL,NULL),(7,77,120,NULL,NULL),(8,32,58,NULL,NULL),(9,28,83,NULL,NULL),(10,73,46,NULL,NULL),(11,55,63,NULL,NULL),(12,62,133,NULL,NULL),(13,67,23,NULL,NULL),(14,89,56,NULL,NULL),(15,16,1,NULL,NULL),(16,10,93,NULL,NULL),(17,92,105,NULL,NULL),(18,14,8,NULL,NULL),(19,31,68,NULL,NULL),(20,74,126,NULL,NULL),(21,83,35,NULL,NULL),(22,35,15,NULL,NULL),(23,79,147,NULL,NULL),(24,22,10,NULL,NULL),(25,64,123,NULL,NULL),(26,2,45,NULL,NULL),(27,57,89,NULL,NULL),(28,49,54,NULL,NULL),(29,18,106,NULL,NULL),(30,23,56,NULL,NULL),(31,77,126,NULL,NULL),(32,87,113,NULL,NULL),(33,46,118,NULL,NULL),(34,96,153,NULL,NULL),(35,60,148,NULL,NULL),(36,88,81,NULL,NULL),(37,89,118,NULL,NULL),(38,83,63,NULL,NULL),(39,31,116,NULL,NULL),(40,97,39,NULL,NULL),(41,10,5,NULL,NULL),(42,80,114,NULL,NULL),(43,44,118,NULL,NULL),(44,37,63,NULL,NULL),(45,1,33,NULL,NULL),(46,24,24,NULL,NULL),(47,2,114,NULL,NULL),(48,17,107,NULL,NULL),(49,62,36,NULL,NULL),(50,65,147,NULL,NULL),(51,13,106,NULL,NULL),(52,88,82,NULL,NULL),(53,61,17,NULL,NULL),(54,49,58,NULL,NULL),(55,22,17,NULL,NULL),(56,13,80,NULL,NULL),(57,85,32,NULL,NULL),(58,86,131,NULL,NULL),(59,24,10,NULL,NULL),(60,26,109,NULL,NULL),(61,71,102,NULL,NULL),(62,71,10,NULL,NULL),(63,55,69,NULL,NULL),(64,17,9,NULL,NULL),(65,81,106,NULL,NULL),(66,8,53,NULL,NULL),(67,30,104,NULL,NULL),(68,92,27,NULL,NULL),(69,14,150,NULL,NULL),(70,18,57,NULL,NULL),(71,63,136,NULL,NULL),(72,28,119,NULL,NULL),(73,67,151,NULL,NULL),(74,74,113,NULL,NULL),(75,27,133,NULL,NULL),(76,78,83,NULL,NULL),(77,84,71,NULL,NULL),(78,75,130,NULL,NULL),(79,81,88,NULL,NULL),(80,46,93,NULL,NULL),(81,10,41,NULL,NULL),(82,77,61,NULL,NULL),(83,39,108,NULL,NULL),(84,81,90,NULL,NULL),(85,95,79,NULL,NULL),(86,16,48,NULL,NULL),(87,59,39,NULL,NULL),(88,65,78,NULL,NULL),(89,21,115,NULL,NULL),(90,66,102,NULL,NULL),(91,56,10,NULL,NULL),(92,42,16,NULL,NULL),(93,77,87,NULL,NULL),(94,13,75,NULL,NULL),(95,70,112,NULL,NULL),(96,26,138,NULL,NULL),(97,77,135,NULL,NULL),(98,62,126,NULL,NULL),(99,67,72,NULL,NULL);
/*!40000 ALTER TABLE `individual_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `individual_position`
--

DROP TABLE IF EXISTS `individual_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `individual_position` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `individual_id` bigint(20) unsigned NOT NULL,
  `position_id` bigint(20) unsigned NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `individual_position`
--

LOCK TABLES `individual_position` WRITE;
/*!40000 ALTER TABLE `individual_position` DISABLE KEYS */;
INSERT INTO `individual_position` VALUES (1,54,6,'2022-03-29 14:23:27',NULL),(2,22,7,'2022-03-29 14:23:27',NULL),(3,79,6,'2022-03-29 14:23:27',NULL),(4,42,1,'2022-03-29 14:23:27',NULL),(5,71,3,'2022-03-29 14:23:27',NULL),(6,75,8,'2022-03-29 14:23:27',NULL),(7,89,3,'2022-03-29 14:23:27',NULL),(8,92,5,'2022-03-29 14:23:27',NULL),(9,90,5,'2022-03-29 14:23:27',NULL),(10,37,7,'2022-03-29 14:23:27',NULL),(11,30,7,'2022-03-29 14:23:27',NULL),(12,95,6,'2022-03-29 14:23:27',NULL),(13,69,5,'2022-03-29 14:23:27',NULL),(14,99,5,'2022-03-29 14:23:27',NULL),(15,87,4,'2022-03-29 14:23:27',NULL),(16,82,2,'2022-03-29 14:23:27',NULL),(17,13,7,'2022-03-29 14:23:27',NULL),(18,67,5,'2022-03-29 14:23:27',NULL),(19,55,1,'2022-03-29 14:23:27',NULL),(20,67,3,'2022-03-29 14:23:27',NULL),(21,14,1,'2022-03-29 14:23:27',NULL),(22,4,7,'2022-03-29 14:23:27',NULL),(23,3,8,'2022-03-29 14:23:27',NULL),(24,17,8,'2022-03-29 14:23:27',NULL),(25,13,8,'2022-03-29 14:23:27',NULL),(26,26,4,'2022-03-29 14:23:27',NULL),(27,63,6,'2022-03-29 14:23:27',NULL),(28,68,1,'2022-03-29 14:23:27',NULL),(29,65,6,'2022-03-29 14:23:27',NULL),(30,65,2,'2022-03-29 14:23:27',NULL),(31,17,3,'2022-03-29 14:23:27',NULL),(32,73,6,'2022-03-29 14:23:27',NULL),(33,71,3,'2022-03-29 14:23:27',NULL),(34,84,2,'2022-03-29 14:23:27',NULL),(35,22,2,'2022-03-29 14:23:27',NULL),(36,65,3,'2022-03-29 14:23:27',NULL),(37,26,3,'2022-03-29 14:23:27',NULL),(38,19,4,'2022-03-29 14:23:27',NULL),(39,46,3,'2022-03-29 14:23:27',NULL),(40,17,7,'2022-03-29 14:23:27',NULL),(41,84,3,'2022-03-29 14:23:27',NULL),(42,6,8,'2022-03-29 14:23:27',NULL),(43,21,4,'2022-03-29 14:23:27',NULL),(44,35,4,'2022-03-29 14:23:27',NULL),(45,96,2,'2022-03-29 14:23:27',NULL),(46,67,4,'2022-03-29 14:23:27',NULL),(47,23,4,'2022-03-29 14:23:27',NULL),(48,91,5,'2022-03-29 14:23:27',NULL),(49,89,7,'2022-03-29 14:23:27',NULL),(50,1,4,'2022-03-29 14:23:27',NULL),(51,35,5,'2022-03-29 14:23:27',NULL),(52,55,2,'2022-03-29 14:23:27',NULL),(53,97,2,'2022-03-29 14:23:27',NULL),(54,28,5,'2022-03-29 14:23:27',NULL),(55,93,2,'2022-03-29 14:23:27',NULL),(56,47,8,'2022-03-29 14:23:27',NULL),(57,89,4,'2022-03-29 14:23:27',NULL),(58,18,4,'2022-03-29 14:23:27',NULL),(59,62,5,'2022-03-29 14:23:27',NULL),(60,70,8,'2022-03-29 14:23:27',NULL),(61,30,8,'2022-03-29 14:23:27',NULL),(62,12,3,'2022-03-29 14:23:27',NULL),(63,35,1,'2022-03-29 14:23:27',NULL),(64,64,8,'2022-03-29 14:23:27',NULL),(65,65,7,'2022-03-29 14:23:27',NULL),(66,17,5,'2022-03-29 14:23:27',NULL),(67,57,4,'2022-03-29 14:23:27',NULL),(68,61,1,'2022-03-29 14:23:27',NULL),(69,7,5,'2022-03-29 14:23:27',NULL),(70,1,3,'2022-03-29 14:23:27',NULL),(71,24,6,'2022-03-29 14:23:27',NULL),(72,38,6,'2022-03-29 14:23:27',NULL),(73,88,4,'2022-03-29 14:23:27',NULL),(74,2,3,'2022-03-29 14:23:27',NULL),(75,3,4,'2022-03-29 14:23:27',NULL),(76,45,5,'2022-03-29 14:23:27',NULL),(77,3,5,'2022-03-29 14:23:27',NULL),(78,73,5,'2022-03-29 14:23:27',NULL),(79,46,1,'2022-03-29 14:23:27',NULL),(80,78,3,'2022-03-29 14:23:27',NULL),(81,90,4,'2022-03-29 14:23:27',NULL),(82,10,3,'2022-03-29 14:23:27',NULL),(83,71,6,'2022-03-29 14:23:27',NULL),(84,80,1,'2022-03-29 14:23:27',NULL),(85,9,8,'2022-03-29 14:23:27',NULL),(86,51,2,'2022-03-29 14:23:27',NULL),(87,92,1,'2022-03-29 14:23:27',NULL),(88,28,1,'2022-03-29 14:23:27',NULL),(89,98,2,'2022-03-29 14:23:27',NULL),(90,25,6,'2022-03-29 14:23:27',NULL),(91,9,5,'2022-03-29 14:23:27',NULL),(92,55,8,'2022-03-29 14:23:27',NULL),(93,19,2,'2022-03-29 14:23:27',NULL),(94,25,2,'2022-03-29 14:23:27',NULL),(95,70,3,'2022-03-29 14:23:27',NULL),(96,56,8,'2022-03-29 14:23:27',NULL),(97,68,4,'2022-03-29 14:23:27',NULL),(98,43,4,'2022-03-29 14:23:27',NULL),(99,45,7,'2022-03-29 14:23:27',NULL);
/*!40000 ALTER TABLE `individual_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `individuals`
--

DROP TABLE IF EXISTS `individuals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `individuals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `nickname` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date NOT NULL,
  `nationality_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `individuals_nickname_unique` (`nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `individuals`
--

LOCK TABLES `individuals` WRITE;
/*!40000 ALTER TABLE `individuals` DISABLE KEYS */;
INSERT INTO `individuals` VALUES (1,1,'JanessaMarks','Wava','Turcotte','1990-02-24',1,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(2,2,'MarquisHamill','Adrienne','Weissnat','2011-09-17',34,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(3,3,'KrisCole','Sincere','Hegmann','2009-12-29',29,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(4,4,'JudeZiemann','Clark','Zieme','1990-02-09',79,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(5,5,'ZakaryRowe','Jeramy','Runte','2006-09-13',6,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(6,6,'RupertStracke','Alejandrin','McDermott','1998-06-15',99,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(7,7,'FayeTrantow','Bianka','Ratke','1994-09-17',157,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(8,8,'AbbeyBrown','Estella','Wisoky','2004-08-17',125,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(9,9,'KennediZiemann','Macy','Haley','2003-10-12',128,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(10,10,'KelsieBarrows','Tamara','Denesik','2001-01-30',58,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(11,11,'SydneeMarks','Zack','Towne','2002-10-11',155,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(12,12,'MonaRatke','Ewald','Berge','2003-03-02',69,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(13,13,'StephanieReichel','Lilian','Bergstrom','2006-07-03',7,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(14,14,'WillieArmstrong','Estelle','Dickinson','2012-03-02',108,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(15,15,'DiannaBergstrom','Ubaldo','Stroman','1999-07-11',134,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(16,16,'ArchBrekke','Cleo','Hayes','1998-11-12',109,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(17,17,'RebecaFay','Kaitlyn','Turner','1991-09-25',55,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(18,18,'RalphEmard','Cody','Batz','1991-06-09',149,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(19,19,'AlenaQuitzon','Elijah','Hilpert','1997-11-03',9,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(20,20,'CordeliaSchamberger','Hilma','Doyle','2002-03-23',104,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(21,21,'SylvesterRussel','Donavon','Runte','1990-03-31',38,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(22,22,'JaydeHane','Wava','Brekke','1997-01-27',70,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(23,23,'MargareteWisozk','Glen','Hettinger','2001-08-01',49,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(24,24,'AubreeAuer','Sienna','Bosco','1990-05-15',79,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(25,25,'DorothyHammes','Ollie','Treutel','2003-05-14',70,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(26,26,'WalkerNienow','Kris','Shanahan','1990-04-14',69,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(27,27,'SkylarSchuster','Tina','Kiehn','2012-03-14',70,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(28,28,'AmaliaAbshire','Verner','Swift','1992-02-23',32,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(29,29,'FrancescoSauer','Dedrick','Lowe','1996-04-14',38,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(30,30,'AbnerHagenes','Amir','Sipes','1991-01-17',47,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(31,31,'DanaBaumbach','Jameson','Heidenreich','1998-07-15',33,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(32,32,'LamarLubowitz','Meagan','Maggio','2010-04-24',108,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(33,33,'RowanCasper','Henderson','Wilderman','2008-11-12',117,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(34,34,'FloyMayert','Elias','Mueller','2002-07-29',76,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(35,35,'ValentinKunze','Wyman','Emmerich','2011-08-17',79,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(36,36,'AdrienNolan','Aliyah','Konopelski','2007-04-16',49,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(37,37,'AlberthaHuel','Zoey','Tromp','1994-12-30',98,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(38,38,'MaymieRempel','Ciara','Gislason','2000-10-03',54,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(39,39,'ShaniyaStoltenberg','Ada','Schuppe','2002-01-08',36,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(40,40,'KatarinaMarquardt','Haskell','Ledner','2003-07-08',123,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(41,41,'ViolaWindler','Anais','Jones','1994-06-15',36,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(42,42,'JadonBaumbach','Finn','Bayer','1998-12-03',53,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(43,43,'BritneyMuller','Barrett','Ortiz','1996-06-12',136,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(44,44,'GregBrown','Mack','Botsford','2012-05-07',1,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(45,45,'JoeYundt','Lyla','Prosacco','1999-12-13',2,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(46,46,'JesusCollier','Judge','Dooley','1992-08-04',6,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(47,47,'AlexZboncak','Efrain','Lowe','2005-10-11',81,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(48,48,'TalonAdams','Lambert','Mayert','1992-08-12',103,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(49,49,'StoneTurner','Corbin','Dach','1999-08-11',92,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(50,50,'AlfredZulauf','Luciano','Rath','2008-02-10',71,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(51,51,'LottieGerhold','Tiara','Ward','2007-06-20',55,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(52,52,'DerickGaylord','Edd','Ebert','2012-08-24',28,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(53,53,'GailMarks','Jody','Klocko','1997-12-14',151,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(54,54,'IzabellaDoyle','Effie','Abshire','2010-12-22',113,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(55,55,'NasirGleason','Eda','Muller','1992-08-01',124,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(56,56,'EdgarCronin','Aaron','Quigley','1990-12-09',102,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(57,57,'ErvinSenger','Aglae','Klein','2012-06-05',25,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(58,58,'LavonneStoltenberg','Otho','Cummings','1999-11-21',33,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(59,59,'RigobertoJones','Anderson','Ratke','1998-10-05',157,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(60,60,'MuhammadWolf','Gina','Ledner','2000-02-21',143,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(61,61,'JerrellBernhard','Roxane','Cronin','2002-05-20',100,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(62,62,'BernadineBergstrom','Brigitte','Donnelly','1996-04-25',50,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(63,63,'AsiaO\'Reilly','Pietro','Toy','1999-11-06',149,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(64,64,'SimoneGutmann','Mateo','Block','2006-06-25',6,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(65,65,'MeaganMcDermott','Hortense','Wuckert','1995-02-21',122,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(66,66,'CassandreDenesik','Alessia','Eichmann','1991-01-12',31,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(67,67,'AbigaleGaylord','Devin','Dickens','2010-03-10',23,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(68,68,'LeonelHuels','Ivory','Tillman','1999-09-10',107,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(69,69,'GonzaloRoberts','Giovanni','Bernier','2006-02-22',23,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(70,70,'SavannahRaynor','Lane','Bins','2005-03-16',83,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(71,71,'AlleneOkuneva','Melisa','Gutmann','1996-02-12',85,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(72,72,'KarsonTerry','Edythe','Hayes','1995-12-27',112,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(73,73,'GabrielleKirlin','Coby','Jenkins','2000-02-02',86,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(74,74,'CatalinaBashirian','Kellen','Miller','2001-08-02',2,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(75,75,'MitchelRogahn','Jace','Haley','1997-01-31',90,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(76,76,'AnissaLittle','Kavon','Jast','2009-11-13',136,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(77,77,'KaylieArmstrong','Thaddeus','Stroman','1997-01-22',75,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(78,78,'GregoriaCollier','Emmitt','Stark','1995-05-22',138,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(79,79,'AlexandroDare','Vicente','Greenfelder','1996-12-11',81,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(80,80,'SylvesterWalker','Daphnee','Reynolds','2006-01-25',33,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(81,81,'GinoLeuschke','Vicenta','Stamm','1997-06-09',151,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(82,82,'DewayneStroman','Paris','Hauck','1999-01-29',64,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(83,83,'AntwonHeidenreich','Rose','Bergnaum','1993-03-08',6,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(84,84,'NickolasTerry','Lonzo','Gutkowski','1999-11-16',81,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(85,85,'CaitlynKohler','Vladimir','Langworth','2003-01-18',96,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(86,86,'HattieHodkiewicz','Enid','Kilback','2004-03-04',28,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(87,87,'BabyKshlerin','Oran','Herman','1994-11-24',108,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(88,88,'CarmeloBeer','Vernie','Gorczany','2002-09-27',106,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(89,89,'MauriceLemke','Simeon','Kessler','2000-06-27',115,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(90,90,'KarlieCollier','Candido','Ruecker','2002-05-24',147,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(91,91,'BrandoZulauf','Brannon','Ziemann','1999-02-06',33,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(92,92,'ArnulfoFriesen','Horacio','Green','2002-02-17',102,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(93,93,'MorganMohr','Luis','Reichel','1996-05-19',90,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(94,94,'TodKshlerin','Dana','Roob','2005-05-31',124,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(95,95,'ShyanneFranecki','Valerie','Rippin','2005-11-08',130,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(96,96,'LuisaLeffler','Alyson','Quigley','2001-05-29',87,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(97,97,'MaximusThiel','Florida','Sporer','2012-05-17',158,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(98,98,'ManuelOrtiz','Sandy','Johnston','1992-07-26',107,'2022-03-29 10:23:27','2022-03-29 10:23:27'),(99,99,'AbbigailWeimann','Everett','Lemke','2006-03-14',25,'2022-03-29 10:23:27','2022-03-29 10:23:27');
/*!40000 ALTER TABLE `individuals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_organization`
--

DROP TABLE IF EXISTS `language_organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_organization` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `organization_id` bigint(20) unsigned NOT NULL,
  `language_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_organization`
--

LOCK TABLES `language_organization` WRITE;
/*!40000 ALTER TABLE `language_organization` DISABLE KEYS */;
/*!40000 ALTER TABLE `language_organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'Afrikaans','2022-03-29 10:23:27','2022-03-29 10:23:27'),(2,'Albanian','2022-03-29 10:23:27','2022-03-29 10:23:27'),(3,'Amharic','2022-03-29 10:23:27','2022-03-29 10:23:27'),(4,'Arabic','2022-03-29 10:23:27','2022-03-29 10:23:27'),(5,'Aramaic','2022-03-29 10:23:27','2022-03-29 10:23:27'),(6,'Armenian','2022-03-29 10:23:27','2022-03-29 10:23:27'),(7,'Austro-Bavarian German','2022-03-29 10:23:27','2022-03-29 10:23:27'),(8,'Aymara','2022-03-29 10:23:27','2022-03-29 10:23:27'),(9,'Azerbaijani','2022-03-29 10:23:27','2022-03-29 10:23:27'),(10,'Belarusian','2022-03-29 10:23:27','2022-03-29 10:23:27'),(11,'Belizean Creole','2022-03-29 10:23:27','2022-03-29 10:23:27'),(12,'Bengali','2022-03-29 10:23:27','2022-03-29 10:23:27'),(13,'Berber','2022-03-29 10:23:27','2022-03-29 10:23:27'),(14,'Bislama','2022-03-29 10:23:27','2022-03-29 10:23:27'),(15,'Bosnian','2022-03-29 10:23:27','2022-03-29 10:23:27'),(16,'Bulgarian','2022-03-29 10:23:27','2022-03-29 10:23:27'),(17,'Burmese','2022-03-29 10:23:27','2022-03-29 10:23:27'),(18,'Carolinian','2022-03-29 10:23:27','2022-03-29 10:23:27'),(19,'Catalan','2022-03-29 10:23:27','2022-03-29 10:23:27'),(20,'Chamorro','2022-03-29 10:23:27','2022-03-29 10:23:27'),(21,'Chewa','2022-03-29 10:23:27','2022-03-29 10:23:27'),(22,'Chibarwe','2022-03-29 10:23:27','2022-03-29 10:23:27'),(23,'Chinese','2022-03-29 10:23:27','2022-03-29 10:23:27'),(24,'Comorian','2022-03-29 10:23:27','2022-03-29 10:23:27'),(25,'Cook Islands Māori','2022-03-29 10:23:27','2022-03-29 10:23:27'),(26,'Croatian','2022-03-29 10:23:27','2022-03-29 10:23:27'),(27,'Czech','2022-03-29 10:23:27','2022-03-29 10:23:27'),(28,'Danish','2022-03-29 10:23:27','2022-03-29 10:23:27'),(29,'Dari','2022-03-29 10:23:27','2022-03-29 10:23:27'),(30,'Dutch','2022-03-29 10:23:27','2022-03-29 10:23:27'),(31,'Dzongkha','2022-03-29 10:23:27','2022-03-29 10:23:27'),(32,'English','2022-03-29 10:23:27','2022-03-29 10:23:27'),(33,'Estonian','2022-03-29 10:23:27','2022-03-29 10:23:27'),(34,'Faroese','2022-03-29 10:23:27','2022-03-29 10:23:27'),(35,'Fiji Hindi','2022-03-29 10:23:27','2022-03-29 10:23:27'),(36,'Fijian','2022-03-29 10:23:27','2022-03-29 10:23:27'),(37,'Filipino','2022-03-29 10:23:27','2022-03-29 10:23:27'),(38,'Finnish','2022-03-29 10:23:27','2022-03-29 10:23:27'),(39,'French','2022-03-29 10:23:27','2022-03-29 10:23:27'),(40,'Georgian','2022-03-29 10:23:27','2022-03-29 10:23:27'),(41,'German','2022-03-29 10:23:27','2022-03-29 10:23:27'),(42,'Gilbertese','2022-03-29 10:23:27','2022-03-29 10:23:27'),(43,'Greek','2022-03-29 10:23:27','2022-03-29 10:23:27'),(44,'Greenlandic','2022-03-29 10:23:27','2022-03-29 10:23:27'),(45,'Guaraní','2022-03-29 10:23:27','2022-03-29 10:23:27'),(46,'Guernésiais','2022-03-29 10:23:27','2022-03-29 10:23:27'),(47,'Haitian Creole','2022-03-29 10:23:27','2022-03-29 10:23:27'),(48,'Hassaniya','2022-03-29 10:23:28','2022-03-29 10:23:28'),(49,'Hebrew','2022-03-29 10:23:28','2022-03-29 10:23:28'),(50,'Herero','2022-03-29 10:23:28','2022-03-29 10:23:28'),(51,'Hindi','2022-03-29 10:23:28','2022-03-29 10:23:28'),(52,'Hiri Motu','2022-03-29 10:23:28','2022-03-29 10:23:28'),(53,'Hungarian','2022-03-29 10:23:28','2022-03-29 10:23:28'),(54,'Icelandic','2022-03-29 10:23:28','2022-03-29 10:23:28'),(55,'Indonesian','2022-03-29 10:23:28','2022-03-29 10:23:28'),(56,'Irish','2022-03-29 10:23:28','2022-03-29 10:23:28'),(57,'Italian','2022-03-29 10:23:28','2022-03-29 10:23:28'),(58,'Jamaican Patois','2022-03-29 10:23:28','2022-03-29 10:23:28'),(59,'Japanese','2022-03-29 10:23:28','2022-03-29 10:23:28'),(60,'Jèrriais','2022-03-29 10:23:28','2022-03-29 10:23:28'),(61,'Kalanga','2022-03-29 10:23:28','2022-03-29 10:23:28'),(62,'Kazakh','2022-03-29 10:23:28','2022-03-29 10:23:28'),(63,'Khmer','2022-03-29 10:23:28','2022-03-29 10:23:28'),(64,'Khoekhoe','2022-03-29 10:23:28','2022-03-29 10:23:28'),(65,'Khoisan','2022-03-29 10:23:28','2022-03-29 10:23:28'),(66,'Kikongo','2022-03-29 10:23:28','2022-03-29 10:23:28'),(67,'Kinyarwanda','2022-03-29 10:23:28','2022-03-29 10:23:28'),(68,'Kirundi','2022-03-29 10:23:28','2022-03-29 10:23:28'),(69,'Korean','2022-03-29 10:23:28','2022-03-29 10:23:28'),(70,'Kwangali','2022-03-29 10:23:28','2022-03-29 10:23:28'),(71,'Kyrgyz','2022-03-29 10:23:28','2022-03-29 10:23:28'),(72,'Lao','2022-03-29 10:23:28','2022-03-29 10:23:28'),(73,'Latin','2022-03-29 10:23:28','2022-03-29 10:23:28'),(74,'Latvian','2022-03-29 10:23:28','2022-03-29 10:23:28'),(75,'Lingala','2022-03-29 10:23:28','2022-03-29 10:23:28'),(76,'Lithuanian','2022-03-29 10:23:28','2022-03-29 10:23:28'),(77,'Lozi','2022-03-29 10:23:28','2022-03-29 10:23:28'),(78,'Luxembourgish','2022-03-29 10:23:28','2022-03-29 10:23:28'),(79,'Macedonian','2022-03-29 10:23:28','2022-03-29 10:23:28'),(80,'Malagasy','2022-03-29 10:23:28','2022-03-29 10:23:28'),(81,'Malay','2022-03-29 10:23:28','2022-03-29 10:23:28'),(82,'Maldivian','2022-03-29 10:23:28','2022-03-29 10:23:28'),(83,'Maltese','2022-03-29 10:23:28','2022-03-29 10:23:28'),(84,'Manx','2022-03-29 10:23:28','2022-03-29 10:23:28'),(85,'Marshallese','2022-03-29 10:23:28','2022-03-29 10:23:28'),(86,'Mauritian Creole','2022-03-29 10:23:28','2022-03-29 10:23:28'),(87,'Moldavian','2022-03-29 10:23:28','2022-03-29 10:23:28'),(88,'Mongolian','2022-03-29 10:23:28','2022-03-29 10:23:28'),(89,'Montenegrin','2022-03-29 10:23:28','2022-03-29 10:23:28'),(90,'Māori','2022-03-29 10:23:28','2022-03-29 10:23:28'),(91,'Nauru','2022-03-29 10:23:28','2022-03-29 10:23:28'),(92,'Ndau','2022-03-29 10:23:28','2022-03-29 10:23:28'),(93,'Ndonga','2022-03-29 10:23:28','2022-03-29 10:23:28'),(94,'Nepali','2022-03-29 10:23:28','2022-03-29 10:23:28'),(95,'New Zealand Sign Language','2022-03-29 10:23:28','2022-03-29 10:23:28'),(96,'Niuean','2022-03-29 10:23:28','2022-03-29 10:23:28'),(97,'Norfuk','2022-03-29 10:23:28','2022-03-29 10:23:28'),(98,'Northern Ndebele','2022-03-29 10:23:28','2022-03-29 10:23:28'),(99,'Northern Sotho','2022-03-29 10:23:28','2022-03-29 10:23:28'),(100,'Norwegian','2022-03-29 10:23:28','2022-03-29 10:23:28'),(101,'Norwegian Bokmål','2022-03-29 10:23:28','2022-03-29 10:23:28'),(102,'Norwegian Nynorsk','2022-03-29 10:23:28','2022-03-29 10:23:28'),(103,'Palauan','2022-03-29 10:23:28','2022-03-29 10:23:28'),(104,'Papiamento','2022-03-29 10:23:28','2022-03-29 10:23:28'),(105,'Pashto','2022-03-29 10:23:28','2022-03-29 10:23:28'),(106,'Persian (Farsi)','2022-03-29 10:23:28','2022-03-29 10:23:28'),(107,'Polish','2022-03-29 10:23:28','2022-03-29 10:23:28'),(108,'Portuguese','2022-03-29 10:23:28','2022-03-29 10:23:28'),(109,'Quechua','2022-03-29 10:23:28','2022-03-29 10:23:28'),(110,'Romani','2022-03-29 10:23:28','2022-03-29 10:23:28'),(111,'Romanian','2022-03-29 10:23:28','2022-03-29 10:23:28'),(112,'Romansh','2022-03-29 10:23:28','2022-03-29 10:23:28'),(113,'Russian','2022-03-29 10:23:28','2022-03-29 10:23:28'),(114,'Sami','2022-03-29 10:23:28','2022-03-29 10:23:28'),(115,'Samoan','2022-03-29 10:23:28','2022-03-29 10:23:28'),(116,'Sango','2022-03-29 10:23:28','2022-03-29 10:23:28'),(117,'Serbian','2022-03-29 10:23:28','2022-03-29 10:23:28'),(118,'Seychellois Creole','2022-03-29 10:23:28','2022-03-29 10:23:28'),(119,'Shona','2022-03-29 10:23:28','2022-03-29 10:23:28'),(120,'Sinhala','2022-03-29 10:23:28','2022-03-29 10:23:28'),(121,'Slovak','2022-03-29 10:23:28','2022-03-29 10:23:28'),(122,'Slovene','2022-03-29 10:23:28','2022-03-29 10:23:28'),(123,'Somali','2022-03-29 10:23:28','2022-03-29 10:23:28'),(124,'Sorani','2022-03-29 10:23:28','2022-03-29 10:23:28'),(125,'Sotho','2022-03-29 10:23:28','2022-03-29 10:23:28'),(126,'Southern Ndebele','2022-03-29 10:23:28','2022-03-29 10:23:28'),(127,'Southern Sotho','2022-03-29 10:23:28','2022-03-29 10:23:28'),(128,'Spanish','2022-03-29 10:23:28','2022-03-29 10:23:28'),(129,'Swahili','2022-03-29 10:23:28','2022-03-29 10:23:28'),(130,'Swazi','2022-03-29 10:23:28','2022-03-29 10:23:28'),(131,'Swedish','2022-03-29 10:23:28','2022-03-29 10:23:28'),(132,'Swiss German','2022-03-29 10:23:28','2022-03-29 10:23:28'),(133,'Tajik','2022-03-29 10:23:28','2022-03-29 10:23:28'),(134,'Tamil','2022-03-29 10:23:28','2022-03-29 10:23:28'),(135,'Tetum','2022-03-29 10:23:28','2022-03-29 10:23:28'),(136,'Thai','2022-03-29 10:23:28','2022-03-29 10:23:28'),(137,'Tigrinya','2022-03-29 10:23:28','2022-03-29 10:23:28'),(138,'Tok Pisin','2022-03-29 10:23:28','2022-03-29 10:23:28'),(139,'Tokelauan','2022-03-29 10:23:28','2022-03-29 10:23:28'),(140,'Tonga','2022-03-29 10:23:28','2022-03-29 10:23:28'),(141,'Tongan','2022-03-29 10:23:28','2022-03-29 10:23:28'),(142,'Tshiluba','2022-03-29 10:23:28','2022-03-29 10:23:28'),(143,'Tsonga','2022-03-29 10:23:28','2022-03-29 10:23:28'),(144,'Tswana','2022-03-29 10:23:28','2022-03-29 10:23:28'),(145,'Turkish','2022-03-29 10:23:28','2022-03-29 10:23:28'),(146,'Turkmen','2022-03-29 10:23:28','2022-03-29 10:23:28'),(147,'Tuvaluan','2022-03-29 10:23:28','2022-03-29 10:23:28'),(148,'Ukrainian','2022-03-29 10:23:28','2022-03-29 10:23:28'),(149,'Upper Guinea Creole','2022-03-29 10:23:28','2022-03-29 10:23:28'),(150,'Urdu','2022-03-29 10:23:28','2022-03-29 10:23:28'),(151,'Uzbek','2022-03-29 10:23:28','2022-03-29 10:23:28'),(152,'Venda','2022-03-29 10:23:28','2022-03-29 10:23:28'),(153,'Vietnamese','2022-03-29 10:23:28','2022-03-29 10:23:28'),(154,'Xhosa','2022-03-29 10:23:28','2022-03-29 10:23:28'),(155,'Zimbabwean Sign Language','2022-03-29 10:23:28','2022-03-29 10:23:28');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (25,'2014_10_12_000000_create_users_table',1),(26,'2014_10_12_100000_create_password_resets_table',1),(27,'2014_10_12_200000_add_two_factor_columns_to_users_table',1),(28,'2019_08_19_000000_create_failed_jobs_table',1),(29,'2019_12_14_000001_create_personal_access_tokens_table',1),(30,'2022_03_17_151537_create_ranks_table',1),(31,'2022_03_17_155646_create_individuals_table',1),(32,'2022_03_17_161903_create_nationalities_table',1),(33,'2022_03_17_162055_create_advertisements_table',1),(34,'2022_03_17_165026_create_games_table',1),(35,'2022_03_17_165629_create_organizations_table',1),(36,'2022_03_17_170435_create_game_role_table',1),(37,'2022_03_17_174518_create_game_server_table',1),(38,'2022_03_18_084650_create_servers_table',1),(39,'2022_03_18_090458_create_game_individual_table',1),(40,'2022_03_18_094334_create_positions_table',1),(41,'2022_03_18_095541_create_individual_position_table',1),(42,'2022_03_18_104213_create_languages_table',1),(43,'2022_03_18_104556_create_individual_language_table',1),(44,'2022_03_18_122059_create_language_organization_table',1),(45,'2022_03_18_133224_create_game_organization_table',1),(46,'2022_03_18_161044_create_advertisement_language_table',1),(47,'2022_03_22_084512_create_statuses_table',1),(48,'2022_03_22_084554_create_contacts_table',1),(49,'2022_03_29_084937_create_contact_individual_table',1),(50,'2022_03_29_085118_create_contact_organization_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nationalities`
--

DROP TABLE IF EXISTS `nationalities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nationalities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nationalities`
--

LOCK TABLES `nationalities` WRITE;
/*!40000 ALTER TABLE `nationalities` DISABLE KEYS */;
INSERT INTO `nationalities` VALUES (1,'UNITED KINGDOM','2022-03-29 10:23:28','2022-03-29 10:23:28'),(2,'ARGENTINA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(3,'AUSTRALIA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(4,'BAHAMAS','2022-03-29 10:23:28','2022-03-29 10:23:28'),(5,'BELGIUM','2022-03-29 10:23:28','2022-03-29 10:23:28'),(6,'BRAZIL','2022-03-29 10:23:28','2022-03-29 10:23:28'),(7,'CANADA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(8,'CHINA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(9,'COLOMBIA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(10,'CUBA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(11,'DOMINICAN REPUBLIC','2022-03-29 10:23:28','2022-03-29 10:23:28'),(12,'ECUADOR','2022-03-29 10:23:28','2022-03-29 10:23:28'),(13,'EL SALVADOR','2022-03-29 10:23:28','2022-03-29 10:23:28'),(14,'FRANCE','2022-03-29 10:23:28','2022-03-29 10:23:28'),(15,'GERMANY','2022-03-29 10:23:28','2022-03-29 10:23:28'),(16,'GUATEMALA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(17,'HAITI','2022-03-29 10:23:28','2022-03-29 10:23:28'),(18,'HONDURAS','2022-03-29 10:23:28','2022-03-29 10:23:28'),(19,'INDIA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(20,'IRELAND','2022-03-29 10:23:28','2022-03-29 10:23:28'),(21,'ISRAEL','2022-03-29 10:23:28','2022-03-29 10:23:28'),(22,'ITALY','2022-03-29 10:23:28','2022-03-29 10:23:28'),(23,'JAPAN','2022-03-29 10:23:28','2022-03-29 10:23:28'),(24,'KOREA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(25,'MEXICO','2022-03-29 10:23:28','2022-03-29 10:23:28'),(26,'NETHERLANDS','2022-03-29 10:23:28','2022-03-29 10:23:28'),(27,'PHILIPPINES','2022-03-29 10:23:28','2022-03-29 10:23:28'),(28,'SPAIN','2022-03-29 10:23:28','2022-03-29 10:23:28'),(29,'SWEDEN','2022-03-29 10:23:28','2022-03-29 10:23:28'),(30,'SWITZERLAND','2022-03-29 10:23:28','2022-03-29 10:23:28'),(31,'TAIWAN','2022-03-29 10:23:28','2022-03-29 10:23:28'),(32,'VENEZUELA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(33,'VIET NAM','2022-03-29 10:23:28','2022-03-29 10:23:28'),(34,'AFGHANISTAN','2022-03-29 10:23:28','2022-03-29 10:23:28'),(35,'ALBANIA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(36,'ALGERIA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(37,'AMERICAN SAMOA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(38,'ANDORRA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(39,'ANGOLA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(40,'ARMENIA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(41,'AUSTRIA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(42,'AZERBAIJAN','2022-03-29 10:23:28','2022-03-29 10:23:28'),(43,'BAHRAIN','2022-03-29 10:23:28','2022-03-29 10:23:28'),(44,'BANGLADESH','2022-03-29 10:23:28','2022-03-29 10:23:28'),(45,'BARBADOS','2022-03-29 10:23:28','2022-03-29 10:23:28'),(46,'BELARUS','2022-03-29 10:23:28','2022-03-29 10:23:28'),(47,'BELIZE','2022-03-29 10:23:28','2022-03-29 10:23:28'),(48,'BENIN','2022-03-29 10:23:28','2022-03-29 10:23:28'),(49,'BERMUDA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(50,'BHUTAN','2022-03-29 10:23:28','2022-03-29 10:23:28'),(51,'BOLIVIA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(52,'BOSNIA AND HERZEGOVINA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(53,'BOTSWANA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(54,'BULGARIA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(55,'BURKINA FASO','2022-03-29 10:23:28','2022-03-29 10:23:28'),(56,'BURUNDI','2022-03-29 10:23:28','2022-03-29 10:23:28'),(57,'CAMBODIA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(58,'CAMEROON','2022-03-29 10:23:28','2022-03-29 10:23:28'),(59,'CAPE VERDE ISLANDS','2022-03-29 10:23:28','2022-03-29 10:23:28'),(60,'CHAD','2022-03-29 10:23:28','2022-03-29 10:23:28'),(61,'CHILE','2022-03-29 10:23:28','2022-03-29 10:23:28'),(62,'CONGO','2022-03-29 10:23:28','2022-03-29 10:23:28'),(63,'COSTA RICA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(64,'CROATIA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(65,'CYPRUS','2022-03-29 10:23:28','2022-03-29 10:23:28'),(66,'CZECH REPUBLIC','2022-03-29 10:23:28','2022-03-29 10:23:28'),(67,'DENMARK','2022-03-29 10:23:28','2022-03-29 10:23:28'),(68,'DJIBOUTI','2022-03-29 10:23:28','2022-03-29 10:23:28'),(69,'DOMINICA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(70,'EGYPT','2022-03-29 10:23:28','2022-03-29 10:23:28'),(71,'ERITREA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(72,'ESTONIA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(73,'ETHIOPIA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(74,'FIJI','2022-03-29 10:23:28','2022-03-29 10:23:28'),(75,'FINLAND','2022-03-29 10:23:28','2022-03-29 10:23:28'),(76,'FRENCH POLYNESIA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(77,'GABON','2022-03-29 10:23:28','2022-03-29 10:23:28'),(78,'GAMBIA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(79,'GEORGIA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(80,'GHANA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(81,'GREECE','2022-03-29 10:23:28','2022-03-29 10:23:28'),(82,'GRENADA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(83,'GUINEA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(84,'GUYANA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(85,'HUNGARY','2022-03-29 10:23:28','2022-03-29 10:23:28'),(86,'ICELAND','2022-03-29 10:23:28','2022-03-29 10:23:28'),(87,'INDONESIA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(88,'IRAN','2022-03-29 10:23:28','2022-03-29 10:23:28'),(89,'IRAQ','2022-03-29 10:23:28','2022-03-29 10:23:28'),(90,'JAMAICA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(91,'JORDAN','2022-03-29 10:23:28','2022-03-29 10:23:28'),(92,'KAZAKHSTAN','2022-03-29 10:23:28','2022-03-29 10:23:28'),(93,'KENYA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(94,'KOREA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(95,'KUWAIT','2022-03-29 10:23:28','2022-03-29 10:23:28'),(96,'LATVIA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(97,'LEBANON','2022-03-29 10:23:28','2022-03-29 10:23:28'),(98,'LIBERIA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(99,'LIBYA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(100,'LITHUANIA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(101,'LUXEMBOURG','2022-03-29 10:23:28','2022-03-29 10:23:28'),(102,'MADAGASCAR','2022-03-29 10:23:28','2022-03-29 10:23:28'),(103,'MALAWI','2022-03-29 10:23:28','2022-03-29 10:23:28'),(104,'MALAYSIA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(105,'MALDIVES','2022-03-29 10:23:28','2022-03-29 10:23:28'),(106,'MALI','2022-03-29 10:23:28','2022-03-29 10:23:28'),(107,'MALTA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(108,'MAURITANIA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(109,'MAURITIUS','2022-03-29 10:23:28','2022-03-29 10:23:28'),(110,'MONACO','2022-03-29 10:23:28','2022-03-29 10:23:28'),(111,'MONGOLIA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(112,'MONTENEGRO','2022-03-29 10:23:28','2022-03-29 10:23:28'),(113,'MOROCCO','2022-03-29 10:23:28','2022-03-29 10:23:28'),(114,'MOZAMBIQUE','2022-03-29 10:23:28','2022-03-29 10:23:28'),(115,'NAMIBIA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(116,'NEPAL','2022-03-29 10:23:28','2022-03-29 10:23:28'),(117,'NEW ZEALAND','2022-03-29 10:23:28','2022-03-29 10:23:28'),(118,'NICARAGUA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(119,'NIGER','2022-03-29 10:23:28','2022-03-29 10:23:28'),(120,'NIGERIA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(121,'NORWAY','2022-03-29 10:23:28','2022-03-29 10:23:28'),(122,'OMAN','2022-03-29 10:23:28','2022-03-29 10:23:28'),(123,'PAKISTAN','2022-03-29 10:23:28','2022-03-29 10:23:28'),(124,'PANAMA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(125,'PAPUA NEW GUINEA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(126,'PARAGUAY','2022-03-29 10:23:28','2022-03-29 10:23:28'),(127,'PERU','2022-03-29 10:23:28','2022-03-29 10:23:28'),(128,'POLAND','2022-03-29 10:23:28','2022-03-29 10:23:28'),(129,'PORTUGAL','2022-03-29 10:23:28','2022-03-29 10:23:28'),(130,'QATAR','2022-03-29 10:23:28','2022-03-29 10:23:28'),(131,'ROMANIA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(132,'RWANDA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(133,'SAUDI ARABIA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(134,'SENEGAL','2022-03-29 10:23:28','2022-03-29 10:23:28'),(135,'SERBIA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(136,'SIERRA LEONE','2022-03-29 10:23:28','2022-03-29 10:23:28'),(137,'SINGAPORE','2022-03-29 10:23:28','2022-03-29 10:23:28'),(138,'SLOVAKIA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(139,'SLOVENIA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(140,'SOLOMON ISLANDS','2022-03-29 10:23:28','2022-03-29 10:23:28'),(141,'SOMALIA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(142,'SOUTH AFRICA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(143,'SRI LANKA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(144,'SUDAN','2022-03-29 10:23:28','2022-03-29 10:23:28'),(145,'SURINAME','2022-03-29 10:23:28','2022-03-29 10:23:28'),(146,'SWAZILAND','2022-03-29 10:23:28','2022-03-29 10:23:28'),(147,'TAJIKISTAN','2022-03-29 10:23:28','2022-03-29 10:23:28'),(148,'THAILAND','2022-03-29 10:23:28','2022-03-29 10:23:28'),(149,'TOGO','2022-03-29 10:23:28','2022-03-29 10:23:28'),(150,'TRINIDAD AND TOBAGO','2022-03-29 10:23:28','2022-03-29 10:23:28'),(151,'TUNISIA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(152,'TURKEY','2022-03-29 10:23:28','2022-03-29 10:23:28'),(153,'TURKMENISTAN','2022-03-29 10:23:28','2022-03-29 10:23:28'),(154,'TUVALU','2022-03-29 10:23:28','2022-03-29 10:23:28'),(155,'UGANDA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(156,'UKRAINE','2022-03-29 10:23:28','2022-03-29 10:23:28'),(157,'UNITED ARAB EMIRATES','2022-03-29 10:23:28','2022-03-29 10:23:28'),(158,'UNITED STATES','2022-03-29 10:23:28','2022-03-29 10:23:28'),(159,'URUGUAY','2022-03-29 10:23:28','2022-03-29 10:23:28'),(160,'UZBEKISTAN','2022-03-29 10:23:28','2022-03-29 10:23:28'),(161,'VANUATU','2022-03-29 10:23:28','2022-03-29 10:23:28'),(162,'YEMEN','2022-03-29 10:23:28','2022-03-29 10:23:28'),(163,'ZAMBIA','2022-03-29 10:23:28','2022-03-29 10:23:28');
/*!40000 ALTER TABLE `nationalities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organizations`
--

DROP TABLE IF EXISTS `organizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organizations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizations`
--

LOCK TABLES `organizations` WRITE;
/*!40000 ALTER TABLE `organizations` DISABLE KEYS */;
INSERT INTO `organizations` VALUES (1,'2022-03-29 10:23:28','2022-03-29 10:23:28',1,'Neal'),(2,'2022-03-29 10:23:28','2022-03-29 10:23:28',2,'Jaylen'),(3,'2022-03-29 10:23:28','2022-03-29 10:23:28',3,'Ronny'),(4,'2022-03-29 10:23:28','2022-03-29 10:23:28',4,'Jesse'),(5,'2022-03-29 10:23:28','2022-03-29 10:23:28',5,'Perry'),(6,'2022-03-29 10:23:28','2022-03-29 10:23:28',6,'Lucius'),(7,'2022-03-29 10:23:28','2022-03-29 10:23:28',7,'Alexzander'),(8,'2022-03-29 10:23:28','2022-03-29 10:23:28',8,'Jalen'),(9,'2022-03-29 10:23:28','2022-03-29 10:23:28',9,'Carey'),(10,'2022-03-29 10:23:28','2022-03-29 10:23:28',10,'Selmer'),(11,'2022-03-29 10:23:28','2022-03-29 10:23:28',11,'Sandy'),(12,'2022-03-29 10:23:28','2022-03-29 10:23:28',12,'Brenden'),(13,'2022-03-29 10:23:28','2022-03-29 10:23:28',13,'Sandrine'),(14,'2022-03-29 10:23:28','2022-03-29 10:23:28',14,'Johan'),(15,'2022-03-29 10:23:28','2022-03-29 10:23:28',15,'Maryam'),(16,'2022-03-29 10:23:28','2022-03-29 10:23:28',16,'Myrtie'),(17,'2022-03-29 10:23:28','2022-03-29 10:23:28',17,'Estella'),(18,'2022-03-29 10:23:28','2022-03-29 10:23:28',18,'Freeman'),(19,'2022-03-29 10:23:28','2022-03-29 10:23:28',19,'Katrine'),(20,'2022-03-29 10:23:28','2022-03-29 10:23:28',20,'Delaney'),(21,'2022-03-29 10:23:28','2022-03-29 10:23:28',21,'Ines'),(22,'2022-03-29 10:23:28','2022-03-29 10:23:28',22,'Hailey'),(23,'2022-03-29 10:23:28','2022-03-29 10:23:28',23,'Keeley'),(24,'2022-03-29 10:23:28','2022-03-29 10:23:28',24,'Amber'),(25,'2022-03-29 10:23:28','2022-03-29 10:23:28',25,'Jedidiah'),(26,'2022-03-29 10:23:28','2022-03-29 10:23:28',26,'Kylie'),(27,'2022-03-29 10:23:28','2022-03-29 10:23:28',27,'Cierra'),(28,'2022-03-29 10:23:28','2022-03-29 10:23:28',28,'Charlie'),(29,'2022-03-29 10:23:28','2022-03-29 10:23:28',29,'Britney'),(30,'2022-03-29 10:23:28','2022-03-29 10:23:28',30,'Gianni'),(31,'2022-03-29 10:23:28','2022-03-29 10:23:28',31,'Heber'),(32,'2022-03-29 10:23:28','2022-03-29 10:23:28',32,'Collin'),(33,'2022-03-29 10:23:28','2022-03-29 10:23:28',33,'Angelita'),(34,'2022-03-29 10:23:28','2022-03-29 10:23:28',34,'Maymie'),(35,'2022-03-29 10:23:28','2022-03-29 10:23:28',35,'Micheal'),(36,'2022-03-29 10:23:28','2022-03-29 10:23:28',36,'Mandy'),(37,'2022-03-29 10:23:28','2022-03-29 10:23:28',37,'Quinten'),(38,'2022-03-29 10:23:28','2022-03-29 10:23:28',38,'Dylan'),(39,'2022-03-29 10:23:28','2022-03-29 10:23:28',39,'Mazie'),(40,'2022-03-29 10:23:28','2022-03-29 10:23:28',40,'Jermaine'),(41,'2022-03-29 10:23:28','2022-03-29 10:23:28',41,'Brice'),(42,'2022-03-29 10:23:28','2022-03-29 10:23:28',42,'Layne'),(43,'2022-03-29 10:23:28','2022-03-29 10:23:28',43,'Halle'),(44,'2022-03-29 10:23:28','2022-03-29 10:23:28',44,'Julianne'),(45,'2022-03-29 10:23:28','2022-03-29 10:23:28',45,'Haylie'),(46,'2022-03-29 10:23:28','2022-03-29 10:23:28',46,'Cordia'),(47,'2022-03-29 10:23:28','2022-03-29 10:23:28',47,'Sallie'),(48,'2022-03-29 10:23:28','2022-03-29 10:23:28',48,'Millie'),(49,'2022-03-29 10:23:28','2022-03-29 10:23:28',49,'Jayne'),(50,'2022-03-29 10:23:28','2022-03-29 10:23:28',50,'Chandler'),(51,'2022-03-29 10:23:28','2022-03-29 10:23:28',51,'Dale'),(52,'2022-03-29 10:23:28','2022-03-29 10:23:28',52,'Jamir'),(53,'2022-03-29 10:23:28','2022-03-29 10:23:28',53,'Delbert'),(54,'2022-03-29 10:23:28','2022-03-29 10:23:28',54,'Waldo'),(55,'2022-03-29 10:23:28','2022-03-29 10:23:28',55,'Deja'),(56,'2022-03-29 10:23:28','2022-03-29 10:23:28',56,'Conner'),(57,'2022-03-29 10:23:28','2022-03-29 10:23:28',57,'Kaylah'),(58,'2022-03-29 10:23:28','2022-03-29 10:23:28',58,'Tierra'),(59,'2022-03-29 10:23:28','2022-03-29 10:23:28',59,'Evan'),(60,'2022-03-29 10:23:28','2022-03-29 10:23:28',60,'Loma'),(61,'2022-03-29 10:23:28','2022-03-29 10:23:28',61,'Geraldine'),(62,'2022-03-29 10:23:28','2022-03-29 10:23:28',62,'Franz'),(63,'2022-03-29 10:23:28','2022-03-29 10:23:28',63,'Francis'),(64,'2022-03-29 10:23:28','2022-03-29 10:23:28',64,'Adam'),(65,'2022-03-29 10:23:28','2022-03-29 10:23:28',65,'Timmothy'),(66,'2022-03-29 10:23:28','2022-03-29 10:23:28',66,'Brody'),(67,'2022-03-29 10:23:28','2022-03-29 10:23:28',67,'Stanford'),(68,'2022-03-29 10:23:28','2022-03-29 10:23:28',68,'Jonatan'),(69,'2022-03-29 10:23:28','2022-03-29 10:23:28',69,'Bridie'),(70,'2022-03-29 10:23:28','2022-03-29 10:23:28',70,'Gracie'),(71,'2022-03-29 10:23:28','2022-03-29 10:23:28',71,'Susanna'),(72,'2022-03-29 10:23:28','2022-03-29 10:23:28',72,'Domenic'),(73,'2022-03-29 10:23:28','2022-03-29 10:23:28',73,'Sydney'),(74,'2022-03-29 10:23:28','2022-03-29 10:23:28',74,'Eldora'),(75,'2022-03-29 10:23:28','2022-03-29 10:23:28',75,'Laisha'),(76,'2022-03-29 10:23:28','2022-03-29 10:23:28',76,'Roscoe'),(77,'2022-03-29 10:23:28','2022-03-29 10:23:28',77,'Robert'),(78,'2022-03-29 10:23:28','2022-03-29 10:23:28',78,'Asia'),(79,'2022-03-29 10:23:28','2022-03-29 10:23:28',79,'Jabari'),(80,'2022-03-29 10:23:28','2022-03-29 10:23:28',80,'Bonnie'),(81,'2022-03-29 10:23:28','2022-03-29 10:23:28',81,'Kaitlyn'),(82,'2022-03-29 10:23:28','2022-03-29 10:23:28',82,'Bella'),(83,'2022-03-29 10:23:28','2022-03-29 10:23:28',83,'Zoey'),(84,'2022-03-29 10:23:28','2022-03-29 10:23:28',84,'Minnie'),(85,'2022-03-29 10:23:28','2022-03-29 10:23:28',85,'Willis'),(86,'2022-03-29 10:23:28','2022-03-29 10:23:28',86,'Justen'),(87,'2022-03-29 10:23:28','2022-03-29 10:23:28',87,'Hertha'),(88,'2022-03-29 10:23:28','2022-03-29 10:23:28',88,'Brenna'),(89,'2022-03-29 10:23:28','2022-03-29 10:23:28',89,'Nigel'),(90,'2022-03-29 10:23:28','2022-03-29 10:23:28',90,'Lilliana'),(91,'2022-03-29 10:23:28','2022-03-29 10:23:28',91,'Adrain'),(92,'2022-03-29 10:23:28','2022-03-29 10:23:28',92,'Alvah'),(93,'2022-03-29 10:23:28','2022-03-29 10:23:28',93,'Elnora'),(94,'2022-03-29 10:23:28','2022-03-29 10:23:28',94,'Reina'),(95,'2022-03-29 10:23:28','2022-03-29 10:23:28',95,'Thea'),(96,'2022-03-29 10:23:28','2022-03-29 10:23:28',96,'Van'),(97,'2022-03-29 10:23:28','2022-03-29 10:23:28',97,'Marcia'),(98,'2022-03-29 10:23:28','2022-03-29 10:23:28',98,'Alexys'),(99,'2022-03-29 10:23:28','2022-03-29 10:23:28',99,'Cecelia'),(100,'2022-03-29 10:23:28','2022-03-29 10:23:28',100,'Margarette');
/*!40000 ALTER TABLE `organizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
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
-- Table structure for table `positions`
--

DROP TABLE IF EXISTS `positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `positions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positions`
--

LOCK TABLES `positions` WRITE;
/*!40000 ALTER TABLE `positions` DISABLE KEYS */;
INSERT INTO `positions` VALUES (1,'Head Coach','2022-03-29 10:23:28','2022-03-29 10:23:28'),(2,'Assistant Coach','2022-03-29 10:23:28','2022-03-29 10:23:28'),(3,'Analyst','2022-03-29 10:23:28','2022-03-29 10:23:28'),(4,'Manager','2022-03-29 10:23:28','2022-03-29 10:23:28'),(5,'Mental Coach','2022-03-29 10:23:28','2022-03-29 10:23:28'),(6,'Caster','2022-03-29 10:23:28','2022-03-29 10:23:28'),(7,'Streamer','2022-03-29 10:23:28','2022-03-29 10:23:28'),(8,'Player','2022-03-29 10:23:28','2022-03-29 10:23:28');
/*!40000 ALTER TABLE `positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ranks`
--

DROP TABLE IF EXISTS `ranks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ranks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `game_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ranks`
--

LOCK TABLES `ranks` WRITE;
/*!40000 ALTER TABLE `ranks` DISABLE KEYS */;
INSERT INTO `ranks` VALUES (1,'2022-03-29 10:23:28','2022-03-29 10:23:28','Iron',1),(2,'2022-03-29 10:23:28','2022-03-29 10:23:28','Bronze',1),(3,'2022-03-29 10:23:28','2022-03-29 10:23:28','Silver',1),(4,'2022-03-29 10:23:28','2022-03-29 10:23:28','Gold',1),(5,'2022-03-29 10:23:28','2022-03-29 10:23:28','Platinum',1),(6,'2022-03-29 10:23:28','2022-03-29 10:23:28','Diamond',1),(7,'2022-03-29 10:23:28','2022-03-29 10:23:28','Master',1),(8,'2022-03-29 10:23:28','2022-03-29 10:23:28','Grandmaster',1),(9,'2022-03-29 10:23:28','2022-03-29 10:23:28','Challenger',1),(10,'2022-03-29 10:23:28','2022-03-29 10:23:28','Silver I',2),(11,'2022-03-29 10:23:28','2022-03-29 10:23:28','Silver II',2),(12,'2022-03-29 10:23:28','2022-03-29 10:23:28','Silver III',2),(13,'2022-03-29 10:23:28','2022-03-29 10:23:28','Silver IV',2),(14,'2022-03-29 10:23:28','2022-03-29 10:23:28','Silver Elite',2),(15,'2022-03-29 10:23:28','2022-03-29 10:23:28','Silver Elite Master',2),(16,'2022-03-29 10:23:28','2022-03-29 10:23:28','Gold Nova I',2),(17,'2022-03-29 10:23:28','2022-03-29 10:23:28','Gold Nova II',2),(18,'2022-03-29 10:23:28','2022-03-29 10:23:28','Gold Nova III',2),(19,'2022-03-29 10:23:28','2022-03-29 10:23:28','Gold Nova Master',2),(20,'2022-03-29 10:23:28','2022-03-29 10:23:28','Master Guardian I',2),(21,'2022-03-29 10:23:28','2022-03-29 10:23:28','Master Guardian II',2),(22,'2022-03-29 10:23:28','2022-03-29 10:23:28','Master Guardian Elite',2),(23,'2022-03-29 10:23:28','2022-03-29 10:23:28','Distinguished Master Guardian',2),(24,'2022-03-29 10:23:28','2022-03-29 10:23:28','Legendary Eagle',2),(25,'2022-03-29 10:23:28','2022-03-29 10:23:28','Legendary Eagle Master',2),(26,'2022-03-29 10:23:28','2022-03-29 10:23:28','Supreme Master First Class',2),(27,'2022-03-29 10:23:28','2022-03-29 10:23:28','Global Elite',2),(28,'2022-03-29 10:23:28','2022-03-29 10:23:28','Bronze',3),(29,'2022-03-29 10:23:28','2022-03-29 10:23:28','Silver',3),(30,'2022-03-29 10:23:28','2022-03-29 10:23:28','Gold',3),(31,'2022-03-29 10:23:28','2022-03-29 10:23:28','Platinum',3),(32,'2022-03-29 10:23:28','2022-03-29 10:23:28','Diamond',3),(33,'2022-03-29 10:23:28','2022-03-29 10:23:28','Master',3),(34,'2022-03-29 10:23:28','2022-03-29 10:23:28','Grandmaster',3);
/*!40000 ALTER TABLE `ranks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servers`
--

DROP TABLE IF EXISTS `servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servers`
--

LOCK TABLES `servers` WRITE;
/*!40000 ALTER TABLE `servers` DISABLE KEYS */;
INSERT INTO `servers` VALUES (1,'BR','2022-03-29 10:23:28','2022-03-29 10:23:28'),(2,'EUNE','2022-03-29 10:23:28','2022-03-29 10:23:28'),(3,'EUW','2022-03-29 10:23:28','2022-03-29 10:23:28'),(4,'NA','2022-03-29 10:23:28','2022-03-29 10:23:28'),(5,'LAN','2022-03-29 10:23:28','2022-03-29 10:23:28'),(6,'LAS','2022-03-29 10:23:28','2022-03-29 10:23:28'),(7,'OCE','2022-03-29 10:23:28','2022-03-29 10:23:28'),(8,'RU','2022-03-29 10:23:28','2022-03-29 10:23:28'),(9,'TR','2022-03-29 10:23:28','2022-03-29 10:23:28'),(10,'JP','2022-03-29 10:23:28','2022-03-29 10:23:28'),(11,'KR','2022-03-29 10:23:28','2022-03-29 10:23:28');
/*!40000 ALTER TABLE `servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statuses`
--

DROP TABLE IF EXISTS `statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statuses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statuses`
--

LOCK TABLES `statuses` WRITE;
/*!40000 ALTER TABLE `statuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Oscar','hailee73@hotmail.com','\'^F\"9]_',NULL,NULL,NULL,NULL),(2,'Bertha','daniela40@jacobs.net','$=DPl5K{-{FXY',NULL,NULL,NULL,NULL),(3,'Madisen','christine99@gutkowski.com','Y;<M\"Kv/m3#ZX=',NULL,NULL,NULL,NULL),(4,'Maudie','lilla.metz@gmail.com','V{4|!9qN1',NULL,NULL,NULL,NULL),(5,'Lauren','fritchie@yahoo.com','r!p|.~6Y5!n..&fs^',NULL,NULL,NULL,NULL),(6,'Dulce','everette62@hotmail.com','@@$`\\G\"^Uui',NULL,NULL,NULL,NULL),(7,'Jordy','anahi42@rogahn.com',':~t5/rw)/.\"+0ABf\\#',NULL,NULL,NULL,NULL),(8,'Eldridge','sharon19@wintheiser.biz','>R\"vZwQBRVk.\"o%zpq^U',NULL,NULL,NULL,NULL),(9,'Kip','pbaumbach@cormier.com','O@%8`K?2_\\ye<I',NULL,NULL,NULL,NULL),(10,'Marcelina','gfahey@lockman.biz','4wU\'q&fF!A*u%q',NULL,NULL,NULL,NULL),(11,'Antonette','thiel.althea@hotmail.com','TQrTh>x\'',NULL,NULL,NULL,NULL),(12,'Britney','uferry@hotmail.com','R=ogG;zDOb$iUqVa*yN',NULL,NULL,NULL,NULL),(13,'Sigrid','burnice20@gmail.com',';JM}qhk\'[Uy~',NULL,NULL,NULL,NULL),(14,'Ayana','schiller.keyon@mitchell.net','sNQT*Pb$S;7',NULL,NULL,NULL,NULL),(15,'Stefan','fwintheiser@yahoo.com','Oc0Fv[J',NULL,NULL,NULL,NULL),(16,'Sylvester','dbatz@hotmail.com','/eVQU4PU\']?dG[INbD',NULL,NULL,NULL,NULL),(17,'Verner','frank.langworth@herman.com','/@Mex\"I6xc?B!;3{2wUt',NULL,NULL,NULL,NULL),(18,'Kenna','nnienow@yahoo.com','=<pHu6(5\'@8n|]SfA',NULL,NULL,NULL,NULL),(19,'Ebony','lynch.dorian@hotmail.com','gk`-z}%R@%X[6Q14H',NULL,NULL,NULL,NULL),(20,'Brice','yhartmann@gmail.com',';l3{E20Klf/b3<?G0fR',NULL,NULL,NULL,NULL),(21,'Albertha','watson00@gmail.com','<GG+\"4ODAew/q',NULL,NULL,NULL,NULL),(22,'Electa','pschoen@hotmail.com','$V-H(%Z5_B',NULL,NULL,NULL,NULL),(23,'Bonita','dare.emanuel@beier.info','`14:\'YYs+10svJqao',NULL,NULL,NULL,NULL),(24,'Sarah','colt.rosenbaum@kub.com','dfMFnywD)ibgXG>z|X',NULL,NULL,NULL,NULL),(25,'Margaret','alexandria42@kohler.info','*8y77kNMH*65{y$-,',NULL,NULL,NULL,NULL),(26,'Kristin','runolfsdottir.alexandre@yahoo.com','ebdT-Euf',NULL,NULL,NULL,NULL),(27,'Gloria','jace62@yahoo.com','3ba#\\pj\'u',NULL,NULL,NULL,NULL),(28,'Amya','angelo63@herzog.com','D#2=!7O$\'($\'j$d\"',NULL,NULL,NULL,NULL),(29,'Quinton','orin44@langworth.org','.hFkud\'l8#WkQ',NULL,NULL,NULL,NULL),(30,'Jamey','araceli86@gmail.com','tDql^f@o_u&',NULL,NULL,NULL,NULL),(31,'Vivianne','balistreri.tyrell@schneider.com','zN2,(A:JZrf7|',NULL,NULL,NULL,NULL),(32,'Murl','carlo66@hotmail.com','6w%c#QH',NULL,NULL,NULL,NULL),(33,'Maynard','kasandra85@gmail.com','tRrzO/Zd1sSt',NULL,NULL,NULL,NULL),(34,'Louvenia','iwilliamson@klein.com','Imr>UJj',NULL,NULL,NULL,NULL),(35,'Brandon','weissnat.kristopher@carroll.com','GD>i[s+UY,#G`5$',NULL,NULL,NULL,NULL),(36,'Kyla','jodie36@yahoo.com','uf{bPt-_@Mn<;lAj',NULL,NULL,NULL,NULL),(37,'Aylin','chelsie.runolfsdottir@hotmail.com','NyY)0uYh=',NULL,NULL,NULL,NULL),(38,'Aimee','jakob22@rutherford.com',']CZ+-c%C\"OOcc/X\\Z&h\\',NULL,NULL,NULL,NULL),(39,'Meaghan','willms.lourdes@yahoo.com','+9{pLop%',NULL,NULL,NULL,NULL),(40,'Dusty','sabrina85@jacobi.com','GW8g?_,[N;fx7sq1,F',NULL,NULL,NULL,NULL),(41,'Gennaro','dudley.hermann@gmail.com','k7E7w?Wv7A}y',NULL,NULL,NULL,NULL),(42,'Conrad','wabbott@schowalter.com','\\UpHyUf5W}0?(6&chN',NULL,NULL,NULL,NULL),(43,'David','price.charlie@jakubowski.com','cy$itl',NULL,NULL,NULL,NULL),(44,'Jadyn','kling.lottie@hotmail.com','RnbAWnLg7ra_PxXp|0',NULL,NULL,NULL,NULL),(45,'Mittie','marcelle.heidenreich@hahn.net','b.A=SvW%g*pEf?aV2su',NULL,NULL,NULL,NULL),(46,'Jeanne','slehner@gmail.com','aQSMyJWdv',NULL,NULL,NULL,NULL),(47,'Davon','madge.parker@gmail.com','|EPH<uscdnmE',NULL,NULL,NULL,NULL),(48,'Breanne','njakubowski@yahoo.com','ZvGsLt8:dDrtP\"5',NULL,NULL,NULL,NULL),(49,'Stephania','ezequiel.casper@hotmail.com','pRSipXI6p4oN>phN\'s',NULL,NULL,NULL,NULL),(50,'Derek','clyde.hamill@yahoo.com','Mp~$R#{:Er=B.h>b!9lc',NULL,NULL,NULL,NULL),(51,'Titus','howell.elvis@smith.net','f\\gFo0V:.pJ!gPQ]',NULL,NULL,NULL,NULL),(52,'Rachelle','moen.mariah@schmidt.com',']9#G^~Ei5d`hL',NULL,NULL,NULL,NULL),(53,'Nels','alene.quigley@gmail.com','KyV!1Sv/NzX2$Btzs+',NULL,NULL,NULL,NULL),(54,'Brooklyn','acruickshank@mccullough.com','Auhs4P@,O{G}9`?|:3h',NULL,NULL,NULL,NULL),(55,'Aron','stan00@schoen.info','OE?ZSowwe,:d,(03b=F+',NULL,NULL,NULL,NULL),(56,'Lincoln','aubrey79@gmail.com','[rwnMHAk*\'oeD|@',NULL,NULL,NULL,NULL),(57,'Graham','sstroman@harber.net','Af6:%^r8/Sie7',NULL,NULL,NULL,NULL),(58,'Jamison','leffler.thea@gmail.com','hk~Fz:i~>cZ',NULL,NULL,NULL,NULL),(59,'Arlo','fshields@crooks.com','\">\'$&{0`@5I',NULL,NULL,NULL,NULL),(60,'Kianna','verna.stehr@gmail.com','jOBsc<[(G',NULL,NULL,NULL,NULL),(61,'Earlene','savion67@yahoo.com','qV~G-.2^o~^N',NULL,NULL,NULL,NULL),(62,'Gavin','qbartell@hotmail.com','Q\"62Q|~',NULL,NULL,NULL,NULL),(63,'Floy','labadie.dakota@altenwerth.biz','&]=rXDjrF}iA2',NULL,NULL,NULL,NULL),(64,'Erna','ruby39@schowalter.org','GTo1n.t{>V)`T%-0',NULL,NULL,NULL,NULL),(65,'Camille','ibartoletti@yahoo.com','\'dWQp|q?\\=a6n\"?',NULL,NULL,NULL,NULL),(66,'Magdalen','treva27@yahoo.com','m|lGNCv',NULL,NULL,NULL,NULL),(67,'Thora','tbailey@gmail.com',']i\",_N0~wY!45',NULL,NULL,NULL,NULL),(68,'Cecilia','mose.goldner@yahoo.com','MTl.!_haB',NULL,NULL,NULL,NULL),(69,'Ashtyn','jaeden.padberg@hayes.biz','S_aMv,5%G{.-=',NULL,NULL,NULL,NULL),(70,'Adrain','herzog.harmon@yahoo.com','#JIrng~%*N7Nl|df0\\;g',NULL,NULL,NULL,NULL),(71,'Burley','lucious.murazik@harber.org','a88}=zqo9|~~8kF:_K',NULL,NULL,NULL,NULL),(72,'Missouri','nbahringer@yahoo.com','cm[xCy',NULL,NULL,NULL,NULL),(73,'Lolita','gwatsica@champlin.org','<RsUuvrzLnn[d',NULL,NULL,NULL,NULL),(74,'Minnie','swift.noe@yahoo.com','\"ig)eA5uIs@b',NULL,NULL,NULL,NULL),(75,'Maiya','aufderhar.daniela@gmail.com','ZY)`#nm,KK`',NULL,NULL,NULL,NULL),(76,'Lydia','mgoodwin@schultz.org','99)fTx0RnJ!Qro&',NULL,NULL,NULL,NULL),(77,'Lilly','alek26@roberts.biz','sv3}T;};omRR\\',NULL,NULL,NULL,NULL),(78,'Joesph','vmiller@wiza.biz','Z3_F~qk_myPh\"<rKqU',NULL,NULL,NULL,NULL),(79,'Golda','daniel.krista@gmail.com','RWwd\'Vp{$uR%5t',NULL,NULL,NULL,NULL),(80,'Tabitha','noelia11@yahoo.com','\\P}@}B]T%9wZ/W@o',NULL,NULL,NULL,NULL),(81,'Maximillia','pearlie.schowalter@gmail.com','z#[%?#&mr%u@s',NULL,NULL,NULL,NULL),(82,'Leola','wbreitenberg@hotmail.com','mQQ}6[0|(o',NULL,NULL,NULL,NULL),(83,'Douglas','brigitte17@runolfsdottir.net','2VuIN@<4}&',NULL,NULL,NULL,NULL),(84,'Scottie','susan68@hotmail.com','P%?\"7*RM>Bym-`upcX',NULL,NULL,NULL,NULL),(85,'Arvilla','anita.satterfield@gmail.com','mQ8zAZ?L8;I',NULL,NULL,NULL,NULL),(86,'Sallie','pohara@hotmail.com','gK\'CzMmW%t8Le',NULL,NULL,NULL,NULL),(87,'Fletcher','glennie.daniel@yahoo.com','2i8bIZq~|d2t.Xf',NULL,NULL,NULL,NULL),(88,'Wendell','lborer@gmail.com','Dv\"Y$>&&f3Ct2,e{Y',NULL,NULL,NULL,NULL),(89,'German','richie73@gmail.com','pw3ec=.=:\'w8',NULL,NULL,NULL,NULL),(90,'Cassidy','skylar44@quigley.com','0_<Xi7',NULL,NULL,NULL,NULL),(91,'Sienna','tony.metz@olson.com','k%S@UbO@&%k',NULL,NULL,NULL,NULL),(92,'Dee','karelle.torp@hotmail.com','\'dq?QZ8',NULL,NULL,NULL,NULL),(93,'Guy','wiza.deondre@friesen.com','5b(1PZ^dWmN^l09',NULL,NULL,NULL,NULL),(94,'Hallie','chelsie35@hills.com','2rloeI\\R<RH=x*',NULL,NULL,NULL,NULL),(95,'Marlee','apouros@will.com','/mF^2\\NXL,jH',NULL,NULL,NULL,NULL),(96,'Nathan','lavon76@hotmail.com','iFJ!R~nG2Zes2WQ*i\"',NULL,NULL,NULL,NULL),(97,'Dolores','jwolff@pfannerstill.com','4_bs\\;\'oJYy(T',NULL,NULL,NULL,NULL),(98,'Beth','hodkiewicz.keira@yahoo.com','tiH:J$z`yLY7~!',NULL,NULL,NULL,NULL),(99,'Jerrell','dixie66@hotmail.com','Kfrnh~,^YgZ:\\Pa=m',NULL,NULL,NULL,NULL),(100,'Patsy','albina81@rodriguez.com','tELXp~Ro_U[O@>',NULL,NULL,NULL,NULL);
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

-- Dump completed on 2022-03-30 11:21:32
