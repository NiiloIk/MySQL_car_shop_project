-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: carshop
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `carshop`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `carshop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `carshop`;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `address_id` int unsigned NOT NULL AUTO_INCREMENT,
  `city` varchar(45) NOT NULL,
  `street` varchar(45) NOT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'Hyvinkää','Kauppalankatu 1000'),(2,'Riihimäki','Hämeenkatu 200'),(3,'Turku','Viinamäenkatu 123'),(4,'Turku','Hämeenkatu 1111'),(5,'Riihimäki','Hämeenkatu 2222'),(6,'Hyvinkää','Hämeenkatu 3333'),(17,'Riihimäki','Orvokkikuja 65'),(18,'Riihimäki','Veneentekijäntie 10'),(19,'Riihimäki','Ryynikatu 63'),(20,'Riihimäki','Kirkkokatu 99'),(21,'Riihimäki','Tähtikuja 76'),(22,'Riihimäki','Kielokuja 58'),(23,'Riihimäki','Tammikuja 95'),(24,'Riihimäki','Apilakuja 15'),(25,'Riihimäki','Veneentekijäntie 84'),(26,'Riihimäki','Orvokkikuja 28'),(27,'Riihimäki','Apilakuja 60'),(28,'Riihimäki','Pihlajatie 77'),(29,'Riihimäki','Rautatienkatu 70'),(30,'Riihimäki','Puronvarsi 3'),(31,'Hyvinkää','Omenatie 29'),(32,'Hyvinkää','Vanamojärventie 44'),(33,'Hyvinkää','Lehtikuja 36'),(34,'Hyvinkää','Ruispolku 100'),(35,'Hyvinkää','Vanamojärventie 19'),(36,'Hyvinkää','Kirkkokatu 60'),(37,'Hyvinkää','Valkosipulikuja 27'),(38,'Hyvinkää','Aurorankuja 85'),(39,'Hyvinkää','Puronvarsi 100'),(40,'Hyvinkää','Mansikkatie 30'),(41,'Hyvinkää','Esimerkkikatu 89'),(42,'Hyvinkää','Sateenkaarenkatu 12'),(43,'Hyvinkää','Ryynikatu 87'),(44,'Hyvinkää','Riihitie 82'),(45,'Hyvinkää','Kesäkatu 50'),(46,'Turku','Esimerkkikatu 89'),(47,'Turku','Sateenkaarenkatu 12'),(48,'Turku','Ryynikatu 87'),(49,'Turku','Riihitie 82'),(50,'Turku','Kesäkatu 50'),(51,'Turku','Kultakuja 64'),(52,'Turku','Apilakuja 96'),(53,'Turku',' Esimerkkikatu 50'),(54,'Turku',' Aurorankuja 33'),(55,'Turku','  Koulukatu 85'),(56,'Turku','Nokkostie 84'),(57,'Turku','Pajatie 49'),(58,'Turku','Puistotie 48'),(59,'Turku','Orvokkikuja 62'),(60,'Turku','Mansikkatie 89'),(61,'Turku','Aurorankuja 62'),(62,'Turku','Riihitie 87'),(63,'Turku','Esimerkkikatu 29'),(64,'Turku','Aurinkotie 91'),(65,'Turku','Kesäkatu 65'),(66,'Turku','Rautatienkatu 67'),(67,'Turku','Kastanjatie 59'),(68,'Turku','Apilakuja 68'),(69,'Turku','Tähtikuja 42'),(70,'Turku','Koulukatu 93'),(71,'Turku','Tulppaanimäki 89'),(72,'Turku','Pihlajatie 32'),(73,'Turku','Lehtikuja 46'),(74,'Turku','Aurinkotie 49'),(75,'Turku','Kesäkatu 5'),(76,'Turku','Karpalotie 70'),(77,'Turku','Tulppaanimäki 31'),(78,'Turku','Nokkostie 12'),(79,'Turku','Riihitie 88'),(80,'Turku','Ryynikatu 31'),(81,'Turku','Pellavatie 53'),(82,'Turku','Veneentekijäntie 94'),(83,'Turku','Aurinkotie 68'),(84,'Turku','Ruusukatu 93'),(85,'Turku','Apilakuja 58'),(86,'Turku','Sepäntie 87'),(87,'Turku','Omenatie 78'),(88,'Turku','Sateenkaarenkatu 56'),(89,'Turku','Riihitie 61'),(90,'Turku','Kukkatie 17'),(91,'Turku','Omenatie 98'),(92,'Turku','Kirkkokatu 29'),(93,'Turku','Tammikuja 75'),(94,'Turku','Haapatie 59'),(95,'Turku','Ryynikatu 31'),(96,'Turku','Tähtikuja 90'),(97,'Turku','Tähtikuja 76'),(98,'Turku','Kultakuja 75'),(99,'Turku','Vanamojärventie 24'),(100,'Turku','Kultakuja 96'),(101,'Turku','Esimerkkikatu 22'),(102,'Turku','Kukkatie 70'),(103,'Turku','Pajatie 28'),(104,'Turku','Rautatienkatu 73'),(105,'Turku','Sipulikuja 100'),(106,'Turku','Haapatie 20'),(107,'Turku','Kukkatie 47'),(108,'Turku','Kultakuja 34'),(109,'Turku','Lumikuja 35'),(110,'Turku','Omenatie 64'),(111,'Turku','Pellavatie 82'),(112,'Turku','Pellavatie 90'),(113,'Turku','Koulukatu 63'),(114,'Turku','Vanamojärventie 33'),(115,'Turku','Kuusitie 94'),(116,'Turku','Pellavatie 83'),(117,'Turku','Lehtikuja 52'),(118,'Turku','Valkosipulikuja 14'),(119,'Turku','Katajatie 87'),(120,'Turku','Sinikuja 24'),(121,'Turku','Katajatie 16'),(122,'Turku','Orvokkikuja 6'),(123,'Turku','Metsäpolku 5'),(124,'Turku','Metsäpolku 57'),(125,'Turku','Kirkkokatu 75'),(126,'Hyvinkää','Lehtikuja 92'),(127,'Hyvinkää','Riihitie 91'),(128,'Turku','Lehtikuja 2'),(129,'Riihimäki','Tähtikuja 63'),(130,'Riihimäki','Sinikuja 73'),(131,'Riihimäki','Ruispolku 33'),(132,'Riihimäki','Omenatie 93'),(133,'Riihimäki','Riihitie 66'),(134,'Riihimäki','Välskärintie 72'),(135,'Riihimäki','Nokkostie 73'),(136,'Riihimäki','Tähtikuja 91'),(137,'Riihimäki','Katajatie 37'),(138,'Riihimäki','Veneentekijäntie 43'),(139,'Riihimäki','Nokkostie 78'),(140,'Riihimäki','Tähtikuja 63'),(141,'Riihimäki','Metsäpolku 36'),(142,'Riihimäki','Sateenkaarenkatu 67'),(143,'Riihimäki','Metsäpolku 82'),(144,'Riihimäki','Lumikuja 58'),(145,'Riihimäki','Tähtikuja 11'),(146,'Riihimäki','Kirkkokatu 41'),(147,'Riihimäki','Sipulikuja 93'),(148,'Riihimäki','Kesäkatu 3'),(149,'Riihimäki','Nokkostie 45'),(150,'Riihimäki','Sepäntie 18'),(151,'Riihimäki','Ruusukatu 43'),(152,'Riihimäki','Aurinkotie 98'),(153,'Riihimäki','Puistotie 70'),(154,'Riihimäki','Kevätpolku 46'),(155,'Turku','Pihlajatie 79'),(156,'Hyvinkää','Lumikuja 59'),(157,'Hyvinkää','Kivimäentie 11'),(158,'Hyvinkää','Apilakuja 53'),(159,'Hyvinkää','Sipulikuja 72'),(160,'Hyvinkää','Ruispolku 66'),(161,'Hyvinkää','Lumikuja 24'),(162,'Hyvinkää','Valkosipulikuja 73'),(163,'Hyvinkää','Puronvarsi 43'),(164,'Hyvinkää','Ruispolku 55'),(165,'Hyvinkää','Kirkkokatu 22'),(166,'Hyvinkää','Aurorankuja 93'),(167,'Hyvinkää','Sateenkaarenkatu 22'),(168,'Hyvinkää','Sinikuja 31'),(169,'Hyvinkää','Nokkostie 38'),(170,'Hyvinkää','Sipulikuja 35'),(171,'Hyvinkää','Mansikkatie 71'),(172,'Hyvinkää','Kivimäentie 1'),(173,'Hyvinkää','Puistotie 97'),(174,'Hyvinkää','Haapatie 74'),(175,'Hyvinkää','Kivimäentie 71'),(176,'Hyvinkää','Aurinkotie 42'),(177,'Hyvinkää','Vesakkotie 89'),(178,'Hyvinkää','Omenatie 53'),(179,'Riihimäki','Vesakkotie 63'),(180,'Riihimäki','Aurorankuja 20'),(181,'Riihimäki','Kivimäentie 32'),(182,'Riihimäki','Pellavatie 31'),(183,'Riihimäki','Tähtikuja 68'),(184,'Riihimäki','Kevätpolku 27'),(185,'Riihimäki','Pihlajatie 75'),(186,'Riihimäki','Riihitie 63'),(187,'Riihimäki','Kastanjatie 26'),(188,'Riihimäki','Mansikkatie 7'),(189,'Riihimäki','Karpalotie 8'),(190,'Riihimäki','Vihertie 51'),(191,'Riihimäki','Rantatie 74'),(192,'Riihimäki','Vihertie 60'),(193,'Riihimäki','Kielokuja 31'),(194,'Riihimäki','Pihlajatie 100'),(195,'Riihimäki','Esimerkkikatu 81'),(196,'Riihimäki','Katajatie 24'),(197,'Riihimäki','Kirkkokatu 63'),(198,'Riihimäki','Vihertie 44'),(199,'Riihimäki','Vihertie 63'),(200,'Turku','Ruispolku 97'),(201,'Turku','Nokkostie 5'),(202,'Turku','Kastanjatie 21'),(203,'Turku','Sateenkaarenkatu 87'),(204,'Turku','Riihitie 73'),(205,'Turku','Kivimäentie 99'),(206,'Turku','Vanamojärventie 51'),(207,'Turku','Haapatie 23'),(208,'Turku','Esimerkkikatu 91'),(209,'Turku','Pellavatie 32'),(210,'Turku','Kuusitie 13'),(211,'Turku','Kukkatie 63'),(212,'Turku','Puronvarsi 48'),(213,'Turku','Aurorankuja 50'),(214,'Turku','Kirkkokatu 91'),(215,'Turku','Puronvarsi 19'),(216,'Turku','Kuusitie 41'),(217,'Turku','Puronvarsi 95'),(218,'Turku','Mansikkatie 9'),(219,'Turku','Mansikkatie 5'),(220,'Turku','Ryynikatu 23'),(221,'Turku','Asematie 89'),(222,'Turku','Apilakuja 61'),(223,'Turku','Veneentekijäntie 100'),(224,'Turku','Orvokkikuja 19'),(225,'Turku','Vanamojärventie 35'),(226,'Hyvinkää','Karpalotie 36'),(227,'Hyvinkää','Karpalotie 35'),(228,'Hyvinkää','Pihlajatie 20'),(229,'Hyvinkää','Haapatie 69'),(230,'Hyvinkää','Lehtikuja 22'),(231,'Hyvinkää','Kukkatie 6'),(232,'Hyvinkää','Valkosipulikuja 36'),(233,'Riihimäki','Ruusukatu 70'),(234,'Riihimäki','Rantatie 85'),(235,'Riihimäki','Veneentekijäntie 35'),(236,'Riihimäki','Sepäntie 65'),(237,'Riihimäki','Kielokuja 34'),(238,'Riihimäki','Vanamojärventie 98'),(239,'Riihimäki','Koulukatu 54'),(240,'Riihimäki','Kukkatie 82'),(241,'Riihimäki','Nokkostie 10');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car` (
  `car_id` int unsigned NOT NULL AUTO_INCREMENT,
  `manufacturer` varchar(45) NOT NULL,
  `model` varchar(45) NOT NULL,
  `manufacturing_year` year DEFAULT NULL,
  `distance_traveled` int DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `is_sold` tinyint(1) NOT NULL,
  `shop_id` int unsigned NOT NULL,
  `buy_price` int NOT NULL,
  `list_price` int NOT NULL,
  PRIMARY KEY (`car_id`),
  KEY `fk_carshop_idx` (`shop_id`),
  CONSTRAINT `fk_carshop` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`shop_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES (113,'Ford','Explorer',2006,334856,NULL,1,1,25747,32849),(114,'Audi','A6',2002,413915,NULL,1,1,4386,9398),(115,'Nissan','Altima',2007,314680,NULL,1,1,29717,36924),(116,'Ford','Mustang',2005,355273,NULL,1,1,19152,26143),(117,'Nissan','Altima',2003,389019,'Ei teknisiä vikoja ja erittäin vähän käytön jälkiä.',1,1,27309,33353),(118,'Audi','Q5',2016,135240,NULL,1,1,18109,22713),(119,'Ford','Explorer',2023,3061,'Sisätilat ovat erittäin siistit ja lähes uudenveroiset.',1,1,5831,8702),(120,'Volkswagen','Golf',2021,41614,'Sisätilat ovat erittäin siistit ja lähes uudenveroiset.',1,1,5737,12155),(121,'Audi','Q5',2006,335337,NULL,1,1,20498,26790),(122,'Nissan','Sentra',2000,446597,'Sisätilat ovat erittäin siistit ja lähes uudenveroiset.',1,1,6677,11223),(123,'Ford','Explorer',2017,118504,'Sisätilat ovat erittäin siistit ja lähes uudenveroiset.',1,1,28533,38195),(124,'BMW','3 Series',2001,431974,'Auto on erinomaisessa kunnossa ja hyvin huollettu.',1,1,16695,20006),(125,'Hyundai','Sonata',2001,434919,NULL,1,1,3912,6052),(126,'Honda','CR-V',2016,133132,NULL,1,1,20104,26399),(127,'Hyundai','Kona',2016,134718,NULL,1,1,28250,36488),(128,'Chevrolet','Equinox',2018,97380,'Sisätilat ovat erittäin siistit ja lähes uudenveroiset.',1,1,9864,12085),(129,'Mercedes-Benz','S-Class',2004,373852,'Auto on erinomaisessa kunnossa ja hyvin huollettu.',1,1,19008,23784),(130,'Audi','Q7',2009,275496,NULL,1,1,23941,32752),(131,'Toyota','Camry',2010,252216,NULL,1,1,6675,12702),(132,'Nissan','Sentra',2012,212434,NULL,1,1,10413,13213),(133,'Hyundai','Tucson',2006,328385,NULL,1,1,24858,30752),(134,'Toyota','Prius',2008,297563,'Ei teknisiä vikoja ja erittäin vähän käytön jälkiä.',1,2,9574,19064),(135,'Hyundai','Santa Fe',2000,449731,'Auto on erinomaisessa kunnossa ja hyvin huollettu.',1,2,10683,15378),(136,'Mercedes-Benz','GLE',2005,348926,'Sisätilat ovat erittäin siistit ja lähes uudenveroiset.',1,2,21743,27190),(137,'Hyundai','Elantra',2022,20944,NULL,1,2,21634,24558),(138,'Nissan','Pathfinder',2002,415788,'Sisätilat ovat erittäin siistit ja lähes uudenveroiset.',1,2,14310,19796),(139,'Toyota','Prius',2023,3522,'Auto on erinomaisessa kunnossa ja hyvin huollettu.',1,2,13775,15104),(140,'Mercedes-Benz','E-Class',2000,453311,NULL,1,2,5182,9894),(141,'Toyota','Highlander',2021,43917,'Sisätilat ovat erittäin siistit ja lähes uudenveroiset.',1,2,17562,20558),(142,'Chevrolet','Silverado',2004,372114,NULL,1,2,22557,24576),(143,'Nissan','Rogue',2018,94331,NULL,1,2,15707,20777),(144,'Chevrolet','Traverse',2012,214882,NULL,1,2,20460,24151),(145,'Hyundai','Kona',2023,3199,'Sisätilat ovat erittäin siistit ja lähes uudenveroiset.',1,2,28318,34251),(146,'Chevrolet','Equinox',2002,406921,'Sisätilat ovat erittäin siistit ja lähes uudenveroiset.',1,2,6239,9302),(147,'Chevrolet','Malibu',2013,200475,NULL,1,2,20314,29155),(148,'Volkswagen','Tiguan',2001,426264,NULL,1,2,11137,21060),(149,'Audi','Q7',2004,374595,'Auto on erinomaisessa kunnossa ja hyvin huollettu.',1,2,14208,22746),(150,'Volkswagen','Tiguan',2016,137763,NULL,1,2,26050,27158),(151,'Ford','Focus',2017,114255,NULL,1,2,1236,5460),(152,'Audi','A4',2021,41112,'Sisätilat ovat erittäin siistit ja lähes uudenveroiset.',1,2,3478,5094),(153,'Honda','Accord',2015,154068,NULL,1,2,5299,6599),(154,'Hyundai','Santa Fe',2003,393694,'Ei teknisiä vikoja ja erittäin vähän käytön jälkiä.',1,2,26622,31290),(155,'Volkswagen','Passat',2010,253890,'Auto on erinomaisessa kunnossa ja hyvin huollettu.',1,3,10015,11545),(156,'Audi','Q5',2016,137072,'Sisätilat ovat erittäin siistit ja lähes uudenveroiset.',1,3,9348,10687),(157,'Ford','Mustang',2019,75522,NULL,1,3,25261,27734),(158,'Hyundai','Santa Fe',2013,193216,NULL,1,3,20319,27176),(159,'Hyundai','Tucson',2006,334662,NULL,1,3,25355,31288),(160,'BMW','X5',2016,135623,'Sisätilat ovat erittäin siistit ja lähes uudenveroiset.',1,3,20112,23015),(161,'Audi','A3',2018,93302,NULL,1,3,21825,30780),(162,'Mercedes-Benz','C-Class',2017,118866,NULL,1,3,21932,31829),(163,'Toyota','Prius',2009,270103,'Ei teknisiä vikoja ja erittäin vähän käytön jälkiä.',1,3,29126,36480),(164,'Audi','A4',2005,356506,NULL,1,3,8852,11770),(165,'Toyota','Corolla',2020,54256,NULL,1,3,12071,13205),(166,'Toyota','Highlander',2018,96672,'Auto on erinomaisessa kunnossa ja hyvin huollettu.',1,3,9494,14703),(167,'Nissan','Rogue',2019,76526,'Sisätilat ovat erittäin siistit ja lähes uudenveroiset.',1,3,19232,20538),(168,'Mercedes-Benz','S-Class',2008,296179,NULL,1,3,10072,15007),(169,'Toyota','Rav4',2017,115932,'Auto on erinomaisessa kunnossa ja hyvin huollettu.',1,3,1233,10458),(170,'Toyota','Prius',2003,389567,'Sisätilat ovat erittäin siistit ja lähes uudenveroiset.',1,3,15474,24436),(171,'Hyundai','Elantra',2008,294421,'Ei teknisiä vikoja ja erittäin vähän käytön jälkiä.',1,3,3574,11206),(172,'Chevrolet','Equinox',2015,161117,NULL,1,3,7916,12629),(173,'Audi','A4',2001,427928,'Auto on erinomaisessa kunnossa ja hyvin huollettu.',1,3,9257,10937),(174,'BMW','X3',2010,255111,'Sisätilat ovat erittäin siistit ja lähes uudenveroiset.',1,3,14250,16721),(175,'Toyota','Prius',2008,298008,NULL,1,3,4432,7763),(176,'Mercedes-Benz','GLE',2010,256091,NULL,0,1,14009,20716),(177,'Chevrolet','Malibu',2019,81285,NULL,0,1,16820,19432),(178,'Nissan','Sentra',2002,415700,'Sisätilat ovat erittäin siistit ja lähes uudenveroiset.',0,1,26923,30741),(179,'Volkswagen','Golf',2014,173411,'Ei teknisiä vikoja ja erittäin vähän käytön jälkiä.',0,1,26250,35758),(180,'Nissan','Sentra',2011,239058,'Auto on erinomaisessa kunnossa ja hyvin huollettu.',0,1,28152,35852),(181,'Honda','Pilot',2017,118102,NULL,0,1,19790,22101),(182,'Mercedes-Benz','S-Class',2012,219522,'Auto on erinomaisessa kunnossa ja hyvin huollettu.',0,1,23312,27367),(183,'Chevrolet','Silverado',2010,250986,NULL,0,1,29195,36306),(184,'Chevrolet','Equinox',2009,276416,NULL,0,1,7210,15155),(185,'Hyundai','Santa Fe',2023,4839,'Sisätilat ovat erittäin siistit ja lähes uudenveroiset.',0,1,4184,10980),(186,'Mercedes-Benz','E-Class',2009,271680,NULL,0,1,22168,25615),(187,'Ford','Escape',2007,315747,NULL,0,1,7118,15025),(188,'Volkswagen','Jetta',2010,254133,'Sisätilat ovat erittäin siistit ja lähes uudenveroiset.',0,1,15578,22945),(189,'Nissan','Rogue',2021,43344,NULL,0,1,23047,31202),(190,'Nissan','Pathfinder',2018,101380,'Auto on erinomaisessa kunnossa ja hyvin huollettu.',0,2,7817,10689),(191,'Mercedes-Benz','E-Class',2006,334098,NULL,0,2,25436,34282),(192,'Ford','Explorer',2003,386487,NULL,0,2,20221,21904),(193,'Nissan','Rogue',2019,77980,'Ei teknisiä vikoja ja erittäin vähän käytön jälkiä.',0,2,18057,25445),(194,'Chevrolet','Equinox',2020,54450,NULL,0,2,7734,12605),(195,'Audi','A3',2007,316923,NULL,0,2,5744,12349),(196,'Toyota','Corolla',2011,232914,'Sisätilat ovat erittäin siistit ja lähes uudenveroiset.',0,2,27790,31099),(197,'Mercedes-Benz','S-Class',2022,16745,NULL,0,2,26092,30134),(198,'Ford','Explorer',2001,428255,'Ei teknisiä vikoja ja erittäin vähän käytön jälkiä.',0,3,13369,19353),(199,'Mercedes-Benz','C-Class',2012,211380,'Ei teknisiä vikoja ja erittäin vähän käytön jälkiä.',0,3,12823,19148),(200,'Volkswagen','Jetta',2021,35673,NULL,0,3,953,8253),(201,'Chevrolet','Malibu',2001,433194,NULL,0,3,21093,26415),(202,'Ford','Escape',2017,119444,NULL,0,3,28341,31174),(203,'Honda','Odyssey',2008,294764,NULL,0,3,26556,32173),(204,'Audi','A4',2023,620,NULL,0,3,9917,14581),(205,'BMW','5 Series',2009,278649,NULL,0,3,15611,21587),(206,'Toyota','Corolla',2020,57893,'Auto on erinomaisessa kunnossa ja hyvin huollettu.',1,3,18972,21354),(207,'Hyundai','Santa Fe',2001,431357,'Sisätilat ovat erittäin siistit ja lähes uudenveroiset.',1,3,29958,34681),(208,'Toyota','Highlander',2009,269037,NULL,1,3,29541,32221),(209,'Hyundai','Sonata',2000,446159,NULL,1,3,26135,28715),(210,'Ford','Escape',2018,100026,NULL,1,3,9111,17901),(211,'BMW','7 Series',2010,252839,NULL,1,1,21524,25145),(212,'Audi','Q5',2004,374454,'Auto on erinomaisessa kunnossa ja hyvin huollettu.',1,1,18937,25828),(213,'Toyota','Highlander',2021,42902,'Auto on erinomaisessa kunnossa ja hyvin huollettu.',1,1,20552,21788),(214,'Nissan','Rogue',2000,450036,NULL,1,1,19546,21246),(215,'Chevrolet','Traverse',2018,100160,NULL,1,1,2216,10036),(216,'Chevrolet','Equinox',2019,80631,NULL,1,1,24034,33956),(217,'Volkswagen','Golf',2007,311866,NULL,1,1,23225,31981),(218,'Ford','Mustang',2001,430486,'Ei teknisiä vikoja ja erittäin vähän käytön jälkiä.',1,2,18197,21160),(219,'Mercedes-Benz','E-Class',2016,132105,'Sisätilat ovat erittäin siistit ja lähes uudenveroiset.',1,2,19898,25869),(220,'Mercedes-Benz','GLC',2005,353151,'Auto on erinomaisessa kunnossa ja hyvin huollettu.',1,2,7162,14757),(221,'Mercedes-Benz','S-Class',2002,409561,NULL,1,2,10975,15504),(222,'Audi','A4',2015,151740,NULL,1,2,23650,28781),(223,'Audi','A4',2006,329658,NULL,1,2,23571,30946),(224,'Audi','Q5',2020,59307,'Ei teknisiä vikoja ja erittäin vähän käytön jälkiä.',1,2,27773,33116),(225,'Nissan','Rogue',2016,134095,'Auto on erinomaisessa kunnossa ja hyvin huollettu.',1,2,14422,17787),(226,'Hyundai','Sonata',2015,157777,'Autolla on useita teknisiä ongelmia ja se tarvitsee suuren korjauksen.',1,2,728,7649);
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `address_id` int unsigned NOT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `fk_dp_address_idx` (`address_id`),
  CONSTRAINT `fk_customer_address` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (93,'Tapani','Heikkinen',158),(94,'Paula','Turunen',159),(95,'Seppo','Aaltonen',160),(96,'Heikki','Heinonen',161),(97,'Ari','Lindholm',162),(98,'Timo','Toivonen',163),(99,'Kati','Lindholm',164),(100,'Elina','Laaksonen',165),(101,'Kari','Lehtinen',166),(102,'Anu','Peltonen',167),(103,'Hanna','Laaksonen',168),(104,'Minna','Koskinen',169),(105,'Susanna','Laine',170),(106,'Timo','Hiltunen',171),(107,'Minna','Nyman',172),(108,'Elina','Savolainen',173),(109,'Tarja','Ojala',174),(110,'Minna','Mattila',175),(111,'Petri','Hiltunen',176),(112,'Riikka','Karjalainen',177),(113,'Kirsi','Mattila',178),(114,'Outi','Lehtonen',179),(115,'Eija','Hämäläinen',180),(116,'Pirjo','Laaksonen',181),(117,'Sanna','Eronen',182),(118,'Jussi','Lehtinen',183),(119,'Jari','Eronen',184),(120,'Vesa','Mäkelä',185),(121,'Laura','Mäkelä',186),(122,'Vesa','Anttila',187),(123,'Tero','Saarinen',188),(124,'Kati','Lehtinen',189),(125,'Leena','Heikkinen',190),(126,'Kari','Mattila',191),(127,'Tiina','Aaltonen',192),(128,'Janne','Hiltunen',193),(129,'Janne','Korhonen',194),(130,'Janne','Salo',195),(131,'Sanna','Nurmi',196),(132,'Eija','Salmi',197),(133,'Janne','Rinne',198),(134,'Timo','Mäkelä',199),(135,'Ilkka','Järvinen',200),(136,'Timo','Koskinen',201),(137,'Matti','Salminen',202),(138,'Tomi','Järvinen',203),(139,'Juha','Eronen',204),(140,'Seppo','Pitkänen',205),(141,'Elina','Peltonen',206),(142,'Laura','Laitinen',207),(143,'Mikko','Aaltonen',208),(144,'Tarja','Nieminen',209),(145,'Outi','Heikkinen',210),(146,'Jussi','Heikkinen',211),(147,'Sari','Saarinen',212),(148,'Ari','Turunen',213),(149,'Jussi','Lehtinen',214),(150,'Sami','Seppälä',215),(151,'Janne','Turunen',216),(152,'Sanna','Savolainen',217),(153,'Sanna','Järvinen',218),(154,'Tomi','Hämäläinen',219),(155,'Sari','Lahtinen',220),(156,'Antti','Lindholm',221),(157,'Mikko','Lehtonen',222),(158,'Leena','Heinonen',223),(159,'Anu','Lehtonen',224),(160,'Antti','Ojala',225),(161,'Ari','Lindholm',226),(162,'Juhani','Turunen',227),(163,'Marko','Nyman',228),(164,'Minna','Salo',229),(165,'Ilkka','Rantanen',230),(166,'Antti','Salmi',231),(167,'Maria','Salmi',232),(168,'Elina','Karjalainen',233),(169,'Maria','Koskinen',234),(170,'Elina','Savolainen',235),(171,'Eija','Koivisto',236),(172,'Tero','Ojala',237),(173,'Hanna','Eronen',238),(174,'Mikko','Ojala',239),(175,'Sanna','Korhonen',240),(176,'Petri','Miettinen',241);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `employee_id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `shop_id` int unsigned NOT NULL,
  `address_id` int unsigned NOT NULL,
  `base_salary_month` int DEFAULT NULL,
  `provision_rate` int DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `fk_dp_address_idx` (`address_id`),
  CONSTRAINT `fk_employee_address` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Matti','Meikäläinen',1,6,893,9),(5,'Hanna','Korhonen',2,21,888,9),(6,'Anna','Peltonen',2,22,806,5),(7,'Sari','Nurmi',2,23,920,6),(8,'Maria','Laine',1,31,803,5),(9,'Leena','Ojala',1,32,864,6),(10,'Sami','Heinonen',1,33,870,6),(11,'Mikko','Kangas',3,46,980,10),(12,'Petri','Koivisto',3,47,838,10),(13,'Jussi','Karjalainen',3,48,834,5),(14,'Tomi','Väisänen',3,56,957,9),(15,'Tiina','Mäkinen',3,57,883,5),(16,'Tomi','Lahtinen',3,58,872,9),(17,'Seppo','Koivisto',3,59,994,9),(18,'Hanna','Väisänen',3,60,904,7),(19,'Maria','Rinne',3,61,941,9),(20,'Tomi','Korhonen',3,62,894,10),(21,'Anna','Kinnunen',3,63,992,9),(22,'Mikko','Anttila',3,64,820,7),(23,'Marika','Salo',3,65,967,6);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `sales_id` int unsigned NOT NULL AUTO_INCREMENT,
  `car_id` int unsigned NOT NULL,
  `employee_id` int unsigned NOT NULL,
  `customer_id` int unsigned NOT NULL,
  `price_sold` int NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sales_id`),
  KEY `fk_employee_idx` (`employee_id`),
  KEY `fk_sales_customer_idx` (`customer_id`),
  KEY `fk_sales_car_idx` (`car_id`),
  CONSTRAINT `fk_sales_car` FOREIGN KEY (`car_id`) REFERENCES `car` (`car_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_sales_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_sales_employee` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (76,113,1,93,34494,'2023-12-18 09:11:03'),(77,114,1,94,10529,'2023-12-18 09:11:03'),(78,115,10,95,36924,'2023-12-18 09:11:04'),(79,116,8,96,28080,'2023-12-18 09:11:04'),(80,117,8,97,33353,'2023-12-18 09:11:04'),(81,118,9,98,22713,'2023-12-18 09:11:04'),(82,119,9,99,8702,'2023-12-18 09:11:04'),(83,120,1,100,12155,'2023-12-18 09:11:04'),(84,121,1,101,26790,'2023-12-18 09:11:04'),(85,122,10,102,12215,'2023-12-18 09:11:04'),(86,123,9,103,38195,'2023-12-18 09:11:04'),(87,124,9,104,20006,'2023-12-18 09:11:04'),(88,125,10,105,6770,'2023-12-18 09:11:04'),(89,126,10,106,26399,'2023-12-18 09:11:04'),(90,127,8,107,38237,'2023-12-18 09:11:04'),(91,128,10,108,12085,'2023-12-18 09:11:04'),(92,129,8,109,25352,'2023-12-18 09:11:04'),(93,130,8,110,33399,'2023-12-18 09:11:04'),(94,131,8,111,13494,'2023-12-18 09:11:04'),(95,132,1,112,14663,'2023-12-18 09:11:04'),(96,133,10,113,32084,'2023-12-18 09:11:04'),(97,134,5,114,19064,'2023-12-18 09:11:57'),(98,135,6,115,15814,'2023-12-18 09:11:57'),(99,136,5,116,27190,'2023-12-18 09:11:57'),(100,137,5,117,24558,'2023-12-18 09:11:57'),(101,138,6,118,20022,'2023-12-18 09:11:57'),(102,139,5,119,15605,'2023-12-18 09:11:57'),(103,140,7,120,10831,'2023-12-18 09:11:57'),(104,141,7,121,20558,'2023-12-18 09:11:57'),(105,142,5,122,25511,'2023-12-18 09:11:57'),(106,143,5,123,22363,'2023-12-18 09:11:57'),(107,144,6,124,24151,'2023-12-18 09:11:57'),(108,145,5,125,36031,'2023-12-18 09:11:57'),(109,146,6,126,10887,'2023-12-18 09:11:57'),(110,147,5,127,29155,'2023-12-18 09:11:57'),(111,148,6,128,21060,'2023-12-18 09:11:57'),(112,149,6,129,22746,'2023-12-18 09:11:57'),(113,150,5,130,27158,'2023-12-18 09:11:57'),(114,151,5,131,7291,'2023-12-18 09:11:57'),(115,152,7,132,5094,'2023-12-18 09:11:57'),(116,153,6,133,6599,'2023-12-18 09:11:57'),(117,154,5,134,32449,'2023-12-18 09:11:57'),(118,155,16,135,11545,'2023-12-18 09:13:22'),(119,156,11,136,10687,'2023-12-18 09:13:23'),(120,157,20,137,27734,'2023-12-18 09:13:23'),(121,158,20,138,28594,'2023-12-18 09:13:23'),(122,159,12,139,31288,'2023-12-18 09:13:23'),(123,160,12,140,23015,'2023-12-18 09:13:23'),(124,161,15,141,30780,'2023-12-18 09:13:23'),(125,162,13,142,32440,'2023-12-18 09:13:23'),(126,163,15,143,36480,'2023-12-18 09:13:23'),(127,164,17,144,11770,'2023-12-18 09:13:23'),(128,165,18,145,13205,'2023-12-18 09:13:23'),(129,166,20,146,14703,'2023-12-18 09:13:23'),(130,167,18,147,21423,'2023-12-18 09:13:23'),(131,168,14,148,15007,'2023-12-18 09:13:23'),(132,169,20,149,10458,'2023-12-18 09:13:23'),(133,170,18,150,26416,'2023-12-18 09:13:23'),(134,171,13,151,11206,'2023-12-18 09:13:23'),(135,172,13,152,12629,'2023-12-18 09:13:23'),(136,173,19,153,12003,'2023-12-18 09:13:23'),(137,174,21,154,18520,'2023-12-18 09:13:23'),(138,175,14,155,9440,'2023-12-18 09:13:23'),(139,206,13,156,21354,'2023-12-18 09:19:14'),(140,207,14,157,34681,'2023-12-18 09:19:14'),(141,208,12,158,32221,'2023-12-18 09:19:14'),(142,209,18,159,28715,'2023-12-18 09:19:14'),(143,210,22,160,17901,'2023-12-18 09:19:14'),(144,211,9,161,25145,'2023-12-18 09:20:31'),(145,212,8,162,26061,'2023-12-18 09:20:31'),(146,213,10,163,22109,'2023-12-18 09:20:31'),(147,214,9,164,21246,'2023-12-18 09:20:31'),(148,215,8,165,10744,'2023-12-18 09:20:31'),(149,216,10,166,33956,'2023-12-18 09:20:31'),(150,217,9,167,31981,'2023-12-18 09:20:31'),(151,218,6,168,21160,'2023-12-18 09:21:18'),(152,219,5,169,27270,'2023-12-18 09:21:18'),(153,220,7,170,14757,'2023-12-18 09:21:18'),(154,221,6,171,15504,'2023-12-18 09:21:18'),(155,222,7,172,28781,'2023-12-18 09:21:18'),(156,223,5,173,30946,'2023-12-18 09:21:18'),(157,224,5,174,35076,'2023-12-18 09:21:18'),(158,225,6,175,17787,'2023-12-18 09:21:18'),(159,226,7,176,9021,'2023-12-18 09:21:18');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop` (
  `shop_id` int unsigned NOT NULL AUTO_INCREMENT,
  `manager_id` int unsigned NOT NULL,
  `address_id` int unsigned NOT NULL,
  PRIMARY KEY (`shop_id`),
  KEY `address_id_idx` (`address_id`),
  KEY `fk_shop_manager_idx` (`manager_id`),
  CONSTRAINT `fk_shop_address` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_shop_manager` FOREIGN KEY (`manager_id`) REFERENCES `employee` (`employee_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop`
--

LOCK TABLES `shop` WRITE;
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
INSERT INTO `shop` VALUES (1,7,1),(2,5,2),(3,11,3);
/*!40000 ALTER TABLE `shop` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-18 16:14:01
