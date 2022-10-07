-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 07 oct. 2022 à 12:35
-- Version du serveur : 8.0.27
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `dev62022debdb`
--
CREATE DATABASE IF NOT EXISTS `dev62022debdb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `dev62022debdb`;

-- --------------------------------------------------------

--
-- Structure de la table `memo`
--

DROP TABLE IF EXISTS `memo`;
CREATE TABLE IF NOT EXISTS `memo` (
  `idmemo` int NOT NULL AUTO_INCREMENT,
  `contenu` varchar(250) DEFAULT NULL,
  `date_creation` datetime DEFAULT CURRENT_TIMESTAMP,
  `idperson` int NOT NULL,
  PRIMARY KEY (`idmemo`),
  KEY `fk_memo_person_idx` (`idperson`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `memo`
--

INSERT INTO `memo` (`idmemo`, `contenu`, `date_creation`, `idperson`) VALUES
(1, 'Barbec a la fin du cursus', '2022-10-07 12:28:27', 1),
(2, 'Coder sans faille et sans pareil', '2022-10-07 12:28:27', 1),
(3, 'Raconter des histoires de code', '2022-10-07 12:28:27', 3),
(4, 'Spring approche', '2022-10-07 12:28:27', 1),
(5, 'Appeler frank ribery en equipe de France', '2022-10-07 12:28:27', 3),
(6, 'Aller au parc des prince du code', '2022-10-07 12:28:27', 1);

-- --------------------------------------------------------

--
-- Structure de la table `person`
--

DROP TABLE IF EXISTS `person`;
CREATE TABLE IF NOT EXISTS `person` (
  `idperson` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) DEFAULT NULL,
  `prenom` varchar(45) DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  `mdp` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idperson`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `person`
--

INSERT INTO `person` (`idperson`, `nom`, `prenom`, `login`, `mdp`) VALUES
(1, 'Lise', 'Lili', 'li', 'ok'),
(2, 'Carole', 'Caro', 'dac', 'yes'),
(3, 'Louis', 'quatre', 'roi', 'non');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `memo`
--
ALTER TABLE `memo`
  ADD CONSTRAINT `fk_memo_person` FOREIGN KEY (`idperson`) REFERENCES `person` (`idperson`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
