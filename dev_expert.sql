-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  sam. 21 sep. 2019 à 19:15
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
-- Base de données :  `dev_expert`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `tel` int(11) NOT NULL,
  `demande_mission` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `collaborateur`
--

DROP TABLE IF EXISTS `collaborateur`;
CREATE TABLE IF NOT EXISTS `collaborateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `departement_technique` varchar(50) NOT NULL,
  `type_collaborateur` varchar(50) NOT NULL,
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `qualifications` varchar(100) NOT NULL,
  `salaire` decimal(11,0) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `tel` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `collaborateur`
--

INSERT INTO `collaborateur` (`id`, `nom`, `prenom`, `departement_technique`, `type_collaborateur`, `login`, `password`, `qualifications`, `salaire`, `mail`, `tel`) VALUES
(1, 'Paul', 'Samuel', 'Web', 'Developpeur Front', 'JeanPaulDu77', '4f45069622d55776070668bd806ab183', 'DUT MMI', '3000', 'jeanpaulprogamer@gmail.com', '0602679438'),
(2, 'Jackson', 'Michael', 'Web', 'Designer', 'KingOfPop', '8349383df2c74838e67ce0938b3145e7', 'DUT MMI', '7000', 'mjking@gmail.com', '0785497883'),
(3, 'Zidane', 'Zinedine', 'Sécurité', 'Ingénieur', 'Zizou2002', '27de2871a8a95fe55e96b895f6842b35', 'DUT Informatique', '5000', 'zizoufoot@gmail.com', '0798546389'),
(4, 'Stark', 'Tony', 'Comercial', 'Comptable', 'IronMan', '9f3951251a74d7c89605fc26d1a2f38b', 'DUT Economie', '10000', 'avengersnumerone@gmail.com', '0215779632'),
(5, 'Rogers', 'Steve', 'Sécurité', 'Ingénieur', 'CaptainAmerica', 'faae70aa6949a759b90a0b2d5982e587', 'DUT Economie', '4000', 'icandothisallday@gmail.com', '0754698854'),
(6, 'Parker', 'Peter', 'Web', 'Designer', 'TheAmazingSpiderman2000', '555348ae3a35204b22db9439dc30405a', 'Bachelor Design', '5000', 'peterparker@gmail.com', '0365878996'),
(7, 'Potter', 'Harry', 'Réalité Virtuelle', 'Testeur', 'CeluiQuiASurvecu', '0f66e9f482711e5d8c0693eea4a4918d', 'DUT Informatique', '8000', 'magicienextreme@gmail.com', '0456996882'),
(8, 'Kenobi', 'Obi Wan', 'Comercial', 'Comptable', 'TheHighGround_82', '873da653647d18645c812b4375ddc80c', 'DUT Economie', '6500', 'hellothere@gmail.com', '0458799825'),
(9, 'Skywalker', 'Anakin', 'Comercial', 'Comptable', 'DarthVader_93', '8e0a4747db147107b5ced2eced359f41', 'DUT Economie', '6500', 'jenaimepaslesable@gmail.com', '0265588525'),
(10, 'Windu', 'Mace', 'Web', 'Developpeur Back', 'SamuelLeeJackson-Pro', 'a3e8872a8e629ae4f37d54a8e9467fd9', 'DUT MMI', '9000', 'purplelightsaber@gmail.com', '0654789856');

-- --------------------------------------------------------

--
-- Structure de la table `mission`
--

DROP TABLE IF EXISTS `mission`;
CREATE TABLE IF NOT EXISTS `mission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  `date_demande` date NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `budget` decimal(11,0) NOT NULL,
  `informations_client` varchar(100) NOT NULL,
  `informations_collaborateur` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
