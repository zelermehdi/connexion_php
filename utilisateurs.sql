-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 29 juin 2022 à 15:11
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `connexion`
--

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `ip` varchar(20) NOT NULL,
  `date_inscription` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `pseudo`, `email`, `password`, `ip`, `date_inscription`) VALUES
(1, 'amine', 'amine@html.fr', 'amine1234', '', '2022-06-29 12:10:16'),
(2, 'azez', 'amine1@html.fr', '254efb93234364fb413ea1111c4373f5026da9b1e3bc4f1650ec88510f64c9d5', '::1', '2022-06-29 14:26:03'),
(3, 'mehdi_lebg_du93', 'mehdi@algerie.com', '00901e8b3f0848cc9373c48b9d2b5ef7c648cf7f682fa74f0daff757f5583688', '::1', '2022-06-29 14:36:42'),
(4, 'doudou_du_77', 'redou@doudou.fr', '04d63f1dc894072e4f8cc93881ef50975d8415acc614ad73d015ca69bfd6bf00', '::1', '2022-06-29 15:15:36'),
(5, 'sabah', 'sabah@gmail.com', '6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', '::1', '2022-06-29 15:59:24'),
(6, 'adfzeagrhtjy,uioumk;jtyhregfdzsefrgthyjukilompiùolgkfujyrgefzdSDEFRGTHYJUKILJHGFDSQ', 'hh@h.fr', 'fbc8a2bc6279092eac20eea89d1aacca35596a3bc037cc6ffe261179c8d46b88', '::1', '2022-06-29 17:07:13'),
(7, 'az', 'fgrg@g.fr', 'fbc8a2bc6279092eac20eea89d1aacca35596a3bc037cc6ffe261179c8d46b88', '::1', '2022-06-29 17:07:54');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
