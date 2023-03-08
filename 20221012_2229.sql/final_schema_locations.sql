CREATE DATABASE  IF NOT EXISTS `final_schema` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `final_schema`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: final_schema
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `index` bigint DEFAULT NULL,
  `id` bigint DEFAULT NULL,
  `country.id` double DEFAULT NULL,
  `country.name` text,
  `country.abbrev` text,
  `city.id` double DEFAULT NULL,
  `city.keyword` text,
  `school` text,
  `school_id` bigint DEFAULT NULL,
  KEY `ix_locations_index` (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (0,15901,57,'Germany','DE',31156,'berlin','ironhack',10828),(1,16022,29,'Mexico','MX',31175,'mexico-city','ironhack',10828),(2,16086,59,'Netherlands','NL',31168,'amsterdam','ironhack',10828),(3,16088,42,'Brazil','BR',31121,'sao-paulo','ironhack',10828),(4,16109,38,'France','FR',31136,'paris','ironhack',10828),(5,16375,1,'United States','US',31,'miami','ironhack',10828),(6,16376,12,'Spain','ES',31052,'madrid','ironhack',10828),(7,16377,12,'Spain','ES',31170,'barcelona','ironhack',10828),(8,16709,28,'Portugal','PT',31075,'lisbon','ironhack',10828),(9,17233,NULL,NULL,NULL,NULL,NULL,'ironhack',10828),(10,15704,1,'United States','US',13,'san-francisco','app-academy',10525),(11,15705,1,'United States','US',1507,'new-york-city','app-academy',10525),(12,15862,NULL,NULL,NULL,NULL,NULL,'app-academy',10525),(13,16013,NULL,NULL,NULL,NULL,NULL,'springboard',11035),(14,17154,NULL,NULL,NULL,NULL,NULL,'practicum-coding-bootcamps',11225),(15,15899,NULL,NULL,NULL,NULL,NULL,'evolve-security-academy',10743),(16,16045,1,'United States','US',39,'chicago','evolve-security-academy',10743),(17,16002,1,'United States','US',10,'los-angeles','codesmith',10643),(18,16328,1,'United States','US',1507,'new-york-city','codesmith',10643),(19,16595,NULL,NULL,NULL,NULL,NULL,'codesmith',10643),(20,17438,1,'United States','US',31234,'temp-online','codesmith',10643),(21,15935,1,'United States','US',1507,'new-york-city','brainstation',10571),(22,15985,2,'Canada','CA',1547,'toronto','brainstation',10571),(23,16010,2,'Canada','CA',31138,'vancouver','brainstation',10571),(24,16909,1,'United States','US',47,'boston','brainstation',10571),(25,16910,1,'United States','US',39,'chicago','brainstation',10571),(26,16940,NULL,NULL,NULL,NULL,NULL,'brainstation',10571),(27,17706,1,'United States','US',31,'miami','brainstation',10571),(28,17731,11,'United Kingdom','GB',31176,'london','brainstation',10571);
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-12 22:29:20
