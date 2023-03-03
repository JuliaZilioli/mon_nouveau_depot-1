-- MySQL dump 10.19  Distrib 10.3.36-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: sae203Base
-- ------------------------------------------------------
-- Server version	10.3.36-MariaDB-0+deb10u2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Créateurs`
--

DROP TABLE IF EXISTS `Créateurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Créateurs` (
  `createur_id` int(11) NOT NULL AUTO_INCREMENT,
  `createur_nom` varchar(20) NOT NULL,
  `createur_prenom` varchar(20) NOT NULL,
  `createur_nationalite` varchar(25) NOT NULL,
  PRIMARY KEY (`createur_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Créateurs`
--

LOCK TABLES `Créateurs` WRITE;
/*!40000 ALTER TABLE `Créateurs` DISABLE KEYS */;
/*!40000 ALTER TABLE `Créateurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Jeux vidéos`
--

DROP TABLE IF EXISTS `Jeux vidéos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jeux vidéos` (
  `jv_id` int(11) NOT NULL AUTO_INCREMENT,
  `jv_titre` varchar(50) NOT NULL,
  `jv_annee` year(4) NOT NULL,
  `jv_prix` decimal(6,0) NOT NULL,
  `jv_photo` varchar(30) NOT NULL,
  `jv_categorie` varchar(25) NOT NULL,
  `jv_resume` varchar(500) NOT NULL,
  `#createur_id` int(11) NOT NULL,
  PRIMARY KEY (`jv_id`),
  KEY `createur_id` (`#createur_id`),
  CONSTRAINT `createur_id` FOREIGN KEY (`#createur_id`) REFERENCES `Créateurs` (`createur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jeux vidéos`
--

LOCK TABLES `Jeux vidéos` WRITE;
/*!40000 ALTER TABLE `Jeux vidéos` DISABLE KEYS */;
/*!40000 ALTER TABLE `Jeux vidéos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-02  8:50:41
