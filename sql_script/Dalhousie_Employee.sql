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
-- Table structure for table `Employee`
--
USE DALHOUSIE;

DROP TABLE IF EXISTS `Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employee` (
  `EmployeeId` varchar(5) NOT NULL,
  `FirstName` varchar(250) DEFAULT NULL,
  `LastName` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`EmployeeId`),
  UNIQUE KEY `EmployeeId_UNIQUE` (`EmployeeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee`
--

LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
INSERT INTO `Employee` VALUES ('E0','Donna','Jamieson'),('E1','Paul','MacIsaac'),('E10','Susanna','Morash-Kent'),('E100','X.','Wang'),('E101','G.','Wilson'),('E102','J.','Wolkowicz'),('E103','S.','Abidi'),('E104','J.','Brown'),('E105','J.','Janssen'),('E106','R.','Klein'),('E107','C.','Lehmann'),('E108','P.','MacDougall'),('E109','P.','Selinger'),('E11','Ken','Rice'),('E110','M.','Smit'),('E111','B.','Taylor'),('E112','G.','Wach'),('E113','Angie','Bolivar'),('E114','Stephanie','Bernier'),('E115','Barbara','Borden'),('E116','Ashley','Broadbent'),('E117','Dennis','Cheng'),('E118','Heather','Elliott'),('E119','Allison','Kincade'),('E12','Regan','Southcott'),('E120','Michelle','Kirkwood'),('E121','David','L.'),('E122','Zach','MacDonald'),('E123','Stephanie','Margetts'),('E124','Anne','Publicover'),('E125','Margie','R.'),('E126','Rebecca','Rawcliffe'),('E127','Vidhya','Ramamoorthy'),('E128','Menen','Teferra'),('E129','Kasia','Wolkowicz'),('E13','Jeremy','Sutherland'),('E130','Jeff','Allen'),('E131','Jonathan','Amyotte'),('E132','Jeremy','Dempsey'),('E133','Manjula','Devaraj'),('E134','Chris','Maxwell'),('E135','Phylip','Munroe'),('E136','Roger','Spencer'),('E137','Hamed','Aly'),('E138','Peter','Gregson'),('E139','Paul','Hines'),('E14','Anne','Swan'),('E140','Peng','Jin'),('E141','Aaron','MacNeill'),('E142','Allan','Marble'),('E143','Mark','McIntyre'),('E144','Hong','Nie'),('E145','Christian','Schlegel'),('E146','Yiqiang','(Johnny)'),('E147','Jane','Conrad'),('E148','Lindsay','Currie'),('E149','Nadine','MacDonald'),('E15','JoAnne','Woodworth'),('E150','Samantha','Wilson'),('E151','Heidi','Tracey'),('E152','Coleen','van'),('E153','Jocelyn','LeClerc'),('E154','Kelly','Bronson'),('E155','Dale','Bamford'),('E156','Jackie','Gilby'),('E157','Colette','Bissett'),('E158','Pamela','Broome'),('E159','Angelika','Torres'),('E16','Joanne','Firth'),('E160','Theresa','Gilbert'),('E161','Julie','Barry'),('E162','Rose','Clements'),('E17','Ken','Kam'),('E18','Christina','MacNeil'),('E19','Susanne','Marshall'),('E2','Juan','Manriquez-Hernandez'),('E20','Susanna','Morash-Kent'),('E21','Susanna','Morash-Kent'),('E22','Ken','Rice'),('E23','Regan','Southcott'),('E24','Jeremy','Sutherland'),('E25','Anne','Swan'),('E26','JoAnne','Woodworth'),('E27','A.','Rau-Chaplin'),('E28','Robert','Beiko'),('E29','Christian','Blouin'),('E3','Tanya','Muggeridge'),('E30','Raza','Abidi'),('E31','Dirk','Arnold'),('E32','J.','Blustein'),('E33','Peter','Bodorik'),('E34','Stephen','Brooks'),('E35','Israat','Haque'),('E36','Meng','He'),('E37','Malcolm','Heywood'),('E38','Vlado','Keselj'),('E39','Joseph','Malloch'),('E4','Marilyn','Roberts'),('E40','Stan','Matwin'),('E41','Michael','McAllister'),('E42','Evangelos','E.'),('E43','Sageev','Oore'),('E44','Rita','Orji'),('E45','Fernando','Paulovich'),('E46','Paul','Ralph'),('E47','Derek','Reilly'),('E48','Srinivas','Sampalli'),('E49','Luis','Torgo'),('E5','Joanne','Firth'),('E50','T.','Trappenberg'),('E51','Carolyn','R.'),('E52','Qiang','Ye'),('E53','Norbert','Zeh'),('E54','N.','Zincir-Heywood'),('E55','Khurram','Aziz'),('E56','Alex','Brodsky'),('E57','James','Fleming'),('E58','Kirstie','Hawkey'),('E59','N.','Kalyaniwalla'),('E6','Ken','Kam'),('E60','Bonnie','MacKay'),('E61','Raghav','Sampangi'),('E62','Angela','Siegel'),('E63','Travis','Gagie'),('E64','Faisal','Abbas'),('E65','Robert','Hawkey'),('E66','Yannick','Marchand'),('E67','Tami','Meredith'),('E68','Gabriella','Mosquera'),('E69','Michael','Shepherd'),('E7','Christina','MacNeil'),('E70','Jacob','Slonim'),('E71','A.','Abusharekh'),('E72','R.','Alshammari'),('E73','O.','Baltzer'),('E74','I.','Bradbury'),('E75','P.','Cox'),('E76','S.','Escalera'),('E77','G.','Hu'),('E78','A.','Islam'),('E79','D.','Jutla'),('E8','Susanne','Marshall'),('E80','H.','Kayacik'),('E81','P.','Langlais'),('E82','G.','Lapalme'),('E83','V.','Lucic'),('E84','T.','Makanju'),('E85','A.','McIntyre'),('E86','R.','Mingham'),('E87','A.','Mohd'),('E88','S.','Molloy'),('E89','H.','Nourashrafeddin'),('E9','Susanna','Morash-Kent'),('E90','J.','Pei'),('E91','F.','Popowich'),('E92','M.','Rahman'),('E93','D.','Riordan'),('E94','D.','Silver'),('E95','M.','Sokolova'),('E96','A.','Soto'),('E97','K.','Spurr'),('E98','P.','Vaughan'),('E99','H.','Wang');
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-05 21:51:26
