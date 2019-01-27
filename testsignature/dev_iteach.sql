-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 27 jan. 2019 à 17:25
-- Version du serveur :  5.7.21
-- Version de PHP :  5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `dev_iteach`
--
CREATE DATABASE IF NOT EXISTS `dev_iteach` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dev_iteach`;

DELIMITER $$
--
-- Procédures
--
DROP PROCEDURE IF EXISTS `Changement_Etat`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Changement_Etat` (IN `pCodeInformation` VARCHAR(100))  BEGIN
        UPDATE information set FAIT = 'FAIT'
    WHERE CodeInformation = pCodeInformation;

    END$$

DROP PROCEDURE IF EXISTS `Cotisation_Cible`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Cotisation_Cible` (IN `pCodeInformation` VARCHAR(100))  BEGIN
	    CALL Changement_Etat(pCodeInformation);
        SELECT *
        FROM information
        WHERE CodeInformation = pCodeInformation;
        
    END$$

DROP PROCEDURE IF EXISTS `Insert_Cotisation`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_Cotisation` (IN `pNom` VARCHAR(100), IN `pPrenom` VARCHAR(100), IN `pCodeInformation` VARCHAR(100), IN `pObjetCotisation` VARCHAR(100), IN `pEcole` VARCHAR(100), IN `pMoyenPaiement` VARCHAR(100), IN `pAdresse` VARCHAR(100), IN `pDateDepot` VARCHAR(100), IN `pSignaturePerso` VARCHAR(5000), IN `pMontant` INT)  BEGIN
        INSERT into information
            (Nom, Prenom, CodeInformation,ObjetCotisation,Ecole,MoyenPaiement, Adresse, DateDepot, SignaturePerso, FAIT, Montant)
        VALUES
            (pNom, pPrenom, pCodeInformation, pObjetCotisation, pEcole, pMoyenPaiement, pAdresse, pDateDepot, pSignaturePerso, 'à faire', pMontant);


    END$$

DROP PROCEDURE IF EXISTS `Recherche_Cotisation`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Recherche_Cotisation` (IN `pfait` VARCHAR(100))  BEGIN
        SELECT *
        FROM information
        WHERE FAIT = pfait;

    END$$

DROP PROCEDURE IF EXISTS `SelectALL`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `SelectALL` ()  BEGIN 

SELECT * FROM `information` ORDER BY Id DESC;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `information`
--

DROP TABLE IF EXISTS `information`;
CREATE TABLE IF NOT EXISTS `information` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(50) DEFAULT NULL,
  `Prenom` varchar(50) DEFAULT NULL,
  `CodeInformation` varchar(100) DEFAULT NULL,
  `ObjetCotisation` varchar(100) DEFAULT NULL,
  `Ecole` varchar(50) DEFAULT NULL,
  `MoyenPaiement` varchar(50) DEFAULT NULL,
  `Adresse` varchar(255) DEFAULT NULL,
  `DateDepot` varchar(100) DEFAULT NULL,
  `SignaturePerso` varchar(5000) DEFAULT NULL,
  `FAIT` varchar(50) DEFAULT NULL,
  `Montant` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `information`
--

INSERT INTO `information` (`Id`, `Nom`, `Prenom`, `CodeInformation`, `ObjetCotisation`, `Ecole`, `MoyenPaiement`, `Adresse`, `DateDepot`, `SignaturePerso`, `FAIT`, `Montant`) VALUES
(11, 'remy', 'ffffffffffffffffff', 'remyffffffffffffffffff20190125', 'ffffffffffff', 'fffffffffffffffffff', 'espece', 'fffffffffffffffff', '2019-01-25', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAADICAYAAABS39xVAAAFIElEQVR4nO3dP4tcVRgG8Aes7CxCwCZtSj9Hgl/AQkErsUhhkUZIZZUyjSDYRIOlKYIkAZsYsJU0EjTEmEYxGJYsyf6bjcXsspvdmZ1/955z793fDw5bLXnPzcyz7z3nzJ0EAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACgy0Z7P3eT7NQsBOCoUcbh9HrKAKhmVkAdHbt1ygROo0UDSmABxawaUEeHdSygMc/TbEDprIBGtRVQowCsaCfNh5SAAhpxLwIK6LCmF8sFFNCYl2mni7pachLAMJ1LOwG1XXISwHA1fZv3Om7zgIY8Tjtd1OOSkwCGaxS7eUBHbaedLupcyUkAw3Q17QTUy5KTAIbLmSigs9rYzdvN+MQ6wEra+myeR7EAK9uMR7AAHbWW9gLqecF5AAP0KJ4RBXTUzQgooKMupp2A2g+pi+WmAgxRG0cN9gPqZsF5AAPUZkA9KjgPYIDupL2AWis4D2Cg2jpRvllyEsAwtdFFOVEONMYHh4HOarqLElBAo75P8yF1p+gMgFOhiUcC66KA1q3SVemigGIWDStdFFCFLgrohVkhpYsCqruR2WF1o1p1AHs2Mzus6KenOViP9Ihneu+jCKshOmnTBHrrpBe2v8j9spH5N0ugl7yo++2bLHdeDnpnJ3YC+2rVQ73QO9Y5+uX3NPOZzj8L1w2NmPXi302yXq06LifZSrMfPP+h6AygQWey3O2EIGvO4VBq85uCfis1IWjTszT3ptgfG0mulZxEx5UIpUn/H1+XmBzUUOpNtD92kjwoMrMyaoTS0Wu71fosoUNqvNFOCrZRxh1gG84m+TLJvSR/ZfzNOxsZB+koB49+Pml04TrpojjVfko33ozG5IDSRcEM6+lOV3Haxm7GxxmAFQmydoMKKOhZ3lwLqh0CXR+6Kei4BxkvdHdpMXuRgNlfV7q8N59l6tdNwYBcy3gHb9au3eGxv9O3s/e7axnvBt7LeHfwbMM1LvMMfN0UUNQyQQVQ1KLf16ibAorbymJB9aROmcBp9iKLBdWLOmUCp9mTLBZUTqIDxX2bxYLKU1qBKv6JXT+gB+YNK0EFVDVPWAkqoLp5wurTatUB7JkVVnb+gE6YFVb/1CsN4ICwAnpBWAG9IKyAXvgiwgroCWEF9IawAnph2tNBnbMCOmdadwXQKa8yOaxe1SwKYBLdFdALP8eTF4CemLbY3lefJPkjyX+1CwGaN5TbweuZHL7v1iwKaFafA+t6ks2cfOD1YbXqgMb1LbDmCanDY61OmUAbpr3Rd5Kcr1hXkryX5G6SZ1n8a++7HrzAEub9WvnNJLda+PcPh9L2nLXMOz5uoV6gsmUDYXfJ0WQoTRo+TgQD9jDth0ip8bThawN00BBC68fGrwrQWW+nzC1bG+PzFq4H0CO3stgRgibGdsYL8HczXpBPkkszfudSK7MHeu18kr/z5s7iMovuoxwPpWneibACeuLXCCugJzYirIAeuJDJYfVVzaIAJrmd42G1XrUigCnWczywbletCGCCDzL5dvBCzaIAJvklbgeBHvgwk7srt4NA5/yb42G1leRMzaIAjno/k7urz2oWBTDJlRwPq++qVgRwgvs5CKv7Sc7WLQdgurcyvjW8UrsQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADhd/geJwfVQh040ogAAAABJRU5ErkJggg==', 'à faire', 656),
(12, 'place', 'alain', 'placealain20190109', 'cotisation', 'boiry notre dame', 'cheque', 'blablabla', '2019-01-09', 'data:image/png;base64,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', 'à faire', 10);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
