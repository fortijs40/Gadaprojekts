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
('Aizkraukle', 1998, 'gerboni/pilseta/aizkraukle.png', 'Šajā pilsētā ir svarīgs transporta mezgls, caur to iet divas nozīmīgas dzelzceļa līnijas, kas savieno vairākas Latvijas pilsētas.'),
('Aloja', 1998, 'gerboni/pilseta/aloja.png', 'Šī pilsēta ir pazīstama ar savu skaisto pludmali, kas ir populāra gan vietējiem iedzīvotājiem, gan tūristiem.'),
('Aizpute', 1925, 'gerboni/pilseta/aizpute.png', 'Šīs pilsētas centrs ir iekļauts Latvijas kultūras pieminekļu sarakstā un šeit var apskatīt vēsturiskas ēkas.'),
('Aknīste', 1997, 'gerboni/pilseta/akniste.png', 'Neliela pilsēta Latvijas dienvidaustrumos, pazīstama ar savu vēsturisko pilsētas centru.'),
('Ventspils', 1925, 'gerboni/pilseta/ventspils.png', 'Šī ir lielākā pilsēta Kurzemē, un tā atrodas pie Baltijas jūras.'),
('Valmiera', 1925, 'gerboni/pilseta/valmiera.png', 'Pilsēta ir populāra kultūras pasākumu un festivālu norises vieta, un šeit notiek daudzi sporta pasākumi un sacensības.'),
('Rīga', 1925, 'gerboni/pilseta/riga.png', 'bro ja nezini kas šis, this game aint for you /s'),
('Rēzekne', 1925, 'gerboni/pilseta/rezekne.png', 'Pilsēta pazīstama ar savu seno vēsturi un kultūras mantojumu, un tā ir svarīgs kultūras un izglītības centrs Latgalē.'),
('Ogre', 1938, 'gerboni/pilseta/ogre.png', 'Pilsēta ir ieskauta zaļajās mežu malās un tai ir vēsturiska pilsētas centra daļa, kas ir iekļauta Latvijas kultūras pieminekļu sarakstā.'),
('Liepāja', 1925, 'gerboni/pilseta/liepaja.png', 'Pilsētā notiek daudz mūzikas un kultūras pasākumu, kā arī ir mājvieta vienam no prestižākajiem orķestriem Latvijā.'),
('Jūrmala', 1925, 'gerboni/pilseta/jurmala.png', 'Populāra kūrortpilsēta, kas atrodas pie Rīgas jūras līča.'),
('Jelgava', 1925, 'gerboni/pilseta/jelgava.png', 'Pilsēta Zemgalē, kas pazīstama ar savu seno vēsturi, kā arī kā nozīmīgs kultūras un izglītības centrs.'),
('Jēkabpils', 1925, 'gerboni/pilseta/jekabpils.png', 'Pilsēta zināma ar savu vēsturisko dzelzceļa staciju, kas tika uzbūvēta 1861. gadā un ir viena no vecākajām dzelzceļa stacijām Baltijā.'),
('Daugavpils', 1925, 'gerboni/pilseta/daugavpils.png', 'Pilsētā atrodas Marka Rothko mākslas centrs, kas ir viena no galvenajām mākslas iestādēm Latvijā.'),
('Zilupe', 1938, 'gerboni/pilseta/zilupe.png', 'Šī ir mazpilsēta ar savu pašvaldības statusu, kurā dzīvo ~3000 iedzīvotāju.'),
('Viļāni', 1938, 'gerboni/pilseta/vilani.png', 'Mazpilsēta Latvijas Austrumos, Zilupes upes krastos, un tā ir viena no lielākajām apdzīvotajām vietām Latgales reģionā.'),
('Viļaka', 1996, 'gerboni/pilseta/vilaka.png', 'Pilsēta Latvijas galējos ziemeļaustrumos, Latgalē, Kiras upes krastā.'),
('Viesīte', 1938, 'gerboni/pilseta/viesite.png', 'Mazpilsēta Latvijas Austrumos, Vidzemes reģionā. Tā atrodas pašā Vidzemes sirdī un ir pazīstama ar savu skaisto apkārtni un ainavu, kā arī kā nozīmīgs kultūras un tūrisma centrs.'),
('Varakļāni', 1938, 'gerboni/pilseta/varaklani.png', 'Sena Latgales pilsētiņa, ar bagātīgu kultūrvēsturisko mantojumu. Pirmo reizi vēstures avotos minēta 1483.gadā.'),
('Vangaži', 1995, 'gerboni/pilseta/vangazi.png', 'Senatnē veidojusies kā sīktirgotāju un amatnieku apmetne, kas vēlāk kļuvusi par nozīmīgu šaursliežu dzelzceļa mezglu Latvijas mērogā, Sēlijas vidienē.'),
('Valka', 1925, 'gerboni/pilseta/valka.png', 'Tā ir viena no lielākajām pilsētām Vidzemē un atrodas tuvu Igaunijas robežai.'),
('Valdemārpils', 1925, 'gerboni/pilseta/valdemarpils.png', 'Nosaukta pēc vietējās Livonijas ordeņa muižnieka, kurš bija pilsētas dibinātājs.'),
('Tukums', 1925, 'gerboni/pilseta/tukums.png', 'Dibināta jau 13. gadsimtā un ir viena no senākajām pilsētām Latvijā.'),
('Talsi', 1925, 'gerboni/pilseta/talsi.png', 'Pilsēta ir pazīstama kā "deviņu pakalnu pilsēta".'),
('Subate', 1925, 'gerboni/pilseta/subate.png', 'Sena Sēlijas pilsēta Augšdaugavas novada ziemeļrietumos pie Latvijas—Lietuvas robežas.'),
('Strenči', 1938, 'gerboni/pilseta/strenci.png', 'Slavena ar savu viduslaiku baznīcu, kas celta apmēram 1230. gadā un ir viena no labāk saglabātajām viduslaiku baznīcām Latvijā. '),
('Stende', 2000, 'gerboni/pilseta/stende.png', 'Pilsētas vēstures mantojums ir ievērojams, un tās centrā atrodas vairākas vēsturiskas ēkas, tostarp Sv. Jēkaba baznīca, kas celta 1750. gadā.'),
('Alūksne', 1925, 'gerboni/pilseta/aluksne.png', 'Visaugstāk esošā Latvijas pilsēta, kas atrodas aptuveni 200 metrus virs jūras līmeņa.'),
('Ape', 1938, 'gerboni/pilseta/ape.png', 'Pilsēta Vidzemē, Latvijas ziemeļaustrumos, tuvu Igaunijas robežai, kurai cauri tek Vaidava.'),
('Auce', 1938, 'gerboni/pilseta/auce.png', 'Dobeles novada pilsēta Latvijā, kuras pils ir viens no populārākajiem historicisma stila arhitektūras pieminekļiem Latvijā.'),
('Baldone', 1999, 'gerboni/pilseta/baldone.png', 'Vēsturiski ietilpusi Zemgalē, bet kopš 1923. gada, kad šīs pilsētas pagastu iekļāva Rīgas apriņķī — Vidzemē.'),
('Baloži', 1997, 'gerboni/pilseta/balozi.png', 'Pilsēta Ķekavas novadā. Tā ir Rīgas piepilsēta, tikai 12 km attālumā no galvaspilsētas centra un 8 km attālumā no Ķekavas.'),
('Balvi', 1938, 'gerboni/pilseta/balvi.png', 'Par pilsētas simbolu šīs pilsētas iedzīvotāji uzskata strūklaku „Ūdensroze” skvērā.'),
('Bauska', 1925, 'gerboni/pilseta/bauska.png', 'Vēsturiska pilsēta, kas atrodas pie Mūsas un Lielupes krustpunkta.'),
('Brocēni', 2000, 'gerboni/pilseta/broceni.png', 'Pilsēta Saldus novadā, izvietojusies Cieceres ezera ziemeļaustrumu krastā.'),
('Cēsis', 1925, 'gerboni/pilseta/cesis.png', 'Pilsēta ir Latvijas karoga dzimtene.'),
('Cesvaine', 1997, 'gerboni/pilseta/cesvaine.png', 'Pilsētā atrodas slavenā latviešu dzejnieka Kārļa Bieziņa kapa piemineklis.'),
('Dagda', 1997, 'gerboni/pilseta/dagda.png', 'Pilsēta atrodas Latgales augstienes austrumu nogāzē, pie Narūtas upītes.'),
('Dobele', 1925, 'gerboni/pilseta/dobele.png', 'Pilsētā atrodas vairākas vēsturiskas vietas, kā pilsdrupas, kas bija pēdējā senlatviešu pils.'),
('Durbe', 1925, 'gerboni/pilseta/durbe.png', 'Latvijas mazākā pilsēta pēc iedzīvotāju skaita.'),
('Grobiņa', 1925, 'gerboni/pilseta/grobina.png', 'Pilsēta ir senākā rakstos precīzi norādītā apdzīvotā vieta Latvijas teritorijā. Tā atrodas Kurzemes rietumos.'),
('Gulbene', 1938, 'gerboni/pilseta/gulbene.png', 'Šīs pilsētas novads ir lielākais novads Latvijā, kas aizņem aptuveni 13% no valsts teritorijas.'),
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
