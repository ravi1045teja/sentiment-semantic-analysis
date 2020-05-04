-- MySQL dump 10.13  Distrib 8.0.17, for macos10.14 (x86_64)
--
-- Host: 3.16.55.248    Database: Dalhousie
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4

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
-- Table structure for table `University_Fact`
--
USE DALHOUSIE;
DROP TABLE IF EXISTS `University_Fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `University_Fact` (
  `DepartmentId` varchar(5) NOT NULL,
  `EmployeeId` varchar(5) NOT NULL,
  `Number-of_programs` int(11) DEFAULT NULL,
  `Number_of_courses` int(11) DEFAULT NULL,
  PRIMARY KEY (`DepartmentId`,`EmployeeId`),
  KEY `Emp_fact_idx` (`EmployeeId`),
  CONSTRAINT `Dept_fact` FOREIGN KEY (`DepartmentId`) REFERENCES `Department` (`DepartmentID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Emp_fact` FOREIGN KEY (`EmployeeId`) REFERENCES `Employee` (`EmployeeId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `University_Fact`
--

LOCK TABLES `University_Fact` WRITE;
/*!40000 ALTER TABLE `University_Fact` DISABLE KEYS */;
INSERT INTO `University_Fact` VALUES ('P0','E10',6,11),('P0','E11',6,11),('P0','E12',6,11),('P0','E13',6,11),('P0','E14',6,11),('P0','E15',6,11),('P0','E5',6,11),('P0','E6',6,11),('P0','E7',6,11),('P0','E8',6,11),('P0','E9',6,11),('P1','E16',52,1),('P1','E17',52,1),('P1','E18',52,1),('P1','E19',52,1),('P1','E20',52,1),('P1','E21',52,1),('P1','E22',52,1),('P1','E23',52,1),('P1','E24',52,1),('P1','E25',52,1),('P1','E26',52,1),('P11','E147',30,4),('P11','E148',30,4),('P11','E149',30,4),('P11','E150',30,4),('P11','E151',30,4),('P11','E152',30,4),('P11','E153',30,4),('P11','E154',30,4),('P11','E155',30,4),('P11','E156',30,4),('P11','E157',30,4),('P11','E158',30,4),('P11','E159',30,4),('P11','E160',30,4),('P11','E161',30,4),('P11','E162',30,4),('P12','E0',14,4),('P12','E1',14,4),('P12','E2',14,4),('P12','E3',14,4),('P12','E4',14,4),('P3','E100',6,50),('P3','E101',6,50),('P3','E102',6,50),('P3','E103',6,50),('P3','E104',6,50),('P3','E105',6,50),('P3','E106',6,50),('P3','E107',6,50),('P3','E108',6,50),('P3','E109',6,50),('P3','E110',6,50),('P3','E111',6,50),('P3','E112',6,50),('P3','E113',6,50),('P3','E114',6,50),('P3','E115',6,50),('P3','E116',6,50),('P3','E117',6,50),('P3','E118',6,50),('P3','E119',6,50),('P3','E120',6,50),('P3','E121',6,50),('P3','E122',6,50),('P3','E123',6,50),('P3','E124',6,50),('P3','E125',6,50),('P3','E126',6,50),('P3','E127',6,50),('P3','E128',6,50),('P3','E129',6,50),('P3','E130',6,50),('P3','E131',6,50),('P3','E132',6,50),('P3','E133',6,50),('P3','E134',6,50),('P3','E135',6,50),('P3','E136',6,50),('P3','E27',6,50),('P3','E28',6,50),('P3','E29',6,50),('P3','E30',6,50),('P3','E31',6,50),('P3','E32',6,50),('P3','E33',6,50),('P3','E34',6,50),('P3','E35',6,50),('P3','E36',6,50),('P3','E37',6,50),('P3','E38',6,50),('P3','E39',6,50),('P3','E40',6,50),('P3','E41',6,50),('P3','E42',6,50),('P3','E43',6,50),('P3','E44',6,50),('P3','E45',6,50),('P3','E46',6,50),('P3','E47',6,50),('P3','E48',6,50),('P3','E49',6,50),('P3','E50',6,50),('P3','E51',6,50),('P3','E52',6,50),('P3','E53',6,50),('P3','E54',6,50),('P3','E55',6,50),('P3','E56',6,50),('P3','E57',6,50),('P3','E58',6,50),('P3','E59',6,50),('P3','E60',6,50),('P3','E61',6,50),('P3','E62',6,50),('P3','E63',6,50),('P3','E64',6,50),('P3','E65',6,50),('P3','E66',6,50),('P3','E67',6,50),('P3','E68',6,50),('P3','E69',6,50),('P3','E70',6,50),('P3','E71',6,50),('P3','E72',6,50),('P3','E73',6,50),('P3','E74',6,50),('P3','E75',6,50),('P3','E76',6,50),('P3','E77',6,50),('P3','E78',6,50),('P3','E79',6,50),('P3','E80',6,50),('P3','E81',6,50),('P3','E82',6,50),('P3','E83',6,50),('P3','E84',6,50),('P3','E85',6,50),('P3','E86',6,50),('P3','E87',6,50),('P3','E88',6,50),('P3','E89',6,50),('P3','E90',6,50),('P3','E91',6,50),('P3','E92',6,50),('P3','E93',6,50),('P3','E94',6,50),('P3','E95',6,50),('P3','E96',6,50),('P3','E97',6,50),('P3','E98',6,50),('P3','E99',6,50),('P5','E137',22,20),('P5','E138',22,20),('P5','E139',22,20),('P5','E140',22,20),('P5','E141',22,20),('P5','E142',22,20),('P5','E143',22,20),('P5','E144',22,20),('P5','E145',22,20),('P5','E146',22,20);
/*!40000 ALTER TABLE `University_Fact` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-05 21:51:28
