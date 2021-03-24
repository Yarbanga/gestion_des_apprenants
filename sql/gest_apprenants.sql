-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 18, 2020 at 11:00 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gest_apprenants`
--

-- --------------------------------------------------------

--
-- Table structure for table `apprenant`
--

CREATE TABLE `apprenant` (
  `rang` int(11) NOT NULL,
  `tel_tuteur` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `date_de_naissance` varchar(255) DEFAULT NULL,
  `ville_origine` varchar(255) DEFAULT NULL,
  `etablissement` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apprenant`
--

/*INSERT INTO `apprenant` (`rang`, `tel_tuteur`, `nom`, `prenom`, `date_de_naissance`, `ville_origine`, `etablissement`, `contact`, `photo`, `genre`) VALUES
(13, '61750700', 'OUOMPEBA', 'justin', '2020-03-10', 'ouaga', 'lmp', '68015850', 'images/68015850photo.JPG', NULL),
(14, 'ahhsgsffas', 'hgfh', 'hgfd', '2020-03-14', 'jhgfdssd', 'jgdsaaa', '54785', 'images/54785photo.JPG', NULL),
(15, 'EE', 'hgfh', 'er', '2002-02-12', 'DF', 'ER', 'SD', 'images/SDphoto.JPG', NULL),
(16, '757877777', 'rrrrrr', 'hgfd', '2020-03-13', 'jhgfdssd', 'jgdsaaa', '54785', 'images/54785photo.JPG', NULL),
(17, '78747852', 'Mande', 'hamed', '1998-03-13', 'port-bouet', 'simplon', '456978', 'images/456978photo.JPG', NULL),
(18, '45785214', 'kouame', 'franck', '1995-05-12', 'ouagua', 'IST/OUAGUA', '54789563', 'images/54789563photo.JPG', NULL),
(19, '45785214', 'kouame', 'franck', '1999-01-12', 'ouagua', 'IST/OUAGUA', '54789563', 'images/54789563photo.JPG', NULL),
(20, '45785214', 'kouame', 'franck', '1999-01-12', 'ouagua', 'IST/OUAGUA', '54789563', 'images/54789563photo.JPG', NULL),
(21, '567889', 'KINDO', 'BOUREIMA', '2002-03-12', 'SAINT LUIS', 'UO', '45678089', 'images/45678089photo.JPG', NULL),
(22, 'ahhsgsffas', 'hgfh', 'hgfd', '2020-03-12', 'jhgfdssd', 'jgdsaaa', '54785', 'images/54785photo.JPG', NULL),
(23, 'HHHH', 'MandÃ©', 'hamed', '2000-04-13', 'KIL', 'LOL', '75107385', 'images/75107385photo.JPG', NULL);*/

-- --------------------------------------------------------

--
-- Table structure for table `tuteur`
--

CREATE TABLE `tuteur` (
  `telephone` varchar(255) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `domicile` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tuteur`
--

/*INSERT INTO `tuteur` (`telephone`, `nom`, `prenom`, `domicile`) VALUES
('45785214', 'BANCE', 'Aristide', '45785214'),
('567889', 'LOI', 'JOI', '567889'),
('61750700', 'OUOMPEBA', 'justin', '61750700'),
('68015850', 'OUOMPEBA', 'Atiga', '68015850'),
('757877777', 'lkasss', 'lhfd', '757877777'),
('78747852', 'therese', 'ouampeba', '78747852'),
('ahhsgsffas', 'lkasss', 'lhfd', 'ahhsgsffas'),
('drrr', 'dddd', 'sddd', 'drrr'),
('EE', 'WE', 'OO', 'EE'),
('HHHH', 'FG', 'HHGG', 'HHHH'),
('HYU', 'OL', 'LIE', 'HYU');*/

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apprenant`
--
ALTER TABLE `apprenant`
  ADD PRIMARY KEY (`rang`),
  ADD KEY `AK_Identifier_1` (`tel_tuteur`);
ALTER TABLE `apprenant` ADD FULLTEXT KEY `tel_tuteur` (`tel_tuteur`,`nom`,`prenom`,`date_de_naissance`,`ville_origine`,`etablissement`,`contact`,`photo`,`genre`);

--
-- Indexes for table `tuteur`
--
ALTER TABLE `tuteur`
  ADD PRIMARY KEY (`telephone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apprenant`
--
ALTER TABLE `apprenant`
  MODIFY `rang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
