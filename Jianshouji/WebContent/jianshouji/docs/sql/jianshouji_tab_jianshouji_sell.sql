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
-- Table structure for table `tab_jianshouji_sell`
--

DROP TABLE IF EXISTS `tab_jianshouji_sell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_jianshouji_sell` (
  `TELPHONEGUID` varchar(32) NOT NULL,
  `INDUSTRYADDRESS` varchar(200) DEFAULT NULL,
  `JDADDRESS` varchar(200) DEFAULT NULL,
  `TMALLADDRESS` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`TELPHONEGUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_jianshouji_sell`
--

LOCK TABLES `tab_jianshouji_sell` WRITE;
/*!40000 ALTER TABLE `tab_jianshouji_sell` DISABLE KEYS */;
INSERT INTO `tab_jianshouji_sell` VALUES ('hongminote3','http://www.mi.com/note3/','http://item.jd.com/2182703.html','https://detail.tmall.com/item.htm?spm=a1z10.1-b.w10866115-8749712187.24.0tQsAI&id=524506215043&scene=taobao_shop&sku_properties=5919063:6536025;10004:653732324;12304035:48072');
/*!40000 ALTER TABLE `tab_jianshouji_sell` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-18 23:22:50
