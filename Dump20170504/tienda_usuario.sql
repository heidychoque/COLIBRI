-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: tienda
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `CODUSUARIO` int(11) NOT NULL,
  `NOMBRE` varchar(45) NOT NULL,
  `EMAIL` varchar(45) NOT NULL,
  `CONTRASEÑA` varchar(45) NOT NULL,
  `TELEFONO` int(11) DEFAULT NULL,
  `PAIS` varchar(45) NOT NULL,
  PRIMARY KEY (`CODUSUARIO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (100,'PAME','pame@hotmail.com','pame',475215,'bolivia'),(101,'ALEJANDRA','ale@hotmail.com','ale',472351,'bolivia'),(102,'PEDRO','p234@hotmail.com','pedro',487354,'colombia'),(103,'PABLO','pablito230@hotmail.com','pablo',123542,'colmbia'),(104,'PAOLA','paola@hotmail.com','pao',478921,'peru'),(105,'DANIEL','dani@gmail.com','dani',417892,'mexico'),(106,'ROMINA','romina@gmail.com','romi',479823,'mexico'),(107,'CAROLINA','caro@hotmail.com','caro',423654,'peru'),(108,'PEDRO','pedrito@gmail.com','pedro',544256,'uruguay'),(109,'JAVIER','javi@gmail.com','javi',425662,'chile'),(110,'MARIA','mari@gmail.com','mari',452364,'argentina');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-04  9:20:02
