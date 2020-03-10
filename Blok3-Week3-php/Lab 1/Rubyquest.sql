-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Gegenereerd op: 10 mrt 2020 om 22:15
-- Serverversie: 10.4.11-MariaDB
-- PHP-versie: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Rubyquest`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Armor`
--

CREATE TABLE `Armor` (
  `Id` int(11) NOT NULL,
  `Color` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `Armor`
--

INSERT INTO `Armor` (`Id`, `Color`) VALUES
(1, 'White '),
(2, 'Blue '),
(3, 'Purple'),
(4, 'Gold ');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Cities`
--

CREATE TABLE `Cities` (
  `Id` int(11) NOT NULL,
  `County` int(22) NOT NULL,
  `Peoples` int(33) NOT NULL,
  `Transport` varchar(44) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `Cities`
--

INSERT INTO `Cities` (`Id`, `County`, `Peoples`, `Transport`) VALUES
(1, 10, 100, 'Subway'),
(2, 20, 200, 'Bus'),
(3, 36, 35, 'Taxi '),
(4, 30, 90, 'Train');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `People`
--

CREATE TABLE `People` (
  `Id` int(11) NOT NULL,
  `Name` varchar(22) NOT NULL,
  `Health` int(50) NOT NULL,
  `Living Town` varchar(35) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `People`
--

INSERT INTO `People` (`Id`, `Name`, `Health`, `Living Town`) VALUES
(1, 'Jason ', 100, 'Rotterdam '),
(2, 'Jerra', 100, 'Almere'),
(3, 'Tim', 100, 'Almere'),
(4, 'Joost', 100, 'Utrecht ');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Weapons`
--

CREATE TABLE `Weapons` (
  `Id` int(11) NOT NULL,
  `Name` text CHARACTER SET utf8 NOT NULL,
  `Required Level` int(44) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `Weapons`
--

INSERT INTO `Weapons` (`Id`, `Name`, `Required Level`) VALUES
(1, 'AK 74', 10),
(2, 'Kuda ', 30),
(3, 'VMP', 45),
(4, 'ARGUS', 55);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `Armor`
--
ALTER TABLE `Armor`
  ADD PRIMARY KEY (`Id`);

--
-- Indexen voor tabel `People`
--
ALTER TABLE `People`
  ADD PRIMARY KEY (`Id`);

--
-- Indexen voor tabel `Weapons`
--
ALTER TABLE `Weapons`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `Armor`
--
ALTER TABLE `Armor`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT voor een tabel `People`
--
ALTER TABLE `People`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `Weapons`
--
ALTER TABLE `Weapons`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
