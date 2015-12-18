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
-- Table structure for table `tab_jianshouji_telphone`
--

DROP TABLE IF EXISTS `tab_jianshouji_telphone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_jianshouji_telphone` (
  `GUID` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `TELPHONE_NAME` varchar(100) DEFAULT NULL COMMENT '手机名称',
  `PRICE` int(11) DEFAULT NULL COMMENT '价格',
  `BRANDGUID` varchar(32) DEFAULT NULL COMMENT '品牌guid',
  `CPUGUID` varchar(32) DEFAULT NULL COMMENT 'CPUguid',
  `SCREENGUID` varchar(32) DEFAULT NULL COMMENT '屏幕guid',
  `BEFOREPIXEL` varchar(100) DEFAULT NULL COMMENT '前置摄像头',
  `CAMERYGUID` varchar(32) DEFAULT NULL COMMENT '后置摄像头',
  `RAMVOL` int(10) DEFAULT NULL COMMENT 'RAM大小',
  `RAMTYPE` varchar(50) DEFAULT NULL COMMENT 'RAM类型',
  `ROMVOL` int(10) DEFAULT NULL COMMENT 'ROM大小',
  `OPRATION` varchar(50) DEFAULT NULL COMMENT '操作系统',
  `COLOR` varchar(50) DEFAULT NULL COMMENT '手机颜色',
  `BATTERY` varchar(100) DEFAULT NULL COMMENT '电池大小',
  `BATTERYTYPE` varchar(100) DEFAULT NULL COMMENT '电池类型',
  `FINGERPRINT` char(1) DEFAULT NULL COMMENT '是否支持指纹识别',
  `SIM` varchar(200) DEFAULT NULL COMMENT 'SIM类型',
  `GYRO` char(1) DEFAULT NULL COMMENT '是否有陀螺仪',
  `INTERFACE` varchar(100) DEFAULT NULL,
  `WIFITYPE` varchar(100) DEFAULT NULL,
  `BLUETEETH` varchar(100) DEFAULT NULL,
  `ISCOMPASE` char(1) DEFAULT NULL COMMENT '是否支持电子罗盘',
  `ISHALLSENSER` char(1) DEFAULT NULL COMMENT '是否支持霍尔感应',
  `ISLIGHTSENSER` char(1) DEFAULT NULL COMMENT '是否支持光线感应',
  `ISGYROSCOPE` char(1) DEFAULT NULL COMMENT '是否支持陀螺仪',
  `ISINFRARED` char(1) DEFAULT NULL COMMENT '是否支持红外',
  `ISGPS` char(1) DEFAULT NULL COMMENT '是否支持GPS',
  `ISAGPS` char(1) DEFAULT NULL COMMENT '是否支持AGPS',
  `ISGNONASS` char(1) DEFAULT NULL COMMENT '是否支持格洛纳斯',
  `ISBEIDOU` char(1) DEFAULT NULL COMMENT '是否支持北斗',
  `PUBTIME` date DEFAULT NULL COMMENT '发布时间',
  `ISRECOMMEND` char(1) DEFAULT NULL COMMENT '是否为推荐',
  PRIMARY KEY (`GUID`),
  UNIQUE KEY `GUID_UNIQUE` (`GUID`),
  KEY `FK_Reference_1` (`CPUGUID`),
  KEY `FK_Reference_2` (`SCREENGUID`),
  KEY `FK_Reference_3` (`BRANDGUID`),
  KEY `FK_Reference_4` (`CAMERYGUID`),
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`CPUGUID`) REFERENCES `tab_jianshouji_cpu` (`GUID`),
  CONSTRAINT `FK_Reference_2` FOREIGN KEY (`SCREENGUID`) REFERENCES `tab_jianshouji_screen` (`GUID`),
  CONSTRAINT `FK_Reference_3` FOREIGN KEY (`BRANDGUID`) REFERENCES `tab_jianshouji_brand` (`GUID`),
  CONSTRAINT `FK_Reference_4` FOREIGN KEY (`CAMERYGUID`) REFERENCES `tab_jianshouji_camera` (`GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='手机参数';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_jianshouji_telphone`
--

LOCK TABLES `tab_jianshouji_telphone` WRITE;
/*!40000 ALTER TABLE `tab_jianshouji_telphone` DISABLE KEYS */;
INSERT INTO `tab_jianshouji_telphone` VALUES ('hongminote3','红米note3',899,'1','2','1','500万','1',2,' LPDDR3',16,'MIUI','深灰','4000mAh','不可拆卸','1','Micro-SIM','1','USB2.0','2.4G/5G','蓝牙4.1','1','1','1','1','1','1','1','1','1','2015-11-24','1'),('le1s','乐视1S',1099,'2','1','2','500万','2',3,'LPDDR3',32,'EUI','玫瑰金','3000mAh快充','不可拆卸','1','Nano + Micro SIM','0','USB2.0, Type-C,MHL2.0','2.4G/5G','蓝牙4.1，支持APT-X','1','0','1','0','1','1','1','1','1','2015-10-27','1');
/*!40000 ALTER TABLE `tab_jianshouji_telphone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-18 23:22:52
