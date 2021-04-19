-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: risk_severity
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `risk`
--

DROP TABLE IF EXISTS `risk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `risk` (
  `COUNTRY` text,
  `ISO3` text NOT NULL,
  `Earthquake` double DEFAULT NULL,
  `Flood` double DEFAULT NULL,
  `Tsunami` double DEFAULT NULL,
  `Tropical_Cyclone` double DEFAULT NULL,
  `Drought` double DEFAULT NULL,
  `Epidemic` double DEFAULT NULL,
  `Natural` double DEFAULT NULL,
  `Projected_Conflict_Risk` double DEFAULT NULL,
  `Current_Highly_Violent_Conflict_Intensity` int DEFAULT NULL,
  `Human` double DEFAULT NULL,
  `HAZARD_EXPOSURE` double DEFAULT NULL,
  `Development_Deprivation` double DEFAULT NULL,
  `Inequality` text,
  `Economic_Dependency` double DEFAULT NULL,
  `Socio_Economic_Vulnerability` double DEFAULT NULL,
  `Uprooted_people` double DEFAULT NULL,
  `Health_Conditions` double DEFAULT NULL,
  `Children_U5` double DEFAULT NULL,
  `Recent_Shocks` double DEFAULT NULL,
  `Food_Security` double DEFAULT NULL,
  `Other_Vulnerable_Groups` double DEFAULT NULL,
  `Vulnerable_Groups` double DEFAULT NULL,
  `VULNERABILITY` double DEFAULT NULL,
  `DRR` text,
  `Governance` double DEFAULT NULL,
  `Institutional` double DEFAULT NULL,
  `Communication` double DEFAULT NULL,
  `Physical_infrastructure` double DEFAULT NULL,
  `Access_to_health_care` double DEFAULT NULL,
  `Infrastructure` double DEFAULT NULL,
  `OK` double DEFAULT NULL,
  `INFORM_RISK` double DEFAULT NULL,
  `RISK_CLASS` text,
  `MyUnknownColumn_[0]` text,
  `MyUnknownColumn_[1]` text,
  `MyUnknownColumn_[2]` text,
  PRIMARY KEY (`ISO3`(3))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `risk`
--

LOCK TABLES `risk` WRITE;
/*!40000 ALTER TABLE `risk` DISABLE KEYS */;
INSERT INTO `risk` VALUES ('Afghanistan','AFG',9.7,7.2,0,0,8.4,6.9,6.7,10,10,10,8.9,8.6,'7.7',5.1,7.5,10,2.1,4.5,7.2,7.8,5.8,8.7,8.2,'6.3',8.2,7.3,6.3,7.3,8.3,7.3,7.3,8.1,'Very High','','',''),('Angola','AGO',0.1,5.1,0,0,3.7,6.6,3.1,5.5,0,3.9,3.5,8.1,'7.2',0.1,5.9,4.8,5.5,5.1,0.1,4.9,4.2,4.5,5.2,'5.3',7.3,6.3,7.1,8,7.3,7.5,6.9,5,'High','','',''),('Albania','ALB',9.3,4.7,7.8,0,6.9,4.8,6.4,0.9,0,0.6,4.1,1.9,'2.6',2.2,2.2,0,0.2,0.5,3.6,0.8,1.4,0.7,1.5,'x',5.7,5.7,2.2,1.7,2.5,2.1,4.1,2.9,'Low','','',''),('United Arab Emirates','ARE',0.1,3.8,7,1.8,5,5.5,4.2,0.1,0,0.1,2.4,0.7,'1.7',0,0.8,3.1,0,0.6,0,1.7,0.6,1.9,1.4,'2.1',2.5,2.3,0.1,2,1.5,1.2,1.8,1.8,'Very Low','','',''),('Argentina','ARG',6.7,6.5,0,0,3.6,4,4,1.8,0,1.3,2.8,1.4,'4.4',0,1.8,3,0.4,0.6,0.1,1.1,0.6,1.9,1.9,'3.8',5.2,4.5,1.6,3,1.5,2,3.4,2.6,'Low','','',''),('Armenia','ARM',8.2,4.3,0,0,5.2,5.1,4.5,2.3,0,1.6,3.2,1.5,'2.9',2.1,2,4.6,0.3,0.8,0.3,1.6,0.8,2.9,2.5,'7.5',5.4,6.5,1.9,1.2,2.7,1.9,4.6,3.3,'Low','','',''),('Antigua and Barbuda','ATG',5.2,0.1,0,8.4,0,3.5,3.7,0,0,0,2,2.5,'x',1.1,2,0,0.1,0.5,0,5.4,1.8,0.9,1.5,'5.4',5,5.2,0.8,0.7,2.7,1.4,3.5,2.2,'Low','','',''),('Australia','AUS',0.2,5.3,7.2,4.8,6.5,2.2,4.8,0,0,0,2.7,0,'1.9',0,0.5,6.2,0.1,0.3,0,1.1,0.4,3.9,2.4,'2.4',2.1,2.3,1.9,3,0.5,1.8,2.1,2.4,'Low','','',''),('Austria','AUT',4.2,5.5,0,0,1.9,1.6,2.5,0,0,0,1.3,0,'1.1',0.1,0.3,7,0.1,0.3,0,0.4,0.2,4.4,2.6,'2',2.2,2.1,1.7,0,0.6,0.8,1.5,1.7,'Very Low','','',''),('Azerbaijan','AZE',8.8,4.9,0,0,5.3,5.5,4.9,5.6,0,3.9,4.4,2.9,'4.3',0.4,2.6,8.1,1,1.4,0,1.4,1,5.6,4.3,'x',6.1,6.1,1.7,3.1,2.1,2.3,4.5,4.4,'Medium','','',''),('Burundi','BDI',4.9,3.7,0,0,3.9,6.7,3.6,8.6,0,6,4.9,9.6,'5.2',3.9,7.1,6.5,3.7,5.3,0.4,8.6,5.3,5.9,6.5,'4.6',8,6.3,8,7.2,7.1,7.4,6.9,6,'High','','',''),('Belgium','BEL',3.4,4,0,0,1,1.3,1.8,2.8,0,2,1.9,0,'0.6',0.4,0.3,5.6,0.1,0.3,0,0.2,0.2,3.4,2,'x',2.6,2.6,2.1,0,0.7,0.9,1.8,1.9,'Very Low','','',''),('Benin','BEN',0.1,5.1,0,0,1,7.3,2.9,2.2,0,1.5,2.2,8.7,'7',1.7,6.5,1.4,4.5,5.5,0,2.2,3.3,2.4,4.8,'5.5',6,5.8,7.2,8.3,7,7.5,6.7,4.1,'Medium','','',''),('Burkina Faso','BFA',0.1,4.6,0,0,6.1,7.3,3.7,9.7,7,7,5.6,9.7,'5.4',2.5,6.8,9.2,4.4,4.9,0.1,4.2,3.6,7.3,7.1,'3.2',6.1,4.7,7.8,9.2,6.4,7.8,6.5,6.4,'High','','',''),('Bangladesh','BGD',9.2,10,8.2,6.9,4.7,7.6,8.2,9.3,0,6.5,7.4,6.7,'4.5',1.2,4.8,7.7,2,3.6,4,4.1,3.5,6,5.4,'3',7,5,5,4.9,5.2,5,5,5.8,'High','','',''),('Bulgaria','BGR',6.6,4.9,0,0,3.1,4.6,3.6,0.2,0,0.1,2,1.7,'3.4',0.6,1.9,4.3,0.2,0.5,0,2.5,0.9,2.8,2.4,'3.2',5.1,4.2,2,1.4,1.6,1.7,3,2.4,'Low','','',''),('Bahrain','BHR',0.1,0.1,0,0,0,4.1,0.9,0.3,0,0.2,0.6,1.2,'2.8',0,1.3,1.1,0.1,0.5,0,1.2,0.5,0.8,1.1,'3.8',5.2,4.5,1,0,2.6,1.2,3,1.3,'Very Low','','',''),('Bahamas','BHS',0.1,0.1,0,8.8,1.9,3.7,3.4,0,0,0,1.9,1.9,'4.7',1.8,2.6,0.9,1.2,0.8,1.9,6.5,3,2,2.3,'x',3.8,3.8,2.2,2,3.2,2.5,3.2,2.4,'Low','','',''),('Bosnia and Herzegovina','BIH',6.3,7.1,3.1,0,3.2,2,4.1,2.5,0,1.8,3,3,'2.1',2.5,2.7,7.1,0.2,0.4,0,1.4,0.5,4.6,3.7,'x',6.3,6.3,2.2,1.3,3.9,2.5,4.7,3.7,'Medium','','',''),('Belarus','BLR',0.1,6.2,0,0,2.3,2.4,2.2,1.6,0,1.1,1.7,1.7,'0.9',0.4,1.2,2,0.6,0.3,0.1,1,0.5,1.3,1.3,'2.8',5.6,4.2,1.6,0.3,1.6,1.2,2.8,1.8,'Very Low','','',''),('Belize','BLZ',2.4,8.4,5.3,7.2,2.3,4.5,5.5,0.2,0,0.1,3.3,4.1,'5.2',1.2,3.7,3,1.2,1,0,2.7,1.3,2.2,3,'x',6.2,6.2,3.7,3,4.3,3.7,5.1,3.7,'Medium','','',''),('Bolivia','BOL',7.7,5.5,0,0,6.4,4.7,4.7,5.5,0,3.9,4.3,5.9,'5.1',1.1,4.5,1,0.7,1.5,1.6,4.7,2.3,1.7,3.2,'5.6',6.3,6,3.2,5,5.3,4.5,5.3,4.2,'Medium','','',''),('Brazil','BRA',1,8.1,0,0,4.5,5.7,4,9.8,9,9,7.2,3.7,'6.2',0.1,3.4,5.6,0.6,1.1,0,1.2,0.7,3.5,3.5,'4.3',6.2,5.3,2.4,3.6,3.5,3.2,4.3,4.8,'Medium','','',''),('Barbados','BRB',5.6,0.1,5.7,4.6,0.5,4.4,3.8,0,0,0,2.1,2.6,'3.4',0.5,2.3,0,1.1,0.9,0,2.2,1.1,0.6,1.5,'2.8',4,3.4,1.6,0.2,3,1.6,2.5,2,'Low','','',''),('Brunei Darussalam','BRN',0.1,1.4,5,1.9,2.8,4.3,2.8,0,0,0,1.5,1.1,'3.1',0,1.3,0,0.6,1.5,0,1.4,0.9,0.5,0.9,'6',3.3,4.7,1.2,2.5,2.5,2.1,3.5,1.7,'Very Low','','',''),('Bhutan','BTN',7.4,5.1,0,0,0,5,3.5,0.1,0,0.1,2,7.2,'4.5',1.9,5.2,0,1.6,2.6,0,4.1,2.2,1.2,3.5,'4.5',3.8,4.2,4.2,4.6,5.3,4.7,4.5,3.2,'Low','','',''),('Botswana','BWA',0.1,4.8,0,0,5.6,3.8,2.7,0.6,0,0.4,1.6,5.4,'6.7',0.5,4.5,1.6,4,2.8,0.9,6.6,3.9,2.8,3.7,'5.6',4.1,4.9,3.5,4.6,4.9,4.3,4.6,3,'Low','','',''),('Central African Republic','CAF',0.1,5.7,0,0,1,7.6,3.1,7.7,8,8,6.1,10,'8.5',8.1,9.2,9.7,8.3,6.8,0.2,8.8,6.9,8.7,9,'x',8,8,8.7,9.3,9.5,9.2,8.7,7.8,'Very High','','',''),('Canada','CAN',5.5,5.2,6.9,2.6,3.5,1.2,4.4,0.1,0,0.1,2.5,0,'1.7',0,0.4,6.3,0.1,0.4,0,0.8,0.3,3.9,2.3,'2.8',2,2.4,2.2,3,1.4,2.2,2.3,2.4,'Low','','',''),('Switzerland','CHE',5.1,4.3,0,0,1,1.7,2.3,0.1,0,0.1,1.3,0,'1.2',0.1,0.3,6.5,0.1,0.3,0,1.1,0.4,4.1,2.4,'0.9',1.2,1.1,1.6,0,0.4,0.7,0.9,1.4,'Very Low','','',''),('Chile','CHL',9.8,5.6,9.1,0,0.3,2.8,6.2,2.3,0,1.6,4.3,1.1,'4.4',0,1.7,3.1,0.6,0.4,0,1.9,0.8,2,1.9,'3.2',3.1,3.2,1.5,2.7,2.7,2.3,2.8,2.8,'Low','','',''),('China','CHN',7.2,8.4,9.2,8.1,4.6,5.8,7.5,9,0,6.3,6.9,3.7,'2.8',0,2.6,5.3,0.4,0.6,0.5,1.5,0.8,3.4,3,'2.5',5,3.8,2.4,4,3.3,3.2,3.5,4.2,'Medium','','',''),('Cote d\'Ivoire','CIV',0.1,5.6,4.6,0,1,7.7,3.8,8.7,0,6.1,5.1,8.3,'6.5',0.8,6,7.1,6.1,4.5,0,4.3,4,5.8,5.9,'7.8',6.3,7.1,5.1,7.3,7.2,6.5,6.8,5.9,'High','','',''),('Cameroon','CMR',0.1,6,0,0,3,7.8,3.6,9.3,9,9,7.1,7.9,'6.5',1.2,5.9,9.3,5.7,4.2,0,2.2,3.3,7.3,6.7,'2.6',7.1,4.9,5.6,8,7.2,6.9,6,6.6,'Very High','','',''),('Congo DR','COD',4.5,7.5,0,0,1.4,8.3,4.5,10,9,9,7.4,9.1,'6.5',1.9,6.7,9.6,5.5,6,0.5,10,6.8,8.6,7.8,'7.5',8.2,7.9,7.4,9.4,7.1,8,8,7.7,'Very High','','',''),('Congo','COG',0.1,8.6,0,0,1,7,3.9,3.4,0,2.4,3.2,6.8,'6.9',0.5,5.3,7.7,5.2,3.3,3.9,7.3,5.1,6.6,6,'x',7.8,7.8,5.4,8.1,6.9,6.8,7.3,5.2,'High','','',''),('Colombia','COL',9.6,6.8,7.9,4.1,1.9,5.4,6.7,7.8,7,7,6.9,3.9,'6',0.8,3.7,10,0.6,1,0.1,1.4,0.8,7.7,6.1,'3',5.8,4.4,2.1,3.6,3.4,3,3.7,5.4,'High','','',''),('Comoros','COM',0.1,0.1,5.5,2.9,0,5.5,2.7,0.4,0,0.3,1.6,7.9,'5.1',3.3,6.1,0,2.8,4.5,10,6.8,7.1,4.4,5.3,'7.8',7.9,7.9,6.4,5.8,6,6.1,7.1,3.9,'Medium','','',''),('Cabo Verde','CPV',0.1,0.1,0,0,3.1,4.7,1.5,0,0,0,0.8,5,'4.7',4.1,4.7,0,1.1,1.5,0,5.3,2.2,1.2,3.1,'3.4',4.3,3.9,3,3.2,4.7,3.6,3.8,2.1,'Low','','',''),('Costa Rica','CRI',9.6,3.3,8.7,1.9,1,4.7,6,0.1,0,0.1,3.6,2.1,'4.8',0.3,2.3,6.6,0.3,0.7,0.7,1.8,0.9,4.3,3.4,'1.5',4.3,2.9,1.2,2,3.5,2.2,2.6,3.2,'Low','','',''),('Cuba','CUB',5.8,3.6,5.7,8,4.3,5.1,5.6,1.5,0,1.1,3.7,1.6,'4.2',1.5,2.2,0,0.3,0.4,0.2,0.7,0.4,0.2,1.3,'2.5',5.4,4,3.1,1.8,0.5,1.8,3,2.4,'Low','','',''),('Cyprus','CYP',8.7,0,6.4,0,2.8,2.4,4.3,0.1,0,0.1,2.5,0.5,'1.4',0.4,0.7,9,0.1,0.2,0,3.5,1.1,6.5,4.2,'x',3.7,3.7,1.3,0.1,2.2,1.2,2.5,3,'Low','','',''),('Czech Republic','CZE',0.9,5.3,0,0,1.4,1.2,1.7,0.1,0,0.1,0.9,0.2,'0.9',0.3,0.4,2.2,0.1,0.3,0,1.5,0.5,1.4,0.9,'2.5',3.8,3.2,2,0,0.6,0.9,2.1,1.2,'Very Low','','',''),('Germany','DEU',4.3,6.1,0,0,1.4,1.4,2.5,0.1,0,0.1,1.4,0,'1.4',0.1,0.4,8.3,0.1,0.2,0,0.8,0.3,5.6,3.4,'2.7',1.9,2.3,1.5,0,0.4,0.6,1.5,1.9,'Very Low','','',''),('Djibouti','DJI',5.3,0.4,8.5,0,8.1,4.8,5.4,1.5,0,1.1,3.5,8.1,'4.1',2.9,5.8,6.3,2.4,5.6,10,6.2,7.1,6.7,6.3,'5.5',6.9,6.2,5.5,6,6.2,5.9,6.1,5.1,'High','','',''),('Dominica','DMA',4,0.1,8.5,7.6,0,3.8,4.9,0,0,0,2.8,3.5,'x',3,3.3,0,0.1,2.7,0,2.2,1.3,0.7,2.1,'x',5.1,5.1,2.6,1.1,5.7,3.1,4.2,2.9,'Low','','',''),('Denmark','DNK',0.1,2.3,0,0,3.5,1.7,1.4,0,0,0,0.7,0,'0.7',0.1,0.2,5.2,0.1,0.3,0,1.2,0.4,3.2,1.8,'2.7',1.3,2,1.4,0,0.2,0.5,1.3,1.2,'Very Low','','',''),('Dominican Republic','DOM',9.7,4.6,6.4,7.9,0.5,5.9,6.7,2.9,0,2,4.8,3.8,'5.4',1,3.5,0.8,1.3,1.6,0.1,2.1,1.3,1.1,2.4,'4.6',6.5,5.6,2.4,2.2,4.8,3.1,4.5,3.7,'Medium','','',''),('Algeria','DZA',8.8,5.2,4.6,0,2.3,3.4,4.7,6.8,0,4.8,4.8,3.1,'3.3',0.2,2.4,5.3,0.4,1.3,0.1,0.4,0.6,3.3,2.9,'3.5',6.2,4.9,3.3,4.1,3.9,3.8,4.4,3.9,'Medium','','',''),('Ecuador','ECU',9.8,6.7,9.2,0,3.6,4.9,6.9,1.9,0,1.3,4.7,3.8,'5.2',0.6,3.4,6.1,0.4,1.1,0,3.1,1.2,4.1,3.8,'3',5.9,4.5,2.8,3.4,3.9,3.4,4,4.1,'Medium','','',''),('Egypt','EGY',4.9,8.1,7.2,0,2.3,3.2,4.9,9.4,9,9,7.5,4.4,'3.8',1.2,3.5,6.6,0.3,1.6,0,0.5,0.6,4.2,3.9,'4.2',6.4,5.3,4,3.4,4.3,3.9,4.6,5.1,'High','','',''),('Eritrea','ERI',3.4,3.1,0,0,7,5.9,3.7,3.8,0,2.7,3.2,9.3,'x',0.4,6.3,1.1,1.6,6,0,5.5,3.7,2.5,4.7,'x',8.1,8.1,7.2,9.7,5.5,7.5,7.8,4.9,'Medium','','',''),('Spain','ESP',3.5,5.4,7,0,4.3,2.1,4.1,0.6,0,0.4,2.4,0.1,'1.7',0.1,0.5,6.1,0.2,0.2,0,1.3,0.4,3.8,2.3,'2.2',3.4,2.8,1.5,0,0.2,0.6,1.8,2.1,'Low','','',''),('Estonia','EST',0.1,3.6,0,0,0,1,0.9,0,0,0,0.5,0.4,'1.3',0.3,0.6,1.2,0.7,0.2,0,1.6,0.6,0.9,0.8,'x',2.6,2.6,1,0.1,1.5,0.9,1.8,0.9,'Very Low','','',''),('Ethiopia','ETH',4.8,5.7,0,0,5.2,7.4,4.4,9.7,0,6.8,5.7,9.4,'4.7',1.8,6.3,8.5,3.2,4.5,0.3,5.5,3.6,6.7,6.5,'2.9',6.3,4.6,7.5,9.8,7.3,8.2,6.8,6.3,'High','','',''),('Finland','FIN',0.1,0.1,0,0,1.9,1.1,0.6,0,0,0,0.3,0,'0.7',0.1,0.2,5,0.1,0.1,0,1.2,0.4,3,1.7,'2.2',1.2,1.7,1.6,0.5,0.5,0.9,1.3,0.9,'Very Low','','',''),('Fiji','FJI',3.5,0.1,8,3.1,2.4,3.4,3.9,0.1,0,0.1,2.2,3.5,'3.9',2.5,3.4,0,5.5,2,6,1.8,4.1,2.3,2.9,'0.1',4.5,2.3,2.4,3.3,4.4,3.4,2.9,2.6,'Low','','',''),('France','FRA',3.3,6.4,5.7,0,1.7,1.3,3.4,0.6,0,0.4,2,0.2,'1.2',0.2,0.5,7.2,0.3,0.3,0,0.6,0.3,4.6,2.8,'2.9',2.6,2.8,2.2,0,0.9,1,1.9,2.2,'Low','','',''),('Micronesia','FSM',0.1,0.1,8.6,3.8,5.4,2.9,4.2,0,0,0,2.3,5.7,'3.8',7.3,5.6,0,4.5,2.4,4.4,5,4.1,2.3,4.1,'6',5.3,5.7,5.8,3.4,5.2,4.8,5.3,3.7,'Medium','','',''),('Gabon','GAB',0.1,4.8,0,0,1,6.5,2.5,6.3,0,4.4,3.5,5.5,'5.2',0.8,4.3,1.2,6.7,2.4,0,4.3,3.8,2.6,3.5,'6.7',6.8,6.8,2.7,6.2,6.3,5.1,6,4.2,'Medium','','',''),('United Kingdom','GBR',0.6,4.8,4.9,0,1,1.5,2.4,5.4,0,3.8,3.1,0,'2',0,0.5,5.9,0.2,0.3,0,0.9,0.4,3.6,2.2,'2.1',2.3,2.2,1.6,0,1.1,0.9,1.6,2.2,'Low','','',''),('Georgia','GEO',7.9,5.1,0,0,5.5,4.7,4.5,4.8,0,3.4,4,1.4,'3.8',3.1,2.4,8.8,0.9,0.5,0.1,3,1.2,6.3,4.6,'4.7',4.1,4.4,1.8,1.1,2.3,1.7,3.2,3.9,'Medium','','',''),('Ghana','GHA',0.1,4.9,5.2,0,1.4,7.2,3.7,2.8,0,2,2.9,7.1,'5.9',1.2,5.3,3.2,4.5,3.3,0.1,1.5,2.5,2.9,4.2,'3.4',5.7,4.6,3.8,7,6,5.6,5.1,4,'Medium','','',''),('Guinea','GIN',0.1,5.1,5.2,0,0.7,8,3.9,5.8,0,4.1,4,9.1,'2.2',1.5,5.5,2.9,4.9,5.7,0,3.5,3.8,3.4,4.5,'5',7,6,7.3,8.3,8.8,8.1,7.2,5.1,'High','','',''),('Gambia','GMB',0.1,3.5,3.6,0,3.2,6.3,3.1,1.5,0,1.1,2.2,8.7,'5.5',5.2,7,3,2.6,3.4,0.3,3.6,2.6,2.8,5.3,'3',6.3,4.7,5.8,5.7,7.1,6.2,5.5,4,'Medium','','',''),('Guinea-Bissau','GNB',0.1,3.3,1.5,0,2,7,2.7,3,0,2.1,2.4,9.2,'6.4',3.6,7.1,2.1,5.9,5.1,0.2,5.1,4.4,3.3,5.5,'7.8',8.1,8,7.9,8.1,7.2,7.7,7.9,4.7,'Medium','','',''),('Equatorial Guinea','GNQ',0.1,4.4,0,0,3.3,6.8,2.9,2.6,0,1.8,2.4,6.2,'x',0.1,4.2,0,6,3.9,0,4.3,3.8,2.1,3.2,'x',8,8,4.9,6.6,7.5,6.3,7.2,3.8,'Medium','','',''),('Greece','GRC',9.6,3.1,8.7,0,2.1,4.6,5.9,0.4,0,0.3,3.6,0.6,'2',0.3,0.9,7.1,0.1,0.3,0,1.2,0.4,4.6,3,'2.3',4.8,3.6,1.9,0,0.9,0.9,2.4,3,'Low','','',''),('Grenada','GRD',3.5,0.1,0,1.7,0.5,3.6,1.7,0,0,0,0.9,2.7,'x',1.2,2.2,0,0,1.2,0,5.4,2,1,1.6,'4.7',5.1,4.9,2.5,0.6,4.2,2.4,3.8,1.8,'Very Low','','',''),('Guatemala','GTM',9.8,5.1,7.4,4.5,3.8,5.6,6.7,6,0,4.2,5.6,6.7,'6.2',1.9,5.4,7.1,1.1,2.4,6.7,4.1,3.9,5.7,5.6,'5.5',6.9,6.2,3,4.4,5.4,4.3,5.3,5.5,'High','','',''),('Guyana','GUY',0.1,4.8,6.7,0,4.1,4.9,3.8,0.4,0,0.3,2.2,4.5,'6.6',1.8,4.4,0.9,3.8,2.1,0,1.9,2,1.5,3.1,'x',5.8,5.8,4,4.1,5.1,4.4,5.1,3.3,'Low','','',''),('Honduras','HND',9.4,5.1,7,4.3,4.6,5.9,6.5,3.9,0,2.7,4.9,6.4,'6.6',3.5,5.7,7.6,1.1,1.5,1.5,3.7,2,5.5,5.6,'5.2',6.8,6,4.1,3.9,5,4.3,5.2,5.2,'High','','',''),('Croatia','HRV',5.9,6.5,7.7,0,3.5,2,4.8,0.8,0,0.6,3,1.3,'1.5',1.1,1.3,1.5,0.1,0.4,1.5,1.8,1,1.3,1.3,'4.4',4.7,4.6,1.9,0.2,1.9,1.3,3.1,2.3,'Low','','',''),('Haiti','HTI',9.7,4.3,6.3,7.2,3.8,7.3,7,6.4,0,4.5,5.9,8.2,'6.2',6.5,7.3,1.6,3.2,3.6,0.1,9,5,3.5,5.7,'6.7',8.5,7.6,6.6,5.3,8.3,6.7,7.2,6.2,'High','','',''),('Hungary','HUN',2.3,7.5,0,0,3.6,4.8,3.6,0.1,0,0.1,2,1.1,'2.4',0.5,1.3,2.7,0.1,0.3,0.8,1.6,0.7,1.8,1.6,'1.4',4.8,3.1,1.9,0.1,1.4,1.1,2.2,1.9,'Very Low','','',''),('Indonesia','IDN',8.9,8.1,9.7,6.1,3.4,7,7.7,9.8,7,7,7.4,4.1,'4.8',0.2,3.3,4,2.7,2.9,0.5,2.6,2.2,3.2,3.3,'3.3',5.3,4.3,2.8,4.7,6.6,4.7,4.5,4.8,'Medium','','',''),('India','IND',8.3,8.4,8.1,7.2,7,7.4,7.8,9.7,7,7,7.4,6.6,'5',0.4,4.7,6.1,3.1,5.1,2.6,4.3,3.8,5.1,4.9,'1.8',5.2,3.5,4.5,4.5,6,5,4.3,5.4,'High','','',''),('Ireland','IRL',0.1,3.9,5.8,0,0.5,1.3,2.2,0,0,0,1.2,0,'1.6',0.1,0.4,4.2,0.2,0.3,0,0,0.1,2.4,1.5,'x',2.4,2.4,2.2,0.5,0.9,1.2,1.8,1.5,'Very Low','','',''),('Iran','IRN',9.6,6.4,6.9,1.8,6.1,6.3,6.8,8,0,5.6,6.2,2.1,'5.3',0.1,2.4,8,0.1,1,6.3,1.4,2.6,6,4.4,'4.4',6.7,5.6,2.7,3.8,2.9,3.1,4.5,5,'High','','',''),('Iraq','IRQ',5.4,9.5,0,0,5.3,6.9,5.6,9.9,9,9,7.7,4.9,'4.2',1.4,3.9,9,0.5,1.5,0,5.6,2.2,6.8,5.5,'8.4',7.8,8.1,4,3.5,5.6,4.4,6.6,6.5,'Very High','','',''),('Iceland','ISL',7.5,0.1,0,0,0,2.2,2.2,0,0,0,1.2,0,'0.6',0.1,0.2,2.5,0.1,0.2,0,0.4,0.2,1.4,0.8,'x',2.2,2.2,1.3,2.6,0.3,1.4,1.8,1.2,'Very Low','','',''),('Israel','ISR',7.3,2.3,6.2,0,5.3,4,4.6,8.3,0,5.8,5.2,0,'2.4',0.1,0.6,5.4,0.2,0.3,0.5,0,0.3,3.3,2.1,'x',3.3,3.3,1.8,0,0.6,0.8,2.1,2.8,'Low','','',''),('Italy','ITA',8.6,5.4,7.4,0,2.4,2.1,5.1,0.4,0,0.3,3,0.3,'1.8',0.1,0.6,6.3,0.2,0.2,0,0.8,0.3,3.9,2.4,'2.4',4.5,3.5,1.5,0.1,0.3,0.6,2.2,2.5,'Low','','',''),('Jamaica','JAM',9.1,3.1,0,7.2,2.8,5.2,5.4,0.4,0,0.3,3.3,4.1,'5.4',2.1,3.9,0,1.5,0.8,0,3.2,1.5,0.8,2.5,'3.3',4.9,4.1,3.1,1.9,4.4,3.1,3.6,3.1,'Low','','',''),('Jordan','JOR',7.7,2.6,0,0,6.7,4,4.2,3.3,0,2.3,3.3,2.2,'4.2',5.8,3.6,10,0.1,1,0,2.9,1.1,7.8,6.1,'6.1',5,5.6,2.4,2.4,3.2,2.7,4.3,4.4,'Medium','','',''),('Japan','JPN',10,3.9,10,10,0.5,3.4,8.1,0.7,0,0.5,5.5,0,'1.7',0,0.4,3.6,0.2,0.5,0.5,2.6,1,2.4,1.5,'1.9',2.2,2.1,1.3,0.1,1.1,0.8,1.5,2.3,'Low','','',''),('Kazakhstan','KAZ',6.5,6,0,0,5,3.8,4,0.4,0,0.3,2.3,1.3,'1.7',0,1.1,0,0.4,0.6,0,1,0.5,0.3,0.7,'3.8',5.8,4.8,1.3,3.5,2.4,2.4,3.7,1.8,'Very Low','','',''),('Kenya','KEN',3.2,5.6,6,0,6.9,6.4,5.1,9.3,0,6.5,5.8,7.5,'5.6',1.4,5.5,7.7,4.3,2.9,4.3,6.6,4.7,6.4,6,'3.9',6.5,5.2,4.9,8.4,6.9,6.7,6,5.9,'High','','',''),('Kyrgyzstan','KGZ',8.6,5.6,0,0,6.3,5.4,5.1,5.5,0,3.9,4.5,2.8,'2.9',4.7,3.3,0.9,0.7,1,0,2.3,1,1,2.2,'3.7',6.6,5.2,2.4,3.7,4.1,3.4,4.4,3.5,'Medium','','',''),('Cambodia','KHM',0.1,9.5,5.2,4,4.6,6.4,5.8,3.2,0,2.2,4.2,7.5,'6.3',1.8,5.8,0,2.4,3.8,1.3,4.6,3.1,1.7,4,'6.8',7.1,7,3.7,5.7,5.9,5.1,6.1,4.7,'Medium','','',''),('Kiribati','KIR',0.1,0.1,8.7,0,3.8,4.5,3.8,0,0,0,2.1,6.4,'3',7.8,5.9,0,8.2,3.7,0,0.9,4.1,2.3,4.3,'x',5.6,5.6,5.4,4.1,5.4,5,5.3,3.6,'Medium','','',''),('Saint Kitts and Nevis','KNA',4.2,0.1,0,6.9,0,2.9,2.8,0,0,0,1.5,2.5,'x',0.4,1.8,0.9,0,0.9,0,3.3,1.1,1,1.4,'4',3.9,4,1.5,0.4,3.1,1.7,2.9,1.8,'Very Low','','',''),('Korea Republic of','KOR',7.3,4.7,7.6,8.5,0.3,2.7,5.9,0.9,0,0.6,3.7,0,'1.3',0.1,0.4,3.9,0.4,0.2,0.1,0.8,0.4,2.3,1.4,'1.5',3.4,2.5,1.3,0,1.1,0.8,1.7,2.1,'Low','','',''),('Kuwait','KWT',0.2,1.3,0,0,3.3,3.8,1.6,1.1,0,0.8,1.2,1.8,'3.3',0,1.7,1.7,0.2,0.7,0,0.6,0.4,1.1,1.4,'x',5.6,5.6,0.6,1.6,0.9,1,3.6,1.8,'Very Low','','',''),('Lao PDR','LAO',3.1,9.1,0,3.3,2.4,6.3,4.9,0.9,0,0.6,3,6.8,'4.6',1.6,5,0,1.6,4.2,4.8,3.1,3.5,1.9,3.6,'6.1',6.7,6.4,4.6,5.1,6.8,5.5,6,4,'Medium','','',''),('Lebanon','LBN',9.6,1.2,7.2,0,2.3,3.6,5.2,5.5,0,3.9,4.6,3.4,'3.3',5.5,3.9,10,0.1,0.6,0.1,1.9,0.7,7.7,6.2,'4.7',6.8,5.8,2.6,0.6,3.7,2.3,4.3,5,'High','','',''),('Liberia','LBR',0.1,6.2,5.5,0,0.5,7.5,4,1.9,0,1.3,2.8,9,'5.7',5.5,7.3,3.3,6,4.3,0,8.6,5.5,4.5,6.1,'x',7.5,7.5,8.1,7.9,7.4,7.8,7.7,5.1,'High','','',''),('Libya','LBY',1.9,2.6,7.3,0,5,3,3.7,9.8,10,10,8.2,3.5,'2.3',1.6,2.7,9.1,0.4,1.8,0.1,6.7,2.8,7,5.2,'x',8.5,8.5,5.6,3.3,3.5,4.1,6.8,6.6,'Very High','','',''),('Saint Lucia','LCA',4.3,0.1,0,4.7,0.5,4.5,2.6,0,0,0,1.4,3.2,'5.5',0.6,3.1,0,0.1,1,0,4.9,1.7,0.9,2.1,'5.2',4.6,4.9,3.3,0.6,4.1,2.7,3.9,2.3,'Low','','',''),('Sri Lanka','LKA',0.1,6.1,8.5,3.6,3.5,5.8,5.2,4.9,0,3.4,4.4,3.2,'4.4',1,3,4.2,0.3,2.6,2.2,2.7,2,3.2,3.1,'3.6',5.9,4.8,2.8,2.8,4.1,3.2,4,3.8,'Medium','','',''),('Lesotho','LSO',0.1,3,0,0,6,3.7,2.5,1.8,0,1.3,1.9,7.4,'6.2',4.4,6.4,0.9,7.3,4.3,10,8.4,8.1,5.6,6,'8.4',6.4,7.4,5.3,7,5.6,6,6.8,4.3,'Medium','','',''),('Lithuania','LTU',0.1,4.7,0,0,3.1,0.9,1.7,0,0,0,0.9,0.6,'2.4',0.4,1,2.1,0.4,0.3,0,0.8,0.4,1.3,1.2,'x',3.5,3.5,1,0.4,1.2,0.9,2.3,1.4,'Very Low','','',''),('Luxembourg','LUX',0.2,2,0,0,1,1.5,0.8,0,0,0,0.4,0,'1.8',0.5,0.6,3.7,0.3,0.2,0.1,1.5,0.5,2.2,1.4,'x',1.7,1.7,1.3,0.1,0.8,0.7,1.2,0.9,'Very Low','','',''),('Latvia','LVA',0.1,6.5,0,0,2.8,1,2.1,0.1,0,0.1,1.2,0.9,'2.5',0.6,1.2,1.3,0.5,0.3,0,1.5,0.6,1,1.1,'x',3.7,3.7,1.6,0.7,2,1.4,2.6,1.5,'Very Low','','',''),('Morocco','MAR',4.8,5.8,6.7,0,5.8,3.5,4.7,4.4,0,3.1,3.9,6,'5.1',1,4.5,2.8,0.5,1.2,0,0.6,0.6,1.8,3.3,'5.6',5.7,5.7,3.1,3.7,4.4,3.7,4.8,4,'Medium','','',''),('Moldova Republic of','MDA',6.3,5.6,0,0,5.6,4.6,4.1,2.3,0,1.6,2.9,2.9,'1.6',2.5,2.5,1,1,0.9,0.1,3.8,1.6,1.3,1.9,'6.2',6.4,6.3,2.1,1.6,2.9,2.2,4.6,2.9,'Low','','',''),('Madagascar','MDG',0.1,7.2,7.8,7.4,4.4,6.7,6.1,0.4,0,0.3,3.8,8.8,'4.4',1.6,5.9,1.8,3.9,5,1.8,9.2,5.8,4.1,5.1,'4.7',7.5,6.1,7.4,9.4,6.8,7.9,7.1,5.2,'High','','',''),('Maldives','MDV',0.1,0.1,9,0,0,3.3,3.2,0.1,0,0.1,1.8,2.7,'3.3',0.9,2.4,0,0.4,2.3,0.2,5.3,2.3,1.2,1.8,'5.8',6.6,6.2,1.5,0.1,3.3,1.6,4.3,2.4,'Low','','',''),('Mexico','MEX',8.6,7.2,6.6,7.7,3.3,4.9,6.7,10,9,9,8.1,4.1,'4.8',0.4,3.4,6.6,0.6,1,0,1.7,0.8,4.3,3.9,'5.1',6.2,5.7,2.5,3.1,3.2,2.9,4.4,5.2,'High','','',''),('Marshall Islands','MHL',0.1,0.1,8.6,0.4,3.4,3.7,3.6,0,0,0,2,4,'x',8.2,5.4,0,5.8,2.6,0,5,3.7,2,3.9,'7.3',8.1,7.7,3.9,1.4,7.2,4.2,6.3,3.7,'Medium','','',''),('North Macedonia','MKD',7,4.2,0,0,4,4.9,3.8,0.7,0,0.5,2.3,3.2,'2.1',0.9,2.4,1.2,0.1,0.6,0,2,0.7,1,1.7,'3.8',5.7,4.8,2,2,2.7,2.2,3.6,2.4,'Low','','',''),('Mali','MLI',0.1,6.9,0,0,7.6,6.4,4.4,9.9,7,7,5.9,9.5,'5.5',3.4,7,7.3,4.6,5.8,0,1,3.2,5.6,6.4,'4.9',7.1,6,6.9,6.7,7.7,7.1,6.6,6.3,'High','','',''),('Malta','MLT',0.1,0.1,7.7,0,0,2.9,2.5,0,0,0,1.3,0.3,'1.9',0.3,0.7,5.5,0.2,0.5,0,0.9,0.4,3.4,2.2,'x',3.9,3.9,1.5,0,0.3,0.6,2.4,1.9,'Very Low','','',''),('Myanmar','MMR',9.1,9.9,8.9,5.6,1,6.5,7.8,9.5,7,7,7.4,7.4,'3.8',1.3,5,7.2,4,3.9,0.1,4.1,3.2,5.5,5.3,'7.1',7.1,7.1,4.9,5.7,5.4,5.3,6.3,6.3,'High','','',''),('Montenegro','MNE',5.8,4.4,7.7,0,2.3,2.6,4.3,0.1,0,0.1,2.5,2.2,'2.6',1.9,2.2,2,0.2,0.2,0,0.7,0.3,1.2,1.7,'4',5.1,4.6,1,0.9,2.2,1.4,3.2,2.4,'Low','','',''),('Mongolia','MNG',2.4,4.3,0,0,6.7,1.8,2.9,0.2,0,0.1,1.6,4.4,'3.1',2.8,3.7,0,2.7,0.9,2.9,5.9,3.3,1.8,2.8,'5.1',6,5.6,2.3,5.9,3.8,4,4.9,2.8,'Low','','',''),('Mozambique','MOZ',3.8,6.3,6,5.2,6.4,6.6,5.8,8.8,7,7,6.4,9.4,'7.5',3.6,7.5,6.5,9,4.6,3.4,8.3,7,6.8,7.2,'2.1',7.1,4.6,7.7,8.8,6.9,7.8,6.5,6.7,'Very High','','',''),('Mauritania','MRT',0.8,7.5,4.6,0,9.2,5.8,5.6,3.5,0,2.5,4.2,8.3,'5.1',2.5,6.1,6.6,1.3,5.1,2.3,2.8,3,5.1,5.6,'4.8',6.9,5.9,6.5,7.2,7.8,7.2,6.6,5.4,'High','','',''),('Mauritius','MUS',0.1,0.1,6.8,7,0.7,3.7,3.7,0.1,0,0.1,2.1,2.1,'3.9',0.6,2.2,0,1.2,1.2,0.6,1.7,1.2,0.6,1.4,'3.3',4,3.7,2.2,0.2,2.9,1.8,2.8,2,'Low','','',''),('Malawi','MWI',6.5,5.3,0,0.7,5.8,6.1,4.5,1.1,0,0.8,2.9,8.6,'6.6',4.2,7,5.2,6.5,3.2,2.7,4.9,4.5,4.9,6.1,'4',6.7,5.4,8,7.5,6.5,7.3,6.4,4.8,'Medium','','',''),('Malaysia','MYS',2.3,6.6,7.1,2.9,3.2,5.3,4.9,2.2,0,1.5,3.4,1.9,'3.9',0.1,2,6.2,0.7,1.8,0.1,2,1.2,4.1,3.1,'2.6',3.8,3.2,1.7,2.9,3.2,2.6,2.9,3.1,'Low','','',''),('Namibia','NAM',0.1,6.1,0,0,8.9,4.7,4.3,0.3,0,0.2,2.5,7,'7.3',0.9,5.6,3.1,6.3,3,5.8,4.6,5.1,4.2,4.9,'4.3',4.8,4.6,4.7,6.7,4.9,5.4,5,3.9,'Medium','','',''),('Niger','NER',0.1,7.4,0,0,7,7,4.5,9.8,9,9,7.4,10,'5.5',3.7,7.3,7.8,4.4,7.4,0.6,3.6,4.5,6.4,6.9,'5.3',6.7,6,9,9.7,7.7,8.8,7.7,7.3,'Very High','','',''),('Nigeria','NGA',0.1,8,0,0,1,8,4,10,9,9,7.2,8.2,'4.5',1,5.5,8,5.5,7,0.3,3.5,4.5,6.6,6.1,'2.8',7.2,5,5.7,7.2,8.9,7.3,6.3,6.5,'Very High','','',''),('Nicaragua','NIC',9.5,5.1,8.1,3.6,4.1,5.9,6.6,5.1,0,3.6,5.3,6,'5.7',2.4,5,0.9,1,1.2,1.9,4.5,2.3,1.6,3.5,'4.7',7.2,6,4.1,5,4.4,4.5,5.3,4.6,'Medium','','',''),('Netherlands','NLD',2.4,5.8,0,0,0.5,1.7,2,0,0,0,1,0,'0.7',0.1,0.2,5.9,0.1,0.3,0,1.6,0.5,3.7,2.1,'1.7',1.6,1.7,1.5,0.1,0.6,0.7,1.2,1.4,'Very Low','','',''),('Norway','NOR',0.8,0.1,0,0,1.9,1,0.7,0,0,0,0.4,0,'0.6',0.1,0.2,5.8,0.1,0.2,0,1.2,0.4,3.6,2.1,'2.3',1.4,1.9,1.7,1.9,0.2,1.3,1.6,1.1,'Very Low','','',''),('Nepal','NPL',9.9,6.7,0,0.2,3.2,6.6,5.8,7.8,0,5.5,5.7,7.3,'4.1',4.3,5.8,3.6,2.1,4.3,0.2,2,2.3,3,4.5,'5.4',6.7,6.1,4.1,5,5.8,5,5.6,5.2,'High','','',''),('Nauru','NRU',0.1,0.1,8.2,0,0,3.8,2.8,0,0,0,1.5,2.7,'x',7.3,4.2,5.1,2,2.4,0,5,2.5,3.9,4.1,'8.1',5.2,6.7,3.2,1.3,4.6,3,5.1,3.2,'Low','','',''),('New Zealand','NZL',7,3.8,7,2.9,1.9,2.1,4.5,0,0,0,2.5,0,'1.8',0.1,0.5,2.3,0.1,0.4,0.1,1.6,0.6,1.5,1,'2.6',1.5,2.1,1.4,2,0.9,1.4,1.8,1.7,'Very Low','','',''),('Oman','OMN',0.1,3.7,9.2,3.2,3.7,5.3,5,0.1,0,0.1,2.9,1.3,'4.1',0,1.7,1,0.1,1.7,0,2.7,1.2,1.1,1.4,'x',4.7,4.7,1.6,3.4,2.5,2.5,3.7,2.5,'Low','','',''),('Pakistan','PAK',9.3,8.8,6.7,3.8,5.2,7.8,7.4,9.7,7,7,7.2,7.8,'4.7',1.1,5.4,7.6,1.7,5.2,1.6,3.9,3.3,5.9,5.7,'4',6.6,5.3,6.2,5,5.8,5.7,5.5,6.1,'High','','',''),('Panama','PAN',9.3,3,9.1,2.4,1.2,5.4,6.2,0.2,0,0.1,3.8,2.1,'6.1',0.2,2.6,4.6,0.7,1.2,0,2.1,1,3,2.8,'4.3',5.7,5,2.1,3.7,3,2.9,4,3.5,'Medium','','',''),('Peru','PER',9.9,6.4,9.3,0,4.5,5.3,7.1,3.4,0,2.4,5.2,4.2,'4.8',0.3,3.4,7.8,0.8,0.9,0.1,2.5,1.1,5.4,4.5,'3.6',6,4.8,2.6,4.7,4.8,4,4.4,4.7,'Medium','','',''),('Philippines','PHL',10,7.2,9.3,9.5,4.1,6.6,8.4,9.2,7,7,7.8,4.5,'5.3',1.1,3.9,5.6,3.8,3.2,6.5,3.9,4.5,5.1,4.5,'3.5',5.8,4.7,2.2,3,6.2,3.8,4.3,5.3,'High','','',''),('Palau','PLW',0.1,0.1,7.7,4.9,0,2.3,3.2,0,0,0,1.7,1.7,'x',6.8,3.4,0,1,1.4,0.2,5,2.1,1.1,2.3,'5.9',5,5.5,1.4,1.3,4.4,2.4,4.1,2.5,'Low','','',''),('Papua New Guinea','PNG',9.7,5,8.6,2.6,2.5,6.4,6.7,3.5,0,2.5,4.9,8.2,'7.1',1.5,6.3,4.4,5.5,5,2.3,4.6,4.5,4.5,5.5,'6.7',6.8,6.8,6.9,9.8,6.5,7.7,7.3,5.8,'High','','',''),('Poland','POL',1.3,6.1,0,0,2.6,2.1,2.3,0.1,0,0.1,1.3,0.6,'1.4',0.2,0.7,3.4,0.2,0.3,0,0.7,0.3,2,1.4,'4.3',4,4.2,1.5,0.1,2.6,1.4,2.9,1.7,'Very Low','','',''),('Korea DPR','PRK',4.9,7.4,4.6,6.5,3.8,3,5.2,5.4,0,3.8,4.5,9.4,'x',0.1,6.3,0,3.9,1.8,10,9.5,7.8,5,5.7,'x',8.2,8.2,4.9,3.4,0.7,3,6.3,5.4,'High','','',''),('Portugal','PRT',3.7,3.7,6.2,0.3,3.3,1.8,3.4,0,0,0,1.9,1,'1.7',0.1,1,2.1,0.4,0.3,0,0.8,0.4,1.3,1.2,'2.6',3.2,2.9,1.9,0,0.6,0.8,1.9,1.6,'Very Low','','',''),('Paraguay','PRY',0.1,4.8,0,0,3.5,5.4,2.6,2.3,0,1.6,2.1,4.1,'5.9',0.4,3.6,1.5,1.2,1,5.4,3,2.9,2.2,2.9,'3.7',6.6,5.2,2.4,3.1,4.3,3.3,4.3,3,'Low','','',''),('Palestine','PSE',5.2,1.8,5.6,0,0,4.3,3.1,5.6,7,7,5.4,3.2,'2.2',8.2,4.2,10,0,1,0.6,4.8,1.8,7.9,6.4,'5.8',6.5,6.2,2.5,0.3,0.2,1,4.1,5.2,'High','','',''),('Qatar','QAT',0.1,0,1.6,0,3.7,3,1.5,0.1,0,0.1,0.8,1,'2.7',0.1,1.2,0.9,0.3,0.5,0,0.6,0.4,0.7,1,'4.7',3.8,4.3,1.1,0.2,2.6,1.3,2.9,1.3,'Very Low','','',''),('Romania','ROU',6.6,7,0,0,3.1,4.6,4.1,1.9,0,1.3,2.8,1.7,'3.5',0.5,1.9,2.3,0.5,0.6,0,0.7,0.5,1.4,1.7,'3.8',5.6,4.7,1.9,1,3.2,2,3.5,2.6,'Low','','',''),('Russian Federation','RUS',5.1,8.4,5.5,3.8,6.4,3.2,5.7,9.1,0,6.4,6.1,1.5,'3.3',0.1,1.6,4,0.5,0.6,0,0.9,0.5,2.4,2,'x',6.2,6.2,1.1,3.5,1.7,2.1,4.5,3.8,'Medium','','',''),('Rwanda','RWA',4.5,4.4,0,0,4.5,5.8,3.5,1.5,0,1.1,2.4,8.2,'5.1',3.5,6.3,6.6,4.7,2.4,0.1,8.6,4.8,5.8,6.1,'3',4.7,3.9,6.4,6.3,5.6,6.1,5.1,4.2,'Medium','','',''),('Saudi Arabia','SAU',2.3,3.7,0,0,5,5.7,3.1,7.5,0,5.3,4.3,0.9,'3',0,1.2,1.6,0.1,0.5,0,1.2,0.5,1.1,1.2,'x',4.6,4.6,1.4,3.2,1.3,2,3.4,2.6,'Low','','',''),('Sudan','SDN',0.1,8,0,0,6.1,6.1,4.2,10,8,8,6.5,8.6,'4.9',1.3,5.9,9.6,1.5,6,0.6,3.7,3.2,7.7,6.9,'4.9',8.3,6.6,6.1,8.3,5.9,6.8,6.7,6.7,'Very High','','',''),('Senegal','SEN',0.1,4.8,6.4,0,6.6,6.2,4.5,3,0,2.1,3.4,8.5,'5.4',2.6,6.3,4.1,2.6,3.2,0,3.3,2.4,3.3,5,'4.7',5.5,5.1,5.4,6.1,6.8,6.1,5.6,4.6,'Medium','','',''),('Singapore','SGP',0.1,0.1,0,0,0,4.3,0.9,0.1,0,0.1,0.5,0,'0.9',0,0.2,0,0.4,0.2,0,1.4,0.5,0.3,0.3,'1.2',1,1.1,1.1,0,1.6,0.9,1,0.5,'Very Low','','',''),('Solomon Islands','SLB',8.4,0.1,8.7,4.1,3.1,5.6,5.8,0.5,0,0.4,3.6,6.9,'3',6.6,5.9,0,4.5,2.6,0,4,2.9,1.6,4.1,'6.6',6.5,6.6,5.8,7.8,6.2,6.6,6.6,4.6,'Medium','','',''),('Sierra Leone','SLE',0.1,4.6,5.8,0,1,7.7,3.9,5.6,0,3.9,3.9,9.2,'5.7',3.6,6.9,0.8,6.4,5.6,0.1,6.6,5.1,3.2,5.3,'3.5',7,5.3,7.8,8.4,8.2,8.1,6.9,5.2,'High','','',''),('El Salvador','SLV',9.7,3,8.2,3.7,3.6,5.7,6.5,4.6,0,3.2,5.1,5.2,'4.4',2.9,4.4,6,1.2,1.1,3.5,2.9,2.2,4.4,4.4,'5.2',6.3,5.8,2.9,2.2,4.5,3.2,4.6,4.7,'Medium','','',''),('Somalia','SOM',1.6,7.5,8.1,1,10,6.3,6.9,10,10,10,8.9,9.7,'x',8.5,9.3,10,1.9,7.2,10,8.6,7.9,9.2,9.3,'x',9.3,9.3,8,7.8,9.6,8.5,8.9,9,'Very High','','',''),('Serbia','SRB',5.5,8.9,0,0,3.3,3.9,4.5,2.9,0,2,3.4,1.3,'2.5',1.8,1.7,4.5,0.2,0.4,0.1,2.6,0.9,2.9,2.3,'4.9',5.5,5.2,2.1,1.9,2.8,2.3,3.9,3.1,'Low','','',''),('South Sudan','SSD',2.8,7.1,0,0,3.2,7,4,10,8,8,6.4,9.9,'5.3',7.7,8.2,10,5.7,6.9,4.2,7.5,6.2,8.8,8.5,'x',9.4,9.4,8.7,9.8,9.4,9.3,9.4,8,'Very High','','',''),('Sao Tome and Principe','STP',0.1,0.1,0,0,0,5.6,1.3,0,0,0,0.7,6.6,'7.6',3.6,6.1,0,4.2,2.2,0,4,2.8,1.5,4.2,'x',5.9,5.9,4.4,4.3,5.5,4.7,5.3,2.5,'Low','','',''),('Suriname','SUR',0.1,8.6,3.2,0,1.4,5.2,3.9,0.1,0,0.1,2.2,3.7,'6.2',0.2,3.5,2.3,0.9,1.4,0,2.9,1.4,1.9,2.7,'x',6,6,2.6,4.1,5.1,3.9,5,3.1,'Low','','',''),('Slovakia','SVK',4.2,6.7,0,0,1.4,1.9,2.8,0.1,0,0.1,1.5,0.9,'1.3',0.3,0.9,1.1,0.1,0.4,0,3,1,1.1,1,'3.4',4.3,3.9,1.8,0.1,1.8,1.2,2.7,1.6,'Very Low','','',''),('Slovenia','SVN',6.1,4,5.7,0,1,1.4,3.4,0,0,0,1.9,0,'0.5',0.2,0.2,1.4,0.1,0.2,0,1.4,0.4,0.9,0.6,'0.9',3.4,2.2,1.6,0.1,1.4,1,1.6,1.2,'Very Low','','',''),('Sweden','SWE',0.1,3.2,0,0,1,1.7,1.1,0.1,0,0.1,0.6,0,'0.7',0.1,0.2,7.8,0.1,0.2,0,1.6,0.5,5.2,3.1,'2.5',1.4,2,1.5,0.9,0.1,0.8,1.4,1.4,'Very Low','','',''),('Eswatini','SWZ',0.1,4.2,0,0.2,5.1,3.6,2.5,1.5,0,1.1,1.8,6.5,'7.6',1.8,5.6,2.3,4.6,2.8,10,5.1,6.8,4.9,5.3,'4.4',6.5,5.5,3.9,5.6,6.3,5.3,5.4,3.7,'Medium','','',''),('Seychelles','SYC',0.1,0.1,8.6,0,0,2.6,2.8,0,0,0,1.5,1.9,'5.4',1.1,2.6,0,0.2,1,0,1.7,0.7,0.4,1.6,'4.3',3.7,4,1.5,0.9,4.2,2.2,3.2,2,'Low','','',''),('Syria','SYR',7.8,5.2,5.6,0,7.2,5.5,5.7,9.7,10,10,8.7,6.3,'7.3',10,7.5,10,0.4,1.8,0.7,4.8,2.1,7.9,7.7,'4.6',8.5,6.6,4.4,2.7,6.3,4.5,5.7,7.3,'Very High','','',''),('Chad','TCD',0.1,7.5,0,0,5.9,7,4.2,9.9,0,6.9,5.7,10,'7',3.5,7.6,8.8,3.3,7.9,0,8.7,6,7.7,7.7,'x',8.1,8.1,9,10,9.9,9.6,9,7.3,'Very High','','',''),('Togo','TGO',0.1,4.3,0,0,2.9,7.4,3,2.5,0,1.8,2.4,8,'6',2.3,6.1,3.8,4.3,4.4,0,5.4,3.8,3.8,5.1,'9.2',7.1,8.2,6.6,8,6.5,7,7.7,4.6,'Medium','','',''),('Thailand','THA',2.1,8.8,7.2,4.9,5.7,5.7,6.2,6.6,0,4.6,5.5,2.3,'4',0.1,2.2,5.5,1.1,1.1,0.7,3.3,1.6,3.8,3,'4.7',5.4,5.1,1.7,1.9,4.4,2.7,4,4,'Medium','','',''),('Tajikistan','TJK',9.3,5.4,0,0,7.6,6.3,5.8,6.9,0,4.8,5.3,5.2,'3.7',4.4,4.6,2.6,1.5,2.2,0.1,3.9,2,2.3,3.5,'4.6',7.4,6,3.1,4.4,3.9,3.8,5,4.5,'Medium','','',''),('Turkmenistan','TKM',3.3,6.4,0,0,4.7,5.6,3.7,0.4,0,0.3,2.2,2.3,'x',0,1.5,0,0.3,2.1,0,1.8,1.1,0.6,1.1,'x',7.6,7.6,2.5,3.3,2.6,2.8,5.7,2.4,'Low','','',''),('Timor-Leste','TLS',6.3,1.7,6,3.6,2,6.1,4.6,1.2,0,0.8,2.9,7.4,'0.9',4.3,5,0,6.4,5.9,0.7,7.9,5.8,3.4,4.2,'6.3',6.6,6.5,4.7,5.9,6.1,5.6,6.1,4.2,'Medium','','',''),('Tonga','TON',7.7,0.1,8,6.2,0.5,3.8,5.2,0,0,0,3,3.7,'4.4',10,5.5,0,2.1,0.8,10,4.2,5.9,3.5,4.6,'5.8',4.7,5.3,2.8,0.2,5.3,2.8,4.2,3.9,'Medium','','',''),('Trinidad and Tobago','TTO',6.3,0.3,0,2.4,3.1,4.9,3.2,0.2,0,0.1,1.8,1.7,'4.3',0.2,2,5.2,0.2,1.3,2.7,1.7,1.5,3.6,2.8,'4.4',5.3,4.9,1.4,0.4,1.8,1.2,3.3,2.6,'Low','','',''),('Tunisia','TUN',5.7,3.8,7.5,0,4.4,2.8,4.4,3.6,0,2.5,3.5,2.5,'3',1.5,2.4,2,0.3,0.9,0.1,0.1,0.4,1.2,1.8,'6.4',5.5,6,2.9,2.7,3.7,3.1,4.7,3.1,'Low','','',''),('Turkey','TUR',9.7,5.7,7,0,2.8,6.2,6.2,9.9,9,9,7.9,1.9,'4.2',0.5,2.1,9.4,0.1,0.6,0.1,0.1,0.2,6.8,4.9,'2.1',5.6,3.9,2.3,1.8,3.2,2.4,3.2,5,'High','','',''),('Tuvalu','TUV',0.1,0.1,8.3,0.1,0.5,4.2,3,0,0,0,1.6,4.4,'3.5',7.6,5,0,7.5,1.9,0,4.2,4,2.2,3.7,'x',6.4,6.4,3.9,0.6,6,3.5,5.1,3.1,'Low','','',''),('Tanzania','TZA',4.8,5.8,5.9,0.8,5.3,6.6,5.1,2.9,0,2,3.7,8.3,'5.6',1.4,5.9,6.4,5.4,3.7,1.8,6.1,4.4,5.5,5.7,'3.5',6.4,5,6.1,8.6,6.6,7.1,6.2,5.1,'High','','',''),('Uganda','UGA',4,5.1,0,0,6,7.8,4.4,9.2,0,6.4,5.5,8.3,'5.8',2.6,6.3,8.8,6.4,3,0.3,9,5.7,7.6,7,'x',6.7,6.7,6.3,9,6.2,7.2,7,6.5,'Very High','','',''),('Ukraine','UKR',2.5,7.1,0,0,2.6,4.2,3.2,10,7,7,5.4,1.6,'2.1',1.7,1.8,8,1.2,0.7,0.1,2.2,1.1,5.5,3.9,'x',6.4,6.4,1.9,1.4,4,2.4,4.7,4.6,'Medium','','',''),('Uruguay','URY',0.3,3.9,0,0,2,3,1.7,0,0,0,0.9,1.8,'3.7',0.1,1.9,4.2,0.7,0.8,0.3,1.3,0.8,2.7,2.3,'4',3.4,3.7,1.4,2.4,1.1,1.6,2.7,1.8,'Very Low','','',''),('United States of America','USA',7.9,6.4,7.9,7.6,4.4,4,6.6,8.4,0,5.9,6.3,0,'3.3',0,0.8,7.2,0.3,0.3,0.1,0.2,0.2,4.6,2.9,'3',2.5,2.8,1.6,1,1.2,1.3,2.1,3.4,'Low','','',''),('Uzbekistan','UZB',8.1,6.3,0,0,6.6,6,5.2,2.8,0,2,3.8,3.8,'4',2,3.4,0,0.5,1.1,0.2,1.6,0.9,0.5,2.1,'2.6',6.8,4.7,2.8,2.9,3.3,3,3.9,3.1,'Low','','',''),('Saint Vincent and the Grenadines','VCT',5.1,0.1,0,4.3,0.5,4.1,2.6,0,0,0,1.4,3.4,'x',1.4,2.7,0,0.1,1.3,0,2.1,0.9,0.5,1.7,'x',4.4,4.4,4.4,0.8,3.1,2.8,3.6,2,'Low','','',''),('Venezuela','VEN',9.2,5.6,6.8,4.6,2.1,5.4,6.1,4.4,0,3.1,4.8,3.5,'5.8',0.2,3.3,5,1.5,1.3,0,8.4,3.8,4.4,3.9,'2.5',8.3,5.4,2.5,3.6,6.7,4.3,4.9,4.5,'Medium','','',''),('Viet Nam','VNM',4.1,10,7.4,7.9,4.3,6.8,7.4,3.2,0,2.2,5.4,4.5,'3.5',1.1,3.4,0,1.1,2.3,0.5,1.8,1.4,0.7,2.2,'4.2',5.7,5,1.7,3.5,5.1,3.4,4.2,3.7,'Medium','','',''),('Vanuatu','VUT',7.7,0.1,8.5,4.5,5,4.4,5.6,0,0,0,3.3,6.1,'3.1',6.7,5.5,0,3.6,2.3,0.6,2.8,2.4,1.3,3.7,'5.4',5.7,5.6,4.9,6.1,5.7,5.6,5.6,4.1,'Medium','','',''),('Samoa','WSM',4.3,0.1,6.9,4.4,0.5,2.7,3.5,0,0,0,1.9,3.9,'4.2',8.5,5.1,0,5.1,1,0.7,1.3,2.2,1.2,3.4,'4.6',3.8,4.2,3.5,1.7,7.1,4.1,4.2,3,'Low','','',''),('Yemen','YEM',2.1,4.8,5.5,0,4.7,6.9,4.3,10,10,10,8.4,8.8,'6.5',5.1,7.3,10,1.7,6.6,1.6,8.6,5.5,8.6,8,'8.5',9,8.8,6.2,7.2,6.9,6.8,8,8.1,'Very High','','',''),('South Africa','ZAF',2,5,4.9,0.4,8.8,4.7,4.9,7.8,0,5.5,5.2,4.6,'7.6',0.3,4.3,6.6,5.8,2,0.6,2.1,2.9,5,4.7,'3.9',5,4.5,2.5,3.9,5.3,3.9,4.2,4.7,'Medium','','',''),('Zambia','ZMB',2.8,5.5,0,0,4.2,6.4,3.5,1.5,0,1.1,2.4,7.7,'7.6',1.4,6.1,5.3,6.9,3.5,0,7.7,5.2,5.3,5.7,'3.5',6.4,5,5.8,8.6,6.2,6.9,6,4.3,'Medium','','',''),('Zimbabwe','ZWE',2.2,6,0,0.4,9,4.8,4.7,4.1,0,2.9,3.9,7.2,'5.9',2.1,5.6,4.1,5.8,2.9,10,8.1,7.6,6.1,5.9,'2.6',7.5,5.1,5.3,7.7,6.7,6.6,5.9,5.1,'High','','','');
/*!40000 ALTER TABLE `risk` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-14  8:05:40
