-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	5.7.30-log

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
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `author` (
  `author_id` int(11) NOT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(200) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (1,'Jack','Sparrow','1563-04-26'),(2,'Grey','Gandalf','1920-08-30'),(3,'Harry','Potter','1998-12-05'),(4,'Hermione','Granger','1995-02-21'),(5,'Ron','Weasley','1996-05-10');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `isbn` varchar(30) NOT NULL,
  `title` varchar(300) DEFAULT NULL,
  `version` varchar(100) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`isbn`),
  KEY `book_fk1_idx` (`author_id`),
  KEY `book_fk2_idx` (`category_id`),
  CONSTRAINT `book_fk1` FOREIGN KEY (`author_id`) REFERENCES `author` (`author_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `book_fk2` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES ('210-450-8000-64','book4','version 2',2,2),('400-265-5000-29','book2','version 1',1,1),('501-300-6700-21','book1','version 2',1,1),('600-100-3000-78','book5','version 10',3,3),('610-500-3400-55','book3','version 4',2,1);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Επιστημονικά'),(2,'Ιστορικά'),(3,'Λογοτεχνικά');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `copy`
--

DROP TABLE IF EXISTS `copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `copy` (
  `copy_id` int(11) NOT NULL,
  `isbn` varchar(30) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `borrowing_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  PRIMARY KEY (`copy_id`,`isbn`,`user_id`),
  KEY `copy_fk1_idx` (`isbn`),
  KEY `copy_fk2_idx` (`user_id`),
  CONSTRAINT `copy_fk1` FOREIGN KEY (`isbn`) REFERENCES `book` (`isbn`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `copy_fk2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `copy`
--

LOCK TABLES `copy` WRITE;
/*!40000 ALTER TABLE `copy` DISABLE KEYS */;
INSERT INTO `copy` VALUES (1,'210-450-8000-64','borrowed','2020-04-27',1,'2020-05-09','2020-05-12'),(1,'210-450-8000-64','borrowed','2020-04-27',2,'2020-05-20','2020-05-22'),(2,'210-450-8000-64','borrowed','2020-04-27',2,'2020-06-10','2020-06-13'),(3,'210-450-8000-64','borrowed','2020-04-27',3,'2020-10-10','2020-10-20'),(4,'210-450-8000-64','borrowed','2020-04-27',4,'2020-10-22','2020-10-30'),(5,'210-450-8000-64','borrowed','2020-04-27',5,'2020-08-03','2020-08-07'),(6,'400-265-5000-29','available','2020-06-10',1,NULL,NULL),(7,'400-265-5000-29','available','2020-06-10',2,NULL,NULL),(8,'400-265-5000-29','available','2020-06-10',3,NULL,NULL),(9,'400-265-5000-29','available','2020-06-10',4,NULL,NULL),(10,'400-265-5000-29','available','2020-06-10',5,NULL,NULL),(11,'501-300-6700-21','available','2021-01-08',1,NULL,NULL),(12,'501-300-6700-21','available','2021-01-08',2,NULL,NULL),(13,'501-300-6700-21','available','2021-01-08',3,NULL,NULL),(14,'501-300-6700-21','available','2021-01-08',4,NULL,NULL),(15,'501-300-6700-21','available','2021-01-08',5,NULL,NULL),(16,'600-100-3000-78','available','2021-02-01',1,NULL,NULL),(17,'600-100-3000-78','available','2021-02-01',2,NULL,NULL),(18,'600-100-3000-78','available','2021-02-01',3,NULL,NULL),(19,'600-100-3000-78','available','2021-02-01',4,NULL,NULL),(20,'600-100-3000-78','available','2021-02-01',5,NULL,NULL),(21,'610-500-3400-55','available','2021-04-12',1,NULL,NULL),(22,'610-500-3400-55','available','2021-04-12',2,NULL,NULL),(23,'610-500-3400-55','available','2021-04-12',3,NULL,NULL),(24,'610-500-3400-55','available','2021-04-12',4,NULL,NULL),(25,'610-500-3400-55','available','2021-04-12',5,NULL,NULL),(26,'610-500-3400-55','available','2021-04-12',2,NULL,NULL);
/*!40000 ALTER TABLE `copy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telephone`
--

DROP TABLE IF EXISTS `telephone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telephone` (
  `user_id` int(11) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`,`telephone`),
  CONSTRAINT `telephone_fk1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telephone`
--

LOCK TABLES `telephone` WRITE;
/*!40000 ALTER TABLE `telephone` DISABLE KEYS */;
INSERT INTO `telephone` VALUES (1,'6978345120'),(2,'6945100200'),(3,'6974890121'),(4,'6975301429'),(5,'6944285038');
/*!40000 ALTER TABLE `telephone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(200) DEFAULT NULL,
  `street` varchar(200) DEFAULT NULL,
  `street_num` int(11) DEFAULT NULL,
  `postal_code` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Christos','Papachristos','Ermou',124,50100),(2,'Nikos','Papadopoulos','Egnatias',16,53100),(3,'Ioannis','Simeonidis','El. Venizelou',56,58100),(4,'Kostas','Kalogirou','Maniatwn',4,51600),(5,'Pavlos','Spanidis','Kornarou',79,52480);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'library'
--

--
-- Dumping routines for database 'library'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-01 22:15:34
