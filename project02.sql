-- MariaDB dump 10.19  Distrib 10.11.5-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: project02
-- ------------------------------------------------------
-- Server version	10.11.5-MariaDB-3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES
(1,'Can add car',1,'add_car'),
(2,'Can change car',1,'change_car'),
(3,'Can delete car',1,'delete_car'),
(4,'Can view car',1,'view_car'),
(5,'Can add user profile',2,'add_userprofile'),
(6,'Can change user profile',2,'change_userprofile'),
(7,'Can delete user profile',2,'delete_userprofile'),
(8,'Can view user profile',2,'view_userprofile'),
(9,'Can add page',3,'add_page'),
(10,'Can change page',3,'change_page'),
(11,'Can delete page',3,'delete_page'),
(12,'Can view page',3,'view_page'),
(13,'Can add log entry',4,'add_logentry'),
(14,'Can change log entry',4,'change_logentry'),
(15,'Can delete log entry',4,'delete_logentry'),
(16,'Can view log entry',4,'view_logentry'),
(17,'Can add permission',5,'add_permission'),
(18,'Can change permission',5,'change_permission'),
(19,'Can delete permission',5,'delete_permission'),
(20,'Can view permission',5,'view_permission'),
(21,'Can add group',6,'add_group'),
(22,'Can change group',6,'change_group'),
(23,'Can delete group',6,'delete_group'),
(24,'Can view group',6,'view_group'),
(25,'Can add user',7,'add_user'),
(26,'Can change user',7,'change_user'),
(27,'Can delete user',7,'delete_user'),
(28,'Can view user',7,'view_user'),
(29,'Can add content type',8,'add_contenttype'),
(30,'Can change content type',8,'change_contenttype'),
(31,'Can delete content type',8,'delete_contenttype'),
(32,'Can view content type',8,'view_contenttype'),
(33,'Can add session',9,'add_session'),
(34,'Can change session',9,'change_session'),
(35,'Can delete session',9,'delete_session'),
(36,'Can view session',9,'view_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES
(1,'pbkdf2_sha256$600000$OGr9wtkQRGL844oDXWkco2$dblekIGkPOEeSWWVuzI8XxmcyuKD21ACsCJOu62ambo=','2024-01-11 13:15:25.810605',0,'diki','','','dikilemayian@gmail.com',0,1,'2023-11-24 21:10:07.064421'),
(2,'pbkdf2_sha256$600000$rHw6qkkfH8jtG8gqphJi0Y$iUUAa4onmUIRHFG0saQccHBQ5Q6q5S45bNkctHPPrD4=','2023-11-27 13:03:26.063762',0,'Kane','','','kane@gmail.com',0,1,'2023-11-27 13:02:44.235090'),
(3,'pbkdf2_sha256$600000$nNFmuj4C2rqFR3aPZ8Fdwj$DMf2GuJOQYnjj/t7CG+E+j/Rf4cFWaVOvgkcZ7S0bK0=',NULL,0,'sam','','','sam@gmail.com',0,1,'2024-01-11 13:11:14.734471'),
(4,'pbkdf2_sha256$600000$CvDKLFRXeHlCc7tiJMV4tg$YUMYSxkipR9dKnbQ4pBEoCvUO2ZixIkZN5I81HBfd68=',NULL,0,'D','','','D@gmail.com',0,1,'2024-01-11 13:13:01.824087'),
(5,'pbkdf2_sha256$720000$SV6njKnfBMxqIim6coJTKW$x6AyeL01zDp3bZt6+bV721OeLr1FMh8xs3N/4dzoiGM=',NULL,0,'Natasha','','','natasha@gmail.com',0,1,'2024-01-12 12:38:08.989130');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES
(4,'admin','logentry'),
(6,'auth','group'),
(5,'auth','permission'),
(7,'auth','user'),
(8,'contenttypes','contenttype'),
(9,'sessions','session'),
(1,'travelas','car'),
(3,'travelas','page'),
(2,'travelas','userprofile');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES
(1,'contenttypes','0001_initial','2023-11-24 21:05:33.791973'),
(2,'auth','0001_initial','2023-11-24 21:05:42.757334'),
(3,'admin','0001_initial','2023-11-24 21:05:45.139420'),
(4,'admin','0002_logentry_remove_auto_add','2023-11-24 21:05:45.176327'),
(5,'admin','0003_logentry_add_action_flag_choices','2023-11-24 21:05:45.213440'),
(6,'contenttypes','0002_remove_content_type_name','2023-11-24 21:05:46.907638'),
(7,'auth','0002_alter_permission_name_max_length','2023-11-24 21:05:47.529627'),
(8,'auth','0003_alter_user_email_max_length','2023-11-24 21:05:47.831728'),
(9,'auth','0004_alter_user_username_opts','2023-11-24 21:05:47.853897'),
(10,'auth','0005_alter_user_last_login_null','2023-11-24 21:05:49.200255'),
(11,'auth','0006_require_contenttypes_0002','2023-11-24 21:05:49.218229'),
(12,'auth','0007_alter_validators_add_error_messages','2023-11-24 21:05:49.254561'),
(13,'auth','0008_alter_user_username_max_length','2023-11-24 21:05:49.560264'),
(14,'auth','0009_alter_user_last_name_max_length','2023-11-24 21:05:49.862574'),
(15,'auth','0010_alter_group_name_max_length','2023-11-24 21:05:50.247152'),
(16,'auth','0011_update_proxy_permissions','2023-11-24 21:05:50.283168'),
(17,'auth','0012_alter_user_first_name_max_length','2023-11-24 21:05:50.664115'),
(18,'sessions','0001_initial','2023-11-24 21:05:52.006862'),
(19,'travelas','0001_initial','2023-11-24 21:05:54.510839');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES
('kqjnkz3qsul0670y5bxiyn4aswkl8sce','e30:1rNuu5:kyHBYl5suihYoq7Ww_zDaop9fmyr5Qh8vZbfZpOTSxY','2024-01-25 13:15:25.162145'),
('pa7pda4jc9kp0u365c5jyjpv0gspm5yb','.eJxVjMsOwiAUBf-FtSEFLyW4dO83EO4DqRpISrsy_rtt0oVuz8yct4ppXUpcu8xxYnVRVp1-N0z0lLoDfqR6b5paXeYJ9a7og3Z9ayyv6-H-HZTUy1YTCeTgrEcUT4BhdG4YAfPAQJbOAVz2xoARFmTOQQRs5k1EQhdQfb4E3Tku:1r7bGo:EFm1cJwBwq9sfwLGjibtPFuLy0EkEi37hV05sNN6xQ8','2023-12-11 13:03:26.082173');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travelas_car`
--

DROP TABLE IF EXISTS `travelas_car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `travelas_car` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travelas_car`
--

LOCK TABLES `travelas_car` WRITE;
/*!40000 ALTER TABLE `travelas_car` DISABLE KEYS */;
INSERT INTO `travelas_car` VALUES
(2,'Ford'),
(5,'Land-Rover'),
(3,'Mercedes'),
(4,'Range-Rover'),
(9,'suzuki');
/*!40000 ALTER TABLE `travelas_car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travelas_page`
--

DROP TABLE IF EXISTS `travelas_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `travelas_page` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url` varchar(200) NOT NULL,
  `views` int(11) NOT NULL,
  `car_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `travelas_page_car_id_a91c6ea9_fk_travelas_car_id` (`car_id`),
  CONSTRAINT `travelas_page_car_id_a91c6ea9_fk_travelas_car_id` FOREIGN KEY (`car_id`) REFERENCES `travelas_car` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travelas_page`
--

LOCK TABLES `travelas_page` WRITE;
/*!40000 ALTER TABLE `travelas_page` DISABLE KEYS */;
INSERT INTO `travelas_page` VALUES
(1,'2024-Ford Ranger','https://www.ford.com/trucks/ranger/',0,2),
(2,'Ford-Mustang','https://www.ford.com/cars/mustang/',0,2),
(3,'Ford-Explorer 2024','https://www.ford.com/suvs/explorer/',0,2),
(4,'Ford-Escape','https://www.ford.com/suvs-crossovers/escape/',0,2),
(5,'G-Wagon','https://www.mbusa.com/en/vehicles/class/g-class/suv',0,3),
(6,'S-Class','https://www.mbusa.com/en/vehicles/class/s-class/sedan',0,3),
(7,'C200-Wagon','https://www.motortrend.com/reviews/2022-mercedes-benz-c200-wagon-first-drive-review/',0,3),
(8,'Mercedes-Maybach','https://www.mercedes-benz.co.in/?group=all&subgroup=see-all&view=BODYTYPE',0,3),
(9,'Discovery','https://www.landroverusa.com/discovery/discovery-sport/index.html',0,4),
(10,'Range-Rover','https://www.landroverusa.com/range-rover/range-rover/index.html',0,4),
(11,'Range-Rover-Velar','https://www.landroverusa.com/range-rover/range-rover-velar/index.html',0,4),
(12,'Range-Rover-Evoque','https://www.landroverusa.com/range-rover/range-rover-evoque/index.html',0,4),
(13,'Defender-130','https://www.landroverusa.com/defender/defender-130/index.html',0,5),
(14,'Defender-110','https://www.landroverusa.com/defender/defender-110/index.html',0,5),
(15,'Defender-90','https://www.landroverusa.com/defender/defender-90/index.html',0,5);
/*!40000 ALTER TABLE `travelas_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travelas_userprofile`
--

DROP TABLE IF EXISTS `travelas_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `travelas_userprofile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `website` varchar(200) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `travelas_userprofile_user_id_1c381fd1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travelas_userprofile`
--

LOCK TABLES `travelas_userprofile` WRITE;
/*!40000 ALTER TABLE `travelas_userprofile` DISABLE KEYS */;
INSERT INTO `travelas_userprofile` VALUES
(1,'','',1),
(2,'https://github.com','profile_images/linuxlogo.jpeg',2),
(3,'https://github.com','',3),
(4,'https://github.com','',4),
(5,'','',5);
/*!40000 ALTER TABLE `travelas_userprofile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-12 21:04:54
