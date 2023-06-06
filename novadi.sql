-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 06, 2023 at 04:04 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gprojekts`
--

-- --------------------------------------------------------

--
-- Table structure for table `novadi`
--

DROP TABLE IF EXISTS `novadi`;
CREATE TABLE IF NOT EXISTS `novadi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `path` varchar(254) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `novadi`
--

INSERT INTO `novadi` (`id`, `name`, `path`) VALUES
(1, 'Ādažu', 'gerboni\\novads\\adazu.png'),
(2, 'Aizkraukles', 'gerboni\\novads\\aizkraukles.png'),
(3, ' Alūksnes', 'gerboni\\novads\\aluksnes.png'),
(4, 'Aukšdaugavas', 'gerboni\\novads\\auksdaugavas.png'),
(5, 'Balvu', 'gerboni\\novads\\balvu.png'),
(6, 'Bauskas', 'gerboni\\novads\\bauskas.png'),
(7, 'Cēsu', 'gerboni\\novads\\cesu.png'),
(8, 'Dienvidkurzemes', 'gerboni\\novads\\dienvidkurzemes.png'),
(9, 'Dobeles', 'gerboni\\novads\\dobeles.png'),
(10, 'Gulbenes', 'gerboni\\novads\\gulbenes.png'),
(11, 'Jēkabpils', 'gerboni\\novads\\jekabpils.png'),
(12, 'Jelgavas', 'gerboni\\novads\\jelgavas.png'),
(13, 'Krāslavas', 'gerboni\\novads\\kraslavas.png'),
(14, 'Kuldīgas', 'gerboni\\novads\\kuldigas.png'),
(15, 'Ķekavas', 'gerboni\\novads\\kekavas.png'),
(16, 'Limbažu', 'gerboni\\novads\\limbazu.png'),
(17, 'Līvānu', 'gerboni\\novads\\livanu.png'),
(18, 'Ludzas', 'gerboni\\novads\\ludzas.png'),
(19, 'Madonas', 'gerboni\\novads\\madonas.png'),
(20, 'Mārupes', 'gerboni\\novads\\marupes.png'),
(21, 'Ogres', 'gerboni\\novads\\ogres.png'),
(22, 'Olaines', 'gerboni\\novads\\olaines.png'),
(23, 'Preiļu', 'gerboni\\novads\\preilu.png'),
(24, 'Rēzeknes', 'gerboni\\novads\\rezeknes.png'),
(25, 'Ropažu', 'gerboni\\novads\\ropazu.png'),
(26, 'Salaspils', 'gerboni\\novads\\salaspils.png'),
(27, 'Saldus', 'gerboni\\novads\\saldus.png'),
(28, 'Saulkrastu', 'gerboni\\novads\\saulkrastu.png'),
(29, 'Siguldas', 'gerboni\\novads\\siguldas.png'),
(30, 'Smiltenes', 'gerboni\\novads\\smiltenes.png'),
(31, 'Talsu', 'gerboni\\novads\\talsu.png'),
(32, 'Tukuma', 'gerboni\\novads\\tukuma.png'),
(33, 'Valkas', 'gerboni\\novads\\valkas.png'),
(34, 'Valmieras', 'gerboni\\novads\\valmieras.png'),
(35, 'Varakļānu', 'gerboni\\novads\\varaklanu.png'),
(36, 'Ventspils', 'gerboni\\novads\\ventspils.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
