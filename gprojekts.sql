-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 06, 2023 at 02:48 PM
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
-- Table structure for table `pilsetas`
--

DROP TABLE IF EXISTS `pilsetas`;
CREATE TABLE IF NOT EXISTS `pilsetas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `year` int NOT NULL,
  `path` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `fact` varchar(254) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pilsetas`
--

INSERT INTO `pilsetas` (`id`, `name`, `year`, `path`, `fact`) VALUES
(1, 'Ainaži', 1925, 'gerboni\\pilseta\\ainazi.png', 'Pilsēta ir šarmanta piejūras mazpilsēta ar garu vēsturi, kuru caurvij jūras tuvums, jūrniecība un tās nestais spožums.'),
(2, 'Aizkraukle', 1998, 'gerboni\\pilseta\\aizkraukle.png', ''),
(5, 'Aloja', 1998, 'gerboni\\pilseta\\aloja.png', ''),
(3, 'Aizpute', 1925, 'gerboni\\pilseta\\aizpute.png', ''),
(4, 'Aknīste', 1997, 'gerboni\\pilseta\\akniste.png', ''),
(128, 'Ventspils', 1925, 'gerboni\\pilseta\\ventspils.png', ''),
(127, 'Valmiera', 1925, 'gerboni\\pilseta\\valmiera.png', ''),
(126, 'Rīga', 1925, 'gerboni\\pilseta\\riga.png', ''),
(125, 'Rēzekne', 1925, 'gerboni\\pilseta\\rezekne.png', ''),
(124, 'Ogre', 1938, 'gerboni\\pilseta\\ogre.png', ''),
(123, 'Liepāja', 1925, 'gerboni\\pilseta\\liepaja.png', ''),
(122, 'Jūrmala', 1925, 'gerboni\\pilseta\\jurmala.png', ''),
(121, 'Jelgava', 1925, 'gerboni\\pilseta\\jelgava.png', ''),
(120, 'Jēkabpils', 1925, 'gerboni\\pilseta\\jekabpils.png', ''),
(119, 'Daugavpils', 1925, 'gerboni\\pilseta\\daugavpils.png', ''),
(118, 'Zilupe', 1938, 'gerboni\\pilseta\\zilupe.png', ''),
(117, 'Viļāni', 1938, 'gerboni\\pilseta\\vilani.png', ''),
(116, 'Viļaka', 1996, 'gerboni\\pilseta\\vilaka.png', ''),
(115, 'Viesīte', 1938, 'gerboni\\pilseta\\viesite.png', ''),
(114, 'Varakļāni', 1938, 'gerboni\\pilseta\\varaklani.png', ''),
(113, 'Vangaži', 1995, 'gerboni\\pilseta\\vangazi.png', ''),
(112, 'Valka', 1925, 'gerboni\\pilseta\\valka.png', ''),
(111, 'Valdemārpils', 1925, 'gerboni\\pilseta\\valdemarpils.png', ''),
(110, 'Tukums', 1925, 'gerboni\\pilseta\\tukums.png', ''),
(109, 'Talsi', 1925, 'gerboni\\pilseta\\talsi.png', ''),
(108, 'Subate', 1925, 'gerboni\\pilseta\\subate.png', ''),
(107, 'Strenči', 1938, 'gerboni\\pilseta\\strenci.png', ''),
(106, 'Stende', 2000, 'gerboni\\pilseta\\stende.png', ''),
(57, 'Alūksne', 1925, 'gerboni\\pilseta\\aluksne.png', ''),
(58, 'Ape', 1938, 'gerboni\\pilseta\\ape.png', ''),
(59, 'Auce', 1938, 'gerboni\\pilseta\\auce.png', ''),
(60, 'Baldone', 1999, 'gerboni\\pilseta\\baldone.png', ''),
(61, 'Baloži', 1997, 'gerboni\\pilseta\\balozi.png', ''),
(62, 'Balvi', 1938, 'gerboni\\pilseta\\balvi.png', ''),
(63, 'Bauska', 1925, 'gerboni\\pilseta\\bauska.png', ''),
(64, 'Brocēni', 2000, 'gerboni\\pilseta\\broceni.png', ''),
(65, 'Cēsis', 1925, 'gerboni\\pilseta\\cesis.png', ''),
(66, 'Cesvaine', 1997, 'gerboni\\pilseta\\cesvaine.png', ''),
(67, 'Dagda', 1997, 'gerboni\\pilseta\\dagda.png', ''),
(68, 'Dobele', 1925, 'gerboni\\pilseta\\dobele.png', ''),
(69, 'Durbe', 1925, 'gerboni\\pilseta\\durbe.png', ''),
(70, 'Grobiņa', 1925, 'gerboni\\pilseta\\grobina.png', ''),
(71, 'Gulbene', 1938, 'gerboni\\pilseta\\gulbene.png', ''),
(72, 'Ikšķile', 1996, 'gerboni\\pilseta\\ikskile.png', ''),
(73, 'Iecava', 2022, 'gerboni\\pilseta\\iecava.png', ''),
(74, 'Ilūkste', 1925, 'gerboni\\pilseta\\ilukste.png', ''),
(75, 'Jaunjelgava', 1925, 'gerboni\\pilseta\\jaunjelgava.png', ''),
(76, 'Kandava', 1925, 'gerboni\\pilseta\\kandava.png', ''),
(77, 'Kārsava', 1938, 'gerboni\\pilseta\\karsava.png', ''),
(78, 'Krāslava', 1925, 'gerboni\\pilseta\\kraslava.png', ''),
(79, 'Kuldīga', 1938, 'gerboni\\pilseta\\kuldiga.png', ''),
(80, 'Ķegums', 1997, 'gerboni\\pilseta\\kegums.png', ''),
(81, 'Lielvārde', 1998, 'gerboni\\pilseta\\lielvarde.png', ''),
(82, 'Līgatne', 1997, 'gerboni\\pilseta\\ligatne.png', ''),
(83, 'Limbaži', 1925, 'gerboni\\pilseta\\limbazi.png', ''),
(84, 'Līvāni', 1938, 'gerboni\\pilseta\\livani.png', ''),
(85, 'Lubāna', 2000, 'gerboni\\pilseta\\lubana.png', ''),
(86, 'Ludza', 1925, 'gerboni\\pilseta\\ludza.png', ''),
(87, 'Madona', 1938, 'gerboni\\pilseta\\madona.png', ''),
(88, 'Mazsalaca', 1936, 'gerboni\\pilseta\\mazsalaca.png', ''),
(89, 'Olaine', 1998, 'gerboni\\pilseta\\olaine.png', ''),
(90, 'Pāvilosta', 1997, 'gerboni\\pilseta\\pavilosta.png', ''),
(91, 'Piltene', 1925, 'gerboni\\pilseta\\piltene.png', ''),
(92, 'Pļaviņas', 1936, 'gerboni\\pilseta\\plavinas.png', ''),
(93, 'Preiļi', 1938, 'gerboni\\pilseta\\preili.png', ''),
(94, 'Priekule', 1938, 'gerboni\\pilseta\\priekule.png', ''),
(95, 'Rūjiena', 1925, 'gerboni\\pilseta\\rujiena.png', ''),
(96, 'Sabile', 1925, 'gerboni\\pilseta\\sabile.png', ''),
(97, 'Salacgrīva', 1925, 'gerboni\\pilseta\\salacgriva.png', ''),
(98, 'Salaspils', 1996, 'gerboni\\pilseta\\salaspils.png', ''),
(99, 'Saldus', 1925, 'gerboni\\pilseta\\saldus.png', ''),
(100, 'Saulkrasti', 1998, 'gerboni\\pilseta\\saulkrasti.png', ''),
(101, 'Seda', 2002, 'gerboni\\pilseta\\seda.png', ''),
(102, 'Sigulda', 1938, 'gerboni\\pilseta\\sigulda.png', ''),
(103, 'Skrunda', 1998, 'gerboni\\pilseta\\skrunda.png', ''),
(104, 'Smiltene', 1925, 'gerboni\\pilseta\\smiltene.png', ''),
(105, 'Staicele', 1998, 'gerboni\\pilseta\\staicele.png', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
