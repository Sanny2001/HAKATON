-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: hzs1
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
create schema hzs1;
use hzs1;
--
-- Table structure for table `chattest`
--

DROP TABLE IF EXISTS `chattest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `chattest` (
  `id_1` bigint(20) DEFAULT NULL,
  `id_2` bigint(20) DEFAULT NULL,
  `msg` longtext,
  `datum` datetime DEFAULT NULL,
  KEY `id_1` (`id_1`),
  KEY `id_2` (`id_2`),
  CONSTRAINT `chattest_ibfk_1` FOREIGN KEY (`id_1`) REFERENCES `user` (`id`),
  CONSTRAINT `chattest_ibfk_2` FOREIGN KEY (`id_2`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chattest`
--

LOCK TABLES `chattest` WRITE;
/*!40000 ALTER TABLE `chattest` DISABLE KEYS */;
INSERT INTO `chattest` VALUES (3,4,'asd',NULL);
/*!40000 ALTER TABLE `chattest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `friends` (
  `id_1` bigint(20) DEFAULT NULL,
  `id_2` bigint(20) DEFAULT NULL,
  KEY `id_1` (`id_1`),
  KEY `id_2` (`id_2`),
  CONSTRAINT `friends_ibfk_1` FOREIGN KEY (`id_1`) REFERENCES `user` (`id`),
  CONSTRAINT `friends_ibfk_2` FOREIGN KEY (`id_2`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friends`
--

LOCK TABLES `friends` WRITE;
/*!40000 ALTER TABLE `friends` DISABLE KEYS */;
INSERT INTO `friends` VALUES (2,1),(3,1),(3,3),(3,3),(3,4);
/*!40000 ALTER TABLE `friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(40) NOT NULL,
  `descr` longtext,
  `user_id` bigint(20) DEFAULT NULL,
  `location` varchar(30) NOT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'sdasdasd','asdasdasgdhjashdjas',3,'Novi SAD','2322-12-23 14:03:00');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp`
--

DROP TABLE IF EXISTS `temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `temp` (
  `id_1` bigint(20) DEFAULT NULL,
  `id_2` bigint(20) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  KEY `id_1` (`id_1`),
  KEY `id_2` (`id_2`),
  CONSTRAINT `temp_ibfk_1` FOREIGN KEY (`id_1`) REFERENCES `user` (`id`),
  CONSTRAINT `temp_ibfk_2` FOREIGN KEY (`id_2`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp`
--

LOCK TABLES `temp` WRITE;
/*!40000 ALTER TABLE `temp` DISABLE KEYS */;
INSERT INTO `temp` VALUES (2,1,1),(3,1,1),(2,4,0),(1,4,0),(4,1,0),(4,3,0),(4,2,0),(1,2,0),(5,1,0),(3,4,1);
/*!40000 ALTER TABLE `temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(40) NOT NULL,
  `f_name` varchar(30) NOT NULL,
  `l_name` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `datum_rodj` date DEFAULT NULL,
  `pol` tinyint(1) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `drzava` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'p@genije.com','pera','genije','1678',NULL,NULL,NULL,NULL),(2,'k@mica.com','mica','kica','1234567',NULL,NULL,NULL,NULL),(3,'pwice.4pro@gmail.com','Djordje','Jankovic','123',NULL,NULL,NULL,NULL),(4,'pwiceaa.4pro@gmail.com','Djordje','Jankovic','123',NULL,NULL,NULL,NULL),(5,'as@d.c','Djordje','Jankovic','123',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-25 18:30:01
