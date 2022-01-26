-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: covid19
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `action`
--

DROP TABLE IF EXISTS `action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `action` (
  `date` date NOT NULL,
  `person_id` char(3) NOT NULL,
  `status_id` char(1) NOT NULL,
  `country_id` char(1) NOT NULL,
  PRIMARY KEY (`date`,`person_id`),
  KEY `person_id` (`person_id`),
  KEY `status_id` (`status_id`),
  KEY `country_id` (`country_id`),
  CONSTRAINT `action_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `persons` (`person_id`),
  CONSTRAINT `action_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`),
  CONSTRAINT `action_ibfk_3` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `action`
--

LOCK TABLES `action` WRITE;
/*!40000 ALTER TABLE `action` DISABLE KEYS */;
INSERT INTO `action` VALUES ('2020-09-01','001','2','1'),('2020-09-01','002','2','2'),('2020-09-01','003','2','2'),('2020-09-01','004','2','2'),('2020-09-01','005','2','2'),('2020-09-01','006','2','2'),('2020-09-01','007','2','3'),('2020-09-01','008','2','3'),('2020-09-01','009','2','3'),('2020-09-02','010','2','1'),('2020-09-02','011','2','1'),('2020-09-02','012','2','2'),('2020-09-02','013','2','2'),('2020-09-02','014','2','2'),('2020-09-02','015','2','2'),('2020-09-02','016','2','2'),('2020-09-02','017','2','2'),('2020-09-02','018','2','2'),('2020-09-02','019','2','2'),('2020-09-02','020','2','2'),('2020-09-02','021','2','3'),('2020-09-03','022','2','1'),('2020-09-03','023','2','1'),('2020-09-03','024','2','1'),('2020-09-03','025','2','1'),('2020-09-03','026','2','2'),('2020-09-04','003','0','2'),('2020-09-04','006','0','2'),('2020-09-04','027','2','2'),('2020-09-04','028','2','2'),('2020-09-04','029','2','2'),('2020-09-04','030','2','3'),('2020-09-04','031','2','1'),('2020-09-05','001','1','1'),('2020-09-05','002','1','2'),('2020-09-05','007','1','3'),('2020-09-05','008','0','3'),('2020-09-05','016','0','2'),('2020-09-05','032','2','1'),('2020-09-05','033','2','1'),('2020-09-05','034','2','2'),('2020-09-05','035','2','2'),('2020-09-05','036','2','2'),('2020-09-05','037','2','3'),('2020-09-05','038','2','3'),('2020-09-06','013','0','2'),('2020-09-06','015','0','2'),('2020-09-06','039','2','4'),('2020-09-06','040','2','3'),('2020-09-06','041','2','1'),('2020-09-06','042','2','2'),('2020-09-07','028','0','2'),('2020-09-07','029','0','2'),('2020-09-07','043','2','4'),('2020-09-07','044','2','4'),('2020-09-07','045','2','4'),('2020-09-07','046','2','4'),('2020-09-07','047','2','2'),('2020-09-07','048','2','2'),('2020-09-07','049','2','1'),('2020-09-08','050','2','4'),('2020-09-08','051','2','4'),('2020-09-08','052','2','4'),('2020-09-08','053','2','4'),('2020-09-08','054','2','4'),('2020-09-08','055','2','3'),('2020-09-09','056','2','4'),('2020-09-09','057','2','4'),('2020-09-09','058','2','4'),('2020-09-09','059','2','4'),('2020-09-09','060','2','1'),('2020-09-10','037','1','3'),('2020-09-10','044','0','4'),('2020-09-10','045','0','4'),('2020-09-10','061','2','2'),('2020-09-10','062','2','2'),('2020-09-10','063','2','2'),('2020-09-10','064','2','4'),('2020-09-10','065','2','4'),('2020-09-10','066','2','4'),('2020-09-10','067','2','4'),('2020-09-10','068','2','4'),('2020-09-10','069','2','3'),('2020-09-10','070','2','3'),('2020-09-10','071','2','1'),('2020-09-11','023','1','1'),('2020-09-11','072','2','4'),('2020-09-11','073','2','4'),('2020-09-11','074','2','4'),('2020-09-11','075','2','4'),('2020-09-11','076','2','2'),('2020-09-11','077','2','3'),('2020-09-11','078','2','1'),('2020-09-12','079','2','4'),('2020-09-12','080','2','4'),('2020-09-12','081','2','4'),('2020-09-12','082','2','4'),('2020-09-12','083','2','2'),('2020-09-12','084','2','2'),('2020-09-12','085','2','3'),('2020-09-13','032','1','1'),('2020-09-13','086','2','4'),('2020-09-13','087','2','4'),('2020-09-13','088','2','4'),('2020-09-13','089','2','4'),('2020-09-13','090','2','1'),('2020-09-13','091','2','1'),('2020-09-14','092','2','2'),('2020-09-14','093','2','2'),('2020-09-14','094','2','4'),('2020-09-14','095','2','4'),('2020-09-14','096','2','4'),('2020-09-14','097','2','4'),('2020-09-15','057','0','4'),('2020-09-15','059','0','4'),('2020-09-15','098','2','2'),('2020-09-15','099','2','2'),('2020-09-15','100','2','2'),('2020-09-15','101','2','4'),('2020-09-15','102','2','4'),('2020-09-16','042','0','2'),('2020-09-16','076','0','2'),('2020-09-16','103','2','4'),('2020-09-16','104','2','4'),('2020-09-16','105','2','4'),('2020-09-16','106','2','2'),('2020-09-16','107','2','4'),('2020-09-17','108','2','4'),('2020-09-17','109','2','4'),('2020-09-17','110','2','1'),('2020-09-17','111','2','3'),('2020-09-18','065','1','4'),('2020-09-18','070','0','3'),('2020-09-18','112','2','4'),('2020-09-18','113','2','4'),('2020-09-18','114','2','4'),('2020-09-18','115','2','4'),('2020-09-18','116','2','4'),('2020-09-19','076','0','2'),('2020-09-19','079','1','4'),('2020-09-19','080','1','4'),('2020-09-19','117','2','2'),('2020-09-19','118','2','2'),('2020-09-19','119','2','3'),('2020-09-19','120','2','4'),('2020-09-19','121','2','4'),('2020-09-19','122','2','4'),('2020-09-20','123','2','4'),('2020-09-20','124','2','4'),('2020-09-20','125','2','4'),('2020-09-20','126','2','2'),('2020-09-20','127','2','1'),('2020-09-21','050','1','4'),('2020-09-21','053','1','4'),('2020-09-21','128','2','4'),('2020-09-21','129','2','4'),('2020-09-21','130','2','4'),('2020-09-21','131','2','2'),('2020-09-22','086','0','4'),('2020-09-22','089','0','4'),('2020-09-22','090','0','1'),('2020-09-22','132','2','1'),('2020-09-22','133','2','1'),('2020-09-22','134','2','4'),('2020-09-22','135','2','3'),('2020-09-23','104','1','4'),('2020-09-23','110','0','1'),('2020-09-23','111','0','3'),('2020-09-23','136','2','2'),('2020-09-23','137','2','2'),('2020-09-23','138','2','2'),('2020-09-23','139','2','4'),('2020-09-23','140','2','4'),('2020-09-24','094','1','4'),('2020-09-24','118','1','3'),('2020-09-24','123','0','4'),('2020-09-24','127','0','1'),('2020-09-24','141','2','4'),('2020-09-24','142','2','4'),('2020-09-24','143','2','1'),('2020-09-24','144','2','2'),('2020-09-24','145','2','3'),('2020-09-24','146','2','4'),('2020-09-25','026','1','2'),('2020-09-25','049','1','1'),('2020-09-25','121','0','4'),('2020-09-25','124','0','4'),('2020-09-25','147','2','2'),('2020-09-25','148','2','2'),('2020-09-25','149','2','4'),('2020-09-25','150','2','3'),('2020-09-25','151','2','4'),('2020-09-25','152','2','4'),('2020-09-26','097','0','4'),('2020-09-26','140','1','4'),('2020-09-26','153','2','4'),('2020-09-26','154','2','3'),('2020-09-26','155','2','4'),('2020-09-26','156','2','4'),('2020-09-27','141','0','4'),('2020-09-27','150','0','3'),('2020-09-27','157','2','3'),('2020-09-27','158','2','3'),('2020-09-27','159','2','4'),('2020-09-27','160','2','4'),('2020-09-27','161','2','4'),('2020-09-27','162','2','1'),('2020-09-28','163','2','4'),('2020-09-28','164','2','4'),('2020-09-28','165','2','4'),('2020-09-29','135','0','3'),('2020-09-29','136','0','2'),('2020-09-29','159','0','4'),('2020-09-29','166','2','4'),('2020-09-29','167','2','4'),('2020-09-29','168','2','4'),('2020-09-29','169','2','4'),('2020-09-29','170','2','1'),('2020-09-29','171','2','3'),('2020-09-30','172','2','4'),('2020-09-30','173','2','4'),('2020-09-30','174','2','4'),('2020-09-30','175','2','1');
/*!40000 ALTER TABLE `action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `country_id` char(1) NOT NULL,
  `country` varchar(100) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES ('1','THAILAND'),('2','CHINA'),('3','JAPAN'),('4','AMERICA');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nationality`
--

DROP TABLE IF EXISTS `nationality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nationality` (
  `nationality_id` char(1) NOT NULL,
  `nationality` varchar(100) NOT NULL,
  PRIMARY KEY (`nationality_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nationality`
--

LOCK TABLES `nationality` WRITE;
/*!40000 ALTER TABLE `nationality` DISABLE KEYS */;
INSERT INTO `nationality` VALUES ('1','THAI'),('2','CHINESE'),('3','JAPANESE'),('4','AMERICAN');
/*!40000 ALTER TABLE `nationality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persons`
--

DROP TABLE IF EXISTS `persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persons` (
  `person_id` char(3) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status_id` char(1) NOT NULL,
  `nationality_id` char(1) NOT NULL,
  PRIMARY KEY (`person_id`),
  KEY `status_id` (`status_id`),
  KEY `persons_ibfk_2` (`nationality_id`),
  CONSTRAINT `persons_ibfk_1` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`),
  CONSTRAINT `persons_ibfk_2` FOREIGN KEY (`nationality_id`) REFERENCES `nationality` (`nationality_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persons`
--

LOCK TABLES `persons` WRITE;
/*!40000 ALTER TABLE `persons` DISABLE KEYS */;
INSERT INTO `persons` VALUES ('001','Somsee Banyen','1','1'),('002','Jia yi','1','2'),('003','Jang won','0','2'),('004','Xin won','2','2'),('005','Zi xin','2','2'),('006','Yin hawa','0','2'),('007','Ngayato ryoju','1','3'),('008','Yui maya','0','3'),('009','Kai sakayano','2','3'),('010','Katin ngamta','2','1'),('011','Kwankaw ngamta','2','1'),('012','Lee jew','2','2'),('013','Xi nan','0','2'),('014','Xi ngean','2','2'),('015','Xao cherng','0','2'),('016','Jin poo','0','2'),('017','Ferng min','2','2'),('018','Tai ehayon','2','2'),('019','Pao jua','2','2'),('020','Lin li sha','2','2'),('021','Mamorou kenji','2','3'),('022','Mavin sukjai','2','1'),('023','Somsuk marayatdee','1','1'),('024','Pimonwan sarrow','2','1'),('025','Kamarol yamban','2','1'),('026','Yang liang bao','1','2'),('027','Lin ge min','2','2'),('028','Lee yu','0','2'),('029','Lee e shan','0','2'),('030','Makoto seito','2','3'),('031','Malee mali','2','1'),('032','Pakawato sangkang','1','1'),('033','Hiwkaw laewkup','2','1'),('034','Chi chiew hua','2','2'),('035','Rong shen','2','2'),('036','Kao lan','2','2'),('037','Yoshi mata','1','3'),('038','Watari soe','2','3'),('039','Jenifer adison','2','4'),('040','Rika shoyo','2','3'),('041','Natchaya tawanchai','2','1'),('042','Qi Qi','0','2'),('043','Tom adwerd','2','4'),('044','Lucy ludenberk','0','4'),('045','Sofia popper','0','4'),('046','Nikcorus makus','2','4'),('047','Chi qon','2','2'),('048','Lee cheing','2','2'),('049','Moodang fundee','1','1'),('050','Jame camera','1','4'),('051','Mikael bar','2','4'),('052','Jayson titan','2','4'),('053','Steven furry','1','4'),('054','Adam furry','2','4'),('055','Mikan kosei','2','3'),('056','Carl Mark','2','4'),('057','Alice umbella','0','4'),('058','Jonathan makof','2','4'),('059','Adam meneger','0','4'),('060','Adsawin rattikan','2','1'),('061','Lee man','2','2'),('062','Xiang li ling','2','2'),('063','Hong fu','2','2'),('064','Kamero lopes','2','4'),('065','Cavin kim','1','4'),('066','Kevin rov','2','4'),('067','Violette chocalat','2','4'),('068','Thene novak','2','4'),('069','Maya loku','2','3'),('070','Suneo mara','0','3'),('071','Sommhai yurod','2','1'),('072','Sonia temon','2','4'),('073','Jame ramos','2','4'),('074','Teodor lamires','2','4'),('075','Erwin benjamin','2','4'),('076','Chang lee hen','0','2'),('077','Miki sawaru','2','3'),('078','Kamin jedyodfah','2','1'),('079','Karen odear','1','4'),('080','Cercie gif','1','4'),('081','Rarmoss bee','2','4'),('082','Bobbie black','2','4'),('083','Shen li','2','2'),('084','Fang ye','2','2'),('085','Maru figiyo','2','3'),('086','Smith jackson','0','4'),('087','Jack sorrow','2','4'),('088','Hector babasar','2','4'),('089','Sarah radear','0','4'),('090','Tawan chay','0','1'),('091','Manee mana','2','1'),('092','Hong lee jeaw','2','2'),('093','Chi fu','2','2'),('094','Kim wegus','1','4'),('095','Romeo julia','2','4'),('096','Sam vick','2','4'),('097','Mickky mouse','0','4'),('098','Que mee','2','2'),('099','Qi chi','2','2'),('100','Qwan san','2','2'),('101','Moss jim','2','4'),('102','Jim gorden','2','4'),('103','Abigel bartos','2','4'),('104','Bob tommas','1','4'),('105','Ben ten','2','4'),('106','Lao pi','2','2'),('107','Karl kervin','2','4'),('108','Gor jennis','2','4'),('109','Jarvis jonathan','2','4'),('110','Korraglod daodin','0','1'),('111','Mukurou yai','0','3'),('112','Lewis bogis','2','4'),('113','Scottie myyer','2','4'),('114','Simon frank','2','4'),('115','Danneil rawil','2','4'),('116','Mile wen','2','4'),('117','Lin ping','2','2'),('118','Lin lee','1','2'),('119','Tosaka yui','2','3'),('120','Fitsher morou','2','4'),('121','Hargen james','0','4'),('122','Jane vin','2','4'),('123','Blef  bariver','0','4'),('124','Camero detreth','0','4'),('125','Carrol ader','2','4'),('126','Ma jing jing','2','2'),('127','Sarawat podang','0','1'),('128','Puwder devon','2','4'),('129','Ben Dorean','2','4'),('130','Stan karas','2','4'),('131','In lee man','2','2'),('132','Paleena kaicook','2','1'),('133','Payut jandara','2','1'),('134','Donal duk','2','4'),('135','Lumi todaka','0','3'),('136','Xin ye','0','2'),('137','Yu tong','2','2'),('138','Jia yi','2','2'),('139','Anol sawakeker','2','4'),('140','Johnny daroof','1','4'),('141','Denver serris','0','4'),('142','Anton ego','2','4'),('143','Janratee tasawang','2','1'),('144','Moo tan','2','2'),('145','Kiru mura','2','3'),('146','Max simof','2','4'),('147','Pai ser','2','2'),('148','Lan ser','2','2'),('149','Elon mas','2','4'),('150','Mona wata','0','3'),('151','Tomas alva','2','4'),('152','Rebecca sherli','2','4'),('153','Roger walker','2','4'),('154','Raino josu','2','3'),('155','Rojo neeno','2','4'),('156','Snep serverus','2','4'),('157','Josen ato','2','3'),('158','Eiri toto','2','3'),('159','Jame norol','0','4'),('160','Rook cage','2','4'),('161','Merrous bone','2','4'),('162','Mana manee','2','1'),('163','Jim camero','2','4'),('164','Kara poppy','2','4'),('165','Marry jane','2','4'),('166','Larry jone','2','4'),('167','Roy macgeger','2','4'),('168','Adison lamaker','2','4'),('169','Jackle martin','2','4'),('170','Piamjai meedee','2','1'),('171','Raku akashi','2','3'),('172','Johnson steve','2','4'),('173','Huge jackmen','2','4'),('174','Nevis kiss','2','4'),('175','Kodsakorn Jamjan','2','1');
/*!40000 ALTER TABLE `persons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `status_id` char(1) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES ('0','DEAD'),('1','NEGATIVE'),('2','POSITIVE');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-23 18:11:53
