-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: jianshouji
-- ------------------------------------------------------
-- Server version	5.5.25-log

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
-- Table structure for table `tab_jianshouji_brand`
--

DROP TABLE IF EXISTS `tab_jianshouji_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_jianshouji_brand` (
  `GUID` varchar(32) NOT NULL COMMENT '品牌主键',
  `BRANDNAME` varchar(100) DEFAULT NULL,
  `CEO` varchar(100) DEFAULT NULL,
  `BRANDTEL` varchar(100) DEFAULT NULL,
  `BRANDADDRESS` varchar(200) DEFAULT NULL,
  `logoaddress` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`GUID`),
  UNIQUE KEY `GUID_UNIQUE` (`GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='品牌';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_jianshouji_brand`
--

LOCK TABLES `tab_jianshouji_brand` WRITE;
/*!40000 ALTER TABLE `tab_jianshouji_brand` DISABLE KEYS */;
INSERT INTO `tab_jianshouji_brand` VALUES ('1','小米','雷军','400-100-5678','北京',NULL),('2','乐视','贾跃亭',NULL,'北京',NULL);
/*!40000 ALTER TABLE `tab_jianshouji_brand` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-18 23:22:56
