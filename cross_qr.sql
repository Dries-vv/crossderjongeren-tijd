-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 09 jun 2025 om 17:02
-- Serverversie: 10.4.32-MariaDB
-- PHP-versie: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cross_qr`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `klas`
--

CREATE TABLE `klas` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `klas`
--

INSERT INTO `klas` (`id`, `name`) VALUES
('218cf306-abdd-11ef-9249-c84bd62df43c', '6ICW'),
('2a3e6828-8bec-4c37-a3cd-edc93c0ea05e', '5ME'),
('30cab6fd-abdd-11ef-9249-c84bd62df43c', '6EM');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lopers`
--

CREATE TABLE `lopers` (
  `id` char(36) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `klasID` char(36) NOT NULL,
  `schoolID` char(36) NOT NULL,
  `reeksID` char(36) NOT NULL,
  `birthdate` date NOT NULL,
  `finishTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `lopers`
--

INSERT INTO `lopers` (`id`, `firstname`, `lastname`, `gender`, `klasID`, `schoolID`, `reeksID`, `birthdate`, `finishTime`) VALUES
('06d2e14b-9d32-4140-8795-22798abbde8c', 'Christophe', 'Grattesolle', 'man', '30cab6fd-abdd-11ef-9249-c84bd62df43c', '1ef55912-2178-4e8c-90de-95ce6fb2bd21', '5dd92471-b0b7-11ef-9d99-c84bd62df43c', '2002-02-12', '0000-00-00 00:00:00'),
('0df6d7f1-04f9-455a-bb94-f4d9af42339f', 'Frank', 'Meyers', 'man', '30cab6fd-abdd-11ef-9249-c84bd62df43c', 'a4de7b6e-abee-11ef-a236-c84bd62df43c', '82dddf20-b0b7-11ef-9d99-c84bd62df43c', '2000-02-12', '0000-00-00 00:00:00'),
('2982d408-c7bd-4192-ae0e-ed6803d18ad7', 'Dries', 'Vanvelthoven', 'man', '218cf306-abdd-11ef-9249-c84bd62df43c', 'a4de7b6e-abee-11ef-a236-c84bd62df43c', '82ddcac9-b0b7-11ef-9d99-c84bd62df43c', '2005-02-12', '2025-05-22 19:21:07'),
('2cb492df-eca8-4e4a-b468-944d8301a4c3', 'Karst', 'Bast', 'man', '', 'f0fed5d2-ba6a-41af-8c11-1d1037edac3f', '82ddcac9-b0b7-11ef-9d99-c84bd62df43c', '2002-12-12', '2025-05-22 18:11:57'),
('5a18068f-3bd4-43ee-9593-2bb61e4dfdce', 'Wanne', 'Vlems', 'vrouw', '218cf306-abdd-11ef-9249-c84bd62df43c', 'a4de7b6e-abee-11ef-a236-c84bd62df43c', '5dd92471-b0b7-11ef-9d99-c84bd62df43c', '2000-02-12', '2025-01-28 09:38:56'),
('5e309990-32ca-452e-9828-ccc9fabb61ef', 'Bart', 'Peters', 'man', '218cf306-abdd-11ef-9249-c84bd62df43c', 'a4de7b6e-abee-11ef-a236-c84bd62df43c', '82ddcac9-b0b7-11ef-9d99-c84bd62df43c', '2007-12-26', '2025-05-22 17:41:08'),
('738f79fe-e73c-4026-9758-d3a3f017e0f3', 'Finn', 'Vandeneynde', 'man', '218cf306-abdd-11ef-9249-c84bd62df43c', 'a4de7b6e-abee-11ef-a236-c84bd62df43c', '82ddcac9-b0b7-11ef-9d99-c84bd62df43c', '2007-03-12', '2025-05-17 15:14:08'),
('861e9173-a942-47e4-95c3-a9dab98b4b59', 'Bert', 'Platers', 'vrouw', '218cf306-abdd-11ef-9249-c84bd62df43c', 'a4de7b6e-abee-11ef-a236-c84bd62df43c', '82ddcac9-b0b7-11ef-9d99-c84bd62df43c', '2005-02-12', '2025-05-17 15:14:18'),
('c7fe1fdd-ea8c-40e5-85c1-25eb27fb7666', 'Geert', 'Smetsers', 'man', '218cf306-abdd-11ef-9249-c84bd62df43c', 'a4de7b6e-abee-11ef-a236-c84bd62df43c', '5dd92471-b0b7-11ef-9d99-c84bd62df43c', '2002-12-12', '2025-02-24 15:08:13');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `reeksen`
--

CREATE TABLE `reeksen` (
  `id` char(36) NOT NULL,
  `reeks` varchar(255) NOT NULL,
  `startAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `reeksen`
--

INSERT INTO `reeksen` (`id`, `reeks`, `startAt`) VALUES
('4a5d7b00-b0b7-11ef-9d99-c84bd62df43c', 'Reeks 2011', '2024-12-02 10:00:00'),
('5dd92471-b0b7-11ef-9d99-c84bd62df43c', 'Reeks 2008', '2024-12-02 11:00:00'),
('82ddcac9-b0b7-11ef-9d99-c84bd62df43c', 'Reeks 2007', '2025-05-17 12:00:00'),
('82dddf20-b0b7-11ef-9d99-c84bd62df43c', 'Reeks 2009', '2024-12-02 13:00:00'),
('a0ec2729-b0b7-11ef-9d99-c84bd62df43c', 'Reeks 2010', '2024-12-02 14:00:00'),
('a0ec4198-b0b7-11ef-9d99-c84bd62df43c', 'Reeks 2006', '2024-12-02 14:00:00');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `school`
--

CREATE TABLE `school` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `school`
--

INSERT INTO `school` (`id`, `name`) VALUES
('1ef55912-2178-4e8c-90de-95ce6fb2bd21', 'Wico Pelt'),
('a4de7b6e-abee-11ef-a236-c84bd62df43c', 'Provil Lommel'),
('c07cd8f4-5df8-4639-b0fc-2d49643e7ff1', 'X-Plus'),
('f0fed5d2-ba6a-41af-8c11-1d1037edac3f', 'Wico Lommel');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`ID`, `username`, `password`, `firstName`, `lastName`) VALUES
(2, 'secretariaat', 'secretariaat_provil', 'provil', 'provil');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `klas`
--
ALTER TABLE `klas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexen voor tabel `lopers`
--
ALTER TABLE `lopers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexen voor tabel `reeksen`
--
ALTER TABLE `reeksen`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexen voor tabel `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
