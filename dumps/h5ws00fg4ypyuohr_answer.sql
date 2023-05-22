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
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answer` (
  `id_answer` int NOT NULL AUTO_INCREMENT,
  `desc_answer` varchar(255) DEFAULT NULL,
  `is_correct` tinyint(1) DEFAULT NULL,
  `id_question` int DEFAULT NULL,
  PRIMARY KEY (`id_answer`),
  KEY `id_question` (`id_question`),
  CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`id_question`) REFERENCES `question` (`id_question`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer`
--
-- ORDER BY:  `id_answer`

LOCK TABLES `answer` WRITE;
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
INSERT INTO `answer` (`id_answer`, `desc_answer`, `is_correct`, `id_question`) VALUES (1,'H3g/KGAwQ04f+BfbynG+31zCqTafXQn+SDvCqMuZXwQ=',0,0),(2,'fOiJAqDO+oNVygQWBZDyvcKr3rH4vzpW2WVoYhidWiw=',1,0),(3,'lfHyHwBJ3Or0ULV24OTR4XN0O1khnAKfgQ4NGEnMf3r/39xeT2y31Q==',0,0),(4,'+/+qRTXezgQFhRjM2cBfWR9F7SQ+9ULUnJIt09KwF3A=',0,0),(5,'B9KStUI1a239pYIGp2CKpbpYDxoLpFqHhTW/3eIKGCRqGvp0sONNWQ==',1,1),(6,'z/nCkPSGWu16jOYQ0bB0t9hkcmnpWJlKIfm8klU/Hn0Uhs3OtzvOIg==',0,1),(7,'qOFjvQ8IQ1Z5fFqiWIImU39IErtOrpH3/xOLLB7sgChvaGls10ewMg==',0,1),(8,'yeH/AuMKP+JVQFxByQNrcnQUt59099RVZ2KV+s/QZ2w=',0,1),(9,'NQpdgnrxLVMpVIFJUzc4Pw==',0,2),(10,'bv2hSgcvQxN0DJb/5hgPP6gdVoKwxNaL',0,2),(11,'kwv+kHbITr/O7yFKMx/VSL6kC6ddsla1',0,2),(12,'S/lQWUqwS9MnGD/UPh9DisXdSVeISlZu',1,2),(13,'LRU26NSpnb/TJS2BRYSRiw5Uv7vie1Jkv5Op7Pi0Ls0=',0,3),(14,'1/Lq7HV7UVLxTcCuADmfiaAbgWY3d8U6aZnV+ykCjEvhfGXXCrClKK9m15JlhS69',1,3),(15,'nCi7pGlOL8tuqqNmSKwRCc01QkOMnBB0kMvrO4tvJgY43vICIle4dDPfPySzICaiYZ7lT1DidXMmLJ+xNNM5TSKaVQQqbGMK',0,3),(16,'L2CvqJL+Jh8M4ILG7Br9STmEFWrsa1WJFc3zaF6W57oj6KtdrBXGX82XhJbV21crohNW4e+BtcNOg4ScknrUgR2Qs889OhgkVqEny/GZXNX78hU2DTYU5A==',0,3),(17,'2m5YTMlzYM4ar7SwG7LmJx1yVQPL7l/moLLm5ZqFpJY=',0,4),(18,'7+6HJt3kniaxfxkM071DQg==',0,4),(19,'JNWkIwNv2yHK3k0ATv3b/g==',1,4),(20,'8PAvJkMyOd0lzjq/MiEUmecH2UZu/b4TNYCTosM/RzM=',0,4),(21,'vwcoy7bgfG3CuqWKvzgpfxhzVq7mrLFuxGO8GTskghyQNW/O807gHE9QFUFV8jGg',1,5),(22,'iuQj5weStd5CfYQ4DF1jzfEo2GluzrwDWYWx7sTAOJ4qq1gzjcMu7w==',0,5),(23,'YAWi//QxwjI9ZsEW5ooG/xjLa8tMFcAidTCRsM9+X6U=',0,5),(24,'Wzr/W9+GKEYlSpnGIaXlEy7j6CvyMf0kxQTfXGUKcEYGpVQW8+UaWg==',0,5),(25,'/qn0addsQNbFYrr//lw30hY1pGUdll8OcHz+I2QbQwY=',0,6),(26,'O2l+dQw1BPg1BX8MPeDOqqdbHXaeTVtn',1,6),(27,'Sgk4U486x9JEX/2tdkRk8b26eK5C5+He',0,6),(28,'Hmpg+r/6xWioXhW63DOuE7roWr3hmqHyDptTPmJKRQQl1OcUrpSl2l+OokQ7QyyR',0,6),(29,'cZX9aTCpKzMQs2eDAtmJBpCppQSihixa',0,7),(30,'sGbDxDXFFeRDu2YYE7J5XjouFFEyfKI4',0,7),(31,'4YnIPSUq3VSPAXwfSyPveQ==',1,7),(32,'vgbna41EBeJqtD8ZygSkhA==',0,7),(33,'2btkGMKKtPYhsA3uZQJdeviOlTnfzG+Y',1,8),(34,'1WGIY7egDDbKQdGZzIxNu9iJOyg8u5wG',0,8),(35,'ThVuejGXXYO6b0d83YNxPQ==',0,8),(36,'V3f4HsQGFY0zsd03SBbjo4fczm+xweXa',0,8),(37,'DA/GEaNwP+dgQF0nBucG+04vLj8FiUIO',0,9),(38,'hc8XpWyzRA73IlxH1o381xgvrs9dMmaZ',0,9),(39,'y84DkAc9AMrGdXSmBAfsPIVw/wWimZWo1EHKvv/S+ko=',0,9),(40,'uycqcr6HDCCrsvr0KxEzhaJ0Bl2gv+Nt',1,9),(41,'zvPXy8a6nCktsz3t9onxlg==',0,10),(42,'XFH3v4yELYnurEFeuZUnbw==',1,10),(43,'n8DOec+R1CZdNv/ZSnW6qw==',0,10),(44,'fZ1Sn9cR/yVeKLA1Wx2d/Q==',0,10),(45,'8xc1YXwwWNLMxVJQ8e/0eA==',0,11),(46,'pn+f1nUv7o3SMNE1ochVNw==',0,11),(47,'n3WLKzl3Knvf/Np2IXK6Cw==',1,11),(48,'5HTgpMu4vbHHZGpitsuRhQ==',0,11),(49,'aUI4Z7lN49xPQavDlTE6fg==',1,12),(50,'tax+4Kl3bVD6gk337rl7PQ==',0,12),(51,'yolkoVlaCDnhfGUDGoJVaA==',0,12),(52,'yBjmtijB81M2FFvXk0EKrA==',0,12),(53,'yUzuA1j56NrBzsYirs58eKoDAZQtJXTv',0,13),(54,'Y8nENumNMd/nmyeNcuIukkhejMUR/Czj',1,13),(55,'MjFuNu0mV8hUfGQECv63//psap15abqT',0,13),(56,'gxW3oK6/XvT3kb5QJ8B32vzbKMm9ObzP',0,13),(57,'7aL2udoXA6J2EdweOQUzxg==',1,14),(58,'KO28Vm0qRbEzbvvpxsSFVg==',0,14),(59,'NHoSjM/lkjm4D7f3cOFtmQ==',0,14),(60,'BswQNqinvWBEgirsL0W9RQ==',0,14),(61,'4oMgLwgnRf37SPieUD7Oyg==',0,15),(62,'hCsxD8PP5TFasiNafxADBDfnBghW/PGB',0,15),(63,'n2t7kjTdTwbhLsAbvsXpriSikv9ulrpUW98cLINMpJI=',1,15),(64,'IoviMDWw5uMcrEVF+PLVhrPdhsVaQ8FaWKvZyKa3HIT7uXAzn17uqQ==',0,15),(65,'ybRJ06/fuT9OXqztV0N4DbLwpLGDMR5ZfWRGxLxgb8M=',1,16),(66,'QJvjgO5iSyGkTEb6ZWSp3d8tOF/saNZmiWjnaWvix+4=',0,16),(67,'ObmI6EEswVTEjYs5MB+eQQDvj4HOHwBmVQLQslkAJi4=',0,16),(68,'t/8XRyPTAwRkxZOPDhtGCiD7XTpJCH5EbmbAHuLn1EcqPy1eNWZ+NHBGrkx9YVoyW62eut5Eo2o=',0,16),(69,'VdEP4psqeote7JE7T+j5hSGYu107Ewxc1x3Rwn0PXpU=',0,17),(70,'g/WtruZ/NCG9FW3SU7dJ24mkpkgCM3/+xUd4yI5ZaBHAl93g75HSYQ==',1,17),(71,'tQ0cqD52wf0KyYzDsRBFiy2zctxEWQux91Pk1NYvUsMC58mSQ9V0WFbOPBruje8Bq0ct8HNdhGz9fkw062LzWze7rrwW1Khw',0,17),(72,'no86N9p4oTu/TURRhuDWWg7ao2LjW1h9Qy4O8PH1UCOTGyw1mYDrznUp3D/fTjEew+2KrOmpC6Y=',0,17),(73,'qnlvc/MAK+CRMVwZOrhyisXZcVO1G4KPo5AHlgR8bzkBv6lXvAugHeWuRph23dqsGkxo5/Z8v39QteONT76pVw==',1,18),(74,'ZFCmFz0iaM2feW2U1eVO41Ai/kzzJbG1Vd4fnhbwsej5+7HyfAAH4xHJyk0Fab4DdXNCcTcLBCo=',0,18),(75,'YssJdK+XJWF2MLSnGHR++RuYIGiNg18AgiRUuxXAJ4DshF6lqooL8Q==',0,18),(76,'0W+xrBedyJewn3QibjryOCZGvJDdtVSuSO2DS74MXU18OnzRhnilzsEsIjGAaddZ',0,18),(77,'KFMUrZh6IRhtK0NlsaJhPg==',0,19),(78,'/cbEtJPnA2OoPVkeEcddhA==',0,19),(79,'SKGSm/K/LOC7OeLUN0H56g==',0,19),(80,'d5sEwvon5baSYR2wPT7fOg==',1,19);
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;
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

-- Dump completed on 2023-05-22 12:18:36
