-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Feb 05. 20:23
-- Kiszolgáló verziója: 10.4.11-MariaDB
-- PHP verzió: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `testdb_auth`
--
CREATE DATABASE IF NOT EXISTS `testdb_auth` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `testdb_auth`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `film`
--

CREATE TABLE `film` (
  `film_id` int(11) NOT NULL,
  `film_cim` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `film_datum` date NOT NULL,
  `film_hossz` int(11) NOT NULL,
  `film_kep` varchar(50) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `film`
--

INSERT INTO `film` (`film_id`, `film_cim`, `film_datum`, `film_hossz`, `film_kep`) VALUES
(1, 'Wandavision', '0000-00-00', 0, '1.png'),
(2, 'Loki', '0000-00-00', 0, '2.png'),
(3, 'Falcon and the winter soldier', '0000-00-00', 0, '3.png'),
(4, 'proba', '0000-00-00', 0, 'proba'),
(5, '1', '0000-00-00', 0, 'proba'),
(6, '1', '0000-00-00', 0, 'proba'),
(7, '1', '0000-00-00', 0, 'proba'),
(8, '2', '0000-00-00', 0, 'proba'),
(9, '1', '0000-00-00', 0, 'proba'),
(10, '1', '0000-00-00', 0, 'proba'),
(11, 'Wednesday', '0000-00-00', 0, 'w.png'),
(12, 'Wednesday', '2022-12-07', 120, 'w.png'),
(13, 'Halálos iramban', '2022-12-07', 120, 'w.png'),
(14, 'Halálos iramban', '2022-12-07', 120, 'w.png'),
(15, 'Halálos iramban', '2022-12-07', 130, 'w.png'),
(16, 'Avatar', '2022-12-07', 180, 'w.png'),
(38, 'Ttt', '2023-01-01', 0, 'w.png'),
(39, 'Kkk', '2023-01-01', 1, 'w.png'),
(40, 'Kkk', '2023-01-01', 1, 'w.png'),
(41, 'Z', '2023-01-01', 1, 'w.png'),
(42, 'A', '2023-01-01', 0, 'w.png'),
(43, 'Bb', '2023-01-01', 0, 'w.png'),
(44, 'Cc', '2023-01-01', 0, 'w.png'),
(45, 'D', '2023-01-01', 0, 'w.png'),
(46, 'Ee', '2023-01-01', 0, 'w.png'),
(47, 'Fff', '2023-01-01', 0, 'w.png'),
(48, 'Z', '2023-01-01', 0, 'w.png'),
(49, 'Uuu', '2023-01-01', 0, 'w.png'),
(50, 'Ui', '2023-01-01', 0, 'w.png'),
(51, 'Uiiiu', '2023-01-01', 0, 'w.png'),
(52, 'O', '2023-01-01', 0, 'w.png'),
(53, 'W', '2023-01-01', 0, 'w.png'),
(54, 'Wp', '2023-01-01', 0, 'w.png');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `roles`
--

INSERT INTO `roles` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'user', '2020-08-02 14:57:31', '2020-08-02 14:57:31'),
(2, 'moderator', '2020-08-02 14:57:31', '2020-08-02 14:57:31'),
(3, 'admin', '2020-08-02 14:57:31', '2020-08-02 14:57:31');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'user', 'user', '$2a$08$gXM4pyuhZFlC72PeAwxrUOR0uA31/d2PdgnHP35JGV.0bQNiZBatS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'mod', 'mod', '$2a$08$gXM4pyuhZFlC72PeAwxrUOR0uA31/d2PdgnHP35JGV.0bQNiZBatS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'admin', 'admin', '$2a$08$97Ze1/hXfOX44WdC62Rq8uRkog9HYC1HukRX8eld2ZEKPyenM5v.G', '2020-08-02 15:03:59', '2020-08-02 15:03:59');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `user_roles`
--

CREATE TABLE `user_roles` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `user_roles`
--

INSERT INTO `user_roles` (`createdAt`, `updatedAt`, `roleId`, `userId`) VALUES
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
('2020-08-02 15:04:00', '2020-08-02 15:04:00', 1, 3),
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 2),
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 3),
('2020-08-02 15:04:00', '2020-08-02 15:04:00', 3, 3);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`film_id`);

--
-- A tábla indexei `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`roleId`,`userId`),
  ADD KEY `userId` (`userId`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `film`
--
ALTER TABLE `film`
  MODIFY `film_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
