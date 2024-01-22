-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: moodle
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

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
-- Table structure for table `mdl_adminpresets`
--

DROP TABLE IF EXISTS `mdl_adminpresets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_adminpresets` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `comments` longtext DEFAULT NULL,
  `site` varchar(255) NOT NULL DEFAULT '',
  `author` varchar(255) DEFAULT NULL,
  `moodleversion` varchar(20) NOT NULL DEFAULT '',
  `moodlerelease` varchar(255) NOT NULL DEFAULT '',
  `iscore` tinyint(1) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timeimported` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Table to store presets data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_adminpresets`
--

LOCK TABLES `mdl_adminpresets` WRITE;
/*!40000 ALTER TABLE `mdl_adminpresets` DISABLE KEYS */;
INSERT INTO `mdl_adminpresets` VALUES (1,0,'Starter','Moodle with all of the most popular features, including Assignment, Feedback, Forum, H5P, Quiz and Completion tracking.','http://127.0.0.1','','','',1,1705738666,0),(2,0,'Full','All the Starter features plus External (LTI) tool, SCORM, Workshop, Analytics, Badges, Competencies, Learning plans and lots more.','http://127.0.0.1','','','',2,1705738668,0);
/*!40000 ALTER TABLE `mdl_adminpresets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_adminpresets_app`
--

DROP TABLE IF EXISTS `mdl_adminpresets_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_adminpresets_app` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `adminpresetid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `time` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_admiapp_adm_ix` (`adminpresetid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Applied presets';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_adminpresets_app`
--

LOCK TABLES `mdl_adminpresets_app` WRITE;
/*!40000 ALTER TABLE `mdl_adminpresets_app` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_adminpresets_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_adminpresets_app_it`
--

DROP TABLE IF EXISTS `mdl_adminpresets_app_it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_adminpresets_app_it` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `adminpresetapplyid` bigint(10) NOT NULL,
  `configlogid` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_admiappit_con_ix` (`configlogid`),
  KEY `mdl_admiappit_adm_ix` (`adminpresetapplyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Admin presets applied items. To maintain the relation with c';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_adminpresets_app_it`
--

LOCK TABLES `mdl_adminpresets_app_it` WRITE;
/*!40000 ALTER TABLE `mdl_adminpresets_app_it` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_adminpresets_app_it` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_adminpresets_app_it_a`
--

DROP TABLE IF EXISTS `mdl_adminpresets_app_it_a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_adminpresets_app_it_a` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `adminpresetapplyid` bigint(10) NOT NULL,
  `configlogid` bigint(10) NOT NULL,
  `itemname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_admiappita_con_ix` (`configlogid`),
  KEY `mdl_admiappita_adm_ix` (`adminpresetapplyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Attributes of the applied items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_adminpresets_app_it_a`
--

LOCK TABLES `mdl_adminpresets_app_it_a` WRITE;
/*!40000 ALTER TABLE `mdl_adminpresets_app_it_a` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_adminpresets_app_it_a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_adminpresets_app_plug`
--

DROP TABLE IF EXISTS `mdl_adminpresets_app_plug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_adminpresets_app_plug` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `adminpresetapplyid` bigint(10) NOT NULL,
  `plugin` varchar(100) DEFAULT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `value` smallint(4) NOT NULL DEFAULT 0,
  `oldvalue` smallint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_admiappplug_adm_ix` (`adminpresetapplyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Admin presets plugins applied';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_adminpresets_app_plug`
--

LOCK TABLES `mdl_adminpresets_app_plug` WRITE;
/*!40000 ALTER TABLE `mdl_adminpresets_app_plug` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_adminpresets_app_plug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_adminpresets_it`
--

DROP TABLE IF EXISTS `mdl_adminpresets_it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_adminpresets_it` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `adminpresetid` bigint(10) NOT NULL,
  `plugin` varchar(100) DEFAULT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `value` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_admiit_adm_ix` (`adminpresetid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Table to store settings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_adminpresets_it`
--

LOCK TABLES `mdl_adminpresets_it` WRITE;
/*!40000 ALTER TABLE `mdl_adminpresets_it` DISABLE KEYS */;
INSERT INTO `mdl_adminpresets_it` VALUES (1,1,'none','usecomments','0'),(2,1,'none','usetags','0'),(3,1,'none','enablenotes','0'),(4,1,'none','enableblogs','0'),(5,1,'none','enablebadges','0'),(6,1,'none','enableanalytics','0'),(7,1,'core_competency','enabled','0'),(8,1,'core_competency','pushcourseratingstouserplans','0'),(9,1,'tool_dataprivacy','showdataretentionsummary','0'),(10,1,'none','forum_maxattachments','3'),(11,1,'none','guestloginbutton','0'),(12,1,'none','activitychoosertabmode','4'),(13,2,'none','usecomments','1'),(14,2,'none','usetags','1'),(15,2,'none','enablenotes','1'),(16,2,'none','enableblogs','1'),(17,2,'none','enablebadges','1'),(18,2,'none','enableanalytics','1'),(19,2,'core_competency','enabled','1'),(20,2,'core_competency','pushcourseratingstouserplans','1'),(21,2,'tool_dataprivacy','showdataretentionsummary','1'),(22,2,'none','forum_maxattachments','9'),(23,2,'none','guestloginbutton','1'),(24,2,'none','activitychoosertabmode','3');
/*!40000 ALTER TABLE `mdl_adminpresets_it` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_adminpresets_it_a`
--

DROP TABLE IF EXISTS `mdl_adminpresets_it_a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_adminpresets_it_a` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `itemid` bigint(10) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `value` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_admiita_ite_ix` (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Admin presets items attributes. For settings with attributes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_adminpresets_it_a`
--

LOCK TABLES `mdl_adminpresets_it_a` WRITE;
/*!40000 ALTER TABLE `mdl_adminpresets_it_a` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_adminpresets_it_a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_adminpresets_plug`
--

DROP TABLE IF EXISTS `mdl_adminpresets_plug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_adminpresets_plug` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `adminpresetid` bigint(10) NOT NULL,
  `plugin` varchar(100) DEFAULT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `enabled` smallint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_admiplug_adm_ix` (`adminpresetid`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Admin presets plugins status, to store information about whe';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_adminpresets_plug`
--

LOCK TABLES `mdl_adminpresets_plug` WRITE;
/*!40000 ALTER TABLE `mdl_adminpresets_plug` DISABLE KEYS */;
INSERT INTO `mdl_adminpresets_plug` VALUES (1,1,'mod','chat',0),(2,1,'mod','data',0),(3,1,'mod','lti',0),(4,1,'mod','imscp',0),(5,1,'mod','lesson',0),(6,1,'mod','scorm',0),(7,1,'mod','survey',0),(8,1,'mod','wiki',0),(9,1,'mod','workshop',0),(10,1,'availability','grouping',0),(11,1,'availability','profile',0),(12,1,'block','activity_modules',0),(13,1,'block','blog_menu',0),(14,1,'block','blog_tags',0),(15,1,'block','comments',0),(16,1,'block','completionstatus',0),(17,1,'block','course_summary',0),(18,1,'block','course_list',0),(19,1,'block','tag_flickr',0),(20,1,'block','globalsearch',0),(21,1,'block','badges',0),(22,1,'block','lp',0),(23,1,'block','myprofile',0),(24,1,'block','login',0),(25,1,'block','site_main_menu',0),(26,1,'block','mentees',0),(27,1,'block','mnet_hosts',0),(28,1,'block','private_files',0),(29,1,'block','blog_recent',0),(30,1,'block','rss_client',0),(31,1,'block','search_forums',0),(32,1,'block','section_links',0),(33,1,'block','selfcompletion',0),(34,1,'block','social_activities',0),(35,1,'block','tags',0),(36,1,'block','tag_youtube',0),(37,1,'block','feedback',0),(38,1,'block','online_users',0),(39,1,'block','recentlyaccessedcourses',0),(40,1,'block','starredcourses',0),(41,1,'format','social',0),(42,1,'dataformat','json',0),(43,1,'enrol','cohort',0),(44,1,'enrol','guest',0),(45,1,'filter','mathjaxloader',-9999),(46,1,'filter','activitynames',-9999),(47,1,'qbehaviour','adaptivenopenalty',0),(48,1,'qbehaviour','deferredcbm',0),(49,1,'qbehaviour','immediatecbm',0),(50,1,'qtype','calculated',0),(51,1,'qtype','calculatedmulti',0),(52,1,'qtype','calculatedsimple',0),(53,1,'qtype','ddmarker',0),(54,1,'qtype','ddimageortext',0),(55,1,'qtype','multianswer',0),(56,1,'qtype','numerical',0),(57,1,'qtype','randomsamatch',0),(58,1,'repository','local',0),(59,1,'repository','url',0),(60,1,'repository','wikimedia',0),(61,2,'mod','chat',1),(62,2,'mod','data',1),(63,2,'mod','lti',1),(64,2,'mod','imscp',1),(65,2,'mod','lesson',1),(66,2,'mod','scorm',1),(67,2,'mod','survey',1),(68,2,'mod','wiki',1),(69,2,'mod','workshop',1),(70,2,'availability','grouping',1),(71,2,'availability','profile',1),(72,2,'block','activity_modules',1),(73,2,'block','blog_menu',1),(74,2,'block','blog_tags',1),(75,2,'block','comments',1),(76,2,'block','completionstatus',1),(77,2,'block','course_list',1),(78,2,'block','tag_flickr',1),(79,2,'block','globalsearch',1),(80,2,'block','badges',1),(81,2,'block','lp',1),(82,2,'block','myprofile',1),(83,2,'block','login',1),(84,2,'block','site_main_menu',1),(85,2,'block','mentees',1),(86,2,'block','mnet_hosts',1),(87,2,'block','private_files',1),(88,2,'block','blog_recent',1),(89,2,'block','search_forums',1),(90,2,'block','section_links',1),(91,2,'block','social_activities',1),(92,2,'block','tags',1),(93,2,'block','online_users',1),(94,2,'block','recentlyaccessedcourses',1),(95,2,'block','starredcourses',1),(96,2,'format','social',1),(97,2,'dataformat','json',1),(98,2,'enrol','cohort',1),(99,2,'enrol','guest',1),(100,2,'filter','mathjaxloader',1),(101,2,'filter','activitynames',1),(102,2,'qbehaviour','adaptivenopenalty',1),(103,2,'qbehaviour','deferredcbm',1),(104,2,'qbehaviour','immediatecbm',1),(105,2,'qtype','calculated',1),(106,2,'qtype','calculatedmulti',1),(107,2,'qtype','calculatedsimple',1),(108,2,'qtype','ddmarker',1),(109,2,'qtype','ddimageortext',1),(110,2,'qtype','multianswer',1),(111,2,'qtype','numerical',1),(112,2,'qtype','randomsamatch',1),(113,2,'repository','local',1),(114,2,'repository','url',1),(115,2,'repository','wikimedia',1);
/*!40000 ALTER TABLE `mdl_adminpresets_plug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_analytics_indicator_calc`
--

DROP TABLE IF EXISTS `mdl_analytics_indicator_calc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_analytics_indicator_calc` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `starttime` bigint(10) NOT NULL,
  `endtime` bigint(10) NOT NULL,
  `contextid` bigint(10) NOT NULL,
  `sampleorigin` varchar(255) NOT NULL DEFAULT '',
  `sampleid` bigint(10) NOT NULL,
  `indicator` varchar(255) NOT NULL DEFAULT '',
  `value` decimal(10,2) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_analindicalc_staendcon_ix` (`starttime`,`endtime`,`contextid`),
  KEY `mdl_analindicalc_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stored indicator calculations';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_analytics_indicator_calc`
--

LOCK TABLES `mdl_analytics_indicator_calc` WRITE;
/*!40000 ALTER TABLE `mdl_analytics_indicator_calc` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_analytics_indicator_calc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_analytics_models`
--

DROP TABLE IF EXISTS `mdl_analytics_models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_analytics_models` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `trained` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(1333) DEFAULT NULL,
  `target` varchar(255) NOT NULL DEFAULT '',
  `indicators` longtext NOT NULL,
  `timesplitting` varchar(255) DEFAULT NULL,
  `predictionsprocessor` varchar(255) DEFAULT NULL,
  `version` bigint(10) NOT NULL,
  `contextids` longtext DEFAULT NULL,
  `timecreated` bigint(10) DEFAULT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_analmode_enatra_ix` (`enabled`,`trained`),
  KEY `mdl_analmode_use_ix` (`usermodified`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Analytic models.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_analytics_models`
--

LOCK TABLES `mdl_analytics_models` WRITE;
/*!40000 ALTER TABLE `mdl_analytics_models` DISABLE KEYS */;
INSERT INTO `mdl_analytics_models` VALUES (1,0,0,NULL,'\\core_course\\analytics\\target\\course_dropout','[\"\\\\core\\\\analytics\\\\indicator\\\\any_access_after_end\",\"\\\\core\\\\analytics\\\\indicator\\\\any_access_before_start\",\"\\\\core\\\\analytics\\\\indicator\\\\any_write_action_in_course\",\"\\\\core\\\\analytics\\\\indicator\\\\read_actions\",\"\\\\core_course\\\\analytics\\\\indicator\\\\completion_enabled\",\"\\\\core_course\\\\analytics\\\\indicator\\\\potential_cognitive_depth\",\"\\\\core_course\\\\analytics\\\\indicator\\\\potential_social_breadth\",\"\\\\mod_assign\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_assign\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_book\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_book\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_chat\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_chat\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_choice\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_choice\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_data\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_data\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_feedback\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_feedback\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_folder\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_folder\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_forum\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_forum\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_glossary\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_glossary\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_imscp\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_imscp\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_label\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_label\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_lesson\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_lesson\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_lti\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_lti\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_page\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_page\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_quiz\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_quiz\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_resource\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_resource\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_scorm\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_scorm\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_survey\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_survey\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_url\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_url\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_wiki\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_wiki\\\\analytics\\\\indicator\\\\social_breadth\",\"\\\\mod_workshop\\\\analytics\\\\indicator\\\\cognitive_depth\",\"\\\\mod_workshop\\\\analytics\\\\indicator\\\\social_breadth\"]',NULL,NULL,1705738692,NULL,1705738692,1705738692,0),(2,1,1,NULL,'\\core_course\\analytics\\target\\no_teaching','[\"\\\\core_course\\\\analytics\\\\indicator\\\\no_teacher\",\"\\\\core_course\\\\analytics\\\\indicator\\\\no_student\"]','\\core\\analytics\\time_splitting\\single_range',NULL,1705738692,NULL,1705738692,1705738692,0),(3,1,1,NULL,'\\core_user\\analytics\\target\\upcoming_activities_due','[\"\\\\core_course\\\\analytics\\\\indicator\\\\activities_due\"]','\\core\\analytics\\time_splitting\\upcoming_week',NULL,1705738692,NULL,1705738692,1705738692,0),(4,1,1,NULL,'\\core_course\\analytics\\target\\no_access_since_course_start','[\"\\\\core\\\\analytics\\\\indicator\\\\any_course_access\"]','\\core\\analytics\\time_splitting\\one_month_after_start',NULL,1705738692,NULL,1705738692,1705738692,0),(5,1,1,NULL,'\\core_course\\analytics\\target\\no_recent_accesses','[\"\\\\core\\\\analytics\\\\indicator\\\\any_course_access\"]','\\core\\analytics\\time_splitting\\past_month',NULL,1705738692,NULL,1705738692,1705738692,0);
/*!40000 ALTER TABLE `mdl_analytics_models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_analytics_models_log`
--

DROP TABLE IF EXISTS `mdl_analytics_models_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_analytics_models_log` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `modelid` bigint(10) NOT NULL,
  `version` bigint(10) NOT NULL,
  `evaluationmode` varchar(50) NOT NULL DEFAULT '',
  `target` varchar(255) NOT NULL DEFAULT '',
  `indicators` longtext NOT NULL,
  `timesplitting` varchar(255) DEFAULT NULL,
  `score` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `info` longtext DEFAULT NULL,
  `dir` longtext NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_analmodelog_mod_ix` (`modelid`),
  KEY `mdl_analmodelog_use_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Analytic models changes during evaluation.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_analytics_models_log`
--

LOCK TABLES `mdl_analytics_models_log` WRITE;
/*!40000 ALTER TABLE `mdl_analytics_models_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_analytics_models_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_analytics_predict_samples`
--

DROP TABLE IF EXISTS `mdl_analytics_predict_samples`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_analytics_predict_samples` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `modelid` bigint(10) NOT NULL,
  `analysableid` bigint(10) NOT NULL,
  `timesplitting` varchar(255) NOT NULL DEFAULT '',
  `rangeindex` bigint(10) NOT NULL,
  `sampleids` longtext NOT NULL,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_analpredsamp_modanatimr_ix` (`modelid`,`analysableid`,`timesplitting`,`rangeindex`),
  KEY `mdl_analpredsamp_mod_ix` (`modelid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Samples already used for predictions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_analytics_predict_samples`
--

LOCK TABLES `mdl_analytics_predict_samples` WRITE;
/*!40000 ALTER TABLE `mdl_analytics_predict_samples` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_analytics_predict_samples` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_analytics_prediction_actions`
--

DROP TABLE IF EXISTS `mdl_analytics_prediction_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_analytics_prediction_actions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `predictionid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `actionname` varchar(255) NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_analpredacti_preuseact_ix` (`predictionid`,`userid`,`actionname`),
  KEY `mdl_analpredacti_pre_ix` (`predictionid`),
  KEY `mdl_analpredacti_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Register of user actions over predictions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_analytics_prediction_actions`
--

LOCK TABLES `mdl_analytics_prediction_actions` WRITE;
/*!40000 ALTER TABLE `mdl_analytics_prediction_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_analytics_prediction_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_analytics_predictions`
--

DROP TABLE IF EXISTS `mdl_analytics_predictions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_analytics_predictions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `modelid` bigint(10) NOT NULL,
  `contextid` bigint(10) NOT NULL,
  `sampleid` bigint(10) NOT NULL,
  `rangeindex` mediumint(5) NOT NULL,
  `prediction` decimal(10,2) NOT NULL,
  `predictionscore` decimal(10,5) NOT NULL,
  `calculations` longtext NOT NULL,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timestart` bigint(10) DEFAULT NULL,
  `timeend` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_analpred_modcon_ix` (`modelid`,`contextid`),
  KEY `mdl_analpred_mod_ix` (`modelid`),
  KEY `mdl_analpred_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Predictions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_analytics_predictions`
--

LOCK TABLES `mdl_analytics_predictions` WRITE;
/*!40000 ALTER TABLE `mdl_analytics_predictions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_analytics_predictions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_analytics_train_samples`
--

DROP TABLE IF EXISTS `mdl_analytics_train_samples`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_analytics_train_samples` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `modelid` bigint(10) NOT NULL,
  `analysableid` bigint(10) NOT NULL,
  `timesplitting` varchar(255) NOT NULL DEFAULT '',
  `sampleids` longtext NOT NULL,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_analtraisamp_modanatim_ix` (`modelid`,`analysableid`,`timesplitting`),
  KEY `mdl_analtraisamp_mod_ix` (`modelid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Samples used for training';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_analytics_train_samples`
--

LOCK TABLES `mdl_analytics_train_samples` WRITE;
/*!40000 ALTER TABLE `mdl_analytics_train_samples` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_analytics_train_samples` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_analytics_used_analysables`
--

DROP TABLE IF EXISTS `mdl_analytics_used_analysables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_analytics_used_analysables` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `modelid` bigint(10) NOT NULL,
  `action` varchar(50) NOT NULL DEFAULT '',
  `analysableid` bigint(10) NOT NULL,
  `firstanalysis` bigint(10) NOT NULL,
  `timeanalysed` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_analusedanal_modact_ix` (`modelid`,`action`),
  KEY `mdl_analusedanal_ana_ix` (`analysableid`),
  KEY `mdl_analusedanal_mod_ix` (`modelid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='List of analysables used by each model';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_analytics_used_analysables`
--

LOCK TABLES `mdl_analytics_used_analysables` WRITE;
/*!40000 ALTER TABLE `mdl_analytics_used_analysables` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_analytics_used_analysables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_analytics_used_files`
--

DROP TABLE IF EXISTS `mdl_analytics_used_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_analytics_used_files` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `modelid` bigint(10) NOT NULL DEFAULT 0,
  `fileid` bigint(10) NOT NULL DEFAULT 0,
  `action` varchar(50) NOT NULL DEFAULT '',
  `time` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_analusedfile_modactfil_ix` (`modelid`,`action`,`fileid`),
  KEY `mdl_analusedfile_mod_ix` (`modelid`),
  KEY `mdl_analusedfile_fil_ix` (`fileid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Files that have already been used for training and predictio';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_analytics_used_files`
--

LOCK TABLES `mdl_analytics_used_files` WRITE;
/*!40000 ALTER TABLE `mdl_analytics_used_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_analytics_used_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assign`
--

DROP TABLE IF EXISTS `mdl_assign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_assign` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` longtext NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `alwaysshowdescription` tinyint(2) NOT NULL DEFAULT 0,
  `nosubmissions` tinyint(2) NOT NULL DEFAULT 0,
  `submissiondrafts` tinyint(2) NOT NULL DEFAULT 0,
  `sendnotifications` tinyint(2) NOT NULL DEFAULT 0,
  `sendlatenotifications` tinyint(2) NOT NULL DEFAULT 0,
  `duedate` bigint(10) NOT NULL DEFAULT 0,
  `allowsubmissionsfromdate` bigint(10) NOT NULL DEFAULT 0,
  `grade` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `requiresubmissionstatement` tinyint(2) NOT NULL DEFAULT 0,
  `completionsubmit` tinyint(2) NOT NULL DEFAULT 0,
  `cutoffdate` bigint(10) NOT NULL DEFAULT 0,
  `gradingduedate` bigint(10) NOT NULL DEFAULT 0,
  `teamsubmission` tinyint(2) NOT NULL DEFAULT 0,
  `requireallteammemberssubmit` tinyint(2) NOT NULL DEFAULT 0,
  `teamsubmissiongroupingid` bigint(10) NOT NULL DEFAULT 0,
  `blindmarking` tinyint(2) NOT NULL DEFAULT 0,
  `hidegrader` tinyint(2) NOT NULL DEFAULT 0,
  `revealidentities` tinyint(2) NOT NULL DEFAULT 0,
  `attemptreopenmethod` varchar(10) NOT NULL DEFAULT 'none',
  `maxattempts` mediumint(6) NOT NULL DEFAULT -1,
  `markingworkflow` tinyint(2) NOT NULL DEFAULT 0,
  `markingallocation` tinyint(2) NOT NULL DEFAULT 0,
  `sendstudentnotifications` tinyint(2) NOT NULL DEFAULT 1,
  `preventsubmissionnotingroup` tinyint(2) NOT NULL DEFAULT 0,
  `activity` longtext DEFAULT NULL,
  `activityformat` smallint(4) NOT NULL DEFAULT 0,
  `timelimit` bigint(10) NOT NULL DEFAULT 0,
  `submissionattachments` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_assi_cou_ix` (`course`),
  KEY `mdl_assi_tea_ix` (`teamsubmissiongroupingid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='This table saves information about an instance of mod_assign';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assign`
--

LOCK TABLES `mdl_assign` WRITE;
/*!40000 ALTER TABLE `mdl_assign` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assign_grades`
--

DROP TABLE IF EXISTS `mdl_assign_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_assign_grades` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `grader` bigint(10) NOT NULL DEFAULT 0,
  `grade` decimal(10,5) DEFAULT 0.00000,
  `attemptnumber` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_assigrad_assuseatt_uix` (`assignment`,`userid`,`attemptnumber`),
  KEY `mdl_assigrad_use_ix` (`userid`),
  KEY `mdl_assigrad_att_ix` (`attemptnumber`),
  KEY `mdl_assigrad_ass_ix` (`assignment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Grading information about a single assignment submission.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assign_grades`
--

LOCK TABLES `mdl_assign_grades` WRITE;
/*!40000 ALTER TABLE `mdl_assign_grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assign_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assign_overrides`
--

DROP TABLE IF EXISTS `mdl_assign_overrides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_assign_overrides` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignid` bigint(10) NOT NULL DEFAULT 0,
  `groupid` bigint(10) DEFAULT NULL,
  `userid` bigint(10) DEFAULT NULL,
  `sortorder` bigint(10) DEFAULT NULL,
  `allowsubmissionsfromdate` bigint(10) DEFAULT NULL,
  `duedate` bigint(10) DEFAULT NULL,
  `cutoffdate` bigint(10) DEFAULT NULL,
  `timelimit` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_assiover_ass_ix` (`assignid`),
  KEY `mdl_assiover_gro_ix` (`groupid`),
  KEY `mdl_assiover_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='The overrides to assign settings.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assign_overrides`
--

LOCK TABLES `mdl_assign_overrides` WRITE;
/*!40000 ALTER TABLE `mdl_assign_overrides` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assign_overrides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assign_plugin_config`
--

DROP TABLE IF EXISTS `mdl_assign_plugin_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_assign_plugin_config` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT 0,
  `plugin` varchar(28) NOT NULL DEFAULT '',
  `subtype` varchar(28) NOT NULL DEFAULT '',
  `name` varchar(28) NOT NULL DEFAULT '',
  `value` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_assiplugconf_plu_ix` (`plugin`),
  KEY `mdl_assiplugconf_sub_ix` (`subtype`),
  KEY `mdl_assiplugconf_nam_ix` (`name`),
  KEY `mdl_assiplugconf_ass_ix` (`assignment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Config data for an instance of a plugin in an assignment.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assign_plugin_config`
--

LOCK TABLES `mdl_assign_plugin_config` WRITE;
/*!40000 ALTER TABLE `mdl_assign_plugin_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assign_plugin_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assign_submission`
--

DROP TABLE IF EXISTS `mdl_assign_submission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_assign_submission` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `timestarted` bigint(10) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `groupid` bigint(10) NOT NULL DEFAULT 0,
  `attemptnumber` bigint(10) NOT NULL DEFAULT 0,
  `latest` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_assisubm_assusegroatt_uix` (`assignment`,`userid`,`groupid`,`attemptnumber`),
  KEY `mdl_assisubm_use_ix` (`userid`),
  KEY `mdl_assisubm_att_ix` (`attemptnumber`),
  KEY `mdl_assisubm_assusegrolat_ix` (`assignment`,`userid`,`groupid`,`latest`),
  KEY `mdl_assisubm_ass_ix` (`assignment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='This table keeps information about student interactions with';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assign_submission`
--

LOCK TABLES `mdl_assign_submission` WRITE;
/*!40000 ALTER TABLE `mdl_assign_submission` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assign_submission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assign_user_flags`
--

DROP TABLE IF EXISTS `mdl_assign_user_flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_assign_user_flags` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `assignment` bigint(10) NOT NULL DEFAULT 0,
  `locked` bigint(10) NOT NULL DEFAULT 0,
  `mailed` smallint(4) NOT NULL DEFAULT 0,
  `extensionduedate` bigint(10) NOT NULL DEFAULT 0,
  `workflowstate` varchar(20) DEFAULT NULL,
  `allocatedmarker` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_assiuserflag_mai_ix` (`mailed`),
  KEY `mdl_assiuserflag_use_ix` (`userid`),
  KEY `mdl_assiuserflag_ass_ix` (`assignment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='List of flags that can be set for a single user in a single ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assign_user_flags`
--

LOCK TABLES `mdl_assign_user_flags` WRITE;
/*!40000 ALTER TABLE `mdl_assign_user_flags` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assign_user_flags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assign_user_mapping`
--

DROP TABLE IF EXISTS `mdl_assign_user_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_assign_user_mapping` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_assiusermapp_ass_ix` (`assignment`),
  KEY `mdl_assiusermapp_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Map an assignment specific id number to a user';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assign_user_mapping`
--

LOCK TABLES `mdl_assign_user_mapping` WRITE;
/*!40000 ALTER TABLE `mdl_assign_user_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assign_user_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignfeedback_comments`
--

DROP TABLE IF EXISTS `mdl_assignfeedback_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_assignfeedback_comments` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT 0,
  `grade` bigint(10) NOT NULL DEFAULT 0,
  `commenttext` longtext DEFAULT NULL,
  `commentformat` smallint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_assicomm_ass_ix` (`assignment`),
  KEY `mdl_assicomm_gra_ix` (`grade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Text feedback for submitted assignments';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignfeedback_comments`
--

LOCK TABLES `mdl_assignfeedback_comments` WRITE;
/*!40000 ALTER TABLE `mdl_assignfeedback_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignfeedback_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignfeedback_editpdf_annot`
--

DROP TABLE IF EXISTS `mdl_assignfeedback_editpdf_annot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_assignfeedback_editpdf_annot` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `gradeid` bigint(10) NOT NULL DEFAULT 0,
  `pageno` bigint(10) NOT NULL DEFAULT 0,
  `x` bigint(10) DEFAULT 0,
  `y` bigint(10) DEFAULT 0,
  `endx` bigint(10) DEFAULT 0,
  `endy` bigint(10) DEFAULT 0,
  `path` longtext DEFAULT NULL,
  `type` varchar(10) DEFAULT 'line',
  `colour` varchar(10) DEFAULT 'black',
  `draft` tinyint(2) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `mdl_assieditanno_grapag_ix` (`gradeid`,`pageno`),
  KEY `mdl_assieditanno_gra_ix` (`gradeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='stores annotations added to pdfs submitted by students';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignfeedback_editpdf_annot`
--

LOCK TABLES `mdl_assignfeedback_editpdf_annot` WRITE;
/*!40000 ALTER TABLE `mdl_assignfeedback_editpdf_annot` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignfeedback_editpdf_annot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignfeedback_editpdf_cmnt`
--

DROP TABLE IF EXISTS `mdl_assignfeedback_editpdf_cmnt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_assignfeedback_editpdf_cmnt` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `gradeid` bigint(10) NOT NULL DEFAULT 0,
  `x` bigint(10) DEFAULT 0,
  `y` bigint(10) DEFAULT 0,
  `width` bigint(10) DEFAULT 120,
  `rawtext` longtext DEFAULT NULL,
  `pageno` bigint(10) NOT NULL DEFAULT 0,
  `colour` varchar(10) DEFAULT 'black',
  `draft` tinyint(2) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `mdl_assieditcmnt_grapag_ix` (`gradeid`,`pageno`),
  KEY `mdl_assieditcmnt_gra_ix` (`gradeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores comments added to pdfs';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignfeedback_editpdf_cmnt`
--

LOCK TABLES `mdl_assignfeedback_editpdf_cmnt` WRITE;
/*!40000 ALTER TABLE `mdl_assignfeedback_editpdf_cmnt` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignfeedback_editpdf_cmnt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignfeedback_editpdf_quick`
--

DROP TABLE IF EXISTS `mdl_assignfeedback_editpdf_quick`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_assignfeedback_editpdf_quick` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `rawtext` longtext NOT NULL,
  `width` bigint(10) NOT NULL DEFAULT 120,
  `colour` varchar(10) DEFAULT 'yellow',
  PRIMARY KEY (`id`),
  KEY `mdl_assieditquic_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores teacher specified quicklist comments';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignfeedback_editpdf_quick`
--

LOCK TABLES `mdl_assignfeedback_editpdf_quick` WRITE;
/*!40000 ALTER TABLE `mdl_assignfeedback_editpdf_quick` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignfeedback_editpdf_quick` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignfeedback_editpdf_rot`
--

DROP TABLE IF EXISTS `mdl_assignfeedback_editpdf_rot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_assignfeedback_editpdf_rot` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `gradeid` bigint(10) NOT NULL DEFAULT 0,
  `pageno` bigint(10) NOT NULL DEFAULT 0,
  `pathnamehash` longtext NOT NULL,
  `isrotated` tinyint(1) NOT NULL DEFAULT 0,
  `degree` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_assieditrot_grapag_uix` (`gradeid`,`pageno`),
  KEY `mdl_assieditrot_gra_ix` (`gradeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores rotation information of a page.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignfeedback_editpdf_rot`
--

LOCK TABLES `mdl_assignfeedback_editpdf_rot` WRITE;
/*!40000 ALTER TABLE `mdl_assignfeedback_editpdf_rot` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignfeedback_editpdf_rot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignfeedback_file`
--

DROP TABLE IF EXISTS `mdl_assignfeedback_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_assignfeedback_file` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT 0,
  `grade` bigint(10) NOT NULL DEFAULT 0,
  `numfiles` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_assifile_ass2_ix` (`assignment`),
  KEY `mdl_assifile_gra_ix` (`grade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores info about the number of files submitted by a student';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignfeedback_file`
--

LOCK TABLES `mdl_assignfeedback_file` WRITE;
/*!40000 ALTER TABLE `mdl_assignfeedback_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignfeedback_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignsubmission_file`
--

DROP TABLE IF EXISTS `mdl_assignsubmission_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_assignsubmission_file` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT 0,
  `submission` bigint(10) NOT NULL DEFAULT 0,
  `numfiles` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_assifile_ass_ix` (`assignment`),
  KEY `mdl_assifile_sub_ix` (`submission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Info about file submissions for assignments';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignsubmission_file`
--

LOCK TABLES `mdl_assignsubmission_file` WRITE;
/*!40000 ALTER TABLE `mdl_assignsubmission_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignsubmission_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_assignsubmission_onlinetext`
--

DROP TABLE IF EXISTS `mdl_assignsubmission_onlinetext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_assignsubmission_onlinetext` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `assignment` bigint(10) NOT NULL DEFAULT 0,
  `submission` bigint(10) NOT NULL DEFAULT 0,
  `onlinetext` longtext DEFAULT NULL,
  `onlineformat` smallint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_assionli_ass_ix` (`assignment`),
  KEY `mdl_assionli_sub_ix` (`submission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Info about onlinetext submission';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_assignsubmission_onlinetext`
--

LOCK TABLES `mdl_assignsubmission_onlinetext` WRITE;
/*!40000 ALTER TABLE `mdl_assignsubmission_onlinetext` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_assignsubmission_onlinetext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_auth_lti_linked_login`
--

DROP TABLE IF EXISTS `mdl_auth_lti_linked_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_auth_lti_linked_login` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `issuer` longtext NOT NULL,
  `issuer256` varchar(64) NOT NULL DEFAULT '',
  `sub` varchar(255) NOT NULL DEFAULT '',
  `sub256` varchar(64) NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_authltilinklogi_useiss_uix` (`userid`,`issuer256`,`sub256`),
  KEY `mdl_authltilinklogi_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Accounts linked to a users Moodle account.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_auth_lti_linked_login`
--

LOCK TABLES `mdl_auth_lti_linked_login` WRITE;
/*!40000 ALTER TABLE `mdl_auth_lti_linked_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_auth_lti_linked_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_auth_oauth2_linked_login`
--

DROP TABLE IF EXISTS `mdl_auth_oauth2_linked_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_auth_oauth2_linked_login` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `issuerid` bigint(10) NOT NULL,
  `username` varchar(255) NOT NULL DEFAULT '',
  `email` longtext NOT NULL,
  `confirmtoken` varchar(64) NOT NULL DEFAULT '',
  `confirmtokenexpires` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_authoautlinklogi_useis_uix` (`userid`,`issuerid`,`username`),
  KEY `mdl_authoautlinklogi_issuse_ix` (`issuerid`,`username`),
  KEY `mdl_authoautlinklogi_use_ix` (`usermodified`),
  KEY `mdl_authoautlinklogi_use2_ix` (`userid`),
  KEY `mdl_authoautlinklogi_iss_ix` (`issuerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Accounts linked to a users Moodle account.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_auth_oauth2_linked_login`
--

LOCK TABLES `mdl_auth_oauth2_linked_login` WRITE;
/*!40000 ALTER TABLE `mdl_auth_oauth2_linked_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_auth_oauth2_linked_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_backup_controllers`
--

DROP TABLE IF EXISTS `mdl_backup_controllers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_backup_controllers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `backupid` varchar(32) NOT NULL DEFAULT '',
  `operation` varchar(20) NOT NULL DEFAULT 'backup',
  `type` varchar(10) NOT NULL DEFAULT '',
  `itemid` bigint(10) NOT NULL,
  `format` varchar(20) NOT NULL DEFAULT '',
  `interactive` smallint(4) NOT NULL,
  `purpose` smallint(4) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `status` smallint(4) NOT NULL,
  `execution` smallint(4) NOT NULL,
  `executiontime` bigint(10) NOT NULL,
  `checksum` varchar(32) NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `progress` decimal(15,14) NOT NULL DEFAULT 0.00000000000000,
  `controller` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_backcont_bac_uix` (`backupid`),
  KEY `mdl_backcont_typite_ix` (`type`,`itemid`),
  KEY `mdl_backcont_useite_ix` (`userid`,`itemid`),
  KEY `mdl_backcont_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='To store the backup_controllers as they are used';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_backup_controllers`
--

LOCK TABLES `mdl_backup_controllers` WRITE;
/*!40000 ALTER TABLE `mdl_backup_controllers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_backup_controllers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_backup_courses`
--

DROP TABLE IF EXISTS `mdl_backup_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_backup_courses` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  `laststarttime` bigint(10) NOT NULL DEFAULT 0,
  `lastendtime` bigint(10) NOT NULL DEFAULT 0,
  `laststatus` varchar(1) NOT NULL DEFAULT '5',
  `nextstarttime` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_backcour_cou_uix` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='To store every course backup status';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_backup_courses`
--

LOCK TABLES `mdl_backup_courses` WRITE;
/*!40000 ALTER TABLE `mdl_backup_courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_backup_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_backup_logs`
--

DROP TABLE IF EXISTS `mdl_backup_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_backup_logs` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `backupid` varchar(32) NOT NULL DEFAULT '',
  `loglevel` smallint(4) NOT NULL,
  `message` longtext NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_backlogs_bacid_uix` (`backupid`,`id`),
  KEY `mdl_backlogs_bac_ix` (`backupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='To store all the logs from backup and restore operations (by';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_backup_logs`
--

LOCK TABLES `mdl_backup_logs` WRITE;
/*!40000 ALTER TABLE `mdl_backup_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_backup_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge`
--

DROP TABLE IF EXISTS `mdl_badge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_badge` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` longtext DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `usercreated` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  `issuername` varchar(255) NOT NULL DEFAULT '',
  `issuerurl` varchar(255) NOT NULL DEFAULT '',
  `issuercontact` varchar(255) DEFAULT NULL,
  `expiredate` bigint(10) DEFAULT NULL,
  `expireperiod` bigint(10) DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 1,
  `courseid` bigint(10) DEFAULT NULL,
  `message` longtext NOT NULL,
  `messagesubject` longtext NOT NULL,
  `attachment` tinyint(1) NOT NULL DEFAULT 1,
  `notification` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `nextcron` bigint(10) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `imageauthorname` varchar(255) DEFAULT NULL,
  `imageauthoremail` varchar(255) DEFAULT NULL,
  `imageauthorurl` varchar(255) DEFAULT NULL,
  `imagecaption` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_badg_typ_ix` (`type`),
  KEY `mdl_badg_cou_ix` (`courseid`),
  KEY `mdl_badg_use_ix` (`usermodified`),
  KEY `mdl_badg_use2_ix` (`usercreated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Defines badge';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge`
--

LOCK TABLES `mdl_badge` WRITE;
/*!40000 ALTER TABLE `mdl_badge` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_alignment`
--

DROP TABLE IF EXISTS `mdl_badge_alignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_badge_alignment` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `badgeid` bigint(10) NOT NULL DEFAULT 0,
  `targetname` varchar(255) NOT NULL DEFAULT '',
  `targeturl` varchar(255) NOT NULL DEFAULT '',
  `targetdescription` longtext DEFAULT NULL,
  `targetframework` varchar(255) DEFAULT NULL,
  `targetcode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_badgalig_bad_ix` (`badgeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Defines alignment for badges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_alignment`
--

LOCK TABLES `mdl_badge_alignment` WRITE;
/*!40000 ALTER TABLE `mdl_badge_alignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge_alignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_backpack`
--

DROP TABLE IF EXISTS `mdl_badge_backpack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_badge_backpack` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `email` varchar(100) NOT NULL DEFAULT '',
  `backpackuid` bigint(10) NOT NULL,
  `autosync` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(50) DEFAULT NULL,
  `externalbackpackid` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_badgback_useext_uix` (`userid`,`externalbackpackid`),
  KEY `mdl_badgback_use_ix` (`userid`),
  KEY `mdl_badgback_ext_ix` (`externalbackpackid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Defines settings for connecting external backpack';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_backpack`
--

LOCK TABLES `mdl_badge_backpack` WRITE;
/*!40000 ALTER TABLE `mdl_badge_backpack` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge_backpack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_backpack_oauth2`
--

DROP TABLE IF EXISTS `mdl_badge_backpack_oauth2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_badge_backpack_oauth2` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `usermodified` bigint(10) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL,
  `issuerid` bigint(10) NOT NULL,
  `externalbackpackid` bigint(10) NOT NULL,
  `token` longtext NOT NULL,
  `refreshtoken` longtext NOT NULL,
  `expires` bigint(10) DEFAULT NULL,
  `scope` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_badgbackoaut_use_ix` (`usermodified`),
  KEY `mdl_badgbackoaut_use2_ix` (`userid`),
  KEY `mdl_badgbackoaut_iss_ix` (`issuerid`),
  KEY `mdl_badgbackoaut_ext_ix` (`externalbackpackid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Default comment for the table, please edit me';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_backpack_oauth2`
--

LOCK TABLES `mdl_badge_backpack_oauth2` WRITE;
/*!40000 ALTER TABLE `mdl_badge_backpack_oauth2` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge_backpack_oauth2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_criteria`
--

DROP TABLE IF EXISTS `mdl_badge_criteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_badge_criteria` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `badgeid` bigint(10) NOT NULL DEFAULT 0,
  `criteriatype` bigint(10) DEFAULT NULL,
  `method` tinyint(1) NOT NULL DEFAULT 1,
  `description` longtext DEFAULT NULL,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_badgcrit_badcri_uix` (`badgeid`,`criteriatype`),
  KEY `mdl_badgcrit_cri_ix` (`criteriatype`),
  KEY `mdl_badgcrit_bad_ix` (`badgeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Defines criteria for issuing badges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_criteria`
--

LOCK TABLES `mdl_badge_criteria` WRITE;
/*!40000 ALTER TABLE `mdl_badge_criteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge_criteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_criteria_met`
--

DROP TABLE IF EXISTS `mdl_badge_criteria_met`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_badge_criteria_met` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `issuedid` bigint(10) DEFAULT NULL,
  `critid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `datemet` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_badgcritmet_cri_ix` (`critid`),
  KEY `mdl_badgcritmet_use_ix` (`userid`),
  KEY `mdl_badgcritmet_iss_ix` (`issuedid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Defines criteria that were met for an issued badge';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_criteria_met`
--

LOCK TABLES `mdl_badge_criteria_met` WRITE;
/*!40000 ALTER TABLE `mdl_badge_criteria_met` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge_criteria_met` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_criteria_param`
--

DROP TABLE IF EXISTS `mdl_badge_criteria_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_badge_criteria_param` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `critid` bigint(10) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_badgcritpara_cri_ix` (`critid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Defines parameters for badges criteria';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_criteria_param`
--

LOCK TABLES `mdl_badge_criteria_param` WRITE;
/*!40000 ALTER TABLE `mdl_badge_criteria_param` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge_criteria_param` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_endorsement`
--

DROP TABLE IF EXISTS `mdl_badge_endorsement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_badge_endorsement` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `badgeid` bigint(10) NOT NULL DEFAULT 0,
  `issuername` varchar(255) NOT NULL DEFAULT '',
  `issuerurl` varchar(255) NOT NULL DEFAULT '',
  `issueremail` varchar(255) NOT NULL DEFAULT '',
  `claimid` varchar(255) DEFAULT NULL,
  `claimcomment` longtext DEFAULT NULL,
  `dateissued` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_badgendo_bad_ix` (`badgeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Defines endorsement for badge';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_endorsement`
--

LOCK TABLES `mdl_badge_endorsement` WRITE;
/*!40000 ALTER TABLE `mdl_badge_endorsement` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge_endorsement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_external`
--

DROP TABLE IF EXISTS `mdl_badge_external`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_badge_external` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `backpackid` bigint(10) NOT NULL,
  `collectionid` bigint(10) NOT NULL,
  `entityid` varchar(255) DEFAULT NULL,
  `assertion` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_badgexte_bac_ix` (`backpackid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Setting for external badges display';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_external`
--

LOCK TABLES `mdl_badge_external` WRITE;
/*!40000 ALTER TABLE `mdl_badge_external` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge_external` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_external_backpack`
--

DROP TABLE IF EXISTS `mdl_badge_external_backpack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_badge_external_backpack` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `backpackapiurl` varchar(255) NOT NULL DEFAULT '',
  `backpackweburl` varchar(255) NOT NULL DEFAULT '',
  `apiversion` varchar(12) NOT NULL DEFAULT '1.0',
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  `oauth2_issuerid` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_badgexteback_bac_uix` (`backpackapiurl`),
  UNIQUE KEY `mdl_badgexteback_bac2_uix` (`backpackweburl`),
  KEY `mdl_badgexteback_oau_ix` (`oauth2_issuerid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Defines settings for site level backpacks that a user can co';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_external_backpack`
--

LOCK TABLES `mdl_badge_external_backpack` WRITE;
/*!40000 ALTER TABLE `mdl_badge_external_backpack` DISABLE KEYS */;
INSERT INTO `mdl_badge_external_backpack` VALUES (1,'https://api.badgr.io/v2','https://badgr.io','2',1,NULL);
/*!40000 ALTER TABLE `mdl_badge_external_backpack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_external_identifier`
--

DROP TABLE IF EXISTS `mdl_badge_external_identifier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_badge_external_identifier` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `sitebackpackid` bigint(10) NOT NULL,
  `internalid` varchar(128) NOT NULL DEFAULT '',
  `externalid` varchar(128) NOT NULL DEFAULT '',
  `type` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_badgexteiden_sitintext_uix` (`sitebackpackid`,`internalid`,`externalid`,`type`),
  KEY `mdl_badgexteiden_sit_ix` (`sitebackpackid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Setting for external badges mappings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_external_identifier`
--

LOCK TABLES `mdl_badge_external_identifier` WRITE;
/*!40000 ALTER TABLE `mdl_badge_external_identifier` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge_external_identifier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_issued`
--

DROP TABLE IF EXISTS `mdl_badge_issued`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_badge_issued` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `badgeid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `uniquehash` longtext NOT NULL,
  `dateissued` bigint(10) NOT NULL DEFAULT 0,
  `dateexpire` bigint(10) DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 0,
  `issuernotified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_badgissu_baduse_uix` (`badgeid`,`userid`),
  KEY `mdl_badgissu_bad_ix` (`badgeid`),
  KEY `mdl_badgissu_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Defines issued badges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_issued`
--

LOCK TABLES `mdl_badge_issued` WRITE;
/*!40000 ALTER TABLE `mdl_badge_issued` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge_issued` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_manual_award`
--

DROP TABLE IF EXISTS `mdl_badge_manual_award`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_badge_manual_award` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `badgeid` bigint(10) NOT NULL,
  `recipientid` bigint(10) NOT NULL,
  `issuerid` bigint(10) NOT NULL,
  `issuerrole` bigint(10) NOT NULL,
  `datemet` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_badgmanuawar_bad_ix` (`badgeid`),
  KEY `mdl_badgmanuawar_rec_ix` (`recipientid`),
  KEY `mdl_badgmanuawar_iss_ix` (`issuerid`),
  KEY `mdl_badgmanuawar_iss2_ix` (`issuerrole`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Track manual award criteria for badges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_manual_award`
--

LOCK TABLES `mdl_badge_manual_award` WRITE;
/*!40000 ALTER TABLE `mdl_badge_manual_award` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge_manual_award` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_badge_related`
--

DROP TABLE IF EXISTS `mdl_badge_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_badge_related` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `badgeid` bigint(10) NOT NULL DEFAULT 0,
  `relatedbadgeid` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_badgrela_badrel_uix` (`badgeid`,`relatedbadgeid`),
  KEY `mdl_badgrela_bad_ix` (`badgeid`),
  KEY `mdl_badgrela_rel_ix` (`relatedbadgeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Defines badge related for badges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_badge_related`
--

LOCK TABLES `mdl_badge_related` WRITE;
/*!40000 ALTER TABLE `mdl_badge_related` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_badge_related` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_bigbluebuttonbn`
--

DROP TABLE IF EXISTS `mdl_bigbluebuttonbn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_bigbluebuttonbn` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `type` tinyint(2) NOT NULL DEFAULT 0,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` longtext DEFAULT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 1,
  `meetingid` varchar(255) NOT NULL DEFAULT '',
  `moderatorpass` varchar(255) NOT NULL DEFAULT '',
  `viewerpass` varchar(255) NOT NULL DEFAULT '',
  `wait` tinyint(1) NOT NULL DEFAULT 0,
  `record` tinyint(1) NOT NULL DEFAULT 0,
  `recordallfromstart` tinyint(1) NOT NULL DEFAULT 0,
  `recordhidebutton` tinyint(1) NOT NULL DEFAULT 0,
  `welcome` longtext DEFAULT NULL,
  `voicebridge` mediumint(5) NOT NULL DEFAULT 0,
  `openingtime` bigint(10) NOT NULL DEFAULT 0,
  `closingtime` bigint(10) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `presentation` longtext DEFAULT NULL,
  `participants` longtext DEFAULT NULL,
  `userlimit` smallint(3) NOT NULL DEFAULT 0,
  `recordings_html` tinyint(1) NOT NULL DEFAULT 0,
  `recordings_deleted` tinyint(1) NOT NULL DEFAULT 1,
  `recordings_imported` tinyint(1) NOT NULL DEFAULT 0,
  `recordings_preview` tinyint(1) NOT NULL DEFAULT 0,
  `clienttype` tinyint(1) NOT NULL DEFAULT 0,
  `muteonstart` tinyint(1) NOT NULL DEFAULT 0,
  `disablecam` tinyint(1) NOT NULL DEFAULT 0,
  `disablemic` tinyint(1) NOT NULL DEFAULT 0,
  `disableprivatechat` tinyint(1) NOT NULL DEFAULT 0,
  `disablepublicchat` tinyint(1) NOT NULL DEFAULT 0,
  `disablenote` tinyint(1) NOT NULL DEFAULT 0,
  `hideuserlist` tinyint(1) NOT NULL DEFAULT 0,
  `completionattendance` int(9) NOT NULL DEFAULT 0,
  `completionengagementchats` int(9) NOT NULL DEFAULT 0,
  `completionengagementtalks` int(9) NOT NULL DEFAULT 0,
  `completionengagementraisehand` int(9) NOT NULL DEFAULT 0,
  `completionengagementpollvotes` int(9) NOT NULL DEFAULT 0,
  `completionengagementemojis` int(9) NOT NULL DEFAULT 0,
  `guestallowed` tinyint(2) DEFAULT 0,
  `mustapproveuser` tinyint(2) DEFAULT 1,
  `guestlinkuid` varchar(1024) DEFAULT NULL,
  `guestpassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='The bigbluebuttonbn table to store information about a meeti';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_bigbluebuttonbn`
--

LOCK TABLES `mdl_bigbluebuttonbn` WRITE;
/*!40000 ALTER TABLE `mdl_bigbluebuttonbn` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_bigbluebuttonbn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_bigbluebuttonbn_logs`
--

DROP TABLE IF EXISTS `mdl_bigbluebuttonbn_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_bigbluebuttonbn_logs` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `bigbluebuttonbnid` bigint(10) NOT NULL,
  `userid` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `meetingid` varchar(256) NOT NULL DEFAULT '',
  `log` varchar(32) NOT NULL DEFAULT '',
  `meta` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_bigblogs_cou_ix` (`courseid`),
  KEY `mdl_bigblogs_log_ix` (`log`),
  KEY `mdl_bigblogs_coubiguselog_ix` (`courseid`,`bigbluebuttonbnid`,`userid`,`log`),
  KEY `mdl_bigblogs_uselog_ix` (`userid`,`log`),
  KEY `mdl_bigblogs_coubig_ix` (`courseid`,`bigbluebuttonbnid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='The bigbluebuttonbn table to store meeting activity events';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_bigbluebuttonbn_logs`
--

LOCK TABLES `mdl_bigbluebuttonbn_logs` WRITE;
/*!40000 ALTER TABLE `mdl_bigbluebuttonbn_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_bigbluebuttonbn_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_bigbluebuttonbn_recordings`
--

DROP TABLE IF EXISTS `mdl_bigbluebuttonbn_recordings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_bigbluebuttonbn_recordings` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `bigbluebuttonbnid` bigint(10) NOT NULL,
  `groupid` bigint(10) DEFAULT NULL,
  `recordingid` varchar(64) NOT NULL DEFAULT '',
  `headless` tinyint(1) NOT NULL DEFAULT 0,
  `imported` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `importeddata` longtext DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `usermodified` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_bigbreco_cou_ix` (`courseid`),
  KEY `mdl_bigbreco_rec_ix` (`recordingid`),
  KEY `mdl_bigbreco_big_ix` (`bigbluebuttonbnid`),
  KEY `mdl_bigbreco_use_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='The bigbluebuttonbn table to store references to recordings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_bigbluebuttonbn_recordings`
--

LOCK TABLES `mdl_bigbluebuttonbn_recordings` WRITE;
/*!40000 ALTER TABLE `mdl_bigbluebuttonbn_recordings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_bigbluebuttonbn_recordings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_block`
--

DROP TABLE IF EXISTS `mdl_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_block` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '',
  `cron` bigint(10) NOT NULL DEFAULT 0,
  `lastcron` bigint(10) NOT NULL DEFAULT 0,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_bloc_nam_uix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='contains all installed blocks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_block`
--

LOCK TABLES `mdl_block` WRITE;
/*!40000 ALTER TABLE `mdl_block` DISABLE KEYS */;
INSERT INTO `mdl_block` VALUES (1,'accessreview',0,0,1),(2,'activity_modules',0,0,1),(3,'activity_results',0,0,1),(4,'admin_bookmarks',0,0,1),(5,'badges',0,0,1),(6,'blog_menu',0,0,1),(7,'blog_recent',0,0,1),(8,'blog_tags',0,0,1),(9,'calendar_month',0,0,1),(10,'calendar_upcoming',0,0,1),(11,'comments',0,0,1),(12,'completionstatus',0,0,1),(13,'course_list',0,0,1),(14,'course_summary',0,0,0),(15,'feedback',0,0,0),(16,'globalsearch',0,0,1),(17,'glossary_random',0,0,1),(18,'html',0,0,1),(19,'login',0,0,1),(20,'lp',0,0,1),(21,'mentees',0,0,1),(22,'mnet_hosts',0,0,1),(23,'myoverview',0,0,1),(24,'myprofile',0,0,1),(25,'navigation',0,0,1),(26,'news_items',0,0,1),(27,'online_users',0,0,1),(28,'private_files',0,0,1),(29,'recent_activity',0,0,1),(30,'recentlyaccessedcourses',0,0,1),(31,'recentlyaccesseditems',0,0,1),(32,'rss_client',0,0,0),(33,'search_forums',0,0,1),(34,'section_links',0,0,1),(35,'selfcompletion',0,0,0),(36,'settings',0,0,1),(37,'site_main_menu',0,0,1),(38,'social_activities',0,0,1),(39,'starredcourses',0,0,1),(40,'tag_flickr',0,0,1),(41,'tag_youtube',0,0,0),(42,'tags',0,0,1),(43,'timeline',0,0,1);
/*!40000 ALTER TABLE `mdl_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_block_instances`
--

DROP TABLE IF EXISTS `mdl_block_instances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_block_instances` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `blockname` varchar(40) NOT NULL DEFAULT '',
  `parentcontextid` bigint(10) NOT NULL,
  `showinsubcontexts` smallint(4) NOT NULL,
  `requiredbytheme` smallint(4) NOT NULL DEFAULT 0,
  `pagetypepattern` varchar(64) NOT NULL DEFAULT '',
  `subpagepattern` varchar(16) DEFAULT NULL,
  `defaultregion` varchar(16) NOT NULL DEFAULT '',
  `defaultweight` bigint(10) NOT NULL,
  `configdata` longtext DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_blocinst_parshopagsub_ix` (`parentcontextid`,`showinsubcontexts`,`pagetypepattern`,`subpagepattern`),
  KEY `mdl_blocinst_tim_ix` (`timemodified`),
  KEY `mdl_blocinst_blo_ix` (`blockname`),
  KEY `mdl_blocinst_par_ix` (`parentcontextid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='This table stores block instances. The type of block this is';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_block_instances`
--

LOCK TABLES `mdl_block_instances` WRITE;
/*!40000 ALTER TABLE `mdl_block_instances` DISABLE KEYS */;
INSERT INTO `mdl_block_instances` VALUES (1,'admin_bookmarks',1,0,0,'admin-*',NULL,'side-pre',2,'',1705738845,1705738845),(2,'recentlyaccesseditems',1,0,0,'my-index','2','side-post',0,'',1705738845,1705738845),(3,'timeline',1,0,0,'my-index','2','content',0,'',1705738845,1705738845),(4,'calendar_month',1,0,0,'my-index','2','content',1,'',1705738845,1705738845),(5,'myoverview',1,0,0,'my-index','3','content',0,'',1705738845,1705738845),(6,'recentlyaccesseditems',5,0,0,'my-index','4','side-post',0,'',1705739340,1705739340),(7,'timeline',5,0,0,'my-index','4','content',0,'',1705739340,1705739340),(8,'calendar_month',5,0,0,'my-index','4','content',1,'',1705739340,1705739340);
/*!40000 ALTER TABLE `mdl_block_instances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_block_positions`
--

DROP TABLE IF EXISTS `mdl_block_positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_block_positions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `blockinstanceid` bigint(10) NOT NULL,
  `contextid` bigint(10) NOT NULL,
  `pagetype` varchar(64) NOT NULL DEFAULT '',
  `subpage` varchar(16) NOT NULL DEFAULT '',
  `visible` smallint(4) NOT NULL,
  `region` varchar(16) NOT NULL DEFAULT '',
  `weight` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_blocposi_bloconpagsub_uix` (`blockinstanceid`,`contextid`,`pagetype`,`subpage`),
  KEY `mdl_blocposi_blo_ix` (`blockinstanceid`),
  KEY `mdl_blocposi_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores the position of a sticky block_instance on a another ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_block_positions`
--

LOCK TABLES `mdl_block_positions` WRITE;
/*!40000 ALTER TABLE `mdl_block_positions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_block_positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_block_recent_activity`
--

DROP TABLE IF EXISTS `mdl_block_recent_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_block_recent_activity` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `cmid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `action` tinyint(1) NOT NULL,
  `modname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_blocreceacti_coutim_ix` (`courseid`,`timecreated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Recent activity block';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_block_recent_activity`
--

LOCK TABLES `mdl_block_recent_activity` WRITE;
/*!40000 ALTER TABLE `mdl_block_recent_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_block_recent_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_block_recentlyaccesseditems`
--

DROP TABLE IF EXISTS `mdl_block_recentlyaccesseditems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_block_recentlyaccesseditems` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `cmid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `timeaccess` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_blocrece_usecoucmi_uix` (`userid`,`courseid`,`cmid`),
  KEY `mdl_blocrece_use_ix` (`userid`),
  KEY `mdl_blocrece_cou_ix` (`courseid`),
  KEY `mdl_blocrece_cmi_ix` (`cmid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Most recently accessed items accessed by a user';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_block_recentlyaccesseditems`
--

LOCK TABLES `mdl_block_recentlyaccesseditems` WRITE;
/*!40000 ALTER TABLE `mdl_block_recentlyaccesseditems` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_block_recentlyaccesseditems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_block_rss_client`
--

DROP TABLE IF EXISTS `mdl_block_rss_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_block_rss_client` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `title` longtext NOT NULL,
  `preferredtitle` varchar(64) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `shared` tinyint(2) NOT NULL DEFAULT 0,
  `url` varchar(255) NOT NULL DEFAULT '',
  `skiptime` bigint(10) NOT NULL DEFAULT 0,
  `skipuntil` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Remote news feed information. Contains the news feed id, the';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_block_rss_client`
--

LOCK TABLES `mdl_block_rss_client` WRITE;
/*!40000 ALTER TABLE `mdl_block_rss_client` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_block_rss_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_blog_association`
--

DROP TABLE IF EXISTS `mdl_blog_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_blog_association` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL,
  `blogid` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_blogasso_con_ix` (`contextid`),
  KEY `mdl_blogasso_blo_ix` (`blogid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Associations of blog entries with courses and module instanc';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_blog_association`
--

LOCK TABLES `mdl_blog_association` WRITE;
/*!40000 ALTER TABLE `mdl_blog_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_blog_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_blog_external`
--

DROP TABLE IF EXISTS `mdl_blog_external`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_blog_external` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` longtext DEFAULT NULL,
  `url` longtext NOT NULL,
  `filtertags` varchar(255) DEFAULT NULL,
  `failedlastsync` tinyint(1) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) DEFAULT NULL,
  `timefetched` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_blogexte_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='External blog links used for RSS copying of blog entries to ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_blog_external`
--

LOCK TABLES `mdl_blog_external` WRITE;
/*!40000 ALTER TABLE `mdl_blog_external` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_blog_external` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_book`
--

DROP TABLE IF EXISTS `mdl_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_book` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` longtext DEFAULT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `numbering` smallint(4) NOT NULL DEFAULT 0,
  `navstyle` smallint(4) NOT NULL DEFAULT 1,
  `customtitles` tinyint(2) NOT NULL DEFAULT 0,
  `revision` bigint(10) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_book_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Defines book';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_book`
--

LOCK TABLES `mdl_book` WRITE;
/*!40000 ALTER TABLE `mdl_book` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_book_chapters`
--

DROP TABLE IF EXISTS `mdl_book_chapters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_book_chapters` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `bookid` bigint(10) NOT NULL DEFAULT 0,
  `pagenum` bigint(10) NOT NULL DEFAULT 0,
  `subchapter` bigint(10) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` longtext NOT NULL,
  `contentformat` smallint(4) NOT NULL DEFAULT 0,
  `hidden` tinyint(2) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `importsrc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_bookchap_boo_ix` (`bookid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Defines book_chapters';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_book_chapters`
--

LOCK TABLES `mdl_book_chapters` WRITE;
/*!40000 ALTER TABLE `mdl_book_chapters` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_book_chapters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_cache_filters`
--

DROP TABLE IF EXISTS `mdl_cache_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_cache_filters` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `filter` varchar(32) NOT NULL DEFAULT '',
  `version` bigint(10) NOT NULL DEFAULT 0,
  `md5key` varchar(32) NOT NULL DEFAULT '',
  `rawtext` longtext NOT NULL,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_cachfilt_filmd5_ix` (`filter`,`md5key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='For keeping information about cached data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_cache_filters`
--

LOCK TABLES `mdl_cache_filters` WRITE;
/*!40000 ALTER TABLE `mdl_cache_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_cache_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_cache_flags`
--

DROP TABLE IF EXISTS `mdl_cache_flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_cache_flags` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `flagtype` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `value` longtext NOT NULL,
  `expiry` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_cachflag_fla_ix` (`flagtype`),
  KEY `mdl_cachflag_nam_ix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Cache of time-sensitive flags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_cache_flags`
--

LOCK TABLES `mdl_cache_flags` WRITE;
/*!40000 ALTER TABLE `mdl_cache_flags` DISABLE KEYS */;
INSERT INTO `mdl_cache_flags` VALUES (1,'userpreferenceschanged','2',1705739770,'1',1705768570),(2,'accesslib/dirtyusers','2',1705739445,'1',1705768245),(3,'userpreferenceschanged','3',1705739623,'1',1705768423),(4,'userpreferenceschanged','4',1705739692,'1',1705768492),(5,'userpreferenceschanged','5',1705739747,'1',1705768547),(6,'accesslib/dirtyusers','3',1705739794,'1',1705768594),(7,'accesslib/dirtyusers','4',1705739810,'1',1705768610),(8,'accesslib/dirtyusers','5',1705739810,'1',1705768610);
/*!40000 ALTER TABLE `mdl_cache_flags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_capabilities`
--

DROP TABLE IF EXISTS `mdl_capabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_capabilities` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `captype` varchar(50) NOT NULL DEFAULT '',
  `contextlevel` bigint(10) NOT NULL DEFAULT 0,
  `component` varchar(100) NOT NULL DEFAULT '',
  `riskbitmask` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_capa_nam_uix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=715 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='this defines all capabilities';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_capabilities`
--

LOCK TABLES `mdl_capabilities` WRITE;
/*!40000 ALTER TABLE `mdl_capabilities` DISABLE KEYS */;
INSERT INTO `mdl_capabilities` VALUES (1,'moodle/site:config','write',10,'moodle',62),(2,'moodle/site:configview','read',10,'moodle',0),(3,'moodle/site:readallmessages','read',10,'moodle',8),(4,'moodle/site:manageallmessaging','write',10,'moodle',8),(5,'moodle/site:deleteanymessage','write',10,'moodle',32),(6,'moodle/site:sendmessage','write',10,'moodle',16),(7,'moodle/site:senderrormessage','write',10,'moodle',16),(8,'moodle/site:deleteownmessage','write',10,'moodle',0),(9,'moodle/site:approvecourse','write',40,'moodle',4),(10,'moodle/backup:backupcourse','write',50,'moodle',28),(11,'moodle/backup:backupsection','write',50,'moodle',28),(12,'moodle/backup:backupactivity','write',70,'moodle',28),(13,'moodle/backup:backuptargetimport','read',50,'moodle',28),(14,'moodle/backup:downloadfile','write',50,'moodle',28),(15,'moodle/backup:configure','write',50,'moodle',28),(16,'moodle/backup:userinfo','read',50,'moodle',8),(17,'moodle/backup:anonymise','read',50,'moodle',8),(18,'moodle/restore:restorecourse','write',50,'moodle',28),(19,'moodle/restore:restoresection','write',50,'moodle',28),(20,'moodle/restore:restoreactivity','write',50,'moodle',28),(21,'moodle/restore:viewautomatedfilearea','write',50,'moodle',28),(22,'moodle/restore:restoretargetimport','write',50,'moodle',28),(23,'moodle/restore:uploadfile','write',50,'moodle',28),(24,'moodle/restore:configure','write',50,'moodle',28),(25,'moodle/restore:rolldates','write',50,'moodle',0),(26,'moodle/restore:userinfo','write',50,'moodle',30),(27,'moodle/restore:createuser','write',10,'moodle',24),(28,'moodle/site:manageblocks','write',80,'moodle',20),(29,'moodle/site:accessallgroups','read',70,'moodle',0),(30,'moodle/site:viewanonymousevents','read',70,'moodle',8),(31,'moodle/site:viewfullnames','read',70,'moodle',0),(32,'moodle/site:viewuseridentity','read',70,'moodle',0),(33,'moodle/site:viewreports','read',50,'moodle',8),(34,'moodle/site:trustcontent','write',70,'moodle',4),(35,'moodle/site:uploadusers','write',10,'moodle',24),(36,'moodle/filter:manage','write',50,'moodle',0),(37,'moodle/user:create','write',10,'moodle',24),(38,'moodle/user:delete','write',10,'moodle',40),(39,'moodle/user:update','write',10,'moodle',24),(40,'moodle/user:viewdetails','read',50,'moodle',0),(41,'moodle/user:viewalldetails','read',30,'moodle',8),(42,'moodle/user:viewlastip','read',30,'moodle',8),(43,'moodle/user:viewhiddendetails','read',50,'moodle',8),(44,'moodle/user:loginas','write',50,'moodle',30),(45,'moodle/user:managesyspages','write',10,'moodle',0),(46,'moodle/user:manageblocks','write',30,'moodle',0),(47,'moodle/user:manageownblocks','write',10,'moodle',0),(48,'moodle/user:manageownfiles','write',10,'moodle',0),(49,'moodle/user:ignoreuserquota','write',10,'moodle',0),(50,'moodle/my:configsyspages','write',10,'moodle',0),(51,'moodle/role:assign','write',50,'moodle',28),(52,'moodle/role:review','read',50,'moodle',8),(53,'moodle/role:override','write',50,'moodle',28),(54,'moodle/role:safeoverride','write',50,'moodle',16),(55,'moodle/role:manage','write',10,'moodle',28),(56,'moodle/role:switchroles','read',50,'moodle',12),(57,'moodle/category:manage','write',40,'moodle',4),(58,'moodle/category:viewcourselist','read',40,'moodle',0),(59,'moodle/category:viewhiddencategories','read',40,'moodle',0),(60,'moodle/cohort:manage','write',40,'moodle',0),(61,'moodle/cohort:assign','write',40,'moodle',0),(62,'moodle/cohort:view','read',50,'moodle',0),(63,'moodle/cohort:configurecustomfields','write',10,'moodle',16),(64,'moodle/course:create','write',40,'moodle',4),(65,'moodle/course:creategroupconversations','write',50,'moodle',4),(66,'moodle/course:request','write',40,'moodle',0),(67,'moodle/course:delete','write',50,'moodle',32),(68,'moodle/course:update','write',50,'moodle',4),(69,'moodle/course:view','read',50,'moodle',0),(70,'moodle/course:enrolreview','read',50,'moodle',8),(71,'moodle/course:enrolconfig','write',50,'moodle',8),(72,'moodle/course:reviewotherusers','read',50,'moodle',0),(73,'moodle/course:bulkmessaging','write',50,'moodle',16),(74,'moodle/course:viewhiddenuserfields','read',50,'moodle',8),(75,'moodle/course:viewhiddencourses','read',50,'moodle',0),(76,'moodle/course:visibility','write',50,'moodle',0),(77,'moodle/course:managefiles','write',50,'moodle',4),(78,'moodle/course:ignoreavailabilityrestrictions','read',70,'moodle',0),(79,'moodle/course:ignorefilesizelimits','write',50,'moodle',0),(80,'moodle/course:manageactivities','write',70,'moodle',4),(81,'moodle/course:activityvisibility','write',70,'moodle',0),(82,'moodle/course:viewhiddenactivities','read',70,'moodle',0),(83,'moodle/course:viewparticipants','read',50,'moodle',0),(84,'moodle/course:changefullname','write',50,'moodle',4),(85,'moodle/course:changeshortname','write',50,'moodle',4),(86,'moodle/course:changelockedcustomfields','write',50,'moodle',16),(87,'moodle/course:configurecustomfields','write',10,'moodle',16),(88,'moodle/course:renameroles','write',50,'moodle',0),(89,'moodle/course:changeidnumber','write',50,'moodle',4),(90,'moodle/course:changecategory','write',50,'moodle',4),(91,'moodle/course:changesummary','write',50,'moodle',4),(92,'moodle/course:setforcedlanguage','write',50,'moodle',0),(93,'moodle/site:viewparticipants','read',10,'moodle',0),(94,'moodle/course:isincompletionreports','read',50,'moodle',0),(95,'moodle/course:viewscales','read',50,'moodle',0),(96,'moodle/course:managescales','write',50,'moodle',0),(97,'moodle/course:managegroups','write',50,'moodle',4),(98,'moodle/course:viewhiddengroups','READ',50,'moodle',8),(99,'moodle/course:reset','write',50,'moodle',32),(100,'moodle/course:viewsuspendedusers','read',50,'moodle',0),(101,'moodle/course:tag','write',50,'moodle',16),(102,'moodle/blog:view','read',10,'moodle',0),(103,'moodle/blog:search','read',10,'moodle',0),(104,'moodle/blog:viewdrafts','read',10,'moodle',8),(105,'moodle/blog:create','write',10,'moodle',16),(106,'moodle/blog:manageentries','write',10,'moodle',16),(107,'moodle/blog:manageexternal','write',10,'moodle',16),(108,'moodle/calendar:manageownentries','write',50,'moodle',16),(109,'moodle/calendar:managegroupentries','write',50,'moodle',16),(110,'moodle/calendar:manageentries','write',50,'moodle',16),(111,'moodle/user:editprofile','write',30,'moodle',24),(112,'moodle/user:editownprofile','write',10,'moodle',16),(113,'moodle/user:changeownpassword','write',10,'moodle',0),(114,'moodle/user:readuserposts','read',30,'moodle',0),(115,'moodle/user:readuserblogs','read',30,'moodle',0),(116,'moodle/user:viewuseractivitiesreport','read',30,'moodle',8),(117,'moodle/user:editmessageprofile','write',30,'moodle',16),(118,'moodle/user:editownmessageprofile','write',10,'moodle',0),(119,'moodle/question:managecategory','write',50,'moodle',20),(120,'moodle/question:add','write',50,'moodle',20),(121,'moodle/question:editmine','write',50,'moodle',20),(122,'moodle/question:editall','write',50,'moodle',20),(123,'moodle/question:viewmine','read',50,'moodle',0),(124,'moodle/question:viewall','read',50,'moodle',0),(125,'moodle/question:usemine','read',50,'moodle',0),(126,'moodle/question:useall','read',50,'moodle',0),(127,'moodle/question:movemine','write',50,'moodle',0),(128,'moodle/question:moveall','write',50,'moodle',0),(129,'moodle/question:config','write',10,'moodle',2),(130,'moodle/question:flag','write',50,'moodle',0),(131,'moodle/question:tagmine','write',50,'moodle',0),(132,'moodle/question:tagall','write',50,'moodle',0),(133,'moodle/site:doclinks','read',10,'moodle',0),(134,'moodle/course:sectionvisibility','write',50,'moodle',0),(135,'moodle/course:useremail','write',50,'moodle',0),(136,'moodle/course:viewhiddensections','read',50,'moodle',0),(137,'moodle/course:setcurrentsection','write',50,'moodle',0),(138,'moodle/course:movesections','write',50,'moodle',0),(139,'moodle/site:mnetlogintoremote','read',10,'moodle',0),(140,'moodle/grade:viewall','read',50,'moodle',8),(141,'moodle/grade:view','read',50,'moodle',0),(142,'moodle/grade:viewhidden','read',50,'moodle',8),(143,'moodle/grade:import','write',50,'moodle',12),(144,'moodle/grade:export','read',50,'moodle',8),(145,'moodle/grade:manage','write',50,'moodle',12),(146,'moodle/grade:edit','write',50,'moodle',12),(147,'moodle/grade:managegradingforms','write',50,'moodle',12),(148,'moodle/grade:sharegradingforms','write',10,'moodle',4),(149,'moodle/grade:managesharedforms','write',10,'moodle',4),(150,'moodle/grade:manageoutcomes','write',50,'moodle',0),(151,'moodle/grade:manageletters','write',50,'moodle',0),(152,'moodle/grade:hide','write',50,'moodle',0),(153,'moodle/grade:lock','write',50,'moodle',0),(154,'moodle/grade:unlock','write',50,'moodle',0),(155,'moodle/my:manageblocks','write',10,'moodle',0),(156,'moodle/notes:view','read',50,'moodle',0),(157,'moodle/notes:manage','write',50,'moodle',16),(158,'moodle/tag:manage','write',10,'moodle',16),(159,'moodle/tag:edit','write',10,'moodle',16),(160,'moodle/tag:flag','write',10,'moodle',16),(161,'moodle/tag:editblocks','write',10,'moodle',0),(162,'moodle/block:view','read',80,'moodle',0),(163,'moodle/block:edit','write',80,'moodle',20),(164,'moodle/portfolio:export','read',10,'moodle',0),(165,'moodle/comment:view','read',50,'moodle',0),(166,'moodle/comment:post','write',50,'moodle',24),(167,'moodle/comment:delete','write',50,'moodle',32),(168,'moodle/webservice:createtoken','write',10,'moodle',62),(169,'moodle/webservice:managealltokens','write',10,'moodle',42),(170,'moodle/webservice:createmobiletoken','write',10,'moodle',24),(171,'moodle/rating:view','read',50,'moodle',0),(172,'moodle/rating:viewany','read',50,'moodle',8),(173,'moodle/rating:viewall','read',50,'moodle',8),(174,'moodle/rating:rate','write',50,'moodle',0),(175,'moodle/course:markcomplete','write',50,'moodle',0),(176,'moodle/course:overridecompletion','write',50,'moodle',0),(177,'moodle/badges:manageglobalsettings','write',10,'moodle',34),(178,'moodle/badges:viewbadges','read',50,'moodle',0),(179,'moodle/badges:manageownbadges','write',30,'moodle',0),(180,'moodle/badges:viewotherbadges','read',30,'moodle',0),(181,'moodle/badges:earnbadge','write',50,'moodle',0),(182,'moodle/badges:createbadge','write',50,'moodle',16),(183,'moodle/badges:deletebadge','write',50,'moodle',32),(184,'moodle/badges:configuredetails','write',50,'moodle',16),(185,'moodle/badges:configurecriteria','write',50,'moodle',4),(186,'moodle/badges:configuremessages','write',50,'moodle',16),(187,'moodle/badges:awardbadge','write',50,'moodle',16),(188,'moodle/badges:revokebadge','write',50,'moodle',16),(189,'moodle/badges:viewawarded','read',50,'moodle',8),(190,'moodle/site:forcelanguage','read',10,'moodle',0),(191,'moodle/search:query','read',10,'moodle',0),(192,'moodle/competency:competencymanage','write',40,'moodle',0),(193,'moodle/competency:competencyview','read',40,'moodle',0),(194,'moodle/competency:competencygrade','write',50,'moodle',0),(195,'moodle/competency:coursecompetencymanage','write',50,'moodle',0),(196,'moodle/competency:coursecompetencyconfigure','write',70,'moodle',0),(197,'moodle/competency:coursecompetencygradable','read',50,'moodle',0),(198,'moodle/competency:coursecompetencyview','read',50,'moodle',0),(199,'moodle/competency:evidencedelete','write',30,'moodle',0),(200,'moodle/competency:planmanage','write',30,'moodle',0),(201,'moodle/competency:planmanagedraft','write',30,'moodle',0),(202,'moodle/competency:planmanageown','write',30,'moodle',0),(203,'moodle/competency:planmanageowndraft','write',30,'moodle',0),(204,'moodle/competency:planview','read',30,'moodle',0),(205,'moodle/competency:planviewdraft','read',30,'moodle',0),(206,'moodle/competency:planviewown','read',30,'moodle',0),(207,'moodle/competency:planviewowndraft','read',30,'moodle',0),(208,'moodle/competency:planrequestreview','write',30,'moodle',0),(209,'moodle/competency:planrequestreviewown','write',30,'moodle',0),(210,'moodle/competency:planreview','write',30,'moodle',0),(211,'moodle/competency:plancomment','write',30,'moodle',0),(212,'moodle/competency:plancommentown','write',30,'moodle',0),(213,'moodle/competency:usercompetencyview','read',30,'moodle',0),(214,'moodle/competency:usercompetencyrequestreview','write',30,'moodle',0),(215,'moodle/competency:usercompetencyrequestreviewown','write',30,'moodle',0),(216,'moodle/competency:usercompetencyreview','write',30,'moodle',0),(217,'moodle/competency:usercompetencycomment','write',30,'moodle',0),(218,'moodle/competency:usercompetencycommentown','write',30,'moodle',0),(219,'moodle/competency:templatemanage','write',40,'moodle',0),(220,'moodle/analytics:listinsights','read',50,'moodle',8),(221,'moodle/analytics:managemodels','write',10,'moodle',2),(222,'moodle/competency:templateview','read',40,'moodle',0),(223,'moodle/competency:userevidencemanage','write',30,'moodle',0),(224,'moodle/competency:userevidencemanageown','write',30,'moodle',0),(225,'moodle/competency:userevidenceview','read',30,'moodle',0),(226,'moodle/site:maintenanceaccess','write',10,'moodle',0),(227,'moodle/site:messageanyuser','write',10,'moodle',16),(228,'moodle/site:managecontextlocks','write',70,'moodle',0),(229,'moodle/course:togglecompletion','write',70,'moodle',0),(230,'moodle/analytics:listowninsights','read',10,'moodle',0),(231,'moodle/h5p:setdisplayoptions','write',70,'moodle',0),(232,'moodle/h5p:deploy','write',70,'moodle',4),(233,'moodle/h5p:updatelibraries','write',70,'moodle',4),(234,'moodle/course:recommendactivity','write',10,'moodle',0),(235,'moodle/contentbank:access','read',50,'moodle',0),(236,'moodle/contentbank:upload','write',50,'moodle',16),(237,'moodle/contentbank:deleteanycontent','write',50,'moodle',32),(238,'moodle/contentbank:deleteowncontent','write',50,'moodle',0),(239,'moodle/contentbank:manageanycontent','write',50,'moodle',32),(240,'moodle/contentbank:manageowncontent','write',50,'moodle',0),(241,'moodle/contentbank:useeditor','write',50,'moodle',16),(242,'moodle/contentbank:downloadcontent','read',50,'moodle',0),(243,'moodle/course:downloadcoursecontent','read',50,'moodle',0),(244,'moodle/course:configuredownloadcontent','write',50,'moodle',0),(245,'moodle/payment:manageaccounts','write',50,'moodle',42),(246,'moodle/payment:viewpayments','read',50,'moodle',8),(247,'moodle/contentbank:viewunlistedcontent','read',50,'moodle',0),(248,'moodle/reportbuilder:view','read',10,'moodle',0),(249,'moodle/reportbuilder:edit','write',10,'moodle',0),(250,'moodle/reportbuilder:editall','write',10,'moodle',0),(251,'moodle/reportbuilder:scheduleviewas','read',10,'moodle',0),(252,'moodle/moodlenet:shareactivity','read',50,'moodle',0),(253,'mod/assign:view','read',70,'mod_assign',0),(254,'mod/assign:submit','write',70,'mod_assign',0),(255,'mod/assign:grade','write',70,'mod_assign',4),(256,'mod/assign:exportownsubmission','read',70,'mod_assign',0),(257,'mod/assign:addinstance','write',50,'mod_assign',4),(258,'mod/assign:editothersubmission','write',70,'mod_assign',41),(259,'mod/assign:grantextension','write',70,'mod_assign',0),(260,'mod/assign:revealidentities','write',70,'mod_assign',0),(261,'mod/assign:reviewgrades','write',70,'mod_assign',0),(262,'mod/assign:releasegrades','write',70,'mod_assign',0),(263,'mod/assign:managegrades','write',70,'mod_assign',0),(264,'mod/assign:manageallocations','write',70,'mod_assign',0),(265,'mod/assign:viewgrades','read',70,'mod_assign',0),(266,'mod/assign:viewblinddetails','write',70,'mod_assign',8),(267,'mod/assign:receivegradernotifications','read',70,'mod_assign',0),(268,'mod/assign:manageoverrides','write',70,'mod_assign',0),(269,'mod/assign:showhiddengrader','read',70,'mod_assign',0),(270,'mod/assign:viewownsubmissionsummary','read',70,'mod_assign',0),(271,'mod/bigbluebuttonbn:addinstance','write',50,'mod_bigbluebuttonbn',4),(272,'mod/bigbluebuttonbn:addinstancewithmeeting','write',70,'mod_bigbluebuttonbn',0),(273,'mod/bigbluebuttonbn:addinstancewithrecording','write',70,'mod_bigbluebuttonbn',0),(274,'mod/bigbluebuttonbn:join','read',70,'mod_bigbluebuttonbn',0),(275,'mod/bigbluebuttonbn:view','read',70,'mod_bigbluebuttonbn',0),(276,'mod/bigbluebuttonbn:managerecordings','write',70,'mod_bigbluebuttonbn',0),(277,'mod/bigbluebuttonbn:viewallrecordingformats','read',70,'mod_bigbluebuttonbn',0),(278,'mod/bigbluebuttonbn:publishrecordings','write',70,'mod_bigbluebuttonbn',0),(279,'mod/bigbluebuttonbn:unpublishrecordings','write',70,'mod_bigbluebuttonbn',0),(280,'mod/bigbluebuttonbn:protectrecordings','write',70,'mod_bigbluebuttonbn',0),(281,'mod/bigbluebuttonbn:unprotectrecordings','write',70,'mod_bigbluebuttonbn',0),(282,'mod/bigbluebuttonbn:deleterecordings','write',70,'mod_bigbluebuttonbn',0),(283,'mod/bigbluebuttonbn:importrecordings','write',70,'mod_bigbluebuttonbn',0),(284,'mod/book:addinstance','write',50,'mod_book',4),(285,'mod/book:read','read',70,'mod_book',0),(286,'mod/book:viewhiddenchapters','read',70,'mod_book',0),(287,'mod/book:edit','write',70,'mod_book',4),(288,'mod/chat:addinstance','write',50,'mod_chat',4),(289,'mod/chat:chat','write',70,'mod_chat',16),(290,'mod/chat:readlog','read',70,'mod_chat',0),(291,'mod/chat:deletelog','write',70,'mod_chat',0),(292,'mod/chat:exportparticipatedsession','read',70,'mod_chat',8),(293,'mod/chat:exportsession','read',70,'mod_chat',8),(294,'mod/chat:view','read',70,'mod_chat',0),(295,'mod/choice:addinstance','write',50,'mod_choice',4),(296,'mod/choice:choose','write',70,'mod_choice',0),(297,'mod/choice:readresponses','read',70,'mod_choice',0),(298,'mod/choice:deleteresponses','write',70,'mod_choice',0),(299,'mod/choice:downloadresponses','read',70,'mod_choice',0),(300,'mod/choice:view','read',70,'mod_choice',0),(301,'mod/data:addinstance','write',50,'mod_data',4),(302,'mod/data:viewentry','read',70,'mod_data',0),(303,'mod/data:writeentry','write',70,'mod_data',16),(304,'mod/data:comment','write',70,'mod_data',16),(305,'mod/data:rate','write',70,'mod_data',0),(306,'mod/data:viewrating','read',70,'mod_data',0),(307,'mod/data:viewanyrating','read',70,'mod_data',8),(308,'mod/data:viewallratings','read',70,'mod_data',8),(309,'mod/data:approve','write',70,'mod_data',16),(310,'mod/data:manageentries','write',70,'mod_data',16),(311,'mod/data:managecomments','write',70,'mod_data',16),(312,'mod/data:managetemplates','write',70,'mod_data',20),(313,'mod/data:viewalluserpresets','read',70,'mod_data',0),(314,'mod/data:manageuserpresets','write',70,'mod_data',20),(315,'mod/data:exportentry','read',70,'mod_data',8),(316,'mod/data:exportownentry','read',70,'mod_data',0),(317,'mod/data:exportallentries','read',70,'mod_data',8),(318,'mod/data:exportuserinfo','read',70,'mod_data',8),(319,'mod/data:view','read',70,'mod_data',0),(320,'mod/feedback:addinstance','write',50,'mod_feedback',4),(321,'mod/feedback:view','read',70,'mod_feedback',0),(322,'mod/feedback:complete','write',70,'mod_feedback',16),(323,'mod/feedback:viewanalysepage','read',70,'mod_feedback',8),(324,'mod/feedback:deletesubmissions','write',70,'mod_feedback',0),(325,'mod/feedback:mapcourse','write',70,'mod_feedback',0),(326,'mod/feedback:edititems','write',70,'mod_feedback',20),(327,'mod/feedback:createprivatetemplate','write',70,'mod_feedback',16),(328,'mod/feedback:createpublictemplate','write',70,'mod_feedback',16),(329,'mod/feedback:deletetemplate','write',70,'mod_feedback',0),(330,'mod/feedback:viewreports','read',70,'mod_feedback',8),(331,'mod/feedback:receivemail','read',70,'mod_feedback',8),(332,'mod/folder:addinstance','write',50,'mod_folder',4),(333,'mod/folder:view','read',70,'mod_folder',0),(334,'mod/folder:managefiles','write',70,'mod_folder',20),(335,'mod/forum:addinstance','write',50,'mod_forum',4),(336,'mod/forum:viewdiscussion','read',70,'mod_forum',0),(337,'mod/forum:viewhiddentimedposts','read',70,'mod_forum',0),(338,'mod/forum:startdiscussion','write',70,'mod_forum',16),(339,'mod/forum:replypost','write',70,'mod_forum',16),(340,'mod/forum:addnews','write',70,'mod_forum',16),(341,'mod/forum:replynews','write',70,'mod_forum',16),(342,'mod/forum:viewrating','read',70,'mod_forum',0),(343,'mod/forum:viewanyrating','read',70,'mod_forum',8),(344,'mod/forum:viewallratings','read',70,'mod_forum',8),(345,'mod/forum:rate','write',70,'mod_forum',0),(346,'mod/forum:postprivatereply','write',70,'mod_forum',0),(347,'mod/forum:readprivatereplies','read',70,'mod_forum',0),(348,'mod/forum:createattachment','write',70,'mod_forum',16),(349,'mod/forum:deleteownpost','write',70,'mod_forum',0),(350,'mod/forum:deleteanypost','write',70,'mod_forum',0),(351,'mod/forum:splitdiscussions','write',70,'mod_forum',0),(352,'mod/forum:movediscussions','write',70,'mod_forum',0),(353,'mod/forum:pindiscussions','write',70,'mod_forum',0),(354,'mod/forum:editanypost','write',70,'mod_forum',16),(355,'mod/forum:viewqandawithoutposting','read',70,'mod_forum',0),(356,'mod/forum:viewsubscribers','read',70,'mod_forum',0),(357,'mod/forum:managesubscriptions','write',70,'mod_forum',16),(358,'mod/forum:postwithoutthrottling','write',70,'mod_forum',16),(359,'mod/forum:exportdiscussion','read',70,'mod_forum',8),(360,'mod/forum:exportforum','read',70,'mod_forum',8),(361,'mod/forum:exportpost','read',70,'mod_forum',8),(362,'mod/forum:exportownpost','read',70,'mod_forum',8),(363,'mod/forum:addquestion','write',70,'mod_forum',16),(364,'mod/forum:allowforcesubscribe','read',70,'mod_forum',0),(365,'mod/forum:canposttomygroups','write',70,'mod_forum',0),(366,'mod/forum:canoverridediscussionlock','write',70,'mod_forum',0),(367,'mod/forum:canoverridecutoff','write',70,'mod_forum',0),(368,'mod/forum:cantogglefavourite','write',70,'mod_forum',0),(369,'mod/forum:grade','write',70,'mod_forum',0),(370,'mod/glossary:addinstance','write',50,'mod_glossary',4),(371,'mod/glossary:view','read',70,'mod_glossary',0),(372,'mod/glossary:write','write',70,'mod_glossary',16),(373,'mod/glossary:manageentries','write',70,'mod_glossary',16),(374,'mod/glossary:managecategories','write',70,'mod_glossary',16),(375,'mod/glossary:comment','write',70,'mod_glossary',16),(376,'mod/glossary:managecomments','write',70,'mod_glossary',16),(377,'mod/glossary:import','write',70,'mod_glossary',16),(378,'mod/glossary:export','read',70,'mod_glossary',0),(379,'mod/glossary:approve','write',70,'mod_glossary',16),(380,'mod/glossary:rate','write',70,'mod_glossary',0),(381,'mod/glossary:viewrating','read',70,'mod_glossary',0),(382,'mod/glossary:viewanyrating','read',70,'mod_glossary',8),(383,'mod/glossary:viewallratings','read',70,'mod_glossary',8),(384,'mod/glossary:exportentry','read',70,'mod_glossary',8),(385,'mod/glossary:exportownentry','read',70,'mod_glossary',0),(386,'mod/h5pactivity:view','read',70,'mod_h5pactivity',0),(387,'mod/h5pactivity:addinstance','write',50,'mod_h5pactivity',0),(388,'mod/h5pactivity:submit','write',70,'mod_h5pactivity',0),(389,'mod/h5pactivity:reviewattempts','read',70,'mod_h5pactivity',0),(390,'mod/imscp:view','read',70,'mod_imscp',0),(391,'mod/imscp:addinstance','write',50,'mod_imscp',4),(392,'mod/label:addinstance','write',50,'mod_label',4),(393,'mod/label:view','read',70,'mod_label',0),(394,'mod/lesson:addinstance','write',50,'mod_lesson',4),(395,'mod/lesson:edit','write',70,'mod_lesson',4),(396,'mod/lesson:grade','write',70,'mod_lesson',20),(397,'mod/lesson:viewreports','read',70,'mod_lesson',8),(398,'mod/lesson:manage','write',70,'mod_lesson',0),(399,'mod/lesson:manageoverrides','write',70,'mod_lesson',0),(400,'mod/lesson:view','read',70,'mod_lesson',0),(401,'mod/lti:view','read',70,'mod_lti',0),(402,'mod/lti:addinstance','write',50,'mod_lti',4),(403,'mod/lti:manage','write',70,'mod_lti',8),(404,'mod/lti:admin','write',70,'mod_lti',8),(405,'mod/lti:addcoursetool','write',50,'mod_lti',0),(406,'mod/lti:addpreconfiguredinstance','write',50,'mod_lti',0),(407,'mod/lti:addmanualinstance','write',50,'mod_lti',0),(408,'mod/lti:requesttooladd','write',50,'mod_lti',0),(409,'mod/page:view','read',70,'mod_page',0),(410,'mod/page:addinstance','write',50,'mod_page',4),(411,'mod/quiz:view','read',70,'mod_quiz',0),(412,'mod/quiz:addinstance','write',50,'mod_quiz',4),(413,'mod/quiz:attempt','write',70,'mod_quiz',16),(414,'mod/quiz:reviewmyattempts','read',70,'mod_quiz',0),(415,'mod/quiz:manage','write',70,'mod_quiz',16),(416,'mod/quiz:manageoverrides','write',70,'mod_quiz',0),(417,'mod/quiz:viewoverrides','read',70,'mod_quiz',0),(418,'mod/quiz:preview','write',70,'mod_quiz',0),(419,'mod/quiz:grade','write',70,'mod_quiz',20),(420,'mod/quiz:regrade','write',70,'mod_quiz',16),(421,'mod/quiz:viewreports','read',70,'mod_quiz',8),(422,'mod/quiz:deleteattempts','write',70,'mod_quiz',32),(423,'mod/quiz:reopenattempts','write',70,'mod_quiz',0),(424,'mod/quiz:ignoretimelimits','read',70,'mod_quiz',0),(425,'mod/quiz:emailconfirmsubmission','read',70,'mod_quiz',0),(426,'mod/quiz:emailnotifysubmission','read',70,'mod_quiz',0),(427,'mod/quiz:emailwarnoverdue','read',70,'mod_quiz',0),(428,'mod/quiz:emailnotifyattemptgraded','read',70,'mod_quiz',0),(429,'mod/resource:view','read',70,'mod_resource',0),(430,'mod/resource:addinstance','write',50,'mod_resource',4),(431,'mod/scorm:addinstance','write',50,'mod_scorm',4),(432,'mod/scorm:viewreport','read',70,'mod_scorm',0),(433,'mod/scorm:skipview','read',70,'mod_scorm',0),(434,'mod/scorm:savetrack','write',70,'mod_scorm',0),(435,'mod/scorm:viewscores','read',70,'mod_scorm',0),(436,'mod/scorm:deleteresponses','write',70,'mod_scorm',0),(437,'mod/scorm:deleteownresponses','write',70,'mod_scorm',0),(438,'mod/survey:addinstance','write',50,'mod_survey',4),(439,'mod/survey:participate','read',70,'mod_survey',0),(440,'mod/survey:readresponses','read',70,'mod_survey',0),(441,'mod/survey:download','read',70,'mod_survey',0),(442,'mod/url:view','read',70,'mod_url',0),(443,'mod/url:addinstance','write',50,'mod_url',4),(444,'mod/wiki:addinstance','write',50,'mod_wiki',4),(445,'mod/wiki:viewpage','read',70,'mod_wiki',0),(446,'mod/wiki:editpage','write',70,'mod_wiki',16),(447,'mod/wiki:createpage','write',70,'mod_wiki',16),(448,'mod/wiki:viewcomment','read',70,'mod_wiki',0),(449,'mod/wiki:editcomment','write',70,'mod_wiki',16),(450,'mod/wiki:managecomment','write',70,'mod_wiki',0),(451,'mod/wiki:managefiles','write',70,'mod_wiki',0),(452,'mod/wiki:overridelock','write',70,'mod_wiki',0),(453,'mod/wiki:managewiki','write',70,'mod_wiki',0),(454,'mod/workshop:view','read',70,'mod_workshop',0),(455,'mod/workshop:addinstance','write',50,'mod_workshop',4),(456,'mod/workshop:switchphase','write',70,'mod_workshop',0),(457,'mod/workshop:editdimensions','write',70,'mod_workshop',4),(458,'mod/workshop:submit','write',70,'mod_workshop',0),(459,'mod/workshop:peerassess','write',70,'mod_workshop',0),(460,'mod/workshop:manageexamples','write',70,'mod_workshop',0),(461,'mod/workshop:allocate','write',70,'mod_workshop',0),(462,'mod/workshop:publishsubmissions','write',70,'mod_workshop',0),(463,'mod/workshop:viewauthornames','read',70,'mod_workshop',0),(464,'mod/workshop:viewreviewernames','read',70,'mod_workshop',0),(465,'mod/workshop:viewallsubmissions','read',70,'mod_workshop',0),(466,'mod/workshop:viewpublishedsubmissions','read',70,'mod_workshop',0),(467,'mod/workshop:viewauthorpublished','read',70,'mod_workshop',0),(468,'mod/workshop:viewallassessments','read',70,'mod_workshop',0),(469,'mod/workshop:overridegrades','write',70,'mod_workshop',0),(470,'mod/workshop:ignoredeadlines','write',70,'mod_workshop',0),(471,'mod/workshop:deletesubmissions','write',70,'mod_workshop',0),(472,'mod/workshop:exportsubmissions','read',70,'mod_workshop',0),(473,'auth/oauth2:managelinkedlogins','write',30,'auth_oauth2',0),(474,'enrol/category:synchronised','write',10,'enrol_category',0),(475,'enrol/category:config','write',50,'enrol_category',0),(476,'enrol/cohort:config','write',50,'enrol_cohort',0),(477,'enrol/cohort:unenrol','write',50,'enrol_cohort',0),(478,'enrol/database:unenrol','write',50,'enrol_database',0),(479,'enrol/database:config','write',50,'enrol_database',0),(480,'enrol/fee:config','write',50,'enrol_fee',0),(481,'enrol/fee:manage','write',50,'enrol_fee',0),(482,'enrol/fee:unenrol','write',50,'enrol_fee',0),(483,'enrol/fee:unenrolself','write',50,'enrol_fee',0),(484,'enrol/flatfile:manage','write',50,'enrol_flatfile',0),(485,'enrol/flatfile:unenrol','write',50,'enrol_flatfile',0),(486,'enrol/guest:config','write',50,'enrol_guest',0),(487,'enrol/imsenterprise:config','write',50,'enrol_imsenterprise',0),(488,'enrol/ldap:manage','write',50,'enrol_ldap',0),(489,'enrol/lti:config','write',50,'enrol_lti',0),(490,'enrol/lti:unenrol','write',50,'enrol_lti',0),(491,'enrol/manual:config','write',50,'enrol_manual',0),(492,'enrol/manual:enrol','write',50,'enrol_manual',0),(493,'enrol/manual:manage','write',50,'enrol_manual',0),(494,'enrol/manual:unenrol','write',50,'enrol_manual',0),(495,'enrol/manual:unenrolself','write',50,'enrol_manual',0),(496,'enrol/meta:config','write',50,'enrol_meta',0),(497,'enrol/meta:selectaslinked','read',50,'enrol_meta',0),(498,'enrol/meta:unenrol','write',50,'enrol_meta',0),(499,'enrol/mnet:config','write',50,'enrol_mnet',0),(500,'enrol/paypal:config','write',50,'enrol_paypal',0),(501,'enrol/paypal:manage','write',50,'enrol_paypal',0),(502,'enrol/paypal:unenrol','write',50,'enrol_paypal',0),(503,'enrol/paypal:unenrolself','write',50,'enrol_paypal',0),(504,'enrol/self:config','write',50,'enrol_self',0),(505,'enrol/self:manage','write',50,'enrol_self',0),(506,'enrol/self:holdkey','write',50,'enrol_self',0),(507,'enrol/self:unenrolself','write',50,'enrol_self',0),(508,'enrol/self:unenrol','write',50,'enrol_self',0),(509,'enrol/self:enrolself','write',50,'enrol_self',0),(510,'message/airnotifier:managedevice','write',10,'message_airnotifier',0),(511,'block/accessreview:addinstance','write',80,'block_accessreview',0),(512,'block/accessreview:view','read',80,'block_accessreview',0),(513,'block/activity_modules:addinstance','write',80,'block_activity_modules',20),(514,'block/activity_results:addinstance','write',80,'block_activity_results',20),(515,'block/admin_bookmarks:myaddinstance','write',10,'block_admin_bookmarks',0),(516,'block/admin_bookmarks:addinstance','write',80,'block_admin_bookmarks',20),(517,'block/badges:addinstance','read',80,'block_badges',0),(518,'block/badges:myaddinstance','read',10,'block_badges',8),(519,'block/blog_menu:addinstance','write',80,'block_blog_menu',20),(520,'block/blog_recent:addinstance','write',80,'block_blog_recent',20),(521,'block/blog_tags:addinstance','write',80,'block_blog_tags',20),(522,'block/calendar_month:myaddinstance','write',10,'block_calendar_month',0),(523,'block/calendar_month:addinstance','write',80,'block_calendar_month',20),(524,'block/calendar_upcoming:myaddinstance','write',10,'block_calendar_upcoming',0),(525,'block/calendar_upcoming:addinstance','write',80,'block_calendar_upcoming',20),(526,'block/comments:myaddinstance','write',10,'block_comments',0),(527,'block/comments:addinstance','write',80,'block_comments',20),(528,'block/completionstatus:addinstance','write',80,'block_completionstatus',20),(529,'block/course_list:myaddinstance','write',10,'block_course_list',0),(530,'block/course_list:addinstance','write',80,'block_course_list',20),(531,'block/course_summary:addinstance','write',80,'block_course_summary',20),(532,'block/feedback:addinstance','write',80,'block_feedback',20),(533,'block/globalsearch:myaddinstance','write',10,'block_globalsearch',0),(534,'block/globalsearch:addinstance','write',80,'block_globalsearch',0),(535,'block/glossary_random:myaddinstance','write',10,'block_glossary_random',0),(536,'block/glossary_random:addinstance','write',80,'block_glossary_random',20),(537,'block/html:myaddinstance','write',10,'block_html',0),(538,'block/html:addinstance','write',80,'block_html',20),(539,'block/login:addinstance','write',80,'block_login',20),(540,'block/lp:addinstance','write',10,'block_lp',0),(541,'block/lp:myaddinstance','write',10,'block_lp',0),(542,'block/mentees:myaddinstance','write',10,'block_mentees',0),(543,'block/mentees:addinstance','write',80,'block_mentees',20),(544,'block/mnet_hosts:myaddinstance','write',10,'block_mnet_hosts',0),(545,'block/mnet_hosts:addinstance','write',80,'block_mnet_hosts',20),(546,'block/myoverview:myaddinstance','write',10,'block_myoverview',0),(547,'block/myprofile:myaddinstance','write',10,'block_myprofile',0),(548,'block/myprofile:addinstance','write',80,'block_myprofile',20),(549,'block/navigation:myaddinstance','write',10,'block_navigation',0),(550,'block/navigation:addinstance','write',80,'block_navigation',20),(551,'block/news_items:myaddinstance','write',10,'block_news_items',0),(552,'block/news_items:addinstance','write',80,'block_news_items',20),(553,'block/online_users:myaddinstance','write',10,'block_online_users',0),(554,'block/online_users:addinstance','write',80,'block_online_users',20),(555,'block/online_users:viewlist','read',80,'block_online_users',0),(556,'block/private_files:myaddinstance','write',10,'block_private_files',0),(557,'block/private_files:addinstance','write',80,'block_private_files',20),(558,'block/recent_activity:addinstance','write',80,'block_recent_activity',20),(559,'block/recent_activity:viewaddupdatemodule','read',50,'block_recent_activity',0),(560,'block/recent_activity:viewdeletemodule','read',50,'block_recent_activity',0),(561,'block/recentlyaccessedcourses:myaddinstance','write',10,'block_recentlyaccessedcourses',0),(562,'block/recentlyaccesseditems:myaddinstance','write',10,'block_recentlyaccesseditems',0),(563,'block/rss_client:myaddinstance','write',10,'block_rss_client',0),(564,'block/rss_client:addinstance','write',80,'block_rss_client',20),(565,'block/rss_client:manageownfeeds','write',80,'block_rss_client',0),(566,'block/rss_client:manageanyfeeds','write',80,'block_rss_client',16),(567,'block/search_forums:addinstance','write',80,'block_search_forums',20),(568,'block/section_links:addinstance','write',80,'block_section_links',20),(569,'block/selfcompletion:addinstance','write',80,'block_selfcompletion',20),(570,'block/settings:myaddinstance','write',10,'block_settings',0),(571,'block/settings:addinstance','write',80,'block_settings',20),(572,'block/site_main_menu:addinstance','write',80,'block_site_main_menu',20),(573,'block/social_activities:addinstance','write',80,'block_social_activities',20),(574,'block/starredcourses:myaddinstance','write',10,'block_starredcourses',0),(575,'block/tag_flickr:addinstance','write',80,'block_tag_flickr',20),(576,'block/tag_youtube:addinstance','write',80,'block_tag_youtube',20),(577,'block/tags:myaddinstance','write',10,'block_tags',0),(578,'block/tags:addinstance','write',80,'block_tags',20),(579,'block/timeline:myaddinstance','write',10,'block_timeline',0),(580,'report/completion:view','read',50,'report_completion',8),(581,'report/courseoverview:view','read',10,'report_courseoverview',8),(582,'report/log:view','read',50,'report_log',8),(583,'report/log:viewtoday','read',50,'report_log',8),(584,'report/loglive:view','read',50,'report_loglive',8),(585,'report/outline:view','read',50,'report_outline',8),(586,'report/outline:viewuserreport','read',50,'report_outline',8),(587,'report/participation:view','read',50,'report_participation',8),(588,'report/performance:view','read',10,'report_performance',2),(589,'report/progress:view','read',50,'report_progress',8),(590,'report/questioninstances:view','read',10,'report_questioninstances',0),(591,'report/security:view','read',10,'report_security',2),(592,'report/stats:view','read',50,'report_stats',8),(593,'report/status:view','read',10,'report_status',2),(594,'report/usersessions:manageownsessions','write',30,'report_usersessions',0),(595,'gradeexport/ods:view','read',50,'gradeexport_ods',8),(596,'gradeexport/ods:publish','read',50,'gradeexport_ods',8),(597,'gradeexport/txt:view','read',50,'gradeexport_txt',8),(598,'gradeexport/txt:publish','read',50,'gradeexport_txt',8),(599,'gradeexport/xls:view','read',50,'gradeexport_xls',8),(600,'gradeexport/xls:publish','read',50,'gradeexport_xls',8),(601,'gradeexport/xml:view','read',50,'gradeexport_xml',8),(602,'gradeexport/xml:publish','read',50,'gradeexport_xml',8),(603,'gradeimport/csv:view','write',50,'gradeimport_csv',0),(604,'gradeimport/direct:view','write',50,'gradeimport_direct',0),(605,'gradeimport/xml:view','write',50,'gradeimport_xml',0),(606,'gradeimport/xml:publish','write',50,'gradeimport_xml',0),(607,'gradereport/grader:view','read',50,'gradereport_grader',8),(608,'gradereport/history:view','read',50,'gradereport_history',8),(609,'gradereport/outcomes:view','read',50,'gradereport_outcomes',8),(610,'gradereport/overview:view','read',50,'gradereport_overview',8),(611,'gradereport/singleview:view','read',50,'gradereport_singleview',8),(612,'gradereport/summary:view','read',50,'gradereport_summary',8),(613,'gradereport/user:view','read',50,'gradereport_user',8),(614,'webservice/rest:use','read',50,'webservice_rest',0),(615,'webservice/soap:use','read',50,'webservice_soap',0),(616,'repository/areafiles:view','read',70,'repository_areafiles',0),(617,'repository/contentbank:view','read',70,'repository_contentbank',0),(618,'repository/contentbank:accesscoursecontent','read',50,'repository_contentbank',0),(619,'repository/contentbank:accesscoursecategorycontent','read',40,'repository_contentbank',0),(620,'repository/contentbank:accessgeneralcontent','read',40,'repository_contentbank',0),(621,'repository/coursefiles:view','read',70,'repository_coursefiles',0),(622,'repository/dropbox:view','read',70,'repository_dropbox',0),(623,'repository/equella:view','read',70,'repository_equella',0),(624,'repository/filesystem:view','read',70,'repository_filesystem',0),(625,'repository/flickr:view','read',70,'repository_flickr',0),(626,'repository/flickr_public:view','read',70,'repository_flickr_public',0),(627,'repository/googledocs:view','read',70,'repository_googledocs',0),(628,'repository/local:view','read',70,'repository_local',0),(629,'repository/merlot:view','read',70,'repository_merlot',0),(630,'repository/nextcloud:view','read',70,'repository_nextcloud',0),(631,'repository/onedrive:view','read',70,'repository_onedrive',0),(632,'repository/recent:view','read',70,'repository_recent',0),(633,'repository/s3:view','read',70,'repository_s3',0),(634,'repository/upload:view','read',70,'repository_upload',0),(635,'repository/url:view','read',70,'repository_url',0),(636,'repository/user:view','read',70,'repository_user',0),(637,'repository/webdav:view','read',70,'repository_webdav',0),(638,'repository/wikimedia:view','read',70,'repository_wikimedia',0),(639,'repository/youtube:view','read',70,'repository_youtube',0),(640,'moodle/question:commentmine','write',50,'qbank_comment',0),(641,'moodle/question:commentall','write',50,'qbank_comment',0),(642,'qbank/customfields:changelockedcustomfields','write',50,'qbank_customfields',16),(643,'qbank/customfields:configurecustomfields','write',10,'qbank_customfields',16),(644,'qbank/customfields:viewhiddencustomfields','read',50,'qbank_customfields',0),(645,'tool/brickfield:viewcoursetools','read',50,'tool_brickfield',8),(646,'tool/brickfield:viewsystemtools','read',10,'tool_brickfield',2),(647,'tool/customlang:view','read',10,'tool_customlang',2),(648,'tool/customlang:edit','write',10,'tool_customlang',6),(649,'tool/customlang:export','read',10,'tool_customlang',2),(650,'tool/dataprivacy:managedatarequests','write',10,'tool_dataprivacy',60),(651,'tool/dataprivacy:requestdeleteforotheruser','write',10,'tool_dataprivacy',60),(652,'tool/dataprivacy:managedataregistry','write',10,'tool_dataprivacy',60),(653,'tool/dataprivacy:makedatarequestsforchildren','write',30,'tool_dataprivacy',24),(654,'tool/dataprivacy:makedatadeletionrequestsforchildren','write',30,'tool_dataprivacy',24),(655,'tool/dataprivacy:downloadownrequest','read',30,'tool_dataprivacy',0),(656,'tool/dataprivacy:downloadallrequests','read',30,'tool_dataprivacy',8),(657,'tool/dataprivacy:requestdelete','write',30,'tool_dataprivacy',32),(658,'tool/lpmigrate:frameworksmigrate','write',10,'tool_lpmigrate',0),(659,'tool/monitor:subscribe','read',50,'tool_monitor',8),(660,'tool/monitor:managerules','write',50,'tool_monitor',4),(661,'tool/monitor:managetool','write',10,'tool_monitor',4),(662,'tool/policy:accept','write',10,'tool_policy',0),(663,'tool/policy:acceptbehalf','write',30,'tool_policy',8),(664,'tool/policy:managedocs','write',10,'tool_policy',0),(665,'tool/policy:viewacceptances','read',10,'tool_policy',0),(666,'tool/recyclebin:deleteitems','write',50,'tool_recyclebin',32),(667,'tool/recyclebin:restoreitems','write',50,'tool_recyclebin',0),(668,'tool/recyclebin:viewitems','read',50,'tool_recyclebin',0),(669,'tool/uploaduser:uploaduserpictures','write',10,'tool_uploaduser',16),(670,'tool/usertours:managetours','write',10,'tool_usertours',4),(671,'contenttype/h5p:access','read',50,'contenttype_h5p',0),(672,'contenttype/h5p:upload','write',50,'contenttype_h5p',16),(673,'contenttype/h5p:useeditor','write',50,'contenttype_h5p',16),(674,'local/adminer:useadminer','write',10,'local_adminer',63),(675,'booktool/exportimscp:export','read',70,'booktool_exportimscp',0),(676,'booktool/importhtml:import','write',70,'booktool_importhtml',4),(677,'booktool/print:print','read',70,'booktool_print',0),(678,'forumreport/summary:view','read',70,'forumreport_summary',0),(679,'forumreport/summary:viewall','read',70,'forumreport_summary',8),(680,'quiz/grading:viewstudentnames','read',70,'quiz_grading',0),(681,'quiz/grading:viewidnumber','read',70,'quiz_grading',0),(682,'quiz/statistics:view','read',70,'quiz_statistics',0),(683,'quizaccess/seb:managetemplates','write',10,'quizaccess_seb',0),(684,'quizaccess/seb:bypassseb','read',70,'quizaccess_seb',0),(685,'quizaccess/seb:manage_seb_requiresafeexambrowser','write',70,'quizaccess_seb',0),(686,'quizaccess/seb:manage_seb_templateid','read',70,'quizaccess_seb',0),(687,'quizaccess/seb:manage_filemanager_sebconfigfile','write',70,'quizaccess_seb',0),(688,'quizaccess/seb:manage_seb_showsebdownloadlink','write',70,'quizaccess_seb',0),(689,'quizaccess/seb:manage_seb_allowedbrowserexamkeys','write',70,'quizaccess_seb',0),(690,'quizaccess/seb:manage_seb_linkquitseb','write',70,'quizaccess_seb',0),(691,'quizaccess/seb:manage_seb_userconfirmquit','write',70,'quizaccess_seb',0),(692,'quizaccess/seb:manage_seb_allowuserquitseb','write',70,'quizaccess_seb',0),(693,'quizaccess/seb:manage_seb_quitpassword','write',70,'quizaccess_seb',0),(694,'quizaccess/seb:manage_seb_allowreloadinexam','write',70,'quizaccess_seb',0),(695,'quizaccess/seb:manage_seb_showsebtaskbar','write',70,'quizaccess_seb',0),(696,'quizaccess/seb:manage_seb_showreloadbutton','write',70,'quizaccess_seb',0),(697,'quizaccess/seb:manage_seb_showtime','write',70,'quizaccess_seb',0),(698,'quizaccess/seb:manage_seb_showkeyboardlayout','write',70,'quizaccess_seb',0),(699,'quizaccess/seb:manage_seb_showwificontrol','write',70,'quizaccess_seb',0),(700,'quizaccess/seb:manage_seb_enableaudiocontrol','write',70,'quizaccess_seb',0),(701,'quizaccess/seb:manage_seb_muteonstartup','write',70,'quizaccess_seb',0),(702,'quizaccess/seb:manage_seb_allowspellchecking','write',70,'quizaccess_seb',0),(703,'quizaccess/seb:manage_seb_activateurlfiltering','write',70,'quizaccess_seb',0),(704,'quizaccess/seb:manage_seb_filterembeddedcontent','write',70,'quizaccess_seb',0),(705,'quizaccess/seb:manage_seb_expressionsallowed','write',70,'quizaccess_seb',0),(706,'quizaccess/seb:manage_seb_regexallowed','write',70,'quizaccess_seb',0),(707,'quizaccess/seb:manage_seb_expressionsblocked','write',70,'quizaccess_seb',0),(708,'quizaccess/seb:manage_seb_regexblocked','write',70,'quizaccess_seb',0),(709,'atto/h5p:addembed','write',70,'atto_h5p',0),(710,'atto/recordrtc:recordaudio','write',70,'atto_recordrtc',0),(711,'atto/recordrtc:recordvideo','write',70,'atto_recordrtc',0),(712,'tiny/h5p:addembed','write',70,'tiny_h5p',0),(713,'tiny/recordrtc:recordaudio','write',70,'tiny_recordrtc',0),(714,'tiny/recordrtc:recordvideo','write',70,'tiny_recordrtc',0);
/*!40000 ALTER TABLE `mdl_capabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_chat`
--

DROP TABLE IF EXISTS `mdl_chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_chat` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` longtext NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `keepdays` bigint(11) NOT NULL DEFAULT 0,
  `studentlogs` smallint(4) NOT NULL DEFAULT 0,
  `chattime` bigint(10) NOT NULL DEFAULT 0,
  `schedule` smallint(4) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_chat_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Each of these is a chat room';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_chat`
--

LOCK TABLES `mdl_chat` WRITE;
/*!40000 ALTER TABLE `mdl_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_chat_messages`
--

DROP TABLE IF EXISTS `mdl_chat_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_chat_messages` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `chatid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `groupid` bigint(10) NOT NULL DEFAULT 0,
  `issystem` tinyint(1) NOT NULL DEFAULT 0,
  `message` longtext NOT NULL,
  `timestamp` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_chatmess_use_ix` (`userid`),
  KEY `mdl_chatmess_gro_ix` (`groupid`),
  KEY `mdl_chatmess_timcha_ix` (`timestamp`,`chatid`),
  KEY `mdl_chatmess_cha_ix` (`chatid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores all the actual chat messages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_chat_messages`
--

LOCK TABLES `mdl_chat_messages` WRITE;
/*!40000 ALTER TABLE `mdl_chat_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_chat_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_chat_messages_current`
--

DROP TABLE IF EXISTS `mdl_chat_messages_current`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_chat_messages_current` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `chatid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `groupid` bigint(10) NOT NULL DEFAULT 0,
  `issystem` tinyint(1) NOT NULL DEFAULT 0,
  `message` longtext NOT NULL,
  `timestamp` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_chatmesscurr_use_ix` (`userid`),
  KEY `mdl_chatmesscurr_gro_ix` (`groupid`),
  KEY `mdl_chatmesscurr_timcha_ix` (`timestamp`,`chatid`),
  KEY `mdl_chatmesscurr_cha_ix` (`chatid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores current session';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_chat_messages_current`
--

LOCK TABLES `mdl_chat_messages_current` WRITE;
/*!40000 ALTER TABLE `mdl_chat_messages_current` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_chat_messages_current` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_chat_users`
--

DROP TABLE IF EXISTS `mdl_chat_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_chat_users` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `chatid` bigint(11) NOT NULL DEFAULT 0,
  `userid` bigint(11) NOT NULL DEFAULT 0,
  `groupid` bigint(11) NOT NULL DEFAULT 0,
  `version` varchar(16) NOT NULL DEFAULT '',
  `ip` varchar(45) NOT NULL DEFAULT '',
  `firstping` bigint(10) NOT NULL DEFAULT 0,
  `lastping` bigint(10) NOT NULL DEFAULT 0,
  `lastmessageping` bigint(10) NOT NULL DEFAULT 0,
  `sid` varchar(32) NOT NULL DEFAULT '',
  `course` bigint(10) NOT NULL DEFAULT 0,
  `lang` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_chatuser_use_ix` (`userid`),
  KEY `mdl_chatuser_las_ix` (`lastping`),
  KEY `mdl_chatuser_gro_ix` (`groupid`),
  KEY `mdl_chatuser_cha_ix` (`chatid`),
  KEY `mdl_chatuser_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Keeps track of which users are in which chat rooms';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_chat_users`
--

LOCK TABLES `mdl_chat_users` WRITE;
/*!40000 ALTER TABLE `mdl_chat_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_chat_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_choice`
--

DROP TABLE IF EXISTS `mdl_choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_choice` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` longtext NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `publish` tinyint(2) NOT NULL DEFAULT 0,
  `showresults` tinyint(2) NOT NULL DEFAULT 0,
  `display` smallint(4) NOT NULL DEFAULT 0,
  `allowupdate` tinyint(2) NOT NULL DEFAULT 0,
  `allowmultiple` tinyint(2) NOT NULL DEFAULT 0,
  `showunanswered` tinyint(2) NOT NULL DEFAULT 0,
  `includeinactive` tinyint(2) NOT NULL DEFAULT 1,
  `limitanswers` tinyint(2) NOT NULL DEFAULT 0,
  `timeopen` bigint(10) NOT NULL DEFAULT 0,
  `timeclose` bigint(10) NOT NULL DEFAULT 0,
  `showpreview` tinyint(2) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `completionsubmit` tinyint(1) NOT NULL DEFAULT 0,
  `showavailable` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_choi_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Available choices are stored here';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_choice`
--

LOCK TABLES `mdl_choice` WRITE;
/*!40000 ALTER TABLE `mdl_choice` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_choice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_choice_answers`
--

DROP TABLE IF EXISTS `mdl_choice_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_choice_answers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `choiceid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `optionid` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_choiansw_use_ix` (`userid`),
  KEY `mdl_choiansw_cho_ix` (`choiceid`),
  KEY `mdl_choiansw_opt_ix` (`optionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='choices performed by users';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_choice_answers`
--

LOCK TABLES `mdl_choice_answers` WRITE;
/*!40000 ALTER TABLE `mdl_choice_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_choice_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_choice_options`
--

DROP TABLE IF EXISTS `mdl_choice_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_choice_options` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `choiceid` bigint(10) NOT NULL DEFAULT 0,
  `text` longtext DEFAULT NULL,
  `maxanswers` bigint(10) DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_choiopti_cho_ix` (`choiceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='available options to choice';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_choice_options`
--

LOCK TABLES `mdl_choice_options` WRITE;
/*!40000 ALTER TABLE `mdl_choice_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_choice_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_cohort`
--

DROP TABLE IF EXISTS `mdl_cohort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_cohort` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL,
  `name` varchar(254) NOT NULL DEFAULT '',
  `idnumber` varchar(100) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `descriptionformat` tinyint(2) NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `component` varchar(100) NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `theme` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_coho_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Each record represents one cohort (aka site-wide group).';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_cohort`
--

LOCK TABLES `mdl_cohort` WRITE;
/*!40000 ALTER TABLE `mdl_cohort` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_cohort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_cohort_members`
--

DROP TABLE IF EXISTS `mdl_cohort_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_cohort_members` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `cohortid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `timeadded` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_cohomemb_cohuse_uix` (`cohortid`,`userid`),
  KEY `mdl_cohomemb_coh_ix` (`cohortid`),
  KEY `mdl_cohomemb_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Link a user to a cohort.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_cohort_members`
--

LOCK TABLES `mdl_cohort_members` WRITE;
/*!40000 ALTER TABLE `mdl_cohort_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_cohort_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_comments`
--

DROP TABLE IF EXISTS `mdl_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_comments` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL,
  `component` varchar(255) DEFAULT NULL,
  `commentarea` varchar(255) NOT NULL DEFAULT '',
  `itemid` bigint(10) NOT NULL,
  `content` longtext NOT NULL,
  `format` tinyint(2) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_comm_concomite_ix` (`contextid`,`commentarea`,`itemid`),
  KEY `mdl_comm_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='moodle comments module';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_comments`
--

LOCK TABLES `mdl_comments` WRITE;
/*!40000 ALTER TABLE `mdl_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency`
--

DROP TABLE IF EXISTS `mdl_competency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_competency` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `shortname` varchar(100) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `descriptionformat` smallint(4) NOT NULL DEFAULT 0,
  `idnumber` varchar(100) DEFAULT NULL,
  `competencyframeworkid` bigint(10) NOT NULL,
  `parentid` bigint(10) NOT NULL DEFAULT 0,
  `path` varchar(255) NOT NULL DEFAULT '',
  `sortorder` bigint(10) NOT NULL,
  `ruletype` varchar(100) DEFAULT NULL,
  `ruleoutcome` tinyint(2) NOT NULL DEFAULT 0,
  `ruleconfig` longtext DEFAULT NULL,
  `scaleid` bigint(10) DEFAULT NULL,
  `scaleconfiguration` longtext DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_comp_comidn_uix` (`competencyframeworkid`,`idnumber`),
  KEY `mdl_comp_rul_ix` (`ruleoutcome`),
  KEY `mdl_comp_sca_ix` (`scaleid`),
  KEY `mdl_comp_use_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='This table contains the master record of each competency in ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency`
--

LOCK TABLES `mdl_competency` WRITE;
/*!40000 ALTER TABLE `mdl_competency` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_coursecomp`
--

DROP TABLE IF EXISTS `mdl_competency_coursecomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_competency_coursecomp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `competencyid` bigint(10) NOT NULL,
  `ruleoutcome` tinyint(2) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  `sortorder` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_compcour_coucom_uix` (`courseid`,`competencyid`),
  KEY `mdl_compcour_courul_ix` (`courseid`,`ruleoutcome`),
  KEY `mdl_compcour_cou2_ix` (`courseid`),
  KEY `mdl_compcour_com_ix` (`competencyid`),
  KEY `mdl_compcour_use2_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Link a competency to a course.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_coursecomp`
--

LOCK TABLES `mdl_competency_coursecomp` WRITE;
/*!40000 ALTER TABLE `mdl_competency_coursecomp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_coursecomp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_coursecompsetting`
--

DROP TABLE IF EXISTS `mdl_competency_coursecompsetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_competency_coursecompsetting` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `pushratingstouserplans` tinyint(2) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_compcour_cou_uix` (`courseid`),
  KEY `mdl_compcour_use_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='This table contains the course specific settings for compete';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_coursecompsetting`
--

LOCK TABLES `mdl_competency_coursecompsetting` WRITE;
/*!40000 ALTER TABLE `mdl_competency_coursecompsetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_coursecompsetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_evidence`
--

DROP TABLE IF EXISTS `mdl_competency_evidence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_competency_evidence` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `usercompetencyid` bigint(10) NOT NULL,
  `contextid` bigint(10) NOT NULL,
  `action` tinyint(2) NOT NULL,
  `actionuserid` bigint(10) DEFAULT NULL,
  `descidentifier` varchar(255) NOT NULL DEFAULT '',
  `desccomponent` varchar(255) NOT NULL DEFAULT '',
  `desca` longtext DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `grade` bigint(10) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_compevid_use_ix` (`usercompetencyid`),
  KEY `mdl_compevid_con_ix` (`contextid`),
  KEY `mdl_compevid_act_ix` (`actionuserid`),
  KEY `mdl_compevid_use2_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='The evidence linked to a user competency';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_evidence`
--

LOCK TABLES `mdl_competency_evidence` WRITE;
/*!40000 ALTER TABLE `mdl_competency_evidence` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_evidence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_framework`
--

DROP TABLE IF EXISTS `mdl_competency_framework`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_competency_framework` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `shortname` varchar(100) DEFAULT NULL,
  `contextid` bigint(10) NOT NULL,
  `idnumber` varchar(100) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `descriptionformat` smallint(4) NOT NULL DEFAULT 0,
  `scaleid` bigint(11) DEFAULT NULL,
  `scaleconfiguration` longtext NOT NULL,
  `visible` tinyint(2) NOT NULL DEFAULT 1,
  `taxonomies` varchar(255) NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_compfram_idn_uix` (`idnumber`),
  KEY `mdl_compfram_con_ix` (`contextid`),
  KEY `mdl_compfram_sca_ix` (`scaleid`),
  KEY `mdl_compfram_use_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='List of competency frameworks.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_framework`
--

LOCK TABLES `mdl_competency_framework` WRITE;
/*!40000 ALTER TABLE `mdl_competency_framework` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_framework` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_modulecomp`
--

DROP TABLE IF EXISTS `mdl_competency_modulecomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_competency_modulecomp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `cmid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  `sortorder` bigint(10) NOT NULL,
  `competencyid` bigint(10) NOT NULL,
  `ruleoutcome` tinyint(2) NOT NULL,
  `overridegrade` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_compmodu_cmicom_uix` (`cmid`,`competencyid`),
  KEY `mdl_compmodu_cmirul_ix` (`cmid`,`ruleoutcome`),
  KEY `mdl_compmodu_cmi_ix` (`cmid`),
  KEY `mdl_compmodu_com_ix` (`competencyid`),
  KEY `mdl_compmodu_use_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Link a competency to a module.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_modulecomp`
--

LOCK TABLES `mdl_competency_modulecomp` WRITE;
/*!40000 ALTER TABLE `mdl_competency_modulecomp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_modulecomp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_plan`
--

DROP TABLE IF EXISTS `mdl_competency_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_competency_plan` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` longtext DEFAULT NULL,
  `descriptionformat` smallint(4) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL,
  `templateid` bigint(10) DEFAULT NULL,
  `origtemplateid` bigint(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `duedate` bigint(10) DEFAULT 0,
  `reviewerid` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_compplan_usesta_ix` (`userid`,`status`),
  KEY `mdl_compplan_tem_ix` (`templateid`),
  KEY `mdl_compplan_stadue_ix` (`status`,`duedate`),
  KEY `mdl_compplan_use_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Learning plans';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_plan`
--

LOCK TABLES `mdl_competency_plan` WRITE;
/*!40000 ALTER TABLE `mdl_competency_plan` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_plancomp`
--

DROP TABLE IF EXISTS `mdl_competency_plancomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_competency_plancomp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `planid` bigint(10) NOT NULL,
  `competencyid` bigint(10) NOT NULL,
  `sortorder` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_compplan_placom_uix` (`planid`,`competencyid`),
  KEY `mdl_compplan_use2_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Plan competencies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_plancomp`
--

LOCK TABLES `mdl_competency_plancomp` WRITE;
/*!40000 ALTER TABLE `mdl_competency_plancomp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_plancomp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_relatedcomp`
--

DROP TABLE IF EXISTS `mdl_competency_relatedcomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_competency_relatedcomp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `competencyid` bigint(10) NOT NULL,
  `relatedcompetencyid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_comprela_com_ix` (`competencyid`),
  KEY `mdl_comprela_rel_ix` (`relatedcompetencyid`),
  KEY `mdl_comprela_use_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Related competencies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_relatedcomp`
--

LOCK TABLES `mdl_competency_relatedcomp` WRITE;
/*!40000 ALTER TABLE `mdl_competency_relatedcomp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_relatedcomp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_template`
--

DROP TABLE IF EXISTS `mdl_competency_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_competency_template` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `shortname` varchar(100) DEFAULT NULL,
  `contextid` bigint(10) NOT NULL,
  `description` longtext DEFAULT NULL,
  `descriptionformat` smallint(4) NOT NULL DEFAULT 0,
  `visible` tinyint(2) NOT NULL DEFAULT 1,
  `duedate` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_comptemp_con_ix` (`contextid`),
  KEY `mdl_comptemp_use_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Learning plan templates.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_template`
--

LOCK TABLES `mdl_competency_template` WRITE;
/*!40000 ALTER TABLE `mdl_competency_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_templatecohort`
--

DROP TABLE IF EXISTS `mdl_competency_templatecohort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_competency_templatecohort` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `templateid` bigint(10) NOT NULL,
  `cohortid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_comptemp_temcoh_uix` (`templateid`,`cohortid`),
  KEY `mdl_comptemp_tem2_ix` (`templateid`),
  KEY `mdl_comptemp_use3_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Default comment for the table, please edit me';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_templatecohort`
--

LOCK TABLES `mdl_competency_templatecohort` WRITE;
/*!40000 ALTER TABLE `mdl_competency_templatecohort` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_templatecohort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_templatecomp`
--

DROP TABLE IF EXISTS `mdl_competency_templatecomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_competency_templatecomp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `templateid` bigint(10) NOT NULL,
  `competencyid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  `sortorder` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_comptemp_tem_ix` (`templateid`),
  KEY `mdl_comptemp_com_ix` (`competencyid`),
  KEY `mdl_comptemp_use2_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Link a competency to a learning plan template.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_templatecomp`
--

LOCK TABLES `mdl_competency_templatecomp` WRITE;
/*!40000 ALTER TABLE `mdl_competency_templatecomp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_templatecomp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_usercomp`
--

DROP TABLE IF EXISTS `mdl_competency_usercomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_competency_usercomp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `competencyid` bigint(10) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `reviewerid` bigint(10) DEFAULT NULL,
  `proficiency` tinyint(2) DEFAULT NULL,
  `grade` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_compuser_usecom_uix` (`userid`,`competencyid`),
  KEY `mdl_compuser_use_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='User competencies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_usercomp`
--

LOCK TABLES `mdl_competency_usercomp` WRITE;
/*!40000 ALTER TABLE `mdl_competency_usercomp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_usercomp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_usercompcourse`
--

DROP TABLE IF EXISTS `mdl_competency_usercompcourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_competency_usercompcourse` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `courseid` bigint(10) NOT NULL,
  `competencyid` bigint(10) NOT NULL,
  `proficiency` tinyint(2) DEFAULT NULL,
  `grade` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_compuser_usecoucom_uix` (`userid`,`courseid`,`competencyid`),
  KEY `mdl_compuser_use2_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='User competencies in a course';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_usercompcourse`
--

LOCK TABLES `mdl_competency_usercompcourse` WRITE;
/*!40000 ALTER TABLE `mdl_competency_usercompcourse` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_usercompcourse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_usercompplan`
--

DROP TABLE IF EXISTS `mdl_competency_usercompplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_competency_usercompplan` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `competencyid` bigint(10) NOT NULL,
  `planid` bigint(10) NOT NULL,
  `proficiency` tinyint(2) DEFAULT NULL,
  `grade` bigint(10) DEFAULT NULL,
  `sortorder` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_compuser_usecompla_uix` (`userid`,`competencyid`,`planid`),
  KEY `mdl_compuser_use3_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='User competencies plans';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_usercompplan`
--

LOCK TABLES `mdl_competency_usercompplan` WRITE;
/*!40000 ALTER TABLE `mdl_competency_usercompplan` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_usercompplan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_userevidence`
--

DROP TABLE IF EXISTS `mdl_competency_userevidence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_competency_userevidence` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `descriptionformat` tinyint(1) NOT NULL,
  `url` longtext NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_compuser_use4_ix` (`userid`),
  KEY `mdl_compuser_use5_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='The evidence of prior learning';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_userevidence`
--

LOCK TABLES `mdl_competency_userevidence` WRITE;
/*!40000 ALTER TABLE `mdl_competency_userevidence` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_userevidence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_competency_userevidencecomp`
--

DROP TABLE IF EXISTS `mdl_competency_userevidencecomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_competency_userevidencecomp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userevidenceid` bigint(10) NOT NULL,
  `competencyid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_compuser_usecom2_uix` (`userevidenceid`,`competencyid`),
  KEY `mdl_compuser_use6_ix` (`userevidenceid`),
  KEY `mdl_compuser_use7_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Relationship between user evidence and competencies';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_competency_userevidencecomp`
--

LOCK TABLES `mdl_competency_userevidencecomp` WRITE;
/*!40000 ALTER TABLE `mdl_competency_userevidencecomp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_competency_userevidencecomp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_config`
--

DROP TABLE IF EXISTS `mdl_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_config` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_conf_nam_uix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=580 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Moodle configuration variables';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_config`
--

LOCK TABLES `mdl_config` WRITE;
/*!40000 ALTER TABLE `mdl_config` DISABLE KEYS */;
INSERT INTO `mdl_config` VALUES (2,'rolesactive','1'),(3,'auth','email'),(4,'enrol_plugins_enabled','manual,guest,self,cohort'),(5,'theme','boost'),(6,'filter_multilang_converted','1'),(7,'siteidentifier','cHBS9s1kIhOpRiALwI1uOxYFOmbZ3Btu127.0.0.1'),(8,'backup_version','2008111700'),(9,'backup_release','2.0 dev'),(10,'mnet_dispatcher_mode','off'),(11,'sessiontimeout','28800'),(12,'stringfilters',''),(13,'filterall','0'),(14,'texteditors','tiny,atto,tinymce,textarea'),(15,'antiviruses',''),(16,'media_plugins_sortorder','videojs,youtube'),(17,'upgrade_extracreditweightsstepignored','1'),(18,'upgrade_calculatedgradeitemsignored','1'),(19,'upgrade_letterboundarycourses','1'),(20,'mnet_localhost_id','1'),(21,'mnet_all_hosts_id','2'),(22,'siteguest','1'),(23,'siteadmins','2'),(24,'themerev','1705738978'),(25,'jsrev','1705738979'),(26,'templaterev','1705738979'),(27,'gdversion','2'),(28,'licenses','unknown,allrightsreserved,public,cc-4.0,cc-nc-4.0,cc-nd-4.0,cc-nc-nd-4.0,cc-nc-sa-4.0,cc-sa-4.0'),(29,'sitedefaultlicense','unknown'),(30,'version','2023042405.02'),(31,'enableuserfeedback','0'),(32,'userfeedback_nextreminder','1'),(33,'userfeedback_remindafter','90'),(34,'enableoutcomes','0'),(35,'usecomments','1'),(36,'usetags','1'),(37,'enablenotes','1'),(38,'enableportfolios','0'),(39,'enablewebservices','0'),(40,'enablestats','0'),(41,'enablerssfeeds','0'),(42,'enableblogs','1'),(43,'enablecompletion','1'),(44,'completiondefault','1'),(45,'enableavailability','1'),(46,'enableplagiarism','0'),(47,'enablebadges','1'),(48,'enableglobalsearch','0'),(49,'allowstealth','0'),(50,'enableanalytics','1'),(51,'messaging','1'),(52,'enablecustomreports','1'),(53,'allowemojipicker','1'),(54,'userfiltersdefault','realname'),(55,'defaultpreference_maildisplay','2'),(56,'defaultpreference_mailformat','1'),(57,'defaultpreference_maildigest','0'),(58,'defaultpreference_autosubscribe','1'),(59,'defaultpreference_trackforums','0'),(60,'defaultpreference_core_contentbank_visibility','1'),(61,'enroladminnewcourse','1'),(62,'autologinguests','0'),(63,'hiddenuserfields',''),(64,'showuseridentity','email'),(65,'fullnamedisplay','language'),(66,'alternativefullnameformat','language'),(67,'maxusersperpage','100'),(68,'enablegravatar','0'),(69,'gravatardefaulturl','mm'),(70,'agedigitalconsentverification','0'),(71,'agedigitalconsentmap','*, 16\r\nAT, 14\r\nBE, 13\r\nBG, 14\r\nCY, 14\r\nCZ, 15\r\nDK, 13\r\nEE, 13\r\nES, 14\r\nFI, 13\r\nFR, 15\r\nGB, 13\r\nGR, 15\r\nIT, 14\r\nLT, 14\r\nLV, 13\r\nMT, 13\r\nNO, 13\r\nPT, 13\r\nSE, 13\r\nUS, 13'),(72,'sitepolicy',''),(73,'sitepolicyguest',''),(74,'downloadcoursecontentallowed','0'),(75,'maxsizeperdownloadcoursefile','52428800'),(76,'enablecourserequests','1'),(77,'defaultrequestcategory','1'),(78,'lockrequestcategory','0'),(79,'courserequestnotify',''),(80,'activitychoosertabmode','3'),(81,'activitychooseractivefooter','hidden'),(82,'enableasyncbackup','0'),(83,'grade_profilereport','user'),(84,'grade_aggregationposition','1'),(85,'grade_includescalesinaggregation','1'),(86,'grade_hiddenasdate','0'),(87,'gradepublishing','0'),(88,'grade_export_exportfeedback','0'),(89,'grade_export_displaytype','1'),(90,'grade_export_decimalpoints','2'),(91,'grade_export_userprofilefields','firstname,lastname,idnumber,institution,department,email'),(92,'grade_export_customprofilefields',''),(93,'recovergradesdefault','0'),(94,'gradeexport',''),(95,'unlimitedgrades','0'),(96,'grade_report_showmin','1'),(97,'gradepointmax','100'),(98,'gradepointdefault','100'),(99,'grade_minmaxtouse','1'),(100,'grade_mygrades_report','overview'),(101,'gradereport_mygradeurl',''),(102,'grade_hideforcedsettings','1'),(103,'grade_aggregation','13'),(104,'grade_aggregation_flag','0'),(105,'grade_aggregations_visible','13'),(106,'grade_aggregateonlygraded','1'),(107,'grade_aggregateonlygraded_flag','2'),(108,'grade_aggregateoutcomes','0'),(109,'grade_aggregateoutcomes_flag','2'),(110,'grade_keephigh','0'),(111,'grade_keephigh_flag','3'),(112,'grade_droplow','0'),(113,'grade_droplow_flag','2'),(114,'grade_overridecat','1'),(115,'grade_displaytype','1'),(116,'grade_decimalpoints','2'),(117,'grade_item_advanced','iteminfo,idnumber,gradepass,plusfactor,multfactor,display,decimals,hiddenuntil,locktime'),(118,'grade_report_showonlyactiveenrol','1'),(119,'grade_report_quickgrading','1'),(120,'grade_report_meanselection','1'),(121,'grade_report_showaverages','1'),(122,'grade_report_showranges','0'),(123,'grade_report_showuserimage','1'),(124,'grade_report_shownumberofgrades','0'),(125,'grade_report_averagesdisplaytype','inherit'),(126,'grade_report_rangesdisplaytype','inherit'),(127,'grade_report_averagesdecimalpoints','inherit'),(128,'grade_report_rangesdecimalpoints','inherit'),(129,'grade_report_historyperpage','50'),(130,'grade_report_overview_showrank','0'),(131,'grade_report_overview_showtotalsifcontainhidden','0'),(132,'grade_report_user_showrank','0'),(133,'grade_report_user_showpercentage','1'),(134,'grade_report_user_showgrade','1'),(135,'grade_report_user_showfeedback','1'),(136,'grade_report_user_showrange','1'),(137,'grade_report_user_showweight','1'),(138,'grade_report_user_showaverage','0'),(139,'grade_report_user_showlettergrade','0'),(140,'grade_report_user_rangedecimals','0'),(141,'grade_report_user_showhiddenitems','1'),(142,'grade_report_user_showtotalsifcontainhidden','0'),(143,'grade_report_user_showcontributiontocoursetotal','1'),(144,'badges_defaultissuername',''),(145,'badges_defaultissuercontact',''),(146,'badges_badgesalt','badges1705738650'),(147,'badges_allowcoursebadges','1'),(148,'badges_allowexternalbackpack','1'),(149,'rememberuserlicensepref','1'),(151,'forcetimezone','99'),(152,'country','0'),(153,'defaultcity',''),(154,'geoip2file','C:\\moodle\\server\\moodledata/geoip/GeoLite2-City.mmdb'),(155,'googlemapkey3',''),(156,'allcountrycodes',''),(157,'autolang','1'),(158,'lang','en'),(159,'autolangusercreation','1'),(160,'langmenu','1'),(161,'langlist',''),(162,'langrev','1705738979'),(163,'langcache','1'),(164,'langstringcache','1'),(165,'locale',''),(166,'latinexcelexport','0'),(167,'enablepdfexportfont','0'),(168,'messagingallusers','0'),(169,'messagingdefaultpressenter','1'),(170,'messagingdeletereadnotificationsdelay','604800'),(171,'messagingdeleteallnotificationsdelay','2620800'),(172,'messagingallowemailoverride','0'),(173,'requiremodintro','0'),(175,'authloginviaemail','0'),(176,'allowaccountssameemail','0'),(177,'authpreventaccountcreation','0'),(178,'loginpageautofocus','0'),(179,'guestloginbutton','1'),(180,'limitconcurrentlogins','0'),(181,'alternateloginurl',''),(182,'forgottenpasswordurl',''),(183,'auth_instructions',''),(184,'allowemailaddresses',''),(185,'denyemailaddresses',''),(186,'verifychangedemail','1'),(187,'recaptchapublickey',''),(188,'recaptchaprivatekey',''),(189,'filteruploadedfiles','0'),(190,'filtermatchoneperpage','0'),(191,'filtermatchonepertext','0'),(192,'filternavigationwithsystemcontext','0'),(193,'media_default_width','640'),(194,'media_default_height','360'),(195,'portfolio_moderate_filesize_threshold','1048576'),(196,'portfolio_high_filesize_threshold','5242880'),(197,'portfolio_moderate_db_threshold','20'),(198,'portfolio_high_db_threshold','50'),(199,'repositorycacheexpire','120'),(200,'repositorygetfiletimeout','30'),(201,'repositorysyncfiletimeout','1'),(202,'repositorysyncimagetimeout','3'),(203,'repositoryallowexternallinks','1'),(204,'legacyfilesinnewcourses','0'),(205,'legacyfilesaddallowed','1'),(206,'searchengine','simpledb'),(207,'searchindexwhendisabled','0'),(208,'searchindextime','600'),(209,'searchallavailablecourses','0'),(210,'searchincludeallcourses','0'),(211,'searchenablecategories','0'),(212,'searchdefaultcategory','core-all'),(213,'searchhideallcategory','0'),(214,'searchmaxtopresults','3'),(215,'searchteacherroles',''),(216,'searchenginequeryonly',''),(217,'searchbannerenable','0'),(218,'searchbanner',''),(219,'allowbeforeblock','0'),(220,'allowedip',''),(221,'blockedip',''),(222,'protectusernames','1'),(223,'forcelogin','0'),(224,'forceloginforprofiles','1'),(225,'forceloginforprofileimage','0'),(226,'opentowebcrawlers','0'),(227,'allowindexing','0'),(228,'maxbytes','0'),(229,'userquota','104857600'),(230,'allowobjectembed','0'),(231,'enabletrusttext','0'),(232,'maxeditingtime','1800'),(233,'extendedusernamechars','0'),(234,'keeptagnamecase','1'),(235,'profilesforenrolledusersonly','1'),(236,'cronclionly','1'),(237,'cronremotepassword',''),(238,'lockoutthreshold','0'),(239,'lockoutwindow','1800'),(240,'lockoutduration','1800'),(241,'passwordpolicy','1'),(242,'minpasswordlength','8'),(243,'minpassworddigits','1'),(244,'minpasswordlower','1'),(245,'minpasswordupper','1'),(246,'minpasswordnonalphanum','1'),(247,'maxconsecutiveidentchars','0'),(248,'passwordpolicycheckonlogin','0'),(249,'passwordreuselimit','0'),(250,'pwresettime','1800'),(251,'passwordchangelogout','0'),(252,'passwordchangetokendeletion','0'),(253,'tokenduration','7257600'),(254,'groupenrolmentkeypolicy','1'),(255,'disableuserimages','0'),(256,'emailchangeconfirmation','1'),(257,'rememberusername','2'),(258,'strictformsrequired','0'),(259,'cookiesecure','1'),(260,'cookiehttponly','0'),(261,'allowframembedding','0'),(262,'curlsecurityblockedhosts','127.0.0.0/8\r\n192.168.0.0/16\r\n10.0.0.0/8\r\n172.16.0.0/12\r\n0.0.0.0\r\nlocalhost\r\n169.254.169.254\r\n0000::1'),(263,'curlsecurityallowedport','443\r\n80'),(264,'referrerpolicy','default'),(265,'displayloginfailures','0'),(266,'notifyloginfailures',''),(267,'notifyloginthreshold','10'),(268,'themelist',''),(269,'themedesignermode','0'),(270,'allowuserthemes','0'),(271,'allowcoursethemes','0'),(272,'allowcategorythemes','0'),(273,'allowcohortthemes','0'),(274,'allowthemechangeonurl','0'),(275,'allowuserblockhiding','1'),(276,'langmenuinsecurelayout','0'),(277,'logininfoinsecurelayout','0'),(278,'custommenuitems',''),(279,'customusermenuitems','profile,moodle|/user/profile.php\ngrades,grades|/grade/report/mygrades.php\ncalendar,core_calendar|/calendar/view.php?view=month\nprivatefiles,moodle|/user/files.php\nreports,core_reportbuilder|/reportbuilder/index.php'),(280,'enabledevicedetection','1'),(281,'devicedetectregex','[]'),(282,'calendartype','gregorian'),(283,'calendar_adminseesall','0'),(284,'calendar_site_timeformat','0'),(285,'calendar_startwday','1'),(286,'calendar_weekend','65'),(287,'calendar_lookahead','21'),(288,'calendar_maxevents','10'),(289,'enablecalendarexport','1'),(290,'calendar_customexport','1'),(291,'calendar_exportlookahead','365'),(292,'calendar_exportlookback','5'),(293,'calendar_exportsalt','7fJhMIJMsRzRSoQRROZdGAhy0U8n3wnovT0jIuusc8EmdETxxGAV1k73O6j9'),(294,'calendar_showicalsource','1'),(295,'useblogassociations','1'),(296,'bloglevel','4'),(297,'useexternalblogs','1'),(298,'externalblogcrontime','86400'),(299,'maxexternalblogsperuser','1'),(300,'blogusecomments','1'),(301,'blogshowcommentscount','1'),(302,'enabledashboard','1'),(303,'defaulthomepage','1'),(304,'navshowfullcoursenames','0'),(305,'navshowcategories','1'),(306,'navshowmycoursecategories','0'),(307,'navshowallcourses','0'),(308,'navsortmycoursessort','sortorder'),(309,'navsortmycourseshiddenlast','1'),(310,'navcourselimit','10'),(311,'usesitenameforsitepages','0'),(312,'linkadmincategories','1'),(313,'linkcoursesections','1'),(314,'navshowfrontpagemods','1'),(315,'navadduserpostslinks','1'),(316,'sitenameintitle','shortname'),(317,'formatstringstriptags','1'),(318,'emoticons','[{\"text\":\":-)\",\"imagename\":\"s\\/smiley\",\"imagecomponent\":\"core\",\"altidentifier\":\"smiley\",\"altcomponent\":\"core_pix\"},{\"text\":\":)\",\"imagename\":\"s\\/smiley\",\"imagecomponent\":\"core\",\"altidentifier\":\"smiley\",\"altcomponent\":\"core_pix\"},{\"text\":\":-D\",\"imagename\":\"s\\/biggrin\",\"imagecomponent\":\"core\",\"altidentifier\":\"biggrin\",\"altcomponent\":\"core_pix\"},{\"text\":\";-)\",\"imagename\":\"s\\/wink\",\"imagecomponent\":\"core\",\"altidentifier\":\"wink\",\"altcomponent\":\"core_pix\"},{\"text\":\":-\\/\",\"imagename\":\"s\\/mixed\",\"imagecomponent\":\"core\",\"altidentifier\":\"mixed\",\"altcomponent\":\"core_pix\"},{\"text\":\"V-.\",\"imagename\":\"s\\/thoughtful\",\"imagecomponent\":\"core\",\"altidentifier\":\"thoughtful\",\"altcomponent\":\"core_pix\"},{\"text\":\":-P\",\"imagename\":\"s\\/tongueout\",\"imagecomponent\":\"core\",\"altidentifier\":\"tongueout\",\"altcomponent\":\"core_pix\"},{\"text\":\":-p\",\"imagename\":\"s\\/tongueout\",\"imagecomponent\":\"core\",\"altidentifier\":\"tongueout\",\"altcomponent\":\"core_pix\"},{\"text\":\"B-)\",\"imagename\":\"s\\/cool\",\"imagecomponent\":\"core\",\"altidentifier\":\"cool\",\"altcomponent\":\"core_pix\"},{\"text\":\"^-)\",\"imagename\":\"s\\/approve\",\"imagecomponent\":\"core\",\"altidentifier\":\"approve\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-)\",\"imagename\":\"s\\/wideeyes\",\"imagecomponent\":\"core\",\"altidentifier\":\"wideeyes\",\"altcomponent\":\"core_pix\"},{\"text\":\":o)\",\"imagename\":\"s\\/clown\",\"imagecomponent\":\"core\",\"altidentifier\":\"clown\",\"altcomponent\":\"core_pix\"},{\"text\":\":-(\",\"imagename\":\"s\\/sad\",\"imagecomponent\":\"core\",\"altidentifier\":\"sad\",\"altcomponent\":\"core_pix\"},{\"text\":\":(\",\"imagename\":\"s\\/sad\",\"imagecomponent\":\"core\",\"altidentifier\":\"sad\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-.\",\"imagename\":\"s\\/shy\",\"imagecomponent\":\"core\",\"altidentifier\":\"shy\",\"altcomponent\":\"core_pix\"},{\"text\":\":-I\",\"imagename\":\"s\\/blush\",\"imagecomponent\":\"core\",\"altidentifier\":\"blush\",\"altcomponent\":\"core_pix\"},{\"text\":\":-X\",\"imagename\":\"s\\/kiss\",\"imagecomponent\":\"core\",\"altidentifier\":\"kiss\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-o\",\"imagename\":\"s\\/surprise\",\"imagecomponent\":\"core\",\"altidentifier\":\"surprise\",\"altcomponent\":\"core_pix\"},{\"text\":\"P-|\",\"imagename\":\"s\\/blackeye\",\"imagecomponent\":\"core\",\"altidentifier\":\"blackeye\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-[\",\"imagename\":\"s\\/angry\",\"imagecomponent\":\"core\",\"altidentifier\":\"angry\",\"altcomponent\":\"core_pix\"},{\"text\":\"(grr)\",\"imagename\":\"s\\/angry\",\"imagecomponent\":\"core\",\"altidentifier\":\"angry\",\"altcomponent\":\"core_pix\"},{\"text\":\"xx-P\",\"imagename\":\"s\\/dead\",\"imagecomponent\":\"core\",\"altidentifier\":\"dead\",\"altcomponent\":\"core_pix\"},{\"text\":\"|-.\",\"imagename\":\"s\\/sleepy\",\"imagecomponent\":\"core\",\"altidentifier\":\"sleepy\",\"altcomponent\":\"core_pix\"},{\"text\":\"}-]\",\"imagename\":\"s\\/evil\",\"imagecomponent\":\"core\",\"altidentifier\":\"evil\",\"altcomponent\":\"core_pix\"},{\"text\":\"(h)\",\"imagename\":\"s\\/heart\",\"imagecomponent\":\"core\",\"altidentifier\":\"heart\",\"altcomponent\":\"core_pix\"},{\"text\":\"(heart)\",\"imagename\":\"s\\/heart\",\"imagecomponent\":\"core\",\"altidentifier\":\"heart\",\"altcomponent\":\"core_pix\"},{\"text\":\"(y)\",\"imagename\":\"s\\/yes\",\"imagecomponent\":\"core\",\"altidentifier\":\"yes\",\"altcomponent\":\"core\"},{\"text\":\"(n)\",\"imagename\":\"s\\/no\",\"imagecomponent\":\"core\",\"altidentifier\":\"no\",\"altcomponent\":\"core\"},{\"text\":\"(martin)\",\"imagename\":\"s\\/martin\",\"imagecomponent\":\"core\",\"altidentifier\":\"martin\",\"altcomponent\":\"core_pix\"},{\"text\":\"( )\",\"imagename\":\"s\\/egg\",\"imagecomponent\":\"core\",\"altidentifier\":\"egg\",\"altcomponent\":\"core_pix\"}]'),(319,'docroot','https://docs.moodle.org'),(320,'doclang',''),(321,'doctonewwindow','0'),(322,'coursecreationguide','https://moodle.academy/coursequickstart'),(323,'coursecontactduplicates','0'),(324,'courselistshortnames','0'),(325,'coursesperpage','20'),(326,'courseswithsummarieslimit','10'),(327,'courseoverviewfileslimit','1'),(328,'courseoverviewfilesext','web_image'),(329,'coursegraceperiodbefore','0'),(330,'coursegraceperiodafter','0'),(331,'yuicomboloading','1'),(332,'cachejs','1'),(333,'additionalhtmlhead',''),(334,'additionalhtmltopofbody',''),(335,'additionalhtmlfooter',''),(336,'cachetemplates','1'),(337,'pathtophp',''),(338,'pathtodu',''),(339,'aspellpath',''),(340,'pathtodot',''),(341,'pathtogs','/usr/bin/gs'),(342,'pathtopdftoppm',''),(343,'pathtopython',''),(344,'supportname','Admin User'),(345,'supportpage',''),(346,'supportavailability','1'),(347,'servicespage',''),(348,'dbsessions','0'),(349,'sessiontimeoutwarning','1200'),(350,'sessioncookie',''),(351,'sessioncookiepath',''),(352,'sessioncookiedomain',''),(353,'statsfirstrun','none'),(354,'statsmaxruntime','0'),(355,'statsruntimedays','31'),(356,'statsuserthreshold','0'),(357,'slasharguments','1'),(358,'getremoteaddrconf','3'),(359,'reverseproxyignore',''),(360,'proxyhost',''),(361,'proxyport','0'),(362,'proxytype','HTTP'),(363,'proxyuser',''),(364,'proxypassword',''),(365,'proxybypass','localhost, 127.0.0.1'),(366,'proxylogunsafe','0'),(367,'proxyfixunsafe','0'),(368,'maintenance_enabled','0'),(369,'maintenance_message',''),(370,'deleteunconfirmed','168'),(371,'deleteincompleteusers','0'),(372,'disablegradehistory','0'),(373,'gradehistorylifetime','0'),(374,'tempdatafoldercleanup','168'),(375,'xapicleanupperiod','4838400'),(376,'filescleanupperiod','86400'),(377,'extramemorylimit','512M'),(378,'maxtimelimit','0'),(379,'curlcache','120'),(380,'curltimeoutkbitrate','56'),(381,'cron_enabled','1'),(382,'cron_keepalive','180'),(383,'task_scheduled_concurrency_limit','3'),(384,'task_scheduled_max_runtime','1800'),(385,'task_adhoc_concurrency_limit','3'),(386,'task_adhoc_max_runtime','1800'),(387,'task_logmode','1'),(388,'task_logtostdout','1'),(389,'task_logretention','2419200'),(390,'task_logretainruns','20'),(391,'smtphosts',''),(392,'smtpsecure',''),(393,'smtpauthtype','LOGIN'),(394,'smtpuser',''),(395,'smtppass',''),(396,'smtpmaxbulk','1'),(397,'allowedemaildomains',''),(398,'divertallemailsto',''),(399,'divertallemailsexcept',''),(400,'emaildkimselector',''),(401,'sitemailcharset','0'),(402,'allowusermailcharset','0'),(403,'allowattachments','1'),(404,'mailnewline','LF'),(405,'emailfromvia','1'),(406,'emailsubjectprefix',''),(407,'emailheaders',''),(408,'updateautocheck','1'),(409,'updateminmaturity','200'),(410,'updatenotifybuilds','0'),(411,'enablewsdocumentation','0'),(412,'customreportslimit','0'),(413,'customreportsliveediting','1'),(414,'dndallowtextandlinks','0'),(415,'pathtosassc',''),(416,'contextlocking','0'),(417,'contextlockappliestoadmin','1'),(418,'forceclean','0'),(419,'enablecourserelativedates','0'),(420,'enablesharingtomoodlenet','0'),(421,'debug','0'),(422,'debugdisplay','0'),(423,'perfdebug','7'),(424,'debugstringids','0'),(425,'debugsqltrace','0'),(426,'debugvalidators','0'),(427,'debugpageinfo','0'),(428,'debugtemplateinfo','0'),(429,'profilingenabled','0'),(430,'profilingincluded',''),(431,'profilingexcluded',''),(432,'profilingautofrec','0'),(433,'profilingallowme','0'),(434,'profilingallowall','0'),(435,'profilingslow','0'),(436,'profilinglifetime','1440'),(437,'profilingimportprefix','(I)'),(438,'allowguestmymoodle','1'),(439,'release','4.2.5+ (Build: 20240112)'),(440,'localcachedirpurged','1705738979'),(441,'scheduledtaskreset','1705738979'),(442,'paygw_plugins_sortorder','paypal'),(443,'allversionshash','590877c371b1c7100dd4f0e4a57210b56ca308db'),(444,'allcomponenthash','2490601804e75ff89aab078e069370f23a0b4197'),(446,'registrationpending','0'),(447,'branch','402'),(448,'enableaccessibilitytools','1'),(449,'notloggedinroleid','6'),(450,'guestroleid','6'),(451,'defaultuserroleid','7'),(452,'creatornewroleid','3'),(453,'restorernewroleid','3'),(454,'sitepolicyhandler',''),(455,'gradebookroles','5'),(456,'h5plibraryhandler','h5plib_v124'),(457,'airnotifierurl','https://messages.moodle.net'),(458,'airnotifierport','443'),(459,'airnotifiermobileappname','com.moodle.moodlemobile'),(460,'airnotifierappname','commoodlemoodlemobile'),(461,'airnotifieraccesskey',''),(462,'bigbluebuttonbn_default_dpa_accepted','0'),(463,'bigbluebuttonbn_server_url','https://test-moodle.blindsidenetworks.com/bigbluebutton/'),(464,'bigbluebuttonbn_shared_secret','0b21fcaf34673a8c3ec8ed877d76ae34'),(465,'bigbluebuttonbn_checksum_algorithm','SHA1'),(466,'bigbluebuttonbn_poll_interval','5'),(467,'bigbluebuttonbn_welcome_default',''),(468,'bigbluebuttonbn_welcome_editable','1'),(469,'bigbluebuttonbn_recording_default','1'),(470,'bigbluebuttonbn_recording_refresh_period','300'),(471,'bigbluebuttonbn_recording_editable','1'),(472,'bigbluebuttonbn_recording_all_from_start_default','0'),(473,'bigbluebuttonbn_recording_all_from_start_editable','0'),(474,'bigbluebuttonbn_recording_hide_button_default','0'),(475,'bigbluebuttonbn_recording_hide_button_editable','0'),(476,'bigbluebuttonbn_recording_safe_formats','video,presentation'),(477,'bigbluebuttonbn_importrecordings_enabled','0'),(478,'bigbluebuttonbn_importrecordings_from_deleted_enabled','0'),(479,'bigbluebuttonbn_recordings_deleted_default','1'),(480,'bigbluebuttonbn_recordings_deleted_editable','0'),(481,'bigbluebuttonbn_recordings_imported_default','0'),(482,'bigbluebuttonbn_recordings_imported_editable','1'),(483,'bigbluebuttonbn_recordings_preview_default','1'),(484,'bigbluebuttonbn_recordings_preview_editable','0'),(485,'bigbluebuttonbn_recordings_asc_sort','0'),(486,'bigbluebuttonbn_recording_protect_editable','1'),(487,'bigbluebuttonbn_waitformoderator_default','0'),(488,'bigbluebuttonbn_waitformoderator_editable','1'),(489,'bigbluebuttonbn_waitformoderator_ping_interval','10'),(490,'bigbluebuttonbn_waitformoderator_cache_ttl','60'),(491,'bigbluebuttonbn_voicebridge_editable','0'),(492,'bigbluebuttonbn_preuploadpresentation_editable','0'),(493,'bigbluebuttonbn_userlimit_default','0'),(494,'bigbluebuttonbn_userlimit_editable','0'),(495,'bigbluebuttonbn_participant_moderator_default','0'),(496,'bigbluebuttonbn_muteonstart_default','0'),(497,'bigbluebuttonbn_muteonstart_editable','0'),(498,'bigbluebuttonbn_disablecam_default','0'),(499,'bigbluebuttonbn_disablecam_editable','1'),(500,'bigbluebuttonbn_disablemic_default','0'),(501,'bigbluebuttonbn_disablemic_editable','1'),(502,'bigbluebuttonbn_disableprivatechat_default','0'),(503,'bigbluebuttonbn_disableprivatechat_editable','1'),(504,'bigbluebuttonbn_disablepublicchat_default','0'),(505,'bigbluebuttonbn_disablepublicchat_editable','1'),(506,'bigbluebuttonbn_disablenote_default','0'),(507,'bigbluebuttonbn_disablenote_editable','1'),(508,'bigbluebuttonbn_hideuserlist_default','0'),(509,'bigbluebuttonbn_hideuserlist_editable','1'),(510,'bigbluebuttonbn_recordingready_enabled','0'),(511,'bigbluebuttonbn_profile_picture_enabled','0'),(512,'bigbluebuttonbn_meetingevents_enabled','0'),(513,'bigbluebuttonbn_guestaccess_enabled','0'),(514,'chat_method','ajax'),(515,'chat_refresh_userlist','10'),(516,'chat_old_ping','35'),(517,'chat_refresh_room','5'),(518,'chat_normal_updatemode','jsupdate'),(519,'chat_serverhost','127.0.0.1'),(520,'chat_serverip','127.0.0.1'),(521,'chat_serverport','9111'),(522,'chat_servermax','100'),(523,'data_enablerssfeeds','0'),(524,'feedback_allowfullanonymous','0'),(525,'forum_displaymode','3'),(526,'forum_shortpost','300'),(527,'forum_longpost','600'),(528,'forum_manydiscussions','100'),(529,'forum_maxbytes','512000'),(530,'forum_maxattachments','9'),(531,'forum_subscription','0'),(532,'forum_trackingtype','1'),(533,'forum_trackreadposts','1'),(534,'forum_allowforcedreadtracking','0'),(535,'forum_oldpostdays','14'),(536,'forum_usermarksread','0'),(537,'forum_cleanreadtime','2'),(538,'digestmailtime','17'),(539,'forum_enablerssfeeds','0'),(540,'forum_enabletimedposts','1'),(541,'glossary_entbypage','10'),(542,'glossary_dupentries','0'),(543,'glossary_allowcomments','0'),(544,'glossary_linkbydefault','1'),(545,'glossary_defaultapproval','1'),(546,'glossary_enablerssfeeds','0'),(547,'glossary_linkentries','0'),(548,'glossary_casesensitive','0'),(549,'glossary_fullmatch','0'),(550,'block_course_list_adminview','all'),(551,'block_course_list_hideallcourseslink','0'),(552,'block_online_users_timetosee','5'),(553,'block_online_users_onlinestatushiding','1'),(554,'block_rss_client_num_entries','5'),(555,'block_rss_client_timeout','30'),(556,'block_html_allowcssclasses','0'),(557,'pathtounoconv','/usr/bin/unoconv'),(558,'filter_multilang_force_old','0'),(559,'profileroles','5,4,3'),(560,'coursecontact','3'),(561,'frontpage','6'),(562,'frontpageloggedin','6'),(563,'maxcategorydepth','2'),(564,'frontpagecourselimit','200'),(565,'commentsperpage','15'),(566,'defaultfrontpageroleid','8'),(567,'messageinbound_enabled','0'),(568,'messageinbound_mailbox',''),(569,'messageinbound_domain',''),(570,'messageinbound_host',''),(571,'messageinbound_hostssl','ssl'),(572,'messageinbound_hostuser',''),(573,'messageinbound_hostpass',''),(574,'mobilecssurl',''),(575,'enablemobilewebservice','0'),(576,'timezone','America/Bogota'),(577,'registerauth',''),(578,'noreplyaddress','yoselin.serna@correounivalle.edu.co'),(579,'supportemail','yoselin.serna@correounivalle.edu.co');
/*!40000 ALTER TABLE `mdl_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_config_log`
--

DROP TABLE IF EXISTS `mdl_config_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_config_log` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `plugin` varchar(100) DEFAULT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `value` longtext DEFAULT NULL,
  `oldvalue` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_conflog_tim_ix` (`timemodified`),
  KEY `mdl_conflog_use_ix` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=1838 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Changes done in server configuration through admin UI';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_config_log`
--

LOCK TABLES `mdl_config_log` WRITE;
/*!40000 ALTER TABLE `mdl_config_log` DISABLE KEYS */;
INSERT INTO `mdl_config_log` VALUES (1,0,1705738701,NULL,'enableuserfeedback','0',NULL),(2,0,1705738701,NULL,'userfeedback_nextreminder','1',NULL),(3,0,1705738702,NULL,'userfeedback_remindafter','90',NULL),(4,0,1705738702,NULL,'enableoutcomes','0',NULL),(5,0,1705738702,NULL,'usecomments','1',NULL),(6,0,1705738702,NULL,'usetags','1',NULL),(7,0,1705738702,NULL,'enablenotes','1',NULL),(8,0,1705738702,NULL,'enableportfolios','0',NULL),(9,0,1705738702,NULL,'enablewebservices','0',NULL),(10,0,1705738702,NULL,'enablestats','0',NULL),(11,0,1705738702,NULL,'enablerssfeeds','0',NULL),(12,0,1705738702,NULL,'enableblogs','1',NULL),(13,0,1705738702,NULL,'enablecompletion','1',NULL),(14,0,1705738702,NULL,'completiondefault','1',NULL),(15,0,1705738702,NULL,'enableavailability','1',NULL),(16,0,1705738702,NULL,'enableplagiarism','0',NULL),(17,0,1705738702,NULL,'enablebadges','1',NULL),(18,0,1705738702,NULL,'enableglobalsearch','0',NULL),(19,0,1705738702,NULL,'allowstealth','0',NULL),(20,0,1705738702,NULL,'enableanalytics','1',NULL),(21,0,1705738702,'core_competency','enabled','1',NULL),(22,0,1705738702,NULL,'messaging','1',NULL),(23,0,1705738702,NULL,'enablecustomreports','1',NULL),(24,0,1705738703,NULL,'allowemojipicker','1',NULL),(25,0,1705738703,NULL,'userfiltersdefault','realname',NULL),(26,0,1705738703,NULL,'defaultpreference_maildisplay','2',NULL),(27,0,1705738703,NULL,'defaultpreference_mailformat','1',NULL),(28,0,1705738703,NULL,'defaultpreference_maildigest','0',NULL),(29,0,1705738703,NULL,'defaultpreference_autosubscribe','1',NULL),(30,0,1705738703,NULL,'defaultpreference_trackforums','0',NULL),(31,0,1705738703,NULL,'defaultpreference_core_contentbank_visibility','1',NULL),(32,0,1705738703,NULL,'enroladminnewcourse','1',NULL),(33,0,1705738703,NULL,'autologinguests','0',NULL),(34,0,1705738703,NULL,'hiddenuserfields','',NULL),(35,0,1705738703,NULL,'showuseridentity','email',NULL),(36,0,1705738703,NULL,'fullnamedisplay','language',NULL),(37,0,1705738703,NULL,'alternativefullnameformat','language',NULL),(38,0,1705738703,NULL,'maxusersperpage','100',NULL),(39,0,1705738703,NULL,'enablegravatar','0',NULL),(40,0,1705738703,NULL,'gravatardefaulturl','mm',NULL),(41,0,1705738703,NULL,'agedigitalconsentverification','0',NULL),(42,0,1705738703,NULL,'agedigitalconsentmap','*, 16\r\nAT, 14\r\nBE, 13\r\nBG, 14\r\nCY, 14\r\nCZ, 15\r\nDK, 13\r\nEE, 13\r\nES, 14\r\nFI, 13\r\nFR, 15\r\nGB, 13\r\nGR, 15\r\nIT, 14\r\nLT, 14\r\nLV, 13\r\nMT, 13\r\nNO, 13\r\nPT, 13\r\nSE, 13\r\nUS, 13',NULL),(43,0,1705738703,NULL,'sitepolicy','',NULL),(44,0,1705738703,NULL,'sitepolicyguest','',NULL),(45,0,1705738704,'moodlecourse','visible','1',NULL),(46,0,1705738704,'moodlecourse','downloadcontentsitedefault','0',NULL),(47,0,1705738704,'moodlecourse','participantsperpage','20',NULL),(48,0,1705738704,'moodlecourse','format','topics',NULL),(49,0,1705738704,'moodlecourse','maxsections','52',NULL),(50,0,1705738704,'moodlecourse','numsections','4',NULL),(51,0,1705738704,'moodlecourse','hiddensections','1',NULL),(52,0,1705738704,'moodlecourse','coursedisplay','0',NULL),(53,0,1705738704,'moodlecourse','courseenddateenabled','1',NULL),(54,0,1705738704,'moodlecourse','courseduration','31536000',NULL),(55,0,1705738704,'moodlecourse','lang','',NULL),(56,0,1705738704,'moodlecourse','newsitems','5',NULL),(57,0,1705738704,'moodlecourse','showgrades','1',NULL),(58,0,1705738704,'moodlecourse','showreports','0',NULL),(59,0,1705738704,'moodlecourse','showactivitydates','1',NULL),(60,0,1705738704,'moodlecourse','maxbytes','0',NULL),(61,0,1705738704,'moodlecourse','enablecompletion','1',NULL),(62,0,1705738704,'moodlecourse','showcompletionconditions','1',NULL),(63,0,1705738704,'moodlecourse','groupmode','0',NULL),(64,0,1705738704,'moodlecourse','groupmodeforce','0',NULL),(65,0,1705738704,NULL,'downloadcoursecontentallowed','0',NULL),(66,0,1705738704,NULL,'maxsizeperdownloadcoursefile','52428800',NULL),(67,0,1705738704,NULL,'enablecourserequests','1',NULL),(68,0,1705738705,NULL,'defaultrequestcategory','1',NULL),(69,0,1705738705,NULL,'lockrequestcategory','0',NULL),(70,0,1705738705,NULL,'courserequestnotify','',NULL),(71,0,1705738705,NULL,'activitychoosertabmode','3',NULL),(72,0,1705738705,NULL,'activitychooseractivefooter','hidden',NULL),(73,0,1705738705,'backup','loglifetime','30',NULL),(74,0,1705738705,'backup','backup_general_users','1',NULL),(75,0,1705738705,'backup','backup_general_users_locked','',NULL),(76,0,1705738705,'backup','backup_general_anonymize','0',NULL),(77,0,1705738705,'backup','backup_general_anonymize_locked','',NULL),(78,0,1705738705,'backup','backup_general_role_assignments','1',NULL),(79,0,1705738705,'backup','backup_general_role_assignments_locked','',NULL),(80,0,1705738705,'backup','backup_general_activities','1',NULL),(81,0,1705738705,'backup','backup_general_activities_locked','',NULL),(82,0,1705738705,'backup','backup_general_blocks','1',NULL),(83,0,1705738705,'backup','backup_general_blocks_locked','',NULL),(84,0,1705738705,'backup','backup_general_files','1',NULL),(85,0,1705738705,'backup','backup_general_files_locked','',NULL),(86,0,1705738705,'backup','backup_general_filters','1',NULL),(87,0,1705738705,'backup','backup_general_filters_locked','',NULL),(88,0,1705738706,'backup','backup_general_comments','1',NULL),(89,0,1705738706,'backup','backup_general_comments_locked','',NULL),(90,0,1705738706,'backup','backup_general_badges','1',NULL),(91,0,1705738706,'backup','backup_general_badges_locked','',NULL),(92,0,1705738706,'backup','backup_general_calendarevents','1',NULL),(93,0,1705738706,'backup','backup_general_calendarevents_locked','',NULL),(94,0,1705738706,'backup','backup_general_userscompletion','1',NULL),(95,0,1705738706,'backup','backup_general_userscompletion_locked','',NULL),(96,0,1705738706,'backup','backup_general_logs','0',NULL),(97,0,1705738706,'backup','backup_general_logs_locked','',NULL),(98,0,1705738706,'backup','backup_general_histories','0',NULL),(99,0,1705738706,'backup','backup_general_histories_locked','',NULL),(100,0,1705738706,'backup','backup_general_questionbank','1',NULL),(101,0,1705738706,'backup','backup_general_questionbank_locked','',NULL),(102,0,1705738706,'backup','backup_general_groups','1',NULL),(103,0,1705738706,'backup','backup_general_groups_locked','',NULL),(104,0,1705738706,'backup','backup_general_competencies','1',NULL),(105,0,1705738706,'backup','backup_general_competencies_locked','',NULL),(106,0,1705738706,'backup','backup_general_contentbankcontent','1',NULL),(107,0,1705738706,'backup','backup_general_contentbankcontent_locked','',NULL),(108,0,1705738706,'backup','backup_general_xapistate','1',NULL),(109,0,1705738706,'backup','backup_general_xapistate_locked','',NULL),(110,0,1705738706,'backup','backup_general_legacyfiles','1',NULL),(111,0,1705738707,'backup','backup_general_legacyfiles_locked','',NULL),(112,0,1705738707,'backup','import_general_maxresults','10',NULL),(113,0,1705738707,'backup','import_general_duplicate_admin_allowed','0',NULL),(114,0,1705738707,'backup','backup_import_permissions','0',NULL),(115,0,1705738707,'backup','backup_import_permissions_locked','',NULL),(116,0,1705738707,'backup','backup_import_activities','1',NULL),(117,0,1705738707,'backup','backup_import_activities_locked','',NULL),(118,0,1705738707,'backup','backup_import_blocks','1',NULL),(119,0,1705738707,'backup','backup_import_blocks_locked','',NULL),(120,0,1705738707,'backup','backup_import_filters','1',NULL),(121,0,1705738707,'backup','backup_import_filters_locked','',NULL),(122,0,1705738707,'backup','backup_import_calendarevents','1',NULL),(123,0,1705738707,'backup','backup_import_calendarevents_locked','',NULL),(124,0,1705738707,'backup','backup_import_questionbank','1',NULL),(125,0,1705738707,'backup','backup_import_questionbank_locked','',NULL),(126,0,1705738707,'backup','backup_import_groups','1',NULL),(127,0,1705738707,'backup','backup_import_groups_locked','',NULL),(128,0,1705738707,'backup','backup_import_competencies','1',NULL),(129,0,1705738707,'backup','backup_import_competencies_locked','',NULL),(130,0,1705738707,'backup','backup_import_contentbankcontent','1',NULL),(131,0,1705738707,'backup','backup_import_contentbankcontent_locked','',NULL),(132,0,1705738707,'backup','backup_import_legacyfiles','1',NULL),(133,0,1705738708,'backup','backup_import_legacyfiles_locked','',NULL),(134,0,1705738708,'backup','backup_auto_active','0',NULL),(135,0,1705738708,'backup','backup_auto_weekdays','0000000',NULL),(136,0,1705738708,'backup','backup_auto_hour','0',NULL),(137,0,1705738708,'backup','backup_auto_minute','0',NULL),(138,0,1705738708,'backup','backup_auto_storage','0',NULL),(139,0,1705738708,'backup','backup_auto_destination','',NULL),(140,0,1705738708,'backup','backup_auto_max_kept','1',NULL),(141,0,1705738708,'backup','backup_auto_delete_days','0',NULL),(142,0,1705738708,'backup','backup_auto_min_kept','0',NULL),(143,0,1705738708,'backup','backup_shortname','0',NULL),(144,0,1705738708,'backup','backup_auto_skip_hidden','1',NULL),(145,0,1705738708,'backup','backup_auto_skip_modif_days','30',NULL),(146,0,1705738708,'backup','backup_auto_skip_modif_prev','0',NULL),(147,0,1705738708,'backup','backup_auto_users','1',NULL),(148,0,1705738708,'backup','backup_auto_role_assignments','1',NULL),(149,0,1705738708,'backup','backup_auto_activities','1',NULL),(150,0,1705738708,'backup','backup_auto_blocks','1',NULL),(151,0,1705738708,'backup','backup_auto_files','1',NULL),(152,0,1705738708,'backup','backup_auto_filters','1',NULL),(153,0,1705738708,'backup','backup_auto_comments','1',NULL),(154,0,1705738709,'backup','backup_auto_badges','1',NULL),(155,0,1705738709,'backup','backup_auto_calendarevents','1',NULL),(156,0,1705738709,'backup','backup_auto_userscompletion','1',NULL),(157,0,1705738709,'backup','backup_auto_logs','0',NULL),(158,0,1705738709,'backup','backup_auto_histories','0',NULL),(159,0,1705738709,'backup','backup_auto_questionbank','1',NULL),(160,0,1705738709,'backup','backup_auto_groups','1',NULL),(161,0,1705738709,'backup','backup_auto_competencies','1',NULL),(162,0,1705738709,'backup','backup_auto_contentbankcontent','1',NULL),(163,0,1705738709,'backup','backup_auto_xapistate','1',NULL),(164,0,1705738709,'backup','backup_auto_legacyfiles','1',NULL),(165,0,1705738709,'restore','restore_general_users','1',NULL),(166,0,1705738709,'restore','restore_general_users_locked','',NULL),(167,0,1705738709,'restore','restore_general_enrolments','1',NULL),(168,0,1705738709,'restore','restore_general_enrolments_locked','',NULL),(169,0,1705738709,'restore','restore_general_role_assignments','1',NULL),(170,0,1705738709,'restore','restore_general_role_assignments_locked','',NULL),(171,0,1705738709,'restore','restore_general_permissions','1',NULL),(172,0,1705738709,'restore','restore_general_permissions_locked','',NULL),(173,0,1705738709,'restore','restore_general_activities','1',NULL),(174,0,1705738709,'restore','restore_general_activities_locked','',NULL),(175,0,1705738709,'restore','restore_general_blocks','1',NULL),(176,0,1705738710,'restore','restore_general_blocks_locked','',NULL),(177,0,1705738710,'restore','restore_general_filters','1',NULL),(178,0,1705738710,'restore','restore_general_filters_locked','',NULL),(179,0,1705738710,'restore','restore_general_comments','1',NULL),(180,0,1705738710,'restore','restore_general_comments_locked','',NULL),(181,0,1705738710,'restore','restore_general_badges','1',NULL),(182,0,1705738710,'restore','restore_general_badges_locked','',NULL),(183,0,1705738710,'restore','restore_general_calendarevents','1',NULL),(184,0,1705738710,'restore','restore_general_calendarevents_locked','',NULL),(185,0,1705738710,'restore','restore_general_userscompletion','1',NULL),(186,0,1705738710,'restore','restore_general_userscompletion_locked','',NULL),(187,0,1705738710,'restore','restore_general_logs','1',NULL),(188,0,1705738710,'restore','restore_general_logs_locked','',NULL),(189,0,1705738710,'restore','restore_general_histories','1',NULL),(190,0,1705738710,'restore','restore_general_histories_locked','',NULL),(191,0,1705738710,'restore','restore_general_groups','1',NULL),(192,0,1705738710,'restore','restore_general_groups_locked','',NULL),(193,0,1705738710,'restore','restore_general_competencies','1',NULL),(194,0,1705738710,'restore','restore_general_competencies_locked','',NULL),(195,0,1705738710,'restore','restore_general_contentbankcontent','1',NULL),(196,0,1705738710,'restore','restore_general_contentbankcontent_locked','',NULL),(197,0,1705738710,'restore','restore_general_xapistate','1',NULL),(198,0,1705738710,'restore','restore_general_xapistate_locked','',NULL),(199,0,1705738711,'restore','restore_general_legacyfiles','1',NULL),(200,0,1705738711,'restore','restore_general_legacyfiles_locked','',NULL),(201,0,1705738711,'restore','restore_merge_overwrite_conf','0',NULL),(202,0,1705738711,'restore','restore_merge_overwrite_conf_locked','',NULL),(203,0,1705738711,'restore','restore_merge_course_fullname','1',NULL),(204,0,1705738711,'restore','restore_merge_course_fullname_locked','',NULL),(205,0,1705738711,'restore','restore_merge_course_shortname','1',NULL),(206,0,1705738711,'restore','restore_merge_course_shortname_locked','',NULL),(207,0,1705738711,'restore','restore_merge_course_startdate','1',NULL),(208,0,1705738711,'restore','restore_merge_course_startdate_locked','',NULL),(209,0,1705738711,'restore','restore_replace_overwrite_conf','0',NULL),(210,0,1705738711,'restore','restore_replace_overwrite_conf_locked','',NULL),(211,0,1705738711,'restore','restore_replace_course_fullname','1',NULL),(212,0,1705738711,'restore','restore_replace_course_fullname_locked','',NULL),(213,0,1705738711,'restore','restore_replace_course_shortname','1',NULL),(214,0,1705738711,'restore','restore_replace_course_shortname_locked','',NULL),(215,0,1705738711,'restore','restore_replace_course_startdate','1',NULL),(216,0,1705738711,'restore','restore_replace_course_startdate_locked','',NULL),(217,0,1705738711,'restore','restore_replace_keep_roles_and_enrolments','0',NULL),(218,0,1705738711,'restore','restore_replace_keep_roles_and_enrolments_locked','',NULL),(219,0,1705738711,'restore','restore_replace_keep_groups_and_groupings','0',NULL),(220,0,1705738711,'restore','restore_replace_keep_groups_and_groupings_locked','',NULL),(221,0,1705738712,NULL,'enableasyncbackup','0',NULL),(222,0,1705738712,'backup','backup_async_message_users','0',NULL),(223,0,1705738712,'backup','backup_async_message_subject','Moodle {operation} completed successfully',NULL),(224,0,1705738712,'backup','backup_async_message','Your {operation} (ID: {backupid}) has completed successfully. You can access it here: <a href=\"{link}\">{link}</a>.',NULL),(225,0,1705738712,NULL,'grade_profilereport','user',NULL),(226,0,1705738712,NULL,'grade_aggregationposition','1',NULL),(227,0,1705738712,NULL,'grade_includescalesinaggregation','1',NULL),(228,0,1705738712,NULL,'grade_hiddenasdate','0',NULL),(229,0,1705738712,NULL,'gradepublishing','0',NULL),(230,0,1705738712,NULL,'grade_export_exportfeedback','0',NULL),(231,0,1705738712,NULL,'grade_export_displaytype','1',NULL),(232,0,1705738712,NULL,'grade_export_decimalpoints','2',NULL),(233,0,1705738712,NULL,'grade_export_userprofilefields','firstname,lastname,idnumber,institution,department,email',NULL),(234,0,1705738712,NULL,'grade_export_customprofilefields','',NULL),(235,0,1705738712,NULL,'recovergradesdefault','0',NULL),(236,0,1705738712,NULL,'gradeexport','',NULL),(237,0,1705738713,NULL,'unlimitedgrades','0',NULL),(238,0,1705738713,NULL,'grade_report_showmin','1',NULL),(239,0,1705738713,NULL,'gradepointmax','100',NULL),(240,0,1705738713,NULL,'gradepointdefault','100',NULL),(241,0,1705738713,NULL,'grade_minmaxtouse','1',NULL),(242,0,1705738713,NULL,'grade_mygrades_report','overview',NULL),(243,0,1705738713,NULL,'gradereport_mygradeurl','',NULL),(244,0,1705738713,NULL,'grade_hideforcedsettings','1',NULL),(245,0,1705738713,NULL,'grade_aggregation','13',NULL),(246,0,1705738713,NULL,'grade_aggregation_flag','0',NULL),(247,0,1705738713,NULL,'grade_aggregations_visible','13',NULL),(248,0,1705738713,NULL,'grade_aggregateonlygraded','1',NULL),(249,0,1705738713,NULL,'grade_aggregateonlygraded_flag','2',NULL),(250,0,1705738713,NULL,'grade_aggregateoutcomes','0',NULL),(251,0,1705738713,NULL,'grade_aggregateoutcomes_flag','2',NULL),(252,0,1705738713,NULL,'grade_keephigh','0',NULL),(253,0,1705738713,NULL,'grade_keephigh_flag','3',NULL),(254,0,1705738713,NULL,'grade_droplow','0',NULL),(255,0,1705738713,NULL,'grade_droplow_flag','2',NULL),(256,0,1705738713,NULL,'grade_overridecat','1',NULL),(257,0,1705738713,NULL,'grade_displaytype','1',NULL),(258,0,1705738713,NULL,'grade_decimalpoints','2',NULL),(259,0,1705738714,NULL,'grade_item_advanced','iteminfo,idnumber,gradepass,plusfactor,multfactor,display,decimals,hiddenuntil,locktime',NULL),(260,0,1705738714,NULL,'grade_report_showonlyactiveenrol','1',NULL),(261,0,1705738714,NULL,'grade_report_quickgrading','1',NULL),(262,0,1705738714,NULL,'grade_report_meanselection','1',NULL),(263,0,1705738714,NULL,'grade_report_showaverages','1',NULL),(264,0,1705738714,NULL,'grade_report_showranges','0',NULL),(265,0,1705738714,NULL,'grade_report_showuserimage','1',NULL),(266,0,1705738714,NULL,'grade_report_shownumberofgrades','0',NULL),(267,0,1705738714,NULL,'grade_report_averagesdisplaytype','inherit',NULL),(268,0,1705738714,NULL,'grade_report_rangesdisplaytype','inherit',NULL),(269,0,1705738714,NULL,'grade_report_averagesdecimalpoints','inherit',NULL),(270,0,1705738714,NULL,'grade_report_rangesdecimalpoints','inherit',NULL),(271,0,1705738714,NULL,'grade_report_historyperpage','50',NULL),(272,0,1705738714,NULL,'grade_report_overview_showrank','0',NULL),(273,0,1705738714,NULL,'grade_report_overview_showtotalsifcontainhidden','0',NULL),(274,0,1705738714,NULL,'grade_report_user_showrank','0',NULL),(275,0,1705738714,NULL,'grade_report_user_showpercentage','1',NULL),(276,0,1705738714,NULL,'grade_report_user_showgrade','1',NULL),(277,0,1705738714,NULL,'grade_report_user_showfeedback','1',NULL),(278,0,1705738714,NULL,'grade_report_user_showrange','1',NULL),(279,0,1705738714,NULL,'grade_report_user_showweight','1',NULL),(280,0,1705738715,NULL,'grade_report_user_showaverage','0',NULL),(281,0,1705738715,NULL,'grade_report_user_showlettergrade','0',NULL),(282,0,1705738715,NULL,'grade_report_user_rangedecimals','0',NULL),(283,0,1705738715,NULL,'grade_report_user_showhiddenitems','1',NULL),(284,0,1705738715,NULL,'grade_report_user_showtotalsifcontainhidden','0',NULL),(285,0,1705738715,NULL,'grade_report_user_showcontributiontocoursetotal','1',NULL),(286,0,1705738715,'analytics','modeinstruction','',NULL),(287,0,1705738715,'analytics','percentonline','0',NULL),(288,0,1705738715,'analytics','typeinstitution','',NULL),(289,0,1705738715,'analytics','levelinstitution','',NULL),(290,0,1705738715,'analytics','predictionsprocessor','\\mlbackend_php\\processor',NULL),(291,0,1705738715,'analytics','defaulttimesplittingsevaluation','\\core\\analytics\\time_splitting\\quarters_accum,\\core\\analytics\\time_splitting\\quarters,\\core\\analytics\\time_splitting\\single_range',NULL),(292,0,1705738715,'analytics','modeloutputdir','',NULL),(293,0,1705738715,'analytics','onlycli','1',NULL),(294,0,1705738715,'analytics','modeltimelimit','1200',NULL),(295,0,1705738715,'analytics','calclifetime','35',NULL),(296,0,1705738715,NULL,'badges_defaultissuername','',NULL),(297,0,1705738715,NULL,'badges_defaultissuercontact','',NULL),(298,0,1705738715,NULL,'badges_badgesalt','badges1705738650',NULL),(299,0,1705738715,NULL,'badges_allowcoursebadges','1',NULL),(300,0,1705738715,NULL,'badges_allowexternalbackpack','1',NULL),(301,0,1705738715,NULL,'rememberuserlicensepref','1',NULL),(302,0,1705738716,NULL,'timezone','Australia/Perth',NULL),(303,0,1705738717,NULL,'forcetimezone','99',NULL),(304,0,1705738718,NULL,'country','0',NULL),(305,0,1705738718,NULL,'defaultcity','',NULL),(306,0,1705738718,NULL,'geoip2file','C:\\moodle\\server\\moodledata/geoip/GeoLite2-City.mmdb',NULL),(307,0,1705738718,NULL,'googlemapkey3','',NULL),(308,0,1705738718,NULL,'allcountrycodes','',NULL),(309,0,1705738718,NULL,'autolang','1',NULL),(310,0,1705738718,NULL,'lang','en',NULL),(311,0,1705738718,NULL,'autolangusercreation','1',NULL),(312,0,1705738718,NULL,'langmenu','1',NULL),(313,0,1705738718,NULL,'langlist','',NULL),(314,0,1705738718,NULL,'langcache','1',NULL),(315,0,1705738718,NULL,'langstringcache','1',NULL),(316,0,1705738718,NULL,'locale','',NULL),(317,0,1705738718,NULL,'latinexcelexport','0',NULL),(318,0,1705738718,NULL,'enablepdfexportfont','0',NULL),(319,0,1705738718,NULL,'messagingallusers','0',NULL),(320,0,1705738718,NULL,'messagingdefaultpressenter','1',NULL),(321,0,1705738718,NULL,'messagingdeletereadnotificationsdelay','604800',NULL),(322,0,1705738718,NULL,'messagingdeleteallnotificationsdelay','2620800',NULL),(323,0,1705738718,NULL,'messagingallowemailoverride','0',NULL),(324,0,1705738719,NULL,'requiremodintro','0',NULL),(325,0,1705738719,'antivirus','notifyemail','',NULL),(326,0,1705738719,'antivirus','notifylevel','2',NULL),(327,0,1705738719,'antivirus','threshold','1200',NULL),(328,0,1705738719,'antivirus','enablequarantine','0',NULL),(329,0,1705738719,'antivirus','quarantinetime','2419200',NULL),(330,0,1705738719,NULL,'registerauth','',NULL),(331,0,1705738719,NULL,'authloginviaemail','0',NULL),(332,0,1705738719,NULL,'allowaccountssameemail','0',NULL),(333,0,1705738719,NULL,'authpreventaccountcreation','0',NULL),(334,0,1705738719,NULL,'loginpageautofocus','0',NULL),(335,0,1705738719,NULL,'guestloginbutton','1',NULL),(336,0,1705738719,NULL,'limitconcurrentlogins','0',NULL),(337,0,1705738719,NULL,'alternateloginurl','',NULL),(338,0,1705738719,NULL,'forgottenpasswordurl','',NULL),(339,0,1705738719,NULL,'auth_instructions','',NULL),(340,0,1705738719,NULL,'allowemailaddresses','',NULL),(341,0,1705738720,NULL,'denyemailaddresses','',NULL),(342,0,1705738720,NULL,'verifychangedemail','1',NULL),(343,0,1705738720,NULL,'recaptchapublickey','',NULL),(344,0,1705738720,NULL,'recaptchaprivatekey','',NULL),(345,0,1705738720,'cachestore_apcu','testperformance','0',NULL),(346,0,1705738720,'cachestore_redis','test_server','',NULL),(347,0,1705738720,'cachestore_redis','test_password','',NULL),(348,0,1705738720,'cachestore_redis','test_ttl','0',NULL),(349,0,1705738720,NULL,'filteruploadedfiles','0',NULL),(350,0,1705738720,NULL,'filtermatchoneperpage','0',NULL),(351,0,1705738720,NULL,'filtermatchonepertext','0',NULL),(352,0,1705738720,NULL,'filternavigationwithsystemcontext','0',NULL),(353,0,1705738720,NULL,'media_default_width','640',NULL),(354,0,1705738720,NULL,'media_default_height','360',NULL),(355,0,1705738720,NULL,'portfolio_moderate_filesize_threshold','1048576',NULL),(356,0,1705738720,NULL,'portfolio_high_filesize_threshold','5242880',NULL),(357,0,1705738720,NULL,'portfolio_moderate_db_threshold','20',NULL),(358,0,1705738720,NULL,'portfolio_high_db_threshold','50',NULL),(359,0,1705738721,'question_preview','behaviour','deferredfeedback',NULL),(360,0,1705738721,'question_preview','correctness','1',NULL),(361,0,1705738721,'question_preview','marks','2',NULL),(362,0,1705738721,'question_preview','markdp','2',NULL),(363,0,1705738721,'question_preview','feedback','1',NULL),(364,0,1705738721,'question_preview','generalfeedback','1',NULL),(365,0,1705738721,'question_preview','rightanswer','1',NULL),(366,0,1705738721,'question_preview','history','0',NULL),(367,0,1705738721,NULL,'repositorycacheexpire','120',NULL),(368,0,1705738721,NULL,'repositorygetfiletimeout','30',NULL),(369,0,1705738721,NULL,'repositorysyncfiletimeout','1',NULL),(370,0,1705738721,NULL,'repositorysyncimagetimeout','3',NULL),(371,0,1705738721,NULL,'repositoryallowexternallinks','1',NULL),(372,0,1705738721,NULL,'legacyfilesinnewcourses','0',NULL),(373,0,1705738721,NULL,'legacyfilesaddallowed','1',NULL),(374,0,1705738721,NULL,'searchengine','simpledb',NULL),(375,0,1705738721,NULL,'searchindexwhendisabled','0',NULL),(376,0,1705738721,NULL,'searchindextime','600',NULL),(377,0,1705738721,NULL,'searchallavailablecourses','0',NULL),(378,0,1705738721,NULL,'searchincludeallcourses','0',NULL),(379,0,1705738721,NULL,'searchenablecategories','0',NULL),(380,0,1705738721,NULL,'searchdefaultcategory','core-all',NULL),(381,0,1705738722,NULL,'searchhideallcategory','0',NULL),(382,0,1705738722,NULL,'searchmaxtopresults','3',NULL),(383,0,1705738722,NULL,'searchteacherroles','',NULL),(384,0,1705738722,NULL,'searchenginequeryonly','',NULL),(385,0,1705738722,NULL,'searchbannerenable','0',NULL),(386,0,1705738722,NULL,'searchbanner','',NULL),(387,0,1705738722,NULL,'allowbeforeblock','0',NULL),(388,0,1705738722,NULL,'allowedip','',NULL),(389,0,1705738722,NULL,'blockedip','',NULL),(390,0,1705738722,NULL,'protectusernames','1',NULL),(391,0,1705738722,NULL,'forcelogin','0',NULL),(392,0,1705738722,NULL,'forceloginforprofiles','1',NULL),(393,0,1705738722,NULL,'forceloginforprofileimage','0',NULL),(394,0,1705738722,NULL,'opentowebcrawlers','0',NULL),(395,0,1705738722,NULL,'allowindexing','0',NULL),(396,0,1705738722,NULL,'maxbytes','0',NULL),(397,0,1705738722,NULL,'userquota','104857600',NULL),(398,0,1705738722,NULL,'allowobjectembed','0',NULL),(399,0,1705738722,NULL,'enabletrusttext','0',NULL),(400,0,1705738722,NULL,'maxeditingtime','1800',NULL),(401,0,1705738723,NULL,'extendedusernamechars','0',NULL),(402,0,1705738723,NULL,'keeptagnamecase','1',NULL),(403,0,1705738723,NULL,'profilesforenrolledusersonly','1',NULL),(404,0,1705738723,NULL,'cronclionly','1',NULL),(405,0,1705738723,NULL,'cronremotepassword','',NULL),(406,0,1705738723,'tool_task','enablerunnow','1',NULL),(407,0,1705738723,NULL,'lockoutthreshold','0',NULL),(408,0,1705738723,NULL,'lockoutwindow','1800',NULL),(409,0,1705738723,NULL,'lockoutduration','1800',NULL),(410,0,1705738723,NULL,'passwordpolicy','1',NULL),(411,0,1705738723,NULL,'minpasswordlength','8',NULL),(412,0,1705738723,NULL,'minpassworddigits','1',NULL),(413,0,1705738723,NULL,'minpasswordlower','1',NULL),(414,0,1705738723,NULL,'minpasswordupper','1',NULL),(415,0,1705738723,NULL,'minpasswordnonalphanum','1',NULL),(416,0,1705738723,NULL,'maxconsecutiveidentchars','0',NULL),(417,0,1705738723,NULL,'passwordpolicycheckonlogin','0',NULL),(418,0,1705738723,NULL,'passwordreuselimit','0',NULL),(419,0,1705738723,NULL,'pwresettime','1800',NULL),(420,0,1705738723,NULL,'passwordchangelogout','0',NULL),(421,0,1705738723,NULL,'passwordchangetokendeletion','0',NULL),(422,0,1705738723,NULL,'tokenduration','7257600',NULL),(423,0,1705738724,NULL,'groupenrolmentkeypolicy','1',NULL),(424,0,1705738724,NULL,'disableuserimages','0',NULL),(425,0,1705738724,NULL,'emailchangeconfirmation','1',NULL),(426,0,1705738724,NULL,'rememberusername','2',NULL),(427,0,1705738724,NULL,'strictformsrequired','0',NULL),(428,0,1705738724,'adminpresets','sensiblesettings','recaptchapublickey@@none, recaptchaprivatekey@@none, googlemapkey3@@none, secretphrase@@url, cronremotepassword@@none, smtpuser@@none, smtppass@@none, proxypassword@@none, quizpassword@@quiz, allowedip@@none, blockedip@@none, dbpass@@logstore_database, messageinbound_hostpass@@none, bind_pw@@auth_cas, pass@@auth_db, bind_pw@@auth_ldap, dbpass@@enrol_database, bind_pw@@enrol_ldap, server_password@@search_solr, ssl_keypassword@@search_solr, alternateserver_password@@search_solr, alternatessl_keypassword@@search_solr, test_password@@cachestore_redis, password@@mlbackend_python, badges_badgesalt@@none, calendar_exportsalt@@none',NULL),(429,0,1705738724,NULL,'cookiesecure','1',NULL),(430,0,1705738724,NULL,'cookiehttponly','0',NULL),(431,0,1705738724,NULL,'allowframembedding','0',NULL),(432,0,1705738724,NULL,'curlsecurityblockedhosts','127.0.0.0/8\r\n192.168.0.0/16\r\n10.0.0.0/8\r\n172.16.0.0/12\r\n0.0.0.0\r\nlocalhost\r\n169.254.169.254\r\n0000::1',NULL),(433,0,1705738724,NULL,'curlsecurityallowedport','443\r\n80',NULL),(434,0,1705738724,NULL,'referrerpolicy','default',NULL),(435,0,1705738724,NULL,'displayloginfailures','0',NULL),(436,0,1705738724,NULL,'notifyloginfailures','',NULL),(437,0,1705738724,NULL,'notifyloginthreshold','10',NULL),(438,0,1705738724,NULL,'themelist','',NULL),(439,0,1705738724,NULL,'themedesignermode','0',NULL),(440,0,1705738724,NULL,'allowuserthemes','0',NULL),(441,0,1705738724,NULL,'allowcoursethemes','0',NULL),(442,0,1705738724,NULL,'allowcategorythemes','0',NULL),(443,0,1705738724,NULL,'allowcohortthemes','0',NULL),(444,0,1705738725,NULL,'allowthemechangeonurl','0',NULL),(445,0,1705738725,NULL,'allowuserblockhiding','1',NULL),(446,0,1705738725,NULL,'langmenuinsecurelayout','0',NULL),(447,0,1705738725,NULL,'logininfoinsecurelayout','0',NULL),(448,0,1705738725,NULL,'custommenuitems','',NULL),(449,0,1705738725,NULL,'customusermenuitems','profile,moodle|/user/profile.php\ngrades,grades|/grade/report/mygrades.php\ncalendar,core_calendar|/calendar/view.php?view=month\nprivatefiles,moodle|/user/files.php\nreports,core_reportbuilder|/reportbuilder/index.php',NULL),(450,0,1705738725,NULL,'enabledevicedetection','1',NULL),(451,0,1705738725,NULL,'devicedetectregex','[]',NULL),(452,0,1705738725,'theme_boost','unaddableblocks','navigation,settings,course_list,section_links',NULL),(453,0,1705738725,'theme_boost','preset','default.scss',NULL),(454,0,1705738725,'theme_boost','presetfiles','',NULL),(455,0,1705738725,'theme_boost','backgroundimage','',NULL),(456,0,1705738725,'theme_boost','loginbackgroundimage','',NULL),(457,0,1705738725,'theme_boost','brandcolor','',NULL),(458,0,1705738725,'theme_boost','scsspre','',NULL),(459,0,1705738725,'theme_boost','scss','',NULL),(460,0,1705738725,'theme_classic','navbardark','0',NULL),(461,0,1705738725,'theme_classic','unaddableblocks','',NULL),(462,0,1705738725,'theme_classic','preset','default.scss',NULL),(463,0,1705738725,'theme_classic','presetfiles','',NULL),(464,0,1705738725,'theme_classic','backgroundimage','',NULL),(465,0,1705738725,'theme_classic','loginbackgroundimage','',NULL),(466,0,1705738726,'theme_classic','brandcolor','',NULL),(467,0,1705738726,'theme_classic','scsspre','',NULL),(468,0,1705738726,'theme_classic','scss','',NULL),(469,0,1705738726,'core_admin','logo','',NULL),(470,0,1705738726,'core_admin','logocompact','',NULL),(471,0,1705738726,'core_admin','favicon','',NULL),(472,0,1705738726,'core_admin','coursecolor1','#81ecec',NULL),(473,0,1705738726,'core_admin','coursecolor2','#74b9ff',NULL),(474,0,1705738726,'core_admin','coursecolor3','#a29bfe',NULL),(475,0,1705738726,'core_admin','coursecolor4','#dfe6e9',NULL),(476,0,1705738726,'core_admin','coursecolor5','#00b894',NULL),(477,0,1705738726,'core_admin','coursecolor6','#0984e3',NULL),(478,0,1705738726,'core_admin','coursecolor7','#b2bec3',NULL),(479,0,1705738726,'core_admin','coursecolor8','#fdcb6e',NULL),(480,0,1705738726,'core_admin','coursecolor9','#fd79a8',NULL),(481,0,1705738726,'core_admin','coursecolor10','#6c5ce7',NULL),(482,0,1705738726,NULL,'calendartype','gregorian',NULL),(483,0,1705738726,NULL,'calendar_adminseesall','0',NULL),(484,0,1705738726,NULL,'calendar_site_timeformat','0',NULL),(485,0,1705738726,NULL,'calendar_startwday','1',NULL),(486,0,1705738727,NULL,'calendar_weekend','65',NULL),(487,0,1705738727,NULL,'calendar_lookahead','21',NULL),(488,0,1705738727,NULL,'calendar_maxevents','10',NULL),(489,0,1705738727,NULL,'enablecalendarexport','1',NULL),(490,0,1705738727,NULL,'calendar_customexport','1',NULL),(491,0,1705738727,NULL,'calendar_exportlookahead','365',NULL),(492,0,1705738727,NULL,'calendar_exportlookback','5',NULL),(493,0,1705738727,NULL,'calendar_exportsalt','B1OACklMFqIzSz0lee93PtQL1foQcGpArsslcn7DTw2dFOKIPQwN2fwfOPCA',NULL),(494,0,1705738727,NULL,'calendar_showicalsource','1',NULL),(495,0,1705738727,NULL,'useblogassociations','1',NULL),(496,0,1705738727,NULL,'bloglevel','4',NULL),(497,0,1705738727,NULL,'useexternalblogs','1',NULL),(498,0,1705738727,NULL,'externalblogcrontime','86400',NULL),(499,0,1705738727,NULL,'maxexternalblogsperuser','1',NULL),(500,0,1705738727,NULL,'blogusecomments','1',NULL),(501,0,1705738727,NULL,'blogshowcommentscount','1',NULL),(502,0,1705738727,NULL,'enabledashboard','1',NULL),(503,0,1705738727,NULL,'defaulthomepage','3',NULL),(504,0,1705738727,NULL,'navshowfullcoursenames','0',NULL),(505,0,1705738728,NULL,'navshowcategories','1',NULL),(506,0,1705738728,NULL,'navshowmycoursecategories','0',NULL),(507,0,1705738728,NULL,'navshowallcourses','0',NULL),(508,0,1705738728,NULL,'navsortmycoursessort','sortorder',NULL),(509,0,1705738728,NULL,'navsortmycourseshiddenlast','1',NULL),(510,0,1705738728,NULL,'navcourselimit','10',NULL),(511,0,1705738728,NULL,'usesitenameforsitepages','0',NULL),(512,0,1705738728,NULL,'linkadmincategories','1',NULL),(513,0,1705738728,NULL,'linkcoursesections','1',NULL),(514,0,1705738728,NULL,'navshowfrontpagemods','1',NULL),(515,0,1705738728,NULL,'navadduserpostslinks','1',NULL),(516,0,1705738728,NULL,'sitenameintitle','shortname',NULL),(517,0,1705738728,NULL,'formatstringstriptags','1',NULL),(518,0,1705738728,NULL,'emoticons','[{\"text\":\":-)\",\"imagename\":\"s\\/smiley\",\"imagecomponent\":\"core\",\"altidentifier\":\"smiley\",\"altcomponent\":\"core_pix\"},{\"text\":\":)\",\"imagename\":\"s\\/smiley\",\"imagecomponent\":\"core\",\"altidentifier\":\"smiley\",\"altcomponent\":\"core_pix\"},{\"text\":\":-D\",\"imagename\":\"s\\/biggrin\",\"imagecomponent\":\"core\",\"altidentifier\":\"biggrin\",\"altcomponent\":\"core_pix\"},{\"text\":\";-)\",\"imagename\":\"s\\/wink\",\"imagecomponent\":\"core\",\"altidentifier\":\"wink\",\"altcomponent\":\"core_pix\"},{\"text\":\":-\\/\",\"imagename\":\"s\\/mixed\",\"imagecomponent\":\"core\",\"altidentifier\":\"mixed\",\"altcomponent\":\"core_pix\"},{\"text\":\"V-.\",\"imagename\":\"s\\/thoughtful\",\"imagecomponent\":\"core\",\"altidentifier\":\"thoughtful\",\"altcomponent\":\"core_pix\"},{\"text\":\":-P\",\"imagename\":\"s\\/tongueout\",\"imagecomponent\":\"core\",\"altidentifier\":\"tongueout\",\"altcomponent\":\"core_pix\"},{\"text\":\":-p\",\"imagename\":\"s\\/tongueout\",\"imagecomponent\":\"core\",\"altidentifier\":\"tongueout\",\"altcomponent\":\"core_pix\"},{\"text\":\"B-)\",\"imagename\":\"s\\/cool\",\"imagecomponent\":\"core\",\"altidentifier\":\"cool\",\"altcomponent\":\"core_pix\"},{\"text\":\"^-)\",\"imagename\":\"s\\/approve\",\"imagecomponent\":\"core\",\"altidentifier\":\"approve\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-)\",\"imagename\":\"s\\/wideeyes\",\"imagecomponent\":\"core\",\"altidentifier\":\"wideeyes\",\"altcomponent\":\"core_pix\"},{\"text\":\":o)\",\"imagename\":\"s\\/clown\",\"imagecomponent\":\"core\",\"altidentifier\":\"clown\",\"altcomponent\":\"core_pix\"},{\"text\":\":-(\",\"imagename\":\"s\\/sad\",\"imagecomponent\":\"core\",\"altidentifier\":\"sad\",\"altcomponent\":\"core_pix\"},{\"text\":\":(\",\"imagename\":\"s\\/sad\",\"imagecomponent\":\"core\",\"altidentifier\":\"sad\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-.\",\"imagename\":\"s\\/shy\",\"imagecomponent\":\"core\",\"altidentifier\":\"shy\",\"altcomponent\":\"core_pix\"},{\"text\":\":-I\",\"imagename\":\"s\\/blush\",\"imagecomponent\":\"core\",\"altidentifier\":\"blush\",\"altcomponent\":\"core_pix\"},{\"text\":\":-X\",\"imagename\":\"s\\/kiss\",\"imagecomponent\":\"core\",\"altidentifier\":\"kiss\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-o\",\"imagename\":\"s\\/surprise\",\"imagecomponent\":\"core\",\"altidentifier\":\"surprise\",\"altcomponent\":\"core_pix\"},{\"text\":\"P-|\",\"imagename\":\"s\\/blackeye\",\"imagecomponent\":\"core\",\"altidentifier\":\"blackeye\",\"altcomponent\":\"core_pix\"},{\"text\":\"8-[\",\"imagename\":\"s\\/angry\",\"imagecomponent\":\"core\",\"altidentifier\":\"angry\",\"altcomponent\":\"core_pix\"},{\"text\":\"(grr)\",\"imagename\":\"s\\/angry\",\"imagecomponent\":\"core\",\"altidentifier\":\"angry\",\"altcomponent\":\"core_pix\"},{\"text\":\"xx-P\",\"imagename\":\"s\\/dead\",\"imagecomponent\":\"core\",\"altidentifier\":\"dead\",\"altcomponent\":\"core_pix\"},{\"text\":\"|-.\",\"imagename\":\"s\\/sleepy\",\"imagecomponent\":\"core\",\"altidentifier\":\"sleepy\",\"altcomponent\":\"core_pix\"},{\"text\":\"}-]\",\"imagename\":\"s\\/evil\",\"imagecomponent\":\"core\",\"altidentifier\":\"evil\",\"altcomponent\":\"core_pix\"},{\"text\":\"(h)\",\"imagename\":\"s\\/heart\",\"imagecomponent\":\"core\",\"altidentifier\":\"heart\",\"altcomponent\":\"core_pix\"},{\"text\":\"(heart)\",\"imagename\":\"s\\/heart\",\"imagecomponent\":\"core\",\"altidentifier\":\"heart\",\"altcomponent\":\"core_pix\"},{\"text\":\"(y)\",\"imagename\":\"s\\/yes\",\"imagecomponent\":\"core\",\"altidentifier\":\"yes\",\"altcomponent\":\"core\"},{\"text\":\"(n)\",\"imagename\":\"s\\/no\",\"imagecomponent\":\"core\",\"altidentifier\":\"no\",\"altcomponent\":\"core\"},{\"text\":\"(martin)\",\"imagename\":\"s\\/martin\",\"imagecomponent\":\"core\",\"altidentifier\":\"martin\",\"altcomponent\":\"core_pix\"},{\"text\":\"( )\",\"imagename\":\"s\\/egg\",\"imagecomponent\":\"core\",\"altidentifier\":\"egg\",\"altcomponent\":\"core_pix\"}]',NULL),(519,0,1705738728,NULL,'docroot','https://docs.moodle.org',NULL),(520,0,1705738728,NULL,'doclang','',NULL),(521,0,1705738728,NULL,'doctonewwindow','0',NULL),(522,0,1705738728,NULL,'coursecreationguide','https://moodle.academy/coursequickstart',NULL),(523,0,1705738728,NULL,'coursecontactduplicates','0',NULL),(524,0,1705738729,NULL,'courselistshortnames','0',NULL),(525,0,1705738729,NULL,'coursesperpage','20',NULL),(526,0,1705738729,NULL,'courseswithsummarieslimit','10',NULL),(527,0,1705738729,NULL,'courseoverviewfileslimit','1',NULL),(528,0,1705738729,NULL,'courseoverviewfilesext','web_image',NULL),(529,0,1705738729,NULL,'coursegraceperiodbefore','0',NULL),(530,0,1705738729,NULL,'coursegraceperiodafter','0',NULL),(531,0,1705738729,NULL,'yuicomboloading','1',NULL),(532,0,1705738729,NULL,'cachejs','1',NULL),(533,0,1705738729,NULL,'additionalhtmlhead','',NULL),(534,0,1705738729,NULL,'additionalhtmltopofbody','',NULL),(535,0,1705738729,NULL,'additionalhtmlfooter','',NULL),(536,0,1705738729,NULL,'cachetemplates','1',NULL),(537,0,1705738729,NULL,'pathtophp','',NULL),(538,0,1705738729,NULL,'pathtodu','',NULL),(539,0,1705738729,NULL,'aspellpath','',NULL),(540,0,1705738729,NULL,'pathtodot','',NULL),(541,0,1705738729,NULL,'pathtogs','/usr/bin/gs',NULL),(542,0,1705738730,NULL,'pathtopdftoppm','',NULL),(543,0,1705738730,NULL,'pathtopython','',NULL),(544,0,1705738730,NULL,'supportname','Admin User',NULL),(545,0,1705738730,NULL,'supportpage','',NULL),(546,0,1705738730,NULL,'supportavailability','1',NULL),(547,0,1705738730,NULL,'servicespage','',NULL),(548,0,1705738730,NULL,'dbsessions','0',NULL),(549,0,1705738730,NULL,'sessiontimeoutwarning','1200',NULL),(550,0,1705738730,NULL,'sessioncookie','',NULL),(551,0,1705738730,NULL,'sessioncookiepath','',NULL),(552,0,1705738730,NULL,'sessioncookiedomain','',NULL),(553,0,1705738730,NULL,'statsfirstrun','none',NULL),(554,0,1705738730,NULL,'statsmaxruntime','0',NULL),(555,0,1705738730,NULL,'statsruntimedays','31',NULL),(556,0,1705738730,NULL,'statsuserthreshold','0',NULL),(557,0,1705738730,NULL,'slasharguments','1',NULL),(558,0,1705738730,NULL,'getremoteaddrconf','3',NULL),(559,0,1705738730,NULL,'reverseproxyignore','',NULL),(560,0,1705738730,NULL,'proxyhost','',NULL),(561,0,1705738731,NULL,'proxyport','0',NULL),(562,0,1705738731,NULL,'proxytype','HTTP',NULL),(563,0,1705738731,NULL,'proxyuser','',NULL),(564,0,1705738731,NULL,'proxypassword','',NULL),(565,0,1705738731,NULL,'proxybypass','localhost, 127.0.0.1',NULL),(566,0,1705738731,NULL,'proxylogunsafe','0',NULL),(567,0,1705738731,NULL,'proxyfixunsafe','0',NULL),(568,0,1705738731,NULL,'maintenance_enabled','0',NULL),(569,0,1705738731,NULL,'maintenance_message','',NULL),(570,0,1705738731,NULL,'deleteunconfirmed','168',NULL),(571,0,1705738731,NULL,'deleteincompleteusers','0',NULL),(572,0,1705738731,NULL,'disablegradehistory','0',NULL),(573,0,1705738731,NULL,'gradehistorylifetime','0',NULL),(574,0,1705738731,NULL,'tempdatafoldercleanup','168',NULL),(575,0,1705738731,NULL,'xapicleanupperiod','4838400',NULL),(576,0,1705738731,NULL,'filescleanupperiod','86400',NULL),(577,0,1705738731,NULL,'extramemorylimit','512M',NULL),(578,0,1705738731,NULL,'maxtimelimit','0',NULL),(579,0,1705738731,NULL,'curlcache','120',NULL),(580,0,1705738732,NULL,'curltimeoutkbitrate','56',NULL),(581,0,1705738732,NULL,'cron_enabled','1',NULL),(582,0,1705738732,NULL,'cron_keepalive','180',NULL),(583,0,1705738732,NULL,'task_scheduled_concurrency_limit','3',NULL),(584,0,1705738732,NULL,'task_scheduled_max_runtime','1800',NULL),(585,0,1705738732,NULL,'task_adhoc_concurrency_limit','3',NULL),(586,0,1705738732,NULL,'task_adhoc_max_runtime','1800',NULL),(587,0,1705738732,NULL,'task_logmode','1',NULL),(588,0,1705738732,NULL,'task_logtostdout','1',NULL),(589,0,1705738732,NULL,'task_logretention','2419200',NULL),(590,0,1705738732,NULL,'task_logretainruns','20',NULL),(591,0,1705738732,NULL,'smtphosts','',NULL),(592,0,1705738732,NULL,'smtpsecure','',NULL),(593,0,1705738732,NULL,'smtpauthtype','LOGIN',NULL),(594,0,1705738732,NULL,'smtpuser','',NULL),(595,0,1705738732,NULL,'smtppass','',NULL),(596,0,1705738732,NULL,'smtpmaxbulk','1',NULL),(597,0,1705738733,NULL,'allowedemaildomains','',NULL),(598,0,1705738733,NULL,'divertallemailsto','',NULL),(599,0,1705738733,NULL,'divertallemailsexcept','',NULL),(600,0,1705738733,NULL,'emaildkimselector','',NULL),(601,0,1705738733,NULL,'sitemailcharset','0',NULL),(602,0,1705738733,NULL,'allowusermailcharset','0',NULL),(603,0,1705738733,NULL,'allowattachments','1',NULL),(604,0,1705738733,NULL,'mailnewline','LF',NULL),(605,0,1705738733,NULL,'emailfromvia','1',NULL),(606,0,1705738733,NULL,'emailsubjectprefix','',NULL),(607,0,1705738733,NULL,'emailheaders','',NULL),(608,0,1705738733,NULL,'updateautocheck','1',NULL),(609,0,1705738733,NULL,'updateminmaturity','200',NULL),(610,0,1705738733,NULL,'updatenotifybuilds','0',NULL),(611,0,1705738733,NULL,'enablewsdocumentation','0',NULL),(612,0,1705738733,NULL,'customreportslimit','0',NULL),(613,0,1705738733,NULL,'customreportsliveediting','1',NULL),(614,0,1705738733,NULL,'dndallowtextandlinks','0',NULL),(615,0,1705738734,NULL,'pathtosassc','',NULL),(616,0,1705738734,NULL,'contextlocking','0',NULL),(617,0,1705738734,NULL,'contextlockappliestoadmin','1',NULL),(618,0,1705738734,NULL,'forceclean','0',NULL),(619,0,1705738734,NULL,'enablecourserelativedates','0',NULL),(620,0,1705738734,NULL,'enablesharingtomoodlenet','0',NULL),(621,0,1705738734,NULL,'debug','0',NULL),(622,0,1705738734,NULL,'debugdisplay','0',NULL),(623,0,1705738734,NULL,'perfdebug','7',NULL),(624,0,1705738734,NULL,'debugstringids','0',NULL),(625,0,1705738734,NULL,'debugsqltrace','0',NULL),(626,0,1705738734,NULL,'debugvalidators','0',NULL),(627,0,1705738734,NULL,'debugpageinfo','0',NULL),(628,0,1705738734,NULL,'debugtemplateinfo','0',NULL),(629,0,1705738734,NULL,'profilingenabled','0',NULL),(630,0,1705738734,NULL,'profilingincluded','',NULL),(631,0,1705738734,NULL,'profilingexcluded','',NULL),(632,0,1705738734,NULL,'profilingautofrec','0',NULL),(633,0,1705738735,NULL,'profilingallowme','0',NULL),(634,0,1705738735,NULL,'profilingallowall','0',NULL),(635,0,1705738735,NULL,'profilingslow','0',NULL),(636,0,1705738735,NULL,'profilinglifetime','1440',NULL),(637,0,1705738735,NULL,'profilingimportprefix','(I)',NULL),(638,0,1705738738,'core_competency','pushcourseratingstouserplans','1',NULL),(639,0,1705738740,NULL,'calendar_exportsalt','oGCZaJ3JmLDN2KKjLKmGrY9n8J6SKK1R9Yjb0vu3Epx3lejXUgKZXnaa5I7f','B1OACklMFqIzSz0lee93PtQL1foQcGpArsslcn7DTw2dFOKIPQwN2fwfOPCA'),(640,0,1705738740,NULL,'defaulthomepage','1','3'),(641,0,1705738741,NULL,'allowguestmymoodle','1',NULL),(642,0,1705738746,NULL,'calendar_exportsalt','7fJhMIJMsRzRSoQRROZdGAhy0U8n3wnovT0jIuusc8EmdETxxGAV1k73O6j9','oGCZaJ3JmLDN2KKjLKmGrY9n8J6SKK1R9Yjb0vu3Epx3lejXUgKZXnaa5I7f'),(643,0,1705738847,'activitynames','filter_active','1',''),(644,0,1705738847,'core_filter','order','activitynames','activitynames'),(645,0,1705738848,'displayh5p','filter_active','1',''),(646,0,1705738848,'core_filter','order','displayh5p, activitynames','activitynames, displayh5p'),(647,0,1705738849,'emoticon','filter_active','1',''),(648,0,1705738850,'mathjaxloader','filter_active','1',''),(649,0,1705738850,'core_filter','order','displayh5p, activitynames, mathjaxloader, emoticon','displayh5p, activitynames, emoticon, mathjaxloader'),(650,0,1705738850,'mediaplugin','filter_active','1',''),(651,0,1705738852,'urltolink','filter_active','1',''),(652,0,1705738852,'core_filter','order','displayh5p, activitynames, mathjaxloader, emoticon, urltolink, mediaplugin','displayh5p, activitynames, mathjaxloader, emoticon, mediaplugin, urltolink'),(653,2,1705739164,NULL,'enableaccessibilitytools','1',NULL),(654,2,1705739164,'tool_moodlenet','enablemoodlenet','1',NULL),(655,2,1705739164,NULL,'notloggedinroleid','6',NULL),(656,2,1705739164,NULL,'guestroleid','6',NULL),(657,2,1705739164,NULL,'defaultuserroleid','7',NULL),(658,2,1705739164,NULL,'creatornewroleid','3',NULL),(659,2,1705739165,NULL,'restorernewroleid','3',NULL),(660,2,1705739165,'tool_dataprivacy','contactdataprotectionofficer','0',NULL),(661,2,1705739165,'tool_dataprivacy','automaticdataexportapproval','0',NULL),(662,2,1705739165,'tool_dataprivacy','automaticdatadeletionapproval','0',NULL),(663,2,1705739165,'tool_dataprivacy','automaticdeletionrequests','1',NULL),(664,2,1705739165,'tool_dataprivacy','privacyrequestexpiry','604800',NULL),(665,2,1705739165,'tool_dataprivacy','requireallenddatesforuserdeletion','1',NULL),(666,2,1705739165,'tool_dataprivacy','showdataretentionsummary','1',NULL),(667,2,1705739165,'tool_log','exportlog','1',NULL),(668,2,1705739165,NULL,'sitepolicyhandler','',NULL),(669,2,1705739165,NULL,'gradebookroles','5',NULL),(670,2,1705739165,'analytics','logstore','logstore_standard',NULL),(671,2,1705739165,NULL,'h5plibraryhandler','h5plib_v124',NULL),(672,2,1705739165,NULL,'airnotifierurl','https://messages.moodle.net',NULL),(673,2,1705739165,NULL,'airnotifierport','443',NULL),(674,2,1705739165,NULL,'airnotifiermobileappname','com.moodle.moodlemobile',NULL),(675,2,1705739165,NULL,'airnotifierappname','commoodlemoodlemobile',NULL),(676,2,1705739165,NULL,'airnotifieraccesskey','',NULL),(677,2,1705739165,'message_airnotifier','encryptnotifications','0',NULL),(678,2,1705739165,'message_airnotifier','encryptprocessing','0',NULL),(679,2,1705739165,'assign','feedback_plugin_for_gradebook','assignfeedback_comments',NULL),(680,2,1705739165,'assign','showrecentsubmissions','0',NULL),(681,2,1705739165,'assign','submissionreceipts','1',NULL),(682,2,1705739165,'assign','submissionstatement','This submission is my own work, except where I have acknowledged the use of the works of other people.',NULL),(683,2,1705739165,'assign','submissionstatementteamsubmission','This submission is the work of my group, except where we have acknowledged the use of the works of other people.',NULL),(684,2,1705739165,'assign','submissionstatementteamsubmissionallsubmit','This submission is my own work as a group member, except where I have acknowledged the use of the works of other people.',NULL),(685,2,1705739166,'assign','maxperpage','-1',NULL),(686,2,1705739166,'assign','alwaysshowdescription','1',NULL),(687,2,1705739166,'assign','alwaysshowdescription_adv','',NULL),(688,2,1705739166,'assign','alwaysshowdescription_locked','',NULL),(689,2,1705739166,'assign','allowsubmissionsfromdate','0',NULL),(690,2,1705739166,'assign','allowsubmissionsfromdate_enabled','1',NULL),(691,2,1705739166,'assign','allowsubmissionsfromdate_adv','',NULL),(692,2,1705739166,'assign','duedate','604800',NULL),(693,2,1705739166,'assign','duedate_enabled','1',NULL),(694,2,1705739166,'assign','duedate_adv','',NULL),(695,2,1705739166,'assign','cutoffdate','1209600',NULL),(696,2,1705739166,'assign','cutoffdate_enabled','',NULL),(697,2,1705739166,'assign','cutoffdate_adv','',NULL),(698,2,1705739166,'assign','enabletimelimit','0',NULL),(699,2,1705739166,'assign','gradingduedate','1209600',NULL),(700,2,1705739166,'assign','gradingduedate_enabled','1',NULL),(701,2,1705739166,'assign','gradingduedate_adv','',NULL),(702,2,1705739166,'assign','submissiondrafts','0',NULL),(703,2,1705739166,'assign','submissiondrafts_adv','',NULL),(704,2,1705739166,'assign','submissiondrafts_locked','',NULL),(705,2,1705739166,'assign','requiresubmissionstatement','0',NULL),(706,2,1705739166,'assign','requiresubmissionstatement_adv','',NULL),(707,2,1705739166,'assign','requiresubmissionstatement_locked','',NULL),(708,2,1705739166,'assign','attemptreopenmethod','none',NULL),(709,2,1705739166,'assign','attemptreopenmethod_adv','',NULL),(710,2,1705739166,'assign','attemptreopenmethod_locked','',NULL),(711,2,1705739166,'assign','maxattempts','-1',NULL),(712,2,1705739166,'assign','maxattempts_adv','',NULL),(713,2,1705739166,'assign','maxattempts_locked','',NULL),(714,2,1705739166,'assign','teamsubmission','0',NULL),(715,2,1705739166,'assign','teamsubmission_adv','',NULL),(716,2,1705739166,'assign','teamsubmission_locked','',NULL),(717,2,1705739166,'assign','preventsubmissionnotingroup','0',NULL),(718,2,1705739166,'assign','preventsubmissionnotingroup_adv','',NULL),(719,2,1705739166,'assign','preventsubmissionnotingroup_locked','',NULL),(720,2,1705739166,'assign','requireallteammemberssubmit','0',NULL),(721,2,1705739166,'assign','requireallteammemberssubmit_adv','',NULL),(722,2,1705739167,'assign','requireallteammemberssubmit_locked','',NULL),(723,2,1705739167,'assign','teamsubmissiongroupingid','',NULL),(724,2,1705739167,'assign','teamsubmissiongroupingid_adv','',NULL),(725,2,1705739167,'assign','sendnotifications','0',NULL),(726,2,1705739167,'assign','sendnotifications_adv','',NULL),(727,2,1705739167,'assign','sendnotifications_locked','',NULL),(728,2,1705739167,'assign','sendlatenotifications','0',NULL),(729,2,1705739167,'assign','sendlatenotifications_adv','',NULL),(730,2,1705739167,'assign','sendlatenotifications_locked','',NULL),(731,2,1705739167,'assign','sendstudentnotifications','1',NULL),(732,2,1705739167,'assign','sendstudentnotifications_adv','',NULL),(733,2,1705739167,'assign','sendstudentnotifications_locked','',NULL),(734,2,1705739167,'assign','blindmarking','0',NULL),(735,2,1705739167,'assign','blindmarking_adv','',NULL),(736,2,1705739167,'assign','blindmarking_locked','',NULL),(737,2,1705739167,'assign','hidegrader','0',NULL),(738,2,1705739167,'assign','hidegrader_adv','',NULL),(739,2,1705739167,'assign','hidegrader_locked','',NULL),(740,2,1705739167,'assign','markingworkflow','0',NULL),(741,2,1705739167,'assign','markingworkflow_adv','',NULL),(742,2,1705739167,'assign','markingworkflow_locked','',NULL),(743,2,1705739167,'assign','markingallocation','0',NULL),(744,2,1705739167,'assign','markingallocation_adv','',NULL),(745,2,1705739167,'assign','markingallocation_locked','',NULL),(746,2,1705739167,'assignsubmission_file','default','1',NULL),(747,2,1705739167,'assignsubmission_file','maxfiles','20',NULL),(748,2,1705739167,'assignsubmission_file','filetypes','',NULL),(749,2,1705739167,'assignsubmission_file','maxbytes','0',NULL),(750,2,1705739167,'assignsubmission_onlinetext','default','0',NULL),(751,2,1705739167,'assignfeedback_comments','default','1',NULL),(752,2,1705739167,'assignfeedback_comments','inline','0',NULL),(753,2,1705739167,'assignfeedback_comments','inline_adv','',NULL),(754,2,1705739167,'assignfeedback_comments','inline_locked','',NULL),(755,2,1705739167,'assignfeedback_editpdf','default','1',NULL),(756,2,1705739167,'assignfeedback_editpdf','stamps','',NULL),(757,2,1705739167,'assignfeedback_file','default','0',NULL),(758,2,1705739167,'assignfeedback_offline','default','0',NULL),(759,2,1705739167,NULL,'bigbluebuttonbn_default_dpa_accepted','0',NULL),(760,2,1705739167,NULL,'bigbluebuttonbn_server_url','https://test-moodle.blindsidenetworks.com/bigbluebutton/',NULL),(761,2,1705739167,NULL,'bigbluebuttonbn_shared_secret','********',NULL),(762,2,1705739167,NULL,'bigbluebuttonbn_checksum_algorithm','SHA1',NULL),(763,2,1705739168,NULL,'bigbluebuttonbn_poll_interval','5',NULL),(764,2,1705739168,NULL,'bigbluebuttonbn_welcome_default','',NULL),(765,2,1705739168,NULL,'bigbluebuttonbn_welcome_editable','1',NULL),(766,2,1705739168,NULL,'bigbluebuttonbn_recording_default','1',NULL),(767,2,1705739168,NULL,'bigbluebuttonbn_recording_refresh_period','300',NULL),(768,2,1705739168,NULL,'bigbluebuttonbn_recording_editable','1',NULL),(769,2,1705739168,NULL,'bigbluebuttonbn_recording_all_from_start_default','0',NULL),(770,2,1705739168,NULL,'bigbluebuttonbn_recording_all_from_start_editable','0',NULL),(771,2,1705739168,NULL,'bigbluebuttonbn_recording_hide_button_default','0',NULL),(772,2,1705739168,NULL,'bigbluebuttonbn_recording_hide_button_editable','0',NULL),(773,2,1705739168,NULL,'bigbluebuttonbn_recording_safe_formats','video,presentation',NULL),(774,2,1705739168,NULL,'bigbluebuttonbn_importrecordings_enabled','0',NULL),(775,2,1705739168,NULL,'bigbluebuttonbn_importrecordings_from_deleted_enabled','0',NULL),(776,2,1705739168,NULL,'bigbluebuttonbn_recordings_deleted_default','1',NULL),(777,2,1705739168,NULL,'bigbluebuttonbn_recordings_deleted_editable','0',NULL),(778,2,1705739168,NULL,'bigbluebuttonbn_recordings_imported_default','0',NULL),(779,2,1705739168,NULL,'bigbluebuttonbn_recordings_imported_editable','1',NULL),(780,2,1705739168,NULL,'bigbluebuttonbn_recordings_preview_default','1',NULL),(781,2,1705739168,NULL,'bigbluebuttonbn_recordings_preview_editable','0',NULL),(782,2,1705739168,NULL,'bigbluebuttonbn_recordings_asc_sort','0',NULL),(783,2,1705739168,NULL,'bigbluebuttonbn_recording_protect_editable','1',NULL),(784,2,1705739168,NULL,'bigbluebuttonbn_waitformoderator_default','0',NULL),(785,2,1705739168,NULL,'bigbluebuttonbn_waitformoderator_editable','1',NULL),(786,2,1705739168,NULL,'bigbluebuttonbn_waitformoderator_ping_interval','10',NULL),(787,2,1705739168,NULL,'bigbluebuttonbn_waitformoderator_cache_ttl','60',NULL),(788,2,1705739168,NULL,'bigbluebuttonbn_voicebridge_editable','0',NULL),(789,2,1705739168,NULL,'bigbluebuttonbn_preuploadpresentation_editable','0',NULL),(790,2,1705739168,'mod_bigbluebuttonbn','presentationdefault','',NULL),(791,2,1705739168,NULL,'bigbluebuttonbn_userlimit_default','0',NULL),(792,2,1705739168,NULL,'bigbluebuttonbn_userlimit_editable','0',NULL),(793,2,1705739168,NULL,'bigbluebuttonbn_participant_moderator_default','0',NULL),(794,2,1705739168,NULL,'bigbluebuttonbn_muteonstart_default','0',NULL),(795,2,1705739168,NULL,'bigbluebuttonbn_muteonstart_editable','0',NULL),(796,2,1705739169,NULL,'bigbluebuttonbn_disablecam_default','0',NULL),(797,2,1705739169,NULL,'bigbluebuttonbn_disablecam_editable','1',NULL),(798,2,1705739169,NULL,'bigbluebuttonbn_disablemic_default','0',NULL),(799,2,1705739169,NULL,'bigbluebuttonbn_disablemic_editable','1',NULL),(800,2,1705739169,NULL,'bigbluebuttonbn_disableprivatechat_default','0',NULL),(801,2,1705739169,NULL,'bigbluebuttonbn_disableprivatechat_editable','1',NULL),(802,2,1705739169,NULL,'bigbluebuttonbn_disablepublicchat_default','0',NULL),(803,2,1705739169,NULL,'bigbluebuttonbn_disablepublicchat_editable','1',NULL),(804,2,1705739169,NULL,'bigbluebuttonbn_disablenote_default','0',NULL),(805,2,1705739169,NULL,'bigbluebuttonbn_disablenote_editable','1',NULL),(806,2,1705739169,NULL,'bigbluebuttonbn_hideuserlist_default','0',NULL),(807,2,1705739169,NULL,'bigbluebuttonbn_hideuserlist_editable','1',NULL),(808,2,1705739169,NULL,'bigbluebuttonbn_recordingready_enabled','0',NULL),(809,2,1705739169,NULL,'bigbluebuttonbn_profile_picture_enabled','0',NULL),(810,2,1705739169,NULL,'bigbluebuttonbn_meetingevents_enabled','0',NULL),(811,2,1705739169,NULL,'bigbluebuttonbn_guestaccess_enabled','0',NULL),(812,2,1705739169,'book','numberingoptions','0,1,2,3',NULL),(813,2,1705739169,'book','numbering','1',NULL),(814,2,1705739169,NULL,'chat_method','ajax',NULL),(815,2,1705739169,NULL,'chat_refresh_userlist','10',NULL),(816,2,1705739169,NULL,'chat_old_ping','35',NULL),(817,2,1705739169,NULL,'chat_refresh_room','5',NULL),(818,2,1705739169,NULL,'chat_normal_updatemode','jsupdate',NULL),(819,2,1705739169,NULL,'chat_serverhost','127.0.0.1',NULL),(820,2,1705739169,NULL,'chat_serverip','127.0.0.1',NULL),(821,2,1705739169,NULL,'chat_serverport','9111',NULL),(822,2,1705739169,NULL,'chat_servermax','100',NULL),(823,2,1705739169,NULL,'data_enablerssfeeds','0',NULL),(824,2,1705739169,NULL,'feedback_allowfullanonymous','0',NULL),(825,2,1705739169,'resource','framesize','130',NULL),(826,2,1705739169,'resource','displayoptions','0,1,4,5,6',NULL),(827,2,1705739169,'resource','printintro','1',NULL),(828,2,1705739169,'resource','display','0',NULL),(829,2,1705739169,'resource','showsize','0',NULL),(830,2,1705739169,'resource','showtype','0',NULL),(831,2,1705739169,'resource','showdate','0',NULL),(832,2,1705739170,'resource','popupwidth','620',NULL),(833,2,1705739170,'resource','popupheight','450',NULL),(834,2,1705739170,'resource','filterfiles','0',NULL),(835,2,1705739170,'folder','showexpanded','1',NULL),(836,2,1705739170,'folder','maxsizetodownload','0',NULL),(837,2,1705739170,NULL,'forum_displaymode','3',NULL),(838,2,1705739170,NULL,'forum_shortpost','300',NULL),(839,2,1705739170,NULL,'forum_longpost','600',NULL),(840,2,1705739170,NULL,'forum_manydiscussions','100',NULL),(841,2,1705739170,NULL,'forum_maxbytes','512000',NULL),(842,2,1705739170,NULL,'forum_maxattachments','9',NULL),(843,2,1705739170,NULL,'forum_subscription','0',NULL),(844,2,1705739170,NULL,'forum_trackingtype','1',NULL),(845,2,1705739170,NULL,'forum_trackreadposts','1',NULL),(846,2,1705739170,NULL,'forum_allowforcedreadtracking','0',NULL),(847,2,1705739170,NULL,'forum_oldpostdays','14',NULL),(848,2,1705739170,NULL,'forum_usermarksread','0',NULL),(849,2,1705739170,NULL,'forum_cleanreadtime','2',NULL),(850,2,1705739170,NULL,'digestmailtime','17',NULL),(851,2,1705739170,NULL,'forum_enablerssfeeds','0',NULL),(852,2,1705739170,NULL,'forum_enabletimedposts','1',NULL),(853,2,1705739170,NULL,'glossary_entbypage','10',NULL),(854,2,1705739170,NULL,'glossary_dupentries','0',NULL),(855,2,1705739170,NULL,'glossary_allowcomments','0',NULL),(856,2,1705739170,NULL,'glossary_linkbydefault','1',NULL),(857,2,1705739170,NULL,'glossary_defaultapproval','1',NULL),(858,2,1705739170,NULL,'glossary_enablerssfeeds','0',NULL),(859,2,1705739170,NULL,'glossary_linkentries','0',NULL),(860,2,1705739170,NULL,'glossary_casesensitive','0',NULL),(861,2,1705739170,NULL,'glossary_fullmatch','0',NULL),(862,2,1705739170,'mod_h5pactivity','enablesavestate','1',NULL),(863,2,1705739170,'mod_h5pactivity','savestatefreq','60',NULL),(864,2,1705739170,'imscp','keepold','1',NULL),(865,2,1705739170,'imscp','keepold_adv','',NULL),(866,2,1705739170,'mod_lesson','mediafile','',NULL),(867,2,1705739170,'mod_lesson','mediafile_adv','1',NULL),(868,2,1705739170,'mod_lesson','mediawidth','640',NULL),(869,2,1705739171,'mod_lesson','mediaheight','480',NULL),(870,2,1705739171,'mod_lesson','mediaclose','0',NULL),(871,2,1705739171,'mod_lesson','progressbar','0',NULL),(872,2,1705739171,'mod_lesson','progressbar_adv','',NULL),(873,2,1705739171,'mod_lesson','ongoing','0',NULL),(874,2,1705739171,'mod_lesson','ongoing_adv','1',NULL),(875,2,1705739171,'mod_lesson','displayleftmenu','0',NULL),(876,2,1705739171,'mod_lesson','displayleftmenu_adv','',NULL),(877,2,1705739171,'mod_lesson','displayleftif','0',NULL),(878,2,1705739171,'mod_lesson','displayleftif_adv','1',NULL),(879,2,1705739171,'mod_lesson','slideshow','0',NULL),(880,2,1705739171,'mod_lesson','slideshow_adv','1',NULL),(881,2,1705739171,'mod_lesson','slideshowwidth','640',NULL),(882,2,1705739171,'mod_lesson','slideshowheight','480',NULL),(883,2,1705739171,'mod_lesson','slideshowbgcolor','#FFFFFF',NULL),(884,2,1705739171,'mod_lesson','maxanswers','5',NULL),(885,2,1705739171,'mod_lesson','maxanswers_adv','1',NULL),(886,2,1705739171,'mod_lesson','defaultfeedback','0',NULL),(887,2,1705739171,'mod_lesson','defaultfeedback_adv','1',NULL),(888,2,1705739171,'mod_lesson','activitylink','',NULL),(889,2,1705739171,'mod_lesson','activitylink_adv','1',NULL),(890,2,1705739171,'mod_lesson','timelimit','0',NULL),(891,2,1705739171,'mod_lesson','timelimit_adv','',NULL),(892,2,1705739171,'mod_lesson','password','0',NULL),(893,2,1705739171,'mod_lesson','password_adv','1',NULL),(894,2,1705739171,'mod_lesson','modattempts','0',NULL),(895,2,1705739171,'mod_lesson','modattempts_adv','',NULL),(896,2,1705739171,'mod_lesson','displayreview','0',NULL),(897,2,1705739171,'mod_lesson','displayreview_adv','',NULL),(898,2,1705739171,'mod_lesson','maximumnumberofattempts','1',NULL),(899,2,1705739171,'mod_lesson','maximumnumberofattempts_adv','',NULL),(900,2,1705739171,'mod_lesson','defaultnextpage','0',NULL),(901,2,1705739171,'mod_lesson','defaultnextpage_adv','1',NULL),(902,2,1705739171,'mod_lesson','numberofpagestoshow','1',NULL),(903,2,1705739171,'mod_lesson','numberofpagestoshow_adv','1',NULL),(904,2,1705739171,'mod_lesson','practice','0',NULL),(905,2,1705739171,'mod_lesson','practice_adv','',NULL),(906,2,1705739171,'mod_lesson','customscoring','1',NULL),(907,2,1705739171,'mod_lesson','customscoring_adv','1',NULL),(908,2,1705739171,'mod_lesson','retakesallowed','0',NULL),(909,2,1705739171,'mod_lesson','retakesallowed_adv','',NULL),(910,2,1705739172,'mod_lesson','handlingofretakes','0',NULL),(911,2,1705739172,'mod_lesson','handlingofretakes_adv','1',NULL),(912,2,1705739172,'mod_lesson','minimumnumberofquestions','0',NULL),(913,2,1705739172,'mod_lesson','minimumnumberofquestions_adv','1',NULL),(914,2,1705739172,'page','displayoptions','5',NULL),(915,2,1705739172,'page','printintro','0',NULL),(916,2,1705739172,'page','printlastmodified','1',NULL),(917,2,1705739172,'page','display','5',NULL),(918,2,1705739172,'page','popupwidth','620',NULL),(919,2,1705739172,'page','popupheight','450',NULL),(920,2,1705739172,'quiz','timelimit','0',NULL),(921,2,1705739172,'quiz','timelimit_adv','',NULL),(922,2,1705739172,'quiz','timelimit_locked','',NULL),(923,2,1705739172,'quiz','notifyattemptgradeddelay','18000',NULL),(924,2,1705739172,'quiz','overduehandling','autosubmit',NULL),(925,2,1705739172,'quiz','overduehandling_adv','',NULL),(926,2,1705739172,'quiz','overduehandling_locked','',NULL),(927,2,1705739172,'quiz','graceperiod','86400',NULL),(928,2,1705739172,'quiz','graceperiod_adv','',NULL),(929,2,1705739172,'quiz','graceperiod_locked','',NULL),(930,2,1705739172,'quiz','graceperiodmin','60',NULL),(931,2,1705739172,'quiz','attempts','0',NULL),(932,2,1705739172,'quiz','attempts_adv','',NULL),(933,2,1705739172,'quiz','attempts_locked','',NULL),(934,2,1705739172,'quiz','grademethod','1',NULL),(935,2,1705739172,'quiz','grademethod_adv','',NULL),(936,2,1705739172,'quiz','grademethod_locked','',NULL),(937,2,1705739172,'quiz','maximumgrade','10',NULL),(938,2,1705739172,'quiz','maximumgrade_locked','',NULL),(939,2,1705739172,'quiz','questionsperpage','1',NULL),(940,2,1705739172,'quiz','questionsperpage_adv','',NULL),(941,2,1705739172,'quiz','questionsperpage_locked','',NULL),(942,2,1705739172,'quiz','navmethod','free',NULL),(943,2,1705739172,'quiz','navmethod_adv','1',NULL),(944,2,1705739172,'quiz','navmethod_locked','',NULL),(945,2,1705739172,'quiz','shuffleanswers','1',NULL),(946,2,1705739172,'quiz','shuffleanswers_adv','',NULL),(947,2,1705739172,'quiz','shuffleanswers_locked','',NULL),(948,2,1705739173,'quiz','preferredbehaviour','deferredfeedback',NULL),(949,2,1705739173,'quiz','preferredbehaviour_locked','',NULL),(950,2,1705739173,'quiz','canredoquestions','0',NULL),(951,2,1705739173,'quiz','canredoquestions_adv','1',NULL),(952,2,1705739173,'quiz','canredoquestions_locked','',NULL),(953,2,1705739173,'quiz','attemptonlast','0',NULL),(954,2,1705739173,'quiz','attemptonlast_adv','1',NULL),(955,2,1705739173,'quiz','attemptonlast_locked','',NULL),(956,2,1705739173,'quiz','reviewattempt','69904',NULL),(957,2,1705739173,'quiz','reviewcorrectness','69904',NULL),(958,2,1705739173,'quiz','reviewmarks','69904',NULL),(959,2,1705739173,'quiz','reviewspecificfeedback','69904',NULL),(960,2,1705739173,'quiz','reviewgeneralfeedback','69904',NULL),(961,2,1705739173,'quiz','reviewrightanswer','69904',NULL),(962,2,1705739173,'quiz','reviewoverallfeedback','4368',NULL),(963,2,1705739173,'quiz','showuserpicture','0',NULL),(964,2,1705739173,'quiz','showuserpicture_adv','',NULL),(965,2,1705739173,'quiz','showuserpicture_locked','',NULL),(966,2,1705739173,'quiz','decimalpoints','2',NULL),(967,2,1705739173,'quiz','decimalpoints_adv','',NULL),(968,2,1705739173,'quiz','decimalpoints_locked','',NULL),(969,2,1705739173,'quiz','questiondecimalpoints','-1',NULL),(970,2,1705739173,'quiz','questiondecimalpoints_adv','',NULL),(971,2,1705739173,'quiz','questiondecimalpoints_locked','',NULL),(972,2,1705739173,'quiz','showblocks','0',NULL),(973,2,1705739173,'quiz','showblocks_adv','1',NULL),(974,2,1705739173,'quiz','showblocks_locked','',NULL),(975,2,1705739173,'quiz','quizpassword','',NULL),(976,2,1705739173,'quiz','quizpassword_adv','',NULL),(977,2,1705739173,'quiz','quizpassword_required','',NULL),(978,2,1705739173,'quiz','quizpassword_locked','',NULL),(979,2,1705739174,'quiz','subnet','',NULL),(980,2,1705739174,'quiz','subnet_adv','1',NULL),(981,2,1705739174,'quiz','subnet_locked','',NULL),(982,2,1705739174,'quiz','delay1','0',NULL),(983,2,1705739174,'quiz','delay1_adv','1',NULL),(984,2,1705739174,'quiz','delay1_locked','',NULL),(985,2,1705739174,'quiz','delay2','0',NULL),(986,2,1705739174,'quiz','delay2_adv','1',NULL),(987,2,1705739174,'quiz','delay2_locked','',NULL),(988,2,1705739174,'quiz','browsersecurity','-',NULL),(989,2,1705739174,'quiz','browsersecurity_adv','1',NULL),(990,2,1705739174,'quiz','browsersecurity_locked','',NULL),(991,2,1705739174,'quiz','initialnumfeedbacks','2',NULL),(992,2,1705739174,'quiz','autosaveperiod','60',NULL),(993,2,1705739174,'quiz_statistics','getstatslocktimeout','900',NULL),(994,2,1705739174,'quizaccess_seb','autoreconfigureseb','1',NULL),(995,2,1705739174,'quizaccess_seb','showseblinks','seb,http',NULL),(996,2,1705739174,'quizaccess_seb','downloadlink','https://safeexambrowser.org/download_en.html',NULL),(997,2,1705739174,'quizaccess_seb','quizpasswordrequired','0',NULL),(998,2,1705739174,'quizaccess_seb','displayblocksbeforestart','0',NULL),(999,2,1705739174,'quizaccess_seb','displayblockswhenfinished','1',NULL),(1000,2,1705739174,'scorm','displaycoursestructure','0',NULL),(1001,2,1705739174,'scorm','displaycoursestructure_adv','',NULL),(1002,2,1705739174,'scorm','popup','0',NULL),(1003,2,1705739175,'scorm','popup_adv','',NULL),(1004,2,1705739175,'scorm','framewidth','100',NULL),(1005,2,1705739175,'scorm','framewidth_adv','1',NULL),(1006,2,1705739175,'scorm','frameheight','500',NULL),(1007,2,1705739175,'scorm','frameheight_adv','1',NULL),(1008,2,1705739175,'scorm','winoptgrp_adv','1',NULL),(1009,2,1705739175,'scorm','scrollbars','0',NULL),(1010,2,1705739175,'scorm','directories','0',NULL),(1011,2,1705739175,'scorm','location','0',NULL),(1012,2,1705739175,'scorm','menubar','0',NULL),(1013,2,1705739175,'scorm','toolbar','0',NULL),(1014,2,1705739175,'scorm','status','0',NULL),(1015,2,1705739175,'scorm','skipview','0',NULL),(1016,2,1705739175,'scorm','skipview_adv','1',NULL),(1017,2,1705739175,'scorm','hidebrowse','0',NULL),(1018,2,1705739175,'scorm','hidebrowse_adv','1',NULL),(1019,2,1705739175,'scorm','hidetoc','0',NULL),(1020,2,1705739175,'scorm','hidetoc_adv','1',NULL),(1021,2,1705739175,'scorm','nav','1',NULL),(1022,2,1705739175,'scorm','nav_adv','1',NULL),(1023,2,1705739175,'scorm','navpositionleft','-100',NULL),(1024,2,1705739175,'scorm','navpositionleft_adv','1',NULL),(1025,2,1705739175,'scorm','navpositiontop','-100',NULL),(1026,2,1705739175,'scorm','navpositiontop_adv','1',NULL),(1027,2,1705739175,'scorm','collapsetocwinsize','767',NULL),(1028,2,1705739175,'scorm','collapsetocwinsize_adv','1',NULL),(1029,2,1705739175,'scorm','displayattemptstatus','1',NULL),(1030,2,1705739175,'scorm','displayattemptstatus_adv','',NULL),(1031,2,1705739175,'scorm','grademethod','1',NULL),(1032,2,1705739175,'scorm','maxgrade','100',NULL),(1033,2,1705739175,'scorm','maxattempt','0',NULL),(1034,2,1705739175,'scorm','whatgrade','0',NULL),(1035,2,1705739175,'scorm','forcecompleted','0',NULL),(1036,2,1705739175,'scorm','forcenewattempt','0',NULL),(1037,2,1705739175,'scorm','autocommit','0',NULL),(1038,2,1705739175,'scorm','masteryoverride','1',NULL),(1039,2,1705739175,'scorm','lastattemptlock','0',NULL),(1040,2,1705739175,'scorm','auto','0',NULL),(1041,2,1705739175,'scorm','updatefreq','0',NULL),(1042,2,1705739175,'scorm','scormstandard','0',NULL),(1043,2,1705739175,'scorm','allowtypeexternal','0',NULL),(1044,2,1705739175,'scorm','allowtypelocalsync','0',NULL),(1045,2,1705739176,'scorm','allowtypeexternalaicc','0',NULL),(1046,2,1705739176,'scorm','allowaicchacp','0',NULL),(1047,2,1705739176,'scorm','aicchacptimeout','30',NULL),(1048,2,1705739176,'scorm','aicchacpkeepsessiondata','1',NULL),(1049,2,1705739176,'scorm','aiccuserid','1',NULL),(1050,2,1705739176,'scorm','forcejavascript','1',NULL),(1051,2,1705739176,'scorm','allowapidebug','0',NULL),(1052,2,1705739176,'scorm','apidebugmask','.*',NULL),(1053,2,1705739176,'scorm','protectpackagedownloads','0',NULL),(1054,2,1705739176,'label','dndmedia','1',NULL),(1055,2,1705739176,'label','dndresizewidth','400',NULL),(1056,2,1705739176,'label','dndresizeheight','400',NULL),(1057,2,1705739176,'url','framesize','130',NULL),(1058,2,1705739176,'url','secretphrase','',NULL),(1059,2,1705739176,'url','rolesinparams','0',NULL),(1060,2,1705739176,'url','displayoptions','0,1,5,6',NULL),(1061,2,1705739176,'url','printintro','1',NULL),(1062,2,1705739176,'url','display','0',NULL),(1063,2,1705739176,'url','popupwidth','620',NULL),(1064,2,1705739176,'url','popupheight','450',NULL),(1065,2,1705739176,'workshop','grade','80',NULL),(1066,2,1705739176,'workshop','gradinggrade','20',NULL),(1067,2,1705739176,'workshop','gradedecimals','0',NULL),(1068,2,1705739176,'workshop','maxbytes','0',NULL),(1069,2,1705739176,'workshop','strategy','accumulative',NULL),(1070,2,1705739176,'workshop','examplesmode','0',NULL),(1071,2,1705739176,'workshopallocation_random','numofreviews','5',NULL),(1072,2,1705739176,'workshopform_numerrors','grade0','No',NULL),(1073,2,1705739176,'workshopform_numerrors','grade1','Yes',NULL),(1074,2,1705739176,'workshopeval_best','comparison','5',NULL),(1075,2,1705739176,'tool_brickfield','analysistype','0',NULL),(1076,2,1705739176,'tool_brickfield','deletehistoricaldata','1',NULL),(1077,2,1705739176,'tool_brickfield','batch','1000',NULL),(1078,2,1705739176,'tool_brickfield','perpage','50',NULL),(1079,2,1705739176,'tool_recyclebin','coursebinenable','1',NULL),(1080,2,1705739176,'tool_recyclebin','coursebinexpiry','604800',NULL),(1081,2,1705739176,'tool_recyclebin','categorybinenable','1',NULL),(1082,2,1705739176,'tool_recyclebin','categorybinexpiry','604800',NULL),(1083,2,1705739176,'tool_recyclebin','autohide','1',NULL),(1084,2,1705739176,'antivirus_clamav','runningmethod','commandline',NULL),(1085,2,1705739176,'antivirus_clamav','pathtoclam','',NULL),(1086,2,1705739176,'antivirus_clamav','pathtounixsocket','',NULL),(1087,2,1705739176,'antivirus_clamav','tcpsockethost','',NULL),(1088,2,1705739177,'antivirus_clamav','tcpsocketport','3310',NULL),(1089,2,1705739177,'antivirus_clamav','clamfailureonupload','tryagain',NULL),(1090,2,1705739177,'antivirus_clamav','tries','1',NULL),(1091,2,1705739177,'auth_cas','auth_name','CAS',NULL),(1092,2,1705739177,'auth_cas','auth_logo','',NULL),(1093,2,1705739177,'auth_cas','hostname','',NULL),(1094,2,1705739177,'auth_cas','baseuri','',NULL),(1095,2,1705739177,'auth_cas','port','0',NULL),(1096,2,1705739177,'auth_cas','casversion','2.0',NULL),(1097,2,1705739177,'auth_cas','language','CAS_Languages_English',NULL),(1098,2,1705739177,'auth_cas','proxycas','0',NULL),(1099,2,1705739177,'auth_cas','logoutcas','0',NULL),(1100,2,1705739177,'auth_cas','multiauth','0',NULL),(1101,2,1705739177,'auth_cas','certificate_check','0',NULL),(1102,2,1705739177,'auth_cas','certificate_path','',NULL),(1103,2,1705739177,'auth_cas','curl_ssl_version','',NULL),(1104,2,1705739177,'auth_cas','logout_return_url','',NULL),(1105,2,1705739177,'auth_cas','host_url','',NULL),(1106,2,1705739177,'auth_cas','ldap_version','3',NULL),(1107,2,1705739177,'auth_cas','start_tls','0',NULL),(1108,2,1705739177,'auth_cas','ldapencoding','utf-8',NULL),(1109,2,1705739177,'auth_cas','pagesize','250',NULL),(1110,2,1705739177,'auth_cas','bind_dn','',NULL),(1111,2,1705739177,'auth_cas','bind_pw','',NULL),(1112,2,1705739177,'auth_cas','user_type','default',NULL),(1113,2,1705739177,'auth_cas','contexts','',NULL),(1114,2,1705739177,'auth_cas','search_sub','0',NULL),(1115,2,1705739177,'auth_cas','opt_deref','0',NULL),(1116,2,1705739177,'auth_cas','user_attribute','',NULL),(1117,2,1705739177,'auth_cas','memberattribute','',NULL),(1118,2,1705739177,'auth_cas','memberattribute_isdn','0',NULL),(1119,2,1705739177,'auth_cas','objectclass','',NULL),(1120,2,1705739177,'auth_cas','attrcreators','',NULL),(1121,2,1705739177,'auth_cas','groupecreators','',NULL),(1122,2,1705739177,'auth_cas','removeuser','0',NULL),(1123,2,1705739177,'auth_cas','field_map_firstname','',NULL),(1124,2,1705739177,'auth_cas','field_updatelocal_firstname','oncreate',NULL),(1125,2,1705739177,'auth_cas','field_updateremote_firstname','0',NULL),(1126,2,1705739177,'auth_cas','field_lock_firstname','unlocked',NULL),(1127,2,1705739177,'auth_cas','field_map_lastname','',NULL),(1128,2,1705739178,'auth_cas','field_updatelocal_lastname','oncreate',NULL),(1129,2,1705739178,'auth_cas','field_updateremote_lastname','0',NULL),(1130,2,1705739178,'auth_cas','field_lock_lastname','unlocked',NULL),(1131,2,1705739178,'auth_cas','field_map_email','',NULL),(1132,2,1705739178,'auth_cas','field_updatelocal_email','oncreate',NULL),(1133,2,1705739178,'auth_cas','field_updateremote_email','0',NULL),(1134,2,1705739178,'auth_cas','field_lock_email','unlocked',NULL),(1135,2,1705739178,'auth_cas','field_map_city','',NULL),(1136,2,1705739178,'auth_cas','field_updatelocal_city','oncreate',NULL),(1137,2,1705739178,'auth_cas','field_updateremote_city','0',NULL),(1138,2,1705739178,'auth_cas','field_lock_city','unlocked',NULL),(1139,2,1705739178,'auth_cas','field_map_country','',NULL),(1140,2,1705739178,'auth_cas','field_updatelocal_country','oncreate',NULL),(1141,2,1705739178,'auth_cas','field_updateremote_country','0',NULL),(1142,2,1705739178,'auth_cas','field_lock_country','unlocked',NULL),(1143,2,1705739178,'auth_cas','field_map_lang','',NULL),(1144,2,1705739178,'auth_cas','field_updatelocal_lang','oncreate',NULL),(1145,2,1705739178,'auth_cas','field_updateremote_lang','0',NULL),(1146,2,1705739178,'auth_cas','field_lock_lang','unlocked',NULL),(1147,2,1705739178,'auth_cas','field_map_description','',NULL),(1148,2,1705739178,'auth_cas','field_updatelocal_description','oncreate',NULL),(1149,2,1705739178,'auth_cas','field_updateremote_description','0',NULL),(1150,2,1705739178,'auth_cas','field_lock_description','unlocked',NULL),(1151,2,1705739178,'auth_cas','field_map_idnumber','',NULL),(1152,2,1705739178,'auth_cas','field_updatelocal_idnumber','oncreate',NULL),(1153,2,1705739178,'auth_cas','field_updateremote_idnumber','0',NULL),(1154,2,1705739178,'auth_cas','field_lock_idnumber','unlocked',NULL),(1155,2,1705739178,'auth_cas','field_map_institution','',NULL),(1156,2,1705739178,'auth_cas','field_updatelocal_institution','oncreate',NULL),(1157,2,1705739178,'auth_cas','field_updateremote_institution','0',NULL),(1158,2,1705739178,'auth_cas','field_lock_institution','unlocked',NULL),(1159,2,1705739178,'auth_cas','field_map_department','',NULL),(1160,2,1705739178,'auth_cas','field_updatelocal_department','oncreate',NULL),(1161,2,1705739178,'auth_cas','field_updateremote_department','0',NULL),(1162,2,1705739178,'auth_cas','field_lock_department','unlocked',NULL),(1163,2,1705739178,'auth_cas','field_map_phone1','',NULL),(1164,2,1705739178,'auth_cas','field_updatelocal_phone1','oncreate',NULL),(1165,2,1705739179,'auth_cas','field_updateremote_phone1','0',NULL),(1166,2,1705739179,'auth_cas','field_lock_phone1','unlocked',NULL),(1167,2,1705739179,'auth_cas','field_map_phone2','',NULL),(1168,2,1705739179,'auth_cas','field_updatelocal_phone2','oncreate',NULL),(1169,2,1705739179,'auth_cas','field_updateremote_phone2','0',NULL),(1170,2,1705739179,'auth_cas','field_lock_phone2','unlocked',NULL),(1171,2,1705739179,'auth_cas','field_map_address','',NULL),(1172,2,1705739179,'auth_cas','field_updatelocal_address','oncreate',NULL),(1173,2,1705739179,'auth_cas','field_updateremote_address','0',NULL),(1174,2,1705739179,'auth_cas','field_lock_address','unlocked',NULL),(1175,2,1705739179,'auth_cas','field_map_firstnamephonetic','',NULL),(1176,2,1705739179,'auth_cas','field_updatelocal_firstnamephonetic','oncreate',NULL),(1177,2,1705739179,'auth_cas','field_updateremote_firstnamephonetic','0',NULL),(1178,2,1705739179,'auth_cas','field_lock_firstnamephonetic','unlocked',NULL),(1179,2,1705739179,'auth_cas','field_map_lastnamephonetic','',NULL),(1180,2,1705739179,'auth_cas','field_updatelocal_lastnamephonetic','oncreate',NULL),(1181,2,1705739179,'auth_cas','field_updateremote_lastnamephonetic','0',NULL),(1182,2,1705739179,'auth_cas','field_lock_lastnamephonetic','unlocked',NULL),(1183,2,1705739179,'auth_cas','field_map_middlename','',NULL),(1184,2,1705739179,'auth_cas','field_updatelocal_middlename','oncreate',NULL),(1185,2,1705739179,'auth_cas','field_updateremote_middlename','0',NULL),(1186,2,1705739179,'auth_cas','field_lock_middlename','unlocked',NULL),(1187,2,1705739179,'auth_cas','field_map_alternatename','',NULL),(1188,2,1705739179,'auth_cas','field_updatelocal_alternatename','oncreate',NULL),(1189,2,1705739179,'auth_cas','field_updateremote_alternatename','0',NULL),(1190,2,1705739179,'auth_cas','field_lock_alternatename','unlocked',NULL),(1191,2,1705739179,'auth_email','recaptcha','0',NULL),(1192,2,1705739179,'auth_email','field_lock_firstname','unlocked',NULL),(1193,2,1705739179,'auth_email','field_lock_lastname','unlocked',NULL),(1194,2,1705739179,'auth_email','field_lock_email','unlocked',NULL),(1195,2,1705739179,'auth_email','field_lock_city','unlocked',NULL),(1196,2,1705739179,'auth_email','field_lock_country','unlocked',NULL),(1197,2,1705739179,'auth_email','field_lock_lang','unlocked',NULL),(1198,2,1705739179,'auth_email','field_lock_description','unlocked',NULL),(1199,2,1705739179,'auth_email','field_lock_idnumber','unlocked',NULL),(1200,2,1705739179,'auth_email','field_lock_institution','unlocked',NULL),(1201,2,1705739179,'auth_email','field_lock_department','unlocked',NULL),(1202,2,1705739179,'auth_email','field_lock_phone1','unlocked',NULL),(1203,2,1705739180,'auth_email','field_lock_phone2','unlocked',NULL),(1204,2,1705739180,'auth_email','field_lock_address','unlocked',NULL),(1205,2,1705739180,'auth_email','field_lock_firstnamephonetic','unlocked',NULL),(1206,2,1705739180,'auth_email','field_lock_lastnamephonetic','unlocked',NULL),(1207,2,1705739180,'auth_email','field_lock_middlename','unlocked',NULL),(1208,2,1705739180,'auth_email','field_lock_alternatename','unlocked',NULL),(1209,2,1705739180,'auth_db','host','127.0.0.1',NULL),(1210,2,1705739180,'auth_db','type','mysqli',NULL),(1211,2,1705739180,'auth_db','sybasequoting','0',NULL),(1212,2,1705739180,'auth_db','name','',NULL),(1213,2,1705739180,'auth_db','user','',NULL),(1214,2,1705739180,'auth_db','pass','',NULL),(1215,2,1705739180,'auth_db','table','',NULL),(1216,2,1705739180,'auth_db','fielduser','',NULL),(1217,2,1705739180,'auth_db','fieldpass','',NULL),(1218,2,1705739180,'auth_db','passtype','plaintext',NULL),(1219,2,1705739180,'auth_db','extencoding','utf-8',NULL),(1220,2,1705739180,'auth_db','setupsql','',NULL),(1221,2,1705739180,'auth_db','debugauthdb','0',NULL),(1222,2,1705739180,'auth_db','changepasswordurl','',NULL),(1223,2,1705739180,'auth_db','removeuser','0',NULL),(1224,2,1705739180,'auth_db','updateusers','0',NULL),(1225,2,1705739180,'auth_db','field_map_firstname','',NULL),(1226,2,1705739180,'auth_db','field_updatelocal_firstname','oncreate',NULL),(1227,2,1705739180,'auth_db','field_updateremote_firstname','0',NULL),(1228,2,1705739180,'auth_db','field_lock_firstname','unlocked',NULL),(1229,2,1705739180,'auth_db','field_map_lastname','',NULL),(1230,2,1705739180,'auth_db','field_updatelocal_lastname','oncreate',NULL),(1231,2,1705739180,'auth_db','field_updateremote_lastname','0',NULL),(1232,2,1705739180,'auth_db','field_lock_lastname','unlocked',NULL),(1233,2,1705739180,'auth_db','field_map_email','',NULL),(1234,2,1705739180,'auth_db','field_updatelocal_email','oncreate',NULL),(1235,2,1705739180,'auth_db','field_updateremote_email','0',NULL),(1236,2,1705739180,'auth_db','field_lock_email','unlocked',NULL),(1237,2,1705739180,'auth_db','field_map_city','',NULL),(1238,2,1705739180,'auth_db','field_updatelocal_city','oncreate',NULL),(1239,2,1705739180,'auth_db','field_updateremote_city','0',NULL),(1240,2,1705739180,'auth_db','field_lock_city','unlocked',NULL),(1241,2,1705739180,'auth_db','field_map_country','',NULL),(1242,2,1705739180,'auth_db','field_updatelocal_country','oncreate',NULL),(1243,2,1705739181,'auth_db','field_updateremote_country','0',NULL),(1244,2,1705739181,'auth_db','field_lock_country','unlocked',NULL),(1245,2,1705739181,'auth_db','field_map_lang','',NULL),(1246,2,1705739181,'auth_db','field_updatelocal_lang','oncreate',NULL),(1247,2,1705739181,'auth_db','field_updateremote_lang','0',NULL),(1248,2,1705739181,'auth_db','field_lock_lang','unlocked',NULL),(1249,2,1705739181,'auth_db','field_map_description','',NULL),(1250,2,1705739181,'auth_db','field_updatelocal_description','oncreate',NULL),(1251,2,1705739181,'auth_db','field_updateremote_description','0',NULL),(1252,2,1705739181,'auth_db','field_lock_description','unlocked',NULL),(1253,2,1705739181,'auth_db','field_map_idnumber','',NULL),(1254,2,1705739181,'auth_db','field_updatelocal_idnumber','oncreate',NULL),(1255,2,1705739181,'auth_db','field_updateremote_idnumber','0',NULL),(1256,2,1705739181,'auth_db','field_lock_idnumber','unlocked',NULL),(1257,2,1705739181,'auth_db','field_map_institution','',NULL),(1258,2,1705739181,'auth_db','field_updatelocal_institution','oncreate',NULL),(1259,2,1705739181,'auth_db','field_updateremote_institution','0',NULL),(1260,2,1705739181,'auth_db','field_lock_institution','unlocked',NULL),(1261,2,1705739181,'auth_db','field_map_department','',NULL),(1262,2,1705739181,'auth_db','field_updatelocal_department','oncreate',NULL),(1263,2,1705739181,'auth_db','field_updateremote_department','0',NULL),(1264,2,1705739181,'auth_db','field_lock_department','unlocked',NULL),(1265,2,1705739181,'auth_db','field_map_phone1','',NULL),(1266,2,1705739181,'auth_db','field_updatelocal_phone1','oncreate',NULL),(1267,2,1705739181,'auth_db','field_updateremote_phone1','0',NULL),(1268,2,1705739181,'auth_db','field_lock_phone1','unlocked',NULL),(1269,2,1705739181,'auth_db','field_map_phone2','',NULL),(1270,2,1705739181,'auth_db','field_updatelocal_phone2','oncreate',NULL),(1271,2,1705739181,'auth_db','field_updateremote_phone2','0',NULL),(1272,2,1705739181,'auth_db','field_lock_phone2','unlocked',NULL),(1273,2,1705739181,'auth_db','field_map_address','',NULL),(1274,2,1705739181,'auth_db','field_updatelocal_address','oncreate',NULL),(1275,2,1705739181,'auth_db','field_updateremote_address','0',NULL),(1276,2,1705739181,'auth_db','field_lock_address','unlocked',NULL),(1277,2,1705739181,'auth_db','field_map_firstnamephonetic','',NULL),(1278,2,1705739181,'auth_db','field_updatelocal_firstnamephonetic','oncreate',NULL),(1279,2,1705739181,'auth_db','field_updateremote_firstnamephonetic','0',NULL),(1280,2,1705739181,'auth_db','field_lock_firstnamephonetic','unlocked',NULL),(1281,2,1705739182,'auth_db','field_map_lastnamephonetic','',NULL),(1282,2,1705739182,'auth_db','field_updatelocal_lastnamephonetic','oncreate',NULL),(1283,2,1705739182,'auth_db','field_updateremote_lastnamephonetic','0',NULL),(1284,2,1705739182,'auth_db','field_lock_lastnamephonetic','unlocked',NULL),(1285,2,1705739182,'auth_db','field_map_middlename','',NULL),(1286,2,1705739182,'auth_db','field_updatelocal_middlename','oncreate',NULL),(1287,2,1705739182,'auth_db','field_updateremote_middlename','0',NULL),(1288,2,1705739182,'auth_db','field_lock_middlename','unlocked',NULL),(1289,2,1705739182,'auth_db','field_map_alternatename','',NULL),(1290,2,1705739182,'auth_db','field_updatelocal_alternatename','oncreate',NULL),(1291,2,1705739182,'auth_db','field_updateremote_alternatename','0',NULL),(1292,2,1705739182,'auth_db','field_lock_alternatename','unlocked',NULL),(1293,2,1705739182,'auth_ldap','host_url','',NULL),(1294,2,1705739182,'auth_ldap','ldap_version','3',NULL),(1295,2,1705739182,'auth_ldap','start_tls','0',NULL),(1296,2,1705739182,'auth_ldap','ldapencoding','utf-8',NULL),(1297,2,1705739182,'auth_ldap','pagesize','250',NULL),(1298,2,1705739182,'auth_ldap','preventpassindb','0',NULL),(1299,2,1705739182,'auth_ldap','bind_dn','',NULL),(1300,2,1705739182,'auth_ldap','bind_pw','',NULL),(1301,2,1705739182,'auth_ldap','user_type','default',NULL),(1302,2,1705739182,'auth_ldap','contexts','',NULL),(1303,2,1705739182,'auth_ldap','search_sub','0',NULL),(1304,2,1705739182,'auth_ldap','opt_deref','0',NULL),(1305,2,1705739182,'auth_ldap','user_attribute','',NULL),(1306,2,1705739182,'auth_ldap','suspended_attribute','',NULL),(1307,2,1705739182,'auth_ldap','memberattribute','',NULL),(1308,2,1705739182,'auth_ldap','memberattribute_isdn','0',NULL),(1309,2,1705739182,'auth_ldap','objectclass','',NULL),(1310,2,1705739182,'auth_ldap','forcechangepassword','0',NULL),(1311,2,1705739182,'auth_ldap','stdchangepassword','0',NULL),(1312,2,1705739182,'auth_ldap','passtype','plaintext',NULL),(1313,2,1705739182,'auth_ldap','changepasswordurl','',NULL),(1314,2,1705739182,'auth_ldap','expiration','0',NULL),(1315,2,1705739182,'auth_ldap','expiration_warning','',NULL),(1316,2,1705739182,'auth_ldap','expireattr','',NULL),(1317,2,1705739182,'auth_ldap','gracelogins','0',NULL),(1318,2,1705739182,'auth_ldap','graceattr','',NULL),(1319,2,1705739182,'auth_ldap','auth_user_create','0',NULL),(1320,2,1705739183,'auth_ldap','create_context','',NULL),(1321,2,1705739183,'auth_ldap','managercontext','',NULL),(1322,2,1705739183,'auth_ldap','coursecreatorcontext','',NULL),(1323,2,1705739183,'auth_ldap','removeuser','0',NULL),(1324,2,1705739183,'auth_ldap','sync_suspended','0',NULL),(1325,2,1705739183,'auth_ldap','ntlmsso_enabled','0',NULL),(1326,2,1705739183,'auth_ldap','ntlmsso_subnet','',NULL),(1327,2,1705739183,'auth_ldap','ntlmsso_ie_fastpath','0',NULL),(1328,2,1705739183,'auth_ldap','ntlmsso_type','ntlm',NULL),(1329,2,1705739183,'auth_ldap','ntlmsso_remoteuserformat','',NULL),(1330,2,1705739183,'auth_ldap','field_map_firstname','',NULL),(1331,2,1705739183,'auth_ldap','field_updatelocal_firstname','oncreate',NULL),(1332,2,1705739183,'auth_ldap','field_updateremote_firstname','0',NULL),(1333,2,1705739183,'auth_ldap','field_lock_firstname','unlocked',NULL),(1334,2,1705739183,'auth_ldap','field_map_lastname','',NULL),(1335,2,1705739183,'auth_ldap','field_updatelocal_lastname','oncreate',NULL),(1336,2,1705739183,'auth_ldap','field_updateremote_lastname','0',NULL),(1337,2,1705739183,'auth_ldap','field_lock_lastname','unlocked',NULL),(1338,2,1705739183,'auth_ldap','field_map_email','',NULL),(1339,2,1705739183,'auth_ldap','field_updatelocal_email','oncreate',NULL),(1340,2,1705739183,'auth_ldap','field_updateremote_email','0',NULL),(1341,2,1705739183,'auth_ldap','field_lock_email','unlocked',NULL),(1342,2,1705739183,'auth_ldap','field_map_city','',NULL),(1343,2,1705739183,'auth_ldap','field_updatelocal_city','oncreate',NULL),(1344,2,1705739183,'auth_ldap','field_updateremote_city','0',NULL),(1345,2,1705739183,'auth_ldap','field_lock_city','unlocked',NULL),(1346,2,1705739183,'auth_ldap','field_map_country','',NULL),(1347,2,1705739183,'auth_ldap','field_updatelocal_country','oncreate',NULL),(1348,2,1705739183,'auth_ldap','field_updateremote_country','0',NULL),(1349,2,1705739183,'auth_ldap','field_lock_country','unlocked',NULL),(1350,2,1705739183,'auth_ldap','field_map_lang','',NULL),(1351,2,1705739183,'auth_ldap','field_updatelocal_lang','oncreate',NULL),(1352,2,1705739183,'auth_ldap','field_updateremote_lang','0',NULL),(1353,2,1705739183,'auth_ldap','field_lock_lang','unlocked',NULL),(1354,2,1705739183,'auth_ldap','field_map_description','',NULL),(1355,2,1705739183,'auth_ldap','field_updatelocal_description','oncreate',NULL),(1356,2,1705739183,'auth_ldap','field_updateremote_description','0',NULL),(1357,2,1705739183,'auth_ldap','field_lock_description','unlocked',NULL),(1358,2,1705739184,'auth_ldap','field_map_idnumber','',NULL),(1359,2,1705739184,'auth_ldap','field_updatelocal_idnumber','oncreate',NULL),(1360,2,1705739184,'auth_ldap','field_updateremote_idnumber','0',NULL),(1361,2,1705739184,'auth_ldap','field_lock_idnumber','unlocked',NULL),(1362,2,1705739184,'auth_ldap','field_map_institution','',NULL),(1363,2,1705739184,'auth_ldap','field_updatelocal_institution','oncreate',NULL),(1364,2,1705739184,'auth_ldap','field_updateremote_institution','0',NULL),(1365,2,1705739184,'auth_ldap','field_lock_institution','unlocked',NULL),(1366,2,1705739184,'auth_ldap','field_map_department','',NULL),(1367,2,1705739184,'auth_ldap','field_updatelocal_department','oncreate',NULL),(1368,2,1705739184,'auth_ldap','field_updateremote_department','0',NULL),(1369,2,1705739184,'auth_ldap','field_lock_department','unlocked',NULL),(1370,2,1705739184,'auth_ldap','field_map_phone1','',NULL),(1371,2,1705739184,'auth_ldap','field_updatelocal_phone1','oncreate',NULL),(1372,2,1705739184,'auth_ldap','field_updateremote_phone1','0',NULL),(1373,2,1705739184,'auth_ldap','field_lock_phone1','unlocked',NULL),(1374,2,1705739184,'auth_ldap','field_map_phone2','',NULL),(1375,2,1705739184,'auth_ldap','field_updatelocal_phone2','oncreate',NULL),(1376,2,1705739184,'auth_ldap','field_updateremote_phone2','0',NULL),(1377,2,1705739184,'auth_ldap','field_lock_phone2','unlocked',NULL),(1378,2,1705739184,'auth_ldap','field_map_address','',NULL),(1379,2,1705739184,'auth_ldap','field_updatelocal_address','oncreate',NULL),(1380,2,1705739184,'auth_ldap','field_updateremote_address','0',NULL),(1381,2,1705739184,'auth_ldap','field_lock_address','unlocked',NULL),(1382,2,1705739184,'auth_ldap','field_map_firstnamephonetic','',NULL),(1383,2,1705739184,'auth_ldap','field_updatelocal_firstnamephonetic','oncreate',NULL),(1384,2,1705739184,'auth_ldap','field_updateremote_firstnamephonetic','0',NULL),(1385,2,1705739184,'auth_ldap','field_lock_firstnamephonetic','unlocked',NULL),(1386,2,1705739184,'auth_ldap','field_map_lastnamephonetic','',NULL),(1387,2,1705739184,'auth_ldap','field_updatelocal_lastnamephonetic','oncreate',NULL),(1388,2,1705739184,'auth_ldap','field_updateremote_lastnamephonetic','0',NULL),(1389,2,1705739184,'auth_ldap','field_lock_lastnamephonetic','unlocked',NULL),(1390,2,1705739184,'auth_ldap','field_map_middlename','',NULL),(1391,2,1705739184,'auth_ldap','field_updatelocal_middlename','oncreate',NULL),(1392,2,1705739184,'auth_ldap','field_updateremote_middlename','0',NULL),(1393,2,1705739184,'auth_ldap','field_lock_middlename','unlocked',NULL),(1394,2,1705739185,'auth_ldap','field_map_alternatename','',NULL),(1395,2,1705739185,'auth_ldap','field_updatelocal_alternatename','oncreate',NULL),(1396,2,1705739185,'auth_ldap','field_updateremote_alternatename','0',NULL),(1397,2,1705739185,'auth_ldap','field_lock_alternatename','unlocked',NULL),(1398,2,1705739185,'auth_manual','expiration','0',NULL),(1399,2,1705739185,'auth_manual','expirationtime','30',NULL),(1400,2,1705739185,'auth_manual','expiration_warning','0',NULL),(1401,2,1705739185,'auth_manual','field_lock_firstname','unlocked',NULL),(1402,2,1705739185,'auth_manual','field_lock_lastname','unlocked',NULL),(1403,2,1705739185,'auth_manual','field_lock_email','unlocked',NULL),(1404,2,1705739185,'auth_manual','field_lock_city','unlocked',NULL),(1405,2,1705739185,'auth_manual','field_lock_country','unlocked',NULL),(1406,2,1705739185,'auth_manual','field_lock_lang','unlocked',NULL),(1407,2,1705739185,'auth_manual','field_lock_description','unlocked',NULL),(1408,2,1705739185,'auth_manual','field_lock_idnumber','unlocked',NULL),(1409,2,1705739185,'auth_manual','field_lock_institution','unlocked',NULL),(1410,2,1705739185,'auth_manual','field_lock_department','unlocked',NULL),(1411,2,1705739185,'auth_manual','field_lock_phone1','unlocked',NULL),(1412,2,1705739185,'auth_manual','field_lock_phone2','unlocked',NULL),(1413,2,1705739185,'auth_manual','field_lock_address','unlocked',NULL),(1414,2,1705739185,'auth_manual','field_lock_firstnamephonetic','unlocked',NULL),(1415,2,1705739185,'auth_manual','field_lock_lastnamephonetic','unlocked',NULL),(1416,2,1705739185,'auth_manual','field_lock_middlename','unlocked',NULL),(1417,2,1705739185,'auth_manual','field_lock_alternatename','unlocked',NULL),(1418,2,1705739185,'auth_mnet','rpc_negotiation_timeout','30',NULL),(1419,2,1705739185,'auth_none','field_lock_firstname','unlocked',NULL),(1420,2,1705739185,'auth_none','field_lock_lastname','unlocked',NULL),(1421,2,1705739185,'auth_none','field_lock_email','unlocked',NULL),(1422,2,1705739185,'auth_none','field_lock_city','unlocked',NULL),(1423,2,1705739185,'auth_none','field_lock_country','unlocked',NULL),(1424,2,1705739185,'auth_none','field_lock_lang','unlocked',NULL),(1425,2,1705739185,'auth_none','field_lock_description','unlocked',NULL),(1426,2,1705739185,'auth_none','field_lock_idnumber','unlocked',NULL),(1427,2,1705739185,'auth_none','field_lock_institution','unlocked',NULL),(1428,2,1705739185,'auth_none','field_lock_department','unlocked',NULL),(1429,2,1705739185,'auth_none','field_lock_phone1','unlocked',NULL),(1430,2,1705739185,'auth_none','field_lock_phone2','unlocked',NULL),(1431,2,1705739185,'auth_none','field_lock_address','unlocked',NULL),(1432,2,1705739185,'auth_none','field_lock_firstnamephonetic','unlocked',NULL),(1433,2,1705739185,'auth_none','field_lock_lastnamephonetic','unlocked',NULL),(1434,2,1705739185,'auth_none','field_lock_middlename','unlocked',NULL),(1435,2,1705739185,'auth_none','field_lock_alternatename','unlocked',NULL),(1436,2,1705739185,'auth_oauth2','field_lock_firstname','unlocked',NULL),(1437,2,1705739185,'auth_oauth2','field_lock_lastname','unlocked',NULL),(1438,2,1705739186,'auth_oauth2','field_lock_email','unlocked',NULL),(1439,2,1705739186,'auth_oauth2','field_lock_city','unlocked',NULL),(1440,2,1705739186,'auth_oauth2','field_lock_country','unlocked',NULL),(1441,2,1705739186,'auth_oauth2','field_lock_lang','unlocked',NULL),(1442,2,1705739186,'auth_oauth2','field_lock_description','unlocked',NULL),(1443,2,1705739186,'auth_oauth2','field_lock_idnumber','unlocked',NULL),(1444,2,1705739186,'auth_oauth2','field_lock_institution','unlocked',NULL),(1445,2,1705739186,'auth_oauth2','field_lock_department','unlocked',NULL),(1446,2,1705739186,'auth_oauth2','field_lock_phone1','unlocked',NULL),(1447,2,1705739186,'auth_oauth2','field_lock_phone2','unlocked',NULL),(1448,2,1705739186,'auth_oauth2','field_lock_address','unlocked',NULL),(1449,2,1705739186,'auth_oauth2','field_lock_firstnamephonetic','unlocked',NULL),(1450,2,1705739186,'auth_oauth2','field_lock_lastnamephonetic','unlocked',NULL),(1451,2,1705739186,'auth_oauth2','field_lock_middlename','unlocked',NULL),(1452,2,1705739186,'auth_oauth2','field_lock_alternatename','unlocked',NULL),(1453,2,1705739186,'auth_shibboleth','user_attribute','',NULL),(1454,2,1705739186,'auth_shibboleth','convert_data','',NULL),(1455,2,1705739186,'auth_shibboleth','alt_login','off',NULL),(1456,2,1705739186,'auth_shibboleth','organization_selection','urn:mace:organization1:providerID, Example Organization 1\n        https://another.idp-id.com/shibboleth, Other Example Organization, /Shibboleth.sso/DS/SWITCHaai\n        urn:mace:organization2:providerID, Example Organization 2, /Shibboleth.sso/WAYF/SWITCHaai',NULL),(1457,2,1705739186,'auth_shibboleth','logout_handler','',NULL),(1458,2,1705739186,'auth_shibboleth','logout_return_url','',NULL),(1459,2,1705739186,'auth_shibboleth','login_name','Shibboleth Login',NULL),(1460,2,1705739186,'auth_shibboleth','auth_logo','',NULL),(1461,2,1705739186,'auth_shibboleth','auth_instructions','Use the <a href=\"http://127.0.0.1/auth/shibboleth/index.php\">Shibboleth login</a> to get access via Shibboleth, if your institution supports it. Otherwise, use the normal login form shown here.',NULL),(1462,2,1705739186,'auth_shibboleth','changepasswordurl','',NULL),(1463,2,1705739186,'auth_shibboleth','field_map_firstname','',NULL),(1464,2,1705739186,'auth_shibboleth','field_updatelocal_firstname','oncreate',NULL),(1465,2,1705739186,'auth_shibboleth','field_lock_firstname','unlocked',NULL),(1466,2,1705739186,'auth_shibboleth','field_map_lastname','',NULL),(1467,2,1705739186,'auth_shibboleth','field_updatelocal_lastname','oncreate',NULL),(1468,2,1705739186,'auth_shibboleth','field_lock_lastname','unlocked',NULL),(1469,2,1705739186,'auth_shibboleth','field_map_email','',NULL),(1470,2,1705739186,'auth_shibboleth','field_updatelocal_email','oncreate',NULL),(1471,2,1705739186,'auth_shibboleth','field_lock_email','unlocked',NULL),(1472,2,1705739186,'auth_shibboleth','field_map_city','',NULL),(1473,2,1705739186,'auth_shibboleth','field_updatelocal_city','oncreate',NULL),(1474,2,1705739186,'auth_shibboleth','field_lock_city','unlocked',NULL),(1475,2,1705739186,'auth_shibboleth','field_map_country','',NULL),(1476,2,1705739186,'auth_shibboleth','field_updatelocal_country','oncreate',NULL),(1477,2,1705739186,'auth_shibboleth','field_lock_country','unlocked',NULL),(1478,2,1705739186,'auth_shibboleth','field_map_lang','',NULL),(1479,2,1705739186,'auth_shibboleth','field_updatelocal_lang','oncreate',NULL),(1480,2,1705739186,'auth_shibboleth','field_lock_lang','unlocked',NULL),(1481,2,1705739186,'auth_shibboleth','field_map_description','',NULL),(1482,2,1705739187,'auth_shibboleth','field_updatelocal_description','oncreate',NULL),(1483,2,1705739187,'auth_shibboleth','field_lock_description','unlocked',NULL),(1484,2,1705739187,'auth_shibboleth','field_map_idnumber','',NULL),(1485,2,1705739187,'auth_shibboleth','field_updatelocal_idnumber','oncreate',NULL),(1486,2,1705739187,'auth_shibboleth','field_lock_idnumber','unlocked',NULL),(1487,2,1705739187,'auth_shibboleth','field_map_institution','',NULL),(1488,2,1705739187,'auth_shibboleth','field_updatelocal_institution','oncreate',NULL),(1489,2,1705739187,'auth_shibboleth','field_lock_institution','unlocked',NULL),(1490,2,1705739187,'auth_shibboleth','field_map_department','',NULL),(1491,2,1705739187,'auth_shibboleth','field_updatelocal_department','oncreate',NULL),(1492,2,1705739187,'auth_shibboleth','field_lock_department','unlocked',NULL),(1493,2,1705739187,'auth_shibboleth','field_map_phone1','',NULL),(1494,2,1705739187,'auth_shibboleth','field_updatelocal_phone1','oncreate',NULL),(1495,2,1705739187,'auth_shibboleth','field_lock_phone1','unlocked',NULL),(1496,2,1705739187,'auth_shibboleth','field_map_phone2','',NULL),(1497,2,1705739187,'auth_shibboleth','field_updatelocal_phone2','oncreate',NULL),(1498,2,1705739187,'auth_shibboleth','field_lock_phone2','unlocked',NULL),(1499,2,1705739187,'auth_shibboleth','field_map_address','',NULL),(1500,2,1705739187,'auth_shibboleth','field_updatelocal_address','oncreate',NULL),(1501,2,1705739187,'auth_shibboleth','field_lock_address','unlocked',NULL),(1502,2,1705739187,'auth_shibboleth','field_map_firstnamephonetic','',NULL),(1503,2,1705739187,'auth_shibboleth','field_updatelocal_firstnamephonetic','oncreate',NULL),(1504,2,1705739187,'auth_shibboleth','field_lock_firstnamephonetic','unlocked',NULL),(1505,2,1705739187,'auth_shibboleth','field_map_lastnamephonetic','',NULL),(1506,2,1705739187,'auth_shibboleth','field_updatelocal_lastnamephonetic','oncreate',NULL),(1507,2,1705739187,'auth_shibboleth','field_lock_lastnamephonetic','unlocked',NULL),(1508,2,1705739187,'auth_shibboleth','field_map_middlename','',NULL),(1509,2,1705739187,'auth_shibboleth','field_updatelocal_middlename','oncreate',NULL),(1510,2,1705739187,'auth_shibboleth','field_lock_middlename','unlocked',NULL),(1511,2,1705739187,'auth_shibboleth','field_map_alternatename','',NULL),(1512,2,1705739187,'auth_shibboleth','field_updatelocal_alternatename','oncreate',NULL),(1513,2,1705739187,'auth_shibboleth','field_lock_alternatename','unlocked',NULL),(1514,2,1705739187,'block_accessreview','whattoshow','showboth',NULL),(1515,2,1705739187,'block_accessreview','errordisplay','showint',NULL),(1516,2,1705739187,'block_accessreview','toolpage','errors',NULL),(1517,2,1705739187,'block_activity_results','config_showbest','3',NULL),(1518,2,1705739187,'block_activity_results','config_showbest_locked','',NULL),(1519,2,1705739188,'block_activity_results','config_showworst','0',NULL),(1520,2,1705739188,'block_activity_results','config_showworst_locked','',NULL),(1521,2,1705739188,'block_activity_results','config_usegroups','0',NULL),(1522,2,1705739188,'block_activity_results','config_usegroups_locked','',NULL),(1523,2,1705739188,'block_activity_results','config_nameformat','1',NULL),(1524,2,1705739188,'block_activity_results','config_nameformat_locked','',NULL),(1525,2,1705739188,'block_activity_results','config_gradeformat','1',NULL),(1526,2,1705739188,'block_activity_results','config_gradeformat_locked','',NULL),(1527,2,1705739188,'block_activity_results','config_decimalpoints','2',NULL),(1528,2,1705739188,'block_activity_results','config_decimalpoints_locked','',NULL),(1529,2,1705739188,'block_myoverview','displaycategories','1',NULL),(1530,2,1705739188,'block_myoverview','layouts','card,list,summary',NULL),(1531,2,1705739188,'block_myoverview','displaygroupingallincludinghidden','0',NULL),(1532,2,1705739188,'block_myoverview','displaygroupingall','1',NULL),(1533,2,1705739188,'block_myoverview','displaygroupinginprogress','1',NULL),(1534,2,1705739188,'block_myoverview','displaygroupingpast','1',NULL),(1535,2,1705739188,'block_myoverview','displaygroupingfuture','1',NULL),(1536,2,1705739188,'block_myoverview','displaygroupingcustomfield','0',NULL),(1537,2,1705739188,'block_myoverview','customfiltergrouping','',NULL),(1538,2,1705739188,'block_myoverview','displaygroupingfavourites','1',NULL),(1539,2,1705739188,'block_myoverview','displaygroupinghidden','1',NULL),(1540,2,1705739188,NULL,'block_course_list_adminview','all',NULL),(1541,2,1705739188,NULL,'block_course_list_hideallcourseslink','0',NULL),(1542,2,1705739188,NULL,'block_online_users_timetosee','5',NULL),(1543,2,1705739188,NULL,'block_online_users_onlinestatushiding','1',NULL),(1544,2,1705739188,'block_recentlyaccessedcourses','displaycategories','1',NULL),(1545,2,1705739188,NULL,'block_rss_client_num_entries','5',NULL),(1546,2,1705739188,NULL,'block_rss_client_timeout','30',NULL),(1547,2,1705739188,'block_section_links','numsections1','22',NULL),(1548,2,1705739188,'block_section_links','incby1','2',NULL),(1549,2,1705739188,'block_section_links','numsections2','40',NULL),(1550,2,1705739188,'block_section_links','incby2','5',NULL),(1551,2,1705739188,'block_section_links','showsectionname','0',NULL),(1552,2,1705739188,'block_starredcourses','displaycategories','1',NULL),(1553,2,1705739188,NULL,'block_html_allowcssclasses','0',NULL),(1554,2,1705739188,'block_tag_youtube','apikey','',NULL),(1555,2,1705739188,'format_singleactivity','activitytype','forum',NULL),(1556,2,1705739188,'format_topics','indentation','1',NULL),(1557,2,1705739188,'format_weeks','indentation','1',NULL),(1558,2,1705739188,'fileconverter_googledrive','issuerid','',NULL),(1559,2,1705739189,NULL,'pathtounoconv','/usr/bin/unoconv',NULL),(1560,2,1705739189,'enrol_cohort','roleid','5',NULL),(1561,2,1705739189,'enrol_cohort','unenrolaction','0',NULL),(1562,2,1705739189,'enrol_meta','nosyncroleids','',NULL),(1563,2,1705739189,'enrol_meta','syncall','1',NULL),(1564,2,1705739189,'enrol_meta','unenrolaction','3',NULL),(1565,2,1705739189,'enrol_meta','coursesort','sortorder',NULL),(1566,2,1705739189,'enrol_fee','expiredaction','3',NULL),(1567,2,1705739189,'enrol_fee','status','1',NULL),(1568,2,1705739189,'enrol_fee','cost','0',NULL),(1569,2,1705739189,'enrol_fee','currency','USD',NULL),(1570,2,1705739189,'enrol_fee','roleid','5',NULL),(1571,2,1705739189,'enrol_fee','enrolperiod','0',NULL),(1572,2,1705739189,'enrol_database','dbtype','',NULL),(1573,2,1705739189,'enrol_database','dbhost','localhost',NULL),(1574,2,1705739189,'enrol_database','dbuser','',NULL),(1575,2,1705739189,'enrol_database','dbpass','',NULL),(1576,2,1705739189,'enrol_database','dbname','',NULL),(1577,2,1705739189,'enrol_database','dbencoding','utf-8',NULL),(1578,2,1705739189,'enrol_database','dbsetupsql','',NULL),(1579,2,1705739189,'enrol_database','dbsybasequoting','0',NULL),(1580,2,1705739189,'enrol_database','debugdb','0',NULL),(1581,2,1705739189,'enrol_database','localcoursefield','idnumber',NULL),(1582,2,1705739189,'enrol_database','localuserfield','idnumber',NULL),(1583,2,1705739189,'enrol_database','localrolefield','shortname',NULL),(1584,2,1705739189,'enrol_database','localcategoryfield','id',NULL),(1585,2,1705739189,'enrol_database','remoteenroltable','',NULL),(1586,2,1705739189,'enrol_database','remotecoursefield','',NULL),(1587,2,1705739189,'enrol_database','remoteuserfield','',NULL),(1588,2,1705739189,'enrol_database','remoterolefield','',NULL),(1589,2,1705739189,'enrol_database','remoteotheruserfield','',NULL),(1590,2,1705739189,'enrol_database','defaultrole','5',NULL),(1591,2,1705739189,'enrol_database','ignorehiddencourses','0',NULL),(1592,2,1705739189,'enrol_database','unenrolaction','0',NULL),(1593,2,1705739189,'enrol_database','newcoursetable','',NULL),(1594,2,1705739189,'enrol_database','newcoursefullname','fullname',NULL),(1595,2,1705739189,'enrol_database','newcourseshortname','shortname',NULL),(1596,2,1705739189,'enrol_database','newcourseidnumber','idnumber',NULL),(1597,2,1705739189,'enrol_database','newcoursecategory','',NULL),(1598,2,1705739189,'enrol_database','defaultcategory','1',NULL),(1599,2,1705739189,'enrol_database','templatecourse','',NULL),(1600,2,1705739189,'enrol_flatfile','location','',NULL),(1601,2,1705739190,'enrol_flatfile','encoding','UTF-8',NULL),(1602,2,1705739190,'enrol_flatfile','mailstudents','0',NULL),(1603,2,1705739190,'enrol_flatfile','mailteachers','0',NULL),(1604,2,1705739190,'enrol_flatfile','mailadmins','0',NULL),(1605,2,1705739190,'enrol_flatfile','unenrolaction','3',NULL),(1606,2,1705739190,'enrol_flatfile','expiredaction','3',NULL),(1607,2,1705739190,'enrol_guest','requirepassword','0',NULL),(1608,2,1705739190,'enrol_guest','usepasswordpolicy','0',NULL),(1609,2,1705739190,'enrol_guest','showhint','0',NULL),(1610,2,1705739190,'enrol_guest','defaultenrol','1',NULL),(1611,2,1705739190,'enrol_guest','status','1',NULL),(1612,2,1705739190,'enrol_guest','status_adv','',NULL),(1613,2,1705739190,'enrol_imsenterprise','imsfilelocation','',NULL),(1614,2,1705739190,'enrol_imsenterprise','logtolocation','',NULL),(1615,2,1705739190,'enrol_imsenterprise','mailadmins','0',NULL),(1616,2,1705739190,'enrol_imsenterprise','createnewusers','0',NULL),(1617,2,1705739190,'enrol_imsenterprise','imsupdateusers','0',NULL),(1618,2,1705739190,'enrol_imsenterprise','imsdeleteusers','0',NULL),(1619,2,1705739190,'enrol_imsenterprise','fixcaseusernames','0',NULL),(1620,2,1705739190,'enrol_imsenterprise','fixcasepersonalnames','0',NULL),(1621,2,1705739190,'enrol_imsenterprise','imssourcedidfallback','0',NULL),(1622,2,1705739190,'enrol_imsenterprise','imsrolemap01','5',NULL),(1623,2,1705739190,'enrol_imsenterprise','imsrolemap02','3',NULL),(1624,2,1705739190,'enrol_imsenterprise','imsrolemap03','3',NULL),(1625,2,1705739190,'enrol_imsenterprise','imsrolemap04','5',NULL),(1626,2,1705739190,'enrol_imsenterprise','imsrolemap05','0',NULL),(1627,2,1705739190,'enrol_imsenterprise','imsrolemap06','4',NULL),(1628,2,1705739190,'enrol_imsenterprise','imsrolemap07','0',NULL),(1629,2,1705739190,'enrol_imsenterprise','imsrolemap08','4',NULL),(1630,2,1705739190,'enrol_imsenterprise','truncatecoursecodes','0',NULL),(1631,2,1705739190,'enrol_imsenterprise','createnewcourses','0',NULL),(1632,2,1705739190,'enrol_imsenterprise','updatecourses','0',NULL),(1633,2,1705739190,'enrol_imsenterprise','createnewcategories','0',NULL),(1634,2,1705739190,'enrol_imsenterprise','nestedcategories','0',NULL),(1635,2,1705739190,'enrol_imsenterprise','categoryidnumber','0',NULL),(1636,2,1705739190,'enrol_imsenterprise','categoryseparator','',NULL),(1637,2,1705739190,'enrol_imsenterprise','imsunenrol','0',NULL),(1638,2,1705739191,'enrol_imsenterprise','unenrolaction','0',NULL),(1639,2,1705739191,'enrol_imsenterprise','imscoursemapshortname','coursecode',NULL),(1640,2,1705739191,'enrol_imsenterprise','imscoursemapfullname','short',NULL),(1641,2,1705739191,'enrol_imsenterprise','imscoursemapsummary','ignore',NULL),(1642,2,1705739191,'enrol_imsenterprise','imsrestricttarget','',NULL),(1643,2,1705739191,'enrol_imsenterprise','imscapitafix','0',NULL),(1644,2,1705739191,'enrol_ldap','host_url','',NULL),(1645,2,1705739191,'enrol_ldap','start_tls','0',NULL),(1646,2,1705739191,'enrol_ldap','ldap_version','3',NULL),(1647,2,1705739191,'enrol_ldap','ldapencoding','utf-8',NULL),(1648,2,1705739191,'enrol_ldap','pagesize','250',NULL),(1649,2,1705739191,'enrol_ldap','bind_dn','',NULL),(1650,2,1705739191,'enrol_ldap','bind_pw','',NULL),(1651,2,1705739191,'enrol_ldap','course_search_sub','0',NULL),(1652,2,1705739191,'enrol_ldap','memberattribute_isdn','0',NULL),(1653,2,1705739191,'enrol_ldap','user_contexts','',NULL),(1654,2,1705739191,'enrol_ldap','user_search_sub','0',NULL),(1655,2,1705739191,'enrol_ldap','user_type','default',NULL),(1656,2,1705739191,'enrol_ldap','opt_deref','0',NULL),(1657,2,1705739191,'enrol_ldap','idnumber_attribute','',NULL),(1658,2,1705739191,'enrol_ldap','objectclass','',NULL),(1659,2,1705739191,'enrol_ldap','course_idnumber','',NULL),(1660,2,1705739191,'enrol_ldap','course_shortname','',NULL),(1661,2,1705739191,'enrol_ldap','course_fullname','',NULL),(1662,2,1705739191,'enrol_ldap','course_summary','',NULL),(1663,2,1705739191,'enrol_ldap','ignorehiddencourses','0',NULL),(1664,2,1705739191,'enrol_ldap','unenrolaction','0',NULL),(1665,2,1705739191,'enrol_ldap','autocreate','0',NULL),(1666,2,1705739191,'enrol_ldap','category','1',NULL),(1667,2,1705739191,'enrol_ldap','template','',NULL),(1668,2,1705739191,'enrol_ldap','course_shortname_updateonsync','0',NULL),(1669,2,1705739191,'enrol_ldap','course_fullname_updateonsync','0',NULL),(1670,2,1705739191,'enrol_ldap','course_summary_updateonsync','0',NULL),(1671,2,1705739191,'enrol_ldap','nested_groups','0',NULL),(1672,2,1705739191,'enrol_ldap','group_memberofattribute','',NULL),(1673,2,1705739191,'enrol_manual','expiredaction','1',NULL),(1674,2,1705739191,'enrol_manual','expirynotifyhour','6',NULL),(1675,2,1705739191,'enrol_manual','defaultenrol','1',NULL),(1676,2,1705739191,'enrol_manual','status','0',NULL),(1677,2,1705739191,'enrol_manual','roleid','5',NULL),(1678,2,1705739191,'enrol_manual','enrolstart','4',NULL),(1679,2,1705739191,'enrol_manual','enrolperiod','0',NULL),(1680,2,1705739192,'enrol_manual','expirynotify','0',NULL),(1681,2,1705739192,'enrol_manual','expirythreshold','86400',NULL),(1682,2,1705739192,'enrol_mnet','roleid','5',NULL),(1683,2,1705739192,'enrol_mnet','roleid_adv','1',NULL),(1684,2,1705739192,'enrol_paypal','paypalbusiness','',NULL),(1685,2,1705739192,'enrol_paypal','mailstudents','0',NULL),(1686,2,1705739192,'enrol_paypal','mailteachers','0',NULL),(1687,2,1705739192,'enrol_paypal','mailadmins','0',NULL),(1688,2,1705739192,'enrol_paypal','expiredaction','3',NULL),(1689,2,1705739192,'enrol_paypal','status','1',NULL),(1690,2,1705739192,'enrol_paypal','cost','0',NULL),(1691,2,1705739192,'enrol_paypal','currency','USD',NULL),(1692,2,1705739192,'enrol_paypal','roleid','5',NULL),(1693,2,1705739192,'enrol_paypal','enrolperiod','0',NULL),(1694,2,1705739192,'enrol_lti','emaildisplay','2',NULL),(1695,2,1705739192,'enrol_lti','city','',NULL),(1696,2,1705739192,'enrol_lti','country','',NULL),(1697,2,1705739192,'enrol_lti','timezone','99',NULL),(1698,2,1705739192,'enrol_lti','lang','en',NULL),(1699,2,1705739192,'enrol_lti','institution','',NULL),(1700,2,1705739192,'enrol_self','requirepassword','0',NULL),(1701,2,1705739192,'enrol_self','usepasswordpolicy','0',NULL),(1702,2,1705739192,'enrol_self','showhint','0',NULL),(1703,2,1705739192,'enrol_self','expiredaction','1',NULL),(1704,2,1705739192,'enrol_self','expirynotifyhour','6',NULL),(1705,2,1705739192,'enrol_self','defaultenrol','1',NULL),(1706,2,1705739192,'enrol_self','status','1',NULL),(1707,2,1705739192,'enrol_self','newenrols','1',NULL),(1708,2,1705739192,'enrol_self','groupkey','0',NULL),(1709,2,1705739192,'enrol_self','roleid','5',NULL),(1710,2,1705739192,'enrol_self','enrolperiod','0',NULL),(1711,2,1705739192,'enrol_self','expirynotify','0',NULL),(1712,2,1705739192,'enrol_self','expirythreshold','86400',NULL),(1713,2,1705739192,'enrol_self','longtimenosee','0',NULL),(1714,2,1705739192,'enrol_self','maxenrolled','0',NULL),(1715,2,1705739192,'enrol_self','sendcoursewelcomemessage','1',NULL),(1716,2,1705739192,'filter_urltolink','formats','1,4,0',NULL),(1717,2,1705739192,'filter_urltolink','embedimages','1',NULL),(1718,2,1705739192,'filter_emoticon','formats','1,4,0',NULL),(1719,2,1705739192,'filter_displayh5p','allowedsources','',NULL),(1720,2,1705739192,'filter_mathjaxloader','httpsurl','https://cdn.jsdelivr.net/npm/mathjax@2.7.9/MathJax.js',NULL),(1721,2,1705739192,'filter_mathjaxloader','texfiltercompatibility','0',NULL),(1722,2,1705739192,'filter_mathjaxloader','mathjaxconfig','\nMathJax.Hub.Config({\n    config: [\"Accessible.js\", \"Safe.js\"],\n    errorSettings: { message: [\"!\"] },\n    skipStartupTypeset: true,\n    messageStyle: \"none\"\n});\n',NULL),(1723,2,1705739193,'filter_mathjaxloader','additionaldelimiters','',NULL),(1724,2,1705739193,NULL,'filter_multilang_force_old','0',NULL),(1725,2,1705739193,'filter_tex','latexpreamble','\\usepackage[latin1]{inputenc}\n\\usepackage{amsmath}\n\\usepackage{amsfonts}\n\\RequirePackage{amsmath,amssymb,latexsym}\n',NULL),(1726,2,1705739193,'filter_tex','latexbackground','#FFFFFF',NULL),(1727,2,1705739193,'filter_tex','density','120',NULL),(1728,2,1705739193,'filter_tex','pathlatex','c:\\texmf\\miktex\\bin\\latex.exe',NULL),(1729,2,1705739193,'filter_tex','pathdvips','c:\\texmf\\miktex\\bin\\dvips.exe',NULL),(1730,2,1705739193,'filter_tex','pathconvert','c:\\imagemagick\\convert.exe',NULL),(1731,2,1705739193,'filter_tex','pathdvisvgm','c:\\texmf\\miktex\\bin\\dvisvgm.exe',NULL),(1732,2,1705739193,'filter_tex','pathmimetex','',NULL),(1733,2,1705739193,'filter_tex','convertformat','gif',NULL),(1734,2,1705739193,'local_adminer','startwithdb','0',NULL),(1735,2,1705739193,'logstore_database','dbdriver','',NULL),(1736,2,1705739193,'logstore_database','dbhost','',NULL),(1737,2,1705739193,'logstore_database','dbuser','',NULL),(1738,2,1705739193,'logstore_database','dbpass','',NULL),(1739,2,1705739193,'logstore_database','dbname','',NULL),(1740,2,1705739193,'logstore_database','dbtable','',NULL),(1741,2,1705739193,'logstore_database','dbpersist','0',NULL),(1742,2,1705739193,'logstore_database','dbsocket','',NULL),(1743,2,1705739193,'logstore_database','dbport','',NULL),(1744,2,1705739193,'logstore_database','dbschema','',NULL),(1745,2,1705739193,'logstore_database','dbcollation','',NULL),(1746,2,1705739193,'logstore_database','dbhandlesoptions','0',NULL),(1747,2,1705739193,'logstore_database','buffersize','50',NULL),(1748,2,1705739193,'logstore_database','jsonformat','1',NULL),(1749,2,1705739193,'logstore_database','logguests','0',NULL),(1750,2,1705739193,'logstore_database','includelevels','1,2,0',NULL),(1751,2,1705739193,'logstore_database','includeactions','c,r,u,d',NULL),(1752,2,1705739193,'logstore_standard','logguests','1',NULL),(1753,2,1705739193,'logstore_standard','jsonformat','1',NULL),(1754,2,1705739193,'logstore_standard','loglifetime','0',NULL),(1755,2,1705739193,'logstore_standard','buffersize','50',NULL),(1756,2,1705739193,'mlbackend_python','useserver','0',NULL),(1757,2,1705739193,'mlbackend_python','host','',NULL),(1758,2,1705739193,'mlbackend_python','port','0',NULL),(1759,2,1705739193,'mlbackend_python','secure','0',NULL),(1760,2,1705739193,'mlbackend_python','username','default',NULL),(1761,2,1705739193,'mlbackend_python','password','',NULL),(1762,2,1705739193,'media_videojs','videoextensions','html_video,media_source,.f4v,.flv',NULL),(1763,2,1705739193,'media_videojs','audioextensions','html_audio',NULL),(1764,2,1705739193,'media_videojs','youtube','1',NULL),(1765,2,1705739194,'media_videojs','videocssclass','video-js',NULL),(1766,2,1705739194,'media_videojs','audiocssclass','video-js',NULL),(1767,2,1705739194,'media_videojs','limitsize','1',NULL),(1768,2,1705739194,'paygw_paypal','surcharge','0',NULL),(1769,2,1705739194,'qtype_multichoice','answerhowmany','1',NULL),(1770,2,1705739194,'qtype_multichoice','shuffleanswers','1',NULL),(1771,2,1705739194,'qtype_multichoice','answernumbering','abc',NULL),(1772,2,1705739194,'qtype_multichoice','showstandardinstruction','0',NULL),(1773,2,1705739194,'editor_atto','toolbar','collapse = collapse\nstyle1 = title, bold, italic\nlist = unorderedlist, orderedlist, indent\nlinks = link\nfiles = emojipicker, image, media, recordrtc, managefiles, h5p\naccessibility = accessibilitychecker, accessibilityhelper\nstyle2 = underline, strike, subscript, superscript\nalign = align\ninsert = equation, charmap, table, clear\nundo = undo\nother = html',NULL),(1774,2,1705739194,'editor_atto','autosavefrequency','60',NULL),(1775,2,1705739194,'atto_collapse','showgroups','6',NULL),(1776,2,1705739194,'atto_equation','librarygroup1','\n\\cdot\n\\times\n\\ast\n\\div\n\\diamond\n\\pm\n\\mp\n\\oplus\n\\ominus\n\\otimes\n\\oslash\n\\odot\n\\circ\n\\bullet\n\\asymp\n\\equiv\n\\subseteq\n\\supseteq\n\\leq\n\\geq\n\\preceq\n\\succeq\n\\sim\n\\simeq\n\\approx\n\\subset\n\\supset\n\\ll\n\\gg\n\\prec\n\\succ\n\\infty\n\\in\n\\ni\n\\forall\n\\exists\n\\neq\n',NULL),(1777,2,1705739194,'atto_equation','librarygroup2','\n\\leftarrow\n\\rightarrow\n\\uparrow\n\\downarrow\n\\leftrightarrow\n\\nearrow\n\\searrow\n\\swarrow\n\\nwarrow\n\\Leftarrow\n\\Rightarrow\n\\Uparrow\n\\Downarrow\n\\Leftrightarrow\n',NULL),(1778,2,1705739194,'atto_equation','librarygroup3','\n\\alpha\n\\beta\n\\gamma\n\\delta\n\\epsilon\n\\zeta\n\\eta\n\\theta\n\\iota\n\\kappa\n\\lambda\n\\mu\n\\nu\n\\xi\n\\pi\n\\rho\n\\sigma\n\\tau\n\\upsilon\n\\phi\n\\chi\n\\psi\n\\omega\n\\Gamma\n\\Delta\n\\Theta\n\\Lambda\n\\Xi\n\\Pi\n\\Sigma\n\\Upsilon\n\\Phi\n\\Psi\n\\Omega\n',NULL),(1779,2,1705739194,'atto_equation','librarygroup4','\n\\sum{a,b}\n\\sqrt[a]{b+c}\n\\int_{a}^{b}{c}\n\\iint_{a}^{b}{c}\n\\iiint_{a}^{b}{c}\n\\oint{a}\n(a)\n[a]\n\\lbrace{a}\\rbrace\n\\left| \\begin{matrix} a_1 & a_2 \\\\ a_3 & a_4 \\end{matrix} \\right|\n\\frac{a}{b+c}\n\\vec{a}\n\\binom {a} {b}\n{a \\brack b}\n{a \\brace b}\n',NULL),(1780,2,1705739194,'atto_recordrtc','allowedtypes','both',NULL),(1781,2,1705739194,'atto_recordrtc','audiobitrate','128000',NULL),(1782,2,1705739194,'atto_recordrtc','videobitrate','2500000',NULL),(1783,2,1705739194,'atto_recordrtc','audiotimelimit','120',NULL),(1784,2,1705739194,'atto_recordrtc','videotimelimit','120',NULL),(1785,2,1705739194,'atto_table','allowborders','0',NULL),(1786,2,1705739194,'atto_table','allowbackgroundcolour','0',NULL),(1787,2,1705739194,'atto_table','allowwidth','0',NULL),(1788,2,1705739194,'editor_tiny','branding','1',NULL),(1789,2,1705739194,'tiny_equation','librarygroup1','\n\\cdot\n\\times\n\\ast\n\\div\n\\diamond\n\\pm\n\\mp\n\\oplus\n\\ominus\n\\otimes\n\\oslash\n\\odot\n\\circ\n\\bullet\n\\asymp\n\\equiv\n\\subseteq\n\\supseteq\n\\leq\n\\geq\n\\preceq\n\\succeq\n\\sim\n\\simeq\n\\approx\n\\subset\n\\supset\n\\ll\n\\gg\n\\prec\n\\succ\n\\infty\n\\in\n\\ni\n\\forall\n\\exists\n\\neq\n',NULL),(1790,2,1705739194,'tiny_equation','librarygroup2','\n\\leftarrow\n\\rightarrow\n\\uparrow\n\\downarrow\n\\leftrightarrow\n\\nearrow\n\\searrow\n\\swarrow\n\\nwarrow\n\\Leftarrow\n\\Rightarrow\n\\Uparrow\n\\Downarrow\n\\Leftrightarrow\n',NULL),(1791,2,1705739194,'tiny_equation','librarygroup3','\n\\alpha\n\\beta\n\\gamma\n\\delta\n\\epsilon\n\\zeta\n\\eta\n\\theta\n\\iota\n\\kappa\n\\lambda\n\\mu\n\\nu\n\\xi\n\\pi\n\\rho\n\\sigma\n\\tau\n\\upsilon\n\\phi\n\\chi\n\\psi\n\\omega\n\\Gamma\n\\Delta\n\\Theta\n\\Lambda\n\\Xi\n\\Pi\n\\Sigma\n\\Upsilon\n\\Phi\n\\Psi\n\\Omega\n',NULL),(1792,2,1705739194,'tiny_equation','librarygroup4','\n\\sum{a,b}\n\\sqrt[a]{b+c}\n\\int_{a}^{b}{c}\n\\iint_{a}^{b}{c}\n\\iiint_{a}^{b}{c}\n\\oint{a}\n(a)\n[a]\n\\lbrace{a}\\rbrace\n\\left| \\begin{matrix} a_1 & a_2 \\\\ a_3 & a_4 \\end{matrix} \\right|\n\\frac{a}{b+c}\n\\vec{a}\n\\binom {a} {b}\n{a \\brack b}\n{a \\brace b}\n',NULL),(1793,2,1705739194,'tiny_recordrtc','allowedtypes','both',NULL),(1794,2,1705739194,'tiny_recordrtc','audiobitrate','128000',NULL),(1795,2,1705739194,'tiny_recordrtc','videobitrate','2500000',NULL),(1796,2,1705739194,'tiny_recordrtc','audiotimelimit','120',NULL),(1797,2,1705739194,'tiny_recordrtc','videotimelimit','120',NULL),(1798,2,1705739194,NULL,'profileroles','5,4,3',NULL),(1799,2,1705739194,NULL,'coursecontact','3',NULL),(1800,2,1705739194,NULL,'frontpage','6',NULL),(1801,2,1705739194,NULL,'frontpageloggedin','6',NULL),(1802,2,1705739194,NULL,'maxcategorydepth','2',NULL),(1803,2,1705739194,NULL,'frontpagecourselimit','200',NULL),(1804,2,1705739194,NULL,'commentsperpage','15',NULL),(1805,2,1705739195,NULL,'defaultfrontpageroleid','8',NULL),(1806,2,1705739195,NULL,'messageinbound_enabled','0',NULL),(1807,2,1705739195,NULL,'messageinbound_mailbox','',NULL),(1808,2,1705739195,NULL,'messageinbound_domain','',NULL),(1809,2,1705739195,NULL,'messageinbound_host','',NULL),(1810,2,1705739195,NULL,'messageinbound_hostssl','ssl',NULL),(1811,2,1705739195,NULL,'messageinbound_hostuser','',NULL),(1812,2,1705739195,NULL,'messageinbound_hostpass','',NULL),(1813,2,1705739195,'tool_mobile','apppolicy','',NULL),(1814,2,1705739195,'tool_mobile','typeoflogin','1',NULL),(1815,2,1705739195,'tool_mobile','qrcodetype','1',NULL),(1816,2,1705739195,'tool_mobile','qrkeyttl','600',NULL),(1817,2,1705739195,'tool_mobile','qrsameipcheck','1',NULL),(1818,2,1705739195,'tool_mobile','forcedurlscheme','moodlemobile',NULL),(1819,2,1705739195,'tool_mobile','minimumversion','',NULL),(1820,2,1705739195,'tool_mobile','autologinmintimebetweenreq','360',NULL),(1821,2,1705739195,NULL,'mobilecssurl','',NULL),(1822,2,1705739195,'tool_mobile','enablesmartappbanners','0',NULL),(1823,2,1705739195,'tool_mobile','iosappid','633359593',NULL),(1824,2,1705739195,'tool_mobile','androidappid','com.moodle.moodlemobile',NULL),(1825,2,1705739195,'tool_mobile','setuplink','https://download.moodle.org/mobile',NULL),(1826,2,1705739195,'tool_mobile','forcelogout','0',NULL),(1827,2,1705739195,'tool_mobile','disabledfeatures','',NULL),(1828,2,1705739195,'tool_mobile','custommenuitems','',NULL),(1829,2,1705739195,'tool_mobile','filetypeexclusionlist','',NULL),(1830,2,1705739195,'tool_mobile','customlangstrings','',NULL),(1831,2,1705739196,NULL,'enablemobilewebservice','0',NULL),(1832,2,1705739198,'tool_moodlenet','defaultmoodlenetname','MoodleNet Central',NULL),(1833,2,1705739198,'tool_moodlenet','defaultmoodlenet','https://moodle.net',NULL),(1834,2,1705739328,NULL,'timezone','America/Bogota',NULL),(1835,2,1705739328,NULL,'registerauth','',NULL),(1836,2,1705739328,NULL,'noreplyaddress','yoselin.serna@correounivalle.edu.co',NULL),(1837,2,1705739339,NULL,'supportemail','yoselin.serna@correounivalle.edu.co',NULL);
/*!40000 ALTER TABLE `mdl_config_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_config_plugins`
--

DROP TABLE IF EXISTS `mdl_config_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_config_plugins` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `plugin` varchar(100) NOT NULL DEFAULT 'core',
  `name` varchar(100) NOT NULL DEFAULT '',
  `value` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_confplug_plunam_uix` (`plugin`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2010 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Moodle modules and plugins configuration variables';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_config_plugins`
--

LOCK TABLES `mdl_config_plugins` WRITE;
/*!40000 ALTER TABLE `mdl_config_plugins` DISABLE KEYS */;
INSERT INTO `mdl_config_plugins` VALUES (1,'question','multichoice_sortorder','1'),(2,'question','truefalse_sortorder','2'),(3,'question','match_sortorder','3'),(4,'question','shortanswer_sortorder','4'),(5,'question','numerical_sortorder','5'),(6,'question','essay_sortorder','6'),(7,'core_competency','enabled','1'),(8,'moodlecourse','visible','1'),(9,'moodlecourse','downloadcontentsitedefault','0'),(10,'moodlecourse','participantsperpage','20'),(11,'moodlecourse','format','topics'),(12,'moodlecourse','maxsections','52'),(13,'moodlecourse','numsections','4'),(14,'moodlecourse','hiddensections','1'),(15,'moodlecourse','coursedisplay','0'),(16,'moodlecourse','courseenddateenabled','1'),(17,'moodlecourse','courseduration','31536000'),(18,'moodlecourse','lang',''),(19,'moodlecourse','newsitems','5'),(20,'moodlecourse','showgrades','1'),(21,'moodlecourse','showreports','0'),(22,'moodlecourse','showactivitydates','1'),(23,'moodlecourse','maxbytes','0'),(24,'moodlecourse','enablecompletion','1'),(25,'moodlecourse','showcompletionconditions','1'),(26,'moodlecourse','groupmode','0'),(27,'moodlecourse','groupmodeforce','0'),(28,'backup','loglifetime','30'),(29,'backup','backup_general_users','1'),(30,'backup','backup_general_users_locked',''),(31,'backup','backup_general_anonymize','0'),(32,'backup','backup_general_anonymize_locked',''),(33,'backup','backup_general_role_assignments','1'),(34,'backup','backup_general_role_assignments_locked',''),(35,'backup','backup_general_activities','1'),(36,'backup','backup_general_activities_locked',''),(37,'backup','backup_general_blocks','1'),(38,'backup','backup_general_blocks_locked',''),(39,'backup','backup_general_files','1'),(40,'backup','backup_general_files_locked',''),(41,'backup','backup_general_filters','1'),(42,'backup','backup_general_filters_locked',''),(43,'backup','backup_general_comments','1'),(44,'backup','backup_general_comments_locked',''),(45,'backup','backup_general_badges','1'),(46,'backup','backup_general_badges_locked',''),(47,'backup','backup_general_calendarevents','1'),(48,'backup','backup_general_calendarevents_locked',''),(49,'backup','backup_general_userscompletion','1'),(50,'backup','backup_general_userscompletion_locked',''),(51,'backup','backup_general_logs','0'),(52,'backup','backup_general_logs_locked',''),(53,'backup','backup_general_histories','0'),(54,'backup','backup_general_histories_locked',''),(55,'backup','backup_general_questionbank','1'),(56,'backup','backup_general_questionbank_locked',''),(57,'backup','backup_general_groups','1'),(58,'backup','backup_general_groups_locked',''),(59,'backup','backup_general_competencies','1'),(60,'backup','backup_general_competencies_locked',''),(61,'backup','backup_general_contentbankcontent','1'),(62,'backup','backup_general_contentbankcontent_locked',''),(63,'backup','backup_general_xapistate','1'),(64,'backup','backup_general_xapistate_locked',''),(65,'backup','backup_general_legacyfiles','1'),(66,'backup','backup_general_legacyfiles_locked',''),(67,'backup','import_general_maxresults','10'),(68,'backup','import_general_duplicate_admin_allowed','0'),(69,'backup','backup_import_permissions','0'),(70,'backup','backup_import_permissions_locked',''),(71,'backup','backup_import_activities','1'),(72,'backup','backup_import_activities_locked',''),(73,'backup','backup_import_blocks','1'),(74,'backup','backup_import_blocks_locked',''),(75,'backup','backup_import_filters','1'),(76,'backup','backup_import_filters_locked',''),(77,'backup','backup_import_calendarevents','1'),(78,'backup','backup_import_calendarevents_locked',''),(79,'backup','backup_import_questionbank','1'),(80,'backup','backup_import_questionbank_locked',''),(81,'backup','backup_import_groups','1'),(82,'backup','backup_import_groups_locked',''),(83,'backup','backup_import_competencies','1'),(84,'backup','backup_import_competencies_locked',''),(85,'backup','backup_import_contentbankcontent','1'),(86,'backup','backup_import_contentbankcontent_locked',''),(87,'backup','backup_import_legacyfiles','1'),(88,'backup','backup_import_legacyfiles_locked',''),(89,'backup','backup_auto_active','0'),(90,'backup','backup_auto_weekdays','0000000'),(91,'backup','backup_auto_hour','0'),(92,'backup','backup_auto_minute','0'),(93,'backup','backup_auto_storage','0'),(94,'backup','backup_auto_destination',''),(95,'backup','backup_auto_max_kept','1'),(96,'backup','backup_auto_delete_days','0'),(97,'backup','backup_auto_min_kept','0'),(98,'backup','backup_shortname','0'),(99,'backup','backup_auto_skip_hidden','1'),(100,'backup','backup_auto_skip_modif_days','30'),(101,'backup','backup_auto_skip_modif_prev','0'),(102,'backup','backup_auto_users','1'),(103,'backup','backup_auto_role_assignments','1'),(104,'backup','backup_auto_activities','1'),(105,'backup','backup_auto_blocks','1'),(106,'backup','backup_auto_files','1'),(107,'backup','backup_auto_filters','1'),(108,'backup','backup_auto_comments','1'),(109,'backup','backup_auto_badges','1'),(110,'backup','backup_auto_calendarevents','1'),(111,'backup','backup_auto_userscompletion','1'),(112,'backup','backup_auto_logs','0'),(113,'backup','backup_auto_histories','0'),(114,'backup','backup_auto_questionbank','1'),(115,'backup','backup_auto_groups','1'),(116,'backup','backup_auto_competencies','1'),(117,'backup','backup_auto_contentbankcontent','1'),(118,'backup','backup_auto_xapistate','1'),(119,'backup','backup_auto_legacyfiles','1'),(120,'restore','restore_general_users','1'),(121,'restore','restore_general_users_locked',''),(122,'restore','restore_general_enrolments','1'),(123,'restore','restore_general_enrolments_locked',''),(124,'restore','restore_general_role_assignments','1'),(125,'restore','restore_general_role_assignments_locked',''),(126,'restore','restore_general_permissions','1'),(127,'restore','restore_general_permissions_locked',''),(128,'restore','restore_general_activities','1'),(129,'restore','restore_general_activities_locked',''),(130,'restore','restore_general_blocks','1'),(131,'restore','restore_general_blocks_locked',''),(132,'restore','restore_general_filters','1'),(133,'restore','restore_general_filters_locked',''),(134,'restore','restore_general_comments','1'),(135,'restore','restore_general_comments_locked',''),(136,'restore','restore_general_badges','1'),(137,'restore','restore_general_badges_locked',''),(138,'restore','restore_general_calendarevents','1'),(139,'restore','restore_general_calendarevents_locked',''),(140,'restore','restore_general_userscompletion','1'),(141,'restore','restore_general_userscompletion_locked',''),(142,'restore','restore_general_logs','1'),(143,'restore','restore_general_logs_locked',''),(144,'restore','restore_general_histories','1'),(145,'restore','restore_general_histories_locked',''),(146,'restore','restore_general_groups','1'),(147,'restore','restore_general_groups_locked',''),(148,'restore','restore_general_competencies','1'),(149,'restore','restore_general_competencies_locked',''),(150,'restore','restore_general_contentbankcontent','1'),(151,'restore','restore_general_contentbankcontent_locked',''),(152,'restore','restore_general_xapistate','1'),(153,'restore','restore_general_xapistate_locked',''),(154,'restore','restore_general_legacyfiles','1'),(155,'restore','restore_general_legacyfiles_locked',''),(156,'restore','restore_merge_overwrite_conf','0'),(157,'restore','restore_merge_overwrite_conf_locked',''),(158,'restore','restore_merge_course_fullname','1'),(159,'restore','restore_merge_course_fullname_locked',''),(160,'restore','restore_merge_course_shortname','1'),(161,'restore','restore_merge_course_shortname_locked',''),(162,'restore','restore_merge_course_startdate','1'),(163,'restore','restore_merge_course_startdate_locked',''),(164,'restore','restore_replace_overwrite_conf','0'),(165,'restore','restore_replace_overwrite_conf_locked',''),(166,'restore','restore_replace_course_fullname','1'),(167,'restore','restore_replace_course_fullname_locked',''),(168,'restore','restore_replace_course_shortname','1'),(169,'restore','restore_replace_course_shortname_locked',''),(170,'restore','restore_replace_course_startdate','1'),(171,'restore','restore_replace_course_startdate_locked',''),(172,'restore','restore_replace_keep_roles_and_enrolments','0'),(173,'restore','restore_replace_keep_roles_and_enrolments_locked',''),(174,'restore','restore_replace_keep_groups_and_groupings','0'),(175,'restore','restore_replace_keep_groups_and_groupings_locked',''),(176,'backup','backup_async_message_users','0'),(177,'backup','backup_async_message_subject','Moodle {operation} completed successfully'),(178,'backup','backup_async_message','Your {operation} (ID: {backupid}) has completed successfully. You can access it here: <a href=\"{link}\">{link}</a>.'),(179,'analytics','modeinstruction',''),(180,'analytics','percentonline','0'),(181,'analytics','typeinstitution',''),(182,'analytics','levelinstitution',''),(183,'analytics','predictionsprocessor','\\mlbackend_php\\processor'),(184,'analytics','defaulttimesplittingsevaluation','\\core\\analytics\\time_splitting\\quarters_accum,\\core\\analytics\\time_splitting\\quarters,\\core\\analytics\\time_splitting\\single_range'),(185,'analytics','modeloutputdir',''),(186,'analytics','onlycli','1'),(187,'analytics','modeltimelimit','1200'),(188,'analytics','calclifetime','35'),(189,'antivirus','notifyemail',''),(190,'antivirus','notifylevel','2'),(191,'antivirus','threshold','1200'),(192,'antivirus','enablequarantine','0'),(193,'antivirus','quarantinetime','2419200'),(194,'cachestore_apcu','testperformance','0'),(195,'cachestore_redis','test_server',''),(196,'cachestore_redis','test_password',''),(197,'cachestore_redis','test_ttl','0'),(198,'question_preview','behaviour','deferredfeedback'),(199,'question_preview','correctness','1'),(200,'question_preview','marks','2'),(201,'question_preview','markdp','2'),(202,'question_preview','feedback','1'),(203,'question_preview','generalfeedback','1'),(204,'question_preview','rightanswer','1'),(205,'question_preview','history','0'),(206,'tool_task','enablerunnow','1'),(207,'adminpresets','sensiblesettings','recaptchapublickey@@none, recaptchaprivatekey@@none, googlemapkey3@@none, secretphrase@@url, cronremotepassword@@none, smtpuser@@none, smtppass@@none, proxypassword@@none, quizpassword@@quiz, allowedip@@none, blockedip@@none, dbpass@@logstore_database, messageinbound_hostpass@@none, bind_pw@@auth_cas, pass@@auth_db, bind_pw@@auth_ldap, dbpass@@enrol_database, bind_pw@@enrol_ldap, server_password@@search_solr, ssl_keypassword@@search_solr, alternateserver_password@@search_solr, alternatessl_keypassword@@search_solr, test_password@@cachestore_redis, password@@mlbackend_python, badges_badgesalt@@none, calendar_exportsalt@@none'),(208,'theme_boost','unaddableblocks','navigation,settings,course_list,section_links'),(209,'theme_boost','preset','default.scss'),(210,'theme_boost','presetfiles',''),(211,'theme_boost','backgroundimage',''),(212,'theme_boost','loginbackgroundimage',''),(213,'theme_boost','brandcolor',''),(214,'theme_boost','scsspre',''),(215,'theme_boost','scss',''),(216,'theme_classic','navbardark','0'),(217,'theme_classic','unaddableblocks',''),(218,'theme_classic','preset','default.scss'),(219,'theme_classic','presetfiles',''),(220,'theme_classic','backgroundimage',''),(221,'theme_classic','loginbackgroundimage',''),(222,'theme_classic','brandcolor',''),(223,'theme_classic','scsspre',''),(224,'theme_classic','scss',''),(225,'core_admin','logo',''),(226,'core_admin','logocompact',''),(227,'core_admin','favicon',''),(228,'core_admin','coursecolor1','#81ecec'),(229,'core_admin','coursecolor2','#74b9ff'),(230,'core_admin','coursecolor3','#a29bfe'),(231,'core_admin','coursecolor4','#dfe6e9'),(232,'core_admin','coursecolor5','#00b894'),(233,'core_admin','coursecolor6','#0984e3'),(234,'core_admin','coursecolor7','#b2bec3'),(235,'core_admin','coursecolor8','#fdcb6e'),(236,'core_admin','coursecolor9','#fd79a8'),(237,'core_admin','coursecolor10','#6c5ce7'),(238,'core_competency','pushcourseratingstouserplans','1'),(239,'antivirus_clamav','version','2023042400'),(240,'availability_completion','version','2023042400'),(241,'availability_date','version','2023042400'),(242,'availability_grade','version','2023042400'),(243,'availability_group','version','2023042400'),(244,'availability_grouping','version','2023042400'),(245,'availability_profile','version','2023042400'),(246,'qtype_calculated','version','2023042400'),(247,'qtype_calculatedmulti','version','2023042400'),(248,'qtype_calculatedsimple','version','2023042400'),(249,'qtype_ddimageortext','version','2023042400'),(250,'qtype_ddmarker','version','2023042400'),(251,'qtype_ddwtos','version','2023042400'),(252,'qtype_description','version','2023042400'),(253,'qtype_essay','version','2023042400'),(254,'qtype_gapselect','version','2023042400'),(255,'qtype_match','version','2023042400'),(256,'qtype_missingtype','version','2023042400'),(257,'qtype_multianswer','version','2023042400'),(258,'qtype_multichoice','version','2023042400'),(259,'qtype_numerical','version','2023042400'),(260,'qtype_random','version','2023042400'),(261,'qtype_randomsamatch','version','2023042400'),(262,'qtype_shortanswer','version','2023042400'),(263,'qtype_truefalse','version','2023042400'),(264,'mod_assign','version','2023042400'),(265,'mod_bigbluebuttonbn','version','2023042400'),(267,'mod_book','version','2023042400'),(268,'mod_chat','version','2023042400'),(269,'mod_choice','version','2023042400'),(270,'mod_data','version','2023042401'),(271,'mod_feedback','version','2023042400'),(273,'mod_folder','version','2023042400'),(275,'mod_forum','version','2023042400'),(276,'mod_glossary','version','2023042400'),(277,'mod_h5pactivity','version','2023042401'),(278,'mod_imscp','version','2023042400'),(280,'mod_label','version','2023042400'),(281,'mod_lesson','version','2023042400'),(282,'mod_lti','version','2023042400'),(284,'mod_lti','kid','a6d7338ca2a67b8bfbb4'),(285,'mod_page','version','2023042400'),(287,'mod_quiz','version','2023042400'),(288,'mod_resource','version','2023042400'),(289,'mod_scorm','version','2023042400'),(290,'mod_survey','version','2023042400'),(292,'mod_url','version','2023042400'),(294,'mod_wiki','version','2023042400'),(296,'mod_workshop','version','2023042400'),(297,'auth_cas','version','2023042400'),(299,'auth_db','version','2023042400'),(301,'auth_email','version','2023042400'),(302,'auth_ldap','version','2023042400'),(304,'auth_lti','version','2023042400'),(305,'auth_manual','version','2023042400'),(306,'auth_mnet','version','2023042400'),(308,'auth_nologin','version','2023042400'),(309,'auth_none','version','2023042400'),(310,'auth_oauth2','version','2023042400'),(311,'auth_shibboleth','version','2023042400'),(313,'auth_webservice','version','2023042400'),(314,'calendartype_gregorian','version','2023042400'),(315,'customfield_checkbox','version','2023042400'),(316,'customfield_date','version','2023042400'),(317,'customfield_select','version','2023042400'),(318,'customfield_text','version','2023042400'),(319,'customfield_textarea','version','2023042400'),(320,'enrol_category','version','2023042400'),(322,'enrol_cohort','version','2023042400'),(323,'enrol_database','version','2023042400'),(325,'enrol_fee','version','2023042400'),(326,'enrol_flatfile','version','2023042400'),(328,'enrol_flatfile','map_1','manager'),(329,'enrol_flatfile','map_2','coursecreator'),(330,'enrol_flatfile','map_3','editingteacher'),(331,'enrol_flatfile','map_4','teacher'),(332,'enrol_flatfile','map_5','student'),(333,'enrol_flatfile','map_6','guest'),(334,'enrol_flatfile','map_7','user'),(335,'enrol_flatfile','map_8','frontpage'),(336,'enrol_guest','version','2023042400'),(337,'enrol_imsenterprise','version','2023042400'),(339,'enrol_ldap','version','2023042400'),(341,'enrol_lti','version','2023042400'),(343,'enrol_lti','lti_13_kid','e18cd681a1334c5558c3'),(344,'enrol_manual','version','2023042400'),(346,'enrol_meta','version','2023042400'),(348,'enrol_mnet','version','2023042400'),(349,'enrol_paypal','version','2023042400'),(350,'enrol_self','version','2023042400'),(352,'message_airnotifier','version','2023042400'),(354,'message','airnotifier_provider_enrol_flatfile_flatfile_enrolment_locked','0'),(355,'message','airnotifier_provider_enrol_imsenterprise_imsenterprise_enrolment_locked','0'),(356,'message','airnotifier_provider_enrol_manual_expiry_notification_locked','0'),(357,'message','airnotifier_provider_enrol_paypal_paypal_enrolment_locked','0'),(358,'message','airnotifier_provider_enrol_self_expiry_notification_locked','0'),(359,'message','airnotifier_provider_mod_assign_assign_notification_locked','0'),(360,'message','airnotifier_provider_mod_bigbluebuttonbn_recording_ready_locked','0'),(361,'message','airnotifier_provider_mod_bigbluebuttonbn_instance_updated_locked','0'),(362,'message','airnotifier_provider_mod_feedback_submission_locked','0'),(363,'message','airnotifier_provider_mod_feedback_message_locked','0'),(364,'message','airnotifier_provider_mod_forum_posts_locked','0'),(365,'message','message_provider_mod_forum_posts_enabled','email,airnotifier'),(366,'message','airnotifier_provider_mod_forum_digests_locked','0'),(367,'message','airnotifier_provider_mod_lesson_graded_essay_locked','0'),(368,'message','message_provider_mod_lesson_graded_essay_enabled','email,airnotifier'),(369,'message','airnotifier_provider_mod_quiz_submission_locked','0'),(370,'message','airnotifier_provider_mod_quiz_confirmation_locked','0'),(371,'message','message_provider_mod_quiz_confirmation_enabled','email,airnotifier'),(372,'message','airnotifier_provider_mod_quiz_attempt_overdue_locked','0'),(373,'message','message_provider_mod_quiz_attempt_overdue_enabled','email,airnotifier'),(374,'message','airnotifier_provider_mod_quiz_attempt_grading_complete_locked','0'),(375,'message','message_provider_mod_quiz_attempt_grading_complete_enabled','email,airnotifier'),(376,'message','airnotifier_provider_moodle_newlogin_locked','0'),(377,'message','message_provider_moodle_newlogin_enabled','email,airnotifier'),(378,'message','airnotifier_provider_moodle_notices_locked','0'),(379,'message','airnotifier_provider_moodle_errors_locked','0'),(380,'message','airnotifier_provider_moodle_availableupdate_locked','0'),(381,'message','airnotifier_provider_moodle_instantmessage_locked','0'),(382,'message','airnotifier_provider_moodle_backup_locked','0'),(383,'message','airnotifier_provider_moodle_courserequested_locked','0'),(384,'message','airnotifier_provider_moodle_courserequestapproved_locked','0'),(385,'message','message_provider_moodle_courserequestapproved_enabled','email,airnotifier'),(386,'message','airnotifier_provider_moodle_courserequestrejected_locked','0'),(387,'message','message_provider_moodle_courserequestrejected_enabled','email,airnotifier'),(388,'message','airnotifier_provider_moodle_coursecompleted_locked','0'),(389,'message','message_provider_moodle_coursecompleted_enabled','email,airnotifier'),(390,'message','airnotifier_provider_moodle_coursecontentupdated_locked','0'),(391,'message','message_provider_moodle_coursecontentupdated_enabled','popup,email,airnotifier'),(392,'message','airnotifier_provider_moodle_badgerecipientnotice_locked','0'),(393,'message','message_provider_moodle_badgerecipientnotice_enabled','popup,email,airnotifier'),(394,'message','airnotifier_provider_moodle_badgecreatornotice_locked','0'),(395,'message','airnotifier_provider_moodle_competencyplancomment_locked','0'),(396,'message','airnotifier_provider_moodle_competencyusercompcomment_locked','0'),(397,'message','airnotifier_provider_moodle_insights_locked','0'),(398,'message','message_provider_moodle_insights_enabled','popup,email,airnotifier'),(399,'message','airnotifier_provider_moodle_messagecontactrequests_locked','0'),(400,'message','message_provider_moodle_messagecontactrequests_enabled','email,airnotifier'),(401,'message','airnotifier_provider_moodle_asyncbackupnotification_locked','0'),(402,'message','airnotifier_provider_moodle_gradenotifications_locked','0'),(403,'message','airnotifier_provider_moodle_infected_locked','0'),(404,'message','airnotifier_provider_moodle_reportbuilderschedule_locked','0'),(405,'message_email','version','2023042400'),(407,'message','email_provider_enrol_flatfile_flatfile_enrolment_locked','0'),(408,'message','message_provider_enrol_flatfile_flatfile_enrolment_enabled','email'),(409,'message','email_provider_enrol_imsenterprise_imsenterprise_enrolment_locked','0'),(410,'message','message_provider_enrol_imsenterprise_imsenterprise_enrolment_enabled','email'),(411,'message','email_provider_enrol_manual_expiry_notification_locked','0'),(412,'message','message_provider_enrol_manual_expiry_notification_enabled','email'),(413,'message','email_provider_enrol_paypal_paypal_enrolment_locked','0'),(414,'message','message_provider_enrol_paypal_paypal_enrolment_enabled','email'),(415,'message','email_provider_enrol_self_expiry_notification_locked','0'),(416,'message','message_provider_enrol_self_expiry_notification_enabled','email'),(417,'message','email_provider_mod_assign_assign_notification_locked','0'),(418,'message','message_provider_mod_assign_assign_notification_enabled','email'),(419,'message','email_provider_mod_bigbluebuttonbn_recording_ready_locked','0'),(420,'message','message_provider_mod_bigbluebuttonbn_recording_ready_enabled','email'),(421,'message','email_provider_mod_bigbluebuttonbn_instance_updated_locked','0'),(422,'message','message_provider_mod_bigbluebuttonbn_instance_updated_enabled','email'),(423,'message','email_provider_mod_feedback_submission_locked','0'),(424,'message','message_provider_mod_feedback_submission_enabled','email'),(425,'message','email_provider_mod_feedback_message_locked','0'),(426,'message','message_provider_mod_feedback_message_enabled','email'),(427,'message','email_provider_mod_forum_posts_locked','0'),(428,'message','email_provider_mod_forum_digests_locked','0'),(429,'message','message_provider_mod_forum_digests_enabled','email'),(430,'message','email_provider_mod_lesson_graded_essay_locked','0'),(431,'message','email_provider_mod_quiz_submission_locked','0'),(432,'message','message_provider_mod_quiz_submission_enabled','email'),(433,'message','email_provider_mod_quiz_confirmation_locked','0'),(434,'message','email_provider_mod_quiz_attempt_overdue_locked','0'),(435,'message','email_provider_mod_quiz_attempt_grading_complete_locked','0'),(436,'message','email_provider_moodle_newlogin_locked','0'),(437,'message','email_provider_moodle_notices_locked','0'),(438,'message','message_provider_moodle_notices_enabled','email'),(439,'message','email_provider_moodle_errors_locked','0'),(440,'message','message_provider_moodle_errors_enabled','email'),(441,'message','email_provider_moodle_availableupdate_locked','0'),(442,'message','message_provider_moodle_availableupdate_enabled','email'),(443,'message','email_provider_moodle_instantmessage_locked','0'),(444,'message','message_provider_moodle_instantmessage_enabled','popup,email'),(445,'message','email_provider_moodle_backup_locked','0'),(446,'message','message_provider_moodle_backup_enabled','email'),(447,'message','email_provider_moodle_courserequested_locked','0'),(448,'message','message_provider_moodle_courserequested_enabled','email'),(449,'message','email_provider_moodle_courserequestapproved_locked','0'),(450,'message','email_provider_moodle_courserequestrejected_locked','0'),(451,'message','email_provider_moodle_coursecompleted_locked','0'),(452,'message','email_provider_moodle_coursecontentupdated_locked','0'),(453,'message','email_provider_moodle_badgerecipientnotice_locked','0'),(454,'message','email_provider_moodle_badgecreatornotice_locked','0'),(455,'message','message_provider_moodle_badgecreatornotice_enabled','email'),(456,'message','email_provider_moodle_competencyplancomment_locked','0'),(457,'message','message_provider_moodle_competencyplancomment_enabled','email'),(458,'message','email_provider_moodle_competencyusercompcomment_locked','0'),(459,'message','message_provider_moodle_competencyusercompcomment_enabled','email'),(460,'message','email_provider_moodle_insights_locked','0'),(461,'message','email_provider_moodle_messagecontactrequests_locked','0'),(462,'message','email_provider_moodle_asyncbackupnotification_locked','0'),(463,'message','message_provider_moodle_asyncbackupnotification_enabled','popup,email'),(464,'message','email_provider_moodle_gradenotifications_locked','0'),(465,'message','message_provider_moodle_gradenotifications_enabled','popup,email'),(466,'message','email_provider_moodle_infected_locked','0'),(467,'message','message_provider_moodle_infected_enabled','email'),(468,'message','email_provider_moodle_reportbuilderschedule_locked','1'),(469,'message','message_provider_moodle_reportbuilderschedule_enabled','email'),(470,'message_popup','version','2023042400'),(472,'message','popup_provider_enrol_flatfile_flatfile_enrolment_locked','0'),(473,'message','popup_provider_enrol_imsenterprise_imsenterprise_enrolment_locked','0'),(474,'message','popup_provider_enrol_manual_expiry_notification_locked','0'),(475,'message','popup_provider_enrol_paypal_paypal_enrolment_locked','0'),(476,'message','popup_provider_enrol_self_expiry_notification_locked','0'),(477,'message','popup_provider_mod_assign_assign_notification_locked','0'),(478,'message','popup_provider_mod_bigbluebuttonbn_recording_ready_locked','0'),(479,'message','popup_provider_mod_bigbluebuttonbn_instance_updated_locked','0'),(480,'message','popup_provider_mod_feedback_submission_locked','0'),(481,'message','popup_provider_mod_feedback_message_locked','0'),(482,'message','popup_provider_mod_forum_posts_locked','0'),(483,'message','popup_provider_mod_forum_digests_locked','0'),(484,'message','popup_provider_mod_lesson_graded_essay_locked','0'),(485,'message','popup_provider_mod_quiz_submission_locked','0'),(486,'message','popup_provider_mod_quiz_confirmation_locked','0'),(487,'message','popup_provider_mod_quiz_attempt_overdue_locked','0'),(488,'message','popup_provider_mod_quiz_attempt_grading_complete_locked','0'),(489,'message','popup_provider_moodle_newlogin_locked','0'),(490,'message','popup_provider_moodle_notices_locked','0'),(491,'message','popup_provider_moodle_errors_locked','0'),(492,'message','popup_provider_moodle_availableupdate_locked','0'),(493,'message','popup_provider_moodle_instantmessage_locked','0'),(494,'message','popup_provider_moodle_backup_locked','0'),(495,'message','popup_provider_moodle_courserequested_locked','0'),(496,'message','popup_provider_moodle_courserequestapproved_locked','0'),(497,'message','popup_provider_moodle_courserequestrejected_locked','0'),(498,'message','popup_provider_moodle_coursecompleted_locked','0'),(499,'message','popup_provider_moodle_coursecontentupdated_locked','0'),(500,'message','popup_provider_moodle_badgerecipientnotice_locked','0'),(501,'message','popup_provider_moodle_badgecreatornotice_locked','0'),(502,'message','popup_provider_moodle_competencyplancomment_locked','0'),(503,'message','popup_provider_moodle_competencyusercompcomment_locked','0'),(504,'message','popup_provider_moodle_insights_locked','0'),(505,'message','popup_provider_moodle_messagecontactrequests_locked','0'),(506,'message','popup_provider_moodle_asyncbackupnotification_locked','0'),(507,'message','popup_provider_moodle_gradenotifications_locked','0'),(508,'message','popup_provider_moodle_infected_locked','0'),(509,'message','popup_provider_moodle_reportbuilderschedule_locked','0'),(510,'block_accessreview','version','2023042400'),(511,'block_activity_modules','version','2023042400'),(512,'block_activity_results','version','2023042400'),(513,'block_admin_bookmarks','version','2023042400'),(514,'block_badges','version','2023042400'),(515,'block_blog_menu','version','2023042400'),(516,'block_blog_recent','version','2023042400'),(517,'block_blog_tags','version','2023042400'),(518,'block_calendar_month','version','2023042400'),(519,'block_calendar_upcoming','version','2023042400'),(520,'block_comments','version','2023042400'),(521,'block_completionstatus','version','2023042400'),(522,'block_course_list','version','2023042400'),(523,'block_course_summary','version','2023042400'),(525,'block_feedback','version','2023042400'),(527,'block_globalsearch','version','2023042400'),(528,'block_glossary_random','version','2023042400'),(529,'block_html','version','2023042400'),(530,'block_login','version','2023042400'),(531,'block_lp','version','2023042400'),(532,'block_mentees','version','2023042400'),(533,'block_mnet_hosts','version','2023042400'),(534,'block_myoverview','version','2023042400'),(535,'block_myprofile','version','2023042400'),(536,'block_navigation','version','2023042400'),(537,'block_news_items','version','2023042400'),(538,'block_online_users','version','2023042400'),(539,'block_private_files','version','2023042400'),(540,'block_recent_activity','version','2023042400'),(541,'block_recentlyaccessedcourses','version','2023042400'),(543,'block_recentlyaccesseditems','version','2023042400'),(544,'block_rss_client','version','2023042400'),(546,'block_search_forums','version','2023042400'),(547,'block_section_links','version','2023042400'),(548,'block_selfcompletion','version','2023042400'),(550,'block_settings','version','2023042400'),(551,'block_site_main_menu','version','2023042400'),(552,'block_social_activities','version','2023042400'),(553,'block_starredcourses','version','2023042400'),(554,'block_tag_flickr','version','2023042400'),(555,'block_tag_youtube','version','2023042400'),(557,'block_tags','version','2023042400'),(558,'block_timeline','version','2023042400'),(560,'media_html5audio','version','2023042400'),(561,'media_html5video','version','2023042400'),(562,'media_videojs','version','2023042400'),(563,'media_vimeo','version','2023042400'),(564,'media_youtube','version','2023042400'),(565,'filter_activitynames','version','2023042400'),(567,'filter_algebra','version','2023042400'),(568,'filter_data','version','2023042400'),(570,'filter_displayh5p','version','2023042400'),(572,'filter_emailprotect','version','2023042400'),(573,'filter_emoticon','version','2023042400'),(575,'filter_glossary','version','2023042400'),(577,'filter_mathjaxloader','version','2023042400'),(579,'filter_mediaplugin','version','2023042400'),(581,'filter_multilang','version','2023042400'),(582,'filter_tex','version','2023042400'),(584,'filter_tidy','version','2023042400'),(585,'filter_urltolink','version','2023042400'),(587,'editor_atto','version','2023042400'),(588,'editor_textarea','version','2023042400'),(589,'editor_tiny','version','2023042400'),(591,'format_singleactivity','version','2023042400'),(592,'format_social','version','2023042400'),(593,'format_topics','version','2023042400'),(594,'format_weeks','version','2023042400'),(595,'dataformat_csv','version','2023042400'),(596,'dataformat_excel','version','2023042400'),(597,'dataformat_html','version','2023042400'),(598,'dataformat_json','version','2023042400'),(599,'dataformat_ods','version','2023042400'),(600,'dataformat_pdf','version','2023042400'),(601,'profilefield_checkbox','version','2023042400'),(602,'profilefield_datetime','version','2023042400'),(603,'profilefield_menu','version','2023042400'),(604,'profilefield_social','version','2023042400'),(605,'profilefield_text','version','2023042400'),(606,'profilefield_textarea','version','2023042400'),(607,'report_backups','version','2023042400'),(608,'report_competency','version','2023042400'),(609,'report_completion','version','2023042400'),(611,'report_configlog','version','2023042400'),(612,'report_courseoverview','version','2023042400'),(613,'report_eventlist','version','2023042400'),(614,'report_infectedfiles','version','2023042400'),(615,'report_insights','version','2023042400'),(616,'report_log','version','2023042400'),(618,'report_loglive','version','2023042400'),(619,'report_outline','version','2023042400'),(621,'report_participation','version','2023042400'),(623,'report_performance','version','2023042400'),(624,'report_progress','version','2023042400'),(626,'report_questioninstances','version','2023042400'),(627,'report_security','version','2023042400'),(628,'report_stats','version','2023042400'),(630,'report_status','version','2023042400'),(631,'report_usersessions','version','2023042400'),(632,'gradeexport_ods','version','2023042400'),(633,'gradeexport_txt','version','2023042400'),(634,'gradeexport_xls','version','2023042400'),(635,'gradeexport_xml','version','2023042400'),(636,'gradeimport_csv','version','2023042400'),(637,'gradeimport_direct','version','2023042400'),(638,'gradeimport_xml','version','2023042400'),(639,'gradereport_grader','version','2023042400'),(640,'gradereport_history','version','2023042400'),(641,'gradereport_outcomes','version','2023042400'),(642,'gradereport_overview','version','2023042400'),(643,'gradereport_singleview','version','2023042400'),(644,'gradereport_summary','version','2023042400'),(645,'gradereport_user','version','2023042400'),(646,'gradingform_guide','version','2023042400'),(647,'gradingform_rubric','version','2023042400'),(648,'mlbackend_php','version','2023042400'),(649,'mlbackend_python','version','2023042400'),(650,'mnetservice_enrol','version','2023042400'),(651,'webservice_rest','version','2023042400'),(652,'webservice_soap','version','2023042400'),(653,'repository_areafiles','version','2023042400'),(655,'areafiles','enablecourseinstances','0'),(656,'areafiles','enableuserinstances','0'),(657,'repository_contentbank','version','2023042400'),(659,'contentbank','enablecourseinstances','0'),(660,'contentbank','enableuserinstances','0'),(661,'repository_coursefiles','version','2023042400'),(662,'repository_dropbox','version','2023042400'),(663,'repository_equella','version','2023042400'),(664,'repository_filesystem','version','2023042400'),(665,'repository_flickr','version','2023042400'),(666,'repository_flickr_public','version','2023042400'),(667,'repository_googledocs','version','2023042400'),(668,'repository_local','version','2023042400'),(670,'local','enablecourseinstances','0'),(671,'local','enableuserinstances','0'),(672,'repository_merlot','version','2023042400'),(673,'repository_nextcloud','version','2023042400'),(674,'repository_onedrive','version','2023042400'),(675,'repository_recent','version','2023042400'),(677,'recent','enablecourseinstances','0'),(678,'recent','enableuserinstances','0'),(679,'repository_s3','version','2023042400'),(680,'repository_upload','version','2023042400'),(682,'upload','enablecourseinstances','0'),(683,'upload','enableuserinstances','0'),(684,'repository_url','version','2023042400'),(686,'url','enablecourseinstances','0'),(687,'url','enableuserinstances','0'),(688,'repository_user','version','2023042400'),(690,'user','enablecourseinstances','0'),(691,'user','enableuserinstances','0'),(692,'repository_webdav','version','2023042400'),(693,'repository_wikimedia','version','2023042400'),(695,'wikimedia','enablecourseinstances','0'),(696,'wikimedia','enableuserinstances','0'),(697,'repository_youtube','version','2023042400'),(699,'portfolio_download','version','2023042400'),(700,'portfolio_flickr','version','2023042400'),(701,'portfolio_googledocs','version','2023042400'),(702,'portfolio_mahara','version','2023042400'),(703,'search_simpledb','version','2023042400'),(705,'search_solr','version','2023042400'),(706,'qbank_bulkmove','version','2023042400'),(707,'qbank_columnsortorder','version','2023042400'),(708,'qbank_comment','version','2023042400'),(709,'qbank_customfields','version','2023042400'),(710,'qbank_deletequestion','version','2023042400'),(711,'qbank_editquestion','version','2023042400'),(712,'qbank_exportquestions','version','2023042400'),(713,'qbank_exporttoxml','version','2023042400'),(714,'qbank_history','version','2023042400'),(715,'qbank_importquestions','version','2023042400'),(716,'qbank_managecategories','version','2023042400'),(717,'qbank_previewquestion','version','2023042400'),(718,'qbank_statistics','version','2023042400'),(719,'qbank_tagquestion','version','2023042400'),(720,'qbank_usage','version','2023042400'),(721,'qbank_viewcreator','version','2023042400'),(722,'qbank_viewquestionname','version','2023042400'),(723,'qbank_viewquestiontext','version','2023042400'),(724,'qbank_viewquestiontype','version','2023042400'),(725,'qbehaviour_adaptive','version','2023042400'),(726,'qbehaviour_adaptivenopenalty','version','2023042400'),(727,'qbehaviour_deferredcbm','version','2023042400'),(728,'qbehaviour_deferredfeedback','version','2023042400'),(729,'qbehaviour_immediatecbm','version','2023042400'),(730,'qbehaviour_immediatefeedback','version','2023042400'),(731,'qbehaviour_informationitem','version','2023042400'),(732,'qbehaviour_interactive','version','2023042400'),(733,'qbehaviour_interactivecountback','version','2023042400'),(734,'qbehaviour_manualgraded','version','2023042400'),(736,'question','disabledbehaviours','manualgraded'),(737,'qbehaviour_missing','version','2023042400'),(738,'qformat_aiken','version','2023042400'),(739,'qformat_blackboard_six','version','2023042400'),(740,'qformat_gift','version','2023042400'),(741,'qformat_missingword','version','2023042400'),(742,'qformat_multianswer','version','2023042400'),(743,'qformat_xhtml','version','2023042400'),(744,'qformat_xml','version','2023042400'),(745,'tool_admin_presets','version','2023042400'),(746,'tool_analytics','version','2023042400'),(747,'tool_availabilityconditions','version','2023042400'),(748,'tool_behat','version','2023042401'),(749,'tool_brickfield','version','2023042400'),(751,'tool_capability','version','2023042400'),(752,'tool_cohortroles','version','2023042401'),(753,'tool_componentlibrary','version','2023042400'),(754,'tool_customlang','version','2023042400'),(756,'tool_dataprivacy','version','2023042400'),(757,'message','airnotifier_provider_tool_dataprivacy_contactdataprotectionofficer_locked','0'),(758,'message','email_provider_tool_dataprivacy_contactdataprotectionofficer_locked','0'),(759,'message','popup_provider_tool_dataprivacy_contactdataprotectionofficer_locked','0'),(760,'message','message_provider_tool_dataprivacy_contactdataprotectionofficer_enabled','email,popup'),(761,'message','airnotifier_provider_tool_dataprivacy_datarequestprocessingresults_locked','0'),(762,'message','email_provider_tool_dataprivacy_datarequestprocessingresults_locked','0'),(763,'message','popup_provider_tool_dataprivacy_datarequestprocessingresults_locked','0'),(764,'message','message_provider_tool_dataprivacy_datarequestprocessingresults_enabled','email,popup'),(765,'message','airnotifier_provider_tool_dataprivacy_notifyexceptions_locked','0'),(766,'message','email_provider_tool_dataprivacy_notifyexceptions_locked','0'),(767,'message','popup_provider_tool_dataprivacy_notifyexceptions_locked','0'),(768,'message','message_provider_tool_dataprivacy_notifyexceptions_enabled','email'),(769,'tool_dbtransfer','version','2023042400'),(770,'tool_filetypes','version','2023042400'),(771,'tool_generator','version','2023042400'),(772,'tool_httpsreplace','version','2023042400'),(773,'tool_innodb','version','2023042400'),(774,'tool_installaddon','version','2023042400'),(775,'tool_langimport','version','2023042400'),(776,'tool_licensemanager','version','2023042400'),(777,'tool_log','version','2023042400'),(779,'tool_log','enabled_stores','logstore_standard'),(780,'tool_lp','version','2023042400'),(781,'tool_lpimportcsv','version','2023042400'),(782,'tool_lpmigrate','version','2023042400'),(783,'tool_messageinbound','version','2023042400'),(784,'message','airnotifier_provider_tool_messageinbound_invalidrecipienthandler_locked','0'),(785,'message','email_provider_tool_messageinbound_invalidrecipienthandler_locked','0'),(786,'message','popup_provider_tool_messageinbound_invalidrecipienthandler_locked','0'),(787,'message','message_provider_tool_messageinbound_invalidrecipienthandler_enabled','email'),(788,'message','airnotifier_provider_tool_messageinbound_messageprocessingerror_locked','0'),(789,'message','email_provider_tool_messageinbound_messageprocessingerror_locked','0'),(790,'message','popup_provider_tool_messageinbound_messageprocessingerror_locked','0'),(791,'message','message_provider_tool_messageinbound_messageprocessingerror_enabled','email'),(792,'message','airnotifier_provider_tool_messageinbound_messageprocessingsuccess_locked','0'),(793,'message','email_provider_tool_messageinbound_messageprocessingsuccess_locked','0'),(794,'message','popup_provider_tool_messageinbound_messageprocessingsuccess_locked','0'),(795,'message','message_provider_tool_messageinbound_messageprocessingsuccess_enabled','email'),(796,'tool_mobile','version','2023042400'),(797,'tool_monitor','version','2023042400'),(798,'message','airnotifier_provider_tool_monitor_notification_locked','0'),(799,'message','email_provider_tool_monitor_notification_locked','0'),(800,'message','popup_provider_tool_monitor_notification_locked','0'),(801,'message','message_provider_tool_monitor_notification_enabled','email'),(802,'tool_moodlenet','version','2023042400'),(804,'tool_multilangupgrade','version','2023042400'),(805,'tool_oauth2','version','2023042400'),(806,'tool_phpunit','version','2023042400'),(807,'tool_policy','version','2023042400'),(808,'tool_profiling','version','2023042400'),(809,'tool_recyclebin','version','2023042400'),(810,'tool_replace','version','2023042400'),(811,'tool_spamcleaner','version','2023042400'),(812,'tool_task','version','2023042400'),(813,'tool_templatelibrary','version','2023042400'),(814,'tool_unsuproles','version','2023042400'),(816,'tool_uploadcourse','version','2023042400'),(817,'tool_uploaduser','version','2023042400'),(818,'tool_usertours','version','2023042400'),(820,'tool_xmldb','version','2023042400'),(821,'cachestore_apcu','version','2023042400'),(822,'cachestore_file','version','2023042400'),(823,'cachestore_redis','version','2023042400'),(824,'cachestore_session','version','2023042400'),(825,'cachestore_static','version','2023042400'),(826,'cachelock_file','version','2023042400'),(827,'fileconverter_googledrive','version','2023042400'),(828,'fileconverter_unoconv','version','2023042400'),(830,'contenttype_h5p','version','2023042400'),(831,'theme_boost','version','2023042400'),(832,'theme_classic','version','2023042400'),(833,'local_adminer','version','2021051702'),(834,'h5plib_v124','version','2023042400'),(835,'paygw_paypal','version','2023042400'),(837,'assignsubmission_comments','version','2023042400'),(839,'assignsubmission_file','sortorder','1'),(840,'assignsubmission_comments','sortorder','2'),(841,'assignsubmission_onlinetext','sortorder','0'),(842,'assignsubmission_file','version','2023042400'),(843,'assignsubmission_onlinetext','version','2023042400'),(845,'assignfeedback_comments','version','2023042400'),(847,'assignfeedback_comments','sortorder','0'),(848,'assignfeedback_editpdf','sortorder','1'),(849,'assignfeedback_file','sortorder','3'),(850,'assignfeedback_offline','sortorder','2'),(851,'assignfeedback_editpdf','version','2023042400'),(853,'assignfeedback_file','version','2023042400'),(855,'assignfeedback_offline','version','2023042400'),(856,'booktool_exportimscp','version','2023042400'),(857,'booktool_importhtml','version','2023042400'),(858,'booktool_print','version','2023042400'),(859,'datafield_checkbox','version','2023042400'),(860,'datafield_date','version','2023042400'),(861,'datafield_file','version','2023042400'),(862,'datafield_latlong','version','2023042400'),(863,'datafield_menu','version','2023042400'),(864,'datafield_multimenu','version','2023042400'),(865,'datafield_number','version','2023042400'),(866,'datafield_picture','version','2023042400'),(867,'datafield_radiobutton','version','2023042400'),(868,'datafield_text','version','2023042400'),(869,'datafield_textarea','version','2023042400'),(870,'datafield_url','version','2023042400'),(871,'datapreset_imagegallery','version','2023042400'),(872,'datapreset_journal','version','2023042400'),(873,'datapreset_proposals','version','2023042400'),(874,'datapreset_resources','version','2023042400'),(875,'forumreport_summary','version','2023042400'),(876,'ltiservice_basicoutcomes','version','2023042400'),(877,'ltiservice_gradebookservices','version','2023042400'),(878,'ltiservice_memberships','version','2023042400'),(879,'ltiservice_profile','version','2023042400'),(880,'ltiservice_toolproxy','version','2023042400'),(881,'ltiservice_toolsettings','version','2023042400'),(882,'quiz_grading','version','2023042400'),(884,'quiz_overview','version','2023042400'),(886,'quiz_responses','version','2023042400'),(888,'quiz_statistics','version','2023042404'),(890,'quizaccess_delaybetweenattempts','version','2023042400'),(891,'quizaccess_ipaddress','version','2023042400'),(892,'quizaccess_numattempts','version','2023042400'),(893,'quizaccess_offlineattempts','version','2023042400'),(894,'quizaccess_openclosedate','version','2023042400'),(895,'quizaccess_password','version','2023042400'),(896,'quizaccess_seb','version','2023042400'),(898,'quizaccess_securewindow','version','2023042400'),(899,'quizaccess_timelimit','version','2023042400'),(900,'scormreport_basic','version','2023042400'),(901,'scormreport_graphs','version','2023042400'),(902,'scormreport_interactions','version','2023042400'),(903,'scormreport_objectives','version','2023042400'),(904,'workshopform_accumulative','version','2023042400'),(906,'workshopform_comments','version','2023042400'),(908,'workshopform_numerrors','version','2023042400'),(910,'workshopform_rubric','version','2023042400'),(912,'workshopallocation_manual','version','2023042400'),(913,'workshopallocation_random','version','2023042400'),(914,'workshopallocation_scheduled','version','2023042400'),(915,'workshopeval_best','version','2023042400'),(916,'atto_accessibilitychecker','version','2023042400'),(917,'atto_accessibilityhelper','version','2023042400'),(918,'atto_align','version','2023042400'),(919,'atto_backcolor','version','2023042400'),(920,'atto_bold','version','2023042400'),(921,'atto_charmap','version','2023042400'),(922,'atto_clear','version','2023042400'),(923,'atto_collapse','version','2023042400'),(924,'atto_emojipicker','version','2023042400'),(925,'atto_emoticon','version','2023042400'),(926,'atto_equation','version','2023042400'),(927,'atto_fontcolor','version','2023042400'),(928,'atto_h5p','version','2023042400'),(929,'atto_html','version','2023042400'),(930,'atto_image','version','2023042400'),(931,'atto_indent','version','2023042400'),(932,'atto_italic','version','2023042400'),(933,'atto_link','version','2023042400'),(934,'atto_managefiles','version','2023042400'),(935,'atto_media','version','2023042400'),(936,'atto_noautolink','version','2023042400'),(937,'atto_orderedlist','version','2023042400'),(938,'atto_recordrtc','version','2023042400'),(939,'atto_rtl','version','2023042400'),(940,'atto_strike','version','2023042400'),(941,'atto_subscript','version','2023042400'),(942,'atto_superscript','version','2023042400'),(943,'atto_table','version','2023042400'),(944,'atto_title','version','2023042400'),(945,'atto_underline','version','2023042400'),(946,'atto_undo','version','2023042400'),(947,'atto_unorderedlist','version','2023042400'),(948,'tiny_accessibilitychecker','version','2023042400'),(949,'tiny_autosave','version','2023042400'),(950,'tiny_equation','version','2023042400'),(951,'tiny_h5p','version','2023042400'),(952,'tiny_link','version','2023042400'),(953,'tiny_media','version','2023042400'),(954,'tiny_recordrtc','version','2023042400'),(955,'logstore_database','version','2023042400'),(956,'logstore_standard','version','2023042400'),(957,'tool_moodlenet','enablemoodlenet','1'),(958,'tool_dataprivacy','contactdataprotectionofficer','0'),(959,'tool_dataprivacy','automaticdataexportapproval','0'),(960,'tool_dataprivacy','automaticdatadeletionapproval','0'),(961,'tool_dataprivacy','automaticdeletionrequests','1'),(962,'tool_dataprivacy','privacyrequestexpiry','604800'),(963,'tool_dataprivacy','requireallenddatesforuserdeletion','1'),(964,'tool_dataprivacy','showdataretentionsummary','1'),(965,'tool_log','exportlog','1'),(966,'analytics','logstore','logstore_standard'),(967,'message_airnotifier','encryptnotifications','0'),(968,'message_airnotifier','encryptprocessing','0'),(969,'assign','feedback_plugin_for_gradebook','assignfeedback_comments'),(970,'assign','showrecentsubmissions','0'),(971,'assign','submissionreceipts','1'),(972,'assign','submissionstatement','This submission is my own work, except where I have acknowledged the use of the works of other people.'),(973,'assign','submissionstatementteamsubmission','This submission is the work of my group, except where we have acknowledged the use of the works of other people.'),(974,'assign','submissionstatementteamsubmissionallsubmit','This submission is my own work as a group member, except where I have acknowledged the use of the works of other people.'),(975,'assign','maxperpage','-1'),(976,'assign','alwaysshowdescription','1'),(977,'assign','alwaysshowdescription_adv',''),(978,'assign','alwaysshowdescription_locked',''),(979,'assign','allowsubmissionsfromdate','0'),(980,'assign','allowsubmissionsfromdate_enabled','1'),(981,'assign','allowsubmissionsfromdate_adv',''),(982,'assign','duedate','604800'),(983,'assign','duedate_enabled','1'),(984,'assign','duedate_adv',''),(985,'assign','cutoffdate','1209600'),(986,'assign','cutoffdate_enabled',''),(987,'assign','cutoffdate_adv',''),(988,'assign','enabletimelimit','0'),(989,'assign','gradingduedate','1209600'),(990,'assign','gradingduedate_enabled','1'),(991,'assign','gradingduedate_adv',''),(992,'assign','submissiondrafts','0'),(993,'assign','submissiondrafts_adv',''),(994,'assign','submissiondrafts_locked',''),(995,'assign','requiresubmissionstatement','0'),(996,'assign','requiresubmissionstatement_adv',''),(997,'assign','requiresubmissionstatement_locked',''),(998,'assign','attemptreopenmethod','none'),(999,'assign','attemptreopenmethod_adv',''),(1000,'assign','attemptreopenmethod_locked',''),(1001,'assign','maxattempts','-1'),(1002,'assign','maxattempts_adv',''),(1003,'assign','maxattempts_locked',''),(1004,'assign','teamsubmission','0'),(1005,'assign','teamsubmission_adv',''),(1006,'assign','teamsubmission_locked',''),(1007,'assign','preventsubmissionnotingroup','0'),(1008,'assign','preventsubmissionnotingroup_adv',''),(1009,'assign','preventsubmissionnotingroup_locked',''),(1010,'assign','requireallteammemberssubmit','0'),(1011,'assign','requireallteammemberssubmit_adv',''),(1012,'assign','requireallteammemberssubmit_locked',''),(1013,'assign','teamsubmissiongroupingid',''),(1014,'assign','teamsubmissiongroupingid_adv',''),(1015,'assign','sendnotifications','0'),(1016,'assign','sendnotifications_adv',''),(1017,'assign','sendnotifications_locked',''),(1018,'assign','sendlatenotifications','0'),(1019,'assign','sendlatenotifications_adv',''),(1020,'assign','sendlatenotifications_locked',''),(1021,'assign','sendstudentnotifications','1'),(1022,'assign','sendstudentnotifications_adv',''),(1023,'assign','sendstudentnotifications_locked',''),(1024,'assign','blindmarking','0'),(1025,'assign','blindmarking_adv',''),(1026,'assign','blindmarking_locked',''),(1027,'assign','hidegrader','0'),(1028,'assign','hidegrader_adv',''),(1029,'assign','hidegrader_locked',''),(1030,'assign','markingworkflow','0'),(1031,'assign','markingworkflow_adv',''),(1032,'assign','markingworkflow_locked',''),(1033,'assign','markingallocation','0'),(1034,'assign','markingallocation_adv',''),(1035,'assign','markingallocation_locked',''),(1036,'assignsubmission_file','default','1'),(1037,'assignsubmission_file','maxfiles','20'),(1038,'assignsubmission_file','filetypes',''),(1039,'assignsubmission_file','maxbytes','0'),(1040,'assignsubmission_onlinetext','default','0'),(1041,'assignfeedback_comments','default','1'),(1042,'assignfeedback_comments','inline','0'),(1043,'assignfeedback_comments','inline_adv',''),(1044,'assignfeedback_comments','inline_locked',''),(1045,'assignfeedback_editpdf','default','1'),(1046,'assignfeedback_editpdf','stamps',''),(1047,'assignfeedback_file','default','0'),(1048,'assignfeedback_offline','default','0'),(1049,'mod_bigbluebuttonbn','presentationdefault',''),(1050,'book','numberingoptions','0,1,2,3'),(1051,'book','numbering','1'),(1052,'resource','framesize','130'),(1053,'resource','displayoptions','0,1,4,5,6'),(1054,'resource','printintro','1'),(1055,'resource','display','0'),(1056,'resource','showsize','0'),(1057,'resource','showtype','0'),(1058,'resource','showdate','0'),(1059,'resource','popupwidth','620'),(1060,'resource','popupheight','450'),(1061,'resource','filterfiles','0'),(1062,'folder','showexpanded','1'),(1063,'folder','maxsizetodownload','0'),(1064,'mod_h5pactivity','enablesavestate','1'),(1065,'mod_h5pactivity','savestatefreq','60'),(1066,'imscp','keepold','1'),(1067,'imscp','keepold_adv',''),(1068,'mod_lesson','mediafile',''),(1069,'mod_lesson','mediafile_adv','1'),(1070,'mod_lesson','mediawidth','640'),(1071,'mod_lesson','mediaheight','480'),(1072,'mod_lesson','mediaclose','0'),(1073,'mod_lesson','progressbar','0'),(1074,'mod_lesson','progressbar_adv',''),(1075,'mod_lesson','ongoing','0'),(1076,'mod_lesson','ongoing_adv','1'),(1077,'mod_lesson','displayleftmenu','0'),(1078,'mod_lesson','displayleftmenu_adv',''),(1079,'mod_lesson','displayleftif','0'),(1080,'mod_lesson','displayleftif_adv','1'),(1081,'mod_lesson','slideshow','0'),(1082,'mod_lesson','slideshow_adv','1'),(1083,'mod_lesson','slideshowwidth','640'),(1084,'mod_lesson','slideshowheight','480'),(1085,'mod_lesson','slideshowbgcolor','#FFFFFF'),(1086,'mod_lesson','maxanswers','5'),(1087,'mod_lesson','maxanswers_adv','1'),(1088,'mod_lesson','defaultfeedback','0'),(1089,'mod_lesson','defaultfeedback_adv','1'),(1090,'mod_lesson','activitylink',''),(1091,'mod_lesson','activitylink_adv','1'),(1092,'mod_lesson','timelimit','0'),(1093,'mod_lesson','timelimit_adv',''),(1094,'mod_lesson','password','0'),(1095,'mod_lesson','password_adv','1'),(1096,'mod_lesson','modattempts','0'),(1097,'mod_lesson','modattempts_adv',''),(1098,'mod_lesson','displayreview','0'),(1099,'mod_lesson','displayreview_adv',''),(1100,'mod_lesson','maximumnumberofattempts','1'),(1101,'mod_lesson','maximumnumberofattempts_adv',''),(1102,'mod_lesson','defaultnextpage','0'),(1103,'mod_lesson','defaultnextpage_adv','1'),(1104,'mod_lesson','numberofpagestoshow','1'),(1105,'mod_lesson','numberofpagestoshow_adv','1'),(1106,'mod_lesson','practice','0'),(1107,'mod_lesson','practice_adv',''),(1108,'mod_lesson','customscoring','1'),(1109,'mod_lesson','customscoring_adv','1'),(1110,'mod_lesson','retakesallowed','0'),(1111,'mod_lesson','retakesallowed_adv',''),(1112,'mod_lesson','handlingofretakes','0'),(1113,'mod_lesson','handlingofretakes_adv','1'),(1114,'mod_lesson','minimumnumberofquestions','0'),(1115,'mod_lesson','minimumnumberofquestions_adv','1'),(1116,'page','displayoptions','5'),(1117,'page','printintro','0'),(1118,'page','printlastmodified','1'),(1119,'page','display','5'),(1120,'page','popupwidth','620'),(1121,'page','popupheight','450'),(1122,'quiz','timelimit','0'),(1123,'quiz','timelimit_adv',''),(1124,'quiz','timelimit_locked',''),(1125,'quiz','notifyattemptgradeddelay','18000'),(1126,'quiz','overduehandling','autosubmit'),(1127,'quiz','overduehandling_adv',''),(1128,'quiz','overduehandling_locked',''),(1129,'quiz','graceperiod','86400'),(1130,'quiz','graceperiod_adv',''),(1131,'quiz','graceperiod_locked',''),(1132,'quiz','graceperiodmin','60'),(1133,'quiz','attempts','0'),(1134,'quiz','attempts_adv',''),(1135,'quiz','attempts_locked',''),(1136,'quiz','grademethod','1'),(1137,'quiz','grademethod_adv',''),(1138,'quiz','grademethod_locked',''),(1139,'quiz','maximumgrade','10'),(1140,'quiz','maximumgrade_locked',''),(1141,'quiz','questionsperpage','1'),(1142,'quiz','questionsperpage_adv',''),(1143,'quiz','questionsperpage_locked',''),(1144,'quiz','navmethod','free'),(1145,'quiz','navmethod_adv','1'),(1146,'quiz','navmethod_locked',''),(1147,'quiz','shuffleanswers','1'),(1148,'quiz','shuffleanswers_adv',''),(1149,'quiz','shuffleanswers_locked',''),(1150,'quiz','preferredbehaviour','deferredfeedback'),(1151,'quiz','preferredbehaviour_locked',''),(1152,'quiz','canredoquestions','0'),(1153,'quiz','canredoquestions_adv','1'),(1154,'quiz','canredoquestions_locked',''),(1155,'quiz','attemptonlast','0'),(1156,'quiz','attemptonlast_adv','1'),(1157,'quiz','attemptonlast_locked',''),(1158,'quiz','reviewattempt','69904'),(1159,'quiz','reviewcorrectness','69904'),(1160,'quiz','reviewmarks','69904'),(1161,'quiz','reviewspecificfeedback','69904'),(1162,'quiz','reviewgeneralfeedback','69904'),(1163,'quiz','reviewrightanswer','69904'),(1164,'quiz','reviewoverallfeedback','4368'),(1165,'quiz','showuserpicture','0'),(1166,'quiz','showuserpicture_adv',''),(1167,'quiz','showuserpicture_locked',''),(1168,'quiz','decimalpoints','2'),(1169,'quiz','decimalpoints_adv',''),(1170,'quiz','decimalpoints_locked',''),(1171,'quiz','questiondecimalpoints','-1'),(1172,'quiz','questiondecimalpoints_adv',''),(1173,'quiz','questiondecimalpoints_locked',''),(1174,'quiz','showblocks','0'),(1175,'quiz','showblocks_adv','1'),(1176,'quiz','showblocks_locked',''),(1177,'quiz','quizpassword',''),(1178,'quiz','quizpassword_adv',''),(1179,'quiz','quizpassword_required',''),(1180,'quiz','quizpassword_locked',''),(1181,'quiz','subnet',''),(1182,'quiz','subnet_adv','1'),(1183,'quiz','subnet_locked',''),(1184,'quiz','delay1','0'),(1185,'quiz','delay1_adv','1'),(1186,'quiz','delay1_locked',''),(1187,'quiz','delay2','0'),(1188,'quiz','delay2_adv','1'),(1189,'quiz','delay2_locked',''),(1190,'quiz','browsersecurity','-'),(1191,'quiz','browsersecurity_adv','1'),(1192,'quiz','browsersecurity_locked',''),(1193,'quiz','initialnumfeedbacks','2'),(1194,'quiz','autosaveperiod','60'),(1195,'quiz_statistics','getstatslocktimeout','900'),(1196,'quizaccess_seb','autoreconfigureseb','1'),(1197,'quizaccess_seb','showseblinks','seb,http'),(1198,'quizaccess_seb','downloadlink','https://safeexambrowser.org/download_en.html'),(1199,'quizaccess_seb','quizpasswordrequired','0'),(1200,'quizaccess_seb','displayblocksbeforestart','0'),(1201,'quizaccess_seb','displayblockswhenfinished','1'),(1202,'scorm','displaycoursestructure','0'),(1203,'scorm','displaycoursestructure_adv',''),(1204,'scorm','popup','0'),(1205,'scorm','popup_adv',''),(1206,'scorm','framewidth','100'),(1207,'scorm','framewidth_adv','1'),(1208,'scorm','frameheight','500'),(1209,'scorm','frameheight_adv','1'),(1210,'scorm','winoptgrp_adv','1'),(1211,'scorm','scrollbars','0'),(1212,'scorm','directories','0'),(1213,'scorm','location','0'),(1214,'scorm','menubar','0'),(1215,'scorm','toolbar','0'),(1216,'scorm','status','0'),(1217,'scorm','skipview','0'),(1218,'scorm','skipview_adv','1'),(1219,'scorm','hidebrowse','0'),(1220,'scorm','hidebrowse_adv','1'),(1221,'scorm','hidetoc','0'),(1222,'scorm','hidetoc_adv','1'),(1223,'scorm','nav','1'),(1224,'scorm','nav_adv','1'),(1225,'scorm','navpositionleft','-100'),(1226,'scorm','navpositionleft_adv','1'),(1227,'scorm','navpositiontop','-100'),(1228,'scorm','navpositiontop_adv','1'),(1229,'scorm','collapsetocwinsize','767'),(1230,'scorm','collapsetocwinsize_adv','1'),(1231,'scorm','displayattemptstatus','1'),(1232,'scorm','displayattemptstatus_adv',''),(1233,'scorm','grademethod','1'),(1234,'scorm','maxgrade','100'),(1235,'scorm','maxattempt','0'),(1236,'scorm','whatgrade','0'),(1237,'scorm','forcecompleted','0'),(1238,'scorm','forcenewattempt','0'),(1239,'scorm','autocommit','0'),(1240,'scorm','masteryoverride','1'),(1241,'scorm','lastattemptlock','0'),(1242,'scorm','auto','0'),(1243,'scorm','updatefreq','0'),(1244,'scorm','scormstandard','0'),(1245,'scorm','allowtypeexternal','0'),(1246,'scorm','allowtypelocalsync','0'),(1247,'scorm','allowtypeexternalaicc','0'),(1248,'scorm','allowaicchacp','0'),(1249,'scorm','aicchacptimeout','30'),(1250,'scorm','aicchacpkeepsessiondata','1'),(1251,'scorm','aiccuserid','1'),(1252,'scorm','forcejavascript','1'),(1253,'scorm','allowapidebug','0'),(1254,'scorm','apidebugmask','.*'),(1255,'scorm','protectpackagedownloads','0'),(1256,'label','dndmedia','1'),(1257,'label','dndresizewidth','400'),(1258,'label','dndresizeheight','400'),(1259,'url','framesize','130'),(1260,'url','secretphrase',''),(1261,'url','rolesinparams','0'),(1262,'url','displayoptions','0,1,5,6'),(1263,'url','printintro','1'),(1264,'url','display','0'),(1265,'url','popupwidth','620'),(1266,'url','popupheight','450'),(1267,'workshop','grade','80'),(1268,'workshop','gradinggrade','20'),(1269,'workshop','gradedecimals','0'),(1270,'workshop','maxbytes','0'),(1271,'workshop','strategy','accumulative'),(1272,'workshop','examplesmode','0'),(1273,'workshopallocation_random','numofreviews','5'),(1274,'workshopform_numerrors','grade0','No'),(1275,'workshopform_numerrors','grade1','Yes'),(1276,'workshopeval_best','comparison','5'),(1277,'tool_brickfield','analysistype','0'),(1278,'tool_brickfield','deletehistoricaldata','1'),(1279,'tool_brickfield','batch','1000'),(1280,'tool_brickfield','perpage','50'),(1281,'tool_recyclebin','coursebinenable','1'),(1282,'tool_recyclebin','coursebinexpiry','604800'),(1283,'tool_recyclebin','categorybinenable','1'),(1284,'tool_recyclebin','categorybinexpiry','604800'),(1285,'tool_recyclebin','autohide','1'),(1286,'antivirus_clamav','runningmethod','commandline'),(1287,'antivirus_clamav','pathtoclam',''),(1288,'antivirus_clamav','pathtounixsocket',''),(1289,'antivirus_clamav','tcpsockethost',''),(1290,'antivirus_clamav','tcpsocketport','3310'),(1291,'antivirus_clamav','clamfailureonupload','tryagain'),(1292,'antivirus_clamav','tries','1'),(1293,'auth_cas','auth_name','CAS'),(1294,'auth_cas','auth_logo',''),(1295,'auth_cas','hostname',''),(1296,'auth_cas','baseuri',''),(1297,'auth_cas','port','0'),(1298,'auth_cas','casversion','2.0'),(1299,'auth_cas','language','CAS_Languages_English'),(1300,'auth_cas','proxycas','0'),(1301,'auth_cas','logoutcas','0'),(1302,'auth_cas','multiauth','0'),(1303,'auth_cas','certificate_check','0'),(1304,'auth_cas','certificate_path',''),(1305,'auth_cas','curl_ssl_version',''),(1306,'auth_cas','logout_return_url',''),(1307,'auth_cas','host_url',''),(1308,'auth_cas','ldap_version','3'),(1309,'auth_cas','start_tls','0'),(1310,'auth_cas','ldapencoding','utf-8'),(1311,'auth_cas','pagesize','250'),(1312,'auth_cas','bind_dn',''),(1313,'auth_cas','bind_pw',''),(1314,'auth_cas','user_type','default'),(1315,'auth_cas','contexts',''),(1316,'auth_cas','search_sub','0'),(1317,'auth_cas','opt_deref','0'),(1318,'auth_cas','user_attribute',''),(1319,'auth_cas','memberattribute',''),(1320,'auth_cas','memberattribute_isdn','0'),(1321,'auth_cas','objectclass',''),(1322,'auth_cas','attrcreators',''),(1323,'auth_cas','groupecreators',''),(1324,'auth_cas','removeuser','0'),(1325,'auth_cas','field_map_firstname',''),(1326,'auth_cas','field_updatelocal_firstname','oncreate'),(1327,'auth_cas','field_updateremote_firstname','0'),(1328,'auth_cas','field_lock_firstname','unlocked'),(1329,'auth_cas','field_map_lastname',''),(1330,'auth_cas','field_updatelocal_lastname','oncreate'),(1331,'auth_cas','field_updateremote_lastname','0'),(1332,'auth_cas','field_lock_lastname','unlocked'),(1333,'auth_cas','field_map_email',''),(1334,'auth_cas','field_updatelocal_email','oncreate'),(1335,'auth_cas','field_updateremote_email','0'),(1336,'auth_cas','field_lock_email','unlocked'),(1337,'auth_cas','field_map_city',''),(1338,'auth_cas','field_updatelocal_city','oncreate'),(1339,'auth_cas','field_updateremote_city','0'),(1340,'auth_cas','field_lock_city','unlocked'),(1341,'auth_cas','field_map_country',''),(1342,'auth_cas','field_updatelocal_country','oncreate'),(1343,'auth_cas','field_updateremote_country','0'),(1344,'auth_cas','field_lock_country','unlocked'),(1345,'auth_cas','field_map_lang',''),(1346,'auth_cas','field_updatelocal_lang','oncreate'),(1347,'auth_cas','field_updateremote_lang','0'),(1348,'auth_cas','field_lock_lang','unlocked'),(1349,'auth_cas','field_map_description',''),(1350,'auth_cas','field_updatelocal_description','oncreate'),(1351,'auth_cas','field_updateremote_description','0'),(1352,'auth_cas','field_lock_description','unlocked'),(1353,'auth_cas','field_map_idnumber',''),(1354,'auth_cas','field_updatelocal_idnumber','oncreate'),(1355,'auth_cas','field_updateremote_idnumber','0'),(1356,'auth_cas','field_lock_idnumber','unlocked'),(1357,'auth_cas','field_map_institution',''),(1358,'auth_cas','field_updatelocal_institution','oncreate'),(1359,'auth_cas','field_updateremote_institution','0'),(1360,'auth_cas','field_lock_institution','unlocked'),(1361,'auth_cas','field_map_department',''),(1362,'auth_cas','field_updatelocal_department','oncreate'),(1363,'auth_cas','field_updateremote_department','0'),(1364,'auth_cas','field_lock_department','unlocked'),(1365,'auth_cas','field_map_phone1',''),(1366,'auth_cas','field_updatelocal_phone1','oncreate'),(1367,'auth_cas','field_updateremote_phone1','0'),(1368,'auth_cas','field_lock_phone1','unlocked'),(1369,'auth_cas','field_map_phone2',''),(1370,'auth_cas','field_updatelocal_phone2','oncreate'),(1371,'auth_cas','field_updateremote_phone2','0'),(1372,'auth_cas','field_lock_phone2','unlocked'),(1373,'auth_cas','field_map_address',''),(1374,'auth_cas','field_updatelocal_address','oncreate'),(1375,'auth_cas','field_updateremote_address','0'),(1376,'auth_cas','field_lock_address','unlocked'),(1377,'auth_cas','field_map_firstnamephonetic',''),(1378,'auth_cas','field_updatelocal_firstnamephonetic','oncreate'),(1379,'auth_cas','field_updateremote_firstnamephonetic','0'),(1380,'auth_cas','field_lock_firstnamephonetic','unlocked'),(1381,'auth_cas','field_map_lastnamephonetic',''),(1382,'auth_cas','field_updatelocal_lastnamephonetic','oncreate'),(1383,'auth_cas','field_updateremote_lastnamephonetic','0'),(1384,'auth_cas','field_lock_lastnamephonetic','unlocked'),(1385,'auth_cas','field_map_middlename',''),(1386,'auth_cas','field_updatelocal_middlename','oncreate'),(1387,'auth_cas','field_updateremote_middlename','0'),(1388,'auth_cas','field_lock_middlename','unlocked'),(1389,'auth_cas','field_map_alternatename',''),(1390,'auth_cas','field_updatelocal_alternatename','oncreate'),(1391,'auth_cas','field_updateremote_alternatename','0'),(1392,'auth_cas','field_lock_alternatename','unlocked'),(1393,'auth_email','recaptcha','0'),(1394,'auth_email','field_lock_firstname','unlocked'),(1395,'auth_email','field_lock_lastname','unlocked'),(1396,'auth_email','field_lock_email','unlocked'),(1397,'auth_email','field_lock_city','unlocked'),(1398,'auth_email','field_lock_country','unlocked'),(1399,'auth_email','field_lock_lang','unlocked'),(1400,'auth_email','field_lock_description','unlocked'),(1401,'auth_email','field_lock_idnumber','unlocked'),(1402,'auth_email','field_lock_institution','unlocked'),(1403,'auth_email','field_lock_department','unlocked'),(1404,'auth_email','field_lock_phone1','unlocked'),(1405,'auth_email','field_lock_phone2','unlocked'),(1406,'auth_email','field_lock_address','unlocked'),(1407,'auth_email','field_lock_firstnamephonetic','unlocked'),(1408,'auth_email','field_lock_lastnamephonetic','unlocked'),(1409,'auth_email','field_lock_middlename','unlocked'),(1410,'auth_email','field_lock_alternatename','unlocked'),(1411,'auth_db','host','127.0.0.1'),(1412,'auth_db','type','mysqli'),(1413,'auth_db','sybasequoting','0'),(1414,'auth_db','name',''),(1415,'auth_db','user',''),(1416,'auth_db','pass',''),(1417,'auth_db','table',''),(1418,'auth_db','fielduser',''),(1419,'auth_db','fieldpass',''),(1420,'auth_db','passtype','plaintext'),(1421,'auth_db','extencoding','utf-8'),(1422,'auth_db','setupsql',''),(1423,'auth_db','debugauthdb','0'),(1424,'auth_db','changepasswordurl',''),(1425,'auth_db','removeuser','0'),(1426,'auth_db','updateusers','0'),(1427,'auth_db','field_map_firstname',''),(1428,'auth_db','field_updatelocal_firstname','oncreate'),(1429,'auth_db','field_updateremote_firstname','0'),(1430,'auth_db','field_lock_firstname','unlocked'),(1431,'auth_db','field_map_lastname',''),(1432,'auth_db','field_updatelocal_lastname','oncreate'),(1433,'auth_db','field_updateremote_lastname','0'),(1434,'auth_db','field_lock_lastname','unlocked'),(1435,'auth_db','field_map_email',''),(1436,'auth_db','field_updatelocal_email','oncreate'),(1437,'auth_db','field_updateremote_email','0'),(1438,'auth_db','field_lock_email','unlocked'),(1439,'auth_db','field_map_city',''),(1440,'auth_db','field_updatelocal_city','oncreate'),(1441,'auth_db','field_updateremote_city','0'),(1442,'auth_db','field_lock_city','unlocked'),(1443,'auth_db','field_map_country',''),(1444,'auth_db','field_updatelocal_country','oncreate'),(1445,'auth_db','field_updateremote_country','0'),(1446,'auth_db','field_lock_country','unlocked'),(1447,'auth_db','field_map_lang',''),(1448,'auth_db','field_updatelocal_lang','oncreate'),(1449,'auth_db','field_updateremote_lang','0'),(1450,'auth_db','field_lock_lang','unlocked'),(1451,'auth_db','field_map_description',''),(1452,'auth_db','field_updatelocal_description','oncreate'),(1453,'auth_db','field_updateremote_description','0'),(1454,'auth_db','field_lock_description','unlocked'),(1455,'auth_db','field_map_idnumber',''),(1456,'auth_db','field_updatelocal_idnumber','oncreate'),(1457,'auth_db','field_updateremote_idnumber','0'),(1458,'auth_db','field_lock_idnumber','unlocked'),(1459,'auth_db','field_map_institution',''),(1460,'auth_db','field_updatelocal_institution','oncreate'),(1461,'auth_db','field_updateremote_institution','0'),(1462,'auth_db','field_lock_institution','unlocked'),(1463,'auth_db','field_map_department',''),(1464,'auth_db','field_updatelocal_department','oncreate'),(1465,'auth_db','field_updateremote_department','0'),(1466,'auth_db','field_lock_department','unlocked'),(1467,'auth_db','field_map_phone1',''),(1468,'auth_db','field_updatelocal_phone1','oncreate'),(1469,'auth_db','field_updateremote_phone1','0'),(1470,'auth_db','field_lock_phone1','unlocked'),(1471,'auth_db','field_map_phone2',''),(1472,'auth_db','field_updatelocal_phone2','oncreate'),(1473,'auth_db','field_updateremote_phone2','0'),(1474,'auth_db','field_lock_phone2','unlocked'),(1475,'auth_db','field_map_address',''),(1476,'auth_db','field_updatelocal_address','oncreate'),(1477,'auth_db','field_updateremote_address','0'),(1478,'auth_db','field_lock_address','unlocked'),(1479,'auth_db','field_map_firstnamephonetic',''),(1480,'auth_db','field_updatelocal_firstnamephonetic','oncreate'),(1481,'auth_db','field_updateremote_firstnamephonetic','0'),(1482,'auth_db','field_lock_firstnamephonetic','unlocked'),(1483,'auth_db','field_map_lastnamephonetic',''),(1484,'auth_db','field_updatelocal_lastnamephonetic','oncreate'),(1485,'auth_db','field_updateremote_lastnamephonetic','0'),(1486,'auth_db','field_lock_lastnamephonetic','unlocked'),(1487,'auth_db','field_map_middlename',''),(1488,'auth_db','field_updatelocal_middlename','oncreate'),(1489,'auth_db','field_updateremote_middlename','0'),(1490,'auth_db','field_lock_middlename','unlocked'),(1491,'auth_db','field_map_alternatename',''),(1492,'auth_db','field_updatelocal_alternatename','oncreate'),(1493,'auth_db','field_updateremote_alternatename','0'),(1494,'auth_db','field_lock_alternatename','unlocked'),(1495,'auth_ldap','host_url',''),(1496,'auth_ldap','ldap_version','3'),(1497,'auth_ldap','start_tls','0'),(1498,'auth_ldap','ldapencoding','utf-8'),(1499,'auth_ldap','pagesize','250'),(1500,'auth_ldap','preventpassindb','0'),(1501,'auth_ldap','bind_dn',''),(1502,'auth_ldap','bind_pw',''),(1503,'auth_ldap','user_type','default'),(1504,'auth_ldap','contexts',''),(1505,'auth_ldap','search_sub','0'),(1506,'auth_ldap','opt_deref','0'),(1507,'auth_ldap','user_attribute',''),(1508,'auth_ldap','suspended_attribute',''),(1509,'auth_ldap','memberattribute',''),(1510,'auth_ldap','memberattribute_isdn','0'),(1511,'auth_ldap','objectclass',''),(1512,'auth_ldap','forcechangepassword','0'),(1513,'auth_ldap','stdchangepassword','0'),(1514,'auth_ldap','passtype','plaintext'),(1515,'auth_ldap','changepasswordurl',''),(1516,'auth_ldap','expiration','0'),(1517,'auth_ldap','expiration_warning',''),(1518,'auth_ldap','expireattr',''),(1519,'auth_ldap','gracelogins','0'),(1520,'auth_ldap','graceattr',''),(1521,'auth_ldap','auth_user_create','0'),(1522,'auth_ldap','create_context',''),(1523,'auth_ldap','managercontext',''),(1524,'auth_ldap','coursecreatorcontext',''),(1525,'auth_ldap','removeuser','0'),(1526,'auth_ldap','sync_suspended','0'),(1527,'auth_ldap','ntlmsso_enabled','0'),(1528,'auth_ldap','ntlmsso_subnet',''),(1529,'auth_ldap','ntlmsso_ie_fastpath','0'),(1530,'auth_ldap','ntlmsso_type','ntlm'),(1531,'auth_ldap','ntlmsso_remoteuserformat',''),(1532,'auth_ldap','field_map_firstname',''),(1533,'auth_ldap','field_updatelocal_firstname','oncreate'),(1534,'auth_ldap','field_updateremote_firstname','0'),(1535,'auth_ldap','field_lock_firstname','unlocked'),(1536,'auth_ldap','field_map_lastname',''),(1537,'auth_ldap','field_updatelocal_lastname','oncreate'),(1538,'auth_ldap','field_updateremote_lastname','0'),(1539,'auth_ldap','field_lock_lastname','unlocked'),(1540,'auth_ldap','field_map_email',''),(1541,'auth_ldap','field_updatelocal_email','oncreate'),(1542,'auth_ldap','field_updateremote_email','0'),(1543,'auth_ldap','field_lock_email','unlocked'),(1544,'auth_ldap','field_map_city',''),(1545,'auth_ldap','field_updatelocal_city','oncreate'),(1546,'auth_ldap','field_updateremote_city','0'),(1547,'auth_ldap','field_lock_city','unlocked'),(1548,'auth_ldap','field_map_country',''),(1549,'auth_ldap','field_updatelocal_country','oncreate'),(1550,'auth_ldap','field_updateremote_country','0'),(1551,'auth_ldap','field_lock_country','unlocked'),(1552,'auth_ldap','field_map_lang',''),(1553,'auth_ldap','field_updatelocal_lang','oncreate'),(1554,'auth_ldap','field_updateremote_lang','0'),(1555,'auth_ldap','field_lock_lang','unlocked'),(1556,'auth_ldap','field_map_description',''),(1557,'auth_ldap','field_updatelocal_description','oncreate'),(1558,'auth_ldap','field_updateremote_description','0'),(1559,'auth_ldap','field_lock_description','unlocked'),(1560,'auth_ldap','field_map_idnumber',''),(1561,'auth_ldap','field_updatelocal_idnumber','oncreate'),(1562,'auth_ldap','field_updateremote_idnumber','0'),(1563,'auth_ldap','field_lock_idnumber','unlocked'),(1564,'auth_ldap','field_map_institution',''),(1565,'auth_ldap','field_updatelocal_institution','oncreate'),(1566,'auth_ldap','field_updateremote_institution','0'),(1567,'auth_ldap','field_lock_institution','unlocked'),(1568,'auth_ldap','field_map_department',''),(1569,'auth_ldap','field_updatelocal_department','oncreate'),(1570,'auth_ldap','field_updateremote_department','0'),(1571,'auth_ldap','field_lock_department','unlocked'),(1572,'auth_ldap','field_map_phone1',''),(1573,'auth_ldap','field_updatelocal_phone1','oncreate'),(1574,'auth_ldap','field_updateremote_phone1','0'),(1575,'auth_ldap','field_lock_phone1','unlocked'),(1576,'auth_ldap','field_map_phone2',''),(1577,'auth_ldap','field_updatelocal_phone2','oncreate'),(1578,'auth_ldap','field_updateremote_phone2','0'),(1579,'auth_ldap','field_lock_phone2','unlocked'),(1580,'auth_ldap','field_map_address',''),(1581,'auth_ldap','field_updatelocal_address','oncreate'),(1582,'auth_ldap','field_updateremote_address','0'),(1583,'auth_ldap','field_lock_address','unlocked'),(1584,'auth_ldap','field_map_firstnamephonetic',''),(1585,'auth_ldap','field_updatelocal_firstnamephonetic','oncreate'),(1586,'auth_ldap','field_updateremote_firstnamephonetic','0'),(1587,'auth_ldap','field_lock_firstnamephonetic','unlocked'),(1588,'auth_ldap','field_map_lastnamephonetic',''),(1589,'auth_ldap','field_updatelocal_lastnamephonetic','oncreate'),(1590,'auth_ldap','field_updateremote_lastnamephonetic','0'),(1591,'auth_ldap','field_lock_lastnamephonetic','unlocked'),(1592,'auth_ldap','field_map_middlename',''),(1593,'auth_ldap','field_updatelocal_middlename','oncreate'),(1594,'auth_ldap','field_updateremote_middlename','0'),(1595,'auth_ldap','field_lock_middlename','unlocked'),(1596,'auth_ldap','field_map_alternatename',''),(1597,'auth_ldap','field_updatelocal_alternatename','oncreate'),(1598,'auth_ldap','field_updateremote_alternatename','0'),(1599,'auth_ldap','field_lock_alternatename','unlocked'),(1600,'auth_manual','expiration','0'),(1601,'auth_manual','expirationtime','30'),(1602,'auth_manual','expiration_warning','0'),(1603,'auth_manual','field_lock_firstname','unlocked'),(1604,'auth_manual','field_lock_lastname','unlocked'),(1605,'auth_manual','field_lock_email','unlocked'),(1606,'auth_manual','field_lock_city','unlocked'),(1607,'auth_manual','field_lock_country','unlocked'),(1608,'auth_manual','field_lock_lang','unlocked'),(1609,'auth_manual','field_lock_description','unlocked'),(1610,'auth_manual','field_lock_idnumber','unlocked'),(1611,'auth_manual','field_lock_institution','unlocked'),(1612,'auth_manual','field_lock_department','unlocked'),(1613,'auth_manual','field_lock_phone1','unlocked'),(1614,'auth_manual','field_lock_phone2','unlocked'),(1615,'auth_manual','field_lock_address','unlocked'),(1616,'auth_manual','field_lock_firstnamephonetic','unlocked'),(1617,'auth_manual','field_lock_lastnamephonetic','unlocked'),(1618,'auth_manual','field_lock_middlename','unlocked'),(1619,'auth_manual','field_lock_alternatename','unlocked'),(1620,'auth_mnet','rpc_negotiation_timeout','30'),(1621,'auth_none','field_lock_firstname','unlocked'),(1622,'auth_none','field_lock_lastname','unlocked'),(1623,'auth_none','field_lock_email','unlocked'),(1624,'auth_none','field_lock_city','unlocked'),(1625,'auth_none','field_lock_country','unlocked'),(1626,'auth_none','field_lock_lang','unlocked'),(1627,'auth_none','field_lock_description','unlocked'),(1628,'auth_none','field_lock_idnumber','unlocked'),(1629,'auth_none','field_lock_institution','unlocked'),(1630,'auth_none','field_lock_department','unlocked'),(1631,'auth_none','field_lock_phone1','unlocked'),(1632,'auth_none','field_lock_phone2','unlocked'),(1633,'auth_none','field_lock_address','unlocked'),(1634,'auth_none','field_lock_firstnamephonetic','unlocked'),(1635,'auth_none','field_lock_lastnamephonetic','unlocked'),(1636,'auth_none','field_lock_middlename','unlocked'),(1637,'auth_none','field_lock_alternatename','unlocked'),(1638,'auth_oauth2','field_lock_firstname','unlocked'),(1639,'auth_oauth2','field_lock_lastname','unlocked'),(1640,'auth_oauth2','field_lock_email','unlocked'),(1641,'auth_oauth2','field_lock_city','unlocked'),(1642,'auth_oauth2','field_lock_country','unlocked'),(1643,'auth_oauth2','field_lock_lang','unlocked'),(1644,'auth_oauth2','field_lock_description','unlocked'),(1645,'auth_oauth2','field_lock_idnumber','unlocked'),(1646,'auth_oauth2','field_lock_institution','unlocked'),(1647,'auth_oauth2','field_lock_department','unlocked'),(1648,'auth_oauth2','field_lock_phone1','unlocked'),(1649,'auth_oauth2','field_lock_phone2','unlocked'),(1650,'auth_oauth2','field_lock_address','unlocked'),(1651,'auth_oauth2','field_lock_firstnamephonetic','unlocked'),(1652,'auth_oauth2','field_lock_lastnamephonetic','unlocked'),(1653,'auth_oauth2','field_lock_middlename','unlocked'),(1654,'auth_oauth2','field_lock_alternatename','unlocked'),(1655,'auth_shibboleth','user_attribute',''),(1656,'auth_shibboleth','convert_data',''),(1657,'auth_shibboleth','alt_login','off'),(1658,'auth_shibboleth','organization_selection','urn:mace:organization1:providerID, Example Organization 1\n        https://another.idp-id.com/shibboleth, Other Example Organization, /Shibboleth.sso/DS/SWITCHaai\n        urn:mace:organization2:providerID, Example Organization 2, /Shibboleth.sso/WAYF/SWITCHaai'),(1659,'auth_shibboleth','logout_handler',''),(1660,'auth_shibboleth','logout_return_url',''),(1661,'auth_shibboleth','login_name','Shibboleth Login'),(1662,'auth_shibboleth','auth_logo',''),(1663,'auth_shibboleth','auth_instructions','Use the <a href=\"http://127.0.0.1/auth/shibboleth/index.php\">Shibboleth login</a> to get access via Shibboleth, if your institution supports it. Otherwise, use the normal login form shown here.'),(1664,'auth_shibboleth','changepasswordurl',''),(1665,'auth_shibboleth','field_map_firstname',''),(1666,'auth_shibboleth','field_updatelocal_firstname','oncreate'),(1667,'auth_shibboleth','field_lock_firstname','unlocked'),(1668,'auth_shibboleth','field_map_lastname',''),(1669,'auth_shibboleth','field_updatelocal_lastname','oncreate'),(1670,'auth_shibboleth','field_lock_lastname','unlocked'),(1671,'auth_shibboleth','field_map_email',''),(1672,'auth_shibboleth','field_updatelocal_email','oncreate'),(1673,'auth_shibboleth','field_lock_email','unlocked'),(1674,'auth_shibboleth','field_map_city',''),(1675,'auth_shibboleth','field_updatelocal_city','oncreate'),(1676,'auth_shibboleth','field_lock_city','unlocked'),(1677,'auth_shibboleth','field_map_country',''),(1678,'auth_shibboleth','field_updatelocal_country','oncreate'),(1679,'auth_shibboleth','field_lock_country','unlocked'),(1680,'auth_shibboleth','field_map_lang',''),(1681,'auth_shibboleth','field_updatelocal_lang','oncreate'),(1682,'auth_shibboleth','field_lock_lang','unlocked'),(1683,'auth_shibboleth','field_map_description',''),(1684,'auth_shibboleth','field_updatelocal_description','oncreate'),(1685,'auth_shibboleth','field_lock_description','unlocked'),(1686,'auth_shibboleth','field_map_idnumber',''),(1687,'auth_shibboleth','field_updatelocal_idnumber','oncreate'),(1688,'auth_shibboleth','field_lock_idnumber','unlocked'),(1689,'auth_shibboleth','field_map_institution',''),(1690,'auth_shibboleth','field_updatelocal_institution','oncreate'),(1691,'auth_shibboleth','field_lock_institution','unlocked'),(1692,'auth_shibboleth','field_map_department',''),(1693,'auth_shibboleth','field_updatelocal_department','oncreate'),(1694,'auth_shibboleth','field_lock_department','unlocked'),(1695,'auth_shibboleth','field_map_phone1',''),(1696,'auth_shibboleth','field_updatelocal_phone1','oncreate'),(1697,'auth_shibboleth','field_lock_phone1','unlocked'),(1698,'auth_shibboleth','field_map_phone2',''),(1699,'auth_shibboleth','field_updatelocal_phone2','oncreate'),(1700,'auth_shibboleth','field_lock_phone2','unlocked'),(1701,'auth_shibboleth','field_map_address',''),(1702,'auth_shibboleth','field_updatelocal_address','oncreate'),(1703,'auth_shibboleth','field_lock_address','unlocked'),(1704,'auth_shibboleth','field_map_firstnamephonetic',''),(1705,'auth_shibboleth','field_updatelocal_firstnamephonetic','oncreate'),(1706,'auth_shibboleth','field_lock_firstnamephonetic','unlocked'),(1707,'auth_shibboleth','field_map_lastnamephonetic',''),(1708,'auth_shibboleth','field_updatelocal_lastnamephonetic','oncreate'),(1709,'auth_shibboleth','field_lock_lastnamephonetic','unlocked'),(1710,'auth_shibboleth','field_map_middlename',''),(1711,'auth_shibboleth','field_updatelocal_middlename','oncreate'),(1712,'auth_shibboleth','field_lock_middlename','unlocked'),(1713,'auth_shibboleth','field_map_alternatename',''),(1714,'auth_shibboleth','field_updatelocal_alternatename','oncreate'),(1715,'auth_shibboleth','field_lock_alternatename','unlocked'),(1716,'block_accessreview','whattoshow','showboth'),(1717,'block_accessreview','errordisplay','showint'),(1718,'block_accessreview','toolpage','errors'),(1719,'block_activity_results','config_showbest','3'),(1720,'block_activity_results','config_showbest_locked',''),(1721,'block_activity_results','config_showworst','0'),(1722,'block_activity_results','config_showworst_locked',''),(1723,'block_activity_results','config_usegroups','0'),(1724,'block_activity_results','config_usegroups_locked',''),(1725,'block_activity_results','config_nameformat','1'),(1726,'block_activity_results','config_nameformat_locked',''),(1727,'block_activity_results','config_gradeformat','1'),(1728,'block_activity_results','config_gradeformat_locked',''),(1729,'block_activity_results','config_decimalpoints','2'),(1730,'block_activity_results','config_decimalpoints_locked',''),(1731,'block_myoverview','displaycategories','1'),(1732,'block_myoverview','layouts','card,list,summary'),(1733,'block_myoverview','displaygroupingallincludinghidden','0'),(1734,'block_myoverview','displaygroupingall','1'),(1735,'block_myoverview','displaygroupinginprogress','1'),(1736,'block_myoverview','displaygroupingpast','1'),(1737,'block_myoverview','displaygroupingfuture','1'),(1738,'block_myoverview','displaygroupingcustomfield','0'),(1739,'block_myoverview','customfiltergrouping',''),(1740,'block_myoverview','displaygroupingfavourites','1'),(1741,'block_myoverview','displaygroupinghidden','1'),(1742,'block_recentlyaccessedcourses','displaycategories','1'),(1743,'block_section_links','numsections1','22'),(1744,'block_section_links','incby1','2'),(1745,'block_section_links','numsections2','40'),(1746,'block_section_links','incby2','5'),(1747,'block_section_links','showsectionname','0'),(1748,'block_starredcourses','displaycategories','1'),(1749,'block_tag_youtube','apikey',''),(1750,'format_singleactivity','activitytype','forum'),(1751,'format_topics','indentation','1'),(1752,'format_weeks','indentation','1'),(1753,'fileconverter_googledrive','issuerid',''),(1754,'enrol_cohort','roleid','5'),(1755,'enrol_cohort','unenrolaction','0'),(1756,'enrol_meta','nosyncroleids',''),(1757,'enrol_meta','syncall','1'),(1758,'enrol_meta','unenrolaction','3'),(1759,'enrol_meta','coursesort','sortorder'),(1760,'enrol_fee','expiredaction','3'),(1761,'enrol_fee','status','1'),(1762,'enrol_fee','cost','0'),(1763,'enrol_fee','currency','USD'),(1764,'enrol_fee','roleid','5'),(1765,'enrol_fee','enrolperiod','0'),(1766,'enrol_database','dbtype',''),(1767,'enrol_database','dbhost','localhost'),(1768,'enrol_database','dbuser',''),(1769,'enrol_database','dbpass',''),(1770,'enrol_database','dbname',''),(1771,'enrol_database','dbencoding','utf-8'),(1772,'enrol_database','dbsetupsql',''),(1773,'enrol_database','dbsybasequoting','0'),(1774,'enrol_database','debugdb','0'),(1775,'enrol_database','localcoursefield','idnumber'),(1776,'enrol_database','localuserfield','idnumber'),(1777,'enrol_database','localrolefield','shortname'),(1778,'enrol_database','localcategoryfield','id'),(1779,'enrol_database','remoteenroltable',''),(1780,'enrol_database','remotecoursefield',''),(1781,'enrol_database','remoteuserfield',''),(1782,'enrol_database','remoterolefield',''),(1783,'enrol_database','remoteotheruserfield',''),(1784,'enrol_database','defaultrole','5'),(1785,'enrol_database','ignorehiddencourses','0'),(1786,'enrol_database','unenrolaction','0'),(1787,'enrol_database','newcoursetable',''),(1788,'enrol_database','newcoursefullname','fullname'),(1789,'enrol_database','newcourseshortname','shortname'),(1790,'enrol_database','newcourseidnumber','idnumber'),(1791,'enrol_database','newcoursecategory',''),(1792,'enrol_database','defaultcategory','1'),(1793,'enrol_database','templatecourse',''),(1794,'enrol_flatfile','location',''),(1795,'enrol_flatfile','encoding','UTF-8'),(1796,'enrol_flatfile','mailstudents','0'),(1797,'enrol_flatfile','mailteachers','0'),(1798,'enrol_flatfile','mailadmins','0'),(1799,'enrol_flatfile','unenrolaction','3'),(1800,'enrol_flatfile','expiredaction','3'),(1801,'enrol_guest','requirepassword','0'),(1802,'enrol_guest','usepasswordpolicy','0'),(1803,'enrol_guest','showhint','0'),(1804,'enrol_guest','defaultenrol','1'),(1805,'enrol_guest','status','1'),(1806,'enrol_guest','status_adv',''),(1807,'enrol_imsenterprise','imsfilelocation',''),(1808,'enrol_imsenterprise','logtolocation',''),(1809,'enrol_imsenterprise','mailadmins','0'),(1810,'enrol_imsenterprise','createnewusers','0'),(1811,'enrol_imsenterprise','imsupdateusers','0'),(1812,'enrol_imsenterprise','imsdeleteusers','0'),(1813,'enrol_imsenterprise','fixcaseusernames','0'),(1814,'enrol_imsenterprise','fixcasepersonalnames','0'),(1815,'enrol_imsenterprise','imssourcedidfallback','0'),(1816,'enrol_imsenterprise','imsrolemap01','5'),(1817,'enrol_imsenterprise','imsrolemap02','3'),(1818,'enrol_imsenterprise','imsrolemap03','3'),(1819,'enrol_imsenterprise','imsrolemap04','5'),(1820,'enrol_imsenterprise','imsrolemap05','0'),(1821,'enrol_imsenterprise','imsrolemap06','4'),(1822,'enrol_imsenterprise','imsrolemap07','0'),(1823,'enrol_imsenterprise','imsrolemap08','4'),(1824,'enrol_imsenterprise','truncatecoursecodes','0'),(1825,'enrol_imsenterprise','createnewcourses','0'),(1826,'enrol_imsenterprise','updatecourses','0'),(1827,'enrol_imsenterprise','createnewcategories','0'),(1828,'enrol_imsenterprise','nestedcategories','0'),(1829,'enrol_imsenterprise','categoryidnumber','0'),(1830,'enrol_imsenterprise','categoryseparator',''),(1831,'enrol_imsenterprise','imsunenrol','0'),(1832,'enrol_imsenterprise','unenrolaction','0'),(1833,'enrol_imsenterprise','imscoursemapshortname','coursecode'),(1834,'enrol_imsenterprise','imscoursemapfullname','short'),(1835,'enrol_imsenterprise','imscoursemapsummary','ignore'),(1836,'enrol_imsenterprise','imsrestricttarget',''),(1837,'enrol_imsenterprise','imscapitafix','0'),(1838,'enrol_ldap','host_url',''),(1839,'enrol_ldap','start_tls','0'),(1840,'enrol_ldap','ldap_version','3'),(1841,'enrol_ldap','ldapencoding','utf-8'),(1842,'enrol_ldap','pagesize','250'),(1843,'enrol_ldap','bind_dn',''),(1844,'enrol_ldap','bind_pw',''),(1845,'enrol_ldap','course_search_sub','0'),(1846,'enrol_ldap','memberattribute_isdn','0'),(1847,'enrol_ldap','user_contexts',''),(1848,'enrol_ldap','user_search_sub','0'),(1849,'enrol_ldap','user_type','default'),(1850,'enrol_ldap','opt_deref','0'),(1851,'enrol_ldap','idnumber_attribute',''),(1852,'enrol_ldap','objectclass','(objectClass=*)'),(1853,'enrol_ldap','course_idnumber',''),(1854,'enrol_ldap','course_shortname',''),(1855,'enrol_ldap','course_fullname',''),(1856,'enrol_ldap','course_summary',''),(1857,'enrol_ldap','ignorehiddencourses','0'),(1858,'enrol_ldap','unenrolaction','0'),(1859,'enrol_ldap','autocreate','0'),(1860,'enrol_ldap','category','1'),(1861,'enrol_ldap','template',''),(1862,'enrol_ldap','course_shortname_updateonsync','0'),(1863,'enrol_ldap','course_fullname_updateonsync','0'),(1864,'enrol_ldap','course_summary_updateonsync','0'),(1865,'enrol_ldap','nested_groups','0'),(1866,'enrol_ldap','group_memberofattribute',''),(1867,'enrol_manual','expiredaction','1'),(1868,'enrol_manual','expirynotifyhour','6'),(1869,'enrol_manual','defaultenrol','1'),(1870,'enrol_manual','status','0'),(1871,'enrol_manual','roleid','5'),(1872,'enrol_manual','enrolstart','4'),(1873,'enrol_manual','enrolperiod','0'),(1874,'enrol_manual','expirynotify','0'),(1875,'enrol_manual','expirythreshold','86400'),(1876,'enrol_mnet','roleid','5'),(1877,'enrol_mnet','roleid_adv','1'),(1878,'enrol_paypal','paypalbusiness',''),(1879,'enrol_paypal','mailstudents','0'),(1880,'enrol_paypal','mailteachers','0'),(1881,'enrol_paypal','mailadmins','0'),(1882,'enrol_paypal','expiredaction','3'),(1883,'enrol_paypal','status','1'),(1884,'enrol_paypal','cost','0'),(1885,'enrol_paypal','currency','USD'),(1886,'enrol_paypal','roleid','5'),(1887,'enrol_paypal','enrolperiod','0'),(1888,'enrol_lti','emaildisplay','2'),(1889,'enrol_lti','city',''),(1890,'enrol_lti','country',''),(1891,'enrol_lti','timezone','99'),(1892,'enrol_lti','lang','en'),(1893,'enrol_lti','institution',''),(1894,'enrol_self','requirepassword','0'),(1895,'enrol_self','usepasswordpolicy','0'),(1896,'enrol_self','showhint','0'),(1897,'enrol_self','expiredaction','1'),(1898,'enrol_self','expirynotifyhour','6'),(1899,'enrol_self','defaultenrol','1'),(1900,'enrol_self','status','1'),(1901,'enrol_self','newenrols','1'),(1902,'enrol_self','groupkey','0'),(1903,'enrol_self','roleid','5'),(1904,'enrol_self','enrolperiod','0'),(1905,'enrol_self','expirynotify','0'),(1906,'enrol_self','expirythreshold','86400'),(1907,'enrol_self','longtimenosee','0'),(1908,'enrol_self','maxenrolled','0'),(1909,'enrol_self','sendcoursewelcomemessage','1'),(1910,'filter_urltolink','formats','1,4,0'),(1911,'filter_urltolink','embedimages','1'),(1912,'filter_emoticon','formats','1,4,0'),(1913,'filter_displayh5p','allowedsources',''),(1914,'filter_mathjaxloader','httpsurl','https://cdn.jsdelivr.net/npm/mathjax@2.7.9/MathJax.js'),(1915,'filter_mathjaxloader','texfiltercompatibility','0'),(1916,'filter_mathjaxloader','mathjaxconfig','\nMathJax.Hub.Config({\n    config: [\"Accessible.js\", \"Safe.js\"],\n    errorSettings: { message: [\"!\"] },\n    skipStartupTypeset: true,\n    messageStyle: \"none\"\n});\n'),(1917,'filter_mathjaxloader','additionaldelimiters',''),(1918,'filter_tex','latexpreamble','\\usepackage[latin1]{inputenc}\n\\usepackage{amsmath}\n\\usepackage{amsfonts}\n\\RequirePackage{amsmath,amssymb,latexsym}\n'),(1919,'filter_tex','latexbackground','#FFFFFF'),(1920,'filter_tex','density','120'),(1921,'filter_tex','pathlatex','c:\\texmf\\miktex\\bin\\latex.exe'),(1922,'filter_tex','pathdvips','c:\\texmf\\miktex\\bin\\dvips.exe'),(1923,'filter_tex','pathconvert','c:\\imagemagick\\convert.exe'),(1924,'filter_tex','pathdvisvgm','c:\\texmf\\miktex\\bin\\dvisvgm.exe'),(1925,'filter_tex','pathmimetex',''),(1926,'filter_tex','convertformat','gif'),(1927,'local_adminer','startwithdb','0'),(1928,'logstore_database','dbdriver',''),(1929,'logstore_database','dbhost',''),(1930,'logstore_database','dbuser',''),(1931,'logstore_database','dbpass',''),(1932,'logstore_database','dbname',''),(1933,'logstore_database','dbtable',''),(1934,'logstore_database','dbpersist','0'),(1935,'logstore_database','dbsocket',''),(1936,'logstore_database','dbport',''),(1937,'logstore_database','dbschema',''),(1938,'logstore_database','dbcollation',''),(1939,'logstore_database','dbhandlesoptions','0'),(1940,'logstore_database','buffersize','50'),(1941,'logstore_database','jsonformat','1'),(1942,'logstore_database','logguests','0'),(1943,'logstore_database','includelevels','1,2,0'),(1944,'logstore_database','includeactions','c,r,u,d'),(1945,'logstore_standard','logguests','1'),(1946,'logstore_standard','jsonformat','1'),(1947,'logstore_standard','loglifetime','0'),(1948,'logstore_standard','buffersize','50'),(1949,'mlbackend_python','useserver','0'),(1950,'mlbackend_python','host',''),(1951,'mlbackend_python','port','0'),(1952,'mlbackend_python','secure','0'),(1953,'mlbackend_python','username','default'),(1954,'mlbackend_python','password',''),(1955,'media_videojs','videoextensions','html_video,media_source,.f4v,.flv'),(1956,'media_videojs','audioextensions','html_audio'),(1957,'media_videojs','youtube','1'),(1958,'media_videojs','videocssclass','video-js'),(1959,'media_videojs','audiocssclass','video-js'),(1960,'media_videojs','limitsize','1'),(1961,'paygw_paypal','surcharge','0'),(1962,'qtype_multichoice','answerhowmany','1'),(1963,'qtype_multichoice','shuffleanswers','1'),(1964,'qtype_multichoice','answernumbering','abc'),(1965,'qtype_multichoice','showstandardinstruction','0'),(1966,'editor_atto','toolbar','collapse = collapse\nstyle1 = title, bold, italic\nlist = unorderedlist, orderedlist, indent\nlinks = link\nfiles = emojipicker, image, media, recordrtc, managefiles, h5p\naccessibility = accessibilitychecker, accessibilityhelper\nstyle2 = underline, strike, subscript, superscript\nalign = align\ninsert = equation, charmap, table, clear\nundo = undo\nother = html'),(1967,'editor_atto','autosavefrequency','60'),(1968,'atto_collapse','showgroups','6'),(1969,'atto_equation','librarygroup1','\n\\cdot\n\\times\n\\ast\n\\div\n\\diamond\n\\pm\n\\mp\n\\oplus\n\\ominus\n\\otimes\n\\oslash\n\\odot\n\\circ\n\\bullet\n\\asymp\n\\equiv\n\\subseteq\n\\supseteq\n\\leq\n\\geq\n\\preceq\n\\succeq\n\\sim\n\\simeq\n\\approx\n\\subset\n\\supset\n\\ll\n\\gg\n\\prec\n\\succ\n\\infty\n\\in\n\\ni\n\\forall\n\\exists\n\\neq\n'),(1970,'atto_equation','librarygroup2','\n\\leftarrow\n\\rightarrow\n\\uparrow\n\\downarrow\n\\leftrightarrow\n\\nearrow\n\\searrow\n\\swarrow\n\\nwarrow\n\\Leftarrow\n\\Rightarrow\n\\Uparrow\n\\Downarrow\n\\Leftrightarrow\n'),(1971,'atto_equation','librarygroup3','\n\\alpha\n\\beta\n\\gamma\n\\delta\n\\epsilon\n\\zeta\n\\eta\n\\theta\n\\iota\n\\kappa\n\\lambda\n\\mu\n\\nu\n\\xi\n\\pi\n\\rho\n\\sigma\n\\tau\n\\upsilon\n\\phi\n\\chi\n\\psi\n\\omega\n\\Gamma\n\\Delta\n\\Theta\n\\Lambda\n\\Xi\n\\Pi\n\\Sigma\n\\Upsilon\n\\Phi\n\\Psi\n\\Omega\n'),(1972,'atto_equation','librarygroup4','\n\\sum{a,b}\n\\sqrt[a]{b+c}\n\\int_{a}^{b}{c}\n\\iint_{a}^{b}{c}\n\\iiint_{a}^{b}{c}\n\\oint{a}\n(a)\n[a]\n\\lbrace{a}\\rbrace\n\\left| \\begin{matrix} a_1 & a_2 \\\\ a_3 & a_4 \\end{matrix} \\right|\n\\frac{a}{b+c}\n\\vec{a}\n\\binom {a} {b}\n{a \\brack b}\n{a \\brace b}\n'),(1973,'atto_recordrtc','allowedtypes','both'),(1974,'atto_recordrtc','audiobitrate','128000'),(1975,'atto_recordrtc','videobitrate','2500000'),(1976,'atto_recordrtc','audiotimelimit','120'),(1977,'atto_recordrtc','videotimelimit','120'),(1978,'atto_table','allowborders','0'),(1979,'atto_table','allowbackgroundcolour','0'),(1980,'atto_table','allowwidth','0'),(1981,'editor_tiny','branding','1'),(1982,'tiny_equation','librarygroup1','\n\\cdot\n\\times\n\\ast\n\\div\n\\diamond\n\\pm\n\\mp\n\\oplus\n\\ominus\n\\otimes\n\\oslash\n\\odot\n\\circ\n\\bullet\n\\asymp\n\\equiv\n\\subseteq\n\\supseteq\n\\leq\n\\geq\n\\preceq\n\\succeq\n\\sim\n\\simeq\n\\approx\n\\subset\n\\supset\n\\ll\n\\gg\n\\prec\n\\succ\n\\infty\n\\in\n\\ni\n\\forall\n\\exists\n\\neq\n'),(1983,'tiny_equation','librarygroup2','\n\\leftarrow\n\\rightarrow\n\\uparrow\n\\downarrow\n\\leftrightarrow\n\\nearrow\n\\searrow\n\\swarrow\n\\nwarrow\n\\Leftarrow\n\\Rightarrow\n\\Uparrow\n\\Downarrow\n\\Leftrightarrow\n'),(1984,'tiny_equation','librarygroup3','\n\\alpha\n\\beta\n\\gamma\n\\delta\n\\epsilon\n\\zeta\n\\eta\n\\theta\n\\iota\n\\kappa\n\\lambda\n\\mu\n\\nu\n\\xi\n\\pi\n\\rho\n\\sigma\n\\tau\n\\upsilon\n\\phi\n\\chi\n\\psi\n\\omega\n\\Gamma\n\\Delta\n\\Theta\n\\Lambda\n\\Xi\n\\Pi\n\\Sigma\n\\Upsilon\n\\Phi\n\\Psi\n\\Omega\n'),(1985,'tiny_equation','librarygroup4','\n\\sum{a,b}\n\\sqrt[a]{b+c}\n\\int_{a}^{b}{c}\n\\iint_{a}^{b}{c}\n\\iiint_{a}^{b}{c}\n\\oint{a}\n(a)\n[a]\n\\lbrace{a}\\rbrace\n\\left| \\begin{matrix} a_1 & a_2 \\\\ a_3 & a_4 \\end{matrix} \\right|\n\\frac{a}{b+c}\n\\vec{a}\n\\binom {a} {b}\n{a \\brack b}\n{a \\brace b}\n'),(1986,'tiny_recordrtc','allowedtypes','both'),(1987,'tiny_recordrtc','audiobitrate','128000'),(1988,'tiny_recordrtc','videobitrate','2500000'),(1989,'tiny_recordrtc','audiotimelimit','120'),(1990,'tiny_recordrtc','videotimelimit','120'),(1991,'tool_mobile','apppolicy',''),(1992,'tool_mobile','typeoflogin','1'),(1993,'tool_mobile','qrcodetype','1'),(1994,'tool_mobile','qrkeyttl','600'),(1995,'tool_mobile','qrsameipcheck','1'),(1996,'tool_mobile','forcedurlscheme','moodlemobile'),(1997,'tool_mobile','minimumversion',''),(1998,'tool_mobile','autologinmintimebetweenreq','360'),(1999,'tool_mobile','enablesmartappbanners','0'),(2000,'tool_mobile','iosappid','633359593'),(2001,'tool_mobile','androidappid','com.moodle.moodlemobile'),(2002,'tool_mobile','setuplink','https://download.moodle.org/mobile'),(2003,'tool_mobile','forcelogout','0'),(2004,'tool_mobile','disabledfeatures',''),(2005,'tool_mobile','custommenuitems',''),(2006,'tool_mobile','filetypeexclusionlist',''),(2007,'tool_mobile','customlangstrings',''),(2008,'tool_moodlenet','defaultmoodlenetname','MoodleNet Central'),(2009,'tool_moodlenet','defaultmoodlenet','https://moodle.net');
/*!40000 ALTER TABLE `mdl_config_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_contentbank_content`
--

DROP TABLE IF EXISTS `mdl_contentbank_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_contentbank_content` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contenttype` varchar(100) NOT NULL DEFAULT '',
  `contextid` bigint(10) NOT NULL,
  `visibility` tinyint(1) NOT NULL DEFAULT 1,
  `instanceid` bigint(10) DEFAULT NULL,
  `configdata` longtext DEFAULT NULL,
  `usercreated` bigint(10) NOT NULL,
  `usermodified` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_contcont_nam_ix` (`name`),
  KEY `mdl_contcont_conconins_ix` (`contextid`,`contenttype`,`instanceid`),
  KEY `mdl_contcont_con_ix` (`contextid`),
  KEY `mdl_contcont_use_ix` (`usermodified`),
  KEY `mdl_contcont_use2_ix` (`usercreated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='This table stores content data in the content bank.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_contentbank_content`
--

LOCK TABLES `mdl_contentbank_content` WRITE;
/*!40000 ALTER TABLE `mdl_contentbank_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_contentbank_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_context`
--

DROP TABLE IF EXISTS `mdl_context`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_context` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextlevel` bigint(10) NOT NULL DEFAULT 0,
  `instanceid` bigint(10) NOT NULL DEFAULT 0,
  `path` varchar(255) DEFAULT NULL,
  `depth` tinyint(2) NOT NULL DEFAULT 0,
  `locked` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_cont_conins_uix` (`contextlevel`,`instanceid`),
  KEY `mdl_cont_ins_ix` (`instanceid`),
  KEY `mdl_cont_pat_ix` (`path`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='one of these must be set';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_context`
--

LOCK TABLES `mdl_context` WRITE;
/*!40000 ALTER TABLE `mdl_context` DISABLE KEYS */;
INSERT INTO `mdl_context` VALUES (1,10,0,'/1',1,0),(2,50,1,'/1/2',2,0),(3,40,1,'/1/3',2,0),(4,30,1,'/1/4',2,0),(5,30,2,'/1/5',2,0),(6,80,1,'/1/6',2,0),(7,80,2,'/1/7',2,0),(8,80,3,'/1/8',2,0),(9,80,4,'/1/9',2,0),(10,80,5,'/1/10',2,0),(11,80,6,'/1/5/11',3,0),(12,80,7,'/1/5/12',3,0),(13,80,8,'/1/5/13',3,0),(14,50,2,'/1/3/14',3,0),(15,70,1,'/1/3/14/15',4,0),(16,30,3,'/1/16',2,0),(17,30,4,'/1/17',2,0),(18,30,5,'/1/18',2,0);
/*!40000 ALTER TABLE `mdl_context` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_context_temp`
--

DROP TABLE IF EXISTS `mdl_context_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_context_temp` (
  `id` bigint(10) NOT NULL,
  `path` varchar(255) NOT NULL DEFAULT '',
  `depth` tinyint(2) NOT NULL,
  `locked` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Used by build_context_path() in upgrade and cron to keep con';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_context_temp`
--

LOCK TABLES `mdl_context_temp` WRITE;
/*!40000 ALTER TABLE `mdl_context_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_context_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course`
--

DROP TABLE IF EXISTS `mdl_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_course` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `category` bigint(10) NOT NULL DEFAULT 0,
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  `fullname` varchar(254) NOT NULL DEFAULT '',
  `shortname` varchar(255) NOT NULL DEFAULT '',
  `idnumber` varchar(100) NOT NULL DEFAULT '',
  `summary` longtext DEFAULT NULL,
  `summaryformat` tinyint(2) NOT NULL DEFAULT 0,
  `format` varchar(21) NOT NULL DEFAULT 'topics',
  `showgrades` tinyint(2) NOT NULL DEFAULT 1,
  `newsitems` mediumint(5) NOT NULL DEFAULT 1,
  `startdate` bigint(10) NOT NULL DEFAULT 0,
  `enddate` bigint(10) NOT NULL DEFAULT 0,
  `relativedatesmode` tinyint(1) NOT NULL DEFAULT 0,
  `marker` bigint(10) NOT NULL DEFAULT 0,
  `maxbytes` bigint(10) NOT NULL DEFAULT 0,
  `legacyfiles` smallint(4) NOT NULL DEFAULT 0,
  `showreports` smallint(4) NOT NULL DEFAULT 0,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `visibleold` tinyint(1) NOT NULL DEFAULT 1,
  `downloadcontent` tinyint(1) DEFAULT NULL,
  `groupmode` smallint(4) NOT NULL DEFAULT 0,
  `groupmodeforce` smallint(4) NOT NULL DEFAULT 0,
  `defaultgroupingid` bigint(10) NOT NULL DEFAULT 0,
  `lang` varchar(30) NOT NULL DEFAULT '',
  `calendartype` varchar(30) NOT NULL DEFAULT '',
  `theme` varchar(50) NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `requested` tinyint(1) NOT NULL DEFAULT 0,
  `enablecompletion` tinyint(1) NOT NULL DEFAULT 0,
  `completionnotify` tinyint(1) NOT NULL DEFAULT 0,
  `cacherev` bigint(10) NOT NULL DEFAULT 0,
  `originalcourseid` bigint(10) DEFAULT NULL,
  `showactivitydates` tinyint(1) NOT NULL DEFAULT 0,
  `showcompletionconditions` tinyint(1) DEFAULT NULL,
  `pdfexportfont` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_cour_cat_ix` (`category`),
  KEY `mdl_cour_idn_ix` (`idnumber`),
  KEY `mdl_cour_sho_ix` (`shortname`),
  KEY `mdl_cour_sor_ix` (`sortorder`),
  KEY `mdl_cour_ori_ix` (`originalcourseid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Central course table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course`
--

LOCK TABLES `mdl_course` WRITE;
/*!40000 ALTER TABLE `mdl_course` DISABLE KEYS */;
INSERT INTO `mdl_course` VALUES (1,0,1,'entorno de prueba','entorno','','',0,'site',1,3,0,0,0,0,0,0,0,1,1,NULL,0,0,0,'','','',1705738650,1705739328,0,0,0,1705738979,NULL,0,NULL,NULL),(2,1,10001,'Curso de prueba 01','prueba 01 ','','',1,'topics',1,5,1705813200,1737349200,0,0,0,0,0,1,1,NULL,0,0,0,'','','',1705739444,1705739444,0,1,0,1705739450,NULL,1,1,NULL);
/*!40000 ALTER TABLE `mdl_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_categories`
--

DROP TABLE IF EXISTS `mdl_course_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_course_categories` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `idnumber` varchar(100) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT 0,
  `parent` bigint(10) NOT NULL DEFAULT 0,
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  `coursecount` bigint(10) NOT NULL DEFAULT 0,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `visibleold` tinyint(1) NOT NULL DEFAULT 1,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `depth` bigint(10) NOT NULL DEFAULT 0,
  `path` varchar(255) NOT NULL DEFAULT '',
  `theme` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_courcate_par_ix` (`parent`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Course categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_categories`
--

LOCK TABLES `mdl_course_categories` WRITE;
/*!40000 ALTER TABLE `mdl_course_categories` DISABLE KEYS */;
INSERT INTO `mdl_course_categories` VALUES (1,'Category 1',NULL,NULL,1,0,10000,1,1,1,1705738650,1,'/1',NULL);
/*!40000 ALTER TABLE `mdl_course_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_completion_aggr_methd`
--

DROP TABLE IF EXISTS `mdl_course_completion_aggr_methd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_course_completion_aggr_methd` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `criteriatype` bigint(10) DEFAULT NULL,
  `method` tinyint(1) NOT NULL DEFAULT 0,
  `value` decimal(10,5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_courcompaggrmeth_coucr_uix` (`course`,`criteriatype`),
  KEY `mdl_courcompaggrmeth_cou_ix` (`course`),
  KEY `mdl_courcompaggrmeth_cri_ix` (`criteriatype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Course completion aggregation methods for criteria';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_completion_aggr_methd`
--

LOCK TABLES `mdl_course_completion_aggr_methd` WRITE;
/*!40000 ALTER TABLE `mdl_course_completion_aggr_methd` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_completion_aggr_methd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_completion_crit_compl`
--

DROP TABLE IF EXISTS `mdl_course_completion_crit_compl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_course_completion_crit_compl` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `criteriaid` bigint(10) NOT NULL DEFAULT 0,
  `gradefinal` decimal(10,5) DEFAULT NULL,
  `unenroled` bigint(10) DEFAULT NULL,
  `timecompleted` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_courcompcritcomp_useco_uix` (`userid`,`course`,`criteriaid`),
  KEY `mdl_courcompcritcomp_use_ix` (`userid`),
  KEY `mdl_courcompcritcomp_cou_ix` (`course`),
  KEY `mdl_courcompcritcomp_cri_ix` (`criteriaid`),
  KEY `mdl_courcompcritcomp_tim_ix` (`timecompleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Course completion user records';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_completion_crit_compl`
--

LOCK TABLES `mdl_course_completion_crit_compl` WRITE;
/*!40000 ALTER TABLE `mdl_course_completion_crit_compl` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_completion_crit_compl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_completion_criteria`
--

DROP TABLE IF EXISTS `mdl_course_completion_criteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_course_completion_criteria` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `criteriatype` bigint(10) NOT NULL DEFAULT 0,
  `module` varchar(100) DEFAULT NULL,
  `moduleinstance` bigint(10) DEFAULT NULL,
  `courseinstance` bigint(10) DEFAULT NULL,
  `enrolperiod` bigint(10) DEFAULT NULL,
  `timeend` bigint(10) DEFAULT NULL,
  `gradepass` decimal(10,5) DEFAULT NULL,
  `role` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_courcompcrit_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Course completion criteria';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_completion_criteria`
--

LOCK TABLES `mdl_course_completion_criteria` WRITE;
/*!40000 ALTER TABLE `mdl_course_completion_criteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_completion_criteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_completion_defaults`
--

DROP TABLE IF EXISTS `mdl_course_completion_defaults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_course_completion_defaults` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL,
  `module` bigint(10) NOT NULL,
  `completion` tinyint(1) NOT NULL DEFAULT 0,
  `completionview` tinyint(1) NOT NULL DEFAULT 0,
  `completionusegrade` tinyint(1) NOT NULL DEFAULT 0,
  `completionpassgrade` tinyint(1) NOT NULL DEFAULT 0,
  `completionexpected` bigint(10) NOT NULL DEFAULT 0,
  `customrules` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_courcompdefa_coumod_uix` (`course`,`module`),
  KEY `mdl_courcompdefa_mod_ix` (`module`),
  KEY `mdl_courcompdefa_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Default settings for activities completion';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_completion_defaults`
--

LOCK TABLES `mdl_course_completion_defaults` WRITE;
/*!40000 ALTER TABLE `mdl_course_completion_defaults` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_completion_defaults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_completions`
--

DROP TABLE IF EXISTS `mdl_course_completions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_course_completions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `timeenrolled` bigint(10) NOT NULL DEFAULT 0,
  `timestarted` bigint(10) NOT NULL DEFAULT 0,
  `timecompleted` bigint(10) DEFAULT NULL,
  `reaggregate` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_courcomp_usecou_uix` (`userid`,`course`),
  KEY `mdl_courcomp_use_ix` (`userid`),
  KEY `mdl_courcomp_cou_ix` (`course`),
  KEY `mdl_courcomp_tim_ix` (`timecompleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Course completion records';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_completions`
--

LOCK TABLES `mdl_course_completions` WRITE;
/*!40000 ALTER TABLE `mdl_course_completions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_completions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_format_options`
--

DROP TABLE IF EXISTS `mdl_course_format_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_course_format_options` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `format` varchar(21) NOT NULL DEFAULT '',
  `sectionid` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(100) NOT NULL DEFAULT '',
  `value` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_courformopti_couforsec_uix` (`courseid`,`format`,`sectionid`,`name`),
  KEY `mdl_courformopti_cou_ix` (`courseid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores format-specific options for the course or course sect';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_format_options`
--

LOCK TABLES `mdl_course_format_options` WRITE;
/*!40000 ALTER TABLE `mdl_course_format_options` DISABLE KEYS */;
INSERT INTO `mdl_course_format_options` VALUES (1,1,'site',0,'numsections','1'),(2,2,'topics',0,'hiddensections','1'),(3,2,'topics',0,'coursedisplay','0');
/*!40000 ALTER TABLE `mdl_course_format_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_modules`
--

DROP TABLE IF EXISTS `mdl_course_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_course_modules` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `module` bigint(10) NOT NULL DEFAULT 0,
  `instance` bigint(10) NOT NULL DEFAULT 0,
  `section` bigint(10) NOT NULL DEFAULT 0,
  `idnumber` varchar(100) DEFAULT NULL,
  `added` bigint(10) NOT NULL DEFAULT 0,
  `score` smallint(4) NOT NULL DEFAULT 0,
  `indent` mediumint(5) NOT NULL DEFAULT 0,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `visibleoncoursepage` tinyint(1) NOT NULL DEFAULT 1,
  `visibleold` tinyint(1) NOT NULL DEFAULT 1,
  `groupmode` smallint(4) NOT NULL DEFAULT 0,
  `groupingid` bigint(10) NOT NULL DEFAULT 0,
  `completion` tinyint(1) NOT NULL DEFAULT 0,
  `completiongradeitemnumber` bigint(10) DEFAULT NULL,
  `completionview` tinyint(1) NOT NULL DEFAULT 0,
  `completionexpected` bigint(10) NOT NULL DEFAULT 0,
  `completionpassgrade` tinyint(1) NOT NULL DEFAULT 0,
  `showdescription` tinyint(1) NOT NULL DEFAULT 0,
  `availability` longtext DEFAULT NULL,
  `deletioninprogress` tinyint(1) NOT NULL DEFAULT 0,
  `downloadcontent` tinyint(1) DEFAULT 1,
  `lang` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_courmodu_vis_ix` (`visible`),
  KEY `mdl_courmodu_cou_ix` (`course`),
  KEY `mdl_courmodu_mod_ix` (`module`),
  KEY `mdl_courmodu_ins_ix` (`instance`),
  KEY `mdl_courmodu_idncou_ix` (`idnumber`,`course`),
  KEY `mdl_courmodu_gro_ix` (`groupingid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='course_modules table retrofitted from MySQL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_modules`
--

LOCK TABLES `mdl_course_modules` WRITE;
/*!40000 ALTER TABLE `mdl_course_modules` DISABLE KEYS */;
INSERT INTO `mdl_course_modules` VALUES (1,2,9,1,1,NULL,1705739444,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1,NULL);
/*!40000 ALTER TABLE `mdl_course_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_modules_completion`
--

DROP TABLE IF EXISTS `mdl_course_modules_completion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_course_modules_completion` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `coursemoduleid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `completionstate` tinyint(1) NOT NULL,
  `overrideby` bigint(10) DEFAULT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_courmoducomp_usecou_uix` (`userid`,`coursemoduleid`),
  KEY `mdl_courmoducomp_cou_ix` (`coursemoduleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores the completion state (completed or not completed, etc';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_modules_completion`
--

LOCK TABLES `mdl_course_modules_completion` WRITE;
/*!40000 ALTER TABLE `mdl_course_modules_completion` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_modules_completion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_modules_viewed`
--

DROP TABLE IF EXISTS `mdl_course_modules_viewed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_course_modules_viewed` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `coursemoduleid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_courmoduview_usecou_uix` (`userid`,`coursemoduleid`),
  KEY `mdl_courmoduview_cou_ix` (`coursemoduleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Tracks the completion viewed (viewed with cmid/userid and ot';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_modules_viewed`
--

LOCK TABLES `mdl_course_modules_viewed` WRITE;
/*!40000 ALTER TABLE `mdl_course_modules_viewed` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_modules_viewed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_published`
--

DROP TABLE IF EXISTS `mdl_course_published`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_course_published` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `huburl` varchar(255) DEFAULT NULL,
  `courseid` bigint(10) NOT NULL,
  `timepublished` bigint(10) NOT NULL,
  `enrollable` tinyint(1) NOT NULL DEFAULT 1,
  `hubcourseid` bigint(10) NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `timechecked` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_courpubl_hub_ix` (`hubcourseid`),
  KEY `mdl_courpubl_cou_ix` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Information about how and when an local courses were publish';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_published`
--

LOCK TABLES `mdl_course_published` WRITE;
/*!40000 ALTER TABLE `mdl_course_published` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_published` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_request`
--

DROP TABLE IF EXISTS `mdl_course_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_course_request` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(254) NOT NULL DEFAULT '',
  `shortname` varchar(100) NOT NULL DEFAULT '',
  `summary` longtext NOT NULL,
  `summaryformat` tinyint(2) NOT NULL DEFAULT 0,
  `category` bigint(10) NOT NULL DEFAULT 0,
  `reason` longtext NOT NULL,
  `requester` bigint(10) NOT NULL DEFAULT 0,
  `password` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_courrequ_sho_ix` (`shortname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='course requests';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_request`
--

LOCK TABLES `mdl_course_request` WRITE;
/*!40000 ALTER TABLE `mdl_course_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_course_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_course_sections`
--

DROP TABLE IF EXISTS `mdl_course_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_course_sections` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `section` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `summary` longtext DEFAULT NULL,
  `summaryformat` tinyint(2) NOT NULL DEFAULT 0,
  `sequence` longtext DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `availability` longtext DEFAULT NULL,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_coursect_cousec_uix` (`course`,`section`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='to define the sections for each course';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_course_sections`
--

LOCK TABLES `mdl_course_sections` WRITE;
/*!40000 ALTER TABLE `mdl_course_sections` DISABLE KEYS */;
INSERT INTO `mdl_course_sections` VALUES (1,2,0,NULL,'',1,'1',1,NULL,1705739444),(2,2,1,NULL,'',1,'',1,NULL,1705739444),(3,2,2,NULL,'',1,'',1,NULL,1705739444),(4,2,3,NULL,'',1,'',1,NULL,1705739444),(5,2,4,NULL,'',1,'',1,NULL,1705739444);
/*!40000 ALTER TABLE `mdl_course_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_customfield_category`
--

DROP TABLE IF EXISTS `mdl_customfield_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_customfield_category` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) NOT NULL DEFAULT '',
  `description` longtext DEFAULT NULL,
  `descriptionformat` bigint(10) DEFAULT NULL,
  `sortorder` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `component` varchar(100) NOT NULL DEFAULT '',
  `area` varchar(100) NOT NULL DEFAULT '',
  `itemid` bigint(10) NOT NULL DEFAULT 0,
  `contextid` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_custcate_comareitesor_ix` (`component`,`area`,`itemid`,`sortorder`),
  KEY `mdl_custcate_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='core_customfield category table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_customfield_category`
--

LOCK TABLES `mdl_customfield_category` WRITE;
/*!40000 ALTER TABLE `mdl_customfield_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_customfield_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_customfield_data`
--

DROP TABLE IF EXISTS `mdl_customfield_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_customfield_data` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `fieldid` bigint(10) NOT NULL,
  `instanceid` bigint(10) NOT NULL,
  `intvalue` bigint(10) DEFAULT NULL,
  `decvalue` decimal(10,5) DEFAULT NULL,
  `shortcharvalue` varchar(255) DEFAULT NULL,
  `charvalue` varchar(1333) DEFAULT NULL,
  `value` longtext NOT NULL,
  `valueformat` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `contextid` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_custdata_insfie_uix` (`instanceid`,`fieldid`),
  KEY `mdl_custdata_fieint_ix` (`fieldid`,`intvalue`),
  KEY `mdl_custdata_fiesho_ix` (`fieldid`,`shortcharvalue`),
  KEY `mdl_custdata_fiedec_ix` (`fieldid`,`decvalue`),
  KEY `mdl_custdata_fie_ix` (`fieldid`),
  KEY `mdl_custdata_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='core_customfield data table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_customfield_data`
--

LOCK TABLES `mdl_customfield_data` WRITE;
/*!40000 ALTER TABLE `mdl_customfield_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_customfield_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_customfield_field`
--

DROP TABLE IF EXISTS `mdl_customfield_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_customfield_field` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `shortname` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(400) NOT NULL DEFAULT '',
  `type` varchar(100) NOT NULL DEFAULT '',
  `description` longtext DEFAULT NULL,
  `descriptionformat` bigint(10) DEFAULT NULL,
  `sortorder` bigint(10) DEFAULT NULL,
  `categoryid` bigint(10) DEFAULT NULL,
  `configdata` longtext DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_custfiel_catsor_ix` (`categoryid`,`sortorder`),
  KEY `mdl_custfiel_cat_ix` (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='core_customfield field table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_customfield_field`
--

LOCK TABLES `mdl_customfield_field` WRITE;
/*!40000 ALTER TABLE `mdl_customfield_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_customfield_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_data`
--

DROP TABLE IF EXISTS `mdl_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_data` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` longtext NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `comments` smallint(4) NOT NULL DEFAULT 0,
  `timeavailablefrom` bigint(10) NOT NULL DEFAULT 0,
  `timeavailableto` bigint(10) NOT NULL DEFAULT 0,
  `timeviewfrom` bigint(10) NOT NULL DEFAULT 0,
  `timeviewto` bigint(10) NOT NULL DEFAULT 0,
  `requiredentries` int(8) NOT NULL DEFAULT 0,
  `requiredentriestoview` int(8) NOT NULL DEFAULT 0,
  `maxentries` int(8) NOT NULL DEFAULT 0,
  `rssarticles` smallint(4) NOT NULL DEFAULT 0,
  `singletemplate` longtext DEFAULT NULL,
  `listtemplate` longtext DEFAULT NULL,
  `listtemplateheader` longtext DEFAULT NULL,
  `listtemplatefooter` longtext DEFAULT NULL,
  `addtemplate` longtext DEFAULT NULL,
  `rsstemplate` longtext DEFAULT NULL,
  `rsstitletemplate` longtext DEFAULT NULL,
  `csstemplate` longtext DEFAULT NULL,
  `jstemplate` longtext DEFAULT NULL,
  `asearchtemplate` longtext DEFAULT NULL,
  `approval` smallint(4) NOT NULL DEFAULT 0,
  `manageapproved` smallint(4) NOT NULL DEFAULT 1,
  `scale` bigint(10) NOT NULL DEFAULT 0,
  `assessed` bigint(10) NOT NULL DEFAULT 0,
  `assesstimestart` bigint(10) NOT NULL DEFAULT 0,
  `assesstimefinish` bigint(10) NOT NULL DEFAULT 0,
  `defaultsort` bigint(10) NOT NULL DEFAULT 0,
  `defaultsortdir` smallint(4) NOT NULL DEFAULT 0,
  `editany` smallint(4) NOT NULL DEFAULT 0,
  `notification` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `config` longtext DEFAULT NULL,
  `completionentries` bigint(10) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_data_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='all database activities';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_data`
--

LOCK TABLES `mdl_data` WRITE;
/*!40000 ALTER TABLE `mdl_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_data_content`
--

DROP TABLE IF EXISTS `mdl_data_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_data_content` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `fieldid` bigint(10) NOT NULL DEFAULT 0,
  `recordid` bigint(10) NOT NULL DEFAULT 0,
  `content` longtext DEFAULT NULL,
  `content1` longtext DEFAULT NULL,
  `content2` longtext DEFAULT NULL,
  `content3` longtext DEFAULT NULL,
  `content4` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_datacont_rec_ix` (`recordid`),
  KEY `mdl_datacont_fie_ix` (`fieldid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='the content introduced in each record/fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_data_content`
--

LOCK TABLES `mdl_data_content` WRITE;
/*!40000 ALTER TABLE `mdl_data_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_data_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_data_fields`
--

DROP TABLE IF EXISTS `mdl_data_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_data_fields` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `dataid` bigint(10) NOT NULL DEFAULT 0,
  `type` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `param1` longtext DEFAULT NULL,
  `param2` longtext DEFAULT NULL,
  `param3` longtext DEFAULT NULL,
  `param4` longtext DEFAULT NULL,
  `param5` longtext DEFAULT NULL,
  `param6` longtext DEFAULT NULL,
  `param7` longtext DEFAULT NULL,
  `param8` longtext DEFAULT NULL,
  `param9` longtext DEFAULT NULL,
  `param10` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_datafiel_typdat_ix` (`type`,`dataid`),
  KEY `mdl_datafiel_dat_ix` (`dataid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='every field available';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_data_fields`
--

LOCK TABLES `mdl_data_fields` WRITE;
/*!40000 ALTER TABLE `mdl_data_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_data_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_data_records`
--

DROP TABLE IF EXISTS `mdl_data_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_data_records` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `groupid` bigint(10) NOT NULL DEFAULT 0,
  `dataid` bigint(10) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `approved` smallint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_datareco_dat_ix` (`dataid`),
  KEY `mdl_datareco_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='every record introduced';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_data_records`
--

LOCK TABLES `mdl_data_records` WRITE;
/*!40000 ALTER TABLE `mdl_data_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_data_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_editor_atto_autosave`
--

DROP TABLE IF EXISTS `mdl_editor_atto_autosave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_editor_atto_autosave` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `elementid` varchar(255) NOT NULL DEFAULT '',
  `contextid` bigint(10) NOT NULL,
  `pagehash` varchar(64) NOT NULL DEFAULT '',
  `userid` bigint(10) NOT NULL,
  `drafttext` longtext NOT NULL,
  `draftid` bigint(10) DEFAULT NULL,
  `pageinstance` varchar(64) NOT NULL DEFAULT '',
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_editattoauto_eleconuse_uix` (`elementid`,`contextid`,`userid`,`pagehash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Draft text that is auto-saved every 5 seconds while an edito';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_editor_atto_autosave`
--

LOCK TABLES `mdl_editor_atto_autosave` WRITE;
/*!40000 ALTER TABLE `mdl_editor_atto_autosave` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_editor_atto_autosave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol`
--

DROP TABLE IF EXISTS `mdl_enrol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_enrol` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `enrol` varchar(20) NOT NULL DEFAULT '',
  `status` bigint(10) NOT NULL DEFAULT 0,
  `courseid` bigint(10) NOT NULL,
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `enrolperiod` bigint(10) DEFAULT 0,
  `enrolstartdate` bigint(10) DEFAULT 0,
  `enrolenddate` bigint(10) DEFAULT 0,
  `expirynotify` tinyint(1) DEFAULT 0,
  `expirythreshold` bigint(10) DEFAULT 0,
  `notifyall` tinyint(1) DEFAULT 0,
  `password` varchar(50) DEFAULT NULL,
  `cost` varchar(20) DEFAULT NULL,
  `currency` varchar(3) DEFAULT NULL,
  `roleid` bigint(10) DEFAULT 0,
  `customint1` bigint(10) DEFAULT NULL,
  `customint2` bigint(10) DEFAULT NULL,
  `customint3` bigint(10) DEFAULT NULL,
  `customint4` bigint(10) DEFAULT NULL,
  `customint5` bigint(10) DEFAULT NULL,
  `customint6` bigint(10) DEFAULT NULL,
  `customint7` bigint(10) DEFAULT NULL,
  `customint8` bigint(10) DEFAULT NULL,
  `customchar1` varchar(255) DEFAULT NULL,
  `customchar2` varchar(255) DEFAULT NULL,
  `customchar3` varchar(1333) DEFAULT NULL,
  `customdec1` decimal(12,7) DEFAULT NULL,
  `customdec2` decimal(12,7) DEFAULT NULL,
  `customtext1` longtext DEFAULT NULL,
  `customtext2` longtext DEFAULT NULL,
  `customtext3` longtext DEFAULT NULL,
  `customtext4` longtext DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_enro_enr_ix` (`enrol`),
  KEY `mdl_enro_cou_ix` (`courseid`),
  KEY `mdl_enro_rol_ix` (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Instances of enrolment plugins used in courses, fields marke';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol`
--

LOCK TABLES `mdl_enrol` WRITE;
/*!40000 ALTER TABLE `mdl_enrol` DISABLE KEYS */;
INSERT INTO `mdl_enrol` VALUES (1,'manual',0,2,0,NULL,0,0,0,0,86400,0,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1705739445,1705739445),(2,'guest',1,2,1,NULL,0,0,0,0,0,0,'',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1705739445,1705739445),(3,'self',1,2,2,NULL,0,0,0,0,86400,0,NULL,NULL,NULL,5,0,0,0,1,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1705739445,1705739445);
/*!40000 ALTER TABLE `mdl_enrol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_flatfile`
--

DROP TABLE IF EXISTS `mdl_enrol_flatfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_enrol_flatfile` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `action` varchar(30) NOT NULL DEFAULT '',
  `roleid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `courseid` bigint(10) NOT NULL,
  `timestart` bigint(10) NOT NULL DEFAULT 0,
  `timeend` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_enroflat_cou_ix` (`courseid`),
  KEY `mdl_enroflat_use_ix` (`userid`),
  KEY `mdl_enroflat_rol_ix` (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='enrol_flatfile table retrofitted from MySQL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_flatfile`
--

LOCK TABLES `mdl_enrol_flatfile` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_flatfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_flatfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_app_registration`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_app_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_enrol_lti_app_registration` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `platformid` longtext DEFAULT NULL,
  `clientid` varchar(1333) DEFAULT NULL,
  `uniqueid` varchar(255) NOT NULL DEFAULT '',
  `platformclienthash` varchar(64) DEFAULT NULL,
  `platformuniqueidhash` varchar(64) DEFAULT NULL,
  `authenticationrequesturl` longtext DEFAULT NULL,
  `jwksurl` longtext DEFAULT NULL,
  `accesstokenurl` longtext DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_enroltiappregi_uni_uix` (`uniqueid`),
  UNIQUE KEY `mdl_enroltiappregi_pla_uix` (`platformclienthash`),
  UNIQUE KEY `mdl_enroltiappregi_pla2_uix` (`platformuniqueidhash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Details of each application that has been registered with th';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_app_registration`
--

LOCK TABLES `mdl_enrol_lti_app_registration` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_app_registration` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_app_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_context`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_context`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_enrol_lti_context` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` varchar(255) NOT NULL DEFAULT '',
  `ltideploymentid` bigint(10) NOT NULL,
  `type` longtext DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_enrolticont_lticon_uix` (`ltideploymentid`,`contextid`),
  KEY `mdl_enrolticont_lti_ix` (`ltideploymentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Each row represents a context in the platform, where resourc';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_context`
--

LOCK TABLES `mdl_enrol_lti_context` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_context` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_context` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_deployment`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_deployment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_enrol_lti_deployment` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `deploymentid` varchar(255) NOT NULL DEFAULT '',
  `platformid` bigint(10) NOT NULL,
  `legacyconsumerkey` varchar(255) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_enroltidepl_pladep_uix` (`platformid`,`deploymentid`),
  KEY `mdl_enroltidepl_pla_ix` (`platformid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Each row represents a deployment of a tool within a platform';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_deployment`
--

LOCK TABLES `mdl_enrol_lti_deployment` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_deployment` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_deployment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_lti2_consumer`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_lti2_consumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_enrol_lti_lti2_consumer` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `consumerkey256` varchar(255) NOT NULL DEFAULT '',
  `consumerkey` longtext DEFAULT NULL,
  `secret` varchar(1024) NOT NULL DEFAULT '',
  `ltiversion` varchar(10) DEFAULT NULL,
  `consumername` varchar(255) DEFAULT NULL,
  `consumerversion` varchar(255) DEFAULT NULL,
  `consumerguid` varchar(1024) DEFAULT NULL,
  `profile` longtext DEFAULT NULL,
  `toolproxy` longtext DEFAULT NULL,
  `settings` longtext DEFAULT NULL,
  `protected` tinyint(1) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `enablefrom` bigint(10) DEFAULT NULL,
  `enableuntil` bigint(10) DEFAULT NULL,
  `lastaccess` bigint(10) DEFAULT NULL,
  `created` bigint(10) NOT NULL,
  `updated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_enroltilti2cons_con_uix` (`consumerkey256`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='LTI consumers interacting with moodle';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_lti2_consumer`
--

LOCK TABLES `mdl_enrol_lti_lti2_consumer` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_consumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_consumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_lti2_context`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_lti2_context`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_enrol_lti_lti2_context` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `consumerid` bigint(11) NOT NULL,
  `lticontextkey` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(100) DEFAULT NULL,
  `settings` longtext DEFAULT NULL,
  `created` bigint(10) NOT NULL,
  `updated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_enroltilti2cont_con_ix` (`consumerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Information about a specific LTI contexts from the consumers';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_lti2_context`
--

LOCK TABLES `mdl_enrol_lti_lti2_context` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_context` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_context` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_lti2_nonce`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_lti2_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_enrol_lti_lti2_nonce` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `consumerid` bigint(11) NOT NULL,
  `value` varchar(64) NOT NULL DEFAULT '',
  `expires` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_enroltilti2nonc_con_ix` (`consumerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Nonce used for authentication between moodle and a consumer';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_lti2_nonce`
--

LOCK TABLES `mdl_enrol_lti_lti2_nonce` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_lti2_resource_link`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_lti2_resource_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_enrol_lti_lti2_resource_link` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(11) DEFAULT NULL,
  `consumerid` bigint(11) DEFAULT NULL,
  `ltiresourcelinkkey` varchar(255) NOT NULL DEFAULT '',
  `settings` longtext DEFAULT NULL,
  `primaryresourcelinkid` bigint(11) DEFAULT NULL,
  `shareapproved` tinyint(1) DEFAULT NULL,
  `created` bigint(10) NOT NULL,
  `updated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_enroltilti2resolink_con_ix` (`contextid`),
  KEY `mdl_enroltilti2resolink_pri_ix` (`primaryresourcelinkid`),
  KEY `mdl_enroltilti2resolink_co2_ix` (`consumerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Link from the consumer to the tool';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_lti2_resource_link`
--

LOCK TABLES `mdl_enrol_lti_lti2_resource_link` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_resource_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_resource_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_lti2_share_key`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_lti2_share_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_enrol_lti_lti2_share_key` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `sharekey` varchar(32) NOT NULL DEFAULT '',
  `resourcelinkid` bigint(11) NOT NULL,
  `autoapprove` tinyint(1) NOT NULL,
  `expires` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_enroltilti2sharkey_sha_uix` (`sharekey`),
  UNIQUE KEY `mdl_enroltilti2sharkey_res_uix` (`resourcelinkid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Resource link share key';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_lti2_share_key`
--

LOCK TABLES `mdl_enrol_lti_lti2_share_key` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_share_key` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_share_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_lti2_tool_proxy`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_lti2_tool_proxy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_enrol_lti_lti2_tool_proxy` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `toolproxykey` varchar(32) NOT NULL DEFAULT '',
  `consumerid` bigint(11) NOT NULL,
  `toolproxy` longtext NOT NULL,
  `created` bigint(10) NOT NULL,
  `updated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_enroltilti2toolprox_to_uix` (`toolproxykey`),
  KEY `mdl_enroltilti2toolprox_con_ix` (`consumerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='A tool proxy between moodle and a consumer';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_lti2_tool_proxy`
--

LOCK TABLES `mdl_enrol_lti_lti2_tool_proxy` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_tool_proxy` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_tool_proxy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_lti2_user_result`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_lti2_user_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_enrol_lti_lti2_user_result` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `resourcelinkid` bigint(11) NOT NULL,
  `ltiuserkey` varchar(255) NOT NULL DEFAULT '',
  `ltiresultsourcedid` varchar(1024) NOT NULL DEFAULT '',
  `created` bigint(10) NOT NULL,
  `updated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_enroltilti2userresu_res_ix` (`resourcelinkid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Results for each user for each resource link';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_lti2_user_result`
--

LOCK TABLES `mdl_enrol_lti_lti2_user_result` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_user_result` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_lti2_user_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_resource_link`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_resource_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_enrol_lti_resource_link` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `resourcelinkid` varchar(255) NOT NULL DEFAULT '',
  `ltideploymentid` bigint(10) NOT NULL,
  `resourceid` bigint(10) NOT NULL,
  `lticontextid` bigint(10) DEFAULT NULL,
  `lineitemsservice` varchar(1333) DEFAULT NULL,
  `lineitemservice` varchar(1333) DEFAULT NULL,
  `lineitemscope` varchar(255) DEFAULT NULL,
  `resultscope` varchar(255) DEFAULT NULL,
  `scorescope` varchar(255) DEFAULT NULL,
  `contextmembershipsurl` varchar(1333) DEFAULT NULL,
  `nrpsserviceversions` varchar(255) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_enroltiresolink_reslti_uix` (`resourcelinkid`,`ltideploymentid`),
  KEY `mdl_enroltiresolink_lti_ix` (`ltideploymentid`),
  KEY `mdl_enroltiresolink_lti2_ix` (`lticontextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Each row represents a resource link for a platform and deplo';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_resource_link`
--

LOCK TABLES `mdl_enrol_lti_resource_link` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_resource_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_resource_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_tool_consumer_map`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_tool_consumer_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_enrol_lti_tool_consumer_map` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `toolid` bigint(11) NOT NULL,
  `consumerid` bigint(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_enroltitoolconsmap_too_ix` (`toolid`),
  KEY `mdl_enroltitoolconsmap_con_ix` (`consumerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Table that maps the published tool to tool consumers.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_tool_consumer_map`
--

LOCK TABLES `mdl_enrol_lti_tool_consumer_map` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_tool_consumer_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_tool_consumer_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_tools`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_tools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_enrol_lti_tools` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `enrolid` bigint(10) NOT NULL,
  `contextid` bigint(10) NOT NULL,
  `ltiversion` varchar(15) NOT NULL DEFAULT 'LTI-1p3',
  `institution` varchar(40) NOT NULL DEFAULT '',
  `lang` varchar(30) NOT NULL DEFAULT 'en',
  `timezone` varchar(100) NOT NULL DEFAULT '99',
  `maxenrolled` bigint(10) NOT NULL DEFAULT 0,
  `maildisplay` tinyint(2) NOT NULL DEFAULT 2,
  `city` varchar(120) NOT NULL DEFAULT '',
  `country` varchar(2) NOT NULL DEFAULT '',
  `gradesync` tinyint(1) NOT NULL DEFAULT 0,
  `gradesynccompletion` tinyint(1) NOT NULL DEFAULT 0,
  `membersync` tinyint(1) NOT NULL DEFAULT 0,
  `membersyncmode` tinyint(1) NOT NULL DEFAULT 0,
  `roleinstructor` bigint(10) NOT NULL,
  `rolelearner` bigint(10) NOT NULL,
  `secret` longtext DEFAULT NULL,
  `uuid` varchar(36) DEFAULT NULL,
  `provisioningmodelearner` tinyint(2) DEFAULT NULL,
  `provisioningmodeinstructor` tinyint(2) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_enroltitool_uui_uix` (`uuid`),
  KEY `mdl_enroltitool_enr_ix` (`enrolid`),
  KEY `mdl_enroltitool_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='List of tools provided to the remote system';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_tools`
--

LOCK TABLES `mdl_enrol_lti_tools` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_tools` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_tools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_user_resource_link`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_user_resource_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_enrol_lti_user_resource_link` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `ltiuserid` bigint(10) NOT NULL,
  `resourcelinkid` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_enroltiuserresolink_lt_uix` (`ltiuserid`,`resourcelinkid`),
  KEY `mdl_enroltiuserresolink_lti_ix` (`ltiuserid`),
  KEY `mdl_enroltiuserresolink_res_ix` (`resourcelinkid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Join table mapping users to resource links as this is a many';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_user_resource_link`
--

LOCK TABLES `mdl_enrol_lti_user_resource_link` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_user_resource_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_user_resource_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_lti_users`
--

DROP TABLE IF EXISTS `mdl_enrol_lti_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_enrol_lti_users` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `toolid` bigint(10) NOT NULL,
  `serviceurl` longtext DEFAULT NULL,
  `sourceid` longtext DEFAULT NULL,
  `ltideploymentid` bigint(10) DEFAULT NULL,
  `consumerkey` longtext DEFAULT NULL,
  `consumersecret` longtext DEFAULT NULL,
  `membershipsurl` longtext DEFAULT NULL,
  `membershipsid` longtext DEFAULT NULL,
  `lastgrade` decimal(10,5) DEFAULT NULL,
  `lastaccess` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_enroltiuser_use_ix` (`userid`),
  KEY `mdl_enroltiuser_too_ix` (`toolid`),
  KEY `mdl_enroltiuser_lti_ix` (`ltideploymentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='User access log and gradeback data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_lti_users`
--

LOCK TABLES `mdl_enrol_lti_users` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_lti_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_lti_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_enrol_paypal`
--

DROP TABLE IF EXISTS `mdl_enrol_paypal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_enrol_paypal` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `business` varchar(255) NOT NULL DEFAULT '',
  `receiver_email` varchar(255) NOT NULL DEFAULT '',
  `receiver_id` varchar(255) NOT NULL DEFAULT '',
  `item_name` varchar(255) NOT NULL DEFAULT '',
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `instanceid` bigint(10) NOT NULL DEFAULT 0,
  `memo` varchar(255) NOT NULL DEFAULT '',
  `tax` varchar(255) NOT NULL DEFAULT '',
  `option_name1` varchar(255) NOT NULL DEFAULT '',
  `option_selection1_x` varchar(255) NOT NULL DEFAULT '',
  `option_name2` varchar(255) NOT NULL DEFAULT '',
  `option_selection2_x` varchar(255) NOT NULL DEFAULT '',
  `payment_status` varchar(255) NOT NULL DEFAULT '',
  `pending_reason` varchar(255) NOT NULL DEFAULT '',
  `reason_code` varchar(30) NOT NULL DEFAULT '',
  `txn_id` varchar(255) NOT NULL DEFAULT '',
  `parent_txn_id` varchar(255) NOT NULL DEFAULT '',
  `payment_type` varchar(30) NOT NULL DEFAULT '',
  `timeupdated` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_enropayp_bus_ix` (`business`),
  KEY `mdl_enropayp_rec_ix` (`receiver_email`),
  KEY `mdl_enropayp_cou_ix` (`courseid`),
  KEY `mdl_enropayp_use_ix` (`userid`),
  KEY `mdl_enropayp_ins_ix` (`instanceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Holds all known information about PayPal transactions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_enrol_paypal`
--

LOCK TABLES `mdl_enrol_paypal` WRITE;
/*!40000 ALTER TABLE `mdl_enrol_paypal` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_enrol_paypal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_event`
--

DROP TABLE IF EXISTS `mdl_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_event` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `description` longtext NOT NULL,
  `format` smallint(4) NOT NULL DEFAULT 0,
  `categoryid` bigint(10) NOT NULL DEFAULT 0,
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  `groupid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `repeatid` bigint(10) NOT NULL DEFAULT 0,
  `component` varchar(100) DEFAULT NULL,
  `modulename` varchar(20) NOT NULL DEFAULT '',
  `instance` bigint(10) NOT NULL DEFAULT 0,
  `type` smallint(4) NOT NULL DEFAULT 0,
  `eventtype` varchar(20) NOT NULL DEFAULT '',
  `timestart` bigint(10) NOT NULL DEFAULT 0,
  `timeduration` bigint(10) NOT NULL DEFAULT 0,
  `timesort` bigint(10) DEFAULT NULL,
  `visible` smallint(4) NOT NULL DEFAULT 1,
  `uuid` varchar(255) NOT NULL DEFAULT '',
  `sequence` bigint(10) NOT NULL DEFAULT 1,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `subscriptionid` bigint(10) DEFAULT NULL,
  `priority` bigint(10) DEFAULT NULL,
  `location` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_even_cou_ix` (`courseid`),
  KEY `mdl_even_use_ix` (`userid`),
  KEY `mdl_even_tim_ix` (`timestart`),
  KEY `mdl_even_tim2_ix` (`timeduration`),
  KEY `mdl_even_uui_ix` (`uuid`),
  KEY `mdl_even_typtim_ix` (`type`,`timesort`),
  KEY `mdl_even_grocoucatvisuse_ix` (`groupid`,`courseid`,`categoryid`,`visible`,`userid`),
  KEY `mdl_even_eve_ix` (`eventtype`),
  KEY `mdl_even_comeveins_ix` (`component`,`eventtype`,`instance`),
  KEY `mdl_even_modinseve_ix` (`modulename`,`instance`,`eventtype`),
  KEY `mdl_even_cat_ix` (`categoryid`),
  KEY `mdl_even_sub_ix` (`subscriptionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='For everything with a time associated to it';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_event`
--

LOCK TABLES `mdl_event` WRITE;
/*!40000 ALTER TABLE `mdl_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_event_subscriptions`
--

DROP TABLE IF EXISTS `mdl_event_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_event_subscriptions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL DEFAULT '',
  `categoryid` bigint(10) NOT NULL DEFAULT 0,
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  `groupid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `eventtype` varchar(20) NOT NULL DEFAULT '',
  `pollinterval` bigint(10) NOT NULL DEFAULT 0,
  `lastupdated` bigint(10) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_evensubs_cou_ix` (`courseid`),
  KEY `mdl_evensubs_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Tracks subscriptions to remote calendars.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_event_subscriptions`
--

LOCK TABLES `mdl_event_subscriptions` WRITE;
/*!40000 ALTER TABLE `mdl_event_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_event_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_events_handlers`
--

DROP TABLE IF EXISTS `mdl_events_handlers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_events_handlers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `eventname` varchar(166) NOT NULL DEFAULT '',
  `component` varchar(166) NOT NULL DEFAULT '',
  `handlerfile` varchar(255) NOT NULL DEFAULT '',
  `handlerfunction` longtext DEFAULT NULL,
  `schedule` varchar(255) DEFAULT NULL,
  `status` bigint(10) NOT NULL DEFAULT 0,
  `internal` tinyint(2) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_evenhand_evecom_uix` (`eventname`,`component`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='This table is for storing which components requests what typ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_events_handlers`
--

LOCK TABLES `mdl_events_handlers` WRITE;
/*!40000 ALTER TABLE `mdl_events_handlers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_events_handlers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_events_queue`
--

DROP TABLE IF EXISTS `mdl_events_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_events_queue` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `eventdata` longtext NOT NULL,
  `stackdump` longtext DEFAULT NULL,
  `userid` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_evenqueu_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='This table is for storing queued events. It stores only one ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_events_queue`
--

LOCK TABLES `mdl_events_queue` WRITE;
/*!40000 ALTER TABLE `mdl_events_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_events_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_events_queue_handlers`
--

DROP TABLE IF EXISTS `mdl_events_queue_handlers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_events_queue_handlers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `queuedeventid` bigint(10) NOT NULL,
  `handlerid` bigint(10) NOT NULL,
  `status` bigint(10) DEFAULT NULL,
  `errormessage` longtext DEFAULT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_evenqueuhand_que_ix` (`queuedeventid`),
  KEY `mdl_evenqueuhand_han_ix` (`handlerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='This is the list of queued handlers for processing. The even';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_events_queue_handlers`
--

LOCK TABLES `mdl_events_queue_handlers` WRITE;
/*!40000 ALTER TABLE `mdl_events_queue_handlers` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_events_queue_handlers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_external_functions`
--

DROP TABLE IF EXISTS `mdl_external_functions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_external_functions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `classname` varchar(100) NOT NULL DEFAULT '',
  `methodname` varchar(100) NOT NULL DEFAULT '',
  `classpath` varchar(255) DEFAULT NULL,
  `component` varchar(100) NOT NULL DEFAULT '',
  `capabilities` varchar(255) DEFAULT NULL,
  `services` varchar(1333) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_extefunc_nam_uix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=697 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='list of all external functions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_external_functions`
--

LOCK TABLES `mdl_external_functions` WRITE;
/*!40000 ALTER TABLE `mdl_external_functions` DISABLE KEYS */;
INSERT INTO `mdl_external_functions` VALUES (1,'core_auth_confirm_user','core_auth_external','confirm_user',NULL,'moodle','',NULL),(2,'core_auth_request_password_reset','core_auth_external','request_password_reset',NULL,'moodle','',NULL),(3,'core_auth_is_minor','core_auth_external','is_minor',NULL,'moodle','',NULL),(4,'core_auth_is_age_digital_consent_verification_enabled','core_auth_external','is_age_digital_consent_verification_enabled',NULL,'moodle','',NULL),(5,'core_auth_resend_confirmation_email','core_auth_external','resend_confirmation_email',NULL,'moodle','',NULL),(6,'core_backup_get_async_backup_progress','core_backup_external','get_async_backup_progress','backup/externallib.php','moodle','',NULL),(7,'core_backup_get_async_backup_links_backup','core_backup_external','get_async_backup_links_backup','backup/externallib.php','moodle','',NULL),(8,'core_backup_get_async_backup_links_restore','core_backup_external','get_async_backup_links_restore','backup/externallib.php','moodle','',NULL),(9,'core_backup_get_copy_progress','core_backup_external','get_copy_progress','backup/externallib.php','moodle','',NULL),(10,'core_backup_submit_copy_form','core_backup_external','submit_copy_form','backup/externallib.php','moodle','',NULL),(11,'core_badges_get_user_badges','core_badges_external','get_user_badges',NULL,'moodle','moodle/badges:viewotherbadges','moodle_mobile_app'),(12,'core_blog_get_entries','core_blog\\external','get_entries',NULL,'moodle','','moodle_mobile_app'),(13,'core_blog_view_entries','core_blog\\external','view_entries',NULL,'moodle','','moodle_mobile_app'),(14,'core_calendar_get_calendar_monthly_view','core_calendar_external','get_calendar_monthly_view','calendar/externallib.php','moodle','','moodle_mobile_app'),(15,'core_calendar_get_calendar_day_view','core_calendar_external','get_calendar_day_view','calendar/externallib.php','moodle','','moodle_mobile_app'),(16,'core_calendar_get_calendar_upcoming_view','core_calendar_external','get_calendar_upcoming_view','calendar/externallib.php','moodle','','moodle_mobile_app'),(17,'core_calendar_update_event_start_day','core_calendar_external','update_event_start_day','calendar/externallib.php','moodle','moodle/calendar:manageentries, moodle/calendar:manageownentries, moodle/calendar:managegroupentries','moodle_mobile_app'),(18,'core_calendar_create_calendar_events','core_calendar_external','create_calendar_events','calendar/externallib.php','moodle','moodle/calendar:manageentries, moodle/calendar:manageownentries, moodle/calendar:managegroupentries','moodle_mobile_app'),(19,'core_calendar_delete_calendar_events','core_calendar_external','delete_calendar_events','calendar/externallib.php','moodle','moodle/calendar:manageentries, moodle/calendar:manageownentries, moodle/calendar:managegroupentries','moodle_mobile_app'),(20,'core_calendar_get_calendar_events','core_calendar_external','get_calendar_events','calendar/externallib.php','moodle','moodle/calendar:manageentries, moodle/calendar:manageownentries, moodle/calendar:managegroupentries','moodle_mobile_app'),(21,'core_calendar_get_action_events_by_timesort','core_calendar_external','get_calendar_action_events_by_timesort','calendar/externallib.php','moodle','moodle/calendar:manageentries, moodle/calendar:manageownentries, moodle/calendar:managegroupentries','moodle_mobile_app'),(22,'core_calendar_get_action_events_by_course','core_calendar_external','get_calendar_action_events_by_course','calendar/externallib.php','moodle','moodle/calendar:manageentries, moodle/calendar:manageownentries, moodle/calendar:managegroupentries','moodle_mobile_app'),(23,'core_calendar_get_action_events_by_courses','core_calendar_external','get_calendar_action_events_by_courses','calendar/externallib.php','moodle','moodle/calendar:manageentries, moodle/calendar:manageownentries, moodle/calendar:managegroupentries','moodle_mobile_app'),(24,'core_calendar_get_calendar_event_by_id','core_calendar_external','get_calendar_event_by_id','calendar/externallib.php','moodle','moodle/calendar:manageentries, moodle/calendar:manageownentries, moodle/calendar:managegroupentries','moodle_mobile_app'),(25,'core_calendar_submit_create_update_form','core_calendar_external','submit_create_update_form','calendar/externallib.php','moodle','moodle/calendar:manageentries, moodle/calendar:manageownentries, moodle/calendar:managegroupentries','moodle_mobile_app'),(26,'core_calendar_get_calendar_access_information','core_calendar_external','get_calendar_access_information','calendar/externallib.php','moodle','','moodle_mobile_app'),(27,'core_calendar_get_allowed_event_types','core_calendar_external','get_allowed_event_types','calendar/externallib.php','moodle','','moodle_mobile_app'),(28,'core_calendar_get_timestamps','core_calendar_external','get_timestamps','calendar/externallib.php','moodle','',NULL),(29,'core_calendar_get_calendar_export_token','core_calendar\\external\\export\\token','execute',NULL,'moodle','','moodle_mobile_app'),(30,'core_calendar_delete_subscription','core_calendar\\external\\subscription\\delete','execute',NULL,'moodle','',NULL),(31,'core_cohort_add_cohort_members','core_cohort_external','add_cohort_members','cohort/externallib.php','moodle','moodle/cohort:assign',NULL),(32,'core_cohort_create_cohorts','core_cohort_external','create_cohorts','cohort/externallib.php','moodle','moodle/cohort:manage',NULL),(33,'core_cohort_delete_cohort_members','core_cohort_external','delete_cohort_members','cohort/externallib.php','moodle','moodle/cohort:assign',NULL),(34,'core_cohort_delete_cohorts','core_cohort_external','delete_cohorts','cohort/externallib.php','moodle','moodle/cohort:manage',NULL),(35,'core_cohort_get_cohort_members','core_cohort_external','get_cohort_members','cohort/externallib.php','moodle','moodle/cohort:view',NULL),(36,'core_cohort_search_cohorts','core_cohort_external','search_cohorts','cohort/externallib.php','moodle','moodle/cohort:view',NULL),(37,'core_cohort_get_cohorts','core_cohort_external','get_cohorts','cohort/externallib.php','moodle','moodle/cohort:view',NULL),(38,'core_cohort_update_cohorts','core_cohort_external','update_cohorts','cohort/externallib.php','moodle','moodle/cohort:manage',NULL),(39,'core_comment_get_comments','core_comment_external','get_comments',NULL,'moodle','moodle/comment:view','moodle_mobile_app'),(40,'core_comment_add_comments','core_comment_external','add_comments',NULL,'moodle','','moodle_mobile_app'),(41,'core_comment_delete_comments','core_comment_external','delete_comments',NULL,'moodle','','moodle_mobile_app'),(42,'core_completion_get_activities_completion_status','core_completion_external','get_activities_completion_status',NULL,'moodle','','moodle_mobile_app'),(43,'core_completion_get_course_completion_status','core_completion_external','get_course_completion_status',NULL,'moodle','report/completion:view','moodle_mobile_app'),(44,'core_completion_mark_course_self_completed','core_completion_external','mark_course_self_completed',NULL,'moodle','','moodle_mobile_app'),(45,'core_completion_update_activity_completion_status_manually','core_completion_external','update_activity_completion_status_manually',NULL,'moodle','','moodle_mobile_app'),(46,'core_completion_override_activity_completion_status','core_completion_external','override_activity_completion_status',NULL,'moodle','moodle/course:overridecompletion',NULL),(47,'core_course_create_categories','core_course_external','create_categories','course/externallib.php','moodle','moodle/category:manage',NULL),(48,'core_course_create_courses','core_course_external','create_courses','course/externallib.php','moodle','moodle/course:create, moodle/course:visibility',NULL),(49,'core_course_delete_categories','core_course_external','delete_categories','course/externallib.php','moodle','moodle/category:manage',NULL),(50,'core_course_delete_courses','core_course_external','delete_courses','course/externallib.php','moodle','moodle/course:delete',NULL),(51,'core_course_delete_modules','core_course_external','delete_modules','course/externallib.php','moodle','moodle/course:manageactivities',NULL),(52,'core_course_duplicate_course','core_course_external','duplicate_course','course/externallib.php','moodle','moodle/backup:backupcourse, moodle/restore:restorecourse, moodle/course:create',NULL),(53,'core_course_get_categories','core_course_external','get_categories','course/externallib.php','moodle','moodle/category:viewhiddencategories','moodle_mobile_app'),(54,'core_course_get_contents','core_course_external','get_course_contents','course/externallib.php','moodle','moodle/course:update, moodle/course:viewhiddencourses','moodle_mobile_app'),(55,'core_course_get_course_module','core_course_external','get_course_module','course/externallib.php','moodle','','moodle_mobile_app'),(56,'core_course_get_course_module_by_instance','core_course_external','get_course_module_by_instance','course/externallib.php','moodle','','moodle_mobile_app'),(57,'core_course_get_module','core_course_external','get_module','course/externallib.php','moodle','',NULL),(58,'core_courseformat_file_handlers','core_courseformat\\external\\file_handlers','execute',NULL,'moodle','',NULL),(59,'core_courseformat_get_state','core_courseformat\\external\\get_state','execute',NULL,'moodle','',NULL),(60,'core_courseformat_update_course','core_courseformat\\external\\update_course','execute',NULL,'moodle','moodle/course:sectionvisibility, moodle/course:activityvisibility',NULL),(61,'core_course_edit_module','core_course_external','edit_module','course/externallib.php','moodle','',NULL),(62,'core_course_edit_section','core_course_external','edit_section','course/externallib.php','moodle','',NULL),(63,'core_course_get_courses','core_course_external','get_courses','course/externallib.php','moodle','moodle/course:view, moodle/course:update, moodle/course:viewhiddencourses','moodle_mobile_app'),(64,'core_course_import_course','core_course_external','import_course','course/externallib.php','moodle','moodle/backup:backuptargetimport, moodle/restore:restoretargetimport',NULL),(65,'core_course_search_courses','core_course_external','search_courses','course/externallib.php','moodle','','moodle_mobile_app'),(66,'core_course_update_categories','core_course_external','update_categories','course/externallib.php','moodle','moodle/category:manage',NULL),(67,'core_course_update_courses','core_course_external','update_courses','course/externallib.php','moodle','moodle/course:update, moodle/course:changecategory, moodle/course:changefullname, moodle/course:changeshortname, moodle/course:changeidnumber, moodle/course:changesummary, moodle/course:visibility',NULL),(68,'core_course_view_course','core_course_external','view_course','course/externallib.php','moodle','','moodle_mobile_app'),(69,'core_course_get_user_navigation_options','core_course_external','get_user_navigation_options','course/externallib.php','moodle','','moodle_mobile_app'),(70,'core_course_get_user_administration_options','core_course_external','get_user_administration_options','course/externallib.php','moodle','','moodle_mobile_app'),(71,'core_course_get_courses_by_field','core_course_external','get_courses_by_field','course/externallib.php','moodle','','moodle_mobile_app'),(72,'core_course_check_updates','core_course_external','check_updates','course/externallib.php','moodle','','moodle_mobile_app'),(73,'core_course_get_updates_since','core_course_external','get_updates_since','course/externallib.php','moodle','','moodle_mobile_app'),(74,'core_course_get_enrolled_courses_by_timeline_classification','core_course_external','get_enrolled_courses_by_timeline_classification','course/externallib.php','moodle','','moodle_mobile_app'),(75,'core_course_get_enrolled_courses_with_action_events_by_timeline_classification','\\core_course\\external\\get_enrolled_courses_with_action_events_by_timeline_classification','execute',NULL,'moodle','','moodle_mobile_app'),(76,'core_course_get_recent_courses','core_course_external','get_recent_courses','course/externallib.php','moodle','','moodle_mobile_app'),(77,'core_course_set_favourite_courses','core_course_external','set_favourite_courses','course/externallib.php','moodle','','moodle_mobile_app'),(78,'core_course_get_enrolled_users_by_cmid','core_course_external','get_enrolled_users_by_cmid','course/externallib.php','moodle','',NULL),(79,'core_course_add_content_item_to_user_favourites','core_course_external','add_content_item_to_user_favourites','course/externallib.php','moodle','',NULL),(80,'core_course_remove_content_item_from_user_favourites','core_course_external','remove_content_item_from_user_favourites','course/externallib.php','moodle','',NULL),(81,'core_course_get_course_content_items','core_course_external','get_course_content_items','course/externallib.php','moodle','',NULL),(82,'core_course_get_activity_chooser_footer','core_course_external','get_activity_chooser_footer','course/externallib.php','moodle','',NULL),(83,'core_course_toggle_activity_recommendation','core_course_external','toggle_activity_recommendation','course/externallib.php','moodle','',NULL),(84,'core_enrol_get_course_enrolment_methods','core_enrol_external','get_course_enrolment_methods','enrol/externallib.php','moodle','','moodle_mobile_app'),(85,'core_enrol_get_enrolled_users','core_enrol_external','get_enrolled_users','enrol/externallib.php','moodle','moodle/user:viewdetails, moodle/user:viewhiddendetails, moodle/course:useremail, moodle/user:update, moodle/site:accessallgroups','moodle_mobile_app'),(86,'core_enrol_get_enrolled_users_with_capability','core_enrol_external','get_enrolled_users_with_capability','enrol/externallib.php','moodle','',NULL),(87,'core_enrol_get_potential_users','core_enrol_external','get_potential_users','enrol/externallib.php','moodle','moodle/course:enrolreview',NULL),(88,'core_enrol_search_users','core_enrol_external','search_users','enrol/externallib.php','moodle','moodle/course:viewparticipants','moodle_mobile_app'),(89,'core_enrol_get_users_courses','core_enrol_external','get_users_courses','enrol/externallib.php','moodle','moodle/course:viewparticipants','moodle_mobile_app'),(90,'core_enrol_submit_user_enrolment_form','core_enrol_external','submit_user_enrolment_form','enrol/externallib.php','moodle','',NULL),(91,'core_enrol_unenrol_user_enrolment','core_enrol_external','unenrol_user_enrolment','enrol/externallib.php','moodle','',NULL),(92,'core_fetch_notifications','core_external','fetch_notifications','lib/external/externallib.php','moodle','',NULL),(93,'core_session_touch','core\\session\\external','touch_session',NULL,'moodle','',NULL),(94,'core_session_time_remaining','core\\session\\external','time_remaining',NULL,'moodle','',NULL),(95,'core_files_get_files','core_files_external','get_files','files/externallib.php','moodle','','moodle_mobile_app'),(96,'core_files_upload','core_files_external','upload','files/externallib.php','moodle','',NULL),(97,'core_files_delete_draft_files','core_files\\external\\delete\\draft','execute',NULL,'moodle','','moodle_mobile_app'),(98,'core_files_get_unused_draft_itemid','core_files\\external\\get\\unused_draft','execute',NULL,'moodle','','moodle_mobile_app'),(99,'core_form_get_filetypes_browser_data','core_form\\external','get_filetypes_browser_data',NULL,'moodle','',NULL),(100,'core_form_dynamic_form','core_form\\external\\dynamic_form','execute',NULL,'moodle','',NULL),(101,'core_get_component_strings','core_external','get_component_strings','lib/external/externallib.php','moodle','','moodle_mobile_app'),(102,'core_get_fragment','core_external','get_fragment','lib/external/externallib.php','moodle','',NULL),(103,'core_get_string','core_external','get_string','lib/external/externallib.php','moodle','',NULL),(104,'core_get_strings','core_external','get_strings','lib/external/externallib.php','moodle','',NULL),(105,'core_get_user_dates','core_external','get_user_dates','lib/external/externallib.php','moodle','',NULL),(106,'core_grades_update_grades','core_grades_external','update_grades',NULL,'moodle','',NULL),(107,'core_grades_grader_gradingpanel_point_fetch','core_grades\\grades\\grader\\gradingpanel\\point\\external\\fetch','execute',NULL,'moodle','','moodle_mobile_app'),(108,'core_grades_grader_gradingpanel_point_store','core_grades\\grades\\grader\\gradingpanel\\point\\external\\store','execute',NULL,'moodle','','moodle_mobile_app'),(109,'core_grades_grader_gradingpanel_scale_fetch','core_grades\\grades\\grader\\gradingpanel\\scale\\external\\fetch','execute',NULL,'moodle','','moodle_mobile_app'),(110,'core_grades_grader_gradingpanel_scale_store','core_grades\\grades\\grader\\gradingpanel\\scale\\external\\store','execute',NULL,'moodle','','moodle_mobile_app'),(111,'core_grades_create_gradecategory','core_grades_external','create_gradecategory',NULL,'moodle','moodle/grade:manage',NULL),(112,'core_grades_create_gradecategories','core_grades\\external\\create_gradecategories','execute',NULL,'moodle','moodle/grade:manage',NULL),(113,'core_grades_get_enrolled_users_for_search_widget','core_grades\\external\\get_enrolled_users_for_search_widget','execute',NULL,'moodle','','moodle_mobile_app'),(114,'core_grades_get_enrolled_users_for_selector','core_grades\\external\\get_enrolled_users_for_selector','execute',NULL,'moodle','','moodle_mobile_app'),(115,'core_grades_get_groups_for_search_widget','core_grades\\external\\get_groups_for_selector','execute',NULL,'moodle','','moodle_mobile_app'),(116,'core_grades_get_groups_for_selector','core_grades\\external\\get_groups_for_selector','execute',NULL,'moodle','','moodle_mobile_app'),(117,'core_grades_get_feedback','core_grades\\external\\get_feedback','execute',NULL,'moodle','',NULL),(118,'core_grades_get_gradeitems','core_grades\\external\\get_gradeitems','execute',NULL,'moodle','','moodle_mobile_app'),(119,'core_grades_get_gradable_users','core_grades\\external\\get_gradable_users','execute',NULL,'moodle','','moodle_mobile_app'),(120,'core_grading_get_definitions','core_grading_external','get_definitions',NULL,'moodle','',NULL),(121,'core_grading_get_gradingform_instances','core_grading_external','get_gradingform_instances',NULL,'moodle','',NULL),(122,'core_grading_save_definitions','core_grading_external','save_definitions',NULL,'moodle','',NULL),(123,'core_group_add_group_members','core_group_external','add_group_members','group/externallib.php','moodle','moodle/course:managegroups',NULL),(124,'core_group_assign_grouping','core_group_external','assign_grouping','group/externallib.php','moodle','',NULL),(125,'core_group_create_groupings','core_group_external','create_groupings','group/externallib.php','moodle','',NULL),(126,'core_group_create_groups','core_group_external','create_groups','group/externallib.php','moodle','moodle/course:managegroups',NULL),(127,'core_group_delete_group_members','core_group_external','delete_group_members','group/externallib.php','moodle','moodle/course:managegroups',NULL),(128,'core_group_delete_groupings','core_group_external','delete_groupings','group/externallib.php','moodle','',NULL),(129,'core_group_delete_groups','core_group_external','delete_groups','group/externallib.php','moodle','moodle/course:managegroups',NULL),(130,'core_group_get_activity_allowed_groups','core_group_external','get_activity_allowed_groups','group/externallib.php','moodle','','moodle_mobile_app'),(131,'core_group_get_activity_groupmode','core_group_external','get_activity_groupmode','group/externallib.php','moodle','','moodle_mobile_app'),(132,'core_group_get_course_groupings','core_group_external','get_course_groupings','group/externallib.php','moodle','','moodle_mobile_app'),(133,'core_group_get_course_groups','core_group_external','get_course_groups','group/externallib.php','moodle','moodle/course:managegroups','moodle_mobile_app'),(134,'core_group_get_course_user_groups','core_group_external','get_course_user_groups','group/externallib.php','moodle','moodle/course:managegroups','moodle_mobile_app'),(135,'core_group_get_group_members','core_group_external','get_group_members','group/externallib.php','moodle','moodle/course:managegroups',NULL),(136,'core_group_get_groupings','core_group_external','get_groupings','group/externallib.php','moodle','',NULL),(137,'core_group_get_groups','core_group_external','get_groups','group/externallib.php','moodle','moodle/course:managegroups',NULL),(138,'core_group_unassign_grouping','core_group_external','unassign_grouping','group/externallib.php','moodle','',NULL),(139,'core_group_update_groupings','core_group_external','update_groupings','group/externallib.php','moodle','',NULL),(140,'core_group_update_groups','core_group_external','update_groups','group/externallib.php','moodle','moodle/course:managegroups',NULL),(141,'core_message_mute_conversations','core_message_external','mute_conversations','message/externallib.php','moodle','','moodle_mobile_app'),(142,'core_message_unmute_conversations','core_message_external','unmute_conversations','message/externallib.php','moodle','','moodle_mobile_app'),(143,'core_message_block_user','core_message_external','block_user','message/externallib.php','moodle','','moodle_mobile_app'),(144,'core_message_get_contact_requests','core_message_external','get_contact_requests','message/externallib.php','moodle','','moodle_mobile_app'),(145,'core_message_create_contact_request','core_message_external','create_contact_request','message/externallib.php','moodle','','moodle_mobile_app'),(146,'core_message_confirm_contact_request','core_message_external','confirm_contact_request','message/externallib.php','moodle','','moodle_mobile_app'),(147,'core_message_decline_contact_request','core_message_external','decline_contact_request','message/externallib.php','moodle','','moodle_mobile_app'),(148,'core_message_get_received_contact_requests_count','core_message_external','get_received_contact_requests_count','message/externallib.php','moodle','','moodle_mobile_app'),(149,'core_message_delete_contacts','core_message_external','delete_contacts','message/externallib.php','moodle','','moodle_mobile_app'),(150,'core_message_delete_conversations_by_id','core_message_external','delete_conversations_by_id','message/externallib.php','moodle','moodle/site:deleteownmessage','moodle_mobile_app'),(151,'core_message_delete_message','core_message_external','delete_message','message/externallib.php','moodle','moodle/site:deleteownmessage','moodle_mobile_app'),(152,'core_message_get_blocked_users','core_message_external','get_blocked_users','message/externallib.php','moodle','','moodle_mobile_app'),(153,'core_message_data_for_messagearea_search_messages','core_message_external','data_for_messagearea_search_messages','message/externallib.php','moodle','','moodle_mobile_app'),(154,'core_message_message_search_users','core_message_external','message_search_users','message/externallib.php','moodle','','moodle_mobile_app'),(155,'core_message_get_user_contacts','core_message_external','get_user_contacts','message/externallib.php','moodle','','moodle_mobile_app'),(156,'core_message_get_conversations','core_message_external','get_conversations','message/externallib.php','moodle','','moodle_mobile_app'),(157,'core_message_get_conversation','core_message_external','get_conversation','message/externallib.php','moodle','','moodle_mobile_app'),(158,'core_message_get_conversation_between_users','core_message_external','get_conversation_between_users','message/externallib.php','moodle','','moodle_mobile_app'),(159,'core_message_get_self_conversation','core_message_external','get_self_conversation','message/externallib.php','moodle','','moodle_mobile_app'),(160,'core_message_get_messages','core_message_external','get_messages','message/externallib.php','moodle','','moodle_mobile_app'),(161,'core_message_get_conversation_counts','core_message_external','get_conversation_counts','message/externallib.php','moodle','','moodle_mobile_app'),(162,'core_message_get_unread_conversation_counts','core_message_external','get_unread_conversation_counts','message/externallib.php','moodle','','moodle_mobile_app'),(163,'core_message_get_conversation_members','core_message_external','get_conversation_members','message/externallib.php','moodle','','moodle_mobile_app'),(164,'core_message_get_member_info','core_message_external','get_member_info','message/externallib.php','moodle','','moodle_mobile_app'),(165,'core_message_get_unread_conversations_count','core_message_external','get_unread_conversations_count','message/externallib.php','moodle','','moodle_mobile_app'),(166,'core_message_mark_all_notifications_as_read','core_message_external','mark_all_notifications_as_read','message/externallib.php','moodle','','moodle_mobile_app'),(167,'core_message_mark_all_conversation_messages_as_read','core_message_external','mark_all_conversation_messages_as_read','message/externallib.php','moodle','','moodle_mobile_app'),(168,'core_message_mark_message_read','core_message_external','mark_message_read','message/externallib.php','moodle','','moodle_mobile_app'),(169,'core_message_mark_notification_read','core_message_external','mark_notification_read','message/externallib.php','moodle','','moodle_mobile_app'),(170,'core_message_message_processor_config_form','core_message_external','message_processor_config_form','message/externallib.php','moodle','','moodle_mobile_app'),(171,'core_message_get_message_processor','core_message_external','get_message_processor','message/externallib.php','moodle','',NULL),(172,'core_message_search_contacts','core_message_external','search_contacts','message/externallib.php','moodle','','moodle_mobile_app'),(173,'core_message_send_instant_messages','core_message_external','send_instant_messages','message/externallib.php','moodle','moodle/site:sendmessage','moodle_mobile_app'),(174,'core_message_send_messages_to_conversation','core_message_external','send_messages_to_conversation','message/externallib.php','moodle','moodle/site:sendmessage','moodle_mobile_app'),(175,'core_message_get_conversation_messages','core_message_external','get_conversation_messages','message/externallib.php','moodle','','moodle_mobile_app'),(176,'core_message_unblock_user','core_message_external','unblock_user','message/externallib.php','moodle','','moodle_mobile_app'),(177,'core_message_get_user_notification_preferences','core_message_external','get_user_notification_preferences','message/externallib.php','moodle','moodle/user:editownmessageprofile','moodle_mobile_app'),(178,'core_message_get_user_message_preferences','core_message_external','get_user_message_preferences','message/externallib.php','moodle','moodle/user:editownmessageprofile','moodle_mobile_app'),(179,'core_message_set_favourite_conversations','core_message_external','set_favourite_conversations','message/externallib.php','moodle','','moodle_mobile_app'),(180,'core_message_unset_favourite_conversations','core_message_external','unset_favourite_conversations','message/externallib.php','moodle','','moodle_mobile_app'),(181,'core_message_delete_message_for_all_users','core_message_external','delete_message_for_all_users','message/externallib.php','moodle','moodle/site:deleteanymessage','moodle_mobile_app'),(182,'core_message_get_unread_notification_count','\\core_message\\external\\get_unread_notification_count','execute',NULL,'moodle','','moodle_mobile_app'),(183,'core_notes_create_notes','core_notes_external','create_notes','notes/externallib.php','moodle','moodle/notes:manage','moodle_mobile_app'),(184,'core_notes_delete_notes','core_notes_external','delete_notes','notes/externallib.php','moodle','moodle/notes:manage','moodle_mobile_app'),(185,'core_notes_get_course_notes','core_notes_external','get_course_notes','notes/externallib.php','moodle','moodle/notes:view','moodle_mobile_app'),(186,'core_notes_get_notes','core_notes_external','get_notes','notes/externallib.php','moodle','moodle/notes:view',NULL),(187,'core_notes_update_notes','core_notes_external','update_notes','notes/externallib.php','moodle','moodle/notes:manage',NULL),(188,'core_notes_view_notes','core_notes_external','view_notes','notes/externallib.php','moodle','moodle/notes:view','moodle_mobile_app'),(189,'core_output_load_template','core\\output\\external','load_template',NULL,'moodle','',NULL),(190,'core_output_load_template_with_dependencies','core\\output\\external','load_template_with_dependencies',NULL,'moodle','',NULL),(191,'core_output_load_fontawesome_icon_map','core\\output\\external','load_fontawesome_icon_map',NULL,'moodle','',NULL),(192,'core_output_load_fontawesome_icon_system_map','core\\external\\output\\icon_system\\load_fontawesome_map','execute',NULL,'moodle','',NULL),(193,'core_question_update_flag','core_question_external','update_flag',NULL,'moodle','moodle/question:flag','moodle_mobile_app'),(194,'core_question_submit_tags_form','core_question_external','submit_tags_form',NULL,'moodle','',NULL),(195,'core_question_get_random_question_summaries','core_question_external','get_random_question_summaries',NULL,'moodle','',NULL),(196,'core_rating_get_item_ratings','core_rating_external','get_item_ratings',NULL,'moodle','moodle/rating:view','moodle_mobile_app'),(197,'core_rating_add_rating','core_rating_external','add_rating',NULL,'moodle','moodle/rating:rate','moodle_mobile_app'),(198,'core_role_assign_roles','core_role_external','assign_roles','enrol/externallib.php','moodle','moodle/role:assign',NULL),(199,'core_role_unassign_roles','core_role_external','unassign_roles','enrol/externallib.php','moodle','moodle/role:assign',NULL),(200,'core_search_get_relevant_users','\\core_search\\external','get_relevant_users',NULL,'moodle','',NULL),(201,'core_tag_get_tagindex','core_tag_external','get_tagindex',NULL,'moodle','','moodle_mobile_app'),(202,'core_tag_get_tags','core_tag_external','get_tags',NULL,'moodle','',NULL),(203,'core_tag_update_tags','core_tag_external','update_tags',NULL,'moodle','',NULL),(204,'core_tag_get_tagindex_per_area','core_tag_external','get_tagindex_per_area',NULL,'moodle','','moodle_mobile_app'),(205,'core_tag_get_tag_areas','core_tag_external','get_tag_areas',NULL,'moodle','','moodle_mobile_app'),(206,'core_tag_get_tag_collections','core_tag_external','get_tag_collections',NULL,'moodle','','moodle_mobile_app'),(207,'core_tag_get_tag_cloud','core_tag_external','get_tag_cloud',NULL,'moodle','','moodle_mobile_app'),(208,'core_update_inplace_editable','core_external','update_inplace_editable','lib/external/externallib.php','moodle','',NULL),(209,'core_user_add_user_device','core_user_external','add_user_device','user/externallib.php','moodle','','moodle_mobile_app'),(210,'core_user_update_user_device_public_key','\\core_user\\external\\update_user_device_public_key','execute',NULL,'moodle','','moodle_mobile_app'),(211,'core_user_add_user_private_files','core_user_external','add_user_private_files','user/externallib.php','moodle','moodle/user:manageownfiles','moodle_mobile_app'),(212,'core_user_create_users','core_user_external','create_users','user/externallib.php','moodle','moodle/user:create',NULL),(213,'core_user_delete_users','core_user_external','delete_users','user/externallib.php','moodle','moodle/user:delete',NULL),(214,'core_user_get_course_user_profiles','core_user_external','get_course_user_profiles','user/externallib.php','moodle','moodle/user:viewdetails, moodle/user:viewhiddendetails, moodle/course:useremail, moodle/user:update, moodle/site:accessallgroups','moodle_mobile_app'),(215,'core_user_get_users','core_user_external','get_users','user/externallib.php','moodle','moodle/user:viewdetails, moodle/user:viewhiddendetails, moodle/course:useremail, moodle/user:update',NULL),(216,'core_user_get_users_by_field','core_user_external','get_users_by_field','user/externallib.php','moodle','moodle/user:viewdetails, moodle/user:viewhiddendetails, moodle/course:useremail, moodle/user:update','moodle_mobile_app'),(217,'core_user_search_identity','\\core_user\\external\\search_identity','execute',NULL,'moodle','moodle/user:viewalldetails',NULL),(218,'core_user_remove_user_device','core_user_external','remove_user_device','user/externallib.php','moodle','','moodle_mobile_app'),(219,'core_user_update_users','core_user_external','update_users','user/externallib.php','moodle','moodle/user:update',NULL),(220,'core_user_update_user_preferences','core_user_external','update_user_preferences','user/externallib.php','moodle','moodle/user:editownmessageprofile, moodle/user:editmessageprofile','moodle_mobile_app'),(221,'core_user_view_user_list','core_user_external','view_user_list','user/externallib.php','moodle','moodle/course:viewparticipants','moodle_mobile_app'),(222,'core_user_view_user_profile','core_user_external','view_user_profile','user/externallib.php','moodle','moodle/user:viewdetails','moodle_mobile_app'),(223,'core_user_get_user_preferences','core_user_external','get_user_preferences','user/externallib.php','moodle','','moodle_mobile_app'),(224,'core_user_update_picture','core_user_external','update_picture','user/externallib.php','moodle','moodle/user:editownprofile, moodle/user:editprofile','moodle_mobile_app'),(225,'core_user_set_user_preferences','core_user_external','set_user_preferences','user/externallib.php','moodle','moodle/site:config','moodle_mobile_app'),(226,'core_user_agree_site_policy','core_user_external','agree_site_policy','user/externallib.php','moodle','','moodle_mobile_app'),(227,'core_user_get_private_files_info','core_user_external','get_private_files_info','user/externallib.php','moodle','moodle/user:manageownfiles','moodle_mobile_app'),(228,'core_competency_create_competency_framework','core_competency\\external','create_competency_framework',NULL,'moodle','moodle/competency:competencymanage',NULL),(229,'core_competency_read_competency_framework','core_competency\\external','read_competency_framework',NULL,'moodle','moodle/competency:competencyview',NULL),(230,'core_competency_duplicate_competency_framework','core_competency\\external','duplicate_competency_framework',NULL,'moodle','moodle/competency:competencymanage',NULL),(231,'core_competency_delete_competency_framework','core_competency\\external','delete_competency_framework',NULL,'moodle','moodle/competency:competencymanage',NULL),(232,'core_competency_update_competency_framework','core_competency\\external','update_competency_framework',NULL,'moodle','moodle/competency:competencymanage',NULL),(233,'core_competency_list_competency_frameworks','core_competency\\external','list_competency_frameworks',NULL,'moodle','moodle/competency:competencyview',NULL),(234,'core_competency_count_competency_frameworks','core_competency\\external','count_competency_frameworks',NULL,'moodle','moodle/competency:competencyview',NULL),(235,'core_competency_competency_framework_viewed','core_competency\\external','competency_framework_viewed',NULL,'moodle','moodle/competency:competencyview',NULL),(236,'core_competency_create_competency','core_competency\\external','create_competency',NULL,'moodle','moodle/competency:competencymanage',NULL),(237,'core_competency_read_competency','core_competency\\external','read_competency',NULL,'moodle','moodle/competency:competencyview',NULL),(238,'core_competency_competency_viewed','core_competency\\external','competency_viewed',NULL,'moodle','moodle/competency:competencyview','moodle_mobile_app'),(239,'core_competency_delete_competency','core_competency\\external','delete_competency',NULL,'moodle','moodle/competency:competencymanage',NULL),(240,'core_competency_update_competency','core_competency\\external','update_competency',NULL,'moodle','moodle/competency:competencymanage',NULL),(241,'core_competency_list_competencies','core_competency\\external','list_competencies',NULL,'moodle','moodle/competency:competencyview',NULL),(242,'core_competency_list_competencies_in_template','core_competency\\external','list_competencies_in_template',NULL,'moodle','moodle/competency:competencyview',NULL),(243,'core_competency_count_competencies','core_competency\\external','count_competencies',NULL,'moodle','moodle/competency:competencyview',NULL),(244,'core_competency_count_competencies_in_template','core_competency\\external','count_competencies_in_template',NULL,'moodle','moodle/competency:competencyview',NULL),(245,'core_competency_search_competencies','core_competency\\external','search_competencies',NULL,'moodle','moodle/competency:competencyview',NULL),(246,'core_competency_set_parent_competency','core_competency\\external','set_parent_competency',NULL,'moodle','moodle/competency:competencymanage',NULL),(247,'core_competency_move_up_competency','core_competency\\external','move_up_competency',NULL,'moodle','moodle/competency:competencymanage',NULL),(248,'core_competency_move_down_competency','core_competency\\external','move_down_competency',NULL,'moodle','moodle/competency:competencymanage',NULL),(249,'core_competency_list_course_module_competencies','core_competency\\external','list_course_module_competencies',NULL,'moodle','moodle/competency:coursecompetencyview',NULL),(250,'core_competency_count_course_module_competencies','core_competency\\external','count_course_module_competencies',NULL,'moodle','moodle/competency:coursecompetencyview',NULL),(251,'core_competency_list_course_competencies','core_competency\\external','list_course_competencies',NULL,'moodle','moodle/competency:coursecompetencyview','moodle_mobile_app'),(252,'core_competency_count_competencies_in_course','core_competency\\external','count_competencies_in_course',NULL,'moodle','moodle/competency:coursecompetencyview',NULL),(253,'core_competency_count_courses_using_competency','core_competency\\external','count_courses_using_competency',NULL,'moodle','moodle/competency:coursecompetencyview',NULL),(254,'core_competency_add_competency_to_course','core_competency\\external','add_competency_to_course',NULL,'moodle','moodle/competency:coursecompetencymanage',NULL),(255,'core_competency_add_competency_to_template','core_competency\\external','add_competency_to_template',NULL,'moodle','moodle/competency:templatemanage',NULL),(256,'core_competency_remove_competency_from_course','core_competency\\external','remove_competency_from_course',NULL,'moodle','moodle/competency:coursecompetencymanage',NULL),(257,'core_competency_set_course_competency_ruleoutcome','core_competency\\external','set_course_competency_ruleoutcome',NULL,'moodle','moodle/competency:coursecompetencymanage',NULL),(258,'core_competency_remove_competency_from_template','core_competency\\external','remove_competency_from_template',NULL,'moodle','moodle/competency:templatemanage',NULL),(259,'core_competency_reorder_course_competency','core_competency\\external','reorder_course_competency',NULL,'moodle','moodle/competency:coursecompetencymanage',NULL),(260,'core_competency_reorder_template_competency','core_competency\\external','reorder_template_competency',NULL,'moodle','moodle/competency:templatemanage',NULL),(261,'core_competency_create_template','core_competency\\external','create_template',NULL,'moodle','moodle/competency:templatemanage',NULL),(262,'core_competency_duplicate_template','core_competency\\external','duplicate_template',NULL,'moodle','moodle/competency:templatemanage',NULL),(263,'core_competency_read_template','core_competency\\external','read_template',NULL,'moodle','moodle/competency:templateview',NULL),(264,'core_competency_delete_template','core_competency\\external','delete_template',NULL,'moodle','moodle/competency:templatemanage',NULL),(265,'core_competency_update_template','core_competency\\external','update_template',NULL,'moodle','moodle/competency:templatemanage',NULL),(266,'core_competency_list_templates','core_competency\\external','list_templates',NULL,'moodle','moodle/competency:templateview',NULL),(267,'core_competency_list_templates_using_competency','core_competency\\external','list_templates_using_competency',NULL,'moodle','moodle/competency:templateview',NULL),(268,'core_competency_count_templates','core_competency\\external','count_templates',NULL,'moodle','moodle/competency:templateview',NULL),(269,'core_competency_count_templates_using_competency','core_competency\\external','count_templates_using_competency',NULL,'moodle','moodle/competency:templateview',NULL),(270,'core_competency_create_plan','core_competency\\external','create_plan',NULL,'moodle','moodle/competency:planmanage',NULL),(271,'core_competency_update_plan','core_competency\\external','update_plan',NULL,'moodle','moodle/competency:planmanage',NULL),(272,'core_competency_complete_plan','core_competency\\external','complete_plan',NULL,'moodle','moodle/competency:planmanage',NULL),(273,'core_competency_reopen_plan','core_competency\\external','reopen_plan',NULL,'moodle','moodle/competency:planmanage',NULL),(274,'core_competency_read_plan','core_competency\\external','read_plan',NULL,'moodle','moodle/competency:planviewown',NULL),(275,'core_competency_delete_plan','core_competency\\external','delete_plan',NULL,'moodle','moodle/competency:planmanage',NULL),(276,'core_competency_list_user_plans','core_competency\\external','list_user_plans',NULL,'moodle','moodle/competency:planviewown',NULL),(277,'core_competency_list_plan_competencies','core_competency\\external','list_plan_competencies',NULL,'moodle','moodle/competency:planviewown',NULL),(278,'core_competency_add_competency_to_plan','core_competency\\external','add_competency_to_plan',NULL,'moodle','moodle/competency:planmanage',NULL),(279,'core_competency_remove_competency_from_plan','core_competency\\external','remove_competency_from_plan',NULL,'moodle','moodle/competency:planmanage',NULL),(280,'core_competency_reorder_plan_competency','core_competency\\external','reorder_plan_competency',NULL,'moodle','moodle/competency:planmanage',NULL),(281,'core_competency_plan_request_review','core_competency\\external','plan_request_review',NULL,'moodle','moodle/competency:planmanagedraft',NULL),(282,'core_competency_plan_start_review','core_competency\\external','plan_start_review',NULL,'moodle','moodle/competency:planmanage',NULL),(283,'core_competency_plan_stop_review','core_competency\\external','plan_stop_review',NULL,'moodle','moodle/competency:planmanage',NULL),(284,'core_competency_plan_cancel_review_request','core_competency\\external','plan_cancel_review_request',NULL,'moodle','moodle/competency:planmanagedraft',NULL),(285,'core_competency_approve_plan','core_competency\\external','approve_plan',NULL,'moodle','moodle/competency:planmanage',NULL),(286,'core_competency_unapprove_plan','core_competency\\external','unapprove_plan',NULL,'moodle','moodle/competency:planmanage',NULL),(287,'core_competency_template_has_related_data','core_competency\\external','template_has_related_data',NULL,'moodle','moodle/competency:templateview',NULL),(288,'core_competency_get_scale_values','core_competency\\external','get_scale_values',NULL,'moodle','moodle/competency:competencymanage','moodle_mobile_app'),(289,'core_competency_add_related_competency','core_competency\\external','add_related_competency',NULL,'moodle','moodle/competency:competencymanage',NULL),(290,'core_competency_remove_related_competency','core_competency\\external','remove_related_competency',NULL,'moodle','moodle/competency:competencymanage',NULL),(291,'core_competency_read_user_evidence','core_competency\\external','read_user_evidence',NULL,'moodle','moodle/competency:userevidenceview',NULL),(292,'core_competency_delete_user_evidence','core_competency\\external','delete_user_evidence',NULL,'moodle','moodle/competency:userevidencemanageown',NULL),(293,'core_competency_create_user_evidence_competency','core_competency\\external','create_user_evidence_competency',NULL,'moodle','moodle/competency:userevidencemanageown, moodle/competency:competencyview',NULL),(294,'core_competency_delete_user_evidence_competency','core_competency\\external','delete_user_evidence_competency',NULL,'moodle','moodle/competency:userevidencemanageown',NULL),(295,'core_competency_user_competency_cancel_review_request','core_competency\\external','user_competency_cancel_review_request',NULL,'moodle','moodle/competency:userevidencemanageown',NULL),(296,'core_competency_user_competency_request_review','core_competency\\external','user_competency_request_review',NULL,'moodle','moodle/competency:userevidencemanageown',NULL),(297,'core_competency_user_competency_start_review','core_competency\\external','user_competency_start_review',NULL,'moodle','moodle/competency:competencygrade',NULL),(298,'core_competency_user_competency_stop_review','core_competency\\external','user_competency_stop_review',NULL,'moodle','moodle/competency:competencygrade',NULL),(299,'core_competency_user_competency_viewed','core_competency\\external','user_competency_viewed',NULL,'moodle','moodle/competency:usercompetencyview','moodle_mobile_app'),(300,'core_competency_user_competency_viewed_in_plan','core_competency\\external','user_competency_viewed_in_plan',NULL,'moodle','moodle/competency:usercompetencyview','moodle_mobile_app'),(301,'core_competency_user_competency_viewed_in_course','core_competency\\external','user_competency_viewed_in_course',NULL,'moodle','moodle/competency:usercompetencyview','moodle_mobile_app'),(302,'core_competency_user_competency_plan_viewed','core_competency\\external','user_competency_plan_viewed',NULL,'moodle','moodle/competency:usercompetencyview','moodle_mobile_app'),(303,'core_competency_grade_competency','core_competency\\external','grade_competency',NULL,'moodle','moodle/competency:competencygrade',NULL),(304,'core_competency_grade_competency_in_plan','core_competency\\external','grade_competency_in_plan',NULL,'moodle','moodle/competency:competencygrade',NULL),(305,'core_competency_grade_competency_in_course','core_competency\\external','grade_competency_in_course',NULL,'moodle','moodle/competency:competencygrade','moodle_mobile_app'),(306,'core_competency_unlink_plan_from_template','core_competency\\external','unlink_plan_from_template',NULL,'moodle','moodle/competency:planmanage',NULL),(307,'core_competency_template_viewed','core_competency\\external','template_viewed',NULL,'moodle','moodle/competency:templateview',NULL),(308,'core_competency_request_review_of_user_evidence_linked_competencies','core_competency\\external','request_review_of_user_evidence_linked_competencies',NULL,'moodle','moodle/competency:userevidencemanageown',NULL),(309,'core_competency_update_course_competency_settings','core_competency\\external','update_course_competency_settings',NULL,'moodle','moodle/competency:coursecompetencyconfigure',NULL),(310,'core_competency_delete_evidence','core_competency\\external','delete_evidence',NULL,'moodle','moodle/competency:evidencedelete','moodle_mobile_app'),(311,'core_webservice_get_site_info','core_webservice_external','get_site_info','webservice/externallib.php','moodle','','moodle_mobile_app'),(312,'core_block_get_course_blocks','core_block_external','get_course_blocks',NULL,'moodle','','moodle_mobile_app'),(313,'core_block_get_dashboard_blocks','core_block_external','get_dashboard_blocks',NULL,'moodle','','moodle_mobile_app'),(314,'core_block_fetch_addable_blocks','core_block\\external\\fetch_addable_blocks','execute',NULL,'moodle','moodle/site:manageblocks','moodle_mobile_app'),(315,'core_filters_get_available_in_context','core_filters\\external','get_available_in_context',NULL,'moodle','','moodle_mobile_app'),(316,'core_customfield_delete_field','core_customfield_external','delete_field','customfield/externallib.php','moodle','',NULL),(317,'core_customfield_reload_template','core_customfield_external','reload_template','customfield/externallib.php','moodle','',NULL),(318,'core_customfield_create_category','core_customfield_external','create_category','customfield/externallib.php','moodle','',NULL),(319,'core_customfield_delete_category','core_customfield_external','delete_category','customfield/externallib.php','moodle','',NULL),(320,'core_customfield_move_field','core_customfield_external','move_field','customfield/externallib.php','moodle','',NULL),(321,'core_customfield_move_category','core_customfield_external','move_category','customfield/externallib.php','moodle','',NULL),(322,'core_h5p_get_trusted_h5p_file','core_h5p\\external','get_trusted_h5p_file',NULL,'moodle','','moodle_mobile_app'),(323,'core_table_get_dynamic_table_content','core_table\\external\\dynamic\\get','execute',NULL,'moodle','','moodle_mobile_app'),(324,'core_xapi_statement_post','core_xapi\\external\\post_statement','execute',NULL,'moodle','','moodle_mobile_app'),(325,'core_xapi_post_state','core_xapi\\external\\post_state','execute',NULL,'moodle','','moodle_mobile_app'),(326,'core_xapi_get_state','core_xapi\\external\\get_state','execute',NULL,'moodle','','moodle_mobile_app'),(327,'core_xapi_get_states','core_xapi\\external\\get_states','execute',NULL,'moodle','','moodle_mobile_app'),(328,'core_xapi_delete_state','core_xapi\\external\\delete_state','execute',NULL,'moodle','','moodle_mobile_app'),(329,'core_contentbank_delete_content','core_contentbank\\external\\delete_content','execute',NULL,'moodle','moodle/contentbank:deleteanycontent',NULL),(330,'core_contentbank_rename_content','core_contentbank\\external\\rename_content','execute',NULL,'moodle','moodle/contentbank:manageowncontent',NULL),(331,'core_contentbank_set_content_visibility','core_contentbank\\external\\set_content_visibility','execute',NULL,'moodle','moodle/contentbank:manageowncontent',NULL),(332,'core_create_userfeedback_action_record','core\\external\\record_userfeedback_action','execute',NULL,'moodle','',NULL),(333,'core_payment_get_available_gateways','core_payment\\external\\get_available_gateways','execute',NULL,'moodle','',NULL),(334,'core_reportbuilder_filters_reset','core_reportbuilder\\external\\filters\\reset','execute',NULL,'moodle','',NULL),(335,'core_reportbuilder_set_filters','core_reportbuilder\\external\\filters\\set','execute',NULL,'moodle','',NULL),(336,'core_dynamic_tabs_get_content','core\\external\\dynamic_tabs_get_content','execute',NULL,'moodle','',NULL),(337,'core_change_editmode','core\\external\\editmode','change_editmode',NULL,'moodle','',NULL),(338,'core_reportbuilder_reports_delete','core_reportbuilder\\external\\reports\\delete','execute',NULL,'moodle','',NULL),(339,'core_reportbuilder_reports_get','core_reportbuilder\\external\\reports\\get','execute',NULL,'moodle','',NULL),(340,'core_reportbuilder_list_reports','core_reportbuilder\\external\\reports\\listing','execute',NULL,'moodle','','moodle_mobile_app'),(341,'core_reportbuilder_retrieve_report','core_reportbuilder\\external\\reports\\retrieve','execute',NULL,'moodle','','moodle_mobile_app'),(342,'core_reportbuilder_view_report','core_reportbuilder\\external\\reports\\view','execute',NULL,'moodle','','moodle_mobile_app'),(343,'core_reportbuilder_columns_add','core_reportbuilder\\external\\columns\\add','execute',NULL,'moodle','',NULL),(344,'core_reportbuilder_columns_delete','core_reportbuilder\\external\\columns\\delete','execute',NULL,'moodle','',NULL),(345,'core_reportbuilder_columns_reorder','core_reportbuilder\\external\\columns\\reorder','execute',NULL,'moodle','',NULL),(346,'core_reportbuilder_columns_sort_get','core_reportbuilder\\external\\columns\\sort\\get','execute',NULL,'moodle','',NULL),(347,'core_reportbuilder_columns_sort_reorder','core_reportbuilder\\external\\columns\\sort\\reorder','execute',NULL,'moodle','',NULL),(348,'core_reportbuilder_columns_sort_toggle','core_reportbuilder\\external\\columns\\sort\\toggle','execute',NULL,'moodle','',NULL),(349,'core_reportbuilder_conditions_add','core_reportbuilder\\external\\conditions\\add','execute',NULL,'moodle','',NULL),(350,'core_reportbuilder_conditions_delete','core_reportbuilder\\external\\conditions\\delete','execute',NULL,'moodle','',NULL),(351,'core_reportbuilder_conditions_reorder','core_reportbuilder\\external\\conditions\\reorder','execute',NULL,'moodle','',NULL),(352,'core_reportbuilder_conditions_reset','core_reportbuilder\\external\\conditions\\reset','execute',NULL,'moodle','',NULL),(353,'core_reportbuilder_filters_add','core_reportbuilder\\external\\filters\\add','execute',NULL,'moodle','',NULL),(354,'core_reportbuilder_filters_delete','core_reportbuilder\\external\\filters\\delete','execute',NULL,'moodle','',NULL),(355,'core_reportbuilder_filters_reorder','core_reportbuilder\\external\\filters\\reorder','execute',NULL,'moodle','',NULL),(356,'core_reportbuilder_audiences_delete','core_reportbuilder\\external\\audiences\\delete','execute',NULL,'moodle','',NULL),(357,'core_reportbuilder_schedules_delete','core_reportbuilder\\external\\schedules\\delete','execute',NULL,'moodle','',NULL),(358,'core_reportbuilder_schedules_send','core_reportbuilder\\external\\schedules\\send','execute',NULL,'moodle','',NULL),(359,'core_reportbuilder_schedules_toggle','core_reportbuilder\\external\\schedules\\toggle','execute',NULL,'moodle','',NULL),(360,'core_admin_set_plugin_state','core_admin\\external\\set_plugin_state','execute',NULL,'moodle','',NULL),(361,'core_admin_set_plugin_order','core_admin\\external\\set_plugin_order','execute',NULL,'moodle','',NULL),(362,'core_admin_set_block_protection','core_admin\\external\\set_block_protection','execute',NULL,'moodle','',NULL),(363,'core_moodlenet_send_activity','core\\external\\moodlenet_send_activity','execute',NULL,'moodle','',NULL),(364,'core_moodlenet_get_share_info_activity','core\\external\\moodlenet_get_share_info_activity','execute',NULL,'moodle','',NULL),(365,'core_moodlenet_auth_check','core\\external\\moodlenet_auth_check','execute',NULL,'moodle','',NULL),(366,'mod_assign_copy_previous_attempt','mod_assign_external','copy_previous_attempt','mod/assign/externallib.php','mod_assign','mod/assign:view, mod/assign:submit',NULL),(367,'mod_assign_get_grades','mod_assign_external','get_grades','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(368,'mod_assign_get_assignments','mod_assign_external','get_assignments','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(369,'mod_assign_get_submissions','mod_assign_external','get_submissions','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(370,'mod_assign_get_user_flags','mod_assign_external','get_user_flags','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(371,'mod_assign_set_user_flags','mod_assign_external','set_user_flags','mod/assign/externallib.php','mod_assign','mod/assign:grade','moodle_mobile_app'),(372,'mod_assign_get_user_mappings','mod_assign_external','get_user_mappings','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(373,'mod_assign_revert_submissions_to_draft','mod_assign_external','revert_submissions_to_draft','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(374,'mod_assign_lock_submissions','mod_assign_external','lock_submissions','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(375,'mod_assign_unlock_submissions','mod_assign_external','unlock_submissions','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(376,'mod_assign_save_submission','mod_assign_external','save_submission','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(377,'mod_assign_submit_for_grading','mod_assign_external','submit_for_grading','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(378,'mod_assign_save_grade','mod_assign_external','save_grade','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(379,'mod_assign_save_grades','mod_assign_external','save_grades','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(380,'mod_assign_save_user_extensions','mod_assign_external','save_user_extensions','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(381,'mod_assign_reveal_identities','mod_assign_external','reveal_identities','mod/assign/externallib.php','mod_assign','','moodle_mobile_app'),(382,'mod_assign_view_grading_table','mod_assign_external','view_grading_table','mod/assign/externallib.php','mod_assign','mod/assign:view, mod/assign:viewgrades','moodle_mobile_app'),(383,'mod_assign_view_submission_status','mod_assign_external','view_submission_status','mod/assign/externallib.php','mod_assign','mod/assign:view','moodle_mobile_app'),(384,'mod_assign_get_submission_status','mod_assign_external','get_submission_status','mod/assign/externallib.php','mod_assign','mod/assign:view','moodle_mobile_app'),(385,'mod_assign_list_participants','mod_assign_external','list_participants','mod/assign/externallib.php','mod_assign','mod/assign:view, mod/assign:viewgrades','moodle_mobile_app'),(386,'mod_assign_submit_grading_form','mod_assign_external','submit_grading_form','mod/assign/externallib.php','mod_assign','mod/assign:grade','moodle_mobile_app'),(387,'mod_assign_get_participant','mod_assign_external','get_participant','mod/assign/externallib.php','mod_assign','mod/assign:view, mod/assign:viewgrades','moodle_mobile_app'),(388,'mod_assign_view_assign','mod_assign_external','view_assign','mod/assign/externallib.php','mod_assign','mod/assign:view','moodle_mobile_app'),(389,'mod_assign_start_submission','mod_assign\\external\\start_submission','execute',NULL,'mod_assign','mod/assign:view','moodle_mobile_app'),(390,'mod_bigbluebuttonbn_can_join','mod_bigbluebuttonbn\\external\\can_join','execute',NULL,'mod_bigbluebuttonbn','mod/bigbluebuttonbn:view','moodle_mobile_app'),(391,'mod_bigbluebuttonbn_get_recordings','mod_bigbluebuttonbn\\external\\get_recordings','execute',NULL,'mod_bigbluebuttonbn','mod/bigbluebuttonbn:view','moodle_mobile_app'),(392,'mod_bigbluebuttonbn_get_recordings_to_import','mod_bigbluebuttonbn\\external\\get_recordings_to_import','execute',NULL,'mod_bigbluebuttonbn','mod/bigbluebuttonbn:importrecordings','moodle_mobile_app'),(393,'mod_bigbluebuttonbn_update_recording','mod_bigbluebuttonbn\\external\\update_recording','execute',NULL,'mod_bigbluebuttonbn','mod/bigbluebuttonbn:managerecordings','moodle_mobile_app'),(394,'mod_bigbluebuttonbn_end_meeting','mod_bigbluebuttonbn\\external\\end_meeting','execute',NULL,'mod_bigbluebuttonbn','mod/bigbluebuttonbn:join','moodle_mobile_app'),(395,'mod_bigbluebuttonbn_completion_validate','mod_bigbluebuttonbn\\external\\completion_validate','execute',NULL,'mod_bigbluebuttonbn','mod/bigbluebuttonbn:view','moodle_mobile_app'),(396,'mod_bigbluebuttonbn_meeting_info','mod_bigbluebuttonbn\\external\\meeting_info','execute',NULL,'mod_bigbluebuttonbn','mod/bigbluebuttonbn:view','moodle_mobile_app'),(397,'mod_bigbluebuttonbn_get_bigbluebuttonbns_by_courses','mod_bigbluebuttonbn\\external\\get_bigbluebuttonbns_by_courses','execute',NULL,'mod_bigbluebuttonbn','mod/bigbluebuttonbn:view','moodle_mobile_app'),(398,'mod_bigbluebuttonbn_view_bigbluebuttonbn','mod_bigbluebuttonbn\\external\\view_bigbluebuttonbn','execute',NULL,'mod_bigbluebuttonbn','mod/bigbluebuttonbn:view','moodle_mobile_app'),(399,'mod_bigbluebuttonbn_get_join_url','mod_bigbluebuttonbn\\external\\get_join_url','execute',NULL,'mod_bigbluebuttonbn','mod/bigbluebuttonbn:join','moodle_mobile_app'),(400,'mod_book_view_book','mod_book_external','view_book',NULL,'mod_book','mod/book:read','moodle_mobile_app'),(401,'mod_book_get_books_by_courses','mod_book_external','get_books_by_courses',NULL,'mod_book','','moodle_mobile_app'),(402,'mod_chat_login_user','mod_chat_external','login_user',NULL,'mod_chat','mod/chat:chat','moodle_mobile_app'),(403,'mod_chat_get_chat_users','mod_chat_external','get_chat_users',NULL,'mod_chat','mod/chat:chat','moodle_mobile_app'),(404,'mod_chat_send_chat_message','mod_chat_external','send_chat_message',NULL,'mod_chat','mod/chat:chat','moodle_mobile_app'),(405,'mod_chat_get_chat_latest_messages','mod_chat_external','get_chat_latest_messages',NULL,'mod_chat','mod/chat:chat','moodle_mobile_app'),(406,'mod_chat_view_chat','mod_chat_external','view_chat',NULL,'mod_chat','mod/chat:chat','moodle_mobile_app'),(407,'mod_chat_get_chats_by_courses','mod_chat_external','get_chats_by_courses',NULL,'mod_chat','','moodle_mobile_app'),(408,'mod_chat_get_sessions','mod_chat_external','get_sessions',NULL,'mod_chat','','moodle_mobile_app'),(409,'mod_chat_get_session_messages','mod_chat_external','get_session_messages',NULL,'mod_chat','','moodle_mobile_app'),(410,'mod_choice_get_choice_results','mod_choice_external','get_choice_results',NULL,'mod_choice','','moodle_mobile_app'),(411,'mod_choice_get_choice_options','mod_choice_external','get_choice_options',NULL,'mod_choice','mod/choice:choose','moodle_mobile_app'),(412,'mod_choice_submit_choice_response','mod_choice_external','submit_choice_response',NULL,'mod_choice','mod/choice:choose','moodle_mobile_app'),(413,'mod_choice_view_choice','mod_choice_external','view_choice',NULL,'mod_choice','','moodle_mobile_app'),(414,'mod_choice_get_choices_by_courses','mod_choice_external','get_choices_by_courses',NULL,'mod_choice','','moodle_mobile_app'),(415,'mod_choice_delete_choice_responses','mod_choice_external','delete_choice_responses',NULL,'mod_choice','mod/choice:choose','moodle_mobile_app'),(416,'mod_data_get_databases_by_courses','mod_data_external','get_databases_by_courses',NULL,'mod_data','mod/data:viewentry','moodle_mobile_app'),(417,'mod_data_view_database','mod_data_external','view_database',NULL,'mod_data','mod/data:viewentry','moodle_mobile_app'),(418,'mod_data_get_data_access_information','mod_data_external','get_data_access_information',NULL,'mod_data','mod/data:viewentry','moodle_mobile_app'),(419,'mod_data_get_entries','mod_data_external','get_entries',NULL,'mod_data','mod/data:viewentry','moodle_mobile_app'),(420,'mod_data_get_entry','mod_data_external','get_entry',NULL,'mod_data','mod/data:viewentry','moodle_mobile_app'),(421,'mod_data_get_fields','mod_data_external','get_fields',NULL,'mod_data','mod/data:viewentry','moodle_mobile_app'),(422,'mod_data_search_entries','mod_data_external','search_entries',NULL,'mod_data','mod/data:viewentry','moodle_mobile_app'),(423,'mod_data_approve_entry','mod_data_external','approve_entry',NULL,'mod_data','mod/data:approve','moodle_mobile_app'),(424,'mod_data_delete_entry','mod_data_external','delete_entry',NULL,'mod_data','mod/data:manageentries','moodle_mobile_app'),(425,'mod_data_add_entry','mod_data_external','add_entry',NULL,'mod_data','mod/data:writeentry','moodle_mobile_app'),(426,'mod_data_update_entry','mod_data_external','update_entry',NULL,'mod_data','mod/data:writeentry','moodle_mobile_app'),(427,'mod_data_delete_saved_preset','mod_data\\external\\delete_saved_preset','execute',NULL,'mod_data','mod/data:manageuserpresets',NULL),(428,'mod_data_get_mapping_information','mod_data\\external\\get_mapping_information','execute',NULL,'mod_data','mod/data:managetemplates',NULL),(429,'mod_feedback_get_feedbacks_by_courses','mod_feedback_external','get_feedbacks_by_courses',NULL,'mod_feedback','mod/feedback:view','moodle_mobile_app'),(430,'mod_feedback_get_feedback_access_information','mod_feedback_external','get_feedback_access_information',NULL,'mod_feedback','mod/feedback:view','moodle_mobile_app'),(431,'mod_feedback_view_feedback','mod_feedback_external','view_feedback',NULL,'mod_feedback','mod/feedback:view','moodle_mobile_app'),(432,'mod_feedback_get_current_completed_tmp','mod_feedback_external','get_current_completed_tmp',NULL,'mod_feedback','mod/feedback:view','moodle_mobile_app'),(433,'mod_feedback_get_items','mod_feedback_external','get_items',NULL,'mod_feedback','mod/feedback:view','moodle_mobile_app'),(434,'mod_feedback_launch_feedback','mod_feedback_external','launch_feedback',NULL,'mod_feedback','mod/feedback:complete','moodle_mobile_app'),(435,'mod_feedback_get_page_items','mod_feedback_external','get_page_items',NULL,'mod_feedback','mod/feedback:complete','moodle_mobile_app'),(436,'mod_feedback_process_page','mod_feedback_external','process_page',NULL,'mod_feedback','mod/feedback:complete','moodle_mobile_app'),(437,'mod_feedback_get_analysis','mod_feedback_external','get_analysis',NULL,'mod_feedback','mod/feedback:viewanalysepage','moodle_mobile_app'),(438,'mod_feedback_get_unfinished_responses','mod_feedback_external','get_unfinished_responses',NULL,'mod_feedback','mod/feedback:view','moodle_mobile_app'),(439,'mod_feedback_get_finished_responses','mod_feedback_external','get_finished_responses',NULL,'mod_feedback','mod/feedback:view','moodle_mobile_app'),(440,'mod_feedback_get_non_respondents','mod_feedback_external','get_non_respondents',NULL,'mod_feedback','mod/feedback:viewreports','moodle_mobile_app'),(441,'mod_feedback_get_responses_analysis','mod_feedback_external','get_responses_analysis',NULL,'mod_feedback','mod/feedback:viewreports','moodle_mobile_app'),(442,'mod_feedback_get_last_completed','mod_feedback_external','get_last_completed',NULL,'mod_feedback','mod/feedback:view','moodle_mobile_app'),(443,'mod_folder_view_folder','mod_folder_external','view_folder',NULL,'mod_folder','mod/folder:view','moodle_mobile_app'),(444,'mod_folder_get_folders_by_courses','mod_folder_external','get_folders_by_courses',NULL,'mod_folder','mod/folder:view','moodle_mobile_app'),(445,'mod_forum_get_forums_by_courses','mod_forum_external','get_forums_by_courses','mod/forum/externallib.php','mod_forum','mod/forum:viewdiscussion','moodle_mobile_app'),(446,'mod_forum_get_discussion_posts','mod_forum_external','get_discussion_posts','mod/forum/externallib.php','mod_forum','mod/forum:viewdiscussion, mod/forum:viewqandawithoutposting','moodle_mobile_app'),(447,'mod_forum_get_forum_discussions_paginated','mod_forum_external','get_forum_discussions_paginated','mod/forum/externallib.php','mod_forum','mod/forum:viewdiscussion, mod/forum:viewqandawithoutposting','moodle_mobile_app'),(448,'mod_forum_get_forum_discussions','mod_forum_external','get_forum_discussions','mod/forum/externallib.php','mod_forum','mod/forum:viewdiscussion, mod/forum:viewqandawithoutposting','moodle_mobile_app'),(449,'mod_forum_view_forum','mod_forum_external','view_forum','mod/forum/externallib.php','mod_forum','mod/forum:viewdiscussion','moodle_mobile_app'),(450,'mod_forum_view_forum_discussion','mod_forum_external','view_forum_discussion','mod/forum/externallib.php','mod_forum','mod/forum:viewdiscussion','moodle_mobile_app'),(451,'mod_forum_add_discussion_post','mod_forum_external','add_discussion_post','mod/forum/externallib.php','mod_forum','mod/forum:replypost','moodle_mobile_app'),(452,'mod_forum_add_discussion','mod_forum_external','add_discussion','mod/forum/externallib.php','mod_forum','mod/forum:startdiscussion','moodle_mobile_app'),(453,'mod_forum_can_add_discussion','mod_forum_external','can_add_discussion','mod/forum/externallib.php','mod_forum','','moodle_mobile_app'),(454,'mod_forum_get_forum_access_information','mod_forum_external','get_forum_access_information',NULL,'mod_forum','','moodle_mobile_app'),(455,'mod_forum_set_subscription_state','mod_forum_external','set_subscription_state','mod/forum/externallib.php','mod_forum','','moodle_mobile_app'),(456,'mod_forum_set_lock_state','mod_forum_external','set_lock_state','mod/forum/externallib.php','mod_forum','moodle/course:manageactivities','moodle_mobile_app'),(457,'mod_forum_toggle_favourite_state','mod_forum_external','toggle_favourite_state','mod/forum/externallib.php','mod_forum','','moodle_mobile_app'),(458,'mod_forum_set_pin_state','mod_forum_external','set_pin_state','mod/forum/externallib.php','mod_forum','','moodle_mobile_app'),(459,'mod_forum_delete_post','mod_forum_external','delete_post','mod/forum/externallib.php','mod_forum','','moodle_mobile_app'),(460,'mod_forum_get_discussion_posts_by_userid','mod_forum_external','get_discussion_posts_by_userid','mod/forum/externallib.php','mod_forum','mod/forum:viewdiscussion, mod/forum:viewqandawithoutposting',NULL),(461,'mod_forum_get_discussion_post','mod_forum_external','get_discussion_post','mod/forum/externallib.php','mod_forum','','moodle_mobile_app'),(462,'mod_forum_prepare_draft_area_for_post','mod_forum_external','prepare_draft_area_for_post','mod/forum/externallib.php','mod_forum','','moodle_mobile_app'),(463,'mod_forum_update_discussion_post','mod_forum_external','update_discussion_post','mod/forum/externallib.php','mod_forum','','moodle_mobile_app'),(464,'mod_glossary_get_glossaries_by_courses','mod_glossary_external','get_glossaries_by_courses',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(465,'mod_glossary_view_glossary','mod_glossary_external','view_glossary',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(466,'mod_glossary_view_entry','mod_glossary_external','view_entry',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(467,'mod_glossary_get_entries_by_letter','mod_glossary_external','get_entries_by_letter',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(468,'mod_glossary_get_entries_by_date','mod_glossary_external','get_entries_by_date',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(469,'mod_glossary_get_categories','mod_glossary_external','get_categories',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(470,'mod_glossary_get_entries_by_category','mod_glossary_external','get_entries_by_category',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(471,'mod_glossary_get_authors','mod_glossary_external','get_authors',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(472,'mod_glossary_get_entries_by_author','mod_glossary_external','get_entries_by_author',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(473,'mod_glossary_get_entries_by_author_id','mod_glossary_external','get_entries_by_author_id',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(474,'mod_glossary_get_entries_by_search','mod_glossary_external','get_entries_by_search',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(475,'mod_glossary_get_entries_by_term','mod_glossary_external','get_entries_by_term',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(476,'mod_glossary_get_entries_to_approve','mod_glossary_external','get_entries_to_approve',NULL,'mod_glossary','mod/glossary:approve','moodle_mobile_app'),(477,'mod_glossary_get_entry_by_id','mod_glossary_external','get_entry_by_id',NULL,'mod_glossary','mod/glossary:view','moodle_mobile_app'),(478,'mod_glossary_add_entry','mod_glossary_external','add_entry',NULL,'mod_glossary','mod/glossary:write','moodle_mobile_app'),(479,'mod_glossary_delete_entry','mod_glossary\\external\\delete_entry','execute',NULL,'mod_glossary','','moodle_mobile_app'),(480,'mod_glossary_update_entry','mod_glossary\\external\\update_entry','execute',NULL,'mod_glossary','','moodle_mobile_app'),(481,'mod_glossary_prepare_entry_for_edition','mod_glossary\\external\\prepare_entry','execute',NULL,'mod_glossary','','moodle_mobile_app'),(482,'mod_h5pactivity_get_h5pactivity_access_information','mod_h5pactivity\\external\\get_h5pactivity_access_information','execute',NULL,'mod_h5pactivity','mod/h5pactivity:view','moodle_mobile_app'),(483,'mod_h5pactivity_view_h5pactivity','mod_h5pactivity\\external\\view_h5pactivity','execute',NULL,'mod_h5pactivity','mod/h5pactivity:view','moodle_mobile_app'),(484,'mod_h5pactivity_get_attempts','mod_h5pactivity\\external\\get_attempts','execute',NULL,'mod_h5pactivity','mod/h5pactivity:view','moodle_mobile_app'),(485,'mod_h5pactivity_get_results','mod_h5pactivity\\external\\get_results','execute',NULL,'mod_h5pactivity','mod/h5pactivity:view','moodle_mobile_app'),(486,'mod_h5pactivity_get_h5pactivities_by_courses','mod_h5pactivity\\external\\get_h5pactivities_by_courses','execute',NULL,'mod_h5pactivity','mod/h5pactivity:view','moodle_mobile_app'),(487,'mod_h5pactivity_log_report_viewed','mod_h5pactivity\\external\\log_report_viewed','execute',NULL,'mod_h5pactivity','','moodle_mobile_app'),(488,'mod_h5pactivity_get_user_attempts','mod_h5pactivity\\external\\get_user_attempts','execute',NULL,'mod_h5pactivity','mod/h5pactivity:reviewattempts','moodle_mobile_app'),(489,'mod_imscp_view_imscp','mod_imscp_external','view_imscp',NULL,'mod_imscp','mod/imscp:view','moodle_mobile_app'),(490,'mod_imscp_get_imscps_by_courses','mod_imscp_external','get_imscps_by_courses',NULL,'mod_imscp','mod/imscp:view','moodle_mobile_app'),(491,'mod_label_get_labels_by_courses','mod_label_external','get_labels_by_courses',NULL,'mod_label','mod/label:view','moodle_mobile_app'),(492,'mod_lesson_get_lessons_by_courses','mod_lesson_external','get_lessons_by_courses',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(493,'mod_lesson_get_lesson_access_information','mod_lesson_external','get_lesson_access_information',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(494,'mod_lesson_view_lesson','mod_lesson_external','view_lesson',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(495,'mod_lesson_get_questions_attempts','mod_lesson_external','get_questions_attempts',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(496,'mod_lesson_get_user_grade','mod_lesson_external','get_user_grade',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(497,'mod_lesson_get_user_attempt_grade','mod_lesson_external','get_user_attempt_grade',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(498,'mod_lesson_get_content_pages_viewed','mod_lesson_external','get_content_pages_viewed',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(499,'mod_lesson_get_user_timers','mod_lesson_external','get_user_timers',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(500,'mod_lesson_get_pages','mod_lesson_external','get_pages',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(501,'mod_lesson_launch_attempt','mod_lesson_external','launch_attempt',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(502,'mod_lesson_get_page_data','mod_lesson_external','get_page_data',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(503,'mod_lesson_process_page','mod_lesson_external','process_page',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(504,'mod_lesson_finish_attempt','mod_lesson_external','finish_attempt',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(505,'mod_lesson_get_attempts_overview','mod_lesson_external','get_attempts_overview',NULL,'mod_lesson','mod/lesson:viewreports','moodle_mobile_app'),(506,'mod_lesson_get_user_attempt','mod_lesson_external','get_user_attempt',NULL,'mod_lesson','mod/lesson:viewreports','moodle_mobile_app'),(507,'mod_lesson_get_pages_possible_jumps','mod_lesson_external','get_pages_possible_jumps',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(508,'mod_lesson_get_lesson','mod_lesson_external','get_lesson',NULL,'mod_lesson','mod/lesson:view','moodle_mobile_app'),(509,'mod_lti_get_tool_launch_data','mod_lti_external','get_tool_launch_data',NULL,'mod_lti','mod/lti:view','moodle_mobile_app'),(510,'mod_lti_get_ltis_by_courses','mod_lti_external','get_ltis_by_courses',NULL,'mod_lti','mod/lti:view','moodle_mobile_app'),(511,'mod_lti_view_lti','mod_lti_external','view_lti',NULL,'mod_lti','mod/lti:view','moodle_mobile_app'),(512,'mod_lti_get_tool_proxies','mod_lti_external','get_tool_proxies',NULL,'mod_lti','moodle/site:config',NULL),(513,'mod_lti_create_tool_proxy','mod_lti_external','create_tool_proxy',NULL,'mod_lti','moodle/site:config',NULL),(514,'mod_lti_delete_tool_proxy','mod_lti_external','delete_tool_proxy',NULL,'mod_lti','moodle/site:config',NULL),(515,'mod_lti_get_tool_proxy_registration_request','mod_lti_external','get_tool_proxy_registration_request',NULL,'mod_lti','moodle/site:config',NULL),(516,'mod_lti_get_tool_types','mod_lti_external','get_tool_types',NULL,'mod_lti','moodle/site:config',NULL),(517,'mod_lti_get_tool_types_and_proxies','mod_lti\\external\\get_tool_types_and_proxies','execute',NULL,'mod_lti','moodle/site:config',NULL),(518,'mod_lti_get_tool_types_and_proxies_count','mod_lti\\external\\get_tool_types_and_proxies_count','execute',NULL,'mod_lti','moodle/site:config',NULL),(519,'mod_lti_create_tool_type','mod_lti_external','create_tool_type',NULL,'mod_lti','moodle/site:config',NULL),(520,'mod_lti_update_tool_type','mod_lti_external','update_tool_type',NULL,'mod_lti','moodle/site:config',NULL),(521,'mod_lti_delete_tool_type','mod_lti_external','delete_tool_type',NULL,'mod_lti','moodle/site:config',NULL),(522,'mod_lti_is_cartridge','mod_lti_external','is_cartridge',NULL,'mod_lti','moodle/site:config',NULL),(523,'mod_page_view_page','mod_page_external','view_page',NULL,'mod_page','mod/page:view','moodle_mobile_app'),(524,'mod_page_get_pages_by_courses','mod_page_external','get_pages_by_courses',NULL,'mod_page','mod/page:view','moodle_mobile_app'),(525,'mod_quiz_get_quizzes_by_courses','mod_quiz_external','get_quizzes_by_courses',NULL,'mod_quiz','mod/quiz:view','moodle_mobile_app'),(526,'mod_quiz_view_quiz','mod_quiz_external','view_quiz',NULL,'mod_quiz','mod/quiz:view','moodle_mobile_app'),(527,'mod_quiz_get_user_attempts','mod_quiz_external','get_user_attempts',NULL,'mod_quiz','mod/quiz:view','moodle_mobile_app'),(528,'mod_quiz_get_user_best_grade','mod_quiz_external','get_user_best_grade',NULL,'mod_quiz','mod/quiz:view','moodle_mobile_app'),(529,'mod_quiz_get_combined_review_options','mod_quiz_external','get_combined_review_options',NULL,'mod_quiz','mod/quiz:view','moodle_mobile_app'),(530,'mod_quiz_start_attempt','mod_quiz_external','start_attempt',NULL,'mod_quiz','mod/quiz:attempt','moodle_mobile_app'),(531,'mod_quiz_get_attempt_data','mod_quiz_external','get_attempt_data',NULL,'mod_quiz','mod/quiz:attempt','moodle_mobile_app'),(532,'mod_quiz_get_attempt_summary','mod_quiz_external','get_attempt_summary',NULL,'mod_quiz','mod/quiz:attempt','moodle_mobile_app'),(533,'mod_quiz_save_attempt','mod_quiz_external','save_attempt',NULL,'mod_quiz','mod/quiz:attempt','moodle_mobile_app'),(534,'mod_quiz_process_attempt','mod_quiz_external','process_attempt',NULL,'mod_quiz','mod/quiz:attempt','moodle_mobile_app'),(535,'mod_quiz_get_attempt_review','mod_quiz_external','get_attempt_review',NULL,'mod_quiz','mod/quiz:reviewmyattempts','moodle_mobile_app'),(536,'mod_quiz_view_attempt','mod_quiz_external','view_attempt',NULL,'mod_quiz','mod/quiz:attempt','moodle_mobile_app'),(537,'mod_quiz_view_attempt_summary','mod_quiz_external','view_attempt_summary',NULL,'mod_quiz','mod/quiz:attempt','moodle_mobile_app'),(538,'mod_quiz_view_attempt_review','mod_quiz_external','view_attempt_review',NULL,'mod_quiz','mod/quiz:reviewmyattempts','moodle_mobile_app'),(539,'mod_quiz_get_quiz_feedback_for_grade','mod_quiz_external','get_quiz_feedback_for_grade',NULL,'mod_quiz','mod/quiz:view','moodle_mobile_app'),(540,'mod_quiz_get_quiz_access_information','mod_quiz_external','get_quiz_access_information',NULL,'mod_quiz','mod/quiz:view','moodle_mobile_app'),(541,'mod_quiz_get_attempt_access_information','mod_quiz_external','get_attempt_access_information',NULL,'mod_quiz','mod/quiz:view','moodle_mobile_app'),(542,'mod_quiz_get_quiz_required_qtypes','mod_quiz_external','get_quiz_required_qtypes',NULL,'mod_quiz','mod/quiz:view','moodle_mobile_app'),(543,'mod_quiz_set_question_version','mod_quiz\\external\\submit_question_version','execute',NULL,'mod_quiz','mod/quiz:view',NULL),(544,'mod_quiz_reopen_attempt','mod_quiz\\external\\reopen_attempt','execute',NULL,'mod_quiz','mod/quiz:reopenattempts',NULL),(545,'mod_quiz_get_reopen_attempt_confirmation','mod_quiz\\external\\get_reopen_attempt_confirmation','execute',NULL,'mod_quiz','mod/quiz:reopenattempts',NULL),(546,'mod_resource_view_resource','mod_resource_external','view_resource',NULL,'mod_resource','mod/resource:view','moodle_mobile_app'),(547,'mod_resource_get_resources_by_courses','mod_resource_external','get_resources_by_courses',NULL,'mod_resource','mod/resource:view','moodle_mobile_app'),(548,'mod_scorm_view_scorm','mod_scorm_external','view_scorm',NULL,'mod_scorm','','moodle_mobile_app'),(549,'mod_scorm_get_scorm_attempt_count','mod_scorm_external','get_scorm_attempt_count',NULL,'mod_scorm','','moodle_mobile_app'),(550,'mod_scorm_get_scorm_scoes','mod_scorm_external','get_scorm_scoes',NULL,'mod_scorm','','moodle_mobile_app'),(551,'mod_scorm_get_scorm_user_data','mod_scorm_external','get_scorm_user_data',NULL,'mod_scorm','','moodle_mobile_app'),(552,'mod_scorm_insert_scorm_tracks','mod_scorm_external','insert_scorm_tracks',NULL,'mod_scorm','mod/scorm:savetrack','moodle_mobile_app'),(553,'mod_scorm_get_scorm_sco_tracks','mod_scorm_external','get_scorm_sco_tracks',NULL,'mod_scorm','','moodle_mobile_app'),(554,'mod_scorm_get_scorms_by_courses','mod_scorm_external','get_scorms_by_courses',NULL,'mod_scorm','','moodle_mobile_app'),(555,'mod_scorm_launch_sco','mod_scorm_external','launch_sco',NULL,'mod_scorm','','moodle_mobile_app'),(556,'mod_scorm_get_scorm_access_information','mod_scorm_external','get_scorm_access_information',NULL,'mod_scorm','','moodle_mobile_app'),(557,'mod_survey_get_surveys_by_courses','mod_survey_external','get_surveys_by_courses',NULL,'mod_survey','','moodle_mobile_app'),(558,'mod_survey_view_survey','mod_survey_external','view_survey',NULL,'mod_survey','mod/survey:participate','moodle_mobile_app'),(559,'mod_survey_get_questions','mod_survey_external','get_questions',NULL,'mod_survey','mod/survey:participate','moodle_mobile_app'),(560,'mod_survey_submit_answers','mod_survey_external','submit_answers',NULL,'mod_survey','mod/survey:participate','moodle_mobile_app'),(561,'mod_url_view_url','mod_url_external','view_url',NULL,'mod_url','mod/url:view','moodle_mobile_app'),(562,'mod_url_get_urls_by_courses','mod_url_external','get_urls_by_courses',NULL,'mod_url','mod/url:view','moodle_mobile_app'),(563,'mod_wiki_get_wikis_by_courses','mod_wiki_external','get_wikis_by_courses',NULL,'mod_wiki','mod/wiki:viewpage','moodle_mobile_app'),(564,'mod_wiki_view_wiki','mod_wiki_external','view_wiki',NULL,'mod_wiki','mod/wiki:viewpage','moodle_mobile_app'),(565,'mod_wiki_view_page','mod_wiki_external','view_page',NULL,'mod_wiki','mod/wiki:viewpage','moodle_mobile_app'),(566,'mod_wiki_get_subwikis','mod_wiki_external','get_subwikis',NULL,'mod_wiki','mod/wiki:viewpage','moodle_mobile_app'),(567,'mod_wiki_get_subwiki_pages','mod_wiki_external','get_subwiki_pages',NULL,'mod_wiki','mod/wiki:viewpage','moodle_mobile_app'),(568,'mod_wiki_get_subwiki_files','mod_wiki_external','get_subwiki_files',NULL,'mod_wiki','mod/wiki:viewpage','moodle_mobile_app'),(569,'mod_wiki_get_page_contents','mod_wiki_external','get_page_contents',NULL,'mod_wiki','mod/wiki:viewpage','moodle_mobile_app'),(570,'mod_wiki_get_page_for_editing','mod_wiki_external','get_page_for_editing',NULL,'mod_wiki','mod/wiki:editpage','moodle_mobile_app'),(571,'mod_wiki_new_page','mod_wiki_external','new_page',NULL,'mod_wiki','mod/wiki:editpage','moodle_mobile_app'),(572,'mod_wiki_edit_page','mod_wiki_external','edit_page',NULL,'mod_wiki','mod/wiki:editpage','moodle_mobile_app'),(573,'mod_workshop_get_workshops_by_courses','mod_workshop_external','get_workshops_by_courses',NULL,'mod_workshop','mod/workshop:view','moodle_mobile_app'),(574,'mod_workshop_get_workshop_access_information','mod_workshop_external','get_workshop_access_information',NULL,'mod_workshop','mod/workshop:view','moodle_mobile_app'),(575,'mod_workshop_get_user_plan','mod_workshop_external','get_user_plan',NULL,'mod_workshop','mod/workshop:view','moodle_mobile_app'),(576,'mod_workshop_view_workshop','mod_workshop_external','view_workshop',NULL,'mod_workshop','mod/workshop:view','moodle_mobile_app'),(577,'mod_workshop_add_submission','mod_workshop_external','add_submission',NULL,'mod_workshop','mod/workshop:submit','moodle_mobile_app'),(578,'mod_workshop_update_submission','mod_workshop_external','update_submission',NULL,'mod_workshop','mod/workshop:submit','moodle_mobile_app'),(579,'mod_workshop_delete_submission','mod_workshop_external','delete_submission',NULL,'mod_workshop','mod/workshop:submit','moodle_mobile_app'),(580,'mod_workshop_get_submissions','mod_workshop_external','get_submissions',NULL,'mod_workshop','','moodle_mobile_app'),(581,'mod_workshop_get_submission','mod_workshop_external','get_submission',NULL,'mod_workshop','','moodle_mobile_app'),(582,'mod_workshop_get_submission_assessments','mod_workshop_external','get_submission_assessments',NULL,'mod_workshop','','moodle_mobile_app'),(583,'mod_workshop_get_assessment','mod_workshop_external','get_assessment',NULL,'mod_workshop','','moodle_mobile_app'),(584,'mod_workshop_get_assessment_form_definition','mod_workshop_external','get_assessment_form_definition',NULL,'mod_workshop','','moodle_mobile_app'),(585,'mod_workshop_get_reviewer_assessments','mod_workshop_external','get_reviewer_assessments',NULL,'mod_workshop','','moodle_mobile_app'),(586,'mod_workshop_update_assessment','mod_workshop_external','update_assessment',NULL,'mod_workshop','','moodle_mobile_app'),(587,'mod_workshop_get_grades','mod_workshop_external','get_grades',NULL,'mod_workshop','','moodle_mobile_app'),(588,'mod_workshop_evaluate_assessment','mod_workshop_external','evaluate_assessment',NULL,'mod_workshop','','moodle_mobile_app'),(589,'mod_workshop_get_grades_report','mod_workshop_external','get_grades_report',NULL,'mod_workshop','','moodle_mobile_app'),(590,'mod_workshop_view_submission','mod_workshop_external','view_submission',NULL,'mod_workshop','mod/workshop:view','moodle_mobile_app'),(591,'mod_workshop_evaluate_submission','mod_workshop_external','evaluate_submission',NULL,'mod_workshop','','moodle_mobile_app'),(592,'auth_email_get_signup_settings','auth_email_external','get_signup_settings',NULL,'auth_email','',NULL),(593,'auth_email_signup_user','auth_email_external','signup_user',NULL,'auth_email','',NULL),(594,'enrol_guest_get_instance_info','enrol_guest_external','get_instance_info',NULL,'enrol_guest','','moodle_mobile_app'),(595,'enrol_manual_enrol_users','enrol_manual_external','enrol_users','enrol/manual/externallib.php','enrol_manual','enrol/manual:enrol',NULL),(596,'enrol_manual_unenrol_users','enrol_manual_external','unenrol_users','enrol/manual/externallib.php','enrol_manual','enrol/manual:unenrol',NULL),(597,'enrol_meta_add_instances','enrol_meta\\external\\add_instances','execute',NULL,'enrol_meta','enrol/meta:config',NULL),(598,'enrol_meta_delete_instances','enrol_meta\\external\\delete_instances','execute',NULL,'enrol_meta','enrol/meta:config',NULL),(599,'enrol_self_get_instance_info','enrol_self_external','get_instance_info','enrol/self/externallib.php','enrol_self','','moodle_mobile_app'),(600,'enrol_self_enrol_user','enrol_self_external','enrol_user','enrol/self/externallib.php','enrol_self','','moodle_mobile_app'),(601,'message_airnotifier_is_system_configured','message_airnotifier_external','is_system_configured','message/output/airnotifier/externallib.php','message_airnotifier','','moodle_mobile_app'),(602,'message_airnotifier_are_notification_preferences_configured','message_airnotifier_external','are_notification_preferences_configured','message/output/airnotifier/externallib.php','message_airnotifier','','moodle_mobile_app'),(603,'message_airnotifier_get_user_devices','message_airnotifier_external','get_user_devices','message/output/airnotifier/externallib.php','message_airnotifier','','moodle_mobile_app'),(604,'message_airnotifier_enable_device','message_airnotifier_external','enable_device','message/output/airnotifier/externallib.php','message_airnotifier','message/airnotifier:managedevice','moodle_mobile_app'),(605,'message_popup_get_popup_notifications','message_popup_external','get_popup_notifications','message/output/popup/externallib.php','message_popup','','moodle_mobile_app'),(606,'message_popup_get_unread_popup_notification_count','message_popup_external','get_unread_popup_notification_count','message/output/popup/externallib.php','message_popup','','moodle_mobile_app'),(607,'block_accessreview_get_module_data','block_accessreview\\external\\get_module_data','execute',NULL,'block_accessreview','block/accessreview:view',NULL),(608,'block_accessreview_get_section_data','block_accessreview\\external\\get_section_data','execute',NULL,'block_accessreview','block/accessreview:view',NULL),(609,'block_recentlyaccesseditems_get_recent_items','block_recentlyaccesseditems\\external','get_recent_items',NULL,'block_recentlyaccesseditems','','moodle_mobile_app'),(610,'block_starredcourses_get_starred_courses','block_starredcourses_external','get_starred_courses','block/starredcourses/classes/external.php','block_starredcourses','','moodle_mobile_app'),(611,'media_videojs_get_language','media_videojs\\external\\get_language','execute',NULL,'media_videojs','',NULL),(612,'report_competency_data_for_report','report_competency\\external','data_for_report',NULL,'report_competency','moodle/competency:coursecompetencyview',NULL),(613,'report_insights_set_notuseful_prediction','report_insights\\external','set_notuseful_prediction',NULL,'report_insights','','moodle_mobile_app'),(614,'report_insights_set_fixed_prediction','report_insights\\external','set_fixed_prediction',NULL,'report_insights','','moodle_mobile_app'),(615,'report_insights_action_executed','report_insights\\external','action_executed',NULL,'report_insights','','moodle_mobile_app'),(616,'gradereport_grader_get_users_in_report','gradereport_grader\\external\\get_users_in_report','execute',NULL,'gradereport_grader','gradereport/grader:view','moodle_mobile_app'),(617,'gradereport_overview_get_course_grades','gradereport_overview_external','get_course_grades',NULL,'gradereport_overview','','moodle_mobile_app'),(618,'gradereport_overview_view_grade_report','gradereport_overview_external','view_grade_report',NULL,'gradereport_overview','gradereport/overview:view','moodle_mobile_app'),(619,'gradereport_singleview_get_grade_items_for_search_widget','gradereport_singleview\\external\\singleview','get_grade_items_for_search_widget',NULL,'gradereport_singleview','gradereport/singleview:view','moodle_mobile_app'),(620,'gradereport_user_get_grades_table','gradereport_user\\external\\user','get_grades_table',NULL,'gradereport_user','gradereport/user:view','moodle_mobile_app'),(621,'gradereport_user_view_grade_report','gradereport_user\\external\\user','view_grade_report',NULL,'gradereport_user','gradereport/user:view','moodle_mobile_app'),(622,'gradereport_user_get_grade_items','gradereport_user\\external\\user','get_grade_items',NULL,'gradereport_user','gradereport/user:view','moodle_mobile_app'),(623,'gradereport_user_get_access_information','gradereport_user\\external\\get_access_information','execute',NULL,'gradereport_user','','moodle_mobile_app'),(624,'gradingform_guide_grader_gradingpanel_fetch','gradingform_guide\\grades\\grader\\gradingpanel\\external\\fetch','execute',NULL,'gradingform_guide','',NULL),(625,'gradingform_guide_grader_gradingpanel_store','gradingform_guide\\grades\\grader\\gradingpanel\\external\\store','execute',NULL,'gradingform_guide','',NULL),(626,'gradingform_rubric_grader_gradingpanel_fetch','gradingform_rubric\\grades\\grader\\gradingpanel\\external\\fetch','execute',NULL,'gradingform_rubric','',NULL),(627,'gradingform_rubric_grader_gradingpanel_store','gradingform_rubric\\grades\\grader\\gradingpanel\\external\\store','execute',NULL,'gradingform_rubric','',NULL),(628,'qbank_columnsortorder_set_columnbank_order','qbank_columnsortorder\\external\\set_columnbank_order','execute',NULL,'qbank_columnsortorder','',NULL),(629,'qbank_editquestion_set_status','qbank_editquestion\\external\\update_question_version_status','execute',NULL,'qbank_editquestion','',NULL),(630,'qbank_tagquestion_submit_tags_form','qbank_tagquestion\\external\\submit_tags','execute',NULL,'qbank_tagquestion','',NULL),(631,'tool_analytics_potential_contexts','tool_analytics\\external','potential_contexts',NULL,'tool_analytics','','moodle_mobile_app'),(632,'tool_behat_get_entity_generator','tool_behat\\external\\get_entity_generator','execute',NULL,'tool_behat','moodle/site:config',NULL),(633,'tool_dataprivacy_cancel_data_request','tool_dataprivacy\\external','cancel_data_request',NULL,'tool_dataprivacy','',NULL),(634,'tool_dataprivacy_contact_dpo','tool_dataprivacy\\external','contact_dpo',NULL,'tool_dataprivacy','',NULL),(635,'tool_dataprivacy_mark_complete','tool_dataprivacy\\external','mark_complete',NULL,'tool_dataprivacy','tool/dataprivacy:managedatarequests',NULL),(636,'tool_dataprivacy_get_data_request','tool_dataprivacy\\external','get_data_request',NULL,'tool_dataprivacy','tool/dataprivacy:managedatarequests',NULL),(637,'tool_dataprivacy_approve_data_request','tool_dataprivacy\\external','approve_data_request',NULL,'tool_dataprivacy','tool/dataprivacy:managedatarequests',NULL),(638,'tool_dataprivacy_bulk_approve_data_requests','tool_dataprivacy\\external','bulk_approve_data_requests',NULL,'tool_dataprivacy','tool/dataprivacy:managedatarequests',NULL),(639,'tool_dataprivacy_deny_data_request','tool_dataprivacy\\external','deny_data_request',NULL,'tool_dataprivacy','tool/dataprivacy:managedatarequests',NULL),(640,'tool_dataprivacy_bulk_deny_data_requests','tool_dataprivacy\\external','bulk_deny_data_requests',NULL,'tool_dataprivacy','tool/dataprivacy:managedatarequests',NULL),(641,'tool_dataprivacy_get_users','tool_dataprivacy\\external','get_users',NULL,'tool_dataprivacy','tool/dataprivacy:managedatarequests',NULL),(642,'tool_dataprivacy_create_purpose_form','tool_dataprivacy\\external','create_purpose_form',NULL,'tool_dataprivacy','',NULL),(643,'tool_dataprivacy_create_category_form','tool_dataprivacy\\external','create_category_form',NULL,'tool_dataprivacy','',NULL),(644,'tool_dataprivacy_delete_purpose','tool_dataprivacy\\external','delete_purpose',NULL,'tool_dataprivacy','',NULL),(645,'tool_dataprivacy_delete_category','tool_dataprivacy\\external','delete_category',NULL,'tool_dataprivacy','',NULL),(646,'tool_dataprivacy_set_contextlevel_form','tool_dataprivacy\\external','set_contextlevel_form',NULL,'tool_dataprivacy','',NULL),(647,'tool_dataprivacy_set_context_form','tool_dataprivacy\\external','set_context_form',NULL,'tool_dataprivacy','',NULL),(648,'tool_dataprivacy_tree_extra_branches','tool_dataprivacy\\external','tree_extra_branches',NULL,'tool_dataprivacy','',NULL),(649,'tool_dataprivacy_confirm_contexts_for_deletion','tool_dataprivacy\\external','confirm_contexts_for_deletion',NULL,'tool_dataprivacy','',NULL),(650,'tool_dataprivacy_set_context_defaults','tool_dataprivacy\\external','set_context_defaults',NULL,'tool_dataprivacy','tool/dataprivacy:managedataregistry',NULL),(651,'tool_dataprivacy_get_category_options','tool_dataprivacy\\external','get_category_options',NULL,'tool_dataprivacy','tool/dataprivacy:managedataregistry',NULL),(652,'tool_dataprivacy_get_purpose_options','tool_dataprivacy\\external','get_purpose_options',NULL,'tool_dataprivacy','tool/dataprivacy:managedataregistry',NULL),(653,'tool_dataprivacy_get_activity_options','tool_dataprivacy\\external','get_activity_options',NULL,'tool_dataprivacy','tool/dataprivacy:managedataregistry',NULL),(654,'tool_lp_data_for_competency_frameworks_manage_page','tool_lp\\external','data_for_competency_frameworks_manage_page',NULL,'tool_lp','moodle/competency:competencyview',NULL),(655,'tool_lp_data_for_competency_summary','tool_lp\\external','data_for_competency_summary',NULL,'tool_lp','moodle/competency:competencyview',NULL),(656,'tool_lp_data_for_competencies_manage_page','tool_lp\\external','data_for_competencies_manage_page',NULL,'tool_lp','moodle/competency:competencyview',NULL),(657,'tool_lp_list_courses_using_competency','tool_lp\\external','list_courses_using_competency',NULL,'tool_lp','moodle/competency:coursecompetencyview',NULL),(658,'tool_lp_data_for_course_competencies_page','tool_lp\\external','data_for_course_competencies_page',NULL,'tool_lp','moodle/competency:coursecompetencyview','moodle_mobile_app'),(659,'tool_lp_data_for_template_competencies_page','tool_lp\\external','data_for_template_competencies_page',NULL,'tool_lp','moodle/competency:templateview',NULL),(660,'tool_lp_data_for_templates_manage_page','tool_lp\\external','data_for_templates_manage_page',NULL,'tool_lp','moodle/competency:templateview',NULL),(661,'tool_lp_data_for_plans_page','tool_lp\\external','data_for_plans_page',NULL,'tool_lp','moodle/competency:planviewown','moodle_mobile_app'),(662,'tool_lp_data_for_plan_page','tool_lp\\external','data_for_plan_page',NULL,'tool_lp','moodle/competency:planview','moodle_mobile_app'),(663,'tool_lp_data_for_related_competencies_section','tool_lp\\external','data_for_related_competencies_section',NULL,'tool_lp','moodle/competency:competencyview',NULL),(664,'tool_lp_search_users','tool_lp\\external','search_users',NULL,'tool_lp','',NULL),(665,'tool_lp_search_cohorts','core_cohort_external','search_cohorts','cohort/externallib.php','tool_lp','moodle/cohort:view',NULL),(666,'tool_lp_data_for_user_evidence_list_page','tool_lp\\external','data_for_user_evidence_list_page',NULL,'tool_lp','moodle/competency:userevidenceview','moodle_mobile_app'),(667,'tool_lp_data_for_user_evidence_page','tool_lp\\external','data_for_user_evidence_page',NULL,'tool_lp','moodle/competency:userevidenceview','moodle_mobile_app'),(668,'tool_lp_data_for_user_competency_summary','tool_lp\\external','data_for_user_competency_summary',NULL,'tool_lp','moodle/competency:planview','moodle_mobile_app'),(669,'tool_lp_data_for_user_competency_summary_in_plan','tool_lp\\external','data_for_user_competency_summary_in_plan',NULL,'tool_lp','moodle/competency:planview','moodle_mobile_app'),(670,'tool_lp_data_for_user_competency_summary_in_course','tool_lp\\external','data_for_user_competency_summary_in_course',NULL,'tool_lp','moodle/competency:coursecompetencyview','moodle_mobile_app'),(671,'tool_mobile_get_plugins_supporting_mobile','tool_mobile\\external','get_plugins_supporting_mobile',NULL,'tool_mobile','','moodle_mobile_app'),(672,'tool_mobile_get_public_config','tool_mobile\\external','get_public_config',NULL,'tool_mobile','','moodle_mobile_app'),(673,'tool_mobile_get_config','tool_mobile\\external','get_config',NULL,'tool_mobile','','moodle_mobile_app'),(674,'tool_mobile_get_autologin_key','tool_mobile\\external','get_autologin_key',NULL,'tool_mobile','','moodle_mobile_app'),(675,'tool_mobile_get_content','tool_mobile\\external','get_content',NULL,'tool_mobile','','moodle_mobile_app'),(676,'tool_mobile_call_external_functions','tool_mobile\\external','call_external_functions',NULL,'tool_mobile','','moodle_mobile_app'),(677,'tool_mobile_validate_subscription_key','tool_mobile\\external','validate_subscription_key',NULL,'tool_mobile','','moodle_mobile_app'),(678,'tool_mobile_get_tokens_for_qr_login','tool_mobile\\external','get_tokens_for_qr_login',NULL,'tool_mobile','','moodle_mobile_app'),(679,'tool_moodlenet_verify_webfinger','tool_moodlenet\\external','verify_webfinger',NULL,'tool_moodlenet','','moodle_mobile_app'),(680,'tool_moodlenet_search_courses','tool_moodlenet\\external','search_courses',NULL,'tool_moodlenet','','moodle_mobile_app'),(681,'tool_policy_get_policy_version','tool_policy\\external','get_policy_version',NULL,'tool_policy','',NULL),(682,'tool_policy_submit_accept_on_behalf','tool_policy\\external','submit_accept_on_behalf',NULL,'tool_policy','',NULL),(683,'tool_templatelibrary_list_templates','tool_templatelibrary\\external','list_templates',NULL,'tool_templatelibrary','',NULL),(684,'tool_templatelibrary_load_canonical_template','tool_templatelibrary\\external','load_canonical_template',NULL,'tool_templatelibrary','',NULL),(685,'tool_usertours_fetch_and_start_tour','tool_usertours\\external\\tour','fetch_and_start_tour',NULL,'tool_usertours','',NULL),(686,'tool_usertours_step_shown','tool_usertours\\external\\tour','step_shown',NULL,'tool_usertours','',NULL),(687,'tool_usertours_complete_tour','tool_usertours\\external\\tour','complete_tour',NULL,'tool_usertours','',NULL),(688,'tool_usertours_reset_tour','tool_usertours\\external\\tour','reset_tour',NULL,'tool_usertours','',NULL),(689,'tool_xmldb_invoke_move_action','tool_xmldb_external','invoke_move_action',NULL,'tool_xmldb','',NULL),(690,'paygw_paypal_get_config_for_js','paygw_paypal\\external\\get_config_for_js','execute',NULL,'paygw_paypal','',NULL),(691,'paygw_paypal_create_transaction_complete','paygw_paypal\\external\\transaction_complete','execute',NULL,'paygw_paypal','',NULL),(692,'quizaccess_seb_validate_quiz_keys','quizaccess_seb\\external\\validate_quiz_keys','execute',NULL,'quizaccess_seb','',NULL),(693,'tiny_autosave_resume_session','tiny_autosave\\external\\resume_autosave_session','execute',NULL,'tiny_autosave','',NULL),(694,'tiny_autosave_reset_session','tiny_autosave\\external\\reset_autosave_session','execute',NULL,'tiny_autosave','',NULL),(695,'tiny_autosave_update_session','tiny_autosave\\external\\update_autosave_session_content','execute',NULL,'tiny_autosave','',NULL),(696,'tiny_equation_filter','tiny_equation\\external\\filter','execute',NULL,'tiny_equation','',NULL);
/*!40000 ALTER TABLE `mdl_external_functions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_external_services`
--

DROP TABLE IF EXISTS `mdl_external_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_external_services` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `enabled` tinyint(1) NOT NULL,
  `requiredcapability` varchar(150) DEFAULT NULL,
  `restrictedusers` tinyint(1) NOT NULL,
  `component` varchar(100) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `shortname` varchar(255) DEFAULT NULL,
  `downloadfiles` tinyint(1) NOT NULL DEFAULT 0,
  `uploadfiles` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_exteserv_nam_uix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='built in and custom external services';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_external_services`
--

LOCK TABLES `mdl_external_services` WRITE;
/*!40000 ALTER TABLE `mdl_external_services` DISABLE KEYS */;
INSERT INTO `mdl_external_services` VALUES (1,'Moodle mobile web service',0,NULL,0,'moodle',1705738678,1705739196,'moodle_mobile_app',1,1);
/*!40000 ALTER TABLE `mdl_external_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_external_services_functions`
--

DROP TABLE IF EXISTS `mdl_external_services_functions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_external_services_functions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `externalserviceid` bigint(10) NOT NULL,
  `functionname` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_exteservfunc_ext_ix` (`externalserviceid`)
) ENGINE=InnoDB AUTO_INCREMENT=405 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='lists functions available in each service group';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_external_services_functions`
--

LOCK TABLES `mdl_external_services_functions` WRITE;
/*!40000 ALTER TABLE `mdl_external_services_functions` DISABLE KEYS */;
INSERT INTO `mdl_external_services_functions` VALUES (1,1,'core_badges_get_user_badges'),(2,1,'core_blog_get_entries'),(3,1,'core_blog_view_entries'),(4,1,'core_calendar_get_calendar_monthly_view'),(5,1,'core_calendar_get_calendar_day_view'),(6,1,'core_calendar_get_calendar_upcoming_view'),(7,1,'core_calendar_update_event_start_day'),(8,1,'core_calendar_create_calendar_events'),(9,1,'core_calendar_delete_calendar_events'),(10,1,'core_calendar_get_calendar_events'),(11,1,'core_calendar_get_action_events_by_timesort'),(12,1,'core_calendar_get_action_events_by_course'),(13,1,'core_calendar_get_action_events_by_courses'),(14,1,'core_calendar_get_calendar_event_by_id'),(15,1,'core_calendar_submit_create_update_form'),(16,1,'core_calendar_get_calendar_access_information'),(17,1,'core_calendar_get_allowed_event_types'),(18,1,'core_calendar_get_calendar_export_token'),(19,1,'core_comment_get_comments'),(20,1,'core_comment_add_comments'),(21,1,'core_comment_delete_comments'),(22,1,'core_completion_get_activities_completion_status'),(23,1,'core_completion_get_course_completion_status'),(24,1,'core_completion_mark_course_self_completed'),(25,1,'core_completion_update_activity_completion_status_manually'),(26,1,'core_course_get_categories'),(27,1,'core_course_get_contents'),(28,1,'core_course_get_course_module'),(29,1,'core_course_get_course_module_by_instance'),(30,1,'core_course_get_courses'),(31,1,'core_course_search_courses'),(32,1,'core_course_view_course'),(33,1,'core_course_get_user_navigation_options'),(34,1,'core_course_get_user_administration_options'),(35,1,'core_course_get_courses_by_field'),(36,1,'core_course_check_updates'),(37,1,'core_course_get_updates_since'),(38,1,'core_course_get_enrolled_courses_by_timeline_classification'),(39,1,'core_course_get_enrolled_courses_with_action_events_by_timeline_classification'),(40,1,'core_course_get_recent_courses'),(41,1,'core_course_set_favourite_courses'),(42,1,'core_enrol_get_course_enrolment_methods'),(43,1,'core_enrol_get_enrolled_users'),(44,1,'core_enrol_search_users'),(45,1,'core_enrol_get_users_courses'),(46,1,'core_files_get_files'),(47,1,'core_files_delete_draft_files'),(48,1,'core_files_get_unused_draft_itemid'),(49,1,'core_get_component_strings'),(50,1,'core_grades_grader_gradingpanel_point_fetch'),(51,1,'core_grades_grader_gradingpanel_point_store'),(52,1,'core_grades_grader_gradingpanel_scale_fetch'),(53,1,'core_grades_grader_gradingpanel_scale_store'),(54,1,'core_grades_get_enrolled_users_for_search_widget'),(55,1,'core_grades_get_enrolled_users_for_selector'),(56,1,'core_grades_get_groups_for_search_widget'),(57,1,'core_grades_get_groups_for_selector'),(58,1,'core_grades_get_gradeitems'),(59,1,'core_grades_get_gradable_users'),(60,1,'core_group_get_activity_allowed_groups'),(61,1,'core_group_get_activity_groupmode'),(62,1,'core_group_get_course_groupings'),(63,1,'core_group_get_course_groups'),(64,1,'core_group_get_course_user_groups'),(65,1,'core_message_mute_conversations'),(66,1,'core_message_unmute_conversations'),(67,1,'core_message_block_user'),(68,1,'core_message_get_contact_requests'),(69,1,'core_message_create_contact_request'),(70,1,'core_message_confirm_contact_request'),(71,1,'core_message_decline_contact_request'),(72,1,'core_message_get_received_contact_requests_count'),(73,1,'core_message_delete_contacts'),(74,1,'core_message_delete_conversations_by_id'),(75,1,'core_message_delete_message'),(76,1,'core_message_get_blocked_users'),(77,1,'core_message_data_for_messagearea_search_messages'),(78,1,'core_message_message_search_users'),(79,1,'core_message_get_user_contacts'),(80,1,'core_message_get_conversations'),(81,1,'core_message_get_conversation'),(82,1,'core_message_get_conversation_between_users'),(83,1,'core_message_get_self_conversation'),(84,1,'core_message_get_messages'),(85,1,'core_message_get_conversation_counts'),(86,1,'core_message_get_unread_conversation_counts'),(87,1,'core_message_get_conversation_members'),(88,1,'core_message_get_member_info'),(89,1,'core_message_get_unread_conversations_count'),(90,1,'core_message_mark_all_notifications_as_read'),(91,1,'core_message_mark_all_conversation_messages_as_read'),(92,1,'core_message_mark_message_read'),(93,1,'core_message_mark_notification_read'),(94,1,'core_message_message_processor_config_form'),(95,1,'core_message_search_contacts'),(96,1,'core_message_send_instant_messages'),(97,1,'core_message_send_messages_to_conversation'),(98,1,'core_message_get_conversation_messages'),(99,1,'core_message_unblock_user'),(100,1,'core_message_get_user_notification_preferences'),(101,1,'core_message_get_user_message_preferences'),(102,1,'core_message_set_favourite_conversations'),(103,1,'core_message_unset_favourite_conversations'),(104,1,'core_message_delete_message_for_all_users'),(105,1,'core_message_get_unread_notification_count'),(106,1,'core_notes_create_notes'),(107,1,'core_notes_delete_notes'),(108,1,'core_notes_get_course_notes'),(109,1,'core_notes_view_notes'),(110,1,'core_question_update_flag'),(111,1,'core_rating_get_item_ratings'),(112,1,'core_rating_add_rating'),(113,1,'core_tag_get_tagindex'),(114,1,'core_tag_get_tagindex_per_area'),(115,1,'core_tag_get_tag_areas'),(116,1,'core_tag_get_tag_collections'),(117,1,'core_tag_get_tag_cloud'),(118,1,'core_user_add_user_device'),(119,1,'core_user_update_user_device_public_key'),(120,1,'core_user_add_user_private_files'),(121,1,'core_user_get_course_user_profiles'),(122,1,'core_user_get_users_by_field'),(123,1,'core_user_remove_user_device'),(124,1,'core_user_update_user_preferences'),(125,1,'core_user_view_user_list'),(126,1,'core_user_view_user_profile'),(127,1,'core_user_get_user_preferences'),(128,1,'core_user_update_picture'),(129,1,'core_user_set_user_preferences'),(130,1,'core_user_agree_site_policy'),(131,1,'core_user_get_private_files_info'),(132,1,'core_competency_competency_viewed'),(133,1,'core_competency_list_course_competencies'),(134,1,'core_competency_get_scale_values'),(135,1,'core_competency_user_competency_viewed'),(136,1,'core_competency_user_competency_viewed_in_plan'),(137,1,'core_competency_user_competency_viewed_in_course'),(138,1,'core_competency_user_competency_plan_viewed'),(139,1,'core_competency_grade_competency_in_course'),(140,1,'core_competency_delete_evidence'),(141,1,'core_webservice_get_site_info'),(142,1,'core_block_get_course_blocks'),(143,1,'core_block_get_dashboard_blocks'),(144,1,'core_block_fetch_addable_blocks'),(145,1,'core_filters_get_available_in_context'),(146,1,'core_h5p_get_trusted_h5p_file'),(147,1,'core_table_get_dynamic_table_content'),(148,1,'core_xapi_statement_post'),(149,1,'core_xapi_post_state'),(150,1,'core_xapi_get_state'),(151,1,'core_xapi_get_states'),(152,1,'core_xapi_delete_state'),(153,1,'core_reportbuilder_list_reports'),(154,1,'core_reportbuilder_retrieve_report'),(155,1,'core_reportbuilder_view_report'),(156,1,'mod_assign_get_grades'),(157,1,'mod_assign_get_assignments'),(158,1,'mod_assign_get_submissions'),(159,1,'mod_assign_get_user_flags'),(160,1,'mod_assign_set_user_flags'),(161,1,'mod_assign_get_user_mappings'),(162,1,'mod_assign_revert_submissions_to_draft'),(163,1,'mod_assign_lock_submissions'),(164,1,'mod_assign_unlock_submissions'),(165,1,'mod_assign_save_submission'),(166,1,'mod_assign_submit_for_grading'),(167,1,'mod_assign_save_grade'),(168,1,'mod_assign_save_grades'),(169,1,'mod_assign_save_user_extensions'),(170,1,'mod_assign_reveal_identities'),(171,1,'mod_assign_view_grading_table'),(172,1,'mod_assign_view_submission_status'),(173,1,'mod_assign_get_submission_status'),(174,1,'mod_assign_list_participants'),(175,1,'mod_assign_submit_grading_form'),(176,1,'mod_assign_get_participant'),(177,1,'mod_assign_view_assign'),(178,1,'mod_assign_start_submission'),(179,1,'mod_bigbluebuttonbn_can_join'),(180,1,'mod_bigbluebuttonbn_get_recordings'),(181,1,'mod_bigbluebuttonbn_get_recordings_to_import'),(182,1,'mod_bigbluebuttonbn_update_recording'),(183,1,'mod_bigbluebuttonbn_end_meeting'),(184,1,'mod_bigbluebuttonbn_completion_validate'),(185,1,'mod_bigbluebuttonbn_meeting_info'),(186,1,'mod_bigbluebuttonbn_get_bigbluebuttonbns_by_courses'),(187,1,'mod_bigbluebuttonbn_view_bigbluebuttonbn'),(188,1,'mod_bigbluebuttonbn_get_join_url'),(189,1,'mod_book_view_book'),(190,1,'mod_book_get_books_by_courses'),(191,1,'mod_chat_login_user'),(192,1,'mod_chat_get_chat_users'),(193,1,'mod_chat_send_chat_message'),(194,1,'mod_chat_get_chat_latest_messages'),(195,1,'mod_chat_view_chat'),(196,1,'mod_chat_get_chats_by_courses'),(197,1,'mod_chat_get_sessions'),(198,1,'mod_chat_get_session_messages'),(199,1,'mod_choice_get_choice_results'),(200,1,'mod_choice_get_choice_options'),(201,1,'mod_choice_submit_choice_response'),(202,1,'mod_choice_view_choice'),(203,1,'mod_choice_get_choices_by_courses'),(204,1,'mod_choice_delete_choice_responses'),(205,1,'mod_data_get_databases_by_courses'),(206,1,'mod_data_view_database'),(207,1,'mod_data_get_data_access_information'),(208,1,'mod_data_get_entries'),(209,1,'mod_data_get_entry'),(210,1,'mod_data_get_fields'),(211,1,'mod_data_search_entries'),(212,1,'mod_data_approve_entry'),(213,1,'mod_data_delete_entry'),(214,1,'mod_data_add_entry'),(215,1,'mod_data_update_entry'),(216,1,'mod_feedback_get_feedbacks_by_courses'),(217,1,'mod_feedback_get_feedback_access_information'),(218,1,'mod_feedback_view_feedback'),(219,1,'mod_feedback_get_current_completed_tmp'),(220,1,'mod_feedback_get_items'),(221,1,'mod_feedback_launch_feedback'),(222,1,'mod_feedback_get_page_items'),(223,1,'mod_feedback_process_page'),(224,1,'mod_feedback_get_analysis'),(225,1,'mod_feedback_get_unfinished_responses'),(226,1,'mod_feedback_get_finished_responses'),(227,1,'mod_feedback_get_non_respondents'),(228,1,'mod_feedback_get_responses_analysis'),(229,1,'mod_feedback_get_last_completed'),(230,1,'mod_folder_view_folder'),(231,1,'mod_folder_get_folders_by_courses'),(232,1,'mod_forum_get_forums_by_courses'),(233,1,'mod_forum_get_discussion_posts'),(234,1,'mod_forum_get_forum_discussions_paginated'),(235,1,'mod_forum_get_forum_discussions'),(236,1,'mod_forum_view_forum'),(237,1,'mod_forum_view_forum_discussion'),(238,1,'mod_forum_add_discussion_post'),(239,1,'mod_forum_add_discussion'),(240,1,'mod_forum_can_add_discussion'),(241,1,'mod_forum_get_forum_access_information'),(242,1,'mod_forum_set_subscription_state'),(243,1,'mod_forum_set_lock_state'),(244,1,'mod_forum_toggle_favourite_state'),(245,1,'mod_forum_set_pin_state'),(246,1,'mod_forum_delete_post'),(247,1,'mod_forum_get_discussion_post'),(248,1,'mod_forum_prepare_draft_area_for_post'),(249,1,'mod_forum_update_discussion_post'),(250,1,'mod_glossary_get_glossaries_by_courses'),(251,1,'mod_glossary_view_glossary'),(252,1,'mod_glossary_view_entry'),(253,1,'mod_glossary_get_entries_by_letter'),(254,1,'mod_glossary_get_entries_by_date'),(255,1,'mod_glossary_get_categories'),(256,1,'mod_glossary_get_entries_by_category'),(257,1,'mod_glossary_get_authors'),(258,1,'mod_glossary_get_entries_by_author'),(259,1,'mod_glossary_get_entries_by_author_id'),(260,1,'mod_glossary_get_entries_by_search'),(261,1,'mod_glossary_get_entries_by_term'),(262,1,'mod_glossary_get_entries_to_approve'),(263,1,'mod_glossary_get_entry_by_id'),(264,1,'mod_glossary_add_entry'),(265,1,'mod_glossary_delete_entry'),(266,1,'mod_glossary_update_entry'),(267,1,'mod_glossary_prepare_entry_for_edition'),(268,1,'mod_h5pactivity_get_h5pactivity_access_information'),(269,1,'mod_h5pactivity_view_h5pactivity'),(270,1,'mod_h5pactivity_get_attempts'),(271,1,'mod_h5pactivity_get_results'),(272,1,'mod_h5pactivity_get_h5pactivities_by_courses'),(273,1,'mod_h5pactivity_log_report_viewed'),(274,1,'mod_h5pactivity_get_user_attempts'),(275,1,'mod_imscp_view_imscp'),(276,1,'mod_imscp_get_imscps_by_courses'),(277,1,'mod_label_get_labels_by_courses'),(278,1,'mod_lesson_get_lessons_by_courses'),(279,1,'mod_lesson_get_lesson_access_information'),(280,1,'mod_lesson_view_lesson'),(281,1,'mod_lesson_get_questions_attempts'),(282,1,'mod_lesson_get_user_grade'),(283,1,'mod_lesson_get_user_attempt_grade'),(284,1,'mod_lesson_get_content_pages_viewed'),(285,1,'mod_lesson_get_user_timers'),(286,1,'mod_lesson_get_pages'),(287,1,'mod_lesson_launch_attempt'),(288,1,'mod_lesson_get_page_data'),(289,1,'mod_lesson_process_page'),(290,1,'mod_lesson_finish_attempt'),(291,1,'mod_lesson_get_attempts_overview'),(292,1,'mod_lesson_get_user_attempt'),(293,1,'mod_lesson_get_pages_possible_jumps'),(294,1,'mod_lesson_get_lesson'),(295,1,'mod_lti_get_tool_launch_data'),(296,1,'mod_lti_get_ltis_by_courses'),(297,1,'mod_lti_view_lti'),(298,1,'mod_page_view_page'),(299,1,'mod_page_get_pages_by_courses'),(300,1,'mod_quiz_get_quizzes_by_courses'),(301,1,'mod_quiz_view_quiz'),(302,1,'mod_quiz_get_user_attempts'),(303,1,'mod_quiz_get_user_best_grade'),(304,1,'mod_quiz_get_combined_review_options'),(305,1,'mod_quiz_start_attempt'),(306,1,'mod_quiz_get_attempt_data'),(307,1,'mod_quiz_get_attempt_summary'),(308,1,'mod_quiz_save_attempt'),(309,1,'mod_quiz_process_attempt'),(310,1,'mod_quiz_get_attempt_review'),(311,1,'mod_quiz_view_attempt'),(312,1,'mod_quiz_view_attempt_summary'),(313,1,'mod_quiz_view_attempt_review'),(314,1,'mod_quiz_get_quiz_feedback_for_grade'),(315,1,'mod_quiz_get_quiz_access_information'),(316,1,'mod_quiz_get_attempt_access_information'),(317,1,'mod_quiz_get_quiz_required_qtypes'),(318,1,'mod_resource_view_resource'),(319,1,'mod_resource_get_resources_by_courses'),(320,1,'mod_scorm_view_scorm'),(321,1,'mod_scorm_get_scorm_attempt_count'),(322,1,'mod_scorm_get_scorm_scoes'),(323,1,'mod_scorm_get_scorm_user_data'),(324,1,'mod_scorm_insert_scorm_tracks'),(325,1,'mod_scorm_get_scorm_sco_tracks'),(326,1,'mod_scorm_get_scorms_by_courses'),(327,1,'mod_scorm_launch_sco'),(328,1,'mod_scorm_get_scorm_access_information'),(329,1,'mod_survey_get_surveys_by_courses'),(330,1,'mod_survey_view_survey'),(331,1,'mod_survey_get_questions'),(332,1,'mod_survey_submit_answers'),(333,1,'mod_url_view_url'),(334,1,'mod_url_get_urls_by_courses'),(335,1,'mod_wiki_get_wikis_by_courses'),(336,1,'mod_wiki_view_wiki'),(337,1,'mod_wiki_view_page'),(338,1,'mod_wiki_get_subwikis'),(339,1,'mod_wiki_get_subwiki_pages'),(340,1,'mod_wiki_get_subwiki_files'),(341,1,'mod_wiki_get_page_contents'),(342,1,'mod_wiki_get_page_for_editing'),(343,1,'mod_wiki_new_page'),(344,1,'mod_wiki_edit_page'),(345,1,'mod_workshop_get_workshops_by_courses'),(346,1,'mod_workshop_get_workshop_access_information'),(347,1,'mod_workshop_get_user_plan'),(348,1,'mod_workshop_view_workshop'),(349,1,'mod_workshop_add_submission'),(350,1,'mod_workshop_update_submission'),(351,1,'mod_workshop_delete_submission'),(352,1,'mod_workshop_get_submissions'),(353,1,'mod_workshop_get_submission'),(354,1,'mod_workshop_get_submission_assessments'),(355,1,'mod_workshop_get_assessment'),(356,1,'mod_workshop_get_assessment_form_definition'),(357,1,'mod_workshop_get_reviewer_assessments'),(358,1,'mod_workshop_update_assessment'),(359,1,'mod_workshop_get_grades'),(360,1,'mod_workshop_evaluate_assessment'),(361,1,'mod_workshop_get_grades_report'),(362,1,'mod_workshop_view_submission'),(363,1,'mod_workshop_evaluate_submission'),(364,1,'enrol_guest_get_instance_info'),(365,1,'enrol_self_get_instance_info'),(366,1,'enrol_self_enrol_user'),(367,1,'message_airnotifier_is_system_configured'),(368,1,'message_airnotifier_are_notification_preferences_configured'),(369,1,'message_airnotifier_get_user_devices'),(370,1,'message_airnotifier_enable_device'),(371,1,'message_popup_get_popup_notifications'),(372,1,'message_popup_get_unread_popup_notification_count'),(373,1,'block_recentlyaccesseditems_get_recent_items'),(374,1,'block_starredcourses_get_starred_courses'),(375,1,'report_insights_set_notuseful_prediction'),(376,1,'report_insights_set_fixed_prediction'),(377,1,'report_insights_action_executed'),(378,1,'gradereport_grader_get_users_in_report'),(379,1,'gradereport_overview_get_course_grades'),(380,1,'gradereport_overview_view_grade_report'),(381,1,'gradereport_singleview_get_grade_items_for_search_widget'),(382,1,'gradereport_user_get_grades_table'),(383,1,'gradereport_user_view_grade_report'),(384,1,'gradereport_user_get_grade_items'),(385,1,'gradereport_user_get_access_information'),(386,1,'tool_analytics_potential_contexts'),(387,1,'tool_lp_data_for_course_competencies_page'),(388,1,'tool_lp_data_for_plans_page'),(389,1,'tool_lp_data_for_plan_page'),(390,1,'tool_lp_data_for_user_evidence_list_page'),(391,1,'tool_lp_data_for_user_evidence_page'),(392,1,'tool_lp_data_for_user_competency_summary'),(393,1,'tool_lp_data_for_user_competency_summary_in_plan'),(394,1,'tool_lp_data_for_user_competency_summary_in_course'),(395,1,'tool_mobile_get_plugins_supporting_mobile'),(396,1,'tool_mobile_get_public_config'),(397,1,'tool_mobile_get_config'),(398,1,'tool_mobile_get_autologin_key'),(399,1,'tool_mobile_get_content'),(400,1,'tool_mobile_call_external_functions'),(401,1,'tool_mobile_validate_subscription_key'),(402,1,'tool_mobile_get_tokens_for_qr_login'),(403,1,'tool_moodlenet_verify_webfinger'),(404,1,'tool_moodlenet_search_courses');
/*!40000 ALTER TABLE `mdl_external_services_functions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_external_services_users`
--

DROP TABLE IF EXISTS `mdl_external_services_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_external_services_users` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `externalserviceid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `iprestriction` varchar(255) DEFAULT NULL,
  `validuntil` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_exteservuser_ext_ix` (`externalserviceid`),
  KEY `mdl_exteservuser_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='users allowed to use services with restricted users flag';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_external_services_users`
--

LOCK TABLES `mdl_external_services_users` WRITE;
/*!40000 ALTER TABLE `mdl_external_services_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_external_services_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_external_tokens`
--

DROP TABLE IF EXISTS `mdl_external_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_external_tokens` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(128) NOT NULL DEFAULT '',
  `privatetoken` varchar(64) DEFAULT NULL,
  `tokentype` smallint(4) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `externalserviceid` bigint(10) NOT NULL,
  `sid` varchar(128) DEFAULT NULL,
  `contextid` bigint(10) NOT NULL,
  `creatorid` bigint(10) NOT NULL DEFAULT 1,
  `iprestriction` varchar(255) DEFAULT NULL,
  `validuntil` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `lastaccess` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_extetoke_tok_ix` (`token`),
  KEY `mdl_extetoke_sid_ix` (`sid`),
  KEY `mdl_extetoke_use_ix` (`userid`),
  KEY `mdl_extetoke_ext_ix` (`externalserviceid`),
  KEY `mdl_extetoke_con_ix` (`contextid`),
  KEY `mdl_extetoke_cre_ix` (`creatorid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Security tokens for accessing of external services';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_external_tokens`
--

LOCK TABLES `mdl_external_tokens` WRITE;
/*!40000 ALTER TABLE `mdl_external_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_external_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_favourite`
--

DROP TABLE IF EXISTS `mdl_favourite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_favourite` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `component` varchar(100) NOT NULL DEFAULT '',
  `itemtype` varchar(100) NOT NULL DEFAULT '',
  `itemid` bigint(10) NOT NULL,
  `contextid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `ordering` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_favo_comiteiteconuse_uix` (`component`,`itemtype`,`itemid`,`contextid`,`userid`),
  KEY `mdl_favo_con_ix` (`contextid`),
  KEY `mdl_favo_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores the relationship between an arbitrary item (itemtype,';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_favourite`
--

LOCK TABLES `mdl_favourite` WRITE;
/*!40000 ALTER TABLE `mdl_favourite` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_favourite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_feedback`
--

DROP TABLE IF EXISTS `mdl_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_feedback` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` longtext NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `anonymous` tinyint(1) NOT NULL DEFAULT 1,
  `email_notification` tinyint(1) NOT NULL DEFAULT 1,
  `multiple_submit` tinyint(1) NOT NULL DEFAULT 1,
  `autonumbering` tinyint(1) NOT NULL DEFAULT 1,
  `site_after_submit` varchar(255) NOT NULL DEFAULT '',
  `page_after_submit` longtext NOT NULL,
  `page_after_submitformat` tinyint(2) NOT NULL DEFAULT 0,
  `publish_stats` tinyint(1) NOT NULL DEFAULT 0,
  `timeopen` bigint(10) NOT NULL DEFAULT 0,
  `timeclose` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `completionsubmit` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_feed_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='all feedbacks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_feedback`
--

LOCK TABLES `mdl_feedback` WRITE;
/*!40000 ALTER TABLE `mdl_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_feedback_completed`
--

DROP TABLE IF EXISTS `mdl_feedback_completed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_feedback_completed` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `feedback` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `random_response` bigint(10) NOT NULL DEFAULT 0,
  `anonymous_response` tinyint(1) NOT NULL DEFAULT 0,
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_feedcomp_use_ix` (`userid`),
  KEY `mdl_feedcomp_fee_ix` (`feedback`),
  KEY `mdl_feedcomp_cou_ix` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='filled out feedback';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_feedback_completed`
--

LOCK TABLES `mdl_feedback_completed` WRITE;
/*!40000 ALTER TABLE `mdl_feedback_completed` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_feedback_completed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_feedback_completedtmp`
--

DROP TABLE IF EXISTS `mdl_feedback_completedtmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_feedback_completedtmp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `feedback` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `guestid` varchar(255) NOT NULL DEFAULT '',
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `random_response` bigint(10) NOT NULL DEFAULT 0,
  `anonymous_response` tinyint(1) NOT NULL DEFAULT 0,
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_feedcomp_use2_ix` (`userid`),
  KEY `mdl_feedcomp_fee2_ix` (`feedback`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='filled out feedback';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_feedback_completedtmp`
--

LOCK TABLES `mdl_feedback_completedtmp` WRITE;
/*!40000 ALTER TABLE `mdl_feedback_completedtmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_feedback_completedtmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_feedback_item`
--

DROP TABLE IF EXISTS `mdl_feedback_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_feedback_item` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `feedback` bigint(10) NOT NULL DEFAULT 0,
  `template` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  `presentation` longtext NOT NULL,
  `typ` varchar(255) NOT NULL DEFAULT '',
  `hasvalue` tinyint(1) NOT NULL DEFAULT 0,
  `position` smallint(3) NOT NULL DEFAULT 0,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `dependitem` bigint(10) NOT NULL DEFAULT 0,
  `dependvalue` varchar(255) NOT NULL DEFAULT '',
  `options` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_feeditem_fee_ix` (`feedback`),
  KEY `mdl_feeditem_tem_ix` (`template`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='feedback_items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_feedback_item`
--

LOCK TABLES `mdl_feedback_item` WRITE;
/*!40000 ALTER TABLE `mdl_feedback_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_feedback_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_feedback_sitecourse_map`
--

DROP TABLE IF EXISTS `mdl_feedback_sitecourse_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_feedback_sitecourse_map` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `feedbackid` bigint(10) NOT NULL DEFAULT 0,
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_feedsitemap_cou_ix` (`courseid`),
  KEY `mdl_feedsitemap_fee_ix` (`feedbackid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='feedback sitecourse map';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_feedback_sitecourse_map`
--

LOCK TABLES `mdl_feedback_sitecourse_map` WRITE;
/*!40000 ALTER TABLE `mdl_feedback_sitecourse_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_feedback_sitecourse_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_feedback_template`
--

DROP TABLE IF EXISTS `mdl_feedback_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_feedback_template` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `ispublic` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_feedtemp_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='templates of feedbackstructures';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_feedback_template`
--

LOCK TABLES `mdl_feedback_template` WRITE;
/*!40000 ALTER TABLE `mdl_feedback_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_feedback_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_feedback_value`
--

DROP TABLE IF EXISTS `mdl_feedback_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_feedback_value` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course_id` bigint(10) NOT NULL DEFAULT 0,
  `item` bigint(10) NOT NULL DEFAULT 0,
  `completed` bigint(10) NOT NULL DEFAULT 0,
  `tmp_completed` bigint(10) NOT NULL DEFAULT 0,
  `value` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_feedvalu_comitecou_uix` (`completed`,`item`,`course_id`),
  KEY `mdl_feedvalu_cou_ix` (`course_id`),
  KEY `mdl_feedvalu_ite_ix` (`item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='values of the completeds';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_feedback_value`
--

LOCK TABLES `mdl_feedback_value` WRITE;
/*!40000 ALTER TABLE `mdl_feedback_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_feedback_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_feedback_valuetmp`
--

DROP TABLE IF EXISTS `mdl_feedback_valuetmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_feedback_valuetmp` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course_id` bigint(10) NOT NULL DEFAULT 0,
  `item` bigint(10) NOT NULL DEFAULT 0,
  `completed` bigint(10) NOT NULL DEFAULT 0,
  `tmp_completed` bigint(10) NOT NULL DEFAULT 0,
  `value` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_feedvalu_comitecou2_uix` (`completed`,`item`,`course_id`),
  KEY `mdl_feedvalu_cou2_ix` (`course_id`),
  KEY `mdl_feedvalu_ite2_ix` (`item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='values of the completedstmp';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_feedback_valuetmp`
--

LOCK TABLES `mdl_feedback_valuetmp` WRITE;
/*!40000 ALTER TABLE `mdl_feedback_valuetmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_feedback_valuetmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_file_conversion`
--

DROP TABLE IF EXISTS `mdl_file_conversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_file_conversion` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `usermodified` bigint(10) NOT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `sourcefileid` bigint(10) NOT NULL,
  `targetformat` varchar(100) NOT NULL DEFAULT '',
  `status` bigint(10) DEFAULT 0,
  `statusmessage` longtext DEFAULT NULL,
  `converter` varchar(255) DEFAULT NULL,
  `destfileid` bigint(10) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_fileconv_sou_ix` (`sourcefileid`),
  KEY `mdl_fileconv_des_ix` (`destfileid`),
  KEY `mdl_fileconv_use_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Table to track file conversions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_file_conversion`
--

LOCK TABLES `mdl_file_conversion` WRITE;
/*!40000 ALTER TABLE `mdl_file_conversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_file_conversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_files`
--

DROP TABLE IF EXISTS `mdl_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_files` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contenthash` varchar(40) NOT NULL DEFAULT '',
  `pathnamehash` varchar(40) NOT NULL DEFAULT '',
  `contextid` bigint(10) NOT NULL,
  `component` varchar(100) NOT NULL DEFAULT '',
  `filearea` varchar(50) NOT NULL DEFAULT '',
  `itemid` bigint(10) NOT NULL,
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `userid` bigint(10) DEFAULT NULL,
  `filesize` bigint(10) NOT NULL,
  `mimetype` varchar(100) DEFAULT NULL,
  `status` bigint(10) NOT NULL DEFAULT 0,
  `source` longtext DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `license` varchar(255) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  `referencefileid` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_file_pat_uix` (`pathnamehash`),
  KEY `mdl_file_comfilconite_ix` (`component`,`filearea`,`contextid`,`itemid`),
  KEY `mdl_file_con_ix` (`contenthash`),
  KEY `mdl_file_lic_ix` (`license`),
  KEY `mdl_file_fil_ix` (`filename`),
  KEY `mdl_file_con2_ix` (`contextid`),
  KEY `mdl_file_use_ix` (`userid`),
  KEY `mdl_file_ref_ix` (`referencefileid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='description of files, content is stored in sha1 file pool';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_files`
--

LOCK TABLES `mdl_files` WRITE;
/*!40000 ALTER TABLE `mdl_files` DISABLE KEYS */;
INSERT INTO `mdl_files` VALUES (1,'5f8e911d0da441e36f47c5c46f4393269211ca56','508e674d49c30d4fde325fe6c7f6fd3d56b247e1',1,'assignfeedback_editpdf','stamps',0,'/','smile.png',2,1085,'image/png',0,NULL,NULL,NULL,1705738929,1705738929,0,NULL),(2,'da39a3ee5e6b4b0d3255bfef95601890afd80709','70b7cdade7b4e27d4e83f0cdaad10d6a3c0cccb5',1,'assignfeedback_editpdf','stamps',0,'/','.',2,0,NULL,0,NULL,NULL,NULL,1705738929,1705738929,0,NULL),(3,'75c101cb8cb34ea573cd25ac38f8157b1de901b8','68317eab56c67d32aeaee5acf509a0c4aa828b6b',1,'assignfeedback_editpdf','stamps',0,'/','sad.png',2,966,'image/png',0,NULL,NULL,NULL,1705738929,1705738929,0,NULL),(4,'0c5190a24c3943966541401c883eacaa20ca20cb','695a55ff780e61c9e59428aa425430b0d6bde53b',1,'assignfeedback_editpdf','stamps',0,'/','tick.png',2,1039,'image/png',0,NULL,NULL,NULL,1705738930,1705738930,0,NULL),(5,'8c96a486d5801e0f4ab8c411f561f1c687e1f865','373e63af262a9b8466ba8632551520be793c37ff',1,'assignfeedback_editpdf','stamps',0,'/','cross.png',2,861,'image/png',0,NULL,NULL,NULL,1705738930,1705738930,0,NULL),(6,'8913c7e5eaac68ccd62a0a005a78069f2d2631d2','8359a611f0abf79f6a9e7fcf2e33a4b0c72c7bd7',5,'user','draft',575683174,'/','imagen de curso.jpg',2,22084,'image/jpeg',0,'O:8:\"stdClass\":1:{s:6:\"source\";s:19:\"imagen de curso.jpg\";}','Natalia Cardona','unknown',1705739436,1705739436,0,NULL),(7,'da39a3ee5e6b4b0d3255bfef95601890afd80709','25e2469de20dd2985019a3e680247859da899c87',5,'user','draft',575683174,'/','.',2,0,NULL,0,NULL,NULL,NULL,1705739436,1705739436,0,NULL),(8,'f9e71a57409b62419244b665c76dadabffc5a313','4d9190e1379f507cf1c5e4e39c44ac10b08a0e42',1,'core','preview',0,'/thumb/','8913c7e5eaac68ccd62a0a005a78069f2d2631d2',NULL,10639,'image/png',0,NULL,NULL,NULL,1705739437,1705739437,0,NULL),(9,'da39a3ee5e6b4b0d3255bfef95601890afd80709','74c104d54c05b5f8c633a36da516d37e6c5279e4',1,'core','preview',0,'/thumb/','.',NULL,0,NULL,0,NULL,NULL,NULL,1705739437,1705739437,0,NULL),(10,'da39a3ee5e6b4b0d3255bfef95601890afd80709','884555719c50529b9df662a38619d04b5b11e25c',1,'core','preview',0,'/','.',NULL,0,NULL,0,NULL,NULL,NULL,1705739437,1705739437,0,NULL),(11,'8913c7e5eaac68ccd62a0a005a78069f2d2631d2','db6d44c1259baf9cc1feb00917755107c5b85b75',14,'course','overviewfiles',0,'/','imagen de curso.jpg',2,22084,'image/jpeg',0,'imagen de curso.jpg','Natalia Cardona','unknown',1705739436,1705739444,0,NULL),(12,'da39a3ee5e6b4b0d3255bfef95601890afd80709','f04489f7edea8d182fb6be45430942491ba4150a',14,'course','overviewfiles',0,'/','.',2,0,NULL,0,NULL,NULL,NULL,1705739436,1705739444,0,NULL);
/*!40000 ALTER TABLE `mdl_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_files_reference`
--

DROP TABLE IF EXISTS `mdl_files_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_files_reference` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `repositoryid` bigint(10) NOT NULL,
  `lastsync` bigint(10) DEFAULT NULL,
  `reference` longtext DEFAULT NULL,
  `referencehash` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_filerefe_refrep_uix` (`referencehash`,`repositoryid`),
  KEY `mdl_filerefe_rep_ix` (`repositoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Store files references';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_files_reference`
--

LOCK TABLES `mdl_files_reference` WRITE;
/*!40000 ALTER TABLE `mdl_files_reference` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_files_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_filter_active`
--

DROP TABLE IF EXISTS `mdl_filter_active`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_filter_active` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `filter` varchar(32) NOT NULL DEFAULT '',
  `contextid` bigint(10) NOT NULL,
  `active` smallint(4) NOT NULL,
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_filtacti_confil_uix` (`contextid`,`filter`),
  KEY `mdl_filtacti_con_ix` (`contextid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores information about which filters are active in which c';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_filter_active`
--

LOCK TABLES `mdl_filter_active` WRITE;
/*!40000 ALTER TABLE `mdl_filter_active` DISABLE KEYS */;
INSERT INTO `mdl_filter_active` VALUES (1,'activitynames',1,1,2),(2,'displayh5p',1,1,1),(3,'emoticon',1,1,4),(4,'mathjaxloader',1,1,3),(5,'mediaplugin',1,1,6),(6,'urltolink',1,1,5);
/*!40000 ALTER TABLE `mdl_filter_active` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_filter_config`
--

DROP TABLE IF EXISTS `mdl_filter_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_filter_config` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `filter` varchar(32) NOT NULL DEFAULT '',
  `contextid` bigint(10) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_filtconf_confilnam_uix` (`contextid`,`filter`,`name`),
  KEY `mdl_filtconf_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores per-context configuration settings for filters which ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_filter_config`
--

LOCK TABLES `mdl_filter_config` WRITE;
/*!40000 ALTER TABLE `mdl_filter_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_filter_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_folder`
--

DROP TABLE IF EXISTS `mdl_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_folder` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` longtext DEFAULT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `revision` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `display` smallint(4) NOT NULL DEFAULT 0,
  `showexpanded` tinyint(1) NOT NULL DEFAULT 1,
  `showdownloadfolder` tinyint(1) NOT NULL DEFAULT 1,
  `forcedownload` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `mdl_fold_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='each record is one folder resource';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_folder`
--

LOCK TABLES `mdl_folder` WRITE;
/*!40000 ALTER TABLE `mdl_folder` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum`
--

DROP TABLE IF EXISTS `mdl_forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_forum` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `type` varchar(20) NOT NULL DEFAULT 'general',
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` longtext NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `duedate` bigint(10) NOT NULL DEFAULT 0,
  `cutoffdate` bigint(10) NOT NULL DEFAULT 0,
  `assessed` bigint(10) NOT NULL DEFAULT 0,
  `assesstimestart` bigint(10) NOT NULL DEFAULT 0,
  `assesstimefinish` bigint(10) NOT NULL DEFAULT 0,
  `scale` bigint(10) NOT NULL DEFAULT 0,
  `grade_forum` bigint(10) NOT NULL DEFAULT 0,
  `grade_forum_notify` smallint(4) NOT NULL DEFAULT 0,
  `maxbytes` bigint(10) NOT NULL DEFAULT 0,
  `maxattachments` bigint(10) NOT NULL DEFAULT 1,
  `forcesubscribe` tinyint(1) NOT NULL DEFAULT 0,
  `trackingtype` tinyint(2) NOT NULL DEFAULT 1,
  `rsstype` tinyint(2) NOT NULL DEFAULT 0,
  `rssarticles` tinyint(2) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `warnafter` bigint(10) NOT NULL DEFAULT 0,
  `blockafter` bigint(10) NOT NULL DEFAULT 0,
  `blockperiod` bigint(10) NOT NULL DEFAULT 0,
  `completiondiscussions` int(9) NOT NULL DEFAULT 0,
  `completionreplies` int(9) NOT NULL DEFAULT 0,
  `completionposts` int(9) NOT NULL DEFAULT 0,
  `displaywordcount` tinyint(1) NOT NULL DEFAULT 0,
  `lockdiscussionafter` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_foru_cou_ix` (`course`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Forums contain and structure discussion';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_forum`
--

LOCK TABLES `mdl_forum` WRITE;
/*!40000 ALTER TABLE `mdl_forum` DISABLE KEYS */;
INSERT INTO `mdl_forum` VALUES (1,2,'news','Announcements','General news and announcements',1,0,0,0,0,0,0,0,0,0,1,1,1,0,0,1705739444,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `mdl_forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum_digests`
--

DROP TABLE IF EXISTS `mdl_forum_digests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_forum_digests` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL,
  `forum` bigint(10) NOT NULL,
  `maildigest` tinyint(1) NOT NULL DEFAULT -1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_forudige_forusemai_uix` (`forum`,`userid`,`maildigest`),
  KEY `mdl_forudige_use_ix` (`userid`),
  KEY `mdl_forudige_for_ix` (`forum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Keeps track of user mail delivery preferences for each forum';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_forum_digests`
--

LOCK TABLES `mdl_forum_digests` WRITE;
/*!40000 ALTER TABLE `mdl_forum_digests` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_forum_digests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum_discussion_subs`
--

DROP TABLE IF EXISTS `mdl_forum_discussion_subs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_forum_discussion_subs` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `forum` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `discussion` bigint(10) NOT NULL,
  `preference` bigint(10) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_forudiscsubs_usedis_uix` (`userid`,`discussion`),
  KEY `mdl_forudiscsubs_for_ix` (`forum`),
  KEY `mdl_forudiscsubs_use_ix` (`userid`),
  KEY `mdl_forudiscsubs_dis_ix` (`discussion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Users may choose to subscribe and unsubscribe from specific ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_forum_discussion_subs`
--

LOCK TABLES `mdl_forum_discussion_subs` WRITE;
/*!40000 ALTER TABLE `mdl_forum_discussion_subs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_forum_discussion_subs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum_discussions`
--

DROP TABLE IF EXISTS `mdl_forum_discussions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_forum_discussions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `forum` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `firstpost` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `groupid` bigint(10) NOT NULL DEFAULT -1,
  `assessed` tinyint(1) NOT NULL DEFAULT 1,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `usermodified` bigint(10) NOT NULL DEFAULT 0,
  `timestart` bigint(10) NOT NULL DEFAULT 0,
  `timeend` bigint(10) NOT NULL DEFAULT 0,
  `pinned` tinyint(1) NOT NULL DEFAULT 0,
  `timelocked` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_forudisc_use_ix` (`userid`),
  KEY `mdl_forudisc_cou_ix` (`course`),
  KEY `mdl_forudisc_for_ix` (`forum`),
  KEY `mdl_forudisc_use2_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Forums are composed of discussions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_forum_discussions`
--

LOCK TABLES `mdl_forum_discussions` WRITE;
/*!40000 ALTER TABLE `mdl_forum_discussions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_forum_discussions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum_grades`
--

DROP TABLE IF EXISTS `mdl_forum_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_forum_grades` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `forum` bigint(10) NOT NULL,
  `itemnumber` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `grade` decimal(10,5) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_forugrad_foriteuse_uix` (`forum`,`itemnumber`,`userid`),
  KEY `mdl_forugrad_use_ix` (`userid`),
  KEY `mdl_forugrad_for_ix` (`forum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Grading data for forum instances';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_forum_grades`
--

LOCK TABLES `mdl_forum_grades` WRITE;
/*!40000 ALTER TABLE `mdl_forum_grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_forum_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum_posts`
--

DROP TABLE IF EXISTS `mdl_forum_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_forum_posts` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `discussion` bigint(10) NOT NULL DEFAULT 0,
  `parent` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `created` bigint(10) NOT NULL DEFAULT 0,
  `modified` bigint(10) NOT NULL DEFAULT 0,
  `mailed` tinyint(2) NOT NULL DEFAULT 0,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` longtext NOT NULL,
  `messageformat` tinyint(2) NOT NULL DEFAULT 0,
  `messagetrust` tinyint(2) NOT NULL DEFAULT 0,
  `attachment` varchar(100) NOT NULL DEFAULT '',
  `totalscore` smallint(4) NOT NULL DEFAULT 0,
  `mailnow` bigint(10) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `privatereplyto` bigint(10) NOT NULL DEFAULT 0,
  `wordcount` bigint(20) DEFAULT NULL,
  `charcount` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_forupost_use_ix` (`userid`),
  KEY `mdl_forupost_cre_ix` (`created`),
  KEY `mdl_forupost_mai_ix` (`mailed`),
  KEY `mdl_forupost_pri_ix` (`privatereplyto`),
  KEY `mdl_forupost_dis_ix` (`discussion`),
  KEY `mdl_forupost_par_ix` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='All posts are stored in this table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_forum_posts`
--

LOCK TABLES `mdl_forum_posts` WRITE;
/*!40000 ALTER TABLE `mdl_forum_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_forum_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum_queue`
--

DROP TABLE IF EXISTS `mdl_forum_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_forum_queue` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `discussionid` bigint(10) NOT NULL DEFAULT 0,
  `postid` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_foruqueu_use_ix` (`userid`),
  KEY `mdl_foruqueu_dis_ix` (`discussionid`),
  KEY `mdl_foruqueu_pos_ix` (`postid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='For keeping track of posts that will be mailed in digest for';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_forum_queue`
--

LOCK TABLES `mdl_forum_queue` WRITE;
/*!40000 ALTER TABLE `mdl_forum_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_forum_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum_read`
--

DROP TABLE IF EXISTS `mdl_forum_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_forum_read` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `forumid` bigint(10) NOT NULL DEFAULT 0,
  `discussionid` bigint(10) NOT NULL DEFAULT 0,
  `postid` bigint(10) NOT NULL DEFAULT 0,
  `firstread` bigint(10) NOT NULL DEFAULT 0,
  `lastread` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_foruread_foruse_ix` (`forumid`,`userid`),
  KEY `mdl_foruread_disuse_ix` (`discussionid`,`userid`),
  KEY `mdl_foruread_posuse_ix` (`postid`,`userid`),
  KEY `mdl_foruread_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Tracks each users read posts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_forum_read`
--

LOCK TABLES `mdl_forum_read` WRITE;
/*!40000 ALTER TABLE `mdl_forum_read` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_forum_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum_subscriptions`
--

DROP TABLE IF EXISTS `mdl_forum_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_forum_subscriptions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `forum` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_forusubs_usefor_uix` (`userid`,`forum`),
  KEY `mdl_forusubs_use_ix` (`userid`),
  KEY `mdl_forusubs_for_ix` (`forum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Keeps track of who is subscribed to what forum';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_forum_subscriptions`
--

LOCK TABLES `mdl_forum_subscriptions` WRITE;
/*!40000 ALTER TABLE `mdl_forum_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_forum_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_forum_track_prefs`
--

DROP TABLE IF EXISTS `mdl_forum_track_prefs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_forum_track_prefs` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `forumid` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_forutracpref_usefor_ix` (`userid`,`forumid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Tracks each users untracked forums';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_forum_track_prefs`
--

LOCK TABLES `mdl_forum_track_prefs` WRITE;
/*!40000 ALTER TABLE `mdl_forum_track_prefs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_forum_track_prefs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_glossary`
--

DROP TABLE IF EXISTS `mdl_glossary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_glossary` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `course` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro` longtext NOT NULL,
  `introformat` smallint(4) NOT NULL DEFAULT 0,
  `allowduplicatedentries` tinyint(2) NOT NULL DEFAULT 0,
  `displayformat` varchar(50) NOT NULL DEFAULT 'dictionary',
  `mainglossary` tinyint(2) NOT NULL DEFAULT 0,
  `showspecial` tinyint(2) NOT NULL DEFAULT 1,
  `showalphabet` tinyint(2) NOT NULL DEFAULT 1,
  `showall` tinyint(2) NOT NULL DEFAULT 1,
  `allowcomments` tinyint(2) NOT NULL DEFAULT 0,
  `allowprintview` tinyint(2) NOT NULL DEFAULT 1,
  `usedynalink` tinyint(2) NOT NULL DEFAULT 1,
  `defaultapproval` tinyint(2) NOT NULL DEFAULT 1,
  `approvaldisplayformat` varchar(50) NOT NULL DEFAULT 'default',
  `globalglossary` tinyint(2) NOT NULL DEFAULT 0,
  `entbypage` smallint(3) NOT NULL DEFAULT 10,
  `editalways` tinyint(2) NOT NULL DEFAULT 0,
  `rsstype` tinyint(2) NOT NULL DEFAULT 0,
  `rssarticles` tinyint(2) NOT NULL DEFAULT 0,
  `assessed` bigint(10) NOT NULL DEFAULT 0,
  `assesstimestart` bigint(10) NOT NULL DEFAULT 0,
  `assesstimefinish` bigint(10) NOT NULL DEFAULT 0,
  `scale` bigint(10) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `completionentries` int(9) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_glos_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='all glossaries';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_glossary`
--

LOCK TABLES `mdl_glossary` WRITE;
/*!40000 ALTER TABLE `mdl_glossary` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_glossary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_glossary_alias`
--

DROP TABLE IF EXISTS `mdl_glossary_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_glossary_alias` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `entryid` bigint(10) NOT NULL DEFAULT 0,
  `alias` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mdl_glosalia_ent_ix` (`entryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='entries alias';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_glossary_alias`
--

LOCK TABLES `mdl_glossary_alias` WRITE;
/*!40000 ALTER TABLE `mdl_glossary_alias` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_glossary_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_glossary_categories`
--

DROP TABLE IF EXISTS `mdl_glossary_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_glossary_categories` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `glossaryid` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `usedynalink` tinyint(2) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `mdl_gloscate_glo_ix` (`glossaryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='all categories for glossary entries';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_glossary_categories`
--

LOCK TABLES `mdl_glossary_categories` WRITE;
/*!40000 ALTER TABLE `mdl_glossary_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_glossary_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_glossary_entries`
--

DROP TABLE IF EXISTS `mdl_glossary_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_glossary_entries` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `glossaryid` bigint(10) NOT NULL DEFAULT 0,
  `userid` bigint(10) NOT NULL DEFAULT 0,
  `concept` varchar(255) NOT NULL DEFAULT '',
  `definition` longtext NOT NULL,
  `definitionformat` tinyint(2) NOT NULL DEFAULT 0,
  `definitiontrust` tinyint(2) NOT NULL DEFAULT 0,
  `attachment` varchar(100) NOT NULL DEFAULT '',
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  `teacherentry` tinyint(2) NOT NULL DEFAULT 0,
  `sourceglossaryid` bigint(10) NOT NULL DEFAULT 0,
  `usedynalink` tinyint(2) NOT NULL DEFAULT 1,
  `casesensitive` tinyint(2) NOT NULL DEFAULT 0,
  `fullmatch` tinyint(2) NOT NULL DEFAULT 1,
  `approved` tinyint(2) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `mdl_glosentr_use_ix` (`userid`),
  KEY `mdl_glosentr_con_ix` (`concept`),
  KEY `mdl_glosentr_glo_ix` (`glossaryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='all glossary entries';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_glossary_entries`
--

LOCK TABLES `mdl_glossary_entries` WRITE;
/*!40000 ALTER TABLE `mdl_glossary_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_glossary_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_glossary_entries_categories`
--

DROP TABLE IF EXISTS `mdl_glossary_entries_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_glossary_entries_categories` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `categoryid` bigint(10) NOT NULL DEFAULT 0,
  `entryid` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_glosentrcate_cat_ix` (`categoryid`),
  KEY `mdl_glosentrcate_ent_ix` (`entryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='categories of each glossary entry';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_glossary_entries_categories`
--

LOCK TABLES `mdl_glossary_entries_categories` WRITE;
/*!40000 ALTER TABLE `mdl_glossary_entries_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_glossary_entries_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_glossary_formats`
--

DROP TABLE IF EXISTS `mdl_glossary_formats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_glossary_formats` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `popupformatname` varchar(50) NOT NULL DEFAULT '',
  `visible` tinyint(2) NOT NULL DEFAULT 1,
  `showgroup` tinyint(2) NOT NULL DEFAULT 1,
  `showtabs` varchar(100) DEFAULT NULL,
  `defaultmode` varchar(50) NOT NULL DEFAULT '',
  `defaulthook` varchar(50) NOT NULL DEFAULT '',
  `sortkey` varchar(50) NOT NULL DEFAULT '',
  `sortorder` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Setting of the display formats';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_glossary_formats`
--

LOCK TABLES `mdl_glossary_formats` WRITE;
/*!40000 ALTER TABLE `mdl_glossary_formats` DISABLE KEYS */;
INSERT INTO `mdl_glossary_formats` VALUES (1,'continuous','continuous',1,1,'standard,category,date','','','',''),(2,'dictionary','dictionary',1,1,'standard','','','',''),(3,'encyclopedia','encyclopedia',1,1,'standard,category,date,author','','','',''),(4,'entrylist','entrylist',1,1,'standard,category,date,author','','','',''),(5,'faq','faq',1,1,'standard,category,date,author','','','',''),(6,'fullwithauthor','fullwithauthor',1,1,'standard,category,date,author','','','',''),(7,'fullwithoutauthor','fullwithoutauthor',1,1,'standard,category,date','','','','');
/*!40000 ALTER TABLE `mdl_glossary_formats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_categories`
--

DROP TABLE IF EXISTS `mdl_grade_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_grade_categories` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `parent` bigint(10) DEFAULT NULL,
  `depth` bigint(10) NOT NULL DEFAULT 0,
  `path` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) NOT NULL DEFAULT '',
  `aggregation` bigint(10) NOT NULL DEFAULT 0,
  `keephigh` bigint(10) NOT NULL DEFAULT 0,
  `droplow` bigint(10) NOT NULL DEFAULT 0,
  `aggregateonlygraded` tinyint(1) NOT NULL DEFAULT 0,
  `aggregateoutcomes` tinyint(1) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `hidden` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_gradcate_cou_ix` (`courseid`),
  KEY `mdl_gradcate_par_ix` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='This table keeps information about categories, used for grou';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_categories`
--

LOCK TABLES `mdl_grade_categories` WRITE;
/*!40000 ALTER TABLE `mdl_grade_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_categories_history`
--

DROP TABLE IF EXISTS `mdl_grade_categories_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_grade_categories_history` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `action` bigint(10) NOT NULL DEFAULT 0,
  `oldid` bigint(10) NOT NULL,
  `source` varchar(255) DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `loggeduser` bigint(10) DEFAULT NULL,
  `courseid` bigint(10) NOT NULL,
  `parent` bigint(10) DEFAULT NULL,
  `depth` bigint(10) NOT NULL DEFAULT 0,
  `path` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) NOT NULL DEFAULT '',
  `aggregation` bigint(10) NOT NULL DEFAULT 0,
  `keephigh` bigint(10) NOT NULL DEFAULT 0,
  `droplow` bigint(10) NOT NULL DEFAULT 0,
  `aggregateonlygraded` tinyint(1) NOT NULL DEFAULT 0,
  `aggregateoutcomes` tinyint(1) NOT NULL DEFAULT 0,
  `aggregatesubcats` tinyint(1) NOT NULL DEFAULT 0,
  `hidden` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_gradcatehist_act_ix` (`action`),
  KEY `mdl_gradcatehist_tim_ix` (`timemodified`),
  KEY `mdl_gradcatehist_old_ix` (`oldid`),
  KEY `mdl_gradcatehist_cou_ix` (`courseid`),
  KEY `mdl_gradcatehist_par_ix` (`parent`),
  KEY `mdl_gradcatehist_log_ix` (`loggeduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='History of grade_categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_categories_history`
--

LOCK TABLES `mdl_grade_categories_history` WRITE;
/*!40000 ALTER TABLE `mdl_grade_categories_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_categories_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_grades`
--

DROP TABLE IF EXISTS `mdl_grade_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_grade_grades` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `itemid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `rawgrade` decimal(10,5) DEFAULT NULL,
  `rawgrademax` decimal(10,5) NOT NULL DEFAULT 100.00000,
  `rawgrademin` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `rawscaleid` bigint(10) DEFAULT NULL,
  `usermodified` bigint(10) DEFAULT NULL,
  `finalgrade` decimal(10,5) DEFAULT NULL,
  `hidden` bigint(10) NOT NULL DEFAULT 0,
  `locked` bigint(10) NOT NULL DEFAULT 0,
  `locktime` bigint(10) NOT NULL DEFAULT 0,
  `exported` bigint(10) NOT NULL DEFAULT 0,
  `overridden` bigint(10) NOT NULL DEFAULT 0,
  `excluded` bigint(10) NOT NULL DEFAULT 0,
  `feedback` longtext DEFAULT NULL,
  `feedbackformat` bigint(10) NOT NULL DEFAULT 0,
  `information` longtext DEFAULT NULL,
  `informationformat` bigint(10) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `aggregationstatus` varchar(10) NOT NULL DEFAULT 'unknown',
  `aggregationweight` decimal(10,5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_gradgrad_useite_uix` (`userid`,`itemid`),
  KEY `mdl_gradgrad_locloc_ix` (`locked`,`locktime`),
  KEY `mdl_gradgrad_ite_ix` (`itemid`),
  KEY `mdl_gradgrad_use_ix` (`userid`),
  KEY `mdl_gradgrad_raw_ix` (`rawscaleid`),
  KEY `mdl_gradgrad_use2_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='grade_grades  This table keeps individual grades for each us';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_grades`
--

LOCK TABLES `mdl_grade_grades` WRITE;
/*!40000 ALTER TABLE `mdl_grade_grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_grades_history`
--

DROP TABLE IF EXISTS `mdl_grade_grades_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_grade_grades_history` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `action` bigint(10) NOT NULL DEFAULT 0,
  `oldid` bigint(10) NOT NULL,
  `source` varchar(255) DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `loggeduser` bigint(10) DEFAULT NULL,
  `itemid` bigint(10) NOT NULL,
  `userid` bigint(10) NOT NULL,
  `rawgrade` decimal(10,5) DEFAULT NULL,
  `rawgrademax` decimal(10,5) NOT NULL DEFAULT 100.00000,
  `rawgrademin` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `rawscaleid` bigint(10) DEFAULT NULL,
  `usermodified` bigint(10) DEFAULT NULL,
  `finalgrade` decimal(10,5) DEFAULT NULL,
  `hidden` bigint(10) NOT NULL DEFAULT 0,
  `locked` bigint(10) NOT NULL DEFAULT 0,
  `locktime` bigint(10) NOT NULL DEFAULT 0,
  `exported` bigint(10) NOT NULL DEFAULT 0,
  `overridden` bigint(10) NOT NULL DEFAULT 0,
  `excluded` bigint(10) NOT NULL DEFAULT 0,
  `feedback` longtext DEFAULT NULL,
  `feedbackformat` bigint(10) NOT NULL DEFAULT 0,
  `information` longtext DEFAULT NULL,
  `informationformat` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_gradgradhist_act_ix` (`action`),
  KEY `mdl_gradgradhist_tim_ix` (`timemodified`),
  KEY `mdl_gradgradhist_useitetim_ix` (`userid`,`itemid`,`timemodified`),
  KEY `mdl_gradgradhist_old_ix` (`oldid`),
  KEY `mdl_gradgradhist_ite_ix` (`itemid`),
  KEY `mdl_gradgradhist_use_ix` (`userid`),
  KEY `mdl_gradgradhist_raw_ix` (`rawscaleid`),
  KEY `mdl_gradgradhist_use2_ix` (`usermodified`),
  KEY `mdl_gradgradhist_log_ix` (`loggeduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='History table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_grades_history`
--

LOCK TABLES `mdl_grade_grades_history` WRITE;
/*!40000 ALTER TABLE `mdl_grade_grades_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_grades_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_import_newitem`
--

DROP TABLE IF EXISTS `mdl_grade_import_newitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_grade_import_newitem` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `itemname` varchar(255) NOT NULL DEFAULT '',
  `importcode` bigint(10) NOT NULL,
  `importer` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_gradimponewi_imp_ix` (`importer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='temporary table for storing new grade_item names from grade ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_import_newitem`
--

LOCK TABLES `mdl_grade_import_newitem` WRITE;
/*!40000 ALTER TABLE `mdl_grade_import_newitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_import_newitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_import_values`
--

DROP TABLE IF EXISTS `mdl_grade_import_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_grade_import_values` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `itemid` bigint(10) DEFAULT NULL,
  `newgradeitem` bigint(10) DEFAULT NULL,
  `userid` bigint(10) NOT NULL,
  `finalgrade` decimal(10,5) DEFAULT NULL,
  `feedback` longtext DEFAULT NULL,
  `importcode` bigint(10) NOT NULL,
  `importer` bigint(10) DEFAULT NULL,
  `importonlyfeedback` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_gradimpovalu_ite_ix` (`itemid`),
  KEY `mdl_gradimpovalu_new_ix` (`newgradeitem`),
  KEY `mdl_gradimpovalu_imp_ix` (`importer`),
  KEY `mdl_gradimpovalu_use_ix` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Temporary table for importing grades';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_import_values`
--

LOCK TABLES `mdl_grade_import_values` WRITE;
/*!40000 ALTER TABLE `mdl_grade_import_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_import_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_items`
--

DROP TABLE IF EXISTS `mdl_grade_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_grade_items` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) DEFAULT NULL,
  `categoryid` bigint(10) DEFAULT NULL,
  `itemname` varchar(255) DEFAULT NULL,
  `itemtype` varchar(30) NOT NULL DEFAULT '',
  `itemmodule` varchar(30) DEFAULT NULL,
  `iteminstance` bigint(10) DEFAULT NULL,
  `itemnumber` bigint(10) DEFAULT NULL,
  `iteminfo` longtext DEFAULT NULL,
  `idnumber` varchar(255) DEFAULT NULL,
  `calculation` longtext DEFAULT NULL,
  `gradetype` smallint(4) NOT NULL DEFAULT 1,
  `grademax` decimal(10,5) NOT NULL DEFAULT 100.00000,
  `grademin` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `scaleid` bigint(10) DEFAULT NULL,
  `outcomeid` bigint(10) DEFAULT NULL,
  `gradepass` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `multfactor` decimal(10,5) NOT NULL DEFAULT 1.00000,
  `plusfactor` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `aggregationcoef` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `aggregationcoef2` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  `display` bigint(10) NOT NULL DEFAULT 0,
  `decimals` tinyint(1) DEFAULT NULL,
  `hidden` bigint(10) NOT NULL DEFAULT 0,
  `locked` bigint(10) NOT NULL DEFAULT 0,
  `locktime` bigint(10) NOT NULL DEFAULT 0,
  `needsupdate` bigint(10) NOT NULL DEFAULT 0,
  `weightoverride` tinyint(1) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_graditem_locloc_ix` (`locked`,`locktime`),
  KEY `mdl_graditem_itenee_ix` (`itemtype`,`needsupdate`),
  KEY `mdl_graditem_gra_ix` (`gradetype`),
  KEY `mdl_graditem_idncou_ix` (`idnumber`,`courseid`),
  KEY `mdl_graditem_iteiteitecou_ix` (`itemtype`,`itemmodule`,`iteminstance`,`courseid`),
  KEY `mdl_graditem_cou_ix` (`courseid`),
  KEY `mdl_graditem_cat_ix` (`categoryid`),
  KEY `mdl_graditem_sca_ix` (`scaleid`),
  KEY `mdl_graditem_out_ix` (`outcomeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='This table keeps information about gradeable items (ie colum';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_items`
--

LOCK TABLES `mdl_grade_items` WRITE;
/*!40000 ALTER TABLE `mdl_grade_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_items_history`
--

DROP TABLE IF EXISTS `mdl_grade_items_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_grade_items_history` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `action` bigint(10) NOT NULL DEFAULT 0,
  `oldid` bigint(10) NOT NULL,
  `source` varchar(255) DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `loggeduser` bigint(10) DEFAULT NULL,
  `courseid` bigint(10) DEFAULT NULL,
  `categoryid` bigint(10) DEFAULT NULL,
  `itemname` varchar(255) DEFAULT NULL,
  `itemtype` varchar(30) NOT NULL DEFAULT '',
  `itemmodule` varchar(30) DEFAULT NULL,
  `iteminstance` bigint(10) DEFAULT NULL,
  `itemnumber` bigint(10) DEFAULT NULL,
  `iteminfo` longtext DEFAULT NULL,
  `idnumber` varchar(255) DEFAULT NULL,
  `calculation` longtext DEFAULT NULL,
  `gradetype` smallint(4) NOT NULL DEFAULT 1,
  `grademax` decimal(10,5) NOT NULL DEFAULT 100.00000,
  `grademin` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `scaleid` bigint(10) DEFAULT NULL,
  `outcomeid` bigint(10) DEFAULT NULL,
  `gradepass` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `multfactor` decimal(10,5) NOT NULL DEFAULT 1.00000,
  `plusfactor` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `aggregationcoef` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `aggregationcoef2` decimal(10,5) NOT NULL DEFAULT 0.00000,
  `sortorder` bigint(10) NOT NULL DEFAULT 0,
  `hidden` bigint(10) NOT NULL DEFAULT 0,
  `locked` bigint(10) NOT NULL DEFAULT 0,
  `locktime` bigint(10) NOT NULL DEFAULT 0,
  `needsupdate` bigint(10) NOT NULL DEFAULT 0,
  `display` bigint(10) NOT NULL DEFAULT 0,
  `decimals` tinyint(1) DEFAULT NULL,
  `weightoverride` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_graditemhist_act_ix` (`action`),
  KEY `mdl_graditemhist_tim_ix` (`timemodified`),
  KEY `mdl_graditemhist_old_ix` (`oldid`),
  KEY `mdl_graditemhist_cou_ix` (`courseid`),
  KEY `mdl_graditemhist_cat_ix` (`categoryid`),
  KEY `mdl_graditemhist_sca_ix` (`scaleid`),
  KEY `mdl_graditemhist_out_ix` (`outcomeid`),
  KEY `mdl_graditemhist_log_ix` (`loggeduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='History of grade_items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_items_history`
--

LOCK TABLES `mdl_grade_items_history` WRITE;
/*!40000 ALTER TABLE `mdl_grade_items_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_items_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_letters`
--

DROP TABLE IF EXISTS `mdl_grade_letters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_grade_letters` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL,
  `lowerboundary` decimal(10,5) NOT NULL,
  `letter` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_gradlett_conlowlet_uix` (`contextid`,`lowerboundary`,`letter`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Repository for grade letters, for courses and other moodle e';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_letters`
--

LOCK TABLES `mdl_grade_letters` WRITE;
/*!40000 ALTER TABLE `mdl_grade_letters` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_letters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_outcomes`
--

DROP TABLE IF EXISTS `mdl_grade_outcomes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_grade_outcomes` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) DEFAULT NULL,
  `shortname` varchar(255) NOT NULL DEFAULT '',
  `fullname` longtext NOT NULL,
  `scaleid` bigint(10) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT 0,
  `timecreated` bigint(10) DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `usermodified` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_gradoutc_cousho_uix` (`courseid`,`shortname`),
  KEY `mdl_gradoutc_cou_ix` (`courseid`),
  KEY `mdl_gradoutc_sca_ix` (`scaleid`),
  KEY `mdl_gradoutc_use_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='This table describes the outcomes used in the system. An out';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_outcomes`
--

LOCK TABLES `mdl_grade_outcomes` WRITE;
/*!40000 ALTER TABLE `mdl_grade_outcomes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_outcomes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_outcomes_courses`
--

DROP TABLE IF EXISTS `mdl_grade_outcomes_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_grade_outcomes_courses` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `outcomeid` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_gradoutccour_couout_uix` (`courseid`,`outcomeid`),
  KEY `mdl_gradoutccour_cou_ix` (`courseid`),
  KEY `mdl_gradoutccour_out_ix` (`outcomeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='stores what outcomes are used in what courses.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_outcomes_courses`
--

LOCK TABLES `mdl_grade_outcomes_courses` WRITE;
/*!40000 ALTER TABLE `mdl_grade_outcomes_courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_outcomes_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_outcomes_history`
--

DROP TABLE IF EXISTS `mdl_grade_outcomes_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_grade_outcomes_history` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `action` bigint(10) NOT NULL DEFAULT 0,
  `oldid` bigint(10) NOT NULL,
  `source` varchar(255) DEFAULT NULL,
  `timemodified` bigint(10) DEFAULT NULL,
  `loggeduser` bigint(10) DEFAULT NULL,
  `courseid` bigint(10) DEFAULT NULL,
  `shortname` varchar(255) NOT NULL DEFAULT '',
  `fullname` longtext NOT NULL,
  `scaleid` bigint(10) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_gradoutchist_act_ix` (`action`),
  KEY `mdl_gradoutchist_tim_ix` (`timemodified`),
  KEY `mdl_gradoutchist_old_ix` (`oldid`),
  KEY `mdl_gradoutchist_cou_ix` (`courseid`),
  KEY `mdl_gradoutchist_sca_ix` (`scaleid`),
  KEY `mdl_gradoutchist_log_ix` (`loggeduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='History table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_outcomes_history`
--

LOCK TABLES `mdl_grade_outcomes_history` WRITE;
/*!40000 ALTER TABLE `mdl_grade_outcomes_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_outcomes_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grade_settings`
--

DROP TABLE IF EXISTS `mdl_grade_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_grade_settings` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_gradsett_counam_uix` (`courseid`,`name`),
  KEY `mdl_gradsett_cou_ix` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='gradebook settings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grade_settings`
--

LOCK TABLES `mdl_grade_settings` WRITE;
/*!40000 ALTER TABLE `mdl_grade_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grade_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grading_areas`
--

DROP TABLE IF EXISTS `mdl_grading_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_grading_areas` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `contextid` bigint(10) NOT NULL,
  `component` varchar(100) NOT NULL DEFAULT '',
  `areaname` varchar(100) NOT NULL DEFAULT '',
  `activemethod` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_gradarea_concomare_uix` (`contextid`,`component`,`areaname`),
  KEY `mdl_gradarea_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Identifies gradable areas where advanced grading can happen.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grading_areas`
--

LOCK TABLES `mdl_grading_areas` WRITE;
/*!40000 ALTER TABLE `mdl_grading_areas` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grading_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grading_definitions`
--

DROP TABLE IF EXISTS `mdl_grading_definitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_grading_definitions` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `areaid` bigint(10) NOT NULL,
  `method` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` longtext DEFAULT NULL,
  `descriptionformat` tinyint(2) DEFAULT NULL,
  `status` bigint(10) NOT NULL DEFAULT 0,
  `copiedfromid` bigint(10) DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL,
  `usercreated` bigint(10) NOT NULL,
  `timemodified` bigint(10) NOT NULL,
  `usermodified` bigint(10) NOT NULL,
  `timecopied` bigint(10) DEFAULT 0,
  `options` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_graddefi_aremet_uix` (`areaid`,`method`),
  KEY `mdl_graddefi_are_ix` (`areaid`),
  KEY `mdl_graddefi_use_ix` (`usermodified`),
  KEY `mdl_graddefi_use2_ix` (`usercreated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Contains the basic information about an advanced grading for';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grading_definitions`
--

LOCK TABLES `mdl_grading_definitions` WRITE;
/*!40000 ALTER TABLE `mdl_grading_definitions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grading_definitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_grading_instances`
--

DROP TABLE IF EXISTS `mdl_grading_instances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_grading_instances` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `definitionid` bigint(10) NOT NULL,
  `raterid` bigint(10) NOT NULL,
  `itemid` bigint(10) DEFAULT NULL,
  `rawgrade` decimal(10,5) DEFAULT NULL,
  `status` bigint(10) NOT NULL DEFAULT 0,
  `feedback` longtext DEFAULT NULL,
  `feedbackformat` tinyint(2) DEFAULT NULL,
  `timemodified` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_gradinst_def_ix` (`definitionid`),
  KEY `mdl_gradinst_rat_ix` (`raterid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Grading form instance is an assessment record for one gradab';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_grading_instances`
--

LOCK TABLES `mdl_grading_instances` WRITE;
/*!40000 ALTER TABLE `mdl_grading_instances` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_grading_instances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_gradingform_guide_comments`
--

DROP TABLE IF EXISTS `mdl_gradingform_guide_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_gradingform_guide_comments` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `definitionid` bigint(10) NOT NULL,
  `sortorder` bigint(10) NOT NULL,
  `description` longtext DEFAULT NULL,
  `descriptionformat` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_gradguidcomm_def_ix` (`definitionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='frequently used comments used in marking guide';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_gradingform_guide_comments`
--

LOCK TABLES `mdl_gradingform_guide_comments` WRITE;
/*!40000 ALTER TABLE `mdl_gradingform_guide_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_gradingform_guide_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_gradingform_guide_criteria`
--

DROP TABLE IF EXISTS `mdl_gradingform_guide_criteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_gradingform_guide_criteria` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `definitionid` bigint(10) NOT NULL,
  `sortorder` bigint(10) NOT NULL,
  `shortname` varchar(255) NOT NULL DEFAULT '',
  `description` longtext DEFAULT NULL,
  `descriptionformat` tinyint(2) DEFAULT NULL,
  `descriptionmarkers` longtext DEFAULT NULL,
  `descriptionmarkersformat` tinyint(2) DEFAULT NULL,
  `maxscore` decimal(10,5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_gradguidcrit_def_ix` (`definitionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores the rows of the criteria grid.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_gradingform_guide_criteria`
--

LOCK TABLES `mdl_gradingform_guide_criteria` WRITE;
/*!40000 ALTER TABLE `mdl_gradingform_guide_criteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_gradingform_guide_criteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_gradingform_guide_fillings`
--

DROP TABLE IF EXISTS `mdl_gradingform_guide_fillings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_gradingform_guide_fillings` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `instanceid` bigint(10) NOT NULL,
  `criterionid` bigint(10) NOT NULL,
  `remark` longtext DEFAULT NULL,
  `remarkformat` tinyint(2) DEFAULT NULL,
  `score` decimal(10,5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_gradguidfill_inscri_uix` (`instanceid`,`criterionid`),
  KEY `mdl_gradguidfill_ins_ix` (`instanceid`),
  KEY `mdl_gradguidfill_cri_ix` (`criterionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores the data of how the guide is filled by a particular r';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_gradingform_guide_fillings`
--

LOCK TABLES `mdl_gradingform_guide_fillings` WRITE;
/*!40000 ALTER TABLE `mdl_gradingform_guide_fillings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_gradingform_guide_fillings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_gradingform_rubric_criteria`
--

DROP TABLE IF EXISTS `mdl_gradingform_rubric_criteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_gradingform_rubric_criteria` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `definitionid` bigint(10) NOT NULL,
  `sortorder` bigint(10) NOT NULL,
  `description` longtext DEFAULT NULL,
  `descriptionformat` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_gradrubrcrit_def_ix` (`definitionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores the rows of the rubric grid.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_gradingform_rubric_criteria`
--

LOCK TABLES `mdl_gradingform_rubric_criteria` WRITE;
/*!40000 ALTER TABLE `mdl_gradingform_rubric_criteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_gradingform_rubric_criteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_gradingform_rubric_fillings`
--

DROP TABLE IF EXISTS `mdl_gradingform_rubric_fillings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_gradingform_rubric_fillings` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `instanceid` bigint(10) NOT NULL,
  `criterionid` bigint(10) NOT NULL,
  `levelid` bigint(10) DEFAULT NULL,
  `remark` longtext DEFAULT NULL,
  `remarkformat` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mdl_gradrubrfill_inscri_uix` (`instanceid`,`criterionid`),
  KEY `mdl_gradrubrfill_lev_ix` (`levelid`),
  KEY `mdl_gradrubrfill_ins_ix` (`instanceid`),
  KEY `mdl_gradrubrfill_cri_ix` (`criterionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores the data of how the rubric is filled by a particular ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_gradingform_rubric_fillings`
--

LOCK TABLES `mdl_gradingform_rubric_fillings` WRITE;
/*!40000 ALTER TABLE `mdl_gradingform_rubric_fillings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_gradingform_rubric_fillings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_gradingform_rubric_levels`
--

DROP TABLE IF EXISTS `mdl_gradingform_rubric_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_gradingform_rubric_levels` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `criterionid` bigint(10) NOT NULL,
  `score` decimal(10,5) NOT NULL,
  `definition` longtext DEFAULT NULL,
  `definitionformat` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mdl_gradrubrleve_cri_ix` (`criterionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Stores the columns of the rubric grid.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_gradingform_rubric_levels`
--

LOCK TABLES `mdl_gradingform_rubric_levels` WRITE;
/*!40000 ALTER TABLE `mdl_gradingform_rubric_levels` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_gradingform_rubric_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_groupings`
--

DROP TABLE IF EXISTS `mdl_groupings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_groupings` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `courseid` bigint(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `idnumber` varchar(100) NOT NULL DEFAULT '',
  `description` longtext DEFAULT NULL,
  `descriptionformat` tinyint(2) NOT NULL DEFAULT 0,
  `configdata` longtext DEFAULT NULL,
  `timecreated` bigint(10) NOT NULL DEFAULT 0,
  `timemodified` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_grou_idn2_ix` (`idnumber`),
  KEY `mdl_grou_cou2_ix` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='A grouping is a collection of groups. WAS: groups_groupings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_groupings`
--

LOCK TABLES `mdl_groupings` WRITE;
/*!40000 ALTER TABLE `mdl_groupings` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdl_groupings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdl_groupings_groups`
--

DROP TABLE IF EXISTS `mdl_groupings_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdl_groupings_groups` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `groupingid` bigint(10) NOT NULL DEFAULT 0,
  `groupid` bigint(10) NOT NULL DEFAULT 0,
  `timeadded` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `mdl_grougrou_gro_ix` (`groupingid`),
  KEY `mdl_grougrou_gro2_ix` (`groupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPRESSED COMMENT='Link a grouping to a group (note, groups can be in multiple ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdl_groupings_groups`
--

LOCK TABLES `mdl_groupings_groups` WRITE;
/*!40000 ALTER TABLE `mdl_groupings_groups` DISABLE KEYS */;
