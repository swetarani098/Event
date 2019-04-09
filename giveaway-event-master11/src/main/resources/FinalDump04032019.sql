CREATE DATABASE  IF NOT EXISTS `giveaway_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `giveaway_db`;
-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: giveaway_db
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `books` (
  `id` bigint(20) NOT NULL,
  `book_author` varchar(255) DEFAULT NULL,
  `book_category` varchar(255) DEFAULT NULL,
  `book_description` varchar(255) DEFAULT NULL,
  `book_isbn` varchar(255) DEFAULT NULL,
  `book_name` varchar(255) DEFAULT NULL,
  `book_count` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domain`
--

DROP TABLE IF EXISTS `domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `domain` (
  `id` bigint(20) NOT NULL,
  `type_code` varchar(255) DEFAULT NULL,
  `type_description` varchar(255) DEFAULT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domain`
--

LOCK TABLES `domain` WRITE;
/*!40000 ALTER TABLE `domain` DISABLE KEYS */;
INSERT INTO `domain` VALUES (101,'Book','ItemCategory_Book',1001,'ItemCategory'),(102,'SchoolKit','ItemCategory_SchoolKit',1002,'ItemCategory'),(103,'Dress','ItemCategory_Dress',1003,'ItemCategory'),(104,'Gadgets','ItemCategory_Gadgets',1004,'ItemCategory'),(105,'Toys','ItemCategory_Toys',1005,'ItemCategory'),(106,'Blanket','ItemCategory_Blanket',1006,'ItemCategory'),(107,'SoftCopyStudyMaterial','ItemCategory_SoftCopyStudyMaterial',1007,'ItemCategory'),(108,'WaitingForAdminApproval','ItemStatus_WaitingForAdminApproval',1008,'ItemStatus'),(109,'ItemCollected','ItemStatus_ItemCollected',1009,'ItemStatus'),(110,'ItemDonatedToNeedy','ItemStatus_ItemDonatedToNeedy',1010,'ItemStatus'),(111,'gwUser','UserRole_GiveAwayUser',1011,'UserRole'),(112,'outVolUser','UserRole_OutreachVolunteer',1011,'UserRole'),(113,'appAdmin','UserRole_ApplicationAdministrator',1013,'UserRole'),(114,'WaitingForCollection','ItemStatus_WaitingForCollection',1014,'ItemStatus'),(115,'Rejected','ItemStatus_Rejected',1015,'ItemStatus'),(116,'ItemRequestedByVolunteer','ItemStatus_ItemRequestedByVolunteer',1016,'ItemStatus'),(117,'ItemAcquiredByVolunteer','ItemStatus_ItemAcquiredByVolunteer',1017,'ItemStatus'),(118,'Unread','MailReadStatus_Unread',1018,'MailReadStatus'),(119,'Read','MailReadStatus_Read',1019,'MailReadStatus'),(120,'Delivered','MailDeliveryStatus_Delivered',1020,'MailDeliveryStatus'),(121,'Undelivered','MailDeliveryStatus_Undelivered',1021,'MailDeliveryStatus');
/*!40000 ALTER TABLE `domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email`
--

DROP TABLE IF EXISTS `email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `email` (
  `emailid` bigint(20) NOT NULL,
  `att_file_path` varchar(255) DEFAULT NULL,
  `delivery_status` bigint(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `read_status` bigint(20) DEFAULT NULL,
  `reciver_email` varchar(255) DEFAULT NULL,
  `senderemail` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `send_date` date DEFAULT NULL,
  PRIMARY KEY (`emailid`),
  KEY `FKah6v1juek8jb9ycg8cldv15d6` (`user_id`),
  CONSTRAINT `FKah6v1juek8jb9ycg8cldv15d6` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email`
--

LOCK TABLES `email` WRITE;
/*!40000 ALTER TABLE `email` DISABLE KEYS */;
INSERT INTO `email` VALUES (1,NULL,0,'Test Mail',1,'bhaskar.koley@gmail.com','admin@crecent.com','Test sub',5,'2019-03-11'),(6,NULL,0,'Hi Bhaskar, \n	 Your regestration to the Crecent Application is successfull.  \nregards, \nCrecent Team \n',0,'bhaskar.koley@gmail.com','admin@crecent.com','Crecent Regestration Successful!',5,'2019-03-12'),(8,NULL,121,'Hi Nikhil, \n	 Your registration to the Crecent Application is successful. \nregards,\nCrecent Team \n',119,'nikhil.n@gmail.com',NULL,'Crecent Regestration Successful!',7,'2019-03-12');
/*!40000 ALTER TABLE `email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `event` (
  `id` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `contactno` varchar(255) DEFAULT NULL,
  `eff_end_date` datetime DEFAULT NULL,
  `eff_start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `eve_description` varchar(255) DEFAULT NULL,
  `eve_name` varchar(255) DEFAULT NULL,
  `pic_url_1` varchar(255) DEFAULT NULL,
  `pic_url_2` varchar(255) DEFAULT NULL,
  `pic_url_3` varchar(255) DEFAULT NULL,
  `pic_url_4` varchar(255) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `status` bigint(20) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKlelt1nheas1gmn9t0nmc37a89` (`created_by`),
  CONSTRAINT `FKlelt1nheas1gmn9t0nmc37a89` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (19,'Test Event Name Goes Here','Test Event Name Goes Here','Test Event Name Goes Here','9564125548',NULL,NULL,'2019-04-11 00:00:00','Test Event Name Goes Here. Test Event Name Goes Here. Test Event Name Goes Here. Test Event Name Goes Here','Test Event Name Goes Here','\\volume\\data\\evnt\\307237c2-d73a-4507-ba92-647b14f55abdAnshul_Pic.jpg',NULL,NULL,NULL,'2019-04-01 11:11:29',1,NULL);
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (43),(43),(43),(43);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `inventory` (
  `id` bigint(20) NOT NULL,
  `item_delivered_to` varchar(255) DEFAULT NULL,
  `item_delivery_date` date DEFAULT NULL,
  `item_count` bigint(20) DEFAULT NULL,
  `item_status_id` bigint(20) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_attributes_json` varchar(255) DEFAULT NULL,
  `item_cat_id` bigint(20) DEFAULT NULL,
  `item_description` varchar(255) DEFAULT NULL,
  `item_requested_by` bigint(20) DEFAULT NULL,
  `item_warehouse_add` varchar(255) DEFAULT NULL,
  `item_upload_date` date DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `user_request_token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (13,NULL,NULL,2,115,'Book1',NULL,101,'Test Book 1',NULL,'SchoolBook','2019-03-13',5,'VUTYPLE'),(15,NULL,NULL,10,108,'Shirt',NULL,103,'Test Shirt 2',NULL,'Kolkata','2019-01-13',5,'0ZFGEE7'),(16,NULL,NULL,19,109,'Black Blanket',NULL,106,'Test Blanket 1',5,'Kolkata','2019-06-13',5,'KHWGGOR'),(18,'Bast Vihar School','2019-04-01',3,110,'Book2',NULL,101,'Test Book 2',5,'SchoolBook','2019-02-13',5,'M0D5YXC'),(20,NULL,NULL,1,110,'Novel',NULL,101,'Chetan Bhagat Novel',5,'Others','2019-04-02',5,'VEEQ0DD'),(25,NULL,NULL,1,108,'BBBB',NULL,101,'BBBBB',NULL,'SchoolBook','2019-04-02',5,'W13AT4T'),(26,NULL,NULL,21,108,'ddd',NULL,104,'dddddfdsf',NULL,'Kolkata','2019-04-02',5,'3SLUJTT'),(27,NULL,NULL,2,108,'yyyyy',NULL,104,'yyyy',NULL,'Kolkata','2019-04-02',5,'BMZQEHR'),(29,NULL,NULL,2,108,'yyyyy',NULL,104,'yyyy',NULL,'Kolkata','2019-04-02',5,'M5DNJVF'),(31,NULL,NULL,2,108,'yyyyy',NULL,104,'yyyy',NULL,'Kolkata','2019-04-02',5,'32UZXUK'),(32,NULL,NULL,1,108,'e',NULL,104,'123213',NULL,'Kolkata','2019-04-02',5,'C6C90UX'),(33,NULL,NULL,1,108,'1',NULL,101,'dsfsadf',NULL,'SchoolBook','2019-04-02',5,'UWSNFDO'),(35,NULL,NULL,2,108,'asdfsadf',NULL,104,'asdfsadfsdafds',NULL,'Kolkata','2019-04-02',5,'B8IDDOE'),(37,NULL,NULL,1,108,'ewrewrew',NULL,105,'1',NULL,'Kolkata','2019-04-02',5,'PXVOJH4'),(41,NULL,NULL,5,108,'2',NULL,101,'Book',NULL,'SchoolBook','2019-04-03',23,'GVSIQYM');
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_item_uploads`
--

DROP TABLE IF EXISTS `inventory_item_uploads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `inventory_item_uploads` (
  `id` bigint(20) NOT NULL,
  `item_file_path` varchar(255) DEFAULT NULL,
  `inventory_item_id` bigint(20) DEFAULT NULL,
  `item_upload_date` date DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `user_request_token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_item_uploads`
--

LOCK TABLES `inventory_item_uploads` WRITE;
/*!40000 ALTER TABLE `inventory_item_uploads` DISABLE KEYS */;
INSERT INTO `inventory_item_uploads` VALUES (21,'D:\\volume\\data\\inv\\VEEQ0DDSoftGettingReleased.png',20,'2019-04-02',5,'VEEQ0DD'),(28,'D:\\volume\\data\\inv\\BMZQEHRaesgammyutil.jar',27,'2019-04-02',5,'BMZQEHR'),(30,'D:\\volume\\data\\inv\\M5DNJVFFile.docx',29,'2019-04-02',5,'M5DNJVF'),(34,'D:\\volume\\data\\inv\\UWSNFDOArtifact 5a Guidelines for filling Employee Pension Scheme Form 10 C.pdf',33,'2019-04-02',5,'UWSNFDO'),(36,'D:\\volume\\data\\inv\\B8IDDOEArtifact 5 Employee Pension Scheme Form 10 C.pdf',35,'2019-04-02',5,'B8IDDOE'),(38,'D:\\volume\\data\\inv\\PXVOJH4File.docx',37,'2019-04-02',5,'PXVOJH4'),(42,'D:\\volume\\data\\inv\\GVSIQYMSoftGettingReleased.png',41,'2019-04-03',23,'GVSIQYM');
/*!40000 ALTER TABLE `inventory_item_uploads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_recipient_details`
--

DROP TABLE IF EXISTS `item_recipient_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `item_recipient_details` (
  `id` bigint(20) NOT NULL,
  `recipient_address` varchar(255) DEFAULT NULL,
  `user_token` varchar(255) DEFAULT NULL,
  `volunteer_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_recipient_details`
--

LOCK TABLES `item_recipient_details` WRITE;
/*!40000 ALTER TABLE `item_recipient_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_recipient_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_request_details`
--

DROP TABLE IF EXISTS `item_request_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `item_request_details` (
  `id` bigint(20) NOT NULL,
  `eff_end_date` datetime DEFAULT NULL,
  `eff_start_date` datetime DEFAULT NULL,
  `item_count` bigint(20) DEFAULT NULL,
  `item_status` bigint(20) DEFAULT NULL,
  `requestor_id` bigint(20) DEFAULT NULL,
  `user_token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_request_details`
--

LOCK TABLES `item_request_details` WRITE;
/*!40000 ALTER TABLE `item_request_details` DISABLE KEYS */;
INSERT INTO `item_request_details` VALUES (17,'2019-04-01 10:45:21','2019-04-01 10:30:35',1,110,5,'M0D5YXC'),(22,'2019-04-03 06:43:58','2019-04-02 05:58:15',1,110,5,'VEEQ0DD'),(40,'2019-04-03 07:13:16','2019-04-03 07:12:34',1,110,5,'KHWGGOR');
/*!40000 ALTER TABLE `item_request_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `user_address` varchar(255) DEFAULT NULL,
  `user_aggmt_accepted` bit(1) DEFAULT NULL,
  `user_approved_status` bit(1) DEFAULT NULL,
  `user_city` varchar(255) DEFAULT NULL,
  `user_city_pincode` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_first_name` varchar(255) DEFAULT NULL,
  `user_last_name` varchar(255) DEFAULT NULL,
  `user_mobile` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_request_message` varchar(255) DEFAULT NULL,
  `user_role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'1',_binary '',_binary '','Kolkata','700091','bhk@gmail.com','Bhaskar','Koley','9564309987','bhk','12345678','test','appAdmin'),(5,'Opp. High Mudrasa',_binary '',_binary '','Bardhaman','713104','bhaskar.koley@gmail.com','Bhaskar','Koley','9564301187','bhaskarkoley','$2a$10$K.G0.JsxyUsoMn7XaViEdOGMm8e9xFbUr1KV1PkEGHb.Hn58UvTu.',NULL,'appAdmin'),(7,'Test Address',_binary '',_binary '','Kolkata','713104','nikhil.n@gmail.com','Nikhil','N','8956421542','nikhil','$2a$10$K.G0.JsxyUsoMn7XaViEdOGMm8e9xFbUr1KV1PkEGHb.Hn58UvTu.',NULL,'gwUser'),(23,'kolkata',_binary '',_binary '','kol','700091','swer','SWETA','RANI','456789','swetarani098','$2a$10$QIKkePzUYdNhXd2NFtYx3eoN2FBauUmNFeCSO/KvAXM.SS5U70Ltm',NULL,'gwUser'),(24,'kolkata',_binary '',_binary '','kol','803101','khush','Khushbu','kri','456789','khushbu098','$2a$10$87dEmeYwj8/4vraGvLepBuZCsROOUYTwoVkc9StaS5CWa8l37tAYS',NULL,'outVolUser');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ws_user_creds`
--

DROP TABLE IF EXISTS `ws_user_creds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ws_user_creds` (
  `id` bigint(20) NOT NULL,
  `ws_user_name` varchar(255) DEFAULT NULL,
  `ws_user_password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ws_user_creds`
--

LOCK TABLES `ws_user_creds` WRITE;
/*!40000 ALTER TABLE `ws_user_creds` DISABLE KEYS */;
INSERT INTO `ws_user_creds` VALUES (1,'loginUser','$2a$10$vHcn4dfYk5vYMN8wFYABU.4/xhTmikGB4X86tY.s2ZHJaX6pI9lK.');
/*!40000 ALTER TABLE `ws_user_creds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'giveaway_db'
--

--
-- Dumping routines for database 'giveaway_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-03 14:27:20
