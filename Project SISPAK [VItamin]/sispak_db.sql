-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.1.37-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5442
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for sispak_db
DROP DATABASE IF EXISTS `sispak_db`;
CREATE DATABASE IF NOT EXISTS `sispak_db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `sispak_db`;

-- Dumping structure for table sispak_db.tabelgejala
DROP TABLE IF EXISTS `tabelgejala`;
CREATE TABLE IF NOT EXISTS `tabelgejala` (
  `kodeGejala` char(7) NOT NULL,
  `namaGejala` char(23) DEFAULT NULL,
  PRIMARY KEY (`kodeGejala`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table sispak_db.tabelgejala: ~29 rows (approximately)
/*!40000 ALTER TABLE `tabelgejala` DISABLE KEYS */;
INSERT INTO `tabelgejala` (`kodeGejala`, `namaGejala`) VALUES
	('G0001', 'MATA RABUN SENJA'),
	('G0002', 'NAFSU MAKAN BERKURANG'),
	('G0003', 'BIBIR PECAH-PECAH'),
	('G0004', 'KULIT TIDAK SEHAT'),
	('G0005', 'SARIAWAN'),
	('G0006', 'GANGGUAN PERNAFASAN'),
	('G0007', 'MUDAH CAPE'),
	('G0008', 'KERUSAKAN GIGI'),
	('G0009', 'BERI-BERI'),
	('G0010', 'IRAMA JANTUNG TIDAK NOR'),
	('G0011', 'DEPRESI'),
	('G0012', 'TIDAK TAHAN TERHADAP CA'),
	('G0013', 'BADAN LEMAH'),
	('G0014', 'DIARE'),
	('G0015', 'GANGGUAN PENCERNAAN'),
	('G0016', 'MUNTAH-MUNTAH'),
	('G0017', 'OTOT MUDAH KERAM'),
	('G0018', 'DAYA TAHAN TUBUH LEMAH'),
	('G0019', 'KESEMUTAN'),
	('G0020', 'OTOT KEJANG-KEJANG'),
	('G0021', 'RAMBUT CEPAT BERUBAN'),
	('G0022', 'SUSAH TIDUR'),
	('G0023', 'SAKIT KEPALA'),
	('G0024', 'GUSI BERDARAH'),
	('G0025', 'NYERI PADA PERSENDIAN'),
	('G0026', 'NAFAS PENDEK'),
	('G0027', 'RAMBUT RONTOK'),
	('G0028', 'KURANG DARAH'),
	('G0029', 'LUKA SUSAH SEMBUH');
/*!40000 ALTER TABLE `tabelgejala` ENABLE KEYS */;

-- Dumping structure for table sispak_db.tabelpenyakit
DROP TABLE IF EXISTS `tabelpenyakit`;
CREATE TABLE IF NOT EXISTS `tabelpenyakit` (
  `kodePenyakit` varchar(6) NOT NULL,
  `namaPenyakit` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`kodePenyakit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table sispak_db.tabelpenyakit: ~11 rows (approximately)
/*!40000 ALTER TABLE `tabelpenyakit` DISABLE KEYS */;
INSERT INTO `tabelpenyakit` (`kodePenyakit`, `namaPenyakit`) VALUES
	('P0001', 'KURANG VITAMIN A'),
	('P0002', 'KURANG VITAMIN B1'),
	('P0003', 'KURANG VITAMIN B2'),
	('P0004', 'KURANG VITAMIN B3'),
	('P0005', 'KURANG VITAMIN B5'),
	('P0006', 'KURANG VITAMIN B6'),
	('P0007', 'KURANG VITAMIN B12'),
	('P0008', 'KURANG VITAMIN C'),
	('P0009', 'KURANG VITAMIN D'),
	('P0010', 'KURANG VITAMIN E'),
	('P0011', 'KURANG VITAMIN K');
/*!40000 ALTER TABLE `tabelpenyakit` ENABLE KEYS */;

-- Dumping structure for table sispak_db.tabelpertanyaan
DROP TABLE IF EXISTS `tabelpertanyaan`;
CREATE TABLE IF NOT EXISTS `tabelpertanyaan` (
  `kodePertanyaan` varchar(6) NOT NULL,
  `Pertanyaan` varchar(50) NOT NULL,
  PRIMARY KEY (`kodePertanyaan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table sispak_db.tabelpertanyaan: ~29 rows (approximately)
/*!40000 ALTER TABLE `tabelpertanyaan` DISABLE KEYS */;
INSERT INTO `tabelpertanyaan` (`kodePertanyaan`, `Pertanyaan`) VALUES
	('T0001', 'Apakah anda mengalami rabun senja?'),
	('T0002', 'Apa anda merasa nafsu makan berkurang?'),
	('T0003', 'Apa anda merasa bibir pecah-pecah?'),
	('T0004', 'Apa anda merasa kulit tidak sehat?'),
	('T0005', 'Apa anda merasa sariawan?'),
	('T0006', 'Apakah anda merasa gangguan pernafasan?'),
	('T0007', 'Apakah anda merasa mudah cape?'),
	('T0008', 'Apakah anda mengalami kerusakan gigi?'),
	('T0009', 'Apakah anda mengalami beri-beri?'),
	('T0010', 'Apakah anda merasakan irama jantung tidak normal?'),
	('T0011', 'Apakah anda merasa depresi?'),
	('T0012', 'Apakah anda tidak tahan terhadap cahaya?'),
	('T0013', 'Apakah anda badan terasa lemah?'),
	('T0014', 'Apakah anda mengalami diare?'),
	('T0015', 'Apakah anda mengalami gangguan pencernaan?'),
	('T0016', 'Apakah anda mengalami muntah-muntah?'),
	('T0017', 'Apakah otot anda mudah keram?'),
	('T0018', 'Apakah daya tahan tubuh anda lemah?'),
	('T0019', 'Apakah anda mengalami kesemutan?'),
	('T0020', 'Apakah anda merasakan otot kejang-kejang?'),
	('T0021', 'Apakah rambut anda cepat beruban?'),
	('T0022', 'Apakah anda susah tidur?'),
	('T0023', 'Apakah anda merasakan sakit kepala?'),
	('T0024', 'Apakah gusi anda berdarah?'),
	('T0025', 'Apakah anda mengalami nyeri pada persendian?'),
	('T0026', 'Apakah anda merasakan nafas pendek?'),
	('T0027', 'Apakah anda mengalami rambut rontok?'),
	('T0028', 'Apakah anda kurang darah?'),
	('T0029', 'Apakah luka anda kurang sembuh?');
/*!40000 ALTER TABLE `tabelpertanyaan` ENABLE KEYS */;

-- Dumping structure for table sispak_db.tabelrule
DROP TABLE IF EXISTS `tabelrule`;
CREATE TABLE IF NOT EXISTS `tabelrule` (
  `kodeRule` varchar(6) NOT NULL,
  `kodePertanyaan1` varchar(50) NOT NULL,
  `kodePenyakit` varchar(6) NOT NULL,
  KEY `kodeRule` (`kodeRule`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table sispak_db.tabelrule: ~11 rows (approximately)
/*!40000 ALTER TABLE `tabelrule` DISABLE KEYS */;
INSERT INTO `tabelrule` (`kodeRule`, `kodePertanyaan1`, `kodePenyakit`) VALUES
	('R0001', 'T0001, T0002, T0004, T0006, T0008', 'P0001'),
	('R0002', 'T0002, T0007, T0009, T0010, T0011', 'P0002'),
	('R0003', 'T0003, T0011, T0012', 'P0003'),
	('R0004', 'T0004, T0005, T0011, T0013, T0014,T0015,T0016,T001', 'P0004'),
	('R0005', 'T0004, T0006,T0013,T0016,T0019,T0020,T0021,T0022,T', 'P0005'),
	('R0006', 'T0004, T0013, T0018, T0020, T0022', 'P0006'),
	('R0007', 'T0007, T0015', 'P0007'),
	('R0008', 'T0002, T0004, T0005, T0007, T0017, T0024, T0025, T', 'P0008'),
	('R0009', 'T0008, T0020', 'P0009'),
	('R0010', 'T0028', 'P0010'),
	('R0011', 'T0029', 'P0011');
/*!40000 ALTER TABLE `tabelrule` ENABLE KEYS */;

-- Dumping structure for table sispak_db.user
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `idUser` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `user` varchar(50) NOT NULL,
  `pass` char(30) NOT NULL,
  `jenis` char(1) NOT NULL,
  PRIMARY KEY (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Dumping data for table sispak_db.user: ~4 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`idUser`, `nama`, `email`, `user`, `pass`, `jenis`) VALUES
	(1, 'Fadly faturrohman', 'fatur@gmail.com', 'fdly', '123456', 'a'),
	(12, 'fadlan', 'fadlan@gmail.com', 'fad', '123456', 'a'),
	(13, 'JohnJohn', 'john@gmail.com', 'john123', '123456', 'u');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
