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
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question` (
  `id_question` int NOT NULL,
  `desc_question` varchar(255) DEFAULT NULL,
  `difficulty` int DEFAULT NULL,
  PRIMARY KEY (`id_question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--
-- ORDER BY:  `id_question`

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` (`id_question`, `desc_question`, `difficulty`) VALUES (0,'Qu’est ce qu’un VPN ?',2),(1,'Que signifie DDOS ?',3),(2,'Quel mot de passe est le plus sécurisé ?',1),(3,'Quel est l\'enjeu de la cybersécurité ?',1),(4,'Quelle organisation gère la protection des données ?',2),(5,'Qu’est ce qu’un Antivirus ?',1),(6,'Qu’est ce qui permet de faire respecter la politique de sécurité du réseau ?',2),(7,'Lequel est un programme malveillant indépendant qui ne nécessite aucun autre programme ?',4),(8,'Qu\'est-ce qu\'un code incorporé dans un programme pour «exploser» si les conditions sont remplies ?',1),(9,'Quel forme de virus est conçue pour éviter la détection par des logiciels antivirus ?',2),(10,'Quel protocole est utilisé pour sécuriser les e-mails ?',3),(11,'Quel est le nombre de sous-clés générées dans l’algorithme IDEA ?',4),(12,'Lequel est un exemple d’algorithme de clé publique ?',4),(13,'Qu’est ce qui transforme le message en format illisible par les pirates ?',3),(14,'Quel est le numéro de port pour HTTPS (HTTP Secure) ?',4),(15,'Quel est la méthode utilisée pour valider l’identité de l’expéditeur d’un message ?',2),(16,'Qu’est ce qu’un hacker ?',1),(17,'Qu’est ce qu’un pentest ?',3),(18,'Qu’est ce que le RGDP ?',3),(19,'Quelle est la perte moyenne de CA suite à une attaque ?',4);
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
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

-- Dump completed on 2023-05-22 12:18:32
