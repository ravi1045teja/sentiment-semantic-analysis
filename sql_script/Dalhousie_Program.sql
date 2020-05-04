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
-- Table structure for table `Program`
--
USE DALHOUSIE;

DROP TABLE IF EXISTS `Program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Program` (
  `ProgramId` varchar(5) NOT NULL,
  `ProgramName` varchar(250) DEFAULT NULL,
  `ProgramLevel` varchar(25) DEFAULT NULL,
  `DepartmentId` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`ProgramId`),
  UNIQUE KEY `ProgramId_UNIQUE` (`ProgramId`),
  KEY `DepartmentForeign_idx` (`DepartmentId`),
  CONSTRAINT `DepartmentForeign` FOREIGN KEY (`DepartmentId`) REFERENCES `Department` (`DepartmentID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Program`
--

LOCK TABLES `Program` WRITE;
/*!40000 ALTER TABLE `Program` DISABLE KEYS */;
INSERT INTO `Program` VALUES ('B0','Bachelor of Environmental Design Studies - BEDS','UG','P0'),('B1','Bachelor of Community Design - BCD','UG','P0'),('B10','Environment, Sustainability and Society','UG','P1'),('B100','Statistics','UG','P10'),('B101','International Food Business','UG','P12'),('B102','Engineering','UG','P12'),('B103','Agricultural Business','UG','P12'),('B104','Agricultural Economics','UG','P12'),('B105','Animal Science','UG','P12'),('B106','Aquaculture','UG','P12'),('B107','Environmental Sciences','UG','P12'),('B108','Integrated Environmental Management','UG','P12'),('B109','Plant Science','UG','P12'),('B11','European Studies','UG','P1'),('B110','Bioveterinary Science','UG','P12'),('B111','Landscape Architecture','UG','P12'),('B112','Small Business Management','UG','P12'),('B113','Pre-Veterinary Medicine','UG','P12'),('B12','French','UG','P1'),('B13','Gender  Women\'s Studies','UG','P1'),('B14','German','UG','P1'),('B15','History','UG','P1'),('B16','History of Science and Technology (University of King\'s College)','UG','P1'),('B17','International Development Studies','UG','P1'),('B18','Law, Justice and Society','UG','P1'),('B19','Music','UG','P1'),('B2','Bachelor of Community Design Honours - BCD (Hon)','UG','P0'),('B20','Philosophy','UG','P1'),('B21','Political Science','UG','P1'),('B22','Religious Studies','UG','P1'),('B23','Russian Studies','UG','P1'),('B24','Sociology  Social Anthropology','UG','P1'),('B25','Spanish  Latin American Studies','UG','P1'),('B26','Theatre','UG','P1'),('B27','American Studies','UG','P1'),('B28','Arabic Studies','UG','P1'),('B29','Black and African Diaspora Studies','UG','P1'),('B3','Canadian Studies','UG','P1'),('B30','Chinese Studies','UG','P1'),('B31','Film Studies','UG','P1'),('B32','Indigenous Studies','UG','P1'),('B33','Italian Studies','UG','P1'),('B34','Law, Justice and Society','UG','P1'),('B35','Medieval Studies','UG','P1'),('B36','Middle East Studies','UG','P1'),('B37','Popular Culture Studies','UG','P1'),('B38','Security Studies','UG','P1'),('B39','Certificate in Computing in Arts and Social Sciences','UG','P1'),('B4','Cinema and Media Studies','UG','P1'),('B40','Certificate in Indigenous Studies','UG','P1'),('B41','Intercultural Communication Certificate','UG','P1'),('B42','Certificate in Art History and Visual Culture','UG','P1'),('B43','Applied Computer Science','UG','P3'),('B44','Computer Science','UG','P3'),('B45','Doctor of Dental Surgery (4 years)','UG','P4'),('B46','Doctor of Dental Surgery Qualifying Program (3 years)','UG','P4'),('B47','Diploma in Dental Hygiene (2 years)','UG','P4'),('B48','Bachelor of Dental Hygiene (1 year)','UG','P4'),('B49','Chemical Engineering','UG','P5'),('B5','Classics','UG','P1'),('B50','Civil Engineering','UG','P5'),('B51','Electrical and Computer Engineering','UG','P5'),('B52','Environmental Engineering','UG','P5'),('B53','Industrial Engineering','UG','P5'),('B54','Mechanical Engineering','UG','P5'),('B55','Mineral Resource Engineering','UG','P5'),('B56','Arctic Nursing (BScN)','UG','P11'),('B57','Diagnostic Medical Ultrasound (BHSc)','UG','P11'),('B58','Health Promotion (BSc)','UG','P11'),('B59','Kinesiology (BSc)','UG','P11'),('B6','Contemporary Studies (University of King\'s College)','UG','P1'),('B60','Nuclear Medicine Technology (BHSc)','UG','P11'),('B61','Nursing (BScN)','UG','P11'),('B62','Medical Laboratory Technology (Post Diploma) - fully online','UG','P11'),('B63','Pharmacy (BSc)','UG','P11'),('B64','Radiological Technology (BHSc)','UG','P11'),('B65','Recreation Management (BSc)','UG','P11'),('B66','Respiratory Therapy (BHSc)','UG','P11'),('B67','Social Work (BSW) - on campus or fully online option','UG','P11'),('B68','Therapeutic Recreation (BSc)','UG','P11'),('B69','Accounting','UG','P8'),('B7','Creative Writing','UG','P1'),('B70','Entrepreneurship','UG','P8'),('B71','Finance','UG','P8'),('B72','International Business','UG','P8'),('B73','Managing People and Organizations','UG','P8'),('B74','Marketing Management','UG','P8'),('B75','Supply Chain and Logistics Managment','UG','P8'),('B76','Entrepreneurship  Innovation','UG','P8'),('B77','Environment, Sustainability, and Society','UG','P8'),('B78','Knowledge Management','UG','P8'),('B79','Leadership and Organizations','UG','P8'),('B8','Early Modern Studies (University of King\'s College)','UG','P1'),('B80','Public Sector Management','UG','P8'),('B81','MD Program (undergraduate medicine)','UG','P9'),('B82','Actuarial Science','UG','P10'),('B83','Biochemistry  Molecular Biology','UG','P10'),('B84','Biology','UG','P10'),('B85','Chemistry','UG','P10'),('B86','Integrated Science Program','UG','P10'),('B87','Earth Sciences','UG','P10'),('B88','Economics','UG','P10'),('B89','Environmental Scienc','UG','P10'),('B9','English','UG','P1'),('B90','Environment, Sustainability and Society','UG','P10'),('B91','Marine Biology','UG','P10'),('B92','Mathematics','UG','P10'),('B93','Medical Sciences','UG','P10'),('B94','Meteorology Diploma','UG','P10'),('B95','Microbiology and Immunology','UG','P10'),('B96','Neuroscience','UG','P10'),('B97','Ocean Sciences','UG','P10'),('B98','Physics and Atmospheric Sciences','UG','P10'),('B99','Psychology','UG','P10'),('M0','Master of Architecture - MArch','Graduate','P0'),('M1','Master of Planning - MPlan','Graduate','P0'),('M10','Musicology','Graduate','P1'),('M11','Philosophy','Graduate','P1'),('M12','Political Science','Graduate','P1'),('M13','Social Anthropology','Graduate','P1'),('M14','Sociology','Graduate','P1'),('M15','Master of Applied Computer Science (MACS)','Graduate','P3'),('M16','Master of Computer Science (MCS)','Graduate','P3'),('M17','Master of Electronic Commerce (MEC)','Graduate','P3'),('M18','Master of Health Informatics (MHI)','Graduate','P3'),('M19','Biological Engineering','Graduate','P5'),('M2','Master of Planning Studies - MPS','Graduate','P0'),('M20','Biomedical Engineering','Graduate','P5'),('M21','Chemical Engineering','Graduate','P5'),('M22','Civil Engineering','Graduate','P5'),('M23','Electrical and Computer Engineering','Graduate','P5'),('M24','Engineering Mathematics','Graduate','P5'),('M25','Environmental Engineering','Graduate','P5'),('M26','Fisheries Engineering','Graduate','P5'),('M27','Food Science and Technology Engineering','Graduate','P5'),('M28','Industrial Engineering','Graduate','P5'),('M29','Internetworking','Graduate','P5'),('M3','Classics','Graduate','P1'),('M30','Materials Engineering','Graduate','P5'),('M31','Mechanical Engineering','Graduate','P5'),('M32','Mineral Resource Engineering','Graduate','P5'),('M33','Petroleum Engineering','Graduate','P5'),('M34','Audiology (MSc)','Graduate','P11'),('M35','Clinical Vision Science (MSc)','Graduate','P11'),('M36','Health Administration, Master of (MHA)','Graduate','P11'),('M37','Health Administration, Master of/Juris Doctor (JD/MHA)','Graduate','P11'),('M38','Health Promotion (MA)','Graduate','P11'),('M39','Kinesiology (MSc)','Graduate','P11'),('M4','English','Graduate','P1'),('M40','Leisure Studies (MA)','Graduate','P11'),('M41','Nursing (MN)','Graduate','P11'),('M42','Nurse Practitioner (MN)','Graduate','P11'),('M43','Occupational Therapy - Entry to Practice (MSc)','Graduate','P11'),('M44','Occupational Therapy - Post-Professional (MSc) - fully online','Graduate','P11'),('M45','Pharmaceutical Science (MSc)','Graduate','P11'),('M46','Physiotherapy (MSc)','Graduate','P11'),('M47','Rehabilitation Research (MSc)','Graduate','P11'),('M48','Physiotherapy (MSc)/Rehabilitation Research (MSc)','Graduate','P11'),('M49','Social Work (MSW) - on campus or fully online option','Graduate','P11'),('M5','French','Graduate','P1'),('M50','Speech Language Pathology (MSc)','Graduate','P11'),('M51','MBA (specialize in Financial Services or Leadership)','Graduate','P8'),('M52','Master of Information Management','Graduate','P8'),('M53','Master of Public Administration (Management)','Graduate','P8'),('M54','MBA (Corporate Residency)','Graduate','P8'),('M55','Master of Science in Business','Graduate','P8'),('M56','Master of Information','Graduate','P8'),('M57','Master of Public Administration','Graduate','P8'),('M58','Master of Resource and Environmental Management','Graduate','P8'),('M59','Master of Environmental Studies','Graduate','P8'),('M6','German','Graduate','P1'),('M60','Master of Electronic Commerce','Graduate','P8'),('M61','Residency Training (postgraduate medicine)','Graduate','P9'),('M62','MSc and PhD Studies\r\n (graduate and postdoctoral opportunities)','Graduate','P9'),('M63','Biology','Graduate','P10'),('M64','Chemistry','Graduate','P10'),('M65','Earth Sciences','Graduate','P10'),('M66','Economics','Graduate','P10'),('M67','Marine Management','Graduate','P10'),('M68','Mathematics','Graduate','P10'),('M69','Oceanography','Graduate','P10'),('M7','History','Graduate','P1'),('M70','Physics  Atmospheric Science','Graduate','P10'),('M71','Psychology/Neuroscience','Graduate','P10'),('M72','Statistics','Graduate','P10'),('M73','MSc in Agriculture and PhD in Agricultural Sciences','Graduate','P12'),('M8','Interdisciplinary PhD Program','Graduate','P1'),('M9','International Development Studies','Graduate','P1');
/*!40000 ALTER TABLE `Program` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-05 21:51:30
