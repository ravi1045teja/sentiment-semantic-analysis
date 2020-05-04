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
-- Table structure for table `Course_Dept`
--

USE DALHOUSIE;

DROP TABLE IF EXISTS `Course_Dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Course_Dept` (
  `CourseId` varchar(5) NOT NULL,
  `CourseName` varchar(250) DEFAULT NULL,
  `DepartmentId` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`CourseId`),
  UNIQUE KEY `CourseId_UNIQUE` (`CourseId`),
  KEY `Dept_reference_idx` (`DepartmentId`),
  CONSTRAINT `Dept_reference` FOREIGN KEY (`DepartmentId`) REFERENCES `Department` (`DepartmentID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Course_Dept`
--

LOCK TABLES `Course_Dept` WRITE;
/*!40000 ALTER TABLE `Course_Dept` DISABLE KEYS */;
INSERT INTO `Course_Dept` VALUES ('C1','Sci of the Built Environment 2 ','P0'),('C10','Montage in Architecture ','P0'),('C100','Property in Hist. Context ','P7'),('C101','Administrative Law ','P7'),('C102','Clinical Law ','P7'),('C103','Business Associations','P7'),('C104','Private International Law','P7'),('C105',' Evidence','P7'),('C106','Insurance Law ','P7'),('C107','Judicial Remedies','P7'),('C11','MArch Thesis Continuation ','P0'),('C12','Intercultural Communication I','P1'),('C13','Halifax and the World Part II','P2'),('C14','Idea of Canada: Cultural & Lit ','P2'),('C15',' Intro to African Can. Studies ','P2'),('C16','Contemp Iss in Indig Studies ','P2'),('C17','History of Canadian Culture ','P2'),('C18','Atlntc Can since Confederation','P2'),('C19','Indigenous Practices ','P2'),('C2',' Design Communication 2','P0'),('C20','Indigenous Soc Hlth & Env Iss. ','P2'),('C21','Contemporary Canadian Lit. ','P2'),('C22','Research Topics in Cdn. Stud.','P2'),('C23',' Intro to Computer Programming ','P3'),('C24','Social Computing ','P3'),('C25','Experimental Robotics','P3'),('C26','Practical Data Science','P3'),('C27','Intro to Computer Science ','P3'),('C28','Intro to Computer Systems','P3'),('C29','Intro to Web Design & Devel','P3'),('C3','Mod. Settlmnt, Bldg, & Lndscp','P0'),('C30','Case Studies in Comp & Society','P3'),('C31','Comm Skills: Oral/Written','P3'),('C32','Data Structures & Algorithms','P3'),('C33','Discrete Structures I','P3'),('C34','Discrete Structures II ','P3'),('C35','Mathematical App. in Computing ','P3'),('C36','Systems Programming ','P3'),('C37','Software Developmen','P3'),('C38','Intro to Database Systems ','P3'),('C39','Intro to Server Side Scripting','P3'),('C4','Building Technolog','P0'),('C40',' Introduction to Info Security','P3'),('C41','Comp. Modeling for Scientists ','P3'),('C42','Data Science for Everyone ','P3'),('C43','Intro to Software Projects','P3'),('C44','Introductory Project ','P3'),('C45','Soc/Ethi/Prof Issues in Csci','P3'),('C46','Software Engineering','P3'),('C47','Principles/Programming Languag ','P3'),('C48','Foundations of Machine Learn.','P3'),('C49',' Digital Media ','P3'),('C5','Professional Practice','P0'),('C50','Network Computing','P3'),('C51',' Web-Centric Computing ','P3'),('C52','Intermediate Project ','P3'),('C53','Software Development Concepts ','P3'),('C54','opics in Graph Theory','P3'),('C55',' Cryptography','P3'),('C56','Data Mining/Warehousing','P3'),('C57','Cloud Computing ','P3'),('C58','Natural Lang Processing','P3'),('C59','Machine Learning','P3'),('C6','Representation','P0'),('C60','Human-Computer Interaction','P3'),('C61','Visualization ','P3'),('C62','Network Security','P3'),('C63','dvanced Web Services','P3'),('C64','Technology Innovation','P3'),('C65','Communication Skills','P3'),('C66','Technology Innovation ','P3'),('C67','Software Comprehension','P3'),('C68','Adv Topics in Software Develop ','P3'),('C69','Data Mgmt, Warhsng Analytics','P3'),('C7','Architect Theory & Interpretat ','P0'),('C70','Adv Topic in Cloud Computing','P3'),('C71','Designing for UX','P3'),('C72','Adv. Topics in Web Development','P3'),('C73','Mindfulness','P4'),('C74','Circuit Analysis','P5'),('C75','Digital Circuits ','P5'),('C76','Modern Control Systems.','P5'),('C77','Analog Filter Design ','P5'),('C78','Semiconductor Matl & Devices','P5'),('C79','Antenna Theory & Design ','P5'),('C8','Building Systems Integration','P0'),('C80','Comp Networks & Communication','P5'),('C81','Tech & Apps of Fiber Optics ','P5'),('C82','Digital Signal Processing','P5'),('C83','Communication Networks ','P5'),('C84','Control Systems','P5'),('C85','Biomedical Engineering ','P5'),('C86','Senior Year Project I.','P5'),('C87','Senior Year Project II. ','P5'),('C88','Principles of Medical Imaging','P5'),('C89','Modern Integrated Filters','P5'),('C9','Representation ','P0'),('C90','Analog MOS Design','P5'),('C91','Fiber/Integrated Optics','P5'),('C92','Fundamentals of nonlinear opti','P5'),('C93','Digital Signal Processing','P5'),('C94','Contracts&Jud Decision Making ','P7'),('C95','Contracts&Jud Decision Making','P7'),('C96','Criminal Justice','P7'),('C97','Criminal Justice ','P7'),('C98','undamentals of Public Law','P7'),('C99','Legal Research and Writing','P7');
/*!40000 ALTER TABLE `Course_Dept` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-05 21:51:33
