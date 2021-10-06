-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: 3_phongtro
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `district`
--

DROP TABLE IF EXISTS `district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `district` (
  `district_id` varchar(36) NOT NULL,
  `province_id` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`district_id`),
  UNIQUE KEY `id_districs_UNIQUE` (`district_id`),
  KEY `province_id_idx` (`province_id`),
  CONSTRAINT `province_id` FOREIGN KEY (`province_id`) REFERENCES `province` (`province_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `district`
--

LOCK TABLES `district` WRITE;
/*!40000 ALTER TABLE `district` DISABLE KEYS */;
INSERT INTO `district` VALUES ('ec2ff8f0-2649-11ec-8815-3c7c3f192f9e','59e26371-2649-11ec-8815-3c7c3f192f9e','Quan Lien Chieu'),('ec3068bb-2649-11ec-8815-3c7c3f192f9e','59e26371-2649-11ec-8815-3c7c3f192f9e','Quan Thanh Khe'),('ec3086dd-2649-11ec-8815-3c7c3f192f9e','59e26371-2649-11ec-8815-3c7c3f192f9e','Quan Hai Chau'),('ec30a14a-2649-11ec-8815-3c7c3f192f9e','59e26371-2649-11ec-8815-3c7c3f192f9e','Quan Son Tra'),('ec30b969-2649-11ec-8815-3c7c3f192f9e','59e26371-2649-11ec-8815-3c7c3f192f9e','Quan Ngu Hanh Son'),('ec30d438-2649-11ec-8815-3c7c3f192f9e','59e26371-2649-11ec-8815-3c7c3f192f9e','Quan Cam le'),('ec30ec82-2649-11ec-8815-3c7c3f192f9e','59e26371-2649-11ec-8815-3c7c3f192f9e','Quan Hoa Vang');
/*!40000 ALTER TABLE `district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file`
--

DROP TABLE IF EXISTS `file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `file` (
  `fileId` varchar(36) NOT NULL,
  `name` varchar(1024) DEFAULT NULL,
  `type` enum('Image','Audio','Video','Document') DEFAULT NULL,
  `parent_type` int DEFAULT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `url` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`fileId`),
  UNIQUE KEY `fileId_UNIQUE` (`fileId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file`
--

LOCK TABLES `file` WRITE;
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
INSERT INTO `file` VALUES ('2f2530de-3c10-4e72-a2c0-193f2b98e89f','nha','Image',0,'df3612c2-ef78-4950-aa20-2e6b824a3acc','https://i.ytimg.com/vi/jVssUULf4bQ/maxresdefault.jpg'),('7c05f916-cd67-4951-8a17-01c883b0c4b6','nha','Image',0,'e6767cff-03e8-4342-a030-b62a82769cd6','https://i.ytimg.com/vi/jVssUULf4bQ/maxresdefault.jpg'),('e12bb3fe-6814-454f-9ddd-8ac244070910','nha','Image',0,'8c9a26d1-0df0-4140-97ca-5f4fe67e769d','https://i.ytimg.com/vi/jVssUULf4bQ/maxresdefault.jpg');
/*!40000 ALTER TABLE `file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flyway_schema_history`
--

DROP TABLE IF EXISTS `flyway_schema_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flyway_schema_history` (
  `installed_rank` int NOT NULL,
  `version` varchar(50) DEFAULT NULL,
  `description` varchar(200) NOT NULL,
  `type` varchar(20) NOT NULL,
  `script` varchar(1000) NOT NULL,
  `checksum` int DEFAULT NULL,
  `installed_by` varchar(100) NOT NULL,
  `installed_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `execution_time` int NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`installed_rank`),
  KEY `flyway_schema_history_s_idx` (`success`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flyway_schema_history`
--

LOCK TABLES `flyway_schema_history` WRITE;
/*!40000 ALTER TABLE `flyway_schema_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `flyway_schema_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `province`
--

DROP TABLE IF EXISTS `province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `province` (
  `province_id` varchar(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`province_id`),
  UNIQUE KEY `id_province_UNIQUE` (`province_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `province`
--

LOCK TABLES `province` WRITE;
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
INSERT INTO `province` VALUES ('59e26371-2649-11ec-8815-3c7c3f192f9e','Da Nang');
/*!40000 ALTER TABLE `province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rental_home`
--

DROP TABLE IF EXISTS `rental_home`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental_home` (
  `room_id` varchar(36) NOT NULL,
  `roomType` enum('Room','House') DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `province_id` varchar(36) DEFAULT NULL,
  `district_id` varchar(36) DEFAULT NULL,
  `ward_id` varchar(36) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `acreage` float DEFAULT NULL,
  `room_price` int DEFAULT NULL,
  `roomDescribe` varchar(2048) DEFAULT NULL,
  `status` enum('NOT_HIRED','HIRED','SHARING') DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `title` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`room_id`),
  UNIQUE KEY `id_rental_home_UNIQUE` (`room_id`),
  KEY `user_id_idx` (`user_id`),
  KEY `province_id_idx` (`province_id`),
  KEY `districs_id_idx` (`district_id`),
  KEY `ward_id_idx` (`ward_id`),
  CONSTRAINT `districs_id` FOREIGN KEY (`district_id`) REFERENCES `district` (`district_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `province_id_1` FOREIGN KEY (`province_id`) REFERENCES `province` (`province_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ward_id` FOREIGN KEY (`ward_id`) REFERENCES `ward` (`ward_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='ENUM(''not yet hired '',''had been hired'',''home sharing'')';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_home`
--

LOCK TABLES `rental_home` WRITE;
/*!40000 ALTER TABLE `rental_home` DISABLE KEYS */;
INSERT INTO `rental_home` VALUES ('38100f64-4173-4830-9d96-ca9850194b69','House','e7f3fd2f-86a6-42a5-9929-97170825e181','59e26371-2649-11ec-8815-3c7c3f192f9e','ec2ff8f0-2649-11ec-8815-3c7c3f192f9e','940aa03b-264b-11ec-8815-3c7c3f192f9e','20 dang dung',30,2800000,'Phong rat dep va moi','NOT_HIRED','2021-08-21 15:58:46','null'),('8c9a26d1-0df0-4140-97ca-5f4fe67e769d','House','e7f3fd2f-86a6-42a5-9929-97170825e181','59e26371-2649-11ec-8815-3c7c3f192f9e','ec2ff8f0-2649-11ec-8815-3c7c3f192f9e','940aa03b-264b-11ec-8815-3c7c3f192f9e','16 My An 19',30,1500000,'Phong con rat sach se ma moi lam','HIRED','2021-10-06 10:45:55','Can cho thue phong tro khu vuc truong Kinh te');
/*!40000 ALTER TABLE `rental_home` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` varchar(36) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `number_phone` varchar(11) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` int DEFAULT NULL,
  `avatar_url` varchar(1024) DEFAULT NULL,
  `role` enum('Admin','Owner','User') DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `id_user_UNIQUE` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('e7f3fd2f-86a6-42a5-9929-97170825e181','hieu','aGlldTpEdXllbkAxMjM=','hieu','minhhieua@gmail.com','16 my an 19','0944549058','2000-10-19',1,'','User');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ward`
--

DROP TABLE IF EXISTS `ward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ward` (
  `ward_id` varchar(36) NOT NULL,
  `district_id` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ward_id`),
  UNIQUE KEY `id_ward_UNIQUE` (`ward_id`),
  KEY `district_id_idx` (`district_id`),
  CONSTRAINT `district_id` FOREIGN KEY (`district_id`) REFERENCES `district` (`district_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ward`
--

LOCK TABLES `ward` WRITE;
/*!40000 ALTER TABLE `ward` DISABLE KEYS */;
INSERT INTO `ward` VALUES ('940aa03b-264b-11ec-8815-3c7c3f192f9e','ec2ff8f0-2649-11ec-8815-3c7c3f192f9e','Phuong Hoa Hiep Bac'),('940b0351-264b-11ec-8815-3c7c3f192f9e','ec3068bb-2649-11ec-8815-3c7c3f192f9e','Phuong Tan Chinh'),('940b1930-264b-11ec-8815-3c7c3f192f9e','ec3068bb-2649-11ec-8815-3c7c3f192f9e','Phuong Chinh Gian'),('940b3070-264b-11ec-8815-3c7c3f192f9e','ec3068bb-2649-11ec-8815-3c7c3f192f9e','Phuong Vinh Trung'),('940b4636-264b-11ec-8815-3c7c3f192f9e','ec3068bb-2649-11ec-8815-3c7c3f192f9e','Phuong Thac Gian'),('940b596f-264b-11ec-8815-3c7c3f192f9e','ec3068bb-2649-11ec-8815-3c7c3f192f9e','Phuong An Khe'),('940b7bac-264b-11ec-8815-3c7c3f192f9e','ec3068bb-2649-11ec-8815-3c7c3f192f9e','Phuong Hoa Khe'),('940b932f-264b-11ec-8815-3c7c3f192f9e','ec3086dd-2649-11ec-8815-3c7c3f192f9e','Phuong Thanh Binh'),('940bafc4-264b-11ec-8815-3c7c3f192f9e','ec3086dd-2649-11ec-8815-3c7c3f192f9e','Phuong Thuan Phuoc'),('940bcbd8-264b-11ec-8815-3c7c3f192f9e','ec3086dd-2649-11ec-8815-3c7c3f192f9e','Phuong Thach Thang'),('940be2ad-264b-11ec-8815-3c7c3f192f9e','ec3086dd-2649-11ec-8815-3c7c3f192f9e','Phuong Hai Chau'),('940c020f-264b-11ec-8815-3c7c3f192f9e','ec2ff8f0-2649-11ec-8815-3c7c3f192f9e','Phuong Hoa Hiep Nam'),('940c2755-264b-11ec-8815-3c7c3f192f9e','ec3086dd-2649-11ec-8815-3c7c3f192f9e','Phuong Phuoc Ninh'),('940c40ce-264b-11ec-8815-3c7c3f192f9e','ec3086dd-2649-11ec-8815-3c7c3f192f9e','Phuong Hoa Thuan Tay'),('940c570d-264b-11ec-8815-3c7c3f192f9e','ec3086dd-2649-11ec-8815-3c7c3f192f9e','Phuong Hoa Thuan Dong'),('940c6d25-264b-11ec-8815-3c7c3f192f9e','ec3086dd-2649-11ec-8815-3c7c3f192f9e','Phuong Hoa Cuong Bac'),('940c8476-264b-11ec-8815-3c7c3f192f9e','ec3086dd-2649-11ec-8815-3c7c3f192f9e','Phuong Hoa Cuong Nam'),('940c9c3f-264b-11ec-8815-3c7c3f192f9e','ec30a14a-2649-11ec-8815-3c7c3f192f9e','Phuong Tho Quang'),('940cb276-264b-11ec-8815-3c7c3f192f9e','ec30a14a-2649-11ec-8815-3c7c3f192f9e','Phuong Man Thai'),('940cc90c-264b-11ec-8815-3c7c3f192f9e','ec30a14a-2649-11ec-8815-3c7c3f192f9e','Phuong Phuoc My'),('940ce40a-264b-11ec-8815-3c7c3f192f9e','ec30a14a-2649-11ec-8815-3c7c3f192f9e','Phuong An Hai Tay'),('940cfd14-264b-11ec-8815-3c7c3f192f9e','ec30b969-2649-11ec-8815-3c7c3f192f9e','Phuong My An'),('940d15f9-264b-11ec-8815-3c7c3f192f9e','ec2ff8f0-2649-11ec-8815-3c7c3f192f9e','Phuong Hoa Khanh Bac'),('940d2d4c-264b-11ec-8815-3c7c3f192f9e','ec30b969-2649-11ec-8815-3c7c3f192f9e','Phuong Khue My'),('940d4398-264b-11ec-8815-3c7c3f192f9e','ec30b969-2649-11ec-8815-3c7c3f192f9e','Phuong Hoa Quy'),('940d5a95-264b-11ec-8815-3c7c3f192f9e','ec30b969-2649-11ec-8815-3c7c3f192f9e','Phuong Hoa Hai'),('940d71df-264b-11ec-8815-3c7c3f192f9e','ec30d438-2649-11ec-8815-3c7c3f192f9e','Phuong Khue Trung'),('940d8874-264b-11ec-8815-3c7c3f192f9e','ec30d438-2649-11ec-8815-3c7c3f192f9e','Phuong Hoa Phat'),('940d9f22-264b-11ec-8815-3c7c3f192f9e','ec30d438-2649-11ec-8815-3c7c3f192f9e','Phuong Hoa An'),('940db6bd-264b-11ec-8815-3c7c3f192f9e','ec30d438-2649-11ec-8815-3c7c3f192f9e','Phuong Hoa Xuan'),('940dcce8-264b-11ec-8815-3c7c3f192f9e','ec30ec82-2649-11ec-8815-3c7c3f192f9e','Xa Hoa Bac'),('940de2e8-264b-11ec-8815-3c7c3f192f9e','ec30ec82-2649-11ec-8815-3c7c3f192f9e','Xa Hoa Lien'),('940df7cb-264b-11ec-8815-3c7c3f192f9e','ec30ec82-2649-11ec-8815-3c7c3f192f9e','Xa Hoa Ninh'),('940e0a8c-264b-11ec-8815-3c7c3f192f9e','ec2ff8f0-2649-11ec-8815-3c7c3f192f9e','Phuong Hoa Khanh Nam'),('940e1d7d-264b-11ec-8815-3c7c3f192f9e','ec30ec82-2649-11ec-8815-3c7c3f192f9e','Xa Hoa Phu'),('940e303a-264b-11ec-8815-3c7c3f192f9e','ec2ff8f0-2649-11ec-8815-3c7c3f192f9e','Phuong Hoa Minh'),('940e4353-264b-11ec-8815-3c7c3f192f9e','ec3068bb-2649-11ec-8815-3c7c3f192f9e','Phuong Tam Thuan'),('940e566b-264b-11ec-8815-3c7c3f192f9e','ec3068bb-2649-11ec-8815-3c7c3f192f9e','Phuong Thanh Khe Tay'),('940e7178-264b-11ec-8815-3c7c3f192f9e','ec3068bb-2649-11ec-8815-3c7c3f192f9e','Phuong Thanh Khe Dong'),('940efc11-264b-11ec-8815-3c7c3f192f9e','ec3068bb-2649-11ec-8815-3c7c3f192f9e','Phuong Xuan Ha');
/*!40000 ALTER TABLE `ward` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-06 12:06:05
