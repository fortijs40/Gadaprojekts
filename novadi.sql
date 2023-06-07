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
) ENGINE=MyISAM AUTO_INCREMENT=1;

--
-- Dumping data for table `novadi`
--

INSERT INTO `novadi` (`name`, `path`) VALUES
('Ādažu', 'gerboni/novads/adazu.png'),
('Aizkraukles', 'gerboni/novads/aizkraukles.png'),
('Alūksnes', 'gerboni/novads/aluksnes.png'),
('Augšdaugavas', 'gerboni/novads/augsdaugavas.png'),
('Balvu', 'gerboni/novads/balvu.png'),
('Bauskas', 'gerboni/novads/bauskas.png'),
('Cēsu', 'gerboni/novads/cesu.png'),
('Dienvidkurzemes', 'gerboni/novads/dienvidkurzemes.png'),
('Dobeles', 'gerboni/novads/dobeles.png'),
('Gulbenes', 'gerboni/novads/gulbenes.png'),
('Jēkabpils', 'gerboni/novads/jekabpils.png'),
('Jelgavas', 'gerboni/novads/jelgavas.png'),
('Krāslavas', 'gerboni/novads/kreslavas.png'),
('Kuldīgas', 'gerboni/novads/kuldigas.png'),
('Ķekavas', 'gerboni/novads/kekavas.png'),
('Limbažu', 'gerboni/novads/limbazu.png'),
('Līvānu', 'gerboni/novads/livanu.png'),
('Ludzas', 'gerboni/novads/ludzas.png'),
('Madonas', 'gerboni/novads/madonas.png'),
('Mārupes', 'gerboni/novads/marupes.png'),
('Ogres', 'gerboni/novads/ogres.png'),
('Olaines', 'gerboni/novads/olaines.png'),
('Preiļu', 'gerboni/novads/preilu.png'),
('Rēzeknes', 'gerboni/novads/rezeknes.png'),
('Ropažu', 'gerboni/novads/ropazu.png'),
('Salaspils', 'gerboni/novads/salaspils.png'),
('Saldus', 'gerboni/novads/saldus.png'),
('Saulkrastu', 'gerboni/novads/saulkrastu.png'),
('Siguldas', 'gerboni/novads/siguldas.png'),
('Smiltenes', 'gerboni/novads/smiltenes.png'),
('Talsu', 'gerboni/novads/talsu.png'),
('Tukuma', 'gerboni/novads/tukuma.png'),
('Valkas', 'gerboni/novads/valkas.png'),
('Valmieras', 'gerboni/novads/valmieras.png'),
('Varakļānu', 'gerboni/novads/varaklanu.png'),
('Ventspils', 'gerboni/novads/ventspils.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
