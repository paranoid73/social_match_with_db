-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 03 jan. 2019 à 11:29
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ji_miage`
--

-- --------------------------------------------------------

--
-- Structure de la table `cdi`
--

DROP TABLE IF EXISTS `cdi`;
CREATE TABLE IF NOT EXISTS `cdi` (
  `idCDI` int(11) NOT NULL AUTO_INCREMENT,
  `labelCDI` varchar(300) NOT NULL,
  PRIMARY KEY (`idCDI`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `cdi`
--

INSERT INTO `cdi` (`idCDI`, `labelCDI`) VALUES
(1, 'informatique'),
(2, 'musique'),
(3, 'économie'),
(4, 'mathématique'),
(5, 'gaming'),
(6, 'sport');

-- --------------------------------------------------------

--
-- Structure de la table `cdipers`
--

DROP TABLE IF EXISTS `cdipers`;
CREATE TABLE IF NOT EXISTS `cdipers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idCDI` int(11) NOT NULL,
  `idPers` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `parrainage`
--

DROP TABLE IF EXISTS `parrainage`;
CREATE TABLE IF NOT EXISTS `parrainage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idParrain` int(11) NOT NULL,
  `idFilleul` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `personnes`
--

DROP TABLE IF EXISTS `personnes`;
CREATE TABLE IF NOT EXISTS `personnes` (
  `idPers` int(11) NOT NULL AUTO_INCREMENT,
  `nomPers` varchar(300) NOT NULL,
  `prenomPers` varchar(300) NOT NULL,
  `numPers` int(11) NOT NULL,
  `imgPers` varchar(300) NOT NULL,
  `niveau` int(11) NOT NULL,
  `estEtudiant` tinyint(1) NOT NULL DEFAULT '1',
  `dateInsPers` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idPers`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `personnes`
--

INSERT INTO `personnes` (`idPers`, `nomPers`, `prenomPers`, `numPers`, `imgPers`, `niveau`, `estEtudiant`, `dateInsPers`) VALUES
(44, 'guela', 'kee', 44444444, 'img.jpg', 1, 1, '2018-12-31 13:51:42');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
