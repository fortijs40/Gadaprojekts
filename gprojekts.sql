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
  `name` varchar(50) NOT NULL,
  `year` int NOT NULL,
  `path` varchar(254) NOT NULL,
  `fact` varchar(254) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1;

--
-- Dumping data for table `pilsetas`
--

INSERT INTO `pilsetas` (`name`, `year`, `path`, `fact`) VALUES
('Ainaži', 1925, 'gerboni/pilseta/ainazi.png', 'Pilsēta ir šarmanta piejūras mazpilsēta ar garu vēsturi, kuru caurvij jūras tuvums, jūrniecība un tās nestais spožums.'),
('Aizkraukle', 1998, 'gerboni/pilseta/aizkraukle.png', ''),
('Aloja', 1998, 'gerboni/pilseta/aloja.png', ''),
('Aizpute', 1925, 'gerboni/pilseta/aizpute.png', ''),
('Aknīste', 1997, 'gerboni/pilseta/akniste.png', ''),
('Ventspils', 1925, 'gerboni/pilseta/ventspils.png', ''),
('Valmiera', 1925, 'gerboni/pilseta/valmiera.png', ''),
('Rīga', 1925, 'gerboni/pilseta/riga.png', ''),
('Rēzekne', 1925, 'gerboni/pilseta/rezekne.png', ''),
('Ogre', 1938, 'gerboni/pilseta/ogre.png', ''),
('Liepāja', 1925, 'gerboni/pilseta/liepaja.png', ''),
('Jūrmala', 1925, 'gerboni/pilseta/jurmala.png', ''),
('Jelgava', 1925, 'gerboni/pilseta/jelgava.png', ''),
('Jēkabpils', 1925, 'gerboni/pilseta/jekabpils.png', ''),
('Daugavpils', 1925, 'gerboni/pilseta/daugavpils.png', ''),
('Zilupe', 1938, 'gerboni/pilseta/zilupe.png', ''),
('Viļāni', 1938, 'gerboni/pilseta/vilani.png', ''),
('Viļaka', 1996, 'gerboni/pilseta/vilaka.png', ''),
('Viesīte', 1938, 'gerboni/pilseta/viesite.png', ''),
('Varakļāni', 1938, 'gerboni/pilseta/varaklani.png', ''),
('Vangaži', 1995, 'gerboni/pilseta/vangazi.png', ''),
('Valka', 1925, 'gerboni/pilseta/valka.png', ''),
('Valdemārpils', 1925, 'gerboni/pilseta/valdemarpils.png', ''),
('Tukums', 1925, 'gerboni/pilseta/tukums.png', ''),
('Talsi', 1925, 'gerboni/pilseta/talsi.png', ''),
('Subate', 1925, 'gerboni/pilseta/subate.png', ''),
('Strenči', 1938, 'gerboni/pilseta/strenci.png', ''),
('Stende', 2000, 'gerboni/pilseta/stende.png', ''),
('Alūksne', 1925, 'gerboni/pilseta/aluksne.png', ''),
('Ape', 1938, 'gerboni/pilseta/ape.png', ''),
('Auce', 1938, 'gerboni/pilseta/auce.png', ''),
('Baldone', 1999, 'gerboni/pilseta/baldone.png', ''),
('Baloži', 1997, 'gerboni/pilseta/balozi.png', ''),
('Balvi', 1938, 'gerboni/pilseta/balvi.png', ''),
('Bauska', 1925, 'gerboni/pilseta/bauska.png', ''),
('Brocēni', 2000, 'gerboni/pilseta/broceni.png', ''),
('Cēsis', 1925, 'gerboni/pilseta/cesis.png', ''),
('Cesvaine', 1997, 'gerboni/pilseta/cesvaine.png', ''),
('Dagda', 1997, 'gerboni/pilseta/dagda.png', ''),
('Dobele', 1925, 'gerboni/pilseta/dobele.png', ''),
('Durbe', 1925, 'gerboni/pilseta/durbe.png', ''),
('Grobiņa', 1925, 'gerboni/pilseta/grobina.png', ''),
('Gulbene', 1938, 'gerboni/pilseta/gulbene.png', ''),
('Ikšķile', 1996, 'gerboni/pilseta/ikskile.png', ''),
('Iecava', 2022, 'gerboni/pilseta/iecava.png', ''),
('Ilūkste', 1925, 'gerboni/pilseta/ilukste.png', ''),
('Jaunjelgava', 1925, 'gerboni/pilseta/jaunjelgava.png', ''),
('Kandava', 1925, 'gerboni/pilseta/kandava.png', ''),
('Kārsava', 1938, 'gerboni/pilseta/karsava.png', ''),
('Krāslava', 1925, 'gerboni/pilseta/kraslava.png', ''),
('Kuldīga', 1938, 'gerboni/pilseta/kuldiga.png', ''),
('Ķegums', 1997, 'gerboni/pilseta/kegums.png', ''),
('Lielvārde', 1998, 'gerboni/pilseta/lielvarde.png', ''),
('Līgatne', 1997, 'gerboni/pilseta/ligatne.png', ''),
('Limbaži', 1925, 'gerboni/pilseta/limbazi.png', ''),
('Līvāni', 1938, 'gerboni/pilseta/livani.png', ''),
('Lubāna', 2000, 'gerboni/pilseta/lubana.png', ''),
('Ludza', 1925, 'gerboni/pilseta/ludza.png', ''),
('Madona', 1938, 'gerboni/pilseta/madona.png', ''),
('Mazsalaca', 1936, 'gerboni/pilseta/mazsalaca.png', ''),
('Olaine', 1998, 'gerboni/pilseta/olaine.png', ''),
('Pāvilosta', 1997, 'gerboni/pilseta/pavilosta.png', ''),
('Piltene', 1925, 'gerboni/pilseta/piltene.png', ''),
('Pļaviņas', 1936, 'gerboni/pilseta/plavinas.png', ''),
('Preiļi', 1938, 'gerboni/pilseta/preili.png', ''),
('Priekule', 1938, 'gerboni/pilseta/priekule.png', ''),
('Rūjiena', 1925, 'gerboni/pilseta/rujiena.png', ''),
('Sabile', 1925, 'gerboni/pilseta/sabile.png', ''),
('Salacgrīva', 1925, 'gerboni/pilseta/salacgriva.png', ''),
('Salaspils', 1996, 'gerboni/pilseta/salaspils.png', ''),
('Saldus', 1925, 'gerboni/pilseta/saldus.png', ''),
('Saulkrasti', 1998, 'gerboni/pilseta/saulkrasti.png', ''),
('Seda', 2002, 'gerboni/pilseta/seda.png', ''),
('Sigulda', 1938, 'gerboni/pilseta/sigulda.png', ''),
('Skrunda', 1998, 'gerboni/pilseta/skrunda.png', ''),
('Smiltene', 1925, 'gerboni/pilseta/smiltene.png', ''),
('Staicele', 1998, 'gerboni/pilseta/staicele.png', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
