-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.14-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for roleplay
CREATE DATABASE IF NOT EXISTS `roleplay` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `roleplay`;

-- Dumping structure for table roleplay.accounts
CREATE TABLE IF NOT EXISTS `accounts` (
  `name` varchar(255) NOT NULL,
  `owner` varchar(64) DEFAULT NULL,
  `money` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.accounts: ~0 rows (approximately)
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;

-- Dumping structure for table roleplay.addon_account
CREATE TABLE IF NOT EXISTS `addon_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- Dumping data for table roleplay.addon_account: ~23 rows (approximately)
/*!40000 ALTER TABLE `addon_account` DISABLE KEYS */;
REPLACE INTO `addon_account` (`id`, `name`, `label`, `shared`) VALUES
	(1, 'society_police', 'Police', 1),
	(2, 'caution', 'Caution', 0),
	(3, 'society_cardealer', 'Cardealer', 1),
	(4, 'society_ambulance', 'Ambulance', 1),
	(5, 'property_black_money', 'Dirty Money', 0),
	(6, 'society_realestateagent', 'Realestate agent', 1),
	(8, 'society_banker', 'Society Bank', 1),
	(9, 'bank_savings', 'Bank Savings', 0),
	(10, 'society_taxi', 'Taxi', 1),
	(12, 'society_mafia', 'Mafia', 1),
	(13, 'society_cartel', 'Cartel', 1),
	(14, 'society_thelostmc', 'The Lost MC', 1),
	(16, 'society_carthief', 'Car Thief', 1),
	(19, 'society_cardealer', 'Cardealer', 1),
	(22, 'society_ambulance', 'EMS', 1),
	(25, 'property_black_money', 'Money Sale Property', 0),
	(26, 'society_fbi', 'FBI', 1),
	(27, 'society_police', 'Police', 1),
	(28, 'society_cardealer', 'Cardealer', 1),
	(29, 'society_police', 'Police', 1),
	(30, 'society_mafia', 'mafia', 1),
	(31, 'property_black_money', 'Money Sale Property', 0),
	(33, 'society_mecano', 'Mechanic', 1),
	(34, 'society_cukur', 'cukur', 1),
	(35, 'society_taxi', 'Taxi', 1),
	(36, 'bag_black_money', 'Bag Black Money ', 0),
	(37, 'bag_money', 'Bag Money ', 0);
/*!40000 ALTER TABLE `addon_account` ENABLE KEYS */;

-- Dumping structure for table roleplay.addon_account_data
CREATE TABLE IF NOT EXISTS `addon_account_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` double NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18339 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- Dumping data for table roleplay.addon_account_data: ~66 rows (approximately)
/*!40000 ALTER TABLE `addon_account_data` DISABLE KEYS */;
REPLACE INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
	(1, 'society_police', 38700, NULL),
	(5, 'society_cardealer', 0, NULL),
	(6, 'society_ambulance', 1950, NULL),
	(7, 'society_realestateagent', 49813, NULL),
	(17, 'society_mecano', 0, NULL),
	(30, 'society_banker', 0, NULL),
	(35, 'society_taxi', 0, NULL),
	(14568, 'society_cartel', 0, NULL),
	(15083, 'society_thelostmc', 0, NULL),
	(16441, 'society_lscs', 0, NULL),
	(16853, 'society_carthief', 0, NULL),
	(16960, 'society_lscs', 0, NULL),
	(18282, 'society_mafia', 1, NULL),
	(18283, 'caution', 0, 'steam:1100001049f85e2'),
	(18284, 'property_black_money', 0, 'steam:1100001049f85e2'),
	(18285, 'bank_savings', 0, 'steam:1100001049f85e2'),
	(18286, 'caution', 0, '54f6145a9c929927df2822e3dff5193409d8d6c1'),
	(18287, 'bank_savings', 0, '54f6145a9c929927df2822e3dff5193409d8d6c1'),
	(18288, 'property_black_money', 0, '54f6145a9c929927df2822e3dff5193409d8d6c1'),
	(18289, 'society_mechanic', 0, NULL),
	(18290, 'caution', 0, 'steam:1100001327442d2'),
	(18291, 'property_black_money', 0, 'steam:1100001327442d2'),
	(18292, 'bank_savings', 0, 'steam:1100001327442d2'),
	(18293, 'society_fbi', 0, NULL),
	(18294, 'property_black_money', 0, '86ebc681760fc8d8ea38245f1f57329cb1908660'),
	(18295, 'caution', 0, '86ebc681760fc8d8ea38245f1f57329cb1908660'),
	(18296, 'bank_savings', 0, '86ebc681760fc8d8ea38245f1f57329cb1908660'),
	(18297, 'property_black_money', 0, 'b41b52126791f4f11bdaff0c0b1c3c7bcf4688e4'),
	(18298, 'bank_savings', 0, 'b41b52126791f4f11bdaff0c0b1c3c7bcf4688e4'),
	(18299, 'caution', 0, 'b41b52126791f4f11bdaff0c0b1c3c7bcf4688e4'),
	(18300, 'bank_savings', 0, '93127bb0ed4b5a36ff043d6b8b7134372139f6ed'),
	(18301, 'property_black_money', 0, '93127bb0ed4b5a36ff043d6b8b7134372139f6ed'),
	(18302, 'caution', 0, '93127bb0ed4b5a36ff043d6b8b7134372139f6ed'),
	(18303, 'bank_savings', 0, 'b8039ca31ef72cb33e92643949b25903cf158ecd'),
	(18304, 'property_black_money', 0, 'b8039ca31ef72cb33e92643949b25903cf158ecd'),
	(18305, 'caution', 0, 'b8039ca31ef72cb33e92643949b25903cf158ecd'),
	(18306, 'bank_savings', 0, '21dd81e3698f2abd05e0b47b44e37b20a814ddff'),
	(18307, 'property_black_money', 0, '21dd81e3698f2abd05e0b47b44e37b20a814ddff'),
	(18308, 'caution', 0, '21dd81e3698f2abd05e0b47b44e37b20a814ddff'),
	(18309, 'bank_savings', 0, 'df0ffc6e7e4b018f5b7fbcd8c9f2e2e03b9c7d74'),
	(18310, 'property_black_money', 0, 'df0ffc6e7e4b018f5b7fbcd8c9f2e2e03b9c7d74'),
	(18311, 'caution', 0, 'df0ffc6e7e4b018f5b7fbcd8c9f2e2e03b9c7d74'),
	(18312, 'property_black_money', 0, 'b604af7643734e0a392bc62768baac0e9ec9e369'),
	(18313, 'caution', 0, 'b604af7643734e0a392bc62768baac0e9ec9e369'),
	(18314, 'bank_savings', 0, 'b604af7643734e0a392bc62768baac0e9ec9e369'),
	(18315, 'bank_savings', 0, 'd37ed6c4d51971c878b12cb37ffa6d81e6850f34'),
	(18316, 'property_black_money', 0, 'd37ed6c4d51971c878b12cb37ffa6d81e6850f34'),
	(18317, 'caution', 0, 'd37ed6c4d51971c878b12cb37ffa6d81e6850f34'),
	(18318, 'caution', 0, 'b8ccd3aecb53015dc021d5d9f30e0ddeb8eeaa16'),
	(18319, 'property_black_money', 0, 'b8ccd3aecb53015dc021d5d9f30e0ddeb8eeaa16'),
	(18320, 'bank_savings', 0, 'b8ccd3aecb53015dc021d5d9f30e0ddeb8eeaa16'),
	(18321, 'caution', 0, '389c7157b009fc4d480dad724925e30b5c49d4ef'),
	(18322, 'bank_savings', 0, '389c7157b009fc4d480dad724925e30b5c49d4ef'),
	(18323, 'property_black_money', 0, '389c7157b009fc4d480dad724925e30b5c49d4ef'),
	(18324, 'caution', 0, 'b829fe67e90b97a8b506d331ef53a3a89afcb815'),
	(18325, 'property_black_money', 0, 'b829fe67e90b97a8b506d331ef53a3a89afcb815'),
	(18326, 'bank_savings', 0, 'b829fe67e90b97a8b506d331ef53a3a89afcb815'),
	(18327, 'caution', 0, '9c9639d1d80f2a9b245e63f5a27ad1556dff15be'),
	(18328, 'property_black_money', 0, '9c9639d1d80f2a9b245e63f5a27ad1556dff15be'),
	(18329, 'bank_savings', 0, '9c9639d1d80f2a9b245e63f5a27ad1556dff15be'),
	(18330, 'bank_savings', 0, '6dc41b24e538db50911dd41424932083637fd198'),
	(18331, 'caution', 0, '6dc41b24e538db50911dd41424932083637fd198'),
	(18332, 'property_black_money', 0, '6dc41b24e538db50911dd41424932083637fd198'),
	(18333, 'caution', 0, 'f28fd19b3a813e237e650b83b1dbe5ecf246ba63'),
	(18334, 'property_black_money', 0, 'f28fd19b3a813e237e650b83b1dbe5ecf246ba63'),
	(18335, 'bank_savings', 0, 'f28fd19b3a813e237e650b83b1dbe5ecf246ba63'),
	(18336, 'society_cukur', 0, NULL),
	(18337, 'bag_black_money', 0, '54f6145a9c929927df2822e3dff5193409d8d6c1'),
	(18338, 'bag_money', 0, '54f6145a9c929927df2822e3dff5193409d8d6c1');
/*!40000 ALTER TABLE `addon_account_data` ENABLE KEYS */;

-- Dumping structure for table roleplay.addon_inventory
CREATE TABLE IF NOT EXISTS `addon_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- Dumping data for table roleplay.addon_inventory: ~25 rows (approximately)
/*!40000 ALTER TABLE `addon_inventory` DISABLE KEYS */;
REPLACE INTO `addon_inventory` (`id`, `name`, `label`, `shared`) VALUES
	(1, 'society_police', 'Police', 1),
	(3, 'property', 'Property', 0),
	(5, 'society_taxi', 'Taxi', 1),
	(7, 'society_mafia', 'Mafia', 1),
	(8, 'society_cartel', 'Cartel', 1),
	(9, 'society_thelostmc', 'The Lost MC', 1),
	(10, 'society_lscs', 'LSCS', 1),
	(11, 'society_carthief', 'Car Thief', 1),
	(12, 'society_banker', 'Banker', 1),
	(13, 'society_realestateagent', 'Realestate agent', 1),
	(14, 'property_black_money', 'Black Money', 0),
	(15, 'bank_savings', 'Bank Savings', 0),
	(20, 'society_cardealer', 'Cardealer', 1),
	(21, 'society_ambulance', 'EMS', 1),
	(24, 'property', 'Property', 0),
	(25, 'society_fbi', 'FBI', 1),
	(26, 'society_police', 'Police', 1),
	(27, 'society_cardealer', 'Cardealer', 1),
	(28, 'society_ambulance', 'Ambulance', 0),
	(29, 'society_police', 'Police', 1),
	(30, 'society_mafia', 'mafia', 1),
	(31, 'property', 'Property', 0),
	(33, 'housing', 'Housing', 0),
	(34, 'society_mecano', 'Mechanic', 1),
	(35, 'society_cukur', 'cukur', 1),
	(36, 'society_taxi', 'Taxi', 1),
	(37, 'bag', 'Bag Inventory', 0);
/*!40000 ALTER TABLE `addon_inventory` ENABLE KEYS */;

-- Dumping structure for table roleplay.addon_inventory_items
CREATE TABLE IF NOT EXISTS `addon_inventory_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- Dumping data for table roleplay.addon_inventory_items: ~16 rows (approximately)
/*!40000 ALTER TABLE `addon_inventory_items` DISABLE KEYS */;
REPLACE INTO `addon_inventory_items` (`id`, `inventory_name`, `name`, `count`, `owner`) VALUES
	(1, 'property', 'bag', 0, '54f6145a9c929927df2822e3dff5193409d8d6c1'),
	(2, 'society_mafia', 'bandage', 0, NULL),
	(3, 'property', 'drugtest', 9, '54f6145a9c929927df2822e3dff5193409d8d6c1'),
	(4, 'property', 'fishingrod', 1, '54f6145a9c929927df2822e3dff5193409d8d6c1'),
	(5, 'property', 'laptop_h', 0, '54f6145a9c929927df2822e3dff5193409d8d6c1'),
	(6, 'property', 'lighter', 2, '54f6145a9c929927df2822e3dff5193409d8d6c1'),
	(7, 'property', 'lockpick', 2, '54f6145a9c929927df2822e3dff5193409d8d6c1'),
	(8, 'property', 'id_card_f', 2, '54f6145a9c929927df2822e3dff5193409d8d6c1'),
	(9, 'property', 'repairkit', 1, '54f6145a9c929927df2822e3dff5193409d8d6c1'),
	(10, 'property', 'radio', 2, '54f6145a9c929927df2822e3dff5193409d8d6c1'),
	(11, 'housing', 'bread', 0, '54f6145a9c929927df2822e3dff5193409d8d6c1'),
	(12, 'housing', 'breathalyzer', 0, '54f6145a9c929927df2822e3dff5193409d8d6c1'),
	(13, 'society_mafia', 'water', 1, NULL),
	(14, 'society_ambulance', 'laptop_h', 0, NULL),
	(15, 'society_ambulance', 'pickaxe', 24, NULL),
	(16, 'society_ambulance', 'stone', 1, NULL),
	(17, 'society_ambulance', 'bag', 1, NULL);
/*!40000 ALTER TABLE `addon_inventory_items` ENABLE KEYS */;

-- Dumping structure for table roleplay.admins
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '0',
  `password` varchar(250) NOT NULL,
  `rank` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Dumping data for table roleplay.admins: ~0 rows (approximately)
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;

-- Dumping structure for table roleplay.ammunition
CREATE TABLE IF NOT EXISTS `ammunition` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `owner` text NOT NULL,
  `hash` text NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  `attach` text NOT NULL DEFAULT '[]',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.ammunition: ~0 rows (approximately)
/*!40000 ALTER TABLE `ammunition` DISABLE KEYS */;
/*!40000 ALTER TABLE `ammunition` ENABLE KEYS */;

-- Dumping structure for table roleplay.baninfo
CREATE TABLE IF NOT EXISTS `baninfo` (
  `identifier` varchar(25) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `playername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table roleplay.baninfo: ~0 rows (approximately)
/*!40000 ALTER TABLE `baninfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `baninfo` ENABLE KEYS */;

-- Dumping structure for table roleplay.bank_transfer
CREATE TABLE IF NOT EXISTS `bank_transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `identifier` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.bank_transfer: ~0 rows (approximately)
/*!40000 ALTER TABLE `bank_transfer` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_transfer` ENABLE KEYS */;

-- Dumping structure for table roleplay.banlist
CREATE TABLE IF NOT EXISTS `banlist` (
  `identifier` varchar(25) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `targetplayername` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `sourceplayername` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `timeat` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `added` datetime DEFAULT current_timestamp(),
  `expiration` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `permanent` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table roleplay.banlist: ~0 rows (approximately)
/*!40000 ALTER TABLE `banlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `banlist` ENABLE KEYS */;

-- Dumping structure for table roleplay.banlisthistory
CREATE TABLE IF NOT EXISTS `banlisthistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(25) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `targetplayername` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `sourceplayername` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `timeat` int(11) NOT NULL,
  `added` datetime DEFAULT current_timestamp(),
  `expiration` int(11) NOT NULL,
  `permanent` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table roleplay.banlisthistory: ~0 rows (approximately)
/*!40000 ALTER TABLE `banlisthistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `banlisthistory` ENABLE KEYS */;

-- Dumping structure for table roleplay.billing
CREATE TABLE IF NOT EXISTS `billing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `sender` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `target_type` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- Dumping data for table roleplay.billing: ~4 rows (approximately)
/*!40000 ALTER TABLE `billing` DISABLE KEYS */;
REPLACE INTO `billing` (`id`, `identifier`, `sender`, `target_type`, `target`, `label`, `amount`) VALUES
	(17, 'b8ccd3aecb53015dc021d5d9f30e0ddeb8eeaa16', 'b8ccd3aecb53015dc021d5d9f30e0ddeb8eeaa16', 'society', 'society_police', 'Speedcamera (120KM/H) - Your speed: 195 KM/H - ', 1500),
	(18, 'b8ccd3aecb53015dc021d5d9f30e0ddeb8eeaa16', 'b8ccd3aecb53015dc021d5d9f30e0ddeb8eeaa16', 'society', 'society_police', 'Speedcamera (120KM/H) - Your speed: 180 KM/H - ', 1500),
	(19, 'b8ccd3aecb53015dc021d5d9f30e0ddeb8eeaa16', 'b8ccd3aecb53015dc021d5d9f30e0ddeb8eeaa16', 'society', 'society_police', 'Speedcamera (120KM/H) - Your speed: 220 KM/H - ', 1500),
	(20, 'b8ccd3aecb53015dc021d5d9f30e0ddeb8eeaa16', 'b8ccd3aecb53015dc021d5d9f30e0ddeb8eeaa16', 'society', 'society_police', 'Speedcamera (120KM/H) - Your speed: 186 KM/H - ', 1500);
/*!40000 ALTER TABLE `billing` ENABLE KEYS */;

-- Dumping structure for table roleplay.bought_houses
CREATE TABLE IF NOT EXISTS `bought_houses` (
  `houseid` int(50) NOT NULL,
  PRIMARY KEY (`houseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table roleplay.bought_houses: ~2 rows (approximately)
/*!40000 ALTER TABLE `bought_houses` DISABLE KEYS */;
REPLACE INTO `bought_houses` (`houseid`) VALUES
	(28),
	(118),
	(125),
	(159),
	(283);
/*!40000 ALTER TABLE `bought_houses` ENABLE KEYS */;

-- Dumping structure for table roleplay.bwh_bans
CREATE TABLE IF NOT EXISTS `bwh_bans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receiver` text NOT NULL,
  `sender` varchar(60) NOT NULL,
  `length` datetime DEFAULT NULL,
  `reason` text NOT NULL,
  `unbanned` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.bwh_bans: ~0 rows (approximately)
/*!40000 ALTER TABLE `bwh_bans` DISABLE KEYS */;
/*!40000 ALTER TABLE `bwh_bans` ENABLE KEYS */;

-- Dumping structure for table roleplay.bwh_identifiers
CREATE TABLE IF NOT EXISTS `bwh_identifiers` (
  `steam` varchar(60) NOT NULL,
  `license` varchar(60) NOT NULL,
  `ip` varchar(60) NOT NULL,
  `name` varchar(128) NOT NULL,
  `xbl` varchar(60) DEFAULT NULL,
  `live` varchar(60) DEFAULT NULL,
  `discord` varchar(60) DEFAULT NULL,
  `fivem` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`steam`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.bwh_identifiers: ~6 rows (approximately)
/*!40000 ALTER TABLE `bwh_identifiers` DISABLE KEYS */;
REPLACE INTO `bwh_identifiers` (`steam`, `license`, `ip`, `name`, `xbl`, `live`, `discord`, `fivem`) VALUES
	('steam:1100001327442d2', 'license:54f6145a9c929927df2822e3dff5193409d8d6c1', 'ip:92.38.180.62', 'sobhanzare7684', 'xbl:2535458558154771', 'live:844425500450562', 'discord:464829466061832204', NULL),
	('steam:110000132e11019', 'license:b8ccd3aecb53015dc021d5d9f30e0ddeb8eeaa16', 'ip:46.245.68.100', 'amkahdoei1383', 'xbl:2535423201236376', 'live:1055522545889005', 'discord:463595463367589888', NULL),
	('steam:1100001365a2d2f', 'license:9c9639d1d80f2a9b245e63f5a27ad1556dff15be', 'ip:178.173.205.228', 'sina.mse471', 'xbl:2535419089482368', 'live:985153991516046', 'discord:464807615244009473', NULL),
	('steam:11000013f2eb261', 'license:b829fe67e90b97a8b506d331ef53a3a89afcb815', 'ip:5.238.12.109', 'BABI', 'xbl:2535439012473913', 'live:914798685766728', NULL, NULL),
	('steam:110000141549cd8', 'license:93127bb0ed4b5a36ff043d6b8b7134372139f6ed', 'ip:5.127.123.231', 'Cyber_XP', 'xbl:2535435527424550', 'live:914798049941149', 'discord:593383077183488000', NULL),
	('steam:110000141a9769b', 'license:6dc41b24e538db50911dd41424932083637fd198', 'ip:81.12.46.239', 'Balal', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `bwh_identifiers` ENABLE KEYS */;

-- Dumping structure for table roleplay.bwh_warnings
CREATE TABLE IF NOT EXISTS `bwh_warnings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receiver` text NOT NULL,
  `sender` varchar(60) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.bwh_warnings: ~0 rows (approximately)
/*!40000 ALTER TABLE `bwh_warnings` DISABLE KEYS */;
/*!40000 ALTER TABLE `bwh_warnings` ENABLE KEYS */;

-- Dumping structure for table roleplay.capture
CREATE TABLE IF NOT EXISTS `capture` (
  `name` varchar(255) NOT NULL,
  `reward` varchar(255) NOT NULL,
  `coordinate` varchar(255) NOT NULL,
  `handeler` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.capture: ~0 rows (approximately)
/*!40000 ALTER TABLE `capture` DISABLE KEYS */;
/*!40000 ALTER TABLE `capture` ENABLE KEYS */;

-- Dumping structure for table roleplay.cardealer_vehicles
CREATE TABLE IF NOT EXISTS `cardealer_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.cardealer_vehicles: ~0 rows (approximately)
/*!40000 ALTER TABLE `cardealer_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `cardealer_vehicles` ENABLE KEYS */;

-- Dumping structure for table roleplay.car_brands
CREATE TABLE IF NOT EXISTS `car_brands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- Dumping data for table roleplay.car_brands: ~23 rows (approximately)
/*!40000 ALTER TABLE `car_brands` DISABLE KEYS */;
REPLACE INTO `car_brands` (`id`, `brand`, `label`) VALUES
	(1, 'audi', 'Audi'),
	(2, 'bmw', 'BMW'),
	(4, 'renault', 'Renault'),
	(5, 'chevrolet', 'Chevrolet'),
	(6, 'fiat', 'Fiat'),
	(7, 'mazda', 'Mazda'),
	(8, 'ford', 'Ford'),
	(9, 'volkswagen', 'Volkswagen'),
	(10, 'seat', 'Seat'),
	(11, 'peugeot', 'Peugeot'),
	(12, 'honda', 'Honda'),
	(13, 'citroen', 'Citroen'),
	(14, 'deamon', 'Deamon'),
	(15, 'harley-davidson', 'Haryley Davidson'),
	(16, 'suziki', 'Suziki'),
	(17, 'yamaha', 'Yamaha'),
	(18, 'lexus', 'Lexus'),
	(19, 'dodge', 'Dodge'),
	(20, 'bentley', 'Bentley'),
	(21, 'rolls-royce', 'Rolls Royce'),
	(22, 'kawasaki', 'Kawasaki'),
	(23, 'nissan', 'Nissan'),
	(24, 'custom', 'Custom');
/*!40000 ALTER TABLE `car_brands` ENABLE KEYS */;

-- Dumping structure for table roleplay.car_parking
CREATE TABLE IF NOT EXISTS `car_parking` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` bigint(20) NOT NULL,
  `parking` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table roleplay.car_parking: ~0 rows (approximately)
/*!40000 ALTER TABLE `car_parking` DISABLE KEYS */;
/*!40000 ALTER TABLE `car_parking` ENABLE KEYS */;

-- Dumping structure for table roleplay.characters
CREATE TABLE IF NOT EXISTS `characters` (
  `identifier` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dateofbirth` varchar(255) NOT NULL,
  `sex` varchar(1) NOT NULL DEFAULT 'f',
  `height` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.characters: ~0 rows (approximately)
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;

-- Dumping structure for table roleplay.colors
CREATE TABLE IF NOT EXISTS `colors` (
  `id` int(11) NOT NULL,
  `color_group` varchar(255) DEFAULT NULL,
  `color_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Dumping data for table roleplay.colors: 248 rows
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
REPLACE INTO `colors` (`id`, `color_group`, `color_name`) VALUES
	(1, 'Chrome', 'Chrome'),
	(2, 'Classic', 'Black'),
	(3, 'Classic', 'Carbon Black'),
	(4, 'Classic', 'Graphite'),
	(5, 'Classic', 'Anthracite Black'),
	(6, 'Classic', 'Black Steel'),
	(7, 'Classic', 'Dark Steel'),
	(8, 'Classic', 'Silver'),
	(9, 'Classic', 'Bluish Silver'),
	(10, 'Classic', 'Rolled Steel'),
	(11, 'Classic', 'Shadow Silver'),
	(12, 'Classic', 'Midnigh Silver'),
	(13, 'Classic', 'Cast Iron Silver'),
	(14, 'Classic', 'Red'),
	(15, 'Classic', 'Torino Red'),
	(16, 'Classic', 'Forumula Red'),
	(17, 'Classic', 'Lava Red'),
	(18, 'Classic', 'Blaze Red'),
	(19, 'Classic', 'Grace Red'),
	(20, 'Classic', 'Garnet Red'),
	(21, 'Classic', 'Sunset Red'),
	(22, 'Classic', 'Cabernet Red'),
	(23, 'Classic', 'Wine Red'),
	(24, 'Classic', 'Candy Red'),
	(25, 'Classic', 'Hot Pink'),
	(26, 'Classic', 'Pfister Pink'),
	(27, 'Classic', 'Salmon Pink'),
	(28, 'Classic', 'Sunrise Orange'),
	(29, 'Classic', 'Orange'),
	(30, 'Classic', 'Bright Orange'),
	(31, 'Classic', 'Gold'),
	(32, 'Classic', 'Bronze'),
	(33, 'Classic', 'Yellow'),
	(34, 'Classic', 'Race Yellow'),
	(35, 'Classic', 'Dew Yellow'),
	(36, 'Classic', 'Dark Green'),
	(37, 'Classic', 'Racing Green'),
	(38, 'Classic', 'Sea Green'),
	(39, 'Classic', 'Olive Green'),
	(40, 'Classic', 'Bright Green'),
	(41, 'Classic', 'Gasoline Green'),
	(42, 'Classic', 'Lime Green'),
	(43, 'Classic', 'Midnight Blue'),
	(44, 'Classic', 'Galaxy Blue'),
	(45, 'Classic', 'Dark Blue'),
	(46, 'Classic', 'Saxon Blue'),
	(47, 'Classic', 'Blue'),
	(48, 'Classic', 'Mariner Blue'),
	(49, 'Classic', 'Harbor Blue'),
	(50, 'Classic', 'Diamond Blue'),
	(51, 'Classic', 'Surf Blue'),
	(52, 'Classic', 'Nautical Blue'),
	(53, 'Classic', 'Racaing Blue'),
	(54, 'Classic', 'Ultra Blue'),
	(55, 'Classic', 'Light Blue'),
	(56, 'Classic', 'Chocolate Brown'),
	(57, 'Classic', 'Bison Brown'),
	(58, 'Classic', 'Creek Brown'),
	(59, 'Classic', 'Feltzer Brown'),
	(60, 'Classic', 'Maple Brown'),
	(61, 'Classic', 'Beechwood Brown'),
	(62, 'Classic', 'Sienna Brown'),
	(63, 'Classic', 'Saddle Brown'),
	(64, 'Classic', 'Moss Brown'),
	(65, 'Classic', 'Woodbeech Brown'),
	(66, 'Classic', 'Straw Brown'),
	(67, 'Classic', 'Sandy Brown'),
	(68, 'Classic', 'Bleached Brown'),
	(69, 'Classic', 'Schafter Purple'),
	(70, 'Classic', 'Spinnaker Purple'),
	(71, 'Classic', 'Midnight Purple'),
	(72, 'Classic', 'Bright Purple'),
	(73, 'Classic', 'Cream'),
	(74, 'Classic', 'Ice White'),
	(75, 'Classic', 'Frost White'),
	(76, 'Matte', 'Black'),
	(77, 'Matte', 'Gray'),
	(78, 'Matte', 'Light Gray'),
	(79, 'Matte', 'Ice White'),
	(80, 'Matte', 'Blue'),
	(81, 'Matte', 'Dark Blue'),
	(82, 'Matte', 'Midnight Blue'),
	(83, 'Matte', 'Midnight Purple'),
	(84, 'Matte', 'Shafter Purple'),
	(85, 'Matte', 'Red'),
	(86, 'Matte', 'Dark Red'),
	(87, 'Matte', 'Orange'),
	(88, 'Matte', 'Yellow'),
	(89, 'Matte', 'Lime Green'),
	(90, 'Matte', 'Green'),
	(91, 'Matte', 'Forest Green'),
	(92, 'Matte', 'Foliage Green'),
	(93, 'Matte', 'Olive Drag'),
	(94, 'Matte', 'Dark Earch'),
	(95, 'Matte', 'Desert Tan'),
	(96, 'Metallic', 'Black'),
	(97, 'Metallic', 'Carbon Black'),
	(98, 'Metallic', 'Graphite'),
	(99, 'Metallic', 'Anthracite Black'),
	(100, 'Metallic', 'Black Steel'),
	(101, 'Metallic', 'Dark Steel'),
	(102, 'Metallic', 'Silver'),
	(103, 'Metallic', 'Bluish Silver'),
	(104, 'Metallic', 'Rolled Steel'),
	(105, 'Metallic', 'Shadow Silver'),
	(106, 'Metallic', 'Stone Silver'),
	(107, 'Metallic', 'Midnight Silver'),
	(108, 'Metallic', 'Cast Iron Silver'),
	(109, 'Metallic', 'Red'),
	(110, 'Metallic', 'Torino Red'),
	(111, 'Metallic', 'Formula Red'),
	(112, 'Metallic', 'Lava Red'),
	(113, 'Metallic', 'Blaze Red'),
	(114, 'Metallic', 'Grace Red'),
	(115, 'Metallic', 'Garnet Red'),
	(116, 'Metallic', 'Sunset Red'),
	(117, 'Metallic', 'Cabernet Red'),
	(118, 'Metallic', 'Wine Red'),
	(119, 'Metallic', 'Candy Red'),
	(120, 'Metallic', 'Hot Pink'),
	(121, 'Metallic', 'Pfister Pink'),
	(122, 'Metallic', 'Salmon Pink'),
	(123, 'Metallic', 'Sunrise Orange'),
	(124, 'Metallic', 'Orange'),
	(125, 'Metallic', 'Bright Orange'),
	(126, 'Metallic', 'Gold Bronze'),
	(127, 'Metallic', 'Yellow'),
	(128, 'Metallic', 'Race Yellow'),
	(129, 'Metallic', 'Dew Yellow'),
	(130, 'Metallic', 'Dark Green'),
	(131, 'Metallic', 'Racing Green'),
	(132, 'Metallic', 'Sea Green'),
	(133, 'Metallic', 'Olive Green'),
	(134, 'Metallic', 'Bright Green'),
	(135, 'Metallic', 'Gasoline Green'),
	(136, 'Metallic', 'Lime Green'),
	(137, 'Metallic', 'Midnight Blue'),
	(138, 'Metallic', 'Galazy BLue'),
	(139, 'Metallic', 'Dark Blue'),
	(140, 'Metallic', 'Saxon Blue'),
	(141, 'Metallic', 'Blue'),
	(142, 'Metallic', 'Mariner Bue'),
	(143, 'Metallic', 'Harbor Blue'),
	(144, 'Metallic', 'Diamond BLue'),
	(145, 'Metallic', 'Surf Blue'),
	(146, 'Metallic', 'Nauical Blue'),
	(147, 'Metallic', 'Racing Blue'),
	(148, 'Metallic', 'Ultra Blue'),
	(149, 'Metallic', 'Light Blue'),
	(150, 'Metallic', 'Chocolate Brown'),
	(151, 'Metallic', 'Bison Brown'),
	(152, 'Metallic', 'Creek Brown'),
	(153, 'Metallic', 'Feltzer Brown'),
	(154, 'Metallic', 'Maple Brown'),
	(155, 'Metallic', 'Beechwood Brown'),
	(156, 'Metallic', 'Sienna Brown'),
	(157, 'Metallic', 'Saddle Brown'),
	(158, 'Metallic', 'Moss Brown'),
	(159, 'Metallic', 'Woodbeech Brown'),
	(160, 'Metallic', 'Straw Brown'),
	(161, 'Metallic', 'Sandy BRown'),
	(162, 'Metallic', 'Bleached Brown'),
	(163, 'Metallic', 'Schafter Purple'),
	(164, 'Metallic', 'Spinnaker Purple'),
	(165, 'Metallic', 'Midnight Purple'),
	(166, 'Metallic', 'Bright Purple'),
	(167, 'Metallic', 'Cream'),
	(168, 'Metallic', 'Ice White'),
	(169, 'Metallic', 'Frost White'),
	(170, 'Metals', 'Brushed Steel'),
	(171, 'Metals', 'Brushed Black Steel'),
	(172, 'Metals', 'Brushed Aluminium'),
	(173, 'Metals', 'Pure Gold'),
	(174, 'Metals', 'Brushed Gold'),
	(175, 'Pearlescent', 'Black'),
	(176, 'Pearlescent', 'Carbon Black'),
	(177, 'Pearlescent', 'Graphite'),
	(178, 'Pearlescent', 'Anthracite Black'),
	(179, 'Pearlescent', 'Black Steel'),
	(180, 'Pearlescent', 'Dark Steel'),
	(181, 'Pearlescent', 'Silver'),
	(182, 'Pearlescent', 'Bluish Silver'),
	(183, 'Pearlescent', 'Rolled Steel'),
	(184, 'Pearlescent', 'Shadow Silver'),
	(185, 'Pearlescent', 'Stone Silver'),
	(186, 'Pearlescent', 'Midnight Silver'),
	(187, 'Pearlescent', 'Cast Iron Silver'),
	(188, 'Pearlescent', 'Red'),
	(189, 'Pearlescent', 'Torino Red'),
	(190, 'Pearlescent', 'Formula Red'),
	(191, 'Pearlescent', 'Lava Red'),
	(192, 'Pearlescent', 'Blaze Red'),
	(193, 'Pearlescent', 'Grace Red'),
	(194, 'Pearlescent', 'Garnet Red'),
	(195, 'Pearlescent', 'Sunset Red'),
	(196, 'Pearlescent', 'Cabernet Red'),
	(197, 'Pearlescent', 'Wine Red'),
	(198, 'Pearlescent', 'Candy Red'),
	(199, 'Pearlescent', 'Hot Pink'),
	(200, 'Pearlescent', 'Pfister Pink'),
	(201, 'Pearlescent', 'Salmon Pink'),
	(202, 'Pearlescent', 'Sunrise Orange'),
	(203, 'Pearlescent', 'Orange'),
	(204, 'Pearlescent', 'Bright Orange'),
	(205, 'Pearlescent', 'Gold Bronze'),
	(206, 'Pearlescent', 'Yellow'),
	(207, 'Pearlescent', 'Race Yellow'),
	(208, 'Pearlescent', 'Dew Yellow'),
	(209, 'Pearlescent', 'Dark Green'),
	(210, 'Pearlescent', 'Racing Green'),
	(211, 'Pearlescent', 'Sea Green'),
	(212, 'Pearlescent', 'Olive Green'),
	(213, 'Pearlescent', 'Bright Green'),
	(214, 'Pearlescent', 'Gasoline Green'),
	(215, 'Pearlescent', 'Lime Green'),
	(216, 'Pearlescent', 'Midnight Blue'),
	(217, 'Pearlescent', 'Galazy BLue'),
	(218, 'Pearlescent', 'Dark Blue'),
	(219, 'Pearlescent', 'Saxon Blue'),
	(220, 'Pearlescent', 'Blue'),
	(221, 'Pearlescent', 'Mariner Bue'),
	(222, 'Pearlescent', 'Harbor Blue'),
	(223, 'Pearlescent', 'Diamond BLue'),
	(224, 'Pearlescent', 'Surf Blue'),
	(225, 'Pearlescent', 'Nauical Blue'),
	(226, 'Pearlescent', 'Racing BLue'),
	(227, 'Pearlescent', 'Ultra BLue'),
	(228, 'Pearlescent', 'Light BLue'),
	(229, 'Pearlescent', 'Chocolate Brown'),
	(230, 'Pearlescent', 'Bison Brown'),
	(231, 'Pearlescent', 'Creek Brown'),
	(232, 'Pearlescent', 'Feltzer Brown'),
	(233, 'Pearlescent', 'Maple Brown'),
	(234, 'Pearlescent', 'Beechwood Brown'),
	(235, 'Pearlescent', 'Sienna Brown'),
	(236, 'Pearlescent', 'Saddle Brown'),
	(237, 'Pearlescent', 'Moss Brown'),
	(238, 'Pearlescent', 'Woodbeech Brown'),
	(239, 'Pearlescent', 'Straw Brown'),
	(240, 'Pearlescent', 'Sandy Brown'),
	(241, 'Pearlescent', 'Bleached Brown'),
	(242, 'Pearlescent', 'Schafter Purple'),
	(243, 'Pearlescent', 'Spinnaker Purple'),
	(244, 'Pearlescent', 'Midnight Purple'),
	(245, 'Pearlescent', 'Bright Purple'),
	(246, 'Pearlescent', 'Cream'),
	(247, 'Pearlescent', 'Ice White'),
	(248, 'Pearlescent', 'Frost White');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;

-- Dumping structure for table roleplay.datastore
CREATE TABLE IF NOT EXISTS `datastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- Dumping data for table roleplay.datastore: ~26 rows (approximately)
/*!40000 ALTER TABLE `datastore` DISABLE KEYS */;
REPLACE INTO `datastore` (`id`, `name`, `label`, `shared`) VALUES
	(1, 'user_mask', 'Mask', 0),
	(2, 'user_ears', 'Ears', 0),
	(3, 'user_glasses', 'Glasses', 0),
	(4, 'user_helmet', 'Helmet', 0),
	(5, 'society_carthief', 'Car Thief', 1),
	(6, 'society_police', 'LSPD', 1),
	(7, 'society_ambulance', 'EMS', 1),
	(8, 'society_mecano', 'Mechanic', 1),
	(9, 'society_banker', 'Banker', 1),
	(10, 'society_realestateagent', 'Realestate Agent', 1),
	(11, 'society_mafia', 'Mafia', 1),
	(12, 'society_cartel', 'Cartel', 1),
	(13, 'society_thelostmc', 'The Lost MC', 1),
	(14, 'society_ambulance', 'Ambulance', 1),
	(15, 'society_mechanic', 'Mechanic', 1),
	(16, 'society_mechanic', 'Mechanic', 1),
	(17, 'property', 'Property', 0),
	(18, 'society_fbi', 'FBI', 1),
	(19, 'society_police', 'Police', 1),
	(20, 'society_police', 'Police', 1),
	(21, 'society_mafia', 'mafia', 1),
	(22, 'property', 'Property', 0),
	(23, 'society_mechanic', 'Mechanic', 1),
	(24, 'housing', 'Housing', 0),
	(25, 'property', 'Property', 0),
	(26, 'property', 'Property', 0),
	(27, 'society_cukur', 'cukur', 1),
	(28, 'society_taxi', 'Taxi', 1),
	(29, 'bag', 'Bag Datastore', 0);
/*!40000 ALTER TABLE `datastore` ENABLE KEYS */;

-- Dumping structure for table roleplay.datastore_data
CREATE TABLE IF NOT EXISTS `datastore_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  KEY `index_datastore_data_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.datastore_data: ~56 rows (approximately)
/*!40000 ALTER TABLE `datastore_data` DISABLE KEYS */;
REPLACE INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
	(1, 'society_carthief', NULL, '{}'),
	(2, 'society_police', NULL, '{"weapons":[{"count":0,"name":"WEAPON_PISTOL"},{"name":"WEAPON_COMBATPISTOL","count":1},{"count":1,"name":"WEAPON_PISTOL50"},{"name":"WEAPON_SMG","count":1},{"count":1,"name":"WEAPON_CARBINERIFLE"},{"name":"WEAPON_STUNGUN","count":1},{"count":1,"name":"WEAPON_FLASHLIGHT"},{"name":"WEAPON_SWITCHBLADE","count":4},{"name":"WEAPON_NIGHTSTICK","count":1}]}'),
	(3, 'society_ambulance', NULL, '{}'),
	(4, 'society_mecano', NULL, '{}'),
	(5, 'society_banker', NULL, '{}'),
	(6, 'society_realestateagent', NULL, '{}'),
	(7, 'society_mafia', NULL, '{"weapons":[{"name":"WEAPON_HEAVYSNIPER","count":1}]}'),
	(8, 'society_cartel', NULL, '{}'),
	(9, 'society_thelostmc', NULL, '{}'),
	(10, 'society_mechanic', NULL, '{}'),
	(11, 'user_helmet', '54f6145a9c929927df2822e3dff5193409d8d6c1', '{}'),
	(12, 'user_glasses', '54f6145a9c929927df2822e3dff5193409d8d6c1', '{}'),
	(13, 'user_mask', '54f6145a9c929927df2822e3dff5193409d8d6c1', '{}'),
	(14, 'user_ears', '54f6145a9c929927df2822e3dff5193409d8d6c1', '{}'),
	(15, 'property', '54f6145a9c929927df2822e3dff5193409d8d6c1', '{"weapons":[{"name":"weapon_flare","ammo":25}]}'),
	(16, 'user_mask', 'steam:1100001327442d2', '{}'),
	(17, 'user_ears', 'steam:1100001327442d2', '{}'),
	(18, 'user_glasses', 'steam:1100001327442d2', '{}'),
	(19, 'user_helmet', 'steam:1100001327442d2', '{}'),
	(20, 'property', 'steam:1100001327442d2', '{}'),
	(21, 'society_fbi', NULL, '{}'),
	(22, 'property', '93127bb0ed4b5a36ff043d6b8b7134372139f6ed', '{}'),
	(23, 'user_glasses', '93127bb0ed4b5a36ff043d6b8b7134372139f6ed', '{}'),
	(24, 'user_helmet', '93127bb0ed4b5a36ff043d6b8b7134372139f6ed', '{}'),
	(25, 'user_ears', '93127bb0ed4b5a36ff043d6b8b7134372139f6ed', '{}'),
	(26, 'user_mask', '93127bb0ed4b5a36ff043d6b8b7134372139f6ed', '{}'),
	(27, 'user_mask', 'b604af7643734e0a392bc62768baac0e9ec9e369', '{}'),
	(28, 'user_helmet', 'b604af7643734e0a392bc62768baac0e9ec9e369', '{}'),
	(29, 'user_glasses', 'b604af7643734e0a392bc62768baac0e9ec9e369', '{}'),
	(30, 'user_ears', 'b604af7643734e0a392bc62768baac0e9ec9e369', '{}'),
	(31, 'property', 'b604af7643734e0a392bc62768baac0e9ec9e369', '{}'),
	(32, 'property', '21dd81e3698f2abd05e0b47b44e37b20a814ddff', '{}'),
	(33, 'user_ears', '21dd81e3698f2abd05e0b47b44e37b20a814ddff', '{}'),
	(34, 'user_glasses', '21dd81e3698f2abd05e0b47b44e37b20a814ddff', '{}'),
	(35, 'user_helmet', '21dd81e3698f2abd05e0b47b44e37b20a814ddff', '{}'),
	(36, 'user_mask', '21dd81e3698f2abd05e0b47b44e37b20a814ddff', '{}'),
	(37, 'user_ears', '389c7157b009fc4d480dad724925e30b5c49d4ef', '{}'),
	(38, 'user_mask', '389c7157b009fc4d480dad724925e30b5c49d4ef', '{}'),
	(39, 'user_helmet', '389c7157b009fc4d480dad724925e30b5c49d4ef', '{}'),
	(40, 'property', '389c7157b009fc4d480dad724925e30b5c49d4ef', '{}'),
	(41, 'user_glasses', '389c7157b009fc4d480dad724925e30b5c49d4ef', '{}'),
	(42, 'user_ears', 'b829fe67e90b97a8b506d331ef53a3a89afcb815', '{}'),
	(43, 'user_mask', 'b829fe67e90b97a8b506d331ef53a3a89afcb815', '{}'),
	(44, 'property', 'b829fe67e90b97a8b506d331ef53a3a89afcb815', '{}'),
	(45, 'user_helmet', 'b829fe67e90b97a8b506d331ef53a3a89afcb815', '{}'),
	(46, 'user_glasses', 'b829fe67e90b97a8b506d331ef53a3a89afcb815', '{}'),
	(47, 'user_mask', 'b8ccd3aecb53015dc021d5d9f30e0ddeb8eeaa16', '{}'),
	(48, 'property', 'b8ccd3aecb53015dc021d5d9f30e0ddeb8eeaa16', '{}'),
	(49, 'user_ears', 'b8ccd3aecb53015dc021d5d9f30e0ddeb8eeaa16', '{}'),
	(50, 'user_helmet', 'b8ccd3aecb53015dc021d5d9f30e0ddeb8eeaa16', '{}'),
	(51, 'user_glasses', 'b8ccd3aecb53015dc021d5d9f30e0ddeb8eeaa16', '{}'),
	(52, 'user_mask', '9c9639d1d80f2a9b245e63f5a27ad1556dff15be', '{}'),
	(53, 'user_ears', '9c9639d1d80f2a9b245e63f5a27ad1556dff15be', '{}'),
	(54, 'user_glasses', '9c9639d1d80f2a9b245e63f5a27ad1556dff15be', '{}'),
	(55, 'property', '9c9639d1d80f2a9b245e63f5a27ad1556dff15be', '{}'),
	(56, 'user_helmet', '9c9639d1d80f2a9b245e63f5a27ad1556dff15be', '{}'),
	(57, 'housing', '54f6145a9c929927df2822e3dff5193409d8d6c1', '{"weapons":[{"name":"WEAPON_BZGAS","ammo":7}]}'),
	(58, 'society_cukur', NULL, '{}'),
	(59, 'society_taxi', NULL, '{}'),
	(60, 'bag', '54f6145a9c929927df2822e3dff5193409d8d6c1', '{}');
/*!40000 ALTER TABLE `datastore_data` ENABLE KEYS */;

-- Dumping structure for table roleplay.disc_property
CREATE TABLE IF NOT EXISTS `disc_property` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_turkish_ci NOT NULL,
  `sold` tinyint(1) DEFAULT 0,
  `price` int(11) NOT NULL DEFAULT 0,
  `locked` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- Dumping data for table roleplay.disc_property: ~60 rows (approximately)
/*!40000 ALTER TABLE `disc_property` DISABLE KEYS */;
REPLACE INTO `disc_property` (`id`, `name`, `sold`, `price`, `locked`) VALUES
	(1, 'Motel 1', 0, 50000, 1),
	(2, 'Motel 2', 0, 50000, 1),
	(3, 'Motel 3', 0, 50000, 1),
	(4, 'Motel 4', 0, 50000, 1),
	(5, 'Motel 5', 0, 50000, 1),
	(6, 'Motel 6', 0, 50000, 1),
	(7, 'Motel 7', 0, 50000, 1),
	(8, 'Motel 8', 0, 50000, 1),
	(9, 'Motel 9', 0, 50000, 1),
	(10, 'Motel 10', 0, 50000, 1),
	(11, 'Motel 11', 0, 50000, 1),
	(12, 'Motel 12', 0, 50000, 1),
	(13, 'Motel 13', 0, 50000, 1),
	(14, 'Motel 14', 0, 50000, 1),
	(15, 'Motel 15', 0, 50000, 1),
	(16, 'Motel 16', 0, 50000, 1),
	(17, 'Motel 17', 0, 50000, 1),
	(18, 'Motel 18', 0, 50000, 1),
	(19, 'Motel 19', 0, 50000, 1),
	(20, 'Motel 20', 0, 50000, 1),
	(21, 'Motel 21', 0, 50000, 1),
	(22, 'Motel 22', 0, 50000, 1),
	(23, 'Motel 23', 0, 50000, 1),
	(24, 'Motel 24', 0, 50000, 1),
	(25, 'Motel 25', 0, 50000, 1),
	(26, 'Motel 26', 0, 50000, 1),
	(27, 'Motel 27', 0, 50000, 1),
	(28, 'Motel 28', 0, 50000, 1),
	(29, 'Motel 29', 0, 50000, 1),
	(30, 'Motel 30', 0, 50000, 1),
	(31, 'Motel 31', 0, 50000, 1),
	(32, 'Motel 32', 0, 50000, 1),
	(33, 'Motel 33', 0, 50000, 1),
	(34, 'Motel 34', 0, 50000, 1),
	(35, 'Motel 35', 0, 50000, 1),
	(36, 'Motel 36', 0, 50000, 1),
	(37, 'Motel 37', 0, 50000, 1),
	(38, 'Motel 38', 0, 50000, 1),
	(39, 'Motel 39', 0, 50000, 1),
	(40, 'Motel 40', 0, 50000, 1),
	(41, 'Motel 41', 0, 50000, 1),
	(42, 'Motel 42', 0, 50000, 1),
	(43, 'Motel 43', 0, 50000, 1),
	(44, 'Motel 44', 0, 50000, 1),
	(45, 'Motel 45', 0, 50000, 1),
	(46, 'Motel 46', 0, 50000, 1),
	(47, 'Motel 47', 0, 50000, 1),
	(48, 'Motel 48', 0, 50000, 1),
	(49, 'Motel 49', 0, 50000, 1),
	(50, 'Motel 50', 0, 50000, 1),
	(51, '3655 Wild Oats Drive', 0, 300000, 1),
	(52, '2044 North Conker Avenue', 0, 250000, 1),
	(53, '2044 Hillcrest Avenue', 0, 275000, 1),
	(54, '2862 Hillcrest Avenue', 0, 265000, 1),
	(55, '2868 Hillcrest Avenue', 0, 200000, 1),
	(56, '2045 North Conker Avenue', 0, 235000, 1),
	(57, '2677 Whispymound Drive', 0, 150000, 1),
	(58, '2133 Mad Wayne Thunder Drive', 0, 125000, 1),
	(59, '1052 Grove Street', 0, 65000, 1),
	(60, '3092 West Mirror Park Drive', 0, 105000, 1);
/*!40000 ALTER TABLE `disc_property` ENABLE KEYS */;

-- Dumping structure for table roleplay.disc_property_garage_vehicles
CREATE TABLE IF NOT EXISTS `disc_property_garage_vehicles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `plate` text NOT NULL,
  `props` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.disc_property_garage_vehicles: ~0 rows (approximately)
/*!40000 ALTER TABLE `disc_property_garage_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `disc_property_garage_vehicles` ENABLE KEYS */;

-- Dumping structure for table roleplay.disc_property_inventory
CREATE TABLE IF NOT EXISTS `disc_property_inventory` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `inventory_name` text DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.disc_property_inventory: ~0 rows (approximately)
/*!40000 ALTER TABLE `disc_property_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `disc_property_inventory` ENABLE KEYS */;

-- Dumping structure for table roleplay.disc_property_owners
CREATE TABLE IF NOT EXISTS `disc_property_owners` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` text DEFAULT NULL,
  `identifier` text DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  `owner` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.disc_property_owners: ~0 rows (approximately)
/*!40000 ALTER TABLE `disc_property_owners` DISABLE KEYS */;
/*!40000 ALTER TABLE `disc_property_owners` ENABLE KEYS */;

-- Dumping structure for table roleplay.dpkeybinds
CREATE TABLE IF NOT EXISTS `dpkeybinds` (
  `id` varchar(50) DEFAULT NULL,
  `keybind1` varchar(50) DEFAULT 'num4',
  `emote1` varchar(255) DEFAULT '',
  `keybind2` varchar(50) DEFAULT 'num5',
  `emote2` varchar(255) DEFAULT '',
  `keybind3` varchar(50) DEFAULT 'num6',
  `emote3` varchar(255) DEFAULT '',
  `keybind4` varchar(50) DEFAULT 'num7',
  `emote4` varchar(255) DEFAULT '',
  `keybind5` varchar(50) DEFAULT 'num8',
  `emote5` varchar(255) DEFAULT '',
  `keybind6` varchar(50) DEFAULT 'num9',
  `emote6` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table roleplay.dpkeybinds: ~17 rows (approximately)
/*!40000 ALTER TABLE `dpkeybinds` DISABLE KEYS */;
REPLACE INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
	('steam:1100001327442d2', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000013644056c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000013ff28a4d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001442c61fc', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000141549cd8', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000013ec9ed91', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000143e0338d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000146015032', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000013369b2a3', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014474a865', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000013eaaa941', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000132e11019', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000013f3924ee', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000013f2eb261', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:1100001365a2d2f', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:110000141a9769b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
	('steam:11000014425f877', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');
/*!40000 ALTER TABLE `dpkeybinds` ENABLE KEYS */;

-- Dumping structure for table roleplay.ea_bans
CREATE TABLE IF NOT EXISTS `ea_bans` (
  `banid` int(11) NOT NULL AUTO_INCREMENT,
  `expire` double NOT NULL DEFAULT 10444633200,
  `identifier` text COLLATE utf8_bin NOT NULL,
  `steam` text COLLATE utf8_bin NOT NULL,
  `reason` text COLLATE utf8_bin NOT NULL,
  `steamname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`banid`) USING BTREE,
  UNIQUE KEY `banid` (`banid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- Dumping data for table roleplay.ea_bans: ~0 rows (approximately)
/*!40000 ALTER TABLE `ea_bans` DISABLE KEYS */;
/*!40000 ALTER TABLE `ea_bans` ENABLE KEYS */;

-- Dumping structure for table roleplay.fine_types
CREATE TABLE IF NOT EXISTS `fine_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- Dumping data for table roleplay.fine_types: ~61 rows (approximately)
/*!40000 ALTER TABLE `fine_types` DISABLE KEYS */;
REPLACE INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Honking the horn', 100, 0),
	(2, 'Dangerous Stop', 100, 0),
	(3, 'Failure to respect safety distances', 1250, 0),
	(4, 'Crossing a continuous line', 200, 0),
	(5, 'Dangerous Overtake', 250, 0),
	(6, 'Illegal Parking', 150, 0),
	(7, 'Illegal u-turn', 300, 0),
	(8, 'Failure to stop for a redlight', 300, 0),
	(9, 'Not giving right of way ', 300, 0),
	(10, 'Driving Off-Road', 250, 0),
	(11, 'failure to stop at a stopsign', 300, 0),
	(12, 'Failure to stop for a redlight', 300, 0),
	(13, 'Failure to give way for emergency services', 350, 0),
	(14, 'Driving without a license', 575, 0),
	(15, 'Hit and run', 750, 0),
	(16, 'Speeding < 5 kmh', 200, 0),
	(17, 'Speeding 5-15 kmh', 300, 0),
	(18, 'Speeding 15-30 kmh', 500, 0),
	(19, 'Speeding > 30 kmh', 750, 0),
	(20, 'Speeding > 100 kmh', 1000, 0),
	(21, 'Non Lethal Weapon in city', 450, 1),
	(22, 'Destruction of government property A', 1000, 1),
	(23, 'Disturbing the peace', 400, 1),
	(24, 'Obstruction of emergency personnel', 800, 1),
	(25, 'Verbal threat or intimidation towards civilian', 300, 1),
	(26, 'Verbal threat or intimidation towards Emergency personnel', 450, 1),
	(27, 'Illegal Protest', 500, 1),
	(28, 'Attempted bribery', 999, 1),
	(29, 'Wearing a mask over the age of 16', 400, 1),
	(30, 'Sexual Harrasment', 550, 1),
	(31, 'Fleeing on foot', 550, 1),
	(32, 'Public intoxication', 300, 1),
	(33, 'Public endangerment', 750, 2),
	(34, 'Fleeing in a vehicle', 1750, 2),
	(35, 'Assaulting Emergency personnel', 1000, 2),
	(36, 'Destruction of government Property B ', 2000, 2),
	(37, 'Lethal weapon out in city', 1000, 2),
	(38, 'Possesion of illegal weapon', 1500, 2),
	(39, 'Discharge of a firearm in public', 1250, 2),
	(40, 'lockpicking a car', 750, 2),
	(41, 'Car Theft', 1250, 2),
	(42, 'Possesion of illegal substance', 750, 2),
	(43, 'Possesion with intent to sell', 3000, 2),
	(44, 'Drug Trafficking', 3000, 2),
	(45, 'Robbery of a civilian', 750, 2),
	(46, 'Robbery of a shop', 2500, 2),
	(47, 'Bussiness scam', 2500, 2),
	(48, 'Weapons Trafficking', 3000, 2),
	(49, 'Open carry of loaded weapon on state property', 1000, 2),
	(50, 'Shooting a civilian', 2500, 3),
	(51, 'Shooting at emergency services', 4000, 3),
	(52, 'Kidnapping', 6500, 3),
	(53, 'Kidnapping of police officer', 8500, 3),
	(54, 'Bank Robbery A', 7000, 3),
	(56, 'Bank Robbery B', 9000, 3),
	(57, 'Bank Robbery C', 11000, 3),
	(58, 'Involuntary Manslaughter', 3250, 3),
	(59, 'Attempted Murder', 5000, 3),
	(60, 'Attempted Murder of LEO', 8500, 3),
	(61, 'Murder', 10000, 3),
	(62, 'Murder of LEO', 12500, 3);
/*!40000 ALTER TABLE `fine_types` ENABLE KEYS */;

-- Dumping structure for table roleplay.fine_types_ballas
CREATE TABLE IF NOT EXISTS `fine_types_ballas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.fine_types_ballas: ~7 rows (approximately)
/*!40000 ALTER TABLE `fine_types_ballas` DISABLE KEYS */;
REPLACE INTO `fine_types_ballas` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Raket', 3000, 0),
	(2, 'Raket', 5000, 0),
	(3, 'Raket', 10000, 1),
	(4, 'Raket', 20000, 1),
	(5, 'Raket', 50000, 2),
	(6, 'Raket', 150000, 3),
	(7, 'Raket', 350000, 3);
/*!40000 ALTER TABLE `fine_types_ballas` ENABLE KEYS */;

-- Dumping structure for table roleplay.fine_types_bloods
CREATE TABLE IF NOT EXISTS `fine_types_bloods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.fine_types_bloods: ~7 rows (approximately)
/*!40000 ALTER TABLE `fine_types_bloods` DISABLE KEYS */;
REPLACE INTO `fine_types_bloods` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Raket', 3000, 0),
	(2, 'Raket', 5000, 0),
	(3, 'Raket', 10000, 1),
	(4, 'Raket', 20000, 1),
	(5, 'Raket', 50000, 2),
	(6, 'Raket', 150000, 3),
	(7, 'Raket', 350000, 3);
/*!40000 ALTER TABLE `fine_types_bloods` ENABLE KEYS */;

-- Dumping structure for table roleplay.fine_types_bradva
CREATE TABLE IF NOT EXISTS `fine_types_bradva` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.fine_types_bradva: ~7 rows (approximately)
/*!40000 ALTER TABLE `fine_types_bradva` DISABLE KEYS */;
REPLACE INTO `fine_types_bradva` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Raket', 3000, 0),
	(2, 'Raket', 5000, 0),
	(3, 'Raket', 10000, 1),
	(4, 'Raket', 20000, 1),
	(5, 'Raket', 50000, 2),
	(6, 'Raket', 150000, 3),
	(7, 'Raket', 350000, 3);
/*!40000 ALTER TABLE `fine_types_bradva` ENABLE KEYS */;

-- Dumping structure for table roleplay.fine_types_cartel
CREATE TABLE IF NOT EXISTS `fine_types_cartel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.fine_types_cartel: ~7 rows (approximately)
/*!40000 ALTER TABLE `fine_types_cartel` DISABLE KEYS */;
REPLACE INTO `fine_types_cartel` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Raket', 3000, 0),
	(2, 'Raket', 5000, 0),
	(3, 'Raket', 10000, 1),
	(4, 'Raket', 20000, 1),
	(5, 'Raket', 50000, 2),
	(6, 'Raket', 150000, 3),
	(7, 'Raket', 350000, 3);
/*!40000 ALTER TABLE `fine_types_cartel` ENABLE KEYS */;

-- Dumping structure for table roleplay.fine_types_families
CREATE TABLE IF NOT EXISTS `fine_types_families` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.fine_types_families: ~7 rows (approximately)
/*!40000 ALTER TABLE `fine_types_families` DISABLE KEYS */;
REPLACE INTO `fine_types_families` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Raket', 3000, 0),
	(2, 'Raket', 5000, 0),
	(3, 'Raket', 10000, 1),
	(4, 'Raket', 20000, 1),
	(5, 'Raket', 50000, 2),
	(6, 'Raket', 150000, 3),
	(7, 'Raket', 350000, 3);
/*!40000 ALTER TABLE `fine_types_families` ENABLE KEYS */;

-- Dumping structure for table roleplay.fine_types_lostmc
CREATE TABLE IF NOT EXISTS `fine_types_lostmc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.fine_types_lostmc: ~7 rows (approximately)
/*!40000 ALTER TABLE `fine_types_lostmc` DISABLE KEYS */;
REPLACE INTO `fine_types_lostmc` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Raket', 3000, 0),
	(2, 'Raket', 5000, 0),
	(3, 'Raket', 10000, 1),
	(4, 'Raket', 20000, 1),
	(5, 'Raket', 50000, 2),
	(6, 'Raket', 150000, 3),
	(7, 'Raket', 350000, 3);
/*!40000 ALTER TABLE `fine_types_lostmc` ENABLE KEYS */;

-- Dumping structure for table roleplay.fine_types_lscs
CREATE TABLE IF NOT EXISTS `fine_types_lscs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- Dumping data for table roleplay.fine_types_lscs: ~52 rows (approximately)
/*!40000 ALTER TABLE `fine_types_lscs` DISABLE KEYS */;
REPLACE INTO `fine_types_lscs` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Misuse of a horn', 30, 0),
	(2, 'Illegally Crossing a continuous Line', 40, 0),
	(3, 'Driving on the wrong side of the road', 250, 0),
	(4, 'Illegal U-Turn', 250, 0),
	(5, 'Illegally Driving Off-road', 170, 0),
	(6, 'Refusing a Lawful Command', 30, 0),
	(7, 'Illegally Stopping a Vehicle', 150, 0),
	(8, 'Illegal Parking', 70, 0),
	(9, 'Failing to Yield to the right', 70, 0),
	(10, 'Failure to comply with Vehicle Information', 90, 0),
	(11, 'Failing to stop at a Stop Sign ', 105, 0),
	(12, 'Failing to stop at a Red Light', 130, 0),
	(13, 'Illegal Passing', 100, 0),
	(14, 'Driving an illegal Vehicle', 100, 0),
	(15, 'Driving without a License', 1500, 0),
	(16, 'Hit and Run', 800, 0),
	(17, 'Exceeding Speeds Over < 5 mph', 90, 0),
	(18, 'Exceeding Speeds Over 5-15 mph', 120, 0),
	(19, 'Exceeding Speeds Over 15-30 mph', 180, 0),
	(20, 'Exceeding Speeds Over > 30 mph', 300, 0),
	(21, 'Impeding traffic flow', 110, 1),
	(22, 'Public Intoxication', 90, 1),
	(23, 'Disorderly conduct', 90, 1),
	(24, 'Obstruction of Justice', 130, 1),
	(25, 'Insults towards Civilans', 75, 1),
	(26, 'Disrespecting of an LEO', 110, 1),
	(27, 'Verbal Threat towards a Civilan', 90, 1),
	(28, 'Verbal Threat towards an LEO', 150, 1),
	(29, 'Providing False Information', 250, 1),
	(30, 'Attempt of Corruption', 1500, 1),
	(31, 'Brandishing a weapon in city Limits', 120, 2),
	(32, 'Brandishing a Lethal Weapon in city Limits', 300, 2),
	(33, 'No Firearms License', 600, 2),
	(34, 'Possession of an Illegal Weapon', 700, 2),
	(35, 'Possession of Burglary Tools', 300, 2),
	(36, 'Grand Theft Auto', 1800, 2),
	(37, 'Intent to Sell/Distrube of an illegal Substance', 1500, 2),
	(38, 'Frabrication of an Illegal Substance', 1500, 2),
	(39, 'Possession of an Illegal Substance ', 650, 2),
	(40, 'Kidnapping of a Civilan', 1500, 2),
	(41, 'Kidnapping of an LEO', 2000, 2),
	(42, 'Robbery', 650, 2),
	(43, 'Armed Robbery of a Store', 650, 2),
	(44, 'Armed Robbery of a Bank', 1500, 2),
	(45, 'Assault on a Civilian', 2000, 3),
	(46, 'Assault of an LEO', 2500, 3),
	(47, 'Attempt of Murder of a Civilian', 3000, 3),
	(48, 'Attempt of Murder of an LEO', 5000, 3),
	(49, 'Murder of a Civilian', 10000, 3),
	(50, 'Murder of an LEO', 30000, 3),
	(51, 'Involuntary manslaughter', 1800, 3),
	(52, 'Fraud', 2000, 2);
/*!40000 ALTER TABLE `fine_types_lscs` ENABLE KEYS */;

-- Dumping structure for table roleplay.fine_types_mafia
CREATE TABLE IF NOT EXISTS `fine_types_mafia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table roleplay.fine_types_mafia: 7 rows
/*!40000 ALTER TABLE `fine_types_mafia` DISABLE KEYS */;
REPLACE INTO `fine_types_mafia` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Raket', 3000, 0),
	(2, 'Raket', 5000, 0),
	(3, 'Raket', 10000, 1),
	(4, 'Raket', 20000, 1),
	(5, 'Raket', 50000, 2),
	(6, 'Raket', 150000, 3),
	(7, 'Raket', 350000, 3);
/*!40000 ALTER TABLE `fine_types_mafia` ENABLE KEYS */;

-- Dumping structure for table roleplay.fine_types_marabunta
CREATE TABLE IF NOT EXISTS `fine_types_marabunta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.fine_types_marabunta: ~7 rows (approximately)
/*!40000 ALTER TABLE `fine_types_marabunta` DISABLE KEYS */;
REPLACE INTO `fine_types_marabunta` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Raket', 3000, 0),
	(2, 'Raket', 5000, 0),
	(3, 'Raket', 10000, 1),
	(4, 'Raket', 20000, 1),
	(5, 'Raket', 50000, 2),
	(6, 'Raket', 150000, 3),
	(7, 'Raket', 350000, 3);
/*!40000 ALTER TABLE `fine_types_marabunta` ENABLE KEYS */;

-- Dumping structure for table roleplay.fine_types_merryweather
CREATE TABLE IF NOT EXISTS `fine_types_merryweather` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.fine_types_merryweather: ~7 rows (approximately)
/*!40000 ALTER TABLE `fine_types_merryweather` DISABLE KEYS */;
REPLACE INTO `fine_types_merryweather` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Raket', 3000, 0),
	(2, 'Raket', 5000, 0),
	(3, 'Raket', 10000, 1),
	(4, 'Raket', 20000, 1),
	(5, 'Raket', 50000, 2),
	(6, 'Raket', 150000, 3),
	(7, 'Raket', 350000, 3);
/*!40000 ALTER TABLE `fine_types_merryweather` ENABLE KEYS */;

-- Dumping structure for table roleplay.fine_types_qlf
CREATE TABLE IF NOT EXISTS `fine_types_qlf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.fine_types_qlf: ~7 rows (approximately)
/*!40000 ALTER TABLE `fine_types_qlf` DISABLE KEYS */;
REPLACE INTO `fine_types_qlf` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Raket', 3000, 0),
	(2, 'Raket', 5000, 0),
	(3, 'Raket', 10000, 1),
	(4, 'Raket', 20000, 1),
	(5, 'Raket', 50000, 2),
	(6, 'Raket', 150000, 3),
	(7, 'Raket', 350000, 3);
/*!40000 ALTER TABLE `fine_types_qlf` ENABLE KEYS */;

-- Dumping structure for table roleplay.fine_types_vagos
CREATE TABLE IF NOT EXISTS `fine_types_vagos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.fine_types_vagos: ~7 rows (approximately)
/*!40000 ALTER TABLE `fine_types_vagos` DISABLE KEYS */;
REPLACE INTO `fine_types_vagos` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Raket', 3000, 0),
	(2, 'Raket', 5000, 0),
	(3, 'Raket', 10000, 1),
	(4, 'Raket', 20000, 1),
	(5, 'Raket', 50000, 2),
	(6, 'Raket', 150000, 3),
	(7, 'Raket', 350000, 3);
/*!40000 ALTER TABLE `fine_types_vagos` ENABLE KEYS */;

-- Dumping structure for table roleplay.fine_types_yakuza
CREATE TABLE IF NOT EXISTS `fine_types_yakuza` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.fine_types_yakuza: ~7 rows (approximately)
/*!40000 ALTER TABLE `fine_types_yakuza` DISABLE KEYS */;
REPLACE INTO `fine_types_yakuza` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Raket', 3000, 0),
	(2, 'Raket', 5000, 0),
	(3, 'Raket', 10000, 1),
	(4, 'Raket', 20000, 1),
	(5, 'Raket', 50000, 2),
	(6, 'Raket', 150000, 3),
	(7, 'Raket', 350000, 3);
/*!40000 ALTER TABLE `fine_types_yakuza` ENABLE KEYS */;

-- Dumping structure for table roleplay.gangs
CREATE TABLE IF NOT EXISTS `gangs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gangName` varchar(65) DEFAULT NULL,
  `expireTime` date DEFAULT NULL,
  `gangColor` tinyint(1) DEFAULT 1,
  `blipRadius` int(11) NOT NULL DEFAULT 100,
  `coords` text DEFAULT NULL,
  `accountMoney` varchar(10) NOT NULL DEFAULT '0',
  `canSearch` tinyint(4) NOT NULL DEFAULT 1,
  `canCuff` tinyint(4) NOT NULL DEFAULT 1,
  `canMove` tinyint(4) NOT NULL DEFAULT 1,
  `canOpenCarsDoor` tinyint(4) NOT NULL DEFAULT 1,
  `haveGPS` tinyint(4) NOT NULL DEFAULT 1,
  `slotPlayer` int(11) NOT NULL DEFAULT 0,
  `maxArmor` int(11) NOT NULL DEFAULT 0,
  `inventory` longtext DEFAULT NULL,
  `discordHook` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table roleplay.gangs: ~0 rows (approximately)
/*!40000 ALTER TABLE `gangs` DISABLE KEYS */;
/*!40000 ALTER TABLE `gangs` ENABLE KEYS */;

-- Dumping structure for table roleplay.gangs_grade
CREATE TABLE IF NOT EXISTS `gangs_grade` (
  `gradeId` int(11) NOT NULL AUTO_INCREMENT,
  `gangId` int(11) NOT NULL,
  `grade` int(11) NOT NULL DEFAULT 0,
  `name` varchar(65) DEFAULT NULL,
  `salary` int(11) NOT NULL DEFAULT 0,
  `maleSkin` text DEFAULT NULL,
  `femaleSkin` text DEFAULT NULL,
  `accessVehicle` tinyint(1) NOT NULL DEFAULT 1,
  `accessArmory` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`gradeId`),
  KEY `gangId` (`gangId`),
  CONSTRAINT `gangs_grade_ibfk_1` FOREIGN KEY (`gangId`) REFERENCES `gangs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table roleplay.gangs_grade: ~0 rows (approximately)
/*!40000 ALTER TABLE `gangs_grade` DISABLE KEYS */;
/*!40000 ALTER TABLE `gangs_grade` ENABLE KEYS */;

-- Dumping structure for table roleplay.gangs_member
CREATE TABLE IF NOT EXISTS `gangs_member` (
  `playerIdentifiers` varchar(250) DEFAULT NULL,
  `gangId` int(11) NOT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  KEY `gangId` (`gangId`),
  CONSTRAINT `gangs_member_ibfk_1` FOREIGN KEY (`gangId`) REFERENCES `gangs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table roleplay.gangs_member: ~0 rows (approximately)
/*!40000 ALTER TABLE `gangs_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `gangs_member` ENABLE KEYS */;

-- Dumping structure for table roleplay.gangs_vehicle
CREATE TABLE IF NOT EXISTS `gangs_vehicle` (
  `gangId` int(11) NOT NULL,
  `plate` varchar(10) NOT NULL,
  `vehicle` longtext NOT NULL,
  `type` varchar(20) NOT NULL,
  `stored` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table roleplay.gangs_vehicle: ~0 rows (approximately)
/*!40000 ALTER TABLE `gangs_vehicle` DISABLE KEYS */;
/*!40000 ALTER TABLE `gangs_vehicle` ENABLE KEYS */;

-- Dumping structure for table roleplay.glovebox_inventory
CREATE TABLE IF NOT EXISTS `glovebox_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(8) NOT NULL,
  `data` text NOT NULL,
  `owned` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plate` (`plate`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.glovebox_inventory: ~0 rows (approximately)
/*!40000 ALTER TABLE `glovebox_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `glovebox_inventory` ENABLE KEYS */;

-- Dumping structure for table roleplay.gsr
CREATE TABLE IF NOT EXISTS `gsr` (
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `time` int(250) NOT NULL,
  PRIMARY KEY (`identifier`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table roleplay.gsr: ~0 rows (approximately)
/*!40000 ALTER TABLE `gsr` DISABLE KEYS */;
/*!40000 ALTER TABLE `gsr` ENABLE KEYS */;

-- Dumping structure for table roleplay.h_impounded_vehicles
CREATE TABLE IF NOT EXISTS `h_impounded_vehicles` (
  `plate` varchar(12) COLLATE utf8_bin NOT NULL,
  `officer` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `mechanic` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `releasedate` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `fee` double NOT NULL,
  `reason` text COLLATE utf8_bin NOT NULL,
  `notes` text COLLATE utf8_bin DEFAULT NULL,
  `vehicle` text COLLATE utf8_bin NOT NULL,
  `identifier` varchar(30) COLLATE utf8_bin NOT NULL,
  `hold_o` tinyint(1) DEFAULT 0,
  `hold_m` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`plate`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- Dumping data for table roleplay.h_impounded_vehicles: ~0 rows (approximately)
/*!40000 ALTER TABLE `h_impounded_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `h_impounded_vehicles` ENABLE KEYS */;

-- Dumping structure for table roleplay.insto_accounts
CREATE TABLE IF NOT EXISTS `insto_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `forename` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `surname` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table roleplay.insto_accounts: ~0 rows (approximately)
/*!40000 ALTER TABLE `insto_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `insto_accounts` ENABLE KEYS */;

-- Dumping structure for table roleplay.insto_instas
CREATE TABLE IF NOT EXISTS `insto_instas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filters` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `FK_insto_instas_insto_accounts` (`authorId`),
  CONSTRAINT `FK_insto_instas_insto_accounts` FOREIGN KEY (`authorId`) REFERENCES `insto_accounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table roleplay.insto_instas: ~0 rows (approximately)
/*!40000 ALTER TABLE `insto_instas` DISABLE KEYS */;
/*!40000 ALTER TABLE `insto_instas` ENABLE KEYS */;

-- Dumping structure for table roleplay.insto_likes
CREATE TABLE IF NOT EXISTS `insto_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) DEFAULT NULL,
  `inapId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_insto_likes_insto_accounts` (`authorId`),
  KEY `FK_insto_likes_insto_instas` (`inapId`),
  CONSTRAINT `FK_insto_likes_insto_accounts` FOREIGN KEY (`authorId`) REFERENCES `insto_accounts` (`id`),
  CONSTRAINT `FK_insto_likes_insto_instas` FOREIGN KEY (`inapId`) REFERENCES `insto_instas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table roleplay.insto_likes: ~0 rows (approximately)
/*!40000 ALTER TABLE `insto_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `insto_likes` ENABLE KEYS */;

-- Dumping structure for table roleplay.inventories
CREATE TABLE IF NOT EXISTS `inventories` (
  `name` varchar(255) NOT NULL,
  `owner` varchar(64) DEFAULT NULL,
  `items` longtext DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.inventories: ~0 rows (approximately)
/*!40000 ALTER TABLE `inventories` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventories` ENABLE KEYS */;

-- Dumping structure for table roleplay.inventory_glovebox
CREATE TABLE IF NOT EXISTS `inventory_glovebox` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(8) NOT NULL,
  `data` text NOT NULL,
  `owned` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plate` (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.inventory_glovebox: ~0 rows (approximately)
/*!40000 ALTER TABLE `inventory_glovebox` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_glovebox` ENABLE KEYS */;

-- Dumping structure for table roleplay.inventory_trunk
CREATE TABLE IF NOT EXISTS `inventory_trunk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(8) NOT NULL,
  `data` text NOT NULL,
  `owned` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plate` (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.inventory_trunk: ~0 rows (approximately)
/*!40000 ALTER TABLE `inventory_trunk` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_trunk` ENABLE KEYS */;

-- Dumping structure for table roleplay.items
CREATE TABLE IF NOT EXISTS `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `weight` int(11) DEFAULT NULL,
  `limit` int(11) DEFAULT NULL,
  `rare` int(11) DEFAULT NULL,
  `can_remove` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=719 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- Dumping data for table roleplay.items: ~209 rows (approximately)
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
REPLACE INTO `items` (`id`, `name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	(1, 'jewels', 'Jewels', 1, 150, NULL, 1),
	(3, 'absinthe', 'Absinto', 1, 15, NULL, 1),
	(4, 'beer', 'Beer', 1, 15, NULL, 1),
	(5, 'bread', 'Bread', 15, 15, NULL, 1),
	(6, 'champagne', 'Champagne', 1, 8, NULL, 1),
	(7, 'chips', 'Chips', 1, 8, NULL, 1),
	(8, 'chocolate', 'Chocolate', 1, 20, NULL, 1),
	(9, 'cigarett', 'Cigarette', 1, 10, NULL, 1),
	(10, 'cocacola', 'Coca-cola', 1, 15, NULL, 1),
	(12, 'cupcake', 'Cupcake', 1, 15, NULL, 1),
	(13, 'gintonic', 'Gintonic', 1, 8, NULL, 1),
	(14, 'hamburger', 'Hamburger', 1, 15, NULL, 1),
	(15, 'icetea', 'Ice-tea', 1, 15, NULL, 1),
	(16, 'lighter', 'Lighter', 1, 1, NULL, 1),
	(17, 'milk', 'Milk', 1, 15, NULL, 1),
	(18, 'sandwich', 'Sandwich', 1, 15, NULL, 1),
	(19, 'tequila', 'Tequila', 1, 10, NULL, 1),
	(20, 'vodka', 'Vodka', 1, 5, NULL, 1),
	(21, 'water', 'Water', 1, 15, NULL, 1),
	(22, 'whisky', 'Whisky', 1, 10, NULL, 1),
	(23, 'wine', 'Wine', 1, 8, NULL, 1),
	(32, 'coffe', 'Coffee', 1, 10, NULL, 1),
	(49, 'umbrella', 'Umbrella', 1, 1, NULL, 1),
	(50, 'picnic', 'Picnic', 1, 1, NULL, 1),
	(51, 'donut', 'Donut', 1, 15, NULL, 1),
	(52, 'oxygen_mask', 'Oxygen_mask', 1, 1, NULL, 1),
	(54, 'rose', 'Rose', 1, 2, NULL, 1),
	(56, 'redgull', 'Adrenaline', 1, 3, NULL, 1),
	(65, 'blowtorch', 'Blowtorch', 1, 4, NULL, 1),
	(66, 'c4_bank', 'C4', 1, 2, NULL, 1),
	(67, 'raspberry', 'Raspberry', 1, 1, NULL, 1),
	(73, 'laptop_h', 'Hacker Laptop', 1, 1, NULL, 1),
	(74, 'lockpick', 'Lockpick', 1, 7, NULL, 1),
	(75, 'gold_bar', 'Gold Bar', 1, 100, NULL, 1),
	(76, 'dia_box', 'Diamond Box', 1, 70, NULL, 1),
	(84, 'thermal_charge', 'Thermal Charge', 1, 10, NULL, 1),
	(89, 'glassbottle', 'Glass Bottle', 1, 15, NULL, 1),
	(90, 'wallet', 'Wallet', 1, 5, NULL, 1),
	(91, 'oldshoe', 'Old Shoe', 1, 4, NULL, 1),
	(93, 'plastic', 'Plastic', 1, 80, NULL, 1),
	(94, 'electronics', 'Electronics', 1, 5, NULL, 1),
	(95, 'lowgradefemaleseed', 'Female Seed', 1, 10, NULL, 1),
	(96, 'lowgrademaleseed', 'Male Seed', 1, 10, NULL, 1),
	(97, 'deadbatteries', 'Dead Batteries', 1, 20, NULL, 1),
	(98, 'cellphone', 'Phone', 1, 10, NULL, 1),
	(99, 'rubber', 'Rubber', 1, 40, NULL, 1),
	(100, 'brokenfishingrod', 'Broken Fishing Rod', 1, 5, NULL, 1),
	(101, 'cartire', 'Car Tire', 1, 1, NULL, 1),
	(102, 'oldring', 'Old Ring', 1, 40, NULL, 1),
	(103, 'advancedlockpick', 'Advanced Lockpick', 1, 10, NULL, 1),
	(104, 'expiredburger', 'Expired Burger', 1, 15, NULL, 1),
	(152, 'mouldybread', 'Mouldy Bread', 1, 15, NULL, 1),
	(165, 'secure_card', 'Malicious Access Card', 1, 2, NULL, 1),
	(167, 'repairkit', 'Repairkit', 1, 1, NULL, 1),
	(168, 'tyrekit', 'Tyrekit', 1, 1, NULL, 1),
	(178, 'secure_card', 'Secure ID Card', 1, 2, NULL, 1),
	(181, 'pizza', 'Pizza', 1, 10, NULL, 1),
	(182, 'meatfood', 'Meatfood', 1, 15, NULL, 1),
	(183, 'meat', 'Meat', 1, 15, NULL, 1),
	(184, 'macka', 'Macka', 1, 15, NULL, 1),
	(185, 'adrenaline', 'adrenaline', 1, 2, NULL, 1),
	(186, 'hotdog', 'hotdog', 1, 15, NULL, 1),
	(194, 'bandage', 'Bandage', 1, 1, NULL, 1),
	(195, 'medikit', 'Medikit', 1, 1, NULL, 1),
	(208, 'sprunk', 'Sprite', 1, 15, 0, 1),
	(216, 'gym_membership', 'Gym Membership', 1, 1, NULL, 1),
	(217, 'powerade', 'Powerade', 1, 15, NULL, 1),
	(218, 'sportlunch', 'Sportlunch', 1, 15, NULL, 1),
	(219, 'protein_shake', 'Protein Shake', 1, 10, NULL, 1),
	(222, 'meth100g', 'Methamphetamine [100g]', 1, 10, NULL, 1),
	(223, 'preparationmeth', 'Preparation of Methamphetamine', 1, 10, NULL, 1),
	(224, 'ingredients', 'Ingredients of Methamphetamine', 1, 10, NULL, 1),
	(225, 'purifiedwater', 'Purified Water', 1, 10, NULL, 1),
	(226, 'table', 'Preparation table', 1, 1, NULL, 1),
	(227, 'ziemniak', 'Ziemniak', 1, 10, 0, 1),
	(229, 'gauze', 'Gauze', 1, 1, NULL, 1),
	(231, 'firstaid', 'First-Aid Kit', 1, 2, NULL, 1),
	(232, 'medkit', 'Medkit', 1, 2, NULL, 1),
	(233, 'vicodin', 'Vicodin', 1, 2, NULL, 1),
	(234, 'hydrocodone', 'Hydrocodone', 1, 2, NULL, 1),
	(235, 'morphine', 'Morphine', 1, 2, NULL, 1),
	(242, 'drone_flyer_1', 'Basic Drone 1', 1, 1, 0, 1),
	(243, 'drone_flyer_2', 'Basic Drone 2', 1, 1, 0, 1),
	(244, 'drone_flyer_3', 'Basic Drone 3', 1, 1, 0, 1),
	(245, 'drone_flyer_4', 'Advanced Drone 1', 1, 1, 0, 1),
	(246, 'drone_flyer_5', 'Advanced Drone 2', 1, 1, 0, 1),
	(247, 'drone_flyer_6', 'Advanced Drone 3', 1, 1, 0, 1),
	(248, 'drone_flyer_7', 'Police Drone', 1, 1, 0, 1),
	(249, 'plongee1', 'Diving short', 1, 1, 0, 1),
	(250, 'plongee2', 'Diving long', 1, 1, 0, 1),
	(251, 'fixtool', 'Fixtool', 1, 1, 0, 1),
	(253, 'net_cracker', 'Net Cracker', 1, 2, 0, 1),
	(254, 'thermite', 'Thermite Bomb', 1, 8, 0, 1),
	(272, 'fish', 'Fish', 1, 100, 0, 1),
	(273, 'fishbait', 'Fish Bait', 1, 30, 0, 1),
	(274, 'fishingrod', 'Fishing Rod', 1, 2, 0, 1),
	(275, 'shark', 'Shark', 1, 1, 0, 1),
	(276, 'turtle', 'Sea Turtle', 1, 3, 0, 1),
	(277, 'turtlebait', 'Turtle Bait', 1, 10, 0, 1),
	(279, 'gazbottle', 'Gas Bottle', 2, 5, NULL, 1),
	(280, 'fixtool', 'Fix Tools', 2, 1, NULL, 1),
	(281, 'carotool', 'Tools', 2, 1, NULL, 1),
	(282, 'blowpipe', 'Blowtorch', 2, 8, NULL, 1),
	(283, 'fixkit', 'Repair Kit', 3, 1, NULL, 1),
	(284, 'carokit', 'Body Kit', 3, 1, NULL, 1),
	(293, 'cannabis', 'Cannabis', 50, 100, 0, 1),
	(294, 'marijuana', 'Marijuana', 250, 100, 0, 1),
	(295, 'coca', 'CocaPlant', 150, 100, 0, 1),
	(296, 'cocaine', 'Coke', 50, 100, 0, 1),
	(297, 'ephedra', 'Ephedra', 100, 100, 0, 1),
	(298, 'ephedrine', 'Ephedrine', 100, 100, 0, 1),
	(299, 'poppy', 'Khash-khash', 100, 100, 0, 1),
	(300, 'opium', 'Opium', 50, 50, 0, 1),
	(301, 'meth', 'Meth', 25, 25, 0, 1),
	(302, 'heroine', 'Heroine', 10, 10, 0, 1),
	(306, 'whiskey', 'Whiskey', 1, 10, 0, 1),
	(307, 'crack', 'Crack', 25, 25, 0, 1),
	(308, 'drugtest', 'DrugTest', 10, 10, 0, 1),
	(309, 'breathalyzer', 'Breathalyzer', 1, 10, 0, 1),
	(310, 'fakepee', 'Fake Pee', 1, 5, 0, 1),
	(311, 'pcp', 'PCP', 1, 25, 0, 1),
	(312, 'dabs', 'Dabs', 1, 50, 0, 1),
	(313, 'painkiller', 'Painkiller', 1, 5, 0, 1),
	(314, 'narcan', 'Narcan', 1, 1, 0, 1),
	(320, 'simplelockpick', 'Small lockpick', 1, 8, 1, 1),
	(322, 'superlockpick', 'Advanced lockpick', 1, 10, NULL, 1),
	(323, 'handcuffs', 'handcuffs', 1, 1, NULL, 1),
	(324, 'drill', 'Drill', 1, 1, NULL, 1),
	(326, 'metalscrap', 'Metalscrap', 1, 80, NULL, 1),
	(327, 'copper', 'Copper', 1, 130, NULL, 1),
	(328, 'wood', 'Wood', 1, 150, NULL, 1),
	(330, 'stone', 'Stone', 1, 120, NULL, 1),
	(331, 'gold', 'Gold ingot', 1, 100, NULL, 1),
	(449, 'id_card', 'ID Card', 1, 5, 0, 1),
	(455, 'parkingcard', 'Parking Card', 1, 1, NULL, 1),
	(463, 'xanax', 'Xanax', 1, 2, NULL, 1),
	(466, 'id_card_f', 'Malicious Access Card', 1, 3, 3, 1),
	(467, 'secure_card', 'Secure ID Card', 1, 2, 3, 1),
	(631, 'iron', 'IRON', 1, 100, 0, 1),
	(632, 'pickaxe', 'Pickaxe', 1, 5, 30, 1),
	(634, 'radio', 'radio', 1, 1, 0, 1),
	(635, 'clip', 'Kheshab', 1, 10, NULL, 1),
	(636, 'hookah', 'Hookah', 1, 1, 0, 1),
	(646, 'usbstick', 'USB Stick (empty)', 1, 3, 0, 1),
	(647, 'usbstick_data', 'USB Stick (with Data)', 1, 1, 0, 1),
	(649, 'bag', 'Bag', 10, 1, 1, 1),
	(650, 'mowz', 'mowz', 1, 15, NULL, 1),
	(651, 'darknet', 'Dark Net', 1, 1, 0, 1),
	(653, 'binoculars', 'Binoculars', 1, 2, 0, 1),
	(654, 'boxpistol', 'Ammo Box Pistol', 1, 12, 0, 1),
	(655, 'boxsmg', 'Ammo Box SMG', 1, 10, 0, 1),
	(656, 'boxshot', 'Ammo Box Shotgun', 1, 5, 0, 1),
	(657, 'boxrifle', 'Ammo Box Rifle', 1, 10, 0, 1),
	(658, 'boxmg', 'Ammo Box MG', 1, 7, 0, 1),
	(659, 'boxsniper', 'Ammo Box Sniper', 1, 5, 0, 1),
	(660, 'boxflare', 'Ammo Box Flare', 1, 5, 0, 1),
	(661, 'bulletproof', 'Bullet-Proof Vest', 1, 5, 0, 1),
	(662, 'defib', 'Defib', 1, 1, 0, 1),
	(664, 'firework', 'Firework', 1, 5, 0, 1),
	(665, 'firstaidkit', 'First Aid Kit', 1, 1, 0, 1),
	(667, 'handcuffkey', 'Handcuff Keys', 1, 1, 0, 1),
	(669, 'oxygenmask', 'Oxygen Mask', 1, 1, 0, 1),
	(670, 'repairkit', 'Repair Kit', 1, 1, 0, 1),
	(671, 'tirekit', 'Tire Kit', 1, 1, 0, 1),
	(672, 'vehgps', 'Vehicle GPS', 1, 1, 0, 1),
	(673, 'weakit', 'Weapon Kit', 1, 1, 0, 1),
	(674, 'fanta', 'Fanta', 1, 15, 0, 1),
	(675, 'sprezyna_ak47', 'Ghondagh  AK-47', 1, 5, 0, 1),
	(676, 'zamek_ak47', 'Roposh AK-47', 1, 5, 0, 1),
	(677, 'lufa_ak47', 'Badane AK-47', 1, 5, 0, 1),
	(678, 'sprezyna_sns', 'Ghondagh sns', 1, 5, 0, 1),
	(679, 'zamek_sns', 'Roposh sns', 1, 5, 0, 1),
	(680, 'lufa_sns', 'Badane sns', 1, 5, 0, 1),
	(681, 'sprezyna_smg', 'Ghondagh SMG', 1, 5, 0, 1),
	(682, 'zamek_smg', 'Roposh SMG', 1, 5, 0, 1),
	(683, 'lufa_smg', 'Badane SMG', 1, 5, 0, 1),
	(684, 'sprezyna_sniper', 'Ghondagh sniper', 1, 5, 0, 1),
	(685, 'zamek_sniper', 'Roposh sniper', 1, 5, 0, 1),
	(686, 'lufa_sniper', 'Badane sniper', 1, 5, 0, 1),
	(687, 'WEAPON_FLASHLIGHT', 'Flashlight', 1, NULL, NULL, NULL),
	(688, 'WEAPON_STUNGUN', 'Taser', 100, NULL, NULL, NULL),
	(689, 'WEAPON_KNIFE', 'Knife', 100, NULL, NULL, NULL),
	(690, 'WEAPON_BAT', 'Baseball Bat', 1, NULL, NULL, NULL),
	(691, 'WEAPON_ADVANCEDRIFLE', 'Advanced Rifle', 1, NULL, NULL, NULL),
	(692, 'WEAPON_APPISTOL', 'AP Pistol', 1, NULL, NULL, NULL),
	(693, 'WEAPON_ASSAULTRIFLE', 'Assault Rifle', 1, NULL, NULL, NULL),
	(694, 'WEAPON_ASSAULTSHOTGUN', 'Assault Shotgun', 1, NULL, NULL, NULL),
	(695, 'WEAPON_ASSAULTSMG', 'Assault SMG', 1, NULL, NULL, NULL),
	(696, 'WEAPON_AUTOSHOTGUN', 'Auto Shotgun', 1, NULL, NULL, NULL),
	(697, 'WEAPON_CARBINERIFLE', 'Carbine Rifle', 1, NULL, NULL, NULL),
	(698, 'WEAPON_COMBATPISTOL', 'Combat Pistol', 1, NULL, NULL, NULL),
	(699, 'WEAPON_PISTOL', 'Pistol', 1, NULL, NULL, NULL),
	(700, 'WEAPON_PUMPSHOTGUN', 'Pump Shotgun', 1, NULL, NULL, NULL),
	(701, 'WEAPON_SMG', 'SMG', 1, NULL, NULL, NULL),
	(702, 'flashlight', 'Flashlight', 2, NULL, NULL, NULL),
	(703, 'grip', 'Grip', 2, NULL, NULL, NULL),
	(704, 'scope', 'Scope', 2, NULL, NULL, NULL),
	(705, 'skin', 'Skin', 2, NULL, NULL, NULL),
	(706, 'supressor', 'Suppressor', 2, NULL, NULL, NULL),
	(707, 'ammunition_pistol', 'Pistol Ammo', 10, NULL, NULL, NULL),
	(708, 'ammunition_pistol_large', 'Pistol Ammo Large', 10, NULL, NULL, NULL),
	(709, 'ammunition_rifle', 'Rifle Ammo', 10, NULL, NULL, NULL),
	(710, 'ammunition_rifle_large', 'Rifle Ammo Large', 10, NULL, NULL, NULL),
	(711, 'ammunition_shotgun', 'Shotgun Shells', 10, NULL, NULL, NULL),
	(712, 'ammunition_shotgun_large', 'Shotgun Shells Large', 10, NULL, NULL, NULL),
	(713, 'ammunition_smg', 'SMG Ammo', 10, NULL, NULL, NULL),
	(714, 'ammunition_smg_large', 'SMG Ammo Large', 10, NULL, NULL, NULL),
	(715, 'ammunition_snp', 'Sniper Ammo', 10, NULL, NULL, NULL),
	(716, 'ammunition_snp_large', 'Sniper Ammo Large', 10, NULL, NULL, NULL),
	(717, 'ammunition_fireextinguisher', 'Fire Extinguisher Fuel', 10, NULL, NULL, NULL),
	(718, 'bag', 'Bag', 1, NULL, NULL, NULL);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;

-- Dumping structure for table roleplay.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- Dumping data for table roleplay.jobs: ~27 rows (approximately)
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
REPLACE INTO `jobs` (`id`, `name`, `label`, `whitelisted`) VALUES
	(1, 'unemployed', 'Bikar', 0),
	(3, 'slaughterer', 'Ghasab', 0),
	(4, 'fisherman', 'Mahigir', 0),
	(5, 'miner', 'Miner', 0),
	(6, 'lumberjack', 'Choob Bor', 0),
	(7, 'fueler', 'Refiner', 0),
	(8, 'reporter', 'Gozareshgard', 0),
	(9, 'textil', 'Fashion Designer', 1),
	(10, 'cardealer', 'Car Dealer', 1),
	(12, 'realestateagent', 'Property agent', 1),
	(14, 'banker', 'Banker', 1),
	(18, 'thelostmc', 'The Lost MC', 1),
	(19, 'rally', 'Rally Driver', 1),
	(20, 'cartel', 'Cartel', 1),
	(22, 'carthief', 'Car Thief', 1),
	(23, 'moonshine', 'Moonshine', 1),
	(29, 'ambulance', 'EMS', 1),
	(30, 'farmer', 'Farmer', 0),
	(34, 'fbi', 'FBI', 1),
	(35, 'rapper', 'Rap', 1),
	(37, 'cardealer', 'Cardealer', 0),
	(38, 'police', 'HXPD', 1),
	(39, 'mafia', 'Mafia', 1),
	(42, 'garbage', 'Maemoor Ashghali', 0),
	(43, 'mecano', 'Mechanic', 1),
	(44, 'cukur', 'Çukur', 1),
	(45, 'taxi', 'Taxi', 0),
	(46, 'swat', 'Swat', 1),
	(47, 'sheriff', 'Sheriff', 1);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Dumping structure for table roleplay.job_grades
CREATE TABLE IF NOT EXISTS `job_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext COLLATE utf8mb4_bin NOT NULL,
  `skin_female` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- Dumping data for table roleplay.job_grades: ~114 rows (approximately)
/*!40000 ALTER TABLE `job_grades` DISABLE KEYS */;
REPLACE INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(1, 'unemployed', 0, 'rsa', 'Bikar', 250, '{}', '{}'),
	(7, 'lumberjack', 0, 'Lumberjack', 'Employee', 1200, '{"tshirt_2":1,"ears_1":8,"glasses_1":15,"torso_2":0,"ears_2":2,"glasses_2":3,"shoes_2":1,"pants_1":75,"shoes_1":51,"bags_1":0,"helmet_2":0,"pants_2":7,"torso_1":71,"tshirt_1":59,"arms":2,"bags_2":0,"helmet_1":0}{}', '{"age_1":0,"glasses_2":0,"beard_1":5,"decals_2":0,"beard_4":0,"shoes_2":0,"tshirt_2":0,"lipstick_2":0,"hair_2":0,"arms":72,"pants_1":45,"skin":29,"eyebrows_2":0,"shoes":10,"helmet_1":-1,"lipstick_1":0,"helmet_2":0,"hair_color_1":0,"glasses":0,"makeup_4":0,"makeup_1":0,"hair_1":2,"bproof_1":0,"bags_1":0,"mask_1":0,"lipstick_3":0,"chain_1":0,"eyebrows_4":0,"sex":1,"torso_1":49,"beard_2":6,"shoes_1":24,"decals_1":0,"face":19,"lipstick_4":0,"tshirt_1":9,"mask_2":0,"age_2":0,"eyebrows_3":0,"chain_2":0,"glasses_1":5,"ears_1":-1,"bags_2":0,"ears_2":0,"torso_2":0,"bproof_2":0,"makeup_2":0,"eyebrows_1":0,"makeup_3":0,"pants_2":0,"beard_3":0,"hair_color_2":4}{}'),
	(8, 'fisherman', 0, 'Fisherman', 'Employee', 1200, '{"age_1":0,"glasses_2":0,"beard_1":5,"decals_2":0,"beard_4":0,"shoes_2":0,"tshirt_2":0,"lipstick_2":0,"hair_2":0,"arms":67,"pants_1":36,"skin":29,"eyebrows_2":0,"shoes":10,"helmet_1":-1,"lipstick_1":0,"helmet_2":0,"hair_color_1":0,"glasses":0,"makeup_4":0,"makeup_1":0,"hair_1":2,"bproof_1":0,"bags_1":0,"mask_1":0,"lipstick_3":0,"chain_1":0,"eyebrows_4":0,"sex":0,"torso_1":56,"beard_2":6,"shoes_1":12,"decals_1":0,"face":19,"lipstick_4":0,"tshirt_1":15,"mask_2":0,"age_2":0,"eyebrows_3":0,"chain_2":0,"glasses_1":0,"ears_1":-1,"bags_2":0,"ears_2":0,"torso_2":0,"bproof_2":0,"makeup_2":0,"eyebrows_1":0,"makeup_3":0,"pants_2":0,"beard_3":0,"hair_color_2":4}{}', '{"age_1":0,"glasses_2":0,"beard_1":5,"decals_2":0,"beard_4":0,"shoes_2":0,"tshirt_2":0,"lipstick_2":0,"hair_2":0,"arms":72,"pants_1":45,"skin":29,"eyebrows_2":0,"shoes":10,"helmet_1":-1,"lipstick_1":0,"helmet_2":0,"hair_color_1":0,"glasses":0,"makeup_4":0,"makeup_1":0,"hair_1":2,"bproof_1":0,"bags_1":0,"mask_1":0,"lipstick_3":0,"chain_1":0,"eyebrows_4":0,"sex":1,"torso_1":49,"beard_2":6,"shoes_1":24,"decals_1":0,"face":19,"lipstick_4":0,"tshirt_1":9,"mask_2":0,"age_2":0,"eyebrows_3":0,"chain_2":0,"glasses_1":5,"ears_1":-1,"bags_2":0,"ears_2":0,"torso_2":0,"bproof_2":0,"makeup_2":0,"eyebrows_1":0,"makeup_3":0,"pants_2":0,"beard_3":0,"hair_color_2":4}{}'),
	(9, 'fueler', 0, 'Fueler', 'Employee', 1200, '{"tshirt_2":1,"ears_1":8,"glasses_1":15,"torso_2":0,"ears_2":2,"glasses_2":3,"shoes_2":1,"pants_1":75,"shoes_1":51,"bags_1":0,"helmet_2":0,"pants_2":7,"torso_1":71,"tshirt_1":59,"arms":2,"bags_2":0,"helmet_1":0}{}', '{"age_1":0,"glasses_2":0,"beard_1":5,"decals_2":0,"beard_4":0,"shoes_2":0,"tshirt_2":0,"lipstick_2":0,"hair_2":0,"arms":72,"pants_1":45,"skin":29,"eyebrows_2":0,"shoes":10,"helmet_1":-1,"lipstick_1":0,"helmet_2":0,"hair_color_1":0,"glasses":0,"makeup_4":0,"makeup_1":0,"hair_1":2,"bproof_1":0,"bags_1":0,"mask_1":0,"lipstick_3":0,"chain_1":0,"eyebrows_4":0,"sex":1,"torso_1":49,"beard_2":6,"shoes_1":24,"decals_1":0,"face":19,"lipstick_4":0,"tshirt_1":9,"mask_2":0,"age_2":0,"eyebrows_3":0,"chain_2":0,"glasses_1":5,"ears_1":-1,"bags_2":0,"ears_2":0,"torso_2":0,"bproof_2":0,"makeup_2":0,"eyebrows_1":0,"makeup_3":0,"pants_2":0,"beard_3":0,"hair_color_2":4}{}'),
	(10, 'reporter', 0, 'employee', 'Employee', 1200, '{"mask_1":0,"arms":1,"glasses_1":0,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":0,"torso_1":24,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":0,"lipstick_2":0,"chain_1":0,"tshirt_1":0,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":36,"tshirt_2":0,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":48,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}', '{"mask_1":0,"arms":1,"glasses_1":0,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":0,"torso_1":24,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":0,"lipstick_2":0,"chain_1":0,"tshirt_1":0,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":36,"tshirt_2":0,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":48,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}'),
	(11, 'textil', 0, 'textil', 'Employee', 1200, '{"mask_1":0,"arms":1,"glasses_1":0,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":0,"torso_1":24,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":0,"lipstick_2":0,"chain_1":0,"tshirt_1":0,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":36,"tshirt_2":0,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":48,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}', '{"mask_1":0,"arms":5,"glasses_1":5,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":1,"torso_1":52,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":1,"lipstick_2":0,"chain_1":0,"tshirt_1":23,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":42,"tshirt_2":4,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":36,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}'),
	(12, 'miner', 0, 'miner', 'Employee', 1200, '{"tshirt_2":1,"ears_1":8,"glasses_1":15,"torso_2":0,"ears_2":2,"glasses_2":3,"shoes_2":1,"pants_1":75,"shoes_1":51,"bags_1":0,"helmet_2":0,"pants_2":7,"torso_1":71,"tshirt_1":59,"arms":2,"bags_2":0,"helmet_1":0}', '{"age_1":0,"glasses_2":0,"beard_1":5,"decals_2":0,"beard_4":0,"shoes_2":0,"tshirt_2":0,"lipstick_2":0,"hair_2":0,"arms":72,"pants_1":45,"skin":29,"eyebrows_2":0,"shoes":10,"helmet_1":-1,"lipstick_1":0,"helmet_2":0,"hair_color_1":0,"glasses":0,"makeup_4":0,"makeup_1":0,"hair_1":2,"bproof_1":0,"bags_1":0,"mask_1":0,"lipstick_3":0,"chain_1":0,"eyebrows_4":0,"sex":1,"torso_1":49,"beard_2":6,"shoes_1":24,"decals_1":0,"face":19,"lipstick_4":0,"tshirt_1":9,"mask_2":0,"age_2":0,"eyebrows_3":0,"chain_2":0,"glasses_1":5,"ears_1":-1,"bags_2":0,"ears_2":0,"torso_2":0,"bproof_2":0,"makeup_2":0,"eyebrows_1":0,"makeup_3":0,"pants_2":0,"beard_3":0,"hair_color_2":4}{}'),
	(13, 'slaughterer', 0, 'slaughterer', 'Employee', 1200, '{"age_1":0,"glasses_2":0,"beard_1":5,"decals_2":0,"beard_4":0,"shoes_2":0,"tshirt_2":0,"lipstick_2":0,"hair_2":0,"arms":67,"pants_1":36,"skin":29,"eyebrows_2":0,"shoes":10,"helmet_1":-1,"lipstick_1":0,"helmet_2":0,"hair_color_1":0,"glasses":0,"makeup_4":0,"makeup_1":0,"hair_1":2,"bproof_1":0,"bags_1":0,"mask_1":0,"lipstick_3":0,"chain_1":0,"eyebrows_4":0,"sex":0,"torso_1":56,"beard_2":6,"shoes_1":12,"decals_1":0,"face":19,"lipstick_4":0,"tshirt_1":15,"mask_2":0,"age_2":0,"eyebrows_3":0,"chain_2":0,"glasses_1":0,"ears_1":-1,"bags_2":0,"ears_2":0,"torso_2":0,"bproof_2":0,"makeup_2":0,"eyebrows_1":0,"makeup_3":0,"pants_2":0,"beard_3":0,"hair_color_2":4}', '{"age_1":0,"glasses_2":0,"beard_1":5,"decals_2":0,"beard_4":0,"shoes_2":0,"tshirt_2":0,"lipstick_2":0,"hair_2":0,"arms":72,"pants_1":45,"skin":29,"eyebrows_2":0,"shoes":10,"helmet_1":-1,"lipstick_1":0,"helmet_2":0,"hair_color_1":0,"glasses":0,"makeup_4":0,"makeup_1":0,"hair_1":2,"bproof_1":0,"bags_1":0,"mask_1":0,"lipstick_3":0,"chain_1":0,"eyebrows_4":0,"sex":1,"torso_1":49,"beard_2":6,"shoes_1":24,"decals_1":0,"face":19,"lipstick_4":0,"tshirt_1":9,"mask_2":0,"age_2":0,"eyebrows_3":0,"chain_2":0,"glasses_1":5,"ears_1":-1,"bags_2":0,"ears_2":0,"torso_2":0,"bproof_2":0,"makeup_2":0,"eyebrows_1":0,"makeup_3":0,"pants_2":0,"beard_3":0,"hair_color_2":4}'),
	(14, 'cardealer', 0, 'recruit', 'Recruit', 1300, '{}', '{}'),
	(15, 'cardealer', 1, 'novice', 'Novice', 1350, '{}', '{}'),
	(16, 'cardealer', 2, 'experienced', 'Experimente', 1440, '{}', '{}'),
	(17, 'cardealer', 3, 'boss', 'Patron', 1600, '{}', '{}'),
	(22, 'realestateagent', 0, 'location', 'Trainee', 1300, '{}', '{}'),
	(23, 'realestateagent', 1, 'vendeur', 'Seller', 1350, '{}', '{}'),
	(24, 'realestateagent', 2, 'gestion', 'Manager', 1400, '{}', '{}'),
	(25, 'realestateagent', 3, 'boss', 'Chief', 2000, '{}', '{}'),
	(31, 'ambulance', 0, 'ambulance', 'Trainee', 500, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":0,"shoes_1":42,"shoes_2":0,"torso_2":1,"hair_color_2":0,"pants_1":96,"glasses_1":5,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":122,"helmet_2":1,"arms":74,"face":19,"decals_1":58,"torso_1":250,"hair_2":0,"skin":34,"pants_2":1,"chain_1":126,"chain_2":0}', '{"tshirt_2":0,"decals_2":0,"glasses":15,"hair_1":2,"torso_1":257,"shoes_1":3,"shoes_2":5,"hair_color_2":0,"glasses_1":15,"skin":13,"face":6,"pants_2":1,"tshirt_1":159,"pants_1":99,"helmet_1":121,"torso_2":1,"arms":101,"sex":1,"glasses_2":0,"decals_1":65,"hair_2":0,"helmet_2":1,"hair_color_1":0,"chain_1":97,"chain_2":0}'),
	(32, 'ambulance', 1, 'doctor', 'EMT', 1380, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":0,"shoes_1":42,"shoes_2":0,"torso_2":1,"hair_color_2":0,"pants_1":96,"glasses_1":5,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":122,"helmet_2":1,"arms":74,"face":19,"decals_1":58,"torso_1":250,"hair_2":0,"skin":34,"pants_2":1,"chain_1":126,"chain_2":0}', '{"tshirt_2":0,"decals_2":0,"glasses":15,"hair_1":2,"torso_1":257,"shoes_1":3,"shoes_2":5,"hair_color_2":0,"glasses_1":15,"skin":13,"face":6,"pants_2":1,"tshirt_1":159,"pants_1":99,"helmet_1":121,"torso_2":1,"arms":101,"sex":1,"glasses_2":0,"decals_1":65,"hair_2":0,"helmet_2":1,"hair_color_1":0,"chain_1":97,"chain_2":0}'),
	(33, 'ambulance', 2, 'chief_doctor', 'Paramedic ', 1400, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":0,"shoes_1":42,"shoes_2":0,"torso_2":1,"hair_color_2":0,"pants_1":96,"glasses_1":5,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":122,"helmet_2":1,"arms":74,"face":19,"decals_1":58,"torso_1":250,"hair_2":0,"skin":34,"pants_2":1,"chain_1":126,"chain_2":0}', '{"tshirt_2":0,"decals_2":0,"glasses":15,"hair_1":2,"torso_1":257,"shoes_1":3,"shoes_2":5,"hair_color_2":0,"glasses_1":15,"skin":13,"face":6,"pants_2":1,"tshirt_1":159,"pants_1":99,"helmet_1":121,"torso_2":1,"arms":101,"sex":1,"glasses_2":0,"decals_1":65,"hair_2":0,"helmet_2":1,"hair_color_1":0,"chain_1":97,"chain_2":0}'),
	(34, 'ambulance', 3, 'paramedic', 'Senior Lead Paramedic', 1430, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":0,"shoes_1":42,"shoes_2":0,"torso_2":1,"hair_color_2":0,"pants_1":96,"glasses_1":5,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":122,"helmet_2":1,"arms":74,"face":19,"decals_1":58,"torso_1":250,"hair_2":0,"skin":34,"pants_2":1,"chain_1":126,"chain_2":0}', '{"tshirt_2":0,"decals_2":0,"glasses":15,"hair_1":2,"torso_1":257,"shoes_1":3,"shoes_2":5,"hair_color_2":0,"glasses_1":15,"skin":13,"face":6,"pants_2":1,"tshirt_1":159,"pants_1":99,"helmet_1":121,"torso_2":1,"arms":101,"sex":1,"glasses_2":0,"decals_1":65,"hair_2":0,"helmet_2":1,"hair_color_1":0,"chain_1":97,"chain_2":0}'),
	(35, 'ambulance', 4, 'lieutenant', 'Commander ', 1440, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":0,"shoes_1":42,"shoes_2":0,"torso_2":1,"hair_color_2":0,"pants_1":96,"glasses_1":5,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":122,"helmet_2":1,"arms":74,"face":19,"decals_1":58,"torso_1":250,"hair_2":0,"skin":34,"pants_2":1,"chain_1":126,"chain_2":0}', '{"tshirt_2":0,"decals_2":0,"glasses":15,"hair_1":2,"torso_1":257,"shoes_1":3,"shoes_2":5,"hair_color_2":0,"glasses_1":15,"skin":13,"face":6,"pants_2":1,"tshirt_1":159,"pants_1":99,"helmet_1":121,"torso_2":1,"arms":101,"sex":1,"glasses_2":0,"decals_1":65,"hair_2":0,"helmet_2":1,"hair_color_1":0,"chain_1":96,"chain_2":0}'),
	(36, 'ambulance', 5, 'captain', 'Deputy Chief', 1500, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":0,"shoes_1":42,"shoes_2":0,"torso_2":1,"hair_color_2":0,"pants_1":96,"glasses_1":5,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":122,"helmet_2":1,"arms":74,"face":19,"decals_1":58,"torso_1":250,"hair_2":0,"skin":34,"pants_2":1,"chain_1":126,"chain_2":0}', '{"tshirt_2":0,"decals_2":0,"glasses":15,"hair_1":2,"torso_1":257,"shoes_1":3,"shoes_2":5,"hair_color_2":0,"glasses_1":15,"skin":13,"face":6,"pants_2":1,"tshirt_1":159,"pants_1":99,"helmet_1":121,"torso_2":1,"arms":101,"sex":1,"glasses_2":0,"decals_1":65,"hair_2":0,"helmet_2":1,"hair_color_1":0,"chain_1":96,"chain_2":0}'),
	(37, 'ambulance', 6, 'boss', 'Chief  ^', 1540, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":0,"shoes_1":42,"shoes_2":0,"torso_2":0,"hair_color_2":0,"pants_1":96,"glasses_1":5,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":122,"helmet_2":0,"arms":93,"face":19,"decals_1":57,"torso_1":249,"hair_2":0,"skin":34,"pants_2":0,"chain_1":126,"chain_2":0}', '{"tshirt_2":0,"decals_2":0,"glasses":15,"hair_1":2,"torso_1":257,"shoes_1":3,"shoes_2":5,"hair_color_2":0,"glasses_1":15,"skin":13,"face":6,"pants_2":1,"tshirt_1":159,"pants_1":99,"helmet_1":121,"torso_2":1,"arms":101,"sex":1,"glasses_2":0,"decals_1":65,"hair_2":0,"helmet_2":1,"hair_color_1":0,"chain_1":96,"chain_2":0}'),
	(58, 'banker', 0, 'advisor', 'Adviseur', 1300, '{"torso_2":0,"pants_2":0,"hair_2":0,"makeup_1":0,"tshirt_2":0,"ears_1":-1,"pants_1":24,"chain_2":0,"glasses_1":4,"mask_1":0,"chain_1":0,"shoes_2":0,"helmet_2":0,"helmet_1":-1,"shoes_1":10,"tshirt_1":3,"torso_1":4,"bproof_1":0,"glasses_2":2,"ears_2":0,"arms":1,"bproof_2":0}', '{"torso_2":0,"pants_2":0,"hair_2":0,"makeup_1":0,"tshirt_2":0,"ears_1":-1,"pants_1":24,"chain_2":0,"glasses_1":4,"mask_1":0,"chain_1":0,"shoes_2":0,"helmet_2":0,"helmet_1":-1,"shoes_1":10,"tshirt_1":3,"torso_1":4,"bproof_1":0,"glasses_2":2,"ears_2":0,"arms":1,"bproof_2":0}'),
	(59, 'banker', 1, 'banker', 'Bankier', 1350, '{"torso_1":4,"chain_2":0,"shoes_1":10,"arms":1,"bproof_1":0,"tshirt_2":1,"torso_2":0,"pants_2":0,"glasses_2":2,"bproof_2":0,"helmet_2":0,"helmet_1":-1,"glasses_1":4,"chain_1":0,"shoes_2":0,"ears_2":0,"tshirt_1":3,"pants_1":24,"ears_1":-1}', '{"torso_1":4,"chain_2":0,"shoes_1":10,"arms":1,"bproof_1":0,"tshirt_2":1,"torso_2":0,"pants_2":0,"glasses_2":2,"bproof_2":0,"helmet_2":0,"helmet_1":-1,"glasses_1":4,"chain_1":0,"shoes_2":0,"ears_2":0,"tshirt_1":3,"pants_1":24,"ears_1":-1}'),
	(60, 'banker', 2, 'business_banker', 'Bussiness Banker', 1650, '{"torso_1":4,"chain_2":0,"shoes_1":10,"arms":1,"bproof_1":0,"tshirt_2":1,"torso_2":0,"pants_2":0,"glasses_2":2,"bproof_2":0,"helmet_2":0,"helmet_1":-1,"glasses_1":4,"chain_1":0,"shoes_2":0,"ears_2":0,"tshirt_1":3,"pants_1":24,"ears_1":-1}', '{"torso_1":4,"chain_2":0,"shoes_1":10,"arms":1,"bproof_1":0,"tshirt_2":1,"torso_2":0,"pants_2":0,"glasses_2":2,"bproof_2":0,"helmet_2":0,"helmet_1":-1,"glasses_1":4,"chain_1":0,"shoes_2":0,"ears_2":0,"tshirt_1":3,"pants_1":24,"ears_1":-1}'),
	(61, 'banker', 3, 'trader', 'Manager', 1800, '{"torso_1":4,"chain_2":0,"shoes_1":10,"arms":1,"bproof_1":0,"tshirt_2":1,"torso_2":0,"pants_2":0,"glasses_2":2,"bproof_2":0,"helmet_2":0,"helmet_1":-1,"glasses_1":4,"chain_1":0,"shoes_2":0,"ears_2":0,"tshirt_1":3,"pants_1":24,"ears_1":-1}', '{"torso_1":4,"chain_2":0,"shoes_1":10,"arms":1,"bproof_1":0,"tshirt_2":1,"torso_2":0,"pants_2":0,"glasses_2":2,"bproof_2":0,"helmet_2":0,"helmet_1":-1,"glasses_1":4,"chain_1":0,"shoes_2":0,"ears_2":0,"tshirt_1":3,"pants_1":24,"ears_1":-1}'),
	(62, 'banker', 4, 'boss', 'CEO', 2500, '{"torso_2":0,"pants_2":0,"hair_2":0,"makeup_1":0,"tshirt_2":0,"ears_1":-1,"pants_1":24,"chain_2":0,"glasses_1":4,"mask_1":0,"chain_1":0,"shoes_2":0,"helmet_2":0,"helmet_1":-1,"shoes_1":10,"tshirt_1":3,"torso_1":4,"bproof_1":0,"glasses_2":2,"ears_2":0,"arms":1,"bproof_2":0}', '{"torso_2":0,"pants_2":0,"hair_2":0,"makeup_1":0,"tshirt_2":0,"ears_1":-1,"pants_1":24,"chain_2":0,"glasses_1":4,"mask_1":0,"chain_1":0,"shoes_2":0,"helmet_2":0,"helmet_1":-1,"shoes_1":10,"tshirt_1":3,"torso_1":4,"bproof_1":0,"glasses_2":2,"ears_2":0,"arms":1,"bproof_2":0}'),
	(74, 'cartel', 0, 'associate', 'Associate', 1300, '{"torso_1":42,"chain_2":0,"shoes_1":1,"arms":11,"bproof_1":0,"tshirt_2":0,"lipstick_2":0,"torso_2":0,"pants_2":0,"glasses_2":2,"bproof_2":0,"helmet_2":0,"helmet_1":-1,"eyebrows_2":10,"glasses_1":4,"chain_1":0,"shoes_2":0,"mask_1":0,"ears_2":0,"tshirt_1":15,"pants_1":25,"ears_1":-1}', '{"torso_1":42,"chain_2":0,"shoes_1":1,"arms":11,"bproof_1":0,"tshirt_2":0,"lipstick_2":0,"torso_2":0,"pants_2":0,"glasses_2":2,"bproof_2":0,"helmet_2":0,"helmet_1":-1,"eyebrows_2":10,"glasses_1":4,"chain_1":0,"shoes_2":0,"mask_1":0,"ears_2":0,"tshirt_1":15,"pants_1":25,"ears_1":-1}'),
	(75, 'cartel', 1, 'soldier', 'Soldier', 1350, '{"mask_2":0,"torso_1":48,"chain_2":0,"shoes_1":1,"makeup_4":0,"arms":1,"makeup_1":0,"bproof_1":0,"tshirt_2":0,"lipstick_2":0,"hair_color_2":0,"torso_2":0,"pants_2":0,"glasses_2":2,"bproof_2":0,"helmet_2":0,"helmet_1":-1,"eyebrows_1":0,"eyebrows_2":10,"glasses_1":4,"chain_1":0,"shoes_2":0,"ears_2":0,"tshirt_1":15,"pants_1":26,"eyebrows_4":0,"ears_1":-1}', '{"mask_2":0,"torso_1":48,"chain_2":0,"shoes_1":1,"makeup_4":0,"arms":1,"makeup_1":0,"bproof_1":0,"tshirt_2":0,"lipstick_2":0,"hair_color_2":0,"torso_2":0,"pants_2":0,"glasses_2":2,"bproof_2":0,"helmet_2":0,"helmet_1":-1,"eyebrows_1":0,"eyebrows_2":10,"glasses_1":4,"chain_1":0,"shoes_2":0,"ears_2":0,"tshirt_1":15,"pants_1":26,"eyebrows_4":0,"ears_1":-1}'),
	(76, 'cartel', 2, 'capo', 'Capo', 1400, '{"torso_1":29,"chain_2":0,"shoes_1":10,"arms":1,"bproof_1":0,"tshirt_2":1,"hair_color_2":0,"torso_2":1,"pants_2":1,"glasses_2":2,"bproof_2":0,"helmet_2":0,"helmet_1":-1,"glasses_1":4,"chain_1":0,"shoes_2":0,"ears_2":0,"tshirt_1":33,"pants_1":24,"ears_1":-1}', '{"mask_2":0,"torso_1":48,"chain_2":0,"shoes_1":1,"makeup_4":0,"arms":1,"makeup_1":0,"bproof_1":0,"tshirt_2":0,"lipstick_2":0,"hair_color_2":0,"torso_2":0,"pants_2":0,"glasses_2":2,"bproof_2":0,"helmet_2":0,"helmet_1":-1,"eyebrows_1":0,"eyebrows_2":10,"glasses_1":4,"chain_1":0,"shoes_2":0,"ears_2":0,"tshirt_1":15,"pants_1":26,"eyebrows_4":0,"ears_1":-1}'),
	(77, 'cartel', 3, 'underboss', 'Underboss', 1450, '{"helmet_1":-1,"helmet_2":0,"bproof_1":0,"glasses_2":2,"bproof_2":0,"chain_2":0,"glasses_1":4,"shoes_1":10,"torso_1":4,"shoes_2":0,"tshirt_1":3,"arms":1,"ears_1":-1,"makeup_2":0,"pants_1":24,"bags_1":0,"pants_2":0,"torso_2":0,"makeup_4":0,"chain_1":0,"tshirt_2":2,"ears_2":0}', '{"helmet_1":-1,"helmet_2":0,"bproof_1":0,"glasses_2":2,"bproof_2":0,"chain_2":0,"glasses_1":4,"shoes_1":10,"torso_1":4,"shoes_2":0,"tshirt_1":3,"arms":1,"ears_1":-1,"makeup_2":0,"pants_1":24,"bags_1":0,"pants_2":0,"torso_2":0,"makeup_4":0,"chain_1":0,"tshirt_2":2,"ears_2":0}'),
	(80, 'cartel', 4, 'righthand', 'Right Hand', 1500, '{"torso_1":4,"chain_2":0,"shoes_1":10,"arms":1,"bproof_1":0,"tshirt_2":1,"torso_2":0,"pants_2":0,"glasses_2":2,"bproof_2":0,"helmet_2":0,"helmet_1":-1,"glasses_1":4,"chain_1":0,"shoes_2":0,"ears_2":0,"tshirt_1":3,"pants_1":24,"ears_1":-1}', '{"torso_1":4,"chain_2":0,"shoes_1":10,"arms":1,"bproof_1":0,"tshirt_2":1,"torso_2":0,"pants_2":0,"glasses_2":2,"bproof_2":0,"helmet_2":0,"helmet_1":-1,"glasses_1":4,"chain_1":0,"shoes_2":0,"ears_2":0,"tshirt_1":3,"pants_1":24,"ears_1":-1}'),
	(81, 'cartel', 5, 'boss', 'Don', 1600, '{"torso_2":0,"pants_2":0,"hair_2":0,"makeup_1":0,"tshirt_2":0,"ears_1":-1,"pants_1":24,"chain_2":0,"glasses_1":4,"mask_1":0,"chain_1":0,"shoes_2":0,"helmet_2":0,"helmet_1":-1,"shoes_1":10,"tshirt_1":3,"torso_1":4,"bproof_1":0,"glasses_2":2,"ears_2":0,"arms":1,"bproof_2":0}', '{"torso_2":0,"pants_2":0,"hair_2":0,"makeup_1":0,"tshirt_2":0,"ears_1":-1,"pants_1":24,"chain_2":0,"glasses_1":4,"mask_1":0,"chain_1":0,"shoes_2":0,"helmet_2":0,"helmet_1":-1,"shoes_1":10,"tshirt_1":3,"torso_1":4,"bproof_1":0,"glasses_2":2,"ears_2":0,"arms":1,"bproof_2":0}'),
	(82, 'thelostmc', 0, 'prospect', 'Prospect', 1320, '{}', '{}'),
	(83, 'thelostmc', 1, 'member', 'Member', 1360, '{}', '{}'),
	(84, 'thelostmc', 2, 'roadcaptian', 'Road Captain', 1400, '{}', '{}'),
	(85, 'thelostmc', 3, 'sergeantinarms', 'Sergeant at Arms', 1500, '{}', '{}'),
	(86, 'thelostmc', 4, 'vicepresident', 'Vice President', 1550, '{}', '{}'),
	(87, 'thelostmc', 5, 'boss', 'President', 1650, '{}', '{}'),
	(88, 'rally', 0, 'employee', 'Athlete', 1300, '{}', '{}'),
	(100, 'carthief', 0, 'thief', 'Thief', 1200, '{}', '{}'),
	(101, 'carthief', 1, 'bodyguard', 'Bodyguard', 1250, '{}', '{}'),
	(102, 'carthief', 2, 'boss', 'Boss', 1600, '{}', '{}'),
	(103, 'moonshine', 0, 'employee', 'Moonshiner', 1500, '{}', '{}'),
	(116, 'cardealer', 0, 'recruit', 'Recruit', 10, '{}', '{}'),
	(117, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
	(118, 'cardealer', 2, 'experienced', 'Experienced', 40, '{}', '{}'),
	(119, 'cardealer', 3, 'boss', 'Boss', 0, '{}', '{}'),
	(120, 'cardealer', 0, 'recruit', 'Recruit', 10, '{}', '{}'),
	(121, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
	(122, 'cardealer', 2, 'experienced', 'Experienced', 40, '{}', '{}'),
	(123, 'cardealer', 3, 'boss', 'Boss', 0, '{}', '{}'),
	(124, 'cardealer', 0, 'recruit', 'Recruit', 10, '{}', '{}'),
	(125, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
	(126, 'cardealer', 2, 'experienced', 'Experienced', 40, '{}', '{}'),
	(127, 'cardealer', 3, 'boss', 'Boss', 0, '{}', '{}'),
	(144, 'farmer', 0, 'zatrudniony', 'Farmer', 100, '{}', '{}'),
	(145, 'farmer', 0, 'zatrudniony', 'Farmer', 100, '{}', '{}'),
	(156, 'fbi', 0, 'agent', 'Agent', 20, '{}', '{}'),
	(157, 'fbi', 1, 'special', 'Experienced Agent', 40, '{}', '{}'),
	(158, 'fbi', 2, 'supervisor', 'Supervisor', 60, '{}', '{}'),
	(159, 'fbi', 3, 'assistant', 'Assistant Director', 85, '{}', '{}'),
	(160, 'fbi', 4, 'boss', 'Director', 60000, '{}', '{}'),
	(161, 'rapper', 0, 'Rap', 'Rap', 700, '{}', '{}'),
	(167, 'cardealer', 0, 'recruit', 'Recruit', 10, '{}', '{}'),
	(168, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
	(169, 'cardealer', 2, 'experienced', 'Experienced', 40, '{}', '{}'),
	(170, 'cardealer', 3, 'boss', 'Boss', 0, '{}', '{}'),
	(198, 'police', 1, 'cadet', 'Cadet', 5000, '{}', '{}'),
	(199, 'police', 2, 'po1', 'Officer |', 8000, '{}', '{}'),
	(200, 'police', 3, 'po2', 'Officer ||', 11000, '{}', '{}'),
	(201, 'police', 4, 'po3', 'Officer |||', 14000, '{}', '{}'),
	(202, 'police', 5, 'senior', 'Senior Lead Officer', 16000, '{}', '{}'),
	(203, 'police', 6, 'sergeant', 'Sergeant', 17000, '{}', '{}'),
	(205, 'police', 7, 'commander', 'Commander', 18000, '{}', '{}'),
	(206, 'police', 8, 'deputy', 'Deputy Chief', 22000, '{}', '{}'),
	(207, 'police', 9, 'boss', 'Chief ^', 25000, '{}', '{}'),
	(209, 'mafia', 0, 'guard', 'Guard', 3500, '{}', '{}'),
	(210, 'mafia', 1, 'fabrizio', 'Fabrizio', 5000, '{}', '{}'),
	(211, 'mafia', 2, 'clemenza', 'Clemenza', 6000, '{}', '{}'),
	(212, 'mafia', 3, 'sollozzo', 'sollozzo', 8000, '{}', '{}'),
	(213, 'mafia', 4, 'consigliere', 'Tom Hagen', 10000, '{}', '{}'),
	(214, 'mafia', 5, 'michael', 'Michael Carleone', 11000, '{}', '{}'),
	(215, 'mafia', 6, 'boss', 'Don Vito Carleone ^', 15000, '{}', '{}'),
	(223, 'garbage', 0, 'employee', 'Maemoor Ashghali', 6000, '{"tshirt_1":59,"torso_1":89,"arms":31,"pants_1":36,"glasses_1":19,"decals_2":0,"hair_color_2":0,"helmet_2":0,"hair_color_1":0,"face":2,"glasses_2":0,"torso_2":1,"shoes":35,"hair_1":0,"skin":0,"sex":0,"glasses_1":19,"pants_2":0,"hair_2":0,"decals_1":0,"tshirt_2":0,"helmet_1":5}', '{"tshirt_1":36,"torso_1":0,"arms":68,"pants_1":30,"glasses_1":15,"decals_2":0,"hair_color_2":0,"helmet_2":0,"hair_color_1":0,"face":27,"glasses_2":0,"torso_2":11,"shoes":26,"hair_1":5,"skin":0,"sex":1,"glasses_1":15,"pants_2":2,"hair_2":0,"decals_1":0,"tshirt_2":0,"helmet_1":19}'),
	(224, 'mecano', 0, 'recrue', 'Taze-Kar', 12, '{"tshirt_2":1,"ears_1":8,"glasses_1":15,"torso_2":0,"ears_2":2,"glasses_2":3,"shoes_2":1,"pants_1":75,"shoes_1":51,"bags_1":0,"helmet_2":0,"pants_2":7,"torso_1":71,"tshirt_1":59,"arms":2,"bags_2":0,"helmet_1":0}', '{"tshirt_2":1,"ears_1":8,"glasses_1":15,"torso_2":0,"ears_2":2,"glasses_2":3,"shoes_2":1,"pants_1":75,"shoes_1":51,"bags_1":0,"helmet_2":0,"pants_2":7,"torso_1":71,"tshirt_1":59,"arms":2,"bags_2":0,"helmet_1":0}'),
	(225, 'mecano', 1, 'novice', 'Zir-dast', 24, '{"tshirt_2":1,"ears_1":8,"glasses_1":15,"torso_2":0,"ears_2":2,"glasses_2":3,"shoes_2":1,"pants_1":75,"shoes_1":51,"bags_1":0,"helmet_2":0,"pants_2":7,"torso_1":71,"tshirt_1":59,"arms":2,"bags_2":0,"helmet_1":0}', '{"tshirt_2":1,"ears_1":8,"glasses_1":15,"torso_2":0,"ears_2":2,"glasses_2":3,"shoes_2":1,"pants_1":75,"shoes_1":51,"bags_1":0,"helmet_2":0,"pants_2":7,"torso_1":71,"tshirt_1":59,"arms":2,"bags_2":0,"helmet_1":0}'),
	(226, 'mecano', 2, 'experimente', 'Herfeyi', 36, '{"tshirt_2":1,"ears_1":8,"glasses_1":15,"torso_2":0,"ears_2":2,"glasses_2":3,"shoes_2":1,"pants_1":75,"shoes_1":51,"bags_1":0,"helmet_2":0,"pants_2":7,"torso_1":71,"tshirt_1":59,"arms":2,"bags_2":0,"helmet_1":0}', '{"tshirt_2":1,"ears_1":8,"glasses_1":15,"torso_2":0,"ears_2":2,"glasses_2":3,"shoes_2":1,"pants_1":75,"shoes_1":51,"bags_1":0,"helmet_2":0,"pants_2":7,"torso_1":71,"tshirt_1":59,"arms":2,"bags_2":0,"helmet_1":0}'),
	(227, 'mecano', 3, 'chief', 'Osta-Kar', 48, '{"tshirt_2":1,"ears_1":8,"glasses_1":15,"torso_2":0,"ears_2":2,"glasses_2":3,"shoes_2":1,"pants_1":75,"shoes_1":51,"bags_1":0,"helmet_2":0,"pants_2":7,"torso_1":71,"tshirt_1":59,"arms":2,"bags_2":0,"helmet_1":0}', '{"tshirt_2":1,"ears_1":8,"glasses_1":15,"torso_2":0,"ears_2":2,"glasses_2":3,"shoes_2":1,"pants_1":75,"shoes_1":51,"bags_1":0,"helmet_2":0,"pants_2":7,"torso_1":71,"tshirt_1":59,"arms":2,"bags_2":0,"helmet_1":0}'),
	(228, 'mecano', 4, 'boss', 'Boss ^', 0, '{"tshirt_2":1,"ears_1":8,"glasses_1":15,"torso_2":0,"ears_2":2,"glasses_2":3,"shoes_2":1,"pants_1":75,"shoes_1":51,"bags_1":0,"helmet_2":0,"pants_2":7,"torso_1":71,"tshirt_1":59,"arms":2,"bags_2":0,"helmet_1":0}', '{"tshirt_2":1,"ears_1":8,"glasses_1":15,"torso_2":0,"ears_2":2,"glasses_2":3,"shoes_2":1,"pants_1":75,"shoes_1":51,"bags_1":0,"helmet_2":0,"pants_2":7,"torso_1":71,"tshirt_1":59,"arms":2,"bags_2":0,"helmet_1":0}'),
	(229, 'cukur', 0, 'sakinler', 'sakinler', 4000, '{}', '{}'),
	(230, 'cukur', 1, 'cocuklari', 'çukurun çocukları', 5000, '{}', '{}'),
	(231, 'cukur', 2, 'metin', 'Metin', 11000, '{}', '{}'),
	(232, 'cukur', 3, 'kemal', 'Kemal <--->', 11000, '{}', '{}'),
	(233, 'cukur', 4, 'Koçovalılar', 'Koçovalılar', 6000, '{}', '{}'),
	(234, 'cukur', 5, 'selim', 'selim Koçovalı <--->', 8000, '{}', '{}'),
	(235, 'cukur', 6, 'salih', 'salih Koçovalı <--->', 10000, '{}', '{}'),
	(236, 'cukur', 7, 'cumali', 'Cumali Koçovalı <--->', 11000, '{}', '{}'),
	(237, 'cukur', 8, 'boss', 'Yamaç Koçovalı <--->', 15000, '{}', '{}'),
	(238, 'taxi', 0, 'recrue', 'Recruit', 1500, '{"hair_2":0,"hair_color_2":0,"torso_1":32,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":31,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":0,"age_2":0,"glasses_2":0,"ears_2":0,"arms":27,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(239, 'taxi', 1, 'novice', 'Cabby', 2000, '{"hair_2":0,"hair_color_2":0,"torso_1":32,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":31,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":0,"age_2":0,"glasses_2":0,"ears_2":0,"arms":27,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(240, 'taxi', 2, 'experimente', 'Experienced', 3000, '{"hair_2":0,"hair_color_2":0,"torso_1":26,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":57,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":4,"age_2":0,"glasses_2":0,"ears_2":0,"arms":11,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":0,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(241, 'taxi', 3, 'uber', 'Uber Cabby', 4000, '{"hair_2":0,"hair_color_2":0,"torso_1":26,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":57,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":4,"age_2":0,"glasses_2":0,"ears_2":0,"arms":11,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":0,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(242, 'taxi', 4, 'boss', 'Lead Cabby', 6000, '{"hair_2":0,"hair_color_2":0,"torso_1":29,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":31,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":4,"age_2":0,"glasses_2":0,"ears_2":0,"arms":1,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":0,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":4,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}'),
	(243, 'police', 11, 'scadet', 'cadet', 0, '', ''),
	(244, 'police', 12, 'spo1', 'Sherif |', 0, '', ''),
	(245, 'police', 13, 'spo2', 'Sherif ||', 0, '', ''),
	(246, 'police', 14, 'spo3', 'Sherif |||', 0, '', ''),
	(247, 'police', 15, 'ssenior', 'Senior Sherif', 0, '', ''),
	(248, 'police', 16, 'ssergeant', 'Sergeant Sherif', 0, '', ''),
	(249, 'police', 17, 'scommander', 'Commander Sherif', 0, '', ''),
	(250, 'police', 18, 'schef', 'Deputy Chef Sherif', 0, '', ''),
	(251, 'police', 19, 'sboss', 'Chef Sherif ^', 0, '', '');
/*!40000 ALTER TABLE `job_grades` ENABLE KEYS */;

-- Dumping structure for table roleplay.kicks
CREATE TABLE IF NOT EXISTS `kicks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `steamid` varchar(250) NOT NULL DEFAULT '0',
  `kicked` int(10) NOT NULL,
  `reason` varchar(250) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Dumping data for table roleplay.kicks: ~0 rows (approximately)
/*!40000 ALTER TABLE `kicks` DISABLE KEYS */;
/*!40000 ALTER TABLE `kicks` ENABLE KEYS */;

-- Dumping structure for table roleplay.licenses
CREATE TABLE IF NOT EXISTS `licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- Dumping data for table roleplay.licenses: ~9 rows (approximately)
/*!40000 ALTER TABLE `licenses` DISABLE KEYS */;
REPLACE INTO `licenses` (`id`, `type`, `label`) VALUES
	(2, 'dmv', 'Theoretical test'),
	(3, 'drive', 'Car License'),
	(4, 'drive_bike', 'Motorcycle license'),
	(5, 'drive_truck', 'Truck License'),
	(6, 'aircraft', 'Aircraft License'),
	(7, 'boating', 'Boating License'),
	(8, 'boat', 'Boat License'),
	(12, 'weapon', 'Aslahe'),
	(13, 'weapon', 'Weapons license');
/*!40000 ALTER TABLE `licenses` ENABLE KEYS */;

-- Dumping structure for table roleplay.loadouts
CREATE TABLE IF NOT EXISTS `loadouts` (
  `identifier` varchar(256) NOT NULL COMMENT 'The player''s identifier',
  `loadout_name` varchar(256) NOT NULL COMMENT 'The loadout they currently have',
  `hair` int(11) NOT NULL,
  `haircolour` int(11) NOT NULL,
  `torso` int(11) NOT NULL,
  `torsotexture` int(11) NOT NULL,
  `torsoextra` int(11) NOT NULL,
  `torsoextratexture` int(11) NOT NULL,
  `pants` int(11) NOT NULL,
  `pantscolour` int(11) NOT NULL,
  `shoes` int(11) NOT NULL,
  `shoescolour` int(11) NOT NULL,
  `bodyaccessory` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table roleplay.loadouts: ~0 rows (approximately)
/*!40000 ALTER TABLE `loadouts` DISABLE KEYS */;
/*!40000 ALTER TABLE `loadouts` ENABLE KEYS */;

-- Dumping structure for table roleplay.luck_crafting
CREATE TABLE IF NOT EXISTS `luck_crafting` (
  `identifier` varchar(50) DEFAULT NULL,
  `reputation` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.luck_crafting: ~2 rows (approximately)
/*!40000 ALTER TABLE `luck_crafting` DISABLE KEYS */;
REPLACE INTO `luck_crafting` (`identifier`, `reputation`) VALUES
	('54f6145a9c929927df2822e3dff5193409d8d6c1', 0),
	('93127bb0ed4b5a36ff043d6b8b7134372139f6ed', 0);
/*!40000 ALTER TABLE `luck_crafting` ENABLE KEYS */;

-- Dumping structure for table roleplay.methplants
CREATE TABLE IF NOT EXISTS `methplants` (
  `owner` varchar(50) NOT NULL,
  `plant` longtext NOT NULL,
  `plantid` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.methplants: ~0 rows (approximately)
/*!40000 ALTER TABLE `methplants` DISABLE KEYS */;
/*!40000 ALTER TABLE `methplants` ENABLE KEYS */;

-- Dumping structure for table roleplay.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(64) DEFAULT NULL,
  `last` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.migrations: ~5 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
REPLACE INTO `migrations` (`id`, `module`, `last`) VALUES
	(1, 'skin', 0),
	(2, 'society', 0),
	(3, 'addonaccount', 0),
	(4, 'addoninventory', 0),
	(5, 'datastore', 0);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table roleplay.outfits
CREATE TABLE IF NOT EXISTS `outfits` (
  `owner` varchar(60) NOT NULL,
  `slot` tinyint(4) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `clothes` mediumtext DEFAULT NULL,
  PRIMARY KEY (`owner`,`slot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.outfits: ~0 rows (approximately)
/*!40000 ALTER TABLE `outfits` DISABLE KEYS */;
/*!40000 ALTER TABLE `outfits` ENABLE KEYS */;

-- Dumping structure for table roleplay.owned_bags
CREATE TABLE IF NOT EXISTS `owned_bags` (
  `identifier` varchar(50) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  `z` double DEFAULT NULL,
  `itemcount` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table roleplay.owned_bags: ~13 rows (approximately)
/*!40000 ALTER TABLE `owned_bags` DISABLE KEYS */;
REPLACE INTO `owned_bags` (`identifier`, `id`, `x`, `y`, `z`, `itemcount`) VALUES
	(NULL, 19379, 674.4236450195312, -855.6476440429688, 42.154388427734375, 0),
	(NULL, 89695, 1196.2783203125, -505.0238342285156, 64.14444732666016, 0),
	(NULL, 66376, 1154.119140625, -1605.4903564453125, 33.69261932373047, 0),
	(NULL, 24924, -198.50363159179688, 6565.001953125, 10.09597396850586, 0),
	(NULL, 56168, -909.8800659179688, -2314.99609375, 5.709029197692871, 0),
	(NULL, 99979, -931.315673828125, -2307.572265625, 5.709084510803223, 0),
	(NULL, 78058, -936.8341674804688, -2313.292236328125, 5.709084987640381, 0),
	(NULL, 72553, -941.1665649414062, -2322.1357421875, 5.709084987640381, 0),
	(NULL, 47345, -927.7286376953125, -2318.255126953125, 5.7090864181518555, 0),
	(NULL, 95862, -920.6014404296875, -2311.181396484375, 5.7634053230285645, 0),
	(NULL, 16990, -749.0640258789062, -2365.17333984375, 13.868621826171875, 0),
	(NULL, 22162, 4.048895835876465, 187.48782348632812, 101.06912231445312, 0),
	(NULL, 80137, 79.69970703125, -1038.72314453125, 28.435434341430664, 0);
/*!40000 ALTER TABLE `owned_bags` ENABLE KEYS */;

-- Dumping structure for table roleplay.owned_bag_inventory
CREATE TABLE IF NOT EXISTS `owned_bag_inventory` (
  `id` int(11) DEFAULT NULL,
  `item` varchar(50) DEFAULT NULL,
  `label` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.owned_bag_inventory: ~0 rows (approximately)
/*!40000 ALTER TABLE `owned_bag_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `owned_bag_inventory` ENABLE KEYS */;

-- Dumping structure for table roleplay.owned_properties
CREATE TABLE IF NOT EXISTS `owned_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.owned_properties: ~0 rows (approximately)
/*!40000 ALTER TABLE `owned_properties` DISABLE KEYS */;
REPLACE INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
	(6, 'NorthConkerAvenue2044', 7500, 1, '54f6145a9c929927df2822e3dff5193409d8d6c1');
/*!40000 ALTER TABLE `owned_properties` ENABLE KEYS */;

-- Dumping structure for table roleplay.owned_shops
CREATE TABLE IF NOT EXISTS `owned_shops` (
  `identifier` varchar(250) DEFAULT NULL,
  `ShopNumber` int(11) DEFAULT NULL,
  `money` int(11) DEFAULT 0,
  `ShopValue` int(11) DEFAULT NULL,
  `LastRobbery` int(11) DEFAULT 0,
  `ShopName` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table roleplay.owned_shops: ~20 rows (approximately)
/*!40000 ALTER TABLE `owned_shops` DISABLE KEYS */;
REPLACE INTO `owned_shops` (`identifier`, `ShopNumber`, `money`, `ShopValue`, `LastRobbery`, `ShopName`) VALUES
	('0', 1, 0, 280000, 1612975838, '0'),
	('0', 2, 0, 220000, 1549643682, '0'),
	('0', 3, 0, 235000, 1549643682, '0'),
	('0', 4, 0, 285000, 1549643682, '0'),
	('0', 5, 0, 135000, 1549643682, '0'),
	('0', 6, 0, 235000, 1549643682, '0'),
	('0', 7, 0, 160000, 1549643682, '0'),
	('0', 8, 0, 275000, 1549643682, '0'),
	('0', 9, 0, 265000, 1549643682, '0'),
	('0', 10, 0, 300000, 1549643682, '0'),
	('0', 12, 0, 145000, 1549643682, '0'),
	('0', 13, 0, 145000, 1549643682, '0'),
	('0', 14, 0, 280000, 1549643682, '0'),
	('0', 15, 0, 300000, 1549643682, '0'),
	('0', 16, 0, 435000, 1549643682, '0'),
	('0', 18, 0, 235000, 1549643682, '0'),
	('0', 11, 0, 225000, 1549643682, '0'),
	('0', 19, 0, 150000, 1549643682, '0'),
	('0', 20, 0, 165000, 1549643682, '0'),
	('0', 17, 0, 150000, 1549643682, '0');
/*!40000 ALTER TABLE `owned_shops` ENABLE KEYS */;

-- Dumping structure for table roleplay.owned_vehicles
CREATE TABLE IF NOT EXISTS `owned_vehicles` (
  `vehicle` longtext NOT NULL,
  `owner` varchar(60) NOT NULL,
  `stored` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'State of the vehicle',
  `garage_name` varchar(50) NOT NULL DEFAULT 'Garage_Centre',
  `pound` tinyint(1) NOT NULL DEFAULT 0,
  `vehiclename` varchar(50) DEFAULT NULL,
  `plate` varchar(50) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'car',
  `job` varchar(50) DEFAULT NULL,
  `lasthouse` int(11) DEFAULT 0,
  PRIMARY KEY (`plate`),
  KEY `vehsowned` (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table roleplay.owned_vehicles: ~9 rows (approximately)
/*!40000 ALTER TABLE `owned_vehicles` DISABLE KEYS */;
REPLACE INTO `owned_vehicles` (`vehicle`, `owner`, `stored`, `garage_name`, `pound`, `vehiclename`, `plate`, `type`, `job`, `lasthouse`) VALUES
	('{"model":-682211828,"plate":"EYD 031"}', '54f6145a9c929927df2822e3dff5193409d8d6c1', 0, 'Garage_Centre', 0, NULL, 'EYD 031', 'car', NULL, 0),
	('{"model":-344943009,"plate":"FSP 326"}', '54f6145a9c929927df2822e3dff5193409d8d6c1', 0, 'Garage_Centre', 0, NULL, 'FSP 326', 'car', NULL, 0),
	('{"model":1549126457,"plate":"IDY 955"}', '54f6145a9c929927df2822e3dff5193409d8d6c1', 0, 'Garage_Centre', 0, NULL, 'IDY 955', 'car', NULL, 0),
	('{"xenonColor":255,"wheelColor":156,"modTrunk":-1,"model":1912215274,"modStruts":-1,"modSuspension":-1,"modLivery":1,"modWindows":-1,"modEngineBlock":-1,"modSmokeEnabled":false,"dirtLevel":3.0,"modAirFilter":-1,"wheels":0,"modDashboard":-1,"engineHealth":1000.0,"modSpoilers":-1,"bodyHealth":1000.0,"modArmor":-1,"modAerials":-1,"modArchCover":-1,"modFrontWheels":-1,"modSeats":-1,"tyreSmokeColor":[255,255,255],"extras":{"12":true,"1":true},"fuelLevel":20.3,"windowTint":-1,"modDoorSpeaker":-1,"modTurbo":false,"modSteeringWheel":-1,"modEngine":-1,"modXenon":false,"plateIndex":4,"modSideSkirt":-1,"modGrille":-1,"modFrontBumper":-1,"modFender":-1,"modHood":-1,"modFrame":-1,"modVanityPlate":-1,"modDial":-1,"modAPlate":-1,"neonEnabled":[false,false,false,false],"modBackWheels":-1,"modRearBumper":-1,"tankHealth":1000.0,"modTank":-1,"pearlescentColor":1,"neonColor":[255,0,255],"color2":0,"modTrimB":-1,"plate":"JAT 970","modTransmission":-1,"modOrnaments":-1,"modHorns":-1,"color1":111,"modBrakes":-1,"modSpeakers":-1,"modPlateHolder":-1,"modRightFender":-1,"modShifterLeavers":-1,"modTrimA":-1,"modExhaust":-1,"modRoof":-1,"modHydrolic":-1}', '54f6145a9c929927df2822e3dff5193409d8d6c1', 0, 'Garage_Centre', 0, NULL, 'JAT 970', 'car', 'police', 0),
	('{"modAirFilter":-1,"neonColor":[255,0,255],"bodyHealth":1000.0,"modShifterLeavers":-1,"plate":"JJS 907","dirtLevel":4.0,"modFrame":-1,"modArchCover":-1,"modAerials":-1,"plateIndex":4,"modFrontBumper":-1,"modArmor":-1,"modSeats":-1,"modEngineBlock":-1,"modTrimB":-1,"wheelColor":156,"modLivery":-1,"modFrontWheels":-1,"modSuspension":-1,"modSideSkirt":-1,"color2":0,"modVanityPlate":-1,"modWindows":-1,"modDial":-1,"modBrakes":-1,"modTrimA":-1,"modSteeringWheel":-1,"modTank":-1,"modBackWheels":-1,"modExhaust":-1,"xenonColor":255,"engineHealth":1000.0,"modHood":-1,"tankHealth":1000.0,"pearlescentColor":5,"extras":{"7":true,"10":true,"11":true,"1":true,"2":true},"windowTint":-1,"modFender":-1,"modSpoilers":-1,"modSpeakers":-1,"modRightFender":-1,"modRoof":-1,"modEngine":-1,"modAPlate":-1,"modPlateHolder":-1,"modSmokeEnabled":false,"tyreSmokeColor":[255,255,255],"modDashboard":-1,"modTransmission":-1,"model":-1660661558,"modGrille":-1,"color1":10,"modHorns":-1,"wheels":0,"modXenon":false,"fuelLevel":42.4,"neonEnabled":[false,false,false,false],"modTrunk":-1,"modTurbo":false,"modDoorSpeaker":-1,"modHydrolic":-1,"modOrnaments":-1,"modRearBumper":-1,"modStruts":-1}', '54f6145a9c929927df2822e3dff5193409d8d6c1', 0, 'Garage_Centre', 0, NULL, 'JJS 907', 'helicopter', 'ambulance', 0),
	('{"model":-682211828,"plate":"OOQ 306"}', '54f6145a9c929927df2822e3dff5193409d8d6c1', 0, 'Garage_Centre', 0, NULL, 'OOQ 306', 'car', NULL, 0),
	('{"model":159274291,"plate":"OZA 067"}', '54f6145a9c929927df2822e3dff5193409d8d6c1', 0, 'Garage_venise', 0, NULL, 'OZA 067', 'car', NULL, 0),
	('{"modTank":-1,"modSeats":-1,"modAerials":-1,"fuelLevel":70.3,"modAirFilter":-1,"modHorns":-1,"modSpeakers":-1,"modShifterLeavers":-1,"color2":0,"modRightFender":-1,"modFrontBumper":-1,"modBackWheels":-1,"dirtLevel":7.0,"modDoorSpeaker":-1,"wheels":0,"modArchCover":-1,"modWindows":-1,"plateIndex":4,"modTrunk":-1,"modSpoilers":-1,"modLivery":-1,"modSuspension":-1,"modHood":-1,"modPlateHolder":-1,"modXenon":false,"modVanityPlate":-1,"modFrame":-1,"pearlescentColor":5,"modArmor":-1,"tyreSmokeColor":[255,255,255],"windowTint":-1,"modHydrolic":-1,"modEngine":-1,"wheelColor":156,"neonColor":[255,0,255],"modStruts":-1,"modEngineBlock":-1,"modFender":-1,"plate":"TUH 751","modFrontWheels":-1,"modAPlate":-1,"modRearBumper":-1,"modSteeringWheel":-1,"color1":10,"extras":{"2":true,"1":true,"10":true,"7":true,"11":true},"model":-1660661558,"modSmokeEnabled":false,"modDashboard":-1,"modGrille":-1,"modBrakes":-1,"modOrnaments":-1,"modExhaust":-1,"tankHealth":1000.0,"bodyHealth":1000.0,"modSideSkirt":-1,"modDial":-1,"modTurbo":false,"modTrimA":-1,"modRoof":-1,"xenonColor":255,"modTrimB":-1,"engineHealth":1000.0,"neonEnabled":[false,false,false,false],"modTransmission":-1}', '54f6145a9c929927df2822e3dff5193409d8d6c1', 0, 'Garage_Centre', 0, NULL, 'TUH 751', 'helicopter', 'ambulance', 0),
	('{"model":-1930048799,"plate":"VRV 692"}', '54f6145a9c929927df2822e3dff5193409d8d6c1', 0, 'Garage_mirrorpark', 0, NULL, 'VRV 692', 'car', NULL, 0);
/*!40000 ALTER TABLE `owned_vehicles` ENABLE KEYS */;

-- Dumping structure for table roleplay.phone_app_chat
CREATE TABLE IF NOT EXISTS `phone_app_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- Dumping data for table roleplay.phone_app_chat: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_app_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_app_chat` ENABLE KEYS */;

-- Dumping structure for table roleplay.phone_calls
CREATE TABLE IF NOT EXISTS `phone_calls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(10) NOT NULL COMMENT 'Num tel proprio',
  `num` varchar(10) NOT NULL COMMENT 'Num refÃ©rence du contact',
  `incoming` int(11) NOT NULL COMMENT 'DÃ©fini si on est Ã  l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8;

-- Dumping data for table roleplay.phone_calls: ~4 rows (approximately)
/*!40000 ALTER TABLE `phone_calls` DISABLE KEYS */;
REPLACE INTO `phone_calls` (`id`, `owner`, `num`, `incoming`, `time`, `accepts`) VALUES
	(157, '591-9642', '591-9642', 1, '2021-04-05 08:09:11', 0),
	(158, '591-9642', '591-9642', 0, '2021-04-05 08:09:11', 0),
	(159, '591-9642', 'taxi', 1, '2021-04-06 12:00:58', 0),
	(160, '591-9642', 'taxi', 1, '2021-04-06 12:02:21', 0),
	(161, '591-9642', 'taxi', 1, '2021-04-06 12:27:37', 0),
	(162, '591-9642', 'taxi', 1, '2021-04-08 09:37:44', 0);
/*!40000 ALTER TABLE `phone_calls` ENABLE KEYS */;

-- Dumping structure for table roleplay.phone_ch_reddit
CREATE TABLE IF NOT EXISTS `phone_ch_reddit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `redgkit` varchar(20) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table roleplay.phone_ch_reddit: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_ch_reddit` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_ch_reddit` ENABLE KEYS */;

-- Dumping structure for table roleplay.phone_messages
CREATE TABLE IF NOT EXISTS `phone_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=197 DEFAULT CHARSET=utf8;

-- Dumping data for table roleplay.phone_messages: 32 rows
/*!40000 ALTER TABLE `phone_messages` DISABLE KEYS */;
REPLACE INTO `phone_messages` (`id`, `transmitter`, `receiver`, `message`, `time`, `isRead`, `owner`) VALUES
	(195, 'taxi', '591-9642', 'De #591-9642 : GPS: 2318.38671875, 3722.109375', '2021-04-08 09:38:12', 1, 0),
	(196, 'taxi', '591-9642', 'GPS: 2318.38671875, 3722.109375', '2021-04-08 09:38:12', 1, 1),
	(193, 'taxi', '591-9642', 'De #591-9642 : mishe biaid be inja', '2021-04-08 09:38:03', 1, 0),
	(194, 'taxi', '591-9642', 'mishe biaid be inja', '2021-04-08 09:38:03', 1, 1),
	(191, 'taxi', '591-9642', 'De #591-9642 : salam', '2021-04-08 09:37:54', 1, 0),
	(192, 'taxi', '591-9642', 'salam', '2021-04-08 09:37:54', 1, 1),
	(190, 'taxi', '591-9642', 'GPS: 2318.38671875, 3722.109375', '2021-04-08 09:37:50', 1, 1),
	(189, 'taxi', '591-9642', 'De #591-9642 : GPS: 2318.38671875, 3722.109375', '2021-04-08 09:37:50', 1, 0),
	(187, 'ambulance', '591-9642', 'GPS: 244.40379333496, -1228.2482910156', '2021-04-07 09:51:15', 1, 1),
	(188, 'mecano', '591-9642', 'De #591-9642 : Salam Man be Yek Mechanic Niyaz daram, Toye Garage Mechanici montazeram', '2021-04-07 09:53:25', 0, 0),
	(186, 'ambulance', '591-9642', 'De #591-9642 : GPS: 244.40379333496, -1228.2482910156', '2021-04-07 09:51:15', 1, 0),
	(185, 'ambulance', '591-9642', 'GPS: 244.40379333496, -1228.2482910156', '2021-04-07 09:51:08', 1, 1),
	(183, 'police', '591-9642', 'GPS: 244.40379333496, -1228.2482910156', '2021-04-07 09:50:59', 1, 1),
	(184, 'ambulance', '591-9642', 'De #591-9642 : GPS: 244.40379333496, -1228.2482910156', '2021-04-07 09:51:08', 1, 0),
	(181, 'police', '591-9642', 'De #591-9642 : adad', '2021-04-06 14:26:25', 1, 0),
	(182, 'police', '591-9642', 'adad', '2021-04-06 14:26:25', 1, 1),
	(180, 'taxi', '591-9642', 'GPS: 914.14447021484, -178.24978637695', '2021-04-06 12:27:55', 1, 1),
	(178, 'police', '591-9642', 'De #591-9642 : Lifeinvador -1053.0435791016, -230.30572509766', '2021-04-05 08:21:51', 1, 0),
	(179, 'taxi', '591-9642', 'salam', '2021-04-06 12:27:50', 1, 1),
	(177, 'mecano', '591-9642', 'De #591-9642 : Salam Man be Yek Mechanic Niyaz daram, Toye Garage Mechanici montazeram', '2021-04-05 08:13:17', 1, 0),
	(176, 'mecano', '591-9642', 'De #591-9642 : Salam Man be Yek Mechanic Niyaz daram, Toye Garage Mechanici montazeram', '2021-04-05 08:10:49', 1, 0),
	(175, 'mecano', '591-9642', 'De #591-9642 : Salam Man be Yek Mechanic Niyaz daram, Toye Garage Mechanici montazeram', '2021-04-05 08:10:37', 1, 0),
	(174, 'mecano', '591-9642', 'De #591-9642 : Salam Man be Yek Mechanic Niyaz daram, Toye Garage Mechanici montazeram', '2021-04-05 08:09:48', 1, 0),
	(173, 'mecano', '591-9642', 'De #591-9642 : Salam Man be Yek Mechanic Niyaz daram, Toye Garage Mechanici montazeram', '2021-04-05 08:08:56', 1, 0),
	(172, 'mecano', '591-9642', 'De #591-9642 : Salam Man be Yek Mechanic Niyaz daram, Toye Garage Mechanici montazeram', '2021-04-05 08:08:27', 1, 0),
	(171, 'mecano', '591-9642', 'De #591-9642 : Salam Man be Yek Mechanic Niyaz daram, Toye Garage Mechanici montazeram', '2021-04-05 08:08:21', 1, 0),
	(170, 'mecano', '591-9642', 'De #591-9642 : Salam Man be Yek Mechanic Niyaz daram, Toye Garage Mechanici montazeram', '2021-04-05 08:04:07', 1, 0),
	(169, 'mecano', '591-9642', 'De #591-9642 : Salam Man be Yek Mechanic Niyaz daram, Toye Garage Mechanici montazeram', '2021-04-05 07:54:57', 1, 0),
	(168, 'mecano', '591-9642', 'De #591-9642 : Salam Man be Yek Mechanic Niyaz daram, Toye Garage Mechanici montazeram', '2021-04-05 07:54:04', 1, 0),
	(167, 'mecano', '591-9642', 'De #591-9642 : Salam Man be Yek Mechanic Niyaz daram, Toye Garage Mechanici montazeram', '2021-04-05 07:06:27', 1, 0),
	(165, 'ambulance', '591-9642', 'GPS: 302.31488037109, -587.64904785156', '2021-04-05 06:22:42', 1, 1),
	(166, 'ambulance', '591-9642', 'GPS: 303.67526245117, -587.23248291016', '2021-04-05 06:23:56', 1, 1);
/*!40000 ALTER TABLE `phone_messages` ENABLE KEYS */;

-- Dumping structure for table roleplay.phone_reddit
CREATE TABLE IF NOT EXISTS `phone_reddit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `redgkit` varchar(20) DEFAULT NULL,
  `reditsage` varchar(255) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table roleplay.phone_reddit: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_reddit` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_reddit` ENABLE KEYS */;

-- Dumping structure for table roleplay.phone_shops
CREATE TABLE IF NOT EXISTS `phone_shops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store` varchar(255) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `label` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- Dumping data for table roleplay.phone_shops: ~0 rows (approximately)
/*!40000 ALTER TABLE `phone_shops` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_shops` ENABLE KEYS */;

-- Dumping structure for table roleplay.phone_users_contacts
CREATE TABLE IF NOT EXISTS `phone_users_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Dumping data for table roleplay.phone_users_contacts: 0 rows
/*!40000 ALTER TABLE `phone_users_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_users_contacts` ENABLE KEYS */;

-- Dumping structure for table roleplay.playerhousing
CREATE TABLE IF NOT EXISTS `playerhousing` (
  `id` int(32) NOT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `rented` tinyint(1) DEFAULT NULL,
  `price` int(32) DEFAULT NULL,
  `wardrobe` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.playerhousing: ~0 rows (approximately)
/*!40000 ALTER TABLE `playerhousing` DISABLE KEYS */;
/*!40000 ALTER TABLE `playerhousing` ENABLE KEYS */;

-- Dumping structure for table roleplay.playerstattoos
CREATE TABLE IF NOT EXISTS `playerstattoos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `tattoos` longtext DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Dumping data for table roleplay.playerstattoos: ~0 rows (approximately)
/*!40000 ALTER TABLE `playerstattoos` DISABLE KEYS */;
/*!40000 ALTER TABLE `playerstattoos` ENABLE KEYS */;

-- Dumping structure for table roleplay.player_contacts
CREATE TABLE IF NOT EXISTS `player_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `iban` varchar(50) NOT NULL DEFAULT '0',
  `phone_number` varchar(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `identifier` (`identifier`)
) ENGINE=InnoDB AUTO_INCREMENT=12433 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.player_contacts: ~0 rows (approximately)
/*!40000 ALTER TABLE `player_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_contacts` ENABLE KEYS */;

-- Dumping structure for table roleplay.player_mails
CREATE TABLE IF NOT EXISTS `player_mails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `read` tinyint(4) DEFAULT 0,
  `mailid` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `button` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `identifier` (`identifier`)
) ENGINE=InnoDB AUTO_INCREMENT=67023 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.player_mails: ~0 rows (approximately)
/*!40000 ALTER TABLE `player_mails` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_mails` ENABLE KEYS */;

-- Dumping structure for table roleplay.properties
CREATE TABLE IF NOT EXISTS `properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `exit` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `outside` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT '[]',
  `gateway` varchar(255) DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.properties: ~72 rows (approximately)
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
REPLACE INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(1, 'WhispymoundDrive', '2677 Whispymound Drive', '{"y":564.89,"z":182.959,"x":119.384}', '{"x":117.347,"y":559.506,"z":183.304}', '{"y":557.032,"z":183.301,"x":118.037}', '{"y":567.798,"z":182.131,"x":119.249}', '[]', NULL, 1, 1, 0, '{"x":118.748,"y":566.573,"z":175.697}', 1500000),
	(2, 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{"x":372.796,"y":428.327,"z":144.685}', '{"x":373.548,"y":422.982,"z":144.907}', '{"y":420.075,"z":145.904,"x":372.161}', '{"x":372.454,"y":432.886,"z":143.443}', '[]', NULL, 1, 1, 0, '{"x":377.349,"y":429.422,"z":137.3}', 1500000),
	(3, 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{"y":-379.165,"z":37.961,"x":-936.363}', '{"y":-365.476,"z":113.274,"x":-913.097}', '{"y":-367.637,"z":113.274,"x":-918.022}', '{"y":-382.023,"z":37.961,"x":-943.626}', '[]', NULL, 1, 1, 0, '{"x":-927.554,"y":-377.744,"z":112.674}', 1700000),
	(4, 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{"y":440.8,"z":146.702,"x":346.964}', '{"y":437.456,"z":148.394,"x":341.683}', '{"y":435.626,"z":148.394,"x":339.595}', '{"x":350.535,"y":443.329,"z":145.764}', '[]', NULL, 1, 1, 0, '{"x":337.726,"y":436.985,"z":140.77}', 1500000),
	(5, 'WildOatsDrive', '3655 Wild Oats Drive', '{"y":502.696,"z":136.421,"x":-176.003}', '{"y":497.817,"z":136.653,"x":-174.349}', '{"y":495.069,"z":136.666,"x":-173.331}', '{"y":506.412,"z":135.0664,"x":-177.927}', '[]', NULL, 1, 1, 0, '{"x":-174.725,"y":493.095,"z":129.043}', 1500000),
	(6, 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{"y":596.58,"z":142.641,"x":-686.554}', '{"y":591.988,"z":144.392,"x":-681.728}', '{"y":590.608,"z":144.392,"x":-680.124}', '{"y":599.019,"z":142.059,"x":-689.492}', '[]', NULL, 1, 1, 0, '{"x":-680.46,"y":588.6,"z":136.769}', 1500000),
	(7, 'LowEndApartment', 'Basic apartment', '{"y":-1078.735,"z":28.4031,"x":292.528}', '{"y":-1007.152,"z":-102.002,"x":265.845}', '{"y":-1002.802,"z":-100.008,"x":265.307}', '{"y":-1078.669,"z":28.401,"x":296.738}', '[]', NULL, 1, 1, 0, '{"x":265.916,"y":-999.38,"z":-100.008}', 562500),
	(8, 'MadWayneThunder', '2113 Mad Wayne Thunder', '{"y":454.955,"z":96.462,"x":-1294.433}', '{"x":-1289.917,"y":449.541,"z":96.902}', '{"y":446.322,"z":96.899,"x":-1289.642}', '{"y":455.453,"z":96.517,"x":-1298.851}', '[]', NULL, 1, 1, 0, '{"x":-1287.306,"y":455.901,"z":89.294}', 1500000),
	(9, 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{"x":-853.346,"y":696.678,"z":147.782}', '{"y":690.875,"z":151.86,"x":-859.961}', '{"y":688.361,"z":151.857,"x":-859.395}', '{"y":701.628,"z":147.773,"x":-855.007}', '[]', NULL, 1, 1, 0, '{"x":-858.543,"y":697.514,"z":144.253}', 1500000),
	(10, 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{"y":620.494,"z":141.588,"x":-752.82}', '{"y":618.62,"z":143.153,"x":-759.317}', '{"y":617.629,"z":143.153,"x":-760.789}', '{"y":621.281,"z":141.254,"x":-750.919}', '[]', NULL, 1, 1, 0, '{"x":-762.504,"y":618.992,"z":135.53}', 1500000),
	(11, 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{"y":37.025,"z":42.58,"x":-618.299}', '{"y":58.898,"z":97.2,"x":-603.301}', '{"y":58.941,"z":97.2,"x":-608.741}', '{"y":30.603,"z":42.524,"x":-620.017}', '[]', NULL, 1, 1, 0, '{"x":-622.173,"y":54.585,"z":96.599}', 1700000),
	(12, 'MiltonDrive', 'Milton Drive', '{"x":-775.17,"y":312.01,"z":84.658}', NULL, NULL, '{"x":-775.346,"y":306.776,"z":84.7}', '[]', NULL, 0, 0, 1, NULL, 0),
	(13, 'Modern1Apartment', 'Modern Apartment 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_01_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.661,"y":327.672,"z":210.396}', 1300000),
	(14, 'Modern2Apartment', 'Modern Apartment 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_01_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.735,"y":326.757,"z":186.313}', 1300000),
	(15, 'Modern3Apartment', 'Modern Apartment 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_01_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.386,"y":330.782,"z":195.08}', 1300000),
	(16, 'Mody1Apartment', 'Mody Apartment 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_02_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.615,"y":327.878,"z":210.396}', 1300000),
	(17, 'Mody2Apartment', 'Mody Apartment 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_02_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.297,"y":327.092,"z":186.313}', 1300000),
	(18, 'Mody3Apartment', 'Mody Apartment 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_02_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.303,"y":330.932,"z":195.085}', 1300000),
	(19, 'Vibrant1Apartment', 'Vibrant Apartment 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_03_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.885,"y":327.641,"z":210.396}', 1300000),
	(20, 'Vibrant2Apartment', 'Vibrant Apartment 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_03_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.607,"y":327.344,"z":186.313}', 1300000),
	(21, 'Vibrant3Apartment', 'Vibrant Apartment 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_03_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.525,"y":330.851,"z":195.085}', 1300000),
	(22, 'Sharp1Apartment', 'Sharp Apartment 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_04_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.527,"y":327.89,"z":210.396}', 1300000),
	(23, 'Sharp2Apartment', 'Sharp Apartment 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_04_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.642,"y":326.497,"z":186.313}', 1300000),
	(24, 'Sharp3Apartment', 'Sharp Apartment 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_04_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.503,"y":331.318,"z":195.085}', 1300000),
	(25, 'Monochrome1Apartment', 'Monochrome Apartment 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_05_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.289,"y":328.086,"z":210.396}', 1300000),
	(26, 'Monochrome2Apartment', 'Monochrome Apartment 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_05_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.692,"y":326.762,"z":186.313}', 1300000),
	(27, 'Monochrome3Apartment', 'Monochrome Apartment 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_05_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.094,"y":330.976,"z":195.085}', 1300000),
	(28, 'Seductive1Apartment', 'Seductive Apartment 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_06_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.263,"y":328.104,"z":210.396}', 1300000),
	(29, 'Seductive2Apartment', 'Seductive Apartment 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_06_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.655,"y":326.611,"z":186.313}', 1300000),
	(30, 'Seductive3Apartment', 'Seductive Apartment 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_06_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.3,"y":331.414,"z":195.085}', 1300000),
	(31, 'Regal1Apartment', 'Regal Apartment 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_07_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.956,"y":328.257,"z":210.396}', 1300000),
	(32, 'Regal2Apartment', 'Regal Apartment 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_07_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.545,"y":326.659,"z":186.313}', 1300000),
	(33, 'Regal3Apartment', 'Regal Apartment 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_07_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.087,"y":331.429,"z":195.123}', 1300000),
	(34, 'Aqua1Apartment', 'Aqua Apartment 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_08_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.187,"y":328.47,"z":210.396}', 1300000),
	(35, 'Aqua2Apartment', 'Aqua Apartment 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_08_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.658,"y":326.563,"z":186.313}', 1300000),
	(36, 'Aqua3Apartment', 'Aqua Apartment 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_08_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.287,"y":331.084,"z":195.086}', 1300000),
	(37, 'IntegrityWay', '4 Integrity Way', '{"x":-47.804,"y":-585.867,"z":36.956}', NULL, NULL, '{"x":-54.178,"y":-583.762,"z":35.798}', '[]', NULL, 0, 0, 1, NULL, 0),
	(38, 'IntegrityWay28', '4 Integrity Way - Apt 28', NULL, '{"x":-31.409,"y":-594.927,"z":79.03}', '{"x":-26.098,"y":-596.909,"z":79.03}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{"x":-11.923,"y":-597.083,"z":78.43}', 1700000),
	(39, 'IntegrityWay30', '4 Integrity Way - Apt 30', NULL, '{"x":-17.702,"y":-588.524,"z":89.114}', '{"x":-16.21,"y":-582.569,"z":89.114}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{"x":-26.327,"y":-588.384,"z":89.123}', 1700000),
	(40, 'DellPerroHeights', 'Dell Perro Heights', '{"x":-1447.06,"y":-538.28,"z":33.74}', NULL, NULL, '{"x":-1440.022,"y":-548.696,"z":33.74}', '[]', NULL, 0, 0, 1, NULL, 0),
	(41, 'DellPerroHeightst4', 'Dell Perro Heights - Apt 28', NULL, '{"x":-1452.125,"y":-540.591,"z":73.044}', '{"x":-1455.435,"y":-535.79,"z":73.044}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{"x":-1467.058,"y":-527.571,"z":72.443}', 1700000),
	(42, 'DellPerroHeightst7', 'Dell Perro Heights - Apt 30', NULL, '{"x":-1451.562,"y":-523.535,"z":55.928}', '{"x":-1456.02,"y":-519.209,"z":55.929}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{"x":-1457.026,"y":-530.219,"z":55.937}', 1700000),
	(43, 'MazeBankBuilding', 'Maze Bank Building', '{"x":-79.18,"y":-795.92,"z":43.35}', NULL, NULL, '{"x":-72.50,"y":-786.92,"z":43.40}', '[]', NULL, 0, 0, 1, NULL, 0),
	(44, 'OldSpiceWarm', 'Old Spice Warm', NULL, '{"x":-75.69,"y":-827.08,"z":242.43}', '{"x":-75.51,"y":-823.90,"z":242.43}', NULL, '["ex_dt1_11_office_01a"]', 'MazeBankBuilding', 0, 1, 0, '{"x":-71.81,"y":-814.34,"z":242.39}', 5000000),
	(45, 'OldSpiceClassical', 'Old Spice Classical', NULL, '{"x":-75.69,"y":-827.08,"z":242.43}', '{"x":-75.51,"y":-823.90,"z":242.43}', NULL, '["ex_dt1_11_office_01b"]', 'MazeBankBuilding', 0, 1, 0, '{"x":-71.81,"y":-814.34,"z":242.39}', 5000000),
	(46, 'OldSpiceVintage', 'Old Spice Vintage', NULL, '{"x":-75.69,"y":-827.08,"z":242.43}', '{"x":-75.51,"y":-823.90,"z":242.43}', NULL, '["ex_dt1_11_office_01c"]', 'MazeBankBuilding', 0, 1, 0, '{"x":-71.81,"y":-814.34,"z":242.39}', 5000000),
	(47, 'ExecutiveRich', 'Executive Rich', NULL, '{"x":-75.69,"y":-827.08,"z":242.43}', '{"x":-75.51,"y":-823.90,"z":242.43}', NULL, '["ex_dt1_11_office_02b"]', 'MazeBankBuilding', 0, 1, 0, '{"x":-71.81,"y":-814.34,"z":242.39}', 5000000),
	(48, 'ExecutiveCool', 'Executive Cool', NULL, '{"x":-75.69,"y":-827.08,"z":242.43}', '{"x":-75.51,"y":-823.90,"z":242.43}', NULL, '["ex_dt1_11_office_02c"]', 'MazeBankBuilding', 0, 1, 0, '{"x":-71.81,"y":-814.34,"z":242.39}', 5000000),
	(49, 'ExecutiveContrast', 'Executive Contrast', NULL, '{"x":-75.69,"y":-827.08,"z":242.43}', '{"x":-75.51,"y":-823.90,"z":242.43}', NULL, '["ex_dt1_11_office_02a"]', 'MazeBankBuilding', 0, 1, 0, '{"x":-71.81,"y":-814.34,"z":242.39}', 5000000),
	(50, 'PowerBrokerIce', 'Power Broker Ice', NULL, '{"x":-75.69,"y":-827.08,"z":242.43}', '{"x":-75.51,"y":-823.90,"z":242.43}', NULL, '["ex_dt1_11_office_03a"]', 'MazeBankBuilding', 0, 1, 0, '{"x":-71.81,"y":-814.34,"z":242.39}', 5000000),
	(51, 'PowerBrokerConservative', 'Power Broker Conservative', NULL, '{"x":-75.69,"y":-827.08,"z":242.43}', '{"x":-75.51,"y":-823.90,"z":242.43}', NULL, '["ex_dt1_11_office_03b"]', 'MazeBankBuilding', 0, 1, 0, '{"x":-71.81,"y":-814.34,"z":242.39}', 5000000),
	(52, 'PowerBrokerPolished', 'Power Broker Polished', NULL, '{"x":-75.69,"y":-827.08,"z":242.43}', '{"x":-75.51,"y":-823.90,"z":242.43}', NULL, '["ex_dt1_11_office_03c"]', 'MazeBankBuilding', 0, 1, 0, '{"x":-71.81,"y":-814.34,"z":242.39}', 5000000),
	(53, 'LomBank', 'Lom Bank', '{"x":-1581.36,"y":-558.23,"z":34.07}', NULL, NULL, '{"x":-1583.60,"y":-555.12,"z":34.07}', '[]', NULL, 0, 0, 1, NULL, 0),
	(54, 'LBOldSpiceWarm', 'LB Old Spice Warm', NULL, '{"x":-1579.53,"y":-564.89,"z":107.62}', '{"x":-1576.42,"y":-567.57,"z":107.62}', NULL, '["ex_sm_13_office_01a"]', 'LomBank', 0, 1, 0, '{"x":-1571.26,"y":-575.76,"z":107.52}', 3500000),
	(55, 'LBOldSpiceClassical', 'LB Old Spice Classical', NULL, '{"x":-1579.53,"y":-564.89,"z":107.62}', '{"x":-1576.42,"y":-567.57,"z":107.62}', NULL, '["ex_sm_13_office_01b"]', 'LomBank', 0, 1, 0, '{"x":-1571.26,"y":-575.76,"z":107.52}', 3500000),
	(56, 'LBOldSpiceVintage', 'LB Old Spice Vintage', NULL, '{"x":-1579.53,"y":-564.89,"z":107.62}', '{"x":-1576.42,"y":-567.57,"z":107.62}', NULL, '["ex_sm_13_office_01c"]', 'LomBank', 0, 1, 0, '{"x":-1571.26,"y":-575.76,"z":107.52}', 3500000),
	(57, 'LBExecutiveRich', 'LB Executive Rich', NULL, '{"x":-1579.53,"y":-564.89,"z":107.62}', '{"x":-1576.42,"y":-567.57,"z":107.62}', NULL, '["ex_sm_13_office_02b"]', 'LomBank', 0, 1, 0, '{"x":-1571.26,"y":-575.76,"z":107.52}', 3500000),
	(58, 'LBExecutiveCool', 'LB Executive Cool', NULL, '{"x":-1579.53,"y":-564.89,"z":107.62}', '{"x":-1576.42,"y":-567.57,"z":107.62}', NULL, '["ex_sm_13_office_02c"]', 'LomBank', 0, 1, 0, '{"x":-1571.26,"y":-575.76,"z":107.52}', 3500000),
	(59, 'LBExecutiveContrast', 'LB Executive Contrast', NULL, '{"x":-1579.53,"y":-564.89,"z":107.62}', '{"x":-1576.42,"y":-567.57,"z":107.62}', NULL, '["ex_sm_13_office_02a"]', 'LomBank', 0, 1, 0, '{"x":-1571.26,"y":-575.76,"z":107.52}', 3500000),
	(60, 'LBPowerBrokerIce', 'LB Power Broker Ice', NULL, '{"x":-1579.53,"y":-564.89,"z":107.62}', '{"x":-1576.42,"y":-567.57,"z":107.62}', NULL, '["ex_sm_13_office_03a"]', 'LomBank', 0, 1, 0, '{"x":-1571.26,"y":-575.76,"z":107.52}', 3500000),
	(61, 'LBPowerBrokerConservative', 'LB Power Broker Conservative', NULL, '{"x":-1579.53,"y":-564.89,"z":107.62}', '{"x":-1576.42,"y":-567.57,"z":107.62}', NULL, '["ex_sm_13_office_03b"]', 'LomBank', 0, 1, 0, '{"x":-1571.26,"y":-575.76,"z":107.52}', 3500000),
	(62, 'LBPowerBrokerPolished', 'LB Power Broker Polished', NULL, '{"x":-1579.53,"y":-564.89,"z":107.62}', '{"x":-1576.42,"y":-567.57,"z":107.62}', NULL, '["ex_sm_13_office_03c"]', 'LomBank', 0, 1, 0, '{"x":-1571.26,"y":-575.76,"z":107.52}', 3500000),
	(63, 'MazeBankWest', 'Maze Bank West', '{"x":-1379.58,"y":-499.63,"z":32.22}', NULL, NULL, '{"x":-1378.95,"y":-502.82,"z":32.22}', '[]', NULL, 0, 0, 1, NULL, 0),
	(64, 'MBWOldSpiceWarm', 'MBW Old Spice Warm', NULL, '{"x":-1392.74,"y":-480.18,"z":71.14}', '{"x":-1389.43,"y":-479.01,"z":71.14}', NULL, '["ex_sm_15_office_01a"]', 'MazeBankWest', 0, 1, 0, '{"x":-1390.76,"y":-479.22,"z":72.04}', 2700000),
	(65, 'MBWOldSpiceClassical', 'MBW Old Spice Classical', NULL, '{"x":-1392.74,"y":-480.18,"z":71.14}', '{"x":-1389.43,"y":-479.01,"z":71.14}', NULL, '["ex_sm_15_office_01b"]', 'MazeBankWest', 0, 1, 0, '{"x":-1390.76,"y":-479.22,"z":72.04}', 2700000),
	(66, 'MBWOldSpiceVintage', 'MBW Old Spice Vintage', NULL, '{"x":-1392.74,"y":-480.18,"z":71.14}', '{"x":-1389.43,"y":-479.01,"z":71.14}', NULL, '["ex_sm_15_office_01c"]', 'MazeBankWest', 0, 1, 0, '{"x":-1390.76,"y":-479.22,"z":72.04}', 2700000),
	(67, 'MBWExecutiveRich', 'MBW Executive Rich', NULL, '{"x":-1392.74,"y":-480.18,"z":71.14}', '{"x":-1389.43,"y":-479.01,"z":71.14}', NULL, '["ex_sm_15_office_02b"]', 'MazeBankWest', 0, 1, 0, '{"x":-1390.76,"y":-479.22,"z":72.04}', 2700000),
	(68, 'MBWExecutiveCool', 'MBW Executive Cool', NULL, '{"x":-1392.74,"y":-480.18,"z":71.14}', '{"x":-1389.43,"y":-479.01,"z":71.14}', NULL, '["ex_sm_15_office_02c"]', 'MazeBankWest', 0, 1, 0, '{"x":-1390.76,"y":-479.22,"z":72.04}', 2700000),
	(69, 'MBWExecutive Contrast', 'MBW Executive Contrast', NULL, '{"x":-1392.74,"y":-480.18,"z":71.14}', '{"x":-1389.43,"y":-479.01,"z":71.14}', NULL, '["ex_sm_15_office_02a"]', 'MazeBankWest', 0, 1, 0, '{"x":-1390.76,"y":-479.22,"z":72.04}', 2700000),
	(70, 'MBWPowerBrokerIce', 'MBW Power Broker Ice', NULL, '{"x":-1392.74,"y":-480.18,"z":71.14}', '{"x":-1389.43,"y":-479.01,"z":71.14}', NULL, '["ex_sm_15_office_03a"]', 'MazeBankWest', 0, 1, 0, '{"x":-1390.76,"y":-479.22,"z":72.04}', 2700000),
	(71, 'MBWPowerBrokerConvservative', 'MBW Power Broker Convservative', NULL, '{"x":-1392.74,"y":-480.18,"z":71.14}', '{"x":-1389.43,"y":-479.01,"z":71.14}', NULL, '["ex_sm_15_office_03b"]', 'MazeBankWest', 0, 1, 0, '{"x":-1390.76,"y":-479.22,"z":72.04}', 2700000),
	(72, 'MBWPowerBrokerPolished', 'MBW Power Broker Polished', NULL, '{"x":-1392.74,"y":-480.18,"z":71.14}', '{"x":-1389.43,"y":-479.01,"z":71.14}', NULL, '["ex_sm_15_office_03c"]', 'MazeBankWest', 0, 1, 0, '{"x":-1390.76,"y":-479.22,"z":72.04}', 2700000);
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;

-- Dumping structure for table roleplay.qalle_brottsregister
CREATE TABLE IF NOT EXISTS `qalle_brottsregister` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dateofcrime` varchar(255) NOT NULL,
  `crime` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table roleplay.qalle_brottsregister: ~0 rows (approximately)
/*!40000 ALTER TABLE `qalle_brottsregister` DISABLE KEYS */;
/*!40000 ALTER TABLE `qalle_brottsregister` ENABLE KEYS */;

-- Dumping structure for table roleplay.rally_times
CREATE TABLE IF NOT EXISTS `rally_times` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `track` int(10) NOT NULL,
  `driver` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `laptime` bigint(20) DEFAULT 99999,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- Dumping data for table roleplay.rally_times: ~0 rows (approximately)
/*!40000 ALTER TABLE `rally_times` DISABLE KEYS */;
/*!40000 ALTER TABLE `rally_times` ENABLE KEYS */;

-- Dumping structure for table roleplay.received_bans
CREATE TABLE IF NOT EXISTS `received_bans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reason` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `byadmin` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ban_expires` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `banned_on` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `userid` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `banned_by` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- Dumping data for table roleplay.received_bans: ~0 rows (approximately)
/*!40000 ALTER TABLE `received_bans` DISABLE KEYS */;
/*!40000 ALTER TABLE `received_bans` ENABLE KEYS */;

-- Dumping structure for table roleplay.rented_vehicles
CREATE TABLE IF NOT EXISTS `rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.rented_vehicles: ~0 rows (approximately)
/*!40000 ALTER TABLE `rented_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `rented_vehicles` ENABLE KEYS */;

-- Dumping structure for table roleplay.server_actions
CREATE TABLE IF NOT EXISTS `server_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `action_do` varchar(255) DEFAULT NULL,
  `action_ammount` varchar(255) DEFAULT NULL,
  `byadmin` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table roleplay.server_actions: ~0 rows (approximately)
/*!40000 ALTER TABLE `server_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `server_actions` ENABLE KEYS */;

-- Dumping structure for table roleplay.sg_market_place
CREATE TABLE IF NOT EXISTS `sg_market_place` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner` varchar(250) NOT NULL DEFAULT '0',
  `sell_pice` int(10) NOT NULL,
  `item` varchar(250) NOT NULL DEFAULT '0',
  `item_type` varchar(250) NOT NULL DEFAULT '0',
  `time_posted` varchar(250) NOT NULL DEFAULT '0',
  `time_remaining` varchar(250) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Dumping data for table roleplay.sg_market_place: ~0 rows (approximately)
/*!40000 ALTER TABLE `sg_market_place` DISABLE KEYS */;
/*!40000 ALTER TABLE `sg_market_place` ENABLE KEYS */;

-- Dumping structure for table roleplay.shipments
CREATE TABLE IF NOT EXISTS `shipments` (
  `id` int(11) DEFAULT NULL,
  `identifier` varchar(50) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `item` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `count` varchar(50) DEFAULT NULL,
  `time` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table roleplay.shipments: ~0 rows (approximately)
/*!40000 ALTER TABLE `shipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipments` ENABLE KEYS */;

-- Dumping structure for table roleplay.shops
CREATE TABLE IF NOT EXISTS `shops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.shops: ~121 rows (approximately)
/*!40000 ALTER TABLE `shops` DISABLE KEYS */;
REPLACE INTO `shops` (`id`, `store`, `item`, `price`) VALUES
	(1, 'TwentyFourSeven', 'bread', 30),
	(2, 'TwentyFourSeven', 'water', 15),
	(3, 'RobsLiquor', 'bread', 30),
	(4, 'RobsLiquor', 'water', 15),
	(5, 'LTDgasoline', 'bread', 30),
	(6, 'LTDgasoline', 'water', 15),
	(7, 'TwentyFourSeven', 'chocolate', 10),
	(8, 'RobsLiquor', 'chocolate', 10),
	(9, 'LTDgasoline', 'chocolate', 10),
	(10, 'TwentyFourSeven', 'sandwich', 10),
	(11, 'RobsLiquor', 'sandwich', 10),
	(12, 'LTDgasoline', 'sandwich', 10),
	(13, 'TwentyFourSeven', 'hamburger', 15),
	(14, 'RobsLiquor', 'hamburger', 15),
	(15, 'LTDgasoline', 'hamburger', 15),
	(16, 'TwentyFourSeven', 'cupcake', 10),
	(17, 'RobsLiquor', 'cupcake', 10),
	(18, 'LTDgasoline', 'cupcake', 10),
	(19, 'TwentyFourSeven', 'chips', 15),
	(20, 'RobsLiquor', 'chips', 15),
	(21, 'LTDgasoline', 'chips', 15),
	(22, 'TwentyFourSeven', 'cocacola', 15),
	(23, 'RobsLiquor', 'cocacola', 15),
	(24, 'LTDgasoline', 'cocacola', 15),
	(25, 'TwentyFourSeven', 'icetea', 10),
	(26, 'RobsLiquor', 'icetea', 10),
	(27, 'LTDgasoline', 'icetea', 10),
	(28, 'TwentyFourSeven', 'coffe', 10),
	(29, 'RobsLiquor', 'coffe', 10),
	(30, 'LTDgasoline', 'coffe', 10),
	(31, 'TwentyFourSeven', 'milk', 15),
	(32, 'RobsLiquor', 'milk', 15),
	(33, 'LTDgasoline', 'milk', 15),
	(34, 'RobsLiquor', 'cigarett', 15),
	(35, 'RobsLiquor', 'lighter', 10),
	(36, 'LTDgasoline', 'cigarett', 15),
	(37, 'LTDgasoline', 'lighter', 10),
	(38, 'TwentyFourSeven', 'cigarett', 15),
	(39, 'TwentyFourSeven', 'lighter', 10),
	(46, 'Bar', 'beer', 30),
	(47, 'Bar', 'wine', 25),
	(48, 'Bar', 'vodka', 60),
	(49, 'Bar', 'tequila', 40),
	(50, 'Bar', 'whisky', 50),
	(51, 'Bar', 'cigarett', 30),
	(52, 'Bar', 'lighter', 25),
	(53, 'Disco', 'beer', 30),
	(54, 'Disco', 'wine', 25),
	(55, 'Disco', 'vodka', 60),
	(56, 'Disco', 'tequila', 40),
	(57, 'Disco', 'whisky', 50),
	(60, 'Disco', 'champagne', 150),
	(61, 'Disco', 'cigarett', 30),
	(62, 'Disco', 'lighter', 25),
	(63, 'TwentyFourSeven', 'beer', 30),
	(64, 'RobsLiquor', 'beer', 30),
	(65, 'LTDgasoline', 'beer', 30),
	(66, 'Bar', 'beer', 30),
	(67, 'Disco', 'beer', 30),
	(68, 'Restaurant', 'beer', 30),
	(69, 'Restaurant', 'hamburger', 30),
	(70, 'Restaurant', 'meatfood', 30),
	(71, 'RobsLiquor', 'tyrekit', 30),
	(72, 'Restaurant', 'hotdog', 30),
	(74, 'RobsLiquor', 'repairkit', 100),
	(75, 'Restaurant', 'cocacola', 10),
	(76, 'Clinic', 'secure_card', 250),
	(77, 'Clinic', 'id_card_f', 100),
	(78, 'bar', 'donut', 30),
	(79, 'Restaurant', 'donut', 30),
	(80, 'Disco', 'donut', 30),
	(81, 'TwentyFourSeven', 'donut', 30),
	(82, 'LTDgasoline', 'donut', 30),
	(83, 'RobsLiquor', 'donut', 30),
	(85, 'LTDgasoline', 'tyrekit', 0),
	(86, 'TwentyFourSeven', 'tyrekit', 0),
	(87, 'LTDgasoline', 'repairkit', 0),
	(88, 'TwentyFourSeven', 'repairkit', 0),
	(89, 'RobsLiquor', 'sprunk', 10),
	(90, 'LTDgasoline', 'sprunk', 10),
	(91, 'TwentyFourSeven', 'sprunk', 10),
	(92, 'Bar', 'sprunk', 10),
	(93, 'Restaurant', 'sprunk', 10),
	(98, 'Sundry', 'repairkit', 100),
	(99, 'Sundry', 'tyrekit', 100),
	(100, 'Sundry', 'fixtool', 100),
	(112, 'Sundry', 'oxygenmask', 250),
	(113, 'Sundry', 'plongee2', 350),
	(114, 'Sundry', 'binoculars', 1000),
	(117, 'Sundry', 'net_cracker', 10),
	(118, 'Sundry', 'thermal_charge', 10),
	(119, 'Sundry', 'umbrella', 0),
	(120, 'TwentyFourSeven', 'fishbait', 0),
	(121, 'RobsLiquor', 'fishbait', 0),
	(123, 'LTDgasoline', 'fishbait', 0),
	(124, 'Sundry', 'fishbait', 0),
	(125, 'Sundry', 'turtlebait', 0),
	(126, 'Sundry', 'fishingrod', 0),
	(127, 'TwentyFourSeven', 'turtlebait', 0),
	(128, 'RobsLiquor', 'turtlebait', 0),
	(129, 'LTDgasoline', 'turtlebait', 0),
	(130, 'TwentyFourSeven', 'fishingrod', 0),
	(131, 'RobsLiquor', 'fishingrod', 0),
	(132, 'LTDgasoline', 'fishingrod', 0),
	(133, 'Restaurant', 'coffe', 0),
	(134, 'Restaurant', 'icetea', 0),
	(135, 'TwentyFourSeven', 'fixtool', 0),
	(136, 'LTDgasoline', 'fixtool', 0),
	(137, 'RobsLiquor', 'fixtool', 0),
	(138, 'Sundry', 'clip', 2500),
	(139, 'Armory', 'clip', 10),
	(141, 'Sundry', 'usbstick', 20),
	(142, 'RobsLiquor', 'bag', 10),
	(145, 'TwentyFourSeven', 'bag', 10),
	(146, 'LTDgasoline', 'bag', 10),
	(147, 'Sundry', 'bag', 10),
	(148, 'Armory', 'bulletproof', 0);
/*!40000 ALTER TABLE `shops` ENABLE KEYS */;

-- Dumping structure for table roleplay.sim
CREATE TABLE IF NOT EXISTS `sim` (
  `identifier` varchar(50) NOT NULL,
  `phone_number` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table roleplay.sim: 0 rows
/*!40000 ALTER TABLE `sim` DISABLE KEYS */;
/*!40000 ALTER TABLE `sim` ENABLE KEYS */;

-- Dumping structure for table roleplay.skill
CREATE TABLE IF NOT EXISTS `skill` (
  `identifier` varchar(255) NOT NULL,
  `gym` varchar(255) NOT NULL,
  `gymstatus` varchar(255) NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table roleplay.skill: ~0 rows (approximately)
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;

-- Dumping structure for table roleplay.society_moneywash
CREATE TABLE IF NOT EXISTS `society_moneywash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `society` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- Dumping data for table roleplay.society_moneywash: ~0 rows (approximately)
/*!40000 ALTER TABLE `society_moneywash` DISABLE KEYS */;
/*!40000 ALTER TABLE `society_moneywash` ENABLE KEYS */;

-- Dumping structure for table roleplay.staff_mode
CREATE TABLE IF NOT EXISTS `staff_mode` (
  `staff` varchar(50) NOT NULL,
  `mode` varchar(50) NOT NULL,
  `hour` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table roleplay.staff_mode: ~0 rows (approximately)
/*!40000 ALTER TABLE `staff_mode` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff_mode` ENABLE KEYS */;

-- Dumping structure for table roleplay.trunk_inventory
CREATE TABLE IF NOT EXISTS `trunk_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(8) NOT NULL,
  `data` text NOT NULL,
  `owned` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plate` (`plate`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.trunk_inventory: ~5 rows (approximately)
/*!40000 ALTER TABLE `trunk_inventory` DISABLE KEYS */;
REPLACE INTO `trunk_inventory` (`id`, `plate`, `data`, `owned`) VALUES
	(39, 'OZA 067 ', '{"coffre":[{"name":"mowz","count":4}]}', 1),
	(47, 'EYD 031 ', '{}', 1),
	(49, 'IDY 955 ', '{}', 1),
	(50, 'JAT 970 ', '{"coffre":[{"name":"stone","count":1}]}', 1),
	(51, 'FSP 326 ', '{}', 1);
/*!40000 ALTER TABLE `trunk_inventory` ENABLE KEYS */;

-- Dumping structure for table roleplay.twitter_accounts
CREATE TABLE IF NOT EXISTS `twitter_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table roleplay.twitter_accounts: ~0 rows (approximately)
/*!40000 ALTER TABLE `twitter_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_accounts` ENABLE KEYS */;

-- Dumping structure for table roleplay.twitter_likes
CREATE TABLE IF NOT EXISTS `twitter_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_twitter_likes_twitter_accounts` (`authorId`),
  KEY `FK_twitter_likes_twitter_tweets` (`tweetId`),
  CONSTRAINT `FK_twitter_likes_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`),
  CONSTRAINT `FK_twitter_likes_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `twitter_tweets` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table roleplay.twitter_likes: ~0 rows (approximately)
/*!40000 ALTER TABLE `twitter_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_likes` ENABLE KEYS */;

-- Dumping structure for table roleplay.twitter_tweets
CREATE TABLE IF NOT EXISTS `twitter_tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `FK_twitter_tweets_twitter_accounts` (`authorId`),
  CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table roleplay.twitter_tweets: ~0 rows (approximately)
/*!40000 ALTER TABLE `twitter_tweets` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_tweets` ENABLE KEYS */;

-- Dumping structure for table roleplay.users
CREATE TABLE IF NOT EXISTS `users` (
  `identifier` varchar(40) NOT NULL,
  `accounts` longtext DEFAULT NULL,
  `group` varchar(50) DEFAULT 'user',
  `inventory` longtext DEFAULT NULL,
  `job` varchar(20) DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `loadout` longtext DEFAULT NULL,
  `position` varchar(53) DEFAULT '{"x":-269.4,"y":-955.3,"z":31.2,"heading":205.8}',
  `skin` longtext DEFAULT NULL,
  `status` longtext DEFAULT NULL,
  `jail` int(11) NOT NULL DEFAULT 0,
  `dob` varchar(10) DEFAULT NULL,
  `is_male` int(11) DEFAULT 1,
  `accessories` mediumtext DEFAULT NULL,
  `DmvTest` varchar(50) NOT NULL DEFAULT 'Required',
  `jail_time` int(11) NOT NULL DEFAULT 0,
  `tattoos` longtext DEFAULT NULL,
  `profilepicture` longtext DEFAULT NULL,
  `background` longtext DEFAULT NULL,
  `iban` longtext DEFAULT NULL,
  `phone_number` varchar(10) DEFAULT NULL,
  `is_dead` tinyint(1) DEFAULT 0,
  `vip` tinyint(1) DEFAULT 0,
  `firstname` varchar(16) DEFAULT NULL,
  `lastname` varchar(16) DEFAULT NULL,
  `dateofbirth` varchar(10) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `timePlay` int(11) DEFAULT 0,
  `last_property` varchar(255) DEFAULT NULL,
  `house` longtext NOT NULL DEFAULT '{"owns":false,"furniture":[],"houseId":0}',
  `bought_furniture` longtext NOT NULL DEFAULT '{}',
  `last_house` int(11) DEFAULT 0,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`identifier`, `accounts`, `group`, `inventory`, `job`, `job_grade`, `loadout`, `position`, `skin`, `status`, `jail`, `dob`, `is_male`, `accessories`, `DmvTest`, `jail_time`, `tattoos`, `profilepicture`, `background`, `iban`, `phone_number`, `is_dead`, `vip`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `timePlay`, `last_property`, `house`, `bought_furniture`, `last_house`) VALUES
	('54f6145a9c929927df2822e3dff5193409d8d6c1', '{"black_money":0,"bank":35187948760530,"money":1389084}', 'user', '{"thermal_charge":8,"drone_flyer_7":1,"pickaxe":3,"laptop_h":1,"breathalyzer":1,"drugtest":10,"id_card_f":2,"secure_card":2,"cocaine":5,"stone":119,"crack":2,"medikit":1,"ephedra":2,"sprezyna_sniper":1,"bandage":1,"cannabis":1}', 'unemployed', 0, '{"WEAPON_CARBINERIFLE":{"ammo":200},"WEAPON_ADVANCEDRIFLE":{"ammo":200},"WEAPON_DBSHOTGUN":{"ammo":188},"WEAPON_BULLPUPRIFLE":{"ammo":200},"WEAPON_PISTOL":{"ammo":189},"WEAPON_SPECIALCARBINE":{"ammo":200},"WEAPON_ASSAULTRIFLE":{"ammo":200}}', '{"x":1196.1,"y":-481.4,"z":65.9,"heading":171.7}', '{"chest_1":255,"bproof_2":0,"chin_4":0,"nose_2":0,"glasses_1":-1,"makeup_3":255,"neckarm_2":0,"chin_3":0,"jaw_2":0,"lefthand_2":0,"lipstick_2":100,"chin_2":0,"decals_1":0,"bags_1":0,"beard_1":255,"sun_2":100,"bodyb_1":255,"eyebrows_5":0,"pants_2":2,"torso_1":21,"bodyb_4":100,"shoes_1":18,"beard_4":0,"makeup_type":0,"skin_md_weight":50,"makeup_4":255,"cheeks_1":0,"ears_2":0,"mask_1":0,"neckarm_1":0,"makeup_2":100,"eyebrows_2":100,"lefthand_1":-1,"lipstick_1":255,"blemishes_1":255,"bproof_1":0,"bags_2":0,"lipstick_3":0,"nose_5":0,"eyebrows_1":0,"helmet_2":0,"mom":21,"neck_thickness":0,"nose_6":0,"righthand_2":0,"chest_2":100,"complexion_2":100,"righthand_1":-1,"age_1":255,"chest_3":0,"bodyb_2":100,"chest_4":0,"decals_2":0,"tshirt_2":2,"bodyb_3":255,"eye_color":0,"dad":0,"pants_1":60,"cheeks_3":0,"nose_3":0,"blush_2":100,"arms_2":0,"moles_1":255,"eyebrows_6":0,"beard_3":0,"shoes_2":0,"makeup_1":255,"eyebrows_4":0,"lipstick_4":0,"nose_4":0,"jaw_1":0,"arms":12,"mask_2":0,"chin_1":0,"moles_2":100,"blush_3":0,"complexion_1":255,"sun_1":255,"age_2":100,"eye_squint":0,"ears_1":-1,"sex":0,"hair_color_2":13,"nose_1":0,"torso_2":3,"hair_1":57,"blemishes_2":100,"cheeks_2":0,"lip_thickness":0,"beard_2":100,"helmet_1":-1,"face_md_weight":50,"glasses_2":0,"tshirt_1":22,"blush_1":255,"eyebrows_3":26,"hair_2":0,"hair_color_1":28}', '[{"val":152800,"percent":15.28,"name":"hunger"},{"val":239600,"percent":23.96,"name":"thirst"},{"val":0,"percent":0.0,"name":"drunk"},{"val":0,"percent":0.0,"name":"drunk"}]', 0, NULL, 1, NULL, 'Required', 0, '[{"texture":4,"collection":"mpbusiness_overlays"}]', NULL, NULL, NULL, '591-9642', 0, 0, 'Alireza', 'Dev', '10/17/2000', 'f', 96, 0, NULL, '{"houseId":125,"owns":false,"furniture":[{"offset":[-5.20001220703125,2.8148193359375,-1.48883056640625],"object":"prop_table_tennis","heading":0.0,"name":"Table 26"}]}', '[]', 0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table roleplay.user_accounts
CREATE TABLE IF NOT EXISTS `user_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `money` double NOT NULL DEFAULT 0,
  `skin` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- Dumping data for table roleplay.user_accounts: ~261 rows (approximately)
/*!40000 ALTER TABLE `user_accounts` DISABLE KEYS */;
REPLACE INTO `user_accounts` (`id`, `identifier`, `name`, `money`, `skin`) VALUES
	(5862, 'steam:110000134f4ea83', 'black_money', 0, NULL),
	(5863, 'steam:1100001125102cb', 'black_money', 0, NULL),
	(5864, 'steam:110000119faf8af', 'black_money', 0, NULL),
	(5865, 'steam:11000011297b1fc', 'black_money', 0, NULL),
	(5866, 'steam:1100001367c5a78', 'black_money', 0, NULL),
	(5867, 'steam:110000117d8337d', 'black_money', 0, NULL),
	(5868, 'steam:110000136d9b1fb', 'black_money', 0, NULL),
	(5869, 'steam:1100001183f88c4', 'black_money', 0, NULL),
	(5870, 'steam:110000118c9073d', 'black_money', 0, NULL),
	(5871, 'steam:110000112f326ce', 'black_money', 0, NULL),
	(5872, 'steam:110000117eece51', 'black_money', 0, NULL),
	(5873, 'steam:110000102aa48ef', 'black_money', 0, NULL),
	(5874, 'steam:1100001129dadab', 'black_money', 0, NULL),
	(5875, 'steam:110000134c1bcb4', 'black_money', 0, NULL),
	(5876, 'steam:11000010e7ffa14', 'black_money', 0, NULL),
	(5877, 'steam:11000011797b826', 'black_money', 0, NULL),
	(5878, 'steam:110000136d90423', 'black_money', 0, NULL),
	(5879, 'steam:110000135589bda', 'black_money', 0, NULL),
	(5880, 'steam:1100001356daf8c', 'black_money', 0, NULL),
	(5881, 'steam:11000010461d5d3', 'black_money', 0, NULL),
	(5882, 'steam:1100001368054f1', 'black_money', 0, NULL),
	(5883, 'steam:110000104fc14f6', 'black_money', 0, NULL),
	(5884, 'steam:110000109d02522', 'black_money', 0, NULL),
	(5885, 'steam:110000132771634', 'black_money', 0, NULL),
	(5886, 'steam:11000010a3facea', 'black_money', 0, NULL),
	(5887, 'steam:110000108ec2c34', 'black_money', 0, NULL),
	(5888, 'steam:11000011af94fa0', 'black_money', 0, NULL),
	(5889, 'steam:110000107d7238a', 'black_money', 0, NULL),
	(5890, 'steam:1100001165f3c12', 'black_money', 0, NULL),
	(5891, 'steam:11000011ad8b27e', 'black_money', 0, NULL),
	(5892, 'steam:1100001071f6b2b', 'black_money', 0, NULL),
	(5893, 'steam:110000106d453af', 'black_money', 0, NULL),
	(5894, 'steam:11000010adf01a7', 'black_money', 0, NULL),
	(5895, 'steam:110000115ec9a56', 'black_money', 0, NULL),
	(5896, 'steam:1100001120ff197', 'black_money', 0, NULL),
	(5897, 'steam:110000111ada3c6', 'black_money', 0, NULL),
	(5898, 'steam:110000118aad96e', 'black_money', 0, NULL),
	(5899, 'steam:110000117a62728', 'black_money', 0, NULL),
	(5900, 'steam:110000112aafb5c', 'black_money', 0, NULL),
	(5901, 'steam:110000114e8af97', 'black_money', 0, NULL),
	(5902, 'steam:11000010c808e9a', 'black_money', 0, NULL),
	(5903, 'steam:11000010356a0a2', 'black_money', 0, NULL),
	(5904, 'steam:1100001050b8dbd', 'black_money', 0, NULL),
	(5905, 'steam:110000136e2b4f6', 'black_money', 0, NULL),
	(5906, 'steam:11000010cf54c67', 'black_money', 0, NULL),
	(5907, 'steam:11000010b2a45b8', 'black_money', 0, NULL),
	(5908, 'steam:11000010b39b1df', 'black_money', 0, NULL),
	(5909, 'steam:11000010de9246e', 'black_money', 0, NULL),
	(5910, 'steam:1100001313bbf3d', 'black_money', 0, NULL),
	(5911, 'steam:11000011c155a4d', 'black_money', 0, NULL),
	(5912, 'steam:1100001369ecbe1', 'black_money', 0, NULL),
	(5913, 'steam:11000011507994a', 'black_money', 0, NULL),
	(5914, 'steam:1100001166ec880', 'black_money', 0, NULL),
	(5915, 'steam:110000135308eef', 'black_money', 0, NULL),
	(5916, 'steam:11000010b6e9f8c', 'black_money', 0, NULL),
	(5917, 'steam:11000011074157c', 'black_money', 0, NULL),
	(5918, 'steam:11000010c5ddd2c', 'black_money', 0, NULL),
	(5919, 'steam:11000011453a3b8', 'black_money', 0, NULL),
	(5920, 'steam:1100001353bd650', 'black_money', 0, NULL),
	(5921, 'steam:11000010e3e7842', 'black_money', 0, NULL),
	(5922, 'steam:110000104790a4b', 'black_money', 0, NULL),
	(5923, 'steam:110000109d6ff47', 'black_money', 0, NULL),
	(5924, 'steam:1100001085eaff1', 'black_money', 0, NULL),
	(5925, 'steam:110000114c510f3', 'black_money', 0, NULL),
	(5926, 'steam:11000010496c849', 'black_money', 0, NULL),
	(5927, 'steam:110000136ee0e68', 'black_money', 0, NULL),
	(5928, 'steam:11000010c980cc3', 'black_money', 0, NULL),
	(5929, 'steam:11000010af16b91', 'black_money', 0, NULL),
	(5930, 'steam:110000105aca1b6', 'black_money', 0, NULL),
	(5931, 'steam:110000111c05041', 'black_money', 0, NULL),
	(5932, 'steam:110000101810d38', 'black_money', 0, NULL),
	(5933, 'steam:11000010c29d78e', 'black_money', 0, NULL),
	(5934, 'steam:110000106dbc2b0', 'black_money', 0, NULL),
	(5935, 'steam:110000119443b8d', 'black_money', 0, NULL),
	(5936, 'steam:110000111727504', 'black_money', 0, NULL),
	(5937, 'steam:11000010c17953f', 'black_money', 0, NULL),
	(5938, 'steam:11000011b3cde6f', 'black_money', 0, NULL),
	(5939, 'steam:11000010c8e0c62', 'black_money', 0, NULL),
	(5940, 'steam:110000111b35fd2', 'black_money', 0, NULL),
	(5941, 'steam:1100001171a45b5', 'black_money', 0, NULL),
	(5942, 'steam:11000011369763d', 'black_money', 0, NULL),
	(5943, 'steam:11000010997ad10', 'black_money', 0, NULL),
	(5944, 'steam:110000106a9852a', 'black_money', 0, NULL),
	(5945, 'steam:1100001098abe99', 'black_money', 0, NULL),
	(5946, 'steam:110000115606b0f', 'black_money', 0, NULL),
	(5947, 'steam:110000109109826', 'black_money', 0, NULL),
	(5948, 'steam:110000107a27709', 'black_money', 0, NULL),
	(5949, 'steam:11000010346274b', 'black_money', 0, NULL),
	(5950, 'steam:110000112ecbf47', 'black_money', 0, NULL),
	(5951, 'steam:11000010006a050', 'black_money', 0, NULL),
	(5952, 'steam:110000116d806fb', 'black_money', 0, NULL),
	(5953, 'steam:110000112987311', 'black_money', 0, NULL),
	(5954, 'steam:110000135f5f9ca', 'black_money', 0, NULL),
	(5955, 'steam:110000118558b7f', 'black_money', 0, NULL),
	(5956, 'steam:11000011be06ff5', 'black_money', 0, NULL),
	(5957, 'steam:11000010e8e46d5', 'black_money', 0, NULL),
	(5958, 'steam:1100001055043c5', 'black_money', 0, NULL),
	(5959, 'steam:11000013687efde', 'black_money', 0, NULL),
	(5960, 'steam:11000010d1de865', 'black_money', 0, NULL),
	(5961, 'steam:11000010959bf08', 'black_money', 0, NULL),
	(5962, 'steam:1100001171c041c', 'black_money', 0, NULL),
	(5963, 'steam:11000011694b64c', 'black_money', 0, NULL),
	(5964, 'steam:110000110c11a86', 'black_money', 0, NULL),
	(5965, 'steam:11000010260749a', 'black_money', 0, NULL),
	(5966, 'steam:110000103fe2658', 'black_money', 0, NULL),
	(5967, 'steam:11000010ad888d9', 'black_money', 0, NULL),
	(5968, 'steam:11000013455b040', 'black_money', 0, NULL),
	(5969, 'steam:11000010b48c783', 'black_money', 0, NULL),
	(5970, 'steam:110000133609cc1', 'black_money', 0, NULL),
	(5971, 'steam:11000010d2c6e22', 'black_money', 0, NULL),
	(5972, 'steam:11000010ec4da54', 'black_money', 0, NULL),
	(5973, 'steam:11000010b39c12d', 'black_money', 0, NULL),
	(5974, 'steam:110000111f5cd49', 'black_money', 0, NULL),
	(5975, 'steam:11000010c8a9b7d', 'black_money', 0, NULL),
	(5976, 'steam:1100001145946e1', 'black_money', 0, NULL),
	(5977, 'steam:110000109c30e16', 'black_money', 0, NULL),
	(5978, 'steam:11000010c6412bd', 'black_money', 0, NULL),
	(5979, 'steam:11000010acce0c5', 'black_money', 0, NULL),
	(5980, 'steam:110000134684b68', 'black_money', 0, NULL),
	(5981, 'steam:11000010e63f6e5', 'black_money', 0, NULL),
	(5982, 'steam:11000011d1acf46', 'black_money', 0, NULL),
	(5983, 'steam:110000115f02a1f', 'black_money', 0, NULL),
	(5984, 'steam:11000011613603e', 'black_money', 0, NULL),
	(5985, 'steam:110000137c0f35e', 'black_money', 0, NULL),
	(5986, 'steam:11000010d72f13d', 'black_money', 0, NULL),
	(5987, 'steam:110000105340202', 'black_money', 0, NULL),
	(5988, 'steam:1100001356d7cb6', 'black_money', 0, NULL),
	(5989, 'steam:11000011cfaa36a', 'black_money', 0, NULL),
	(5990, 'steam:1100001145c88df', 'black_money', 0, NULL),
	(5991, 'steam:11000011cae7ecf', 'black_money', 0, NULL),
	(5992, 'steam:1100001022a2fda', 'black_money', 0, NULL),
	(5993, 'steam:11000013211b6ce', 'black_money', 0, NULL),
	(5994, 'steam:11000013542bb3b', 'black_money', 0, NULL),
	(5995, 'steam:11000011148f4be', 'black_money', 0, NULL),
	(5996, 'steam:110000136d9b907', 'black_money', 0, NULL),
	(5997, 'steam:1100001368f8e21', 'black_money', 0, NULL),
	(5998, 'steam:110000113b324eb', 'black_money', 0, NULL),
	(5999, 'steam:1100001170c93e7', 'black_money', 0, NULL),
	(6000, 'steam:1100001176a911d', 'black_money', 0, NULL),
	(6001, 'steam:110000118704e38', 'black_money', 0, NULL),
	(6002, 'steam:110000105e04370', 'black_money', 0, NULL),
	(6003, 'steam:110000119dbfa06', 'black_money', 0, NULL),
	(6004, 'steam:110000115a4f462', 'black_money', 0, NULL),
	(6005, 'steam:11000011cc6ca80', 'black_money', 0, NULL),
	(6006, 'steam:110000106eb04be', 'black_money', 0, NULL),
	(6007, 'steam:110000106ab956f', 'black_money', 0, NULL),
	(6008, 'steam:110000117b506d5', 'black_money', 0, NULL),
	(6009, 'steam:11000013217769e', 'black_money', 0, NULL),
	(6010, 'steam:1100001128d5735', 'black_money', 0, NULL),
	(6011, 'steam:110000104c9b461', 'black_money', 0, NULL),
	(6012, 'steam:11000011b67829b', 'black_money', 0, NULL),
	(6013, 'steam:110000113abe754', 'black_money', 0, NULL),
	(6014, 'steam:1100001072edf50', 'black_money', 0, NULL),
	(6015, 'steam:110000107f58f1d', 'black_money', 0, NULL),
	(6016, 'steam:110000119699e0c', 'black_money', 0, NULL),
	(6017, 'steam:110000116479b7e', 'black_money', 0, NULL),
	(6018, 'steam:11000010dd4c111', 'black_money', 0, NULL),
	(6019, 'steam:11000010ff8b4b4', 'black_money', 0, NULL),
	(6020, 'steam:110000107dc12dc', 'black_money', 0, NULL),
	(6021, 'steam:1100001177e00fe', 'black_money', 0, NULL),
	(6022, 'steam:110000107d47fc2', 'black_money', 0, NULL),
	(6023, 'steam:110000131d2d247', 'black_money', 0, NULL),
	(6024, 'steam:110000106de0e7f', 'black_money', 0, NULL),
	(6025, 'steam:110000113f51bfb', 'black_money', 0, NULL),
	(6026, 'steam:11000011874974d', 'black_money', 0, NULL),
	(6027, 'steam:110000114944078', 'black_money', 0, NULL),
	(6028, 'steam:1100001367de6a3', 'black_money', 0, NULL),
	(6029, 'steam:11000011188e382', 'black_money', 0, NULL),
	(6030, 'steam:1100001092a4493', 'black_money', 0, NULL),
	(6031, 'steam:110000107d6fafe', 'black_money', 0, NULL),
	(6032, 'steam:11000011afaf97e', 'black_money', 0, NULL),
	(6033, 'steam:110000136db5d03', 'black_money', 0, NULL),
	(6034, 'steam:11000010750711c', 'black_money', 0, NULL),
	(6035, 'steam:110000106fb035a', 'black_money', 0, NULL),
	(6036, 'steam:11000010d9c6cc6', 'black_money', 0, NULL),
	(6037, 'steam:110000136d6ca96', 'black_money', 0, NULL),
	(6038, 'steam:110000111980b4d', 'black_money', 0, NULL),
	(6039, 'steam:110000132c3d198', 'black_money', 0, NULL),
	(6040, 'steam:110000115c2a4e9', 'black_money', 0, NULL),
	(6041, 'steam:110000114581894', 'black_money', 0, NULL),
	(6042, 'steam:110000112b07168', 'black_money', 0, NULL),
	(6043, 'steam:11000011533ebcf', 'black_money', 0, NULL),
	(6044, 'steam:110000116986a21', 'black_money', 0, NULL),
	(6045, 'steam:110000111c1e602', 'black_money', 0, NULL),
	(6046, 'steam:110000137663f3d', 'black_money', 0, NULL),
	(6047, 'steam:1100001320022d5', 'black_money', 0, NULL),
	(6048, 'steam:1100001141bce60', 'black_money', 0, NULL),
	(6049, 'steam:1100001328097ac', 'black_money', 0, NULL),
	(6050, 'steam:110000113a8f1a9', 'black_money', 0, NULL),
	(6051, 'steam:110000114201962', 'black_money', 0, NULL),
	(6052, 'steam:110000109c0aca6', 'black_money', 0, NULL),
	(6053, 'steam:110000105c6bb0f', 'black_money', 0, NULL),
	(6054, 'steam:1100001062216d0', 'black_money', 0, NULL),
	(6055, 'steam:110000132e24131', 'black_money', 0, NULL),
	(6056, 'steam:1100001369b96d8', 'black_money', 0, NULL),
	(6057, 'steam:110000132b2269b', 'black_money', 0, NULL),
	(6058, 'steam:110000112db539f', 'black_money', 0, NULL),
	(6059, 'steam:1100001081f60d2', 'black_money', 0, NULL),
	(6060, 'steam:11000010c3d933b', 'black_money', 0, NULL),
	(6061, 'steam:1100001052bb568', 'black_money', 0, NULL),
	(6062, 'steam:11000013631f02b', 'black_money', 0, NULL),
	(6063, 'steam:110000108f1bea9', 'black_money', 0, NULL),
	(6064, 'steam:11000013667e5dc', 'black_money', 0, NULL),
	(6065, 'steam:110000117c4d6fc', 'black_money', 0, NULL),
	(6066, 'steam:110000105401c3b', 'black_money', 0, NULL),
	(6067, 'steam:11000013318a4cc', 'black_money', 0, NULL),
	(6068, 'steam:110000115f92b86', 'black_money', 0, NULL),
	(6069, 'steam:11000011a20b0f0', 'black_money', 0, NULL),
	(6070, 'steam:1100001170c365a', 'black_money', 0, NULL),
	(6071, 'steam:110000116286fcb', 'black_money', 0, NULL),
	(6072, 'steam:110000135bc0612', 'black_money', 0, NULL),
	(6073, 'steam:11000010c428898', 'black_money', 0, NULL),
	(6074, 'steam:1100001160fcc75', 'black_money', 0, NULL),
	(6075, 'steam:11000010c5d0692', 'black_money', 0, NULL),
	(6076, 'steam:1100001150aaa53', 'black_money', 0, NULL),
	(6077, 'steam:1100001339de924', 'black_money', 0, NULL),
	(6078, 'steam:1100001186d977a', 'black_money', 0, NULL),
	(6079, 'steam:1100001126f919f', 'black_money', 0, NULL),
	(6080, 'steam:11000010621efd3', 'black_money', 0, NULL),
	(6081, 'steam:110000136bb9275', 'black_money', 0, NULL),
	(6082, 'steam:11000010be14a18', 'black_money', 0, NULL),
	(6083, 'steam:110000135e705dd', 'black_money', 0, NULL),
	(6084, 'steam:1100001051dc2c1', 'black_money', 0, NULL),
	(6085, 'steam:1100001045e11cb', 'black_money', 0, NULL),
	(6086, 'steam:110000107bbeec0', 'black_money', 0, NULL),
	(6087, 'steam:11000010e6a7768', 'black_money', 0, NULL),
	(6088, 'steam:110000139bb616a', 'black_money', 0, NULL),
	(6089, 'steam:11000010f7f279b', 'black_money', 0, NULL),
	(6090, 'steam:1100001157274a4', 'black_money', 0, NULL),
	(6091, 'steam:110000116a5ff69', 'black_money', 0, NULL),
	(6092, 'steam:1100001148f50f1', 'black_money', 0, NULL),
	(6093, 'steam:11000011c068294', 'black_money', 0, NULL),
	(6094, 'steam:110000116d94a86', 'black_money', 0, NULL),
	(6095, 'steam:1100001119ddc35', 'black_money', 0, NULL),
	(6096, 'steam:1100001194f6a8b', 'black_money', 0, NULL),
	(6097, 'steam:1100001089c78fc', 'black_money', 0, NULL),
	(6098, 'steam:110000103eb796f', 'black_money', 0, NULL),
	(6099, 'steam:11000011c0bc9f4', 'black_money', 0, NULL),
	(6100, 'steam:11000010eabf807', 'black_money', 0, NULL),
	(6101, 'steam:11000010bd2c1ab', 'black_money', 0, NULL),
	(6102, 'steam:1100001348afec0', 'black_money', 0, NULL),
	(6103, 'steam:11000010ee39219', 'black_money', 0, NULL),
	(6104, 'steam:1100001159208aa', 'black_money', 0, NULL),
	(6105, 'steam:11000010bdd0c91', 'black_money', 0, NULL),
	(6106, 'steam:11000010206d937', 'black_money', 0, NULL),
	(6107, 'steam:110000106f95aa6', 'black_money', 0, NULL),
	(6108, 'steam:11000010330fafa', 'black_money', 0, NULL),
	(6109, 'steam:11000010176d4ca', 'black_money', 0, NULL),
	(6110, 'steam:110000106bc857f', 'black_money', 0, NULL),
	(6111, 'steam:11000010bbefccf', 'black_money', 0, NULL),
	(6112, 'steam:110000107cdda6a', 'black_money', 0, NULL),
	(6113, 'steam:11000010dfa80cb', 'black_money', 0, NULL),
	(6114, 'steam:11000011ac04a96', 'black_money', 0, NULL),
	(6115, 'steam:110000139efa367', 'black_money', 0, NULL),
	(6116, 'steam:1100001356e5ca5', 'black_money', 0, NULL),
	(6117, 'steam:11000010c6bc171', 'black_money', 0, NULL),
	(6118, 'steam:110000106722dae', 'black_money', 0, NULL),
	(6119, 'steam:1100001049f85e2', 'black_money', 0, NULL),
	(6120, '54f6145a9c929927df2822e3dff5193409d8d6c1', 'money', 0, NULL),
	(6121, '54f6145a9c929927df2822e3dff5193409d8d6c1', 'black_money', 0, NULL),
	(6122, '54f6145a9c929927df2822e3dff5193409d8d6c1', 'bank', 0, NULL);
/*!40000 ALTER TABLE `user_accounts` ENABLE KEYS */;

-- Dumping structure for table roleplay.user_admin_notes
CREATE TABLE IF NOT EXISTS `user_admin_notes` (
  `id` int(11) NOT NULL,
  `note` longblob DEFAULT NULL,
  `byadmin` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `note_added` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- Dumping data for table roleplay.user_admin_notes: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_admin_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_admin_notes` ENABLE KEYS */;

-- Dumping structure for table roleplay.user_contacts
CREATE TABLE IF NOT EXISTS `user_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `number` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- Dumping data for table roleplay.user_contacts: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_contacts` ENABLE KEYS */;

-- Dumping structure for table roleplay.user_inventory
CREATE TABLE IF NOT EXISTS `user_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `item` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=358435 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- Dumping data for table roleplay.user_inventory: ~16 rows (approximately)
/*!40000 ALTER TABLE `user_inventory` DISABLE KEYS */;
REPLACE INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
	(278089, 'steam:11000010b50c8fd', 'wine', 0),
	(278090, 'steam:110000100c0423a', 'diamond', 0),
	(278091, 'steam:110000100c0423a', 'slaughtered_chicken', 0),
	(278092, 'steam:110000100c0423a', 'black_chip', 0),
	(278093, 'steam:110000100c0423a', 'bandage', 0),
	(278094, 'steam:110000100c0423a', 'washed_stone', 0),
	(278095, 'steam:110000100c0423a', 'beer', 0),
	(278096, 'steam:110000100c0423a', 'carotool', 0),
	(278097, 'steam:110000100c0423a', 'bronzemedal', 0),
	(278098, 'steam:110000100c0423a', 'petrol_raffin', 0),
	(278099, 'steam:110000100c0423a', 'cocacola', 10),
	(278100, 'steam:110000100c0423a', 'silvermedal', 0),
	(278101, 'steam:110000100c0423a', 'cutted_wood', 0),
	(278102, 'steam:110000100c0423a', 'hamburger', 0),
	(278103, 'steam:110000100c0423a', 'gold', 0),
	(278104, 'steam:110000100c0423a', 'petrol', 0);
/*!40000 ALTER TABLE `user_inventory` ENABLE KEYS */;

-- Dumping structure for table roleplay.user_levels
CREATE TABLE IF NOT EXISTS `user_levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `crafting` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table roleplay.user_levels: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_levels` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_levels` ENABLE KEYS */;

-- Dumping structure for table roleplay.user_licenses
CREATE TABLE IF NOT EXISTS `user_licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(60) NOT NULL,
  `owner` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.user_licenses: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_licenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_licenses` ENABLE KEYS */;

-- Dumping structure for table roleplay.user_parkings
CREATE TABLE IF NOT EXISTS `user_parkings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) DEFAULT NULL,
  `garage` varchar(60) DEFAULT NULL,
  `zone` int(11) NOT NULL,
  `vehicle` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.user_parkings: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_parkings` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_parkings` ENABLE KEYS */;

-- Dumping structure for table roleplay.vehicles
CREATE TABLE IF NOT EXISTS `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.vehicles: ~237 rows (approximately)
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
REPLACE INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Adder', 'adder', 900000, 'super'),
	('Akuma', 'AKUMA', 7500, 'motorcycles'),
	('Alpha', 'alpha', 60000, 'sports'),
	('Ardent', 'ardent', 1150000, 'sportsclassics'),
	('Asea', 'asea', 5500, 'sedans'),
	('Autarch', 'autarch', 1955000, 'super'),
	('Avarus', 'avarus', 18000, 'motorcycles'),
	('Bagger', 'bagger', 13500, 'motorcycles'),
	('Baller', 'baller2', 40000, 'suvs'),
	('Baller Sport', 'baller3', 60000, 'suvs'),
	('Banshee', 'banshee', 70000, 'sports'),
	('Banshee 900R', 'banshee2', 255000, 'super'),
	('Bati 801', 'bati', 12000, 'motorcycles'),
	('Bati 801RR', 'bati2', 19000, 'motorcycles'),
	('Bestia GTS', 'bestiagts', 55000, 'sports'),
	('BF400', 'bf400', 6500, 'motorcycles'),
	('Bf Injection', 'bfinjection', 16000, 'offroad'),
	('Bifta', 'bifta', 12000, 'offroad'),
	('Bison', 'bison', 45000, 'vans'),
	('Blade', 'blade', 15000, 'muscle'),
	('Blazer', 'blazer', 6500, 'offroad'),
	('Blazer Sport', 'blazer4', 8500, 'offroad'),
	('blazer5', 'blazer5', 1755600, 'offroad'),
	('Blista', 'blista', 8000, 'compacts'),
	('BMX (velo)', 'bmx', 160, 'motorcycles'),
	('Bobcat XL', 'bobcatxl', 32000, 'vans'),
	('Brawler', 'brawler', 45000, 'offroad'),
	('Brioso R/A', 'brioso', 18000, 'compacts'),
	('Btype', 'btype', 62000, 'sportsclassics'),
	('Btype Hotroad', 'btype2', 155000, 'sportsclassics'),
	('Btype Luxe', 'btype3', 85000, 'sportsclassics'),
	('Buccaneer', 'buccaneer', 18000, 'muscle'),
	('Buccaneer Rider', 'buccaneer2', 24000, 'muscle'),
	('Buffalo', 'buffalo', 12000, 'sports'),
	('Buffalo S', 'buffalo2', 20000, 'sports'),
	('Bullet', 'bullet', 90000, 'super'),
	('Burrito', 'burrito3', 19000, 'vans'),
	('Camper', 'camper', 42000, 'vans'),
	('Carbonizzare', 'carbonizzare', 75000, 'sports'),
	('Carbon RS', 'carbonrs', 18000, 'motorcycles'),
	('Casco', 'casco', 30000, 'sportsclassics'),
	('Cavalcade', 'cavalcade2', 55000, 'suvs'),
	('Cheetah', 'cheetah', 375000, 'super'),
	('Chimera', 'chimera', 38000, 'motorcycles'),
	('Chino', 'chino', 15000, 'muscle'),
	('Chino Luxe', 'chino2', 19000, 'muscle'),
	('Cliffhanger', 'cliffhanger', 9500, 'motorcycles'),
	('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes'),
	('Cognoscenti', 'cognoscenti', 55000, 'sedans'),
	('Comet', 'comet2', 65000, 'sports'),
	('Comet 5', 'comet5', 1145000, 'sports'),
	('Contender', 'contender', 70000, 'suvs'),
	('Coquette', 'coquette', 65000, 'sports'),
	('Coquette Classic', 'coquette2', 40000, 'sportsclassics'),
	('Coquette BlackFin', 'coquette3', 55000, 'muscle'),
	('Cruiser (velo)', 'cruiser', 510, 'motorcycles'),
	('Cyclone', 'cyclone', 1890000, 'super'),
	('Daemon', 'daemon', 11500, 'motorcycles'),
	('Daemon High', 'daemon2', 13500, 'motorcycles'),
	('Defiler', 'defiler', 9800, 'motorcycles'),
	('Dominator', 'dominator', 35000, 'muscle'),
	('Double T', 'double', 28000, 'motorcycles'),
	('Dubsta', 'dubsta', 45000, 'suvs'),
	('Dubsta Luxuary', 'dubsta2', 60000, 'suvs'),
	('Bubsta 6x6', 'dubsta3', 120000, 'offroad'),
	('Dukes', 'dukes', 28000, 'muscle'),
	('Dune Buggy', 'dune', 8000, 'offroad'),
	('Elegy', 'elegy2', 38500, 'sports'),
	('Emperor', 'emperor', 8500, 'sedans'),
	('Enduro', 'enduro', 5500, 'motorcycles'),
	('Entity XF', 'entityxf', 425000, 'super'),
	('Esskey', 'esskey', 4200, 'motorcycles'),
	('Exemplar', 'exemplar', 32000, 'coupes'),
	('F620', 'f620', 40000, 'coupes'),
	('Faction', 'faction', 20000, 'muscle'),
	('Faction Rider', 'faction2', 30000, 'muscle'),
	('Faction XL', 'faction3', 40000, 'muscle'),
	('Faggio', 'faggio', 1900, 'motorcycles'),
	('Vespa', 'faggio2', 2800, 'motorcycles'),
	('Felon', 'felon', 42000, 'coupes'),
	('Felon GT', 'felon2', 55000, 'coupes'),
	('Feltzer', 'feltzer2', 55000, 'sports'),
	('Stirling GT', 'feltzer3', 65000, 'sportsclassics'),
	('Fixter (velo)', 'fixter', 225, 'motorcycles'),
	('FMJ', 'fmj', 185000, 'super'),
	('Fhantom', 'fq2', 17000, 'suvs'),
	('Fugitive', 'fugitive', 12000, 'sedans'),
	('Furore GT', 'furoregt', 45000, 'sports'),
	('Fusilade', 'fusilade', 40000, 'sports'),
	('Gargoyle', 'gargoyle', 16500, 'motorcycles'),
	('Gauntlet', 'gauntlet', 30000, 'muscle'),
	('Gang Burrito', 'gburrito', 45000, 'vans'),
	('Burrito', 'gburrito2', 29000, 'vans'),
	('Glendale', 'glendale', 6500, 'sedans'),
	('Grabger', 'granger', 50000, 'suvs'),
	('Gresley', 'gresley', 47500, 'suvs'),
	('GT 500', 'gt500', 785000, 'sportsclassics'),
	('Guardian', 'guardian', 45000, 'offroad'),
	('Hakuchou', 'hakuchou', 31000, 'motorcycles'),
	('Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles'),
	('Hermes', 'hermes', 535000, 'muscle'),
	('Hexer', 'hexer', 12000, 'motorcycles'),
	('Hotknife', 'hotknife', 125000, 'muscle'),
	('Huntley S', 'huntley', 40000, 'suvs'),
	('Hustler', 'hustler', 625000, 'muscle'),
	('Infernus', 'infernus', 180000, 'super'),
	('Innovation', 'innovation', 23500, 'motorcycles'),
	('Intruder', 'intruder', 7500, 'sedans'),
	('Issi', 'issi2', 10000, 'compacts'),
	('Jackal', 'jackal', 38000, 'coupes'),
	('Jester', 'jester', 65000, 'sports'),
	('Jester(Racecar)', 'jester2', 135000, 'sports'),
	('Journey', 'journey', 6500, 'vans'),
	('Kamacho', 'kamacho', 345000, 'offroad'),
	('Khamelion', 'khamelion', 38000, 'sports'),
	('Kuruma', 'kuruma', 30000, 'sports'),
	('Landstalker', 'landstalker', 35000, 'suvs'),
	('RE-7B', 'le7b', 325000, 'super'),
	('Lynx', 'lynx', 40000, 'sports'),
	('Mamba', 'mamba', 70000, 'sports'),
	('Manana', 'manana', 12800, 'sportsclassics'),
	('Manchez', 'manchez', 5300, 'motorcycles'),
	('Massacro', 'massacro', 65000, 'sports'),
	('Massacro(Racecar)', 'massacro2', 130000, 'sports'),
	('Mesa', 'mesa', 16000, 'suvs'),
	('Mesa Trail', 'mesa3', 40000, 'suvs'),
	('Minivan', 'minivan', 13000, 'vans'),
	('Monroe', 'monroe', 55000, 'sportsclassics'),
	('The Liberator', 'monster', 210000, 'offroad'),
	('Moonbeam', 'moonbeam', 18000, 'vans'),
	('Moonbeam Rider', 'moonbeam2', 35000, 'vans'),
	('Nemesis', 'nemesis', 5800, 'motorcycles'),
	('Neon', 'neon', 1500000, 'sports'),
	('Nightblade', 'nightblade', 35000, 'motorcycles'),
	('Nightshade', 'nightshade', 65000, 'muscle'),
	('9F', 'ninef', 65000, 'sports'),
	('9F Cabrio', 'ninef2', 80000, 'sports'),
	('Omnis', 'omnis', 35000, 'sports'),
	('Oracle XS', 'oracle2', 35000, 'coupes'),
	('Osiris', 'osiris', 160000, 'super'),
	('Panto', 'panto', 10000, 'compacts'),
	('Paradise', 'paradise', 19000, 'vans'),
	('Pariah', 'pariah', 1420000, 'sports'),
	('Patriot', 'patriot', 55000, 'suvs'),
	('PCJ-600', 'pcj', 6200, 'motorcycles'),
	('Penumbra', 'penumbra', 28000, 'sports'),
	('Pfister', 'pfister811', 85000, 'super'),
	('Phoenix', 'phoenix', 12500, 'muscle'),
	('Picador', 'picador', 18000, 'muscle'),
	('Pigalle', 'pigalle', 20000, 'sportsclassics'),
	('Prairie', 'prairie', 12000, 'compacts'),
	('Premier', 'premier', 8000, 'sedans'),
	('Primo Custom', 'primo2', 14000, 'sedans'),
	('X80 Proto', 'prototipo', 2500000, 'super'),
	('Radius', 'radi', 29000, 'suvs'),
	('raiden', 'raiden', 1375000, 'sports'),
	('Rapid GT', 'rapidgt', 35000, 'sports'),
	('Rapid GT Convertible', 'rapidgt2', 45000, 'sports'),
	('Rapid GT3', 'rapidgt3', 885000, 'sportsclassics'),
	('Reaper', 'reaper', 150000, 'super'),
	('Rebel', 'rebel2', 35000, 'offroad'),
	('Regina', 'regina', 5000, 'sedans'),
	('Retinue', 'retinue', 615000, 'sportsclassics'),
	('Revolter', 'revolter', 1610000, 'sports'),
	('riata', 'riata', 380000, 'offroad'),
	('Rocoto', 'rocoto', 45000, 'suvs'),
	('Ruffian', 'ruffian', 6800, 'motorcycles'),
	('Ruiner 2', 'ruiner2', 5745600, 'muscle'),
	('Rumpo', 'rumpo', 15000, 'vans'),
	('Rumpo Trail', 'rumpo3', 19500, 'vans'),
	('Sabre Turbo', 'sabregt', 20000, 'muscle'),
	('Sabre GT', 'sabregt2', 25000, 'muscle'),
	('Sanchez', 'sanchez', 5300, 'motorcycles'),
	('Sanchez Sport', 'sanchez2', 5300, 'motorcycles'),
	('Sanctus', 'sanctus', 25000, 'motorcycles'),
	('Sandking', 'sandking', 55000, 'offroad'),
	('Savestra', 'savestra', 990000, 'sportsclassics'),
	('SC 1', 'sc1', 1603000, 'super'),
	('Schafter', 'schafter2', 25000, 'sedans'),
	('Schafter V12', 'schafter3', 50000, 'sports'),
	('Scorcher (velo)', 'scorcher', 280, 'motorcycles'),
	('Seminole', 'seminole', 25000, 'suvs'),
	('Sentinel', 'sentinel', 32000, 'coupes'),
	('Sentinel XS', 'sentinel2', 40000, 'coupes'),
	('Sentinel3', 'sentinel3', 650000, 'sports'),
	('Seven 70', 'seven70', 39500, 'sports'),
	('ETR1', 'sheava', 220000, 'super'),
	('Shotaro Concept', 'shotaro', 320000, 'motorcycles'),
	('Slam Van', 'slamvan3', 11500, 'muscle'),
	('Sovereign', 'sovereign', 22000, 'motorcycles'),
	('Stinger', 'stinger', 80000, 'sportsclassics'),
	('Stinger GT', 'stingergt', 75000, 'sportsclassics'),
	('Streiter', 'streiter', 500000, 'sports'),
	('Stretch', 'stretch', 90000, 'sedans'),
	('Stromberg', 'stromberg', 3185350, 'sports'),
	('Sultan', 'sultan', 15000, 'sports'),
	('Sultan RS', 'sultanrs', 65000, 'super'),
	('Super Diamond', 'superd', 130000, 'sedans'),
	('Surano', 'surano', 50000, 'sports'),
	('Surfer', 'surfer', 12000, 'vans'),
	('T20', 't20', 300000, 'super'),
	('Tailgater', 'tailgater', 30000, 'sedans'),
	('Tampa', 'tampa', 16000, 'muscle'),
	('Drift Tampa', 'tampa2', 80000, 'sports'),
	('Thrust', 'thrust', 24000, 'motorcycles'),
	('Tri bike (velo)', 'tribike3', 520, 'motorcycles'),
	('Trophy Truck', 'trophytruck', 60000, 'offroad'),
	('Trophy Truck Limited', 'trophytruck2', 80000, 'offroad'),
	('Tropos', 'tropos', 40000, 'sports'),
	('Turismo R', 'turismor', 350000, 'super'),
	('Tyrus', 'tyrus', 600000, 'super'),
	('Vacca', 'vacca', 120000, 'super'),
	('Vader', 'vader', 7200, 'motorcycles'),
	('Verlierer', 'verlierer2', 70000, 'sports'),
	('Vigero', 'vigero', 12500, 'muscle'),
	('Virgo', 'virgo', 14000, 'muscle'),
	('Viseris', 'viseris', 875000, 'sportsclassics'),
	('Visione', 'visione', 2250000, 'super'),
	('Voltic', 'voltic', 90000, 'super'),
	('Voodoo', 'voodoo', 7200, 'muscle'),
	('Vortex', 'vortex', 9800, 'motorcycles'),
	('Warrener', 'warrener', 4000, 'sedans'),
	('Washington', 'washington', 9000, 'sedans'),
	('Windsor', 'windsor', 95000, 'coupes'),
	('Windsor Drop', 'windsor2', 125000, 'coupes'),
	('Woflsbane', 'wolfsbane', 9000, 'motorcycles'),
	('XLS', 'xls', 32000, 'suvs'),
	('Yosemite', 'yosemite', 485000, 'muscle'),
	('Youga', 'youga', 10800, 'vans'),
	('Youga Luxuary', 'youga2', 14500, 'vans'),
	('Z190', 'z190', 900000, 'sportsclassics'),
	('Zentorno', 'zentorno', 1500000, 'super'),
	('Zion', 'zion', 36000, 'coupes'),
	('Zion Cabrio', 'zion2', 45000, 'coupes'),
	('Zombie', 'zombiea', 9500, 'motorcycles'),
	('Zombie Luxuary', 'zombieb', 12000, 'motorcycles'),
	('Z-Type', 'ztype', 220000, 'sportsclassics');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;

-- Dumping structure for table roleplay.vehicle_categories
CREATE TABLE IF NOT EXISTS `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.vehicle_categories: ~11 rows (approximately)
/*!40000 ALTER TABLE `vehicle_categories` DISABLE KEYS */;
REPLACE INTO `vehicle_categories` (`name`, `label`) VALUES
	('compacts', 'Compacts'),
	('coupes', 'Coupes'),
	('motorcycles', 'Motos'),
	('muscle', 'Muscle'),
	('offroad', 'Off Road'),
	('sedans', 'Sedans'),
	('sports', 'Sports'),
	('sportsclassics', 'Sports Classics'),
	('super', 'Super'),
	('suvs', 'SUVs'),
	('vans', 'Vans');
/*!40000 ALTER TABLE `vehicle_categories` ENABLE KEYS */;

-- Dumping structure for table roleplay.vehicle_sold
CREATE TABLE IF NOT EXISTS `vehicle_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.vehicle_sold: ~0 rows (approximately)
/*!40000 ALTER TABLE `vehicle_sold` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicle_sold` ENABLE KEYS */;

-- Dumping structure for table roleplay.veh_km
CREATE TABLE IF NOT EXISTS `veh_km` (
  `carplate` varchar(10) NOT NULL,
  `km` varchar(255) NOT NULL DEFAULT '0',
  `state` int(1) NOT NULL DEFAULT 0,
  `reset` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`carplate`),
  UNIQUE KEY `carplate` (`carplate`),
  KEY `carplate_2` (`carplate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table roleplay.veh_km: ~0 rows (approximately)
/*!40000 ALTER TABLE `veh_km` DISABLE KEYS */;
/*!40000 ALTER TABLE `veh_km` ENABLE KEYS */;

-- Dumping structure for table roleplay.vs_aircrafts
CREATE TABLE IF NOT EXISTS `vs_aircrafts` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.vs_aircrafts: ~27 rows (approximately)
/*!40000 ALTER TABLE `vs_aircrafts` DISABLE KEYS */;
REPLACE INTO `vs_aircrafts` (`name`, `model`, `price`, `category`) VALUES
	('Alpha Z1', 'alphaz1', 1121000, 'plane'),
	('Besra', 'besra', 1000000, 'plane'),
	('Buzzard', 'buzzard2', 500000, 'heli'),
	('Cuban 800', 'cuban800', 240000, 'plane'),
	('Dodo', 'dodo', 500000, 'plane'),
	('Duster', 'duster', 175000, 'plane'),
	('Frogger', 'frogger', 800000, 'heli'),
	('Havok', 'havok', 250000, 'heli'),
	('Howard NX25', 'howard', 975000, 'plane'),
	('Luxor', 'luxor', 1500000, 'plane'),
	('Luxor Deluxe ', 'luxor2', 1750000, 'plane'),
	('Mammatus', 'mammatus', 300000, 'plane'),
	('Maverick', 'maverick', 750000, 'heli'),
	('Ultra Light', 'microlight', 50000, 'plane'),
	('Nimbus', 'nimbus', 900000, 'plane'),
	('Rogue', 'rogue', 1000000, 'plane'),
	('Sea Breeze', 'seabreeze', 850000, 'plane'),
	('Sea Sparrow', 'seasparrow', 815000, 'heli'),
	('Shamal', 'shamal', 1150000, 'plane'),
	('Mallard', 'stunt', 250000, 'plane'),
	('SuperVolito', 'supervolito', 1000000, 'heli'),
	('SuperVolito Carbon', 'supervolito2', 1250000, 'heli'),
	('Swift', 'swift', 1000000, 'heli'),
	('Swift Deluxe', 'swift2', 1250000, 'heli'),
	('Velum', 'velum2', 450000, 'plane'),
	('Vestra', 'vestra', 950000, 'plane'),
	('Volatus', 'volatus', 1250000, 'heli');
/*!40000 ALTER TABLE `vs_aircrafts` ENABLE KEYS */;

-- Dumping structure for table roleplay.vs_aircraft_categories
CREATE TABLE IF NOT EXISTS `vs_aircraft_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.vs_aircraft_categories: ~2 rows (approximately)
/*!40000 ALTER TABLE `vs_aircraft_categories` DISABLE KEYS */;
REPLACE INTO `vs_aircraft_categories` (`name`, `label`) VALUES
	('heli', 'Helicopters'),
	('plane', 'Planes');
/*!40000 ALTER TABLE `vs_aircraft_categories` ENABLE KEYS */;

-- Dumping structure for table roleplay.vs_ambulance
CREATE TABLE IF NOT EXISTS `vs_ambulance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.vs_ambulance: ~9 rows (approximately)
/*!40000 ALTER TABLE `vs_ambulance` DISABLE KEYS */;
REPLACE INTO `vs_ambulance` (`id`, `name`, `model`, `price`, `category`) VALUES
	(1, 'Ambulance', 'ambulance', 500, 'ambulance'),
	(2, 'Fire Truck', 'firetruk', 750, 'ambulance'),
	(3, 'Ambulance', 'ambulance', 500, 'doctor'),
	(4, 'Fire Truck', 'firetruk', 750, 'doctor'),
	(5, 'Ambulance', 'ambulance', 500, 'chief_doctor'),
	(6, 'Fire Truck', 'firetruk', 750, 'chief_doctor'),
	(7, 'Ambulance', 'ambulance', 500, 'boss'),
	(8, 'Fire Truck', 'firetruk', 750, 'boss'),
	(9, 'Maverick', 'polmav', 1000, 'boss');
/*!40000 ALTER TABLE `vs_ambulance` ENABLE KEYS */;

-- Dumping structure for table roleplay.vs_ambulance_categories
CREATE TABLE IF NOT EXISTS `vs_ambulance_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.vs_ambulance_categories: ~4 rows (approximately)
/*!40000 ALTER TABLE `vs_ambulance_categories` DISABLE KEYS */;
REPLACE INTO `vs_ambulance_categories` (`name`, `label`) VALUES
	('ambulance', 'Jr. EMT'),
	('boss', 'EMT Supervisor'),
	('chief_doctor', 'Sr. EMT'),
	('doctor', 'EMT');
/*!40000 ALTER TABLE `vs_ambulance_categories` ENABLE KEYS */;

-- Dumping structure for table roleplay.vs_boats
CREATE TABLE IF NOT EXISTS `vs_boats` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.vs_boats: ~16 rows (approximately)
/*!40000 ALTER TABLE `vs_boats` DISABLE KEYS */;
REPLACE INTO `vs_boats` (`name`, `model`, `price`, `category`) VALUES
	('Dinghy 4Seat', 'dinghy', 25000, 'boat'),
	('Dinghy 2Seat', 'dinghy2', 20000, 'boat'),
	('Dinghy Yacht', 'dinghy4', 25000, 'boat'),
	('Jetmax', 'jetmax', 30000, 'boat'),
	('Marquis', 'marquis', 45000, 'boat'),
	('Seashark', 'seashark', 10000, 'boat'),
	('Seashark Yacht', 'seashark3', 10000, 'boat'),
	('Speeder', 'speeder', 40000, 'boat'),
	('Squalo', 'squalo', 32000, 'boat'),
	('Submarine', 'submersible', 29000, 'subs'),
	('Kraken', 'submersible2', 31000, 'subs'),
	('Suntrap', 'suntrap', 34000, 'boat'),
	('Toro', 'toro', 38000, 'boat'),
	('Toro Yacht', 'toro2', 38000, 'boat'),
	('Tropic', 'tropic', 27000, 'boat'),
	('Tropic Yacht', 'tropic2', 27000, 'boat');
/*!40000 ALTER TABLE `vs_boats` ENABLE KEYS */;

-- Dumping structure for table roleplay.vs_boat_categories
CREATE TABLE IF NOT EXISTS `vs_boat_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.vs_boat_categories: ~2 rows (approximately)
/*!40000 ALTER TABLE `vs_boat_categories` DISABLE KEYS */;
REPLACE INTO `vs_boat_categories` (`name`, `label`) VALUES
	('boat', 'Boats'),
	('subs', 'Submersibles');
/*!40000 ALTER TABLE `vs_boat_categories` ENABLE KEYS */;

-- Dumping structure for table roleplay.vs_cars
CREATE TABLE IF NOT EXISTS `vs_cars` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.vs_cars: ~240 rows (approximately)
/*!40000 ALTER TABLE `vs_cars` DISABLE KEYS */;
REPLACE INTO `vs_cars` (`name`, `model`, `price`, `category`) VALUES
	('Adder', 'adder', 900000, 'super'),
	('Akuma', 'AKUMA', 7500, 'motorcycles'),
	('Alpha', 'alpha', 60000, 'sports'),
	('Ardent', 'ardent', 1150000, 'sportsclassics'),
	('Asea', 'asea', 5500, 'sedans'),
	('Autarch', 'autarch', 1955000, 'super'),
	('Avarus', 'avarus', 18000, 'motorcycles'),
	('Bagger', 'bagger', 13500, 'motorcycles'),
	('Baller', 'baller2', 40000, 'suvs'),
	('Baller Sport', 'baller3', 60000, 'suvs'),
	('Banshee', 'banshee', 70000, 'sports'),
	('Banshee 900R', 'banshee2', 255000, 'super'),
	('Bati 801', 'bati', 12000, 'motorcycles'),
	('Bati 801RR', 'bati2', 19000, 'motorcycles'),
	('Bestia GTS', 'bestiagts', 55000, 'sports'),
	('BF400', 'bf400', 6500, 'motorcycles'),
	('Bf Injection', 'bfinjection', 16000, 'offroad'),
	('Bifta', 'bifta', 12000, 'offroad'),
	('Bison', 'bison', 45000, 'vans'),
	('Blade', 'blade', 15000, 'muscle'),
	('Blazer', 'blazer', 6500, 'offroad'),
	('Blazer Sport', 'blazer4', 8500, 'offroad'),
	('blazer5', 'blazer5', 1755600, 'offroad'),
	('Blista', 'blista', 8000, 'compacts'),
	('BMX (velo)', 'bmx', 160, 'motorcycles'),
	('Bobcat XL', 'bobcatxl', 32000, 'vans'),
	('Brawler', 'brawler', 45000, 'offroad'),
	('Brioso R/A', 'brioso', 18000, 'compacts'),
	('Btype', 'btype', 62000, 'sportsclassics'),
	('Btype Hotroad', 'btype2', 155000, 'sportsclassics'),
	('Btype Luxe', 'btype3', 85000, 'sportsclassics'),
	('Buccaneer', 'buccaneer', 18000, 'muscle'),
	('Buccaneer Rider', 'buccaneer2', 24000, 'muscle'),
	('Buffalo', 'buffalo', 12000, 'sports'),
	('Buffalo S', 'buffalo2', 20000, 'sports'),
	('Bullet', 'bullet', 90000, 'super'),
	('Burrito', 'burrito3', 19000, 'vans'),
	('Camper', 'camper', 42000, 'vans'),
	('Carbonizzare', 'carbonizzare', 75000, 'sports'),
	('Carbon RS', 'carbonrs', 18000, 'motorcycles'),
	('Casco', 'casco', 30000, 'sportsclassics'),
	('Cavalcade', 'cavalcade2', 55000, 'suvs'),
	('Cheetah', 'cheetah', 375000, 'super'),
	('Chimera', 'chimera', 38000, 'motorcycles'),
	('Chino', 'chino', 15000, 'muscle'),
	('Chino Luxe', 'chino2', 19000, 'muscle'),
	('Cliffhanger', 'cliffhanger', 9500, 'motorcycles'),
	('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes'),
	('Cognoscenti', 'cognoscenti', 55000, 'sedans'),
	('Comet', 'comet2', 65000, 'sports'),
	('Comet 5', 'comet5', 1145000, 'sports'),
	('Contender', 'contender', 70000, 'suvs'),
	('Coquette', 'coquette', 65000, 'sports'),
	('Coquette Classic', 'coquette2', 40000, 'sportsclassics'),
	('Coquette BlackFin', 'coquette3', 55000, 'muscle'),
	('Cruiser (velo)', 'cruiser', 510, 'motorcycles'),
	('Cyclone', 'cyclone', 1890000, 'super'),
	('Daemon', 'daemon', 11500, 'motorcycles'),
	('Daemon High', 'daemon2', 13500, 'motorcycles'),
	('Defiler', 'defiler', 9800, 'motorcycles'),
	('Deluxo', 'deluxo', 4721500, 'sportsclassics'),
	('Dominator', 'dominator', 35000, 'muscle'),
	('Double T', 'double', 28000, 'motorcycles'),
	('Dubsta', 'dubsta', 45000, 'suvs'),
	('Dubsta Luxuary', 'dubsta2', 60000, 'suvs'),
	('Bubsta 6x6', 'dubsta3', 120000, 'offroad'),
	('Dukes', 'dukes', 28000, 'muscle'),
	('Dune Buggy', 'dune', 8000, 'offroad'),
	('Elegy', 'elegy2', 38500, 'sports'),
	('Emperor', 'emperor', 8500, 'sedans'),
	('Enduro', 'enduro', 5500, 'motorcycles'),
	('Entity XF', 'entityxf', 425000, 'super'),
	('Esskey', 'esskey', 4200, 'motorcycles'),
	('Exemplar', 'exemplar', 32000, 'coupes'),
	('F620', 'f620', 40000, 'coupes'),
	('Faction', 'faction', 20000, 'muscle'),
	('Faction Rider', 'faction2', 30000, 'muscle'),
	('Faction XL', 'faction3', 40000, 'muscle'),
	('Faggio', 'faggio', 1900, 'motorcycles'),
	('Vespa', 'faggio2', 2800, 'motorcycles'),
	('Felon', 'felon', 42000, 'coupes'),
	('Felon GT', 'felon2', 55000, 'coupes'),
	('Feltzer', 'feltzer2', 55000, 'sports'),
	('Stirling GT', 'feltzer3', 65000, 'sportsclassics'),
	('Fixter (velo)', 'fixter', 225, 'motorcycles'),
	('FMJ', 'fmj', 185000, 'super'),
	('Fhantom', 'fq2', 17000, 'suvs'),
	('Fugitive', 'fugitive', 12000, 'sedans'),
	('Furore GT', 'furoregt', 45000, 'sports'),
	('Fusilade', 'fusilade', 40000, 'sports'),
	('Gargoyle', 'gargoyle', 16500, 'motorcycles'),
	('Gauntlet', 'gauntlet', 30000, 'muscle'),
	('Gang Burrito', 'gburrito', 45000, 'vans'),
	('Burrito', 'gburrito2', 29000, 'vans'),
	('Glendale', 'glendale', 6500, 'sedans'),
	('Grabger', 'granger', 50000, 'suvs'),
	('Gresley', 'gresley', 47500, 'suvs'),
	('GT 500', 'gt500', 785000, 'sportsclassics'),
	('Guardian', 'guardian', 45000, 'offroad'),
	('Hakuchou', 'hakuchou', 31000, 'motorcycles'),
	('Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles'),
	('Hermes', 'hermes', 535000, 'muscle'),
	('Hexer', 'hexer', 12000, 'motorcycles'),
	('Hotknife', 'hotknife', 125000, 'muscle'),
	('Huntley S', 'huntley', 40000, 'suvs'),
	('Hustler', 'hustler', 625000, 'muscle'),
	('Infernus', 'infernus', 180000, 'super'),
	('Innovation', 'innovation', 23500, 'motorcycles'),
	('Intruder', 'intruder', 7500, 'sedans'),
	('Issi', 'issi2', 10000, 'compacts'),
	('Jackal', 'jackal', 38000, 'coupes'),
	('Jester', 'jester', 65000, 'sports'),
	('Jester(Racecar)', 'jester2', 135000, 'sports'),
	('Journey', 'journey', 6500, 'vans'),
	('Kamacho', 'kamacho', 345000, 'offroad'),
	('Khamelion', 'khamelion', 38000, 'sports'),
	('Kuruma', 'kuruma', 30000, 'sports'),
	('Landstalker', 'landstalker', 35000, 'suvs'),
	('RE-7B', 'le7b', 325000, 'super'),
	('Lynx', 'lynx', 40000, 'sports'),
	('Mamba', 'mamba', 70000, 'sports'),
	('Manana', 'manana', 12800, 'sportsclassics'),
	('Manchez', 'manchez', 5300, 'motorcycles'),
	('Massacro', 'massacro', 65000, 'sports'),
	('Massacro(Racecar)', 'massacro2', 130000, 'sports'),
	('Mesa', 'mesa', 16000, 'suvs'),
	('Mesa Trail', 'mesa3', 40000, 'suvs'),
	('Minivan', 'minivan', 13000, 'vans'),
	('Monroe', 'monroe', 55000, 'sportsclassics'),
	('The Liberator', 'monster', 210000, 'offroad'),
	('Moonbeam', 'moonbeam', 18000, 'vans'),
	('Moonbeam Rider', 'moonbeam2', 35000, 'vans'),
	('Nemesis', 'nemesis', 5800, 'motorcycles'),
	('Neon', 'neon', 1500000, 'sports'),
	('Nightblade', 'nightblade', 35000, 'motorcycles'),
	('Nightshade', 'nightshade', 65000, 'muscle'),
	('9F', 'ninef', 65000, 'sports'),
	('9F Cabrio', 'ninef2', 80000, 'sports'),
	('Omnis', 'omnis', 35000, 'sports'),
	('Oppressor', 'oppressor', 3524500, 'super'),
	('Oracle XS', 'oracle2', 35000, 'coupes'),
	('Osiris', 'osiris', 160000, 'super'),
	('Panto', 'panto', 10000, 'compacts'),
	('Paradise', 'paradise', 19000, 'vans'),
	('Pariah', 'pariah', 1420000, 'sports'),
	('Patriot', 'patriot', 55000, 'suvs'),
	('PCJ-600', 'pcj', 6200, 'motorcycles'),
	('Penumbra', 'penumbra', 28000, 'sports'),
	('Pfister', 'pfister811', 85000, 'super'),
	('Phoenix', 'phoenix', 12500, 'muscle'),
	('Picador', 'picador', 18000, 'muscle'),
	('Pigalle', 'pigalle', 20000, 'sportsclassics'),
	('Prairie', 'prairie', 12000, 'compacts'),
	('Premier', 'premier', 8000, 'sedans'),
	('Primo Custom', 'primo2', 14000, 'sedans'),
	('X80 Proto', 'prototipo', 2500000, 'super'),
	('Radius', 'radi', 29000, 'suvs'),
	('Raiden', 'raiden', 1375000, 'sports'),
	('Rapid GT', 'rapidgt', 35000, 'sports'),
	('Rapid GT Convertible', 'rapidgt2', 45000, 'sports'),
	('Rapid GT3', 'rapidgt3', 885000, 'sportsclassics'),
	('Reaper', 'reaper', 150000, 'super'),
	('Rebel', 'rebel2', 35000, 'offroad'),
	('Regina', 'regina', 5000, 'sedans'),
	('Retinue', 'retinue', 615000, 'sportsclassics'),
	('Revolter', 'revolter', 1610000, 'sports'),
	('Riata', 'riata', 380000, 'offroad'),
	('Rocoto', 'rocoto', 45000, 'suvs'),
	('Ruffian', 'ruffian', 6800, 'motorcycles'),
	('Ruiner 2', 'ruiner2', 5745600, 'muscle'),
	('Rumpo', 'rumpo', 15000, 'vans'),
	('Rumpo Trail', 'rumpo3', 19500, 'vans'),
	('Sabre Turbo', 'sabregt', 20000, 'muscle'),
	('Sabre GT', 'sabregt2', 25000, 'muscle'),
	('Sanchez', 'sanchez', 5300, 'motorcycles'),
	('Sanchez Sport', 'sanchez2', 5300, 'motorcycles'),
	('Sanctus', 'sanctus', 25000, 'motorcycles'),
	('Sandking', 'sandking', 55000, 'offroad'),
	('Savestra', 'savestra', 990000, 'sportsclassics'),
	('SC 1', 'sc1', 1603000, 'super'),
	('Schafter', 'schafter2', 25000, 'sedans'),
	('Schafter V12', 'schafter3', 50000, 'sports'),
	('Scorcher (velo)', 'scorcher', 280, 'motorcycles'),
	('Seminole', 'seminole', 25000, 'suvs'),
	('Sentinel', 'sentinel', 32000, 'coupes'),
	('Sentinel XS', 'sentinel2', 40000, 'coupes'),
	('Sentinel3', 'sentinel3', 650000, 'sports'),
	('Seven 70', 'seven70', 39500, 'sports'),
	('ETR1', 'sheava', 220000, 'super'),
	('Shotaro Concept', 'shotaro', 320000, 'motorcycles'),
	('Slam Van', 'slamvan3', 11500, 'muscle'),
	('Sovereign', 'sovereign', 22000, 'motorcycles'),
	('Stinger', 'stinger', 80000, 'sportsclassics'),
	('Stinger GT', 'stingergt', 75000, 'sportsclassics'),
	('Streiter', 'streiter', 500000, 'sports'),
	('Stretch', 'stretch', 90000, 'sedans'),
	('Stromberg', 'stromberg', 3185350, 'sports'),
	('Sultan', 'sultan', 15000, 'sports'),
	('Sultan RS', 'sultanrs', 65000, 'super'),
	('Super Diamond', 'superd', 130000, 'sedans'),
	('Surano', 'surano', 50000, 'sports'),
	('Surfer', 'surfer', 12000, 'vans'),
	('T20', 't20', 300000, 'super'),
	('Tailgater', 'tailgater', 30000, 'sedans'),
	('Tampa', 'tampa', 16000, 'muscle'),
	('Drift Tampa', 'tampa2', 80000, 'sports'),
	('Thrust', 'thrust', 24000, 'motorcycles'),
	('Tri bike (velo)', 'tribike3', 520, 'motorcycles'),
	('Trophy Truck', 'trophytruck', 60000, 'offroad'),
	('Trophy Truck Limited', 'trophytruck2', 80000, 'offroad'),
	('Tropos', 'tropos', 40000, 'sports'),
	('Turismo R', 'turismor', 350000, 'super'),
	('Tyrus', 'tyrus', 600000, 'super'),
	('Vacca', 'vacca', 120000, 'super'),
	('Vader', 'vader', 7200, 'motorcycles'),
	('Verlierer', 'verlierer2', 70000, 'sports'),
	('Vigero', 'vigero', 12500, 'muscle'),
	('Virgo', 'virgo', 14000, 'muscle'),
	('Viseris', 'viseris', 875000, 'sportsclassics'),
	('Visione', 'visione', 2250000, 'super'),
	('Voltic', 'voltic', 90000, 'super'),
	('Voltic 2', 'voltic2', 3830400, 'super'),
	('Voodoo', 'voodoo', 7200, 'muscle'),
	('Vortex', 'vortex', 9800, 'motorcycles'),
	('Warrener', 'warrener', 4000, 'sedans'),
	('Washington', 'washington', 9000, 'sedans'),
	('Windsor', 'windsor', 95000, 'coupes'),
	('Windsor Drop', 'windsor2', 125000, 'coupes'),
	('Woflsbane', 'wolfsbane', 9000, 'motorcycles'),
	('XLS', 'xls', 32000, 'suvs'),
	('Yosemite', 'yosemite', 485000, 'muscle'),
	('Youga', 'youga', 10800, 'vans'),
	('Youga Luxuary', 'youga2', 14500, 'vans'),
	('Z190', 'z190', 900000, 'sportsclassics'),
	('Zentorno', 'zentorno', 1500000, 'super'),
	('Zion', 'zion', 36000, 'coupes'),
	('Zion Cabrio', 'zion2', 45000, 'coupes'),
	('Zombie', 'zombiea', 9500, 'motorcycles'),
	('Zombie Luxuary', 'zombieb', 12000, 'motorcycles'),
	('Z-Type', 'ztype', 220000, 'sportsclassics');
/*!40000 ALTER TABLE `vs_cars` ENABLE KEYS */;

-- Dumping structure for table roleplay.vs_car_categories
CREATE TABLE IF NOT EXISTS `vs_car_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.vs_car_categories: ~11 rows (approximately)
/*!40000 ALTER TABLE `vs_car_categories` DISABLE KEYS */;
REPLACE INTO `vs_car_categories` (`name`, `label`) VALUES
	('compacts', 'Compacts'),
	('coupes', 'Coupes'),
	('motorcycles', 'Motos'),
	('muscle', 'Muscle'),
	('offroad', 'Off Road'),
	('sedans', 'Sedans'),
	('sports', 'Sports'),
	('sportsclassics', 'Sports Classics'),
	('super', 'Super'),
	('suvs', 'SUVs'),
	('vans', 'Vans');
/*!40000 ALTER TABLE `vs_car_categories` ENABLE KEYS */;

-- Dumping structure for table roleplay.vs_mecano
CREATE TABLE IF NOT EXISTS `vs_mecano` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.vs_mecano: ~10 rows (approximately)
/*!40000 ALTER TABLE `vs_mecano` DISABLE KEYS */;
REPLACE INTO `vs_mecano` (`id`, `name`, `model`, `price`, `category`) VALUES
	(1, 'Flatbed', 'flatbed', 500, 'recrue'),
	(2, 'Tow Truck', 'towtruck2', 750, 'recrue'),
	(3, 'Flatbed', 'flatbed', 500, 'novice'),
	(4, 'Tow Truck', 'towtruck2', 750, 'novice'),
	(5, 'Flatbed', 'flatbed', 500, 'experimente'),
	(6, 'Tow Truck', 'towtruck2', 750, 'experimente'),
	(7, 'Flatbed', 'flatbed', 500, 'chief'),
	(8, 'Tow Truck', 'towtruck2', 750, 'chief'),
	(9, 'Flatbed', 'flatbed', 500, 'boss'),
	(10, 'Tow Truck', 'towtruck2', 750, 'boss');
/*!40000 ALTER TABLE `vs_mecano` ENABLE KEYS */;

-- Dumping structure for table roleplay.vs_mecano_categories
CREATE TABLE IF NOT EXISTS `vs_mecano_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.vs_mecano_categories: ~5 rows (approximately)
/*!40000 ALTER TABLE `vs_mecano_categories` DISABLE KEYS */;
REPLACE INTO `vs_mecano_categories` (`name`, `label`) VALUES
	('boss', 'Boss'),
	('chief', 'Chief'),
	('experimente', 'Experienced'),
	('novice', 'Novice'),
	('recrue', 'Recruit');
/*!40000 ALTER TABLE `vs_mecano_categories` ENABLE KEYS */;

-- Dumping structure for table roleplay.vs_police
CREATE TABLE IF NOT EXISTS `vs_police` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.vs_police: ~11 rows (approximately)
/*!40000 ALTER TABLE `vs_police` DISABLE KEYS */;
REPLACE INTO `vs_police` (`id`, `name`, `model`, `price`, `category`) VALUES
	(1, 'Police Cruiser', 'police', 500, 'recruit'),
	(2, 'Police Cruiser', 'police2', 750, 'recruit'),
	(3, 'Police Cruiser', 'police', 500, 'officer'),
	(4, 'Police Cruiser', 'police2', 750, 'officer'),
	(5, 'Police Cruiser', 'police', 500, 'sergeant'),
	(6, 'Police Cruiser', 'police2', 750, 'sergeant'),
	(7, 'Police Cruiser', 'police', 500, 'lieutenant'),
	(8, 'Police Cruiser', 'police2', 750, 'lieutenant'),
	(9, 'Police Cruiser', 'police', 500, 'boss'),
	(10, 'Police Cruiser', 'police2', 750, 'boss'),
	(11, 'Maverick', 'polmav', 1000, 'boss');
/*!40000 ALTER TABLE `vs_police` ENABLE KEYS */;

-- Dumping structure for table roleplay.vs_police_categories
CREATE TABLE IF NOT EXISTS `vs_police_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.vs_police_categories: ~5 rows (approximately)
/*!40000 ALTER TABLE `vs_police_categories` DISABLE KEYS */;
REPLACE INTO `vs_police_categories` (`name`, `label`) VALUES
	('boss', 'Chief'),
	('lieutenant', 'Lieutenant'),
	('officer', 'Officer'),
	('recruit', 'Recruit'),
	('sergeant', 'Sergeant');
/*!40000 ALTER TABLE `vs_police_categories` ENABLE KEYS */;

-- Dumping structure for table roleplay.vs_trucks
CREATE TABLE IF NOT EXISTS `vs_trucks` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.vs_trucks: ~28 rows (approximately)
/*!40000 ALTER TABLE `vs_trucks` DISABLE KEYS */;
REPLACE INTO `vs_trucks` (`name`, `model`, `price`, `category`) VALUES
	('Airport Bus', 'airbus', 50000, 'trans'),
	('Benson', 'benson', 55000, 'box'),
	('Biff', 'biff', 30000, 'other'),
	('Boxville 1', 'boxville', 45000, 'box'),
	('Boxville 2', 'boxville2', 45000, 'box'),
	('Boxville 3', 'boxville3', 45000, 'box'),
	('Boxville 4', 'boxville4', 45000, 'box'),
	('Dozer', 'bulldozer', 20000, 'other'),
	('Bus', 'bus', 50000, 'trans'),
	('Dashound', 'coach', 50000, 'trans'),
	('Hauler', 'hauler', 100000, 'haul'),
	('Mixer 1', 'mixer', 30000, 'other'),
	('Mixer 2', 'mixer2', 30000, 'other'),
	('Mule 1', 'mule', 40000, 'box'),
	('Mule 2', 'mule2', 40000, 'box'),
	('Mule 3', 'mule3', 40000, 'box'),
	('Packer', 'packer', 100000, 'haul'),
	('Festival Bus', 'pbus2', 125000, 'trans'),
	('Phantom', 'phantom', 105000, 'haul'),
	('Phantom Custom', 'phantom3', 110000, 'haul'),
	('Pounder', 'pounder', 55000, 'box'),
	('Rental Bus', 'rentalbus', 35000, 'trans'),
	('Rubble', 'rubble', 30000, 'other'),
	('Scrap Truck', 'scrap', 10000, 'other'),
	('Tipper 1', 'tiptruck', 30000, 'other'),
	('Tipper 2', 'tiptruck2', 30000, 'other'),
	('Tour Bus', 'tourbus', 35000, 'trans'),
	('Field Master', 'tractor2', 15000, 'other');
/*!40000 ALTER TABLE `vs_trucks` ENABLE KEYS */;

-- Dumping structure for table roleplay.vs_truck_categories
CREATE TABLE IF NOT EXISTS `vs_truck_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.vs_truck_categories: ~4 rows (approximately)
/*!40000 ALTER TABLE `vs_truck_categories` DISABLE KEYS */;
REPLACE INTO `vs_truck_categories` (`name`, `label`) VALUES
	('box', 'Boxed Trucks'),
	('haul', 'Haulers'),
	('other', 'Other Trucks'),
	('trans', 'Transport Trucks');
/*!40000 ALTER TABLE `vs_truck_categories` ENABLE KEYS */;

-- Dumping structure for table roleplay.vs_vips
CREATE TABLE IF NOT EXISTS `vs_vips` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.vs_vips: ~0 rows (approximately)
/*!40000 ALTER TABLE `vs_vips` DISABLE KEYS */;
REPLACE INTO `vs_vips` (`name`, `model`, `price`, `category`) VALUES
	('Shotaro', 'shotaro', 30000, 'motorcycles');
/*!40000 ALTER TABLE `vs_vips` ENABLE KEYS */;

-- Dumping structure for table roleplay.vs_vip_categories
CREATE TABLE IF NOT EXISTS `vs_vip_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.vs_vip_categories: ~0 rows (approximately)
/*!40000 ALTER TABLE `vs_vip_categories` DISABLE KEYS */;
REPLACE INTO `vs_vip_categories` (`name`, `label`) VALUES
	('motorcycles', 'Motos');
/*!40000 ALTER TABLE `vs_vip_categories` ENABLE KEYS */;

-- Dumping structure for table roleplay.weashops
CREATE TABLE IF NOT EXISTS `weashops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zone` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.weashops: ~14 rows (approximately)
/*!40000 ALTER TABLE `weashops` DISABLE KEYS */;
REPLACE INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(1, 'GunShop', 'WEAPON_PISTOL', 45000),
	(2, 'BlackWeashop', 'WEAPON_PISTOL', 45000),
	(5, 'GunShop', 'WEAPON_MACHETE', 37000),
	(6, 'BlackWeashop', 'WEAPON_MACHETE', 37000),
	(7, 'GunShop', 'weapon_knife', 32000),
	(8, 'BlackWeashop', 'weapon_knife', 32000),
	(9, 'GunShop', 'WEAPON_BAT', 30000),
	(10, 'BlackWeashop', 'WEAPON_BAT', 30000),
	(11, 'GunShop', 'WEAPON_COMBATPISTOL', 55000),
	(12, 'BlackWeashop', 'WEAPON_COMBATPISTOL', 55000),
	(13, 'GunShop', 'WEAPON_KNUCKLE', 21000),
	(14, 'BlackWeashop', 'WEAPON_KNUCKLE', 21000),
	(15, 'GunShop', 'weapon_flare', 8000),
	(16, 'BlackWeashop', 'weapon_flare', 8000);
/*!40000 ALTER TABLE `weashops` ENABLE KEYS */;

-- Dumping structure for table roleplay.whitelist
CREATE TABLE IF NOT EXISTS `whitelist` (
  `identifier` varchar(40) NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table roleplay.whitelist: ~0 rows (approximately)
/*!40000 ALTER TABLE `whitelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `whitelist` ENABLE KEYS */;

-- Dumping structure for table roleplay.yellow_tweets
CREATE TABLE IF NOT EXISTS `yellow_tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_number` int(11) DEFAULT NULL,
  `firstname` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=456 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table roleplay.yellow_tweets: ~0 rows (approximately)
/*!40000 ALTER TABLE `yellow_tweets` DISABLE KEYS */;
/*!40000 ALTER TABLE `yellow_tweets` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
