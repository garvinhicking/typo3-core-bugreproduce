-- MariaDB dump 10.19  Distrib 10.6.15-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.6.15-MariaDB-1:10.6.15+maria~ubu2004-log

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
-- Table structure for table `backend_layout`
--

DROP TABLE IF EXISTS `backend_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backend_layout` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `config` longtext DEFAULT NULL,
  `icon` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_layout`
--

LOCK TABLES `backend_layout` WRITE;
/*!40000 ALTER TABLE `backend_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `backend_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_dashboards`
--

DROP TABLE IF EXISTS `be_dashboards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_dashboards` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `identifier` varchar(120) NOT NULL DEFAULT '',
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(120) NOT NULL DEFAULT '',
  `widgets` text DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `identifier` (`identifier`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_dashboards`
--

LOCK TABLES `be_dashboards` WRITE;
/*!40000 ALTER TABLE `be_dashboards` DISABLE KEYS */;
INSERT INTO `be_dashboards` VALUES (1,0,1694603082,1694603082,0,0,0,0,'3d03c98ac61143e23e740382fbd8b7563b2e4c69',1,'My dashboard','{\"d7f8d66d43f0ae1ed9bb274f16f32422d817fb4f\":{\"identifier\":\"t3information\"},\"9cda7192587a50a7422f3f46fe0cdc3222ab64a2\":{\"identifier\":\"docGettingStarted\"}}');
/*!40000 ALTER TABLE `be_dashboards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_groups`
--

DROP TABLE IF EXISTS `be_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_groups` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `non_exclude_fields` text DEFAULT NULL,
  `explicit_allowdeny` text DEFAULT NULL,
  `allowed_languages` varchar(255) NOT NULL DEFAULT '',
  `custom_options` text DEFAULT NULL,
  `db_mountpoints` text DEFAULT NULL,
  `pagetypes_select` text DEFAULT NULL,
  `tables_select` text DEFAULT NULL,
  `tables_modify` text DEFAULT NULL,
  `groupMods` text DEFAULT NULL,
  `availableWidgets` text DEFAULT NULL,
  `mfa_providers` text DEFAULT NULL,
  `file_mountpoints` text DEFAULT NULL,
  `file_permissions` text DEFAULT NULL,
  `TSconfig` text DEFAULT NULL,
  `subgroup` text DEFAULT NULL,
  `category_perms` longtext DEFAULT NULL,
  `workspace_perms` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tx_styleguide_isdemorecord` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_groups`
--

LOCK TABLES `be_groups` WRITE;
/*!40000 ALTER TABLE `be_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `be_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_sessions`
--

DROP TABLE IF EXISTS `be_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_sessions` (
  `ses_id` varchar(190) NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) NOT NULL DEFAULT '',
  `ses_userid` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_data` longblob DEFAULT NULL,
  PRIMARY KEY (`ses_id`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_sessions`
--

LOCK TABLES `be_sessions` WRITE;
/*!40000 ALTER TABLE `be_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `be_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_users`
--

DROP TABLE IF EXISTS `be_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `disable` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `usergroup` text DEFAULT NULL,
  `lang` varchar(10) NOT NULL DEFAULT 'default',
  `db_mountpoints` text DEFAULT NULL,
  `realName` varchar(80) NOT NULL DEFAULT '',
  `userMods` text DEFAULT NULL,
  `allowed_languages` varchar(255) NOT NULL DEFAULT '',
  `uc` mediumblob DEFAULT NULL,
  `file_mountpoints` text DEFAULT NULL,
  `file_permissions` text DEFAULT NULL,
  `TSconfig` text DEFAULT NULL,
  `workspace_id` int(11) NOT NULL DEFAULT 0,
  `mfa` mediumblob DEFAULT NULL,
  `category_perms` longtext DEFAULT NULL,
  `lastlogin` int(11) NOT NULL DEFAULT 0,
  `avatar` int(10) unsigned NOT NULL DEFAULT 0,
  `email` varchar(255) NOT NULL DEFAULT '',
  `admin` smallint(5) unsigned NOT NULL DEFAULT 0,
  `options` smallint(5) unsigned NOT NULL DEFAULT 0,
  `password_reset_token` varchar(100) NOT NULL DEFAULT '',
  `workspace_perms` smallint(6) NOT NULL DEFAULT 0,
  `tx_styleguide_isdemorecord` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `username` (`username`),
  KEY `parent` (`pid`,`deleted`,`disable`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_users`
--

LOCK TABLES `be_users` WRITE;
/*!40000 ALTER TABLE `be_users` DISABLE KEYS */;
INSERT INTO `be_users` VALUES (1,0,1694603059,1694603059,0,0,0,0,NULL,'admin','$argon2i$v=19$m=65536,t=16,p=1$Y1lJbVJDMEpMdi9hUk1Wbg$k0ilmne87QeKvZepXFywT3YsuAN+1MbuZCBLyCla8Ak',NULL,'default',NULL,'',NULL,'','a:8:{s:10:\"moduleData\";a:10:{s:28:\"dashboard/current_dashboard/\";s:40:\"3d03c98ac61143e23e740382fbd8b7563b2e4c69\";s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";a:0:{}s:10:\"FormEngine\";a:2:{i:0;a:26:{s:32:\"c793a3d3c03c055bfa922fe796751027\";a:5:{i:0;s:18:\"Homepage (English)\";i:1;a:5:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:9;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";a:1:{s:5:\"pages\";a:1:{s:16:\"sys_language_uid\";s:1:\"0\";}}s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:76:\"&edit%5Bpages%5D%5B9%5D=edit&overrideVals%5Bpages%5D%5Bsys_language_uid%5D=0\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:9;s:3:\"pid\";i:0;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:76:\"/typo3/module/web/layout?token=574738218343454f271d48fc75a4c18121003f14&id=9\";}s:32:\"ca1d9f585ca31e6d709268bfa0021f7e\";a:5:{i:0;s:24:\"Thank you for your work.\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:13;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:34:\"&edit%5Btt_content%5D%5B13%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:13;s:3:\"pid\";i:9;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:98:\"/typo3/module/web/layout?token=574738218343454f271d48fc75a4c18121003f14&id=9#element-tt_content-13\";}s:32:\"c31c3d00814edbf9b2ddab640af3f55d\";a:5:{i:0;s:36:\"Thank you for your work. (workspace)\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:14;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:34:\"&edit%5Btt_content%5D%5B14%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:14;s:3:\"pid\";i:9;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:98:\"/typo3/module/web/layout?token=574738218343454f271d48fc75a4c18121003f14&id=9#element-tt_content-13\";}s:32:\"e8b409cd2442aa14a11752e34e9f305b\";a:5:{i:0;s:19:\"Subpage (copy mode)\";i:1;a:5:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:13;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:29:\"&edit%5Bpages%5D%5B13%5D=edit\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:13;s:3:\"pid\";i:9;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:77:\"/typo3/module/web/layout?token=574738218343454f271d48fc75a4c18121003f14&id=13\";}s:32:\"150b37b6f1b2a96d278b1a4b9ef46625\";a:5:{i:0;s:31:\"Subpage (copy mode) (workspace)\";i:1;a:5:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:18;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:29:\"&edit%5Bpages%5D%5B18%5D=edit\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:18;s:3:\"pid\";i:9;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:77:\"/typo3/module/web/layout?token=574738218343454f271d48fc75a4c18121003f14&id=13\";}s:32:\"a82241ea72bc024619639c48f162a817\";a:5:{i:0;s:28:\"Subpage (not all translated)\";i:1;a:5:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:12;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:29:\"&edit%5Bpages%5D%5B12%5D=edit\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:12;s:3:\"pid\";i:9;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:77:\"/typo3/module/web/layout?token=574738218343454f271d48fc75a4c18121003f14&id=12\";}s:32:\"f1892351c3b2949606a0d76de1876160\";a:5:{i:0;s:40:\"Subpage (not all translated) (workspace)\";i:1;a:5:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:22;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:29:\"&edit%5Bpages%5D%5B22%5D=edit\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:22;s:3:\"pid\";i:9;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:77:\"/typo3/module/web/layout?token=574738218343454f271d48fc75a4c18121003f14&id=12\";}s:32:\"650b3918a6e6f1922310b8e5c5ac84d5\";a:5:{i:0;s:21:\"Subpage (only german)\";i:1;a:5:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:11;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:29:\"&edit%5Bpages%5D%5B11%5D=edit\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:11;s:3:\"pid\";i:9;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:77:\"/typo3/module/web/layout?token=574738218343454f271d48fc75a4c18121003f14&id=11\";}s:32:\"a2855e75e0040aaf835979fcb5eae8fc\";a:5:{i:0;s:33:\"Subpage (only german) (workspace)\";i:1;a:5:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:24;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:29:\"&edit%5Bpages%5D%5B24%5D=edit\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:24;s:3:\"pid\";i:9;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:77:\"/typo3/module/web/layout?token=574738218343454f271d48fc75a4c18121003f14&id=11\";}s:32:\"2852d3f5b619bb7a4bb2eff52fab7de9\";a:5:{i:0;s:22:\"Subpage (only default)\";i:1;a:5:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:10;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:29:\"&edit%5Bpages%5D%5B10%5D=edit\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:10;s:3:\"pid\";i:9;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:77:\"/typo3/module/web/layout?token=574738218343454f271d48fc75a4c18121003f14&id=10\";}s:32:\"fd1687bd6a564afc1fcc7072c6f22de1\";a:5:{i:0;s:34:\"Subpage (only default) (workspace)\";i:1;a:5:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:26;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:29:\"&edit%5Bpages%5D%5B26%5D=edit\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:26;s:3:\"pid\";i:9;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:77:\"/typo3/module/web/layout?token=574738218343454f271d48fc75a4c18121003f14&id=10\";}s:32:\"ea5808446ef89a93a3ae0c95ac46d0d0\";a:5:{i:0;s:36:\"Only english (Default) content here.\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:9;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:33:\"&edit%5Btt_content%5D%5B9%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:9;s:3:\"pid\";i:10;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:98:\"/typo3/module/web/layout?token=574738218343454f271d48fc75a4c18121003f14&id=10#element-tt_content-9\";}s:32:\"450f1cb96fe4491e1e76cb7e67ee5dd8\";a:5:{i:0;s:48:\"Only english (Default) content here. (workspace)\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:18;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:34:\"&edit%5Btt_content%5D%5B18%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:18;s:3:\"pid\";i:10;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:98:\"/typo3/module/web/layout?token=574738218343454f271d48fc75a4c18121003f14&id=10#element-tt_content-9\";}s:32:\"f87337ea07fd5e46b7487a4d63a03a03\";a:5:{i:0;s:27:\"This should not be visible.\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:8;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:33:\"&edit%5Btt_content%5D%5B8%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:8;s:3:\"pid\";i:11;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:98:\"/typo3/module/web/layout?token=574738218343454f271d48fc75a4c18121003f14&id=11#element-tt_content-8\";}s:32:\"22cbd9b921ab5848edaac19c41752085\";a:5:{i:0;s:39:\"This should not be visible. (workspace)\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:19;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:34:\"&edit%5Btt_content%5D%5B19%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:19;s:3:\"pid\";i:11;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:98:\"/typo3/module/web/layout?token=574738218343454f271d48fc75a4c18121003f14&id=11#element-tt_content-8\";}s:32:\"af6a208f792a83220f87a953a62a081a\";a:5:{i:0;s:31:\"Only english + german (English)\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:6;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:33:\"&edit%5Btt_content%5D%5B6%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:6;s:3:\"pid\";i:12;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:98:\"/typo3/module/web/layout?token=574738218343454f271d48fc75a4c18121003f14&id=12#element-tt_content-6\";}s:32:\"7379749a99e9acb386dd0e97c5e558df\";a:5:{i:0;s:43:\"Only english + german (English) (workspace)\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:20;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:34:\"&edit%5Btt_content%5D%5B20%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:20;s:3:\"pid\";i:12;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:98:\"/typo3/module/web/layout?token=574738218343454f271d48fc75a4c18121003f14&id=12#element-tt_content-6\";}s:32:\"c312013d83c1a6ad7fec8b36a37ba3c8\";a:5:{i:0;s:15:\"English content\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:33:\"&edit%5Btt_content%5D%5B1%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:1;s:3:\"pid\";i:13;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:98:\"/typo3/module/web/layout?token=574738218343454f271d48fc75a4c18121003f14&id=13#element-tt_content-1\";}s:32:\"e1da1855e005674bf544fb90c5e48165\";a:5:{i:0;s:27:\"English content (workspace)\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:22;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:34:\"&edit%5Btt_content%5D%5B22%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:22;s:3:\"pid\";i:13;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:98:\"/typo3/module/web/layout?token=574738218343454f271d48fc75a4c18121003f14&id=13#element-tt_content-1\";}s:32:\"0850966397be9550f11eae67b9c302f9\";a:5:{i:0;s:26:\" Tak for arbejdet (Danish)\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:17;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:34:\"&edit%5Btt_content%5D%5B17%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:17;s:3:\"pid\";i:9;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:91:\"/typo3/module/web/list?token=d9b0d8b9e48efb6d613defe09b82195522dfd456&id=9&table=&pointer=1\";}s:32:\"a3b9454ecc0d182884b26f9c529ddb87\";a:5:{i:0;s:24:\"Dansk free mode (Danish)\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:4;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:33:\"&edit%5Btt_content%5D%5B4%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:4;s:3:\"pid\";i:13;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:92:\"/typo3/module/web/list?token=d9b0d8b9e48efb6d613defe09b82195522dfd456&id=13&table=&pointer=1\";}s:32:\"deac478137dd48a97e299bd046412e21\";a:5:{i:0;s:21:\"Deutsch, freier Modus\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:2;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:33:\"&edit%5Btt_content%5D%5B2%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:2;s:3:\"pid\";i:13;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:92:\"/typo3/module/web/list?token=d9b0d8b9e48efb6d613defe09b82195522dfd456&id=13&table=&pointer=1\";}s:32:\"581106f297d9eed8dec1190ee4d6b04d\";a:5:{i:0;s:27:\"Francais free mode (French)\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:3;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:33:\"&edit%5Btt_content%5D%5B3%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:3;s:3:\"pid\";i:13;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:92:\"/typo3/module/web/list?token=d9b0d8b9e48efb6d613defe09b82195522dfd456&id=13&table=&pointer=1\";}s:32:\"af2dcbd85360525a392c28222719afc6\";a:5:{i:0;s:32:\"Nur Englisch + Deutsch (Deutsch)\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:21;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:34:\"&edit%5Btt_content%5D%5B21%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:21;s:3:\"pid\";i:12;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:92:\"/typo3/module/web/list?token=d9b0d8b9e48efb6d613defe09b82195522dfd456&id=12&table=&pointer=1\";}s:32:\"629911c017052e9e049ce359020150c0\";a:5:{i:0;s:29:\"Nur deutscher Inhalt (German)\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:7;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:33:\"&edit%5Btt_content%5D%5B7%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:7;s:3:\"pid\";i:11;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:92:\"/typo3/module/web/list?token=d9b0d8b9e48efb6d613defe09b82195522dfd456&id=11&table=&pointer=1\";}s:32:\"ac8eceb4554a238d877cdbced8a9c761\";a:5:{i:0;s:41:\"Nur deutscher Inhalt (German) (workspace)\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:26;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:34:\"&edit%5Btt_content%5D%5B26%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:26;s:3:\"pid\";i:11;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:92:\"/typo3/module/web/list?token=d9b0d8b9e48efb6d613defe09b82195522dfd456&id=11&table=&pointer=1\";}}i:1;s:32:\"ac8eceb4554a238d877cdbced8a9c761\";}s:6:\"web_ts\";a:1:{s:6:\"action\";s:29:\"web_typoscript_constanteditor\";}s:25:\"web_typoscript_infomodify\";a:1:{s:23:\"selectedTemplatePerPage\";a:2:{i:1;i:1;i:2;i:2;}}s:16:\"opendocs::recent\";a:8:{s:32:\"e9a20afc307b62f043716cd08b1e4fb7\";a:5:{i:0;s:39:\"Francais free mode (French) (Workspace)\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:25;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:34:\"&edit%5Btt_content%5D%5B25%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:25;s:3:\"pid\";i:13;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:92:\"/typo3/module/web/list?token=d9b0d8b9e48efb6d613defe09b82195522dfd456&id=13&table=&pointer=1\";}s:32:\"37f78eded394840abf86f69fe8a46286\";a:5:{i:0;s:33:\"Deutsch, freier Modus (workspace)\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:24;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:34:\"&edit%5Btt_content%5D%5B24%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:24;s:3:\"pid\";i:13;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:92:\"/typo3/module/web/list?token=d9b0d8b9e48efb6d613defe09b82195522dfd456&id=13&table=&pointer=1\";}s:32:\"87081a86b53312865ee3b6074092ece3\";a:5:{i:0;s:36:\"Dansk free mode (Danish) (workspace)\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:23;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:34:\"&edit%5Btt_content%5D%5B23%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:23;s:3:\"pid\";i:13;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:92:\"/typo3/module/web/list?token=d9b0d8b9e48efb6d613defe09b82195522dfd456&id=13&table=&pointer=1\";}s:32:\"1edd15adf43123aaf034d44a97cf558b\";a:5:{i:0;s:30:\"Merci pour le travail (French)\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:16;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:34:\"&edit%5Btt_content%5D%5B16%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:16;s:3:\"pid\";i:9;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:91:\"/typo3/module/web/list?token=d9b0d8b9e48efb6d613defe09b82195522dfd456&id=9&table=&pointer=1\";}s:32:\"37f3f7a23a142dde5d82d39b74f95c1d\";a:5:{i:0;s:30:\"Danke für die Arbeit (German)\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:15;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:34:\"&edit%5Btt_content%5D%5B15%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:15;s:3:\"pid\";i:9;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:91:\"/typo3/module/web/list?token=d9b0d8b9e48efb6d613defe09b82195522dfd456&id=9&table=&pointer=1\";}s:32:\"b319b8465d4df4ca5b9bc7bcce5c08f7\";a:5:{i:0;s:18:\"Homepage (English)\";i:1;a:5:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:14;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:29:\"&edit%5Bpages%5D%5B14%5D=edit\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:14;s:3:\"pid\";i:0;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:76:\"/typo3/module/web/layout?token=574738218343454f271d48fc75a4c18121003f14&id=9\";}s:32:\"e0dbc5cb7bb5c5275648a0a659ab9553\";a:5:{i:0;s:25:\"Homepage (English) (test)\";i:1;a:5:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:14;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";a:1:{s:5:\"pages\";a:1:{s:16:\"sys_language_uid\";s:1:\"0\";}}s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:77:\"&edit%5Bpages%5D%5B14%5D=edit&overrideVals%5Bpages%5D%5Bsys_language_uid%5D=0\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:14;s:3:\"pid\";i:0;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:76:\"/typo3/module/web/layout?token=574738218343454f271d48fc75a4c18121003f14&id=9\";}s:32:\"e677868577f7af368d2caf74cc8a2faf\";a:5:{i:0;s:3:\"DEV\";i:1;a:5:{s:4:\"edit\";a:1:{s:13:\"sys_workspace\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:36:\"&edit%5Bsys_workspace%5D%5B1%5D=edit\";i:3;a:5:{s:5:\"table\";s:13:\"sys_workspace\";s:3:\"uid\";i:1;s:3:\"pid\";i:0;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}i:4;s:78:\"/typo3/module/manage/workspaces?token=0f75591f0629fe52cb9c2f2e27d143fa6397ae97\";}}s:9:\"clipboard\";a:5:{s:6:\"normal\";a:2:{s:2:\"el\";a:0:{}s:4:\"mode\";s:0:\"\";}s:5:\"tab_1\";a:0:{}s:5:\"tab_2\";a:0:{}s:5:\"tab_3\";a:0:{}s:7:\"current\";s:6:\"normal\";}s:29:\"web_typoscript_constanteditor\";a:2:{s:23:\"selectedTemplatePerPage\";a:1:{i:2;i:2;}s:16:\"selectedCategory\";s:23:\"bootstrap package: logo\";}s:10:\"web_layout\";a:3:{s:8:\"function\";s:1:\"2\";s:8:\"language\";i:0;s:10:\"showHidden\";b:1;}s:38:\"tools_ExtensionmanagerExtensionmanager\";a:1:{s:6:\"filter\";s:0:\"\";}}s:14:\"emailMeAtLogin\";i:0;s:8:\"titleLen\";i:50;s:20:\"edit_docModuleUpload\";s:1:\"1\";s:15:\"moduleSessionID\";a:10:{s:28:\"dashboard/current_dashboard/\";s:40:\"5cc7cba8fd95005312640f5172c96b4584de0328\";s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";s:40:\"de492e3533b3882d6c8571fb4a022ac3a4061e09\";s:10:\"FormEngine\";s:40:\"de492e3533b3882d6c8571fb4a022ac3a4061e09\";s:6:\"web_ts\";s:40:\"b9680d93806ff617fcf94f6092bb6fade4e65bac\";s:25:\"web_typoscript_infomodify\";s:40:\"b9680d93806ff617fcf94f6092bb6fade4e65bac\";s:16:\"opendocs::recent\";s:40:\"de492e3533b3882d6c8571fb4a022ac3a4061e09\";s:9:\"clipboard\";s:40:\"b9680d93806ff617fcf94f6092bb6fade4e65bac\";s:29:\"web_typoscript_constanteditor\";s:40:\"b9680d93806ff617fcf94f6092bb6fade4e65bac\";s:10:\"web_layout\";s:40:\"de492e3533b3882d6c8571fb4a022ac3a4061e09\";s:38:\"tools_ExtensionmanagerExtensionmanager\";s:40:\"b039aab4299a92d15d61721c7e2f2ea451f1070f\";}s:17:\"BackendComponents\";a:1:{s:6:\"States\";a:1:{s:8:\"Pagetree\";a:1:{s:9:\"stateHash\";a:4:{s:3:\"0_0\";s:1:\"1\";s:3:\"0_1\";s:1:\"1\";s:4:\"0_23\";s:1:\"1\";s:3:\"0_9\";s:1:\"1\";}}}}s:11:\"tx_recycler\";a:3:{s:14:\"depthSelection\";i:999;s:14:\"tableSelection\";s:0:\"\";s:11:\"resultLimit\";i:25;}s:10:\"navigation\";a:1:{s:5:\"width\";s:3:\"300\";}}',NULL,NULL,NULL,1,NULL,NULL,1700573416,0,'admin@example.com',1,0,'',0,0),(2,0,1699003915,1699003915,0,0,0,0,NULL,'_cli_','$argon2i$v=19$m=65536,t=16,p=1$d2NyZlhpSmovQThQVUYwMQ$k+rcQ5V9yjvESBP0BabQb0HYwL1sA5Ne35OhfwK6+W8',NULL,'default',NULL,'',NULL,'','a:4:{s:10:\"moduleData\";a:0:{}s:14:\"emailMeAtLogin\";i:0;s:8:\"titleLen\";i:50;s:20:\"edit_docModuleUpload\";s:1:\"1\";}',NULL,NULL,NULL,0,NULL,NULL,0,0,'',1,0,'',0,0);
/*!40000 ALTER TABLE `be_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_adminpanel_requestcache`
--

DROP TABLE IF EXISTS `cache_adminpanel_requestcache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_adminpanel_requestcache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_adminpanel_requestcache`
--

LOCK TABLES `cache_adminpanel_requestcache` WRITE;
/*!40000 ALTER TABLE `cache_adminpanel_requestcache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_adminpanel_requestcache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_adminpanel_requestcache_tags`
--

DROP TABLE IF EXISTS `cache_adminpanel_requestcache_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_adminpanel_requestcache_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_adminpanel_requestcache_tags`
--

LOCK TABLES `cache_adminpanel_requestcache_tags` WRITE;
/*!40000 ALTER TABLE `cache_adminpanel_requestcache_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_adminpanel_requestcache_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_hash`
--

DROP TABLE IF EXISTS `cache_hash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_hash` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_hash`
--

LOCK TABLES `cache_hash` WRITE;
/*!40000 ALTER TABLE `cache_hash` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_hash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_hash_tags`
--

DROP TABLE IF EXISTS `cache_hash_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_hash_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_hash_tags`
--

LOCK TABLES `cache_hash_tags` WRITE;
/*!40000 ALTER TABLE `cache_hash_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_hash_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_imagesizes`
--

DROP TABLE IF EXISTS `cache_imagesizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_imagesizes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_imagesizes`
--

LOCK TABLES `cache_imagesizes` WRITE;
/*!40000 ALTER TABLE `cache_imagesizes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_imagesizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_imagesizes_tags`
--

DROP TABLE IF EXISTS `cache_imagesizes_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_imagesizes_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_imagesizes_tags`
--

LOCK TABLES `cache_imagesizes_tags` WRITE;
/*!40000 ALTER TABLE `cache_imagesizes_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_imagesizes_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_pages`
--

DROP TABLE IF EXISTS `cache_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_pages`
--

LOCK TABLES `cache_pages` WRITE;
/*!40000 ALTER TABLE `cache_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_pages_tags`
--

DROP TABLE IF EXISTS `cache_pages_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_pages_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_pages_tags`
--

LOCK TABLES `cache_pages_tags` WRITE;
/*!40000 ALTER TABLE `cache_pages_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_pages_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_rootline`
--

DROP TABLE IF EXISTS `cache_rootline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_rootline` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_rootline`
--

LOCK TABLES `cache_rootline` WRITE;
/*!40000 ALTER TABLE `cache_rootline` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_rootline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_rootline_tags`
--

DROP TABLE IF EXISTS `cache_rootline_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_rootline_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_rootline_tags`
--

LOCK TABLES `cache_rootline_tags` WRITE;
/*!40000 ALTER TABLE `cache_rootline_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_rootline_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_treelist`
--

DROP TABLE IF EXISTS `cache_treelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_treelist` (
  `md5hash` varchar(32) NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL DEFAULT 0,
  `treelist` mediumtext DEFAULT NULL,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_treelist`
--

LOCK TABLES `cache_treelist` WRITE;
/*!40000 ALTER TABLE `cache_treelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_treelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_workspaces_cache`
--

DROP TABLE IF EXISTS `cache_workspaces_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_workspaces_cache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_workspaces_cache`
--

LOCK TABLES `cache_workspaces_cache` WRITE;
/*!40000 ALTER TABLE `cache_workspaces_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_workspaces_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_workspaces_cache_tags`
--

DROP TABLE IF EXISTS `cache_workspaces_cache_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_workspaces_cache_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_workspaces_cache_tags`
--

LOCK TABLES `cache_workspaces_cache_tags` WRITE;
/*!40000 ALTER TABLE `cache_workspaces_cache_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_workspaces_cache_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_groups`
--

DROP TABLE IF EXISTS `fe_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_groups` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `tx_extbase_type` varchar(255) NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `subgroup` tinytext DEFAULT NULL,
  `felogin_redirectPid` tinytext DEFAULT NULL,
  `tx_styleguide_containsdemo` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_groups`
--

LOCK TABLES `fe_groups` WRITE;
/*!40000 ALTER TABLE `fe_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_sessions`
--

DROP TABLE IF EXISTS `fe_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_sessions` (
  `ses_id` varchar(190) NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) NOT NULL DEFAULT '',
  `ses_userid` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_data` mediumblob DEFAULT NULL,
  `ses_permanent` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ses_id`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_sessions`
--

LOCK TABLES `fe_sessions` WRITE;
/*!40000 ALTER TABLE `fe_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_users`
--

DROP TABLE IF EXISTS `fe_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `disable` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `tx_extbase_type` varchar(255) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT 0,
  `image` int(10) unsigned NOT NULL DEFAULT 0,
  `email` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `usergroup` text DEFAULT NULL,
  `name` varchar(160) NOT NULL DEFAULT '',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `middle_name` varchar(50) NOT NULL DEFAULT '',
  `last_name` varchar(50) NOT NULL DEFAULT '',
  `address` longtext DEFAULT NULL,
  `telephone` varchar(30) NOT NULL DEFAULT '',
  `fax` varchar(30) NOT NULL DEFAULT '',
  `uc` blob DEFAULT NULL,
  `title` varchar(40) NOT NULL DEFAULT '',
  `zip` varchar(10) NOT NULL DEFAULT '',
  `city` varchar(50) NOT NULL DEFAULT '',
  `country` varchar(40) NOT NULL DEFAULT '',
  `www` varchar(80) NOT NULL DEFAULT '',
  `company` varchar(80) NOT NULL DEFAULT '',
  `is_online` int(10) unsigned NOT NULL DEFAULT 0,
  `mfa` mediumblob DEFAULT NULL,
  `felogin_redirectPid` tinytext DEFAULT NULL,
  `felogin_forgotHash` varchar(80) DEFAULT '',
  `tx_styleguide_containsdemo` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`username`(100)),
  KEY `username` (`username`(100)),
  KEY `is_online` (`is_online`),
  KEY `felogin_forgotHash` (`felogin_forgotHash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_users`
--

LOCK TABLES `fe_users` WRITE;
/*!40000 ALTER TABLE `fe_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_config`
--

DROP TABLE IF EXISTS `index_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `index_config` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `set_id` int(11) NOT NULL DEFAULT 0,
  `session_data` mediumtext DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(30) NOT NULL DEFAULT '',
  `depth` int(10) unsigned NOT NULL DEFAULT 0,
  `table2index` varchar(255) NOT NULL DEFAULT '',
  `alternative_source_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `get_params` varchar(255) NOT NULL DEFAULT '',
  `fieldlist` varchar(255) NOT NULL DEFAULT '',
  `externalUrl` varchar(255) NOT NULL DEFAULT '',
  `indexcfgs` text DEFAULT NULL,
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `extensions` varchar(255) NOT NULL DEFAULT '',
  `timer_frequency` int(11) NOT NULL DEFAULT 0,
  `url_deny` text DEFAULT NULL,
  `recordsbatch` int(11) NOT NULL DEFAULT 0,
  `timer_next_indexing` int(11) NOT NULL DEFAULT 0,
  `timer_offset` int(11) NOT NULL DEFAULT 0,
  `records_indexonchange` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_config`
--

LOCK TABLES `index_config` WRITE;
/*!40000 ALTER TABLE `index_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `index_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_debug`
--

DROP TABLE IF EXISTS `index_debug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `index_debug` (
  `phash` int(11) NOT NULL DEFAULT 0,
  `debuginfo` mediumtext DEFAULT NULL,
  PRIMARY KEY (`phash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_debug`
--

LOCK TABLES `index_debug` WRITE;
/*!40000 ALTER TABLE `index_debug` DISABLE KEYS */;
/*!40000 ALTER TABLE `index_debug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_fulltext`
--

DROP TABLE IF EXISTS `index_fulltext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `index_fulltext` (
  `phash` int(11) NOT NULL DEFAULT 0,
  `fulltextdata` mediumtext DEFAULT NULL,
  `metaphonedata` mediumtext NOT NULL,
  PRIMARY KEY (`phash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_fulltext`
--

LOCK TABLES `index_fulltext` WRITE;
/*!40000 ALTER TABLE `index_fulltext` DISABLE KEYS */;
/*!40000 ALTER TABLE `index_fulltext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_grlist`
--

DROP TABLE IF EXISTS `index_grlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `index_grlist` (
  `uniqid` int(11) NOT NULL AUTO_INCREMENT,
  `phash` int(11) NOT NULL DEFAULT 0,
  `phash_x` int(11) NOT NULL DEFAULT 0,
  `hash_gr_list` int(11) NOT NULL DEFAULT 0,
  `gr_list` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uniqid`),
  KEY `joinkey` (`phash`,`hash_gr_list`),
  KEY `phash_grouping` (`phash_x`,`hash_gr_list`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_grlist`
--

LOCK TABLES `index_grlist` WRITE;
/*!40000 ALTER TABLE `index_grlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `index_grlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_phash`
--

DROP TABLE IF EXISTS `index_phash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `index_phash` (
  `phash` int(11) NOT NULL DEFAULT 0,
  `phash_grouping` int(11) NOT NULL DEFAULT 0,
  `static_page_arguments` blob DEFAULT NULL,
  `data_filename` varchar(1024) NOT NULL DEFAULT '',
  `data_page_id` int(10) unsigned NOT NULL DEFAULT 0,
  `data_page_type` int(10) unsigned NOT NULL DEFAULT 0,
  `data_page_mp` varchar(255) NOT NULL DEFAULT '',
  `gr_list` varchar(255) NOT NULL DEFAULT '',
  `item_type` varchar(5) NOT NULL DEFAULT '',
  `item_title` varchar(255) NOT NULL DEFAULT '',
  `item_description` varchar(255) NOT NULL DEFAULT '',
  `item_mtime` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `item_size` int(11) NOT NULL DEFAULT 0,
  `contentHash` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `parsetime` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `item_crdate` int(11) NOT NULL DEFAULT 0,
  `externalUrl` smallint(6) NOT NULL DEFAULT 0,
  `recordUid` int(11) NOT NULL DEFAULT 0,
  `freeIndexUid` int(11) NOT NULL DEFAULT 0,
  `freeIndexSetId` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`phash`),
  KEY `phash_grouping` (`phash_grouping`),
  KEY `freeIndexUid` (`freeIndexUid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_phash`
--

LOCK TABLES `index_phash` WRITE;
/*!40000 ALTER TABLE `index_phash` DISABLE KEYS */;
/*!40000 ALTER TABLE `index_phash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_rel`
--

DROP TABLE IF EXISTS `index_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `index_rel` (
  `phash` int(11) NOT NULL DEFAULT 0,
  `wid` int(11) NOT NULL DEFAULT 0,
  `count` smallint(5) unsigned NOT NULL DEFAULT 0,
  `first` int(10) unsigned NOT NULL DEFAULT 0,
  `freq` smallint(5) unsigned NOT NULL DEFAULT 0,
  `flags` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`phash`,`wid`),
  KEY `wid` (`wid`,`phash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_rel`
--

LOCK TABLES `index_rel` WRITE;
/*!40000 ALTER TABLE `index_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `index_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_section`
--

DROP TABLE IF EXISTS `index_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `index_section` (
  `uniqid` int(11) NOT NULL AUTO_INCREMENT,
  `phash` int(11) NOT NULL DEFAULT 0,
  `phash_t3` int(11) NOT NULL DEFAULT 0,
  `rl0` int(10) unsigned NOT NULL DEFAULT 0,
  `rl1` int(10) unsigned NOT NULL DEFAULT 0,
  `rl2` int(10) unsigned NOT NULL DEFAULT 0,
  `page_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uniqid`),
  KEY `joinkey` (`phash`,`rl0`),
  KEY `page_id` (`page_id`),
  KEY `rl0` (`rl0`,`rl1`,`phash`),
  KEY `rl0_2` (`rl0`,`phash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_section`
--

LOCK TABLES `index_section` WRITE;
/*!40000 ALTER TABLE `index_section` DISABLE KEYS */;
/*!40000 ALTER TABLE `index_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_stat_word`
--

DROP TABLE IF EXISTS `index_stat_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `index_stat_word` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(50) NOT NULL DEFAULT '',
  `index_stat_search_id` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `pageid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `tstamp` (`tstamp`,`word`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_stat_word`
--

LOCK TABLES `index_stat_word` WRITE;
/*!40000 ALTER TABLE `index_stat_word` DISABLE KEYS */;
/*!40000 ALTER TABLE `index_stat_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_words`
--

DROP TABLE IF EXISTS `index_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `index_words` (
  `wid` int(11) NOT NULL DEFAULT 0,
  `baseword` varchar(60) NOT NULL DEFAULT '',
  `metaphone` varchar(60) NOT NULL DEFAULT '',
  `is_stopword` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`wid`),
  KEY `baseword` (`baseword`),
  KEY `metaphone` (`metaphone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_words`
--

LOCK TABLES `index_words` WRITE;
/*!40000 ALTER TABLE `index_words` DISABLE KEYS */;
/*!40000 ALTER TABLE `index_words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `rowDescription` text DEFAULT NULL,
  `editlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `perms_userid` int(10) unsigned NOT NULL DEFAULT 0,
  `perms_groupid` int(10) unsigned NOT NULL DEFAULT 0,
  `perms_user` smallint(5) unsigned NOT NULL DEFAULT 0,
  `perms_group` smallint(5) unsigned NOT NULL DEFAULT 0,
  `perms_everybody` smallint(5) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `doktype` int(10) unsigned NOT NULL DEFAULT 0,
  `TSconfig` text DEFAULT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `shortcut` int(10) unsigned NOT NULL DEFAULT 0,
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT 0,
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `layout` int(10) unsigned NOT NULL DEFAULT 0,
  `target` varchar(80) NOT NULL DEFAULT '',
  `keywords` text DEFAULT NULL,
  `cache_timeout` int(10) unsigned NOT NULL DEFAULT 0,
  `cache_tags` varchar(255) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `SYS_LASTCHANGED` int(10) unsigned NOT NULL DEFAULT 0,
  `abstract` text DEFAULT NULL,
  `module` varchar(255) NOT NULL DEFAULT '',
  `author` varchar(255) NOT NULL DEFAULT '',
  `nav_title` varchar(255) NOT NULL DEFAULT '',
  `content_from_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `mount_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `mount_pid_ol` smallint(6) NOT NULL DEFAULT 0,
  `backend_layout` varchar(64) NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) NOT NULL DEFAULT '',
  `tsconfig_includes` text DEFAULT NULL,
  `categories` int(10) unsigned NOT NULL DEFAULT 0,
  `lastUpdated` int(11) NOT NULL DEFAULT 0,
  `newUntil` int(11) NOT NULL DEFAULT 0,
  `slug` varchar(2048) DEFAULT NULL,
  `media` int(10) unsigned NOT NULL DEFAULT 0,
  `og_image` int(10) unsigned NOT NULL DEFAULT 0,
  `twitter_image` int(10) unsigned NOT NULL DEFAULT 0,
  `author_email` varchar(255) NOT NULL DEFAULT '',
  `php_tree_stop` smallint(5) unsigned NOT NULL DEFAULT 0,
  `extendToSubpages` smallint(5) unsigned NOT NULL DEFAULT 0,
  `nav_hide` smallint(5) unsigned NOT NULL DEFAULT 0,
  `no_search` smallint(5) unsigned NOT NULL DEFAULT 0,
  `is_siteroot` smallint(5) unsigned NOT NULL DEFAULT 0,
  `l18n_cfg` smallint(5) unsigned NOT NULL DEFAULT 0,
  `no_index` smallint(5) unsigned NOT NULL DEFAULT 0,
  `no_follow` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT 0,
  `seo_title` varchar(255) NOT NULL DEFAULT '',
  `og_title` varchar(255) NOT NULL DEFAULT '',
  `og_description` text DEFAULT NULL,
  `twitter_title` varchar(255) NOT NULL DEFAULT '',
  `twitter_description` text DEFAULT NULL,
  `twitter_card` varchar(255) NOT NULL DEFAULT '',
  `canonical_link` varchar(2048) NOT NULL DEFAULT '',
  `sitemap_priority` decimal(2,1) NOT NULL DEFAULT 0.5,
  `sitemap_changefreq` varchar(10) NOT NULL DEFAULT '',
  `nav_icon_set` varchar(255) NOT NULL DEFAULT '',
  `nav_icon_identifier` varchar(255) NOT NULL DEFAULT '',
  `nav_icon` int(10) unsigned DEFAULT 0,
  `thumbnail` int(10) unsigned DEFAULT 0,
  `tx_styleguide_containsdemo` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `determineSiteRoot` (`is_siteroot`),
  KEY `language_identifier` (`l10n_parent`,`sys_language_uid`),
  KEY `slug` (`slug`(127)),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,1700229362,1700229362,0,0,0,0,'',256,NULL,0,3,13,13,'{\"starttime\":\"parent\",\"endtime\":\"parent\",\"nav_hide\":\"parent\",\"url\":\"parent\",\"lastUpdated\":\"parent\",\"newUntil\":\"parent\",\"no_search\":\"parent\",\"shortcut\":\"parent\",\"shortcut_mode\":\"parent\",\"content_from_pid\":\"parent\",\"author\":\"parent\",\"author_email\":\"parent\",\"media\":\"parent\",\"og_image\":\"parent\",\"twitter_image\":\"parent\"}',0,'{\"l10n_parent\":\"\",\"l10n_source\":\"\",\"TSconfig\":\"\",\"php_tree_stop\":\"\",\"editlock\":\"\",\"layout\":\"\",\"fe_group\":\"\",\"extendToSubpages\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"mount_pid\":\"\",\"is_siteroot\":\"\",\"mount_pid_ol\":\"\",\"module\":\"\",\"l18n_cfg\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":\"\",\"no_index\":\"\",\"no_follow\":\"\",\"nav_icon_set\":\"\",\"nav_icon_identifier\":\"\",\"nav_icon\":\"\",\"thumbnail\":\"\"}',0,0,0,0,2,1,31,31,0,'Subsite (Danish)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/translate-to-danish-subpage-copy-mode',0,0,0,'',0,0,0,0,0,0,0,0,14,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(2,0,1700229362,1700229362,0,0,0,0,'',128,NULL,0,2,13,13,'{\"starttime\":\"parent\",\"endtime\":\"parent\",\"nav_hide\":\"parent\",\"url\":\"parent\",\"lastUpdated\":\"parent\",\"newUntil\":\"parent\",\"no_search\":\"parent\",\"shortcut\":\"parent\",\"shortcut_mode\":\"parent\",\"content_from_pid\":\"parent\",\"author\":\"parent\",\"author_email\":\"parent\",\"media\":\"parent\",\"og_image\":\"parent\",\"twitter_image\":\"parent\"}',0,'{\"l10n_parent\":\"\",\"l10n_source\":\"\",\"TSconfig\":\"\",\"php_tree_stop\":\"\",\"editlock\":\"\",\"layout\":\"\",\"fe_group\":\"\",\"extendToSubpages\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"mount_pid\":\"\",\"is_siteroot\":\"\",\"mount_pid_ol\":\"\",\"module\":\"\",\"l18n_cfg\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":\"\",\"no_index\":\"\",\"no_follow\":\"\",\"nav_icon_set\":\"\",\"nav_icon_identifier\":\"\",\"nav_icon\":\"\",\"thumbnail\":\"\"}',0,0,0,0,2,1,31,31,0,'Subsite (French)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/translate-to-french-subpage-copy-mode',0,0,0,'',0,0,0,0,0,0,0,0,13,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(3,0,1700229362,1700229362,0,0,0,0,'',64,NULL,0,1,13,13,'{\"starttime\":\"parent\",\"endtime\":\"parent\",\"nav_hide\":\"parent\",\"url\":\"parent\",\"lastUpdated\":\"parent\",\"newUntil\":\"parent\",\"no_search\":\"parent\",\"shortcut\":\"parent\",\"shortcut_mode\":\"parent\",\"content_from_pid\":\"parent\",\"author\":\"parent\",\"author_email\":\"parent\",\"media\":\"parent\",\"og_image\":\"parent\",\"twitter_image\":\"parent\"}',0,'{\"l10n_parent\":\"\",\"l10n_source\":\"\",\"TSconfig\":\"\",\"php_tree_stop\":\"\",\"editlock\":\"\",\"layout\":\"\",\"fe_group\":\"\",\"extendToSubpages\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"mount_pid\":\"\",\"is_siteroot\":\"\",\"mount_pid_ol\":\"\",\"module\":\"\",\"l18n_cfg\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":\"\",\"no_index\":\"\",\"no_follow\":\"\",\"nav_icon_set\":\"\",\"nav_icon_identifier\":\"\",\"nav_icon\":\"\",\"thumbnail\":\"\"}',0,0,0,0,2,1,31,31,0,'Unterseite (Kopiermodus) (German)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/translate-to-german-subpage-copy-mode',0,0,0,'',0,0,0,0,0,0,0,0,12,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(4,0,1700229362,1700229362,0,0,0,0,'',32,NULL,0,1,12,12,'{\"starttime\":\"parent\",\"endtime\":\"parent\",\"nav_hide\":\"parent\",\"url\":\"parent\",\"lastUpdated\":\"parent\",\"newUntil\":\"parent\",\"no_search\":\"parent\",\"shortcut\":\"parent\",\"shortcut_mode\":\"parent\",\"content_from_pid\":\"parent\",\"author\":\"parent\",\"author_email\":\"parent\",\"media\":\"parent\",\"og_image\":\"parent\",\"twitter_image\":\"parent\"}',0,'{\"l10n_parent\":\"\",\"l10n_source\":\"\",\"TSconfig\":\"\",\"php_tree_stop\":\"\",\"editlock\":\"\",\"layout\":\"\",\"fe_group\":\"\",\"extendToSubpages\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"mount_pid\":\"\",\"is_siteroot\":\"\",\"mount_pid_ol\":\"\",\"module\":\"\",\"l18n_cfg\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":\"\",\"no_index\":\"\",\"no_follow\":\"\",\"nav_icon_set\":\"\",\"nav_icon_identifier\":\"\",\"nav_icon\":\"\",\"thumbnail\":\"\"}',0,0,0,0,2,1,31,31,0,'Nur Englisch und Deutsch (German)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/translate-to-german-subpage-not-all-translated',0,0,0,'',0,0,0,0,0,0,0,0,11,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(5,0,1700229362,1700229362,0,0,0,0,'',16,NULL,0,1,11,11,'{\"starttime\":\"parent\",\"endtime\":\"parent\",\"nav_hide\":\"parent\",\"url\":\"parent\",\"lastUpdated\":\"parent\",\"newUntil\":\"parent\",\"no_search\":\"parent\",\"shortcut\":\"parent\",\"shortcut_mode\":\"parent\",\"content_from_pid\":\"parent\",\"author\":\"parent\",\"author_email\":\"parent\",\"media\":\"parent\",\"og_image\":\"parent\",\"twitter_image\":\"parent\"}',0,'{\"l10n_parent\":\"\",\"l10n_source\":\"\",\"TSconfig\":\"\",\"php_tree_stop\":\"\",\"editlock\":\"\",\"layout\":\"\",\"fe_group\":\"\",\"extendToSubpages\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"mount_pid\":\"\",\"is_siteroot\":\"\",\"mount_pid_ol\":\"\",\"module\":\"\",\"l18n_cfg\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":\"\",\"no_index\":\"\",\"no_follow\":\"\",\"nav_icon_set\":\"\",\"nav_icon_identifier\":\"\",\"nav_icon\":\"\",\"thumbnail\":\"\"}',0,0,0,0,2,1,31,31,0,'Unterseite, nur Deutsch (German)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/translate-to-german-subpage-only-german',0,0,0,'',0,0,0,0,0,1,0,0,10,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(6,0,1700229362,1700229362,0,0,0,0,'',8,NULL,0,3,9,9,'{\"starttime\":\"parent\",\"endtime\":\"parent\",\"nav_hide\":\"parent\",\"url\":\"parent\",\"lastUpdated\":\"parent\",\"newUntil\":\"parent\",\"no_search\":\"parent\",\"shortcut\":\"parent\",\"shortcut_mode\":\"parent\",\"content_from_pid\":\"parent\",\"author\":\"parent\",\"author_email\":\"parent\",\"media\":\"parent\",\"og_image\":\"parent\",\"twitter_image\":\"parent\"}',0,'{\"l10n_parent\":\"\",\"l10n_source\":\"\",\"TSconfig\":\"\",\"php_tree_stop\":\"\",\"editlock\":\"\",\"layout\":\"\",\"fe_group\":\"\",\"extendToSubpages\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"mount_pid\":\"\",\"is_siteroot\":\"\",\"mount_pid_ol\":\"\",\"module\":\"\",\"l18n_cfg\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":\"\",\"no_index\":\"\",\"no_follow\":\"\",\"nav_icon_set\":\"\",\"nav_icon_identifier\":\"\",\"nav_icon\":\"\",\"thumbnail\":\"\"}',0,0,0,0,2,1,31,31,0,'Hjemmeside (Danish)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/',0,0,0,'',0,0,0,0,1,0,0,0,5,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(7,0,1700229362,1700229362,0,0,0,0,'',4,NULL,0,2,9,9,'{\"starttime\":\"parent\",\"endtime\":\"parent\",\"nav_hide\":\"parent\",\"url\":\"parent\",\"lastUpdated\":\"parent\",\"newUntil\":\"parent\",\"no_search\":\"parent\",\"shortcut\":\"parent\",\"shortcut_mode\":\"parent\",\"content_from_pid\":\"parent\",\"author\":\"parent\",\"author_email\":\"parent\",\"media\":\"parent\",\"og_image\":\"parent\",\"twitter_image\":\"parent\"}',0,'{\"l10n_parent\":\"\",\"l10n_source\":\"\",\"TSconfig\":\"\",\"php_tree_stop\":\"\",\"editlock\":\"\",\"layout\":\"\",\"fe_group\":\"\",\"extendToSubpages\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"mount_pid\":\"\",\"is_siteroot\":\"\",\"mount_pid_ol\":\"\",\"module\":\"\",\"l18n_cfg\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":\"\",\"no_index\":\"\",\"no_follow\":\"\",\"nav_icon_set\":\"\",\"nav_icon_identifier\":\"\",\"nav_icon\":\"\",\"thumbnail\":\"\"}',0,0,0,0,2,1,31,31,0,'Page d\'accueil (French)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/',0,0,0,'',0,0,0,0,1,0,0,0,4,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(8,0,1700229362,1700229362,0,0,0,0,'',2,NULL,0,1,9,9,'{\"starttime\":\"parent\",\"endtime\":\"parent\",\"nav_hide\":\"parent\",\"url\":\"parent\",\"lastUpdated\":\"parent\",\"newUntil\":\"parent\",\"no_search\":\"parent\",\"shortcut\":\"parent\",\"shortcut_mode\":\"parent\",\"content_from_pid\":\"parent\",\"author\":\"parent\",\"author_email\":\"parent\",\"media\":\"parent\",\"og_image\":\"parent\",\"twitter_image\":\"parent\"}',0,'{\"l10n_parent\":\"\",\"l10n_source\":\"\",\"TSconfig\":\"\",\"php_tree_stop\":\"\",\"editlock\":\"\",\"layout\":\"\",\"fe_group\":\"\",\"extendToSubpages\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"mount_pid\":\"\",\"is_siteroot\":\"\",\"mount_pid_ol\":\"\",\"module\":\"\",\"l18n_cfg\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":\"\",\"no_index\":\"\",\"no_follow\":\"\",\"nav_icon_set\":\"\",\"nav_icon_identifier\":\"\",\"nav_icon\":\"\",\"thumbnail\":\"\"}',0,0,0,0,2,1,31,31,0,'Startseite (Deutsch)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/',0,0,0,'',0,0,0,0,1,0,0,0,3,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(9,0,1700229362,1700229362,0,0,0,0,'',1,NULL,0,0,0,0,NULL,0,'{\"title\":\"\"}',0,0,0,0,2,1,31,31,0,'Homepage (English)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/',0,0,0,'',0,0,0,0,1,0,0,0,1,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(10,9,1700229362,1700229362,0,0,0,0,'',256,NULL,0,0,0,0,NULL,0,'{\"hidden\":\"\"}',0,0,0,0,2,1,31,31,0,'Subpage (only default)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/subpage-only-default',0,0,0,'',0,0,0,0,0,0,0,0,9,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(11,9,1700229362,1700229362,0,0,0,0,'',128,NULL,0,0,0,0,NULL,0,'{\"hidden\":\"\"}',0,0,0,0,2,1,31,31,0,'Subpage (only german)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/subpage-only-german',0,0,0,'',0,0,0,0,0,1,0,0,8,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(12,9,1700229362,1700229362,0,0,0,0,'',64,NULL,0,0,0,0,NULL,0,'{\"hidden\":\"\"}',0,0,0,0,2,1,31,31,0,'Subpage (not all translated)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/subpage-not-all-translated',0,0,0,'',0,0,0,0,0,0,0,0,7,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(13,9,1700229362,1700229362,0,0,0,0,'',32,NULL,0,0,0,0,NULL,0,'{\"hidden\":\"\"}',0,0,0,0,2,1,31,31,0,'Subpage (copy mode)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/subpage-copy-mode',0,0,0,'',0,0,0,0,0,0,0,0,6,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(14,0,1700573590,1700573512,0,0,0,0,'',1,NULL,0,0,0,0,NULL,9,'{\"doktype\":\"\",\"title\":\"\",\"slug\":\"\",\"nav_title\":\"\",\"subtitle\":\"\",\"nav_icon_set\":\"\",\"nav_icon\":\"\",\"seo_title\":\"\",\"description\":\"\",\"no_index\":\"\",\"no_follow\":\"\",\"canonical_link\":\"\",\"sitemap_changefreq\":\"\",\"sitemap_priority\":\"\",\"og_title\":\"\",\"og_description\":\"\",\"og_image\":\"\",\"twitter_title\":\"\",\"twitter_description\":\"\",\"twitter_image\":\"\",\"twitter_card\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"author\":\"\",\"author_email\":\"\",\"lastUpdated\":\"\",\"layout\":\"\",\"newUntil\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"thumbnail\":\"\",\"content_from_pid\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"\",\"no_search\":\"\",\"php_tree_stop\":\"\",\"module\":\"\",\"media\":\"\",\"tsconfig_includes\":\"\",\"TSconfig\":\"\",\"l18n_cfg\":\"\",\"hidden\":\"\",\"nav_hide\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"extendToSubpages\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',9,1,0,0,2,1,31,31,0,'Homepage (English) (workspace)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/',0,0,0,'',0,0,0,0,1,0,0,0,1,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(15,0,1700573512,1700573512,0,0,0,0,'',1,NULL,0,3,9,9,'{\"starttime\":\"parent\",\"endtime\":\"parent\",\"nav_hide\":\"parent\",\"url\":\"parent\",\"lastUpdated\":\"parent\",\"newUntil\":\"parent\",\"no_search\":\"parent\",\"shortcut\":\"parent\",\"shortcut_mode\":\"parent\",\"content_from_pid\":\"parent\",\"author\":\"parent\",\"author_email\":\"parent\",\"media\":\"parent\",\"og_image\":\"parent\",\"twitter_image\":\"parent\"}',6,'{\"l10n_parent\":\"\",\"l10n_source\":\"\",\"TSconfig\":\"\",\"php_tree_stop\":\"0\",\"editlock\":\"0\",\"layout\":\"0\",\"fe_group\":\"\",\"extendToSubpages\":\"0\",\"target\":\"\",\"cache_timeout\":\"0\",\"cache_tags\":\"\",\"mount_pid\":\"0\",\"is_siteroot\":\"1\",\"mount_pid_ol\":\"0\",\"module\":\"\",\"l18n_cfg\":\"0\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":\"\",\"no_index\":\"0\",\"no_follow\":\"0\",\"nav_icon_set\":\"\",\"nav_icon_identifier\":\"\",\"nav_icon\":\"0\",\"thumbnail\":\"0\",\"starttime\":\"0\",\"endtime\":\"0\",\"nav_hide\":\"0\",\"url\":\"\",\"lastUpdated\":\"0\",\"newUntil\":\"0\",\"no_search\":\"0\",\"shortcut\":\"0\",\"shortcut_mode\":\"0\",\"content_from_pid\":\"0\",\"author\":\"\",\"author_email\":\"\",\"media\":\"0\",\"og_image\":\"0\",\"twitter_image\":\"0\"}',6,1,0,0,2,1,31,31,0,'Hjemmeside (Danish)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/',0,0,0,'',0,0,0,0,1,0,0,0,5,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(16,0,1700573512,1700573512,0,0,0,0,'',1,NULL,0,2,9,9,'{\"starttime\":\"parent\",\"endtime\":\"parent\",\"nav_hide\":\"parent\",\"url\":\"parent\",\"lastUpdated\":\"parent\",\"newUntil\":\"parent\",\"no_search\":\"parent\",\"shortcut\":\"parent\",\"shortcut_mode\":\"parent\",\"content_from_pid\":\"parent\",\"author\":\"parent\",\"author_email\":\"parent\",\"media\":\"parent\",\"og_image\":\"parent\",\"twitter_image\":\"parent\"}',7,'{\"l10n_parent\":\"\",\"l10n_source\":\"\",\"TSconfig\":\"\",\"php_tree_stop\":\"0\",\"editlock\":\"0\",\"layout\":\"0\",\"fe_group\":\"\",\"extendToSubpages\":\"0\",\"target\":\"\",\"cache_timeout\":\"0\",\"cache_tags\":\"\",\"mount_pid\":\"0\",\"is_siteroot\":\"1\",\"mount_pid_ol\":\"0\",\"module\":\"\",\"l18n_cfg\":\"0\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":\"\",\"no_index\":\"0\",\"no_follow\":\"0\",\"nav_icon_set\":\"\",\"nav_icon_identifier\":\"\",\"nav_icon\":\"0\",\"thumbnail\":\"0\",\"starttime\":\"0\",\"endtime\":\"0\",\"nav_hide\":\"0\",\"url\":\"\",\"lastUpdated\":\"0\",\"newUntil\":\"0\",\"no_search\":\"0\",\"shortcut\":\"0\",\"shortcut_mode\":\"0\",\"content_from_pid\":\"0\",\"author\":\"\",\"author_email\":\"\",\"media\":\"0\",\"og_image\":\"0\",\"twitter_image\":\"0\"}',7,1,0,0,2,1,31,31,0,'Page d\'accueil (French)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/',0,0,0,'',0,0,0,0,1,0,0,0,4,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(17,0,1700573512,1700573512,0,0,0,0,'',1,NULL,0,1,9,9,'{\"starttime\":\"parent\",\"endtime\":\"parent\",\"nav_hide\":\"parent\",\"url\":\"parent\",\"lastUpdated\":\"parent\",\"newUntil\":\"parent\",\"no_search\":\"parent\",\"shortcut\":\"parent\",\"shortcut_mode\":\"parent\",\"content_from_pid\":\"parent\",\"author\":\"parent\",\"author_email\":\"parent\",\"media\":\"parent\",\"og_image\":\"parent\",\"twitter_image\":\"parent\"}',8,'{\"l10n_parent\":\"\",\"l10n_source\":\"\",\"TSconfig\":\"\",\"php_tree_stop\":\"0\",\"editlock\":\"0\",\"layout\":\"0\",\"fe_group\":\"\",\"extendToSubpages\":\"0\",\"target\":\"\",\"cache_timeout\":\"0\",\"cache_tags\":\"\",\"mount_pid\":\"0\",\"is_siteroot\":\"1\",\"mount_pid_ol\":\"0\",\"module\":\"\",\"l18n_cfg\":\"0\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":\"\",\"no_index\":\"0\",\"no_follow\":\"0\",\"nav_icon_set\":\"\",\"nav_icon_identifier\":\"\",\"nav_icon\":\"0\",\"thumbnail\":\"0\",\"starttime\":\"0\",\"endtime\":\"0\",\"nav_hide\":\"0\",\"url\":\"\",\"lastUpdated\":\"0\",\"newUntil\":\"0\",\"no_search\":\"0\",\"shortcut\":\"0\",\"shortcut_mode\":\"0\",\"content_from_pid\":\"0\",\"author\":\"\",\"author_email\":\"\",\"media\":\"0\",\"og_image\":\"0\",\"twitter_image\":\"0\"}',8,1,0,0,2,1,31,31,0,'Startseite (Deutsch)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/',0,0,0,'',0,0,0,0,1,0,0,0,3,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(18,9,1700573609,1700573609,0,0,0,0,'',32,NULL,0,0,0,0,NULL,13,'{\"doktype\":\"\",\"title\":\"\",\"slug\":\"\",\"nav_title\":\"\",\"subtitle\":\"\",\"nav_icon_set\":\"\",\"nav_icon\":\"\",\"seo_title\":\"\",\"description\":\"\",\"no_index\":\"\",\"no_follow\":\"\",\"canonical_link\":\"\",\"sitemap_changefreq\":\"\",\"sitemap_priority\":\"\",\"og_title\":\"\",\"og_description\":\"\",\"og_image\":\"\",\"twitter_title\":\"\",\"twitter_description\":\"\",\"twitter_image\":\"\",\"twitter_card\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"author\":\"\",\"author_email\":\"\",\"lastUpdated\":\"\",\"layout\":\"\",\"newUntil\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"thumbnail\":\"\",\"content_from_pid\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"\",\"no_search\":\"\",\"php_tree_stop\":\"\",\"module\":\"\",\"media\":\"\",\"tsconfig_includes\":\"\",\"TSconfig\":\"\",\"l18n_cfg\":\"\",\"hidden\":\"\",\"nav_hide\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"extendToSubpages\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',13,1,0,0,2,1,31,31,0,'Subpage (copy mode) (workspace)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/subpage-copy-mode',0,0,0,'',0,0,0,0,0,0,0,0,6,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(19,0,1700573609,1700573609,0,0,0,0,'',32,NULL,0,3,13,13,'{\"starttime\":\"parent\",\"endtime\":\"parent\",\"nav_hide\":\"parent\",\"url\":\"parent\",\"lastUpdated\":\"parent\",\"newUntil\":\"parent\",\"no_search\":\"parent\",\"shortcut\":\"parent\",\"shortcut_mode\":\"parent\",\"content_from_pid\":\"parent\",\"author\":\"parent\",\"author_email\":\"parent\",\"media\":\"parent\",\"og_image\":\"parent\",\"twitter_image\":\"parent\"}',1,'{\"l10n_parent\":\"\",\"l10n_source\":\"\",\"TSconfig\":\"\",\"php_tree_stop\":\"0\",\"editlock\":\"0\",\"layout\":\"0\",\"fe_group\":\"\",\"extendToSubpages\":\"0\",\"target\":\"\",\"cache_timeout\":\"0\",\"cache_tags\":\"\",\"mount_pid\":\"0\",\"is_siteroot\":\"0\",\"mount_pid_ol\":\"0\",\"module\":\"\",\"l18n_cfg\":\"0\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":\"\",\"no_index\":\"0\",\"no_follow\":\"0\",\"nav_icon_set\":\"\",\"nav_icon_identifier\":\"\",\"nav_icon\":\"0\",\"thumbnail\":\"0\",\"starttime\":\"0\",\"endtime\":\"0\",\"nav_hide\":\"0\",\"url\":\"\",\"lastUpdated\":\"0\",\"newUntil\":\"0\",\"no_search\":\"0\",\"shortcut\":\"0\",\"shortcut_mode\":\"0\",\"content_from_pid\":\"0\",\"author\":\"\",\"author_email\":\"\",\"media\":\"0\",\"og_image\":\"0\",\"twitter_image\":\"0\"}',1,1,0,0,2,1,31,31,0,'Subsite (Danish)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/translate-to-danish-subpage-copy-mode',0,0,0,'',0,0,0,0,0,0,0,0,14,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(20,0,1700573609,1700573609,0,0,0,0,'',32,NULL,0,2,13,13,'{\"starttime\":\"parent\",\"endtime\":\"parent\",\"nav_hide\":\"parent\",\"url\":\"parent\",\"lastUpdated\":\"parent\",\"newUntil\":\"parent\",\"no_search\":\"parent\",\"shortcut\":\"parent\",\"shortcut_mode\":\"parent\",\"content_from_pid\":\"parent\",\"author\":\"parent\",\"author_email\":\"parent\",\"media\":\"parent\",\"og_image\":\"parent\",\"twitter_image\":\"parent\"}',2,'{\"l10n_parent\":\"\",\"l10n_source\":\"\",\"TSconfig\":\"\",\"php_tree_stop\":\"0\",\"editlock\":\"0\",\"layout\":\"0\",\"fe_group\":\"\",\"extendToSubpages\":\"0\",\"target\":\"\",\"cache_timeout\":\"0\",\"cache_tags\":\"\",\"mount_pid\":\"0\",\"is_siteroot\":\"0\",\"mount_pid_ol\":\"0\",\"module\":\"\",\"l18n_cfg\":\"0\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":\"\",\"no_index\":\"0\",\"no_follow\":\"0\",\"nav_icon_set\":\"\",\"nav_icon_identifier\":\"\",\"nav_icon\":\"0\",\"thumbnail\":\"0\",\"starttime\":\"0\",\"endtime\":\"0\",\"nav_hide\":\"0\",\"url\":\"\",\"lastUpdated\":\"0\",\"newUntil\":\"0\",\"no_search\":\"0\",\"shortcut\":\"0\",\"shortcut_mode\":\"0\",\"content_from_pid\":\"0\",\"author\":\"\",\"author_email\":\"\",\"media\":\"0\",\"og_image\":\"0\",\"twitter_image\":\"0\"}',2,1,0,0,2,1,31,31,0,'Subsite (French)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/translate-to-french-subpage-copy-mode',0,0,0,'',0,0,0,0,0,0,0,0,13,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(21,0,1700573609,1700573609,0,0,0,0,'',32,NULL,0,1,13,13,'{\"starttime\":\"parent\",\"endtime\":\"parent\",\"nav_hide\":\"parent\",\"url\":\"parent\",\"lastUpdated\":\"parent\",\"newUntil\":\"parent\",\"no_search\":\"parent\",\"shortcut\":\"parent\",\"shortcut_mode\":\"parent\",\"content_from_pid\":\"parent\",\"author\":\"parent\",\"author_email\":\"parent\",\"media\":\"parent\",\"og_image\":\"parent\",\"twitter_image\":\"parent\"}',3,'{\"l10n_parent\":\"\",\"l10n_source\":\"\",\"TSconfig\":\"\",\"php_tree_stop\":\"0\",\"editlock\":\"0\",\"layout\":\"0\",\"fe_group\":\"\",\"extendToSubpages\":\"0\",\"target\":\"\",\"cache_timeout\":\"0\",\"cache_tags\":\"\",\"mount_pid\":\"0\",\"is_siteroot\":\"0\",\"mount_pid_ol\":\"0\",\"module\":\"\",\"l18n_cfg\":\"0\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":\"\",\"no_index\":\"0\",\"no_follow\":\"0\",\"nav_icon_set\":\"\",\"nav_icon_identifier\":\"\",\"nav_icon\":\"0\",\"thumbnail\":\"0\",\"starttime\":\"0\",\"endtime\":\"0\",\"nav_hide\":\"0\",\"url\":\"\",\"lastUpdated\":\"0\",\"newUntil\":\"0\",\"no_search\":\"0\",\"shortcut\":\"0\",\"shortcut_mode\":\"0\",\"content_from_pid\":\"0\",\"author\":\"\",\"author_email\":\"\",\"media\":\"0\",\"og_image\":\"0\",\"twitter_image\":\"0\"}',3,1,0,0,2,1,31,31,0,'Unterseite (Kopiermodus) (German)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/translate-to-german-subpage-copy-mode',0,0,0,'',0,0,0,0,0,0,0,0,12,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(22,9,1700573619,1700573619,0,0,0,0,'',64,NULL,0,0,0,0,NULL,12,'{\"doktype\":\"\",\"title\":\"\",\"slug\":\"\",\"nav_title\":\"\",\"subtitle\":\"\",\"nav_icon_set\":\"\",\"nav_icon\":\"\",\"seo_title\":\"\",\"description\":\"\",\"no_index\":\"\",\"no_follow\":\"\",\"canonical_link\":\"\",\"sitemap_changefreq\":\"\",\"sitemap_priority\":\"\",\"og_title\":\"\",\"og_description\":\"\",\"og_image\":\"\",\"twitter_title\":\"\",\"twitter_description\":\"\",\"twitter_image\":\"\",\"twitter_card\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"author\":\"\",\"author_email\":\"\",\"lastUpdated\":\"\",\"layout\":\"\",\"newUntil\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"thumbnail\":\"\",\"content_from_pid\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"\",\"no_search\":\"\",\"php_tree_stop\":\"\",\"module\":\"\",\"media\":\"\",\"tsconfig_includes\":\"\",\"TSconfig\":\"\",\"l18n_cfg\":\"\",\"hidden\":\"\",\"nav_hide\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"extendToSubpages\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',12,1,0,0,2,1,31,31,0,'Subpage (not all translated) (workspace)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/subpage-not-all-translated',0,0,0,'',0,0,0,0,0,0,0,0,7,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(23,0,1700573619,1700573619,0,0,0,0,'',64,NULL,0,1,12,12,'{\"starttime\":\"parent\",\"endtime\":\"parent\",\"nav_hide\":\"parent\",\"url\":\"parent\",\"lastUpdated\":\"parent\",\"newUntil\":\"parent\",\"no_search\":\"parent\",\"shortcut\":\"parent\",\"shortcut_mode\":\"parent\",\"content_from_pid\":\"parent\",\"author\":\"parent\",\"author_email\":\"parent\",\"media\":\"parent\",\"og_image\":\"parent\",\"twitter_image\":\"parent\"}',4,'{\"l10n_parent\":\"\",\"l10n_source\":\"\",\"TSconfig\":\"\",\"php_tree_stop\":\"0\",\"editlock\":\"0\",\"layout\":\"0\",\"fe_group\":\"\",\"extendToSubpages\":\"0\",\"target\":\"\",\"cache_timeout\":\"0\",\"cache_tags\":\"\",\"mount_pid\":\"0\",\"is_siteroot\":\"0\",\"mount_pid_ol\":\"0\",\"module\":\"\",\"l18n_cfg\":\"0\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":\"\",\"no_index\":\"0\",\"no_follow\":\"0\",\"nav_icon_set\":\"\",\"nav_icon_identifier\":\"\",\"nav_icon\":\"0\",\"thumbnail\":\"0\",\"starttime\":\"0\",\"endtime\":\"0\",\"nav_hide\":\"0\",\"url\":\"\",\"lastUpdated\":\"0\",\"newUntil\":\"0\",\"no_search\":\"0\",\"shortcut\":\"0\",\"shortcut_mode\":\"0\",\"content_from_pid\":\"0\",\"author\":\"\",\"author_email\":\"\",\"media\":\"0\",\"og_image\":\"0\",\"twitter_image\":\"0\"}',4,1,0,0,2,1,31,31,0,'Nur Englisch und Deutsch (German)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/translate-to-german-subpage-not-all-translated',0,0,0,'',0,0,0,0,0,0,0,0,11,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(24,9,1700573626,1700573626,0,0,0,0,'',128,NULL,0,0,0,0,NULL,11,'{\"doktype\":\"\",\"title\":\"\",\"slug\":\"\",\"nav_title\":\"\",\"subtitle\":\"\",\"nav_icon_set\":\"\",\"nav_icon\":\"\",\"seo_title\":\"\",\"description\":\"\",\"no_index\":\"\",\"no_follow\":\"\",\"canonical_link\":\"\",\"sitemap_changefreq\":\"\",\"sitemap_priority\":\"\",\"og_title\":\"\",\"og_description\":\"\",\"og_image\":\"\",\"twitter_title\":\"\",\"twitter_description\":\"\",\"twitter_image\":\"\",\"twitter_card\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"author\":\"\",\"author_email\":\"\",\"lastUpdated\":\"\",\"layout\":\"\",\"newUntil\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"thumbnail\":\"\",\"content_from_pid\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"\",\"no_search\":\"\",\"php_tree_stop\":\"\",\"module\":\"\",\"media\":\"\",\"tsconfig_includes\":\"\",\"TSconfig\":\"\",\"l18n_cfg\":\"\",\"hidden\":\"\",\"nav_hide\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"extendToSubpages\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',11,1,0,0,2,1,31,31,0,'Subpage (only german) (workspace)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/subpage-only-german',0,0,0,'',0,0,0,0,0,1,0,0,8,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(25,0,1700573626,1700573626,0,0,0,0,'',128,NULL,0,1,11,11,'{\"starttime\":\"parent\",\"endtime\":\"parent\",\"nav_hide\":\"parent\",\"url\":\"parent\",\"lastUpdated\":\"parent\",\"newUntil\":\"parent\",\"no_search\":\"parent\",\"shortcut\":\"parent\",\"shortcut_mode\":\"parent\",\"content_from_pid\":\"parent\",\"author\":\"parent\",\"author_email\":\"parent\",\"media\":\"parent\",\"og_image\":\"parent\",\"twitter_image\":\"parent\"}',5,'{\"l10n_parent\":\"\",\"l10n_source\":\"\",\"TSconfig\":\"\",\"php_tree_stop\":\"0\",\"editlock\":\"0\",\"layout\":\"0\",\"fe_group\":\"\",\"extendToSubpages\":\"0\",\"target\":\"\",\"cache_timeout\":\"0\",\"cache_tags\":\"\",\"mount_pid\":\"0\",\"is_siteroot\":\"0\",\"mount_pid_ol\":\"0\",\"module\":\"\",\"l18n_cfg\":\"1\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":\"\",\"no_index\":\"0\",\"no_follow\":\"0\",\"nav_icon_set\":\"\",\"nav_icon_identifier\":\"\",\"nav_icon\":\"0\",\"thumbnail\":\"0\",\"starttime\":\"0\",\"endtime\":\"0\",\"nav_hide\":\"0\",\"url\":\"\",\"lastUpdated\":\"0\",\"newUntil\":\"0\",\"no_search\":\"0\",\"shortcut\":\"0\",\"shortcut_mode\":\"0\",\"content_from_pid\":\"0\",\"author\":\"\",\"author_email\":\"\",\"media\":\"0\",\"og_image\":\"0\",\"twitter_image\":\"0\"}',5,1,0,0,2,1,31,31,0,'Unterseite, nur Deutsch (German)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/translate-to-german-subpage-only-german',0,0,0,'',0,0,0,0,0,1,0,0,10,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(26,9,1700573636,1700573636,0,0,0,0,'',256,NULL,0,0,0,0,NULL,10,'{\"doktype\":\"\",\"title\":\"\",\"slug\":\"\",\"nav_title\":\"\",\"subtitle\":\"\",\"nav_icon_set\":\"\",\"nav_icon\":\"\",\"seo_title\":\"\",\"description\":\"\",\"no_index\":\"\",\"no_follow\":\"\",\"canonical_link\":\"\",\"sitemap_changefreq\":\"\",\"sitemap_priority\":\"\",\"og_title\":\"\",\"og_description\":\"\",\"og_image\":\"\",\"twitter_title\":\"\",\"twitter_description\":\"\",\"twitter_image\":\"\",\"twitter_card\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"author\":\"\",\"author_email\":\"\",\"lastUpdated\":\"\",\"layout\":\"\",\"newUntil\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"thumbnail\":\"\",\"content_from_pid\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"\",\"no_search\":\"\",\"php_tree_stop\":\"\",\"module\":\"\",\"media\":\"\",\"tsconfig_includes\":\"\",\"TSconfig\":\"\",\"l18n_cfg\":\"\",\"hidden\":\"\",\"nav_hide\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"extendToSubpages\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',10,1,0,0,2,1,31,31,0,'Subpage (only default) (workspace)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/subpage-only-default',0,0,0,'',0,0,0,0,0,0,0,0,9,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,'');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_copy`
--

DROP TABLE IF EXISTS `pages_copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_copy` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `rowDescription` text DEFAULT NULL,
  `editlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `perms_userid` int(10) unsigned NOT NULL DEFAULT 0,
  `perms_groupid` int(10) unsigned NOT NULL DEFAULT 0,
  `perms_user` smallint(5) unsigned NOT NULL DEFAULT 0,
  `perms_group` smallint(5) unsigned NOT NULL DEFAULT 0,
  `perms_everybody` smallint(5) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `doktype` int(10) unsigned NOT NULL DEFAULT 0,
  `TSconfig` text DEFAULT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `shortcut` int(10) unsigned NOT NULL DEFAULT 0,
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT 0,
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `layout` int(10) unsigned NOT NULL DEFAULT 0,
  `target` varchar(80) NOT NULL DEFAULT '',
  `keywords` text DEFAULT NULL,
  `cache_timeout` int(10) unsigned NOT NULL DEFAULT 0,
  `cache_tags` varchar(255) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `SYS_LASTCHANGED` int(10) unsigned NOT NULL DEFAULT 0,
  `abstract` text DEFAULT NULL,
  `module` varchar(255) NOT NULL DEFAULT '',
  `author` varchar(255) NOT NULL DEFAULT '',
  `nav_title` varchar(255) NOT NULL DEFAULT '',
  `content_from_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `mount_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `mount_pid_ol` smallint(6) NOT NULL DEFAULT 0,
  `backend_layout` varchar(64) NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) NOT NULL DEFAULT '',
  `tsconfig_includes` text DEFAULT NULL,
  `categories` int(10) unsigned NOT NULL DEFAULT 0,
  `lastUpdated` int(11) NOT NULL DEFAULT 0,
  `newUntil` int(11) NOT NULL DEFAULT 0,
  `slug` varchar(2048) DEFAULT NULL,
  `media` int(10) unsigned NOT NULL DEFAULT 0,
  `og_image` int(10) unsigned NOT NULL DEFAULT 0,
  `twitter_image` int(10) unsigned NOT NULL DEFAULT 0,
  `author_email` varchar(255) NOT NULL DEFAULT '',
  `php_tree_stop` smallint(5) unsigned NOT NULL DEFAULT 0,
  `extendToSubpages` smallint(5) unsigned NOT NULL DEFAULT 0,
  `nav_hide` smallint(5) unsigned NOT NULL DEFAULT 0,
  `no_search` smallint(5) unsigned NOT NULL DEFAULT 0,
  `is_siteroot` smallint(5) unsigned NOT NULL DEFAULT 0,
  `l18n_cfg` smallint(5) unsigned NOT NULL DEFAULT 0,
  `no_index` smallint(5) unsigned NOT NULL DEFAULT 0,
  `no_follow` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT 0,
  `seo_title` varchar(255) NOT NULL DEFAULT '',
  `og_title` varchar(255) NOT NULL DEFAULT '',
  `og_description` text DEFAULT NULL,
  `twitter_title` varchar(255) NOT NULL DEFAULT '',
  `twitter_description` text DEFAULT NULL,
  `twitter_card` varchar(255) NOT NULL DEFAULT '',
  `canonical_link` varchar(2048) NOT NULL DEFAULT '',
  `sitemap_priority` decimal(2,1) NOT NULL DEFAULT 0.5,
  `sitemap_changefreq` varchar(10) NOT NULL DEFAULT '',
  `nav_icon_set` varchar(255) NOT NULL DEFAULT '',
  `nav_icon_identifier` varchar(255) NOT NULL DEFAULT '',
  `nav_icon` int(10) unsigned DEFAULT 0,
  `thumbnail` int(10) unsigned DEFAULT 0,
  `tx_styleguide_containsdemo` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `determineSiteRoot` (`is_siteroot`),
  KEY `language_identifier` (`l10n_parent`,`sys_language_uid`),
  KEY `slug` (`slug`(127)),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_copy`
--

LOCK TABLES `pages_copy` WRITE;
/*!40000 ALTER TABLE `pages_copy` DISABLE KEYS */;
INSERT INTO `pages_copy` VALUES (15,0,1700226539,1700226539,0,0,0,0,'',256,NULL,0,3,27,27,'{\"starttime\":\"parent\",\"endtime\":\"parent\",\"nav_hide\":\"parent\",\"url\":\"parent\",\"lastUpdated\":\"parent\",\"newUntil\":\"parent\",\"no_search\":\"parent\",\"shortcut\":\"parent\",\"shortcut_mode\":\"parent\",\"content_from_pid\":\"parent\",\"author\":\"parent\",\"author_email\":\"parent\",\"media\":\"parent\",\"og_image\":\"parent\",\"twitter_image\":\"parent\"}',0,'{\"l10n_parent\":\"\",\"l10n_source\":\"\",\"TSconfig\":\"\",\"php_tree_stop\":\"\",\"editlock\":\"\",\"layout\":\"\",\"fe_group\":\"\",\"extendToSubpages\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"mount_pid\":\"\",\"is_siteroot\":\"\",\"mount_pid_ol\":\"\",\"module\":\"\",\"l18n_cfg\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":\"\",\"no_index\":\"\",\"no_follow\":\"\",\"nav_icon_set\":\"\",\"nav_icon_identifier\":\"\",\"nav_icon\":\"\",\"thumbnail\":\"\"}',0,0,0,0,2,1,31,31,0,'Subsite (Danish)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/translate-to-danish-subpage-copy-mode',0,0,0,'',0,0,0,0,0,0,0,0,14,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(16,0,1700226539,1700226539,0,0,0,0,'',128,NULL,0,2,27,27,'{\"starttime\":\"parent\",\"endtime\":\"parent\",\"nav_hide\":\"parent\",\"url\":\"parent\",\"lastUpdated\":\"parent\",\"newUntil\":\"parent\",\"no_search\":\"parent\",\"shortcut\":\"parent\",\"shortcut_mode\":\"parent\",\"content_from_pid\":\"parent\",\"author\":\"parent\",\"author_email\":\"parent\",\"media\":\"parent\",\"og_image\":\"parent\",\"twitter_image\":\"parent\"}',0,'{\"l10n_parent\":\"\",\"l10n_source\":\"\",\"TSconfig\":\"\",\"php_tree_stop\":\"\",\"editlock\":\"\",\"layout\":\"\",\"fe_group\":\"\",\"extendToSubpages\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"mount_pid\":\"\",\"is_siteroot\":\"\",\"mount_pid_ol\":\"\",\"module\":\"\",\"l18n_cfg\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":\"\",\"no_index\":\"\",\"no_follow\":\"\",\"nav_icon_set\":\"\",\"nav_icon_identifier\":\"\",\"nav_icon\":\"\",\"thumbnail\":\"\"}',0,0,0,0,2,1,31,31,0,'Subsite (French)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/translate-to-french-subpage-copy-mode',0,0,0,'',0,0,0,0,0,0,0,0,13,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(17,0,1700226539,1700226539,0,0,0,0,'',64,NULL,0,1,27,27,'{\"starttime\":\"parent\",\"endtime\":\"parent\",\"nav_hide\":\"parent\",\"url\":\"parent\",\"lastUpdated\":\"parent\",\"newUntil\":\"parent\",\"no_search\":\"parent\",\"shortcut\":\"parent\",\"shortcut_mode\":\"parent\",\"content_from_pid\":\"parent\",\"author\":\"parent\",\"author_email\":\"parent\",\"media\":\"parent\",\"og_image\":\"parent\",\"twitter_image\":\"parent\"}',0,'{\"l10n_parent\":\"\",\"l10n_source\":\"\",\"TSconfig\":\"\",\"php_tree_stop\":\"\",\"editlock\":\"\",\"layout\":\"\",\"fe_group\":\"\",\"extendToSubpages\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"mount_pid\":\"\",\"is_siteroot\":\"\",\"mount_pid_ol\":\"\",\"module\":\"\",\"l18n_cfg\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":\"\",\"no_index\":\"\",\"no_follow\":\"\",\"nav_icon_set\":\"\",\"nav_icon_identifier\":\"\",\"nav_icon\":\"\",\"thumbnail\":\"\"}',0,0,0,0,2,1,31,31,0,'Unterseite (Kopiermodus) (German)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/translate-to-german-subpage-copy-mode',0,0,0,'',0,0,0,0,0,0,0,0,12,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(18,0,1700226539,1700226539,0,0,0,0,'',32,NULL,0,1,26,26,'{\"starttime\":\"parent\",\"endtime\":\"parent\",\"nav_hide\":\"parent\",\"url\":\"parent\",\"lastUpdated\":\"parent\",\"newUntil\":\"parent\",\"no_search\":\"parent\",\"shortcut\":\"parent\",\"shortcut_mode\":\"parent\",\"content_from_pid\":\"parent\",\"author\":\"parent\",\"author_email\":\"parent\",\"media\":\"parent\",\"og_image\":\"parent\",\"twitter_image\":\"parent\"}',0,'{\"l10n_parent\":\"\",\"l10n_source\":\"\",\"TSconfig\":\"\",\"php_tree_stop\":\"\",\"editlock\":\"\",\"layout\":\"\",\"fe_group\":\"\",\"extendToSubpages\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"mount_pid\":\"\",\"is_siteroot\":\"\",\"mount_pid_ol\":\"\",\"module\":\"\",\"l18n_cfg\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":\"\",\"no_index\":\"\",\"no_follow\":\"\",\"nav_icon_set\":\"\",\"nav_icon_identifier\":\"\",\"nav_icon\":\"\",\"thumbnail\":\"\"}',0,0,0,0,2,1,31,31,0,'Nur Englisch und Deutsch (German)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/translate-to-german-subpage-not-all-translated',0,0,0,'',0,0,0,0,0,0,0,0,11,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(19,0,1700226539,1700226539,0,0,0,0,'',16,NULL,0,1,25,25,'{\"starttime\":\"parent\",\"endtime\":\"parent\",\"nav_hide\":\"parent\",\"url\":\"parent\",\"lastUpdated\":\"parent\",\"newUntil\":\"parent\",\"no_search\":\"parent\",\"shortcut\":\"parent\",\"shortcut_mode\":\"parent\",\"content_from_pid\":\"parent\",\"author\":\"parent\",\"author_email\":\"parent\",\"media\":\"parent\",\"og_image\":\"parent\",\"twitter_image\":\"parent\"}',0,'{\"l10n_parent\":\"\",\"l10n_source\":\"\",\"TSconfig\":\"\",\"php_tree_stop\":\"\",\"editlock\":\"\",\"layout\":\"\",\"fe_group\":\"\",\"extendToSubpages\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"mount_pid\":\"\",\"is_siteroot\":\"\",\"mount_pid_ol\":\"\",\"module\":\"\",\"l18n_cfg\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":\"\",\"no_index\":\"\",\"no_follow\":\"\",\"nav_icon_set\":\"\",\"nav_icon_identifier\":\"\",\"nav_icon\":\"\",\"thumbnail\":\"\"}',0,0,0,0,2,1,31,31,0,'Unterseite, nur Deutsch (German)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/translate-to-german-subpage-only-german',0,0,0,'',0,0,0,0,0,1,0,0,10,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(20,0,1700226539,1700226539,0,0,0,0,'',8,NULL,0,3,23,23,'{\"starttime\":\"parent\",\"endtime\":\"parent\",\"nav_hide\":\"parent\",\"url\":\"parent\",\"lastUpdated\":\"parent\",\"newUntil\":\"parent\",\"no_search\":\"parent\",\"shortcut\":\"parent\",\"shortcut_mode\":\"parent\",\"content_from_pid\":\"parent\",\"author\":\"parent\",\"author_email\":\"parent\",\"media\":\"parent\",\"og_image\":\"parent\",\"twitter_image\":\"parent\"}',0,'{\"l10n_parent\":\"\",\"l10n_source\":\"\",\"TSconfig\":\"\",\"php_tree_stop\":\"\",\"editlock\":\"\",\"layout\":\"\",\"fe_group\":\"\",\"extendToSubpages\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"mount_pid\":\"\",\"is_siteroot\":\"\",\"mount_pid_ol\":\"\",\"module\":\"\",\"l18n_cfg\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":\"\",\"no_index\":\"\",\"no_follow\":\"\",\"nav_icon_set\":\"\",\"nav_icon_identifier\":\"\",\"nav_icon\":\"\",\"thumbnail\":\"\"}',0,0,0,0,2,1,31,31,0,'Hjemmeside (Danish)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/',0,0,0,'',0,0,0,0,1,0,0,0,5,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(21,0,1700226539,1700226539,0,0,0,0,'',4,NULL,0,2,23,23,'{\"starttime\":\"parent\",\"endtime\":\"parent\",\"nav_hide\":\"parent\",\"url\":\"parent\",\"lastUpdated\":\"parent\",\"newUntil\":\"parent\",\"no_search\":\"parent\",\"shortcut\":\"parent\",\"shortcut_mode\":\"parent\",\"content_from_pid\":\"parent\",\"author\":\"parent\",\"author_email\":\"parent\",\"media\":\"parent\",\"og_image\":\"parent\",\"twitter_image\":\"parent\"}',0,'{\"l10n_parent\":\"\",\"l10n_source\":\"\",\"TSconfig\":\"\",\"php_tree_stop\":\"\",\"editlock\":\"\",\"layout\":\"\",\"fe_group\":\"\",\"extendToSubpages\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"mount_pid\":\"\",\"is_siteroot\":\"\",\"mount_pid_ol\":\"\",\"module\":\"\",\"l18n_cfg\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":\"\",\"no_index\":\"\",\"no_follow\":\"\",\"nav_icon_set\":\"\",\"nav_icon_identifier\":\"\",\"nav_icon\":\"\",\"thumbnail\":\"\"}',0,0,0,0,2,1,31,31,0,'Page d\'accueil (French)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/',0,0,0,'',0,0,0,0,1,0,0,0,4,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(22,0,1700226539,1700226539,0,0,0,0,'',2,NULL,0,1,23,23,'{\"starttime\":\"parent\",\"endtime\":\"parent\",\"nav_hide\":\"parent\",\"url\":\"parent\",\"lastUpdated\":\"parent\",\"newUntil\":\"parent\",\"no_search\":\"parent\",\"shortcut\":\"parent\",\"shortcut_mode\":\"parent\",\"content_from_pid\":\"parent\",\"author\":\"parent\",\"author_email\":\"parent\",\"media\":\"parent\",\"og_image\":\"parent\",\"twitter_image\":\"parent\"}',0,'{\"l10n_parent\":\"\",\"l10n_source\":\"\",\"TSconfig\":\"\",\"php_tree_stop\":\"\",\"editlock\":\"\",\"layout\":\"\",\"fe_group\":\"\",\"extendToSubpages\":\"\",\"target\":\"\",\"cache_timeout\":\"\",\"cache_tags\":\"\",\"mount_pid\":\"\",\"is_siteroot\":\"\",\"mount_pid_ol\":\"\",\"module\":\"\",\"l18n_cfg\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":\"\",\"no_index\":\"\",\"no_follow\":\"\",\"nav_icon_set\":\"\",\"nav_icon_identifier\":\"\",\"nav_icon\":\"\",\"thumbnail\":\"\"}',0,0,0,0,2,1,31,31,0,'Startseite (Deutsch)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/',0,0,0,'',0,0,0,0,1,0,0,0,3,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(23,0,1700226539,1700226539,0,0,0,0,'',1,NULL,0,0,0,0,NULL,0,'{\"title\":\"\"}',0,0,0,0,2,1,31,31,0,'Homepage (English)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/',0,0,0,'',0,0,0,0,1,0,0,0,1,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(24,23,1700226539,1700226539,0,0,0,0,'',256,NULL,0,0,0,0,NULL,0,'{\"hidden\":\"\"}',0,0,0,0,2,1,31,31,0,'Subpage (only default)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/subpage-only-default',0,0,0,'',0,0,0,0,0,0,0,0,9,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(25,23,1700226539,1700226539,0,0,0,0,'',128,NULL,0,0,0,0,NULL,0,'{\"hidden\":\"\"}',0,0,0,0,2,1,31,31,0,'Subpage (only german)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/subpage-only-german',0,0,0,'',0,0,0,0,0,1,0,0,8,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(26,23,1700226539,1700226539,0,0,0,0,'',64,NULL,0,0,0,0,NULL,0,'{\"hidden\":\"\"}',0,0,0,0,2,1,31,31,0,'Subpage (not all translated)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/subpage-not-all-translated',0,0,0,'',0,0,0,0,0,0,0,0,7,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(27,23,1700226539,1700226539,0,0,0,0,'',32,NULL,0,0,0,0,NULL,0,'{\"hidden\":\"\"}',0,0,0,0,2,1,31,31,0,'Subpage (copy mode)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/subpage-copy-mode',0,0,0,'',0,0,0,0,0,0,0,0,6,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,'');
/*!40000 ALTER TABLE `pages_copy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_root`
--

DROP TABLE IF EXISTS `pages_root`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_root` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `rowDescription` text DEFAULT NULL,
  `editlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `perms_userid` int(10) unsigned NOT NULL DEFAULT 0,
  `perms_groupid` int(10) unsigned NOT NULL DEFAULT 0,
  `perms_user` smallint(5) unsigned NOT NULL DEFAULT 0,
  `perms_group` smallint(5) unsigned NOT NULL DEFAULT 0,
  `perms_everybody` smallint(5) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `doktype` int(10) unsigned NOT NULL DEFAULT 0,
  `TSconfig` text DEFAULT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `shortcut` int(10) unsigned NOT NULL DEFAULT 0,
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT 0,
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `layout` int(10) unsigned NOT NULL DEFAULT 0,
  `target` varchar(80) NOT NULL DEFAULT '',
  `keywords` text DEFAULT NULL,
  `cache_timeout` int(10) unsigned NOT NULL DEFAULT 0,
  `cache_tags` varchar(255) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `SYS_LASTCHANGED` int(10) unsigned NOT NULL DEFAULT 0,
  `abstract` text DEFAULT NULL,
  `module` varchar(255) NOT NULL DEFAULT '',
  `author` varchar(255) NOT NULL DEFAULT '',
  `nav_title` varchar(255) NOT NULL DEFAULT '',
  `content_from_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `mount_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `mount_pid_ol` smallint(6) NOT NULL DEFAULT 0,
  `backend_layout` varchar(64) NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) NOT NULL DEFAULT '',
  `tsconfig_includes` text DEFAULT NULL,
  `categories` int(10) unsigned NOT NULL DEFAULT 0,
  `lastUpdated` int(11) NOT NULL DEFAULT 0,
  `newUntil` int(11) NOT NULL DEFAULT 0,
  `slug` varchar(2048) DEFAULT NULL,
  `media` int(10) unsigned NOT NULL DEFAULT 0,
  `og_image` int(10) unsigned NOT NULL DEFAULT 0,
  `twitter_image` int(10) unsigned NOT NULL DEFAULT 0,
  `author_email` varchar(255) NOT NULL DEFAULT '',
  `php_tree_stop` smallint(5) unsigned NOT NULL DEFAULT 0,
  `extendToSubpages` smallint(5) unsigned NOT NULL DEFAULT 0,
  `nav_hide` smallint(5) unsigned NOT NULL DEFAULT 0,
  `no_search` smallint(5) unsigned NOT NULL DEFAULT 0,
  `is_siteroot` smallint(5) unsigned NOT NULL DEFAULT 0,
  `l18n_cfg` smallint(5) unsigned NOT NULL DEFAULT 0,
  `no_index` smallint(5) unsigned NOT NULL DEFAULT 0,
  `no_follow` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT 0,
  `seo_title` varchar(255) NOT NULL DEFAULT '',
  `og_title` varchar(255) NOT NULL DEFAULT '',
  `og_description` text DEFAULT NULL,
  `twitter_title` varchar(255) NOT NULL DEFAULT '',
  `twitter_description` text DEFAULT NULL,
  `twitter_card` varchar(255) NOT NULL DEFAULT '',
  `canonical_link` varchar(2048) NOT NULL DEFAULT '',
  `sitemap_priority` decimal(2,1) NOT NULL DEFAULT 0.5,
  `sitemap_changefreq` varchar(10) NOT NULL DEFAULT '',
  `nav_icon_set` varchar(255) NOT NULL DEFAULT '',
  `nav_icon_identifier` varchar(255) NOT NULL DEFAULT '',
  `nav_icon` int(10) unsigned DEFAULT 0,
  `thumbnail` int(10) unsigned DEFAULT 0,
  `tx_styleguide_containsdemo` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `determineSiteRoot` (`is_siteroot`),
  KEY `language_identifier` (`l10n_parent`,`sys_language_uid`),
  KEY `slug` (`slug`(127)),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_root`
--

LOCK TABLES `pages_root` WRITE;
/*!40000 ALTER TABLE `pages_root` DISABLE KEYS */;
INSERT INTO `pages_root` VALUES (1,0,1699001460,1694604292,0,0,0,0,'',256,NULL,0,0,0,0,NULL,0,'{\"title\":\"\"}',0,0,0,0,1,1,31,31,0,'Homepage (English)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,1699001460,NULL,'','','',0,0,0,'','',NULL,0,0,0,'/',0,0,0,'',0,0,0,0,1,0,0,0,0,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(2,1,1699001725,1694681269,1,0,0,0,'0',256,NULL,0,0,0,0,NULL,0,'{\"hidden\":\"\"}',0,0,0,0,1,1,31,31,0,'Plugin-Issue image.uri',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,1694681287,NULL,'','','',0,0,0,'','',NULL,0,0,0,'/plugin-issue-imageuri',0,0,0,'',0,0,0,0,0,0,0,0,0,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(3,0,1699001734,1699001429,0,0,0,0,'',256,NULL,0,1,1,1,'{\"starttime\":\"parent\",\"endtime\":\"parent\",\"nav_hide\":\"parent\",\"url\":\"parent\",\"lastUpdated\":\"parent\",\"newUntil\":\"parent\",\"no_search\":\"parent\",\"shortcut\":\"parent\",\"shortcut_mode\":\"parent\",\"content_from_pid\":\"parent\",\"author\":\"parent\",\"author_email\":\"parent\",\"media\":\"parent\",\"og_image\":\"parent\",\"twitter_image\":\"parent\"}',0,'{\"doktype\":\"1\",\"slug\":\"\\/\",\"hidden\":\"0\",\"starttime\":\"0\",\"endtime\":\"0\",\"l10n_parent\":\"0\",\"categories\":\"0\",\"l10n_diffsource\":\"{\\\"doktype\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"slug\\\":\\\"\\\",\\\"nav_title\\\":\\\"\\\",\\\"subtitle\\\":\\\"\\\",\\\"nav_icon_set\\\":\\\"\\\",\\\"nav_icon\\\":\\\"\\\",\\\"seo_title\\\":\\\"\\\",\\\"description\\\":\\\"\\\",\\\"no_index\\\":\\\"\\\",\\\"no_follow\\\":\\\"\\\",\\\"canonical_link\\\":\\\"\\\",\\\"sitemap_changefreq\\\":\\\"\\\",\\\"sitemap_priority\\\":\\\"\\\",\\\"og_title\\\":\\\"\\\",\\\"og_description\\\":\\\"\\\",\\\"og_image\\\":\\\"\\\",\\\"twitter_title\\\":\\\"\\\",\\\"twitter_description\\\":\\\"\\\",\\\"twitter_image\\\":\\\"\\\",\\\"twitter_card\\\":\\\"\\\",\\\"abstract\\\":\\\"\\\",\\\"keywords\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"author_email\\\":\\\"\\\",\\\"lastUpdated\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"newUntil\\\":\\\"\\\",\\\"backend_layout\\\":\\\"\\\",\\\"backend_layout_next_level\\\":\\\"\\\",\\\"thumbnail\\\":\\\"\\\",\\\"content_from_pid\\\":\\\"\\\",\\\"target\\\":\\\"\\\",\\\"cache_timeout\\\":\\\"\\\",\\\"cache_tags\\\":\\\"\\\",\\\"is_siteroot\\\":\\\"\\\",\\\"no_search\\\":\\\"\\\",\\\"php_tree_stop\\\":\\\"\\\",\\\"module\\\":\\\"\\\",\\\"media\\\":\\\"\\\",\\\"tsconfig_includes\\\":\\\"\\\",\\\"TSconfig\\\":\\\"\\\",\\\"l18n_cfg\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"nav_hide\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"extendToSubpages\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\",\"layout\":\"0\",\"lastUpdated\":\"0\",\"newUntil\":\"0\",\"cache_timeout\":\"0\",\"shortcut\":\"0\",\"shortcut_mode\":\"0\",\"content_from_pid\":\"0\",\"mount_pid\":\"0\",\"module\":\"\",\"sitemap_priority\":\"0.5\",\"twitter_card\":\"summary\",\"t3_origuid\":\"0\",\"sys_language_uid\":\"0\",\"l10n_source\":\"0\",\"title\":\"New TYPO3 domain\",\"nav_hide\":\"0\",\"url\":\"\",\"no_search\":\"0\",\"author\":\"\",\"author_email\":\"\",\"media\":\"0\",\"og_image\":\"0\",\"twitter_image\":\"0\",\"TSconfig\":\"\",\"php_tree_stop\":\"0\",\"editlock\":\"0\",\"fe_group\":\"\",\"extendToSubpages\":\"0\",\"target\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"1\",\"mount_pid_ol\":\"0\",\"l18n_cfg\":\"0\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":\"\",\"no_index\":\"0\",\"no_follow\":\"0\",\"nav_icon_set\":\"\",\"nav_icon_identifier\":\"\",\"nav_icon\":\"0\",\"thumbnail\":\"0\",\"nav_title\":\"\",\"subtitle\":\"\",\"seo_title\":\"\",\"description\":\"\",\"canonical_link\":\"\",\"sitemap_changefreq\":\"\",\"og_title\":\"\",\"og_description\":\"\",\"twitter_title\":\"\",\"twitter_description\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"rowDescription\":\"\"}',0,0,0,0,1,1,31,31,0,'Startseite (Deutsch)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/',0,0,0,'',0,0,0,0,1,0,0,0,0,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(4,0,1699001737,1699001467,0,0,0,0,'',256,NULL,0,2,1,1,'{\"starttime\":\"parent\",\"endtime\":\"parent\",\"nav_hide\":\"parent\",\"url\":\"parent\",\"lastUpdated\":\"parent\",\"newUntil\":\"parent\",\"no_search\":\"parent\",\"shortcut\":\"parent\",\"shortcut_mode\":\"parent\",\"content_from_pid\":\"parent\",\"author\":\"parent\",\"author_email\":\"parent\",\"media\":\"parent\",\"og_image\":\"parent\",\"twitter_image\":\"parent\"}',0,'{\"doktype\":\"1\",\"slug\":\"\\/\",\"hidden\":\"0\",\"starttime\":\"0\",\"endtime\":\"0\",\"l10n_parent\":\"0\",\"categories\":\"0\",\"l10n_diffsource\":\"{\\\"title\\\":\\\"\\\"}\",\"layout\":\"0\",\"lastUpdated\":\"0\",\"newUntil\":\"0\",\"cache_timeout\":\"0\",\"shortcut\":\"0\",\"shortcut_mode\":\"0\",\"content_from_pid\":\"0\",\"mount_pid\":\"0\",\"module\":\"\",\"sitemap_priority\":\"0.5\",\"twitter_card\":\"summary\",\"t3_origuid\":\"0\",\"sys_language_uid\":\"0\",\"l10n_source\":\"0\",\"title\":\"Homepage (English)\",\"nav_hide\":\"0\",\"url\":\"\",\"no_search\":\"0\",\"author\":\"\",\"author_email\":\"\",\"media\":\"0\",\"og_image\":\"0\",\"twitter_image\":\"0\",\"TSconfig\":\"\",\"php_tree_stop\":\"0\",\"editlock\":\"0\",\"fe_group\":\"\",\"extendToSubpages\":\"0\",\"target\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"1\",\"mount_pid_ol\":\"0\",\"l18n_cfg\":\"0\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":\"\",\"no_index\":\"0\",\"no_follow\":\"0\",\"nav_icon_set\":\"\",\"nav_icon_identifier\":\"\",\"nav_icon\":\"0\",\"thumbnail\":\"0\",\"nav_title\":\"\",\"subtitle\":\"\",\"seo_title\":\"\",\"description\":\"\",\"canonical_link\":\"\",\"sitemap_changefreq\":\"\",\"og_title\":\"\",\"og_description\":\"\",\"twitter_title\":\"\",\"twitter_description\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"rowDescription\":\"\"}',0,0,0,0,1,1,31,31,0,'Page d\'accueil (French)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/',0,0,0,'',0,0,0,0,1,0,0,0,0,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(5,0,1699001741,1699001496,0,0,0,0,'',256,NULL,0,3,1,1,'{\"starttime\":\"parent\",\"endtime\":\"parent\",\"nav_hide\":\"parent\",\"url\":\"parent\",\"lastUpdated\":\"parent\",\"newUntil\":\"parent\",\"no_search\":\"parent\",\"shortcut\":\"parent\",\"shortcut_mode\":\"parent\",\"content_from_pid\":\"parent\",\"author\":\"parent\",\"author_email\":\"parent\",\"media\":\"parent\",\"og_image\":\"parent\",\"twitter_image\":\"parent\"}',0,'{\"doktype\":\"1\",\"slug\":\"\\/\",\"hidden\":\"0\",\"starttime\":\"0\",\"endtime\":\"0\",\"l10n_parent\":\"0\",\"categories\":\"0\",\"l10n_diffsource\":\"{\\\"title\\\":\\\"\\\"}\",\"layout\":\"0\",\"lastUpdated\":\"0\",\"newUntil\":\"0\",\"cache_timeout\":\"0\",\"shortcut\":\"0\",\"shortcut_mode\":\"0\",\"content_from_pid\":\"0\",\"mount_pid\":\"0\",\"module\":\"\",\"sitemap_priority\":\"0.5\",\"twitter_card\":\"summary\",\"t3_origuid\":\"0\",\"sys_language_uid\":\"0\",\"l10n_source\":\"0\",\"title\":\"Homepage (English)\",\"nav_hide\":\"0\",\"url\":\"\",\"no_search\":\"0\",\"author\":\"\",\"author_email\":\"\",\"media\":\"0\",\"og_image\":\"0\",\"twitter_image\":\"0\",\"TSconfig\":\"\",\"php_tree_stop\":\"0\",\"editlock\":\"0\",\"fe_group\":\"\",\"extendToSubpages\":\"0\",\"target\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"1\",\"mount_pid_ol\":\"0\",\"l18n_cfg\":\"0\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":\"\",\"no_index\":\"0\",\"no_follow\":\"0\",\"nav_icon_set\":\"\",\"nav_icon_identifier\":\"\",\"nav_icon\":\"0\",\"thumbnail\":\"0\",\"nav_title\":\"\",\"subtitle\":\"\",\"seo_title\":\"\",\"description\":\"\",\"canonical_link\":\"\",\"sitemap_changefreq\":\"\",\"og_title\":\"\",\"og_description\":\"\",\"twitter_title\":\"\",\"twitter_description\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"rowDescription\":\"\"}',0,0,0,0,1,1,31,31,0,'Hjemmeside (Danish)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/',0,0,0,'',0,0,0,0,1,0,0,0,0,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(6,1,1699001755,1699001695,0,0,0,0,'0',128,NULL,0,0,0,0,NULL,0,'{\"hidden\":\"\"}',0,0,0,0,1,1,31,31,0,'Subpage (copy mode)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,1699001755,NULL,'','','',0,0,0,'','',NULL,0,0,0,'/subpage-copy-mode',0,0,0,'',0,0,0,0,0,0,0,0,0,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(7,1,1699001758,1699001701,0,0,0,0,'0',192,NULL,0,0,0,0,NULL,0,'{\"hidden\":\"\"}',0,0,0,0,1,1,31,31,0,'Subpage (not all translated)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,1699001758,NULL,'','','',0,0,0,'','',NULL,0,0,0,'/subpage-not-all-translated',0,0,0,'',0,0,0,0,0,0,0,0,0,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(8,1,1699002375,1699001706,0,0,0,0,'',224,NULL,0,0,0,0,NULL,0,'{\"hidden\":\"\"}',0,0,0,0,1,1,31,31,0,'Subpage (only german)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','',NULL,0,0,0,'/subpage-only-german',0,0,0,'',0,0,0,0,0,1,0,0,0,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(9,1,1699001762,1699001717,0,0,0,0,'0',240,NULL,0,0,0,0,NULL,0,'{\"hidden\":\"\"}',0,0,0,0,1,1,31,31,0,'Subpage (only default)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,1699001762,NULL,'','','',0,0,0,'','',NULL,0,0,0,'/subpage-only-default',0,0,0,'',0,0,0,0,0,0,0,0,0,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(10,1,1699002370,1699001784,0,0,0,0,'',224,NULL,0,1,8,8,'{\"starttime\":\"parent\",\"endtime\":\"parent\",\"nav_hide\":\"parent\",\"url\":\"parent\",\"lastUpdated\":\"parent\",\"newUntil\":\"parent\",\"no_search\":\"parent\",\"shortcut\":\"parent\",\"shortcut_mode\":\"parent\",\"content_from_pid\":\"parent\",\"author\":\"parent\",\"author_email\":\"parent\",\"media\":\"parent\",\"og_image\":\"parent\",\"twitter_image\":\"parent\"}',0,'{\"doktype\":\"1\",\"slug\":\"\\/subpage-only-german\",\"hidden\":\"1\",\"starttime\":\"0\",\"endtime\":\"0\",\"l10n_parent\":\"0\",\"categories\":\"0\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\",\"layout\":\"0\",\"lastUpdated\":\"0\",\"newUntil\":\"0\",\"cache_timeout\":\"0\",\"shortcut\":\"0\",\"shortcut_mode\":\"0\",\"content_from_pid\":\"0\",\"mount_pid\":\"0\",\"module\":\"\",\"sitemap_priority\":\"0.5\",\"twitter_card\":\"summary\",\"t3_origuid\":\"0\",\"sys_language_uid\":\"0\",\"l10n_source\":\"0\",\"title\":\"Subpage (only german)\",\"nav_hide\":\"0\",\"url\":\"\",\"no_search\":\"0\",\"author\":\"\",\"author_email\":\"\",\"media\":\"0\",\"og_image\":\"0\",\"twitter_image\":\"0\",\"TSconfig\":\"\",\"php_tree_stop\":\"0\",\"editlock\":\"0\",\"fe_group\":\"\",\"extendToSubpages\":\"0\",\"target\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"0\",\"mount_pid_ol\":\"0\",\"l18n_cfg\":\"1\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":\"\",\"no_index\":\"0\",\"no_follow\":\"0\",\"nav_icon_set\":\"\",\"nav_icon_identifier\":\"\",\"nav_icon\":\"0\",\"thumbnail\":\"0\",\"nav_title\":\"\",\"subtitle\":\"\",\"seo_title\":\"\",\"description\":\"\",\"canonical_link\":\"\",\"sitemap_changefreq\":\"\",\"og_title\":\"\",\"og_description\":\"\",\"twitter_title\":\"\",\"twitter_description\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"rowDescription\":\"\"}',0,0,0,0,1,1,31,31,0,'Unterseite, nur Deutsch (German)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,1699002370,NULL,'','','',0,0,0,'','','',0,0,0,'/translate-to-german-subpage-only-german',0,0,0,'',0,0,0,0,0,1,0,0,0,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(11,1,1699001846,1699001829,0,0,0,0,'',192,NULL,0,1,7,7,'{\"starttime\":\"parent\",\"endtime\":\"parent\",\"nav_hide\":\"parent\",\"url\":\"parent\",\"lastUpdated\":\"parent\",\"newUntil\":\"parent\",\"no_search\":\"parent\",\"shortcut\":\"parent\",\"shortcut_mode\":\"parent\",\"content_from_pid\":\"parent\",\"author\":\"parent\",\"author_email\":\"parent\",\"media\":\"parent\",\"og_image\":\"parent\",\"twitter_image\":\"parent\"}',0,'{\"doktype\":\"1\",\"slug\":\"\\/subpage-not-all-translated\",\"hidden\":\"0\",\"starttime\":\"0\",\"endtime\":\"0\",\"l10n_parent\":\"0\",\"categories\":\"0\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\",\"layout\":\"0\",\"lastUpdated\":\"0\",\"newUntil\":\"0\",\"cache_timeout\":\"0\",\"shortcut\":\"0\",\"shortcut_mode\":\"0\",\"content_from_pid\":\"0\",\"mount_pid\":\"0\",\"module\":\"\",\"sitemap_priority\":\"0.5\",\"twitter_card\":\"summary\",\"t3_origuid\":\"0\",\"sys_language_uid\":\"0\",\"l10n_source\":\"0\",\"title\":\"Subpage (not all translated)\",\"nav_hide\":\"0\",\"url\":\"\",\"no_search\":\"0\",\"author\":\"\",\"author_email\":\"\",\"media\":\"0\",\"og_image\":\"0\",\"twitter_image\":\"0\",\"TSconfig\":\"\",\"php_tree_stop\":\"0\",\"editlock\":\"0\",\"fe_group\":\"0\",\"extendToSubpages\":\"0\",\"target\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"0\",\"mount_pid_ol\":\"0\",\"l18n_cfg\":\"0\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":\"\",\"no_index\":\"0\",\"no_follow\":\"0\",\"nav_icon_set\":\"\",\"nav_icon_identifier\":\"\",\"nav_icon\":\"0\",\"thumbnail\":\"0\",\"nav_title\":\"\",\"subtitle\":\"\",\"seo_title\":\"\",\"description\":\"\",\"canonical_link\":\"\",\"sitemap_changefreq\":\"\",\"og_title\":\"\",\"og_description\":\"\",\"twitter_title\":\"\",\"twitter_description\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"rowDescription\":\"\"}',0,0,0,0,1,1,31,31,0,'Nur Englisch und Deutsch (German)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,1699001846,NULL,'','','',0,0,0,'','','',0,0,0,'/translate-to-german-subpage-not-all-translated',0,0,0,'',0,0,0,0,0,0,0,0,0,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(12,1,1699001922,1699001889,0,0,0,0,'',128,NULL,0,1,6,6,'{\"starttime\":\"parent\",\"endtime\":\"parent\",\"nav_hide\":\"parent\",\"url\":\"parent\",\"lastUpdated\":\"parent\",\"newUntil\":\"parent\",\"no_search\":\"parent\",\"shortcut\":\"parent\",\"shortcut_mode\":\"parent\",\"content_from_pid\":\"parent\",\"author\":\"parent\",\"author_email\":\"parent\",\"media\":\"parent\",\"og_image\":\"parent\",\"twitter_image\":\"parent\"}',0,'{\"doktype\":\"1\",\"slug\":\"\\/subpage-copy-mode\",\"hidden\":\"0\",\"starttime\":\"0\",\"endtime\":\"0\",\"l10n_parent\":\"0\",\"categories\":\"0\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\",\"layout\":\"0\",\"lastUpdated\":\"0\",\"newUntil\":\"0\",\"cache_timeout\":\"0\",\"shortcut\":\"0\",\"shortcut_mode\":\"0\",\"content_from_pid\":\"0\",\"mount_pid\":\"0\",\"module\":\"\",\"sitemap_priority\":\"0.5\",\"twitter_card\":\"summary\",\"t3_origuid\":\"0\",\"sys_language_uid\":\"0\",\"l10n_source\":\"0\",\"title\":\"Subpage (copy mode)\",\"nav_hide\":\"0\",\"url\":\"\",\"no_search\":\"0\",\"author\":\"\",\"author_email\":\"\",\"media\":\"0\",\"og_image\":\"0\",\"twitter_image\":\"0\",\"TSconfig\":\"\",\"php_tree_stop\":\"0\",\"editlock\":\"0\",\"fe_group\":\"0\",\"extendToSubpages\":\"0\",\"target\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"0\",\"mount_pid_ol\":\"0\",\"l18n_cfg\":\"0\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":\"\",\"no_index\":\"0\",\"no_follow\":\"0\",\"nav_icon_set\":\"\",\"nav_icon_identifier\":\"\",\"nav_icon\":\"0\",\"thumbnail\":\"0\",\"nav_title\":\"\",\"subtitle\":\"\",\"seo_title\":\"\",\"description\":\"\",\"canonical_link\":\"\",\"sitemap_changefreq\":\"\",\"og_title\":\"\",\"og_description\":\"\",\"twitter_title\":\"\",\"twitter_description\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"rowDescription\":\"\"}',0,0,0,0,1,1,31,31,0,'Unterseite (Kopiermodus) (German)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,1699001922,NULL,'','','',0,0,0,'','','',0,0,0,'/translate-to-german-subpage-copy-mode',0,0,0,'',0,0,0,0,0,0,0,0,0,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(13,1,1699001924,1699001902,0,0,0,0,'',128,NULL,0,2,6,6,'{\"starttime\":\"parent\",\"endtime\":\"parent\",\"nav_hide\":\"parent\",\"url\":\"parent\",\"lastUpdated\":\"parent\",\"newUntil\":\"parent\",\"no_search\":\"parent\",\"shortcut\":\"parent\",\"shortcut_mode\":\"parent\",\"content_from_pid\":\"parent\",\"author\":\"parent\",\"author_email\":\"parent\",\"media\":\"parent\",\"og_image\":\"parent\",\"twitter_image\":\"parent\"}',0,'{\"doktype\":\"1\",\"slug\":\"\\/subpage-copy-mode\",\"hidden\":\"0\",\"starttime\":\"0\",\"endtime\":\"0\",\"l10n_parent\":\"0\",\"categories\":\"0\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\",\"layout\":\"0\",\"lastUpdated\":\"0\",\"newUntil\":\"0\",\"cache_timeout\":\"0\",\"shortcut\":\"0\",\"shortcut_mode\":\"0\",\"content_from_pid\":\"0\",\"mount_pid\":\"0\",\"module\":\"\",\"sitemap_priority\":\"0.5\",\"twitter_card\":\"summary\",\"t3_origuid\":\"0\",\"sys_language_uid\":\"0\",\"l10n_source\":\"0\",\"title\":\"Subpage (copy mode)\",\"nav_hide\":\"0\",\"url\":\"\",\"no_search\":\"0\",\"author\":\"\",\"author_email\":\"\",\"media\":\"0\",\"og_image\":\"0\",\"twitter_image\":\"0\",\"TSconfig\":\"\",\"php_tree_stop\":\"0\",\"editlock\":\"0\",\"fe_group\":\"0\",\"extendToSubpages\":\"0\",\"target\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"0\",\"mount_pid_ol\":\"0\",\"l18n_cfg\":\"0\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":\"\",\"no_index\":\"0\",\"no_follow\":\"0\",\"nav_icon_set\":\"\",\"nav_icon_identifier\":\"\",\"nav_icon\":\"0\",\"thumbnail\":\"0\",\"nav_title\":\"\",\"subtitle\":\"\",\"seo_title\":\"\",\"description\":\"\",\"canonical_link\":\"\",\"sitemap_changefreq\":\"\",\"og_title\":\"\",\"og_description\":\"\",\"twitter_title\":\"\",\"twitter_description\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"rowDescription\":\"\"}',0,0,0,0,1,1,31,31,0,'Subsite (French)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/translate-to-french-subpage-copy-mode',0,0,0,'',0,0,0,0,0,0,0,0,0,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,''),(14,1,1699001926,1699001910,0,0,0,0,'',128,NULL,0,3,6,6,'{\"starttime\":\"parent\",\"endtime\":\"parent\",\"nav_hide\":\"parent\",\"url\":\"parent\",\"lastUpdated\":\"parent\",\"newUntil\":\"parent\",\"no_search\":\"parent\",\"shortcut\":\"parent\",\"shortcut_mode\":\"parent\",\"content_from_pid\":\"parent\",\"author\":\"parent\",\"author_email\":\"parent\",\"media\":\"parent\",\"og_image\":\"parent\",\"twitter_image\":\"parent\"}',0,'{\"doktype\":\"1\",\"slug\":\"\\/subpage-copy-mode\",\"hidden\":\"0\",\"starttime\":\"0\",\"endtime\":\"0\",\"l10n_parent\":\"0\",\"categories\":\"0\",\"l10n_diffsource\":\"{\\\"hidden\\\":\\\"\\\"}\",\"layout\":\"0\",\"lastUpdated\":\"0\",\"newUntil\":\"0\",\"cache_timeout\":\"0\",\"shortcut\":\"0\",\"shortcut_mode\":\"0\",\"content_from_pid\":\"0\",\"mount_pid\":\"0\",\"module\":\"\",\"sitemap_priority\":\"0.5\",\"twitter_card\":\"summary\",\"t3_origuid\":\"0\",\"sys_language_uid\":\"0\",\"l10n_source\":\"0\",\"title\":\"Subpage (copy mode)\",\"nav_hide\":\"0\",\"url\":\"\",\"no_search\":\"0\",\"author\":\"\",\"author_email\":\"\",\"media\":\"0\",\"og_image\":\"0\",\"twitter_image\":\"0\",\"TSconfig\":\"\",\"php_tree_stop\":\"0\",\"editlock\":\"0\",\"fe_group\":\"0\",\"extendToSubpages\":\"0\",\"target\":\"\",\"cache_tags\":\"\",\"is_siteroot\":\"0\",\"mount_pid_ol\":\"0\",\"l18n_cfg\":\"0\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":\"\",\"no_index\":\"0\",\"no_follow\":\"0\",\"nav_icon_set\":\"\",\"nav_icon_identifier\":\"\",\"nav_icon\":\"0\",\"thumbnail\":\"0\",\"nav_title\":\"\",\"subtitle\":\"\",\"seo_title\":\"\",\"description\":\"\",\"canonical_link\":\"\",\"sitemap_changefreq\":\"\",\"og_title\":\"\",\"og_description\":\"\",\"twitter_title\":\"\",\"twitter_description\":\"\",\"abstract\":\"\",\"keywords\":\"\",\"rowDescription\":\"\"}',0,0,0,0,1,1,31,31,0,'Subsite (Danish)',1,NULL,'',0,0,'',0,'',NULL,0,'',NULL,0,NULL,'','','',0,0,0,'','','',0,0,0,'/translate-to-danish-subpage-copy-mode',0,0,0,'',0,0,0,0,0,0,0,0,0,'','',NULL,'',NULL,'summary','',0.5,'','','',0,0,'');
/*!40000 ALTER TABLE `pages_root` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_be_shortcuts`
--

DROP TABLE IF EXISTS `sys_be_shortcuts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_be_shortcuts` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT 0,
  `route` varchar(255) NOT NULL DEFAULT '',
  `arguments` text DEFAULT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sc_group` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_be_shortcuts`
--

LOCK TABLES `sys_be_shortcuts` WRITE;
/*!40000 ALTER TABLE `sys_be_shortcuts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_be_shortcuts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category`
--

DROP TABLE IF EXISTS `sys_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `title` tinytext NOT NULL,
  `items` int(11) NOT NULL DEFAULT 0,
  `parent` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `category_parent` (`parent`),
  KEY `category_list` (`pid`,`deleted`,`sys_language_uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category`
--

LOCK TABLES `sys_category` WRITE;
/*!40000 ALTER TABLE `sys_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category_record_mm`
--

DROP TABLE IF EXISTS `sys_category_record_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category_record_mm` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT 0,
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  `tablenames` varchar(64) NOT NULL DEFAULT '',
  `fieldname` varchar(64) NOT NULL DEFAULT '',
  `sorting` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid_local`,`uid_foreign`,`tablenames`,`fieldname`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category_record_mm`
--

LOCK TABLES `sys_category_record_mm` WRITE;
/*!40000 ALTER TABLE `sys_category_record_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category_record_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_csp_resolution`
--

DROP TABLE IF EXISTS `sys_csp_resolution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_csp_resolution` (
  `summary` varchar(40) NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `scope` varchar(32) NOT NULL,
  `mutation_identifier` text DEFAULT NULL,
  `mutation_collection` mediumtext DEFAULT NULL,
  `meta` mediumtext DEFAULT NULL,
  PRIMARY KEY (`summary`),
  KEY `created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_csp_resolution`
--

LOCK TABLES `sys_csp_resolution` WRITE;
/*!40000 ALTER TABLE `sys_csp_resolution` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_csp_resolution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file`
--

DROP TABLE IF EXISTS `sys_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `last_indexed` int(11) NOT NULL DEFAULT 0,
  `storage` int(11) NOT NULL DEFAULT 0,
  `type` varchar(10) NOT NULL DEFAULT '',
  `metadata` int(10) unsigned NOT NULL DEFAULT 0,
  `identifier` text DEFAULT NULL,
  `identifier_hash` varchar(40) NOT NULL DEFAULT '',
  `folder_hash` varchar(40) NOT NULL DEFAULT '',
  `extension` varchar(255) NOT NULL DEFAULT '',
  `mime_type` varchar(255) NOT NULL DEFAULT '',
  `name` tinytext DEFAULT NULL,
  `sha1` varchar(40) NOT NULL DEFAULT '',
  `size` int(11) NOT NULL DEFAULT 0,
  `creation_date` int(11) NOT NULL DEFAULT 0,
  `modification_date` int(11) NOT NULL DEFAULT 0,
  `missing` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `sel01` (`storage`,`identifier_hash`),
  KEY `folder` (`storage`,`folder_hash`),
  KEY `tstamp` (`tstamp`),
  KEY `lastindex` (`last_indexed`),
  KEY `sha1` (`sha1`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file`
--

LOCK TABLES `sys_file` WRITE;
/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
INSERT INTO `sys_file` VALUES (1,0,1694604420,0,0,'2',0,'/_assets/9b80d86a98af3ecc38aabe297d2c3695/Images/BootstrapPackage.svg','760d1af8a806b3df149ba4826a7f15c966215a7c','5e8c86041e2022a51f63bbaf56b3ae90109db902','svg','image/svg+xml','BootstrapPackage.svg','a6fb0cc7b50579d6255f16171147695a55b93c27',3843,1694603650,1694603650,0),(2,0,1694604421,0,0,'2',0,'/_assets/9b80d86a98af3ecc38aabe297d2c3695/Images/BootstrapPackageInverted.svg','f4a6353e4d97d78f98f9d3ab740020169d2f33db','5e8c86041e2022a51f63bbaf56b3ae90109db902','svg','image/svg+xml','BootstrapPackageInverted.svg','493f5cd69ede03cf7d436e92481422145674b907',3784,1694603650,1694603650,0),(3,0,1700211053,1700211053,1,'1',0,'/user_upload/_temp_/importexport/dummy-export.xml.xml','375316b5f0dbeae1e2fcde569fd4933d96d04ac1','0795cf796b4fc959be0ec00b183c0f47609dd9a5','xml','text/xml','dummy-export.xml.xml','1f961f4fc3ea1960580cab93fc1d7e8ae6f05817',759,1700211053,1700211053,0),(4,0,1700211129,1700211129,1,'1',0,'/user_upload/_temp_/importexport/dummy-export2.xml.xml','8eeab8dc938ec5b44ffef87ac030999618823355','0795cf796b4fc959be0ec00b183c0f47609dd9a5','xml','text/xml','dummy-export2.xml.xml','cd49f6d15a62bf95447ca3962b7069f238f811bb',202660,1700211129,1700211129,0);
/*!40000 ALTER TABLE `sys_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_collection`
--

DROP TABLE IF EXISTS `sys_file_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_collection` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `title` tinytext DEFAULT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'static',
  `category` int(10) unsigned NOT NULL DEFAULT 0,
  `files` int(10) unsigned NOT NULL DEFAULT 0,
  `folder_identifier` longtext DEFAULT NULL,
  `recursive` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_collection`
--

LOCK TABLES `sys_file_collection` WRITE;
/*!40000 ALTER TABLE `sys_file_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_metadata`
--

DROP TABLE IF EXISTS `sys_file_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_metadata` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `file` int(11) NOT NULL DEFAULT 0,
  `title` tinytext DEFAULT NULL,
  `width` int(11) NOT NULL DEFAULT 0,
  `height` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `alternative` text DEFAULT NULL,
  `categories` int(10) unsigned NOT NULL DEFAULT 0,
  `content_creation_date` int(11) NOT NULL DEFAULT 0,
  `content_modification_date` int(11) NOT NULL DEFAULT 0,
  `visible` smallint(5) unsigned NOT NULL DEFAULT 0,
  `status` varchar(24) DEFAULT '',
  `keywords` text DEFAULT NULL,
  `caption` text DEFAULT NULL,
  `creator_tool` varchar(255) DEFAULT '',
  `download_name` varchar(255) DEFAULT '',
  `creator` varchar(255) DEFAULT '',
  `publisher` varchar(45) DEFAULT '',
  `source` varchar(255) DEFAULT '',
  `copyright` text DEFAULT NULL,
  `location_country` varchar(45) DEFAULT '',
  `location_region` varchar(45) DEFAULT '',
  `location_city` varchar(45) DEFAULT '',
  `latitude` decimal(24,14) DEFAULT 0.00000000000000,
  `longitude` decimal(24,14) DEFAULT 0.00000000000000,
  `ranking` int(10) unsigned DEFAULT 0,
  `note` text DEFAULT NULL,
  `unit` varchar(3) DEFAULT '',
  `duration` int(11) NOT NULL DEFAULT 0,
  `color_space` varchar(4) DEFAULT '',
  `pages` int(10) unsigned DEFAULT 0,
  `language` varchar(12) DEFAULT '',
  `fe_groups` tinytext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `file` (`file`),
  KEY `fal_filelist` (`l10n_parent`,`sys_language_uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_metadata`
--

LOCK TABLES `sys_file_metadata` WRITE;
/*!40000 ALTER TABLE `sys_file_metadata` DISABLE KEYS */;
INSERT INTO `sys_file_metadata` VALUES (1,0,1694604420,1694604420,0,0,NULL,0,'',0,0,0,0,1,NULL,244,68,NULL,NULL,0,0,0,0,'',NULL,NULL,'','','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,NULL,'',0,'',0,'',NULL),(2,0,1694604420,1694604420,0,0,NULL,0,'',0,0,0,0,2,NULL,244,68,NULL,NULL,0,0,0,0,'',NULL,NULL,'','','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,NULL,'',0,'',0,'',NULL),(3,0,1700211053,1700211053,0,0,NULL,0,'',0,0,0,0,3,NULL,0,0,NULL,NULL,0,0,0,0,'',NULL,NULL,'','','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,NULL,'',0,'',0,'',NULL),(4,0,1700211128,1700211128,0,0,NULL,0,'',0,0,0,0,4,NULL,0,0,NULL,NULL,0,0,0,0,'',NULL,NULL,'','','','','',NULL,'','','',0.00000000000000,0.00000000000000,0,NULL,'',0,'',0,'',NULL);
/*!40000 ALTER TABLE `sys_file_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_processedfile`
--

DROP TABLE IF EXISTS `sys_file_processedfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_processedfile` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `storage` int(11) NOT NULL DEFAULT 0,
  `original` int(11) NOT NULL DEFAULT 0,
  `identifier` varchar(512) NOT NULL DEFAULT '',
  `name` tinytext DEFAULT NULL,
  `processing_url` text DEFAULT NULL,
  `configuration` blob DEFAULT NULL,
  `configurationsha1` varchar(40) NOT NULL DEFAULT '',
  `originalfilesha1` varchar(40) NOT NULL DEFAULT '',
  `task_type` varchar(200) NOT NULL DEFAULT '',
  `checksum` varchar(32) NOT NULL DEFAULT '',
  `width` int(11) DEFAULT 0,
  `height` int(11) DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `combined_1` (`original`,`task_type`(100),`configurationsha1`),
  KEY `identifier` (`storage`,`identifier`(180))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_processedfile`
--

LOCK TABLES `sys_file_processedfile` WRITE;
/*!40000 ALTER TABLE `sys_file_processedfile` DISABLE KEYS */;
INSERT INTO `sys_file_processedfile` VALUES (1,1694604421,1694604421,0,1,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','24f48d5b4de7d99b7144e6559156976855e74b5d','a6fb0cc7b50579d6255f16171147695a55b93c27','Image.CropScaleMask','31204a8d39',244,68),(2,1694604421,1694604421,0,2,'',NULL,'','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','24f48d5b4de7d99b7144e6559156976855e74b5d','493f5cd69ede03cf7d436e92481422145674b907','Image.CropScaleMask','68c7327964',244,68);
/*!40000 ALTER TABLE `sys_file_processedfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_reference`
--

DROP TABLE IF EXISTS `sys_file_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_reference` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `uid_local` int(11) NOT NULL DEFAULT 0,
  `uid_foreign` int(11) NOT NULL DEFAULT 0,
  `tablenames` varchar(64) NOT NULL DEFAULT '',
  `fieldname` varchar(64) NOT NULL DEFAULT '',
  `sorting_foreign` int(11) NOT NULL DEFAULT 0,
  `title` tinytext DEFAULT NULL,
  `description` text DEFAULT NULL,
  `alternative` text DEFAULT NULL,
  `link` varchar(2048) NOT NULL DEFAULT '',
  `crop` longtext DEFAULT NULL,
  `autoplay` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `tablenames_fieldname` (`tablenames`(32),`fieldname`(12)),
  KEY `deleted` (`deleted`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `combined_1` (`l10n_parent`,`t3ver_oid`,`t3ver_wsid`,`t3ver_state`,`deleted`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_reference`
--

LOCK TABLES `sys_file_reference` WRITE;
/*!40000 ALTER TABLE `sys_file_reference` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_storage`
--

DROP TABLE IF EXISTS `sys_file_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_storage` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `driver` tinytext DEFAULT NULL,
  `configuration` text DEFAULT NULL,
  `is_public` smallint(6) NOT NULL DEFAULT 0,
  `processingfolder` tinytext DEFAULT NULL,
  `is_browsable` smallint(5) unsigned NOT NULL DEFAULT 0,
  `is_default` smallint(5) unsigned NOT NULL DEFAULT 0,
  `is_writable` smallint(5) unsigned NOT NULL DEFAULT 0,
  `is_online` smallint(5) unsigned NOT NULL DEFAULT 0,
  `auto_extract_metadata` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_storage`
--

LOCK TABLES `sys_file_storage` WRITE;
/*!40000 ALTER TABLE `sys_file_storage` DISABLE KEYS */;
INSERT INTO `sys_file_storage` VALUES (1,0,1694604300,1694604300,0,'This is the local fileadmin/ directory. This storage mount has been created automatically by TYPO3.','fileadmin','Local','<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n                <field index=\"caseSensitive\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',1,NULL,1,1,1,1,0);
/*!40000 ALTER TABLE `sys_file_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_filemounts`
--

DROP TABLE IF EXISTS `sys_filemounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_filemounts` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `identifier` longtext DEFAULT NULL,
  `read_only` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_filemounts`
--

LOCK TABLES `sys_filemounts` WRITE;
/*!40000 ALTER TABLE `sys_filemounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_filemounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_history`
--

DROP TABLE IF EXISTS `sys_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_history` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `actiontype` smallint(6) NOT NULL DEFAULT 0,
  `usertype` varchar(2) NOT NULL DEFAULT 'BE',
  `userid` int(10) unsigned DEFAULT NULL,
  `originaluserid` int(10) unsigned DEFAULT NULL,
  `recuid` int(11) NOT NULL DEFAULT 0,
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `history_data` mediumtext DEFAULT NULL,
  `workspace` int(11) DEFAULT 0,
  `correlation_id` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `recordident_1` (`tablename`(100),`recuid`),
  KEY `recordident_2` (`tablename`(100),`tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_history`
--

LOCK TABLES `sys_history` WRITE;
/*!40000 ALTER TABLE `sys_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_http_report`
--

DROP TABLE IF EXISTS `sys_http_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_http_report` (
  `uuid` varchar(36) NOT NULL,
  `status` smallint(5) unsigned NOT NULL DEFAULT 0,
  `created` int(10) unsigned NOT NULL,
  `changed` int(10) unsigned NOT NULL,
  `type` varchar(32) NOT NULL,
  `scope` varchar(32) NOT NULL,
  `request_time` bigint(20) unsigned NOT NULL,
  `meta` mediumtext DEFAULT NULL,
  `details` mediumtext DEFAULT NULL,
  `summary` varchar(40) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `type_scope` (`type`,`scope`),
  KEY `created` (`created`),
  KEY `changed` (`changed`),
  KEY `request_time` (`request_time`),
  KEY `summary_created` (`summary`,`created`),
  KEY `all_conditions` (`type`,`status`,`scope`,`summary`,`request_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_http_report`
--

LOCK TABLES `sys_http_report` WRITE;
/*!40000 ALTER TABLE `sys_http_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_http_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_lockedrecords`
--

DROP TABLE IF EXISTS `sys_lockedrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_lockedrecords` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `record_table` varchar(255) NOT NULL DEFAULT '',
  `record_uid` int(11) NOT NULL DEFAULT 0,
  `record_pid` int(11) NOT NULL DEFAULT 0,
  `username` varchar(50) NOT NULL DEFAULT '',
  `feuserid` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`tstamp`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_lockedrecords`
--

LOCK TABLES `sys_lockedrecords` WRITE;
/*!40000 ALTER TABLE `sys_lockedrecords` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_lockedrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `userid` int(10) unsigned NOT NULL DEFAULT 0,
  `action` smallint(5) unsigned NOT NULL DEFAULT 0,
  `recuid` int(10) unsigned NOT NULL DEFAULT 0,
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `recpid` int(11) NOT NULL DEFAULT 0,
  `error` smallint(5) unsigned NOT NULL DEFAULT 0,
  `details` text DEFAULT NULL,
  `type` smallint(5) unsigned NOT NULL DEFAULT 0,
  `channel` varchar(20) NOT NULL DEFAULT 'default',
  `details_nr` smallint(6) NOT NULL DEFAULT 0,
  `IP` varchar(39) NOT NULL DEFAULT '',
  `log_data` text DEFAULT NULL,
  `event_pid` int(11) NOT NULL DEFAULT -1,
  `workspace` int(11) NOT NULL DEFAULT 0,
  `NEWid` varchar(30) NOT NULL DEFAULT '',
  `request_id` varchar(13) NOT NULL DEFAULT '',
  `time_micro` double NOT NULL DEFAULT 0,
  `component` varchar(255) NOT NULL DEFAULT '',
  `level` varchar(10) NOT NULL DEFAULT 'info',
  `message` text DEFAULT NULL,
  `data` text DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`event_pid`),
  KEY `recuidIdx` (`recuid`),
  KEY `user_auth` (`type`,`action`,`tstamp`),
  KEY `request` (`request_id`),
  KEY `combined_1` (`tstamp`,`type`,`userid`),
  KEY `errorcount` (`tstamp`,`error`),
  KEY `channel` (`channel`),
  KEY `level` (`level`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_messenger_messages`
--

DROP TABLE IF EXISTS `sys_messenger_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_messenger_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `queue_name` (`queue_name`),
  KEY `available_at` (`available_at`),
  KEY `delivered_at` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_messenger_messages`
--

LOCK TABLES `sys_messenger_messages` WRITE;
/*!40000 ALTER TABLE `sys_messenger_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_messenger_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_news`
--

DROP TABLE IF EXISTS `sys_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_news` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` mediumtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_news`
--

LOCK TABLES `sys_news` WRITE;
/*!40000 ALTER TABLE `sys_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_note`
--

DROP TABLE IF EXISTS `sys_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_note` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `cruser` int(10) unsigned NOT NULL DEFAULT 0,
  `message` text DEFAULT NULL,
  `category` smallint(5) unsigned NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 0,
  `personal` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_note`
--

LOCK TABLES `sys_note` WRITE;
/*!40000 ALTER TABLE `sys_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_preview`
--

DROP TABLE IF EXISTS `sys_preview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_preview` (
  `keyword` varchar(32) NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `endtime` int(11) NOT NULL DEFAULT 0,
  `config` text DEFAULT NULL,
  PRIMARY KEY (`keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_preview`
--

LOCK TABLES `sys_preview` WRITE;
/*!40000 ALTER TABLE `sys_preview` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_preview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_redirect`
--

DROP TABLE IF EXISTS `sys_redirect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_redirect` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `updatedon` int(10) unsigned NOT NULL DEFAULT 0,
  `createdon` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `disabled` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `source_host` varchar(255) NOT NULL DEFAULT '',
  `source_path` varchar(2048) NOT NULL DEFAULT '',
  `creation_type` int(10) unsigned NOT NULL DEFAULT 0,
  `target` varchar(2048) NOT NULL DEFAULT '',
  `target_statuscode` int(11) NOT NULL DEFAULT 307,
  `hitcount` int(11) NOT NULL DEFAULT 0,
  `lasthiton` int(11) NOT NULL DEFAULT 0,
  `force_https` smallint(5) unsigned NOT NULL DEFAULT 0,
  `keep_query_parameters` smallint(5) unsigned NOT NULL DEFAULT 0,
  `respect_query_parameters` smallint(5) unsigned NOT NULL DEFAULT 0,
  `disable_hitcount` smallint(5) unsigned NOT NULL DEFAULT 0,
  `is_regexp` smallint(5) unsigned NOT NULL DEFAULT 0,
  `protected` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `index_source` (`source_host`(80),`source_path`(80)),
  KEY `parent` (`pid`,`deleted`,`disabled`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_redirect`
--

LOCK TABLES `sys_redirect` WRITE;
/*!40000 ALTER TABLE `sys_redirect` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_redirect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_refindex`
--

DROP TABLE IF EXISTS `sys_refindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_refindex` (
  `hash` varchar(32) NOT NULL DEFAULT '',
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `recuid` int(11) NOT NULL DEFAULT 0,
  `field` varchar(64) NOT NULL DEFAULT '',
  `flexpointer` varchar(255) NOT NULL DEFAULT '',
  `softref_key` varchar(30) NOT NULL DEFAULT '',
  `softref_id` varchar(40) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `workspace` int(11) NOT NULL DEFAULT 0,
  `ref_table` varchar(255) NOT NULL DEFAULT '',
  `ref_uid` int(11) NOT NULL DEFAULT 0,
  `ref_string` varchar(1024) NOT NULL DEFAULT '',
  PRIMARY KEY (`hash`),
  KEY `lookup_rec` (`tablename`(100),`recuid`),
  KEY `lookup_uid` (`ref_table`(100),`ref_uid`),
  KEY `lookup_string` (`ref_string`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_refindex`
--

LOCK TABLES `sys_refindex` WRITE;
/*!40000 ALTER TABLE `sys_refindex` DISABLE KEYS */;
INSERT INTO `sys_refindex` VALUES ('011f95e0a644915f26910754eb06ea9e','tt_content',19,'l18n_parent','','','',0,0,'tt_content',20,''),('06f9dc450a64744c172a7dc04d07c613','pages',16,'l10n_parent','','','',0,0,'pages',27,''),('0c486d9c3370d687a34affdd05c05dd2','pages',19,'l10n_parent','','','',0,0,'pages',25,''),('104ae12c79381dc3ac688bd5b3525b5b','pages',7,'l10n_parent','','','',0,0,'pages',9,''),('140310ac0096e1f7e1ee643e7ca30784','pages',20,'l10n_parent','','','',0,1,'pages',13,''),('24d47b29aa969cf4db8635e76dd1c386','sys_file',3,'storage','','','',0,0,'sys_file_storage',1,''),('2ea066df56c98e9052ceb51e2c41a0a4','pages',18,'l10n_parent','','','',0,0,'pages',26,''),('474664a330eb66cea1fa84af2383b4b5','pages',2,'l10n_parent','','','',0,0,'pages',13,''),('4e2057c07b6a3d2ea6504c3b72bb05a2','pages',15,'l10n_parent','','','',0,1,'pages',9,''),('517563a8f2de101b9e46b7b20734d836','tt_content',25,'l18n_parent','','','',0,0,'tt_content',27,''),('52e78d98b9904f2826318cc1b669d83d','pages',20,'l10n_parent','','','',0,0,'pages',23,''),('5bfebe8732200ce0a5d9b6db1006d8ed','pages',21,'l10n_parent','','','',0,0,'pages',23,''),('5ddff3b6b6ecbc4c0395604d474b9949','pages',15,'l10n_parent','','','',0,0,'pages',27,''),('605ec3a7ce39e09fc56da7b042f890b6','pages',8,'l10n_parent','','','',0,0,'pages',9,''),('64a5ac9424d669c6e0bbfd84f07f6df6','pages',19,'l10n_parent','','','',0,1,'pages',13,''),('66ce8153cafbea6d350c00c9aa0f4e63','pages',22,'l10n_parent','','','',0,0,'pages',23,''),('69bfae8852b262bf905d7cb5760bb046','tt_content',15,'l18n_parent','','','',0,1,'tt_content',13,''),('6aa9fd8604a5a0df741c19ffd880c76e','tt_content',10,'l18n_parent','','','',0,0,'tt_content',13,''),('728598ceb8c9109be564324ffb8d3145','pages',23,'l10n_parent','','','',0,1,'pages',12,''),('729a40aa9c8d75882c49c2e6308ee168','tt_content',16,'l18n_parent','','','',0,1,'tt_content',13,''),('73557cc37cd03e859e0ffe13a32a8f24','pages',25,'l10n_parent','','','',0,1,'pages',11,''),('745a224f71139978f472a1abdcf811d3','pages',4,'l10n_parent','','','',0,0,'pages',12,''),('793ebc0e4daed4ce339911888173a4df','pages',17,'l10n_parent','','','',0,1,'pages',9,''),('8723b1f3dacf539214adf637a97541fa','pages',3,'l10n_parent','','','',0,0,'pages',13,''),('9526d8cf5bdcd4a2182a97b8ac616588','tt_content',11,'l18n_parent','','','',0,0,'tt_content',13,''),('9afc1b400c72d1a0156f0c54410de30d','pages',5,'l10n_parent','','','',0,0,'pages',11,''),('9fdc47556a15fd04e626b359c06e71fe','pages',17,'l10n_parent','','','',0,0,'pages',27,''),('a1271e4ab59094c2b650b7f73a771540','pages',21,'l10n_parent','','','',0,1,'pages',13,''),('a4d0d36fac6f4d4932fb57281314f194','tt_content',21,'l18n_parent','','','',0,1,'tt_content',6,''),('bab37143de5339e474516691bf0c5857','sys_file',4,'storage','','','',0,0,'sys_file_storage',1,''),('cf1e5e1e880a853a90f47fdb1227dd8e','tt_content',12,'l18n_parent','','','',0,0,'tt_content',13,''),('d09fa309af58b69ba98700399a00892c','tt_content',5,'l18n_parent','','','',0,0,'tt_content',6,''),('dcb8d2e1493de079fa2af700cb5bda75','pages',6,'l10n_parent','','','',0,0,'pages',9,''),('df381b5feb329b29146790b24792d4af','pages',1,'l10n_parent','','','',0,0,'pages',13,''),('eaf6e55bcd1034388cebbf04b87e97f9','tt_content',17,'l18n_parent','','','',0,1,'tt_content',13,''),('f7082d4400415c6de2532c7e5afa7997','tt_content',26,'l18n_parent','','','',0,0,'tt_content',27,''),('fb3baf4a8786b7438d0a7b84b554ff3a','pages',16,'l10n_parent','','','',0,1,'pages',9,''),('fbf6bbe0a1b89fa3375263b6d1c1beab','tt_content',24,'l18n_parent','','','',0,0,'tt_content',27,'');
/*!40000 ALTER TABLE `sys_refindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_registry`
--

DROP TABLE IF EXISTS `sys_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_registry` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_namespace` varchar(128) NOT NULL DEFAULT '',
  `entry_key` varchar(128) NOT NULL DEFAULT '',
  `entry_value` mediumblob DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `entry_identifier` (`entry_namespace`,`entry_key`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_registry`
--

LOCK TABLES `sys_registry` WRITE;
/*!40000 ALTER TABLE `sys_registry` DISABLE KEYS */;
INSERT INTO `sys_registry` VALUES (1,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendGroupsExplicitAllowDenyMigration','i:1;'),(2,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendModulePermissionMigration','i:1;'),(3,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FeLoginModeExtractionUpdate','i:1;'),(4,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateSiteSettingsConfigUpdate','i:1;'),(5,'installUpdate','TYPO3\\CMS\\Install\\Updates\\PagesRecyclerDoktypeMigration','i:1;'),(6,'installUpdate','TYPO3\\CMS\\Install\\Updates\\PasswordPolicyForFrontendUsersUpdate','i:1;'),(7,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SysFileCollectionIdentifierMigration','i:1;'),(8,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SysFileMountIdentifierMigration','i:1;'),(9,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SysLogSerializationUpdate','i:1;'),(10,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SysTemplateNoWorkspaceMigration','i:1;'),(11,'installUpdateRows','rowUpdatersDone','a:1:{i:0;s:69:\"TYPO3\\CMS\\Install\\Updates\\RowUpdater\\SysRedirectRootPageMoveMigration\";}'),(12,'core','formProtectionSessionToken:1','s:64:\"729aacc9146c5d8cd07453ab0766e0b94f14d176f0eabaa6c87fd5f13adb331f\";'),(13,'extensionDataImport','typo3/cms-core/ext_tables_static+adt.sql','s:0:\"\";'),(14,'extensionDataImport','typo3/cms-scheduler/ext_tables_static+adt.sql','s:0:\"\";'),(15,'extensionDataImport','typo3/cms-extbase/ext_tables_static+adt.sql','s:0:\"\";'),(16,'extensionDataImport','typo3/cms-fluid/ext_tables_static+adt.sql','s:0:\"\";'),(17,'extensionDataImport','typo3/cms-install/ext_tables_static+adt.sql','s:0:\"\";'),(18,'extensionDataImport','typo3/cms-backend/ext_tables_static+adt.sql','s:0:\"\";'),(19,'extensionDataImport','typo3/cms-frontend/ext_tables_static+adt.sql','s:0:\"\";'),(20,'extensionDataImport','typo3/cms-adminpanel/ext_tables_static+adt.sql','s:0:\"\";'),(21,'extensionDataImport','typo3/cms-dashboard/ext_tables_static+adt.sql','s:0:\"\";'),(22,'extensionDataImport','typo3/cms-filelist/ext_tables_static+adt.sql','s:0:\"\";'),(23,'extensionDataImport','typo3/cms-impexp/ext_tables_static+adt.sql','s:0:\"\";'),(24,'extensionDataImport','typo3/cms-lowlevel/ext_tables_static+adt.sql','s:0:\"\";'),(25,'extensionDataImport','typo3/cms-form/ext_tables_static+adt.sql','s:0:\"\";'),(26,'extensionDataImport','typo3/cms-fluid-styled-content/ext_tables_static+adt.sql','s:0:\"\";'),(27,'extensionDataImport','typo3/cms-reports/ext_tables_static+adt.sql','s:0:\"\";'),(28,'extensionDataImport','typo3/cms-redirects/ext_tables_static+adt.sql','s:0:\"\";'),(29,'extensionDataImport','typo3/cms-seo/ext_tables_static+adt.sql','s:0:\"\";'),(30,'extensionDataImport','typo3/cms-info/ext_tables_static+adt.sql','s:0:\"\";'),(31,'extensionDataImport','typo3/cms-linkvalidator/ext_tables_static+adt.sql','s:0:\"\";'),(32,'extensionDataImport','typo3/cms-indexed-search/ext_tables_static+adt.sql','s:0:\"\";'),(33,'extensionDataImport','typo3/cms-recycler/ext_tables_static+adt.sql','s:0:\"\";'),(34,'extensionDataImport','typo3/cms-setup/ext_tables_static+adt.sql','s:0:\"\";'),(35,'extensionDataImport','typo3/cms-rte-ckeditor/ext_tables_static+adt.sql','s:0:\"\";'),(36,'extensionDataImport','typo3/cms-belog/ext_tables_static+adt.sql','s:0:\"\";'),(37,'extensionDataImport','typo3/cms-beuser/ext_tables_static+adt.sql','s:0:\"\";'),(38,'extensionDataImport','typo3/cms-extensionmanager/ext_tables_static+adt.sql','s:0:\"\";'),(39,'extensionDataImport','typo3/cms-felogin/ext_tables_static+adt.sql','s:0:\"\";'),(40,'extensionDataImport','typo3/cms-filemetadata/ext_tables_static+adt.sql','s:0:\"\";'),(41,'extensionDataImport','typo3/cms-opendocs/ext_tables_static+adt.sql','s:0:\"\";'),(42,'extensionDataImport','typo3/cms-sys-note/ext_tables_static+adt.sql','s:0:\"\";'),(43,'extensionDataImport','typo3/cms-t3editor/ext_tables_static+adt.sql','s:0:\"\";'),(44,'extensionDataImport','typo3/cms-tstemplate/ext_tables_static+adt.sql','s:0:\"\";'),(45,'extensionDataImport','typo3/cms-viewpage/ext_tables_static+adt.sql','s:0:\"\";'),(46,'extensionDataImport','typo3/cms-workspaces/ext_tables_static+adt.sql','s:0:\"\";'),(47,'extensionDataImport','bk2k/bootstrap-package/ext_tables_static+adt.sql','s:0:\"\";');
/*!40000 ALTER TABLE `sys_registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_template`
--

DROP TABLE IF EXISTS `sys_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_template` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `include_static_file` text DEFAULT NULL,
  `constants` text DEFAULT NULL,
  `config` text DEFAULT NULL,
  `basedOn` tinytext DEFAULT NULL,
  `static_file_mode` smallint(5) unsigned NOT NULL DEFAULT 0,
  `root` smallint(5) unsigned NOT NULL DEFAULT 0,
  `clear` smallint(5) unsigned NOT NULL DEFAULT 0,
  `includeStaticAfterBasedOn` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `roottemplate` (`deleted`,`hidden`,`root`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_template`
--

LOCK TABLES `sys_template` WRITE;
/*!40000 ALTER TABLE `sys_template` DISABLE KEYS */;
INSERT INTO `sys_template` VALUES (3,23,1700226539,1700226539,0,0,0,0,256,NULL,0,'NEW SITE','EXT:bootstrap_package/Configuration/TypoScript',NULL,'','',0,1,3,0,1),(4,9,1700229362,1700229362,0,0,0,0,256,NULL,0,'NEW SITE','EXT:bootstrap_package/Configuration/TypoScript',NULL,'','',0,1,3,0,1);
/*!40000 ALTER TABLE `sys_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_template_root`
--

DROP TABLE IF EXISTS `sys_template_root`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_template_root` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `include_static_file` text DEFAULT NULL,
  `constants` text DEFAULT NULL,
  `config` text DEFAULT NULL,
  `basedOn` tinytext DEFAULT NULL,
  `static_file_mode` smallint(5) unsigned NOT NULL DEFAULT 0,
  `root` smallint(5) unsigned NOT NULL DEFAULT 0,
  `clear` smallint(5) unsigned NOT NULL DEFAULT 0,
  `includeStaticAfterBasedOn` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `roottemplate` (`deleted`,`hidden`,`root`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_template_root`
--

LOCK TABLES `sys_template_root` WRITE;
/*!40000 ALTER TABLE `sys_template_root` DISABLE KEYS */;
INSERT INTO `sys_template_root` VALUES (1,1,1694604347,1694604330,0,0,0,0,256,NULL,0,'NEW SITE','EXT:bootstrap_package/Configuration/TypoScript',NULL,'','',0,1,3,0,0),(2,2,1699001725,1694681303,1,0,0,0,256,NULL,0,'+ext',NULL,'\npage.logo.file = \npage.logo.fileInverted = ',NULL,'',0,0,0,0,0);
/*!40000 ALTER TABLE `sys_template_root` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_workspace`
--

DROP TABLE IF EXISTS `sys_workspace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_workspace` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `title` varchar(30) NOT NULL DEFAULT '',
  `adminusers` longtext DEFAULT NULL,
  `members` longtext DEFAULT NULL,
  `db_mountpoints` text DEFAULT NULL,
  `file_mountpoints` text DEFAULT NULL,
  `previewlink_lifetime` int(11) NOT NULL DEFAULT 0,
  `custom_stages` int(10) unsigned NOT NULL DEFAULT 0,
  `stagechg_notification` smallint(6) NOT NULL DEFAULT 0,
  `edit_notification_defaults` longtext DEFAULT NULL,
  `publish_notification_defaults` longtext DEFAULT NULL,
  `execute_notification_defaults` longtext DEFAULT NULL,
  `publish_time` int(11) NOT NULL DEFAULT 0,
  `freeze` smallint(5) unsigned NOT NULL DEFAULT 0,
  `live_edit` smallint(5) unsigned NOT NULL DEFAULT 0,
  `publish_access` smallint(5) unsigned NOT NULL DEFAULT 0,
  `edit_allow_notificaton_settings` smallint(5) unsigned NOT NULL DEFAULT 0,
  `edit_notification_preselection` smallint(5) unsigned NOT NULL DEFAULT 0,
  `publish_allow_notificaton_settings` smallint(5) unsigned NOT NULL DEFAULT 0,
  `publish_notification_preselection` smallint(5) unsigned NOT NULL DEFAULT 0,
  `execute_allow_notificaton_settings` smallint(5) unsigned NOT NULL DEFAULT 0,
  `execute_notification_preselection` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_workspace`
--

LOCK TABLES `sys_workspace` WRITE;
/*!40000 ALTER TABLE `sys_workspace` DISABLE KEYS */;
INSERT INTO `sys_workspace` VALUES (1,0,1700573438,0,'','DEV','','','',NULL,48,0,0,'','','',0,0,0,0,3,2,3,1,3,3);
/*!40000 ALTER TABLE `sys_workspace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_workspace_stage`
--

DROP TABLE IF EXISTS `sys_workspace_stage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_workspace_stage` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `title` varchar(30) NOT NULL DEFAULT '',
  `responsible_persons` longtext DEFAULT NULL,
  `default_mailcomment` text DEFAULT NULL,
  `parentid` int(10) unsigned NOT NULL DEFAULT 0,
  `notification_defaults` longtext DEFAULT NULL,
  `allow_notificaton_settings` smallint(5) unsigned NOT NULL DEFAULT 0,
  `notification_preselection` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_workspace_stage`
--

LOCK TABLES `sys_workspace_stage` WRITE;
/*!40000 ALTER TABLE `sys_workspace_stage` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_workspace_stage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tt_content`
--

DROP TABLE IF EXISTS `tt_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tt_content` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rowDescription` text DEFAULT NULL,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `editlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l18n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l18n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `CType` varchar(255) NOT NULL DEFAULT '',
  `header` varchar(255) NOT NULL DEFAULT '',
  `header_position` varchar(255) NOT NULL DEFAULT '',
  `bodytext` mediumtext DEFAULT NULL,
  `bullets_type` smallint(5) unsigned NOT NULL DEFAULT 0,
  `uploads_type` smallint(5) unsigned NOT NULL DEFAULT 0,
  `imagewidth` int(10) unsigned NOT NULL DEFAULT 0,
  `imageorient` smallint(5) unsigned NOT NULL DEFAULT 0,
  `imagecols` smallint(5) unsigned NOT NULL DEFAULT 0,
  `layout` int(10) unsigned NOT NULL DEFAULT 0,
  `frame_class` varchar(60) NOT NULL DEFAULT 'default',
  `cols` int(10) unsigned NOT NULL DEFAULT 0,
  `space_before_class` varchar(60) NOT NULL DEFAULT '',
  `space_after_class` varchar(60) NOT NULL DEFAULT '',
  `records` text DEFAULT NULL,
  `pages` text DEFAULT NULL,
  `colPos` int(10) unsigned NOT NULL DEFAULT 0,
  `subheader` varchar(255) NOT NULL DEFAULT '',
  `header_link` varchar(2048) NOT NULL DEFAULT '',
  `header_layout` varchar(30) NOT NULL DEFAULT '0',
  `list_type` varchar(255) NOT NULL DEFAULT '',
  `file_collections` text DEFAULT NULL,
  `filelink_sorting` varchar(64) NOT NULL DEFAULT '',
  `filelink_sorting_direction` varchar(4) NOT NULL DEFAULT '',
  `target` varchar(30) NOT NULL DEFAULT '',
  `recursive` smallint(5) unsigned NOT NULL DEFAULT 0,
  `imageheight` int(10) unsigned NOT NULL DEFAULT 0,
  `pi_flexform` mediumtext DEFAULT NULL,
  `accessibility_title` varchar(30) NOT NULL DEFAULT '',
  `accessibility_bypass_text` varchar(30) NOT NULL DEFAULT '',
  `category_field` varchar(64) NOT NULL DEFAULT '',
  `table_class` varchar(60) NOT NULL DEFAULT '',
  `table_caption` varchar(255) DEFAULT NULL,
  `table_delimiter` smallint(5) unsigned NOT NULL DEFAULT 0,
  `table_enclosure` smallint(5) unsigned NOT NULL DEFAULT 0,
  `table_header_position` smallint(5) unsigned NOT NULL DEFAULT 0,
  `categories` int(10) unsigned NOT NULL DEFAULT 0,
  `selected_categories` longtext DEFAULT NULL,
  `date` int(11) NOT NULL DEFAULT 0,
  `image` int(10) unsigned NOT NULL DEFAULT 0,
  `assets` int(10) unsigned NOT NULL DEFAULT 0,
  `media` int(10) unsigned NOT NULL DEFAULT 0,
  `imageborder` smallint(5) unsigned NOT NULL DEFAULT 0,
  `image_zoom` smallint(5) unsigned NOT NULL DEFAULT 0,
  `filelink_size` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sectionIndex` smallint(5) unsigned NOT NULL DEFAULT 0,
  `linkToTop` smallint(5) unsigned NOT NULL DEFAULT 0,
  `accessibility_bypass` smallint(5) unsigned NOT NULL DEFAULT 0,
  `table_tfoot` smallint(5) unsigned NOT NULL DEFAULT 0,
  `uploads_description` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT 0,
  `header_class` varchar(60) NOT NULL DEFAULT '',
  `subheader_class` varchar(60) NOT NULL DEFAULT '',
  `teaser` text DEFAULT NULL,
  `aspect_ratio` varchar(255) NOT NULL DEFAULT '1.3333333333333',
  `items_per_page` int(10) unsigned DEFAULT 10,
  `readmore_label` varchar(255) NOT NULL DEFAULT '',
  `quote_source` varchar(255) NOT NULL DEFAULT '',
  `quote_link` varchar(1024) NOT NULL DEFAULT '',
  `panel_class` varchar(60) NOT NULL DEFAULT 'default',
  `file_folder` text DEFAULT NULL,
  `icon` varchar(255) NOT NULL DEFAULT '',
  `icon_set` varchar(255) NOT NULL DEFAULT '',
  `icon_file` int(10) unsigned DEFAULT 0,
  `icon_position` varchar(255) NOT NULL DEFAULT '',
  `icon_size` varchar(60) NOT NULL DEFAULT 'default',
  `icon_type` varchar(60) NOT NULL DEFAULT 'default',
  `icon_color` varchar(255) NOT NULL DEFAULT '',
  `icon_background` varchar(255) NOT NULL DEFAULT '',
  `external_media_title` varchar(255) NOT NULL DEFAULT '',
  `external_media_source` varchar(1024) NOT NULL DEFAULT '',
  `external_media_ratio` varchar(10) NOT NULL DEFAULT '',
  `tx_bootstrappackage_card_group_item` int(10) unsigned DEFAULT 0,
  `tx_bootstrappackage_carousel_item` int(10) unsigned DEFAULT 0,
  `tx_bootstrappackage_accordion_item` int(10) unsigned DEFAULT 0,
  `tx_bootstrappackage_icon_group_item` int(10) unsigned DEFAULT 0,
  `tx_bootstrappackage_tab_item` int(10) unsigned DEFAULT 0,
  `tx_bootstrappackage_timeline_item` int(10) unsigned DEFAULT 0,
  `frame_layout` varchar(255) NOT NULL DEFAULT 'default',
  `frame_options` varchar(255) NOT NULL DEFAULT '',
  `background_color_class` varchar(255) NOT NULL DEFAULT '',
  `background_image` int(10) unsigned DEFAULT 0,
  `background_image_options` mediumtext DEFAULT NULL,
  `subitems_header_layout` int(10) unsigned NOT NULL DEFAULT 4,
  `tx_styleguide_containsdemo` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tt_content`
--

LOCK TABLES `tt_content` WRITE;
/*!40000 ALTER TABLE `tt_content` DISABLE KEYS */;
INSERT INTO `tt_content` VALUES (1,'',13,1700229362,1700229362,0,0,0,0,'',256,0,0,0,0,NULL,0,'',0,0,0,0,'header','English content','',NULL,0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,9,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"behaviour\">\n                    <value index=\"vDEF\">cover</value>\n                </field>\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',2,''),(2,'',13,1700229362,1700229362,0,0,0,0,'',128,0,1,0,0,NULL,0,'',0,0,0,0,'header','Deutsch, freier Modus','',NULL,0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,10,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"behaviour\">\n                    <value index=\"vDEF\">cover</value>\n                </field>\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',2,''),(3,'',13,1700229362,1700229362,0,0,0,0,'',64,0,2,0,0,NULL,0,'',0,0,0,0,'header','Francais free mode (French)','',NULL,0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,11,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"behaviour\">\n                    <value index=\"vDEF\">cover</value>\n                </field>\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',2,''),(4,'',13,1700229362,1700229362,0,0,0,0,'',32,0,3,0,0,NULL,0,'',0,0,0,0,'header','Dansk free mode (Danish)','',NULL,0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,12,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"behaviour\">\n                    <value index=\"vDEF\">cover</value>\n                </field>\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',2,''),(5,'',12,1700229362,1700229362,0,0,0,0,'',256,0,1,6,6,NULL,7,'{\"l18n_parent\":\"\",\"l10n_source\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"icon_set\":\"\",\"icon\":\"\",\"icon_file\":\"\",\"header_class\":\"\",\"subheader_class\":\"\",\"frame_layout\":\"\",\"frame_options\":\"\",\"background_color_class\":\"\",\"background_image\":\"\",\"background_image_options\":\"\",\"aspect_ratio\":\"\",\"items_per_page\":\"\"}',0,0,0,0,'header','Nur Englisch + Deutsch (Deutsch)','',NULL,0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,8,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"behaviour\">\n                    <value index=\"vDEF\">cover</value>\n                </field>\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',2,''),(6,'',12,1700229362,1700229362,0,0,0,0,'',128,0,0,0,0,NULL,0,'',0,0,0,0,'header','Only english + german (English)','',NULL,0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,7,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"behaviour\">\n                    <value index=\"vDEF\">cover</value>\n                </field>\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',2,''),(7,'',11,1700229362,1700229362,0,0,0,0,'',256,0,1,0,0,NULL,0,'',0,0,0,0,'header','Nur deutscher Inhalt (German)','',NULL,0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,13,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"behaviour\">\n                    <value index=\"vDEF\">cover</value>\n                </field>\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',2,''),(8,'',11,1700229362,1700229362,0,0,0,0,'',128,0,0,0,0,NULL,0,'',0,0,0,0,'header','This should not be visible.','',NULL,0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,14,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"behaviour\">\n                    <value index=\"vDEF\">cover</value>\n                </field>\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',2,''),(9,'',10,1700229362,1700229362,0,0,0,0,'',256,0,0,0,0,NULL,0,'',0,0,0,0,'header','Only english (Default) content here.','',NULL,0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,6,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"behaviour\">\n                    <value index=\"vDEF\">cover</value>\n                </field>\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',2,''),(10,'',9,1700229362,1700229362,0,0,0,0,'',256,0,1,13,13,NULL,1,'{\"l18n_parent\":\"\",\"l10n_source\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"icon_set\":\"\",\"icon\":\"\",\"icon_file\":\"\",\"header_class\":\"\",\"subheader_class\":\"\",\"frame_layout\":\"\",\"frame_options\":\"\",\"background_color_class\":\"\",\"background_image\":\"\",\"background_image_options\":\"\",\"aspect_ratio\":\"\",\"items_per_page\":\"\"}',0,0,0,0,'text','Danke für die Arbeit (German)','','<p>Tolle Leistung.</p>',0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,3,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,NULL,2,''),(11,'',9,1700229362,1700229362,0,0,0,0,'',128,0,2,13,13,NULL,1,'{\"l18n_parent\":\"\",\"l10n_source\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"icon_set\":\"\",\"icon\":\"\",\"icon_file\":\"\",\"header_class\":\"\",\"subheader_class\":\"\",\"frame_layout\":\"\",\"frame_options\":\"\",\"background_color_class\":\"\",\"background_image\":\"\",\"background_image_options\":\"\",\"aspect_ratio\":\"\",\"items_per_page\":\"\"}',0,0,0,0,'text','Merci pour le travail (French)','','<p>C\'est la vie.</p>',0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,4,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,NULL,2,''),(12,'',9,1700229362,1700229362,0,0,0,0,'',64,0,3,13,13,NULL,1,'{\"l18n_parent\":\"\",\"l10n_source\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"icon_set\":\"\",\"icon\":\"\",\"icon_file\":\"\",\"header_class\":\"\",\"subheader_class\":\"\",\"frame_layout\":\"\",\"frame_options\":\"\",\"background_color_class\":\"\",\"background_image\":\"\",\"background_image_options\":\"\",\"aspect_ratio\":\"\",\"items_per_page\":\"\"}',0,0,0,0,'text',' Tak for arbejdet (Danish)','','<p>Tuk.</p>',0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,5,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,NULL,2,''),(13,'',9,1700229362,1700229362,0,0,0,0,'',32,0,0,0,0,NULL,0,'',0,0,0,0,'text','Thank you for your work.','','<p>Much appreciated.</p>',0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,1,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,NULL,2,''),(14,'',9,1700573600,1700573600,0,0,0,0,'',32,0,0,0,0,NULL,13,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_class\":\"\",\"header_position\":\"\",\"date\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"subheader_class\":\"\",\"bodytext\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"frame_layout\":\"\",\"frame_options\":\"\",\"background_color_class\":\"\",\"background_image\":\"\",\"background_image_options\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',13,1,0,0,'text','Thank you for your work. (workspace)','','<p>Much appreciated.</p>',0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,1,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"behaviour\">\n                    <value index=\"vDEF\">cover</value>\n                </field>\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',2,''),(15,'',9,1700573708,1700573600,0,0,0,0,'',256,0,1,13,13,NULL,10,'{\"l18n_parent\":\"0\",\"l10n_source\":\"\",\"starttime\":\"0\",\"endtime\":\"0\",\"icon_set\":\"\",\"icon\":\"\",\"icon_file\":\"0\",\"header_class\":\"\",\"subheader_class\":\"\",\"frame_layout\":\"default\",\"frame_options\":\"\",\"background_color_class\":\"none\",\"background_image\":\"0\",\"background_image_options\":\"<?xml version=\\\"1.0\\\" encoding=\\\"utf-8\\\" standalone=\\\"yes\\\" ?>\\n<T3FlexForms>\\n    <data>\\n        <sheet index=\\\"sDEF\\\">\\n            <language index=\\\"lDEF\\\">\\n                <field index=\\\"behaviour\\\">\\n                    <value index=\\\"vDEF\\\">cover<\\/value>\\n                <\\/field>\\n                <field index=\\\"parallax\\\">\\n                    <value index=\\\"vDEF\\\">0<\\/value>\\n                <\\/field>\\n                <field index=\\\"fade\\\">\\n                    <value index=\\\"vDEF\\\">0<\\/value>\\n                <\\/field>\\n                <field index=\\\"filter\\\">\\n                    <value index=\\\"vDEF\\\"><\\/value>\\n                <\\/field>\\n            <\\/language>\\n        <\\/sheet>\\n    <\\/data>\\n<\\/T3FlexForms>\",\"aspect_ratio\":\"1.3333333333333\",\"items_per_page\":\"10\",\"CType\":\"text\",\"colPos\":\"0\",\"header\":\"Thank you for your work. (workspace)\",\"header_layout\":\"0\",\"header_position\":\"\",\"date\":\"0\",\"header_link\":\"\",\"subheader\":\"\",\"bodytext\":\"<p>Much appreciated.<\\/p>\",\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"1\",\"linkToTop\":\"0\",\"sys_language_uid\":\"0\",\"hidden\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"categories\":\"0\",\"rowDescription\":\"\"}',10,1,0,0,'text','Danke für die Arbeit (German) (workspace)','','<p>Tolle Leistung.</p>',0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,3,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"behaviour\">\n                    <value index=\"vDEF\">cover</value>\n                </field>\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',2,''),(16,'',9,1700573716,1700573600,0,0,0,0,'',128,0,2,13,13,NULL,11,'{\"l18n_parent\":\"0\",\"l10n_source\":\"\",\"starttime\":\"0\",\"endtime\":\"0\",\"icon_set\":\"\",\"icon\":\"\",\"icon_file\":\"0\",\"header_class\":\"\",\"subheader_class\":\"\",\"frame_layout\":\"default\",\"frame_options\":\"\",\"background_color_class\":\"none\",\"background_image\":\"0\",\"background_image_options\":\"<?xml version=\\\"1.0\\\" encoding=\\\"utf-8\\\" standalone=\\\"yes\\\" ?>\\n<T3FlexForms>\\n    <data>\\n        <sheet index=\\\"sDEF\\\">\\n            <language index=\\\"lDEF\\\">\\n                <field index=\\\"behaviour\\\">\\n                    <value index=\\\"vDEF\\\">cover<\\/value>\\n                <\\/field>\\n                <field index=\\\"parallax\\\">\\n                    <value index=\\\"vDEF\\\">0<\\/value>\\n                <\\/field>\\n                <field index=\\\"fade\\\">\\n                    <value index=\\\"vDEF\\\">0<\\/value>\\n                <\\/field>\\n                <field index=\\\"filter\\\">\\n                    <value index=\\\"vDEF\\\"><\\/value>\\n                <\\/field>\\n            <\\/language>\\n        <\\/sheet>\\n    <\\/data>\\n<\\/T3FlexForms>\",\"aspect_ratio\":\"1.3333333333333\",\"items_per_page\":\"10\",\"CType\":\"text\",\"colPos\":\"0\",\"header\":\"Thank you for your work. (workspace)\",\"header_layout\":\"0\",\"header_position\":\"\",\"date\":\"0\",\"header_link\":\"\",\"subheader\":\"\",\"bodytext\":\"<p>Much appreciated.<\\/p>\",\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"1\",\"linkToTop\":\"0\",\"sys_language_uid\":\"0\",\"hidden\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"categories\":\"0\",\"rowDescription\":\"\"}',11,1,0,0,'text','Merci pour le travail (French) (workspace)','','<p>C\'est la vie.</p>',0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,4,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"behaviour\">\n                    <value index=\"vDEF\">cover</value>\n                </field>\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',2,''),(17,'',9,1700573725,1700573600,0,0,0,0,'',64,0,3,13,13,NULL,12,'{\"l18n_parent\":\"0\",\"l10n_source\":\"\",\"starttime\":\"0\",\"endtime\":\"0\",\"icon_set\":\"\",\"icon\":\"\",\"icon_file\":\"0\",\"header_class\":\"\",\"subheader_class\":\"\",\"frame_layout\":\"default\",\"frame_options\":\"\",\"background_color_class\":\"none\",\"background_image\":\"0\",\"background_image_options\":\"<?xml version=\\\"1.0\\\" encoding=\\\"utf-8\\\" standalone=\\\"yes\\\" ?>\\n<T3FlexForms>\\n    <data>\\n        <sheet index=\\\"sDEF\\\">\\n            <language index=\\\"lDEF\\\">\\n                <field index=\\\"behaviour\\\">\\n                    <value index=\\\"vDEF\\\">cover<\\/value>\\n                <\\/field>\\n                <field index=\\\"parallax\\\">\\n                    <value index=\\\"vDEF\\\">0<\\/value>\\n                <\\/field>\\n                <field index=\\\"fade\\\">\\n                    <value index=\\\"vDEF\\\">0<\\/value>\\n                <\\/field>\\n                <field index=\\\"filter\\\">\\n                    <value index=\\\"vDEF\\\"><\\/value>\\n                <\\/field>\\n            <\\/language>\\n        <\\/sheet>\\n    <\\/data>\\n<\\/T3FlexForms>\",\"aspect_ratio\":\"1.3333333333333\",\"items_per_page\":\"10\",\"CType\":\"text\",\"colPos\":\"0\",\"header\":\"Thank you for your work. (workspace)\",\"header_layout\":\"0\",\"header_position\":\"\",\"date\":\"0\",\"header_link\":\"\",\"subheader\":\"\",\"bodytext\":\"<p>Much appreciated.<\\/p>\",\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"1\",\"linkToTop\":\"0\",\"sys_language_uid\":\"0\",\"hidden\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"categories\":\"0\",\"rowDescription\":\"\"}',12,1,0,0,'text',' Tak for arbejdet (Danish) (workspace)','','<p>Tuk.</p>',0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,5,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"behaviour\">\n                    <value index=\"vDEF\">cover</value>\n                </field>\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',2,''),(18,'',10,1700573647,1700573647,0,0,0,0,'',256,0,0,0,0,NULL,9,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_class\":\"\",\"header_position\":\"\",\"date\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"subheader_class\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"frame_layout\":\"\",\"frame_options\":\"\",\"background_color_class\":\"\",\"background_image\":\"\",\"background_image_options\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',9,1,0,0,'header','Only english (Default) content here. (workspace)','',NULL,0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,6,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"behaviour\">\n                    <value index=\"vDEF\">cover</value>\n                </field>\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',2,''),(19,'',11,1700573655,1700573655,0,0,0,0,'',128,0,0,0,0,NULL,8,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_class\":\"\",\"header_position\":\"\",\"date\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"subheader_class\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"frame_layout\":\"\",\"frame_options\":\"\",\"background_color_class\":\"\",\"background_image\":\"\",\"background_image_options\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',8,1,0,0,'header','This should not be visible. (workspace)','',NULL,0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,14,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"behaviour\">\n                    <value index=\"vDEF\">cover</value>\n                </field>\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',2,''),(20,'',12,1700573663,1700573663,0,0,0,0,'',128,0,0,0,0,NULL,6,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_class\":\"\",\"header_position\":\"\",\"date\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"subheader_class\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"frame_layout\":\"\",\"frame_options\":\"\",\"background_color_class\":\"\",\"background_image\":\"\",\"background_image_options\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',6,1,0,0,'header','Only english + german (English) (workspace)','',NULL,0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,7,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"behaviour\">\n                    <value index=\"vDEF\">cover</value>\n                </field>\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',2,''),(21,'',12,1700573780,1700573663,0,0,0,0,'',256,0,1,6,6,NULL,5,'{\"l18n_parent\":\"0\",\"l10n_source\":\"\",\"starttime\":\"0\",\"endtime\":\"0\",\"icon_set\":\"\",\"icon\":\"\",\"icon_file\":\"0\",\"header_class\":\"\",\"subheader_class\":\"\",\"frame_layout\":\"default\",\"frame_options\":\"\",\"background_color_class\":\"none\",\"background_image\":\"0\",\"background_image_options\":\"<?xml version=\\\"1.0\\\" encoding=\\\"utf-8\\\" standalone=\\\"yes\\\" ?>\\n<T3FlexForms>\\n    <data>\\n        <sheet index=\\\"sDEF\\\">\\n            <language index=\\\"lDEF\\\">\\n                <field index=\\\"behaviour\\\">\\n                    <value index=\\\"vDEF\\\">cover<\\/value>\\n                <\\/field>\\n                <field index=\\\"parallax\\\">\\n                    <value index=\\\"vDEF\\\">0<\\/value>\\n                <\\/field>\\n                <field index=\\\"fade\\\">\\n                    <value index=\\\"vDEF\\\">0<\\/value>\\n                <\\/field>\\n                <field index=\\\"filter\\\">\\n                    <value index=\\\"vDEF\\\"><\\/value>\\n                <\\/field>\\n            <\\/language>\\n        <\\/sheet>\\n    <\\/data>\\n<\\/T3FlexForms>\",\"aspect_ratio\":\"1.3333333333333\",\"items_per_page\":\"10\",\"CType\":\"header\",\"colPos\":\"0\",\"header\":\"Only english + german (English) (workspace)\",\"header_layout\":\"0\",\"header_position\":\"\",\"date\":\"0\",\"header_link\":\"\",\"subheader\":\"\",\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"1\",\"linkToTop\":\"0\",\"sys_language_uid\":\"0\",\"hidden\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"categories\":\"0\",\"rowDescription\":\"\"}',5,1,0,0,'header','Nur Englisch + Deutsch (Deutsch) (workspace)','',NULL,0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,8,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"behaviour\">\n                    <value index=\"vDEF\">cover</value>\n                </field>\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',2,''),(22,'',13,1700573681,1700573681,0,0,0,0,'',256,0,0,0,0,NULL,1,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_class\":\"\",\"header_position\":\"\",\"date\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"subheader_class\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"frame_layout\":\"\",\"frame_options\":\"\",\"background_color_class\":\"\",\"background_image\":\"\",\"background_image_options\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',1,1,0,0,'header','English content (workspace)','',NULL,0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,9,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"behaviour\">\n                    <value index=\"vDEF\">cover</value>\n                </field>\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',2,''),(23,'',13,1700573748,1700573748,0,0,0,0,'',32,0,3,0,0,NULL,4,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_class\":\"\",\"header_position\":\"\",\"date\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"subheader_class\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"frame_layout\":\"\",\"frame_options\":\"\",\"background_color_class\":\"\",\"background_image\":\"\",\"background_image_options\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',4,1,0,0,'header','Dansk free mode (Danish) (workspace)','',NULL,0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,12,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"behaviour\">\n                    <value index=\"vDEF\">cover</value>\n                </field>\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',2,''),(24,'',13,1700573758,1700573758,0,0,0,0,'',128,0,1,0,0,NULL,2,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_class\":\"\",\"header_position\":\"\",\"date\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"subheader_class\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"frame_layout\":\"\",\"frame_options\":\"\",\"background_color_class\":\"\",\"background_image\":\"\",\"background_image_options\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',2,1,0,0,'header','Deutsch, freier Modus (workspace)','',NULL,0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,10,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"behaviour\">\n                    <value index=\"vDEF\">cover</value>\n                </field>\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',2,''),(25,'',13,1700573766,1700573766,0,0,0,0,'',64,0,2,0,0,NULL,3,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_class\":\"\",\"header_position\":\"\",\"date\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"subheader_class\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"frame_layout\":\"\",\"frame_options\":\"\",\"background_color_class\":\"\",\"background_image\":\"\",\"background_image_options\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',3,1,0,0,'header','Francais free mode (French) (Workspace)','',NULL,0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,11,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"behaviour\">\n                    <value index=\"vDEF\">cover</value>\n                </field>\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',2,''),(26,'',11,1700573791,1700573791,0,0,0,0,'',256,0,1,0,0,NULL,7,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_class\":\"\",\"header_position\":\"\",\"date\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"subheader_class\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"frame_layout\":\"\",\"frame_options\":\"\",\"background_color_class\":\"\",\"background_image\":\"\",\"background_image_options\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"l18n_parent\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',7,1,0,0,'header','Nur deutscher Inhalt (German) (workspace)','',NULL,0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,13,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"behaviour\">\n                    <value index=\"vDEF\">cover</value>\n                </field>\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',2,'');
/*!40000 ALTER TABLE `tt_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tt_content_copy`
--

DROP TABLE IF EXISTS `tt_content_copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tt_content_copy` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rowDescription` text DEFAULT NULL,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `editlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l18n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l18n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `CType` varchar(255) NOT NULL DEFAULT '',
  `header` varchar(255) NOT NULL DEFAULT '',
  `header_position` varchar(255) NOT NULL DEFAULT '',
  `bodytext` mediumtext DEFAULT NULL,
  `bullets_type` smallint(5) unsigned NOT NULL DEFAULT 0,
  `uploads_type` smallint(5) unsigned NOT NULL DEFAULT 0,
  `imagewidth` int(10) unsigned NOT NULL DEFAULT 0,
  `imageorient` smallint(5) unsigned NOT NULL DEFAULT 0,
  `imagecols` smallint(5) unsigned NOT NULL DEFAULT 0,
  `layout` int(10) unsigned NOT NULL DEFAULT 0,
  `frame_class` varchar(60) NOT NULL DEFAULT 'default',
  `cols` int(10) unsigned NOT NULL DEFAULT 0,
  `space_before_class` varchar(60) NOT NULL DEFAULT '',
  `space_after_class` varchar(60) NOT NULL DEFAULT '',
  `records` text DEFAULT NULL,
  `pages` text DEFAULT NULL,
  `colPos` int(10) unsigned NOT NULL DEFAULT 0,
  `subheader` varchar(255) NOT NULL DEFAULT '',
  `header_link` varchar(2048) NOT NULL DEFAULT '',
  `header_layout` varchar(30) NOT NULL DEFAULT '0',
  `list_type` varchar(255) NOT NULL DEFAULT '',
  `file_collections` text DEFAULT NULL,
  `filelink_sorting` varchar(64) NOT NULL DEFAULT '',
  `filelink_sorting_direction` varchar(4) NOT NULL DEFAULT '',
  `target` varchar(30) NOT NULL DEFAULT '',
  `recursive` smallint(5) unsigned NOT NULL DEFAULT 0,
  `imageheight` int(10) unsigned NOT NULL DEFAULT 0,
  `pi_flexform` mediumtext DEFAULT NULL,
  `accessibility_title` varchar(30) NOT NULL DEFAULT '',
  `accessibility_bypass_text` varchar(30) NOT NULL DEFAULT '',
  `category_field` varchar(64) NOT NULL DEFAULT '',
  `table_class` varchar(60) NOT NULL DEFAULT '',
  `table_caption` varchar(255) DEFAULT NULL,
  `table_delimiter` smallint(5) unsigned NOT NULL DEFAULT 0,
  `table_enclosure` smallint(5) unsigned NOT NULL DEFAULT 0,
  `table_header_position` smallint(5) unsigned NOT NULL DEFAULT 0,
  `categories` int(10) unsigned NOT NULL DEFAULT 0,
  `selected_categories` longtext DEFAULT NULL,
  `date` int(11) NOT NULL DEFAULT 0,
  `image` int(10) unsigned NOT NULL DEFAULT 0,
  `assets` int(10) unsigned NOT NULL DEFAULT 0,
  `media` int(10) unsigned NOT NULL DEFAULT 0,
  `imageborder` smallint(5) unsigned NOT NULL DEFAULT 0,
  `image_zoom` smallint(5) unsigned NOT NULL DEFAULT 0,
  `filelink_size` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sectionIndex` smallint(5) unsigned NOT NULL DEFAULT 0,
  `linkToTop` smallint(5) unsigned NOT NULL DEFAULT 0,
  `accessibility_bypass` smallint(5) unsigned NOT NULL DEFAULT 0,
  `table_tfoot` smallint(5) unsigned NOT NULL DEFAULT 0,
  `uploads_description` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT 0,
  `header_class` varchar(60) NOT NULL DEFAULT '',
  `subheader_class` varchar(60) NOT NULL DEFAULT '',
  `teaser` text DEFAULT NULL,
  `aspect_ratio` varchar(255) NOT NULL DEFAULT '1.3333333333333',
  `items_per_page` int(10) unsigned DEFAULT 10,
  `readmore_label` varchar(255) NOT NULL DEFAULT '',
  `quote_source` varchar(255) NOT NULL DEFAULT '',
  `quote_link` varchar(1024) NOT NULL DEFAULT '',
  `panel_class` varchar(60) NOT NULL DEFAULT 'default',
  `file_folder` text DEFAULT NULL,
  `icon` varchar(255) NOT NULL DEFAULT '',
  `icon_set` varchar(255) NOT NULL DEFAULT '',
  `icon_file` int(10) unsigned DEFAULT 0,
  `icon_position` varchar(255) NOT NULL DEFAULT '',
  `icon_size` varchar(60) NOT NULL DEFAULT 'default',
  `icon_type` varchar(60) NOT NULL DEFAULT 'default',
  `icon_color` varchar(255) NOT NULL DEFAULT '',
  `icon_background` varchar(255) NOT NULL DEFAULT '',
  `external_media_title` varchar(255) NOT NULL DEFAULT '',
  `external_media_source` varchar(1024) NOT NULL DEFAULT '',
  `external_media_ratio` varchar(10) NOT NULL DEFAULT '',
  `tx_bootstrappackage_card_group_item` int(10) unsigned DEFAULT 0,
  `tx_bootstrappackage_carousel_item` int(10) unsigned DEFAULT 0,
  `tx_bootstrappackage_accordion_item` int(10) unsigned DEFAULT 0,
  `tx_bootstrappackage_icon_group_item` int(10) unsigned DEFAULT 0,
  `tx_bootstrappackage_tab_item` int(10) unsigned DEFAULT 0,
  `tx_bootstrappackage_timeline_item` int(10) unsigned DEFAULT 0,
  `frame_layout` varchar(255) NOT NULL DEFAULT 'default',
  `frame_options` varchar(255) NOT NULL DEFAULT '',
  `background_color_class` varchar(255) NOT NULL DEFAULT '',
  `background_image` int(10) unsigned DEFAULT 0,
  `background_image_options` mediumtext DEFAULT NULL,
  `subitems_header_layout` int(10) unsigned NOT NULL DEFAULT 4,
  `tx_styleguide_containsdemo` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tt_content_copy`
--

LOCK TABLES `tt_content_copy` WRITE;
/*!40000 ALTER TABLE `tt_content_copy` DISABLE KEYS */;
INSERT INTO `tt_content_copy` VALUES (15,'',27,1700226539,1700226539,0,0,0,0,'',256,0,0,0,0,NULL,0,'',0,0,0,0,'header','English content','',NULL,0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,9,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"behaviour\">\n                    <value index=\"vDEF\">cover</value>\n                </field>\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',2,''),(16,'',27,1700226539,1700226539,0,0,0,0,'',128,0,1,0,0,NULL,0,'',0,0,0,0,'header','Deutsch, freier Modus','',NULL,0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,10,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"behaviour\">\n                    <value index=\"vDEF\">cover</value>\n                </field>\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',2,''),(17,'',27,1700226539,1700226539,0,0,0,0,'',64,0,2,0,0,NULL,0,'',0,0,0,0,'header','Francais free mode (French)','',NULL,0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,11,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"behaviour\">\n                    <value index=\"vDEF\">cover</value>\n                </field>\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',2,''),(18,'',27,1700226539,1700226539,0,0,0,0,'',32,0,3,0,0,NULL,0,'',0,0,0,0,'header','Dansk free mode (Danish)','',NULL,0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,12,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"behaviour\">\n                    <value index=\"vDEF\">cover</value>\n                </field>\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',2,''),(19,'',26,1700226539,1700226539,0,0,0,0,'',256,0,1,20,20,NULL,7,'{\"l18n_parent\":\"\",\"l10n_source\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"icon_set\":\"\",\"icon\":\"\",\"icon_file\":\"\",\"header_class\":\"\",\"subheader_class\":\"\",\"frame_layout\":\"\",\"frame_options\":\"\",\"background_color_class\":\"\",\"background_image\":\"\",\"background_image_options\":\"\",\"aspect_ratio\":\"\",\"items_per_page\":\"\"}',0,0,0,0,'header','Nur Englisch + Deutsch (Deutsch)','',NULL,0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,8,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"behaviour\">\n                    <value index=\"vDEF\">cover</value>\n                </field>\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',2,''),(20,'',26,1700226539,1700226539,0,0,0,0,'',128,0,0,0,0,NULL,0,'',0,0,0,0,'header','Only english + german (English)','',NULL,0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,7,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"behaviour\">\n                    <value index=\"vDEF\">cover</value>\n                </field>\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',2,''),(21,'',25,1700226539,1700226539,0,0,0,0,'',256,0,1,0,0,NULL,0,'',0,0,0,0,'header','Nur deutscher Inhalt (German)','',NULL,0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,13,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"behaviour\">\n                    <value index=\"vDEF\">cover</value>\n                </field>\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',2,''),(22,'',25,1700226539,1700226539,0,0,0,0,'',128,0,0,0,0,NULL,0,'',0,0,0,0,'header','This should not be visible.','',NULL,0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,14,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"behaviour\">\n                    <value index=\"vDEF\">cover</value>\n                </field>\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',2,''),(23,'',24,1700226539,1700226539,0,0,0,0,'',256,0,0,0,0,NULL,0,'',0,0,0,0,'header','Only english (Default) content here.','',NULL,0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,6,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"behaviour\">\n                    <value index=\"vDEF\">cover</value>\n                </field>\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',2,''),(24,'',23,1700226539,1700226539,0,0,0,0,'',256,0,1,27,27,NULL,1,'{\"l18n_parent\":\"\",\"l10n_source\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"icon_set\":\"\",\"icon\":\"\",\"icon_file\":\"\",\"header_class\":\"\",\"subheader_class\":\"\",\"frame_layout\":\"\",\"frame_options\":\"\",\"background_color_class\":\"\",\"background_image\":\"\",\"background_image_options\":\"\",\"aspect_ratio\":\"\",\"items_per_page\":\"\"}',0,0,0,0,'text','Danke für die Arbeit (German)','','<p>Tolle Leistung.</p>',0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,3,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,NULL,2,''),(25,'',23,1700226539,1700226539,0,0,0,0,'',128,0,2,27,27,NULL,1,'{\"l18n_parent\":\"\",\"l10n_source\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"icon_set\":\"\",\"icon\":\"\",\"icon_file\":\"\",\"header_class\":\"\",\"subheader_class\":\"\",\"frame_layout\":\"\",\"frame_options\":\"\",\"background_color_class\":\"\",\"background_image\":\"\",\"background_image_options\":\"\",\"aspect_ratio\":\"\",\"items_per_page\":\"\"}',0,0,0,0,'text','Merci pour le travail (French)','','<p>C\'est la vie.</p>',0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,4,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,NULL,2,''),(26,'',23,1700226539,1700226539,0,0,0,0,'',64,0,3,27,27,NULL,1,'{\"l18n_parent\":\"\",\"l10n_source\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"icon_set\":\"\",\"icon\":\"\",\"icon_file\":\"\",\"header_class\":\"\",\"subheader_class\":\"\",\"frame_layout\":\"\",\"frame_options\":\"\",\"background_color_class\":\"\",\"background_image\":\"\",\"background_image_options\":\"\",\"aspect_ratio\":\"\",\"items_per_page\":\"\"}',0,0,0,0,'text',' Tak for arbejdet (Danish)','','<p>Tuk.</p>',0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,5,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,NULL,2,''),(27,'',23,1700226539,1700226539,0,0,0,0,'',32,0,0,0,0,NULL,0,'',0,0,0,0,'text','Thank you for your work.','','<p>Much appreciated.</p>',0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,1,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,NULL,2,'');
/*!40000 ALTER TABLE `tt_content_copy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tt_content_root`
--

DROP TABLE IF EXISTS `tt_content_root`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tt_content_root` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rowDescription` text DEFAULT NULL,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `editlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l18n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l18n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `CType` varchar(255) NOT NULL DEFAULT '',
  `header` varchar(255) NOT NULL DEFAULT '',
  `header_position` varchar(255) NOT NULL DEFAULT '',
  `bodytext` mediumtext DEFAULT NULL,
  `bullets_type` smallint(5) unsigned NOT NULL DEFAULT 0,
  `uploads_type` smallint(5) unsigned NOT NULL DEFAULT 0,
  `imagewidth` int(10) unsigned NOT NULL DEFAULT 0,
  `imageorient` smallint(5) unsigned NOT NULL DEFAULT 0,
  `imagecols` smallint(5) unsigned NOT NULL DEFAULT 0,
  `layout` int(10) unsigned NOT NULL DEFAULT 0,
  `frame_class` varchar(60) NOT NULL DEFAULT 'default',
  `cols` int(10) unsigned NOT NULL DEFAULT 0,
  `space_before_class` varchar(60) NOT NULL DEFAULT '',
  `space_after_class` varchar(60) NOT NULL DEFAULT '',
  `records` text DEFAULT NULL,
  `pages` text DEFAULT NULL,
  `colPos` int(10) unsigned NOT NULL DEFAULT 0,
  `subheader` varchar(255) NOT NULL DEFAULT '',
  `header_link` varchar(2048) NOT NULL DEFAULT '',
  `header_layout` varchar(30) NOT NULL DEFAULT '0',
  `list_type` varchar(255) NOT NULL DEFAULT '',
  `file_collections` text DEFAULT NULL,
  `filelink_sorting` varchar(64) NOT NULL DEFAULT '',
  `filelink_sorting_direction` varchar(4) NOT NULL DEFAULT '',
  `target` varchar(30) NOT NULL DEFAULT '',
  `recursive` smallint(5) unsigned NOT NULL DEFAULT 0,
  `imageheight` int(10) unsigned NOT NULL DEFAULT 0,
  `pi_flexform` mediumtext DEFAULT NULL,
  `accessibility_title` varchar(30) NOT NULL DEFAULT '',
  `accessibility_bypass_text` varchar(30) NOT NULL DEFAULT '',
  `category_field` varchar(64) NOT NULL DEFAULT '',
  `table_class` varchar(60) NOT NULL DEFAULT '',
  `table_caption` varchar(255) DEFAULT NULL,
  `table_delimiter` smallint(5) unsigned NOT NULL DEFAULT 0,
  `table_enclosure` smallint(5) unsigned NOT NULL DEFAULT 0,
  `table_header_position` smallint(5) unsigned NOT NULL DEFAULT 0,
  `categories` int(10) unsigned NOT NULL DEFAULT 0,
  `selected_categories` longtext DEFAULT NULL,
  `date` int(11) NOT NULL DEFAULT 0,
  `image` int(10) unsigned NOT NULL DEFAULT 0,
  `assets` int(10) unsigned NOT NULL DEFAULT 0,
  `media` int(10) unsigned NOT NULL DEFAULT 0,
  `imageborder` smallint(5) unsigned NOT NULL DEFAULT 0,
  `image_zoom` smallint(5) unsigned NOT NULL DEFAULT 0,
  `filelink_size` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sectionIndex` smallint(5) unsigned NOT NULL DEFAULT 0,
  `linkToTop` smallint(5) unsigned NOT NULL DEFAULT 0,
  `accessibility_bypass` smallint(5) unsigned NOT NULL DEFAULT 0,
  `table_tfoot` smallint(5) unsigned NOT NULL DEFAULT 0,
  `uploads_description` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT 0,
  `header_class` varchar(60) NOT NULL DEFAULT '',
  `subheader_class` varchar(60) NOT NULL DEFAULT '',
  `teaser` text DEFAULT NULL,
  `aspect_ratio` varchar(255) NOT NULL DEFAULT '1.3333333333333',
  `items_per_page` int(10) unsigned DEFAULT 10,
  `readmore_label` varchar(255) NOT NULL DEFAULT '',
  `quote_source` varchar(255) NOT NULL DEFAULT '',
  `quote_link` varchar(1024) NOT NULL DEFAULT '',
  `panel_class` varchar(60) NOT NULL DEFAULT 'default',
  `file_folder` text DEFAULT NULL,
  `icon` varchar(255) NOT NULL DEFAULT '',
  `icon_set` varchar(255) NOT NULL DEFAULT '',
  `icon_file` int(10) unsigned DEFAULT 0,
  `icon_position` varchar(255) NOT NULL DEFAULT '',
  `icon_size` varchar(60) NOT NULL DEFAULT 'default',
  `icon_type` varchar(60) NOT NULL DEFAULT 'default',
  `icon_color` varchar(255) NOT NULL DEFAULT '',
  `icon_background` varchar(255) NOT NULL DEFAULT '',
  `external_media_title` varchar(255) NOT NULL DEFAULT '',
  `external_media_source` varchar(1024) NOT NULL DEFAULT '',
  `external_media_ratio` varchar(10) NOT NULL DEFAULT '',
  `tx_bootstrappackage_card_group_item` int(10) unsigned DEFAULT 0,
  `tx_bootstrappackage_carousel_item` int(10) unsigned DEFAULT 0,
  `tx_bootstrappackage_accordion_item` int(10) unsigned DEFAULT 0,
  `tx_bootstrappackage_icon_group_item` int(10) unsigned DEFAULT 0,
  `tx_bootstrappackage_tab_item` int(10) unsigned DEFAULT 0,
  `tx_bootstrappackage_timeline_item` int(10) unsigned DEFAULT 0,
  `frame_layout` varchar(255) NOT NULL DEFAULT 'default',
  `frame_options` varchar(255) NOT NULL DEFAULT '',
  `background_color_class` varchar(255) NOT NULL DEFAULT '',
  `background_image` int(10) unsigned DEFAULT 0,
  `background_image_options` mediumtext DEFAULT NULL,
  `subitems_header_layout` int(10) unsigned NOT NULL DEFAULT 4,
  `tx_styleguide_containsdemo` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tt_content_root`
--

LOCK TABLES `tt_content_root` WRITE;
/*!40000 ALTER TABLE `tt_content_root` DISABLE KEYS */;
INSERT INTO `tt_content_root` VALUES (1,'',1,1694604369,1694604369,0,0,0,0,'',256,0,0,0,0,NULL,0,'',0,0,0,0,'text','Thank you for your work.','','<p>Much appreciated.</p>',0,0,0,0,1,0,'default',0,'','',NULL,NULL,0,'','','0','',NULL,'','','',0,0,NULL,'','','','',NULL,124,0,0,0,NULL,0,0,0,0,0,0,0,1,0,0,0,0,0,'','',NULL,'1.3333333333333',10,'','','','default',NULL,'','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,NULL,2,''),(2,'',2,1699001725,1694678189,1,0,0,0,'',256,0,0,0,0,NULL,0,'{\"colPos\":\"\",\"sys_language_uid\":\"\"}',0,0,0,0,'list','','',NULL,0,0,0,0,1,0,'default',0,'','',NULL,'',0,'','','0','ghreproduceassets_corebugreproduceassets',NULL,'','','',0,0,NULL,'','','','',NULL,124,0,0,0,NULL,0,0,0,0,0,0,0,1,0,0,0,0,0,'','',NULL,'1.3333333333333',10,'','','','default',NULL,'','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,NULL,2,''),(3,'',1,1699001609,1699001591,0,0,0,0,'',512,0,1,1,1,NULL,1,'{\"CType\":\"text\",\"starttime\":\"0\",\"endtime\":\"0\",\"categories\":\"0\",\"l18n_parent\":\"0\",\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"bullets_type\":\"0\",\"colPos\":\"0\",\"date\":\"0\",\"header_layout\":\"0\",\"header_position\":\"\",\"imagewidth\":\"0\",\"imageheight\":\"0\",\"imageorient\":\"0\",\"imagecols\":\"1\",\"cols\":\"0\",\"recursive\":\"0\",\"list_type\":\"\",\"target\":\"\",\"sectionIndex\":\"1\",\"accessibility_title\":\"\",\"accessibility_bypass_text\":\"\",\"l18n_diffsource\":\"\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":\"0\",\"uploads_description\":\"0\",\"uploads_type\":\"0\",\"icon_type\":\"default\",\"icon_color\":\"#FFFFFF\",\"icon_background\":\"#333333\",\"items_per_page\":\"10\",\"subitems_header_layout\":\"2\",\"t3_origuid\":\"0\",\"rowDescription\":\"\",\"hidden\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"sys_language_uid\":\"0\",\"l10n_source\":\"0\",\"header\":\"Thank you for your work.\",\"bodytext\":\"<p>Much appreciated.<\\/p>\",\"records\":\"\",\"pages\":\"\",\"subheader\":\"\",\"header_link\":\"\",\"file_collections\":\"\",\"filelink_sorting\":\"\",\"filelink_sorting_direction\":\"\",\"pi_flexform\":\"\",\"category_field\":\"\",\"table_caption\":\"\",\"selected_categories\":\"\",\"image\":\"0\",\"assets\":\"0\",\"media\":\"0\",\"imageborder\":\"0\",\"image_zoom\":\"0\",\"filelink_size\":\"0\",\"linkToTop\":\"0\",\"accessibility_bypass\":\"0\",\"tx_impexp_origuid\":\"0\",\"teaser\":\"\",\"readmore_label\":\"\",\"quote_source\":\"\",\"quote_link\":\"\",\"panel_class\":\"default\",\"file_folder\":\"\",\"icon_position\":\"\",\"icon_size\":\"default\",\"external_media_title\":\"\",\"external_media_source\":\"\",\"external_media_ratio\":\"\",\"tx_bootstrappackage_card_group_item\":\"0\",\"tx_bootstrappackage_carousel_item\":\"0\",\"tx_bootstrappackage_accordion_item\":\"0\",\"tx_bootstrappackage_icon_group_item\":\"0\",\"tx_bootstrappackage_tab_item\":\"0\",\"tx_bootstrappackage_timeline_item\":\"0\",\"icon_set\":\"\",\"icon\":\"\",\"icon_file\":\"0\",\"header_class\":\"\",\"subheader_class\":\"\",\"frame_layout\":\"default\",\"frame_options\":\"\",\"background_color_class\":\"none\",\"background_image\":\"0\",\"background_image_options\":\"\",\"aspect_ratio\":\"1.3333333333333\"}',0,0,0,0,'text','Danke für die Arbeit (German)','','<p>Tolle Leistung.</p>',0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,0,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,NULL,2,''),(4,'',1,1699001646,1699001621,0,0,0,0,'',384,0,2,1,1,NULL,1,'{\"CType\":\"text\",\"starttime\":\"0\",\"endtime\":\"0\",\"categories\":\"0\",\"l18n_parent\":\"0\",\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"bullets_type\":\"0\",\"colPos\":\"0\",\"date\":\"0\",\"header_layout\":\"0\",\"header_position\":\"\",\"imagewidth\":\"0\",\"imageheight\":\"0\",\"imageorient\":\"0\",\"imagecols\":\"1\",\"cols\":\"0\",\"recursive\":\"0\",\"list_type\":\"\",\"target\":\"\",\"sectionIndex\":\"1\",\"accessibility_title\":\"\",\"accessibility_bypass_text\":\"\",\"l18n_diffsource\":\"\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":\"0\",\"uploads_description\":\"0\",\"uploads_type\":\"0\",\"icon_type\":\"default\",\"icon_color\":\"#FFFFFF\",\"icon_background\":\"#333333\",\"items_per_page\":\"10\",\"subitems_header_layout\":\"2\",\"t3_origuid\":\"0\",\"rowDescription\":\"\",\"hidden\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"sys_language_uid\":\"0\",\"l10n_source\":\"0\",\"header\":\"Thank you for your work.\",\"bodytext\":\"<p>Much appreciated.<\\/p>\",\"records\":\"\",\"pages\":\"\",\"subheader\":\"\",\"header_link\":\"\",\"file_collections\":\"\",\"filelink_sorting\":\"\",\"filelink_sorting_direction\":\"\",\"pi_flexform\":\"\",\"category_field\":\"\",\"table_caption\":\"\",\"selected_categories\":\"\",\"image\":\"0\",\"assets\":\"0\",\"media\":\"0\",\"imageborder\":\"0\",\"image_zoom\":\"0\",\"filelink_size\":\"0\",\"linkToTop\":\"0\",\"accessibility_bypass\":\"0\",\"tx_impexp_origuid\":\"0\",\"teaser\":\"\",\"readmore_label\":\"\",\"quote_source\":\"\",\"quote_link\":\"\",\"panel_class\":\"default\",\"file_folder\":\"\",\"icon_position\":\"\",\"icon_size\":\"default\",\"external_media_title\":\"\",\"external_media_source\":\"\",\"external_media_ratio\":\"\",\"tx_bootstrappackage_card_group_item\":\"0\",\"tx_bootstrappackage_carousel_item\":\"0\",\"tx_bootstrappackage_accordion_item\":\"0\",\"tx_bootstrappackage_icon_group_item\":\"0\",\"tx_bootstrappackage_tab_item\":\"0\",\"tx_bootstrappackage_timeline_item\":\"0\",\"icon_set\":\"\",\"icon\":\"\",\"icon_file\":\"0\",\"header_class\":\"\",\"subheader_class\":\"\",\"frame_layout\":\"default\",\"frame_options\":\"\",\"background_color_class\":\"none\",\"background_image\":\"0\",\"background_image_options\":\"\",\"aspect_ratio\":\"1.3333333333333\"}',0,0,0,0,'text','Merci pour le travail (French)','','<p>C\'est la vie.</p>',0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,0,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,NULL,2,''),(5,'',1,1699001683,1699001667,0,0,0,0,'',320,0,3,1,1,NULL,1,'{\"CType\":\"text\",\"starttime\":\"0\",\"endtime\":\"0\",\"categories\":\"0\",\"l18n_parent\":\"0\",\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"bullets_type\":\"0\",\"colPos\":\"0\",\"date\":\"0\",\"header_layout\":\"0\",\"header_position\":\"\",\"imagewidth\":\"0\",\"imageheight\":\"0\",\"imageorient\":\"0\",\"imagecols\":\"1\",\"cols\":\"0\",\"recursive\":\"0\",\"list_type\":\"\",\"target\":\"\",\"sectionIndex\":\"1\",\"accessibility_title\":\"\",\"accessibility_bypass_text\":\"\",\"l18n_diffsource\":\"\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":\"0\",\"uploads_description\":\"0\",\"uploads_type\":\"0\",\"icon_type\":\"default\",\"icon_color\":\"#FFFFFF\",\"icon_background\":\"#333333\",\"items_per_page\":\"10\",\"subitems_header_layout\":\"2\",\"t3_origuid\":\"0\",\"rowDescription\":\"\",\"hidden\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"sys_language_uid\":\"0\",\"l10n_source\":\"0\",\"header\":\"Thank you for your work.\",\"bodytext\":\"<p>Much appreciated.<\\/p>\",\"records\":\"\",\"pages\":\"\",\"subheader\":\"\",\"header_link\":\"\",\"file_collections\":\"\",\"filelink_sorting\":\"\",\"filelink_sorting_direction\":\"\",\"pi_flexform\":\"\",\"category_field\":\"\",\"table_caption\":\"\",\"selected_categories\":\"\",\"image\":\"0\",\"assets\":\"0\",\"media\":\"0\",\"imageborder\":\"0\",\"image_zoom\":\"0\",\"filelink_size\":\"0\",\"linkToTop\":\"0\",\"accessibility_bypass\":\"0\",\"tx_impexp_origuid\":\"0\",\"teaser\":\"\",\"readmore_label\":\"\",\"quote_source\":\"\",\"quote_link\":\"\",\"panel_class\":\"default\",\"file_folder\":\"\",\"icon_position\":\"\",\"icon_size\":\"default\",\"external_media_title\":\"\",\"external_media_source\":\"\",\"external_media_ratio\":\"\",\"tx_bootstrappackage_card_group_item\":\"0\",\"tx_bootstrappackage_carousel_item\":\"0\",\"tx_bootstrappackage_accordion_item\":\"0\",\"tx_bootstrappackage_icon_group_item\":\"0\",\"tx_bootstrappackage_tab_item\":\"0\",\"tx_bootstrappackage_timeline_item\":\"0\",\"icon_set\":\"\",\"icon\":\"\",\"icon_file\":\"0\",\"header_class\":\"\",\"subheader_class\":\"\",\"frame_layout\":\"default\",\"frame_options\":\"\",\"background_color_class\":\"none\",\"background_image\":\"0\",\"background_image_options\":\"\",\"aspect_ratio\":\"1.3333333333333\"}',0,0,0,0,'text',' Tak for arbejdet (Danish)','','<p>Tuk.</p>',0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,0,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,NULL,2,''),(6,'',9,1699001777,1699001777,0,0,0,0,'',256,0,0,0,0,NULL,0,'',0,0,0,0,'header','Only english (Default) content here.','',NULL,0,0,0,0,1,0,'default',0,'','',NULL,NULL,0,'','','0','',NULL,'','','',0,0,NULL,'','','','',NULL,124,0,0,0,NULL,0,0,0,0,0,0,0,1,0,0,0,0,0,'','',NULL,'1.3333333333333',10,'','','','default',NULL,'','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"behaviour\">\n                    <value index=\"vDEF\">cover</value>\n                </field>\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',2,''),(7,'',7,1699001825,1699001825,0,0,0,0,'',256,0,0,0,0,NULL,0,'',0,0,0,0,'header','Only english + german (English)','',NULL,0,0,0,0,1,0,'default',0,'','',NULL,NULL,0,'','','0','',NULL,'','','',0,0,NULL,'','','','',NULL,124,0,0,0,NULL,0,0,0,0,0,0,0,1,0,0,0,0,0,'','',NULL,'1.3333333333333',10,'','','','default',NULL,'','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"behaviour\">\n                    <value index=\"vDEF\">cover</value>\n                </field>\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',2,''),(8,'',7,1699001880,1699001862,0,0,0,0,'',512,0,1,7,7,NULL,7,'{\"CType\":\"header\",\"starttime\":\"0\",\"endtime\":\"0\",\"categories\":\"0\",\"l18n_parent\":\"0\",\"layout\":\"0\",\"frame_class\":\"default\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"bullets_type\":\"0\",\"colPos\":\"0\",\"date\":\"0\",\"header_layout\":\"0\",\"header_position\":\"\",\"imagewidth\":\"0\",\"imageheight\":\"0\",\"imageorient\":\"0\",\"imagecols\":\"1\",\"cols\":\"0\",\"recursive\":\"0\",\"list_type\":\"\",\"target\":\"\",\"sectionIndex\":\"1\",\"accessibility_title\":\"\",\"accessibility_bypass_text\":\"\",\"l18n_diffsource\":\"\",\"table_class\":\"\",\"table_delimiter\":\"124\",\"table_enclosure\":\"0\",\"table_header_position\":\"0\",\"table_tfoot\":\"0\",\"uploads_description\":\"0\",\"uploads_type\":\"0\",\"icon_type\":\"default\",\"icon_color\":\"#FFFFFF\",\"icon_background\":\"#333333\",\"items_per_page\":\"10\",\"subitems_header_layout\":\"2\",\"t3_origuid\":\"0\",\"rowDescription\":\"\",\"hidden\":\"0\",\"fe_group\":\"\",\"editlock\":\"0\",\"sys_language_uid\":\"0\",\"l10n_source\":\"0\",\"header\":\"Only english + german (English)\",\"bodytext\":\"\",\"records\":\"\",\"pages\":\"\",\"subheader\":\"\",\"header_link\":\"\",\"file_collections\":\"\",\"filelink_sorting\":\"\",\"filelink_sorting_direction\":\"\",\"pi_flexform\":\"\",\"category_field\":\"\",\"table_caption\":\"\",\"selected_categories\":\"\",\"image\":\"0\",\"assets\":\"0\",\"media\":\"0\",\"imageborder\":\"0\",\"image_zoom\":\"0\",\"filelink_size\":\"0\",\"linkToTop\":\"0\",\"accessibility_bypass\":\"0\",\"tx_impexp_origuid\":\"0\",\"teaser\":\"\",\"readmore_label\":\"\",\"quote_source\":\"\",\"quote_link\":\"\",\"panel_class\":\"default\",\"file_folder\":\"\",\"icon_position\":\"\",\"icon_size\":\"default\",\"external_media_title\":\"\",\"external_media_source\":\"\",\"external_media_ratio\":\"\",\"tx_bootstrappackage_card_group_item\":\"0\",\"tx_bootstrappackage_carousel_item\":\"0\",\"tx_bootstrappackage_accordion_item\":\"0\",\"tx_bootstrappackage_icon_group_item\":\"0\",\"tx_bootstrappackage_tab_item\":\"0\",\"tx_bootstrappackage_timeline_item\":\"0\",\"icon_set\":\"\",\"icon\":\"\",\"icon_file\":\"0\",\"header_class\":\"\",\"subheader_class\":\"\",\"frame_layout\":\"default\",\"frame_options\":\"\",\"background_color_class\":\"none\",\"background_image\":\"0\",\"background_image_options\":\"<?xml version=\\\"1.0\\\" encoding=\\\"utf-8\\\" standalone=\\\"yes\\\" ?>\\n<T3FlexForms>\\n    <data>\\n        <sheet index=\\\"sDEF\\\">\\n            <language index=\\\"lDEF\\\">\\n                <field index=\\\"behaviour\\\">\\n                    <value index=\\\"vDEF\\\">cover<\\/value>\\n                <\\/field>\\n                <field index=\\\"parallax\\\">\\n                    <value index=\\\"vDEF\\\">0<\\/value>\\n                <\\/field>\\n                <field index=\\\"fade\\\">\\n                    <value index=\\\"vDEF\\\">0<\\/value>\\n                <\\/field>\\n                <field index=\\\"filter\\\">\\n                    <value index=\\\"vDEF\\\"><\\/value>\\n                <\\/field>\\n            <\\/language>\\n        <\\/sheet>\\n    <\\/data>\\n<\\/T3FlexForms>\",\"aspect_ratio\":\"1.3333333333333\"}',0,0,0,0,'header','Nur Englisch + Deutsch (Deutsch)','',NULL,0,0,0,0,1,0,'default',0,'','','','',0,'','','0','','','','','',0,0,NULL,'','','','',NULL,124,0,0,0,'0',0,0,0,0,0,0,0,1,0,0,0,0,0,'','',NULL,'1.3333333333333',10,'','','','default','','','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"behaviour\">\n                    <value index=\"vDEF\">cover</value>\n                </field>\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',2,''),(9,'',6,1699001933,1699001933,0,0,0,0,'',256,0,0,0,0,NULL,0,'',0,0,0,0,'header','English content','',NULL,0,0,0,0,1,0,'default',0,'','',NULL,NULL,0,'','','0','',NULL,'','','',0,0,NULL,'','','','',NULL,124,0,0,0,NULL,0,0,0,0,0,0,0,1,0,0,0,0,0,'','',NULL,'1.3333333333333',10,'','','','default',NULL,'','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"behaviour\">\n                    <value index=\"vDEF\">cover</value>\n                </field>\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',2,''),(10,'',6,1699001942,1699001942,0,0,0,0,'',128,0,1,0,0,NULL,0,'',0,0,0,0,'header','Deutsch, freier Modus','',NULL,0,0,0,0,1,0,'default',0,'','',NULL,NULL,0,'','','0','',NULL,'','','',0,0,NULL,'','','','',NULL,124,0,0,0,NULL,0,0,0,0,0,0,0,1,0,0,0,0,0,'','',NULL,'1.3333333333333',10,'','','','default',NULL,'','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"behaviour\">\n                    <value index=\"vDEF\">cover</value>\n                </field>\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',2,''),(11,'',6,1699001956,1699001956,0,0,0,0,'',64,0,2,0,0,NULL,0,'',0,0,0,0,'header','Francais free mode (French)','',NULL,0,0,0,0,1,0,'default',0,'','',NULL,NULL,0,'','','0','',NULL,'','','',0,0,NULL,'','','','',NULL,124,0,0,0,NULL,0,0,0,0,0,0,0,1,0,0,0,0,0,'','',NULL,'1.3333333333333',10,'','','','default',NULL,'','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"behaviour\">\n                    <value index=\"vDEF\">cover</value>\n                </field>\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',2,''),(12,'',6,1699001970,1699001970,0,0,0,0,'',32,0,3,0,0,NULL,0,'',0,0,0,0,'header','Dansk free mode (Danish)','',NULL,0,0,0,0,1,0,'default',0,'','',NULL,NULL,0,'','','0','',NULL,'','','',0,0,NULL,'','','','',NULL,124,0,0,0,NULL,0,0,0,0,0,0,0,1,0,0,0,0,0,'','',NULL,'1.3333333333333',10,'','','','default',NULL,'','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"behaviour\">\n                    <value index=\"vDEF\">cover</value>\n                </field>\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',2,''),(13,'',8,1699002434,1699002434,0,0,0,0,'',256,0,1,0,0,NULL,0,'',0,0,0,0,'header','Nur deutscher Inhalt (German)','',NULL,0,0,0,0,1,0,'default',0,'','',NULL,NULL,0,'','','0','',NULL,'','','',0,0,NULL,'','','','',NULL,124,0,0,0,NULL,0,0,0,0,0,0,0,1,0,0,0,0,0,'','',NULL,'1.3333333333333',10,'','','','default',NULL,'','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"behaviour\">\n                    <value index=\"vDEF\">cover</value>\n                </field>\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',2,''),(14,'',8,1699002444,1699002444,0,0,0,0,'',128,0,0,0,0,NULL,0,'',0,0,0,0,'header','This should not be visible.','',NULL,0,0,0,0,1,0,'default',0,'','',NULL,NULL,0,'','','0','',NULL,'','','',0,0,NULL,'','','','',NULL,124,0,0,0,NULL,0,0,0,0,0,0,0,1,0,0,0,0,0,'','',NULL,'1.3333333333333',10,'','','','default',NULL,'','',0,'','default','default','#FFFFFF','#333333','','','',0,0,0,0,0,0,'default','','none',0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"behaviour\">\n                    <value index=\"vDEF\">cover</value>\n                </field>\n                <field index=\"parallax\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"fade\">\n                    <value index=\"vDEF\">0</value>\n                </field>\n                <field index=\"filter\">\n                    <value index=\"vDEF\"></value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',2,'');
/*!40000 ALTER TABLE `tt_content_root` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_bootstrappackage_accordion_item`
--

DROP TABLE IF EXISTS `tx_bootstrappackage_accordion_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_bootstrappackage_accordion_item` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `tt_content` int(10) unsigned DEFAULT 0,
  `header` varchar(255) NOT NULL DEFAULT '',
  `bodytext` text DEFAULT NULL,
  `media` int(10) unsigned DEFAULT 0,
  `mediaorient` varchar(60) NOT NULL DEFAULT 'left',
  `imagecols` smallint(5) unsigned NOT NULL DEFAULT 1,
  `image_zoom` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_bootstrappackage_accordion_item`
--

LOCK TABLES `tx_bootstrappackage_accordion_item` WRITE;
/*!40000 ALTER TABLE `tx_bootstrappackage_accordion_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_bootstrappackage_accordion_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_bootstrappackage_card_group_item`
--

DROP TABLE IF EXISTS `tx_bootstrappackage_card_group_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_bootstrappackage_card_group_item` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `tt_content` int(10) unsigned DEFAULT 0,
  `header` varchar(255) NOT NULL DEFAULT '',
  `subheader` varchar(255) NOT NULL DEFAULT '',
  `image` int(11) NOT NULL DEFAULT 0,
  `bodytext` text DEFAULT NULL,
  `link` varchar(1024) NOT NULL DEFAULT '',
  `link_title` varchar(255) NOT NULL DEFAULT '',
  `link_icon_set` varchar(255) NOT NULL DEFAULT '',
  `link_icon_identifier` varchar(255) NOT NULL DEFAULT '',
  `link_icon` int(10) unsigned DEFAULT 0,
  `link_class` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_bootstrappackage_card_group_item`
--

LOCK TABLES `tx_bootstrappackage_card_group_item` WRITE;
/*!40000 ALTER TABLE `tx_bootstrappackage_card_group_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_bootstrappackage_card_group_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_bootstrappackage_carousel_item`
--

DROP TABLE IF EXISTS `tx_bootstrappackage_carousel_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_bootstrappackage_carousel_item` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `tt_content` int(10) unsigned DEFAULT 0,
  `item_type` varchar(255) NOT NULL DEFAULT '',
  `layout` varchar(255) NOT NULL DEFAULT '',
  `header` varchar(255) NOT NULL DEFAULT '',
  `header_layout` smallint(5) unsigned NOT NULL DEFAULT 1,
  `header_position` varchar(255) NOT NULL DEFAULT 'center',
  `header_class` varchar(255) NOT NULL DEFAULT '',
  `subheader` varchar(255) NOT NULL DEFAULT '',
  `subheader_layout` smallint(5) unsigned NOT NULL DEFAULT 2,
  `subheader_class` varchar(255) NOT NULL DEFAULT '',
  `nav_title` varchar(255) NOT NULL DEFAULT '',
  `button_text` varchar(255) NOT NULL DEFAULT '',
  `bodytext` text DEFAULT NULL,
  `image` int(10) unsigned DEFAULT 0,
  `link` varchar(1024) NOT NULL DEFAULT '',
  `text_color` varchar(255) NOT NULL DEFAULT '',
  `background_color` varchar(255) NOT NULL DEFAULT '',
  `background_image` int(10) unsigned DEFAULT 0,
  `background_image_options` mediumtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_bootstrappackage_carousel_item`
--

LOCK TABLES `tx_bootstrappackage_carousel_item` WRITE;
/*!40000 ALTER TABLE `tx_bootstrappackage_carousel_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_bootstrappackage_carousel_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_bootstrappackage_icon_group_item`
--

DROP TABLE IF EXISTS `tx_bootstrappackage_icon_group_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_bootstrappackage_icon_group_item` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `tt_content` int(10) unsigned DEFAULT 0,
  `header` varchar(255) NOT NULL DEFAULT '',
  `subheader` varchar(255) NOT NULL DEFAULT '',
  `bodytext` text DEFAULT NULL,
  `link` varchar(1024) NOT NULL DEFAULT '',
  `icon_set` varchar(255) NOT NULL DEFAULT '',
  `icon_identifier` varchar(255) NOT NULL DEFAULT '',
  `icon_file` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_bootstrappackage_icon_group_item`
--

LOCK TABLES `tx_bootstrappackage_icon_group_item` WRITE;
/*!40000 ALTER TABLE `tx_bootstrappackage_icon_group_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_bootstrappackage_icon_group_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_bootstrappackage_tab_item`
--

DROP TABLE IF EXISTS `tx_bootstrappackage_tab_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_bootstrappackage_tab_item` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `tt_content` int(10) unsigned DEFAULT 0,
  `header` varchar(255) NOT NULL DEFAULT '',
  `bodytext` text DEFAULT NULL,
  `media` int(10) unsigned DEFAULT 0,
  `mediaorient` varchar(60) NOT NULL DEFAULT 'left',
  `imagecols` smallint(5) unsigned NOT NULL DEFAULT 1,
  `image_zoom` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_bootstrappackage_tab_item`
--

LOCK TABLES `tx_bootstrappackage_tab_item` WRITE;
/*!40000 ALTER TABLE `tx_bootstrappackage_tab_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_bootstrappackage_tab_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_bootstrappackage_timeline_item`
--

DROP TABLE IF EXISTS `tx_bootstrappackage_timeline_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_bootstrappackage_timeline_item` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `tt_content` int(10) unsigned DEFAULT 0,
  `date` datetime DEFAULT NULL,
  `header` varchar(255) NOT NULL DEFAULT '',
  `bodytext` text DEFAULT NULL,
  `icon_set` varchar(255) NOT NULL DEFAULT '',
  `icon_identifier` varchar(255) NOT NULL DEFAULT '',
  `icon_file` int(10) unsigned DEFAULT 0,
  `image` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_bootstrappackage_timeline_item`
--

LOCK TABLES `tx_bootstrappackage_timeline_item` WRITE;
/*!40000 ALTER TABLE `tx_bootstrappackage_timeline_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_bootstrappackage_timeline_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_extension`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_extension` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `extension_key` varchar(60) NOT NULL DEFAULT '',
  `repository` int(11) NOT NULL DEFAULT 1,
  `remote` varchar(100) NOT NULL DEFAULT 'ter',
  `version` varchar(15) NOT NULL DEFAULT '',
  `alldownloadcounter` int(10) unsigned NOT NULL DEFAULT 0,
  `downloadcounter` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(150) NOT NULL DEFAULT '',
  `description` mediumtext DEFAULT NULL,
  `state` int(10) unsigned NOT NULL DEFAULT 0,
  `review_state` int(11) NOT NULL DEFAULT 0,
  `category` int(10) unsigned NOT NULL DEFAULT 0,
  `serialized_dependencies` mediumtext DEFAULT NULL,
  `author_name` varchar(255) NOT NULL DEFAULT '',
  `author_email` varchar(255) NOT NULL DEFAULT '',
  `ownerusername` varchar(50) NOT NULL DEFAULT '',
  `md5hash` varchar(35) NOT NULL DEFAULT '',
  `update_comment` mediumtext DEFAULT NULL,
  `authorcompany` varchar(255) NOT NULL DEFAULT '',
  `integer_version` int(11) NOT NULL DEFAULT 0,
  `lastreviewedversion` int(11) NOT NULL DEFAULT 0,
  `documentation_link` varchar(2048) DEFAULT NULL,
  `distribution_image` varchar(255) DEFAULT NULL,
  `distribution_welcome_image` varchar(255) DEFAULT NULL,
  `last_updated` int(11) NOT NULL DEFAULT 0,
  `current_version` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `versionextrepo` (`extension_key`,`version`,`remote`),
  KEY `index_extrepo` (`extension_key`,`remote`),
  KEY `index_versionrepo` (`integer_version`,`remote`,`extension_key`),
  KEY `index_currentversions` (`current_version`,`review_state`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_extension`
--

LOCK TABLES `tx_extensionmanager_domain_model_extension` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_impexp_presets`
--

DROP TABLE IF EXISTS `tx_impexp_presets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_impexp_presets` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `public` smallint(6) NOT NULL DEFAULT 0,
  `item_uid` int(11) NOT NULL DEFAULT 0,
  `user_uid` int(10) unsigned NOT NULL DEFAULT 0,
  `preset_data` blob DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `lookup` (`item_uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_impexp_presets`
--

LOCK TABLES `tx_impexp_presets` WRITE;
/*!40000 ALTER TABLE `tx_impexp_presets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_impexp_presets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_linkvalidator_link`
--

DROP TABLE IF EXISTS `tx_linkvalidator_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_linkvalidator_link` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `record_uid` int(11) NOT NULL DEFAULT 0,
  `record_pid` int(11) NOT NULL DEFAULT 0,
  `language` int(11) NOT NULL DEFAULT -1,
  `headline` varchar(255) NOT NULL DEFAULT '',
  `field` varchar(255) NOT NULL DEFAULT '',
  `table_name` varchar(255) NOT NULL DEFAULT '',
  `element_type` varchar(255) NOT NULL DEFAULT '',
  `link_title` text DEFAULT NULL,
  `url` text DEFAULT NULL,
  `url_response` text DEFAULT NULL,
  `last_check` int(11) NOT NULL DEFAULT 0,
  `link_type` varchar(50) NOT NULL DEFAULT '',
  `needs_recheck` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_linkvalidator_link`
--

LOCK TABLES `tx_linkvalidator_link` WRITE;
/*!40000 ALTER TABLE `tx_linkvalidator_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_linkvalidator_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_scheduler_task`
--

DROP TABLE IF EXISTS `tx_scheduler_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_scheduler_task` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `disable` smallint(5) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `nextexecution` int(10) unsigned NOT NULL DEFAULT 0,
  `lastexecution_time` int(10) unsigned NOT NULL DEFAULT 0,
  `lastexecution_failure` text DEFAULT NULL,
  `lastexecution_context` varchar(3) NOT NULL DEFAULT '',
  `serialized_task_object` mediumblob DEFAULT NULL,
  `serialized_executions` mediumblob DEFAULT NULL,
  `task_group` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `index_nextexecution` (`nextexecution`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_scheduler_task`
--

LOCK TABLES `tx_scheduler_task` WRITE;
/*!40000 ALTER TABLE `tx_scheduler_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_scheduler_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_scheduler_task_group`
--

DROP TABLE IF EXISTS `tx_scheduler_task_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_scheduler_task_group` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `groupName` varchar(80) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_scheduler_task_group`
--

LOCK TABLES `tx_scheduler_task_group` WRITE;
/*!40000 ALTER TABLE `tx_scheduler_task_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_scheduler_task_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_ctrl_common`
--

DROP TABLE IF EXISTS `tx_styleguide_ctrl_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_ctrl_common` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `title` text DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_ctrl_common`
--

LOCK TABLES `tx_styleguide_ctrl_common` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_ctrl_common` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_ctrl_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_ctrl_minimal`
--

DROP TABLE IF EXISTS `tx_styleguide_ctrl_minimal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_ctrl_minimal` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `title` text DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_ctrl_minimal`
--

LOCK TABLES `tx_styleguide_ctrl_minimal` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_ctrl_minimal` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_ctrl_minimal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_displaycond`
--

DROP TABLE IF EXISTS `tx_styleguide_displaycond`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_displaycond` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `input_1` text DEFAULT NULL,
  `input_2` text DEFAULT NULL,
  `input_4` text DEFAULT NULL,
  `input_5` text DEFAULT NULL,
  `input_6` text DEFAULT NULL,
  `input_7` text DEFAULT NULL,
  `input_8` text DEFAULT NULL,
  `input_9` text DEFAULT NULL,
  `input_10` text DEFAULT NULL,
  `input_11` text DEFAULT NULL,
  `input_12` text DEFAULT NULL,
  `input_13` text DEFAULT NULL,
  `input_16` text DEFAULT NULL,
  `input_17` text DEFAULT NULL,
  `input_18` text DEFAULT NULL,
  `input_19` text DEFAULT NULL,
  `input_20` text DEFAULT NULL,
  `select_1` text DEFAULT NULL,
  `select_2` text DEFAULT NULL,
  `select_3` text DEFAULT NULL,
  `select_4` text DEFAULT NULL,
  `checkbox_1` smallint(5) unsigned NOT NULL DEFAULT 0,
  `flex_1` longtext DEFAULT NULL,
  `flex_2` longtext DEFAULT NULL,
  `flex_3` longtext DEFAULT NULL,
  `number_1` int(11) NOT NULL DEFAULT 0,
  `number_2` int(11) NOT NULL DEFAULT 0,
  `number_3` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_displaycond`
--

LOCK TABLES `tx_styleguide_displaycond` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_displaycond` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_displaycond` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_elements_basic`
--

DROP TABLE IF EXISTS `tx_styleguide_elements_basic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_elements_basic` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `input_1` text DEFAULT NULL,
  `input_2` text DEFAULT NULL,
  `input_3` text DEFAULT NULL,
  `input_4` text DEFAULT NULL,
  `input_5` text DEFAULT NULL,
  `input_10` text DEFAULT NULL,
  `input_11` text DEFAULT NULL,
  `input_12` text DEFAULT NULL,
  `input_13` text DEFAULT NULL,
  `input_14` text DEFAULT NULL,
  `input_15` text DEFAULT NULL,
  `input_19` text DEFAULT NULL,
  `input_21` text DEFAULT NULL,
  `input_22` text DEFAULT NULL,
  `input_23` text DEFAULT NULL,
  `input_24` text DEFAULT NULL,
  `input_26` text DEFAULT NULL,
  `input_27` text DEFAULT NULL,
  `input_28` text DEFAULT NULL,
  `input_33` text DEFAULT NULL,
  `input_35` text DEFAULT NULL,
  `input_36` text DEFAULT NULL,
  `input_40` text DEFAULT NULL,
  `input_41` text DEFAULT NULL,
  `input_42` text DEFAULT NULL,
  `input_43` text DEFAULT NULL,
  `text_12` text DEFAULT NULL,
  `none_1` text DEFAULT NULL,
  `none_2` text DEFAULT NULL,
  `none_3` text DEFAULT NULL,
  `passthrough_1` text DEFAULT NULL,
  `passthrough_2` text DEFAULT NULL,
  `user_1` text DEFAULT NULL,
  `user_2` text DEFAULT NULL,
  `unknown_1` text DEFAULT NULL,
  `inputdatetime_1` int(11) NOT NULL DEFAULT 0,
  `inputdatetime_2` date DEFAULT NULL,
  `inputdatetime_3` int(11) NOT NULL DEFAULT 0,
  `inputdatetime_4` datetime DEFAULT NULL,
  `inputdatetime_5` int(11) NOT NULL DEFAULT 0,
  `inputdatetime_6` int(11) NOT NULL DEFAULT 0,
  `inputdatetime_7` int(11) NOT NULL DEFAULT 0,
  `inputdatetime_8` int(11) NOT NULL DEFAULT 0,
  `inputdatetime_9` int(11) NOT NULL DEFAULT 0,
  `inputdatetime_10` int(11) NOT NULL DEFAULT 0,
  `inputdatetime_11` int(11) NOT NULL DEFAULT 0,
  `inputdatetime_12` time DEFAULT NULL,
  `inputdatetime_13` time DEFAULT NULL,
  `inputdatetime_21` int(11) DEFAULT 0,
  `inputdatetime_22` date DEFAULT NULL,
  `inputdatetime_23` int(11) DEFAULT 0,
  `inputdatetime_24` datetime DEFAULT NULL,
  `inputdatetime_25` int(11) DEFAULT 0,
  `inputdatetime_26` int(11) DEFAULT 0,
  `inputdatetime_27` int(11) DEFAULT 0,
  `inputdatetime_28` int(11) DEFAULT 0,
  `inputdatetime_29` int(11) DEFAULT 0,
  `inputdatetime_30` int(11) DEFAULT 0,
  `inputdatetime_31` int(11) DEFAULT 0,
  `inputdatetime_32` time DEFAULT NULL,
  `inputdatetime_33` time DEFAULT NULL,
  `email_1` varchar(255) NOT NULL DEFAULT '',
  `email_2` varchar(255) NOT NULL DEFAULT '',
  `email_3` varchar(255) DEFAULT NULL,
  `email_4` varchar(255) DEFAULT NULL,
  `checkbox_1` smallint(5) unsigned NOT NULL DEFAULT 0,
  `checkbox_2` smallint(5) unsigned NOT NULL DEFAULT 0,
  `checkbox_3` smallint(5) unsigned NOT NULL DEFAULT 0,
  `checkbox_4` smallint(5) unsigned NOT NULL DEFAULT 0,
  `checkbox_6` smallint(5) unsigned NOT NULL DEFAULT 0,
  `checkbox_7` smallint(5) unsigned NOT NULL DEFAULT 0,
  `checkbox_8` smallint(5) unsigned NOT NULL DEFAULT 0,
  `checkbox_9` smallint(5) unsigned NOT NULL DEFAULT 0,
  `checkbox_10` smallint(5) unsigned NOT NULL DEFAULT 0,
  `checkbox_11` smallint(5) unsigned NOT NULL DEFAULT 0,
  `checkbox_12` smallint(5) unsigned NOT NULL DEFAULT 0,
  `checkbox_13` smallint(5) unsigned NOT NULL DEFAULT 0,
  `checkbox_14` smallint(5) unsigned NOT NULL DEFAULT 0,
  `checkbox_15` smallint(5) unsigned NOT NULL DEFAULT 0,
  `checkbox_16` smallint(5) unsigned NOT NULL DEFAULT 0,
  `checkbox_17` smallint(5) unsigned NOT NULL DEFAULT 0,
  `checkbox_18` smallint(5) unsigned NOT NULL DEFAULT 0,
  `checkbox_19` smallint(5) unsigned NOT NULL DEFAULT 0,
  `checkbox_20` smallint(5) unsigned NOT NULL DEFAULT 0,
  `checkbox_21` smallint(5) unsigned NOT NULL DEFAULT 0,
  `checkbox_24` smallint(5) unsigned NOT NULL DEFAULT 0,
  `checkbox_25` smallint(5) unsigned NOT NULL DEFAULT 0,
  `checkbox_26` smallint(5) unsigned NOT NULL DEFAULT 0,
  `language_1` int(11) NOT NULL DEFAULT 0,
  `flex_1` longtext DEFAULT NULL,
  `text_1` longtext DEFAULT NULL,
  `text_2` longtext DEFAULT NULL,
  `text_3` longtext DEFAULT NULL,
  `text_4` longtext DEFAULT NULL,
  `text_5` longtext DEFAULT NULL,
  `text_6` longtext DEFAULT NULL,
  `text_7` longtext DEFAULT NULL,
  `text_9` longtext DEFAULT NULL,
  `text_10` longtext DEFAULT NULL,
  `text_11` longtext DEFAULT NULL,
  `text_13` longtext DEFAULT NULL,
  `text_14` longtext DEFAULT NULL,
  `text_15` longtext DEFAULT NULL,
  `text_16` longtext DEFAULT NULL,
  `text_17` longtext DEFAULT NULL,
  `text_18` longtext DEFAULT NULL,
  `text_19` longtext DEFAULT NULL,
  `text_20` longtext DEFAULT NULL,
  `password_1` varchar(255) NOT NULL DEFAULT '',
  `password_2` varchar(255) NOT NULL DEFAULT '',
  `password_3` varchar(255) NOT NULL DEFAULT '',
  `password_4` varchar(255) NOT NULL DEFAULT '',
  `password_5` varchar(255) NOT NULL DEFAULT '',
  `password_6` varchar(255) NOT NULL DEFAULT '',
  `password_7` varchar(255) NOT NULL DEFAULT '',
  `password_8` varchar(255) DEFAULT NULL,
  `color_1` varchar(7) NOT NULL DEFAULT '',
  `color_2` varchar(7) NOT NULL DEFAULT '',
  `color_3` varchar(7) NOT NULL DEFAULT '',
  `color_4` varchar(7) DEFAULT NULL,
  `radio_1` smallint(6) NOT NULL DEFAULT 0,
  `radio_2` smallint(6) NOT NULL DEFAULT 0,
  `radio_3` smallint(6) NOT NULL DEFAULT 0,
  `radio_4` varchar(255) NOT NULL DEFAULT '',
  `radio_5` varchar(255) NOT NULL DEFAULT '',
  `radio_6` smallint(6) NOT NULL DEFAULT 0,
  `link_1` varchar(2048) NOT NULL DEFAULT '',
  `link_2` varchar(2048) NOT NULL DEFAULT '',
  `link_3` varchar(2048) NOT NULL DEFAULT '',
  `link_4` varchar(2048) NOT NULL DEFAULT '',
  `link_5` varchar(2048) NOT NULL DEFAULT '',
  `number_1` decimal(10,2) NOT NULL DEFAULT 0.00,
  `number_2` int(11) NOT NULL DEFAULT 0,
  `number_3` int(11) NOT NULL DEFAULT 0,
  `number_4` int(11) NOT NULL DEFAULT 0,
  `number_5` decimal(10,2) NOT NULL DEFAULT 0.00,
  `number_7` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_elements_basic`
--

LOCK TABLES `tx_styleguide_elements_basic` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_elements_basic` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_elements_basic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_elements_folder`
--

DROP TABLE IF EXISTS `tx_styleguide_elements_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_elements_folder` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `folder_1` longtext DEFAULT NULL,
  `folder_2` longtext DEFAULT NULL,
  `folder_3` longtext DEFAULT NULL,
  `flex_1` longtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_elements_folder`
--

LOCK TABLES `tx_styleguide_elements_folder` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_elements_folder` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_elements_folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_elements_group`
--

DROP TABLE IF EXISTS `tx_styleguide_elements_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_elements_group` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `group_db_1` longtext DEFAULT NULL,
  `group_db_2` longtext DEFAULT NULL,
  `group_db_9` longtext DEFAULT NULL,
  `group_db_3` longtext DEFAULT NULL,
  `group_db_8` longtext DEFAULT NULL,
  `group_db_11` longtext DEFAULT NULL,
  `group_db_4` longtext DEFAULT NULL,
  `group_db_5` longtext DEFAULT NULL,
  `group_db_7` longtext DEFAULT NULL,
  `group_db_10` longtext DEFAULT NULL,
  `group_requestUpdate_1` longtext DEFAULT NULL,
  `flex_1` longtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_elements_group`
--

LOCK TABLES `tx_styleguide_elements_group` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_elements_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_elements_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_elements_imagemanipulation`
--

DROP TABLE IF EXISTS `tx_styleguide_elements_imagemanipulation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_elements_imagemanipulation` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `crop_1` longtext DEFAULT NULL,
  `crop_2` longtext DEFAULT NULL,
  `crop_4` longtext DEFAULT NULL,
  `crop_3` longtext DEFAULT NULL,
  `crop_5` longtext DEFAULT NULL,
  `crop_6` longtext DEFAULT NULL,
  `crop_7` longtext DEFAULT NULL,
  `crop_8` longtext DEFAULT NULL,
  `group_db_1` longtext DEFAULT NULL,
  `group_db_2` longtext DEFAULT NULL,
  `group_db_3` longtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_elements_imagemanipulation`
--

LOCK TABLES `tx_styleguide_elements_imagemanipulation` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_elements_imagemanipulation` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_elements_imagemanipulation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_elements_rte`
--

DROP TABLE IF EXISTS `tx_styleguide_elements_rte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_elements_rte` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `input_palette_1` text DEFAULT NULL,
  `rte_palette_1` text DEFAULT NULL,
  `rte_flex_1` longtext DEFAULT NULL,
  `rte_1` longtext DEFAULT NULL,
  `rte_2` longtext DEFAULT NULL,
  `rte_3` longtext DEFAULT NULL,
  `rte_4` longtext DEFAULT NULL,
  `rte_5` longtext DEFAULT NULL,
  `rte_inline_1` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_elements_rte`
--

LOCK TABLES `tx_styleguide_elements_rte` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_elements_rte` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_elements_rte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_elements_rte_flex_1_inline_1_child`
--

DROP TABLE IF EXISTS `tx_styleguide_elements_rte_flex_1_inline_1_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_elements_rte_flex_1_inline_1_child` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `parentid` int(11) NOT NULL DEFAULT 0,
  `parenttable` text DEFAULT NULL,
  `rte_1` longtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_elements_rte_flex_1_inline_1_child`
--

LOCK TABLES `tx_styleguide_elements_rte_flex_1_inline_1_child` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_elements_rte_flex_1_inline_1_child` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_elements_rte_flex_1_inline_1_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_elements_rte_inline_1_child`
--

DROP TABLE IF EXISTS `tx_styleguide_elements_rte_inline_1_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_elements_rte_inline_1_child` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `parentid` int(10) unsigned NOT NULL DEFAULT 0,
  `parenttable` varchar(255) NOT NULL DEFAULT '',
  `rte_1` longtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_elements_rte_inline_1_child`
--

LOCK TABLES `tx_styleguide_elements_rte_inline_1_child` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_elements_rte_inline_1_child` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_elements_rte_inline_1_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_elements_select`
--

DROP TABLE IF EXISTS `tx_styleguide_elements_select`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_elements_select` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `select_single_1` text DEFAULT NULL,
  `select_single_2` text DEFAULT NULL,
  `select_single_3` text DEFAULT NULL,
  `select_single_4` text DEFAULT NULL,
  `select_single_5` text DEFAULT NULL,
  `select_single_7` text DEFAULT NULL,
  `select_single_8` text DEFAULT NULL,
  `select_single_10` text DEFAULT NULL,
  `select_single_11` text DEFAULT NULL,
  `select_single_12` text DEFAULT NULL,
  `select_single_13` text DEFAULT NULL,
  `select_single_14` text DEFAULT NULL,
  `select_single_15` text DEFAULT NULL,
  `select_single_16` text DEFAULT NULL,
  `select_single_17` text DEFAULT NULL,
  `select_single_18` text DEFAULT NULL,
  `select_single_19` text DEFAULT NULL,
  `select_single_20` text DEFAULT NULL,
  `select_singlebox_1` text DEFAULT NULL,
  `select_singlebox_2` text DEFAULT NULL,
  `select_singlebox_3` text DEFAULT NULL,
  `select_checkbox_1` text DEFAULT NULL,
  `select_checkbox_2` text DEFAULT NULL,
  `select_checkbox_3` text DEFAULT NULL,
  `select_checkbox_4` text DEFAULT NULL,
  `select_checkbox_5` text DEFAULT NULL,
  `select_checkbox_6` text DEFAULT NULL,
  `select_checkbox_7` text DEFAULT NULL,
  `select_multiplesidebyside_1` text DEFAULT NULL,
  `select_multiplesidebyside_2` text DEFAULT NULL,
  `select_multiplesidebyside_3` text DEFAULT NULL,
  `select_multiplesidebyside_5` text DEFAULT NULL,
  `select_multiplesidebyside_6` text DEFAULT NULL,
  `select_multiplesidebyside_7` text DEFAULT NULL,
  `select_multiplesidebyside_8` text DEFAULT NULL,
  `select_multiplesidebyside_9` text DEFAULT NULL,
  `select_multiplesidebyside_10` text DEFAULT NULL,
  `select_tree_1` text DEFAULT NULL,
  `select_tree_2` text DEFAULT NULL,
  `select_tree_3` text DEFAULT NULL,
  `select_tree_4` text DEFAULT NULL,
  `select_tree_5` text DEFAULT NULL,
  `select_tree_6` text DEFAULT NULL,
  `select_requestUpdate_1` text DEFAULT NULL,
  `category_11` int(10) unsigned NOT NULL DEFAULT 0,
  `category_1n` longtext DEFAULT NULL,
  `category_mm` int(10) unsigned NOT NULL DEFAULT 0,
  `flex_1` longtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_elements_select`
--

LOCK TABLES `tx_styleguide_elements_select` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_elements_select` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_elements_select` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_elements_select_flex_1_multiplesidebyside_2_mm`
--

DROP TABLE IF EXISTS `tx_styleguide_elements_select_flex_1_multiplesidebyside_2_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_elements_select_flex_1_multiplesidebyside_2_mm` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT 0,
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_elements_select_flex_1_multiplesidebyside_2_mm`
--

LOCK TABLES `tx_styleguide_elements_select_flex_1_multiplesidebyside_2_mm` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_elements_select_flex_1_multiplesidebyside_2_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_elements_select_flex_1_multiplesidebyside_2_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_elements_select_multiplesidebyside_8_mm`
--

DROP TABLE IF EXISTS `tx_styleguide_elements_select_multiplesidebyside_8_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_elements_select_multiplesidebyside_8_mm` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT 0,
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid_local`,`uid_foreign`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_elements_select_multiplesidebyside_8_mm`
--

LOCK TABLES `tx_styleguide_elements_select_multiplesidebyside_8_mm` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_elements_select_multiplesidebyside_8_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_elements_select_multiplesidebyside_8_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_elements_select_single_12_foreign`
--

DROP TABLE IF EXISTS `tx_styleguide_elements_select_single_12_foreign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_elements_select_single_12_foreign` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `fal_1` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_elements_select_single_12_foreign`
--

LOCK TABLES `tx_styleguide_elements_select_single_12_foreign` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_elements_select_single_12_foreign` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_elements_select_single_12_foreign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_elements_select_single_15_mm`
--

DROP TABLE IF EXISTS `tx_styleguide_elements_select_single_15_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_elements_select_single_15_mm` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT 0,
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid_local`,`uid_foreign`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_elements_select_single_15_mm`
--

LOCK TABLES `tx_styleguide_elements_select_single_15_mm` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_elements_select_single_15_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_elements_select_single_15_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_elements_slugs`
--

DROP TABLE IF EXISTS `tx_styleguide_elements_slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_elements_slugs` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `input_1` text DEFAULT NULL,
  `input_2` text DEFAULT NULL,
  `input_3` text DEFAULT NULL,
  `slug_1` varchar(2048) DEFAULT NULL,
  `slug_2` varchar(2048) DEFAULT NULL,
  `slug_4` varchar(2048) DEFAULT NULL,
  `slug_5` varchar(2048) DEFAULT NULL,
  `slug_3` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_elements_slugs`
--

LOCK TABLES `tx_styleguide_elements_slugs` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_elements_slugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_elements_slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_elements_t3editor`
--

DROP TABLE IF EXISTS `tx_styleguide_elements_t3editor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_elements_t3editor` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3editor_reload_1` int(11) NOT NULL DEFAULT 0,
  `t3editor_flex_1` longtext DEFAULT NULL,
  `t3editor_1` longtext DEFAULT NULL,
  `t3editor_2` longtext DEFAULT NULL,
  `t3editor_inline_1` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_elements_t3editor`
--

LOCK TABLES `tx_styleguide_elements_t3editor` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_elements_t3editor` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_elements_t3editor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_elements_t3editor_flex_1_inline_1_child`
--

DROP TABLE IF EXISTS `tx_styleguide_elements_t3editor_flex_1_inline_1_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_elements_t3editor_flex_1_inline_1_child` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `parentid` int(11) NOT NULL DEFAULT 0,
  `parenttable` text DEFAULT NULL,
  `t3editor_1` longtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_elements_t3editor_flex_1_inline_1_child`
--

LOCK TABLES `tx_styleguide_elements_t3editor_flex_1_inline_1_child` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_elements_t3editor_flex_1_inline_1_child` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_elements_t3editor_flex_1_inline_1_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_elements_t3editor_inline_1_child`
--

DROP TABLE IF EXISTS `tx_styleguide_elements_t3editor_inline_1_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_elements_t3editor_inline_1_child` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `parentid` int(10) unsigned NOT NULL DEFAULT 0,
  `parenttable` varchar(255) NOT NULL DEFAULT '',
  `t3editor_1` longtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_elements_t3editor_inline_1_child`
--

LOCK TABLES `tx_styleguide_elements_t3editor_inline_1_child` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_elements_t3editor_inline_1_child` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_elements_t3editor_inline_1_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_file`
--

DROP TABLE IF EXISTS `tx_styleguide_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_file` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `file_1` int(10) unsigned NOT NULL DEFAULT 0,
  `file_2` int(10) unsigned NOT NULL DEFAULT 0,
  `file_3` int(10) unsigned NOT NULL DEFAULT 0,
  `file_4` int(10) unsigned NOT NULL DEFAULT 0,
  `file_5` int(10) unsigned NOT NULL DEFAULT 0,
  `file_flex_1` longtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_file`
--

LOCK TABLES `tx_styleguide_file` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_flex`
--

DROP TABLE IF EXISTS `tx_styleguide_flex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_flex` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `flex_file_1` longtext DEFAULT NULL,
  `flex_5` longtext DEFAULT NULL,
  `flex_1` longtext DEFAULT NULL,
  `flex_2` longtext DEFAULT NULL,
  `flex_3` longtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_flex`
--

LOCK TABLES `tx_styleguide_flex` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_flex` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_flex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_flex_flex_3_inline_1_child`
--

DROP TABLE IF EXISTS `tx_styleguide_flex_flex_3_inline_1_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_flex_flex_3_inline_1_child` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `parentid` int(11) NOT NULL DEFAULT 0,
  `parenttable` text DEFAULT NULL,
  `input_1` text DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_flex_flex_3_inline_1_child`
--

LOCK TABLES `tx_styleguide_flex_flex_3_inline_1_child` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_flex_flex_3_inline_1_child` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_flex_flex_3_inline_1_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_inline_11`
--

DROP TABLE IF EXISTS `tx_styleguide_inline_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_inline_11` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `inline_1` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_inline_11`
--

LOCK TABLES `tx_styleguide_inline_11` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_inline_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_inline_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_inline_11_child`
--

DROP TABLE IF EXISTS `tx_styleguide_inline_11_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_inline_11_child` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `input_1` text DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_inline_11_child`
--

LOCK TABLES `tx_styleguide_inline_11_child` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_inline_11_child` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_inline_11_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_inline_1n`
--

DROP TABLE IF EXISTS `tx_styleguide_inline_1n`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_inline_1n` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `inline_1` int(10) unsigned NOT NULL DEFAULT 0,
  `inline_2` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_inline_1n`
--

LOCK TABLES `tx_styleguide_inline_1n` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_inline_1n` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_inline_1n` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_inline_1n1n`
--

DROP TABLE IF EXISTS `tx_styleguide_inline_1n1n`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_inline_1n1n` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `inline_1` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_inline_1n1n`
--

LOCK TABLES `tx_styleguide_inline_1n1n` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_inline_1n1n` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_inline_1n1n` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_inline_1n1n_child`
--

DROP TABLE IF EXISTS `tx_styleguide_inline_1n1n_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_inline_1n1n_child` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `parentid` int(10) unsigned NOT NULL DEFAULT 0,
  `parenttable` varchar(255) NOT NULL DEFAULT '',
  `inline_1` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_inline_1n1n_child`
--

LOCK TABLES `tx_styleguide_inline_1n1n_child` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_inline_1n1n_child` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_inline_1n1n_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_inline_1n1n_childchild`
--

DROP TABLE IF EXISTS `tx_styleguide_inline_1n1n_childchild`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_inline_1n1n_childchild` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `input_1` text DEFAULT NULL,
  `parentid` int(10) unsigned NOT NULL DEFAULT 0,
  `parenttable` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_inline_1n1n_childchild`
--

LOCK TABLES `tx_styleguide_inline_1n1n_childchild` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_inline_1n1n_childchild` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_inline_1n1n_childchild` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_inline_1n_inline_1_child`
--

DROP TABLE IF EXISTS `tx_styleguide_inline_1n_inline_1_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_inline_1n_inline_1_child` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `disable` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `input_1` text DEFAULT NULL,
  `input_3` text DEFAULT NULL,
  `select_tree_1` text DEFAULT NULL,
  `parentid` int(10) unsigned NOT NULL DEFAULT 0,
  `parenttable` varchar(255) NOT NULL DEFAULT '',
  `group_db_1` longtext DEFAULT NULL,
  `color_1` varchar(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`disable`),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_inline_1n_inline_1_child`
--

LOCK TABLES `tx_styleguide_inline_1n_inline_1_child` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_inline_1n_inline_1_child` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_inline_1n_inline_1_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_inline_1n_inline_2_child`
--

DROP TABLE IF EXISTS `tx_styleguide_inline_1n_inline_2_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_inline_1n_inline_2_child` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `input_1` text DEFAULT NULL,
  `select_tree_1` text DEFAULT NULL,
  `parentid` int(10) unsigned NOT NULL DEFAULT 0,
  `parenttable` varchar(255) NOT NULL DEFAULT '',
  `file_1` int(10) unsigned NOT NULL DEFAULT 0,
  `rte_1` longtext DEFAULT NULL,
  `t3editor_1` longtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_inline_1n_inline_2_child`
--

LOCK TABLES `tx_styleguide_inline_1n_inline_2_child` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_inline_1n_inline_2_child` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_inline_1n_inline_2_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_inline_1nnol10n`
--

DROP TABLE IF EXISTS `tx_styleguide_inline_1nnol10n`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_inline_1nnol10n` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `inline_1` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_inline_1nnol10n`
--

LOCK TABLES `tx_styleguide_inline_1nnol10n` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_inline_1nnol10n` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_inline_1nnol10n` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_inline_1nnol10n_child`
--

DROP TABLE IF EXISTS `tx_styleguide_inline_1nnol10n_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_inline_1nnol10n_child` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `disable` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `input_1` text DEFAULT NULL,
  `parentid` int(10) unsigned NOT NULL DEFAULT 0,
  `parenttable` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`disable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_inline_1nnol10n_child`
--

LOCK TABLES `tx_styleguide_inline_1nnol10n_child` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_inline_1nnol10n_child` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_inline_1nnol10n_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_inline_1nreusabletable`
--

DROP TABLE IF EXISTS `tx_styleguide_inline_1nreusabletable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_inline_1nreusabletable` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `inline_1` int(10) unsigned NOT NULL DEFAULT 0,
  `inline_2` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_inline_1nreusabletable`
--

LOCK TABLES `tx_styleguide_inline_1nreusabletable` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_inline_1nreusabletable` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_inline_1nreusabletable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_inline_1nreusabletable_child`
--

DROP TABLE IF EXISTS `tx_styleguide_inline_1nreusabletable_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_inline_1nreusabletable_child` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `disable` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `role` text DEFAULT NULL,
  `parentid` int(10) unsigned NOT NULL DEFAULT 0,
  `parenttable` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`disable`),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_inline_1nreusabletable_child`
--

LOCK TABLES `tx_styleguide_inline_1nreusabletable_child` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_inline_1nreusabletable_child` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_inline_1nreusabletable_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_inline_expand`
--

DROP TABLE IF EXISTS `tx_styleguide_inline_expand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_inline_expand` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `inline_1` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_inline_expand`
--

LOCK TABLES `tx_styleguide_inline_expand` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_inline_expand` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_inline_expand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_inline_expand_inline_1_child`
--

DROP TABLE IF EXISTS `tx_styleguide_inline_expand_inline_1_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_inline_expand_inline_1_child` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `dummy_1` text DEFAULT NULL,
  `select_tree_1` text DEFAULT NULL,
  `parentid` int(10) unsigned NOT NULL DEFAULT 0,
  `parenttable` varchar(255) NOT NULL DEFAULT '',
  `file_1` int(10) unsigned NOT NULL DEFAULT 0,
  `rte_1` longtext DEFAULT NULL,
  `t3editor_1` longtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_inline_expand_inline_1_child`
--

LOCK TABLES `tx_styleguide_inline_expand_inline_1_child` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_inline_expand_inline_1_child` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_inline_expand_inline_1_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_inline_expandsingle`
--

DROP TABLE IF EXISTS `tx_styleguide_inline_expandsingle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_inline_expandsingle` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `inline_1` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_inline_expandsingle`
--

LOCK TABLES `tx_styleguide_inline_expandsingle` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_inline_expandsingle` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_inline_expandsingle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_inline_expandsingle_child`
--

DROP TABLE IF EXISTS `tx_styleguide_inline_expandsingle_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_inline_expandsingle_child` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `input_1` text DEFAULT NULL,
  `parentid` int(10) unsigned NOT NULL DEFAULT 0,
  `parenttable` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_inline_expandsingle_child`
--

LOCK TABLES `tx_styleguide_inline_expandsingle_child` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_inline_expandsingle_child` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_inline_expandsingle_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_inline_foreignrecorddefaults`
--

DROP TABLE IF EXISTS `tx_styleguide_inline_foreignrecorddefaults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_inline_foreignrecorddefaults` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `inline_1` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_inline_foreignrecorddefaults`
--

LOCK TABLES `tx_styleguide_inline_foreignrecorddefaults` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_inline_foreignrecorddefaults` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_inline_foreignrecorddefaults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_inline_foreignrecorddefaults_child`
--

DROP TABLE IF EXISTS `tx_styleguide_inline_foreignrecorddefaults_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_inline_foreignrecorddefaults_child` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `input_1` text DEFAULT NULL,
  `parentid` int(10) unsigned NOT NULL DEFAULT 0,
  `parenttable` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_inline_foreignrecorddefaults_child`
--

LOCK TABLES `tx_styleguide_inline_foreignrecorddefaults_child` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_inline_foreignrecorddefaults_child` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_inline_foreignrecorddefaults_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_inline_mm`
--

DROP TABLE IF EXISTS `tx_styleguide_inline_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_inline_mm` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `title` tinytext DEFAULT NULL,
  `inline_1` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_inline_mm`
--

LOCK TABLES `tx_styleguide_inline_mm` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_inline_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_inline_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_inline_mm_child`
--

DROP TABLE IF EXISTS `tx_styleguide_inline_mm_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_inline_mm_child` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `title` tinytext DEFAULT NULL,
  `parents` int(10) unsigned NOT NULL DEFAULT 0,
  `inline_2` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_inline_mm_child`
--

LOCK TABLES `tx_styleguide_inline_mm_child` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_inline_mm_child` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_inline_mm_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_inline_mm_child_childchild_rel`
--

DROP TABLE IF EXISTS `tx_styleguide_inline_mm_child_childchild_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_inline_mm_child_childchild_rel` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT 0,
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid_local`,`uid_foreign`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_inline_mm_child_childchild_rel`
--

LOCK TABLES `tx_styleguide_inline_mm_child_childchild_rel` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_inline_mm_child_childchild_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_inline_mm_child_childchild_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_inline_mm_child_rel`
--

DROP TABLE IF EXISTS `tx_styleguide_inline_mm_child_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_inline_mm_child_rel` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT 0,
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid_local`,`uid_foreign`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_inline_mm_child_rel`
--

LOCK TABLES `tx_styleguide_inline_mm_child_rel` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_inline_mm_child_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_inline_mm_child_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_inline_mm_childchild`
--

DROP TABLE IF EXISTS `tx_styleguide_inline_mm_childchild`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_inline_mm_childchild` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `title` tinytext DEFAULT NULL,
  `parents` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_inline_mm_childchild`
--

LOCK TABLES `tx_styleguide_inline_mm_childchild` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_inline_mm_childchild` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_inline_mm_childchild` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_inline_mn`
--

DROP TABLE IF EXISTS `tx_styleguide_inline_mn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_inline_mn` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `input_1` tinytext DEFAULT NULL,
  `inline_1` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_inline_mn`
--

LOCK TABLES `tx_styleguide_inline_mn` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_inline_mn` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_inline_mn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_inline_mn_child`
--

DROP TABLE IF EXISTS `tx_styleguide_inline_mn_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_inline_mn_child` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `input_1` tinytext DEFAULT NULL,
  `parents` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_inline_mn_child`
--

LOCK TABLES `tx_styleguide_inline_mn_child` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_inline_mn_child` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_inline_mn_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_inline_mn_mm`
--

DROP TABLE IF EXISTS `tx_styleguide_inline_mn_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_inline_mn_mm` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `parentid` int(11) NOT NULL DEFAULT 0,
  `childid` int(11) NOT NULL DEFAULT 0,
  `parentsort` int(11) NOT NULL DEFAULT 0,
  `childsort` int(11) NOT NULL DEFAULT 0,
  `check_1` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_inline_mn_mm`
--

LOCK TABLES `tx_styleguide_inline_mn_mm` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_inline_mn_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_inline_mn_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_inline_mngroup`
--

DROP TABLE IF EXISTS `tx_styleguide_inline_mngroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_inline_mngroup` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `input_1` tinytext DEFAULT NULL,
  `inline_1` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_inline_mngroup`
--

LOCK TABLES `tx_styleguide_inline_mngroup` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_inline_mngroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_inline_mngroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_inline_mngroup_child`
--

DROP TABLE IF EXISTS `tx_styleguide_inline_mngroup_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_inline_mngroup_child` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `input_1` tinytext DEFAULT NULL,
  `parents` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_inline_mngroup_child`
--

LOCK TABLES `tx_styleguide_inline_mngroup_child` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_inline_mngroup_child` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_inline_mngroup_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_inline_mngroup_mm`
--

DROP TABLE IF EXISTS `tx_styleguide_inline_mngroup_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_inline_mngroup_mm` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `parentsort` int(11) NOT NULL DEFAULT 0,
  `childsort` int(11) NOT NULL DEFAULT 0,
  `check_1` smallint(5) unsigned NOT NULL DEFAULT 0,
  `parentid` longtext DEFAULT NULL,
  `childid` longtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_inline_mngroup_mm`
--

LOCK TABLES `tx_styleguide_inline_mngroup_mm` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_inline_mngroup_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_inline_mngroup_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_inline_mnsymmetric`
--

DROP TABLE IF EXISTS `tx_styleguide_inline_mnsymmetric`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_inline_mnsymmetric` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `input_1` tinytext DEFAULT NULL,
  `branches` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_inline_mnsymmetric`
--

LOCK TABLES `tx_styleguide_inline_mnsymmetric` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_inline_mnsymmetric` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_inline_mnsymmetric` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_inline_mnsymmetric_mm`
--

DROP TABLE IF EXISTS `tx_styleguide_inline_mnsymmetric_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_inline_mnsymmetric_mm` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `hotelid` int(11) NOT NULL DEFAULT 0,
  `branchid` int(11) NOT NULL DEFAULT 0,
  `hotelsort` int(11) NOT NULL DEFAULT 0,
  `branchsort` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_inline_mnsymmetric_mm`
--

LOCK TABLES `tx_styleguide_inline_mnsymmetric_mm` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_inline_mnsymmetric_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_inline_mnsymmetric_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_inline_mnsymmetricgroup`
--

DROP TABLE IF EXISTS `tx_styleguide_inline_mnsymmetricgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_inline_mnsymmetricgroup` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `input_1` tinytext DEFAULT NULL,
  `branches` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_inline_mnsymmetricgroup`
--

LOCK TABLES `tx_styleguide_inline_mnsymmetricgroup` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_inline_mnsymmetricgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_inline_mnsymmetricgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_inline_mnsymmetricgroup_mm`
--

DROP TABLE IF EXISTS `tx_styleguide_inline_mnsymmetricgroup_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_inline_mnsymmetricgroup_mm` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `hotelid` int(11) NOT NULL DEFAULT 0,
  `branchid` int(11) NOT NULL DEFAULT 0,
  `hotelsort` int(11) NOT NULL DEFAULT 0,
  `branchsort` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_inline_mnsymmetricgroup_mm`
--

LOCK TABLES `tx_styleguide_inline_mnsymmetricgroup_mm` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_inline_mnsymmetricgroup_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_inline_mnsymmetricgroup_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_inline_parentnosoftdelete`
--

DROP TABLE IF EXISTS `tx_styleguide_inline_parentnosoftdelete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_inline_parentnosoftdelete` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `text_1` text DEFAULT NULL,
  `file_1` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_inline_parentnosoftdelete`
--

LOCK TABLES `tx_styleguide_inline_parentnosoftdelete` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_inline_parentnosoftdelete` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_inline_parentnosoftdelete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_inline_usecombination`
--

DROP TABLE IF EXISTS `tx_styleguide_inline_usecombination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_inline_usecombination` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `inline_1` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_inline_usecombination`
--

LOCK TABLES `tx_styleguide_inline_usecombination` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_inline_usecombination` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_inline_usecombination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_inline_usecombination_child`
--

DROP TABLE IF EXISTS `tx_styleguide_inline_usecombination_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_inline_usecombination_child` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `input_1` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_inline_usecombination_child`
--

LOCK TABLES `tx_styleguide_inline_usecombination_child` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_inline_usecombination_child` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_inline_usecombination_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_inline_usecombination_mm`
--

DROP TABLE IF EXISTS `tx_styleguide_inline_usecombination_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_inline_usecombination_mm` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `select_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `select_child` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_inline_usecombination_mm`
--

LOCK TABLES `tx_styleguide_inline_usecombination_mm` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_inline_usecombination_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_inline_usecombination_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_inline_usecombinationbox`
--

DROP TABLE IF EXISTS `tx_styleguide_inline_usecombinationbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_inline_usecombinationbox` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `inline_1` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_inline_usecombinationbox`
--

LOCK TABLES `tx_styleguide_inline_usecombinationbox` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_inline_usecombinationbox` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_inline_usecombinationbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_inline_usecombinationbox_child`
--

DROP TABLE IF EXISTS `tx_styleguide_inline_usecombinationbox_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_inline_usecombinationbox_child` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `input_1` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_inline_usecombinationbox_child`
--

LOCK TABLES `tx_styleguide_inline_usecombinationbox_child` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_inline_usecombinationbox_child` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_inline_usecombinationbox_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_inline_usecombinationbox_mm`
--

DROP TABLE IF EXISTS `tx_styleguide_inline_usecombinationbox_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_inline_usecombinationbox_mm` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `select_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `select_child` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_inline_usecombinationbox_mm`
--

LOCK TABLES `tx_styleguide_inline_usecombinationbox_mm` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_inline_usecombinationbox_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_inline_usecombinationbox_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_l10nreadonly`
--

DROP TABLE IF EXISTS `tx_styleguide_l10nreadonly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_l10nreadonly` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `input` text DEFAULT NULL,
  `none` text DEFAULT NULL,
  `language` int(11) NOT NULL DEFAULT 0,
  `select_single` text DEFAULT NULL,
  `select_single_box` text DEFAULT NULL,
  `select_checkbox` text DEFAULT NULL,
  `select_tree` text DEFAULT NULL,
  `select_tree_mm` text DEFAULT NULL,
  `select_multiplesidebyside` text DEFAULT NULL,
  `select_multiplesidebyside_mm` text DEFAULT NULL,
  `category_11` int(10) unsigned NOT NULL DEFAULT 0,
  `category_1n` longtext DEFAULT NULL,
  `category_mm` int(10) unsigned NOT NULL DEFAULT 0,
  `datetime` int(11) NOT NULL DEFAULT 0,
  `slug` varchar(2048) DEFAULT NULL,
  `folder` longtext DEFAULT NULL,
  `checkbox` smallint(5) unsigned NOT NULL DEFAULT 0,
  `checkbox_toggle` smallint(5) unsigned NOT NULL DEFAULT 0,
  `checkbox_labeled_toggle` smallint(5) unsigned NOT NULL DEFAULT 0,
  `image_manipulation` longtext DEFAULT NULL,
  `group` longtext DEFAULT NULL,
  `group_mm` int(10) unsigned NOT NULL DEFAULT 0,
  `group_file` longtext DEFAULT NULL,
  `flex` longtext DEFAULT NULL,
  `text` longtext DEFAULT NULL,
  `text_rte` longtext DEFAULT NULL,
  `text_belayoutwizard` longtext DEFAULT NULL,
  `text_t3editor` longtext DEFAULT NULL,
  `text_table` longtext DEFAULT NULL,
  `color` varchar(7) NOT NULL DEFAULT '',
  `radio` smallint(6) NOT NULL DEFAULT 0,
  `link` varchar(2048) NOT NULL DEFAULT '',
  `inline` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_l10nreadonly`
--

LOCK TABLES `tx_styleguide_l10nreadonly` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_l10nreadonly` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_l10nreadonly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_l10nreadonly_group_mm`
--

DROP TABLE IF EXISTS `tx_styleguide_l10nreadonly_group_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_l10nreadonly_group_mm` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT 0,
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid_local`,`uid_foreign`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_l10nreadonly_group_mm`
--

LOCK TABLES `tx_styleguide_l10nreadonly_group_mm` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_l10nreadonly_group_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_l10nreadonly_group_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_l10nreadonly_inline_child`
--

DROP TABLE IF EXISTS `tx_styleguide_l10nreadonly_inline_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_l10nreadonly_inline_child` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `input` text DEFAULT NULL,
  `parentid` int(10) unsigned NOT NULL DEFAULT 0,
  `parenttable` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_l10nreadonly_inline_child`
--

LOCK TABLES `tx_styleguide_l10nreadonly_inline_child` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_l10nreadonly_inline_child` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_l10nreadonly_inline_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_l10nreadonly_select_multiplesidebyside_mm`
--

DROP TABLE IF EXISTS `tx_styleguide_l10nreadonly_select_multiplesidebyside_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_l10nreadonly_select_multiplesidebyside_mm` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT 0,
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid_local`,`uid_foreign`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_l10nreadonly_select_multiplesidebyside_mm`
--

LOCK TABLES `tx_styleguide_l10nreadonly_select_multiplesidebyside_mm` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_l10nreadonly_select_multiplesidebyside_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_l10nreadonly_select_multiplesidebyside_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_l10nreadonly_select_tree_mm`
--

DROP TABLE IF EXISTS `tx_styleguide_l10nreadonly_select_tree_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_l10nreadonly_select_tree_mm` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT 0,
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid_local`,`uid_foreign`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_l10nreadonly_select_tree_mm`
--

LOCK TABLES `tx_styleguide_l10nreadonly_select_tree_mm` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_l10nreadonly_select_tree_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_l10nreadonly_select_tree_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_palette`
--

DROP TABLE IF EXISTS `tx_styleguide_palette`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_palette` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `palette_2_1` text DEFAULT NULL,
  `palette_3_1` text DEFAULT NULL,
  `palette_3_2` text DEFAULT NULL,
  `palette_4_1` text DEFAULT NULL,
  `palette_4_2` text DEFAULT NULL,
  `palette_4_3` text DEFAULT NULL,
  `palette_4_4` text DEFAULT NULL,
  `palette_5_1` text DEFAULT NULL,
  `palette_5_2` text DEFAULT NULL,
  `palette_6_1` text DEFAULT NULL,
  `palette_7_1` text DEFAULT NULL,
  `palette_1_1` smallint(5) unsigned NOT NULL DEFAULT 0,
  `palette_1_3` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_palette`
--

LOCK TABLES `tx_styleguide_palette` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_palette` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_palette` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_required`
--

DROP TABLE IF EXISTS `tx_styleguide_required`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_required` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `notrequired_1` text DEFAULT NULL,
  `input_1` text DEFAULT NULL,
  `select_1` text DEFAULT NULL,
  `select_2` text DEFAULT NULL,
  `select_3` text DEFAULT NULL,
  `select_4` text DEFAULT NULL,
  `select_5` text DEFAULT NULL,
  `rte_1` text DEFAULT NULL,
  `palette_input_1` text DEFAULT NULL,
  `palette_input_2` text DEFAULT NULL,
  `input_2` int(11) NOT NULL DEFAULT 0,
  `group_1` longtext DEFAULT NULL,
  `group_2` longtext DEFAULT NULL,
  `flex_1` longtext DEFAULT NULL,
  `flex_2` longtext DEFAULT NULL,
  `text_1` longtext DEFAULT NULL,
  `link_1` varchar(2048) NOT NULL DEFAULT '',
  `rte_2` int(10) unsigned NOT NULL DEFAULT 0,
  `inline_1` int(10) unsigned NOT NULL DEFAULT 0,
  `inline_2` int(10) unsigned NOT NULL DEFAULT 0,
  `inline_3` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_required`
--

LOCK TABLES `tx_styleguide_required` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_required` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_required` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_required_flex_2_inline_1_child`
--

DROP TABLE IF EXISTS `tx_styleguide_required_flex_2_inline_1_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_required_flex_2_inline_1_child` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `parentid` int(11) NOT NULL DEFAULT 0,
  `parenttable` text DEFAULT NULL,
  `input_1` text DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_required_flex_2_inline_1_child`
--

LOCK TABLES `tx_styleguide_required_flex_2_inline_1_child` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_required_flex_2_inline_1_child` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_required_flex_2_inline_1_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_required_inline_1_child`
--

DROP TABLE IF EXISTS `tx_styleguide_required_inline_1_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_required_inline_1_child` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `input_1` text DEFAULT NULL,
  `parentid` int(10) unsigned NOT NULL DEFAULT 0,
  `parenttable` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_required_inline_1_child`
--

LOCK TABLES `tx_styleguide_required_inline_1_child` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_required_inline_1_child` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_required_inline_1_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_required_inline_2_child`
--

DROP TABLE IF EXISTS `tx_styleguide_required_inline_2_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_required_inline_2_child` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `input_1` text DEFAULT NULL,
  `parentid` int(10) unsigned NOT NULL DEFAULT 0,
  `parenttable` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_required_inline_2_child`
--

LOCK TABLES `tx_styleguide_required_inline_2_child` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_required_inline_2_child` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_required_inline_2_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_required_inline_3_child`
--

DROP TABLE IF EXISTS `tx_styleguide_required_inline_3_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_required_inline_3_child` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `input_1` text DEFAULT NULL,
  `parentid` int(10) unsigned NOT NULL DEFAULT 0,
  `parenttable` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_required_inline_3_child`
--

LOCK TABLES `tx_styleguide_required_inline_3_child` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_required_inline_3_child` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_required_inline_3_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_required_rte_2_child`
--

DROP TABLE IF EXISTS `tx_styleguide_required_rte_2_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_required_rte_2_child` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `parentid` int(10) unsigned NOT NULL DEFAULT 0,
  `parenttable` varchar(255) NOT NULL DEFAULT '',
  `rte_1` longtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_required_rte_2_child`
--

LOCK TABLES `tx_styleguide_required_rte_2_child` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_required_rte_2_child` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_required_rte_2_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_staticdata`
--

DROP TABLE IF EXISTS `tx_styleguide_staticdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_staticdata` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `value_1` tinytext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_staticdata`
--

LOCK TABLES `tx_styleguide_staticdata` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_staticdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_staticdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_type`
--

DROP TABLE IF EXISTS `tx_styleguide_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_type` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `record_type` text DEFAULT NULL,
  `input_1` text DEFAULT NULL,
  `text_1` longtext DEFAULT NULL,
  `color_1` varchar(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_type`
--

LOCK TABLES `tx_styleguide_type` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_typeforeign`
--

DROP TABLE IF EXISTS `tx_styleguide_typeforeign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_typeforeign` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `foreign_table` int(11) NOT NULL DEFAULT 0,
  `input_1` text DEFAULT NULL,
  `text_1` longtext DEFAULT NULL,
  `color_1` varchar(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_typeforeign`
--

LOCK TABLES `tx_styleguide_typeforeign` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_typeforeign` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_typeforeign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_styleguide_valuesdefault`
--

DROP TABLE IF EXISTS `tx_styleguide_valuesdefault`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_styleguide_valuesdefault` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `input_1` text DEFAULT NULL,
  `select_1` text DEFAULT NULL,
  `select_2` text DEFAULT NULL,
  `input_2` int(11) NOT NULL DEFAULT 0,
  `checkbox_1` smallint(5) unsigned NOT NULL DEFAULT 0,
  `checkbox_2` smallint(5) unsigned NOT NULL DEFAULT 0,
  `checkbox_3` smallint(5) unsigned NOT NULL DEFAULT 0,
  `checkbox_4` smallint(5) unsigned NOT NULL DEFAULT 0,
  `text_1` longtext DEFAULT NULL,
  `radio_1` smallint(6) NOT NULL DEFAULT 0,
  `radio_2` varchar(255) NOT NULL DEFAULT '',
  `radio_3` varchar(255) NOT NULL DEFAULT '',
  `number_1` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_styleguide_valuesdefault`
--

LOCK TABLES `tx_styleguide_valuesdefault` WRITE;
/*!40000 ALTER TABLE `tx_styleguide_valuesdefault` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_styleguide_valuesdefault` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-21 13:38:19
