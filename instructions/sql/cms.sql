-- ########################################################
-- CMS DB
-- ########################################################

-- Update USE statement with correct DB name 
USE nltp_cms;

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
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `Published_date` date DEFAULT NULL,
  `Summary` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audience`
--

DROP TABLE IF EXISTS `audience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audience` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `audience_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audience`
--

LOCK TABLES `audience` WRITE;
/*!40000 ALTER TABLE `audience` DISABLE KEYS */;
/*!40000 ALTER TABLE `audience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cats`
--

DROP TABLE IF EXISTS `cats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cats` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `introduction` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `locale` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `productInformationPage` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cats`
--

LOCK TABLES `cats` WRITE;
/*!40000 ALTER TABLE `cats` DISABLE KEYS */;
INSERT INTO `cats` VALUES (1,'<p>&nbsp;</p><div class=\"raw-html-embed\"><h2>CAT tool</h2>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam non gravida ipsum.</p>\n<p>Supported file formats: docx, xlsx, pptx, odt, ods, odp, txt.</p></div><p>&nbsp;</p>','en',1,1,'2022-06-10 09:09:45','2022-08-05 13:29:43',2);
/*!40000 ALTER TABLE `cats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cats__localizations`
--

DROP TABLE IF EXISTS `cats__localizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cats__localizations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` int DEFAULT NULL,
  `related_cat_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cats__localizations`
--

LOCK TABLES `cats__localizations` WRITE;
/*!40000 ALTER TABLE `cats__localizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cats__localizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_basic_types_dynamic_headings`
--

DROP TABLE IF EXISTS `components_basic_types_dynamic_headings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_basic_types_dynamic_headings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `headingSize` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_basic_types_dynamic_headings`
--

LOCK TABLES `components_basic_types_dynamic_headings` WRITE;
/*!40000 ALTER TABLE `components_basic_types_dynamic_headings` DISABLE KEYS */;
INSERT INTO `components_basic_types_dynamic_headings` VALUES (1,'h2','Sample heading example of additional block'),(2,'h2','Sample heading example of additional block'),(3,'h2','Reach your audience with multilingual website'),(4,'h2',' All the key language tools in one platform '),(5,'h2','Powerful features for document translation'),(6,'h2','Fluent and secure translations');
/*!40000 ALTER TABLE `components_basic_types_dynamic_headings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_basic_types_key_values`
--

DROP TABLE IF EXISTS `components_basic_types_key_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_basic_types_key_values` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_basic_types_key_values`
--

LOCK TABLES `components_basic_types_key_values` WRITE;
/*!40000 ALTER TABLE `components_basic_types_key_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_basic_types_key_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_feature_list_feature_list_items`
--

DROP TABLE IF EXISTS `components_feature_list_feature_list_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_feature_list_feature_list_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_feature_list_feature_list_items`
--

LOCK TABLES `components_feature_list_feature_list_items` WRITE;
/*!40000 ALTER TABLE `components_feature_list_feature_list_items` DISABLE KEYS */;
INSERT INTO `components_feature_list_feature_list_items` VALUES (1,'Translation memory','No need to translate the same thing. Save your translations in a personal translation memory. Next time it will offer the same translation. '),(2,'Terminology','Search for terms in the largest terminology database in Europe with over 16 million terms in 45 languages. '),(5,'Easily edit translations','Manage your translations with text editor which allows to post-edit translations in real-time. '),(7,'Be found on Google','Search engines will index the translated webpages. Your customers will be able to find your business in their native language.'),(8,'Boost your SEO','Ensure accurate indexing by editing metadata in the SEO editor and adapting keywords and headlines to various international markets.'),(9,'Real-Time Translations','Translate documents and texts! Complete security and confidentiality. You have access to European Commission e-Translation service at your fingertips.  '),(10,'Online CAT tool','CAT tool will allow you to edit, manage and store your translations. Edit documents in simple user interface using translation memories and machine translation. '),(11,'Trados Studio Plugin','Connect NLTP machine translation to Trados Studio to translate in your favorite CAT tool. Compatible with Trados Studio 2017, 2019, 2021 and 2022. '),(12,'Website translation','Turn your website multilingual and let your audience read content in their native language! Easy setup and ability to review and edit translations.'),(13,'Machine translation','NLTP machine translation is integrated in the CAT tool and offers you translation suggestions so you don\'t have to manually translate everything. '),(16,'Real-Time Translations','Machine translation gives you instant and fluent translations whenever and wherever you need them.'),(17,'Translate documents','Translate any volume of documents in any format - Word, Excel, PowerPoint and other formats.'),(18,'Data security','Your data are neither stored, nor analysed, and is immediately deleted when you receive your translation.');
/*!40000 ALTER TABLE `components_feature_list_feature_list_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_feature_list_feature_list_items_components`
--

DROP TABLE IF EXISTS `components_feature_list_feature_list_items_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_feature_list_feature_list_items_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `order` int unsigned NOT NULL,
  `component_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `component_id` int NOT NULL,
  `components_feature_list_feature_list_item_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `components_feature_list_feature_list_item_id_fk` (`components_feature_list_feature_list_item_id`),
  CONSTRAINT `components_feature_list_feature_list_item_id_fk` FOREIGN KEY (`components_feature_list_feature_list_item_id`) REFERENCES `components_feature_list_feature_list_items` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_feature_list_feature_list_items_components`
--

LOCK TABLES `components_feature_list_feature_list_items_components` WRITE;
/*!40000 ALTER TABLE `components_feature_list_feature_list_items_components` DISABLE KEYS */;
INSERT INTO `components_feature_list_feature_list_items_components` VALUES (1,'link',1,'components_sections_links',1,11),(2,'link',1,'components_sections_links',2,12),(3,'link',1,'components_sections_links',3,10),(4,'link',1,'components_sections_links',4,9);
/*!40000 ALTER TABLE `components_feature_list_feature_list_items_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_feature_list_feature_lists`
--

DROP TABLE IF EXISTS `components_feature_list_feature_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_feature_list_feature_lists` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_feature_list_feature_lists`
--

LOCK TABLES `components_feature_list_feature_lists` WRITE;
/*!40000 ALTER TABLE `components_feature_list_feature_lists` DISABLE KEYS */;
INSERT INTO `components_feature_list_feature_lists` VALUES (1),(2),(3),(5);
/*!40000 ALTER TABLE `components_feature_list_feature_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_feature_list_feature_lists_components`
--

DROP TABLE IF EXISTS `components_feature_list_feature_lists_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_feature_list_feature_lists_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `order` int unsigned NOT NULL,
  `component_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `component_id` int NOT NULL,
  `components_feature_list_feature_list_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `components_feature_list_feature_list_id_fk` (`components_feature_list_feature_list_id`),
  CONSTRAINT `components_feature_list_feature_list_id_fk` FOREIGN KEY (`components_feature_list_feature_list_id`) REFERENCES `components_feature_list_feature_lists` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_feature_list_feature_lists_components`
--

LOCK TABLES `components_feature_list_feature_lists_components` WRITE;
/*!40000 ALTER TABLE `components_feature_list_feature_lists_components` DISABLE KEYS */;
INSERT INTO `components_feature_list_feature_lists_components` VALUES (1,'items',1,'components_feature_list_feature_list_items',1,1),(2,'items',2,'components_feature_list_feature_list_items',2,1),(5,'items',1,'components_feature_list_feature_list_items',5,2),(7,'items',2,'components_feature_list_feature_list_items',7,2),(8,'items',3,'components_feature_list_feature_list_items',8,2),(9,'items',1,'components_feature_list_feature_list_items',9,3),(10,'items',2,'components_feature_list_feature_list_items',10,3),(11,'items',3,'components_feature_list_feature_list_items',11,3),(12,'items',4,'components_feature_list_feature_list_items',12,3),(13,'items',3,'components_feature_list_feature_list_items',13,1),(16,'items',1,'components_feature_list_feature_list_items',16,5),(17,'items',2,'components_feature_list_feature_list_items',17,5),(18,'items',3,'components_feature_list_feature_list_items',18,5),(19,'title',1,'components_basic_types_dynamic_headings',3,2),(20,'title',1,'components_basic_types_dynamic_headings',4,3),(21,'title',1,'components_basic_types_dynamic_headings',5,1),(22,'title',1,'components_basic_types_dynamic_headings',6,5);
/*!40000 ALTER TABLE `components_feature_list_feature_lists_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_landing_sections`
--

DROP TABLE IF EXISTS `components_landing_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_landing_sections` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `HtmlBlock` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_landing_sections`
--

LOCK TABLES `components_landing_sections` WRITE;
/*!40000 ALTER TABLE `components_landing_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_landing_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_plausible_plausible_events`
--

DROP TABLE IF EXISTS `components_plausible_plausible_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_plausible_plausible_events` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `eventId` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_plausible_plausible_events`
--

LOCK TABLES `components_plausible_plausible_events` WRITE;
/*!40000 ALTER TABLE `components_plausible_plausible_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_plausible_plausible_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_plausible_plausible_events_components`
--

DROP TABLE IF EXISTS `components_plausible_plausible_events_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_plausible_plausible_events_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `order` int unsigned NOT NULL,
  `component_type` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `component_id` int NOT NULL,
  `components_plausible_plausible_event_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `components_plausible_plausible_event_id_fk` (`components_plausible_plausible_event_id`),
  CONSTRAINT `components_plausible_plausible_event_id_fk` FOREIGN KEY (`components_plausible_plausible_event_id`) REFERENCES `components_plausible_plausible_events` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_plausible_plausible_events_components`
--

LOCK TABLES `components_plausible_plausible_events_components` WRITE;
/*!40000 ALTER TABLE `components_plausible_plausible_events_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_plausible_plausible_events_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_sections_downloads_sections`
--

DROP TABLE IF EXISTS `components_sections_downloads_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_sections_downloads_sections` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `Body` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `Link` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_sections_downloads_sections`
--

LOCK TABLES `components_sections_downloads_sections` WRITE;
/*!40000 ALTER TABLE `components_sections_downloads_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_sections_downloads_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_sections_heroes`
--

DROP TABLE IF EXISTS `components_sections_heroes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_sections_heroes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `Show_search_widget` tinyint(1) DEFAULT NULL,
  `background_color` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_color` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_color` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `full_width_background` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_sections_heroes`
--

LOCK TABLES `components_sections_heroes` WRITE;
/*!40000 ALTER TABLE `components_sections_heroes` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_sections_heroes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_sections_htmls`
--

DROP TABLE IF EXISTS `components_sections_htmls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_sections_htmls` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_sections_htmls`
--

LOCK TABLES `components_sections_htmls` WRITE;
/*!40000 ALTER TABLE `components_sections_htmls` DISABLE KEYS */;
INSERT INTO `components_sections_htmls` VALUES (2,'<p>Increase your translation productivity and efficiency with computer assisted translation tool (CAT). Translate documents in simple user interface using translation memories and machine translation. CAT tool will allow you to edit, manage and store your translations. &nbsp;</p>'),(5,'<p>Make your website and services available to anyone! The website translator widget turns your website multilingual in a few easy steps. Then your site visitors can read content in their native language! Simple to integrate and easy to use.&nbsp;</p>'),(6,'<p><span class=\"text-small\">Website translator is available to anyone with an active account</span></p>'),(9,'<p>Break language barriers and improve your efficiency. Translate documents, make your website multi-lingual and do much more. Use the latest AI-powered language technology tools for free in a secure environment!&nbsp;</p>'),(10,'<p>Add NLTP machine translation to Trados Studio and translate in one of the most popular CAT tools. Working in CAT tool will help you translate faster and ensure consistent quality. NLTP is compatible with Trados Studio &nbsp;2017, 2019, 2021 and 2022.</p>'),(14,'<p><span class=\"text-small\">Trados Studio plugin is available to anyone with an active account</span></p>'),(15,'<p><span class=\"text-small\">CAT Tool is available to anyone with an active account</span></p>'),(16,'<p>Need to get in touch with us? Our team is here to help! Send us an email and we will get back to you! If you are looking for product help or instructions, please visit our help center.&nbsp;</p>'),(17,'<p>s simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to ma</p>'),(18,'<p>Lorem ipsum is simply dummy text of the printing and typesetting industry. Lorem ipsum has been the industry\'s standard dummy text of the printing and typesetting industry. Lorem ipsum has been the industry\'s standard dummy text of the printing and typesetting industry.</p>'),(19,'<h2 style=\"text-align:center;\">&nbsp;</h2><h2 style=\"text-align:center;\">National Language Technology Platform hello</h2><p style=\"text-align:center;\">Use the best language technology tools. <a href=\"/about\">See all the tools</a></p><p style=\"text-align:center;\">&nbsp;</p>');
/*!40000 ALTER TABLE `components_sections_htmls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_sections_link_buttons`
--

DROP TABLE IF EXISTS `components_sections_link_buttons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_sections_link_buttons` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ariaLabel` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_sections_link_buttons`
--

LOCK TABLES `components_sections_link_buttons` WRITE;
/*!40000 ALTER TABLE `components_sections_link_buttons` DISABLE KEYS */;
INSERT INTO `components_sections_link_buttons` VALUES (3,'raised','accent','Upload new document','products/cat#/upload','Go to CAT tool'),(4,'stroked','primary','Instructions','docs/category/cat-tool','Go to instructions'),(5,'raised','accent','+ Create website translator','products/website-translator',NULL),(6,'stroked','accent','Instructions','products/website-translator/instructions',NULL),(9,'raised','accent','Get started','/',NULL),(10,'stroked','accent','Contact us','',NULL),(11,'raised','accent','Download plugin',NULL,NULL),(12,'stroked','accent','Contact us',NULL,NULL),(13,'raised','accent','Contact us','',NULL),(14,'stroked','primary','Go to help center',NULL,NULL);
/*!40000 ALTER TABLE `components_sections_link_buttons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_sections_link_buttons_components`
--

DROP TABLE IF EXISTS `components_sections_link_buttons_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_sections_link_buttons_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `order` int unsigned NOT NULL,
  `component_type` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `component_id` int NOT NULL,
  `components_sections_link_button_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `components_sections_link_button_id_fk` (`components_sections_link_button_id`),
  CONSTRAINT `components_sections_link_button_id_fk` FOREIGN KEY (`components_sections_link_button_id`) REFERENCES `components_sections_link_buttons` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_sections_link_buttons_components`
--

LOCK TABLES `components_sections_link_buttons_components` WRITE;
/*!40000 ALTER TABLE `components_sections_link_buttons_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_sections_link_buttons_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_sections_links`
--

DROP TABLE IF EXISTS `components_sections_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_sections_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ariaLabel` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `arrowIconAtEnd` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_sections_links`
--

LOCK TABLES `components_sections_links` WRITE;
/*!40000 ALTER TABLE `components_sections_links` DISABLE KEYS */;
INSERT INTO `components_sections_links` VALUES (1,'Try it ','/Trados-Studio-Plugin','Try it ',1),(2,'Try it ','/products/website-translator',NULL,1),(3,'Try it','/products/cat',NULL,1),(4,'Try it','/',NULL,1);
/*!40000 ALTER TABLE `components_sections_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_sections_news`
--

DROP TABLE IF EXISTS `components_sections_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_sections_news` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_sections_news`
--

LOCK TABLES `components_sections_news` WRITE;
/*!40000 ALTER TABLE `components_sections_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_sections_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_sections_news__articles`
--

DROP TABLE IF EXISTS `components_sections_news__articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_sections_news__articles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `components_sections_new_id` int DEFAULT NULL,
  `article_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_sections_news__articles`
--

LOCK TABLES `components_sections_news__articles` WRITE;
/*!40000 ALTER TABLE `components_sections_news__articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_sections_news__articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_universal_page_image_title_content_links`
--

DROP TABLE IF EXISTS `components_universal_page_image_title_content_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_universal_page_image_title_content_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `imageFloat` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_universal_page_image_title_content_links`
--

LOCK TABLES `components_universal_page_image_title_content_links` WRITE;
/*!40000 ALTER TABLE `components_universal_page_image_title_content_links` DISABLE KEYS */;
INSERT INTO `components_universal_page_image_title_content_links` VALUES (1,'Left'),(2,'Right');
/*!40000 ALTER TABLE `components_universal_page_image_title_content_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_universal_page_image_title_content_links_components`
--

DROP TABLE IF EXISTS `components_universal_page_image_title_content_links_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_universal_page_image_title_content_links_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `order` int unsigned NOT NULL,
  `component_type` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `component_id` int NOT NULL,
  `components_universal_page_image_title_content_link_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `components_universal_page_image_title_content_link_id_fk` (`components_universal_page_image_title_content_link_id`),
  CONSTRAINT `components_universal_page_image_title_content_link_id_fk` FOREIGN KEY (`components_universal_page_image_title_content_link_id`) REFERENCES `components_universal_page_image_title_content_links` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_universal_page_image_title_content_links_components`
--

LOCK TABLES `components_universal_page_image_title_content_links_components` WRITE;
/*!40000 ALTER TABLE `components_universal_page_image_title_content_links_components` DISABLE KEYS */;
INSERT INTO `components_universal_page_image_title_content_links_components` VALUES (1,'text',1,'components_sections_htmls',17,1),(2,'title',1,'components_basic_types_dynamic_headings',1,1),(3,'title',1,'components_basic_types_dynamic_headings',2,2),(4,'text',1,'components_sections_htmls',18,2);
/*!40000 ALTER TABLE `components_universal_page_image_title_content_links_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cookie_consents`
--

DROP TABLE IF EXISTS `cookie_consents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cookie_consents` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `accept_button` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `decline_button` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cookie_consents`
--

LOCK TABLES `cookie_consents` WRITE;
/*!40000 ALTER TABLE `cookie_consents` DISABLE KEYS */;
INSERT INTO `cookie_consents` VALUES (1,'Cookie consent','We value your privacy. We use cookies to enhance your user experience on this website. Learn more in our <a href=\"/page/privacy-policy\" target=\"_blank\">Privacy policy</a>.','Accept me','Decline me','en',1,1,'2022-06-07 09:18:58','2022-08-22 06:34:38');
/*!40000 ALTER TABLE `cookie_consents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cookie_consents__localizations`
--

DROP TABLE IF EXISTS `cookie_consents__localizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cookie_consents__localizations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `cookie_consent_id` int DEFAULT NULL,
  `cookie-consent_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cookie_consents__localizations`
--

LOCK TABLES `cookie_consents__localizations` WRITE;
/*!40000 ALTER TABLE `cookie_consents__localizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cookie_consents__localizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_store`
--

DROP TABLE IF EXISTS `core_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_store` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `environment` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tag` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_store`
--

LOCK TABLES `core_store` WRITE;
/*!40000 ALTER TABLE `core_store` DISABLE KEYS */;
INSERT INTO `core_store` VALUES (1,'model_def_strapi::core-store','{\"uid\":\"strapi::core-store\",\"collectionName\":\"core_store\",\"info\":{\"name\":\"core_store\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}}','object',NULL,NULL),(2,'model_def_sections.downloads-section','{\"uid\":\"sections.downloads-section\",\"collectionName\":\"components_sections_downloads_sections\",\"info\":{\"name\":\"Downloads section\",\"icon\":\"arrow-circle-down\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"Body\":{\"type\":\"richtext\"},\"Link\":{\"type\":\"string\"},\"background_image\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false,\"pluginOptions\":{}}}}','object',NULL,NULL),(3,'model_def_sections.hero','{\"uid\":\"sections.hero\",\"collectionName\":\"components_sections_heroes\",\"info\":{\"name\":\"Hero\",\"icon\":\"flushed\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"Title\":{\"type\":\"string\"},\"Description\":{\"type\":\"text\"},\"Image\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false,\"pluginOptions\":{}},\"Show_search_widget\":{\"type\":\"boolean\",\"default\":true},\"background_color\":{\"type\":\"string\",\"default\":\"#ffffff\",\"regex\":\"[^0-9a-f]\"},\"title_color\":{\"type\":\"string\",\"default\":\"#ffffff\",\"regex\":\"[^0-9a-f]\"},\"description_color\":{\"type\":\"string\",\"default\":\"#ffffff\",\"regex\":\"[^0-9a-f]\"},\"full_width_background\":{\"type\":\"boolean\",\"default\":false}}}','object',NULL,NULL),(4,'model_def_sections.news','{\"uid\":\"sections.news\",\"collectionName\":\"components_sections_news\",\"info\":{\"name\":\"News\",\"icon\":\"newspaper\"},\"options\":{\"timestamps\":false},\"attributes\":{\"articles\":{\"collection\":\"article\",\"attribute\":\"article\",\"column\":\"id\",\"isVirtual\":true}}}','object',NULL,NULL),(5,'model_def_sections.section','{\"uid\":\"sections.section\",\"collectionName\":\"components_landing_sections\",\"info\":{\"name\":\"Section\",\"icon\":\"align-left\"},\"options\":{\"timestamps\":false},\"attributes\":{\"HtmlBlock\":{\"type\":\"richtext\",\"default\":\"<section></section>\",\"required\":true}}}','object',NULL,NULL),(6,'model_def_application::article.article','{\"uid\":\"application::article.article\",\"collectionName\":\"articles\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Article\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"Title\":{\"type\":\"string\"},\"Content\":{\"type\":\"richtext\"},\"Image\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false},\"Published_date\":{\"type\":\"date\"},\"Summary\":{\"type\":\"text\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(7,'model_def_application::cookie-consent.cookie-consent','{\"uid\":\"application::cookie-consent.cookie-consent\",\"collectionName\":\"cookie_consents\",\"kind\":\"singleType\",\"info\":{\"name\":\"Cookie consent\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"title\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"default\":\"Cookie consent title\",\"required\":true},\"description\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"text\",\"default\":\"Cookie consent description\",\"required\":true},\"accept_button\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"default\":\"Accept\",\"required\":true},\"decline_button\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"default\":\"Decline\",\"required\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"collection\":\"cookie-consent\",\"populate\":[\"_id\",\"id\",\"locale\",\"published_at\"],\"attribute\":\"cookie-consent\",\"column\":\"id\",\"isVirtual\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(8,'model_def_application::landing-page.landing-page','{\"uid\":\"application::landing-page.landing-page\",\"collectionName\":\"landing_pages\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Landing page\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"attributes\":{\"Slug\":{\"type\":\"string\"},\"Body\":{\"type\":\"dynamiczone\",\"components\":[\"uncategorized.section\",\"uncategorized.hero\",\"uncategorized.news\",\"uncategorized.downloads-section\"]},\"News\":{\"type\":\"boolean\",\"default\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(9,'model_def_application::page.page','{\"uid\":\"application::page.page\",\"collectionName\":\"pages\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Page\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"attributes\":{\"Title\":{\"type\":\"string\"},\"Body\":{\"type\":\"dynamiczone\",\"components\":[\"uncategorized.section\"]},\"Show_title\":{\"type\":\"boolean\"},\"White_background\":{\"type\":\"boolean\",\"default\":true},\"Slug\":{\"type\":\"uid\",\"targetField\":\"Title\"},\"navigation\":{\"model\":\"navigationitem\",\"plugin\":\"navigation\",\"via\":\"related\",\"configurable\":false,\"hidden\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(10,'model_def_application::privacy-policy.privacy-policy','{\"uid\":\"application::privacy-policy.privacy-policy\",\"collectionName\":\"privacy_policies\",\"kind\":\"singleType\",\"info\":{\"name\":\"Privacy policy\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"text\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"richtext\",\"default\":\"Privacy policy goes here\"},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"collection\":\"privacy-policy\",\"populate\":[\"_id\",\"id\",\"locale\",\"published_at\"],\"attribute\":\"privacy-policy\",\"column\":\"id\",\"isVirtual\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(11,'model_def_application::register-node.register-node','{\"uid\":\"application::register-node.register-node\",\"collectionName\":\"register_nodes\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Register node\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"attributes\":{\"Node_name\":{\"type\":\"string\"},\"Contact_email\":{\"type\":\"email\"},\"Contact_name\":{\"type\":\"string\"},\"Node_url\":{\"type\":\"string\",\"required\":true},\"Node_description\":{\"type\":\"text\"},\"Node_code\":{\"type\":\"string\"},\"Contact_phone\":{\"type\":\"string\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(12,'model_def_application::terms-of-service.terms-of-service','{\"uid\":\"application::terms-of-service.terms-of-service\",\"collectionName\":\"terms_of_services\",\"kind\":\"singleType\",\"info\":{\"name\":\"Terms of service\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"text\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"richtext\",\"default\":\"Terms of service goes here\"},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"collection\":\"terms-of-service\",\"populate\":[\"_id\",\"id\",\"locale\",\"published_at\"],\"attribute\":\"terms-of-service\",\"column\":\"id\",\"isVirtual\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(13,'model_def_strapi::webhooks','{\"uid\":\"strapi::webhooks\",\"collectionName\":\"strapi_webhooks\",\"info\":{\"name\":\"Strapi webhooks\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\"},\"url\":{\"type\":\"text\"},\"headers\":{\"type\":\"json\"},\"events\":{\"type\":\"json\"},\"enabled\":{\"type\":\"boolean\"}}}','object',NULL,NULL),(14,'model_def_strapi::permission','{\"uid\":\"strapi::permission\",\"collectionName\":\"strapi_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Permission\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"model\":\"role\",\"plugin\":\"admin\"}}}','object',NULL,NULL),(15,'model_def_strapi::role','{\"uid\":\"strapi::role\",\"collectionName\":\"strapi_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Role\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"collection\":\"user\",\"via\":\"roles\",\"plugin\":\"admin\",\"attribute\":\"user\",\"column\":\"id\",\"isVirtual\":true},\"permissions\":{\"configurable\":false,\"plugin\":\"admin\",\"collection\":\"permission\",\"via\":\"role\",\"isVirtual\":true}}}','object',NULL,NULL),(16,'model_def_strapi::user','{\"uid\":\"strapi::user\",\"collectionName\":\"strapi_administrator\",\"kind\":\"collectionType\",\"info\":{\"name\":\"User\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"collection\":\"role\",\"collectionName\":\"strapi_users_roles\",\"via\":\"users\",\"dominant\":true,\"plugin\":\"admin\",\"configurable\":false,\"private\":true,\"attribute\":\"role\",\"column\":\"id\",\"isVirtual\":true},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false}}}','object',NULL,NULL),(17,'model_def_plugins::i18n.locale','{\"uid\":\"plugins::i18n.locale\",\"collectionName\":\"i18n_locales\",\"kind\":\"collectionType\",\"info\":{\"name\":\"locale\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(18,'model_def_plugins::navigation.audience','{\"uid\":\"plugins::navigation.audience\",\"collectionName\":\"audience\",\"kind\":\"collectionType\",\"info\":{\"name\":\"audience\",\"description\":\"\"},\"options\":{\"increments\":true,\"comment\":\"Audience\",\"timestamps\":false},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"key\":{\"type\":\"uid\",\"targetField\":\"name\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(19,'model_def_plugins::navigation.navigation','{\"uid\":\"plugins::navigation.navigation\",\"collectionName\":\"navigations\",\"kind\":\"collectionType\",\"info\":{\"name\":\"navigation\",\"description\":\"Navigation container\"},\"options\":{\"increments\":true,\"comment\":\"\",\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"text\",\"configurable\":false,\"required\":true},\"slug\":{\"type\":\"uid\",\"target\":\"name\",\"configurable\":false,\"required\":true},\"visible\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"items\":{\"collection\":\"navigationitem\",\"plugin\":\"navigation\",\"via\":\"master\",\"configurable\":false,\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(20,'model_def_plugins::navigation.navigationitem','{\"uid\":\"plugins::navigation.navigationitem\",\"collectionName\":\"navigations_items\",\"kind\":\"collectionType\",\"info\":{\"name\":\"navigationItem\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"comment\":\"Navigation Item\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"title\":{\"type\":\"text\",\"configurable\":false,\"required\":true},\"type\":{\"type\":\"enumeration\",\"enum\":[\"INTERNAL\",\"EXTERNAL\"],\"default\":\"INTERNAL\",\"configurable\":false},\"path\":{\"type\":\"text\",\"targetField\":\"title\",\"configurable\":false},\"externalPath\":{\"type\":\"text\",\"configurable\":false},\"uiRouterKey\":{\"type\":\"string\",\"configurable\":false},\"menuAttached\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"order\":{\"type\":\"integer\",\"default\":0,\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false},\"parent\":{\"columnName\":\"parent\",\"model\":\"navigationItem\",\"plugin\":\"navigation\",\"configurable\":false,\"default\":null},\"master\":{\"columnName\":\"master\",\"model\":\"navigation\",\"plugin\":\"navigation\",\"configurable\":false},\"audience\":{\"collection\":\"audience\",\"plugin\":\"navigation\",\"attribute\":\"audience\",\"column\":\"id\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(21,'model_def_plugins::upload.file','{\"uid\":\"plugins::upload.file\",\"collectionName\":\"upload_file\",\"kind\":\"collectionType\",\"info\":{\"name\":\"file\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(22,'model_def_plugins::users-permissions.permission','{\"uid\":\"plugins::users-permissions.permission\",\"collectionName\":\"users-permissions_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"permission\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false}},\"attributes\":{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(23,'model_def_plugins::users-permissions.role','{\"uid\":\"plugins::users-permissions.role\",\"collectionName\":\"users-permissions_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"role\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"configurable\":false,\"plugin\":\"users-permissions\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(24,'model_def_plugins::users-permissions.user','{\"uid\":\"plugins::users-permissions.user\",\"collectionName\":\"users-permissions_user\",\"kind\":\"collectionType\",\"info\":{\"name\":\"user\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(25,'plugin_upload_settings','{\"sizeOptimization\":true,\"responsiveDimensions\":true}','object','production',''),(26,'plugin_users-permissions_grant','{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"}}','object','',''),(31,'plugin_i18n_default_locale','\"en\"','string','',''),(32,'plugin_users-permissions_email','{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}','object','',''),(33,'plugin_content_manager_configuration_content_types::application::privacy-policy.privacy-policy','{\"uid\":\"application::privacy-policy.privacy-policy\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"text\":{\"edit\":{\"label\":\"Text\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Text\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"created_at\",\"updated_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"text\",\"size\":12}]]}}','object','',''),(34,'plugin_content_manager_configuration_content_types::application::cookie-consent.cookie-consent','{\"uid\":\"application::cookie-consent.cookie-consent\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"accept_button\":{\"edit\":{\"label\":\"Accept_button\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Accept_button\",\"searchable\":true,\"sortable\":true}},\"decline_button\":{\"edit\":{\"label\":\"Decline_button\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Decline_button\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"description\",\"accept_button\"],\"editRelations\":[],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"accept_button\",\"size\":6},{\"name\":\"decline_button\",\"size\":6}]]}}','object','',''),(35,'plugin_content_manager_configuration_content_types::application::article.article','{\"uid\":\"application::article.article\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Title\",\"defaultSortBy\":\"Title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"Title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"Content\":{\"edit\":{\"label\":\"Content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Content\",\"searchable\":false,\"sortable\":false}},\"Image\":{\"edit\":{\"label\":\"Image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Image\",\"searchable\":false,\"sortable\":false}},\"Published_date\":{\"edit\":{\"label\":\"Published_date\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Published_date\",\"searchable\":true,\"sortable\":true}},\"Summary\":{\"edit\":{\"label\":\"Summary\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Summary\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Title\",\"Image\",\"Published_date\"],\"editRelations\":[],\"edit\":[[{\"name\":\"Title\",\"size\":6}],[{\"name\":\"Content\",\"size\":12}],[{\"name\":\"Image\",\"size\":6},{\"name\":\"Published_date\",\"size\":4}],[{\"name\":\"Summary\",\"size\":6}]]}}','object','',''),(36,'plugin_content_manager_configuration_content_types::application::page.page','{\"uid\":\"application::page.page\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Title\",\"defaultSortBy\":\"Title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"Title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"Body\":{\"edit\":{\"label\":\"Body\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Body\",\"searchable\":false,\"sortable\":false}},\"Show_title\":{\"edit\":{\"label\":\"Show_title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Show_title\",\"searchable\":true,\"sortable\":true}},\"White_background\":{\"edit\":{\"label\":\"White_background\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"White_background\",\"searchable\":true,\"sortable\":true}},\"Slug\":{\"edit\":{\"label\":\"Slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Slug\",\"searchable\":true,\"sortable\":true}},\"navigation\":{\"edit\":{\"label\":\"Navigation\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"uiRouterKey\"},\"list\":{\"label\":\"Navigation\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Title\",\"Show_title\",\"White_background\"],\"editRelations\":[\"navigation\"],\"edit\":[[{\"name\":\"Title\",\"size\":6}],[{\"name\":\"Body\",\"size\":12}],[{\"name\":\"Show_title\",\"size\":4},{\"name\":\"White_background\",\"size\":4}],[{\"name\":\"Slug\",\"size\":6}]]}}','object','',''),(37,'plugin_content_manager_configuration_content_types::application::register-node.register-node','{\"uid\":\"application::register-node.register-node\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Node_name\",\"defaultSortBy\":\"Node_name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"Node_name\":{\"edit\":{\"label\":\"Node_name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Node_name\",\"searchable\":true,\"sortable\":true}},\"Contact_email\":{\"edit\":{\"label\":\"Contact_email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Contact_email\",\"searchable\":true,\"sortable\":true}},\"Contact_name\":{\"edit\":{\"label\":\"Contact_name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Contact_name\",\"searchable\":true,\"sortable\":true}},\"Node_url\":{\"edit\":{\"label\":\"Node_url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Node_url\",\"searchable\":true,\"sortable\":true}},\"Node_description\":{\"edit\":{\"label\":\"Node_description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Node_description\",\"searchable\":true,\"sortable\":true}},\"Node_code\":{\"edit\":{\"label\":\"Node_code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Node_code\",\"searchable\":true,\"sortable\":true}},\"Contact_phone\":{\"edit\":{\"label\":\"Contact_phone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Contact_phone\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Node_name\",\"Contact_email\",\"Contact_name\"],\"editRelations\":[],\"edit\":[[{\"name\":\"Node_name\",\"size\":6},{\"name\":\"Contact_email\",\"size\":6}],[{\"name\":\"Contact_name\",\"size\":6},{\"name\":\"Node_url\",\"size\":6}],[{\"name\":\"Node_description\",\"size\":6},{\"name\":\"Node_code\",\"size\":6}],[{\"name\":\"Contact_phone\",\"size\":6}]]}}','object','',''),(38,'plugin_content_manager_configuration_content_types::application::terms-of-service.terms-of-service','{\"uid\":\"application::terms-of-service.terms-of-service\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"text\":{\"edit\":{\"label\":\"Text\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Text\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"created_at\",\"updated_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"text\",\"size\":12}]]}}','object','',''),(39,'plugin_content_manager_configuration_content_types::application::landing-page.landing-page','{\"uid\":\"application::landing-page.landing-page\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Slug\",\"defaultSortBy\":\"Slug\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"Slug\":{\"edit\":{\"label\":\"Slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Slug\",\"searchable\":true,\"sortable\":true}},\"Body\":{\"edit\":{\"label\":\"Body\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Body\",\"searchable\":false,\"sortable\":false}},\"News\":{\"edit\":{\"label\":\"News\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"News\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Slug\",\"News\",\"created_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"Slug\",\"size\":6}],[{\"name\":\"Body\",\"size\":12}],[{\"name\":\"News\",\"size\":4}]]}}','object','',''),(40,'plugin_content_manager_configuration_content_types::strapi::permission','{\"uid\":\"strapi::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"Subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"Properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"Conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}]]}}','object','',''),(41,'plugin_content_manager_configuration_content_types::strapi::role','{\"uid\":\"strapi::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"editRelations\":[\"users\",\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}','object','',''),(42,'plugin_content_manager_configuration_content_types::strapi::user','{\"uid\":\"strapi::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"Firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"Lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"RegistrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"RegistrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"IsActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"Roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"PreferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreferedLanguage\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"editRelations\":[\"roles\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"preferedLanguage\",\"size\":6}]]}}','object','',''),(43,'plugin_content_manager_configuration_content_types::plugins::i18n.locale','{\"uid\":\"plugins::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"created_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}','object','',''),(44,'plugin_content_manager_configuration_content_types::plugins::navigation.audience','{\"uid\":\"plugins::navigation.audience\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"key\":{\"edit\":{\"label\":\"Key\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Key\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"key\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"key\",\"size\":6}]]}}','object','',''),(45,'plugin_content_manager_configuration_content_types::plugins::navigation.navigationitem','{\"uid\":\"plugins::navigation.navigationitem\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"uiRouterKey\",\"defaultSortBy\":\"uiRouterKey\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"path\":{\"edit\":{\"label\":\"Path\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Path\",\"searchable\":true,\"sortable\":true}},\"externalPath\":{\"edit\":{\"label\":\"ExternalPath\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ExternalPath\",\"searchable\":true,\"sortable\":true}},\"uiRouterKey\":{\"edit\":{\"label\":\"UiRouterKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"UiRouterKey\",\"searchable\":true,\"sortable\":true}},\"menuAttached\":{\"edit\":{\"label\":\"MenuAttached\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"MenuAttached\",\"searchable\":true,\"sortable\":true}},\"order\":{\"edit\":{\"label\":\"Order\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Order\",\"searchable\":true,\"sortable\":true}},\"related\":{\"edit\":{\"label\":\"Related\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Related\",\"searchable\":false,\"sortable\":false}},\"parent\":{\"edit\":{\"label\":\"Parent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"uiRouterKey\"},\"list\":{\"label\":\"Parent\",\"searchable\":true,\"sortable\":true}},\"master\":{\"edit\":{\"label\":\"Master\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Master\",\"searchable\":true,\"sortable\":true}},\"audience\":{\"edit\":{\"label\":\"Audience\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Audience\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"type\",\"path\"],\"editRelations\":[\"related\",\"parent\",\"master\",\"audience\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"type\",\"size\":6}],[{\"name\":\"path\",\"size\":6},{\"name\":\"externalPath\",\"size\":6}],[{\"name\":\"uiRouterKey\",\"size\":6},{\"name\":\"menuAttached\",\"size\":4}],[{\"name\":\"order\",\"size\":4}]]}}','object','',''),(46,'plugin_content_manager_configuration_content_types::plugins::navigation.navigation','{\"uid\":\"plugins::navigation.navigation\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"Slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Slug\",\"searchable\":true,\"sortable\":true}},\"visible\":{\"edit\":{\"label\":\"Visible\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Visible\",\"searchable\":true,\"sortable\":true}},\"items\":{\"edit\":{\"label\":\"Items\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"uiRouterKey\"},\"list\":{\"label\":\"Items\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"name\",\"slug\",\"visible\"],\"editRelations\":[\"items\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"slug\",\"size\":6}],[{\"name\":\"visible\",\"size\":4}]]}}','object','',''),(47,'plugin_content_manager_configuration_content_types::plugins::upload.file','{\"uid\":\"plugins::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"AlternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AlternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"Caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"Width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"Height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"Formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"Hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"Ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"Mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"Size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"PreviewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreviewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"Provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider_metadata\",\"searchable\":false,\"sortable\":false}},\"related\":{\"edit\":{\"label\":\"Related\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Related\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[\"related\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}','object','',''),(48,'plugin_content_manager_configuration_content_types::plugins::users-permissions.permission','{\"uid\":\"plugins::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"type\",\"defaultSortBy\":\"type\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"controller\":{\"edit\":{\"label\":\"Controller\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Controller\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"policy\":{\"edit\":{\"label\":\"Policy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Policy\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"type\",\"controller\",\"action\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"controller\",\"size\":6}],[{\"name\":\"action\",\"size\":6},{\"name\":\"enabled\",\"size\":4}],[{\"name\":\"policy\",\"size\":6}]]}}','object','',''),(49,'plugin_users-permissions_advanced','{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}','object','',''),(50,'plugin_content_manager_configuration_content_types::plugins::users-permissions.user','{\"uid\":\"plugins::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"ConfirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ConfirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"Confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}','object','',''),(51,'plugin_content_manager_configuration_content_types::plugins::users-permissions.role','{\"uid\":\"plugins::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"type\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}','object','',''),(52,'core_admin_auth','{\"providers\":{\"autoRegister\":false,\"defaultRole\":null}}','object','',''),(53,'model_def_application::custom-page.custom-page','{\"uid\":\"application::custom-page.custom-page\",\"collectionName\":\"custom_pages\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Custom page\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"content\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"richtext\",\"default\":\"Add your content here\"},\"route\":{\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"type\":\"string\",\"required\":true,\"unique\":false},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"collection\":\"custom-page\",\"populate\":[\"_id\",\"id\",\"locale\",\"published_at\"],\"attribute\":\"custom-page\",\"column\":\"id\",\"isVirtual\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(55,'model_def_application::cat.cat','{\"uid\":\"application::cat.cat\",\"collectionName\":\"cats\",\"kind\":\"singleType\",\"info\":{\"name\":\"Cat\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"introduction\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"richtext\",\"default\":\"Cat introduction, coming from strapi\"},\"productInformationPage\":{\"model\":\"product-information\"},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"collection\":\"cat\",\"populate\":[\"_id\",\"id\",\"locale\",\"published_at\"],\"attribute\":\"related_cat\",\"column\":\"id\",\"isVirtual\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(56,'model_def_application::translator.translator','{\"uid\":\"application::translator.translator\",\"collectionName\":\"translators\",\"kind\":\"singleType\",\"info\":{\"name\":\"Translator\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"header\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"dynamiczone\",\"components\":[\"feature-list.feature-list\",\"basic-types.link-button\",\"basic-types.html\"]},\"footer\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"dynamiczone\",\"components\":[\"feature-list.feature-list\",\"basic-types.link-button\",\"basic-types.html\"]},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"collection\":\"translator\",\"populate\":[\"_id\",\"id\",\"locale\",\"published_at\"],\"attribute\":\"related_translator\",\"column\":\"id\",\"isVirtual\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(57,'plugin_content_manager_configuration_content_types::application::cat.cat','{\"uid\":\"application::cat.cat\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"introduction\":{\"edit\":{\"label\":\"Introduction\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Introduction\",\"searchable\":false,\"sortable\":false}},\"productInformationPage\":{\"edit\":{\"label\":\"ProductInformationPage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"route\"},\"list\":{\"label\":\"ProductInformationPage\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"created_at\",\"updated_at\",\"productInformationPage\"],\"edit\":[[{\"name\":\"introduction\",\"size\":12}]],\"editRelations\":[\"productInformationPage\"]}}','object','',''),(58,'plugin_content_manager_configuration_content_types::application::translator.translator','{\"uid\":\"application::translator.translator\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"header\":{\"edit\":{\"label\":\"Header\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Header\",\"searchable\":false,\"sortable\":false}},\"footer\":{\"edit\":{\"label\":\"Footer\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Footer\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"created_at\",\"updated_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"header\",\"size\":12}],[{\"name\":\"footer\",\"size\":12}]]}}','object','',''),(59,'model_def_application::mt-main.mt-main','{\"uid\":\"application::mt-main.mt-main\",\"collectionName\":\"mt_mains\",\"kind\":\"singleType\",\"info\":{\"name\":\"MT main\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"footer\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"richtext\",\"default\":\"This is footer section. \"},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"collection\":\"mt-main\",\"populate\":[\"_id\",\"id\",\"locale\",\"published_at\"],\"attribute\":\"mt-main\",\"column\":\"id\",\"isVirtual\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(60,'plugin_content_manager_configuration_content_types::application::mt-main.mt-main','{\"uid\":\"application::mt-main.mt-main\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"footer\":{\"edit\":{\"label\":\"Footer\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Footer\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"created_at\",\"updated_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"footer\",\"size\":12}]]}}','object','',''),(61,'model_def_sections.html','{\"uid\":\"sections.html\",\"collectionName\":\"components_sections_htmls\",\"info\":{\"name\":\"html\",\"icon\":\"code\"},\"options\":{\"timestamps\":false},\"attributes\":{\"content\":{\"type\":\"richtext\"}}}','object',NULL,NULL),(62,'model_def_sections.link-button','{\"uid\":\"sections.link-button\",\"collectionName\":\"components_sections_link_buttons\",\"info\":{\"name\":\"linkButton\",\"icon\":\"external-link-alt\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"type\":{\"type\":\"enumeration\",\"enum\":[\"stroked\",\"raised\"]},\"color\":{\"type\":\"enumeration\",\"enum\":[\"accent\",\"basic\",\"primary\",\"warn\"]},\"title\":{\"type\":\"string\"},\"link\":{\"type\":\"string\"},\"ariaLabel\":{\"type\":\"string\"}}}','object',NULL,NULL),(63,'model_def_application::menu-items.menu-items','{\"uid\":\"application::menu-items.menu-items\",\"collectionName\":\"menu_items\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Menu items\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"icon\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":false,\"pluginOptions\":{\"i18n\":{\"localized\":false}}},\"title\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"link\":{\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"type\":\"string\"},\"customId\":{\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"type\":\"string\",\"unique\":false},\"disabled\":{\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"type\":\"boolean\",\"default\":false},\"externalLink\":{\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"type\":\"boolean\"},\"plausibleEvent\":{\"type\":\"component\",\"repeatable\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"component\":\"plausible.plausible-event\"},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"collection\":\"menu-items\",\"populate\":[\"_id\",\"id\",\"locale\",\"published_at\"],\"attribute\":\"menu-item\",\"column\":\"id\",\"isVirtual\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(64,'model_def_application::product-information.product-information','{\"uid\":\"application::product-information.product-information\",\"collectionName\":\"product_informations\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Product information page\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"route\":{\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"type\":\"string\",\"unique\":false},\"title\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"image\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":false,\"pluginOptions\":{\"i18n\":{\"localized\":false}}},\"head\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"dynamiczone\",\"components\":[\"basic-types.link-button\",\"basic-types.html\"]},\"body\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"dynamiczone\",\"components\":[\"basic-types.html\",\"basic-types.link-button\",\"feature-list.feature-list\",\"universal-page.image-title-content-links\"]},\"company\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"productName\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"collection\":\"product-information\",\"populate\":[\"_id\",\"id\",\"locale\",\"published_at\"],\"attribute\":\"product-information\",\"column\":\"id\",\"isVirtual\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(67,'plugin_content_manager_configuration_content_types::application::product-information.product-information','{\"uid\":\"application::product-information.product-information\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"company\",\"defaultSortBy\":\"company\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"head\":{\"edit\":{\"label\":\"Head\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Head\",\"searchable\":false,\"sortable\":false}},\"body\":{\"edit\":{\"label\":\"Body\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Body\",\"searchable\":false,\"sortable\":false}},\"route\":{\"edit\":{\"label\":\"Route\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Route\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"productName\":{\"edit\":{\"label\":\"ProductName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ProductName\",\"searchable\":true,\"sortable\":true}},\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"Image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Image\",\"searchable\":false,\"sortable\":false}},\"company\":{\"edit\":{\"label\":\"Company\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Company\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"company\",\"size\":6},{\"name\":\"productName\",\"size\":6}],[{\"name\":\"head\",\"size\":12}],[{\"name\":\"image\",\"size\":6}],[{\"name\":\"body\",\"size\":12}],[{\"name\":\"title\",\"size\":6},{\"name\":\"route\",\"size\":6}]],\"editRelations\":[],\"list\":[\"id\",\"company\",\"productName\",\"image\"]}}','object','',''),(68,'plugin_content_manager_configuration_content_types::application::menu-items.menu-items','{\"uid\":\"application::menu-items.menu-items\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"icon\":{\"edit\":{\"label\":\"Icon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Icon\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"link\":{\"edit\":{\"label\":\"Link\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Link\",\"searchable\":true,\"sortable\":true}},\"customId\":{\"edit\":{\"label\":\"CustomId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"CustomId\",\"searchable\":true,\"sortable\":true}},\"disabled\":{\"edit\":{\"label\":\"Disabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Disabled\",\"searchable\":true,\"sortable\":true}},\"externalLink\":{\"edit\":{\"label\":\"ExternalLink\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ExternalLink\",\"searchable\":true,\"sortable\":true}},\"plausibleEvent\":{\"edit\":{\"label\":\"PlausibleEvent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PlausibleEvent\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"icon\",\"title\",\"link\"],\"edit\":[[{\"name\":\"icon\",\"size\":6},{\"name\":\"title\",\"size\":6}],[{\"name\":\"link\",\"size\":6},{\"name\":\"customId\",\"size\":6}],[{\"name\":\"disabled\",\"size\":4},{\"name\":\"externalLink\",\"size\":4}],[{\"name\":\"plausibleEvent\",\"size\":12}]],\"editRelations\":[]}}','object','',''),(69,'model_def_basic-types.html','{\"uid\":\"basic-types.html\",\"collectionName\":\"components_sections_htmls\",\"info\":{\"name\":\"html\",\"icon\":\"code\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"content\":{\"type\":\"richtext\"}}}','object',NULL,NULL),(70,'model_def_basic-types.link-button','{\"uid\":\"basic-types.link-button\",\"collectionName\":\"components_sections_link_buttons\",\"info\":{\"name\":\"linkButton\",\"icon\":\"external-link-alt\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"type\":{\"type\":\"enumeration\",\"enum\":[\"stroked\",\"raised\"]},\"color\":{\"type\":\"enumeration\",\"enum\":[\"accent\",\"basic\",\"primary\",\"warn\"]},\"title\":{\"type\":\"string\"},\"link\":{\"type\":\"string\"},\"ariaLabel\":{\"type\":\"string\"},\"plausibleEvent\":{\"type\":\"component\",\"repeatable\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"component\":\"plausible.plausible-event\"}}}','object',NULL,NULL),(71,'model_def_basic-types.link','{\"uid\":\"basic-types.link\",\"collectionName\":\"components_sections_links\",\"info\":{\"name\":\"Link\",\"icon\":\"link\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"title\":{\"type\":\"string\",\"required\":true},\"link\":{\"type\":\"string\",\"required\":true},\"ariaLabel\":{\"type\":\"string\"},\"arrowIconAtEnd\":{\"type\":\"boolean\"}}}','object',NULL,NULL),(72,'model_def_feature-list.feature-list-item','{\"uid\":\"feature-list.feature-list-item\",\"collectionName\":\"components_feature_list_feature_list_items\",\"info\":{\"name\":\"Feature list item\",\"icon\":\"th-list\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"title\":{\"type\":\"string\"},\"icon\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":false,\"pluginOptions\":{}},\"description\":{\"type\":\"text\"},\"link\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"basic-types.link\"}}}','object',NULL,NULL),(73,'model_def_feature-list.feature-list','{\"uid\":\"feature-list.feature-list\",\"collectionName\":\"components_feature_list_feature_lists\",\"info\":{\"name\":\"Feature list\",\"icon\":\"list-ul\"},\"options\":{\"timestamps\":false},\"attributes\":{\"items\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"feature-list.feature-list-item\"},\"title\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"basic-types.dynamic-heading\"}}}','object',NULL,NULL),(74,'model_def_uncategorized.downloads-section','{\"uid\":\"uncategorized.downloads-section\",\"collectionName\":\"components_sections_downloads_sections\",\"info\":{\"name\":\"Downloads section\",\"icon\":\"arrow-circle-down\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"Body\":{\"type\":\"richtext\"},\"Link\":{\"type\":\"string\"},\"background_image\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false,\"pluginOptions\":{}}}}','object',NULL,NULL),(75,'model_def_uncategorized.hero','{\"uid\":\"uncategorized.hero\",\"collectionName\":\"components_sections_heroes\",\"info\":{\"name\":\"Hero\",\"icon\":\"flushed\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"Title\":{\"type\":\"string\"},\"Description\":{\"type\":\"text\"},\"Image\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false,\"pluginOptions\":{}},\"Show_search_widget\":{\"type\":\"boolean\",\"default\":true},\"background_color\":{\"type\":\"string\",\"default\":\"#ffffff\",\"regex\":\"[^0-9a-f]\"},\"title_color\":{\"type\":\"string\",\"default\":\"#ffffff\",\"regex\":\"[^0-9a-f]\"},\"description_color\":{\"type\":\"string\",\"default\":\"#ffffff\",\"regex\":\"[^0-9a-f]\"},\"full_width_background\":{\"type\":\"boolean\",\"default\":false}}}','object',NULL,NULL),(76,'model_def_uncategorized.news','{\"uid\":\"uncategorized.news\",\"collectionName\":\"components_sections_news\",\"info\":{\"name\":\"News\",\"icon\":\"newspaper\"},\"options\":{\"timestamps\":false},\"attributes\":{\"articles\":{\"collection\":\"article\",\"attribute\":\"article\",\"column\":\"id\",\"isVirtual\":true}}}','object',NULL,NULL),(77,'model_def_uncategorized.section','{\"uid\":\"uncategorized.section\",\"collectionName\":\"components_landing_sections\",\"info\":{\"name\":\"Section\",\"icon\":\"align-left\"},\"options\":{\"timestamps\":false},\"attributes\":{\"HtmlBlock\":{\"type\":\"richtext\",\"default\":\"<section></section>\",\"required\":true}}}','object',NULL,NULL),(78,'plugin_content_manager_configuration_components::basic-types.html','{\"uid\":\"basic-types.html\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"content\":{\"edit\":{\"label\":\"Content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Content\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\"],\"edit\":[[{\"name\":\"content\",\"size\":12}]],\"editRelations\":[]},\"isComponent\":true}','object','',''),(79,'plugin_content_manager_configuration_components::feature-list.feature-list-item','{\"uid\":\"feature-list.feature-list-item\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"icon\":{\"edit\":{\"label\":\"Icon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Icon\",\"searchable\":false,\"sortable\":false}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"link\":{\"edit\":{\"label\":\"Link\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Link\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"title\",\"icon\",\"description\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"icon\",\"size\":6}],[{\"name\":\"description\",\"size\":6}],[{\"name\":\"link\",\"size\":12}]],\"editRelations\":[]},\"isComponent\":true}','object','',''),(80,'plugin_content_manager_configuration_components::basic-types.link','{\"uid\":\"basic-types.link\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"link\":{\"edit\":{\"label\":\"Link\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Link\",\"searchable\":true,\"sortable\":true}},\"ariaLabel\":{\"edit\":{\"label\":\"AriaLabel\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AriaLabel\",\"searchable\":true,\"sortable\":true}},\"arrowIconAtEnd\":{\"edit\":{\"label\":\"ArrowIconAtEnd\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ArrowIconAtEnd\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"link\",\"ariaLabel\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"link\",\"size\":6}],[{\"name\":\"ariaLabel\",\"size\":6},{\"name\":\"arrowIconAtEnd\",\"size\":4}]],\"editRelations\":[]},\"isComponent\":true}','object','',''),(81,'plugin_content_manager_configuration_components::basic-types.link-button','{\"uid\":\"basic-types.link-button\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"color\":{\"edit\":{\"label\":\"Color\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Color\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"link\":{\"edit\":{\"label\":\"Link\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Link\",\"searchable\":true,\"sortable\":true}},\"ariaLabel\":{\"edit\":{\"label\":\"AriaLabel\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AriaLabel\",\"searchable\":true,\"sortable\":true}},\"plausibleEvent\":{\"edit\":{\"label\":\"PlausibleEvent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PlausibleEvent\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"type\",\"color\",\"title\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"color\",\"size\":6}],[{\"name\":\"title\",\"size\":6},{\"name\":\"link\",\"size\":6}],[{\"name\":\"ariaLabel\",\"size\":6}],[{\"name\":\"plausibleEvent\",\"size\":12}]],\"editRelations\":[]},\"isComponent\":true}','object','',''),(82,'plugin_content_manager_configuration_components::feature-list.feature-list','{\"uid\":\"feature-list.feature-list\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"items\":{\"edit\":{\"label\":\"Items\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Items\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\"],\"edit\":[[{\"name\":\"items\",\"size\":12}],[{\"name\":\"title\",\"size\":12}]],\"editRelations\":[]},\"isComponent\":true}','object','',''),(83,'plugin_content_manager_configuration_components::uncategorized.downloads-section','{\"uid\":\"uncategorized.downloads-section\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Link\",\"defaultSortBy\":\"Link\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"Body\":{\"edit\":{\"label\":\"Body\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Body\",\"searchable\":false,\"sortable\":false}},\"Link\":{\"edit\":{\"label\":\"Link\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Link\",\"searchable\":true,\"sortable\":true}},\"background_image\":{\"edit\":{\"label\":\"Background_image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Background_image\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"Link\",\"background_image\"],\"edit\":[[{\"name\":\"Body\",\"size\":12}],[{\"name\":\"Link\",\"size\":6},{\"name\":\"background_image\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object','',''),(84,'plugin_content_manager_configuration_components::uncategorized.hero','{\"uid\":\"uncategorized.hero\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Title\",\"defaultSortBy\":\"Title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"Title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"Description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"Image\":{\"edit\":{\"label\":\"Image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Image\",\"searchable\":false,\"sortable\":false}},\"Show_search_widget\":{\"edit\":{\"label\":\"Show_search_widget\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Show_search_widget\",\"searchable\":true,\"sortable\":true}},\"background_color\":{\"edit\":{\"label\":\"Background_color\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Background_color\",\"searchable\":true,\"sortable\":true}},\"title_color\":{\"edit\":{\"label\":\"Title_color\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title_color\",\"searchable\":true,\"sortable\":true}},\"description_color\":{\"edit\":{\"label\":\"Description_color\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description_color\",\"searchable\":true,\"sortable\":true}},\"full_width_background\":{\"edit\":{\"label\":\"Full_width_background\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Full_width_background\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Title\",\"Description\",\"Image\"],\"edit\":[[{\"name\":\"Title\",\"size\":6},{\"name\":\"Description\",\"size\":6}],[{\"name\":\"Image\",\"size\":6},{\"name\":\"Show_search_widget\",\"size\":4}],[{\"name\":\"background_color\",\"size\":6},{\"name\":\"title_color\",\"size\":6}],[{\"name\":\"description_color\",\"size\":6},{\"name\":\"full_width_background\",\"size\":4}]],\"editRelations\":[]},\"isComponent\":true}','object','',''),(85,'plugin_content_manager_configuration_components::uncategorized.news','{\"uid\":\"uncategorized.news\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"articles\":{\"edit\":{\"label\":\"Articles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"Title\"},\"list\":{\"label\":\"Articles\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"articles\"],\"edit\":[[{\"name\":\"articles\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object','',''),(86,'plugin_content_manager_configuration_components::uncategorized.section','{\"uid\":\"uncategorized.section\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"HtmlBlock\":{\"edit\":{\"label\":\"HtmlBlock\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"HtmlBlock\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\"],\"edit\":[[{\"name\":\"HtmlBlock\",\"size\":12}]],\"editRelations\":[]},\"isComponent\":true}','object','',''),(87,'model_def_application::mt-website-translator.mt-website-translator','{\"uid\":\"application::mt-website-translator.mt-website-translator\",\"collectionName\":\"mt_website_translators\",\"kind\":\"singleType\",\"info\":{\"name\":\"MT Website Translator\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"productInformationPage\":{\"model\":\"product-information\"},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"collection\":\"mt-website-translator\",\"populate\":[\"_id\",\"id\",\"locale\",\"published_at\"],\"attribute\":\"mt-website-translator\",\"column\":\"id\",\"isVirtual\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(88,'plugin_content_manager_configuration_content_types::application::mt-website-translator.mt-website-translator','{\"uid\":\"application::mt-website-translator.mt-website-translator\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"productInformationPage\":{\"edit\":{\"label\":\"ProductInformationPage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"route\"},\"list\":{\"label\":\"ProductInformationPage\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"created_at\",\"updated_at\",\"productInformationPage\"],\"edit\":[],\"editRelations\":[\"productInformationPage\"]}}','object','',''),(89,'model_def_application::trados-plugin.trados-plugin','{\"uid\":\"application::trados-plugin.trados-plugin\",\"collectionName\":\"trados_plugins\",\"kind\":\"singleType\",\"info\":{\"name\":\"Trados plugin\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"productInformationPage\":{\"model\":\"product-information\"},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"collection\":\"trados-plugin\",\"populate\":[\"_id\",\"id\",\"locale\",\"published_at\"],\"attribute\":\"trados-plugin\",\"column\":\"id\",\"isVirtual\":true},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(90,'plugin_content_manager_configuration_content_types::application::trados-plugin.trados-plugin','{\"uid\":\"application::trados-plugin.trados-plugin\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"productInformationPage\":{\"edit\":{\"label\":\"ProductInformationPage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"route\"},\"list\":{\"label\":\"ProductInformationPage\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"productInformationPage\",\"created_at\",\"updated_at\"],\"editRelations\":[\"productInformationPage\"],\"edit\":[]}}','object','',''),(91,'model_def_basic-types.dynamic-heading','{\"uid\":\"basic-types.dynamic-heading\",\"collectionName\":\"components_basic_types_dynamic_headings\",\"info\":{\"name\":\"DynamicHeading\",\"icon\":\"ad\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"headingSize\":{\"type\":\"enumeration\",\"enum\":[\"h1\",\"h2\",\"h3\",\"h4\",\"h5\",\"h6\"]},\"text\":{\"type\":\"string\"}}}','object',NULL,NULL),(92,'model_def_universal-page.image-title-content-links','{\"uid\":\"universal-page.image-title-content-links\",\"collectionName\":\"components_universal_page_image_title_content_links\",\"info\":{\"name\":\"ImageTitleContentLinks\",\"icon\":\"universal-access\"},\"options\":{\"timestamps\":false},\"attributes\":{\"title\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"basic-types.dynamic-heading\"},\"image\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\"],\"plugin\":\"upload\",\"required\":false,\"pluginOptions\":{}},\"imageFloat\":{\"type\":\"enumeration\",\"enum\":[\"Left\",\"Right\"]},\"text\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"basic-types.html\"},\"buttons\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"basic-types.link-button\"}}}','object',NULL,NULL),(93,'plugin_content_manager_configuration_components::universal-page.image-title-content-links','{\"uid\":\"universal-page.image-title-content-links\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":false,\"sortable\":false}},\"image\":{\"edit\":{\"label\":\"Image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Image\",\"searchable\":false,\"sortable\":false}},\"imageFloat\":{\"edit\":{\"label\":\"ImageFloat\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ImageFloat\",\"searchable\":true,\"sortable\":true}},\"text\":{\"edit\":{\"label\":\"Text\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Text\",\"searchable\":false,\"sortable\":false}},\"buttons\":{\"edit\":{\"label\":\"Buttons\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Buttons\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"image\",\"imageFloat\"],\"edit\":[[{\"name\":\"title\",\"size\":12}],[{\"name\":\"image\",\"size\":6},{\"name\":\"imageFloat\",\"size\":6}],[{\"name\":\"text\",\"size\":12}],[{\"name\":\"buttons\",\"size\":12}]],\"editRelations\":[]},\"isComponent\":true}','object','',''),(94,'plugin_content_manager_configuration_components::basic-types.dynamic-heading','{\"uid\":\"basic-types.dynamic-heading\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"text\",\"defaultSortBy\":\"text\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"headingSize\":{\"edit\":{\"label\":\"HeadingSize\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"HeadingSize\",\"searchable\":true,\"sortable\":true}},\"text\":{\"edit\":{\"label\":\"Text\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Text\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"headingSize\",\"text\"],\"edit\":[[{\"name\":\"headingSize\",\"size\":6},{\"name\":\"text\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object','',''),(95,'model_def_basic-types.key-value','{\"uid\":\"basic-types.key-value\",\"collectionName\":\"components_basic_types_key_values\",\"info\":{\"name\":\"KeyValue\",\"icon\":\"key\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"key\":{\"type\":\"string\",\"required\":true},\"value\":{\"type\":\"string\",\"required\":true}}}','object',NULL,NULL),(96,'model_def_plausible.plausible-event','{\"uid\":\"plausible.plausible-event\",\"collectionName\":\"components_plausible_plausible_events\",\"info\":{\"name\":\"PlausibleEvent\",\"icon\":\"audio-description\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"eventId\":{\"type\":\"string\",\"required\":true},\"properties\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"basic-types.key-value\"}}}','object',NULL,NULL),(97,'plugin_content_manager_configuration_components::basic-types.key-value','{\"uid\":\"basic-types.key-value\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"key\",\"defaultSortBy\":\"key\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"key\":{\"edit\":{\"label\":\"Key\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Key\",\"searchable\":true,\"sortable\":true}},\"value\":{\"edit\":{\"label\":\"Value\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Value\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"key\",\"value\"],\"editRelations\":[],\"edit\":[[{\"name\":\"key\",\"size\":6},{\"name\":\"value\",\"size\":6}]]},\"isComponent\":true}','object','',''),(98,'plugin_content_manager_configuration_components::plausible.plausible-event','{\"uid\":\"plausible.plausible-event\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"eventId\",\"defaultSortBy\":\"eventId\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"eventId\":{\"edit\":{\"label\":\"EventId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"EventId\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"Properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Properties\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"eventId\"],\"editRelations\":[],\"edit\":[[{\"name\":\"eventId\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}]]},\"isComponent\":true}','object','','');
/*!40000 ALTER TABLE `core_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_pages`
--

DROP TABLE IF EXISTS `custom_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_pages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `route` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_pages`
--

LOCK TABLES `custom_pages` WRITE;
/*!40000 ALTER TABLE `custom_pages` DISABLE KEYS */;
INSERT INTO `custom_pages` VALUES (2,'<h1>Delete this page</h1><p style=\"text-align:justify;\"><span style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate odio at hendrerit consectetur. Maecenas sit amet est a odio accumsan placerat. Donec rhoncus consequat nulla, nec auctor lectus convallis eu. Nunc ut iaculis magna. Morbi id porta lorem, a porta nisi. Donec fermentum orci id suscipit tincidunt. Donec nec eleifend purus. In ornare ante ac bibendum posuere. Ut sed tellus sed lorem mollis bibendum ut et leo. Donec sed cursus ex, at malesuada sem. Donec fringilla suscipit diam in interdum. Praesent malesuada nec augue eu efficitur. Aenean malesuada dictum augue. Donec ex magna, semper vitae consequat vitae, commodo sit amet lorem. Nam maximus consequat lectus, ac semper eros.</span></p><p style=\"text-align:justify;\"><span style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);\">Go to </span><a href=\"//google.com\"><span style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);\">google</span></a></p><p><span style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);\">This is a list:</span></p><ul><li><span style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);\">Item one</span></li><li><span style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);\">Item two</span></li><li><span style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);\">Item three</span></li></ul><blockquote><p style=\"text-align:justify;\"><span style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);\">This is a quote</span></p><p style=\"text-align:justify;\"><span style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);\">Some quote</span></p></blockquote><p>&nbsp;</p><figure class=\"media\"><oembed url=\"https://www.youtube.com/watch?v=6FnwAbd2SDY\"></oembed></figure>','test','en',1,1,'2022-06-10 12:34:14','2022-07-05 10:41:15'),(3,'<div class=\"raw-html-embed\"><style>\n    .my-wrapper {\n        background-color: red;\n        font-size: 20px;\n    }\n</style>\n<div class=\"my-wrapper\">\n<p>This is a container</p>\n</div></div><div class=\"raw-html-embed\"><h1 style=\"color:blue;\">A Blue Heading</h1>\n\n<p style=\"color:red;\">A red paragraph.</p></div>','test2','en',1,1,'2022-06-13 03:42:00','2022-06-13 03:53:11'),(4,'<p>Showing how strapi works</p>','demonstration','en',1,1,'2022-07-05 09:04:18','2022-07-05 09:04:18'),(5,'<p>Nltp is very cool project</p>','about','en',1,1,'2022-08-29 06:27:00','2022-08-29 06:27:00');
/*!40000 ALTER TABLE `custom_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_pages__localizations`
--

DROP TABLE IF EXISTS `custom_pages__localizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_pages__localizations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `custom_page_id` int DEFAULT NULL,
  `custom-page_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_pages__localizations`
--

LOCK TABLES `custom_pages__localizations` WRITE;
/*!40000 ALTER TABLE `custom_pages__localizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_pages__localizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i18n_locales`
--

DROP TABLE IF EXISTS `i18n_locales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `i18n_locales` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `i18n_locales_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i18n_locales`
--

LOCK TABLES `i18n_locales` WRITE;
/*!40000 ALTER TABLE `i18n_locales` DISABLE KEYS */;
INSERT INTO `i18n_locales` VALUES (1,'English (en)','en',NULL,NULL,'2022-06-02 10:27:08','2022-06-02 10:27:08');
/*!40000 ALTER TABLE `i18n_locales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landing_pages`
--

DROP TABLE IF EXISTS `landing_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `landing_pages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `Slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `News` tinyint(1) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landing_pages`
--

LOCK TABLES `landing_pages` WRITE;
/*!40000 ALTER TABLE `landing_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `landing_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landing_pages_components`
--

DROP TABLE IF EXISTS `landing_pages_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `landing_pages_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `order` int unsigned NOT NULL,
  `component_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `component_id` int NOT NULL,
  `landing_page_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `landing_page_id_fk` (`landing_page_id`),
  CONSTRAINT `landing_page_id_fk` FOREIGN KEY (`landing_page_id`) REFERENCES `landing_pages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landing_pages_components`
--

LOCK TABLES `landing_pages_components` WRITE;
/*!40000 ALTER TABLE `landing_pages_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `landing_pages_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customId` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT NULL,
  `locale` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `externalLink` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (3,'Help Center','https://nltp.example.com/docs',NULL,0,'en',1,1,'2022-09-12 04:11:58','2022-09-29 11:44:24',1),(4,'About platform','about',NULL,0,'en',1,1,'2022-09-20 08:09:53','2022-09-28 04:12:46',NULL),(6,'Contact Us','contact-us',NULL,0,'en',1,1,'2022-09-28 02:57:21','2022-10-14 07:19:28',0);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items__localizations`
--

DROP TABLE IF EXISTS `menu_items__localizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_items__localizations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `menu_item_id` int DEFAULT NULL,
  `menu-item_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items__localizations`
--

LOCK TABLES `menu_items__localizations` WRITE;
/*!40000 ALTER TABLE `menu_items__localizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_items__localizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items_components`
--

DROP TABLE IF EXISTS `menu_items_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_items_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `order` int unsigned NOT NULL,
  `component_type` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `component_id` int NOT NULL,
  `menu_item_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_item_id_fk` (`menu_item_id`),
  CONSTRAINT `menu_item_id_fk` FOREIGN KEY (`menu_item_id`) REFERENCES `menu_items` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items_components`
--

LOCK TABLES `menu_items_components` WRITE;
/*!40000 ALTER TABLE `menu_items_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_items_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_mains`
--

DROP TABLE IF EXISTS `mt_mains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mt_mains` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `footer` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `locale` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_mains`
--

LOCK TABLES `mt_mains` WRITE;
/*!40000 ALTER TABLE `mt_mains` DISABLE KEYS */;
INSERT INTO `mt_mains` VALUES (1,'<div class=\"raw-html-embed\"><div class=\"container-fluid pt-sm-3 pb-sm-3 pt-2 pb-2 strapi-footer text-m\">\n   <div class=\"row\">\n     <div class=\"col d-flex d-sm-block flex-column align-items-center\">\n         <span class=\"importantText  mb-3 mb-sm-0\">© 2022 NLTP. All rights reserved. </span>\n     </div>\n     <div class=\"col-sm-auto col-12 d-flex d-sm-block flex-column align-items-center\">\n         <a class=\"base-color-link strapi-footer-link mb-3 mb-sm-0\" href=\"https://www.nltp-info.eu/\">About project and NLTP toolkit</a>\n         <a class=\"base-color-link strapi-footer-link mb-3 mb-sm-0\" href=\"/page/terms\">Terms of Service</a>\n         <a class=\"base-color-link strapi-footer-link mb-3 mb-sm-0\" href=\"/page/privacy-policy\">Privacy policy</a>\n     </div>\n   </div>\n</div>\n</div>','en',1,1,'2022-06-27 17:24:56','2022-10-12 10:57:43');
/*!40000 ALTER TABLE `mt_mains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_mains__localizations`
--

DROP TABLE IF EXISTS `mt_mains__localizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mt_mains__localizations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `mt_main_id` int DEFAULT NULL,
  `mt-main_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_mains__localizations`
--

LOCK TABLES `mt_mains__localizations` WRITE;
/*!40000 ALTER TABLE `mt_mains__localizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_mains__localizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_website_translators`
--

DROP TABLE IF EXISTS `mt_website_translators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mt_website_translators` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `productPage` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `locale` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `productInformationPage` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_website_translators`
--

LOCK TABLES `mt_website_translators` WRITE;
/*!40000 ALTER TABLE `mt_website_translators` DISABLE KEYS */;
INSERT INTO `mt_website_translators` VALUES (1,3,1,1,'2022-09-06 15:58:03','2022-09-07 06:20:35','en',3);
/*!40000 ALTER TABLE `mt_website_translators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_website_translators__localizations`
--

DROP TABLE IF EXISTS `mt_website_translators__localizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mt_website_translators__localizations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `mt_website_translator_id` int DEFAULT NULL,
  `mt-website-translator_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_website_translators__localizations`
--

LOCK TABLES `mt_website_translators__localizations` WRITE;
/*!40000 ALTER TABLE `mt_website_translators__localizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_website_translators__localizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `navigations`
--

DROP TABLE IF EXISTS `navigations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `navigations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `visible` tinyint(1) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `navigations_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `navigations`
--

LOCK TABLES `navigations` WRITE;
/*!40000 ALTER TABLE `navigations` DISABLE KEYS */;
INSERT INTO `navigations` VALUES (1,'Main navigation','main-navigation',1,NULL,NULL);
/*!40000 ALTER TABLE `navigations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `navigations_items`
--

DROP TABLE IF EXISTS `navigations_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `navigations_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `externalPath` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `uiRouterKey` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `menuAttached` tinyint(1) DEFAULT NULL,
  `order` int DEFAULT NULL,
  `parent` int DEFAULT NULL,
  `master` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `navigations_items`
--

LOCK TABLES `navigations_items` WRITE;
/*!40000 ALTER TABLE `navigations_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `navigations_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `navigations_items__audience`
--

DROP TABLE IF EXISTS `navigations_items__audience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `navigations_items__audience` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `navigations_item_id` int DEFAULT NULL,
  `audience_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `navigations_items__audience`
--

LOCK TABLES `navigations_items__audience` WRITE;
/*!40000 ALTER TABLE `navigations_items__audience` DISABLE KEYS */;
/*!40000 ALTER TABLE `navigations_items__audience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `navigations_items_morph`
--

DROP TABLE IF EXISTS `navigations_items_morph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `navigations_items_morph` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `navigations_items_id` int DEFAULT NULL,
  `related_id` int DEFAULT NULL,
  `related_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `field` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `order` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `navigations_items_morph`
--

LOCK TABLES `navigations_items_morph` WRITE;
/*!40000 ALTER TABLE `navigations_items_morph` DISABLE KEYS */;
/*!40000 ALTER TABLE `navigations_items_morph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Show_title` tinyint(1) DEFAULT NULL,
  `White_background` tinyint(1) DEFAULT NULL,
  `Slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`Slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_components`
--

DROP TABLE IF EXISTS `pages_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `order` int unsigned NOT NULL,
  `component_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `component_id` int NOT NULL,
  `page_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `page_id_fk` (`page_id`),
  CONSTRAINT `page_id_fk` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_components`
--

LOCK TABLES `pages_components` WRITE;
/*!40000 ALTER TABLE `pages_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privacy_policies`
--

DROP TABLE IF EXISTS `privacy_policies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `privacy_policies` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `text` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `locale` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privacy_policies`
--

LOCK TABLES `privacy_policies` WRITE;
/*!40000 ALTER TABLE `privacy_policies` DISABLE KEYS */;
INSERT INTO `privacy_policies` VALUES (1,'<div class=\"raw-html-embed\"><div class=\"container text-justify\">\n<div class=\"row\">\n<div class=\"col-12 mt-3\">\n<h1>Privacy Policy (Example only)</h1>\n</div></div>\n<div class=\"row\">\n<div class=\"col-12\">\n<p>We are committed to protecting your privacy and personal data. Therefore, we use your personal data strictly within the legal limits of the applicable data protection laws. With this privacy policy, we inform you of the personal data we collect when you use our website or services.</p>\n<p>The NLTP service collects and uses your personal data exclusively within the framework of the provisions of the General Data Protection Regulation. In the following, we inform you about the type, scope, and purposes of the collection and use of personal data.</p>\n<h3>1. Data controller</h3>\n<p>The data controller responsible for data processing within the meaning of the General Data Protection Regulation, other data protection laws in force in the Member States of the European Union, and other provisions of a data protection nature is:</p>\n<p>[X]</p>\n<p>Please feel free to address any questions or concerns regarding data protection or privacy to: <b>nltp-info@example.com</b></p>\n<h3>2. Scope of data protection</h3>\n<p>Data protection concerns personal data as defined in the General Data Protection Regulation, i.e. all information relating to an identified or identifiable natural person. Identifiable is any natural person who can be identified directly or indirectly, in particular by assignment to an identifier such as a name, an identification number, location data, an online identifier, or one or more special characteristics. Usage data is data required to use our website; this data includes the start, end, and extent of the user’s website use.</p>\n<h3>3. Automatic data collection via website access</h3>\n<p>When you access our website your device automatically transmits certain data for technical reasons. The following data is stored separately from any other data you may transmit to us:</p>\n<ul class=\"privacy-list\">\n<li>Date and time of access</li>\n<li>Browser type and version</li>\n<li>Operating system</li>\n<li>URL of the website visited prior to ours</li>\n<li>Amount of data sent</li>\n<li>Requesting domain</li>\n<li>Notification of successful data retrieval</li>\n<li>Search term when using a web browser</li>\n<li>Shortened/anonymized IP</li>\n<li>Full IP address (for a maximum of 14 days)</li>\n</ul>\n<p>This data is stored for purely technical reasons and is never associated with any particular individual. The data about website access is used for error analysis, ensuring the security of the systems and to improve our translation service. For legitimate reasons, the full IP address is used to achieve the stated purposes for a very short period of a maximum of 14 days.</p>\n<h3>4. Texts and translations</h3>\n<p>When using the NLTP service, the texts you submit and their translations are never stored, and are used only insofar as it is necessary to create the translation. When using the NLTP service, we don\'t use your texts to improve the quality of our services.</p><p>Please note that you may not use our translation service for any texts containing personal data of any kind.</p>\n<h3>5. Registration</h3>\n<p>You may register with the NLTP. The following personal data will be stored for login purposes:</p>\n<ul class=\"privacy-list\">\n<li>Email address</li>\n<li>Password</li>\n<li>IP address</li>\n</ul>\n<h3>6. Cookies</h3>\n<p>This webpage, like many others, uses cookies to personalize content and ads, provide social media features and analyse our data traffic.</p>\n<p>By continuing to use our website, you accept our cookies.</p>\n<p>What is a cookie:</p>\n<p>A cookie is a small text file sent to your computer or mobile device when you visit a website that is saved by that website on your computer or mobile device when you open the website. On each subsequent visit, cookies are sent back to the original webpage or any other webpage that recognizes this cookie. Cookies function as a memory of a specific webpage enabling the webpage to remember your computer in following visits including that the cookies can remember your settings or improve your user experience.</p>\n<p>How we use cookies:</p>\n<p>There are multiple types of cookies (persistent and session). They differ by their usage goals and storage period. Over time, the cookies may get updated and customized to improve the service quality level.</p>\n<p>In general, cookies are used for:</p>\n<ul>\n<li>Provision of services – cookies provide basic functions such as page navigation.</li>\n<li>User settings – cookies enable a website to remember the information that changes the way the website works or looks, for example, the recommended language or your location region.</li>\n<li>Usage statistics and analysis – by collecting and anonymously reviewing the information, cookies help owners of websites to understand how users interact with their websites.</li><li>Marketing – cookies are used to track visitors to websites. The goal is to show relevant ads that are of interest to an individual user.</li>\n</ul>\n<p>We do not use cookies to collect personal information about users. However, some processed information can be considered personal data.</p>\n<p>We may share the information about how you use our site with our media, social, advertising and analysis partners.</p>\n<p>If you would like to limit cookies or block them on our website, you may do so by editing the settings of your web browser. However, then you will need to customize settings every time you visit the website, and there is a probability that some services and features might not work.</p>\n<h3>7. Google Analytics (with an anonymization function)</h3>\n<p>We use Google Analytics (with an anonymization function), a web analytics service provided by Google Inc. (\"Google\"). Google Analytics uses cookies which permit an analysis of your use of the website. The information about your website use generated by the cookie (including your truncated IP address) is transmitted to a server controlled by Google in the USA and is stored there. Google uses this information to analyze your use of the website, to generate reports about website activities for website operators, and to provide further services related to website and internet use. Google may also share such information with third parties to the extent it is legally required to do so and/or to the extent third parties process data on behalf of Google.</p>\n<p>You can find detailed information about how Google uses your data in <a href=\"https://policies.google.com/privacy?hl=en\" target=\"blank\"><strong>Google’s privacy policy</strong></a>.</p>\n<p>We use Google Analytics with the anonymization function. By means of this addition, Google shortens and anonymizes the IP address of the Internet connection of the person concerned, if our Internet pages are accessed from a member state of the European Union or from another governmental party to the Agreement on the European Economic Area.</p>\n<p>You may deactivate Google Analytics with the help of a browser add-on if you do not want this website analysis. This add-on can be downloaded <a href=\"https://tools.google.com/dlpage/gaoptout?hl=en\" target=\"blank\"><strong>here</strong></a>.</p>\n<p>User-based event data at Google Analytics is deleted after 38 months.</p>\n<h3>8. Data security</h3>\n<p>Your visits to our website are protected by state-of-the-art encryption technology. The level of protection always depends on which encryption your Internet browser supports. You can tell whether an individual page of our website is encrypted by the key or closed lock symbol in the status bar of your browser. We also use appropriate technical and organizational security measures to protect your data against accidental or intentional manipulation, partial or complete loss, destruction, or against unauthorized access by third parties. Our security measures are continuously improved in line with technological developments.</p>\n<h3>9. Your rights</h3>\n<p>You have the following rights under European Union law. If you wish to exercise any of the rights below, simply write to us at the above address.</p>\n<ul>\n<li>Right to confirmation and right to information - we will be happy to confirm whether we process your personal data, what data it is and for what purpose it is processed.</li>\n<li>Right to rectification - if the data we store is incorrect, we will of course be happy to correct it.</li>\n<li>Right of erasure - if you want your personal data to be deleted, we will, as far as legally possible, comply with your request. If data must be kept for legal reasons, it will be blocked. The data is then no longer available for further use.</li>\n<li>Right to restriction of processing - should you wish to restrict use, we will, as far as legally possible, comply with your request.</li>\n<li>Right of revocation - if you wish to revoke any consents already given, we will pursue your request accordingly.</li>\n<li>Right to object - if your personal data are processed on the basis of legitimate interests pursuant to point (f) of Article 6(1) of the GDPR, you have the right to object to the processing of your personal data pursuant to Article 21 of the GDPR if there are reasons for doing so that result from your particular situation or are against direct marketing. In the latter case, you have a general right to object, which we will accept without a particular situation being stated. If you would like to exercise your right of revocation or objection, simply send an e-mail to: <b>nltp-dpo@example.com</b>.</li>\n</ul>\n<p>You also have the right to lodge a complaint to a supervisory authority about the processing of your personal data.</p>\n<h3>10. Changes to this privacy policy</h3>\n<p>We reserve the right to modify this privacy policy.</p>\n<p>Last updated: May 2022</p></div></div></div></div>','en',1,1,'2022-06-07 09:21:10','2022-10-14 08:13:24');
/*!40000 ALTER TABLE `privacy_policies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privacy_policies__localizations`
--

DROP TABLE IF EXISTS `privacy_policies__localizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `privacy_policies__localizations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `privacy_policy_id` int DEFAULT NULL,
  `privacy-policy_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privacy_policies__localizations`
--

LOCK TABLES `privacy_policies__localizations` WRITE;
/*!40000 ALTER TABLE `privacy_policies__localizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `privacy_policies__localizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_informations`
--

DROP TABLE IF EXISTS `product_informations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_informations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `company` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `productName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `route` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_informations`
--

LOCK TABLES `product_informations` WRITE;
/*!40000 ALTER TABLE `product_informations` DISABLE KEYS */;
INSERT INTO `product_informations` VALUES (1,'NLTP','About platform','Powerful and secure language tools for you','en',1,1,'2022-07-20 08:33:49','2022-10-14 07:31:51','about'),(2,'NLTP','CAT Tool','Save time on translation editing with a CAT tool','en',1,1,'2022-08-01 12:14:27','2022-10-14 07:21:06','CAT Tool'),(3,'NLTP','Website Translator','Make your website multilingual effortlessly','en',1,1,'2022-09-06 15:57:53','2022-10-10 05:17:30','website-translator'),(4,'NLTP','Trados Studio plugin','Connect NLTP to Trados Studio for seamless translation process','en',1,1,'2022-09-20 08:41:44','2022-10-10 04:28:27','Trados-Studio-Plugin'),(5,'NLTP','Contact us','We\'d love to hear from you','en',1,2,'2022-09-29 09:55:35','2022-10-14 08:19:10','contact-us');
/*!40000 ALTER TABLE `product_informations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_informations__localizations`
--

DROP TABLE IF EXISTS `product_informations__localizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_informations__localizations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_information_id` int DEFAULT NULL,
  `product-information_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_informations__localizations`
--

LOCK TABLES `product_informations__localizations` WRITE;
/*!40000 ALTER TABLE `product_informations__localizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_informations__localizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_informations_components`
--

DROP TABLE IF EXISTS `product_informations_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_informations_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `order` int unsigned NOT NULL,
  `component_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `component_id` int NOT NULL,
  `product_information_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_information_id_fk` (`product_information_id`),
  CONSTRAINT `product_information_id_fk` FOREIGN KEY (`product_information_id`) REFERENCES `product_informations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_informations_components`
--

LOCK TABLES `product_informations_components` WRITE;
/*!40000 ALTER TABLE `product_informations_components` DISABLE KEYS */;
INSERT INTO `product_informations_components` VALUES (4,'head',1,'components_sections_htmls',2,2),(5,'head',2,'components_sections_link_buttons',3,2),(6,'head',3,'components_sections_link_buttons',4,2),(8,'body',1,'components_feature_list_feature_lists',1,2),(10,'head',1,'components_sections_htmls',5,3),(11,'head',2,'components_sections_link_buttons',5,3),(12,'head',3,'components_sections_link_buttons',6,3),(13,'head',4,'components_sections_htmls',6,3),(15,'body',1,'components_feature_list_feature_lists',2,3),(16,'body',1,'components_feature_list_feature_lists',3,1),(20,'head',1,'components_sections_htmls',9,1),(21,'head',1,'components_sections_htmls',10,4),(22,'head',2,'components_sections_link_buttons',9,1),(23,'head',3,'components_sections_link_buttons',10,1),(24,'head',2,'components_sections_link_buttons',11,4),(25,'head',3,'components_sections_link_buttons',12,4),(30,'head',4,'components_sections_htmls',14,4),(31,'head',4,'components_sections_htmls',15,2),(32,'head',1,'components_sections_htmls',16,5),(33,'head',2,'components_sections_link_buttons',13,5),(34,'head',3,'components_sections_link_buttons',14,5),(35,'body',2,'components_universal_page_image_title_content_links',1,1),(36,'body',3,'components_universal_page_image_title_content_links',2,1);
/*!40000 ALTER TABLE `product_informations_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register_nodes`
--

DROP TABLE IF EXISTS `register_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `register_nodes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `Node_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Contact_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Contact_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Node_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Node_description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `Node_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Contact_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register_nodes`
--

LOCK TABLES `register_nodes` WRITE;
/*!40000 ALTER TABLE `register_nodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `register_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_administrator`
--

DROP TABLE IF EXISTS `strapi_administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_administrator` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `resetPasswordToken` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `registrationToken` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `preferedLanguage` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_administrator_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_administrator`
--

LOCK TABLES `strapi_administrator` WRITE;
/*!40000 ALTER TABLE `strapi_administrator` DISABLE KEYS */;
INSERT INTO `strapi_administrator` VALUES (1,'NLTP','Admin',NULL,'cmsuser@example.com','$2a$10$I5ZRreXi6jFXuFN9KliWG.oL7vwwCYCeoan.vrWk2.GsdF2b.DMnW',NULL,NULL,1,NULL,NULL);
/*!40000 ALTER TABLE `strapi_administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_permission`
--

DROP TABLE IF EXISTS `strapi_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_permission` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `conditions` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `role` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=604 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_permission`
--

LOCK TABLES `strapi_permission` WRITE;
/*!40000 ALTER TABLE `strapi_permission` DISABLE KEYS */;
INSERT INTO `strapi_permission` VALUES (1,'plugins::content-manager.explorer.create','application::article.article','{\"fields\":[\"Title\",\"Content\",\"Image\",\"Published_date\",\"Summary\"]}','[]',2,'2022-06-02 10:27:12','2022-06-02 10:27:12'),(2,'plugins::content-manager.explorer.create','application::cookie-consent.cookie-consent','{\"fields\":[\"title\",\"description\",\"accept_button\",\"decline_button\"]}','[]',2,'2022-06-02 10:27:12','2022-06-02 10:27:12'),(3,'plugins::content-manager.explorer.create','application::landing-page.landing-page','{\"fields\":[\"Slug\",\"Body\",\"News\"]}','[]',2,'2022-06-02 10:27:12','2022-06-02 10:27:12'),(4,'plugins::content-manager.explorer.create','application::page.page','{\"fields\":[\"Title\",\"Body\",\"Show_title\",\"White_background\",\"Slug\",\"navigation\"]}','[]',2,'2022-06-02 10:27:12','2022-06-02 10:27:12'),(5,'plugins::content-manager.explorer.create','application::register-node.register-node','{\"fields\":[\"Node_name\",\"Contact_email\",\"Contact_name\",\"Node_url\",\"Node_description\",\"Node_code\",\"Contact_phone\"]}','[]',2,'2022-06-02 10:27:12','2022-06-02 10:27:12'),(6,'plugins::content-manager.explorer.create','application::terms-of-service.terms-of-service','{\"fields\":[\"text\"]}','[]',2,'2022-06-02 10:27:12','2022-06-02 10:27:12'),(7,'plugins::content-manager.explorer.create','application::privacy-policy.privacy-policy','{\"fields\":[\"text\"]}','[]',2,'2022-06-02 10:27:12','2022-06-02 10:27:12'),(8,'plugins::content-manager.explorer.read','application::article.article','{\"fields\":[\"Title\",\"Content\",\"Image\",\"Published_date\",\"Summary\"]}','[]',2,'2022-06-02 10:27:12','2022-06-02 10:27:12'),(9,'plugins::content-manager.explorer.read','application::cookie-consent.cookie-consent','{\"fields\":[\"title\",\"description\",\"accept_button\",\"decline_button\"]}','[]',2,'2022-06-02 10:27:12','2022-06-02 10:27:12'),(10,'plugins::content-manager.explorer.create','plugins::navigation.audience','{\"fields\":[\"name\",\"key\"]}','[]',2,'2022-06-02 10:27:12','2022-06-02 10:27:12'),(11,'plugins::content-manager.explorer.read','application::landing-page.landing-page','{\"fields\":[\"Slug\",\"Body\",\"News\"]}','[]',2,'2022-06-02 10:27:12','2022-06-02 10:27:12'),(12,'plugins::content-manager.explorer.read','application::page.page','{\"fields\":[\"Title\",\"Body\",\"Show_title\",\"White_background\",\"Slug\",\"navigation\"]}','[]',2,'2022-06-02 10:27:12','2022-06-02 10:27:12'),(13,'plugins::content-manager.explorer.read','application::privacy-policy.privacy-policy','{\"fields\":[\"text\"]}','[]',2,'2022-06-02 10:27:12','2022-06-02 10:27:12'),(14,'plugins::content-manager.explorer.read','application::register-node.register-node','{\"fields\":[\"Node_name\",\"Contact_email\",\"Contact_name\",\"Node_url\",\"Node_description\",\"Node_code\",\"Contact_phone\"]}','[]',2,'2022-06-02 10:27:12','2022-06-02 10:27:12'),(15,'plugins::content-manager.explorer.read','application::terms-of-service.terms-of-service','{\"fields\":[\"text\"]}','[]',2,'2022-06-02 10:27:12','2022-06-02 10:27:12'),(16,'plugins::content-manager.explorer.read','plugins::navigation.audience','{\"fields\":[\"name\",\"key\"]}','[]',2,'2022-06-02 10:27:12','2022-06-02 10:27:12'),(17,'plugins::content-manager.explorer.update','application::article.article','{\"fields\":[\"Title\",\"Content\",\"Image\",\"Published_date\",\"Summary\"]}','[]',2,'2022-06-02 10:27:12','2022-06-02 10:27:12'),(18,'plugins::content-manager.explorer.update','application::cookie-consent.cookie-consent','{\"fields\":[\"title\",\"description\",\"accept_button\",\"decline_button\"]}','[]',2,'2022-06-02 10:27:12','2022-06-02 10:27:12'),(19,'plugins::content-manager.explorer.update','application::landing-page.landing-page','{\"fields\":[\"Slug\",\"Body\",\"News\"]}','[]',2,'2022-06-02 10:27:12','2022-06-02 10:27:12'),(20,'plugins::content-manager.explorer.update','application::page.page','{\"fields\":[\"Title\",\"Body\",\"Show_title\",\"White_background\",\"Slug\",\"navigation\"]}','[]',2,'2022-06-02 10:27:12','2022-06-02 10:27:12'),(21,'plugins::content-manager.explorer.update','application::register-node.register-node','{\"fields\":[\"Node_name\",\"Contact_email\",\"Contact_name\",\"Node_url\",\"Node_description\",\"Node_code\",\"Contact_phone\"]}','[]',2,'2022-06-02 10:27:12','2022-06-02 10:27:13'),(22,'plugins::content-manager.explorer.update','application::privacy-policy.privacy-policy','{\"fields\":[\"text\"]}','[]',2,'2022-06-02 10:27:12','2022-06-02 10:27:12'),(23,'plugins::content-manager.explorer.update','application::terms-of-service.terms-of-service','{\"fields\":[\"text\"]}','[]',2,'2022-06-02 10:27:12','2022-06-02 10:27:12'),(24,'plugins::content-manager.explorer.update','plugins::navigation.audience','{\"fields\":[\"name\",\"key\"]}','[]',2,'2022-06-02 10:27:12','2022-06-02 10:27:13'),(25,'plugins::content-manager.explorer.delete','application::article.article','{}','[]',2,'2022-06-02 10:27:12','2022-06-02 10:27:13'),(27,'plugins::content-manager.explorer.delete','application::landing-page.landing-page','{}','[]',2,'2022-06-02 10:27:12','2022-06-02 10:27:13'),(28,'plugins::content-manager.explorer.delete','application::page.page','{}','[]',2,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(30,'plugins::content-manager.explorer.delete','application::register-node.register-node','{}','[]',2,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(31,'plugins::content-manager.explorer.delete','plugins::navigation.audience','{}','[]',2,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(33,'plugins::content-manager.explorer.publish','application::article.article','{}','[]',2,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(34,'plugins::upload.read',NULL,'{}','[]',2,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(35,'plugins::upload.assets.create',NULL,'{}','[]',2,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(36,'plugins::upload.assets.update',NULL,'{}','[]',2,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(37,'plugins::upload.assets.download',NULL,'{}','[]',2,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(38,'plugins::upload.assets.copy-link',NULL,'{}','[]',2,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(39,'plugins::content-manager.explorer.create','application::page.page','{\"fields\":[\"Title\",\"Body\",\"Show_title\",\"White_background\",\"Slug\",\"navigation\"]}','[\"admin::is-creator\"]',3,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(40,'plugins::content-manager.explorer.create','application::cookie-consent.cookie-consent','{\"fields\":[\"title\",\"description\",\"accept_button\",\"decline_button\"]}','[\"admin::is-creator\"]',3,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(41,'plugins::content-manager.explorer.create','application::article.article','{\"fields\":[\"Title\",\"Content\",\"Image\",\"Published_date\",\"Summary\"]}','[\"admin::is-creator\"]',3,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(42,'plugins::content-manager.explorer.create','application::landing-page.landing-page','{\"fields\":[\"Slug\",\"Body\",\"News\"]}','[\"admin::is-creator\"]',3,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(43,'plugins::content-manager.explorer.create','application::privacy-policy.privacy-policy','{\"fields\":[\"text\"]}','[\"admin::is-creator\"]',3,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(44,'plugins::content-manager.explorer.create','application::terms-of-service.terms-of-service','{\"fields\":[\"text\"]}','[\"admin::is-creator\"]',3,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(45,'plugins::content-manager.explorer.create','application::register-node.register-node','{\"fields\":[\"Node_name\",\"Contact_email\",\"Contact_name\",\"Node_url\",\"Node_description\",\"Node_code\",\"Contact_phone\"]}','[\"admin::is-creator\"]',3,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(46,'plugins::content-manager.explorer.read','application::cookie-consent.cookie-consent','{\"fields\":[\"title\",\"description\",\"accept_button\",\"decline_button\"]}','[\"admin::is-creator\"]',3,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(47,'plugins::content-manager.explorer.read','application::article.article','{\"fields\":[\"Title\",\"Content\",\"Image\",\"Published_date\",\"Summary\"]}','[\"admin::is-creator\"]',3,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(48,'plugins::content-manager.explorer.create','plugins::navigation.audience','{\"fields\":[\"name\",\"key\"]}','[\"admin::is-creator\"]',3,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(49,'plugins::content-manager.explorer.read','application::landing-page.landing-page','{\"fields\":[\"Slug\",\"Body\",\"News\"]}','[\"admin::is-creator\"]',3,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(50,'plugins::content-manager.explorer.read','application::page.page','{\"fields\":[\"Title\",\"Body\",\"Show_title\",\"White_background\",\"Slug\",\"navigation\"]}','[\"admin::is-creator\"]',3,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(51,'plugins::content-manager.explorer.read','application::privacy-policy.privacy-policy','{\"fields\":[\"text\"]}','[\"admin::is-creator\"]',3,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(52,'plugins::content-manager.explorer.read','application::register-node.register-node','{\"fields\":[\"Node_name\",\"Contact_email\",\"Contact_name\",\"Node_url\",\"Node_description\",\"Node_code\",\"Contact_phone\"]}','[\"admin::is-creator\"]',3,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(53,'plugins::content-manager.explorer.read','plugins::navigation.audience','{\"fields\":[\"name\",\"key\"]}','[\"admin::is-creator\"]',3,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(54,'plugins::content-manager.explorer.read','application::terms-of-service.terms-of-service','{\"fields\":[\"text\"]}','[\"admin::is-creator\"]',3,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(55,'plugins::content-manager.explorer.update','application::page.page','{\"fields\":[\"Title\",\"Body\",\"Show_title\",\"White_background\",\"Slug\",\"navigation\"]}','[\"admin::is-creator\"]',3,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(56,'plugins::content-manager.explorer.update','application::landing-page.landing-page','{\"fields\":[\"Slug\",\"Body\",\"News\"]}','[\"admin::is-creator\"]',3,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(57,'plugins::content-manager.explorer.update','application::article.article','{\"fields\":[\"Title\",\"Content\",\"Image\",\"Published_date\",\"Summary\"]}','[\"admin::is-creator\"]',3,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(58,'plugins::content-manager.explorer.update','application::cookie-consent.cookie-consent','{\"fields\":[\"title\",\"description\",\"accept_button\",\"decline_button\"]}','[\"admin::is-creator\"]',3,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(59,'plugins::content-manager.explorer.update','application::privacy-policy.privacy-policy','{\"fields\":[\"text\"]}','[\"admin::is-creator\"]',3,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(60,'plugins::content-manager.explorer.update','application::register-node.register-node','{\"fields\":[\"Node_name\",\"Contact_email\",\"Contact_name\",\"Node_url\",\"Node_description\",\"Node_code\",\"Contact_phone\"]}','[\"admin::is-creator\"]',3,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(61,'plugins::content-manager.explorer.update','application::terms-of-service.terms-of-service','{\"fields\":[\"text\"]}','[\"admin::is-creator\"]',3,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(62,'plugins::content-manager.explorer.update','plugins::navigation.audience','{\"fields\":[\"name\",\"key\"]}','[\"admin::is-creator\"]',3,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(63,'plugins::content-manager.explorer.delete','application::article.article','{}','[\"admin::is-creator\"]',3,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(65,'plugins::content-manager.explorer.delete','application::landing-page.landing-page','{}','[\"admin::is-creator\"]',3,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(66,'plugins::content-manager.explorer.delete','application::page.page','{}','[\"admin::is-creator\"]',3,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(68,'plugins::content-manager.explorer.delete','application::register-node.register-node','{}','[\"admin::is-creator\"]',3,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(70,'plugins::content-manager.explorer.delete','plugins::navigation.audience','{}','[\"admin::is-creator\"]',3,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(71,'plugins::upload.read',NULL,'{}','[\"admin::is-creator\"]',3,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(72,'plugins::upload.assets.create',NULL,'{}','[]',3,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(73,'plugins::upload.assets.copy-link',NULL,'{}','[]',3,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(74,'plugins::upload.assets.download',NULL,'{}','[]',3,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(75,'plugins::upload.assets.update',NULL,'{}','[\"admin::is-creator\"]',3,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(76,'plugins::content-manager.explorer.create','application::cookie-consent.cookie-consent','{\"fields\":[\"title\",\"description\",\"accept_button\",\"decline_button\"],\"locales\":[\"en\"]}','[]',1,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(77,'plugins::content-manager.explorer.create','application::article.article','{\"fields\":[\"Title\",\"Content\",\"Image\",\"Published_date\",\"Summary\"]}','[]',1,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(78,'plugins::content-manager.explorer.create','application::page.page','{\"fields\":[\"Title\",\"Body\",\"Show_title\",\"White_background\",\"Slug\",\"navigation\"]}','[]',1,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(79,'plugins::content-manager.explorer.create','application::landing-page.landing-page','{\"fields\":[\"Slug\",\"Body\",\"News\"]}','[]',1,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(80,'plugins::content-manager.explorer.create','application::privacy-policy.privacy-policy','{\"fields\":[\"text\"],\"locales\":[\"en\"]}','[]',1,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(81,'plugins::content-manager.explorer.create','application::register-node.register-node','{\"fields\":[\"Node_name\",\"Contact_email\",\"Contact_name\",\"Node_url\",\"Node_description\",\"Node_code\",\"Contact_phone\"]}','[]',1,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(82,'plugins::content-manager.explorer.create','application::terms-of-service.terms-of-service','{\"fields\":[\"text\"],\"locales\":[\"en\"]}','[]',1,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(83,'plugins::content-manager.explorer.create','plugins::users-permissions.user','{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}','[]',1,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(84,'plugins::content-manager.explorer.read','application::article.article','{\"fields\":[\"Title\",\"Content\",\"Image\",\"Published_date\",\"Summary\"]}','[]',1,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(85,'plugins::content-manager.explorer.create','plugins::navigation.audience','{\"fields\":[\"name\",\"key\"]}','[]',1,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(86,'plugins::content-manager.explorer.read','application::landing-page.landing-page','{\"fields\":[\"Slug\",\"Body\",\"News\"]}','[]',1,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(87,'plugins::content-manager.explorer.read','application::cookie-consent.cookie-consent','{\"fields\":[\"title\",\"description\",\"accept_button\",\"decline_button\"],\"locales\":[\"en\"]}','[]',1,'2022-06-02 10:27:13','2022-06-02 10:27:13'),(88,'plugins::content-manager.explorer.read','application::page.page','{\"fields\":[\"Title\",\"Body\",\"Show_title\",\"White_background\",\"Slug\",\"navigation\"]}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(89,'plugins::content-manager.explorer.read','application::register-node.register-node','{\"fields\":[\"Node_name\",\"Contact_email\",\"Contact_name\",\"Node_url\",\"Node_description\",\"Node_code\",\"Contact_phone\"]}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(90,'plugins::content-manager.explorer.read','application::privacy-policy.privacy-policy','{\"fields\":[\"text\"],\"locales\":[\"en\"]}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(91,'plugins::content-manager.explorer.read','application::terms-of-service.terms-of-service','{\"fields\":[\"text\"],\"locales\":[\"en\"]}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(92,'plugins::content-manager.explorer.read','plugins::navigation.audience','{\"fields\":[\"name\",\"key\"]}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(93,'plugins::content-manager.explorer.read','plugins::users-permissions.user','{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(94,'plugins::content-manager.explorer.update','application::article.article','{\"fields\":[\"Title\",\"Content\",\"Image\",\"Published_date\",\"Summary\"]}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(95,'plugins::content-manager.explorer.update','application::cookie-consent.cookie-consent','{\"fields\":[\"title\",\"description\",\"accept_button\",\"decline_button\"],\"locales\":[\"en\"]}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(96,'plugins::content-manager.explorer.update','application::landing-page.landing-page','{\"fields\":[\"Slug\",\"Body\",\"News\"]}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(97,'plugins::content-manager.explorer.update','application::page.page','{\"fields\":[\"Title\",\"Body\",\"Show_title\",\"White_background\",\"Slug\",\"navigation\"]}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(98,'plugins::content-manager.explorer.update','application::privacy-policy.privacy-policy','{\"fields\":[\"text\"],\"locales\":[\"en\"]}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(99,'plugins::content-manager.explorer.update','application::register-node.register-node','{\"fields\":[\"Node_name\",\"Contact_email\",\"Contact_name\",\"Node_url\",\"Node_description\",\"Node_code\",\"Contact_phone\"]}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(100,'plugins::content-manager.explorer.update','application::terms-of-service.terms-of-service','{\"fields\":[\"text\"],\"locales\":[\"en\"]}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(101,'plugins::content-manager.explorer.update','plugins::navigation.audience','{\"fields\":[\"name\",\"key\"]}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(102,'plugins::content-manager.explorer.update','plugins::users-permissions.user','{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(113,'plugins::content-type-builder.read',NULL,'{}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(114,'plugins::upload.assets.update',NULL,'{}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(115,'plugins::upload.assets.create',NULL,'{}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(116,'plugins::upload.read',NULL,'{}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(117,'plugins::email.settings.read',NULL,'{}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(118,'plugins::upload.assets.download',NULL,'{}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(119,'plugins::upload.assets.copy-link',NULL,'{}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(120,'plugins::upload.settings.read',NULL,'{}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(121,'plugins::navigation.read',NULL,'{}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(122,'plugins::navigation.update',NULL,'{}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(123,'plugins::i18n.locale.read',NULL,'{}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(124,'plugins::i18n.locale.create',NULL,'{}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(125,'plugins::i18n.locale.update',NULL,'{}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(126,'plugins::content-manager.single-types.configure-view',NULL,'{}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(127,'plugins::i18n.locale.delete',NULL,'{}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(128,'plugins::content-manager.collection-types.configure-view',NULL,'{}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(129,'plugins::content-manager.components.configure-layout',NULL,'{}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(130,'plugins::users-permissions.roles.create',NULL,'{}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(131,'plugins::users-permissions.roles.read',NULL,'{}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(132,'plugins::users-permissions.roles.update',NULL,'{}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(133,'plugins::users-permissions.roles.delete',NULL,'{}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(134,'plugins::users-permissions.providers.read',NULL,'{}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(135,'plugins::users-permissions.providers.update',NULL,'{}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(136,'plugins::users-permissions.email-templates.read',NULL,'{}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(137,'plugins::users-permissions.advanced-settings.read',NULL,'{}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(138,'plugins::users-permissions.email-templates.update',NULL,'{}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(139,'plugins::users-permissions.advanced-settings.update',NULL,'{}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(140,'admin::marketplace.read',NULL,'{}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(141,'admin::marketplace.plugins.install',NULL,'{}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(142,'admin::marketplace.plugins.uninstall',NULL,'{}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(143,'admin::webhooks.create',NULL,'{}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(144,'admin::webhooks.delete',NULL,'{}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(145,'admin::webhooks.update',NULL,'{}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(146,'admin::webhooks.read',NULL,'{}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(147,'admin::users.read',NULL,'{}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(148,'admin::users.create',NULL,'{}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(149,'admin::users.update',NULL,'{}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(150,'admin::users.delete',NULL,'{}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(151,'admin::roles.read',NULL,'{}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(152,'admin::roles.create',NULL,'{}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(153,'admin::roles.update',NULL,'{}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(154,'admin::roles.delete',NULL,'{}','[]',1,'2022-06-02 10:27:14','2022-06-02 10:27:14'),(191,'plugins::content-manager.explorer.create','application::translator.translator','{\"fields\":[\"header\",\"footer\"],\"locales\":[\"en\"]}','[]',1,'2022-06-10 05:08:37','2022-06-10 05:08:37'),(192,'plugins::content-manager.explorer.read','application::translator.translator','{\"fields\":[\"header\",\"footer\"],\"locales\":[\"en\"]}','[]',1,'2022-06-10 05:08:37','2022-06-10 05:08:37'),(193,'plugins::content-manager.explorer.update','application::translator.translator','{\"fields\":[\"header\",\"footer\"],\"locales\":[\"en\"]}','[]',1,'2022-06-10 05:08:37','2022-06-10 05:08:37'),(208,'plugins::content-manager.explorer.create','application::mt-main.mt-main','{\"fields\":[\"footer\"],\"locales\":[\"en\"]}','[]',1,'2022-06-27 14:57:37','2022-06-27 14:57:37'),(209,'plugins::content-manager.explorer.update','application::mt-main.mt-main','{\"fields\":[\"footer\"],\"locales\":[\"en\"]}','[]',1,'2022-06-27 14:57:37','2022-06-27 14:57:37'),(210,'plugins::content-manager.explorer.read','application::mt-main.mt-main','{\"fields\":[\"footer\"],\"locales\":[\"en\"]}','[]',1,'2022-06-27 14:57:37','2022-06-27 14:57:37'),(312,'plugins::content-manager.explorer.create','application::product-information.product-information','{\"fields\":[\"company\",\"productName\",\"image\",\"body\",\"title\",\"route\",\"head\"],\"locales\":[\"en\"]}','[]',1,'2022-08-01 04:38:07','2022-08-01 04:38:07'),(315,'plugins::content-manager.explorer.update','application::product-information.product-information','{\"fields\":[\"company\",\"productName\",\"image\",\"body\",\"title\",\"route\",\"head\"],\"locales\":[\"en\"]}','[]',1,'2022-08-01 04:38:07','2022-08-01 04:38:07'),(321,'plugins::content-manager.explorer.read','application::product-information.product-information','{\"fields\":[\"company\",\"productName\",\"image\",\"body\",\"title\",\"route\",\"head\"],\"locales\":[\"en\"]}','[]',1,'2022-08-01 04:38:07','2022-08-01 04:38:07'),(331,'plugins::content-manager.explorer.read','application::cat.cat','{\"fields\":[\"introduction\",\"productInformationPage\"],\"locales\":[\"en\"]}','[]',1,'2022-08-05 11:04:38','2022-08-05 11:04:38'),(332,'plugins::content-manager.explorer.create','application::cat.cat','{\"fields\":[\"introduction\",\"productInformationPage\"],\"locales\":[\"en\"]}','[]',1,'2022-08-05 11:04:38','2022-08-05 11:04:38'),(333,'plugins::content-manager.explorer.update','application::cat.cat','{\"fields\":[\"introduction\",\"productInformationPage\"],\"locales\":[\"en\"]}','[]',1,'2022-08-05 11:04:38','2022-08-05 11:04:38'),(454,'plugins::content-manager.explorer.read','application::mt-website-translator.mt-website-translator','{\"fields\":[\"productInformationPage\"],\"locales\":[\"en\"]}','[]',1,'2022-09-06 16:24:29','2022-09-06 16:24:29'),(457,'plugins::content-manager.explorer.create','application::mt-website-translator.mt-website-translator','{\"fields\":[\"productInformationPage\"],\"locales\":[\"en\"]}','[]',1,'2022-09-06 16:24:29','2022-09-06 16:24:29'),(458,'plugins::content-manager.explorer.update','application::mt-website-translator.mt-website-translator','{\"fields\":[\"productInformationPage\"],\"locales\":[\"en\"]}','[]',1,'2022-09-06 16:24:29','2022-09-06 16:24:29'),(564,'plugins::content-manager.explorer.read','application::trados-plugin.trados-plugin','{\"fields\":[\"productInformationPage\"],\"locales\":[\"en\"]}','[]',1,'2022-09-29 07:41:14','2022-09-29 07:41:14'),(565,'plugins::content-manager.explorer.create','application::trados-plugin.trados-plugin','{\"fields\":[\"productInformationPage\"],\"locales\":[\"en\"]}','[]',1,'2022-09-29 07:41:14','2022-09-29 07:41:14'),(569,'plugins::content-manager.explorer.update','application::trados-plugin.trados-plugin','{\"fields\":[\"productInformationPage\"],\"locales\":[\"en\"]}','[]',1,'2022-09-29 07:41:14','2022-09-29 07:41:14'),(584,'plugins::content-manager.explorer.read','application::menu-items.menu-items','{\"fields\":[\"icon\",\"title\",\"link\",\"customId\",\"disabled\",\"externalLink\",\"plausibleEvent.eventId\",\"plausibleEvent.properties.key\",\"plausibleEvent.properties.value\"],\"locales\":[\"en\"]}','[]',1,'2022-10-06 03:15:26','2022-10-06 03:15:26'),(585,'plugins::content-manager.explorer.create','application::menu-items.menu-items','{\"fields\":[\"icon\",\"title\",\"link\",\"customId\",\"disabled\",\"externalLink\",\"plausibleEvent.eventId\",\"plausibleEvent.properties.key\",\"plausibleEvent.properties.value\"],\"locales\":[\"en\"]}','[]',1,'2022-10-06 03:15:26','2022-10-06 03:15:26'),(586,'plugins::content-manager.explorer.delete','application::cat.cat','{\"locales\":[\"en\"]}','[]',1,'2022-10-06 03:15:26','2022-10-06 03:15:26'),(587,'plugins::content-manager.explorer.update','application::menu-items.menu-items','{\"fields\":[\"icon\",\"title\",\"link\",\"customId\",\"disabled\",\"externalLink\",\"plausibleEvent.eventId\",\"plausibleEvent.properties.key\",\"plausibleEvent.properties.value\"],\"locales\":[\"en\"]}','[]',1,'2022-10-06 03:15:26','2022-10-06 03:15:26'),(588,'plugins::content-manager.explorer.delete','application::landing-page.landing-page','{}','[]',1,'2022-10-06 03:15:26','2022-10-06 03:15:26'),(589,'plugins::content-manager.explorer.delete','application::cookie-consent.cookie-consent','{\"locales\":[\"en\"]}','[]',1,'2022-10-06 03:15:26','2022-10-06 03:15:26'),(590,'plugins::content-manager.explorer.delete','application::article.article','{}','[]',1,'2022-10-06 03:15:26','2022-10-06 03:15:26'),(591,'plugins::content-manager.explorer.delete','application::menu-items.menu-items','{\"locales\":[\"en\"]}','[]',1,'2022-10-06 03:15:26','2022-10-06 03:15:26'),(592,'plugins::content-manager.explorer.delete','application::mt-main.mt-main','{\"locales\":[\"en\"]}','[]',1,'2022-10-06 03:15:26','2022-10-06 03:15:26'),(593,'plugins::content-manager.explorer.delete','application::mt-website-translator.mt-website-translator','{\"locales\":[\"en\"]}','[]',1,'2022-10-06 03:15:26','2022-10-06 03:15:26'),(594,'plugins::content-manager.explorer.delete','application::privacy-policy.privacy-policy','{\"locales\":[\"en\"]}','[]',1,'2022-10-06 03:15:27','2022-10-06 03:15:27'),(595,'plugins::content-manager.explorer.delete','application::page.page','{}','[]',1,'2022-10-06 03:15:27','2022-10-06 03:15:27'),(596,'plugins::content-manager.explorer.delete','application::product-information.product-information','{\"locales\":[\"en\"]}','[]',1,'2022-10-06 03:15:27','2022-10-06 03:15:27'),(597,'plugins::content-manager.explorer.delete','application::register-node.register-node','{}','[]',1,'2022-10-06 03:15:27','2022-10-06 03:15:27'),(598,'plugins::content-manager.explorer.delete','application::terms-of-service.terms-of-service','{\"locales\":[\"en\"]}','[]',1,'2022-10-06 03:15:27','2022-10-06 03:15:27'),(599,'plugins::content-manager.explorer.delete','application::trados-plugin.trados-plugin','{\"locales\":[\"en\"]}','[]',1,'2022-10-06 03:15:27','2022-10-06 03:15:27'),(600,'plugins::content-manager.explorer.delete','application::translator.translator','{\"locales\":[\"en\"]}','[]',1,'2022-10-06 03:15:27','2022-10-06 03:15:27'),(601,'plugins::content-manager.explorer.delete','plugins::navigation.audience','{}','[]',1,'2022-10-06 03:15:27','2022-10-06 03:15:27'),(602,'plugins::content-manager.explorer.publish','application::article.article','{}','[]',1,'2022-10-06 03:15:27','2022-10-06 03:15:27'),(603,'plugins::content-manager.explorer.delete','plugins::users-permissions.user','{}','[]',1,'2022-10-06 03:15:27','2022-10-06 03:15:27');
/*!40000 ALTER TABLE `strapi_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_role`
--

DROP TABLE IF EXISTS `strapi_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_role` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_role_name_unique` (`name`),
  UNIQUE KEY `strapi_role_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_role`
--

LOCK TABLES `strapi_role` WRITE;
/*!40000 ALTER TABLE `strapi_role` DISABLE KEYS */;
INSERT INTO `strapi_role` VALUES (1,'Super Admin','strapi-super-admin','Super Admins can access and manage all features and settings.','2022-06-02 10:27:12','2022-06-02 10:27:12'),(2,'Editor','strapi-editor','Editors can manage and publish contents including those of other users.','2022-06-02 10:27:12','2022-06-02 10:27:12'),(3,'Author','strapi-author','Authors can manage the content they have created.','2022-06-02 10:27:12','2022-06-02 10:27:12');
/*!40000 ALTER TABLE `strapi_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_users_roles`
--

DROP TABLE IF EXISTS `strapi_users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_users_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_users_roles`
--

LOCK TABLES `strapi_users_roles` WRITE;
/*!40000 ALTER TABLE `strapi_users_roles` DISABLE KEYS */;
INSERT INTO `strapi_users_roles` VALUES (1,1,1),(2,2,1);
/*!40000 ALTER TABLE `strapi_users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_webhooks`
--

DROP TABLE IF EXISTS `strapi_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_webhooks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `headers` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `events` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_webhooks`
--

LOCK TABLES `strapi_webhooks` WRITE;
/*!40000 ALTER TABLE `strapi_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terms_of_services`
--

DROP TABLE IF EXISTS `terms_of_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `terms_of_services` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `text` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `locale` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terms_of_services`
--

LOCK TABLES `terms_of_services` WRITE;
/*!40000 ALTER TABLE `terms_of_services` DISABLE KEYS */;
INSERT INTO `terms_of_services` VALUES (1,'<div class=\"raw-html-embed\"><divclass=\"container text-justify\"=\"\">\n<div class=\"row\">\n<div class=\"col-12 mt-3\">\n<h1>Terms of Service (Example only)</h1>\n</div></div>\n<div class=\"row\">\n<div class=\"col-12\">\n<section>\n<h2>1. General provisions</h2>\n<p>1.1. These Terms of Service (hereinafter Terms) apply to service functionality of the NLTP service as it is (hereinafter Service).</p>\n<p>1.2. Provider of the Service is: .</p>\n<p>1.3. User is a natural person who uses the Service.</p>\n<p>1.4. Use of the Service shall mean full and unconditional agreement to these Terms both on behalf of the User and on behalf of the Client for whom User acts. Persons who disagree with these Terms must not start using the Service and if started, must stop using the Service immediately.</p>\n<p>1.7. NLTP Service Provider may make changes and amendments to these Terms at any time. NLTP Service Provider shall notify Users about the changes during use of the Service and may use additional means of notification at its discretion. Client shall be considered notified if any User authorised by that Client has been notified on the changes. Continued use of the system shall mean User’s and respective Client’s consent to the proposed amendments on User’s own behalf and on behalf of the Client for whom User uses the Service. NLTP Service Provider may require that User’s express consent to the changed terms is given and may suspend provision of the Service until such consent is received.</p>\n<p>1.8. The Agreement and any dispute or claim arising out of or in connection with it or its subject matter or formation (including non-contractual disputes or claims) is governed by, and construed in accordance with, the law of the Republic of [X], without regard to its choice of law provisions. The parties irrevocably agree that the courts of the Republic of [X] have exclusive jurisdiction to settle any dispute or claim that arises out of or in connection with the Agreement or its subject matter or formation. The court of the first instance shall be the court according to NLTP Service Provider’s registered address.</p></section>\n<section>\n<h2>2. The Service</h2>\n<p>2.1. The core of the Service includes:</p>\n<div class=\"sublist\">\n<p>2.1.1. Online and automated generating of Translation from the submitted Source Text.</p>\n</div>\n<p>2.2. For the purposes of these Terms:</p>\n<div class=\"sublist\">\n<p>2.2.1. Source Text are the text files that are submitted for translation;</p>\n<p>2.2.2. Source Language is the language chosen by User as the language of the Source Text;</p>\n<p>2.2.3. Translation is a written textual translation of the Source Text produced as a result of use of the Service;</p>\n<p>2.2.4. Target Language is the language chosen by User to which the Source Text should be translated.</p>\n<p>2.2.5. Language Pair is a combination of Source Language and Target Language.</p>\n</div>\n<p>2.3. NLTP Service Provider shall accept for provision of the Service the Source Text files of the most popular formats at NLTP Service Provider’s discretion. NLTP Service Provider shall make the Translation available in the most popular formats at NLTP Service Provider’s discretion.</p>\n<p>2.4. NLTP Service Provider may offer the available Source Languages, Target Languages and Language Pairs at its discretion.</p>\n<p>2.5. While processing the Source text and the Translation for provision of the Service, NLTP Service Provider shall store them on secure servers. NLTP Service Provider shall be entitled to create and retain access logs security, statistical purposes and monitoring. Such access logs shall not contain any Source Text or Translation. However, access logs may contain metadata of API Requests such as time of the API Request and size of the transmitted Source Text.</p>\n<p>2.6. NLTP Service Provider shall delete in a non-recoverable manner the Source Text as soon as it is no longer necessary for NLTP Service Provider to provide the Service. NLTP Service Provider shall delete in a non-recoverable manner the Translation as soon as User has downloaded it immediately after they were generated. NLTP Service Provider may delete the Source Text and Translation in case of errors in provision of the Service. NLTP Service Provider may delete the Translation if it has not been downloaded for certain time, at NLTP Service Provider’s discretion. The said deletion of the files may be automated.</p>\n<p>2.7. NLTP Service Provider may deploy new versions, update functionality and make other modifications to the Service. Client and Users shall either agree to use the modified system on “as is” and “as available” basis, or shall cease using it, if not satisfied with the modified Service.</p>\n<p>2.8. NLTP Service Provider shall strive to provide the annual availability during 98% of the time for the Service that is provided for a fee. The Service is considered available if the server infrastructure and software used for provision of the Service functions properly and the interruptions in availability of the Service is not caused by the said infrastructure and software. The time used by NLTP Service Provider for planned interruptions (e.g., maintenance and updates) shall be excluded from the calculation of the availability period. NLTP Service Provider shall notify Client on the planned interruptions in availability of the Service as soon as possible and no later than one business day in advance of the planned interruption by a notification within the Service or via e-mail to Client. NLTP Service Provider shall not be liable for interruptions in availability of the Service that are caused due to interruptions or lack of internet connection or due to interruptions of an infrastructure outside NLTP Service Provider’s control.</p>\n<p>2.9. In case of scheduled limitations of the Service access NLTP Service Provider shall attempt to notify Users in advance by placing notifications within the Service, or via e-mail, otherwise.</p>\n<p>2.10. Client shall ensure proper backing up of Source Text and Translation. NLTP Service Provider makes backup copies of the software and databases used for provision of the Service, nevertheless these do not include Source Text nor Translation. The backup copies made by NLTP Service Provider are only for the purpose of minimizing of Service interruptions and for needs of NLTP Service Provider. Recovery of data from the backup copies is neither promised nor guaranteed. Neither Client nor User may request that NLTP Service Provider uses its backup copies to retrieve any data that was lost to Client or User as a result of User’s actions. NLTP Service Provider shall apply reasonable effort and utmost care to avoid loss of data. Nevertheless, NLTP Service Provider shall not be liable for data loss for any reason whatsoever.</p>\n<p>2.11. NLTP Service Provider may suspend the Service if an event of Force Majeure or otherwise outside of NLTP Service Provider’s reasonable control occurs, that renders performance of the Agreement commercially impracticable, including events resulting from actions or failure to act by Client, or if Client disputes any amount payable to NLTP Service Provider.</p>\n<p>2.12. NLTP Service Provider may discontinue the Service in part or fully upon advance notice provided to Users by placing notifications within the Service, or via e-mail, or otherwise. NLTP Service Provider shall refund to Client the fee that Client paid in advance for the period when the Service is discontinued.</p>\n<p>2.13. NLTP Service Provider may propose trial use of the Service that may be available free of charge, for limited time (trial period), with limited amount of the Service or with limited scope of the Service (functionality) or otherwise different from the specifications of the Service offered for a fee, at NLTP Service Provider’s discretion. The trial use is proposed only to Clients who have concluded the Agreement and agreed to pay the fee for use of the Service. After end of the trial period the fee is payable as provided in the applicable Subscription plan.</p>\n<p>2.14. NLTP Service Provider may make the Service available free of charge and without requirement to identify the User via the User account, with limited amount of the Service or with limited scope of the Service (functionality) or otherwise different from the specifications of the Service offered for a fee, at NLTP Service Provider’s discretion. NLTP Service Provider may cancel such use at any time.</p>\n<p>2.15. NLTP Service Provider may make the Service available to Client via Application Programming Interface (API). Client shall not make the API accessible to third parties. Client’s right to use the Service is non-transferrable.</p>\n<p>2.16. To automate availability of the Service within third-party software applications NLTP Service Provider may make available a software that permits access of the Service from the third-party software applications (hereinafter – Plug-in). The availability and specifications of the Plug-in shall be at NLTP Service Provider’s discretion. NLTP Service Provider may discontinue supply of the Plug-in and availability of the Service via the Plug-in at any time, giving a proper notice to Client in advance.</p>\n<p>2.17. NLTP Service Provider hereby grants the Client and the User a limited and non-exclusive license to install and to use the Plug-in. This license does not grant any right in the Plug-in to Client nor to User. NLTP Service Provider reserves all the Intellectual Property Rights and all other rights in the Plug-in.</p>\n<p>2.18. Client and/or User shall install the Plug-in in their computers only if they agree to the terms of use of the Plug in as provided in these Terms.</p>\n<p>2.19. The Plug-in may be used solely for the purposes NLTP Service Provider has stated when making the Plug-in available that are associated with access of the Service, and as provided in these Terms. Any other use of the Plug-in is prohibited.</p>\n<p>2.20. Copies of the Plug-in may only be made for the backup purposes as part of backing up the software and data of the computer in which the Plug-in has been installed. Such copies may only be used to restore function of the Plug-in.</p>\n<p>2.21. NLTP Service Provider may make updates of the Plug-in available at any time. It may be required that the Plug-in is updated to continue its use (i.e., earlier versions of the Plug-in may be disabled).</p>\n</section>\n<section>\n<h2>3. Permitted and Prohibited Use</h2>\n<p>3.1. Client shall use the Service for processing of its own material and shall not permit any third party to use the Service via Client’s account. </p>\n<p>3.2. It is prohibited to use the Service and the Plug-in:</p>\n<div class=\"sublist\">\n<p>3.2.1. in breach of any law or any statutory duty, in connection with a criminal offence, for any illegal, unethical, fraudulent or unauthorised purpose;</p>\n<p>3.2.2. for development and/or provision of any service similar to Service, and for development and/or improvement of any system, software or product that may be used to provide a service or functionality similar to, or competing with, the Service;</p>\n<p>3.2.3. for purposes or reselling the Service, especially if a Service provided for free is being resold, or if a Translation is resold as it is, without any substantial modification form reseller’s part. Reselling of the Translation after it has been thoroughly reviewed for correctness by a specialist translator or interpreter, or editor is considered substantial modification and therefore does not breach the provisions of this clause.</p>\n</div>\n<p>3.3. User and Client are fully liable for legality of use of the Service in their respective jurisdictions, and for receiving of any authorisations, permissions, licenses and approvals required for them to use the Service. Client is liable for the use of the Service by any Client’s User(s) as if the Service was used by Client.</p>\n<p>3.4. It is prohibited to use the Service for any Source Text:</p>\n<div class=\"sublist\">\n<p>3.4.1. that is threatening, defamatory, obscene, indecent, seditious, offensive, pornographic, abusive, liable to incite racial hatred, discriminatory, menacing, scandalous, inflammatory, blasphemous, in breach of confidence, in breach of privacy or which may cause annoyance or inconvenience; or</p>\n<p>3.4.2. for which all necessary licences and/or approvals have not been obtained, including but not limited to the authors permission to translate it; or</p>\n<p>3.4.3. which constitute or encourage conduct that would be considered a criminal offence, give rise to civil liability, or otherwise be contrary to the law of or infringe the rights of any third party, anywhere in the world; or</p>\n<p>3.4.4. which are technically harmful (including, without limitation, computer viruses, logic bombs, “Trojan horses”, worms, harmful components, corrupted data or other malicious software or harmful data); or</p>\n<p>3.4.5. which contain or disclose another person’s Personal Data without their written consent.</p>\n</div>\n<p>3.5. It is prohibited to decompile or reverse engineer the Service and/or to decompile, reverse engineer, disassemble, copy, adapt, modify any software used for provision of the Service in whole or in part, and/or circumvent any built-in protection of the Service or the software.</p>\n<p>3.6. Neither Client nor User may make any modifications to the Service or make any automated integration of the Service with any of their systems without express written permission issued by NLTP Service Provider in advance of any such activity.</p>\n</section>\n<section>\n<h2>4. Client and User Accounts</h2>\n<p>4.1. Except for case provided in clause 2.14. of these Terms, the Service is provided to Client after the Client has entered into agreement with NLTP Service Provider and has set up Client’s account. Client enters into agreement with NLTP Service Provider through setting up Client’s account and confirming Client’s agreement to these Terms and other provisions of the agreement (if applicable).</p>\n<p>4.2. Each Client has its Client’s account within the Service. The Client’s account is managed by the User who has the highest level of privileges managing Client’s account and creating User accounts for other Users (hereinafter Administrator). First User is also the Administrator and is defined when Client sets up Client’s account. An Administrator may assign other User(s) as Administrator(s) if multiple Users are enabled for the respective Client’s account. An Administrator may be cancelled by another Administrator of the same Client.</p>\n<p>4.3. Client may set up User accounts that each User uses to access and use the Service on Client’s behalf. Number of the User accounts may be limited depending on the Subscription plan applicable to the Client. Users request use of the Service on respective Client’s behalf. Number of the user accounts may be limited depending on Client’s Subscription plan. </p>\n<p>4.4. Client shall be solely responsible for keeping the Client account and User account credentials confidential and making them available only to the persons authorised by Client for use of the Service on Client’s behalf.</p>\n<p>4.5. Client assigns Users to use the Service on Client’s behalf. The third parties to whom Client makes the Service usable via API are not considered Users for the purposes of these Terms. In this case the Client is considered as User of the Service.</p>\n<p>4.6. NLTP Service Provider may reject the access to the Service for the Client who has delayed any payment for the Service. The Users trying to access the Service on behalf of such Client will be denied access to the Service and may be notified on the cause of denial.</p>\n<p>4.7. Users may notify NLTP Service Provider on faults of the Service and on suggestions regarding the Service using NLTP Service Provider’s helpline e-mail or a notifications system within Service (if available). NLTP Service Provider shall try to resolve the faults as soon as practically possible.</p>\n<p>4.8. Unless otherwise provided in these Terms, NLTP Service Provider shall communicate with Client via Client’s Superuser using the Superuser’s e-mail address provided in its account profile or other provided contact information. Any action that Client may make concerning change of terms of the Agreement within the Service, shall be made by Client’s Superuser.</p>\n</section>\n<section>\n<h2>5. Intellectual Property</h2>\n<p>5.1. Intellectual Property Rights for the purposes of these Terms shall include copyright and related rights, rights in computer products, database rights, trademarks and service marks, trade names and domain names, rights to inventions, patents, utility models, rights in designs, rights in goodwill, know-how and trade secrets, and any other intellectual property rights, anywhere in the world.</p>\n<p>5.2. No Intellectual Property Rights are transferred to the other party under these Terms. NLTP Service Provider or other respective owners or holders of the Intellectual Property Rights retain all the rights in the software, trademarks, denominations, logotypes, know-how and any other intellectual property used for provision of the Service. Neither Client nor User is granted any license for use thereof. Client and User retains the rights in the data provided by them.</p>\n<p>5.3. Client hereby acknowledges and agrees that under the Agreement Client acquires only the right to use the Service on the terms set forth in these Terms and the Agreement and does not acquire any right in the system used for provision of the Service, or the API. NLTP Service Provider and any other owner of the Intellectual Property Rights continue to own and retain all legal and beneficial right, title, and interest in and to the system used for provision of the Service, and the API, and all Intellectual Property Rights embodied therein.</p>\n<p>5.4. Client and User hereby grants to NLTP Service Provider a worldwide, perpetual, irrevocable and royalty-free right to use any results of Client’s or User’s respective assistance to NLTP Service Provider with improving or developing the System, the API or the Service, and the Intellectual Property Rights in the results of such assistance. The use of such results is at NLTP Service Provider’s discretion and without any obligation on NLTP Service Provider’s part. This provision applies to all Client’s and User’s assistance that they have provided, whether solicited by NLTP Service Provider or not.</p>\n<p>5.5. NLTP Service Provider shall not claim Intellectual Property Rights in the Source Text that Client processes using the Service, nor in the Translation resulting from use of the Service. NLTP Service Provider transfers to Client all rights into Translation insofar as these rights may exist considering that the Translation is being generated automatically and without involvement of a human acting as a translator or interpreter, or editor.</p>\n<p>5.6. Client shall procure all rights and permissions needed for processing of the Source Text, and hereby warrants that their processing using the Service shall not infringe or violate any person’s Intellectual Property Rights, nor any other right of any person.</p>\n</section>\n<section>\n<h2>6. Warranties</h2>\n<p>6.1. Client and Users use the Service, the Translation and other results of the Service and the Plug-in on “as is” and “as available” basis, without any express or implied warranties (whether they are written or oral, express or implied, arise from this Agreement, otherwise in contract, in tort, under statute or otherwise) regarding their quality, fitness for any particular purpose, absence of errors in the software or data, use of reasonable skill and care, or non-infringement or warranties otherwise implied by statute or from a trade custom. All warranties, representations, conditions and all other terms of any kind whatsoever implied by statute or common law are, to the fullest extent permitted by applicable law, excluded from the Agreement.</p>\n<p>6.2. Client and User shall abstain from using the Service, the Translation and other results of the Service, and the Plug-in if it does not meet Client’s or User’s requirements. NLTP Service Provider does not warrant or guarantee that the Service or Translation or other results of the Service, or the Plug-in will meet any or all of Client or User requirements. NLTP Service Provider does not warrant uninterrupted availability of the Service.</p>\n<p>6.3. NLTP Service Provider does not examine the Source Text before its processing regarding their suitability for being processed using the Service, other than their format and limited technical parameters at NLTP Service Provider’s discretion. Unusual use of the language in the Source Text, and/or other particularities of the Source Text may cause unavailability of the Translation or its lower-than-expected quality. The Translation is provided by means of automated translation, without review or editing by a human. NLTP Service Provider does not warrant correctness of the Translation.</p>\n<p>6.4. Each party warrants that it has the power, capacity and authority to enter into the Agreement and has the full and exclusive rights required to fulfil the Agreement. User warrants that User has the authorisation to act on behalf of the Client whom User claims to represent. User shall indemnify NLTP Service Provider in case the Client whom User claims to represent denies the authorisation. </p>\n<p>6.5. To the maximum extent permitted under applicable law, Client and User releases NLTP Service Provider, its officers, employees, suppliers and any other person from any liability for any loss or damage related to use of the Service and/or the Translation, and/or the Plug-in, and hereby waives any claims it may have against NLTP Service Provider in connection with use of the Service and/or the Translation and/or the Plug-in. NLTP Service Provider shall not be liable whether in tort (including for negligence or breach of statutory duty), contract, misrepresentation, restitution or otherwise for any loss of profits, loss of business, depletion of goodwill and/or similar losses or loss or corruption of data or information, or pure economic loss, or for any special, indirect or consequential loss, costs, damages, charges or expenses however arising under this agreement. In cases when exclusion of NLTP Service Provider’s liability may not be applied, NLTP Service Provider’s aggregate liability in contract, tort (including negligence or breach of statutory duty), misrepresentation, restitution or otherwise, arising in connection with the performance or contemplated performance of this agreement shall be limited to 100% of the fees paid by the Client to the NLTP Service Provider under the Agreement during the 12 months immediately preceding the date on which the claim arose.</p>\n<p>6.6. Client and User acknowledge and agree that NLTP Service Provider shall have no direct or indirect contractual or tortious liability to the persons to whom Client or User make available the Service or the Translation, or other results of provision of the Service, or the Plug-in and especially to Client’s or User’s customers. Client and/or User shall accept full responsibility in this regard. </p>\n</section>\n<section>\n<h2>7. Confidentiality </h2>\n<p>7.1. For purposes of these Terms the Confidential information is a commercial, technological, scientific knowledge or information of any other nature that is kept in secret and is not generally known or available to persons who usually use such information, it has actual or potential commercial value due to the fact of it being secret and the party to whom the information pertains have taken reasonable and appropriate measures to keep the information in secret. The following information shall be considered Confidential Information at all times:</p>\n<div class=\"sublist\">\n<p>7.1.1. Terms of the Agreement, except for these Terms, is NLTP Service Provider’s Confidential Information;</p>\n<p>7.1.2. Source Text and Translation is Client’s Confidential Information;</p>\n<p>7.1.3. Information that Client or User provides to NLTP Service Provider regarding usability of, or faults in, the Service is NLTP Service Provider’s Confidential Information;</p>\n<p>7.1.4. Any information acquired from NLTP Service Provider during audits carried under clause 9.4.14. of these Terms is NLTP Service Provider’s Confidential Information.</p>\n</div>\n<p>7.2. Neither party may disclose other Party’s Confidential Information or use the other party’s Confidential Information for its own benefit or for benefit of any third party. As an exception the disclosure of the information is permitted:</p>\n<div class=\"sublist\">\n<p>7.2.1. to employees, officers, representatives or advisers of the party who need to know such information for the purposes of performance of the party’s obligations or execution of the party’s rights under this Agreement. The information is provided to these employees, officers, representatives and advisers on the “need to know\" basis; and</p>\n<p>7.2.2. as required by law, a court of competent jurisdiction or any governmental or regulatory authority. The party required to make such disclosure promptly notifies and consults with the other party in advance in relation to the disclosure.</p>\n</div>\n<p>7.3. Each party shall keep other party’s Confidential Information in secret and shall take all necessary measures, including apply sufficient and efficient data protection measures and conduct efficient and continuous supervision over data mediums containing other party’s Confidential Information, to avoid the use or disclosure of other party’s Confidential Information contrary to the provisions of this Agreement, and shall protect other party’s Confidential Information with the same care as their own.</p>\n<p>7.4. NLTP Service Provider may request that each auditor (natural person) assigned under clause 9.4.14. of these Terms sign a non-disclosure undertaking with terms similar to those contained in these Terms. NLTP Service Provider may object to certain persons being assigned as auditors and may forbid their access to any NLTP Service Provider’s information. Client shall replace such auditors with others, considering reasons for NLTP Service Provider’s objections.</p>\n</section>\n<section>\n<h2>8. Personal Data Processing</h2>\n<p>8.1. For the purpose of these Terms, “Data Subject”, “Controller”, “Processor”, “Processing” and “Personal Data” have the meaning set out in the Regulation (EU) 2016/679 of the European Parliament and of the Council of 27 April 2016 on the protection of natural persons with regard to the processing of personal data and on the free movement of such data, and repealing Directive 95/46/EC (General Data Protection Regulation), hereinafter GDPR and any other laws in protection of personal data and the privacy of individuals (“Data Protection Laws”) in relation to data Processed in course of provision of the Service.</p>\n<p>8.2. NLTP Service Provider acts as independent Controller of the Personal Data that is supplied as details of Client’s or User’s account (hereinafter Profile Data). The person providing the Profile Data is liable to provide complete and truthful data as required. Profile Data so received shall be used for provision of the Service, for notification on availability of new NLTP Service Provider\'s services, for performance of other mutual obligations and to contact User or Client when necessary for the above reasons. Purpose of processing of Profile Data is provision of the Service. Legal basis for the processing is NLTP Service Provider’s obligation to perform its legal obligations under the Agreement and its statutory obligations. The Profile data shall not be transferred to any third party. The Profile Data shall be stored as long as required for performance of NLTP Service Provider’s contractual and statutory obligations. Provision of Profile Data is required to enter into contractual relationship for use of the Service. Failure to provide the Profile Data results in unavailability of the Service to the respective Client or User. Client and User have the right to request from NLTP Service Provider access to and rectification or erasure of their respective Profile Data or restriction of processing concerning Client or User respectively, or to object to Processing, insofar as it does not impede provision of the Service, or such request shall result in denial of Service to the respective Client or User. Client and User have the right to lodge a complaint with a supervisory authority – Data state inspectorate (Datu valsts inspekcija). Client may contact NLTP Service Provider’s data protection officer by writing via e-mail to <b>nltp-dpo@example.com</b>.</p>\n<p>8.3. Client Data shall mean the Personal Data of any kind or nature, that is contained in the Source Text that Users enter, import or otherwise retrieve in the computer systems used by NLTP Service Provider for provision of the Service, when using the Service. The Personal Data from the Source Text is included in Translation.</p>\n<p>8.4. Regarding Client Data, NLTP Service Provider shall act as Processor of the Client Data on behalf of Client, and Client shall act as Controller of the Client Data, and Client’s Users shall be considered persons acting on Client’s behalf. The Processing is carried out according to the terms as provided below.</p>\n<div class=\"sublist\">\n<p>8.4.1. Client hereby assigns NLTP Service Provider to store the Client Data within the computer systems used for provision of the Service, to use the Client Data for the computations required to ensure provision of the Service and to make the Client Data available for download to Client’s Users.</p>\n<p>8.4.2. NLTP Service Provider shall Process the Client Data only on documented instructions from Client. Client’s instructions regarding Processing of Client Data are given exclusively via the functionality of the Service and shall be limited with the possibilities of the Service functionality. Client hereby authorises any Client’s User to give to NLTP Service Provider any directions for Processing of Client Data within these limits.</p>\n<p>8.4.3. NLTP Service Provider shall inform Client on legal requirement to transfer Client Data to a third country or an international organisation by a law to which NLTP Service Provider is subject before such transfer, unless that law prohibits such information on important grounds of public interest.</p>\n<p>8.4.4. NLTP Service Provider shall Process Client Data for the entire duration of the Agreement, and for such time thereafter as may be necessary until all Client Data is deleted. The data shall be deleted as provided in clause 2.5. of these Terms.</p>\n<p>8.4.5. The Data Subjects whose Personal Data is processed under the Agreement include all persons whose Personal Data is contained in Client Data. </p>\n<p>8.4.6. Client assigns NLTP Service Provider to Process the Client Data as a Personal Data that does not contain any special categories of Personal Data (Article 9 of GDPR). Client shall not submit for Processing any special categories of Personal Data. If Client does so, it assumes all liability for not meeting the requirements set for Processing of the special categories of Personal Data and shall to the maximum extent indemnify NLTP Service Provider against all expenses, claims and losses related to Processing of Client Data that contains special categories of Personal Data.</p>\n<p>8.4.7. Client assigns NLTP Service Provider to process the Client Data as formal pieces of data, without regard to their actual content. NLTP Service Provider is not required to review contents of Client Data.</p>\n<p>8.4.8. NLTP Service Provider ensures that persons authorised to process the personal data on NLTP Service Provider’s behalf have committed themselves to confidentiality or are under an appropriate statutory obligation of confidentiality.</p>\n<p>8.4.9. NLTP Service Provider shall use the data protection methods that are up to date and provide adequate protection. Specific details regarding used technical means are available to Superusers upon request. By using the Service Client accepts the measures as they are and as being sufficient and acceptable for Client to perform obligations imposed on Client as Controller of the Personal Data Processing. Client may terminate the Agreement if Client finds these measures inadequate or insufficient, or if Client deems information provided by NLTP Service Provider insufficient to make the judgement. Client agrees that the right to terminate the Agreement is sole and sufficient remedy available to Client in such case. Client hereby waives any and all claims that Client may have against NLTP Service Provider in this regard.</p>\n<p>8.4.10. Client permits NLTP Service Provider to engage sub-processors of Client Data, at NLTP Service Provider’s discretion. NLTP Service Provider shall inform Client on planned engagement and change of the sub-processor 14 days in advance of the engagement or change taking effect. NLTP Service Provider shall ensure that data protection obligations resulting in the same level of the Personal Data protection as set out in these Terms shall be imposed on that sub-processor, in particular providing sufficient guarantees to implement appropriate technical and organisational measures. Where the sub-processor fails to fulfil its data protection obligations, NLTP Service Provider shall remain fully liable to Client for the performance of that sub-processor\'s obligations.</p>\n<p>8.4.11. Taking into account the nature of the processing, and as much as possible, NLTP Service Provider assists Client by appropriate technical and organisational measures for the fulfilment of the Client’s obligation to respond to requests for exercising the Data Subject\'s rights laid down in Chapter III of the GDPR. Client shall, as much as possible, use the Service functionality to obtain the required Personal Data.</p>\n<p>8.4.12. NLTP Service Provider assists the Client in ensuring compliance with the obligations pursuant to Articles 32 to 36 of the GDPR taking into account the nature of processing and the information available to NLTP Service Provider.</p>\n<p>8.4.13. Client assigns NLTP Service Provider to delete all the Client Data as soon as the Client Data is no longer required for provision of the Service. NLTP Service Provider shall also delete existing copies of Client Data at NLTP Service Provider’s disposal unless law applicable to NLTP Service Provider requires storage of the Client Data.</p>\n<p>8.4.14. NLTP Service Provider makes available to Client all information necessary to demonstrate compliance with the obligations laid down in Article 28 of GDPR and allows for and contributes to audits, including inspections, conducted by Client or another auditor mandated by Client. NLTP Service Provider may charge a fee for such audits to compensate NLTP Service Provider’s reasonable use of resources.</p>\n</div>\n<p>8.5. Client is liable for lawful Processing of all Client Data that Users submit to NLTP Service Provider for processing on Client’s behalf (i.e., while using the Service on Client’s behalf).</p>\n<p>8.6. If Client is a Processor or a sub-Processor for another Controller, then Client warrants that its instructions and actions with respect to Client Data, and appointment of NLTP Service Provider as sub-Processor, have been authorized by the ultimate Controller.</p>\n<p>8.7. Provisions of clause 2.10. of these Terms shall apply to backing up of Client Data.</p>\n</section>\n<section>\n<h2>9. Term and Termination</h2>\n<p>9.1. The Agreement is effective without limitation of term.</p>\n<p>9.2. Before start of provision of the Service and during 14 days thereafter or during the trial period, whichever is longer, Client may terminate the Agreement at Client’s discretion by providing a written notice to NLTP Service Provider or using the functionality of the Service. The termination is effective immediately. In such case of termination NLTP Service Provider shall refund the service fee that Client has paid under the terminated Agreement.</p>\n<p>9.3. Both Client and NLTP Service Provider may terminate the Agreement at any time by providing to the other a written notice. Client provides the notice to NLTP Service Provider’s support e-mail. The Agreement ends upon expiry of 30 days period following the termination notice, or at the end of the paid period of Service provision, whichever occurs first. </p>\n<p>9.4. Without affecting any other right or remedy available to it, either party may terminate the Agreement with immediate effect by giving written notice to the other party if:</p>\n<div class=\"sublist\">\n<p>9.4.1. the other party commits a material and irremediable breach of any term of the Agreement or commits a remediable breach of any term of the Agreement and fails to remedy that breach within 30 days after receiving other party’s request; or</p>\n<p>9.4.2. the other party becomes insolvent or suspends, or is likely to suspend, payment of its debts or is unable to pay its debts as they fall due or admits inability to pay its debts.</p>\n</div>\n<p>9.5. Termination of the Agreement results in immediate termination of provision of the Service and in ceasing of all NLTP Service Provider’s obligations under the Agreement, removal of Client’s account, all associated User accounts and all associated data from the Service and the computer systems used to provide the Service. Client shall take the necessary measures to download the data needed to Client on regular basis before termination of the Agreement.</p>\n<p>9.6. Any provision of these Terms concerning confidentiality of the information, liability of the parties, any intellectual property provision and any other provision, right, remedy, obligation or liability that expressly or by implication is intended to apply without limitation of term shall survive termination of the Agreement.</p>\n<p>9.7. If NLTP Service Provider terminates the Agreement without cause, NLTP Service Provider shall refund to Client the fee that Client paid in advance for the period when the Agreement is terminated. No refund is paid if NLTP Service Provider terminates the Agreement due to Client’s breach of the Agreement or these Terms or due to Client’s delay of payment, and in case Client terminates the Agreement under clause 9.3. of these Terms.</p>\n</section>\n<section>\n<h2>10. Final provisions</h2>\n<p>10.1. Statutory rights of the consumers are not limited by the terms of this Agreement.</p>\n<p>10.2. NLTP Service Provider may assign or transfer its rights and obligations in whole or in part to (i) an affiliate or (ii) any entity or person to whom NLTP Service Provider transfers the whole or part of NLTP Service Provider business.</p>\n<p>10.3. The failure of either party to enforce or to exercise any right does not constitute, and shall not be construed as, a waiver of such right.</p>\n<p>10.4. The rights and remedies provided in the Agreement are in addition to any rights or remedies provided by law.</p>\n<p>10.5. Any notice given to a party under the Agreement shall be sent by e-mail to <b>info@example.com</b> (for NLTP Service Provider) and to the e-mail address of Client’s Superuser provided to NLTP Service Provider (for Client). Any notice sent by e-mail shall be deemed to have been received at 9.00 am on the next business day according to [X], [X] time. This does not apply to serving of any documents in any legal action or other method of dispute resolution.</p></section></div></div></divclass=\"container></div><p>&nbsp;</p>','en',1,1,'2022-06-07 09:23:02','2022-10-14 08:07:31');
/*!40000 ALTER TABLE `terms_of_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terms_of_services__localizations`
--

DROP TABLE IF EXISTS `terms_of_services__localizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `terms_of_services__localizations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `terms_of_service_id` int DEFAULT NULL,
  `terms-of-service_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terms_of_services__localizations`
--

LOCK TABLES `terms_of_services__localizations` WRITE;
/*!40000 ALTER TABLE `terms_of_services__localizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `terms_of_services__localizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trados_plugins`
--

DROP TABLE IF EXISTS `trados_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trados_plugins` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `productInformationPage` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `locale` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trados_plugins`
--

LOCK TABLES `trados_plugins` WRITE;
/*!40000 ALTER TABLE `trados_plugins` DISABLE KEYS */;
INSERT INTO `trados_plugins` VALUES (1,4,1,1,'2022-09-29 08:18:21','2022-09-29 08:18:21','en');
/*!40000 ALTER TABLE `trados_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trados_plugins__localizations`
--

DROP TABLE IF EXISTS `trados_plugins__localizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trados_plugins__localizations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `trados_plugin_id` int DEFAULT NULL,
  `trados-plugin_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trados_plugins__localizations`
--

LOCK TABLES `trados_plugins__localizations` WRITE;
/*!40000 ALTER TABLE `trados_plugins__localizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `trados_plugins__localizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translators`
--

DROP TABLE IF EXISTS `translators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translators` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `header` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `footer` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `locale` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translators`
--

LOCK TABLES `translators` WRITE;
/*!40000 ALTER TABLE `translators` DISABLE KEYS */;
INSERT INTO `translators` VALUES (1,'<h1 style=\"text-align:center;\">National Langauge Technology Platform</h1><p style=\"text-align:center;\">Use the best language technology tools all in one place. <a href=\"/about\">See all the tools</a></p>','','en',1,1,'2022-06-10 10:47:11','2022-10-10 05:19:30');
/*!40000 ALTER TABLE `translators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translators__localizations`
--

DROP TABLE IF EXISTS `translators__localizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translators__localizations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `translator_id` int DEFAULT NULL,
  `related_translator_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translators__localizations`
--

LOCK TABLES `translators__localizations` WRITE;
/*!40000 ALTER TABLE `translators__localizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translators__localizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translators_components`
--

DROP TABLE IF EXISTS `translators_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translators_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `order` int unsigned NOT NULL,
  `component_type` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `component_id` int NOT NULL,
  `translator_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `translator_id_fk` (`translator_id`),
  CONSTRAINT `translator_id_fk` FOREIGN KEY (`translator_id`) REFERENCES `translators` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translators_components`
--

LOCK TABLES `translators_components` WRITE;
/*!40000 ALTER TABLE `translators_components` DISABLE KEYS */;
INSERT INTO `translators_components` VALUES (1,'header',1,'components_sections_htmls',19,1),(2,'footer',1,'components_feature_list_feature_lists',5,1);
/*!40000 ALTER TABLE `translators_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_file`
--

DROP TABLE IF EXISTS `upload_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upload_file` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `alternativeText` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `caption` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `formats` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ext` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `mime` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `size` decimal(10,2) NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `previewUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `provider_metadata` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_file`
--

LOCK TABLES `upload_file` WRITE;
/*!40000 ALTER TABLE `upload_file` DISABLE KEYS */;
INSERT INTO `upload_file` VALUES (13,'help_FILL0_wght400_GRAD0_opsz48 1.svg','','',24,25,'{}','help_FILL_0_wght400_GRAD_0_opsz48_1_16d08ac43e','.svg','image/svg+xml',2.33,'/uploads/help_FILL_0_wght400_GRAD_0_opsz48_1_16d08ac43e.svg',NULL,'local',NULL,1,1,'2022-09-12 04:11:32','2022-09-29 10:52:14'),(19,'bilde_about.png','','',504,363,'{\"thumbnail\":{\"name\":\"thumbnail_bilde_about.png\",\"hash\":\"thumbnail_bilde_about_bc5427155f\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":217,\"height\":156,\"size\":31.07,\"path\":null,\"url\":\"/uploads/thumbnail_bilde_about_bc5427155f.png\"},\"small\":{\"name\":\"small_bilde_about.png\",\"hash\":\"small_bilde_about_bc5427155f\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":360,\"size\":103.85,\"path\":null,\"url\":\"/uploads/small_bilde_about_bc5427155f.png\"}}','bilde_about_bc5427155f','.png','image/png',60.95,'/uploads/bilde_about_bc5427155f.png',NULL,'local',NULL,1,1,'2022-09-20 07:57:56','2022-09-20 09:45:48'),(20,'info_FILL0_wght400_GRAD0_opsz48 (1) 1.svg','','',24,25,'{}','info_FILL_0_wght400_GRAD_0_opsz48_1_1_6f72d881b9','.svg','image/svg+xml',1.65,'/uploads/info_FILL_0_wght400_GRAD_0_opsz48_1_1_6f72d881b9.svg',NULL,'local',NULL,1,1,'2022-09-20 08:09:40','2022-09-30 04:43:40'),(25,'bilde_web_tulkosana.png','','',504,363,'{\"thumbnail\":{\"name\":\"thumbnail_bilde_web_tulkosana.png\",\"hash\":\"thumbnail_bilde_web_tulkosana_205f62f426\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":217,\"height\":156,\"size\":36.83,\"path\":null,\"url\":\"/uploads/thumbnail_bilde_web_tulkosana_205f62f426.png\"},\"small\":{\"name\":\"small_bilde_web_tulkosana.png\",\"hash\":\"small_bilde_web_tulkosana_205f62f426\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":360,\"size\":138.16,\"path\":null,\"url\":\"/uploads/small_bilde_web_tulkosana_205f62f426.png\"}}','bilde_web_tulkosana_205f62f426','.png','image/png',109.03,'/uploads/bilde_web_tulkosana_205f62f426.png',NULL,'local',NULL,1,1,'2022-09-20 08:28:06','2022-09-20 08:28:06'),(26,'bilde_CAT.png','','',504,363,'{\"thumbnail\":{\"name\":\"thumbnail_bilde_CAT.png\",\"hash\":\"thumbnail_bilde_CAT_67ca7f0254\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":217,\"height\":156,\"size\":33.03,\"path\":null,\"url\":\"/uploads/thumbnail_bilde_CAT_67ca7f0254.png\"},\"small\":{\"name\":\"small_bilde_CAT.png\",\"hash\":\"small_bilde_CAT_67ca7f0254\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":360,\"size\":126,\"path\":null,\"url\":\"/uploads/small_bilde_CAT_67ca7f0254.png\"}}','bilde_CAT_67ca7f0254','.png','image/png',100.03,'/uploads/bilde_CAT_67ca7f0254.png',NULL,'local',NULL,1,1,'2022-09-20 08:43:03','2022-09-20 08:43:03'),(27,'bilde_SDL.png','','',504,363,'{\"thumbnail\":{\"name\":\"thumbnail_bilde_SDL.png\",\"hash\":\"thumbnail_bilde_SDL_52aeb7e711\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":217,\"height\":156,\"size\":38.81,\"path\":null,\"url\":\"/uploads/thumbnail_bilde_SDL_52aeb7e711.png\"},\"small\":{\"name\":\"small_bilde_SDL.png\",\"hash\":\"small_bilde_SDL_52aeb7e711\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":360,\"size\":153.97,\"path\":null,\"url\":\"/uploads/small_bilde_SDL_52aeb7e711.png\"}}','bilde_SDL_52aeb7e711','.png','image/png',119.91,'/uploads/bilde_SDL_52aeb7e711.png',NULL,'local',NULL,1,1,'2022-09-20 09:13:05','2022-09-20 09:13:05'),(30,'bilde_about_2.png','','',504,363,'{\"thumbnail\":{\"name\":\"thumbnail_bilde_about_2.png\",\"hash\":\"thumbnail_bilde_about_2_af181e52ea\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":217,\"height\":156,\"size\":30.92,\"path\":null,\"url\":\"/uploads/thumbnail_bilde_about_2_af181e52ea.png\"},\"small\":{\"name\":\"small_bilde_about_2.png\",\"hash\":\"small_bilde_about_2_af181e52ea\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":360,\"size\":103.06,\"path\":null,\"url\":\"/uploads/small_bilde_about_2_af181e52ea.png\"}}','bilde_about_2_af181e52ea','.png','image/png',60.82,'/uploads/bilde_about_2_af181e52ea.png',NULL,'local',NULL,1,1,'2022-09-23 03:53:55','2022-09-23 03:53:55'),(31,'mail_FILL0_wght400_GRAD0_opsz48 1.svg','','',24,24,'{}','mail_FILL_0_wght400_GRAD_0_opsz48_1_53865f1a15','.svg','image/svg+xml',0.26,'/uploads/mail_FILL_0_wght400_GRAD_0_opsz48_1_53865f1a15.svg',NULL,'local',NULL,1,1,'2022-09-28 02:57:18','2022-09-30 04:53:53'),(32,'About NLTP.png','','',756,545,'{\"thumbnail\":{\"name\":\"thumbnail_About NLTP.png\",\"hash\":\"thumbnail_About_NLTP_31b6dce9ed\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":216,\"height\":156,\"size\":29.93,\"path\":null,\"url\":\"/uploads/thumbnail_About_NLTP_31b6dce9ed.png\"},\"medium\":{\"name\":\"medium_About NLTP.png\",\"hash\":\"medium_About_NLTP_31b6dce9ed\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":750,\"height\":541,\"size\":201.03,\"path\":null,\"url\":\"/uploads/medium_About_NLTP_31b6dce9ed.png\"},\"small\":{\"name\":\"small_About NLTP.png\",\"hash\":\"small_About_NLTP_31b6dce9ed\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":360,\"size\":104.55,\"path\":null,\"url\":\"/uploads/small_About_NLTP_31b6dce9ed.png\"}}','About_NLTP_31b6dce9ed','.png','image/png',104.45,'/uploads/About_NLTP_31b6dce9ed.png',NULL,'local',NULL,1,1,'2022-09-28 08:22:05','2022-09-28 08:22:05'),(33,'About NLTP.png','','',504,363,'{\"thumbnail\":{\"name\":\"thumbnail_About NLTP.png\",\"hash\":\"thumbnail_About_NLTP_ad3f384084\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":217,\"height\":156,\"size\":29.67,\"path\":null,\"url\":\"/uploads/thumbnail_About_NLTP_ad3f384084.png\"},\"small\":{\"name\":\"small_About NLTP.png\",\"hash\":\"small_About_NLTP_ad3f384084\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":360,\"size\":102.42,\"path\":null,\"url\":\"/uploads/small_About_NLTP_ad3f384084.png\"}}','About_NLTP_ad3f384084','.png','image/png',55.71,'/uploads/About_NLTP_ad3f384084.png',NULL,'local',NULL,1,1,'2022-09-28 08:22:55','2022-09-28 08:22:55'),(34,'MT.svg','','',24,24,NULL,'MT_5bc0541263','.svg','image/svg+xml',4.84,'/uploads/MT_5bc0541263.svg',NULL,'local',NULL,1,1,'2022-09-30 08:15:40','2022-09-30 08:15:40'),(35,'CAT.svg','','',24,24,NULL,'CAT_9265d21fa4','.svg','image/svg+xml',2.49,'/uploads/CAT_9265d21fa4.svg',NULL,'local',NULL,1,1,'2022-09-30 08:15:55','2022-09-30 08:15:55'),(36,'plugin.svg','','',24,24,NULL,'plugin_c36bf5b69f','.svg','image/svg+xml',2.05,'/uploads/plugin_c36bf5b69f.svg',NULL,'local',NULL,1,1,'2022-09-30 08:16:11','2022-09-30 08:16:11'),(37,'Website.svg','','',24,24,NULL,'Website_136ec0caa8','.svg','image/svg+xml',6.53,'/uploads/Website_136ec0caa8.svg',NULL,'local',NULL,1,1,'2022-09-30 08:16:17','2022-09-30 08:16:17'),(38,'CAT.svg','','',24,24,NULL,'CAT_d8fb5d3e5b','.svg','image/svg+xml',2.49,'/uploads/CAT_d8fb5d3e5b.svg',NULL,'local',NULL,1,1,'2022-09-30 08:32:35','2022-09-30 08:32:35'),(39,'SEO.svg','','',24,24,NULL,'SEO_03e76c230c','.svg','image/svg+xml',3.38,'/uploads/SEO_03e76c230c.svg',NULL,'local',NULL,1,1,'2022-09-30 08:32:45','2022-09-30 08:32:45'),(40,'google.svg','','',24,24,NULL,'google_42c6e11725','.svg','image/svg+xml',1.42,'/uploads/google_42c6e11725.svg',NULL,'local',NULL,1,1,'2022-09-30 08:32:56','2022-09-30 08:32:56'),(41,'TM.svg','','',24,24,NULL,'TM_d53fa87bb5','.svg','image/svg+xml',0.45,'/uploads/TM_d53fa87bb5.svg',NULL,'local',NULL,1,1,'2022-09-30 08:34:31','2022-09-30 08:34:31'),(42,'terminology.svg','','',24,24,NULL,'terminology_2af9a28cac','.svg','image/svg+xml',2.57,'/uploads/terminology_2af9a28cac.svg',NULL,'local',NULL,1,1,'2022-09-30 08:35:02','2022-09-30 08:35:02'),(43,'MT.svg','','',24,24,NULL,'MT_e94b4ebcc8','.svg','image/svg+xml',4.84,'/uploads/MT_e94b4ebcc8.svg',NULL,'local',NULL,1,1,'2022-09-30 08:35:21','2022-09-30 08:35:21'),(44,'Features=Default.svg','','',24,24,NULL,'Features_Default_2a42ff6eb2','.svg','image/svg+xml',2.16,'/uploads/Features_Default_2a42ff6eb2.svg',NULL,'local',NULL,1,1,'2022-10-03 03:17:39','2022-10-03 03:17:39'),(45,'Features=security.svg','','',24,24,NULL,'Features_security_eec194fb13','.svg','image/svg+xml',1.95,'/uploads/Features_security_eec194fb13.svg',NULL,'local',NULL,1,1,'2022-10-03 03:18:46','2022-10-03 03:18:46'),(47,'bilde_Trados.png','','',504,363,'{\"thumbnail\":{\"name\":\"thumbnail_bilde_Trados.png\",\"hash\":\"thumbnail_bilde_Trados_691a4dbe77\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":217,\"height\":156,\"size\":39.16,\"path\":null,\"url\":\"/uploads/thumbnail_bilde_Trados_691a4dbe77.png\"},\"small\":{\"name\":\"small_bilde_Trados.png\",\"hash\":\"small_bilde_Trados_691a4dbe77\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":360,\"size\":155.3,\"path\":null,\"url\":\"/uploads/small_bilde_Trados_691a4dbe77.png\"}}','bilde_Trados_691a4dbe77','.png','image/png',121.13,'/uploads/bilde_Trados_691a4dbe77.png',NULL,'local',NULL,1,1,'2022-10-10 04:28:23','2022-10-10 04:28:23');
/*!40000 ALTER TABLE `upload_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_file_morph`
--

DROP TABLE IF EXISTS `upload_file_morph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upload_file_morph` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `upload_file_id` int DEFAULT NULL,
  `related_id` int DEFAULT NULL,
  `related_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `field` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `order` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=624 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_file_morph`
--

LOCK TABLES `upload_file_morph` WRITE;
/*!40000 ALTER TABLE `upload_file_morph` DISABLE KEYS */;
INSERT INTO `upload_file_morph` VALUES (249,20,4,'menu_items','icon',1),(287,13,3,'menu_items','icon',1),(530,47,4,'product_informations','image',1),(535,38,5,'components_feature_list_feature_list_items','icon',1),(536,39,7,'components_feature_list_feature_list_items','icon',1),(537,40,8,'components_feature_list_feature_list_items','icon',1),(538,25,3,'product_informations','image',1),(550,43,16,'components_feature_list_feature_list_items','icon',1),(551,44,17,'components_feature_list_feature_list_items','icon',1),(552,45,18,'components_feature_list_feature_list_items','icon',1),(570,31,6,'menu_items','icon',1),(571,41,1,'components_feature_list_feature_list_items','icon',1),(572,42,2,'components_feature_list_feature_list_items','icon',1),(573,43,13,'components_feature_list_feature_list_items','icon',1),(574,26,2,'product_informations','image',1),(617,34,9,'components_feature_list_feature_list_items','icon',1),(618,35,10,'components_feature_list_feature_list_items','icon',1),(619,36,11,'components_feature_list_feature_list_items','icon',1),(620,37,12,'components_feature_list_feature_list_items','icon',1),(621,33,1,'components_universal_page_image_title_content_links','image',1),(622,33,2,'components_universal_page_image_title_content_links','image',1),(623,33,1,'product_informations','image',1);
/*!40000 ALTER TABLE `upload_file_morph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_permission`
--

DROP TABLE IF EXISTS `users-permissions_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users-permissions_permission` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `controller` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `policy` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=341 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_permission`
--

LOCK TABLES `users-permissions_permission` WRITE;
/*!40000 ALTER TABLE `users-permissions_permission` DISABLE KEYS */;
INSERT INTO `users-permissions_permission` VALUES (1,'application','article','count',0,'',1,NULL,NULL),(2,'application','article','count',0,'',2,NULL,NULL),(3,'application','article','find',0,'',2,NULL,NULL),(4,'application','article','create',0,'',2,NULL,NULL),(5,'application','article','delete',0,'',1,NULL,NULL),(6,'application','article','create',0,'',1,NULL,NULL),(7,'application','article','delete',0,'',2,NULL,NULL),(8,'application','article','findone',0,'',1,NULL,NULL),(9,'application','article','find',0,'',1,NULL,NULL),(10,'application','article','findone',0,'',2,NULL,NULL),(11,'application','article','update',0,'',1,NULL,NULL),(12,'application','article','update',0,'',2,NULL,NULL),(13,'application','cookie-consent','delete',0,'',1,NULL,NULL),(14,'application','cookie-consent','delete',0,'',2,NULL,NULL),(15,'application','cookie-consent','update',0,'',2,NULL,NULL),(16,'application','cookie-consent','createlocalization',0,'',1,NULL,NULL),(17,'application','cookie-consent','createlocalization',0,'',2,NULL,NULL),(18,'application','cookie-consent','update',0,'',1,NULL,NULL),(19,'application','cookie-consent','find',0,'',1,NULL,NULL),(20,'application','cookie-consent','find',1,'',2,NULL,NULL),(21,'application','landing-page','count',0,'',1,NULL,NULL),(22,'application','landing-page','count',0,'',2,NULL,NULL),(23,'application','landing-page','create',0,'',1,NULL,NULL),(24,'application','landing-page','create',0,'',2,NULL,NULL),(25,'application','landing-page','delete',0,'',1,NULL,NULL),(26,'application','landing-page','delete',0,'',2,NULL,NULL),(27,'application','landing-page','find',0,'',1,NULL,NULL),(28,'application','landing-page','findone',0,'',2,NULL,NULL),(29,'application','landing-page','findone',0,'',1,NULL,NULL),(30,'application','landing-page','find',0,'',2,NULL,NULL),(31,'application','landing-page','update',0,'',1,NULL,NULL),(32,'application','landing-page','update',0,'',2,NULL,NULL),(33,'application','page','count',0,'',1,NULL,NULL),(34,'application','page','count',0,'',2,NULL,NULL),(35,'application','page','create',0,'',1,NULL,NULL),(36,'application','page','delete',0,'',1,NULL,NULL),(37,'application','page','create',0,'',2,NULL,NULL),(38,'application','page','delete',0,'',2,NULL,NULL),(39,'application','page','find',0,'',2,NULL,NULL),(40,'application','page','find',0,'',1,NULL,NULL),(41,'application','page','findone',0,'',1,NULL,NULL),(42,'application','page','findone',0,'',2,NULL,NULL),(43,'application','page','update',0,'',1,NULL,NULL),(44,'application','page','update',0,'',2,NULL,NULL),(45,'application','privacy-policy','createlocalization',0,'',1,NULL,NULL),(46,'application','privacy-policy','createlocalization',0,'',2,NULL,NULL),(47,'application','privacy-policy','delete',0,'',1,NULL,NULL),(48,'application','privacy-policy','delete',0,'',2,NULL,NULL),(49,'application','privacy-policy','find',1,'',2,NULL,NULL),(50,'application','privacy-policy','find',0,'',1,NULL,NULL),(51,'application','privacy-policy','update',0,'',1,NULL,NULL),(52,'application','privacy-policy','update',0,'',2,NULL,NULL),(53,'application','register-node','count',0,'',1,NULL,NULL),(54,'application','register-node','count',0,'',2,NULL,NULL),(55,'application','register-node','create',0,'',1,NULL,NULL),(56,'application','register-node','create',0,'',2,NULL,NULL),(57,'application','register-node','delete',0,'',1,NULL,NULL),(58,'application','register-node','delete',0,'',2,NULL,NULL),(59,'application','register-node','find',0,'',2,NULL,NULL),(60,'application','register-node','find',0,'',1,NULL,NULL),(61,'application','register-node','findone',0,'',1,NULL,NULL),(62,'application','register-node','findone',0,'',2,NULL,NULL),(63,'application','register-node','update',0,'',1,NULL,NULL),(64,'application','register-node','update',0,'',2,NULL,NULL),(65,'application','terms-of-service','createlocalization',0,'',1,NULL,NULL),(66,'application','terms-of-service','createlocalization',0,'',2,NULL,NULL),(67,'application','terms-of-service','delete',0,'',1,NULL,NULL),(68,'application','terms-of-service','delete',0,'',2,NULL,NULL),(69,'application','terms-of-service','find',0,'',1,NULL,NULL),(70,'application','terms-of-service','update',0,'',1,NULL,NULL),(71,'application','terms-of-service','update',0,'',2,NULL,NULL),(72,'application','terms-of-service','find',1,'',2,NULL,NULL),(73,'content-manager','collection-types','bulkdelete',0,'',2,NULL,NULL),(74,'content-manager','collection-types','bulkdelete',0,'',1,NULL,NULL),(75,'content-manager','collection-types','create',0,'',1,NULL,NULL),(76,'content-manager','collection-types','create',0,'',2,NULL,NULL),(77,'content-manager','collection-types','delete',0,'',1,NULL,NULL),(78,'content-manager','collection-types','delete',0,'',2,NULL,NULL),(79,'content-manager','collection-types','find',0,'',1,NULL,NULL),(80,'content-manager','collection-types','find',0,'',2,NULL,NULL),(81,'content-manager','collection-types','findone',0,'',1,NULL,NULL),(82,'content-manager','collection-types','findone',0,'',2,NULL,NULL),(83,'content-manager','collection-types','previewmanyrelations',0,'',1,NULL,NULL),(84,'content-manager','collection-types','previewmanyrelations',0,'',2,NULL,NULL),(85,'content-manager','collection-types','publish',0,'',1,NULL,NULL),(86,'content-manager','collection-types','publish',0,'',2,NULL,NULL),(87,'content-manager','collection-types','unpublish',0,'',1,NULL,NULL),(88,'content-manager','collection-types','unpublish',0,'',2,NULL,NULL),(89,'content-manager','collection-types','update',0,'',1,NULL,NULL),(90,'content-manager','collection-types','update',0,'',2,NULL,NULL),(91,'content-manager','components','findcomponentconfiguration',0,'',2,NULL,NULL),(92,'content-manager','components','findcomponentconfiguration',0,'',1,NULL,NULL),(93,'content-manager','components','findcomponents',0,'',1,NULL,NULL),(94,'content-manager','components','findcomponents',0,'',2,NULL,NULL),(95,'content-manager','components','updatecomponentconfiguration',0,'',1,NULL,NULL),(96,'content-manager','components','updatecomponentconfiguration',0,'',2,NULL,NULL),(97,'content-manager','content-types','findcontenttypeconfiguration',0,'',1,NULL,NULL),(98,'content-manager','content-types','findcontenttypeconfiguration',0,'',2,NULL,NULL),(99,'content-manager','content-types','findcontenttypes',0,'',1,NULL,NULL),(100,'content-manager','content-types','findcontenttypes',0,'',2,NULL,NULL),(101,'content-manager','content-types','findcontenttypessettings',0,'',1,NULL,NULL),(102,'content-manager','content-types','findcontenttypessettings',0,'',2,NULL,NULL),(103,'content-manager','content-types','updatecontenttypeconfiguration',0,'',1,NULL,NULL),(104,'content-manager','content-types','updatecontenttypeconfiguration',0,'',2,NULL,NULL),(105,'content-manager','relations','find',0,'',1,NULL,NULL),(106,'content-manager','relations','find',0,'',2,NULL,NULL),(107,'content-manager','single-types','createorupdate',0,'',1,NULL,NULL),(108,'content-manager','single-types','createorupdate',0,'',2,NULL,NULL),(109,'content-manager','single-types','delete',0,'',1,NULL,NULL),(110,'content-manager','single-types','delete',0,'',2,NULL,NULL),(111,'content-manager','single-types','find',0,'',1,NULL,NULL),(112,'content-manager','single-types','find',0,'',2,NULL,NULL),(113,'content-manager','single-types','publish',0,'',1,NULL,NULL),(114,'content-manager','single-types','publish',0,'',2,NULL,NULL),(115,'content-manager','single-types','unpublish',0,'',1,NULL,NULL),(116,'content-manager','uid','checkuidavailability',0,'',1,NULL,NULL),(117,'content-manager','single-types','unpublish',0,'',2,NULL,NULL),(118,'content-manager','uid','checkuidavailability',0,'',2,NULL,NULL),(119,'content-manager','uid','generateuid',0,'',1,NULL,NULL),(120,'content-manager','uid','generateuid',0,'',2,NULL,NULL),(121,'content-type-builder','builder','getreservednames',0,'',2,NULL,NULL),(122,'content-type-builder','builder','getreservednames',0,'',1,NULL,NULL),(123,'content-type-builder','componentcategories','deletecategory',0,'',1,NULL,NULL),(124,'content-type-builder','componentcategories','deletecategory',0,'',2,NULL,NULL),(125,'content-type-builder','componentcategories','editcategory',0,'',1,NULL,NULL),(126,'content-type-builder','componentcategories','editcategory',0,'',2,NULL,NULL),(127,'content-type-builder','components','createcomponent',0,'',1,NULL,NULL),(128,'content-type-builder','components','createcomponent',0,'',2,NULL,NULL),(129,'content-type-builder','components','deletecomponent',0,'',1,NULL,NULL),(130,'content-type-builder','components','deletecomponent',0,'',2,NULL,NULL),(131,'content-type-builder','components','getcomponent',0,'',2,NULL,NULL),(132,'content-type-builder','components','getcomponent',0,'',1,NULL,NULL),(133,'content-type-builder','components','getcomponents',0,'',1,NULL,NULL),(134,'content-type-builder','components','getcomponents',0,'',2,NULL,NULL),(135,'content-type-builder','components','updatecomponent',0,'',1,NULL,NULL),(136,'content-type-builder','components','updatecomponent',0,'',2,NULL,NULL),(137,'content-type-builder','connections','getconnections',0,'',1,NULL,NULL),(138,'content-type-builder','connections','getconnections',0,'',2,NULL,NULL),(139,'content-type-builder','contenttypes','createcontenttype',0,'',1,NULL,NULL),(140,'content-type-builder','contenttypes','createcontenttype',0,'',2,NULL,NULL),(141,'content-type-builder','contenttypes','deletecontenttype',0,'',1,NULL,NULL),(142,'content-type-builder','contenttypes','deletecontenttype',0,'',2,NULL,NULL),(143,'content-type-builder','contenttypes','getcontenttype',0,'',2,NULL,NULL),(144,'content-type-builder','contenttypes','getcontenttype',0,'',1,NULL,NULL),(145,'content-type-builder','contenttypes','getcontenttypes',0,'',1,NULL,NULL),(146,'content-type-builder','contenttypes','updatecontenttype',0,'',1,NULL,NULL),(147,'content-type-builder','contenttypes','getcontenttypes',0,'',2,NULL,NULL),(148,'content-type-builder','contenttypes','updatecontenttype',0,'',2,NULL,NULL),(149,'email','email','getsettings',0,'',1,NULL,NULL),(150,'email','email','getsettings',0,'',2,NULL,NULL),(151,'email','email','send',0,'',1,NULL,NULL),(152,'email','email','send',0,'',2,NULL,NULL),(153,'email','email','test',0,'',1,NULL,NULL),(154,'email','email','test',0,'',2,NULL,NULL),(155,'i18n','content-types','getnonlocalizedattributes',0,'',1,NULL,NULL),(156,'i18n','content-types','getnonlocalizedattributes',0,'',2,NULL,NULL),(157,'i18n','locales','createlocale',0,'',1,NULL,NULL),(158,'i18n','iso-locales','listisolocales',0,'',1,NULL,NULL),(159,'i18n','iso-locales','listisolocales',0,'',2,NULL,NULL),(160,'i18n','locales','createlocale',0,'',2,NULL,NULL),(161,'i18n','locales','deletelocale',0,'',1,NULL,NULL),(162,'i18n','locales','deletelocale',0,'',2,NULL,NULL),(163,'i18n','locales','listlocales',0,'',1,NULL,NULL),(164,'i18n','locales','listlocales',0,'',2,NULL,NULL),(165,'i18n','locales','updatelocale',0,'',1,NULL,NULL),(166,'navigation','navigation','config',0,'',1,NULL,NULL),(167,'i18n','locales','updatelocale',0,'',2,NULL,NULL),(168,'navigation','navigation','get',0,'',1,NULL,NULL),(169,'navigation','navigation','config',0,'',2,NULL,NULL),(170,'navigation','navigation','get',0,'',2,NULL,NULL),(171,'navigation','navigation','getbyid',0,'',1,NULL,NULL),(172,'navigation','navigation','getbyid',0,'',2,NULL,NULL),(173,'navigation','navigation','getservice',0,'',1,NULL,NULL),(174,'navigation','navigation','getservice',0,'',2,NULL,NULL),(175,'navigation','navigation','post',0,'',1,NULL,NULL),(176,'navigation','navigation','post',0,'',2,NULL,NULL),(177,'navigation','navigation','put',0,'',1,NULL,NULL),(178,'navigation','navigation','put',0,'',2,NULL,NULL),(179,'navigation','navigation','render',0,'',1,NULL,NULL),(180,'navigation','navigation','render',0,'',2,NULL,NULL),(181,'upload','upload','count',0,'',1,NULL,NULL),(182,'upload','upload','find',0,'',1,NULL,NULL),(183,'upload','upload','destroy',0,'',1,NULL,NULL),(184,'upload','upload','destroy',0,'',2,NULL,NULL),(185,'upload','upload','count',0,'',2,NULL,NULL),(186,'upload','upload','find',0,'',2,NULL,NULL),(187,'upload','upload','findone',0,'',1,NULL,NULL),(188,'upload','upload','getsettings',0,'',1,NULL,NULL),(189,'upload','upload','findone',0,'',2,NULL,NULL),(190,'upload','upload','getsettings',0,'',2,NULL,NULL),(191,'upload','upload','search',0,'',1,NULL,NULL),(192,'upload','upload','search',0,'',2,NULL,NULL),(193,'upload','upload','updatesettings',0,'',1,NULL,NULL),(194,'upload','upload','upload',0,'',1,NULL,NULL),(195,'upload','upload','updatesettings',0,'',2,NULL,NULL),(196,'upload','upload','upload',0,'',2,NULL,NULL),(197,'users-permissions','auth','callback',0,'',1,NULL,NULL),(198,'users-permissions','auth','callback',1,'',2,NULL,NULL),(199,'users-permissions','auth','connect',1,'',2,NULL,NULL),(200,'users-permissions','auth','connect',1,'',1,NULL,NULL),(201,'users-permissions','auth','emailconfirmation',0,'',1,NULL,NULL),(202,'users-permissions','auth','emailconfirmation',1,'',2,NULL,NULL),(203,'users-permissions','auth','forgotpassword',0,'',1,NULL,NULL),(204,'users-permissions','auth','forgotpassword',1,'',2,NULL,NULL),(205,'users-permissions','auth','register',0,'',1,NULL,NULL),(206,'users-permissions','auth','register',1,'',2,NULL,NULL),(207,'users-permissions','auth','resetpassword',0,'',1,NULL,NULL),(208,'users-permissions','auth','resetpassword',1,'',2,NULL,NULL),(209,'users-permissions','auth','sendemailconfirmation',0,'',1,NULL,NULL),(210,'users-permissions','auth','sendemailconfirmation',0,'',2,NULL,NULL),(211,'users-permissions','user','count',0,'',1,NULL,NULL),(212,'users-permissions','user','count',0,'',2,NULL,NULL),(213,'users-permissions','user','create',0,'',2,NULL,NULL),(214,'users-permissions','user','create',0,'',1,NULL,NULL),(215,'users-permissions','user','destroy',0,'',1,NULL,NULL),(216,'users-permissions','user','destroy',0,'',2,NULL,NULL),(217,'users-permissions','user','destroyall',0,'',1,NULL,NULL),(218,'users-permissions','user','find',0,'',2,NULL,NULL),(219,'users-permissions','user','find',0,'',1,NULL,NULL),(220,'users-permissions','user','destroyall',0,'',2,NULL,NULL),(221,'users-permissions','user','findone',0,'',1,NULL,NULL),(222,'users-permissions','user','findone',0,'',2,NULL,NULL),(223,'users-permissions','user','me',1,'',2,NULL,NULL),(224,'users-permissions','user','me',1,'',1,NULL,NULL),(225,'users-permissions','user','update',0,'',1,NULL,NULL),(226,'users-permissions','user','update',0,'',2,NULL,NULL),(227,'users-permissions','userspermissions','createrole',0,'',1,NULL,NULL),(228,'users-permissions','userspermissions','createrole',0,'',2,NULL,NULL),(229,'users-permissions','userspermissions','deleterole',0,'',1,NULL,NULL),(230,'users-permissions','userspermissions','deleterole',0,'',2,NULL,NULL),(231,'users-permissions','userspermissions','getadvancedsettings',0,'',1,NULL,NULL),(232,'users-permissions','userspermissions','getadvancedsettings',0,'',2,NULL,NULL),(233,'users-permissions','userspermissions','getemailtemplate',0,'',1,NULL,NULL),(234,'users-permissions','userspermissions','getemailtemplate',0,'',2,NULL,NULL),(235,'users-permissions','userspermissions','getpermissions',0,'',1,NULL,NULL),(236,'users-permissions','userspermissions','getpermissions',0,'',2,NULL,NULL),(237,'users-permissions','userspermissions','getpolicies',0,'',1,NULL,NULL),(238,'users-permissions','userspermissions','getpolicies',0,'',2,NULL,NULL),(239,'users-permissions','userspermissions','getproviders',0,'',1,NULL,NULL),(240,'users-permissions','userspermissions','getproviders',0,'',2,NULL,NULL),(241,'users-permissions','userspermissions','getrole',0,'',1,NULL,NULL),(242,'users-permissions','userspermissions','getrole',0,'',2,NULL,NULL),(243,'users-permissions','userspermissions','getroles',0,'',1,NULL,NULL),(244,'users-permissions','userspermissions','getroles',0,'',2,NULL,NULL),(245,'users-permissions','userspermissions','getroutes',0,'',1,NULL,NULL),(246,'users-permissions','userspermissions','getroutes',0,'',2,NULL,NULL),(247,'users-permissions','userspermissions','index',0,'',1,NULL,NULL),(248,'users-permissions','userspermissions','index',0,'',2,NULL,NULL),(249,'users-permissions','userspermissions','searchusers',0,'',1,NULL,NULL),(250,'users-permissions','userspermissions','searchusers',0,'',2,NULL,NULL),(251,'users-permissions','userspermissions','updateadvancedsettings',0,'',1,NULL,NULL),(252,'users-permissions','userspermissions','updateadvancedsettings',0,'',2,NULL,NULL),(253,'users-permissions','userspermissions','updateemailtemplate',0,'',1,NULL,NULL),(254,'users-permissions','userspermissions','updateemailtemplate',0,'',2,NULL,NULL),(255,'users-permissions','userspermissions','updateproviders',0,'',1,NULL,NULL),(256,'users-permissions','userspermissions','updateproviders',0,'',2,NULL,NULL),(257,'users-permissions','userspermissions','updaterole',0,'',1,NULL,NULL),(258,'users-permissions','userspermissions','updaterole',0,'',2,NULL,NULL),(273,'application','cat','createlocalization',0,'',1,NULL,NULL),(274,'application','cat','createlocalization',0,'',2,NULL,NULL),(275,'application','cat','delete',0,'',1,NULL,NULL),(276,'application','cat','find',0,'',1,NULL,NULL),(277,'application','cat','delete',0,'',2,NULL,NULL),(278,'application','cat','find',1,'',2,NULL,NULL),(279,'application','cat','update',0,'',1,NULL,NULL),(280,'application','cat','update',0,'',2,NULL,NULL),(281,'application','translator','createlocalization',0,'',1,NULL,NULL),(282,'application','translator','createlocalization',0,'',2,NULL,NULL),(283,'application','translator','delete',0,'',1,NULL,NULL),(284,'application','translator','delete',0,'',2,NULL,NULL),(285,'application','translator','find',0,'',1,NULL,NULL),(286,'application','translator','find',1,'',2,NULL,NULL),(287,'application','translator','update',0,'',1,NULL,NULL),(288,'application','translator','update',0,'',2,NULL,NULL),(289,'application','mt-main','createlocalization',0,'',2,NULL,NULL),(290,'application','mt-main','delete',0,'',1,NULL,NULL),(291,'application','mt-main','find',0,'',1,NULL,NULL),(292,'application','mt-main','createlocalization',0,'',1,NULL,NULL),(293,'application','mt-main','delete',0,'',2,NULL,NULL),(294,'application','mt-main','find',1,'',2,NULL,NULL),(295,'application','mt-main','update',0,'',1,NULL,NULL),(296,'application','mt-main','update',0,'',2,NULL,NULL),(297,'application','menu-items','count',0,'',1,NULL,NULL),(298,'application','menu-items','count',0,'',2,NULL,NULL),(299,'application','menu-items','create',0,'',1,NULL,NULL),(300,'application','menu-items','create',0,'',2,NULL,NULL),(301,'application','menu-items','createlocalization',0,'',1,NULL,NULL),(302,'application','menu-items','createlocalization',0,'',2,NULL,NULL),(303,'application','menu-items','delete',0,'',1,NULL,NULL),(304,'application','menu-items','delete',0,'',2,NULL,NULL),(305,'application','menu-items','find',0,'',1,NULL,NULL),(306,'application','menu-items','find',1,'',2,NULL,NULL),(307,'application','menu-items','findone',0,'',1,NULL,NULL),(308,'application','menu-items','findone',0,'',2,NULL,NULL),(309,'application','menu-items','update',0,'',2,NULL,NULL),(310,'application','menu-items','update',0,'',1,NULL,NULL),(311,'application','product-information','count',0,'',1,NULL,NULL),(312,'application','product-information','count',0,'',2,NULL,NULL),(313,'application','product-information','create',0,'',1,NULL,NULL),(314,'application','product-information','create',0,'',2,NULL,NULL),(315,'application','product-information','createlocalization',0,'',1,NULL,NULL),(316,'application','product-information','createlocalization',0,'',2,NULL,NULL),(317,'application','product-information','delete',0,'',1,NULL,NULL),(318,'application','product-information','delete',0,'',2,NULL,NULL),(319,'application','product-information','find',0,'',1,NULL,NULL),(320,'application','product-information','find',1,'',2,NULL,NULL),(321,'application','product-information','findone',1,'',2,NULL,NULL),(322,'application','product-information','update',0,'',1,NULL,NULL),(323,'application','product-information','findone',0,'',1,NULL,NULL),(324,'application','product-information','update',0,'',2,NULL,NULL),(325,'application','mt-website-translator','delete',0,'',1,NULL,NULL),(326,'application','mt-website-translator','find',0,'',1,NULL,NULL),(327,'application','mt-website-translator','find',1,'',2,NULL,NULL),(328,'application','mt-website-translator','delete',0,'',2,NULL,NULL),(329,'application','mt-website-translator','update',0,'',1,NULL,NULL),(330,'application','mt-website-translator','update',0,'',2,NULL,NULL),(331,'application','mt-website-translator','createlocalization',0,'',1,NULL,NULL),(332,'application','mt-website-translator','createlocalization',0,'',2,NULL,NULL),(333,'application','trados-plugin','find',0,'',1,NULL,NULL),(334,'application','trados-plugin','delete',0,'',1,NULL,NULL),(335,'application','trados-plugin','delete',0,'',2,NULL,NULL),(336,'application','trados-plugin','find',1,'',2,NULL,NULL),(337,'application','trados-plugin','update',0,'',1,NULL,NULL),(338,'application','trados-plugin','update',0,'',2,NULL,NULL),(339,'application','trados-plugin','createlocalization',0,'',2,NULL,NULL),(340,'application','trados-plugin','createlocalization',0,'',1,NULL,NULL);
/*!40000 ALTER TABLE `users-permissions_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_role`
--

DROP TABLE IF EXISTS `users-permissions_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users-permissions_role` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_role_type_unique` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_role`
--

LOCK TABLES `users-permissions_role` WRITE;
/*!40000 ALTER TABLE `users-permissions_role` DISABLE KEYS */;
INSERT INTO `users-permissions_role` VALUES (1,'Authenticated','Default role given to authenticated user.','authenticated',NULL,NULL),(2,'Public','Default role given to unauthenticated user.','public',NULL,NULL);
/*!40000 ALTER TABLE `users-permissions_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_user`
--

DROP TABLE IF EXISTS `users-permissions_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users-permissions_user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `provider` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `resetPasswordToken` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmationToken` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_user_username_unique` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_user`
--

LOCK TABLES `users-permissions_user` WRITE;
/*!40000 ALTER TABLE `users-permissions_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `users-permissions_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-14 14:20:44
