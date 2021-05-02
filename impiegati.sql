-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 02, 2021 alle 21:34
-- Versione del server: 10.4.18-MariaDB
-- Versione PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `impiegati`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `dipartimento`
--

CREATE TABLE `dipartimento` (
  `Nome` varchar(20) NOT NULL,
  `Citta` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `dipartimento`
--

INSERT INTO `dipartimento` (`Nome`, `Citta`) VALUES
('Amministrazione', 'Milano'),
('Produzione', 'Torino'),
('Distribuzione', 'Roma'),
('Direzione', 'Milano'),
('Ricerca', 'Milano');

-- --------------------------------------------------------

--
-- Struttura della tabella `impiegato`
--

CREATE TABLE `impiegato` (
  `Nome` varchar(20) NOT NULL,
  `Cognome` varchar(20) NOT NULL,
  `Dipart` varchar(20) NOT NULL,
  `StipAnn` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `impiegato`
--

INSERT INTO `impiegato` (`Nome`, `Cognome`, `Dipart`, `StipAnn`) VALUES
('Mario', 'Rossi', 'Amministrazione', '45'),
('Carlo', 'Bianchi', 'Produzione', '36'),
('Giuseppe', 'Verdi', 'Amministrazione', '40'),
('Franco', 'Neri', 'Distribuzione', '45'),
('Carlo', 'Rossi', 'Direzione', '80'),
('Lorenzo', 'Gialli', 'Direzione', '73'),
('Paola', 'Rosati', 'Amministrazione', '40'),
('Marco', 'Franco', 'Produzione', '46');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
