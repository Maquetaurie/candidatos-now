-- MySQL dump 10.13  Distrib 5.5.49, for debian-linux-gnu (x86_64)
--
-- Host: 192.168.0.8    Database: candidatosnow
-- ------------------------------------------------------
-- Server version	5.5.49-0ubuntu0.14.04.1

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
-- Table structure for table `candidates`
--

DROP TABLE IF EXISTS `candidates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `candidates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `segundo_apellido` varchar(45) NOT NULL,
  `partido` varchar(45) DEFAULT NULL,
  `posicion` varchar(45) NOT NULL,
  `image_url` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidates`
--

LOCK TABLES `candidates` WRITE;
/*!40000 ALTER TABLE `candidates` DISABLE KEYS */;
INSERT INTO `candidates` VALUES (1,'Albert','Maldonado','Sanchez','pip','gobernador','https://scontent-dfw1-1.xx.fbcdn.net/v/t1.0-9/10628110_10154422032389008_6764946829910675936_n.jpg?oh=1134a0cad508183675682609826d92c9&oe=57D1A7C2');
/*!40000 ALTER TABLE `candidates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tweets`
--

DROP TABLE IF EXISTS `tweets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text NOT NULL,
  `date` datetime DEFAULT NULL,
  `hastags` varchar(255) DEFAULT NULL,
  `url` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `media_url` text,
  `profile_image_url` text,
  `candidate_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tweets`
--

LOCK TABLES `tweets` WRITE;
/*!40000 ALTER TABLE `tweets` DISABLE KEYS */;
INSERT INTO `tweets` VALUES (1,' Yo respeto la decisión de cada cual de hacer lo que ellos así deseen, lo que no podemos permitir es que ese tipo de intromisión se le meta al hogar del puertorriqueño, que no sea una directriz del Estado.',NULL,NULL,'','',NULL,NULL,NULL),(2,'Los vaivenes políticos han causado que la definición y proyección internacional de Puerto Rico como producto turístico, cambie drásticamente, conforme a la visión particular de cada administración de turno. El turismo de nuestra patria no puede mercadearse como un premio político. No podemos continuar aceptando que la política paralice las estrategias y promociones turísticas. Puerto Rico necesita profesionalizar el turismo. Este modelo nos permite hacer eso, dándole continuidad y solidez a los planes de desarrollo para la industria.',NULL,NULL,'','',NULL,NULL,NULL),(3,'Los vaivenes políticos han causado que la definición y proyección internacional de Puerto Rico como producto turístico, cambie drásticamente, conforme a la visión particular de cada administración de turno. El turismo de nuestra patria no puede mercadearse como un premio político. No podemos continuar aceptando que la política paralice las estrategias y promociones turísticas. Puerto Rico necesita profesionalizar el turismo. Este modelo nos permite hacer eso, dándole continuidad y solidez a los planes de desarrollo para la industria.',NULL,NULL,'','',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tweets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-28 22:12:17
