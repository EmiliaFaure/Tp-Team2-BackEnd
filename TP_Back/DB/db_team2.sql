CREATE DATABASE  IF NOT EXISTS `EmiliaFaure76$db_tp_team2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_team2`;
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (x86_64)
--
-- Host: 127.0.0.1    Database: db_team2
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `bizarro`
--

DROP TABLE IF EXISTS `bizarro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bizarro` (
  `idbizarro` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `sinopsis` varchar(800) NOT NULL,
  PRIMARY KEY (`idbizarro`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bizarro`
--

LOCK TABLES `bizarro` WRITE;
/*!40000 ALTER TABLE `bizarro` DISABLE KEYS */;
INSERT INTO `bizarro` VALUES (1,'Dos Hermanas','Una familia está atormentada por las tragedias de las muertes que se han producido dentro de la propia familia.'),(2,'La Mosca','Un excéntrico científico comienza a transformarse en un híbrido gigante de hombre y mosca después de que uno de sus experimentos sale mal.'),(3,'Las Voces','Un chico intenta conquistar a una chica con la que trabaja con la ayuda de sus mascotas parlantes. La situación toma un giro siniestro cuando ella lo planta.');
/*!40000 ALTER TABLE `bizarro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacto`
--

DROP TABLE IF EXISTS `contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacto` (
  `idcontacto` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `comentario` varchar(800) NOT NULL,
  PRIMARY KEY (`idcontacto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacto`
--

LOCK TABLES `contacto` WRITE;
/*!40000 ALTER TABLE `contacto` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `de_culto`
--

DROP TABLE IF EXISTS `de_culto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `de_culto` (
  `idde_culto` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `sinopsis` varchar(800) NOT NULL,
  PRIMARY KEY (`idde_culto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `de_culto`
--

LOCK TABLES `de_culto` WRITE;
/*!40000 ALTER TABLE `de_culto` DISABLE KEYS */;
INSERT INTO `de_culto` VALUES (1,'El Resplandor','Una familia se dirige a un hotel aislado a pasar el invierno. Una presencia espiritual maligna violenta al padre y el hijo tiene horripilantes visiones.'),(2,'El Padrino','El patriarca de una dinastía de crimen organizado en la ciudad de Nueva York dtransfiere el control de su imperio clandestino a su reacio hijo menor.'),(3,'Pulp Fiction','Las vidas de dos mafiosos, un boxeador, la esposa de un gánster y un par de bandidos se entrelazan en cuatro historias de violencia y redención.');
/*!40000 ALTER TABLE `de_culto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seleccion`
--

DROP TABLE IF EXISTS `seleccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seleccion` (
  `idseleccion` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `sinopsis` varchar(800) NOT NULL,
  PRIMARY KEY (`idseleccion`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seleccion`
--

LOCK TABLES `seleccion` WRITE;
/*!40000 ALTER TABLE `seleccion` DISABLE KEYS */;
INSERT INTO `seleccion` VALUES (1,'Mi Vida Sin Mí','Una joven oculta su cáncer terminal para vivir la vida con una pasión desconocida hasta el momento.'),(2,'Los Sonidos del Silencio','Laura es una joven brillante, cuyos padres, Martin y Kai, son sordo-mudos. Su tía Clarissa le regala un clarinete y ella desarrolla un gran talento musical.'),(3,'Las Alas del Deseo','Un ángel cuya responsabilidad es cuidar de las personas, desea ser humano al enamorarse de una mujer a su cargo.');
/*!40000 ALTER TABLE `seleccion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-07 15:01:37
