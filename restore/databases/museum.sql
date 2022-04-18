-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Gegenereerd op: 13 mei 2020 om 18:18
-- Serverversie: 5.7.28-0ubuntu0.19.04.2-log
-- PHP-versie: 7.2.24-0ubuntu0.19.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `museum`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `bezoek`
--

CREATE TABLE `bezoek` (
  `persoon` int(11) NOT NULL,
  `jaar` int(11) NOT NULL,
  `datum` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `bezoek`
--

INSERT INTO `bezoek` (`persoon`, `jaar`, `datum`) VALUES
(1, 2018, '2018-05-05'),
(1, 2018, '2018-09-28'),
(1, 2019, '2019-03-27'),
(2, 2018, '2018-03-27'),
(2, 2018, '2018-09-28'),
(2, 2018, '2018-12-25'),
(2, 2020, '2020-01-07'),
(4, 2018, '2018-01-07'),
(4, 2019, '2019-01-07'),
(4, 2020, '2020-01-07'),
(4, 2020, '2020-03-27'),
(5, 2020, '2020-03-27'),
(5, 2020, '2020-05-05'),
(6, 2020, '2020-02-14'),
(6, 2020, '2020-03-27'),
(6, 2020, '2020-05-05'),
(8, 2019, '2019-03-27'),
(8, 2019, '2019-09-28'),
(8, 2020, '2020-01-07'),
(8, 2020, '2020-03-27');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `kaarten`
--

CREATE TABLE `kaarten` (
  `persoon` int(11) NOT NULL,
  `jaar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `kaarten`
--

INSERT INTO `kaarten` (`persoon`, `jaar`) VALUES
(1, 2018),
(1, 2019),
(1, 2020),
(2, 2018),
(2, 2020),
(4, 2018),
(4, 2019),
(4, 2020),
(5, 2019),
(5, 2020),
(6, 2020),
(7, 2020),
(8, 2018),
(8, 2019),
(8, 2020);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `personen`
--

CREATE TABLE `personen` (
  `id` int(11) NOT NULL,
  `naam` varchar(32) NOT NULL,
  `woonplaats` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `personen`
--

INSERT INTO `personen` (`id`, `naam`, `woonplaats`) VALUES
(1, 'Alette', 'Roderesch'),
(2, 'Barbara', 'Zuidhorn'),
(3, 'Christel', 'Heerlen'),
(4, 'Dirk', 'Groningen'),
(5, 'Evelien', 'Groningen'),
(6, 'Gonnie', 'Zuidhorn'),
(7, 'Hettie', 'Zuidhorn'),
(8, 'Imme', 'Roden');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `personen`
--
ALTER TABLE `personen`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `personen`
--
ALTER TABLE `personen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
