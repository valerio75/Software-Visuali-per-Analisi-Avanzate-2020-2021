-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 15, 2020 alle 22:55
-- Versione del server: 10.4.11-MariaDB
-- Versione PHP: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studenti`
--

--
-- Dump dei dati per la tabella `corsi`
--

INSERT INTO `corsi` (`ID`, `codice_corso`, `titolo_corso`, `anno_accademico`, `cfu`) VALUES
(1, 'BDEA', 'Big Data and Analytics', '2020', 6),
(2, 'STAT', 'Statistica', '2020', 9),
(3, 'DIR', 'Diritto', '2019', 9),
(4, 'AZI', 'Organizzazione Azeindale', '2019', 6),
(5, 'ENG', 'Inglese', '2019', 3),
(6, 'ECOINN', 'Economia dell\'Innovazione', '2020', 6),
(7, 'INF01', 'Informatica di base', '2019', 3),
(8, 'INF02', 'Informatica avanzata', '2020', 6),
(9, 'CLO', 'Cloud Computing', '2020', 3),
(10, 'LET', 'Letteratura Italiana', '2019', 9);

--
-- Dump dei dati per la tabella `esami`
--

INSERT INTO `esami` (`ID`, `codice_corso`, `matricola`, `data`, `voto`, `lode`) VALUES
(1, 'INF01', 'A001', '2019-03-10', 30, 0),
(2, 'INF01', 'A002', '2019-03-10', 28, 0),
(3, 'INF01', 'M002', '2019-03-10', 30, 1),
(4, 'INF02', 'M002', '2019-06-10', 30, 0),
(5, 'DIR', 'M002', '2019-09-27', 28, 0),
(6, 'ENG', 'A004', '2019-09-10', 22, 0),
(7, 'DIR', 'A003', '2019-09-10', 28, 0),
(8, 'CLO', 'A001', '2020-02-10', 30, 1),
(9, 'AZI', 'A002', '2020-01-17', 26, 0),
(10, 'DIR', 'A002', '2019-10-17', 30, 1),
(11, 'STAT', 'M001', '2019-06-10', 30, 0),
(12, 'DIR', 'M001', '2019-11-27', 25, 0),
(13, 'CLO', 'A004', '2019-12-10', 29, 0),
(14, 'DIR', 'A002', '2019-09-10', 24, 0),
(15, 'AZI', 'M002', '2019-06-10', 30, 1),
(16, 'ENG', 'M002', '2019-03-10', 28, 0),
(17, 'DIR', 'A004', '2020-02-11', 27, 0),
(18, 'BDEA', 'A004', '2020-02-11', 30, 0),
(19, 'INF01', 'A003', '2019-10-17', 30, 0),
(20, 'ECOINN', 'A003', '2019-10-17', 23, 0),
(21, 'STAT', 'A003', '2019-10-17', 26, 0);

--
-- Dump dei dati per la tabella `studenti`
--

INSERT INTO `studenti` (`nome`, `cognome`, `matricola`) VALUES
('Vincenzo', 'Arancio', 'A001'),
('Orietta', 'Bianchi', 'A002'),
('Luigi', 'Viola', 'A003'),
('Luigi', 'Marrone', 'A004'),
('Sofia', 'Verdone', 'A005'),
('Mario', 'Rossi', 'M001'),
('Angela', 'Verdi', 'M002'),
('Sofia', 'Giallo', 'M003'),
('Camilla', 'Blu', 'M004');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
