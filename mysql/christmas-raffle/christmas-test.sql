CREATE DATABASE  IF NOT EXISTS `christmas_raffle` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `christmas_raffle`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: christmas_raffle
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `department_code` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `department_desc` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `position` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `full_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `category` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `created_datetime` datetime DEFAULT CURRENT_TIMESTAMP,
  `winner` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'1','1',NULL,NULL,'Employee 1','Nursing Service',1,'2020-12-04 21:14:39',1),(2,'2','2',NULL,NULL,'Employee 2','Nursing Service',1,'2020-12-04 21:14:39',1),(3,'3','3',NULL,NULL,'Employee 3','Nursing Service',1,'2020-12-04 21:14:39',1),(4,'4','4',NULL,NULL,'Employee 4','Nursing Service',1,'2020-12-04 21:14:39',1),(5,'5','5',NULL,NULL,'Employee 5','Nursing Service',1,'2020-12-04 21:14:39',1),(6,'6','6',NULL,NULL,'Employee 6','Faculty',1,'2020-12-04 21:14:39',1),(7,'7','7',NULL,NULL,'Employee 7','Faculty',1,'2020-12-04 21:14:39',1),(8,'8','8',NULL,NULL,'Employee 8','Faculty',1,'2020-12-04 21:14:39',1),(9,'9','9',NULL,NULL,'Employee 9','Faculty',1,'2020-12-04 21:14:39',1),(10,'10','10',NULL,NULL,'Employee 10','Faculty',1,'2020-12-04 21:14:39',1),(11,'11','11',NULL,NULL,'Employee 11','Academe-Admin',1,'2020-12-04 21:14:39',1),(12,'12','12',NULL,NULL,'Employee 12','Academe-Admin',1,'2020-12-04 21:14:39',1),(13,'13','13',NULL,NULL,'Employee 13','Academe-Admin',1,'2020-12-04 21:14:39',1),(14,'14','14',NULL,NULL,'Employee 14','Academe-Admin',1,'2020-12-04 21:14:39',1),(15,'15','15',NULL,NULL,'Employee 15','Academe-Admin',1,'2020-12-04 21:14:39',1),(16,'16','16',NULL,NULL,'Employee 16','Hospital-Admin',1,'2020-12-04 21:14:39',1),(17,'17','17',NULL,NULL,'Employee 17','Hospital-Admin',1,'2020-12-04 21:14:39',1),(18,'18','18',NULL,NULL,'Employee 18','Hospital-Admin',1,'2020-12-04 21:14:39',1),(19,'19','19',NULL,NULL,'Employee 19','Hospital-Admin',1,'2020-12-04 21:14:39',1),(20,'20','20',NULL,NULL,'Employee 20','Hospital-Admin',1,'2020-12-04 21:14:39',1),(21,'21','21',NULL,NULL,'Employee 21','Hospital-Admin',1,'2020-12-04 21:14:39',1);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raffle_winners`
--

DROP TABLE IF EXISTS `raffle_winners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `raffle_winners` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int DEFAULT NULL,
  `raffle_id` int DEFAULT NULL,
  `create_datetime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raffle_winners`
--

LOCK TABLES `raffle_winners` WRITE;
/*!40000 ALTER TABLE `raffle_winners` DISABLE KEYS */;
INSERT INTO `raffle_winners` VALUES (74,16,4,'2020-12-08 07:26:54'),(75,19,4,'2020-12-08 07:26:54'),(76,20,4,'2020-12-08 07:26:55'),(77,18,4,'2020-12-08 07:26:55'),(78,17,4,'2020-12-08 07:26:55'),(79,15,2,'2020-12-08 07:42:56'),(80,11,2,'2020-12-08 07:42:58'),(81,12,2,'2020-12-08 07:42:59'),(82,14,2,'2020-12-08 07:42:59'),(83,13,2,'2020-12-08 07:42:59'),(84,21,2,'2020-12-08 12:24:44'),(85,4,3,'2020-12-08 12:49:23'),(86,1,3,'2020-12-08 12:49:23'),(87,3,3,'2020-12-08 12:49:24'),(88,5,3,'2020-12-08 12:49:24'),(89,2,3,'2020-12-08 12:49:24');
/*!40000 ALTER TABLE `raffle_winners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raffles`
--

DROP TABLE IF EXISTS `raffles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `raffles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `price` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `expected_winners` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
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
INSERT INTO `raffles` VALUES (1,'Winners of Php. 500','500','5','2020-12-04 22:06:10',1),(2,'Winners of Php. 1000','1000','150','2020-12-04 22:06:10',1),(3,'Winners of Php. 2000','2000','5','2020-12-04 22:06:10',1),(4,'Winners of Php. 3000','3000','50','2020-12-04 22:06:10',1);
/*!40000 ALTER TABLE `raffles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_rafflewinners`
--

DROP TABLE IF EXISTS `vw_rafflewinners`;
/*!50001 DROP VIEW IF EXISTS `vw_rafflewinners`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_rafflewinners` AS SELECT 
 1 AS `employee_code`,
 1 AS `full_name`,
 1 AS `position`,
 1 AS `department_desc`,
 1 AS `raffle_id`,
 1 AS `raffle_name`,
 1 AS `raffle_price`,
 1 AS `expected_winners`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'christmas_raffle'
--

--
-- Dumping routines for database 'christmas_raffle'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_setWinners` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_setWinners`(
	IN employee_code INT,
    IN raffle_id INT,
    OUT success INT
)
BEGIN
	IF (SELECT count(*) FROM raffle_winners WHERE employee_id = employee_code) > 0 THEN
		BEGIN
			SET success = 0;
		END;
	ELSE 
		BEGIN
			INSERT INTO raffle_winners (employee_id, raffle_id)
			VALUES (employee_code, raffle_id);
            
            UPDATE employees SET winner = 1 WHERE (id = employee_code);
			
            SET success = 1;
            
		END;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vw_rafflewinners`
--

/*!50001 DROP VIEW IF EXISTS `vw_rafflewinners`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_rafflewinners` AS select `e`.`employee_id` AS `employee_code`,`e`.`full_name` AS `full_name`,`e`.`position` AS `position`,`e`.`department_desc` AS `department_desc`,`r`.`id` AS `raffle_id`,`r`.`name` AS `raffle_name`,`r`.`price` AS `raffle_price`,`r`.`expected_winners` AS `expected_winners` from ((`raffles` `r` join `raffle_winners` `rw` on((`rw`.`raffle_id` = `r`.`id`))) join `employees` `e` on((`e`.`id` = `rw`.`employee_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-08 21:21:10
