CREATE DATABASE  IF NOT EXISTS `h5ws00fg4ypyuohr` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `h5ws00fg4ypyuohr`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: ilzyz0heng1bygi8.chr7pe7iynqr.eu-west-1.rds.amazonaws.com    Database: h5ws00fg4ypyuohr
-- ------------------------------------------------------
-- Server version	8.0.28

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `game_player`
--

DROP TABLE IF EXISTS `game_player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `game_player` (
  `id_game` int NOT NULL,
  `id_player` int NOT NULL,
  `score_player` int DEFAULT NULL,
  PRIMARY KEY (`id_game`,`id_player`),
  KEY `id_player` (`id_player`),
  CONSTRAINT `game_player_ibfk_1` FOREIGN KEY (`id_game`) REFERENCES `game` (`id_game`),
  CONSTRAINT `game_player_ibfk_2` FOREIGN KEY (`id_player`) REFERENCES `player` (`id_player`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_player`
--
-- ORDER BY:  `id_game`,`id_player`

LOCK TABLES `game_player` WRITE;
/*!40000 ALTER TABLE `game_player` DISABLE KEYS */;
INSERT INTO `game_player` (`id_game`, `id_player`, `score_player`) VALUES (49,1,0),(50,1,30),(51,1,20),(52,1,30),(53,1,0),(54,1,50),(55,1,0),(56,2,40),(57,1,10),(58,1,30),(58,2,30),(60,1,0),(61,1,0),(62,1,20),(62,2,30),(67,1,80),(68,1,10),(69,1,0),(70,1,10),(71,1,10),(72,1,10),(73,1,10),(73,2,0),(75,1,10),(76,1,10),(77,1,10),(78,1,10),(79,1,10),(79,2,0),(80,1,0),(84,1,0),(85,1,0),(87,1,10),(88,1,0),(89,1,0),(90,1,0),(91,1,0),(92,1,10),(93,1,10),(94,1,10),(95,1,10),(95,2,10),(96,1,0),(97,1,0),(98,1,10),(99,1,30),(100,1,20),(101,1,0),(102,1,0),(103,1,0),(104,1,0),(105,1,0),(106,1,0),(107,1,0),(108,1,0),(109,1,0),(110,1,0),(111,1,10),(112,1,0),(113,1,0),(114,1,20),(114,2,0),(116,1,0),(118,1,10),(119,1,20),(130,1,0),(138,1,0),(138,2,0),(140,1,0),(141,1,0),(143,1,0),(144,1,0),(145,1,10),(146,2,30),(147,1,30),(148,1,30),(149,1,0),(150,1,40),(151,1,20),(152,1,20),(153,1,20),(154,1,0),(155,1,0),(156,1,20),(157,1,0),(158,1,0),(159,1,0),(160,1,0),(161,1,0),(162,1,0),(163,1,0),(164,1,0),(165,1,0),(166,1,0),(167,1,0),(168,1,20),(169,1,0),(170,1,0),(171,1,0),(172,1,10),(173,1,0),(174,1,10),(175,1,0),(176,1,0),(177,1,10),(178,1,30),(179,1,0),(181,1,20),(182,1,30),(184,1,30),(185,1,20),(186,1,20),(187,1,0),(188,1,20),(189,1,0),(190,1,10),(191,1,10),(192,1,10),(193,1,30),(194,1,10),(195,1,10),(196,1,10),(197,1,20),(198,1,10),(199,1,0),(200,1,0),(201,1,0),(202,1,0),(203,1,0),(204,1,20),(204,2,0),(205,1,20),(206,1,140),(207,1,40),(208,1,20),(209,1,0),(210,1,40),(211,1,10),(212,1,20),(213,1,30),(214,1,20),(215,1,0),(216,1,40),(217,1,0),(218,1,10),(218,2,20),(219,1,20),(220,1,20),(221,1,0),(222,1,50),(223,1,20),(224,1,20),(225,1,20),(226,1,20),(227,1,20),(228,1,10),(229,1,20),(230,1,10),(231,1,0),(232,1,0),(233,1,20),(234,1,40),(235,1,0),(236,1,50),(237,1,10),(239,1,0),(240,1,0),(241,1,20),(241,2,20),(242,1,20),(242,2,30),(243,1,50),(244,1,90),(244,2,100),(245,1,40),(246,2,30),(247,1,30),(247,2,40),(248,1,0),(248,2,0),(249,1,50),(249,2,30),(250,1,0),(250,2,0),(251,1,10);
/*!40000 ALTER TABLE `game_player` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-22 12:18:31
