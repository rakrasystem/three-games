-- MySQL dump 10.13  Distrib 5.7.29, for Win64 (x86_64)
--
-- Host: localhost    Database: three_games
-- ------------------------------------------------------
-- Server version	5.7.29-log

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
-- Table structure for table `entrant`
--

DROP TABLE IF EXISTS `entrant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entrant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game1_lose` int(11) DEFAULT NULL,
  `game1_win` int(11) DEFAULT NULL,
  `game2_lose` int(11) DEFAULT NULL,
  `game2_win` int(11) DEFAULT NULL,
  `game3_lose` int(11) DEFAULT NULL,
  `game3_win` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_4r3w12n7uvng7g7wf93u8rcc8` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrant`
--

LOCK TABLES `entrant` WRITE;
/*!40000 ALTER TABLE `entrant` DISABLE KEYS */;
INSERT INTO `entrant` VALUES (1,3,0,1,0,0,2,'sw001','B0402985F0F71F9865BAB865DE906126655021A09633B801DC982DD1F8D54852'),(2,1,0,2,2,5,2,'ゲスト','5C92E484F172410ECEFD56DD01F072E4C53A1D7A7ED38383587A3621D1A9D0BB'),(3,0,0,0,0,0,0,'sw002','B0402985F0F71F9865BAB865DE906126655021A09633B801DC982DD1F8D54852');
/*!40000 ALTER TABLE `entrant` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-05 19:22:42
