-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.16.04.1

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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(60) NOT NULL,
  `text` varchar(500) DEFAULT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'Mane Manic','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',1),(2,'Serjoza Sakic','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',1),(3,'Melisa Melisic','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',1),(4,'Serjoza Sakic','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',2),(5,'Mirko Svemirko','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',2),(6,'Dario Argentino','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',3),(7,'Samanta Fox','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',3),(8,'Beba Patrnuzic','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',3),(9,'Lavrontije Kokoska','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',4),(10,'Zinedin Avramovic','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',5),(11,'Serjoza Sakic','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',5),(12,'Lavrontije Kokoska','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',6),(13,'Mane Manic','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',1),(14,'Serjoza Sakic','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',1),(15,'Melisa Melisic','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',1),(16,'Serjoza Sakic','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',2),(17,'Mirko Svemirko','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',2),(18,'Dario Argentino','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',3),(19,'Samanta Fox','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',3),(20,'Beba Patrnuzic','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',3),(21,'Lavrontije Kokoska','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',4),(22,'Zinedin Avramovic','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',5),(23,'Serjoza Sakic','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',5),(24,'Lavrontije Kokoska','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',6),(25,'Mane Manic','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',6),(26,'Serjoza Sakic','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',7),(27,'Lepotic Lepotan','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',8),(28,'Arambasic Arambasa','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',9),(29,'Andjela Andjelic','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',9),(30,'Sofronije Pilar','Lorem Ipsum is simply dummy text of the printing and typesetting industry.',9),(31,'asdad','asdasda',10),(32,'aaaa','bbbbb',1),(33,'aaaa','bbbbb',1),(35,'aaaa','bbbbb',1),(36,'123321','123321',10),(37,'456654','456654',10),(38,'321432543','312353123',10),(39,'321432543','312353123',10),(40,'jedan 123','asd',10),(41,'jedan 123','asd',10),(42,'aaaaajedan 123','asd',10),(43,'aaaaajedan 123','asd',10),(44,'aaaaaaa321321','321aaaaaa',10),(45,'TEST','TEST KONACNO',10);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL,
  `body` varchar(1000) DEFAULT NULL,
  `author` varchar(60) NOT NULL,
  `created_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Post1','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.','Miki Varo','2018-12-17'),(2,'Post2','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.','Mile Milic','2018-12-06'),(3,'Post3','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.','Darko Daric','2018-12-08'),(4,'Post4','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.','Sanela Saric','2018-12-11'),(5,'Post5','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.','Srdivoje Srdic','2018-12-03'),(6,'Post6','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.','Delajla Delajlic','2018-12-04'),(7,'Post7','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.','Susa Susak','2018-12-12'),(8,'Post8','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.','Trbivoje Trbovic','2018-12-15'),(9,'Post9','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.','Ana Andrejevic','2018-12-10'),(10,'Post10','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.Lorem Ipsum has been the industryaker including versions of Lorem Ipsum.','Mandarina Mandaric','2018-12-16');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-18 21:57:14
