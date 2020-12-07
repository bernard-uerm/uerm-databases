CREATE DATABASE  IF NOT EXISTS `christmas_raffle` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci */;
USE `christmas_raffle`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: christmas_raffle
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.36-MariaDB

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
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_code` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `department_code` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `full_name` varchar(150) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `category` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `created_datetime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'1','1','Employee 1','Nursing Service',1,'2020-12-04 21:14:39'),(2,'2','2','Employee 2','Nursing Service',1,'2020-12-04 21:14:39'),(3,'3','3','Employee 3','Nursing Service',1,'2020-12-04 21:14:39'),(4,'4','4','Employee 4','Nursing Service',1,'2020-12-04 21:14:39'),(5,'5','5','Employee 5','Nursing Service',1,'2020-12-04 21:14:39'),(6,'6','6','Employee 6','Faculty',1,'2020-12-04 21:14:39'),(7,'7','7','Employee 7','Faculty',1,'2020-12-04 21:14:39'),(8,'8','8','Employee 8','Faculty',1,'2020-12-04 21:14:39'),(9,'9','9','Employee 9','Faculty',1,'2020-12-04 21:14:39'),(10,'10','10','Employee 10','Faculty',1,'2020-12-04 21:14:39'),(11,'11','11','Employee 11','Academe-Admin',1,'2020-12-04 21:14:39'),(12,'12','12','Employee 12','Academe-Admin',1,'2020-12-04 21:14:39'),(13,'13','13','Employee 13','Academe-Admin',1,'2020-12-04 21:14:39'),(14,'14','14','Employee 14','Academe-Admin',1,'2020-12-04 21:14:39'),(15,'15','15','Employee 15','Academe-Admin',1,'2020-12-04 21:14:39'),(16,'16','16','Employee 16','Hospital-Admin',1,'2020-12-04 21:14:39'),(17,'17','17','Employee 17','Hospital-Admin',1,'2020-12-04 21:14:39'),(18,'18','18','Employee 18','Hospital-Admin',1,'2020-12-04 21:14:39'),(19,'19','19','Employee 19','Hospital-Admin',1,'2020-12-04 21:14:39'),(20,'20','20','Employee 20','Hospital-Admin',1,'2020-12-04 21:14:39');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raffle_winners`
--

DROP TABLE IF EXISTS `raffle_winners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raffle_winners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `raffle_id` int(11) DEFAULT NULL,
  `cash_price` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raffle_winners`
--

LOCK TABLES `raffle_winners` WRITE;
/*!40000 ALTER TABLE `raffle_winners` DISABLE KEYS */;
INSERT INTO `raffle_winners` VALUES (12,1,4,NULL),(13,2,4,NULL);
/*!40000 ALTER TABLE `raffle_winners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raffles`
--

DROP TABLE IF EXISTS `raffles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raffles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `price` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `expected_winners` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_datetime` datetime DEFAULT CURRENT_TIMESTAMP,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raffles`
--

LOCK TABLES `raffles` WRITE;
/*!40000 ALTER TABLE `raffles` DISABLE KEYS */;
INSERT INTO `raffles` VALUES (1,'Winners of Php. 500','500','200','2020-12-04 22:06:10',1),(2,'Winners of Php. 1000','1000','150','2020-12-04 22:06:10',1),(3,'Winners of Php. 2000','2000','100','2020-12-04 22:06:10',1),(4,'Winners of Php. 3000','3000','50','2020-12-04 22:06:10',1);
/*!40000 ALTER TABLE `raffles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'christmas_raffle'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-07 19:26:49
