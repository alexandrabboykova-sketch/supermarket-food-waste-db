-- MySQL dump 10.13  Distrib 26.7.0, for macos26.6 (arm64)
--
-- Host: localhost    Database: foodwaste
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `category`
--
USE foodwaste;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` int NOT NULL,
  `category_name` varchar(100) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Fruit'),(2,'Vegetables'),(3,'Dairy'),(4,'Bakery'),(5,'Meat'),(6,'Beverages'),(7,'Frozen Foods'),(8,'Pasta and Grains');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disposal_method`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disposal_method` (
  `disposal_method_id` int NOT NULL,
  `method_name` varchar(100) NOT NULL,
  PRIMARY KEY (`disposal_method_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disposal_method`
--

LOCK TABLES `disposal_method` WRITE;
/*!40000 ALTER TABLE `disposal_method` DISABLE KEYS */;
INSERT INTO `disposal_method` VALUES (1,'Composting'),(2,'Animal Feed'),(3,'Recycling'),(4,'General Waste');
/*!40000 ALTER TABLE `disposal_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_waste`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_waste` (
  `waste_id` int NOT NULL,
  `supermarket_id` int NOT NULL,
  `product_id` int NOT NULL,
  `disposal_method_id` int DEFAULT NULL,
  `quantity_wasted` decimal(15,2) NOT NULL,
  `period_start` date NOT NULL,
  `reason` varchar(200) DEFAULT NULL,
  `period_end` date DEFAULT NULL,
  PRIMARY KEY (`waste_id`),
  KEY `supermarket_id` (`supermarket_id`),
  KEY `product_id` (`product_id`),
  KEY `disposal_method_id` (`disposal_method_id`),
  CONSTRAINT `food_waste_ibfk_1` FOREIGN KEY (`supermarket_id`) REFERENCES `supermarket` (`supermarket_id`),
  CONSTRAINT `food_waste_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `food_waste_ibfk_3` FOREIGN KEY (`disposal_method_id`) REFERENCES `disposal_method` (`disposal_method_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_waste`
--

LOCK TABLES `food_waste` WRITE;
/*!40000 ALTER TABLE `food_waste` DISABLE KEYS */;
INSERT INTO `food_waste` VALUES (1,1,2,1,8.00,'2026-09-10','Overripe','2026-09-10','item'),(2,1,7,4,5.00,'2026-09-11','Expired','2026-09-11','item'),(3,1,9,2,3.00,'2026-09-12','Packaging damaged','2026-09-12','item'),(4,1,5,1,4.00,'2026-09-13','Expired','2026-09-13','item'),(5,2,1,1,12.00,'2026-09-10','Overripe','2026-09-10','item'),(6,2,3,1,6.00,'2026-09-12','Damaged during delivery','2026-09-12','item'),(7,2,6,4,4.00,'2026-09-14','Expired','2026-09-14','item'),(8,2,10,4,2.00,'2026-09-15','Expired','2026-09-15','item'),(9,3,2,1,10.00,'2026-09-11','Overripe','2026-09-11','item'),(10,3,4,1,7.00,'2026-09-13','Spoiled','2026-09-13','item'),(11,3,8,4,5.00,'2026-09-15','Expired','2026-09-15','item'),(12,3,5,2,3.00,'2026-09-16','Packaging damaged','2026-09-16','item'),(13,4,1,1,5.00,'2026-09-10','Overripe','2026-09-10','item'),(14,4,7,4,6.00,'2026-09-14','Expired','2026-09-14','item'),(15,4,9,2,4.00,'2026-09-15','Expired','2026-09-15','item'),(16,4,10,3,3.00,'2026-09-16','Damaged packaging','2026-09-16','item'),(17,5,2,1,9.00,'2026-09-11','Overripe','2026-09-11','item'),(18,5,4,1,5.00,'2026-09-13','Spoiled','2026-09-13','item'),(19,5,6,4,3.00,'2026-09-15','Expired','2026-09-15','item'),(20,5,8,4,4.00,'2026-09-16','Expired','2026-09-16','item');
/*!40000 ALTER TABLE `food_waste` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `inventory_id` int NOT NULL,
  `supermarket_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `expiration_date` date NOT NULL,
  PRIMARY KEY (`inventory_id`),
  KEY `supermarket_id` (`supermarket_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`supermarket_id`) REFERENCES `supermarket` (`supermarket_id`),
  CONSTRAINT `inventory_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,1,1,45,'2026-09-25'),(2,1,2,30,'2026-09-21'),(3,1,5,20,'2026-09-22'),(4,1,7,15,'2026-09-20'),(5,1,9,12,'2026-09-20'),(6,2,1,60,'2026-09-26'),(7,2,3,35,'2026-09-30'),(8,2,6,25,'2026-09-29'),(9,2,10,18,'2026-10-05'),(10,2,12,40,'2028-09-01'),(11,3,2,50,'2026-09-22'),(12,3,4,28,'2026-09-24'),(13,3,5,32,'2026-09-23'),(14,3,8,20,'2026-09-20'),(15,3,11,35,'2027-09-15'),(16,4,1,25,'2026-09-24'),(17,4,3,40,'2026-09-29'),(18,4,7,18,'2026-09-21'),(19,4,9,15,'2026-09-20'),(20,4,10,30,'2026-10-08'),(21,5,2,42,'2026-09-22'),(22,5,4,35,'2026-09-25'),(23,5,6,22,'2026-09-30'),(24,5,8,16,'2026-09-21'),(25,5,11,30,'2027-09-20');
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(7,2) DEFAULT NULL,
  `shelf_life` int DEFAULT NULL,
  `category_id` int NOT NULL,
  `supplier_id` int DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `category_id` (`category_id`),
  KEY `supplier_id` (`supplier_id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Red Apples ',2.49,14,1,1),(2,'Bananas',1.79,7,1,1),(3,'Carrots',1.29,21,2,4),(4,'Tomatoes',2.19,10,2,4),(5,'Whole Milk',1.39,10,3,2),(6,'Greek Yogurt',2.49,14,3,2),(7,'White Bread',1.99,5,4,5),(8,'Croissants',2.79,4,4,5),(9,'Chicken Breast',6.99,5,5,6),(10,'Orange Juice',2.29,30,6,3),(11,'Frozen Peas',2.49,365,7,3),(12,'Penne Pasta',1.19,730,8,3),(13,'Banana',4.00,7,1,2),(14,'Plum',6.20,4,1,2),(15,'Spinach',4.87,5,2,2),(16,'Maroon cucumber',1.75,7,2,2),(17,'Cassava',4.98,14,2,2),(18,'Pumpkin',8.10,30,2,2),(19,'Avocado',2.23,5,1,2),(20,'Chicory',8.58,7,2,2),(21,'Apple',1.60,8,1,2),(22,'Mango',1.99,7,1,2),(23,'Strawberry',3.99,2,1,2),(24,'Okra',2.55,3,2,2),(25,'Tomato',6.65,7,2,2),(26,'Eggplant',2.09,7,2,2),(27,'Onion peels',0.20,3,2,2),(28,'Fresh fennel',3.98,7,2,2),(29,'Potato',1.28,30,2,2),(30,'Lemon',3.18,14,1,2),(31,'Cauliflower',2.98,10,2,2),(32,'Guava',8.00,5,1,2),(33,'Orange',1.45,14,1,2),(34,'Peach',4.99,4,1,2),(35,'Watercress',10.00,4,2,2),(36,'Celery',2.98,14,2,2),(37,'Melon',2.50,7,1,2),(38,'Grape',5.18,4,1,2),(39,'Passion fruit',12.00,10,1,2),(40,'Persian lime',5.00,14,1,2),(41,'Cabbage',2.00,21,2,2),(42,'Chayote',5.00,14,2,2),(43,'Arracacha',5.00,14,2,2),(44,'Leek',3.50,14,2,2),(45,'Carrot',1.80,21,2,2),(46,'Watermelon',11.97,14,1,2),(47,'Ginger',10.00,30,2,2),(48,'Mint',20.00,5,2,2),(49,'Cucumber',2.50,7,2,2),(50,'Broccoli',2.78,5,2,2),(51,'Arugula',12.00,5,2,2),(52,'Radish',3.00,7,2,2),(53,'Green pepper',4.00,7,2,2),(54,'Corn',3.50,5,2,2),(55,'Parsley',12.00,7,2,2),(56,'Blackberry',19.93,3,1,2),(57,'Papaya',4.00,7,1,2),(58,'Collard green',8.00,5,2,2),(59,'Coconut',4.00,14,1,2),(60,'Basil',20.00,5,2,2),(61,'Pear',2.29,4,1,2),(62,'Escarole',8.00,7,2,2),(63,'Chives',20.00,7,2,2),(64,'Parsley and chives',16.00,5,2,2),(65,'Lettuce',3.50,7,2,2),(66,'Pepper',4.00,7,2,2),(67,'Scarlet eggplant',4.00,7,2,2),(68,'Kiwi',4.00,14,1,2),(69,'Beet',2.50,21,2,2),(70,'Purple yam',5.00,21,2,2),(71,'Sweet potato',2.50,30,2,2),(72,'Yam',3.50,21,2,2),(73,'Tangerine',1.89,14,1,2),(74,'String bean',7.00,5,2,2),(75,'Chinese cabbage',3.50,14,2,2),(76,'Laurel (branches)',15.00,7,2,2),(77,'Dandelion green',10.00,5,2,2),(78,'Onion',1.09,30,2,2),(79,'Purple sweet potato',4.00,30,2,2),(80,'Garlic',14.90,90,2,2),(81,'Star fruit',10.00,7,1,2),(82,'Persimmon',5.00,7,1,2),(83,'Nectarine',4.00,4,1,2),(84,'Fig',10.00,5,1,2),(85,'Pineapple',2.50,7,1,2),(86,'Pitaya',8.00,7,1,2),(87,'Apricot',5.00,3,1,2),(88,'Honeydew',2.50,7,1,2),(89,'Grapefruit',2.50,14,1,2),(90,'Cantaloupe',2.50,7,1,2),(91,'Lime',4.00,14,1,2),(92,'Cranberry',10.00,14,1,2),(93,'Cherry',10.00,2,1,2),(94,'Blueberry',13.30,5,1,2),(95,'Turnip greens',8.00,5,2,2),(96,'Mustard greens',8.00,5,2,2),(97,'Escarole/endive',8.00,7,2,2),(98,'Kale',6.00,7,2,2),(99,'Squash',3.50,14,2,2),(100,'Snap bean',7.00,5,2,2),(101,'Artichoke',7.00,7,2,2),(102,'Romaine and leaf lettuce',4.00,7,2,2),(103,'Mushroom',7.00,5,2,2),(104,'Asparagus',16.19,5,2,2),(105,'Bell pepper',4.00,7,2,2),(106,'Head lettuce',3.50,7,2,2),(107,'Brussels sprout',4.00,7,2,2),(108,'Sweet corn',3.50,5,2,2);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supermarket`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supermarket` (
  `supermarket_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `country` varchar(50) NOT NULL,
  PRIMARY KEY (`supermarket_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supermarket`
--

LOCK TABLES `supermarket` WRITE;
/*!40000 ALTER TABLE `supermarket` DISABLE KEYS */;
INSERT INTO `supermarket` VALUES (1,'FreshMart Amsterdam','Netherlands'),(2,'GreenMarket Rotterdam','Netherlands'),(3,'DailyShop Utrecht','Netherlands'),(4,'FoodPlus Eindhoven','Netherlands'),(5,'SuperSave Groningen','Netherlands'),(6,'Brazil Store 1','Brazil'),(7,'Brazil Store 2','Brazil'),(8,'Brazil Store 3','Brazil'),(9,'US supermarkets (national total)','United States');
/*!40000 ALTER TABLE `supermarket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `supplier_id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'Fresh Farms BV','info@freshfarms.nl','+31 20 123 4567'),(2,'Dutch Dairy Co','contact@dutchdairy.nl','+31 30 234 5678'),(3,'Euro Foods Wholesale','sales@eurofoods.nl','+31 10 345 6789'),(4,'Green Harvest','info@greenharvest.nl','+31 40 456 7890'),(5,'Bakery Direct','orders@bakerydirect.nl','+31 70 567 8901'),(6,'Fresh Meat Suppliers','sales@freshmeat.nl','+31 50 678 9012');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'foodwaste'
--
--
-- WARNING: can't read the INFORMATION_SCHEMA.libraries table. It's most probably an old server 8.0.46.
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-09 19:29:47
