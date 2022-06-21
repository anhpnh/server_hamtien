-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.19-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for ubnd_lactanh
CREATE DATABASE IF NOT EXISTS `ubnd_lactanh` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `ubnd_lactanh`;

-- Dumping structure for table ubnd_lactanh.binhchon
CREATE TABLE IF NOT EXISTS `binhchon` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `status` tinytext NOT NULL,
  `maQuay` varchar(50) NOT NULL,
  `ngayTao` datetime NOT NULL DEFAULT current_timestamp(),
  `ngayCapNhat` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `pk_binhchon_quaydichvu` (`maQuay`),
  CONSTRAINT `pk_binhchon_quaydichvu` FOREIGN KEY (`maQuay`) REFERENCES `quaydichvu` (`maQuay`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table ubnd_lactanh.binhchon: ~40 rows (approximately)
/*!40000 ALTER TABLE `binhchon` DISABLE KEYS */;
INSERT IGNORE INTO `binhchon` (`id`, `status`, `maQuay`, `ngayTao`, `ngayCapNhat`) VALUES
	(19, 'Hài lòng', 'quayso1', '2020-09-08 08:38:38', '2020-09-08 08:38:38'),
	(20, 'Không hài lòng', 'quayso1', '2020-09-08 08:40:04', '2020-09-08 08:40:04'),
	(21, 'Hài lòng', 'quayso1', '2020-09-08 08:40:09', '2020-09-08 08:40:09'),
	(22, 'Không hài lòng', 'quayso1', '2020-09-08 08:40:14', '2020-09-08 08:40:14'),
	(23, 'Hài lòng', 'quayso1', '2020-09-08 08:45:59', '2020-09-08 08:45:59'),
	(24, 'Không hài lòng', 'quayso1', '2020-09-08 08:46:03', '2020-09-08 08:46:03'),
	(25, 'Hài lòng', 'quayso1', '2020-09-08 08:48:08', '2020-09-08 08:48:08'),
	(26, 'Hài lòng', 'quayso2', '2020-09-08 08:48:42', '2020-09-08 08:48:42'),
	(27, 'Không hài lòng', 'quayso2', '2020-09-08 08:48:46', '2020-09-08 08:48:46'),
	(28, 'Hài lòng', 'quayso3', '2020-09-08 08:48:55', '2020-09-08 08:48:55'),
	(29, 'Không hài lòng', 'quayso3', '2020-09-08 08:49:00', '2020-09-08 08:49:00'),
	(30, 'Hài lòng', 'quayso4', '2020-09-08 08:49:10', '2020-09-08 08:49:10'),
	(31, 'Không hài lòng', 'quayso4', '2020-09-08 08:49:14', '2020-09-08 08:49:14'),
	(32, 'Hài lòng', 'quayso1', '2020-09-08 11:18:13', '2020-09-08 11:18:13'),
	(33, 'Hài lòng', 'quayso2', '2020-09-08 11:18:23', '2020-09-08 11:18:23'),
	(34, 'Không hài lòng', 'quayso2', '2020-09-08 11:18:25', '2020-09-08 11:18:25'),
	(35, 'Hài lòng', 'quayso1', '2021-10-01 21:33:10', '2021-10-01 21:33:10'),
	(36, 'Không hài lòng', 'quayso1', '2021-10-01 21:33:12', '2021-10-01 21:33:12'),
	(37, 'Hài lòng', 'quayso1', '2021-10-01 21:33:20', '2021-10-01 21:33:20'),
	(38, 'Hài lòng', 'quayso1', '2021-10-01 21:33:22', '2021-10-01 21:33:22'),
	(39, 'Không hài lòng', 'quayso2', '2021-10-01 21:33:27', '2021-10-01 21:33:27'),
	(40, 'Không hài lòng', 'quayso2', '2021-10-01 21:33:28', '2021-10-01 21:33:28'),
	(41, 'Không hài lòng', 'quayso2', '2021-10-01 21:33:28', '2021-10-01 21:33:28'),
	(42, 'Hài lòng', 'quayso2', '2021-10-01 21:33:35', '2021-10-01 21:33:35'),
	(43, 'Hài lòng', 'quayso3', '2021-10-01 21:33:46', '2021-10-01 21:33:46'),
	(44, 'Hài lòng', 'quayso3', '2021-10-01 21:33:46', '2021-10-01 21:33:46'),
	(45, 'Không hài lòng', 'quayso3', '2021-10-01 21:33:46', '2021-10-01 21:33:46'),
	(46, 'Không hài lòng', 'quayso3', '2021-10-01 21:33:47', '2021-10-01 21:33:47'),
	(47, 'Không hài lòng', 'quayso3', '2021-10-01 21:33:47', '2021-10-01 21:33:47'),
	(48, 'Hài lòng', 'quayso4', '2021-10-01 21:34:25', '2021-10-01 21:34:25'),
	(49, 'Không hài lòng', 'quayso4', '2021-10-01 21:34:26', '2021-10-01 21:34:26'),
	(50, 'Hài lòng', 'quayso4', '2021-10-01 21:34:26', '2021-10-01 21:34:26'),
	(51, 'Hài lòng', 'quayso5', '2021-10-03 17:02:20', '2021-10-03 17:02:20'),
	(52, 'Không hài lòng', 'quayso5', '2021-10-03 17:02:22', '2021-10-03 17:02:22'),
	(53, 'Không hài lòng', 'quayso5', '2021-10-03 17:02:23', '2021-10-03 17:02:23'),
	(54, 'Hài lòng', 'quayso5', '2021-10-03 17:02:23', '2021-10-03 17:02:23'),
	(55, 'Hài lòng', 'quayso5', '2021-10-03 17:05:52', '2021-10-03 17:05:52'),
	(56, 'Không hài lòng', 'quayso5', '2021-10-03 17:05:54', '2021-10-03 17:05:54'),
	(57, 'Hài lòng', 'quayso4', '2021-10-03 17:06:05', '2021-10-03 17:06:05'),
	(58, 'Không hài lòng', 'quayso4', '2021-10-03 17:06:05', '2021-10-03 17:06:05');
/*!40000 ALTER TABLE `binhchon` ENABLE KEYS */;

-- Dumping structure for table ubnd_lactanh.goiso
CREATE TABLE IF NOT EXISTS `goiso` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `maQyay` varchar(50) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `maQyay` (`maQyay`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table ubnd_lactanh.goiso: ~0 rows (approximately)
/*!40000 ALTER TABLE `goiso` DISABLE KEYS */;
INSERT IGNORE INTO `goiso` (`id`, `maQyay`, `status`) VALUES
	(2, '', 0);
/*!40000 ALTER TABLE `goiso` ENABLE KEYS */;

-- Dumping structure for table ubnd_lactanh.phongban
CREATE TABLE IF NOT EXISTS `phongban` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `maPhongBan` varchar(50) NOT NULL,
  `tenPhongBan` text NOT NULL,
  `ngayTao` datetime NOT NULL DEFAULT current_timestamp(),
  `ngayCapNhat` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `maPhongBan` (`maPhongBan`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table ubnd_lactanh.phongban: ~12 rows (approximately)
/*!40000 ALTER TABLE `phongban` DISABLE KEYS */;
INSERT IGNORE INTO `phongban` (`id`, `maPhongBan`, `tenPhongBan`, `ngayTao`, `ngayCapNhat`) VALUES
	(1, '1000', 'Phòng Số 1', '2020-05-17 14:28:18', '2020-05-18 10:18:51'),
	(2, '2000', 'Phòng Số 2', '2020-05-17 14:28:41', '2020-05-17 14:28:41'),
	(3, '3000', 'Phòng Số 3', '2020-05-17 14:28:59', '2020-05-17 14:28:59'),
	(4, '4000', 'Phòng Số 4', '2020-05-17 14:29:13', '2020-05-17 14:29:14'),
	(5, '5000', 'Phòng Số 5', '2020-05-17 14:29:32', '2020-05-17 14:29:33'),
	(6, '6000', 'Phòng Số 6', '2020-05-17 14:29:48', '2020-05-17 14:29:48'),
	(7, '7000', 'Phòng Số 7', '2020-05-17 14:30:00', '2020-05-17 14:30:01'),
	(8, '8000', 'Phòng Số 8', '2020-05-17 14:30:18', '2020-05-17 14:30:19'),
	(9, '9000', 'Phòng Số 9', '2020-05-17 14:30:33', '2020-05-17 14:30:34'),
	(10, '10000', 'Phòng Số 10', '2020-05-17 14:30:45', '2020-05-17 14:30:46'),
	(11, '11000', 'Phòng Số 11', '2020-05-17 14:30:57', '2020-05-17 14:30:58'),
	(12, '12000', 'Phòng Số 12', '2020-05-17 14:31:13', '2020-05-17 14:31:13');
/*!40000 ALTER TABLE `phongban` ENABLE KEYS */;

-- Dumping structure for table ubnd_lactanh.quaydichvu
CREATE TABLE IF NOT EXISTS `quaydichvu` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `maQuay` varchar(50) NOT NULL,
  `tenQuay` text NOT NULL,
  `maPhongBan` varchar(50) NOT NULL,
  `ngayTao` datetime NOT NULL DEFAULT current_timestamp(),
  `ngayCapNhat` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `maQuay` (`maQuay`),
  KEY `maPhongBan` (`maPhongBan`),
  CONSTRAINT `FK_QuayDichVu_PhongBan` FOREIGN KEY (`maPhongBan`) REFERENCES `phongban` (`maPhongBan`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table ubnd_lactanh.quaydichvu: ~12 rows (approximately)
/*!40000 ALTER TABLE `quaydichvu` DISABLE KEYS */;
INSERT IGNORE INTO `quaydichvu` (`id`, `maQuay`, `tenQuay`, `maPhongBan`, `ngayTao`, `ngayCapNhat`) VALUES
	(1, 'quayso1', 'Quầy Số 1', '1000', '2020-05-17 14:58:42', '2020-05-17 14:58:42'),
	(2, 'quayso2', 'Quầy Số 2', '2000', '2020-05-17 14:58:42', '2020-05-17 14:58:42'),
	(3, 'quayso3', 'Quầy Số 3', '3000', '2020-05-17 15:00:32', '2020-05-17 15:00:44'),
	(4, 'quayso4', 'Quầy Số 4', '4000', '2020-05-17 15:01:05', '2020-05-17 15:01:05'),
	(5, 'quayso5', 'Quầy Số 5', '5000', '2020-05-17 15:01:39', '2020-05-17 15:01:39'),
	(6, 'quayso6', 'Quầy Số 6', '6000', '2020-05-17 15:02:07', '2020-05-17 15:02:07'),
	(7, 'quayso7', 'Quầy Số 7', '7000', '2020-05-17 15:02:31', '2020-05-17 15:02:31'),
	(8, 'quayso8', 'Quầy Số 8', '8000', '2020-05-17 15:02:48', '2020-05-17 15:02:48'),
	(9, 'quayso9', 'Quầy Số 9', '9000', '2020-05-17 15:03:04', '2020-05-17 15:03:04'),
	(10, 'quayso10', 'Quầy Số 10', '10000', '2020-05-17 15:03:41', '2020-05-17 15:03:41'),
	(11, 'quayso11', 'Quầy Số 11', '11000', '2020-05-17 15:04:30', '2020-05-17 15:04:30'),
	(13, 'quayso12', 'Quầy Số 12', '12000', '2020-05-17 15:04:52', '2020-05-17 15:04:52');
/*!40000 ALTER TABLE `quaydichvu` ENABLE KEYS */;

-- Dumping structure for table ubnd_lactanh.sothutu
CREATE TABLE IF NOT EXISTS `sothutu` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `maSoTT` int(50) NOT NULL,
  `maPhong` varchar(50) NOT NULL,
  `maQuay` varchar(50) NOT NULL,
  `flagCall` int(1) NOT NULL DEFAULT 0,
  `flagCalled` int(1) NOT NULL DEFAULT 0,
  `flagNext` int(1) NOT NULL DEFAULT 0,
  `flagWaiting` int(1) NOT NULL DEFAULT 0,
  `ngayTao` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ngayCapNhat` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `maPhong` (`maPhong`),
  KEY `maQuay` (`maQuay`),
  CONSTRAINT `FK_SoTT_PhongBan` FOREIGN KEY (`maPhong`) REFERENCES `phongban` (`maPhongBan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_SoTT_Quay` FOREIGN KEY (`maQuay`) REFERENCES `quaydichvu` (`maQuay`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1589 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table ubnd_lactanh.sothutu: ~29 rows (approximately)
/*!40000 ALTER TABLE `sothutu` DISABLE KEYS */;
INSERT IGNORE INTO `sothutu` (`id`, `maSoTT`, `maPhong`, `maQuay`, `flagCall`, `flagCalled`, `flagNext`, `flagWaiting`, `ngayTao`, `ngayCapNhat`) VALUES
	(1560, 5001, '5000', 'quayso5', 1, 1, 1, 0, '2021-10-03 17:01:59', '2021-10-03 17:01:59'),
	(1561, 5002, '5000', 'quayso5', 1, 1, 1, 0, '2021-10-03 17:02:08', '2021-10-03 17:02:08'),
	(1562, 5003, '5000', 'quayso5', 1, 0, 1, 1, '2021-10-03 17:02:08', '2021-10-03 17:02:08'),
	(1563, 5004, '5000', 'quayso5', 0, 0, 0, 0, '2021-10-03 10:46:17', '2021-10-03 10:46:17'),
	(1564, 4001, '4000', 'quayso4', 1, 1, 1, 0, '2021-10-03 16:57:56', '2021-10-03 16:57:56'),
	(1565, 3001, '3000', 'quayso3', 1, 1, 1, 0, '2021-10-03 16:57:45', '2021-10-03 16:57:45'),
	(1566, 2001, '2000', 'quayso2', 1, 1, 1, 0, '2021-10-03 16:57:29', '2021-10-03 16:57:29'),
	(1567, 1001, '1000', 'quayso1', 1, 1, 1, 0, '2021-10-03 16:57:19', '2021-10-03 16:57:19'),
	(1568, 5005, '5000', 'quayso5', 0, 0, 0, 0, '2021-10-03 10:46:31', '2021-10-03 10:46:31'),
	(1569, 4002, '4000', 'quayso4', 1, 0, 1, 1, '2021-10-03 16:57:56', '2021-10-03 16:57:56'),
	(1570, 3002, '3000', 'quayso3', 1, 0, 1, 1, '2021-10-03 16:57:45', '2021-10-03 16:57:45'),
	(1571, 2002, '2000', 'quayso2', 1, 0, 1, 1, '2021-10-03 16:57:29', '2021-10-03 16:57:29'),
	(1572, 1002, '1000', 'quayso1', 1, 0, 1, 1, '2021-10-03 16:57:19', '2021-10-03 16:57:19'),
	(1573, 1003, '1000', 'quayso1', 0, 0, 0, 0, '2021-10-03 16:52:21', '2021-10-03 16:52:21'),
	(1574, 2003, '2000', 'quayso2', 0, 0, 0, 0, '2021-10-03 16:52:23', '2021-10-03 16:52:23'),
	(1575, 3003, '3000', 'quayso3', 0, 0, 0, 0, '2021-10-03 16:52:25', '2021-10-03 16:52:25'),
	(1576, 4003, '4000', 'quayso4', 0, 0, 0, 0, '2021-10-03 16:52:27', '2021-10-03 16:52:27'),
	(1577, 5006, '5000', 'quayso5', 0, 0, 0, 0, '2021-10-03 16:52:29', '2021-10-03 16:52:29'),
	(1578, 5007, '5000', 'quayso5', 0, 0, 0, 0, '2021-10-03 16:52:31', '2021-10-03 16:52:31'),
	(1579, 1001, '1000', 'quayso1', 1, 1, 1, 0, '2021-10-04 11:51:08', '2021-10-04 11:51:08'),
	(1580, 1002, '1000', 'quayso1', 1, 0, 1, 1, '2021-10-04 11:51:08', '2021-10-04 11:51:08'),
	(1581, 2001, '2000', 'quayso2', 0, 0, 0, 0, '2021-10-04 11:50:19', '2021-10-04 11:50:19'),
	(1582, 2002, '2000', 'quayso2', 0, 0, 0, 0, '2021-10-04 11:50:21', '2021-10-04 11:50:21'),
	(1583, 3001, '3000', 'quayso3', 0, 0, 0, 0, '2021-10-04 11:50:23', '2021-10-04 11:50:23'),
	(1584, 3002, '3000', 'quayso3', 0, 0, 0, 0, '2021-10-04 11:50:24', '2021-10-04 11:50:24'),
	(1585, 4001, '4000', 'quayso4', 0, 0, 0, 0, '2021-10-04 11:50:26', '2021-10-04 11:50:26'),
	(1586, 4002, '4000', 'quayso4', 0, 0, 0, 0, '2021-10-04 11:50:27', '2021-10-04 11:50:27'),
	(1587, 5001, '5000', 'quayso5', 1, 1, 1, 0, '2021-10-04 11:51:25', '2021-10-04 11:51:25'),
	(1588, 5002, '5000', 'quayso5', 1, 0, 1, 1, '2021-10-04 11:51:25', '2021-10-04 11:51:25');
/*!40000 ALTER TABLE `sothutu` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
