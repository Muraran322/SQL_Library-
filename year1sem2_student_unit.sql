-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: year1sem2
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `student_unit`
--

DROP TABLE IF EXISTS `student_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_unit` (
  `regNumber` varchar(20) NOT NULL,
  `unitCode` varchar(30) NOT NULL,
  PRIMARY KEY (`regNumber`,`unitCode`),
  KEY `unitCode` (`unitCode`),
  CONSTRAINT `student_unit_ibfk_1` FOREIGN KEY (`regNumber`) REFERENCES `student` (`regNumber`),
  CONSTRAINT `student_unit_ibfk_2` FOREIGN KEY (`unitCode`) REFERENCES `unit` (`unitCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_unit`
--

LOCK TABLES `student_unit` WRITE;
/*!40000 ALTER TABLE `student_unit` DISABLE KEYS */;
INSERT INTO `student_unit` VALUES ('TMC/00003','CCS 122'),('ESC/00003','CCT 102'),('ESN/00003','CCT 116'),('ESC/00004','CCT 118'),('CCS/00002','CIR 102'),('CCS/00003','CIR 104'),('CCS/00001','CIR 106'),('CCT/00002','MAS 102'),('CCT/00001','MMA 116'),('TMC/00004','PHT 112');
/*!40000 ALTER TABLE `student_unit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-11 11:43:31
