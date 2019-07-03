-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Mar 25 Juin 2019 à 08:59
-- Version du serveur :  5.7.26-0ubuntu0.18.04.1
-- Version de PHP :  7.2.15-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projetPOO`
--

-- --------------------------------------------------------

--
-- Structure de la table `batiment`
--

CREATE TABLE `batiment` (
  `id_batiment` int(11) NOT NULL,
  `nom batiment` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `batiment`
--

INSERT INTO `batiment` (`id_batiment`, `nom batiment`) VALUES
(1, 'pavillon 1'),
(2, 'pavillon 2'),
(3, 'pavillon 3'),
(4, 'pavillon 4');

-- --------------------------------------------------------

--
-- Structure de la table `boursier`
--

CREATE TABLE `boursier` (
  `id_etudiant` int(11) NOT NULL,
  `id_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `boursier`
--

INSERT INTO `boursier` (`id_etudiant`, `id_type`) VALUES
(1, 1),
(56, 1),
(68, 1),
(69, 1),
(70, 1),
(88, 1),
(93, 1),
(95, 1),
(2, 2),
(52, 2),
(92, 2);

-- --------------------------------------------------------

--
-- Structure de la table `chambre`
--

CREATE TABLE `chambre` (
  `id_chambre` int(11) NOT NULL,
  `id_batiment` int(11) NOT NULL,
  `nom chambre` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `chambre`
--

INSERT INTO `chambre` (`id_chambre`, `id_batiment`, `nom chambre`) VALUES
(1, 1, 'chambreune'),
(2, 2, 'chambredeux'),
(3, 3, 'chambretrois'),
(4, 4, 'chambrequatre'),
(5, 2, 'pop'),
(6, 1, 'mouhamed'),
(7, 1, 'mouhamed'),
(8, 3, 'boy kha'),
(9, 3, 'boy kha'),
(10, 3, 'jean marie'),
(11, 3, 'diene'),
(12, 1, 'mboup');

-- --------------------------------------------------------

--
-- Structure de la table `ETUDIANT`
--

CREATE TABLE `ETUDIANT` (
  `id_etudiant` int(11) NOT NULL,
  `matricule` int(11) NOT NULL,
  `nom` varchar(35) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telephone` int(35) NOT NULL,
  `date_de_naissance` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ETUDIANT`
--

INSERT INTO `ETUDIANT` (`id_etudiant`, `matricule`, `nom`, `prenom`, `email`, `telephone`, `date_de_naissance`) VALUES
(1, 1, 'fall', 'modou', 'modoufall@gmail.com', 778889944, '2019-06-19'),
(2, 2, 'fall', 'samba', 'fallsamba@gmail.com', 774522552, '2019-06-12'),
(3, 3, 'mboup', 'birame yacine', 'birame.yacine@gmail.com', 778522214, '2019-06-05'),
(4, 4, 'koulibaly', 'kalidou', 'kk@gmail.com', 774147457, '2019-06-19'),
(11, 5, 'zou', 'zou', 'mbirame@gmail.com', 555, '2019-06-29'),
(15, 25, 'diakhite', 'abdoulaye', 'abdoudiak@gm.com', 88, '2019-06-15'),
(17, 25, 'diakhite', 'abdoulaye', 'abdoudiak@gm.com', 88, '2019-06-15'),
(25, 777, 'bane', 'banane', 'mbirame@gmail.com', 7777, '2019-06-22'),
(42, 555, 'mouhamed', 'jkl', 'paulmboup@live.fr', 5, '2019-06-28'),
(43, 555, 'mouhamed', 'jkl', 'paulmboup@live.fr', 5, '2019-06-28'),
(50, 5555, 'diop', 'fama', 'mndiawar2@gmail.com', 4555555, '2019-06-15'),
(52, 555, 'db', 'db', 'db@gmail.com', 777777777, '2019-06-08'),
(56, 555, 'db', 'db', 'db@gmail.com', 777777777, '2019-06-08'),
(67, 555, 'db', 'db', 'db@gmail.com', 777777777, '2019-06-08'),
(68, 555, 'db', 'db', 'db@gmail.com', 777777777, '2019-06-08'),
(69, 555, 'db', 'db', 'db@gmail.com', 777777777, '2019-06-08'),
(70, 555, 'db', 'db', 'db@gmail.com', 777777777, '2019-06-08'),
(76, 6, 'dieng', 'mouhamed', 'mbirame@gmail.com', 66666, '2019-05-31'),
(78, 8, 'kha', 'boy', 'boy@kha.com', 77777, '2019-06-15'),
(79, 8, 'kha', 'boy', 'boy@kha.com', 77777, '2019-06-15'),
(80, 8, 'kha', 'boy', 'boy@kha.com', 77777, '2019-06-15'),
(81, 888, 'sarr', 'lena', 'mndiawar2@gmail.com', 778522585, '2019-06-22'),
(83, 555, 'marie', 'jean', 'mbirame@gmail.com', 778523698, '2019-06-15'),
(84, 555, 'badiane', 'elina', 'mbirame@gmail.com', 77555555, '2019-06-13'),
(85, 99999, 'marie', 'jean', 'mbirame@gmail.com', 9999999, '2019-06-14'),
(86, 99999, 'marie', 'jean', 'mbirame@gmail.com', 9999999, '2019-06-14'),
(87, 99999, 'marie', 'jean', 'mbirame@gmail.com', 9999999, '2019-06-14'),
(88, 99999, 'marie', 'jean', 'mbirame@gmail.com', 9999999, '2019-06-14'),
(89, 99999, 'marie', 'jean', 'mbirame@gmail.com', 9999999, '2019-06-14'),
(90, 99999, 'marie', 'jean', 'mbirame@gmail.com', 9999999, '2019-06-14'),
(91, 99999, 'marie', 'jean', 'mbirame@gmail.com', 9999999, '2019-06-14'),
(92, 5555, 'diakhaté', 'penda', 'dddddd@gmail.com', 888888888, '2019-06-14'),
(93, 555, 'senghor', 'diene', 'diene@senghor.com', 55555555, '2019-06-22'),
(94, 555, 'senghor', 'diene', 'diene@senghor.com', 55555555, '2019-06-22'),
(95, 55555, 'mboup', 'fatou', 'mbirame2000@gmail.com', 555555, '2019-06-09'),
(96, 55555, 'mboup', 'fatou', 'mbirame2000@gmail.com', 555555, '2019-06-09');

-- --------------------------------------------------------

--
-- Structure de la table `loger`
--

CREATE TABLE `loger` (
  `id_chambre` int(11) NOT NULL,
  `id_etudiant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `loger`
--

INSERT INTO `loger` (`id_chambre`, `id_etudiant`) VALUES
(1, 1),
(2, 2),
(7, 76),
(8, 78),
(9, 80),
(10, 86),
(11, 94),
(12, 96);

-- --------------------------------------------------------

--
-- Structure de la table `non_boursier`
--

CREATE TABLE `non_boursier` (
  `id_etudiant` int(11) NOT NULL,
  `adresse` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `non_boursier`
--

INSERT INTO `non_boursier` (`id_etudiant`, `adresse`) VALUES
(15, 'hlm grand yoff'),
(25, 'keur gor'),
(42, 'zone sud'),
(43, 'hlm grand yoff'),
(50, 'scat urbam'),
(81, 'scat urbam');

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

CREATE TABLE `type` (
  `id_type` int(11) NOT NULL,
  `libellé` varchar(111) NOT NULL,
  `montant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `type`
--

INSERT INTO `type` (`id_type`, `libellé`, `montant`) VALUES
(1, 'demi pension', 20000),
(2, 'pension', 40000);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `batiment`
--
ALTER TABLE `batiment`
  ADD PRIMARY KEY (`id_batiment`);

--
-- Index pour la table `boursier`
--
ALTER TABLE `boursier`
  ADD PRIMARY KEY (`id_etudiant`),
  ADD KEY `id_etudiant` (`id_etudiant`),
  ADD KEY `id_type` (`id_type`);

--
-- Index pour la table `chambre`
--
ALTER TABLE `chambre`
  ADD PRIMARY KEY (`id_chambre`),
  ADD KEY `id_batiment` (`id_batiment`),
  ADD KEY `id_chambre` (`id_chambre`);

--
-- Index pour la table `ETUDIANT`
--
ALTER TABLE `ETUDIANT`
  ADD PRIMARY KEY (`id_etudiant`),
  ADD KEY `id_etudiant` (`id_etudiant`);

--
-- Index pour la table `loger`
--
ALTER TABLE `loger`
  ADD PRIMARY KEY (`id_etudiant`),
  ADD KEY `id_etudiant` (`id_etudiant`),
  ADD KEY `id_chambre` (`id_chambre`);

--
-- Index pour la table `non_boursier`
--
ALTER TABLE `non_boursier`
  ADD PRIMARY KEY (`id_etudiant`),
  ADD KEY `id_etudiant` (`id_etudiant`);

--
-- Index pour la table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id_type`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `batiment`
--
ALTER TABLE `batiment`
  MODIFY `id_batiment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `chambre`
--
ALTER TABLE `chambre`
  MODIFY `id_chambre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `ETUDIANT`
--
ALTER TABLE `ETUDIANT`
  MODIFY `id_etudiant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `boursier`
--
ALTER TABLE `boursier`
  ADD CONSTRAINT `boursier_ibfk_2` FOREIGN KEY (`id_type`) REFERENCES `type` (`id_type`),
  ADD CONSTRAINT `boursier_ibfk_3` FOREIGN KEY (`id_etudiant`) REFERENCES `ETUDIANT` (`id_etudiant`);

--
-- Contraintes pour la table `loger`
--
ALTER TABLE `loger`
  ADD CONSTRAINT `loger_ibfk_1` FOREIGN KEY (`id_etudiant`) REFERENCES `ETUDIANT` (`id_etudiant`),
  ADD CONSTRAINT `loger_ibfk_2` FOREIGN KEY (`id_chambre`) REFERENCES `chambre` (`id_chambre`);

--
-- Contraintes pour la table `non_boursier`
--
ALTER TABLE `non_boursier`
  ADD CONSTRAINT `non_boursier_ibfk_1` FOREIGN KEY (`id_etudiant`) REFERENCES `ETUDIANT` (`id_etudiant`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
