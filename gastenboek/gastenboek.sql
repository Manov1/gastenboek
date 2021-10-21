-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 15 okt 2021 om 12:11
-- Serverversie: 10.4.21-MariaDB
-- PHP-versie: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gastenboek`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gastenboek`
--

CREATE TABLE `gastenboek` (
  `id` int(11) NOT NULL,
  `datum` timestamp NOT NULL DEFAULT current_timestamp(),
  `titel` varchar(80) NOT NULL,
  `naam` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL,
  `tekst` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `gastenboek`
--

INSERT INTO `gastenboek` (`id`, `datum`, `titel`, `naam`, `email`, `tekst`) VALUES
(1, '2021-10-15 09:51:20', 'test', 'mano', '557518@edu.rocmn.nl', 'hallo dit is een test');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `gastenboek`
--
ALTER TABLE `gastenboek`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `gastenboek`
--
ALTER TABLE `gastenboek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
