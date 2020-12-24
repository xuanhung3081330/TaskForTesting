-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.5.8-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table test.actuals
CREATE TABLE IF NOT EXISTS `actuals` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `State` int(11) DEFAULT NULL,
  `ActualPopulation` double DEFAULT NULL,
  `ActualHouseholds` double(22,0) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- Dumping data for table test.actuals: ~22 rows (approximately)
/*!40000 ALTER TABLE `actuals` DISABLE KEYS */;
INSERT INTO `actuals` (`Id`, `State`, `ActualPopulation`, `ActualHouseholds`) VALUES
	(1, 1, 22805514.45, 8523999),
	(2, 4, 13456843.76, 5230874),
	(3, 7, 10150130, 3792196),
	(4, 11, 33888365.75, 12099951),
	(5, 15, 24484837.5, 9108998),
	(6, 21, 16210399.02, 5694196),
	(7, 22, 21466947.42, 8003975),
	(8, 23, 29705785.51, 11087310),
	(9, 28, 7472263.545, 3005417),
	(10, 30, 7483506.737, 2933930),
	(11, 31, 24646725.62, 9322338),
	(12, 32, 6672912.386, 2377811),
	(13, 33, 46579835.5, 17306437),
	(14, 35, 3658415.743, 1529798),
	(15, 36, 35917201.94, 13533553),
	(16, 38, 12289308.7, 5228196),
	(17, 39, 43247561.8, 16742905),
	(18, 44, 73616424.13, 24776558),
	(19, 47, 28999618.8, 11163555),
	(20, 48, 18316996.74, 7248293),
	(21, 49, 10979137.6, 4341126),
	(22, 50, 21884722.8, 8825351);
/*!40000 ALTER TABLE `actuals` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
