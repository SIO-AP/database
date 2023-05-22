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
-- Dumping events for database 'h5ws00fg4ypyuohr'
--

--
-- Dumping routines for database 'h5ws00fg4ypyuohr'
--
/*!50003 DROP PROCEDURE IF EXISTS `getRandomQuestionsWithAnswers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`kwl2pzn4ae8s4k7g`@`%` PROCEDURE `getRandomQuestionsWithAnswers`(IN numQuestions INT)
BEGIN
    DECLARE questionIDs VARCHAR(255);
    
    -- Créer une table temporaire pour stocker les IDs des questions aléatoires
    CREATE TEMPORARY TABLE tempRandomQuestionIDs
    (
        `id_question` INT(11) NOT NULL,
        PRIMARY KEY (`id_question`)
    );
    
    -- Sélectionne les IDs des questions aléatoires
    INSERT INTO tempRandomQuestionIDs
    SELECT id_question FROM question ORDER BY RAND() LIMIT numQuestions;
    
    -- Crée une vue temporaire qui contient les questions et leurs réponses
    CREATE TEMPORARY TABLE tempQuestionsWithAnswers
    SELECT q.*, 
           a1.desc_answer AS answer1, 
           a2.desc_answer AS answer2, 
           a3.desc_answer AS answer3, 
           a4.desc_answer AS answer4
    FROM question q 
    JOIN answer a1 ON q.id_question = a1.id_question
    JOIN answer a2 ON q.id_question = a2.id_question and a2.id_answer != a1.id_answer
    JOIN answer a3 ON q.id_question = a3.id_question and a3.id_answer != a1.id_answer and a3.id_answer != a2.id_answer
    JOIN answer a4 ON q.id_question = a4.id_question and a4.id_answer != a1.id_answer and a4.id_answer != a2.id_answer and a4.id_answer != a3.id_answer
    JOIN tempRandomQuestionIDs t ON q.id_question = t.id_question
    GROUP BY q.id_question;
    
    -- Sélectionne les données de la vue temporaire
    SELECT * FROM tempQuestionsWithAnswers;
    
    -- Supprime la vue temporaire et la table temporaire
    DROP TEMPORARY TABLE tempQuestionsWithAnswers;
    DROP TEMPORARY TABLE tempRandomQuestionIDs;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_game` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`kwl2pzn4ae8s4k7g`@`%` PROCEDURE `get_game`(IN numQuestions INT)
BEGIN
-- Crée une vue temporaire qui contient les questions et leurs réponses
CREATE TEMPORARY TABLE tempQuestionsWithAnswers
SELECT q.*,
a1.id_answer AS id_answer1, a1.desc_answer AS desc_answer1, a1.is_correct AS is_correct1,
a2.id_answer AS id_answer2, a2.desc_answer AS desc_answer2, a2.is_correct AS is_correct2,
a3.id_answer AS id_answer3, a3.desc_answer AS desc_answer3, a3.is_correct AS is_correct3,
a4.id_answer AS id_answer4, a4.desc_answer AS desc_answer4, a4.is_correct AS is_correct4
FROM question q
-- Jointure gauche pour récupérer les réponses de la question
LEFT JOIN answer a1 ON q.id_question = a1.id_question
-- Jointure gauche pour récupérer la deuxième réponse de la question
LEFT JOIN answer a2 ON q.id_question = a2.id_question and a2.id_answer != a1.id_answer
-- Jointure gauche pour récupérer la troisième réponse de la question
LEFT JOIN answer a3 ON q.id_question = a3.id_question and a3.id_answer != a1.id_answer and a3.id_answer != a2.id_answer
-- Jointure gauche pour récupérer la quatrième réponse de la question
LEFT JOIN answer a4 ON q.id_question = a4.id_question and a4.id_answer != a1.id_answer and a4.id_answer != a2.id_answer and a4.id_answer != a3.id_answer
-- Jointure interne avec une table dérivée pour sélectionner les IDs de questions aléatoires
JOIN (
  SELECT id_question FROM question ORDER BY RAND() LIMIT numQuestions
) AS randomQuestions ON q.id_question = randomQuestions.id_question
GROUP BY q.id_question;

-- Sélectionne les données de la vue temporaire
SELECT * FROM tempQuestionsWithAnswers ORDER BY RAND();

-- Supprime la vue temporaire
DROP TEMPORARY TABLE tempQuestionsWithAnswers;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_game2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`kwl2pzn4ae8s4k7g`@`%` PROCEDURE `get_game2`(IN numQuestions INT)
BEGIN
-- Crée une vue temporaire qui contient les questions et leurs réponses
CREATE TEMPORARY TABLE tempQuestionsWithAnswers
SELECT q.*,
a1.id_answer AS id_answer1, a1.desc_answer AS desc_answer1, a1.is_correct AS is_correct1,
a2.id_answer AS id_answer2, a2.desc_answer AS desc_answer2, a2.is_correct AS is_correct2,
a3.id_answer AS id_answer3, a3.desc_answer AS desc_answer3, a3.is_correct AS is_correct3,
a4.id_answer AS id_answer4, a4.desc_answer AS desc_answer4, a4.is_correct AS is_correct4
FROM question q
-- Jointure gauche pour récupérer les réponses de la question
LEFT JOIN answer a1 ON q.id_question = a1.id_question
-- Jointure gauche pour récupérer la deuxième réponse de la question
LEFT JOIN answer a2 ON q.id_question = a2.id_question and a2.id_answer != a1.id_answer
-- Jointure gauche pour récupérer la troisième réponse de la question
LEFT JOIN answer a3 ON q.id_question = a3.id_question and a3.id_answer != a1.id_answer and a3.id_answer != a2.id_answer
-- Jointure gauche pour récupérer la quatrième réponse de la question
LEFT JOIN answer a4 ON q.id_question = a4.id_question and a4.id_answer != a1.id_answer and a4.id_answer != a2.id_answer and a4.id_answer != a3.id_answer
-- Jointure interne avec une table dérivée pour sélectionner les IDs de questions aléatoires
JOIN (
  SELECT id_question FROM question ORDER BY RAND() LIMIT numQuestions
) AS randomQuestions ON q.id_question = randomQuestions.id_question
GROUP BY q.id_question;

-- Sélectionne les données de la vue temporaire
SELECT * FROM tempQuestionsWithAnswers ORDER BY RAND();

-- Supprime la vue temporaire
DROP TEMPORARY TABLE tempQuestionsWithAnswers;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_game3` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`kwl2pzn4ae8s4k7g`@`%` PROCEDURE `get_game3`(IN numQuestions INT)
BEGIN
    DECLARE questionIDs VARCHAR(255);
    
    -- Créer une table temporaire pour stocker les IDs des questions aléatoires
    CREATE TEMPORARY TABLE tempRandomQuestionIDs
    (
        `id_question` INT(11) NOT NULL,
        PRIMARY KEY (`id_question`)
    );
    
    -- Sélectionne les IDs des questions aléatoires
    INSERT INTO tempRandomQuestionIDs
    SELECT id_question FROM question ORDER BY RAND() LIMIT numQuestions;
    
    -- Crée une vue temporaire qui contient les questions et leurs réponses
    CREATE TEMPORARY TABLE tempQuestionsWithAnswers
    SELECT q.*, 
           a1.id_answer AS id_answer1, a1.desc_answer AS desc_answer1, a1.is_correct AS is_correct1, 
           a2.id_answer AS id_answer2, a2.desc_answer AS desc_answer2, a2.is_correct AS is_correct2, 
           a3.id_answer AS id_answer3, a3.desc_answer AS desc_answer3, a3.is_correct AS is_correct3, 
           a4.id_answer AS id_answer4, a4.desc_answer AS desc_answer4,  a4.is_correct AS is_correct4
    FROM question q 
    JOIN answer a1 ON q.id_question = a1.id_question
    JOIN answer a2 ON q.id_question = a2.id_question and a2.id_answer != a1.id_answer
    JOIN answer a3 ON q.id_question = a3.id_question and a3.id_answer != a1.id_answer and a3.id_answer != a2.id_answer
    JOIN answer a4 ON q.id_question = a4.id_question and a4.id_answer != a1.id_answer and a4.id_answer != a2.id_answer and a4.id_answer != a3.id_answer
    JOIN tempRandomQuestionIDs t ON q.id_question = t.id_question
    GROUP BY q.id_question;
    
    -- Sélectionne les données de la vue temporaire
    SELECT * FROM tempQuestionsWithAnswers ORDER BY RAND();
    
    -- Supprime la vue temporaire et la table temporaire
    DROP TEMPORARY TABLE tempQuestionsWithAnswers;
    DROP TEMPORARY TABLE tempRandomQuestionIDs;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_Player_Stats` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`kwl2pzn4ae8s4k7g`@`%` PROCEDURE `get_Player_Stats`(IN playerID INT)
BEGIN   
SELECT COUNT(*) AS numGamesPlayed, AVG(score_player) AS avgScorePerGame
FROM player p
inner join game_player gp on gp.id_player = p.id_player
WHERE p.id_player = playerID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-22 12:18:38
