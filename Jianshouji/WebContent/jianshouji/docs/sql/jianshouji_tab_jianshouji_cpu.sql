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
-- Table structure for table `tab_jianshouji_cpu`
--

DROP TABLE IF EXISTS `tab_jianshouji_cpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_jianshouji_cpu` (
  `GUID` varchar(32) NOT NULL,
  `CPU_CODE` varchar(200) DEFAULT NULL,
  `CPU_NAME` varchar(200) DEFAULT NULL,
  `CPU_NUM` int(3) DEFAULT NULL,
  `CPU_CORE` varchar(200) DEFAULT NULL,
  `CPU_GPU` varchar(50) DEFAULT NULL,
  `CPU_SCORE` int(11) DEFAULT NULL,
  `CPU_PUBTIME` date DEFAULT NULL,
  `CPU_PUBINS` varchar(500) DEFAULT NULL,
  `CPU_FREQUENCY` varchar(32) DEFAULT NULL COMMENT '主频',
  PRIMARY KEY (`GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='处理器';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_jianshouji_cpu`
--

LOCK TABLES `tab_jianshouji_cpu` WRITE;
/*!40000 ALTER TABLE `tab_jianshouji_cpu` DISABLE KEYS */;
INSERT INTO `tab_jianshouji_cpu` VALUES ('1','MT6795T','Helio X10',8,'4核Cortex-A57+4核Cortex-A53','PowerVRG6200',54000,'2014-08-01','联发科','2.2G'),('2','MT6795','Helio X10',8,'4核Cortex-A57+4核Cortex-A53','PowerVRG6200',50000,'2014-08-01','联发科','2.0G');
/*!40000 ALTER TABLE `tab_jianshouji_cpu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-18 23:22:55
