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
-- Table structure for table `tab_jianshouji_camera`
--

DROP TABLE IF EXISTS `tab_jianshouji_camera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_jianshouji_camera` (
  `GUID` varchar(32) NOT NULL,
  `CAMERATYPE` varchar(200) DEFAULT NULL,
  `CAMERAFACTORY` varchar(200) DEFAULT NULL,
  `PIXEL` varchar(100) DEFAULT NULL,
  `ISO` varchar(50) DEFAULT NULL,
  `PDAFFLAG` char(1) DEFAULT NULL,
  `FLASHLIGHT` varchar(50) DEFAULT NULL,
  `OTHER` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='摄像头';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_jianshouji_camera`
--

LOCK TABLES `tab_jianshouji_camera` WRITE;
/*!40000 ALTER TABLE `tab_jianshouji_camera` DISABLE KEYS */;
INSERT INTO `tab_jianshouji_camera` VALUES ('1',NULL,NULL,'1300万','f/2.2','1','双色温闪光灯','HDR'),('2',NULL,NULL,'1300万','F2.0','1','飞利浦高显指LED闪光灯','滚珠式马达、close loop闭环马达对焦技术、5P镜头、变焦能力： 6倍数码变焦、蓝玻璃红外滤片');
/*!40000 ALTER TABLE `tab_jianshouji_camera` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-18 23:22:53
