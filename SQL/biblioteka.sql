-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2017 m. Vas 11 d. 01:20
-- Server version: 10.0.29-MariaDB
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `etravi_php`
--

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `biblioteka`
--

CREATE TABLE IF NOT EXISTS `biblioteka` (
  `id` tinyint(8) NOT NULL,
  `pavadinimas` text CHARACTER SET utf8 COLLATE utf8_lithuanian_ci,
  `metai` text CHARACTER SET utf8 COLLATE utf8_lithuanian_ci,
  `autoriai` text CHARACTER SET utf8 COLLATE utf8_lithuanian_ci,
  `zanras` text CHARACTER SET utf8 COLLATE utf8_lithuanian_ci
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

--
-- Sukurta duomenų kopija lentelei `biblioteka`
--

INSERT INTO `biblioteka` (`id`, `pavadinimas`, `metai`, `autoriai`, `zanras`) VALUES
(8, 'NepaÅ¾Ä¯stamasis', '2016', 'Sandra Brown', 'Detektyvinis trileris'),
(9, 'GrÄ—jus: â€žPenkiasdeÅ¡imt pilkÅ³ atspalviÅ³â€œ Kristiano akimis', '2016', 'E. L. James', 'Romanas'),
(7, 'Imperatoriaus meiluÅ¾Ä—', '2016', 'Gina ViliÅ«nÄ—', 'Romanas'),
(10, 'DÄ—l mÅ«sÅ³ likimo ir Å¾vaigÅ¾dÄ—s kaltos', '2012', 'John Green', 'Romanas'),
(11, 'Haris Poteris ir prakeiktas vaikas', '2016', 'J.K. Rowling. ', 'Fantastika'),
(12, 'Karas ir Taika', '2016', 'Lev Tolstoj', 'Istorinis romanas'),
(13, 'Popieriniai miestai', '2014', 'John Green', 'Romanas'),
(14, 'DievÅ³ miÅ¡kas', '2013', 'Balys Sruoga', 'Autobiografija'),
(15, '365 prieÅ¾astys mylÄ—ti', '2016', 'Mantvydas Leknickas', 'Poezijos knyga'),
(16, 'VienÄ… vakarÄ… ParyÅ¾iuje', '2016', 'Nicolas Barreau', 'Romanas'),
(17, 'PjÅ«vis', '2015', 'Marc Raabe', 'Detektyvinis trileris'),
(18, 'Aliaskos beieÅ¡kant', '2015', 'John Green', 'Romanas'),
(19, 'Panika', '2014', 'Lauren Oliver', 'Romanas'),
(20, 'DienoraÅ¡tis Ana Frank', '2010', 'Ana Frank', 'IstorinÄ—'),
(21, 'Pereik tiltÄ…, kvaily', '2017', 'VilÄ— vÄ—l', 'Romanas'),
(22, 'Alisa stebuklÅ³ Å¡alyje', '2015', 'Lewis Carroll', 'Fantastika'),
(23, 'AltoriÅ³ Å¡eÅ¡Ä—ly', '2014', 'Vincas Mykolaitis- Putinas', 'Psichologinis romanas'),
(28, 'Balta drobulÄ—', '2013', 'Antanas Å kÄ—ma', 'Romanas'),
(30, 'Metai', '2009', 'Kristijonas Donelaitis', 'Poema'),
(32, 'Baltaragio malÅ«nas', '2008', 'Kazys Boruta', 'Apysaka'),
(36, 'Romeo ir DÅ¾iuljeta', '1595', 'Viljamas Å ekspyras ', 'Tragedija'),
(37, 'Hamletas', '1603', 'Viljamas Å ekspyras ', 'PjesÄ—'),
(38, 'AukÅ¡tujÅ³ Å imoniÅ³ likimas', '2011', 'Ieva SimonaitytÄ—', 'Romanas'),
(40, 'Moteris juodais drabuÅ¾iais', '2016', 'Susan Hill', 'Romanai'),
(41, 'Sprogdintoja', '2016', 'Liza Marklund', 'Romanai'),
(42, 'AÅ¡ ir vÄ—l tavÄ™s ilgiuosi', '2016', 'Kajsa Ingemarsson', 'Romanai'),
(43, 'AÅ¡tuoniasdeÅ¡imt dienÅ³. AuksinÄ—', '2016', 'Vina Jackson', 'Romanai'),
(44, 'Myli, nemyli...', '2016', 'Kajsa Ingemarsson', 'Romanai'),
(45, 'Mano Afrika', '20176', 'Andrius PauliukeviÄius', 'Turizmas'),
(46, 'Ugnies ir ledo kelionÄ—s', '2017', 'Rita Å emelytÄ—, Vytautas Brazauskas', 'Turizmas'),
(47, 'Azija be sienÅ³', '2016', 'Paulius MaÄiuleviÄius, Berta TilmantaitÄ—, Andrius JanÄiauskas', 'Turizmas'),
(48, 'Stilingi egoistai', '2016', 'Jurga JurkeviÄienÄ—', 'Mada'),
(49, 'ParyÅ¾ietÄ—', '2016', 'Ines de la Fressange, Sophie Gachet', 'Mada'),
(50, 'Å trichas. RaÅ¡ymo teorija', '2015', 'Gerrit Noordzij', 'DailÄ—'),
(51, 'MiniatiÅ«ra', '2014', 'Lida MeÅ¡kaitytÄ—', 'DailÄ—'),
(52, 'Å viesa tyloje', '2017', 'Alma littera', 'Fotografija'),
(53, 'Laiko reportaÅ¾ai', '2016', 'Marius Baranauskas', 'Fotografija'),
(54, 'Prisijaukinant VilniÅ³', '2015', 'Edmundas Gedgaudas', 'Fotografija'),
(55, 'Contact', '2010', 'Alphonso Lingis', 'Fotografija'),
(56, 'Jaunojo Å¾vejo ABC', '2016', 'RiÄardas Adamonis', 'Å½vejyba'),
(57, 'Å½uvys', '2010', 'Mindaugas Kirstukas', 'Å½vejyba'),
(58, 'MedÅ¾iotojÅ³ humoras', '2016', 'Kostas Slivskis', 'MedÅ¾ioklÄ—'),
(59, 'DaÅ¾ai ar kraujas?', '2011', 'Zenon Kruczynski', 'MedÅ¾ioklÄ—'),
(60, 'GÄ—liÅ³ pasakos', '2017', 'Laura BalÄas', 'MeilÄ—s romanai'),
(61, 'Nebijok', '2016', 'IndrÄ— VakarÄ—', 'MeilÄ—s romanai'),
(62, 'Juodvilkio dvaras', '2015', 'IndrÄ— VakarÄ—', 'MeilÄ—s romanai'),
(63, 'Å½velk tolyn: tikrasis iÅ¡Å¡Å«kis â€“ pradÄ—ti keistis paÄiam', '2016', 'Javier Iriondo', 'MeilÄ—s romanai'),
(64, 'P. S. vis dar tave myliu', '2016', 'Jenny Han', 'MeilÄ—s romanai'),
(65, 'Daringamo dvaras. PaveldÄ—jimas', '2016', 'Kathryn Taylor', 'MeilÄ—s romanai'),
(66, 'Kol nebuvo tavÄ™s', '2016', 'Judith McNaught', 'MeilÄ—s romanai'),
(67, 'SvajoniÅ³ karalystÄ—', '2016', 'Judith McNaught', 'MeilÄ—s romanai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biblioteka`
--
ALTER TABLE `biblioteka`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `biblioteka`
--
ALTER TABLE `biblioteka`
  MODIFY `id` tinyint(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=68;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
