-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Gegenereerd op: 10 dec 2021 om 14:54
-- Serverversie: 5.7.33
-- PHP-versie: 7.4.19

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
-- Tabelstructuur voor tabel `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `full_name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `comments`
--

INSERT INTO `comments` (`id`, `full_name`, `email`, `message`, `date`) VALUES
(1, 'Lorem Ipsum', 'lorem@ipsum.com', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam at metus venenatis, elementum massa sit amet, blandit libero. Cras vel nisl pharetra, mattis libero nec, lobortis nibh. Integer ut lobortis purus, vel luctus lorem. Nunc vulputate id neque at fermentum. Sed sagittis nisl ut erat rutrum, vel molestie leo tincidunt. Morbi lobortis lobortis leo. Mauris malesuada, augue aliquam egestas accumsan, nunc ligula commodo nunc, et ornare diam lectus vitae nulla. Maecenas eu sapien posuere, maximus mi et, sodales tellus. Mauris ultricies venenatis hendrerit. Mauris eleifend orci elit, et tristique turpis tempor ut. ', '2021-12-10 15:50:37'),
(2, 'Lorem Ipsum', 'lorem@ipsum.com', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam at metus venenatis, elementum massa sit amet, blandit libero. Cras vel nisl pharetra, mattis libero nec, lobortis nibh. Integer ut lobortis purus, vel luctus lorem. Nunc vulputate id neque at fermentum. Sed sagittis nisl ut erat rutrum, vel molestie leo tincidunt. Morbi lobortis lobortis leo. Mauris malesuada, augue aliquam egestas accumsan, nunc ligula commodo nunc, et ornare diam lectus vitae nulla. Maecenas eu sapien posuere, maximus mi et, sodales tellus. Mauris ultricies venenatis hendrerit. Mauris eleifend orci elit, et tristique turpis tempor ut. ', '2021-12-10 15:52:21'),
(3, 'Lorem Ipsum', 'lorem@ipsum.com', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam at metus venenatis, elementum massa sit amet, blandit libero. Cras vel nisl pharetra, mattis libero nec, lobortis nibh. Integer ut lobortis purus, vel luctus lorem. Nunc vulputate id neque at fermentum. Sed sagittis nisl ut erat rutrum, vel molestie leo tincidunt. Morbi lobortis lobortis leo. Mauris malesuada, augue aliquam egestas accumsan, nunc ligula commodo nunc, et ornare diam lectus vitae nulla. Maecenas eu sapien posuere, maximus mi et, sodales tellus. Mauris ultricies venenatis hendrerit. Mauris eleifend orci elit, et tristique turpis tempor ut. ', '2021-12-10 15:52:28');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
