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
-- Table structure for table `tab_jianshouji_ceping`
--

DROP TABLE IF EXISTS `tab_jianshouji_ceping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_jianshouji_ceping` (
  `TELPHONEGUID` varchar(32) NOT NULL,
  `GUID` varchar(32) NOT NULL,
  `TESTADDRESS` varchar(200) DEFAULT NULL,
  `TITLE` varchar(200) DEFAULT NULL,
  `TESTTIME` date DEFAULT NULL,
  `TESTFLAG` char(1) DEFAULT NULL,
  PRIMARY KEY (`TELPHONEGUID`,`GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='手机测评';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_jianshouji_ceping`
--

LOCK TABLES `tab_jianshouji_ceping` WRITE;
/*!40000 ALTER TABLE `tab_jianshouji_ceping` DISABLE KEYS */;
INSERT INTO `tab_jianshouji_ceping` VALUES ('hongminote3','1','http://www.pcpop.com/doc/1/1241/1241684.shtml','899元值得买吗 红米Note3开箱体验视频','2015-11-25','1'),('hongminote3','2','http://tech.ifeng.com/a/20151124/41511821_0.shtml','红米Note3体验：你想知道都在这里','2015-11-24','1');
/*!40000 ALTER TABLE `tab_jianshouji_ceping` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-18 23:22:51
