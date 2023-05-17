-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: localhost    Database: ticketboo
-- ------------------------------------------------------
-- Server version	8.0.31

-- DROP DATABASE IF EXISTS ticketboo;
CREATE DATABASE IF NOT EXISTS `ticketboo`;
USE `ticketboo`;

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
-- Table structure for table `admin_info`
--

-- DROP TABLE IF EXISTS `admin_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_info` (
  `admin_code` varchar(3) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `gender` char(1) NOT NULL,
  `password` varchar(100) NOT NULL,
  `login_log` datetime NOT NULL,
  `role` varchar(100) NOT NULL,
  PRIMARY KEY (`admin_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_info`
--

LOCK TABLES `admin_info` WRITE;
/*!40000 ALTER TABLE `admin_info` DISABLE KEYS */;
INSERT INTO `admin_info` VALUES ('001','Wudhichart','Sawangphol','1980-12-11','M','Wudhichart','2023-03-12 12:35:20','Admistrator'),('002','Jidapa','Kraisangka','1979-09-01','F','Jidapa','2023-03-24 09:46:17','Admistrator'),('003','Pisit','Praiwattana','1979-04-24','M','Pisit','2023-03-25 23:08:56','Admistrator'),('120','Suphavadee','Cheng','2002-11-15','F','Suphavadee','2023-04-01 20:29:07','Admistrator'),('179','Ponnapassorn','Iamborisut','2003-02-24','F','Ponnapassorn','2023-04-02 04:46:19','Admistrator'),('181','Thadeeya','Duangkaew','2001-08-26','F','Thadeeya','2023-04-02 10:37:58','Admistrator'),('210','Ravikarn','Jarungjitvittawas','2003-10-02','F','Ravikarn','2023-04-06 16:24:31','Admistrator'),('999','Satuuu','Kinnokuniya','2000-04-27','M','thisismypassword','2023-04-25 01:36:40','Admistrator');
/*!40000 ALTER TABLE `admin_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

-- DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket` (
  `ticket_code` varchar(10) NOT NULL,
  `ticket_title` varchar(200) NOT NULL,
  `ticket_img` mediumtext NOT NULL,
  `ticket_desc` varchar(500) NOT NULL,
  `ticket_loca` varchar(200) NOT NULL,
  `ticket_date` date NOT NULL,
  `ticket_time` time NOT NULL,
  `ticket_price` int NOT NULL,
  PRIMARY KEY (`ticket_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES ('TK_01','The 1975 Live in Bangkok','/homepagePic/card/1975con.jpg','Mangosteenfest Presents \"THE 1975 : At their very best\" live in Bangkok 2023','Impact Arena','2023-04-04','19:00:00',5000),('TK_02','WATERBOMB BANGKOK','/images/WaterBomb-Poster.jpg','Definitely the best summer festival from South Korea, WATERBOMB is on the beginning its 1st WORLD TOUR starting from BANGKOK. Join the same team with your favorite artists and lead your team to the victory.','Thunderdome Stadium','2023-04-13','12:00:00',4600),('TK_03','ABOUT DAMN TIME','/images/Ph1-Poster.jpg','IMC Live Global is proud to present 2023 pH-1 ABOUT DAMN TIME WORLD TOUR in Bangkok on 19 March 2022, 7 pm at the centralwOrld LIVE.','CentralwOrld LIVE','2023-03-19','19:00:00',3800),('TK_04','Arctic Monkeys Live in Bangkok 2023','/homepagePic/card/arcMon.png','The wait is over! Get ready for the indie rock icon of the era and their first live show in Thailand “ARCTIC MONKEYS LIVE IN BANGKOK”, 9 March 2023 at Bitec Hall.','BITEC Bangna','2023-03-09','18:00:00',6000),('TK_05','Pelupo Festival 2023','/images/Pelupo-Poster.png','Leave your worries behind you and prepare to join us at PELUPO International Music Festival at The Fields at Siam Country Club in Chonburi on March 11, 2023.','Siam Country Club, Pattaya, Thailand','2023-03-11','15:00:00',4000),('TK_13','CORY WONG LIVE IN JAPANNN','https://s3-ap-southeast-1.amazonaws.com/tm-img-poster-event/9f3ebb70b0d311ed911101117567899b.jpg?format=basic&resize=w425,h610','MANGO Presents \"THE 1975 : At their very best\" live in Bangkok 2023','MOON WALK STUDIO','2023-06-02','20:00:00',2300);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-25  8:39:33
