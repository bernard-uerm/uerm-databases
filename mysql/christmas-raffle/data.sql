CREATE DATABASE  IF NOT EXISTS `christmas_raffle` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
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
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'1','1','Employee 1','Nursing Service',1,'2020-12-04 21:14:39'),(2,'2','2','Employee 2','Nursing Service',1,'2020-12-04 21:14:39'),(3,'3','3','Employee 3','Nursing Service',1,'2020-12-04 21:14:39'),(4,'4','4','Employee 4','Nursing Service',1,'2020-12-04 21:14:39'),(5,'5','5','Employee 5','Nursing Service',1,'2020-12-04 21:14:39'),(6,'6','6','Employee 6','Faculty',1,'2020-12-04 21:14:39'),(7,'7','7','Employee 7','Faculty',1,'2020-12-04 21:14:39'),(8,'8','8','Employee 8','Faculty',1,'2020-12-04 21:14:39'),(9,'9','9','Employee 9','Faculty',1,'2020-12-04 21:14:39'),(10,'10','10','Employee 10','Faculty',1,'2020-12-04 21:14:39'),(11,'11','11','Employee 11','Academe-Admin',1,'2020-12-04 21:14:39'),(12,'12','12','Employee 12','Academe-Admin',1,'2020-12-04 21:14:39'),(13,'13','13','Employee 13','Academe-Admin',1,'2020-12-04 21:14:39'),(14,'14','14','Employee 14','Academe-Admin',1,'2020-12-04 21:14:39'),(15,'15','15','Employee 15','Academe-Admin',1,'2020-12-04 21:14:39'),(16,'16','16','Employee 16','Hospital-Admin',1,'2020-12-04 21:14:39'),(17,'17','17','Employee 17','Hospital-Admin',1,'2020-12-04 21:14:39'),(18,'18','18','Employee 18','Hospital-Admin',1,'2020-12-04 21:14:39'),(19,'19','19','Employee 19','Hospital-Admin',1,'2020-12-04 21:14:39'),(20,'20','20','Employee 20','Hospital-Admin',1,'2020-12-04 21:14:39');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `raffle_winners`
--

LOCK TABLES `raffle_winners` WRITE;
/*!40000 ALTER TABLE `raffle_winners` DISABLE KEYS */;
/*!40000 ALTER TABLE `raffle_winners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `raffles`
--

LOCK TABLES `raffles` WRITE;
/*!40000 ALTER TABLE `raffles` DISABLE KEYS */;
INSERT INTO `raffles` VALUES (1,'200 Winners of Php. 500','500','200','2020-12-04 22:06:10',1),(2,'150 Winners of Php. 1000','1000','150','2020-12-04 22:06:10',1),(3,'100 Winners of Php. 2000','2000','100','2020-12-04 22:06:10',1),(4,'50 Winners of Php. 3000','3000','50','2020-12-04 22:06:10',1);
/*!40000 ALTER TABLE `raffles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'christmas_raffle'
--

--
-- Dumping routines for database 'christmas_raffle'
--
/*!50003 DROP PROCEDURE IF EXISTS `set_winners` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `set_winners`(
	IN user_code INT,
    OUT employee_code INT
)
BEGIN
	UPDATE employees SET `winner` = '1' WHERE (employees.employee_id = user_code);
	SET employee_code = user_code;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_cleardata` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_cleardata`()
BEGIN
	TRUNCATE employees;
    TRUNCATE raffles;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-06 22:36:16
