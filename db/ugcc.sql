-- --------------------------------------------------------
-- Host:                         iam2
-- Server version:               8.0.23 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6251
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table ugcctest.config
CREATE TABLE IF NOT EXISTS `config` (
  `config_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `config_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table ugcctest.config: ~14 rows (approximately)
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` (`config_name`, `config_value`, `id`) VALUES
	('dbver', '7', 1),
	('updateinterval', '60', 2),
	('ContactInfo', 'Enter your contact info here.....', 3),
	('ContactEmail', 'mail@null.com', 4),
	('maxfilesize', '102400', 5),
	('extension', '.txt', 6),
	('extension', '.ini', 7),
	('extension', '.cfg', 8),
	('extension', '.log', 9),
	('bccemail', 'masher@brainless.us', 10),
	('ReminderMessage', 'Reminder:  The payment for your game server, %ServerName%, is due %DueDate%.\r\n\r\nTo ensure uninterrupted service please send your payment of $%PaymentAmount% as soon as possible.\r\n\r\nThanks for your business!\r\n\r\nNote:  This is an automated message and may not reflect your current account status.  If you`ve already paid you can disregard this message.', 11),
	('ReminderSubject', 'Gameserver Payment Reminder', 12),
	('SMTPserver', 'mail.null.com', 13),
	('fromemail', '"Game Servers"<mail@null.com>', 14);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;

-- Dumping structure for table ugcctest.groups
CREATE TABLE IF NOT EXISTS `groups` (
  `gid` int NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table ugcctest.groups: ~0 rows (approximately)
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;

-- Dumping structure for table ugcctest.group_members
CREATE TABLE IF NOT EXISTS `group_members` (
  `gid` double DEFAULT NULL,
  `uid` double DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table ugcctest.group_members: ~0 rows (approximately)
/*!40000 ALTER TABLE `group_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_members` ENABLE KEYS */;

-- Dumping structure for table ugcctest.group_perms
CREATE TABLE IF NOT EXISTS `group_perms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `gid` double DEFAULT NULL,
  `sid` double DEFAULT NULL,
  `perm` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table ugcctest.group_perms: ~0 rows (approximately)
/*!40000 ALTER TABLE `group_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_perms` ENABLE KEYS */;

-- Dumping structure for table ugcctest.serverdef
CREATE TABLE IF NOT EXISTS `serverdef` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ip` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `port` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table ugcctest.serverdef: ~1 rows (approximately)
/*!40000 ALTER TABLE `serverdef` DISABLE KEYS */;
INSERT INTO `serverdef` (`id`, `name`, `ip`, `port`, `secret`) VALUES
	(1, 'This Host', '', '', '');
/*!40000 ALTER TABLE `serverdef` ENABLE KEYS */;

-- Dumping structure for table ugcctest.servers
CREATE TABLE IF NOT EXISTS `servers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user` int DEFAULT '0',
  `friendlyname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `startpath` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `cmd` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `cmdhash` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `args` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `hiddenargs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `editargs` int DEFAULT '0',
  `pid` int DEFAULT '0',
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `allowupdate` int DEFAULT '0',
  `updcmd` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `updargs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `fedit` int DEFAULT '0',
  `fpath` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `lastupdate` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `qryip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `qryport` int DEFAULT '0',
  `admin_notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `user_notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `autorestart` int DEFAULT '0',
  `nostart` int DEFAULT '0',
  `extracmd` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `extralbl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `extraargs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `priority` int DEFAULT '0',
  `cpuafin` int DEFAULT '0',
  `duedate` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `amountdue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `img` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `sdefid` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table ugcctest.servers: ~0 rows (approximately)
/*!40000 ALTER TABLE `servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `servers` ENABLE KEYS */;

-- Dumping structure for table ugcctest.tickmon
CREATE TABLE IF NOT EXISTS `tickmon` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ini` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `net` int DEFAULT '0',
  `tick` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table ugcctest.tickmon: ~0 rows (approximately)
/*!40000 ALTER TABLE `tickmon` DISABLE KEYS */;
/*!40000 ALTER TABLE `tickmon` ENABLE KEYS */;

-- Dumping structure for table ugcctest.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `admin` tinyint DEFAULT '0',
  `god` tinyint DEFAULT '0',
  `enabled` tinyint DEFAULT '0',
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `maxsrvrs` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table ugcctest.users: ~1 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `user`, `password`, `admin`, `god`, `enabled`, `email`, `info`, `maxsrvrs`) VALUES
	(1, 'admin', 'admin', 1, 1, 1, 'youremail@null.com', '', 0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
