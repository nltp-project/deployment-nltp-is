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
-- Table structure for table `admin_permissions`
--

DROP TABLE IF EXISTS `admin_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `conditions` json DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=742 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permissions`
--

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` VALUES (2,'plugin::content-manager.explorer.create','api::cookie-consent.cookie-consent','{\"fields\": [\"title\", \"description\", \"accept_button\", \"decline_button\"]}','[]','2022-06-02 13:27:12.000000','2022-06-02 13:27:12.000000',NULL,NULL),(5,'plugin::content-manager.explorer.create','api::register-node.register-node','{\"fields\": [\"Node_name\", \"Contact_email\", \"Contact_name\", \"Node_url\", \"Node_description\", \"Node_code\", \"Contact_phone\"]}','[]','2022-06-02 13:27:12.000000','2022-06-02 13:27:12.000000',NULL,NULL),(6,'plugin::content-manager.explorer.create','api::terms-of-service.terms-of-service','{\"fields\": [\"text\"]}','[]','2022-06-02 13:27:12.000000','2022-06-02 13:27:12.000000',NULL,NULL),(7,'plugin::content-manager.explorer.create','api::privacy-policy.privacy-policy','{\"fields\": [\"text\"]}','[]','2022-06-02 13:27:12.000000','2022-06-02 13:27:12.000000',NULL,NULL),(9,'plugin::content-manager.explorer.read','api::cookie-consent.cookie-consent','{\"fields\": [\"title\", \"description\", \"accept_button\", \"decline_button\"]}','[]','2022-06-02 13:27:12.000000','2022-06-02 13:27:12.000000',NULL,NULL),(13,'plugin::content-manager.explorer.read','api::privacy-policy.privacy-policy','{\"fields\": [\"text\"]}','[]','2022-06-02 13:27:12.000000','2022-06-02 13:27:12.000000',NULL,NULL),(14,'plugin::content-manager.explorer.read','api::register-node.register-node','{\"fields\": [\"Node_name\", \"Contact_email\", \"Contact_name\", \"Node_url\", \"Node_description\", \"Node_code\", \"Contact_phone\"]}','[]','2022-06-02 13:27:12.000000','2022-06-02 13:27:12.000000',NULL,NULL),(15,'plugin::content-manager.explorer.read','api::terms-of-service.terms-of-service','{\"fields\": [\"text\"]}','[]','2022-06-02 13:27:12.000000','2022-06-02 13:27:12.000000',NULL,NULL),(18,'plugin::content-manager.explorer.update','api::cookie-consent.cookie-consent','{\"fields\": [\"title\", \"description\", \"accept_button\", \"decline_button\"]}','[]','2022-06-02 13:27:12.000000','2022-06-02 13:27:12.000000',NULL,NULL),(21,'plugin::content-manager.explorer.update','api::register-node.register-node','{\"fields\": [\"Node_name\", \"Contact_email\", \"Contact_name\", \"Node_url\", \"Node_description\", \"Node_code\", \"Contact_phone\"]}','[]','2022-06-02 13:27:12.000000','2022-06-02 13:27:13.000000',NULL,NULL),(22,'plugin::content-manager.explorer.update','api::privacy-policy.privacy-policy','{\"fields\": [\"text\"]}','[]','2022-06-02 13:27:12.000000','2022-06-02 13:27:12.000000',NULL,NULL),(23,'plugin::content-manager.explorer.update','api::terms-of-service.terms-of-service','{\"fields\": [\"text\"]}','[]','2022-06-02 13:27:12.000000','2022-06-02 13:27:12.000000',NULL,NULL),(30,'plugin::content-manager.explorer.delete','api::register-node.register-node','{}','[]','2022-06-02 13:27:13.000000','2022-06-02 13:27:13.000000',NULL,NULL),(34,'plugin::upload.read',NULL,'{}','[]','2022-06-02 13:27:13.000000','2022-06-02 13:27:13.000000',NULL,NULL),(35,'plugin::upload.assets.create',NULL,'{}','[]','2022-06-02 13:27:13.000000','2022-06-02 13:27:13.000000',NULL,NULL),(36,'plugin::upload.assets.update',NULL,'{}','[]','2022-06-02 13:27:13.000000','2022-06-02 13:27:13.000000',NULL,NULL),(37,'plugin::upload.assets.download',NULL,'{}','[]','2022-06-02 13:27:13.000000','2022-06-02 13:27:13.000000',NULL,NULL),(38,'plugin::upload.assets.copy-link',NULL,'{}','[]','2022-06-02 13:27:13.000000','2022-06-02 13:27:13.000000',NULL,NULL),(40,'plugin::content-manager.explorer.create','api::cookie-consent.cookie-consent','{\"fields\": [\"title\", \"description\", \"accept_button\", \"decline_button\"]}','[\"admin::is-creator\"]','2022-06-02 13:27:13.000000','2022-06-02 13:27:13.000000',NULL,NULL),(43,'plugin::content-manager.explorer.create','api::privacy-policy.privacy-policy','{\"fields\": [\"text\"]}','[\"admin::is-creator\"]','2022-06-02 13:27:13.000000','2022-06-02 13:27:13.000000',NULL,NULL),(44,'plugin::content-manager.explorer.create','api::terms-of-service.terms-of-service','{\"fields\": [\"text\"]}','[\"admin::is-creator\"]','2022-06-02 13:27:13.000000','2022-06-02 13:27:13.000000',NULL,NULL),(45,'plugin::content-manager.explorer.create','api::register-node.register-node','{\"fields\": [\"Node_name\", \"Contact_email\", \"Contact_name\", \"Node_url\", \"Node_description\", \"Node_code\", \"Contact_phone\"]}','[\"admin::is-creator\"]','2022-06-02 13:27:13.000000','2022-06-02 13:27:13.000000',NULL,NULL),(46,'plugin::content-manager.explorer.read','api::cookie-consent.cookie-consent','{\"fields\": [\"title\", \"description\", \"accept_button\", \"decline_button\"]}','[\"admin::is-creator\"]','2022-06-02 13:27:13.000000','2022-06-02 13:27:13.000000',NULL,NULL),(51,'plugin::content-manager.explorer.read','api::privacy-policy.privacy-policy','{\"fields\": [\"text\"]}','[\"admin::is-creator\"]','2022-06-02 13:27:13.000000','2022-06-02 13:27:13.000000',NULL,NULL),(52,'plugin::content-manager.explorer.read','api::register-node.register-node','{\"fields\": [\"Node_name\", \"Contact_email\", \"Contact_name\", \"Node_url\", \"Node_description\", \"Node_code\", \"Contact_phone\"]}','[\"admin::is-creator\"]','2022-06-02 13:27:13.000000','2022-06-02 13:27:13.000000',NULL,NULL),(54,'plugin::content-manager.explorer.read','api::terms-of-service.terms-of-service','{\"fields\": [\"text\"]}','[\"admin::is-creator\"]','2022-06-02 13:27:13.000000','2022-06-02 13:27:13.000000',NULL,NULL),(58,'plugin::content-manager.explorer.update','api::cookie-consent.cookie-consent','{\"fields\": [\"title\", \"description\", \"accept_button\", \"decline_button\"]}','[\"admin::is-creator\"]','2022-06-02 13:27:13.000000','2022-06-02 13:27:13.000000',NULL,NULL),(59,'plugin::content-manager.explorer.update','api::privacy-policy.privacy-policy','{\"fields\": [\"text\"]}','[\"admin::is-creator\"]','2022-06-02 13:27:13.000000','2022-06-02 13:27:13.000000',NULL,NULL),(60,'plugin::content-manager.explorer.update','api::register-node.register-node','{\"fields\": [\"Node_name\", \"Contact_email\", \"Contact_name\", \"Node_url\", \"Node_description\", \"Node_code\", \"Contact_phone\"]}','[\"admin::is-creator\"]','2022-06-02 13:27:13.000000','2022-06-02 13:27:13.000000',NULL,NULL),(61,'plugin::content-manager.explorer.update','api::terms-of-service.terms-of-service','{\"fields\": [\"text\"]}','[\"admin::is-creator\"]','2022-06-02 13:27:13.000000','2022-06-02 13:27:13.000000',NULL,NULL),(68,'plugin::content-manager.explorer.delete','api::register-node.register-node','{}','[\"admin::is-creator\"]','2022-06-02 13:27:13.000000','2022-06-02 13:27:13.000000',NULL,NULL),(71,'plugin::upload.read',NULL,'{}','[\"admin::is-creator\"]','2022-06-02 13:27:13.000000','2022-06-02 13:27:13.000000',NULL,NULL),(72,'plugin::upload.assets.create',NULL,'{}','[]','2022-06-02 13:27:13.000000','2022-06-02 13:27:13.000000',NULL,NULL),(73,'plugin::upload.assets.copy-link',NULL,'{}','[]','2022-06-02 13:27:13.000000','2022-06-02 13:27:13.000000',NULL,NULL),(74,'plugin::upload.assets.download',NULL,'{}','[]','2022-06-02 13:27:13.000000','2022-06-02 13:27:13.000000',NULL,NULL),(75,'plugin::upload.assets.update',NULL,'{}','[\"admin::is-creator\"]','2022-06-02 13:27:13.000000','2022-06-02 13:27:13.000000',NULL,NULL),(76,'plugin::content-manager.explorer.create','api::cookie-consent.cookie-consent','{\"fields\": [\"title\", \"description\", \"accept_button\", \"decline_button\"], \"locales\": [\"en\"]}','[]','2022-06-02 13:27:13.000000','2022-06-02 13:27:13.000000',NULL,NULL),(80,'plugin::content-manager.explorer.create','api::privacy-policy.privacy-policy','{\"fields\": [\"text\"], \"locales\": [\"en\"]}','[]','2022-06-02 13:27:13.000000','2022-06-02 13:27:13.000000',NULL,NULL),(81,'plugin::content-manager.explorer.create','api::register-node.register-node','{\"fields\": [\"Node_name\", \"Contact_email\", \"Contact_name\", \"Node_url\", \"Node_description\", \"Node_code\", \"Contact_phone\"]}','[]','2022-06-02 13:27:13.000000','2022-06-02 13:27:13.000000',NULL,NULL),(82,'plugin::content-manager.explorer.create','api::terms-of-service.terms-of-service','{\"fields\": [\"text\"], \"locales\": [\"en\"]}','[]','2022-06-02 13:27:13.000000','2022-06-02 13:27:13.000000',NULL,NULL),(83,'plugin::content-manager.explorer.create','plugin::users-permissions.user','{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}','[]','2022-06-02 13:27:13.000000','2022-06-02 13:27:13.000000',NULL,NULL),(87,'plugin::content-manager.explorer.read','api::cookie-consent.cookie-consent','{\"fields\": [\"title\", \"description\", \"accept_button\", \"decline_button\"], \"locales\": [\"en\"]}','[]','2022-06-02 13:27:13.000000','2022-06-02 13:27:13.000000',NULL,NULL),(89,'plugin::content-manager.explorer.read','api::register-node.register-node','{\"fields\": [\"Node_name\", \"Contact_email\", \"Contact_name\", \"Node_url\", \"Node_description\", \"Node_code\", \"Contact_phone\"]}','[]','2022-06-02 13:27:14.000000','2022-06-02 13:27:14.000000',NULL,NULL),(90,'plugin::content-manager.explorer.read','api::privacy-policy.privacy-policy','{\"fields\": [\"text\"], \"locales\": [\"en\"]}','[]','2022-06-02 13:27:14.000000','2022-06-02 13:27:14.000000',NULL,NULL),(91,'plugin::content-manager.explorer.read','api::terms-of-service.terms-of-service','{\"fields\": [\"text\"], \"locales\": [\"en\"]}','[]','2022-06-02 13:27:14.000000','2022-06-02 13:27:14.000000',NULL,NULL),(93,'plugin::content-manager.explorer.read','plugin::users-permissions.user','{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}','[]','2022-06-02 13:27:14.000000','2022-06-02 13:27:14.000000',NULL,NULL),(95,'plugin::content-manager.explorer.update','api::cookie-consent.cookie-consent','{\"fields\": [\"title\", \"description\", \"accept_button\", \"decline_button\"], \"locales\": [\"en\"]}','[]','2022-06-02 13:27:14.000000','2022-06-02 13:27:14.000000',NULL,NULL),(98,'plugin::content-manager.explorer.update','api::privacy-policy.privacy-policy','{\"fields\": [\"text\"], \"locales\": [\"en\"]}','[]','2022-06-02 13:27:14.000000','2022-06-02 13:27:14.000000',NULL,NULL),(99,'plugin::content-manager.explorer.update','api::register-node.register-node','{\"fields\": [\"Node_name\", \"Contact_email\", \"Contact_name\", \"Node_url\", \"Node_description\", \"Node_code\", \"Contact_phone\"]}','[]','2022-06-02 13:27:14.000000','2022-06-02 13:27:14.000000',NULL,NULL),(100,'plugin::content-manager.explorer.update','api::terms-of-service.terms-of-service','{\"fields\": [\"text\"], \"locales\": [\"en\"]}','[]','2022-06-02 13:27:14.000000','2022-06-02 13:27:14.000000',NULL,NULL),(102,'plugin::content-manager.explorer.update','plugin::users-permissions.user','{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}','[]','2022-06-02 13:27:14.000000','2022-06-02 13:27:14.000000',NULL,NULL),(113,'plugin::content-type-builder.read',NULL,'{}','[]','2022-06-02 13:27:14.000000','2022-06-02 13:27:14.000000',NULL,NULL),(114,'plugin::upload.assets.update',NULL,'{}','[]','2022-06-02 13:27:14.000000','2022-06-02 13:27:14.000000',NULL,NULL),(115,'plugin::upload.assets.create',NULL,'{}','[]','2022-06-02 13:27:14.000000','2022-06-02 13:27:14.000000',NULL,NULL),(116,'plugin::upload.read',NULL,'{}','[]','2022-06-02 13:27:14.000000','2022-06-02 13:27:14.000000',NULL,NULL),(117,'plugin::email.settings.read',NULL,'{}','[]','2022-06-02 13:27:14.000000','2022-06-02 13:27:14.000000',NULL,NULL),(118,'plugin::upload.assets.download',NULL,'{}','[]','2022-06-02 13:27:14.000000','2022-06-02 13:27:14.000000',NULL,NULL),(119,'plugin::upload.assets.copy-link',NULL,'{}','[]','2022-06-02 13:27:14.000000','2022-06-02 13:27:14.000000',NULL,NULL),(120,'plugin::upload.settings.read',NULL,'{}','[]','2022-06-02 13:27:14.000000','2022-06-02 13:27:14.000000',NULL,NULL),(123,'plugin::i18n.locale.read',NULL,'{}','[]','2022-06-02 13:27:14.000000','2022-06-02 13:27:14.000000',NULL,NULL),(124,'plugin::i18n.locale.create',NULL,'{}','[]','2022-06-02 13:27:14.000000','2022-06-02 13:27:14.000000',NULL,NULL),(125,'plugin::i18n.locale.update',NULL,'{}','[]','2022-06-02 13:27:14.000000','2022-06-02 13:27:14.000000',NULL,NULL),(126,'plugin::content-manager.single-types.configure-view',NULL,'{}','[]','2022-06-02 13:27:14.000000','2022-06-02 13:27:14.000000',NULL,NULL),(127,'plugin::i18n.locale.delete',NULL,'{}','[]','2022-06-02 13:27:14.000000','2022-06-02 13:27:14.000000',NULL,NULL),(128,'plugin::content-manager.collection-types.configure-view',NULL,'{}','[]','2022-06-02 13:27:14.000000','2022-06-02 13:27:14.000000',NULL,NULL),(129,'plugin::content-manager.components.configure-layout',NULL,'{}','[]','2022-06-02 13:27:14.000000','2022-06-02 13:27:14.000000',NULL,NULL),(140,'admin::marketplace.read',NULL,'{}','[]','2022-06-02 13:27:14.000000','2022-06-02 13:27:14.000000',NULL,NULL),(141,'admin::marketplace.plugins.install',NULL,'{}','[]','2022-06-02 13:27:14.000000','2022-06-02 13:27:14.000000',NULL,NULL),(142,'admin::marketplace.plugins.uninstall',NULL,'{}','[]','2022-06-02 13:27:14.000000','2022-06-02 13:27:14.000000',NULL,NULL),(143,'admin::webhooks.create',NULL,'{}','[]','2022-06-02 13:27:14.000000','2022-06-02 13:27:14.000000',NULL,NULL),(144,'admin::webhooks.delete',NULL,'{}','[]','2022-06-02 13:27:14.000000','2022-06-02 13:27:14.000000',NULL,NULL),(145,'admin::webhooks.update',NULL,'{}','[]','2022-06-02 13:27:14.000000','2022-06-02 13:27:14.000000',NULL,NULL),(146,'admin::webhooks.read',NULL,'{}','[]','2022-06-02 13:27:14.000000','2022-06-02 13:27:14.000000',NULL,NULL),(147,'admin::users.read',NULL,'{}','[]','2022-06-02 13:27:14.000000','2022-06-02 13:27:14.000000',NULL,NULL),(148,'admin::users.create',NULL,'{}','[]','2022-06-02 13:27:14.000000','2022-06-02 13:27:14.000000',NULL,NULL),(149,'admin::users.update',NULL,'{}','[]','2022-06-02 13:27:14.000000','2022-06-02 13:27:14.000000',NULL,NULL),(150,'admin::users.delete',NULL,'{}','[]','2022-06-02 13:27:14.000000','2022-06-02 13:27:14.000000',NULL,NULL),(151,'admin::roles.read',NULL,'{}','[]','2022-06-02 13:27:14.000000','2022-06-02 13:27:14.000000',NULL,NULL),(152,'admin::roles.create',NULL,'{}','[]','2022-06-02 13:27:14.000000','2022-06-02 13:27:14.000000',NULL,NULL),(153,'admin::roles.update',NULL,'{}','[]','2022-06-02 13:27:14.000000','2022-06-02 13:27:14.000000',NULL,NULL),(154,'admin::roles.delete',NULL,'{}','[]','2022-06-02 13:27:14.000000','2022-06-02 13:27:14.000000',NULL,NULL),(191,'plugin::content-manager.explorer.create','api::translator.translator','{\"fields\": [\"header\", \"footer\"], \"locales\": [\"en\"]}','[]','2022-06-10 08:08:37.000000','2022-06-10 08:08:37.000000',NULL,NULL),(192,'plugin::content-manager.explorer.read','api::translator.translator','{\"fields\": [\"header\", \"footer\"], \"locales\": [\"en\"]}','[]','2022-06-10 08:08:37.000000','2022-06-10 08:08:37.000000',NULL,NULL),(193,'plugin::content-manager.explorer.update','api::translator.translator','{\"fields\": [\"header\", \"footer\"], \"locales\": [\"en\"]}','[]','2022-06-10 08:08:37.000000','2022-06-10 08:08:37.000000',NULL,NULL),(208,'plugin::content-manager.explorer.create','api::mt-main.mt-main','{\"fields\": [\"footer\"], \"locales\": [\"en\"]}','[]','2022-06-27 17:57:37.000000','2022-06-27 17:57:37.000000',NULL,NULL),(209,'plugin::content-manager.explorer.update','api::mt-main.mt-main','{\"fields\": [\"footer\"], \"locales\": [\"en\"]}','[]','2022-06-27 17:57:37.000000','2022-06-27 17:57:37.000000',NULL,NULL),(210,'plugin::content-manager.explorer.read','api::mt-main.mt-main','{\"fields\": [\"footer\"], \"locales\": [\"en\"]}','[]','2022-06-27 17:57:37.000000','2022-06-27 17:57:37.000000',NULL,NULL),(656,'plugin::content-manager.explorer.delete','api::cat.cat','{\"locales\": [\"en\"]}','[]','2022-11-16 09:49:25.000000','2022-11-16 09:49:25.000000',NULL,NULL),(658,'plugin::content-manager.explorer.delete','api::cookie-consent.cookie-consent','{\"locales\": [\"en\"]}','[]','2022-11-16 09:49:25.000000','2022-11-16 09:49:25.000000',NULL,NULL),(659,'plugin::content-manager.explorer.delete','api::mt-main.mt-main','{\"locales\": [\"en\"]}','[]','2022-11-16 09:49:25.000000','2022-11-16 09:49:25.000000',NULL,NULL),(660,'plugin::content-manager.explorer.delete','api::menu-item.menu-item','{\"locales\": [\"en\"]}','[]','2022-11-16 09:49:25.000000','2022-11-16 09:49:25.000000',NULL,NULL),(661,'plugin::content-manager.explorer.delete','api::mt-website-translator.mt-website-translator','{\"locales\": [\"en\"]}','[]','2022-11-16 09:49:25.000000','2022-11-16 09:49:25.000000',NULL,NULL),(663,'plugin::content-manager.explorer.delete','api::privacy-policy.privacy-policy','{\"locales\": [\"en\"]}','[]','2022-11-16 09:49:25.000000','2022-11-16 09:49:25.000000',NULL,NULL),(664,'plugin::content-manager.explorer.delete','api::product-information.product-information','{\"locales\": [\"en\"]}','[]','2022-11-16 09:49:25.000000','2022-11-16 09:49:25.000000',NULL,NULL),(665,'plugin::content-manager.explorer.delete','api::register-node.register-node','{}','[]','2022-11-16 09:49:25.000000','2022-11-16 09:49:25.000000',NULL,NULL),(666,'plugin::content-manager.explorer.delete','api::translator.translator','{\"locales\": [\"en\"]}','[]','2022-11-16 09:49:25.000000','2022-11-16 09:49:25.000000',NULL,NULL),(668,'plugin::content-manager.explorer.delete','api::terms-of-service.terms-of-service','{\"locales\": [\"en\"]}','[]','2022-11-16 09:49:25.000000','2022-11-16 09:49:25.000000',NULL,NULL),(669,'plugin::content-manager.explorer.delete','api::trados-plugin.trados-plugin','{\"locales\": [\"en\"]}','[]','2022-11-16 09:49:25.000000','2022-11-16 09:49:25.000000',NULL,NULL),(670,'plugin::content-manager.explorer.delete','plugin::users-permissions.user','{}','[]','2022-11-16 09:49:25.000000','2022-11-16 09:49:25.000000',NULL,NULL),(701,'admin::api-tokens.create',NULL,'{}','[]',NULL,NULL,NULL,NULL),(702,'admin::api-tokens.delete',NULL,'{}','[]',NULL,NULL,NULL,NULL),(703,'admin::api-tokens.read',NULL,'{}','[]',NULL,NULL,NULL,NULL),(704,'admin::api-tokens.update',NULL,'{}','[]',NULL,NULL,NULL,NULL),(705,'plugin::content-manager.explorer.create','api::menu-item.menu-item','{\"fields\": [\"title\", \"link\", \"customId\", \"disabled\", \"externalLink\", \"plausibleEvent.eventId\", \"plausibleEvent.properties.key\", \"plausibleEvent.properties.value\", \"icon\"], \"locales\": [\"en\"]}','[]','2023-01-05 09:31:20.349000','2023-01-05 09:31:20.349000',NULL,NULL),(706,'plugin::content-manager.explorer.create','api::product-information.product-information','{\"fields\": [\"route\", \"title\", \"head\", \"body\", \"company\", \"productName\", \"image\"], \"locales\": [\"en\"]}','[]','2023-01-05 09:31:20.364000','2023-01-05 09:31:20.364000',NULL,NULL),(707,'plugin::content-manager.explorer.read','api::menu-item.menu-item','{\"fields\": [\"title\", \"link\", \"customId\", \"disabled\", \"externalLink\", \"plausibleEvent.eventId\", \"plausibleEvent.properties.key\", \"plausibleEvent.properties.value\", \"icon\"], \"locales\": [\"en\"]}','[]','2023-01-05 09:31:20.381000','2023-01-05 09:31:20.381000',NULL,NULL),(708,'plugin::content-manager.explorer.read','api::product-information.product-information','{\"fields\": [\"route\", \"title\", \"head\", \"body\", \"company\", \"productName\", \"image\"], \"locales\": [\"en\"]}','[]','2023-01-05 09:31:20.413000','2023-01-05 09:31:20.413000',NULL,NULL),(709,'plugin::content-manager.explorer.update','api::menu-item.menu-item','{\"fields\": [\"title\", \"link\", \"customId\", \"disabled\", \"externalLink\", \"plausibleEvent.eventId\", \"plausibleEvent.properties.key\", \"plausibleEvent.properties.value\", \"icon\"], \"locales\": [\"en\"]}','[]','2023-01-05 09:31:20.430000','2023-01-05 09:31:20.430000',NULL,NULL),(710,'plugin::content-manager.explorer.update','api::product-information.product-information','{\"fields\": [\"route\", \"title\", \"head\", \"body\", \"company\", \"productName\", \"image\"], \"locales\": [\"en\"]}','[]','2023-01-05 09:31:20.445000','2023-01-05 09:31:20.445000',NULL,NULL),(711,'plugin::upload.configure-view',NULL,'{}','[]','2023-01-05 09:31:20.463000','2023-01-05 09:31:20.463000',NULL,NULL),(712,'plugin::users-permissions.roles.create',NULL,'{}','[]','2023-01-05 09:31:20.475000','2023-01-05 09:31:20.475000',NULL,NULL),(713,'plugin::users-permissions.roles.read',NULL,'{}','[]','2023-01-05 09:31:20.519000','2023-01-05 09:31:20.519000',NULL,NULL),(714,'plugin::users-permissions.roles.update',NULL,'{}','[]','2023-01-05 09:31:20.534000','2023-01-05 09:31:20.534000',NULL,NULL),(715,'plugin::users-permissions.roles.delete',NULL,'{}','[]','2023-01-05 09:31:20.546000','2023-01-05 09:31:20.546000',NULL,NULL),(716,'plugin::users-permissions.providers.read',NULL,'{}','[]','2023-01-05 09:31:20.562000','2023-01-05 09:31:20.562000',NULL,NULL),(717,'plugin::users-permissions.providers.update',NULL,'{}','[]','2023-01-05 09:31:20.576000','2023-01-05 09:31:20.576000',NULL,NULL),(718,'plugin::users-permissions.email-templates.read',NULL,'{}','[]','2023-01-05 09:31:20.596000','2023-01-05 09:31:20.596000',NULL,NULL),(719,'plugin::users-permissions.email-templates.update',NULL,'{}','[]','2023-01-05 09:31:20.619000','2023-01-05 09:31:20.619000',NULL,NULL),(720,'plugin::users-permissions.advanced-settings.read',NULL,'{}','[]','2023-01-05 09:31:20.641000','2023-01-05 09:31:20.641000',NULL,NULL),(721,'plugin::users-permissions.advanced-settings.update',NULL,'{}','[]','2023-01-05 09:31:20.658000','2023-01-05 09:31:20.658000',NULL,NULL),(722,'admin::api-tokens.access',NULL,'{}','[]','2023-01-05 09:31:20.672000','2023-01-05 09:31:20.672000',NULL,NULL),(723,'admin::api-tokens.create',NULL,'{}','[]','2023-01-05 09:31:20.689000','2023-01-05 09:31:20.689000',NULL,NULL),(724,'admin::api-tokens.read',NULL,'{}','[]','2023-01-05 09:31:20.706000','2023-01-05 09:31:20.706000',NULL,NULL),(725,'admin::api-tokens.update',NULL,'{}','[]','2023-01-05 09:31:20.723000','2023-01-05 09:31:20.723000',NULL,NULL),(726,'admin::api-tokens.regenerate',NULL,'{}','[]','2023-01-05 09:31:20.736000','2023-01-05 09:31:20.736000',NULL,NULL),(727,'admin::api-tokens.delete',NULL,'{}','[]','2023-01-05 09:31:20.762000','2023-01-05 09:31:20.762000',NULL,NULL),(728,'admin::project-settings.update',NULL,'{}','[]','2023-01-05 09:31:20.777000','2023-01-05 09:31:20.777000',NULL,NULL),(729,'admin::project-settings.read',NULL,'{}','[]','2023-01-05 09:31:20.795000','2023-01-05 09:31:20.795000',NULL,NULL),(730,'plugin::content-manager.explorer.create','api::cat.cat','{\"fields\": [\"introduction\", \"aboutPage\", \"aboutPageLimited\"], \"locales\": [\"en\"]}','[]','2023-01-26 12:27:29.038000','2023-01-26 12:27:29.038000',NULL,NULL),(732,'plugin::content-manager.explorer.create','api::trados-plugin.trados-plugin','{\"fields\": [\"aboutPage\", \"aboutPageLimited\"], \"locales\": [\"en\"]}','[]','2023-01-26 12:27:29.077000','2023-01-26 12:27:29.077000',NULL,NULL),(733,'plugin::content-manager.explorer.read','api::cat.cat','{\"fields\": [\"introduction\", \"aboutPage\", \"aboutPageLimited\"], \"locales\": [\"en\"]}','[]','2023-01-26 12:27:29.090000','2023-01-26 12:27:29.090000',NULL,NULL),(735,'plugin::content-manager.explorer.read','api::trados-plugin.trados-plugin','{\"fields\": [\"aboutPage\", \"aboutPageLimited\"], \"locales\": [\"en\"]}','[]','2023-01-26 12:27:29.118000','2023-01-26 12:27:29.118000',NULL,NULL),(736,'plugin::content-manager.explorer.update','api::cat.cat','{\"fields\": [\"introduction\", \"aboutPage\", \"aboutPageLimited\"], \"locales\": [\"en\"]}','[]','2023-01-26 12:27:29.153000','2023-01-26 12:27:29.153000',NULL,NULL),(738,'plugin::content-manager.explorer.update','api::trados-plugin.trados-plugin','{\"fields\": [\"aboutPage\", \"aboutPageLimited\"], \"locales\": [\"en\"]}','[]','2023-01-26 12:27:29.186000','2023-01-26 12:27:29.186000',NULL,NULL),(739,'plugin::content-manager.explorer.create','api::mt-website-translator.mt-website-translator','{\"fields\": [\"aboutPage\", \"aboutPageLimited\"], \"locales\": [\"en\"]}','[]','2023-01-26 14:04:54.058000','2023-01-26 14:04:54.058000',NULL,NULL),(740,'plugin::content-manager.explorer.read','api::mt-website-translator.mt-website-translator','{\"fields\": [\"aboutPage\", \"aboutPageLimited\"], \"locales\": [\"en\"]}','[]','2023-01-26 14:04:54.078000','2023-01-26 14:04:54.078000',NULL,NULL),(741,'plugin::content-manager.explorer.update','api::mt-website-translator.mt-website-translator','{\"fields\": [\"aboutPage\", \"aboutPageLimited\"], \"locales\": [\"en\"]}','[]','2023-01-26 14:04:54.093000','2023-01-26 14:04:54.093000',NULL,NULL);
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_permissions_role_links`
--

DROP TABLE IF EXISTS `admin_permissions_role_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_permissions_role_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  `permission_order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_role_links_unique` (`permission_id`,`role_id`),
  KEY `admin_permissions_role_links_fk` (`permission_id`),
  KEY `admin_permissions_role_links_inv_fk` (`role_id`),
  KEY `admin_permissions_role_links_order_inv_fk` (`permission_order`),
  CONSTRAINT `admin_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `admin_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=614 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permissions_role_links`
--

LOCK TABLES `admin_permissions_role_links` WRITE;
/*!40000 ALTER TABLE `admin_permissions_role_links` DISABLE KEYS */;
INSERT INTO `admin_permissions_role_links` VALUES (401,2,2,NULL),(404,5,2,NULL),(405,6,2,NULL),(406,7,2,NULL),(408,9,2,NULL),(412,13,2,NULL),(413,14,2,NULL),(414,15,2,NULL),(417,18,2,NULL),(420,21,2,NULL),(421,22,2,NULL),(422,23,2,NULL),(427,30,2,NULL),(430,34,2,NULL),(431,35,2,NULL),(432,36,2,NULL),(433,37,2,NULL),(434,38,2,NULL),(436,40,3,NULL),(439,43,3,NULL),(440,44,3,NULL),(441,45,3,NULL),(442,46,3,NULL),(447,51,3,NULL),(448,52,3,NULL),(450,54,3,NULL),(454,58,3,NULL),(455,59,3,NULL),(456,60,3,NULL),(457,61,3,NULL),(462,68,3,NULL),(464,71,3,NULL),(465,72,3,NULL),(466,73,3,NULL),(467,74,3,NULL),(468,75,3,NULL),(469,76,1,NULL),(473,80,1,NULL),(474,81,1,NULL),(475,82,1,NULL),(476,83,1,NULL),(480,87,1,NULL),(482,89,1,NULL),(483,90,1,NULL),(484,91,1,NULL),(486,93,1,NULL),(488,95,1,NULL),(491,98,1,NULL),(492,99,1,NULL),(493,100,1,NULL),(495,102,1,NULL),(496,113,1,NULL),(497,114,1,NULL),(498,115,1,NULL),(499,116,1,NULL),(500,117,1,NULL),(501,118,1,NULL),(502,119,1,NULL),(503,120,1,NULL),(506,123,1,NULL),(507,124,1,NULL),(508,125,1,NULL),(509,126,1,NULL),(510,127,1,NULL),(511,128,1,NULL),(512,129,1,NULL),(523,140,1,NULL),(524,141,1,NULL),(525,142,1,NULL),(526,143,1,NULL),(527,144,1,NULL),(528,145,1,NULL),(529,146,1,NULL),(530,147,1,NULL),(531,148,1,NULL),(532,149,1,NULL),(533,150,1,NULL),(534,151,1,NULL),(535,152,1,NULL),(536,153,1,NULL),(537,154,1,NULL),(538,191,1,NULL),(539,192,1,NULL),(540,193,1,NULL),(541,208,1,NULL),(542,209,1,NULL),(543,210,1,NULL),(560,656,1,NULL),(562,658,1,NULL),(563,659,1,NULL),(564,660,1,NULL),(565,661,1,NULL),(567,663,1,NULL),(568,664,1,NULL),(569,665,1,NULL),(570,666,1,NULL),(572,668,1,NULL),(573,669,1,NULL),(574,670,1,NULL),(576,NULL,1,NULL),(577,705,1,1),(578,706,1,2),(579,707,1,3),(580,708,1,4),(581,709,1,5),(582,710,1,6),(583,711,1,7),(584,712,1,8),(585,713,1,9),(586,714,1,10),(587,715,1,11),(588,716,1,12),(589,717,1,13),(590,718,1,14),(591,719,1,15),(592,720,1,16),(593,721,1,17),(594,722,1,18),(595,723,1,19),(596,724,1,20),(597,725,1,21),(598,726,1,22),(599,727,1,23),(600,728,1,24),(601,729,1,25),(602,730,1,26),(604,732,1,28),(605,733,1,29),(607,735,1,31),(608,736,1,32),(610,738,1,34),(611,739,1,35),(612,740,1,36),(613,741,1,37);
/*!40000 ALTER TABLE `admin_permissions_role_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  KEY `admin_roles_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'Super Admin','strapi-super-admin','Super Admins can access and manage all features and settings.','2022-06-02 13:27:12.000000','2022-06-02 13:27:12.000000',NULL,NULL),(2,'Editor','strapi-editor','Editors can manage and publish contents including those of other users.','2022-06-02 13:27:12.000000','2022-06-02 13:27:12.000000',NULL,NULL),(3,'Author','strapi-author','Authors can manage the content they have created.','2022-06-02 13:27:12.000000','2022-06-02 13:27:12.000000',NULL,NULL);
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `registration_token` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_users_created_by_id_fk` (`created_by_id`),
  KEY `admin_users_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'NLTP','Admin',NULL,'cmsuser@example.com','$2a$10$I5ZRreXi6jFXuFN9KliWG.oL7vwwCYCeoan.vrWk2.GsdF2b.DMnW',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users_roles_links`
--

DROP TABLE IF EXISTS `admin_users_roles_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_users_roles_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  `role_order` int unsigned DEFAULT NULL,
  `user_order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_roles_links_unique` (`user_id`,`role_id`),
  KEY `admin_users_roles_links_fk` (`user_id`),
  KEY `admin_users_roles_links_inv_fk` (`role_id`),
  KEY `admin_users_roles_links_order_fk` (`role_order`),
  KEY `admin_users_roles_links_order_inv_fk` (`user_order`),
  CONSTRAINT `admin_users_roles_links_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `admin_users_roles_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users_roles_links`
--

LOCK TABLES `admin_users_roles_links` WRITE;
/*!40000 ALTER TABLE `admin_users_roles_links` DISABLE KEYS */;
INSERT INTO `admin_users_roles_links` VALUES (4,1,1,NULL,NULL),(5,2,1,NULL,NULL);
/*!40000 ALTER TABLE `admin_users_roles_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cats`
--

DROP TABLE IF EXISTS `cats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cats` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `introduction` longtext,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cats_created_by_id_fk` (`created_by_id`),
  KEY `cats_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `cats_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `cats_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cats`
--

LOCK TABLES `cats` WRITE;
/*!40000 ALTER TABLE `cats` DISABLE KEYS */;
INSERT INTO `cats` VALUES (1,'','2022-06-10 12:09:45.000000','2023-02-01 15:38:59.662000',1,2,'en');
/*!40000 ALTER TABLE `cats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cats_about_page_limited_links`
--

DROP TABLE IF EXISTS `cats_about_page_limited_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cats_about_page_limited_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` int unsigned DEFAULT NULL,
  `product_information_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cats_about_page_limited_links_unique` (`cat_id`,`product_information_id`),
  KEY `cats_about_page_limited_links_fk` (`cat_id`),
  KEY `cats_about_page_limited_links_inv_fk` (`product_information_id`),
  CONSTRAINT `cats_about_page_limited_links_fk` FOREIGN KEY (`cat_id`) REFERENCES `cats` (`id`) ON DELETE CASCADE,
  CONSTRAINT `cats_about_page_limited_links_inv_fk` FOREIGN KEY (`product_information_id`) REFERENCES `product_informations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cats_about_page_limited_links`
--

LOCK TABLES `cats_about_page_limited_links` WRITE;
/*!40000 ALTER TABLE `cats_about_page_limited_links` DISABLE KEYS */;
INSERT INTO `cats_about_page_limited_links` VALUES (3,1,6);
/*!40000 ALTER TABLE `cats_about_page_limited_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cats_about_page_links`
--

DROP TABLE IF EXISTS `cats_about_page_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cats_about_page_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` int unsigned DEFAULT NULL,
  `product_information_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cats_about_page_links_unique` (`cat_id`,`product_information_id`),
  KEY `cats_about_page_links_fk` (`cat_id`),
  KEY `cats_about_page_links_inv_fk` (`product_information_id`),
  CONSTRAINT `cats_about_page_links_fk` FOREIGN KEY (`cat_id`) REFERENCES `cats` (`id`) ON DELETE CASCADE,
  CONSTRAINT `cats_about_page_links_inv_fk` FOREIGN KEY (`product_information_id`) REFERENCES `product_informations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cats_about_page_links`
--

LOCK TABLES `cats_about_page_links` WRITE;
/*!40000 ALTER TABLE `cats_about_page_links` DISABLE KEYS */;
INSERT INTO `cats_about_page_links` VALUES (2,1,2);
/*!40000 ALTER TABLE `cats_about_page_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cats_localizations_links`
--

DROP TABLE IF EXISTS `cats_localizations_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cats_localizations_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` int unsigned DEFAULT NULL,
  `inv_cat_id` int unsigned DEFAULT NULL,
  `cat_order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cats_localizations_links_unique` (`cat_id`,`inv_cat_id`),
  KEY `cats_localizations_links_fk` (`cat_id`),
  KEY `cats_localizations_links_inv_fk` (`inv_cat_id`),
  KEY `cats_localizations_links_order_fk` (`cat_order`),
  CONSTRAINT `cats_localizations_links_fk` FOREIGN KEY (`cat_id`) REFERENCES `cats` (`id`) ON DELETE CASCADE,
  CONSTRAINT `cats_localizations_links_inv_fk` FOREIGN KEY (`inv_cat_id`) REFERENCES `cats` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cats_localizations_links`
--

LOCK TABLES `cats_localizations_links` WRITE;
/*!40000 ALTER TABLE `cats_localizations_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `cats_localizations_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_basic_types_dynamic_headings`
--

DROP TABLE IF EXISTS `components_basic_types_dynamic_headings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_basic_types_dynamic_headings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `heading_size` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_basic_types_dynamic_headings`
--

LOCK TABLES `components_basic_types_dynamic_headings` WRITE;
/*!40000 ALTER TABLE `components_basic_types_dynamic_headings` DISABLE KEYS */;
INSERT INTO `components_basic_types_dynamic_headings` VALUES (1,'h2','Sample heading example of additional block'),(2,'h2','Sample heading example of additional block'),(4,'h2',' All the key language tools in one platform '),(5,'h2','Powerful features for document translation'),(6,'h2','Fluent and secure translations'),(7,'h2','Powerful features for document translation');
/*!40000 ALTER TABLE `components_basic_types_dynamic_headings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_basic_types_dynamic_headings_components`
--

DROP TABLE IF EXISTS `components_basic_types_dynamic_headings_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_basic_types_dynamic_headings_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `components_basic_types_dynamic_headings_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `components_basic_types_dynamic_headings_field_index` (`field`),
  KEY `components_basic_types_dynamic_headings_component_type_index` (`component_type`),
  KEY `components_basic_types_dynamic_headings_entity_fk` (`entity_id`),
  CONSTRAINT `components_basic_types_dynamic_headings_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_basic_types_dynamic_headings` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_basic_types_dynamic_headings_components`
--

LOCK TABLES `components_basic_types_dynamic_headings_components` WRITE;
/*!40000 ALTER TABLE `components_basic_types_dynamic_headings_components` DISABLE KEYS */;
INSERT INTO `components_basic_types_dynamic_headings_components` VALUES (1,6,1,'basic-types.styles','styles',1);
/*!40000 ALTER TABLE `components_basic_types_dynamic_headings_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_basic_types_key_values`
--

DROP TABLE IF EXISTS `components_basic_types_key_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_basic_types_key_values` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_basic_types_key_values`
--

LOCK TABLES `components_basic_types_key_values` WRITE;
/*!40000 ALTER TABLE `components_basic_types_key_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_basic_types_key_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_basic_types_styles`
--

DROP TABLE IF EXISTS `components_basic_types_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_basic_types_styles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `padding` varchar(255) DEFAULT NULL,
  `margin` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_basic_types_styles`
--

LOCK TABLES `components_basic_types_styles` WRITE;
/*!40000 ALTER TABLE `components_basic_types_styles` DISABLE KEYS */;
INSERT INTO `components_basic_types_styles` VALUES (1,NULL,'25px 0px 25px 0px');
/*!40000 ALTER TABLE `components_basic_types_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_feature_list_feature_list_items`
--

DROP TABLE IF EXISTS `components_feature_list_feature_list_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_feature_list_feature_list_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_feature_list_feature_list_items`
--

LOCK TABLES `components_feature_list_feature_list_items` WRITE;
/*!40000 ALTER TABLE `components_feature_list_feature_list_items` DISABLE KEYS */;
INSERT INTO `components_feature_list_feature_list_items` VALUES (1,'Translation memory','No need to translate the same thing. Save your translations in a personal translation memory. Next time it will offer the same translation. '),(2,'Terminology','Search for terms in the largest terminology database in Europe with over 16 million terms in 45 languages. '),(9,'Real-Time Translations','Translate documents and texts! Complete security and confidentiality. You have access to European Commission e-Translation service at your fingertips.  '),(11,'Trados Studio Plugin','Connect NLTP machine translation to Trados Studio to translate in your favorite CAT tool. Compatible with Trados Studio 2021 and 2022. '),(12,'Website translation','Turn your website multilingual and let your audience read content in their native language! Easy setup and ability to review and edit translations.'),(13,'Machine translation','NLTP machine translation is integrated in the CAT tool and offers you translation suggestions so you don\'t have to manually translate everything. '),(16,'Real-Time Translations','Machine translation gives you instant and fluent translations whenever and wherever you need them.'),(17,'Translate documents','Translate any volume of documents in various formats - Word, Excel, PowerPoint and others.'),(18,'Data security','Your data are neither stored, nor analysed, and is immediately deleted when you receive your translation.'),(21,'Online CAT tool','CAT tool will allow you to edit, manage and store your translations. Edit documents in simple user interface using translation memory and machine translation.'),(22,'Translation memory','No need to translate the same thing. Save your translations in a personal translation memory. Next time it will offer the same translation. '),(23,'Machine translation','NLTP machine translation is integrated in the CAT tool and offers you translation suggestions so you don\'t have to manually translate everything. '),(24,'Terminology','Search for terms in the largest terminology database in Europe with over 16 million terms in 45 languages. ');
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
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `components_feature_list_feature_list_items_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `components_feature_list_feature_list_items_field_index` (`field`),
  KEY `components_feature_list_feature_list_items_component_type_index` (`component_type`),
  KEY `components_feature_list_feature_list_items_entity_fk` (`entity_id`),
  CONSTRAINT `components_feature_list_feature_list_items_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_feature_list_feature_list_items` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_feature_list_feature_list_items_components`
--

LOCK TABLES `components_feature_list_feature_list_items_components` WRITE;
/*!40000 ALTER TABLE `components_feature_list_feature_list_items_components` DISABLE KEYS */;
INSERT INTO `components_feature_list_feature_list_items_components` VALUES (1,11,1,'basic-types.link','link',1),(2,12,2,'basic-types.link','link',1),(4,9,4,'basic-types.link','link',1),(10,21,11,'basic-types.link','link',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_feature_list_feature_lists`
--

LOCK TABLES `components_feature_list_feature_lists` WRITE;
/*!40000 ALTER TABLE `components_feature_list_feature_lists` DISABLE KEYS */;
INSERT INTO `components_feature_list_feature_lists` VALUES (1),(3),(5),(7);
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
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `components_feature_list_feature_lists_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `components_feature_list_feature_lists_field_index` (`field`),
  KEY `components_feature_list_feature_lists_component_type_index` (`component_type`),
  KEY `components_feature_list_feature_lists_entity_fk` (`entity_id`),
  CONSTRAINT `components_feature_list_feature_lists_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_feature_list_feature_lists` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_feature_list_feature_lists_components`
--

LOCK TABLES `components_feature_list_feature_lists_components` WRITE;
/*!40000 ALTER TABLE `components_feature_list_feature_lists_components` DISABLE KEYS */;
INSERT INTO `components_feature_list_feature_lists_components` VALUES (1,1,1,'feature-list.feature-list-item','items',0),(2,1,2,'feature-list.feature-list-item','items',0),(9,3,9,'feature-list.feature-list-item','items',1),(11,3,11,'feature-list.feature-list-item','items',2),(12,3,12,'feature-list.feature-list-item','items',3),(13,1,13,'feature-list.feature-list-item','items',0),(16,5,16,'feature-list.feature-list-item','items',0),(17,5,17,'feature-list.feature-list-item','items',0),(18,5,18,'feature-list.feature-list-item','items',0),(20,3,4,'basic-types.dynamic-heading','title',5),(21,1,5,'basic-types.dynamic-heading','title',0),(22,5,6,'basic-types.dynamic-heading','title',0),(49,3,21,'feature-list.feature-list-item','items',4),(77,7,22,'feature-list.feature-list-item','items',0),(78,7,24,'feature-list.feature-list-item','items',0),(79,7,23,'feature-list.feature-list-item','items',0),(80,7,7,'basic-types.dynamic-heading','title',0);
/*!40000 ALTER TABLE `components_feature_list_feature_lists_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_plausible_plausible_events`
--

DROP TABLE IF EXISTS `components_plausible_plausible_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_plausible_plausible_events` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `event_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `components_plausible_plausible_events_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `components_plausible_plausible_events_field_index` (`field`),
  KEY `components_plausible_plausible_events_component_type_index` (`component_type`),
  KEY `components_plausible_plausible_events_entity_fk` (`entity_id`),
  CONSTRAINT `components_plausible_plausible_events_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_plausible_plausible_events` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_plausible_plausible_events_components`
--

LOCK TABLES `components_plausible_plausible_events_components` WRITE;
/*!40000 ALTER TABLE `components_plausible_plausible_events_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_plausible_plausible_events_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_sections_htmls`
--

DROP TABLE IF EXISTS `components_sections_htmls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_sections_htmls` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `content` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_sections_htmls`
--

LOCK TABLES `components_sections_htmls` WRITE;
/*!40000 ALTER TABLE `components_sections_htmls` DISABLE KEYS */;
INSERT INTO `components_sections_htmls` VALUES (2,'<p>Increase your translation productivity and efficiency with computer assisted translation tool (CAT). Translate documents in simple user interface using translation memories and machine translation. CAT tool will allow you to edit, manage and store your translations. &nbsp;</p>'),(5,'<p>Make your website and services available to anyone! The website translation widget turns your website multilingual in a few easy steps. Then your site visitors can read content in their native language! Simple to integrate and easy to use.&nbsp;</p>'),(9,'<p>Break language barriers and improve your efficiency. Translate documents, make your website multi-lingual and do much more. Use the latest AI-powered language technology tools for free in a secure environment!&nbsp;</p>'),(10,'<p>Add NLTP machine translation to Trados Studio and translate in one of the most popular CAT tools. Working in CAT tool will help you translate faster and ensure consistent quality. NLTP plugin is compatible with Trados Studio &nbsp;2021 and 2022.</p>'),(15,'<p>CAT Tool is available to anyone with an active account</p>'),(16,'<p>Need to get in touch with us? Our team is here to help! Send us an email and we will get back to you! If you are looking for product help or instructions, please visit our help center.&nbsp;</p>'),(17,'<p>s simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to ma</p>'),(18,'<p>Lorem ipsum is simply dummy text of the printing and typesetting industry. Lorem ipsum has been the industry\'s standard dummy text of the printing and typesetting industry. Lorem ipsum has been the industry\'s standard dummy text of the printing and typesetting industry.</p>'),(19,'<h2 style=\"text-align:center;\">National Language Technology Platform</h2><p style=\"text-align:center;\">Use the best language technology tools. <a href=\"/about\">See all the tools</a></p>'),(20,'<p>Increase your translation productivity and efficiency with computer assisted translation tool (CAT). Translate documents in simple user interface using translation memories and machine translation. CAT tool will allow you to edit, manage and store your translations. &nbsp;</p>'),(21,'<p>CAT Tool is available to anyone with an active account</p>'),(22,'<p>Add NLTP machine translation to Trados Studio and translate in one of the most popular CAT tools. Working in CAT tool will help you translate faster and ensure consistent quality. NLTP is compatible with Trados Studio &nbsp;2021 and 2022.</p>'),(23,'<p>Make your website and services available to anyone! The website translation widget turns your website multilingual in a few easy steps. Then your site visitors can read content in their native language! Simple to integrate and easy to use.&nbsp;</p>');
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
  `type` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_sections_link_buttons`
--

LOCK TABLES `components_sections_link_buttons` WRITE;
/*!40000 ALTER TABLE `components_sections_link_buttons` DISABLE KEYS */;
INSERT INTO `components_sections_link_buttons` VALUES (3,'raised','accent'),(4,'stroked','primary'),(5,'raised','accent'),(9,'raised','accent'),(10,'stroked','primary'),(13,'raised','accent'),(14,'stroked','primary'),(16,'raised','accent'),(17,'stroked','primary'),(18,'raised','accent'),(19,'raised','accent'),(20,'raised','accent');
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
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `components_sections_link_buttons_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `components_sections_link_buttons_field_index` (`field`),
  KEY `components_sections_link_buttons_component_type_index` (`component_type`),
  KEY `components_sections_link_buttons_entity_fk` (`entity_id`),
  CONSTRAINT `components_sections_link_buttons_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_sections_link_buttons` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_sections_link_buttons_components`
--

LOCK TABLES `components_sections_link_buttons_components` WRITE;
/*!40000 ALTER TABLE `components_sections_link_buttons_components` DISABLE KEYS */;
INSERT INTO `components_sections_link_buttons_components` VALUES (1,16,14,'basic-types.link','link',NULL),(3,17,15,'basic-types.link','link',NULL),(6,19,16,'basic-types.link','link',NULL),(7,18,17,'basic-types.link','link',NULL),(8,9,18,'basic-types.link','link',NULL),(9,10,19,'basic-types.link','link',NULL),(12,13,22,'basic-types.link','link',NULL),(13,14,23,'basic-types.link','link',NULL),(20,4,26,'basic-types.link','link',NULL),(21,3,27,'basic-types.link','link',NULL),(22,5,28,'basic-types.link','link',NULL),(23,20,29,'basic-types.link','link',NULL);
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
  `title` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `aria_label` varchar(255) DEFAULT NULL,
  `icon_position` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `external_link` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_sections_links`
--

LOCK TABLES `components_sections_links` WRITE;
/*!40000 ALTER TABLE `components_sections_links` DISABLE KEYS */;
INSERT INTO `components_sections_links` VALUES (1,'Try it ','/Trados-Studio-Plugin','Try it ',NULL,NULL,NULL),(2,'Try it ','/products/website-translator',NULL,NULL,NULL,NULL),(4,'Try it','/',NULL,NULL,NULL,NULL),(11,'Try it','/products/cat',NULL,NULL,NULL,NULL),(12,'Download plugin for Trados Studio 2021','https://nltp-cdn.example.com/MT%20Trados%20plugin%202021.sdlplugin',NULL,NULL,'file_download',NULL),(13,'Download plugin for Trados Studio 2022','https://nltp-cdn.example.com/MT%20Trados%20plugin%202022.sdlplugin',NULL,NULL,'file_download',NULL),(14,'Sign in to get started','products/cat?redirectToLogin=true',NULL,NULL,NULL,NULL),(15,'How it works','/docs/cat-tool/how-does-it-work',NULL,NULL,NULL,1),(16,'Contact us','/contact-us',NULL,NULL,NULL,NULL),(17,'Contact us','/contact-us',NULL,NULL,NULL,NULL),(18,'Get started','/',NULL,NULL,NULL,NULL),(19,'Contact us','/',NULL,NULL,NULL,NULL),(20,'Sign in to get started','info@example.com',NULL,NULL,NULL,NULL),(22,'Contact us','mailto:info@example.com',NULL,NULL,NULL,1),(23,'Go to Help center','/docs',NULL,NULL,NULL,1),(25,'How it works','/docs/cat-tool/how-does-it-work',NULL,NULL,NULL,1),(26,'How it works','/docs/cat-tool/how-does-it-work',NULL,NULL,NULL,1),(27,'Upload new document','products/cat',NULL,NULL,NULL,NULL),(28,'How it works','/docs/website-translator/how-does-it-work',NULL,NULL,NULL,1),(29,'How it works','/docs/trados-studio-plugin/how-does-it-work',NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `components_sections_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_universal_page`
--

DROP TABLE IF EXISTS `components_universal_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_universal_page` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `image_float` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_universal_page`
--

LOCK TABLES `components_universal_page` WRITE;
/*!40000 ALTER TABLE `components_universal_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_universal_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_universal_page_components`
--

DROP TABLE IF EXISTS `components_universal_page_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_universal_page_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `components_universal_page_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `components_universal_page_field_index` (`field`),
  KEY `components_universal_page_component_type_index` (`component_type`),
  KEY `components_universal_page_entity_fk` (`entity_id`),
  CONSTRAINT `components_universal_page_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_universal_page` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_universal_page_components`
--

LOCK TABLES `components_universal_page_components` WRITE;
/*!40000 ALTER TABLE `components_universal_page_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_universal_page_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cookie_consents`
--

DROP TABLE IF EXISTS `cookie_consents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cookie_consents` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `accept_button` varchar(255) DEFAULT NULL,
  `decline_button` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cookie_consents_created_by_id_fk` (`created_by_id`),
  KEY `cookie_consents_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `cookie_consents_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `cookie_consents_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cookie_consents`
--

LOCK TABLES `cookie_consents` WRITE;
/*!40000 ALTER TABLE `cookie_consents` DISABLE KEYS */;
INSERT INTO `cookie_consents` VALUES (1,'Cookie consent','We value your privacy. We use cookies to enhance your user experience on this website. Learn more in our <a href=\"/page/privacy-policy\" target=\"_blank\">Privacy policy</a>.','I\'m cool with it','Reject cookies','2022-06-07 12:18:58.000000','2023-01-09 09:18:08.079000',1,2,'en');
/*!40000 ALTER TABLE `cookie_consents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cookie_consents_localizations_links`
--

DROP TABLE IF EXISTS `cookie_consents_localizations_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cookie_consents_localizations_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `cookie_consent_id` int unsigned DEFAULT NULL,
  `inv_cookie_consent_id` int unsigned DEFAULT NULL,
  `cookie_consent_order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cookie_consents_localizations_links_unique` (`cookie_consent_id`,`inv_cookie_consent_id`),
  KEY `cookie_consents_localizations_links_fk` (`cookie_consent_id`),
  KEY `cookie_consents_localizations_links_inv_fk` (`inv_cookie_consent_id`),
  KEY `cookie_consents_localizations_links_order_fk` (`cookie_consent_order`),
  CONSTRAINT `cookie_consents_localizations_links_fk` FOREIGN KEY (`cookie_consent_id`) REFERENCES `cookie_consents` (`id`) ON DELETE CASCADE,
  CONSTRAINT `cookie_consents_localizations_links_inv_fk` FOREIGN KEY (`inv_cookie_consent_id`) REFERENCES `cookie_consents` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cookie_consents_localizations_links`
--

LOCK TABLES `cookie_consents_localizations_links` WRITE;
/*!40000 ALTER TABLE `cookie_consents_localizations_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `cookie_consents_localizations_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `alternative_text` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `formats` json DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `preview_url` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_metadata` json DEFAULT NULL,
  `folder_path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `upload_files_folder_path_index` (`folder_path`),
  KEY `upload_files_created_at_index` (`created_at`),
  KEY `upload_files_updated_at_index` (`updated_at`),
  KEY `upload_files_name_index` (`name`),
  KEY `upload_files_size_index` (`size`),
  KEY `upload_files_ext_index` (`ext`),
  KEY `files_created_by_id_fk` (`created_by_id`),
  KEY `files_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (13,'help_FILL0_wght400_GRAD0_opsz48 1.svg','','',24,25,'{}','help_FILL_0_wght400_GRAD_0_opsz48_1_16d08ac43e','.svg','image/svg+xml',2.33,'/uploads/help_FILL_0_wght400_GRAD_0_opsz48_1_16d08ac43e.svg',NULL,'local',NULL,NULL,'2022-09-12 07:11:32.000000','2022-09-29 13:52:14.000000',1,1),(19,'bilde_about.png','','',504,363,'{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_bilde_about_bc5427155f.png\", \"hash\": \"small_bilde_about_bc5427155f\", \"mime\": \"image/png\", \"name\": \"small_bilde_about.png\", \"path\": null, \"size\": 103.85, \"width\": 500, \"height\": 360}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_bilde_about_bc5427155f.png\", \"hash\": \"thumbnail_bilde_about_bc5427155f\", \"mime\": \"image/png\", \"name\": \"thumbnail_bilde_about.png\", \"path\": null, \"size\": 31.07, \"width\": 217, \"height\": 156}}','bilde_about_bc5427155f','.png','image/png',60.95,'/uploads/bilde_about_bc5427155f.png',NULL,'local',NULL,NULL,'2022-09-20 10:57:56.000000','2022-09-20 12:45:48.000000',1,1),(20,'info_FILL0_wght400_GRAD0_opsz48 (1) 1.svg','','',24,25,'{}','info_FILL_0_wght400_GRAD_0_opsz48_1_1_6f72d881b9','.svg','image/svg+xml',1.65,'/uploads/info_FILL_0_wght400_GRAD_0_opsz48_1_1_6f72d881b9.svg',NULL,'local',NULL,NULL,'2022-09-20 11:09:40.000000','2022-09-30 07:43:40.000000',1,1),(25,'bilde_web_tulkosana.png','','',504,363,'{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_bilde_web_tulkosana_205f62f426.png\", \"hash\": \"small_bilde_web_tulkosana_205f62f426\", \"mime\": \"image/png\", \"name\": \"small_bilde_web_tulkosana.png\", \"path\": null, \"size\": 138.16, \"width\": 500, \"height\": 360}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_bilde_web_tulkosana_205f62f426.png\", \"hash\": \"thumbnail_bilde_web_tulkosana_205f62f426\", \"mime\": \"image/png\", \"name\": \"thumbnail_bilde_web_tulkosana.png\", \"path\": null, \"size\": 36.83, \"width\": 217, \"height\": 156}}','bilde_web_tulkosana_205f62f426','.png','image/png',109.03,'/uploads/bilde_web_tulkosana_205f62f426.png',NULL,'local',NULL,NULL,'2022-09-20 11:28:06.000000','2022-09-20 11:28:06.000000',1,1),(26,'bilde_CAT.png','','',504,363,'{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_bilde_CAT_67ca7f0254.png\", \"hash\": \"small_bilde_CAT_67ca7f0254\", \"mime\": \"image/png\", \"name\": \"small_bilde_CAT.png\", \"path\": null, \"size\": 126, \"width\": 500, \"height\": 360}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_bilde_CAT_67ca7f0254.png\", \"hash\": \"thumbnail_bilde_CAT_67ca7f0254\", \"mime\": \"image/png\", \"name\": \"thumbnail_bilde_CAT.png\", \"path\": null, \"size\": 33.03, \"width\": 217, \"height\": 156}}','bilde_CAT_67ca7f0254','.png','image/png',100.03,'/uploads/bilde_CAT_67ca7f0254.png',NULL,'local',NULL,NULL,'2022-09-20 11:43:03.000000','2022-09-20 11:43:03.000000',1,1),(27,'bilde_SDL.png','','',504,363,'{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_bilde_SDL_52aeb7e711.png\", \"hash\": \"small_bilde_SDL_52aeb7e711\", \"mime\": \"image/png\", \"name\": \"small_bilde_SDL.png\", \"path\": null, \"size\": 153.97, \"width\": 500, \"height\": 360}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_bilde_SDL_52aeb7e711.png\", \"hash\": \"thumbnail_bilde_SDL_52aeb7e711\", \"mime\": \"image/png\", \"name\": \"thumbnail_bilde_SDL.png\", \"path\": null, \"size\": 38.81, \"width\": 217, \"height\": 156}}','bilde_SDL_52aeb7e711','.png','image/png',119.91,'/uploads/bilde_SDL_52aeb7e711.png',NULL,'local',NULL,NULL,'2022-09-20 12:13:05.000000','2022-09-20 12:13:05.000000',1,1),(30,'bilde_about_2.png','','',504,363,'{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_bilde_about_2_af181e52ea.png\", \"hash\": \"small_bilde_about_2_af181e52ea\", \"mime\": \"image/png\", \"name\": \"small_bilde_about_2.png\", \"path\": null, \"size\": 103.06, \"width\": 500, \"height\": 360}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_bilde_about_2_af181e52ea.png\", \"hash\": \"thumbnail_bilde_about_2_af181e52ea\", \"mime\": \"image/png\", \"name\": \"thumbnail_bilde_about_2.png\", \"path\": null, \"size\": 30.92, \"width\": 217, \"height\": 156}}','bilde_about_2_af181e52ea','.png','image/png',60.82,'/uploads/bilde_about_2_af181e52ea.png',NULL,'local',NULL,NULL,'2022-09-23 06:53:55.000000','2022-09-23 06:53:55.000000',1,1),(31,'mail_FILL0_wght400_GRAD0_opsz48 1.svg','','',24,24,'{}','mail_FILL_0_wght400_GRAD_0_opsz48_1_53865f1a15','.svg','image/svg+xml',0.26,'/uploads/mail_FILL_0_wght400_GRAD_0_opsz48_1_53865f1a15.svg',NULL,'local',NULL,NULL,'2022-09-28 05:57:18.000000','2022-09-30 07:53:53.000000',1,1),(32,'About NLTP.png','','',756,545,'{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_About_NLTP_31b6dce9ed.png\", \"hash\": \"small_About_NLTP_31b6dce9ed\", \"mime\": \"image/png\", \"name\": \"small_About NLTP.png\", \"path\": null, \"size\": 104.55, \"width\": 500, \"height\": 360}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_About_NLTP_31b6dce9ed.png\", \"hash\": \"medium_About_NLTP_31b6dce9ed\", \"mime\": \"image/png\", \"name\": \"medium_About NLTP.png\", \"path\": null, \"size\": 201.03, \"width\": 750, \"height\": 541}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_About_NLTP_31b6dce9ed.png\", \"hash\": \"thumbnail_About_NLTP_31b6dce9ed\", \"mime\": \"image/png\", \"name\": \"thumbnail_About NLTP.png\", \"path\": null, \"size\": 29.93, \"width\": 216, \"height\": 156}}','About_NLTP_31b6dce9ed','.png','image/png',104.45,'/uploads/About_NLTP_31b6dce9ed.png',NULL,'local',NULL,NULL,'2022-09-28 11:22:05.000000','2023-02-08 08:22:10.743000',1,2),(33,'About NLTP.png','','',504,363,'{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_About_NLTP_ad3f384084.png\", \"hash\": \"small_About_NLTP_ad3f384084\", \"mime\": \"image/png\", \"name\": \"small_About NLTP.png\", \"path\": null, \"size\": 102.42, \"width\": 500, \"height\": 360}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_About_NLTP_ad3f384084.png\", \"hash\": \"thumbnail_About_NLTP_ad3f384084\", \"mime\": \"image/png\", \"name\": \"thumbnail_About NLTP.png\", \"path\": null, \"size\": 29.67, \"width\": 217, \"height\": 156}}','About_NLTP_ad3f384084','.png','image/png',55.71,'/uploads/About_NLTP_ad3f384084.png',NULL,'local',NULL,NULL,'2022-09-28 11:22:55.000000','2023-02-08 08:22:15.416000',1,2),(34,'MT.svg','','',24,24,NULL,'MT_5bc0541263','.svg','image/svg+xml',4.84,'/uploads/MT_5bc0541263.svg',NULL,'local',NULL,NULL,'2022-09-30 11:15:40.000000','2022-09-30 11:15:40.000000',1,1),(35,'CAT.svg','','',24,24,NULL,'CAT_9265d21fa4','.svg','image/svg+xml',2.49,'/uploads/CAT_9265d21fa4.svg',NULL,'local',NULL,NULL,'2022-09-30 11:15:55.000000','2022-09-30 11:15:55.000000',1,1),(36,'plugin.svg','','',24,24,NULL,'plugin_c36bf5b69f','.svg','image/svg+xml',2.05,'/uploads/plugin_c36bf5b69f.svg',NULL,'local',NULL,NULL,'2022-09-30 11:16:11.000000','2022-09-30 11:16:11.000000',1,1),(37,'Website.svg','','',24,24,NULL,'Website_136ec0caa8','.svg','image/svg+xml',6.53,'/uploads/Website_136ec0caa8.svg',NULL,'local',NULL,NULL,'2022-09-30 11:16:17.000000','2022-09-30 11:16:17.000000',1,1),(38,'CAT.svg','','',24,24,NULL,'CAT_d8fb5d3e5b','.svg','image/svg+xml',2.49,'/uploads/CAT_d8fb5d3e5b.svg',NULL,'local',NULL,NULL,'2022-09-30 11:32:35.000000','2022-09-30 11:32:35.000000',1,1),(39,'SEO.svg','','',24,24,NULL,'SEO_03e76c230c','.svg','image/svg+xml',3.38,'/uploads/SEO_03e76c230c.svg',NULL,'local',NULL,NULL,'2022-09-30 11:32:45.000000','2022-09-30 11:32:45.000000',1,1),(40,'google.svg','','',24,24,NULL,'google_42c6e11725','.svg','image/svg+xml',1.42,'/uploads/google_42c6e11725.svg',NULL,'local',NULL,NULL,'2022-09-30 11:32:56.000000','2022-09-30 11:32:56.000000',1,1),(41,'TM.svg','','',24,24,NULL,'TM_d53fa87bb5','.svg','image/svg+xml',0.45,'/uploads/TM_d53fa87bb5.svg',NULL,'local',NULL,NULL,'2022-09-30 11:34:31.000000','2023-02-08 06:12:45.447000',1,2),(42,'terminology.svg','','',24,24,NULL,'terminology_2af9a28cac','.svg','image/svg+xml',2.57,'/uploads/terminology_2af9a28cac.svg',NULL,'local',NULL,NULL,'2022-09-30 11:35:02.000000','2022-09-30 11:35:02.000000',1,1),(43,'MT.svg','','',24,24,NULL,'MT_e94b4ebcc8','.svg','image/svg+xml',4.84,'/uploads/MT_e94b4ebcc8.svg',NULL,'local',NULL,NULL,'2022-09-30 11:35:21.000000','2022-09-30 11:35:21.000000',1,1),(44,'Features=Default.svg','','',24,24,NULL,'Features_Default_2a42ff6eb2','.svg','image/svg+xml',2.16,'/uploads/Features_Default_2a42ff6eb2.svg',NULL,'local',NULL,NULL,'2022-10-03 06:17:39.000000','2022-10-03 06:17:39.000000',1,1),(45,'Features=security.svg','','',24,24,NULL,'Features_security_eec194fb13','.svg','image/svg+xml',1.95,'/uploads/Features_security_eec194fb13.svg',NULL,'local',NULL,NULL,'2022-10-03 06:18:46.000000','2022-10-03 06:18:46.000000',1,1),(47,'bilde_Trados.png','','',504,363,'{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_bilde_Trados_691a4dbe77.png\", \"hash\": \"small_bilde_Trados_691a4dbe77\", \"mime\": \"image/png\", \"name\": \"small_bilde_Trados.png\", \"path\": null, \"size\": 155.3, \"width\": 500, \"height\": 360}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_bilde_Trados_691a4dbe77.png\", \"hash\": \"thumbnail_bilde_Trados_691a4dbe77\", \"mime\": \"image/png\", \"name\": \"thumbnail_bilde_Trados.png\", \"path\": null, \"size\": 39.16, \"width\": 217, \"height\": 156}}','bilde_Trados_691a4dbe77','.png','image/png',121.13,'/uploads/bilde_Trados_691a4dbe77.png',NULL,'local',NULL,NULL,'2022-10-10 07:28:23.000000','2022-10-10 07:28:23.000000',1,1),(48,'machine translations.svg','','',24,24,NULL,'machine_translations_766392c581','.svg','image/svg+xml',0.68,'/uploads/machine_translations_766392c581.svg',NULL,'local',NULL,NULL,'2022-11-01 10:23:27.000000','2022-11-01 10:23:27.000000',2,2),(49,'cat.svg','','',24,24,NULL,'cat_ce146a1cde','.svg','image/svg+xml',0.51,'/uploads/cat_ce146a1cde.svg',NULL,'local',NULL,NULL,'2022-11-01 10:23:55.000000','2023-01-25 09:13:33.798000',2,2),(50,'trados.svg','','',24,24,NULL,'trados_1766acadd9','.svg','image/svg+xml',1.79,'/uploads/trados_1766acadd9.svg',NULL,'local',NULL,NULL,'2022-11-01 10:24:06.000000','2022-11-01 10:24:06.000000',2,2),(51,'website translator.svg','','',24,24,NULL,'website_translator_13dad49371','.svg','image/svg+xml',2.95,'/uploads/website_translator_13dad49371.svg',NULL,'local',NULL,NULL,'2022-11-01 10:24:19.000000','2022-11-01 10:24:19.000000',2,2);
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files_folder_links`
--

DROP TABLE IF EXISTS `files_folder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files_folder_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `file_id` int unsigned DEFAULT NULL,
  `folder_id` int unsigned DEFAULT NULL,
  `file_order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `files_folder_links_unique` (`file_id`,`folder_id`),
  KEY `files_folder_links_fk` (`file_id`),
  KEY `files_folder_links_inv_fk` (`folder_id`),
  KEY `files_folder_links_order_inv_fk` (`file_order`),
  CONSTRAINT `files_folder_links_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  CONSTRAINT `files_folder_links_inv_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files_folder_links`
--

LOCK TABLES `files_folder_links` WRITE;
/*!40000 ALTER TABLE `files_folder_links` DISABLE KEYS */;
INSERT INTO `files_folder_links` VALUES (1,53,1,1);
/*!40000 ALTER TABLE `files_folder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files_related_morphs`
--

DROP TABLE IF EXISTS `files_related_morphs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files_related_morphs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `file_id` int unsigned DEFAULT NULL,
  `related_id` int unsigned DEFAULT NULL,
  `related_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `files_related_morphs_fk` (`file_id`),
  CONSTRAINT `files_related_morphs_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files_related_morphs`
--

LOCK TABLES `files_related_morphs` WRITE;
/*!40000 ALTER TABLE `files_related_morphs` DISABLE KEYS */;
INSERT INTO `files_related_morphs` VALUES (23,20,4,'api::menu-item.menu-item','icon',1),(24,13,3,'api::menu-item.menu-item','icon',1),(25,31,6,'api::menu-item.menu-item','icon',1),(26,38,5,'feature-list.feature-list-item','icon',1),(27,39,7,'feature-list.feature-list-item','icon',1),(28,40,8,'feature-list.feature-list-item','icon',1),(31,49,10,'feature-list.feature-list-item','icon',1),(35,33,2,'universal-page.image-title-content-links','image',1),(51,51,19,'feature-list.feature-list-item','icon',1),(52,34,20,'feature-list.feature-list-item','icon',1),(82,45,18,'feature-list.feature-list-item','icon',1),(83,48,16,'feature-list.feature-list-item','icon',1),(84,44,17,'feature-list.feature-list-item','icon',1),(156,25,8,'api::product-information.product-information','image',1),(157,47,7,'api::product-information.product-information','image',1),(163,42,24,'feature-list.feature-list-item','icon',1),(164,41,22,'feature-list.feature-list-item','icon',1),(165,48,23,'feature-list.feature-list-item','icon',1),(166,26,6,'api::product-information.product-information','image',1),(171,25,3,'api::product-information.product-information','image',1),(172,47,4,'api::product-information.product-information','image',1),(197,41,1,'feature-list.feature-list-item','icon',1),(198,42,2,'feature-list.feature-list-item','icon',1),(199,48,13,'feature-list.feature-list-item','icon',1),(200,26,2,'api::product-information.product-information','image',1),(228,33,1,'universal-page.image-title-content-links','image',1),(230,48,9,'feature-list.feature-list-item','icon',1),(231,49,21,'feature-list.feature-list-item','icon',1),(232,51,12,'feature-list.feature-list-item','icon',1),(233,50,11,'feature-list.feature-list-item','icon',1),(234,33,1,'api::product-information.product-information','image',1);
/*!40000 ALTER TABLE `files_related_morphs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i18n_locale`
--

DROP TABLE IF EXISTS `i18n_locale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `i18n_locale` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i18n_locale`
--

LOCK TABLES `i18n_locale` WRITE;
/*!40000 ALTER TABLE `i18n_locale` DISABLE KEYS */;
INSERT INTO `i18n_locale` VALUES (1,'English (en)','en','2022-06-02 13:27:08.000000','2022-06-02 13:27:08.000000',NULL,NULL);
/*!40000 ALTER TABLE `i18n_locale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `custom_id` varchar(255) DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT NULL,
  `external_link` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_items_created_by_id_fk` (`created_by_id`),
  KEY `menu_items_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `menu_items_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `menu_items_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (3,'Help Center','https://nltp.example.com/docs',NULL,0,1,'2022-09-12 07:11:58.000000','2022-09-29 14:44:24.000000',1,1,'en'),(4,'About platform','about',NULL,0,NULL,'2022-09-20 11:09:53.000000','2022-09-28 07:12:46.000000',1,1,'en'),(6,'Contact Us','contact-us',NULL,0,0,'2022-09-28 05:57:21.000000','2022-10-14 10:19:28.000000',1,1,'en');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items_components`
--

DROP TABLE IF EXISTS `menu_items_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_items_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menu_items_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `menu_items_field_index` (`field`),
  KEY `menu_items_component_type_index` (`component_type`),
  KEY `menu_items_entity_fk` (`entity_id`),
  CONSTRAINT `menu_items_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `menu_items` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items_components`
--

LOCK TABLES `menu_items_components` WRITE;
/*!40000 ALTER TABLE `menu_items_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_items_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items_localizations_links`
--

DROP TABLE IF EXISTS `menu_items_localizations_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_items_localizations_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `menu_item_id` int unsigned DEFAULT NULL,
  `inv_menu_item_id` int unsigned DEFAULT NULL,
  `menu_item_order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menu_items_localizations_links_unique` (`menu_item_id`,`inv_menu_item_id`),
  KEY `menu_items_localizations_links_fk` (`menu_item_id`),
  KEY `menu_items_localizations_links_inv_fk` (`inv_menu_item_id`),
  KEY `menu_items_localizations_links_order_fk` (`menu_item_order`),
  CONSTRAINT `menu_items_localizations_links_fk` FOREIGN KEY (`menu_item_id`) REFERENCES `menu_items` (`id`) ON DELETE CASCADE,
  CONSTRAINT `menu_items_localizations_links_inv_fk` FOREIGN KEY (`inv_menu_item_id`) REFERENCES `menu_items` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items_localizations_links`
--

LOCK TABLES `menu_items_localizations_links` WRITE;
/*!40000 ALTER TABLE `menu_items_localizations_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_items_localizations_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_mains`
--

DROP TABLE IF EXISTS `mt_mains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mt_mains` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `footer` longtext,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mt_mains_created_by_id_fk` (`created_by_id`),
  KEY `mt_mains_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `mt_mains_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `mt_mains_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_mains`
--

LOCK TABLES `mt_mains` WRITE;
/*!40000 ALTER TABLE `mt_mains` DISABLE KEYS */;
INSERT INTO `mt_mains` VALUES (1,'<div class=\"raw-html-embed\"><div class=\"container-fluid pt-sm-3 pb-sm-3 pt-2 pb-2 strapi-footer text-m\">\n   <div class=\"row\">\n     <div class=\"col d-flex d-sm-block flex-column align-items-center\">\n         <span class=\"importantText  mb-3 mb-sm-0\">© 2023 NLTP. All rights reserved. </span>\n     </div>\n     <div class=\"col-sm-auto col-12 d-flex d-sm-block flex-column align-items-center\">\n         <a class=\"base-color-link strapi-footer-link mb-3 mb-sm-0\" href=\"https://www.nltp-info.eu/\">About project and NLTP toolkit</a>\n         <a class=\"base-color-link strapi-footer-link mb-3 mb-sm-0\" href=\"/page/terms\">Terms of Service</a>\n         <a class=\"base-color-link strapi-footer-link mb-3 mb-sm-0\" href=\"/page/privacy-policy\">Privacy policy</a>\n     </div>\n   </div>\n</div>\n</div>','2022-06-27 20:24:56.000000','2023-02-08 07:48:50.626000',1,2,'en');
/*!40000 ALTER TABLE `mt_mains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_mains_localizations_links`
--

DROP TABLE IF EXISTS `mt_mains_localizations_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mt_mains_localizations_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `mt_main_id` int unsigned DEFAULT NULL,
  `inv_mt_main_id` int unsigned DEFAULT NULL,
  `mt_main_order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mt_mains_localizations_links_unique` (`mt_main_id`,`inv_mt_main_id`),
  KEY `mt_mains_localizations_links_fk` (`mt_main_id`),
  KEY `mt_mains_localizations_links_inv_fk` (`inv_mt_main_id`),
  KEY `mt_mains_localizations_links_order_fk` (`mt_main_order`),
  CONSTRAINT `mt_mains_localizations_links_fk` FOREIGN KEY (`mt_main_id`) REFERENCES `mt_mains` (`id`) ON DELETE CASCADE,
  CONSTRAINT `mt_mains_localizations_links_inv_fk` FOREIGN KEY (`inv_mt_main_id`) REFERENCES `mt_mains` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_mains_localizations_links`
--

LOCK TABLES `mt_mains_localizations_links` WRITE;
/*!40000 ALTER TABLE `mt_mains_localizations_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_mains_localizations_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_website_translators`
--

DROP TABLE IF EXISTS `mt_website_translators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mt_website_translators` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mt_website_translators_created_by_id_fk` (`created_by_id`),
  KEY `mt_website_translators_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `mt_website_translators_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `mt_website_translators_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_website_translators`
--

LOCK TABLES `mt_website_translators` WRITE;
/*!40000 ALTER TABLE `mt_website_translators` DISABLE KEYS */;
INSERT INTO `mt_website_translators` VALUES (1,'2022-09-06 18:58:03.000000','2023-02-01 16:50:53.750000',1,2,'en');
/*!40000 ALTER TABLE `mt_website_translators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_website_translators_about_page_limited_links`
--

DROP TABLE IF EXISTS `mt_website_translators_about_page_limited_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mt_website_translators_about_page_limited_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `mt_website_translator_id` int unsigned DEFAULT NULL,
  `product_information_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mt_website_translators_about_page_limited_links_unique` (`mt_website_translator_id`,`product_information_id`),
  KEY `mt_website_translators_about_page_limited_links_fk` (`mt_website_translator_id`),
  KEY `mt_website_translators_about_page_limited_links_inv_fk` (`product_information_id`),
  CONSTRAINT `mt_website_translators_about_page_limited_links_fk` FOREIGN KEY (`mt_website_translator_id`) REFERENCES `mt_website_translators` (`id`) ON DELETE CASCADE,
  CONSTRAINT `mt_website_translators_about_page_limited_links_inv_fk` FOREIGN KEY (`product_information_id`) REFERENCES `product_informations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_website_translators_about_page_limited_links`
--

LOCK TABLES `mt_website_translators_about_page_limited_links` WRITE;
/*!40000 ALTER TABLE `mt_website_translators_about_page_limited_links` DISABLE KEYS */;
INSERT INTO `mt_website_translators_about_page_limited_links` VALUES (2,1,8);
/*!40000 ALTER TABLE `mt_website_translators_about_page_limited_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_website_translators_about_page_links`
--

DROP TABLE IF EXISTS `mt_website_translators_about_page_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mt_website_translators_about_page_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `mt_website_translator_id` int unsigned DEFAULT NULL,
  `product_information_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mt_website_translators_about_page_links_unique` (`mt_website_translator_id`,`product_information_id`),
  KEY `mt_website_translators_about_page_links_fk` (`mt_website_translator_id`),
  KEY `mt_website_translators_about_page_links_inv_fk` (`product_information_id`),
  CONSTRAINT `mt_website_translators_about_page_links_fk` FOREIGN KEY (`mt_website_translator_id`) REFERENCES `mt_website_translators` (`id`) ON DELETE CASCADE,
  CONSTRAINT `mt_website_translators_about_page_links_inv_fk` FOREIGN KEY (`product_information_id`) REFERENCES `product_informations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_website_translators_about_page_links`
--

LOCK TABLES `mt_website_translators_about_page_links` WRITE;
/*!40000 ALTER TABLE `mt_website_translators_about_page_links` DISABLE KEYS */;
INSERT INTO `mt_website_translators_about_page_links` VALUES (3,1,3);
/*!40000 ALTER TABLE `mt_website_translators_about_page_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_website_translators_localizations_links`
--

DROP TABLE IF EXISTS `mt_website_translators_localizations_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mt_website_translators_localizations_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `mt_website_translator_id` int unsigned DEFAULT NULL,
  `inv_mt_website_translator_id` int unsigned DEFAULT NULL,
  `mt_website_translator_order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mt_website_translators_localizations_links_unique` (`mt_website_translator_id`,`inv_mt_website_translator_id`),
  KEY `mt_website_translators_localizations_links_fk` (`mt_website_translator_id`),
  KEY `mt_website_translators_localizations_links_inv_fk` (`inv_mt_website_translator_id`),
  KEY `mt_website_translators_localizations_links_order_fk` (`mt_website_translator_order`),
  CONSTRAINT `mt_website_translators_localizations_links_fk` FOREIGN KEY (`mt_website_translator_id`) REFERENCES `mt_website_translators` (`id`) ON DELETE CASCADE,
  CONSTRAINT `mt_website_translators_localizations_links_inv_fk` FOREIGN KEY (`inv_mt_website_translator_id`) REFERENCES `mt_website_translators` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_website_translators_localizations_links`
--

LOCK TABLES `mt_website_translators_localizations_links` WRITE;
/*!40000 ALTER TABLE `mt_website_translators_localizations_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_website_translators_localizations_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privacy_policies`
--

DROP TABLE IF EXISTS `privacy_policies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `privacy_policies` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `text` longtext,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `privacy_policies_created_by_id_fk` (`created_by_id`),
  KEY `privacy_policies_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `privacy_policies_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `privacy_policies_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privacy_policies`
--

LOCK TABLES `privacy_policies` WRITE;
/*!40000 ALTER TABLE `privacy_policies` DISABLE KEYS */;
INSERT INTO `privacy_policies` VALUES (1,'<div class=\"raw-html-embed\"><div class=\"container text-justify\">\n<div class=\"row\">\n<div class=\"col-12 mt-3\">\n<h1>Privacy Policy (Example only)</h1>\n</div></div>\n<div class=\"row\">\n<div class=\"col-12\">\n<p>We are committed to protecting your privacy and personal data. Therefore, we use your personal data strictly within the legal limits of the applicable data protection laws. With this privacy policy, we inform you of the personal data we collect when you use our website or services.</p>\n<p>The NLTP service collects and uses your personal data exclusively within the framework of the provisions of the General Data Protection Regulation. In the following, we inform you about the type, scope, and purposes of the collection and use of personal data.</p>\n<h3>1. Data controller</h3>\n<p>The data controller responsible for data processing within the meaning of the General Data Protection Regulation, other data protection laws in force in the Member States of the European Union, and other provisions of a data protection nature is:</p>\n<p>[X]</p>\n<p>Please feel free to address any questions or concerns regarding data protection or privacy to: <b>nltp-info@example.com</b></p>\n<h3>2. Scope of data protection</h3>\n<p>Data protection concerns personal data as defined in the General Data Protection Regulation, i.e. all information relating to an identified or identifiable natural person. Identifiable is any natural person who can be identified directly or indirectly, in particular by assignment to an identifier such as a name, an identification number, location data, an online identifier, or one or more special characteristics. Usage data is data required to use our website; this data includes the start, end, and extent of the user’s website use.</p>\n<h3>3. Automatic data collection via website access</h3>\n<p>When you access our website your device automatically transmits certain data for technical reasons. The following data is stored separately from any other data you may transmit to us:</p>\n<ul class=\"privacy-list\">\n<li>Date and time of access</li>\n<li>Browser type and version</li>\n<li>Operating system</li>\n<li>URL of the website visited prior to ours</li>\n<li>Amount of data sent</li>\n<li>Requesting domain</li>\n<li>Notification of successful data retrieval</li>\n<li>Search term when using a web browser</li>\n<li>Shortened/anonymized IP</li>\n<li>Full IP address (for a maximum of 14 days)</li>\n</ul>\n<p>This data is stored for purely technical reasons and is never associated with any particular individual. The data about website access is used for error analysis, ensuring the security of the systems and to improve our translation service. For legitimate reasons, the full IP address is used to achieve the stated purposes for a very short period of a maximum of 14 days.</p>\n<h3>4. Texts and translations</h3>\n<p>When using the NLTP service, the texts you submit and their translations are never stored, and are used only insofar as it is necessary to create the translation. When using the NLTP service, we don\'t use your texts to improve the quality of our services.</p><p>Please note that you may not use our translation service for any texts containing personal data of any kind.</p>\n<h3>5. Registration</h3>\n<p>You may register with the NLTP. The following personal data will be stored for login purposes:</p>\n<ul class=\"privacy-list\">\n<li>Email address</li>\n<li>Password</li>\n<li>IP address</li>\n</ul>\n<h3>6. Cookies</h3>\n<p>This webpage, like many others, uses cookies to personalize content and ads, provide social media features and analyse our data traffic.</p>\n<p>By continuing to use our website, you accept our cookies.</p>\n<p>What is a cookie:</p>\n<p>A cookie is a small text file sent to your computer or mobile device when you visit a website that is saved by that website on your computer or mobile device when you open the website. On each subsequent visit, cookies are sent back to the original webpage or any other webpage that recognizes this cookie. Cookies function as a memory of a specific webpage enabling the webpage to remember your computer in following visits including that the cookies can remember your settings or improve your user experience.</p>\n<p>How we use cookies:</p>\n<p>There are multiple types of cookies (persistent and session). They differ by their usage goals and storage period. Over time, the cookies may get updated and customized to improve the service quality level.</p>\n<p>In general, cookies are used for:</p>\n<ul>\n<li>Provision of services – cookies provide basic functions such as page navigation.</li>\n<li>User settings – cookies enable a website to remember the information that changes the way the website works or looks, for example, the recommended language or your location region.</li>\n<li>Usage statistics and analysis – by collecting and anonymously reviewing the information, cookies help owners of websites to understand how users interact with their websites.</li><li>Marketing – cookies are used to track visitors to websites. The goal is to show relevant ads that are of interest to an individual user.</li>\n</ul>\n<p>We do not use cookies to collect personal information about users. However, some processed information can be considered personal data.</p>\n<p>We may share the information about how you use our site with our media, social, advertising and analysis partners.</p>\n<p>If you would like to limit cookies or block them on our website, you may do so by editing the settings of your web browser. However, then you will need to customize settings every time you visit the website, and there is a probability that some services and features might not work.</p>\n<h3>7. Google Analytics (with an anonymization function)</h3>\n<p>We use Google Analytics (with an anonymization function), a web analytics service provided by Google Inc. (\"Google\"). Google Analytics uses cookies which permit an analysis of your use of the website. The information about your website use generated by the cookie (including your truncated IP address) is transmitted to a server controlled by Google in the USA and is stored there. Google uses this information to analyze your use of the website, to generate reports about website activities for website operators, and to provide further services related to website and internet use. Google may also share such information with third parties to the extent it is legally required to do so and/or to the extent third parties process data on behalf of Google.</p>\n<p>You can find detailed information about how Google uses your data in <a href=\"https://policies.google.com/privacy?hl=en\" target=\"blank\"><strong>Google’s privacy policy</strong></a>.</p>\n<p>We use Google Analytics with the anonymization function. By means of this addition, Google shortens and anonymizes the IP address of the Internet connection of the person concerned, if our Internet pages are accessed from a member state of the European Union or from another governmental party to the Agreement on the European Economic Area.</p>\n<p>You may deactivate Google Analytics with the help of a browser add-on if you do not want this website analysis. This add-on can be downloaded <a href=\"https://tools.google.com/dlpage/gaoptout?hl=en\" target=\"blank\"><strong>here</strong></a>.</p>\n<p>User-based event data at Google Analytics is deleted after 38 months.</p>\n<h3>8. Data security</h3>\n<p>Your visits to our website are protected by state-of-the-art encryption technology. The level of protection always depends on which encryption your Internet browser supports. You can tell whether an individual page of our website is encrypted by the key or closed lock symbol in the status bar of your browser. We also use appropriate technical and organizational security measures to protect your data against accidental or intentional manipulation, partial or complete loss, destruction, or against unauthorized access by third parties. Our security measures are continuously improved in line with technological developments.</p>\n<h3>9. Your rights</h3>\n<p>You have the following rights under European Union law. If you wish to exercise any of the rights below, simply write to us at the above address.</p>\n<ul>\n<li>Right to confirmation and right to information - we will be happy to confirm whether we process your personal data, what data it is and for what purpose it is processed.</li>\n<li>Right to rectification - if the data we store is incorrect, we will of course be happy to correct it.</li>\n<li>Right of erasure - if you want your personal data to be deleted, we will, as far as legally possible, comply with your request. If data must be kept for legal reasons, it will be blocked. The data is then no longer available for further use.</li>\n<li>Right to restriction of processing - should you wish to restrict use, we will, as far as legally possible, comply with your request.</li>\n<li>Right of revocation - if you wish to revoke any consents already given, we will pursue your request accordingly.</li>\n<li>Right to object - if your personal data are processed on the basis of legitimate interests pursuant to point (f) of Article 6(1) of the GDPR, you have the right to object to the processing of your personal data pursuant to Article 21 of the GDPR if there are reasons for doing so that result from your particular situation or are against direct marketing. In the latter case, you have a general right to object, which we will accept without a particular situation being stated. If you would like to exercise your right of revocation or objection, simply send an e-mail to: <b>nltp-dpo@example.com</b>.</li>\n</ul>\n<p>You also have the right to lodge a complaint to a supervisory authority about the processing of your personal data.</p>\n<h3>10. Changes to this privacy policy</h3>\n<p>We reserve the right to modify this privacy policy.</p>\n<p>Last updated: May 2022</p></div></div></div></div>','2022-06-07 12:21:10.000000','2022-10-14 11:13:24.000000',1,1,'en');
/*!40000 ALTER TABLE `privacy_policies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privacy_policies_localizations_links`
--

DROP TABLE IF EXISTS `privacy_policies_localizations_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `privacy_policies_localizations_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `privacy_policy_id` int unsigned DEFAULT NULL,
  `inv_privacy_policy_id` int unsigned DEFAULT NULL,
  `privacy_policy_order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `privacy_policies_localizations_links_unique` (`privacy_policy_id`,`inv_privacy_policy_id`),
  KEY `privacy_policies_localizations_links_fk` (`privacy_policy_id`),
  KEY `privacy_policies_localizations_links_inv_fk` (`inv_privacy_policy_id`),
  KEY `privacy_policies_localizations_links_order_fk` (`privacy_policy_order`),
  CONSTRAINT `privacy_policies_localizations_links_fk` FOREIGN KEY (`privacy_policy_id`) REFERENCES `privacy_policies` (`id`) ON DELETE CASCADE,
  CONSTRAINT `privacy_policies_localizations_links_inv_fk` FOREIGN KEY (`inv_privacy_policy_id`) REFERENCES `privacy_policies` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privacy_policies_localizations_links`
--

LOCK TABLES `privacy_policies_localizations_links` WRITE;
/*!40000 ALTER TABLE `privacy_policies_localizations_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `privacy_policies_localizations_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_informations`
--

DROP TABLE IF EXISTS `product_informations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_informations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `route` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_informations_created_by_id_fk` (`created_by_id`),
  KEY `product_informations_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `product_informations_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `product_informations_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_informations`
--

LOCK TABLES `product_informations` WRITE;
/*!40000 ALTER TABLE `product_informations` DISABLE KEYS */;
INSERT INTO `product_informations` VALUES (1,'about','Powerful and secure language tools for you','NLTP','About platform','2022-07-20 11:33:49.000000','2023-02-08 08:24:31.921000',1,2,'en'),(2,'cat-tool','Save time on translation editing with a CAT tool','NLTP','CAT Tool','2022-08-01 15:14:27.000000','2023-02-08 06:13:14.832000',1,2,'en'),(3,'website-translator','Make your website multilingual effortlessly','NLTP','Website Translator','2022-09-06 18:57:53.000000','2023-02-07 15:23:55.823000',1,2,'en'),(4,'Trados-Studio-Plugin','Connect NLTP to Trados Studio for seamless translation process','NLTP','Trados Studio plugin','2022-09-20 11:41:44.000000','2023-02-07 15:45:37.769000',1,2,'en'),(5,'contact-us','We\'d love to hear from you','NLTP','Contact us','2022-09-29 12:55:35.000000','2023-02-08 06:16:30.151000',1,2,'en'),(6,'cat-tool-unauthorised','Save time on translation editing with a CAT tool','NLTP','CAT Tool unauthorised','2023-02-01 15:37:47.358000','2023-02-07 15:17:08.400000',2,2,'en'),(7,'Trados-Studio-Plugin-unauthorised','Connect NLTP to Trados Studio for seamless translation process','NLTP','Trados Studio plugin unauthorised','2023-02-01 16:45:15.731000','2023-02-07 15:02:09.299000',2,2,'en'),(8,'website-translator-unauthorised','Make your website multilingual effortlessly','NLTP','Website Translator unauthorised','2023-02-01 16:49:29.769000','2023-02-07 15:01:34.755000',2,2,'en');
/*!40000 ALTER TABLE `product_informations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_informations_components`
--

DROP TABLE IF EXISTS `product_informations_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_informations_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_informations_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `product_informations_field_index` (`field`),
  KEY `product_informations_component_type_index` (`component_type`),
  KEY `product_informations_entity_fk` (`entity_id`),
  CONSTRAINT `product_informations_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `product_informations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=287 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_informations_components`
--

LOCK TABLES `product_informations_components` WRITE;
/*!40000 ALTER TABLE `product_informations_components` DISABLE KEYS */;
INSERT INTO `product_informations_components` VALUES (186,8,23,'basic-types.html','head',1),(187,8,19,'basic-types.link-button','head',2),(188,7,22,'basic-types.html','head',1),(189,7,18,'basic-types.link-button','head',2),(197,6,20,'basic-types.html','head',1),(198,6,16,'basic-types.link-button','head',2),(199,6,17,'basic-types.link-button','head',3),(200,6,21,'basic-types.html','head',4),(201,6,7,'feature-list.feature-list','body',1),(210,3,5,'basic-types.html','head',1),(211,3,5,'basic-types.link-button','head',2),(212,4,10,'basic-types.html','head',1),(213,4,12,'basic-types.link','head',2),(214,4,13,'basic-types.link','head',3),(215,4,20,'basic-types.link-button','head',4),(251,2,2,'basic-types.html','head',1),(252,2,3,'basic-types.link-button','head',2),(253,2,4,'basic-types.link-button','head',3),(254,2,15,'basic-types.html','head',4),(255,2,1,'feature-list.feature-list','body',1),(260,5,16,'basic-types.html','head',1),(261,5,13,'basic-types.link-button','head',2),(262,5,14,'basic-types.link-button','head',3),(283,1,9,'basic-types.html','head',1),(284,1,9,'basic-types.link-button','head',2),(285,1,10,'basic-types.link-button','head',3),(286,1,3,'feature-list.feature-list','body',1);
/*!40000 ALTER TABLE `product_informations_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_informations_localizations_links`
--

DROP TABLE IF EXISTS `product_informations_localizations_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_informations_localizations_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_information_id` int unsigned DEFAULT NULL,
  `inv_product_information_id` int unsigned DEFAULT NULL,
  `product_information_order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_informations_localizations_links_unique` (`product_information_id`,`inv_product_information_id`),
  KEY `product_informations_localizations_links_fk` (`product_information_id`),
  KEY `product_informations_localizations_links_inv_fk` (`inv_product_information_id`),
  KEY `product_informations_localizations_links_order_fk` (`product_information_order`),
  CONSTRAINT `product_informations_localizations_links_fk` FOREIGN KEY (`product_information_id`) REFERENCES `product_informations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_informations_localizations_links_inv_fk` FOREIGN KEY (`inv_product_information_id`) REFERENCES `product_informations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_informations_localizations_links`
--

LOCK TABLES `product_informations_localizations_links` WRITE;
/*!40000 ALTER TABLE `product_informations_localizations_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_informations_localizations_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register_nodes`
--

DROP TABLE IF EXISTS `register_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `register_nodes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `node_name` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `node_url` varchar(255) DEFAULT NULL,
  `node_description` longtext,
  `node_code` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `register_nodes_created_by_id_fk` (`created_by_id`),
  KEY `register_nodes_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `register_nodes_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `register_nodes_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register_nodes`
--

LOCK TABLES `register_nodes` WRITE;
/*!40000 ALTER TABLE `register_nodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `register_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_api_token_permissions`
--

DROP TABLE IF EXISTS `strapi_api_token_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_api_token_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `strapi_api_token_permissions_created_by_id_fk` (`created_by_id`),
  KEY `strapi_api_token_permissions_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `strapi_api_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `strapi_api_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_api_token_permissions`
--

LOCK TABLES `strapi_api_token_permissions` WRITE;
/*!40000 ALTER TABLE `strapi_api_token_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_api_token_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_api_token_permissions_token_links`
--

DROP TABLE IF EXISTS `strapi_api_token_permissions_token_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_api_token_permissions_token_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `api_token_permission_id` int unsigned DEFAULT NULL,
  `api_token_id` int unsigned DEFAULT NULL,
  `api_token_permission_order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_api_token_permissions_token_links_unique` (`api_token_permission_id`,`api_token_id`),
  KEY `strapi_api_token_permissions_token_links_fk` (`api_token_permission_id`),
  KEY `strapi_api_token_permissions_token_links_inv_fk` (`api_token_id`),
  KEY `strapi_api_token_permissions_token_links_order_inv_fk` (`api_token_permission_order`),
  CONSTRAINT `strapi_api_token_permissions_token_links_fk` FOREIGN KEY (`api_token_permission_id`) REFERENCES `strapi_api_token_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `strapi_api_token_permissions_token_links_inv_fk` FOREIGN KEY (`api_token_id`) REFERENCES `strapi_api_tokens` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_api_token_permissions_token_links`
--

LOCK TABLES `strapi_api_token_permissions_token_links` WRITE;
/*!40000 ALTER TABLE `strapi_api_token_permissions_token_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_api_token_permissions_token_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_api_tokens`
--

DROP TABLE IF EXISTS `strapi_api_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_api_tokens` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_api_tokens`
--

LOCK TABLES `strapi_api_tokens` WRITE;
/*!40000 ALTER TABLE `strapi_api_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_api_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_core_store_settings`
--

DROP TABLE IF EXISTS `strapi_core_store_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_core_store_settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_core_store_settings`
--

LOCK TABLES `strapi_core_store_settings` WRITE;
/*!40000 ALTER TABLE `strapi_core_store_settings` DISABLE KEYS */;
INSERT INTO `strapi_core_store_settings` VALUES (98,'plugin_upload_settings','{\"sizeOptimization\":true,\"responsiveDimensions\":true}','object','production',NULL),(99,'plugin_users-permissions_grant','{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"}}','object',NULL,NULL),(100,'plugin_i18n_default_locale','\"en\"','string',NULL,NULL),(101,'plugin_users-permissions_email','{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}','object',NULL,NULL),(102,'plugin_content_manager_configuration_content_types::api::privacy-policy.privacy-policy','{\"uid\":\"api::privacy-policy.privacy-policy\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"text\":{\"edit\":{\"label\":\"text\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"text\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"text\",\"size\":12}]]}}','object',NULL,NULL),(103,'plugin_content_manager_configuration_content_types::api::cookie-consent.cookie-consent','{\"uid\":\"api::cookie-consent.cookie-consent\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"accept_button\":{\"edit\":{\"label\":\"accept_button\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accept_button\",\"searchable\":true,\"sortable\":true}},\"decline_button\":{\"edit\":{\"label\":\"decline_button\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"decline_button\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"description\",\"accept_button\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"accept_button\",\"size\":6},{\"name\":\"decline_button\",\"size\":6}]]}}','object',NULL,NULL),(106,'plugin_content_manager_configuration_content_types::api::register-node.register-node','{\"uid\":\"api::register-node.register-node\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Node_name\",\"defaultSortBy\":\"Node_name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"Node_name\":{\"edit\":{\"label\":\"Node_name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Node_name\",\"searchable\":true,\"sortable\":true}},\"Contact_email\":{\"edit\":{\"label\":\"Contact_email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Contact_email\",\"searchable\":true,\"sortable\":true}},\"Contact_name\":{\"edit\":{\"label\":\"Contact_name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Contact_name\",\"searchable\":true,\"sortable\":true}},\"Node_url\":{\"edit\":{\"label\":\"Node_url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Node_url\",\"searchable\":true,\"sortable\":true}},\"Node_description\":{\"edit\":{\"label\":\"Node_description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Node_description\",\"searchable\":true,\"sortable\":true}},\"Node_code\":{\"edit\":{\"label\":\"Node_code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Node_code\",\"searchable\":true,\"sortable\":true}},\"Contact_phone\":{\"edit\":{\"label\":\"Contact_phone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Contact_phone\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Node_name\",\"Contact_email\",\"Contact_name\"],\"edit\":[[{\"name\":\"Node_name\",\"size\":6},{\"name\":\"Contact_email\",\"size\":6}],[{\"name\":\"Contact_name\",\"size\":6},{\"name\":\"Node_url\",\"size\":6}],[{\"name\":\"Node_description\",\"size\":6},{\"name\":\"Node_code\",\"size\":6}],[{\"name\":\"Contact_phone\",\"size\":6}]]}}','object',NULL,NULL),(107,'plugin_content_manager_configuration_content_types::api::terms-of-service.terms-of-service','{\"uid\":\"api::terms-of-service.terms-of-service\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"text\":{\"edit\":{\"label\":\"text\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"text\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"text\",\"size\":12}]]}}','object',NULL,NULL),(109,'plugin_content_manager_configuration_content_types::admin::permission','{\"uid\":\"admin::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}],[{\"name\":\"role\",\"size\":6}]]}}','object',NULL,NULL),(110,'plugin_content_manager_configuration_content_types::admin::role','{\"uid\":\"admin::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"users\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6}]]}}','object',NULL,NULL),(111,'plugin_content_manager_configuration_content_types::admin::user','{\"uid\":\"admin::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"registrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"preferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"preferedLanguage\",\"size\":6}],[{\"name\":\"roles\",\"size\":6}]]}}','object',NULL,NULL),(112,'plugin_content_manager_configuration_content_types::plugin::i18n.locale','{\"uid\":\"plugin::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}','object',NULL,NULL),(116,'plugin_content_manager_configuration_content_types::plugin::upload.file','{\"uid\":\"plugin::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"alternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"previewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider_metadata\",\"searchable\":false,\"sortable\":false}},\"folder\":{\"edit\":{\"label\":\"folder\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"folder\",\"searchable\":true,\"sortable\":true}},\"folderPath\":{\"edit\":{\"label\":\"folderPath\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"folderPath\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}],[{\"name\":\"folder\",\"size\":6},{\"name\":\"folderPath\",\"size\":6}]]}}','object',NULL,NULL),(118,'plugin_users-permissions_advanced','{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}','object',NULL,NULL),(121,'core_admin_auth','{\"providers\":{\"autoRegister\":false,\"defaultRole\":null}}','object',NULL,NULL),(122,'plugin_content_manager_configuration_content_types::api::cat.cat','{\"uid\":\"api::cat.cat\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"introduction\":{\"edit\":{\"label\":\"introduction\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"introduction\",\"searchable\":false,\"sortable\":false}},\"aboutPage\":{\"edit\":{\"label\":\"aboutPage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"route\"},\"list\":{\"label\":\"aboutPage\",\"searchable\":true,\"sortable\":true}},\"aboutPageLimited\":{\"edit\":{\"label\":\"aboutPageLimited\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"route\"},\"list\":{\"label\":\"aboutPageLimited\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"createdAt\",\"updatedAt\",\"aboutPage\"],\"edit\":[[{\"name\":\"introduction\",\"size\":12}],[{\"name\":\"aboutPage\",\"size\":6},{\"name\":\"aboutPageLimited\",\"size\":6}]]}}','object',NULL,NULL),(123,'plugin_content_manager_configuration_content_types::api::translator.translator','{\"uid\":\"api::translator.translator\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"header\":{\"edit\":{\"label\":\"header\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"header\",\"searchable\":false,\"sortable\":false}},\"footer\":{\"edit\":{\"label\":\"footer\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"footer\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"header\",\"size\":12}],[{\"name\":\"footer\",\"size\":12}]]}}','object',NULL,NULL),(124,'plugin_content_manager_configuration_content_types::api::mt-main.mt-main','{\"uid\":\"api::mt-main.mt-main\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"footer\":{\"edit\":{\"label\":\"footer\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"footer\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"footer\",\"size\":12}]]}}','object',NULL,NULL),(125,'plugin_content_manager_configuration_content_types::api::product-information.product-information','{\"uid\":\"api::product-information.product-information\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"company\",\"defaultSortBy\":\"company\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"route\":{\"edit\":{\"label\":\"route\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"route\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"head\":{\"edit\":{\"label\":\"head\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"head\",\"searchable\":false,\"sortable\":false}},\"body\":{\"edit\":{\"label\":\"body\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"body\",\"searchable\":false,\"sortable\":false}},\"company\":{\"edit\":{\"label\":\"company\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"company\",\"searchable\":true,\"sortable\":true}},\"productName\":{\"edit\":{\"label\":\"productName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"productName\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"company\",\"productName\",\"image\"],\"edit\":[[{\"name\":\"company\",\"size\":6},{\"name\":\"productName\",\"size\":6}],[{\"name\":\"head\",\"size\":12}],[{\"name\":\"image\",\"size\":6}],[{\"name\":\"body\",\"size\":12}],[{\"name\":\"title\",\"size\":6},{\"name\":\"route\",\"size\":6}]]}}','object',NULL,NULL),(126,'plugin_content_manager_configuration_content_types::api::menu-items.menu-items','{\"uid\":\"api::menu-item.menu-item\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"icon\":{\"edit\":{\"label\":\"icon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"icon\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"link\":{\"edit\":{\"label\":\"link\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"link\",\"searchable\":true,\"sortable\":true}},\"customId\":{\"edit\":{\"label\":\"customId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"customId\",\"searchable\":true,\"sortable\":true}},\"disabled\":{\"edit\":{\"label\":\"disabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"disabled\",\"searchable\":true,\"sortable\":true}},\"externalLink\":{\"edit\":{\"label\":\"externalLink\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"externalLink\",\"searchable\":true,\"sortable\":true}},\"plausibleEvent\":{\"edit\":{\"label\":\"plausibleEvent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"plausibleEvent\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"icon\",\"title\",\"link\"],\"edit\":[[{\"name\":\"icon\",\"size\":6},{\"name\":\"title\",\"size\":6}],[{\"name\":\"link\",\"size\":6},{\"name\":\"customId\",\"size\":6}],[{\"name\":\"disabled\",\"size\":4},{\"name\":\"externalLink\",\"size\":4}],[{\"name\":\"plausibleEvent\",\"size\":12}]],\"editRelations\":[]}}','object',NULL,NULL),(127,'plugin_content_manager_configuration_components::basic-types.html','{\"uid\":\"basic-types.html\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"content\":{\"edit\":{\"label\":\"content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"content\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\"],\"edit\":[[{\"name\":\"content\",\"size\":12}]]},\"isComponent\":true}','object',NULL,NULL),(128,'plugin_content_manager_configuration_components::feature-list.feature-list-item','{\"uid\":\"feature-list.feature-list-item\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"link\":{\"edit\":{\"label\":\"link\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"link\",\"searchable\":false,\"sortable\":false}},\"icon\":{\"edit\":{\"label\":\"icon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"icon\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"title\",\"icon\",\"description\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"icon\",\"size\":6}],[{\"name\":\"description\",\"size\":6}],[{\"name\":\"link\",\"size\":12}]]},\"isComponent\":true}','object',NULL,NULL),(129,'plugin_content_manager_configuration_components::basic-types.link','{\"uid\":\"basic-types.link\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"link\":{\"edit\":{\"label\":\"link\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"link\",\"searchable\":true,\"sortable\":true}},\"ariaLabel\":{\"edit\":{\"label\":\"ariaLabel\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ariaLabel\",\"searchable\":true,\"sortable\":true}},\"iconPosition\":{\"edit\":{\"label\":\"iconPosition\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"iconPosition\",\"searchable\":true,\"sortable\":true}},\"icon\":{\"edit\":{\"label\":\"icon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"icon\",\"searchable\":true,\"sortable\":true}},\"externalLink\":{\"edit\":{\"label\":\"externalLink\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"externalLink\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"link\",\"ariaLabel\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"link\",\"size\":6}],[{\"name\":\"ariaLabel\",\"size\":6},{\"name\":\"icon\",\"size\":6}],[{\"name\":\"iconPosition\",\"size\":6},{\"name\":\"externalLink\",\"size\":4}]]},\"isComponent\":true}','object',NULL,NULL),(130,'plugin_content_manager_configuration_components::basic-types.link-button','{\"uid\":\"basic-types.link-button\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"color\":{\"edit\":{\"label\":\"color\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"color\",\"searchable\":true,\"sortable\":true}},\"link\":{\"edit\":{\"label\":\"link\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"link\",\"searchable\":false,\"sortable\":false}},\"plausibleEvent\":{\"edit\":{\"label\":\"plausibleEvent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"plausibleEvent\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"type\",\"color\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"color\",\"size\":6}],[{\"name\":\"plausibleEvent\",\"size\":12}],[{\"name\":\"type\",\"size\":6}],[{\"name\":\"link\",\"size\":12}]]},\"isComponent\":true}','object',NULL,NULL),(131,'plugin_content_manager_configuration_components::feature-list.feature-list','{\"uid\":\"feature-list.feature-list\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"items\":{\"edit\":{\"label\":\"items\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"items\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\"],\"edit\":[[{\"name\":\"items\",\"size\":12}],[{\"name\":\"title\",\"size\":12}]]},\"isComponent\":true}','object',NULL,NULL),(136,'plugin_content_manager_configuration_content_types::api::mt-website-translator.mt-website-translator','{\"uid\":\"api::mt-website-translator.mt-website-translator\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"aboutPage\":{\"edit\":{\"label\":\"aboutPage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"route\"},\"list\":{\"label\":\"aboutPage\",\"searchable\":true,\"sortable\":true}},\"aboutPageLimited\":{\"edit\":{\"label\":\"aboutPageLimited\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"route\"},\"list\":{\"label\":\"aboutPageLimited\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"createdAt\",\"updatedAt\",\"aboutPage\"],\"edit\":[[{\"name\":\"aboutPage\",\"size\":6},{\"name\":\"aboutPageLimited\",\"size\":6}]]}}','object',NULL,NULL),(137,'plugin_content_manager_configuration_content_types::api::trados-plugin.trados-plugin','{\"uid\":\"api::trados-plugin.trados-plugin\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"aboutPage\":{\"edit\":{\"label\":\"aboutPage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"route\"},\"list\":{\"label\":\"aboutPage\",\"searchable\":true,\"sortable\":true}},\"aboutPageLimited\":{\"edit\":{\"label\":\"aboutPageLimited\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"route\"},\"list\":{\"label\":\"aboutPageLimited\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"createdAt\",\"updatedAt\",\"aboutPage\"],\"edit\":[[{\"name\":\"aboutPage\",\"size\":6},{\"name\":\"aboutPageLimited\",\"size\":6}]]}}','object',NULL,NULL),(138,'plugin_content_manager_configuration_components::universal-page.image-title-content-links','{\"uid\":\"universal-page.image-title-content-links\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":false,\"sortable\":false}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"imageFloat\":{\"edit\":{\"label\":\"imageFloat\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"imageFloat\",\"searchable\":true,\"sortable\":true}},\"text\":{\"edit\":{\"label\":\"text\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"text\",\"searchable\":false,\"sortable\":false}},\"buttons\":{\"edit\":{\"label\":\"buttons\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"buttons\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"image\",\"imageFloat\"],\"edit\":[[{\"name\":\"title\",\"size\":12}],[{\"name\":\"image\",\"size\":6},{\"name\":\"imageFloat\",\"size\":6}],[{\"name\":\"text\",\"size\":12}],[{\"name\":\"buttons\",\"size\":12}]]},\"isComponent\":true}','object',NULL,NULL),(139,'plugin_content_manager_configuration_components::basic-types.dynamic-heading','{\"uid\":\"basic-types.dynamic-heading\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"text\",\"defaultSortBy\":\"text\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"styles\":{\"edit\":{\"label\":\"styles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"styles\",\"searchable\":false,\"sortable\":false}},\"headingSize\":{\"edit\":{\"label\":\"headingSize\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"headingSize\",\"searchable\":true,\"sortable\":true}},\"text\":{\"edit\":{\"label\":\"text\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"text\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"headingSize\",\"text\"],\"edit\":[[{\"name\":\"headingSize\",\"size\":6},{\"name\":\"text\",\"size\":6}],[{\"name\":\"styles\",\"size\":12}]]},\"isComponent\":true}','object',NULL,NULL),(140,'plugin_content_manager_configuration_components::basic-types.key-value','{\"uid\":\"basic-types.key-value\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"key\",\"defaultSortBy\":\"key\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"key\":{\"edit\":{\"label\":\"key\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"key\",\"searchable\":true,\"sortable\":true}},\"value\":{\"edit\":{\"label\":\"value\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"value\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"key\",\"value\"],\"edit\":[[{\"name\":\"key\",\"size\":6},{\"name\":\"value\",\"size\":6}]]},\"isComponent\":true}','object',NULL,NULL),(141,'plugin_content_manager_configuration_components::plausible.plausible-event','{\"uid\":\"plausible.plausible-event\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"eventId\",\"defaultSortBy\":\"eventId\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"eventId\":{\"edit\":{\"label\":\"eventId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"eventId\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"eventId\"],\"edit\":[[{\"name\":\"eventId\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}]]},\"isComponent\":true}','object',NULL,NULL),(142,'plugin_content_manager_configuration_components::basic-types.styles','{\"uid\":\"basic-types.styles\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"padding\",\"defaultSortBy\":\"padding\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"padding\":{\"edit\":{\"label\":\"padding\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"padding\",\"searchable\":true,\"sortable\":true}},\"margin\":{\"edit\":{\"label\":\"margin\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"margin\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"padding\",\"margin\"],\"edit\":[[{\"name\":\"padding\",\"size\":6},{\"name\":\"margin\",\"size\":6}]]},\"isComponent\":true}','object',NULL,NULL),(143,'plugin_content_manager_configuration_content_types::admin::api-token','{\"uid\":\"admin::api-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}],[{\"name\":\"lastUsedAt\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"expiresAt\",\"size\":6},{\"name\":\"lifespan\",\"size\":4}]]}}','object',NULL,NULL),(144,'strapi_content_types_schema','{\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"admin::permission\",\"plugin\":\"admin\",\"globalId\":\"AdminPermission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"admin::user\",\"plugin\":\"admin\",\"globalId\":\"AdminUser\"},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"admin::role\",\"plugin\":\"admin\",\"globalId\":\"AdminRole\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token\",\"connection\":\"default\",\"uid\":\"admin::api-token\",\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\"},\"admin::api-token-permission\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token-permission\",\"connection\":\"default\",\"uid\":\"admin::api-token-permission\",\"plugin\":\"admin\",\"globalId\":\"AdminApiTokenPermission\"},\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"file\",\"connection\":\"default\",\"uid\":\"plugin::upload.file\",\"plugin\":\"upload\",\"globalId\":\"UploadFile\"},\"plugin::upload.folder\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"folder\",\"connection\":\"default\",\"uid\":\"plugin::upload.folder\",\"plugin\":\"upload\",\"globalId\":\"UploadFolder\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"locale\",\"connection\":\"default\",\"uid\":\"plugin::i18n.locale\",\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.permission\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\"},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.role\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\"},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.user\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\"},\"api::cat.cat\":{\"kind\":\"singleType\",\"collectionName\":\"cats\",\"info\":{\"singularName\":\"cat\",\"pluralName\":\"cats\",\"displayName\":\"Cat\",\"name\":\"Cat\",\"description\":\"For CAT page in MT website\"},\"options\":{\"increments\":true,\"timestamps\":true,\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"introduction\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"richtext\",\"default\":\"Cat introduction, coming from strapi\"},\"aboutPage\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::product-information.product-information\"},\"aboutPageLimited\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::product-information.product-information\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::cat.cat\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"cats\",\"info\":{\"singularName\":\"cat\",\"pluralName\":\"cats\",\"displayName\":\"Cat\",\"name\":\"Cat\",\"description\":\"For CAT page in MT website\"},\"options\":{\"increments\":true,\"timestamps\":true,\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"introduction\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"richtext\",\"default\":\"Cat introduction, coming from strapi\"},\"aboutPage\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::product-information.product-information\"},\"aboutPageLimited\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::product-information.product-information\"}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"cat\",\"connection\":\"default\",\"uid\":\"api::cat.cat\",\"apiName\":\"cat\",\"globalId\":\"Cat\",\"actions\":{},\"lifecycles\":{}},\"api::cookie-consent.cookie-consent\":{\"kind\":\"singleType\",\"collectionName\":\"cookie_consents\",\"info\":{\"singularName\":\"cookie-consent\",\"pluralName\":\"cookie-consents\",\"displayName\":\"Cookie consent\",\"name\":\"Cookie consent\",\"description\":\"For cookie consent dialog component\"},\"options\":{\"increments\":true,\"timestamps\":true,\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"title\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"default\":\"Cookie consent title\",\"required\":true},\"description\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"text\",\"default\":\"Cookie consent description\",\"required\":true},\"accept_button\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"default\":\"Accept\",\"required\":true},\"decline_button\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"default\":\"Decline\",\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::cookie-consent.cookie-consent\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"cookie_consents\",\"info\":{\"singularName\":\"cookie-consent\",\"pluralName\":\"cookie-consents\",\"displayName\":\"Cookie consent\",\"name\":\"Cookie consent\",\"description\":\"For cookie consent dialog component\"},\"options\":{\"increments\":true,\"timestamps\":true,\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"title\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"default\":\"Cookie consent title\",\"required\":true},\"description\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"text\",\"default\":\"Cookie consent description\",\"required\":true},\"accept_button\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"default\":\"Accept\",\"required\":true},\"decline_button\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"default\":\"Decline\",\"required\":true}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"cookie-consent\",\"connection\":\"default\",\"uid\":\"api::cookie-consent.cookie-consent\",\"apiName\":\"cookie-consent\",\"globalId\":\"CookieConsent\",\"actions\":{},\"lifecycles\":{}},\"api::menu-item.menu-item\":{\"kind\":\"collectionType\",\"collectionName\":\"menu_items\",\"info\":{\"singularName\":\"menu-item\",\"pluralName\":\"menu-items\",\"displayName\":\"Menu item\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"title\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"link\":{\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"type\":\"string\"},\"customId\":{\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"type\":\"string\",\"unique\":false},\"disabled\":{\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"type\":\"boolean\",\"default\":false},\"externalLink\":{\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"type\":\"boolean\"},\"plausibleEvent\":{\"type\":\"component\",\"repeatable\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"component\":\"plausible.plausible-event\"},\"icon\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":false,\"pluginOptions\":{\"i18n\":{\"localized\":false}}},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::menu-item.menu-item\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"menu_items\",\"info\":{\"singularName\":\"menu-item\",\"pluralName\":\"menu-items\",\"displayName\":\"Menu item\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"title\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"link\":{\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"type\":\"string\"},\"customId\":{\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"type\":\"string\",\"unique\":false},\"disabled\":{\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"type\":\"boolean\",\"default\":false},\"externalLink\":{\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"type\":\"boolean\"},\"plausibleEvent\":{\"type\":\"component\",\"repeatable\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"component\":\"plausible.plausible-event\"},\"icon\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":false,\"pluginOptions\":{\"i18n\":{\"localized\":false}}}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"menu-item\",\"connection\":\"default\",\"uid\":\"api::menu-item.menu-item\",\"apiName\":\"menu-item\",\"globalId\":\"MenuItem\",\"actions\":{},\"lifecycles\":{}},\"api::mt-main.mt-main\":{\"kind\":\"singleType\",\"collectionName\":\"mt_mains\",\"info\":{\"name\":\"MT main\",\"singularName\":\"mt-main\",\"pluralName\":\"mt-mains\",\"displayName\":\"Mt main\",\"description\":\"Used in MT websites for global strapi data. E.g. footer\"},\"options\":{\"increments\":true,\"timestamps\":true,\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"footer\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"richtext\",\"default\":\"This is footer section. \"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::mt-main.mt-main\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"mt_mains\",\"info\":{\"name\":\"MT main\",\"singularName\":\"mt-main\",\"pluralName\":\"mt-mains\",\"displayName\":\"Mt main\",\"description\":\"Used in MT websites for global strapi data. E.g. footer\"},\"options\":{\"increments\":true,\"timestamps\":true,\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"footer\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"richtext\",\"default\":\"This is footer section. \"}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"mt-main\",\"connection\":\"default\",\"uid\":\"api::mt-main.mt-main\",\"apiName\":\"mt-main\",\"globalId\":\"MtMain\",\"actions\":{},\"lifecycles\":{}},\"api::mt-website-translator.mt-website-translator\":{\"kind\":\"singleType\",\"collectionName\":\"mt_website_translators\",\"info\":{\"singularName\":\"mt-website-translator\",\"pluralName\":\"mt-website-translators\",\"displayName\":\"MT Website Translator\",\"name\":\"MT Website Translator\",\"description\":\"MT website translator page content (for example about page)\"},\"options\":{\"increments\":true,\"timestamps\":true,\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"aboutPage\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::product-information.product-information\"},\"aboutPageLimited\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::product-information.product-information\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::mt-website-translator.mt-website-translator\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"mt_website_translators\",\"info\":{\"singularName\":\"mt-website-translator\",\"pluralName\":\"mt-website-translators\",\"displayName\":\"MT Website Translator\",\"name\":\"MT Website Translator\",\"description\":\"MT website translator page content (for example about page)\"},\"options\":{\"increments\":true,\"timestamps\":true,\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"aboutPage\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::product-information.product-information\"},\"aboutPageLimited\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::product-information.product-information\"}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"mt-website-translator\",\"connection\":\"default\",\"uid\":\"api::mt-website-translator.mt-website-translator\",\"apiName\":\"mt-website-translator\",\"globalId\":\"MtWebsiteTranslator\",\"actions\":{},\"lifecycles\":{}},\"api::privacy-policy.privacy-policy\":{\"kind\":\"singleType\",\"collectionName\":\"privacy_policies\",\"info\":{\"singularName\":\"privacy-policy\",\"pluralName\":\"privacy-policies\",\"displayName\":\"Privacy policy\",\"name\":\"Privacy policy\"},\"options\":{\"increments\":true,\"timestamps\":true,\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"text\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"richtext\",\"default\":\"Privacy policy goes here\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::privacy-policy.privacy-policy\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"privacy_policies\",\"info\":{\"singularName\":\"privacy-policy\",\"pluralName\":\"privacy-policies\",\"displayName\":\"Privacy policy\",\"name\":\"Privacy policy\"},\"options\":{\"increments\":true,\"timestamps\":true,\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"text\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"richtext\",\"default\":\"Privacy policy goes here\"}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"privacy-policy\",\"connection\":\"default\",\"uid\":\"api::privacy-policy.privacy-policy\",\"apiName\":\"privacy-policy\",\"globalId\":\"PrivacyPolicy\",\"actions\":{},\"lifecycles\":{}},\"api::product-information.product-information\":{\"kind\":\"collectionType\",\"collectionName\":\"product_informations\",\"info\":{\"singularName\":\"product-information\",\"pluralName\":\"product-informations\",\"displayName\":\"Product information page\",\"name\":\"Product information page\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":true,\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"route\":{\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"type\":\"string\",\"unique\":false},\"title\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"head\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"dynamiczone\",\"components\":[\"basic-types.link-button\",\"basic-types.html\",\"basic-types.link\"]},\"body\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"dynamiczone\",\"components\":[\"basic-types.html\",\"basic-types.link-button\",\"feature-list.feature-list\",\"universal-page.image-title-content-links\",\"basic-types.link\"]},\"company\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"productName\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"image\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::product-information.product-information\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"product_informations\",\"info\":{\"singularName\":\"product-information\",\"pluralName\":\"product-informations\",\"displayName\":\"Product information page\",\"name\":\"Product information page\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":true,\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"route\":{\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"type\":\"string\",\"unique\":false},\"title\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"head\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"dynamiczone\",\"components\":[\"basic-types.link-button\",\"basic-types.html\",\"basic-types.link\"]},\"body\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"dynamiczone\",\"components\":[\"basic-types.html\",\"basic-types.link-button\",\"feature-list.feature-list\",\"universal-page.image-title-content-links\",\"basic-types.link\"]},\"company\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"productName\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"image\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}}}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"product-information\",\"connection\":\"default\",\"uid\":\"api::product-information.product-information\",\"apiName\":\"product-information\",\"globalId\":\"ProductInformation\",\"actions\":{},\"lifecycles\":{}},\"api::register-node.register-node\":{\"kind\":\"collectionType\",\"collectionName\":\"register_nodes\",\"info\":{\"singularName\":\"register-node\",\"pluralName\":\"register-nodes\",\"displayName\":\"Register node\",\"name\":\"Register node\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":true,\"draftAndPublish\":false},\"attributes\":{\"Node_name\":{\"type\":\"string\"},\"Contact_email\":{\"type\":\"email\"},\"Contact_name\":{\"type\":\"string\"},\"Node_url\":{\"type\":\"string\",\"required\":true},\"Node_description\":{\"type\":\"text\"},\"Node_code\":{\"type\":\"string\"},\"Contact_phone\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"register_nodes\",\"info\":{\"singularName\":\"register-node\",\"pluralName\":\"register-nodes\",\"displayName\":\"Register node\",\"name\":\"Register node\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":true,\"draftAndPublish\":false},\"attributes\":{\"Node_name\":{\"type\":\"string\"},\"Contact_email\":{\"type\":\"email\"},\"Contact_name\":{\"type\":\"string\"},\"Node_url\":{\"type\":\"string\",\"required\":true},\"Node_description\":{\"type\":\"text\"},\"Node_code\":{\"type\":\"string\"},\"Contact_phone\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"register-node\",\"connection\":\"default\",\"uid\":\"api::register-node.register-node\",\"apiName\":\"register-node\",\"globalId\":\"RegisterNode\",\"actions\":{},\"lifecycles\":{}},\"api::terms-of-service.terms-of-service\":{\"kind\":\"singleType\",\"collectionName\":\"terms_of_services\",\"info\":{\"singularName\":\"terms-of-service\",\"pluralName\":\"terms-of-services\",\"displayName\":\"Terms of service\",\"name\":\"Terms of service\"},\"options\":{\"increments\":true,\"timestamps\":true,\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"text\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"richtext\",\"default\":\"Terms of service goes here\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::terms-of-service.terms-of-service\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"terms_of_services\",\"info\":{\"singularName\":\"terms-of-service\",\"pluralName\":\"terms-of-services\",\"displayName\":\"Terms of service\",\"name\":\"Terms of service\"},\"options\":{\"increments\":true,\"timestamps\":true,\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"text\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"richtext\",\"default\":\"Terms of service goes here\"}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"terms-of-service\",\"connection\":\"default\",\"uid\":\"api::terms-of-service.terms-of-service\",\"apiName\":\"terms-of-service\",\"globalId\":\"TermsOfService\",\"actions\":{},\"lifecycles\":{}},\"api::trados-plugin.trados-plugin\":{\"kind\":\"singleType\",\"collectionName\":\"trados_plugins\",\"info\":{\"singularName\":\"trados-plugin\",\"pluralName\":\"trados-plugins\",\"displayName\":\"Trados plugin\",\"name\":\"Trados plugin\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":true,\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"aboutPage\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::product-information.product-information\"},\"aboutPageLimited\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::product-information.product-information\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::trados-plugin.trados-plugin\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"trados_plugins\",\"info\":{\"singularName\":\"trados-plugin\",\"pluralName\":\"trados-plugins\",\"displayName\":\"Trados plugin\",\"name\":\"Trados plugin\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":true,\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"aboutPage\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::product-information.product-information\"},\"aboutPageLimited\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::product-information.product-information\"}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"trados-plugin\",\"connection\":\"default\",\"uid\":\"api::trados-plugin.trados-plugin\",\"apiName\":\"trados-plugin\",\"globalId\":\"TradosPlugin\",\"actions\":{},\"lifecycles\":{}},\"api::translator.translator\":{\"kind\":\"singleType\",\"collectionName\":\"translators\",\"info\":{\"singularName\":\"translator\",\"pluralName\":\"translators\",\"displayName\":\"Translator\",\"name\":\"Translator\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":true,\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"header\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"dynamiczone\",\"components\":[\"feature-list.feature-list\",\"basic-types.link-button\",\"basic-types.html\"]},\"footer\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"dynamiczone\",\"components\":[\"feature-list.feature-list\",\"basic-types.link-button\",\"basic-types.html\"]},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::translator.translator\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"translators\",\"info\":{\"singularName\":\"translator\",\"pluralName\":\"translators\",\"displayName\":\"Translator\",\"name\":\"Translator\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":true,\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"header\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"dynamiczone\",\"components\":[\"feature-list.feature-list\",\"basic-types.link-button\",\"basic-types.html\"]},\"footer\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"dynamiczone\",\"components\":[\"feature-list.feature-list\",\"basic-types.link-button\",\"basic-types.html\"]}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"translator\",\"connection\":\"default\",\"uid\":\"api::translator.translator\",\"apiName\":\"translator\",\"globalId\":\"Translator\",\"actions\":{},\"lifecycles\":{}}}','object',NULL,NULL),(145,'plugin_content_manager_configuration_content_types::admin::api-token-permission','{\"uid\":\"admin::api-token-permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]}}','object',NULL,NULL),(146,'plugin_content_manager_configuration_content_types::plugin::upload.folder','{\"uid\":\"plugin::upload.folder\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"pathId\":{\"edit\":{\"label\":\"pathId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pathId\",\"searchable\":true,\"sortable\":true}},\"parent\":{\"edit\":{\"label\":\"parent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"parent\",\"searchable\":true,\"sortable\":true}},\"children\":{\"edit\":{\"label\":\"children\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"children\",\"searchable\":false,\"sortable\":false}},\"files\":{\"edit\":{\"label\":\"files\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"files\",\"searchable\":false,\"sortable\":false}},\"path\":{\"edit\":{\"label\":\"path\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"path\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"pathId\",\"parent\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"pathId\",\"size\":4}],[{\"name\":\"parent\",\"size\":6},{\"name\":\"children\",\"size\":6}],[{\"name\":\"files\",\"size\":6},{\"name\":\"path\",\"size\":6}]]}}','object',NULL,NULL),(147,'plugin_content_manager_configuration_content_types::plugin::users-permissions.user','{\"uid\":\"plugin::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"confirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"confirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"role\",\"size\":6}]]}}','object',NULL,NULL),(148,'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission','{\"uid\":\"plugin::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"role\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"role\",\"size\":6}]]}}','object',NULL,NULL),(149,'plugin_content_manager_configuration_content_types::plugin::users-permissions.role','{\"uid\":\"plugin::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"users\",\"size\":6}]]}}','object',NULL,NULL),(150,'plugin_content_manager_configuration_content_types::api::menu-item.menu-item','{\"uid\":\"api::menu-item.menu-item\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"link\":{\"edit\":{\"label\":\"link\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"link\",\"searchable\":true,\"sortable\":true}},\"customId\":{\"edit\":{\"label\":\"customId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"customId\",\"searchable\":true,\"sortable\":true}},\"disabled\":{\"edit\":{\"label\":\"disabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"disabled\",\"searchable\":true,\"sortable\":true}},\"externalLink\":{\"edit\":{\"label\":\"externalLink\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"externalLink\",\"searchable\":true,\"sortable\":true}},\"plausibleEvent\":{\"edit\":{\"label\":\"plausibleEvent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"plausibleEvent\",\"searchable\":false,\"sortable\":false}},\"icon\":{\"edit\":{\"label\":\"icon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"icon\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"icon\",\"title\",\"link\"],\"edit\":[[{\"name\":\"icon\",\"size\":6},{\"name\":\"title\",\"size\":6}],[{\"name\":\"link\",\"size\":6},{\"name\":\"customId\",\"size\":6}],[{\"name\":\"disabled\",\"size\":4},{\"name\":\"externalLink\",\"size\":4}],[{\"name\":\"plausibleEvent\",\"size\":12}]]}}','object',NULL,NULL),(151,'plugin_upload_settings','{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false}','object',NULL,NULL),(152,'plugin_upload_view_configuration','{\"pageSize\":10,\"sort\":\"createdAt:DESC\"}','object',NULL,NULL),(153,'plugin_upload_metrics','{\"weeklySchedule\":\"18 36 9 * * 4\",\"lastWeeklyUpdate\":1675935378076}','object',NULL,NULL);
/*!40000 ALTER TABLE `strapi_core_store_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_database_schema`
--

DROP TABLE IF EXISTS `strapi_database_schema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_database_schema` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `schema` json DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_database_schema`
--

LOCK TABLES `strapi_database_schema` WRITE;
/*!40000 ALTER TABLE `strapi_database_schema` DISABLE KEYS */;
INSERT INTO `strapi_database_schema` VALUES (4,'{\"tables\": [{\"name\": \"strapi_core_store_settings\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"value\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"environment\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"tag\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"strapi_webhooks\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"url\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"headers\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"events\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"enabled\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"admin_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subject\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"properties\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"conditions\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_users\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"firstname\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lastname\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"username\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"password\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"reset_password_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"registration_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"is_active\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"blocked\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"prefered_language\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_users_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_users_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_roles\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"code\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_tokens\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"access_key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"last_used_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"expires_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lifespan\", \"type\": \"bigInteger\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_api_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_token_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_token_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_api_token_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_token_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_token_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"alternative_text\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"caption\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"width\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"height\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"formats\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"hash\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"ext\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"mime\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [10, 2], \"name\": \"size\", \"type\": \"decimal\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"preview_url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider_metadata\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"folder_path\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_files_folder_path_index\", \"type\": null, \"columns\": [\"folder_path\"]}, {\"name\": \"upload_files_created_at_index\", \"type\": null, \"columns\": [\"created_at\"]}, {\"name\": \"upload_files_updated_at_index\", \"type\": null, \"columns\": [\"updated_at\"]}, {\"name\": \"upload_files_name_index\", \"type\": null, \"columns\": [\"name\"]}, {\"name\": \"upload_files_size_index\", \"type\": null, \"columns\": [\"size\"]}, {\"name\": \"upload_files_ext_index\", \"type\": null, \"columns\": [\"ext\"]}, {\"name\": \"files_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"files_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"files_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"files_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"upload_folders\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"path_id\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"path\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_folders_path_id_index\", \"type\": \"unique\", \"columns\": [\"path_id\"]}, {\"name\": \"upload_folders_path_index\", \"type\": \"unique\", \"columns\": [\"path\"]}, {\"name\": \"upload_folders_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"upload_folders_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"upload_folders_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"upload_folders_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"i18n_locale\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"code\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"i18n_locale_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"i18n_locale_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"i18n_locale_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"i18n_locale_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_roles\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"username\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"password\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"reset_password_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"confirmation_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"confirmed\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"blocked\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_users_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"cats\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [\"longtext\"], \"name\": \"introduction\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"locale\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"cats_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"cats_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"cats_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"cats_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"cookie_consents\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"description\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"accept_button\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"decline_button\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"locale\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"cookie_consents_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"cookie_consents_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"cookie_consents_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"cookie_consents_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"menu_items\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"link\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"custom_id\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"disabled\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"external_link\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"locale\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"menu_items_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"menu_items_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"menu_items_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"menu_items_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"mt_mains\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [\"longtext\"], \"name\": \"footer\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"locale\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"mt_mains_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"mt_mains_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"mt_mains_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"mt_mains_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"mt_website_translators\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"locale\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"mt_website_translators_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"mt_website_translators_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"mt_website_translators_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"mt_website_translators_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"privacy_policies\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [\"longtext\"], \"name\": \"text\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"locale\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"privacy_policies_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"privacy_policies_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"privacy_policies_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"privacy_policies_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"product_informations\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"route\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"company\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"product_name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"locale\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"product_informations_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"product_informations_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"product_informations_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"product_informations_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"register_nodes\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"node_name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"contact_email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"contact_name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"node_url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"node_description\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"node_code\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"contact_phone\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"register_nodes_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"register_nodes_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"register_nodes_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"register_nodes_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"terms_of_services\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [\"longtext\"], \"name\": \"text\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"locale\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"terms_of_services_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"terms_of_services_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"terms_of_services_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"terms_of_services_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"trados_plugins\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"locale\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"trados_plugins_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"trados_plugins_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"trados_plugins_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"trados_plugins_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"translators\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"locale\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"translators_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"translators_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"translators_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"translators_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_basic_types_dynamic_headings\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"heading_size\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"text\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_sections_htmls\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [\"longtext\"], \"name\": \"content\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_basic_types_key_values\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"value\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_sections_link_buttons\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"color\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_sections_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"link\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"aria_label\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"icon_position\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"icon\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"external_link\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_basic_types_styles\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"padding\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"margin\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_feature_list_feature_list_items\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"title\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"description\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_feature_list_feature_lists\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_plausible_plausible_events\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"event_id\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"components_universal_page\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"image_float\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"admin_permissions_role_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"permission_order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_permissions_role_links_fk\", \"columns\": [\"permission_id\"]}, {\"name\": \"admin_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"admin_permissions_role_links_unique\", \"type\": \"unique\", \"columns\": [\"permission_id\", \"role_id\"]}, {\"name\": \"admin_permissions_role_links_order_inv_fk\", \"columns\": [\"permission_order\"]}], \"foreignKeys\": [{\"name\": \"admin_permissions_role_links_fk\", \"columns\": [\"permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_users_roles_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_users_roles_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"admin_users_roles_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"admin_users_roles_links_unique\", \"type\": \"unique\", \"columns\": [\"user_id\", \"role_id\"]}, {\"name\": \"admin_users_roles_links_order_fk\", \"columns\": [\"role_order\"]}, {\"name\": \"admin_users_roles_links_order_inv_fk\", \"columns\": [\"user_order\"]}], \"foreignKeys\": [{\"name\": \"admin_users_roles_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_users_roles_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_token_permissions_token_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"api_token_permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"api_token_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"api_token_permission_order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_token_permissions_token_links_fk\", \"columns\": [\"api_token_permission_id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_inv_fk\", \"columns\": [\"api_token_id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_unique\", \"type\": \"unique\", \"columns\": [\"api_token_permission_id\", \"api_token_id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_order_inv_fk\", \"columns\": [\"api_token_permission_order\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_token_permissions_token_links_fk\", \"columns\": [\"api_token_permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_api_token_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_inv_fk\", \"columns\": [\"api_token_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_api_tokens\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files_related_morphs\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"file_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"related_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"related_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"files_related_morphs_fk\", \"columns\": [\"file_id\"]}], \"foreignKeys\": [{\"name\": \"files_related_morphs_fk\", \"columns\": [\"file_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"files\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files_folder_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"file_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"file_order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"files_folder_links_fk\", \"columns\": [\"file_id\"]}, {\"name\": \"files_folder_links_inv_fk\", \"columns\": [\"folder_id\"]}, {\"name\": \"files_folder_links_unique\", \"type\": \"unique\", \"columns\": [\"file_id\", \"folder_id\"]}, {\"name\": \"files_folder_links_order_inv_fk\", \"columns\": [\"file_order\"]}], \"foreignKeys\": [{\"name\": \"files_folder_links_fk\", \"columns\": [\"file_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"files\", \"referencedColumns\": [\"id\"]}, {\"name\": \"files_folder_links_inv_fk\", \"columns\": [\"folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"upload_folders_parent_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"folder_order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_folders_parent_links_fk\", \"columns\": [\"folder_id\"]}, {\"name\": \"upload_folders_parent_links_inv_fk\", \"columns\": [\"inv_folder_id\"]}, {\"name\": \"upload_folders_parent_links_unique\", \"type\": \"unique\", \"columns\": [\"folder_id\", \"inv_folder_id\"]}, {\"name\": \"upload_folders_parent_links_order_inv_fk\", \"columns\": [\"folder_order\"]}], \"foreignKeys\": [{\"name\": \"upload_folders_parent_links_fk\", \"columns\": [\"folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}, {\"name\": \"upload_folders_parent_links_inv_fk\", \"columns\": [\"inv_folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_permissions_role_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"permission_order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_permissions_role_links_fk\", \"columns\": [\"permission_id\"]}, {\"name\": \"up_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"up_permissions_role_links_unique\", \"type\": \"unique\", \"columns\": [\"permission_id\", \"role_id\"]}, {\"name\": \"up_permissions_role_links_order_inv_fk\", \"columns\": [\"permission_order\"]}], \"foreignKeys\": [{\"name\": \"up_permissions_role_links_fk\", \"columns\": [\"permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users_role_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_role_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"up_users_role_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"up_users_role_links_unique\", \"type\": \"unique\", \"columns\": [\"user_id\", \"role_id\"]}, {\"name\": \"up_users_role_links_order_inv_fk\", \"columns\": [\"user_order\"]}], \"foreignKeys\": [{\"name\": \"up_users_role_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"cats_about_page_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"cat_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"product_information_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"cats_about_page_links_fk\", \"columns\": [\"cat_id\"]}, {\"name\": \"cats_about_page_links_inv_fk\", \"columns\": [\"product_information_id\"]}, {\"name\": \"cats_about_page_links_unique\", \"type\": \"unique\", \"columns\": [\"cat_id\", \"product_information_id\"]}], \"foreignKeys\": [{\"name\": \"cats_about_page_links_fk\", \"columns\": [\"cat_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"cats\", \"referencedColumns\": [\"id\"]}, {\"name\": \"cats_about_page_links_inv_fk\", \"columns\": [\"product_information_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"product_informations\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"cats_about_page_limited_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"cat_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"product_information_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"cats_about_page_limited_links_fk\", \"columns\": [\"cat_id\"]}, {\"name\": \"cats_about_page_limited_links_inv_fk\", \"columns\": [\"product_information_id\"]}, {\"name\": \"cats_about_page_limited_links_unique\", \"type\": \"unique\", \"columns\": [\"cat_id\", \"product_information_id\"]}], \"foreignKeys\": [{\"name\": \"cats_about_page_limited_links_fk\", \"columns\": [\"cat_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"cats\", \"referencedColumns\": [\"id\"]}, {\"name\": \"cats_about_page_limited_links_inv_fk\", \"columns\": [\"product_information_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"product_informations\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"cats_localizations_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"cat_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_cat_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"cat_order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"cats_localizations_links_fk\", \"columns\": [\"cat_id\"]}, {\"name\": \"cats_localizations_links_inv_fk\", \"columns\": [\"inv_cat_id\"]}, {\"name\": \"cats_localizations_links_unique\", \"type\": \"unique\", \"columns\": [\"cat_id\", \"inv_cat_id\"]}, {\"name\": \"cats_localizations_links_order_fk\", \"columns\": [\"cat_order\"]}], \"foreignKeys\": [{\"name\": \"cats_localizations_links_fk\", \"columns\": [\"cat_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"cats\", \"referencedColumns\": [\"id\"]}, {\"name\": \"cats_localizations_links_inv_fk\", \"columns\": [\"inv_cat_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"cats\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"cookie_consents_localizations_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"cookie_consent_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_cookie_consent_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"cookie_consent_order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"cookie_consents_localizations_links_fk\", \"columns\": [\"cookie_consent_id\"]}, {\"name\": \"cookie_consents_localizations_links_inv_fk\", \"columns\": [\"inv_cookie_consent_id\"]}, {\"name\": \"cookie_consents_localizations_links_unique\", \"type\": \"unique\", \"columns\": [\"cookie_consent_id\", \"inv_cookie_consent_id\"]}, {\"name\": \"cookie_consents_localizations_links_order_fk\", \"columns\": [\"cookie_consent_order\"]}], \"foreignKeys\": [{\"name\": \"cookie_consents_localizations_links_fk\", \"columns\": [\"cookie_consent_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"cookie_consents\", \"referencedColumns\": [\"id\"]}, {\"name\": \"cookie_consents_localizations_links_inv_fk\", \"columns\": [\"inv_cookie_consent_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"cookie_consents\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"menu_items_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"menu_items_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"menu_items_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"menu_items_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"menu_items_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"menu_items_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"menu_items\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"menu_items_localizations_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"menu_item_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_menu_item_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"menu_item_order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"menu_items_localizations_links_fk\", \"columns\": [\"menu_item_id\"]}, {\"name\": \"menu_items_localizations_links_inv_fk\", \"columns\": [\"inv_menu_item_id\"]}, {\"name\": \"menu_items_localizations_links_unique\", \"type\": \"unique\", \"columns\": [\"menu_item_id\", \"inv_menu_item_id\"]}, {\"name\": \"menu_items_localizations_links_order_fk\", \"columns\": [\"menu_item_order\"]}], \"foreignKeys\": [{\"name\": \"menu_items_localizations_links_fk\", \"columns\": [\"menu_item_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"menu_items\", \"referencedColumns\": [\"id\"]}, {\"name\": \"menu_items_localizations_links_inv_fk\", \"columns\": [\"inv_menu_item_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"menu_items\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"mt_mains_localizations_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"mt_main_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_mt_main_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"mt_main_order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"mt_mains_localizations_links_fk\", \"columns\": [\"mt_main_id\"]}, {\"name\": \"mt_mains_localizations_links_inv_fk\", \"columns\": [\"inv_mt_main_id\"]}, {\"name\": \"mt_mains_localizations_links_unique\", \"type\": \"unique\", \"columns\": [\"mt_main_id\", \"inv_mt_main_id\"]}, {\"name\": \"mt_mains_localizations_links_order_fk\", \"columns\": [\"mt_main_order\"]}], \"foreignKeys\": [{\"name\": \"mt_mains_localizations_links_fk\", \"columns\": [\"mt_main_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"mt_mains\", \"referencedColumns\": [\"id\"]}, {\"name\": \"mt_mains_localizations_links_inv_fk\", \"columns\": [\"inv_mt_main_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"mt_mains\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"mt_website_translators_about_page_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"mt_website_translator_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"product_information_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"mt_website_translators_about_page_links_fk\", \"columns\": [\"mt_website_translator_id\"]}, {\"name\": \"mt_website_translators_about_page_links_inv_fk\", \"columns\": [\"product_information_id\"]}, {\"name\": \"mt_website_translators_about_page_links_unique\", \"type\": \"unique\", \"columns\": [\"mt_website_translator_id\", \"product_information_id\"]}], \"foreignKeys\": [{\"name\": \"mt_website_translators_about_page_links_fk\", \"columns\": [\"mt_website_translator_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"mt_website_translators\", \"referencedColumns\": [\"id\"]}, {\"name\": \"mt_website_translators_about_page_links_inv_fk\", \"columns\": [\"product_information_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"product_informations\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"mt_website_translators_about_page_limited_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"mt_website_translator_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"product_information_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"mt_website_translators_about_page_limited_links_fk\", \"columns\": [\"mt_website_translator_id\"]}, {\"name\": \"mt_website_translators_about_page_limited_links_inv_fk\", \"columns\": [\"product_information_id\"]}, {\"name\": \"mt_website_translators_about_page_limited_links_unique\", \"type\": \"unique\", \"columns\": [\"mt_website_translator_id\", \"product_information_id\"]}], \"foreignKeys\": [{\"name\": \"mt_website_translators_about_page_limited_links_fk\", \"columns\": [\"mt_website_translator_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"mt_website_translators\", \"referencedColumns\": [\"id\"]}, {\"name\": \"mt_website_translators_about_page_limited_links_inv_fk\", \"columns\": [\"product_information_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"product_informations\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"mt_website_translators_localizations_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"mt_website_translator_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_mt_website_translator_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"mt_website_translator_order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"mt_website_translators_localizations_links_fk\", \"columns\": [\"mt_website_translator_id\"]}, {\"name\": \"mt_website_translators_localizations_links_inv_fk\", \"columns\": [\"inv_mt_website_translator_id\"]}, {\"name\": \"mt_website_translators_localizations_links_unique\", \"type\": \"unique\", \"columns\": [\"mt_website_translator_id\", \"inv_mt_website_translator_id\"]}, {\"name\": \"mt_website_translators_localizations_links_order_fk\", \"columns\": [\"mt_website_translator_order\"]}], \"foreignKeys\": [{\"name\": \"mt_website_translators_localizations_links_fk\", \"columns\": [\"mt_website_translator_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"mt_website_translators\", \"referencedColumns\": [\"id\"]}, {\"name\": \"mt_website_translators_localizations_links_inv_fk\", \"columns\": [\"inv_mt_website_translator_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"mt_website_translators\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"privacy_policies_localizations_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"privacy_policy_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_privacy_policy_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"privacy_policy_order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"privacy_policies_localizations_links_fk\", \"columns\": [\"privacy_policy_id\"]}, {\"name\": \"privacy_policies_localizations_links_inv_fk\", \"columns\": [\"inv_privacy_policy_id\"]}, {\"name\": \"privacy_policies_localizations_links_unique\", \"type\": \"unique\", \"columns\": [\"privacy_policy_id\", \"inv_privacy_policy_id\"]}, {\"name\": \"privacy_policies_localizations_links_order_fk\", \"columns\": [\"privacy_policy_order\"]}], \"foreignKeys\": [{\"name\": \"privacy_policies_localizations_links_fk\", \"columns\": [\"privacy_policy_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"privacy_policies\", \"referencedColumns\": [\"id\"]}, {\"name\": \"privacy_policies_localizations_links_inv_fk\", \"columns\": [\"inv_privacy_policy_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"privacy_policies\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"product_informations_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"product_informations_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"product_informations_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"product_informations_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"product_informations_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"product_informations_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"product_informations\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"product_informations_localizations_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"product_information_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_product_information_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"product_information_order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"product_informations_localizations_links_fk\", \"columns\": [\"product_information_id\"]}, {\"name\": \"product_informations_localizations_links_inv_fk\", \"columns\": [\"inv_product_information_id\"]}, {\"name\": \"product_informations_localizations_links_unique\", \"type\": \"unique\", \"columns\": [\"product_information_id\", \"inv_product_information_id\"]}, {\"name\": \"product_informations_localizations_links_order_fk\", \"columns\": [\"product_information_order\"]}], \"foreignKeys\": [{\"name\": \"product_informations_localizations_links_fk\", \"columns\": [\"product_information_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"product_informations\", \"referencedColumns\": [\"id\"]}, {\"name\": \"product_informations_localizations_links_inv_fk\", \"columns\": [\"inv_product_information_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"product_informations\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"terms_of_services_localizations_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"terms_of_service_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_terms_of_service_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"terms_of_service_order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"terms_of_services_localizations_links_fk\", \"columns\": [\"terms_of_service_id\"]}, {\"name\": \"terms_of_services_localizations_links_inv_fk\", \"columns\": [\"inv_terms_of_service_id\"]}, {\"name\": \"terms_of_services_localizations_links_unique\", \"type\": \"unique\", \"columns\": [\"terms_of_service_id\", \"inv_terms_of_service_id\"]}, {\"name\": \"terms_of_services_localizations_links_order_fk\", \"columns\": [\"terms_of_service_order\"]}], \"foreignKeys\": [{\"name\": \"terms_of_services_localizations_links_fk\", \"columns\": [\"terms_of_service_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"terms_of_services\", \"referencedColumns\": [\"id\"]}, {\"name\": \"terms_of_services_localizations_links_inv_fk\", \"columns\": [\"inv_terms_of_service_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"terms_of_services\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"trados_plugins_about_page_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"trados_plugin_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"product_information_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"trados_plugins_about_page_links_fk\", \"columns\": [\"trados_plugin_id\"]}, {\"name\": \"trados_plugins_about_page_links_inv_fk\", \"columns\": [\"product_information_id\"]}, {\"name\": \"trados_plugins_about_page_links_unique\", \"type\": \"unique\", \"columns\": [\"trados_plugin_id\", \"product_information_id\"]}], \"foreignKeys\": [{\"name\": \"trados_plugins_about_page_links_fk\", \"columns\": [\"trados_plugin_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"trados_plugins\", \"referencedColumns\": [\"id\"]}, {\"name\": \"trados_plugins_about_page_links_inv_fk\", \"columns\": [\"product_information_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"product_informations\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"trados_plugins_about_page_limited_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"trados_plugin_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"product_information_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"trados_plugins_about_page_limited_links_fk\", \"columns\": [\"trados_plugin_id\"]}, {\"name\": \"trados_plugins_about_page_limited_links_inv_fk\", \"columns\": [\"product_information_id\"]}, {\"name\": \"trados_plugins_about_page_limited_links_unique\", \"type\": \"unique\", \"columns\": [\"trados_plugin_id\", \"product_information_id\"]}], \"foreignKeys\": [{\"name\": \"trados_plugins_about_page_limited_links_fk\", \"columns\": [\"trados_plugin_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"trados_plugins\", \"referencedColumns\": [\"id\"]}, {\"name\": \"trados_plugins_about_page_limited_links_inv_fk\", \"columns\": [\"product_information_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"product_informations\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"trados_plugins_localizations_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"trados_plugin_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_trados_plugin_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"trados_plugin_order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"trados_plugins_localizations_links_fk\", \"columns\": [\"trados_plugin_id\"]}, {\"name\": \"trados_plugins_localizations_links_inv_fk\", \"columns\": [\"inv_trados_plugin_id\"]}, {\"name\": \"trados_plugins_localizations_links_unique\", \"type\": \"unique\", \"columns\": [\"trados_plugin_id\", \"inv_trados_plugin_id\"]}, {\"name\": \"trados_plugins_localizations_links_order_fk\", \"columns\": [\"trados_plugin_order\"]}], \"foreignKeys\": [{\"name\": \"trados_plugins_localizations_links_fk\", \"columns\": [\"trados_plugin_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"trados_plugins\", \"referencedColumns\": [\"id\"]}, {\"name\": \"trados_plugins_localizations_links_inv_fk\", \"columns\": [\"inv_trados_plugin_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"trados_plugins\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"translators_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"translators_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"translators_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"translators_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"translators_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"translators_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"translators\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"translators_localizations_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"translator_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_translator_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"translator_order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"translators_localizations_links_fk\", \"columns\": [\"translator_id\"]}, {\"name\": \"translators_localizations_links_inv_fk\", \"columns\": [\"inv_translator_id\"]}, {\"name\": \"translators_localizations_links_unique\", \"type\": \"unique\", \"columns\": [\"translator_id\", \"inv_translator_id\"]}, {\"name\": \"translators_localizations_links_order_fk\", \"columns\": [\"translator_order\"]}], \"foreignKeys\": [{\"name\": \"translators_localizations_links_fk\", \"columns\": [\"translator_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"translators\", \"referencedColumns\": [\"id\"]}, {\"name\": \"translators_localizations_links_inv_fk\", \"columns\": [\"inv_translator_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"translators\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_basic_types_dynamic_headings_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_basic_types_dynamic_headings_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"components_basic_types_dynamic_headings_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"components_basic_types_dynamic_headings_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_basic_types_dynamic_headings_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_basic_types_dynamic_headings_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_basic_types_dynamic_headings\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_sections_link_buttons_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_sections_link_buttons_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"components_sections_link_buttons_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"components_sections_link_buttons_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_sections_link_buttons_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_sections_link_buttons_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_sections_link_buttons\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_feature_list_feature_list_items_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_feature_list_feature_list_items_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"components_feature_list_feature_list_items_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"components_feature_list_feature_list_items_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_feature_list_feature_list_items_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_feature_list_feature_list_items_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_feature_list_feature_list_items\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_feature_list_feature_lists_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_feature_list_feature_lists_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"components_feature_list_feature_lists_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"components_feature_list_feature_lists_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_feature_list_feature_lists_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_feature_list_feature_lists_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_feature_list_feature_lists\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_plausible_plausible_events_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_plausible_plausible_events_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"components_plausible_plausible_events_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"components_plausible_plausible_events_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_plausible_plausible_events_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_plausible_plausible_events_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_plausible_plausible_events\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"components_universal_page_components\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"entity_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"component_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"components_universal_page_field_index\", \"type\": null, \"columns\": [\"field\"]}, {\"name\": \"components_universal_page_component_type_index\", \"type\": null, \"columns\": [\"component_type\"]}, {\"name\": \"components_universal_page_entity_fk\", \"columns\": [\"entity_id\"]}, {\"name\": \"components_universal_page_unique\", \"type\": \"unique\", \"columns\": [\"entity_id\", \"component_id\", \"field\", \"component_type\"]}], \"foreignKeys\": [{\"name\": \"components_universal_page_entity_fk\", \"columns\": [\"entity_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"components_universal_page\", \"referencedColumns\": [\"id\"]}]}]}','2023-02-07 13:46:44','932cf8d1d9ba453fc9dd3c04b512fbb7');
/*!40000 ALTER TABLE `strapi_database_schema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_migrations`
--

DROP TABLE IF EXISTS `strapi_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_migrations`
--

LOCK TABLES `strapi_migrations` WRITE;
/*!40000 ALTER TABLE `strapi_migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_webhooks`
--

DROP TABLE IF EXISTS `strapi_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_webhooks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `headers` json DEFAULT NULL,
  `events` json DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `text` longtext,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `terms_of_services_created_by_id_fk` (`created_by_id`),
  KEY `terms_of_services_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `terms_of_services_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `terms_of_services_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terms_of_services`
--

LOCK TABLES `terms_of_services` WRITE;
/*!40000 ALTER TABLE `terms_of_services` DISABLE KEYS */;
INSERT INTO `terms_of_services` VALUES (1,'<div class=\"raw-html-embed\"><divclass=\"container text-justify\"=\"\">\n<div class=\"row\">\n<div class=\"col-12 mt-3\">\n<h1>Terms of Service (Example only)</h1>\n</div></div>\n<div class=\"row\">\n<div class=\"col-12\">\n<section>\n<h2>1. General provisions</h2>\n<p>1.1. These Terms of Service (hereinafter Terms) apply to service functionality of the NLTP service as it is (hereinafter Service).</p>\n<p>1.2. Provider of the Service is: .</p>\n<p>1.3. User is a natural person who uses the Service.</p>\n<p>1.4. Use of the Service shall mean full and unconditional agreement to these Terms both on behalf of the User and on behalf of the Client for whom User acts. Persons who disagree with these Terms must not start using the Service and if started, must stop using the Service immediately.</p>\n<p>1.7. NLTP Service Provider may make changes and amendments to these Terms at any time. NLTP Service Provider shall notify Users about the changes during use of the Service and may use additional means of notification at its discretion. Client shall be considered notified if any User authorised by that Client has been notified on the changes. Continued use of the system shall mean User’s and respective Client’s consent to the proposed amendments on User’s own behalf and on behalf of the Client for whom User uses the Service. NLTP Service Provider may require that User’s express consent to the changed terms is given and may suspend provision of the Service until such consent is received.</p>\n<p>1.8. The Agreement and any dispute or claim arising out of or in connection with it or its subject matter or formation (including non-contractual disputes or claims) is governed by, and construed in accordance with, the law of the Republic of [X], without regard to its choice of law provisions. The parties irrevocably agree that the courts of the Republic of [X] have exclusive jurisdiction to settle any dispute or claim that arises out of or in connection with the Agreement or its subject matter or formation. The court of the first instance shall be the court according to NLTP Service Provider’s registered address.</p></section>\n<section>\n<h2>2. The Service</h2>\n<p>2.1. The core of the Service includes:</p>\n<div class=\"sublist\">\n<p>2.1.1. Online and automated generating of Translation from the submitted Source Text.</p>\n</div>\n<p>2.2. For the purposes of these Terms:</p>\n<div class=\"sublist\">\n<p>2.2.1. Source Text are the text files that are submitted for translation;</p>\n<p>2.2.2. Source Language is the language chosen by User as the language of the Source Text;</p>\n<p>2.2.3. Translation is a written textual translation of the Source Text produced as a result of use of the Service;</p>\n<p>2.2.4. Target Language is the language chosen by User to which the Source Text should be translated.</p>\n<p>2.2.5. Language Pair is a combination of Source Language and Target Language.</p>\n</div>\n<p>2.3. NLTP Service Provider shall accept for provision of the Service the Source Text files of the most popular formats at NLTP Service Provider’s discretion. NLTP Service Provider shall make the Translation available in the most popular formats at NLTP Service Provider’s discretion.</p>\n<p>2.4. NLTP Service Provider may offer the available Source Languages, Target Languages and Language Pairs at its discretion.</p>\n<p>2.5. While processing the Source text and the Translation for provision of the Service, NLTP Service Provider shall store them on secure servers. NLTP Service Provider shall be entitled to create and retain access logs security, statistical purposes and monitoring. Such access logs shall not contain any Source Text or Translation. However, access logs may contain metadata of API Requests such as time of the API Request and size of the transmitted Source Text.</p>\n<p>2.6. NLTP Service Provider shall delete in a non-recoverable manner the Source Text as soon as it is no longer necessary for NLTP Service Provider to provide the Service. NLTP Service Provider shall delete in a non-recoverable manner the Translation as soon as User has downloaded it immediately after they were generated. NLTP Service Provider may delete the Source Text and Translation in case of errors in provision of the Service. NLTP Service Provider may delete the Translation if it has not been downloaded for certain time, at NLTP Service Provider’s discretion. The said deletion of the files may be automated.</p>\n<p>2.7. NLTP Service Provider may deploy new versions, update functionality and make other modifications to the Service. Client and Users shall either agree to use the modified system on “as is” and “as available” basis, or shall cease using it, if not satisfied with the modified Service.</p>\n<p>2.8. NLTP Service Provider shall strive to provide the annual availability during 98% of the time for the Service that is provided for a fee. The Service is considered available if the server infrastructure and software used for provision of the Service functions properly and the interruptions in availability of the Service is not caused by the said infrastructure and software. The time used by NLTP Service Provider for planned interruptions (e.g., maintenance and updates) shall be excluded from the calculation of the availability period. NLTP Service Provider shall notify Client on the planned interruptions in availability of the Service as soon as possible and no later than one business day in advance of the planned interruption by a notification within the Service or via e-mail to Client. NLTP Service Provider shall not be liable for interruptions in availability of the Service that are caused due to interruptions or lack of internet connection or due to interruptions of an infrastructure outside NLTP Service Provider’s control.</p>\n<p>2.9. In case of scheduled limitations of the Service access NLTP Service Provider shall attempt to notify Users in advance by placing notifications within the Service, or via e-mail, otherwise.</p>\n<p>2.10. Client shall ensure proper backing up of Source Text and Translation. NLTP Service Provider makes backup copies of the software and databases used for provision of the Service, nevertheless these do not include Source Text nor Translation. The backup copies made by NLTP Service Provider are only for the purpose of minimizing of Service interruptions and for needs of NLTP Service Provider. Recovery of data from the backup copies is neither promised nor guaranteed. Neither Client nor User may request that NLTP Service Provider uses its backup copies to retrieve any data that was lost to Client or User as a result of User’s actions. NLTP Service Provider shall apply reasonable effort and utmost care to avoid loss of data. Nevertheless, NLTP Service Provider shall not be liable for data loss for any reason whatsoever.</p>\n<p>2.11. NLTP Service Provider may suspend the Service if an event of Force Majeure or otherwise outside of NLTP Service Provider’s reasonable control occurs, that renders performance of the Agreement commercially impracticable, including events resulting from actions or failure to act by Client, or if Client disputes any amount payable to NLTP Service Provider.</p>\n<p>2.12. NLTP Service Provider may discontinue the Service in part or fully upon advance notice provided to Users by placing notifications within the Service, or via e-mail, or otherwise. NLTP Service Provider shall refund to Client the fee that Client paid in advance for the period when the Service is discontinued.</p>\n<p>2.13. NLTP Service Provider may propose trial use of the Service that may be available free of charge, for limited time (trial period), with limited amount of the Service or with limited scope of the Service (functionality) or otherwise different from the specifications of the Service offered for a fee, at NLTP Service Provider’s discretion. The trial use is proposed only to Clients who have concluded the Agreement and agreed to pay the fee for use of the Service. After end of the trial period the fee is payable as provided in the applicable Subscription plan.</p>\n<p>2.14. NLTP Service Provider may make the Service available free of charge and without requirement to identify the User via the User account, with limited amount of the Service or with limited scope of the Service (functionality) or otherwise different from the specifications of the Service offered for a fee, at NLTP Service Provider’s discretion. NLTP Service Provider may cancel such use at any time.</p>\n<p>2.15. NLTP Service Provider may make the Service available to Client via Application Programming Interface (API). Client shall not make the API accessible to third parties. Client’s right to use the Service is non-transferrable.</p>\n<p>2.16. To automate availability of the Service within third-party software applications NLTP Service Provider may make available a software that permits access of the Service from the third-party software applications (hereinafter – Plug-in). The availability and specifications of the Plug-in shall be at NLTP Service Provider’s discretion. NLTP Service Provider may discontinue supply of the Plug-in and availability of the Service via the Plug-in at any time, giving a proper notice to Client in advance.</p>\n<p>2.17. NLTP Service Provider hereby grants the Client and the User a limited and non-exclusive license to install and to use the Plug-in. This license does not grant any right in the Plug-in to Client nor to User. NLTP Service Provider reserves all the Intellectual Property Rights and all other rights in the Plug-in.</p>\n<p>2.18. Client and/or User shall install the Plug-in in their computers only if they agree to the terms of use of the Plug in as provided in these Terms.</p>\n<p>2.19. The Plug-in may be used solely for the purposes NLTP Service Provider has stated when making the Plug-in available that are associated with access of the Service, and as provided in these Terms. Any other use of the Plug-in is prohibited.</p>\n<p>2.20. Copies of the Plug-in may only be made for the backup purposes as part of backing up the software and data of the computer in which the Plug-in has been installed. Such copies may only be used to restore function of the Plug-in.</p>\n<p>2.21. NLTP Service Provider may make updates of the Plug-in available at any time. It may be required that the Plug-in is updated to continue its use (i.e., earlier versions of the Plug-in may be disabled).</p>\n</section>\n<section>\n<h2>3. Permitted and Prohibited Use</h2>\n<p>3.1. Client shall use the Service for processing of its own material and shall not permit any third party to use the Service via Client’s account. </p>\n<p>3.2. It is prohibited to use the Service and the Plug-in:</p>\n<div class=\"sublist\">\n<p>3.2.1. in breach of any law or any statutory duty, in connection with a criminal offence, for any illegal, unethical, fraudulent or unauthorised purpose;</p>\n<p>3.2.2. for development and/or provision of any service similar to Service, and for development and/or improvement of any system, software or product that may be used to provide a service or functionality similar to, or competing with, the Service;</p>\n<p>3.2.3. for purposes or reselling the Service, especially if a Service provided for free is being resold, or if a Translation is resold as it is, without any substantial modification form reseller’s part. Reselling of the Translation after it has been thoroughly reviewed for correctness by a specialist translator or interpreter, or editor is considered substantial modification and therefore does not breach the provisions of this clause.</p>\n</div>\n<p>3.3. User and Client are fully liable for legality of use of the Service in their respective jurisdictions, and for receiving of any authorisations, permissions, licenses and approvals required for them to use the Service. Client is liable for the use of the Service by any Client’s User(s) as if the Service was used by Client.</p>\n<p>3.4. It is prohibited to use the Service for any Source Text:</p>\n<div class=\"sublist\">\n<p>3.4.1. that is threatening, defamatory, obscene, indecent, seditious, offensive, pornographic, abusive, liable to incite racial hatred, discriminatory, menacing, scandalous, inflammatory, blasphemous, in breach of confidence, in breach of privacy or which may cause annoyance or inconvenience; or</p>\n<p>3.4.2. for which all necessary licences and/or approvals have not been obtained, including but not limited to the authors permission to translate it; or</p>\n<p>3.4.3. which constitute or encourage conduct that would be considered a criminal offence, give rise to civil liability, or otherwise be contrary to the law of or infringe the rights of any third party, anywhere in the world; or</p>\n<p>3.4.4. which are technically harmful (including, without limitation, computer viruses, logic bombs, “Trojan horses”, worms, harmful components, corrupted data or other malicious software or harmful data); or</p>\n<p>3.4.5. which contain or disclose another person’s Personal Data without their written consent.</p>\n</div>\n<p>3.5. It is prohibited to decompile or reverse engineer the Service and/or to decompile, reverse engineer, disassemble, copy, adapt, modify any software used for provision of the Service in whole or in part, and/or circumvent any built-in protection of the Service or the software.</p>\n<p>3.6. Neither Client nor User may make any modifications to the Service or make any automated integration of the Service with any of their systems without express written permission issued by NLTP Service Provider in advance of any such activity.</p>\n</section>\n<section>\n<h2>4. Client and User Accounts</h2>\n<p>4.1. Except for case provided in clause 2.14. of these Terms, the Service is provided to Client after the Client has entered into agreement with NLTP Service Provider and has set up Client’s account. Client enters into agreement with NLTP Service Provider through setting up Client’s account and confirming Client’s agreement to these Terms and other provisions of the agreement (if applicable).</p>\n<p>4.2. Each Client has its Client’s account within the Service. The Client’s account is managed by the User who has the highest level of privileges managing Client’s account and creating User accounts for other Users (hereinafter Administrator). First User is also the Administrator and is defined when Client sets up Client’s account. An Administrator may assign other User(s) as Administrator(s) if multiple Users are enabled for the respective Client’s account. An Administrator may be cancelled by another Administrator of the same Client.</p>\n<p>4.3. Client may set up User accounts that each User uses to access and use the Service on Client’s behalf. Number of the User accounts may be limited depending on the Subscription plan applicable to the Client. Users request use of the Service on respective Client’s behalf. Number of the user accounts may be limited depending on Client’s Subscription plan. </p>\n<p>4.4. Client shall be solely responsible for keeping the Client account and User account credentials confidential and making them available only to the persons authorised by Client for use of the Service on Client’s behalf.</p>\n<p>4.5. Client assigns Users to use the Service on Client’s behalf. The third parties to whom Client makes the Service usable via API are not considered Users for the purposes of these Terms. In this case the Client is considered as User of the Service.</p>\n<p>4.6. NLTP Service Provider may reject the access to the Service for the Client who has delayed any payment for the Service. The Users trying to access the Service on behalf of such Client will be denied access to the Service and may be notified on the cause of denial.</p>\n<p>4.7. Users may notify NLTP Service Provider on faults of the Service and on suggestions regarding the Service using NLTP Service Provider’s helpline e-mail or a notifications system within Service (if available). NLTP Service Provider shall try to resolve the faults as soon as practically possible.</p>\n<p>4.8. Unless otherwise provided in these Terms, NLTP Service Provider shall communicate with Client via Client’s Superuser using the Superuser’s e-mail address provided in its account profile or other provided contact information. Any action that Client may make concerning change of terms of the Agreement within the Service, shall be made by Client’s Superuser.</p>\n</section>\n<section>\n<h2>5. Intellectual Property</h2>\n<p>5.1. Intellectual Property Rights for the purposes of these Terms shall include copyright and related rights, rights in computer products, database rights, trademarks and service marks, trade names and domain names, rights to inventions, patents, utility models, rights in designs, rights in goodwill, know-how and trade secrets, and any other intellectual property rights, anywhere in the world.</p>\n<p>5.2. No Intellectual Property Rights are transferred to the other party under these Terms. NLTP Service Provider or other respective owners or holders of the Intellectual Property Rights retain all the rights in the software, trademarks, denominations, logotypes, know-how and any other intellectual property used for provision of the Service. Neither Client nor User is granted any license for use thereof. Client and User retains the rights in the data provided by them.</p>\n<p>5.3. Client hereby acknowledges and agrees that under the Agreement Client acquires only the right to use the Service on the terms set forth in these Terms and the Agreement and does not acquire any right in the system used for provision of the Service, or the API. NLTP Service Provider and any other owner of the Intellectual Property Rights continue to own and retain all legal and beneficial right, title, and interest in and to the system used for provision of the Service, and the API, and all Intellectual Property Rights embodied therein.</p>\n<p>5.4. Client and User hereby grants to NLTP Service Provider a worldwide, perpetual, irrevocable and royalty-free right to use any results of Client’s or User’s respective assistance to NLTP Service Provider with improving or developing the System, the API or the Service, and the Intellectual Property Rights in the results of such assistance. The use of such results is at NLTP Service Provider’s discretion and without any obligation on NLTP Service Provider’s part. This provision applies to all Client’s and User’s assistance that they have provided, whether solicited by NLTP Service Provider or not.</p>\n<p>5.5. NLTP Service Provider shall not claim Intellectual Property Rights in the Source Text that Client processes using the Service, nor in the Translation resulting from use of the Service. NLTP Service Provider transfers to Client all rights into Translation insofar as these rights may exist considering that the Translation is being generated automatically and without involvement of a human acting as a translator or interpreter, or editor.</p>\n<p>5.6. Client shall procure all rights and permissions needed for processing of the Source Text, and hereby warrants that their processing using the Service shall not infringe or violate any person’s Intellectual Property Rights, nor any other right of any person.</p>\n</section>\n<section>\n<h2>6. Warranties</h2>\n<p>6.1. Client and Users use the Service, the Translation and other results of the Service and the Plug-in on “as is” and “as available” basis, without any express or implied warranties (whether they are written or oral, express or implied, arise from this Agreement, otherwise in contract, in tort, under statute or otherwise) regarding their quality, fitness for any particular purpose, absence of errors in the software or data, use of reasonable skill and care, or non-infringement or warranties otherwise implied by statute or from a trade custom. All warranties, representations, conditions and all other terms of any kind whatsoever implied by statute or common law are, to the fullest extent permitted by applicable law, excluded from the Agreement.</p>\n<p>6.2. Client and User shall abstain from using the Service, the Translation and other results of the Service, and the Plug-in if it does not meet Client’s or User’s requirements. NLTP Service Provider does not warrant or guarantee that the Service or Translation or other results of the Service, or the Plug-in will meet any or all of Client or User requirements. NLTP Service Provider does not warrant uninterrupted availability of the Service.</p>\n<p>6.3. NLTP Service Provider does not examine the Source Text before its processing regarding their suitability for being processed using the Service, other than their format and limited technical parameters at NLTP Service Provider’s discretion. Unusual use of the language in the Source Text, and/or other particularities of the Source Text may cause unavailability of the Translation or its lower-than-expected quality. The Translation is provided by means of automated translation, without review or editing by a human. NLTP Service Provider does not warrant correctness of the Translation.</p>\n<p>6.4. Each party warrants that it has the power, capacity and authority to enter into the Agreement and has the full and exclusive rights required to fulfil the Agreement. User warrants that User has the authorisation to act on behalf of the Client whom User claims to represent. User shall indemnify NLTP Service Provider in case the Client whom User claims to represent denies the authorisation. </p>\n<p>6.5. To the maximum extent permitted under applicable law, Client and User releases NLTP Service Provider, its officers, employees, suppliers and any other person from any liability for any loss or damage related to use of the Service and/or the Translation, and/or the Plug-in, and hereby waives any claims it may have against NLTP Service Provider in connection with use of the Service and/or the Translation and/or the Plug-in. NLTP Service Provider shall not be liable whether in tort (including for negligence or breach of statutory duty), contract, misrepresentation, restitution or otherwise for any loss of profits, loss of business, depletion of goodwill and/or similar losses or loss or corruption of data or information, or pure economic loss, or for any special, indirect or consequential loss, costs, damages, charges or expenses however arising under this agreement. In cases when exclusion of NLTP Service Provider’s liability may not be applied, NLTP Service Provider’s aggregate liability in contract, tort (including negligence or breach of statutory duty), misrepresentation, restitution or otherwise, arising in connection with the performance or contemplated performance of this agreement shall be limited to 100% of the fees paid by the Client to the NLTP Service Provider under the Agreement during the 12 months immediately preceding the date on which the claim arose.</p>\n<p>6.6. Client and User acknowledge and agree that NLTP Service Provider shall have no direct or indirect contractual or tortious liability to the persons to whom Client or User make available the Service or the Translation, or other results of provision of the Service, or the Plug-in and especially to Client’s or User’s customers. Client and/or User shall accept full responsibility in this regard. </p>\n</section>\n<section>\n<h2>7. Confidentiality </h2>\n<p>7.1. For purposes of these Terms the Confidential information is a commercial, technological, scientific knowledge or information of any other nature that is kept in secret and is not generally known or available to persons who usually use such information, it has actual or potential commercial value due to the fact of it being secret and the party to whom the information pertains have taken reasonable and appropriate measures to keep the information in secret. The following information shall be considered Confidential Information at all times:</p>\n<div class=\"sublist\">\n<p>7.1.1. Terms of the Agreement, except for these Terms, is NLTP Service Provider’s Confidential Information;</p>\n<p>7.1.2. Source Text and Translation is Client’s Confidential Information;</p>\n<p>7.1.3. Information that Client or User provides to NLTP Service Provider regarding usability of, or faults in, the Service is NLTP Service Provider’s Confidential Information;</p>\n<p>7.1.4. Any information acquired from NLTP Service Provider during audits carried under clause 9.4.14. of these Terms is NLTP Service Provider’s Confidential Information.</p>\n</div>\n<p>7.2. Neither party may disclose other Party’s Confidential Information or use the other party’s Confidential Information for its own benefit or for benefit of any third party. As an exception the disclosure of the information is permitted:</p>\n<div class=\"sublist\">\n<p>7.2.1. to employees, officers, representatives or advisers of the party who need to know such information for the purposes of performance of the party’s obligations or execution of the party’s rights under this Agreement. The information is provided to these employees, officers, representatives and advisers on the “need to know\" basis; and</p>\n<p>7.2.2. as required by law, a court of competent jurisdiction or any governmental or regulatory authority. The party required to make such disclosure promptly notifies and consults with the other party in advance in relation to the disclosure.</p>\n</div>\n<p>7.3. Each party shall keep other party’s Confidential Information in secret and shall take all necessary measures, including apply sufficient and efficient data protection measures and conduct efficient and continuous supervision over data mediums containing other party’s Confidential Information, to avoid the use or disclosure of other party’s Confidential Information contrary to the provisions of this Agreement, and shall protect other party’s Confidential Information with the same care as their own.</p>\n<p>7.4. NLTP Service Provider may request that each auditor (natural person) assigned under clause 9.4.14. of these Terms sign a non-disclosure undertaking with terms similar to those contained in these Terms. NLTP Service Provider may object to certain persons being assigned as auditors and may forbid their access to any NLTP Service Provider’s information. Client shall replace such auditors with others, considering reasons for NLTP Service Provider’s objections.</p>\n</section>\n<section>\n<h2>8. Personal Data Processing</h2>\n<p>8.1. For the purpose of these Terms, “Data Subject”, “Controller”, “Processor”, “Processing” and “Personal Data” have the meaning set out in the Regulation (EU) 2016/679 of the European Parliament and of the Council of 27 April 2016 on the protection of natural persons with regard to the processing of personal data and on the free movement of such data, and repealing Directive 95/46/EC (General Data Protection Regulation), hereinafter GDPR and any other laws in protection of personal data and the privacy of individuals (“Data Protection Laws”) in relation to data Processed in course of provision of the Service.</p>\n<p>8.2. NLTP Service Provider acts as independent Controller of the Personal Data that is supplied as details of Client’s or User’s account (hereinafter Profile Data). The person providing the Profile Data is liable to provide complete and truthful data as required. Profile Data so received shall be used for provision of the Service, for notification on availability of new NLTP Service Provider\'s services, for performance of other mutual obligations and to contact User or Client when necessary for the above reasons. Purpose of processing of Profile Data is provision of the Service. Legal basis for the processing is NLTP Service Provider’s obligation to perform its legal obligations under the Agreement and its statutory obligations. The Profile data shall not be transferred to any third party. The Profile Data shall be stored as long as required for performance of NLTP Service Provider’s contractual and statutory obligations. Provision of Profile Data is required to enter into contractual relationship for use of the Service. Failure to provide the Profile Data results in unavailability of the Service to the respective Client or User. Client and User have the right to request from NLTP Service Provider access to and rectification or erasure of their respective Profile Data or restriction of processing concerning Client or User respectively, or to object to Processing, insofar as it does not impede provision of the Service, or such request shall result in denial of Service to the respective Client or User. Client and User have the right to lodge a complaint with a supervisory authority – Data state inspectorate (Datu valsts inspekcija). Client may contact NLTP Service Provider’s data protection officer by writing via e-mail to <b>nltp-dpo@example.com</b>.</p>\n<p>8.3. Client Data shall mean the Personal Data of any kind or nature, that is contained in the Source Text that Users enter, import or otherwise retrieve in the computer systems used by NLTP Service Provider for provision of the Service, when using the Service. The Personal Data from the Source Text is included in Translation.</p>\n<p>8.4. Regarding Client Data, NLTP Service Provider shall act as Processor of the Client Data on behalf of Client, and Client shall act as Controller of the Client Data, and Client’s Users shall be considered persons acting on Client’s behalf. The Processing is carried out according to the terms as provided below.</p>\n<div class=\"sublist\">\n<p>8.4.1. Client hereby assigns NLTP Service Provider to store the Client Data within the computer systems used for provision of the Service, to use the Client Data for the computations required to ensure provision of the Service and to make the Client Data available for download to Client’s Users.</p>\n<p>8.4.2. NLTP Service Provider shall Process the Client Data only on documented instructions from Client. Client’s instructions regarding Processing of Client Data are given exclusively via the functionality of the Service and shall be limited with the possibilities of the Service functionality. Client hereby authorises any Client’s User to give to NLTP Service Provider any directions for Processing of Client Data within these limits.</p>\n<p>8.4.3. NLTP Service Provider shall inform Client on legal requirement to transfer Client Data to a third country or an international organisation by a law to which NLTP Service Provider is subject before such transfer, unless that law prohibits such information on important grounds of public interest.</p>\n<p>8.4.4. NLTP Service Provider shall Process Client Data for the entire duration of the Agreement, and for such time thereafter as may be necessary until all Client Data is deleted. The data shall be deleted as provided in clause 2.5. of these Terms.</p>\n<p>8.4.5. The Data Subjects whose Personal Data is processed under the Agreement include all persons whose Personal Data is contained in Client Data. </p>\n<p>8.4.6. Client assigns NLTP Service Provider to Process the Client Data as a Personal Data that does not contain any special categories of Personal Data (Article 9 of GDPR). Client shall not submit for Processing any special categories of Personal Data. If Client does so, it assumes all liability for not meeting the requirements set for Processing of the special categories of Personal Data and shall to the maximum extent indemnify NLTP Service Provider against all expenses, claims and losses related to Processing of Client Data that contains special categories of Personal Data.</p>\n<p>8.4.7. Client assigns NLTP Service Provider to process the Client Data as formal pieces of data, without regard to their actual content. NLTP Service Provider is not required to review contents of Client Data.</p>\n<p>8.4.8. NLTP Service Provider ensures that persons authorised to process the personal data on NLTP Service Provider’s behalf have committed themselves to confidentiality or are under an appropriate statutory obligation of confidentiality.</p>\n<p>8.4.9. NLTP Service Provider shall use the data protection methods that are up to date and provide adequate protection. Specific details regarding used technical means are available to Superusers upon request. By using the Service Client accepts the measures as they are and as being sufficient and acceptable for Client to perform obligations imposed on Client as Controller of the Personal Data Processing. Client may terminate the Agreement if Client finds these measures inadequate or insufficient, or if Client deems information provided by NLTP Service Provider insufficient to make the judgement. Client agrees that the right to terminate the Agreement is sole and sufficient remedy available to Client in such case. Client hereby waives any and all claims that Client may have against NLTP Service Provider in this regard.</p>\n<p>8.4.10. Client permits NLTP Service Provider to engage sub-processors of Client Data, at NLTP Service Provider’s discretion. NLTP Service Provider shall inform Client on planned engagement and change of the sub-processor 14 days in advance of the engagement or change taking effect. NLTP Service Provider shall ensure that data protection obligations resulting in the same level of the Personal Data protection as set out in these Terms shall be imposed on that sub-processor, in particular providing sufficient guarantees to implement appropriate technical and organisational measures. Where the sub-processor fails to fulfil its data protection obligations, NLTP Service Provider shall remain fully liable to Client for the performance of that sub-processor\'s obligations.</p>\n<p>8.4.11. Taking into account the nature of the processing, and as much as possible, NLTP Service Provider assists Client by appropriate technical and organisational measures for the fulfilment of the Client’s obligation to respond to requests for exercising the Data Subject\'s rights laid down in Chapter III of the GDPR. Client shall, as much as possible, use the Service functionality to obtain the required Personal Data.</p>\n<p>8.4.12. NLTP Service Provider assists the Client in ensuring compliance with the obligations pursuant to Articles 32 to 36 of the GDPR taking into account the nature of processing and the information available to NLTP Service Provider.</p>\n<p>8.4.13. Client assigns NLTP Service Provider to delete all the Client Data as soon as the Client Data is no longer required for provision of the Service. NLTP Service Provider shall also delete existing copies of Client Data at NLTP Service Provider’s disposal unless law applicable to NLTP Service Provider requires storage of the Client Data.</p>\n<p>8.4.14. NLTP Service Provider makes available to Client all information necessary to demonstrate compliance with the obligations laid down in Article 28 of GDPR and allows for and contributes to audits, including inspections, conducted by Client or another auditor mandated by Client. NLTP Service Provider may charge a fee for such audits to compensate NLTP Service Provider’s reasonable use of resources.</p>\n</div>\n<p>8.5. Client is liable for lawful Processing of all Client Data that Users submit to NLTP Service Provider for processing on Client’s behalf (i.e., while using the Service on Client’s behalf).</p>\n<p>8.6. If Client is a Processor or a sub-Processor for another Controller, then Client warrants that its instructions and actions with respect to Client Data, and appointment of NLTP Service Provider as sub-Processor, have been authorized by the ultimate Controller.</p>\n<p>8.7. Provisions of clause 2.10. of these Terms shall apply to backing up of Client Data.</p>\n</section>\n<section>\n<h2>9. Term and Termination</h2>\n<p>9.1. The Agreement is effective without limitation of term.</p>\n<p>9.2. Before start of provision of the Service and during 14 days thereafter or during the trial period, whichever is longer, Client may terminate the Agreement at Client’s discretion by providing a written notice to NLTP Service Provider or using the functionality of the Service. The termination is effective immediately. In such case of termination NLTP Service Provider shall refund the service fee that Client has paid under the terminated Agreement.</p>\n<p>9.3. Both Client and NLTP Service Provider may terminate the Agreement at any time by providing to the other a written notice. Client provides the notice to NLTP Service Provider’s support e-mail. The Agreement ends upon expiry of 30 days period following the termination notice, or at the end of the paid period of Service provision, whichever occurs first. </p>\n<p>9.4. Without affecting any other right or remedy available to it, either party may terminate the Agreement with immediate effect by giving written notice to the other party if:</p>\n<div class=\"sublist\">\n<p>9.4.1. the other party commits a material and irremediable breach of any term of the Agreement or commits a remediable breach of any term of the Agreement and fails to remedy that breach within 30 days after receiving other party’s request; or</p>\n<p>9.4.2. the other party becomes insolvent or suspends, or is likely to suspend, payment of its debts or is unable to pay its debts as they fall due or admits inability to pay its debts.</p>\n</div>\n<p>9.5. Termination of the Agreement results in immediate termination of provision of the Service and in ceasing of all NLTP Service Provider’s obligations under the Agreement, removal of Client’s account, all associated User accounts and all associated data from the Service and the computer systems used to provide the Service. Client shall take the necessary measures to download the data needed to Client on regular basis before termination of the Agreement.</p>\n<p>9.6. Any provision of these Terms concerning confidentiality of the information, liability of the parties, any intellectual property provision and any other provision, right, remedy, obligation or liability that expressly or by implication is intended to apply without limitation of term shall survive termination of the Agreement.</p>\n<p>9.7. If NLTP Service Provider terminates the Agreement without cause, NLTP Service Provider shall refund to Client the fee that Client paid in advance for the period when the Agreement is terminated. No refund is paid if NLTP Service Provider terminates the Agreement due to Client’s breach of the Agreement or these Terms or due to Client’s delay of payment, and in case Client terminates the Agreement under clause 9.3. of these Terms.</p>\n</section>\n<section>\n<h2>10. Final provisions</h2>\n<p>10.1. Statutory rights of the consumers are not limited by the terms of this Agreement.</p>\n<p>10.2. NLTP Service Provider may assign or transfer its rights and obligations in whole or in part to (i) an affiliate or (ii) any entity or person to whom NLTP Service Provider transfers the whole or part of NLTP Service Provider business.</p>\n<p>10.3. The failure of either party to enforce or to exercise any right does not constitute, and shall not be construed as, a waiver of such right.</p>\n<p>10.4. The rights and remedies provided in the Agreement are in addition to any rights or remedies provided by law.</p>\n<p>10.5. Any notice given to a party under the Agreement shall be sent by e-mail to <b>info@example.com</b> (for NLTP Service Provider) and to the e-mail address of Client’s Superuser provided to NLTP Service Provider (for Client). Any notice sent by e-mail shall be deemed to have been received at 9.00 am on the next business day according to [X], [X] time. This does not apply to serving of any documents in any legal action or other method of dispute resolution.</p></section></div></div></divclass=\"container></div><p>&nbsp;</p>','2022-06-07 12:23:02.000000','2022-10-14 11:07:31.000000',1,1,'en');
/*!40000 ALTER TABLE `terms_of_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terms_of_services_localizations_links`
--

DROP TABLE IF EXISTS `terms_of_services_localizations_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `terms_of_services_localizations_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `terms_of_service_id` int unsigned DEFAULT NULL,
  `inv_terms_of_service_id` int unsigned DEFAULT NULL,
  `terms_of_service_order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `terms_of_services_localizations_links_unique` (`terms_of_service_id`,`inv_terms_of_service_id`),
  KEY `terms_of_services_localizations_links_fk` (`terms_of_service_id`),
  KEY `terms_of_services_localizations_links_inv_fk` (`inv_terms_of_service_id`),
  KEY `terms_of_services_localizations_links_order_fk` (`terms_of_service_order`),
  CONSTRAINT `terms_of_services_localizations_links_fk` FOREIGN KEY (`terms_of_service_id`) REFERENCES `terms_of_services` (`id`) ON DELETE CASCADE,
  CONSTRAINT `terms_of_services_localizations_links_inv_fk` FOREIGN KEY (`inv_terms_of_service_id`) REFERENCES `terms_of_services` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terms_of_services_localizations_links`
--

LOCK TABLES `terms_of_services_localizations_links` WRITE;
/*!40000 ALTER TABLE `terms_of_services_localizations_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `terms_of_services_localizations_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trados_plugins`
--

DROP TABLE IF EXISTS `trados_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trados_plugins` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trados_plugins_created_by_id_fk` (`created_by_id`),
  KEY `trados_plugins_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `trados_plugins_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `trados_plugins_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trados_plugins`
--

LOCK TABLES `trados_plugins` WRITE;
/*!40000 ALTER TABLE `trados_plugins` DISABLE KEYS */;
INSERT INTO `trados_plugins` VALUES (1,'2022-09-29 11:18:21.000000','2023-02-01 16:51:03.256000',1,2,'en');
/*!40000 ALTER TABLE `trados_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trados_plugins_about_page_limited_links`
--

DROP TABLE IF EXISTS `trados_plugins_about_page_limited_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trados_plugins_about_page_limited_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `trados_plugin_id` int unsigned DEFAULT NULL,
  `product_information_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `trados_plugins_about_page_limited_links_unique` (`trados_plugin_id`,`product_information_id`),
  KEY `trados_plugins_about_page_limited_links_fk` (`trados_plugin_id`),
  KEY `trados_plugins_about_page_limited_links_inv_fk` (`product_information_id`),
  CONSTRAINT `trados_plugins_about_page_limited_links_fk` FOREIGN KEY (`trados_plugin_id`) REFERENCES `trados_plugins` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trados_plugins_about_page_limited_links_inv_fk` FOREIGN KEY (`product_information_id`) REFERENCES `product_informations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trados_plugins_about_page_limited_links`
--

LOCK TABLES `trados_plugins_about_page_limited_links` WRITE;
/*!40000 ALTER TABLE `trados_plugins_about_page_limited_links` DISABLE KEYS */;
INSERT INTO `trados_plugins_about_page_limited_links` VALUES (2,1,7);
/*!40000 ALTER TABLE `trados_plugins_about_page_limited_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trados_plugins_about_page_links`
--

DROP TABLE IF EXISTS `trados_plugins_about_page_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trados_plugins_about_page_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `trados_plugin_id` int unsigned DEFAULT NULL,
  `product_information_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `trados_plugins_about_page_links_unique` (`trados_plugin_id`,`product_information_id`),
  KEY `trados_plugins_about_page_links_fk` (`trados_plugin_id`),
  KEY `trados_plugins_about_page_links_inv_fk` (`product_information_id`),
  CONSTRAINT `trados_plugins_about_page_links_fk` FOREIGN KEY (`trados_plugin_id`) REFERENCES `trados_plugins` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trados_plugins_about_page_links_inv_fk` FOREIGN KEY (`product_information_id`) REFERENCES `product_informations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trados_plugins_about_page_links`
--

LOCK TABLES `trados_plugins_about_page_links` WRITE;
/*!40000 ALTER TABLE `trados_plugins_about_page_links` DISABLE KEYS */;
INSERT INTO `trados_plugins_about_page_links` VALUES (1,1,4);
/*!40000 ALTER TABLE `trados_plugins_about_page_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trados_plugins_localizations_links`
--

DROP TABLE IF EXISTS `trados_plugins_localizations_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trados_plugins_localizations_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `trados_plugin_id` int unsigned DEFAULT NULL,
  `inv_trados_plugin_id` int unsigned DEFAULT NULL,
  `trados_plugin_order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `trados_plugins_localizations_links_unique` (`trados_plugin_id`,`inv_trados_plugin_id`),
  KEY `trados_plugins_localizations_links_fk` (`trados_plugin_id`),
  KEY `trados_plugins_localizations_links_inv_fk` (`inv_trados_plugin_id`),
  KEY `trados_plugins_localizations_links_order_fk` (`trados_plugin_order`),
  CONSTRAINT `trados_plugins_localizations_links_fk` FOREIGN KEY (`trados_plugin_id`) REFERENCES `trados_plugins` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trados_plugins_localizations_links_inv_fk` FOREIGN KEY (`inv_trados_plugin_id`) REFERENCES `trados_plugins` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trados_plugins_localizations_links`
--

LOCK TABLES `trados_plugins_localizations_links` WRITE;
/*!40000 ALTER TABLE `trados_plugins_localizations_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `trados_plugins_localizations_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translators`
--

DROP TABLE IF EXISTS `translators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translators` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `translators_created_by_id_fk` (`created_by_id`),
  KEY `translators_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `translators_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `translators_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translators`
--

LOCK TABLES `translators` WRITE;
/*!40000 ALTER TABLE `translators` DISABLE KEYS */;
INSERT INTO `translators` VALUES (1,'2022-06-10 13:47:11.000000','2023-01-25 09:24:08.365000',1,2,'en');
/*!40000 ALTER TABLE `translators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translators_components`
--

DROP TABLE IF EXISTS `translators_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translators_components` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int unsigned DEFAULT NULL,
  `component_id` int unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translators_unique` (`entity_id`,`component_id`,`field`,`component_type`),
  KEY `translators_field_index` (`field`),
  KEY `translators_component_type_index` (`component_type`),
  KEY `translators_entity_fk` (`entity_id`),
  CONSTRAINT `translators_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `translators` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translators_components`
--

LOCK TABLES `translators_components` WRITE;
/*!40000 ALTER TABLE `translators_components` DISABLE KEYS */;
INSERT INTO `translators_components` VALUES (12,1,19,'basic-types.html','header',1),(13,1,5,'feature-list.feature-list','footer',1);
/*!40000 ALTER TABLE `translators_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translators_localizations_links`
--

DROP TABLE IF EXISTS `translators_localizations_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translators_localizations_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `translator_id` int unsigned DEFAULT NULL,
  `inv_translator_id` int unsigned DEFAULT NULL,
  `translator_order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translators_localizations_links_unique` (`translator_id`,`inv_translator_id`),
  KEY `translators_localizations_links_fk` (`translator_id`),
  KEY `translators_localizations_links_inv_fk` (`inv_translator_id`),
  KEY `translators_localizations_links_order_fk` (`translator_order`),
  CONSTRAINT `translators_localizations_links_fk` FOREIGN KEY (`translator_id`) REFERENCES `translators` (`id`) ON DELETE CASCADE,
  CONSTRAINT `translators_localizations_links_inv_fk` FOREIGN KEY (`inv_translator_id`) REFERENCES `translators` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translators_localizations_links`
--

LOCK TABLES `translators_localizations_links` WRITE;
/*!40000 ALTER TABLE `translators_localizations_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `translators_localizations_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_permissions`
--

DROP TABLE IF EXISTS `up_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  KEY `up_permissions_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=337 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_permissions`
--

LOCK TABLES `up_permissions` WRITE;
/*!40000 ALTER TABLE `up_permissions` DISABLE KEYS */;
INSERT INTO `up_permissions` VALUES (20,'api::cookie-consent.cookie-consent.find',NULL,NULL,NULL,NULL),(49,'api::privacy-policy.privacy-policy.find',NULL,NULL,NULL,NULL),(72,'api::terms-of-service.terms-of-service.find',NULL,NULL,NULL,NULL),(198,'plugin::users-permissions.auth.callback',NULL,NULL,NULL,NULL),(199,'plugin::users-permissions.auth.connect',NULL,NULL,NULL,NULL),(200,'plugin::users-permissions.auth.connect',NULL,NULL,NULL,NULL),(202,'plugin::users-permissions.auth.emailConfirmation',NULL,NULL,NULL,NULL),(204,'plugin::users-permissions.auth.forgotPassword',NULL,NULL,NULL,NULL),(206,'plugin::users-permissions.auth.register',NULL,NULL,NULL,NULL),(208,'plugin::users-permissions.auth.resetPassword',NULL,NULL,NULL,NULL),(223,'plugin::users-permissions.user.me',NULL,NULL,NULL,NULL),(224,'plugin::users-permissions.user.me',NULL,NULL,NULL,NULL),(278,'api::cat.cat.find',NULL,NULL,NULL,NULL),(286,'api::translator.translator.find',NULL,NULL,NULL,NULL),(294,'api::mt-main.mt-main.find',NULL,NULL,NULL,NULL),(306,'api::menu-item.menu-item.find',NULL,NULL,NULL,NULL),(320,'api::product-information.product-information.find',NULL,NULL,NULL,NULL),(321,'api::product-information.product-information.findOne',NULL,NULL,NULL,NULL),(327,'api::mt-website-translator.mt-website-translator.find',NULL,NULL,NULL,NULL),(336,'api::trados-plugin.trados-plugin.find',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `up_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_permissions_role_links`
--

DROP TABLE IF EXISTS `up_permissions_role_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_permissions_role_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  `permission_order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `up_permissions_role_links_unique` (`permission_id`,`role_id`),
  KEY `up_permissions_role_links_fk` (`permission_id`),
  KEY `up_permissions_role_links_inv_fk` (`role_id`),
  KEY `up_permissions_role_links_order_inv_fk` (`permission_order`),
  CONSTRAINT `up_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `up_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_permissions_role_links`
--

LOCK TABLES `up_permissions_role_links` WRITE;
/*!40000 ALTER TABLE `up_permissions_role_links` DISABLE KEYS */;
INSERT INTO `up_permissions_role_links` VALUES (30,20,2,NULL),(31,49,2,NULL),(32,72,2,NULL),(33,198,2,NULL),(34,199,2,NULL),(35,200,1,NULL),(36,202,2,NULL),(37,204,2,NULL),(38,206,2,NULL),(39,208,2,NULL),(40,223,2,NULL),(41,224,1,NULL),(42,278,2,NULL),(43,286,2,NULL),(44,294,2,NULL),(45,306,2,NULL),(46,320,2,NULL),(47,321,2,NULL),(48,327,2,NULL),(49,336,2,NULL);
/*!40000 ALTER TABLE `up_permissions_role_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_roles`
--

DROP TABLE IF EXISTS `up_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `up_roles_created_by_id_fk` (`created_by_id`),
  KEY `up_roles_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_roles`
--

LOCK TABLES `up_roles` WRITE;
/*!40000 ALTER TABLE `up_roles` DISABLE KEYS */;
INSERT INTO `up_roles` VALUES (1,'Authenticated','Default role given to authenticated user.','authenticated',NULL,NULL,NULL,NULL),(2,'Public','Default role given to unauthenticated user.','public',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `up_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_users`
--

DROP TABLE IF EXISTS `up_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `up_users_created_by_id_fk` (`created_by_id`),
  KEY `up_users_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_users`
--

LOCK TABLES `up_users` WRITE;
/*!40000 ALTER TABLE `up_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `up_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_users_role_links`
--

DROP TABLE IF EXISTS `up_users_role_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_users_role_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  `user_order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `up_users_role_links_unique` (`user_id`,`role_id`),
  KEY `up_users_role_links_fk` (`user_id`),
  KEY `up_users_role_links_inv_fk` (`role_id`),
  KEY `up_users_role_links_order_inv_fk` (`user_order`),
  CONSTRAINT `up_users_role_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `up_users_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_users_role_links`
--

LOCK TABLES `up_users_role_links` WRITE;
/*!40000 ALTER TABLE `up_users_role_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `up_users_role_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_folders`
--

DROP TABLE IF EXISTS `upload_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upload_folders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `path_id` int DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `upload_folders_path_id_index` (`path_id`),
  UNIQUE KEY `upload_folders_path_index` (`path`),
  KEY `upload_folders_created_by_id_fk` (`created_by_id`),
  KEY `upload_folders_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `upload_folders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `upload_folders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_folders`
--

LOCK TABLES `upload_folders` WRITE;
/*!40000 ALTER TABLE `upload_folders` DISABLE KEYS */;
INSERT INTO `upload_folders` VALUES (1,'test',1,'/1','2023-01-04 12:45:22.944000','2023-01-04 12:45:22.944000',2,2);
/*!40000 ALTER TABLE `upload_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_folders_parent_links`
--

DROP TABLE IF EXISTS `upload_folders_parent_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upload_folders_parent_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `folder_id` int unsigned DEFAULT NULL,
  `inv_folder_id` int unsigned DEFAULT NULL,
  `folder_order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `upload_folders_parent_links_unique` (`folder_id`,`inv_folder_id`),
  KEY `upload_folders_parent_links_fk` (`folder_id`),
  KEY `upload_folders_parent_links_inv_fk` (`inv_folder_id`),
  KEY `upload_folders_parent_links_order_inv_fk` (`folder_order`),
  CONSTRAINT `upload_folders_parent_links_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `upload_folders_parent_links_inv_fk` FOREIGN KEY (`inv_folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_folders_parent_links`
--

LOCK TABLES `upload_folders_parent_links` WRITE;
/*!40000 ALTER TABLE `upload_folders_parent_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload_folders_parent_links` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-09 14:19:59
