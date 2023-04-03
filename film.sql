-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Feb 05. 19:27
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
-- Adatbázis: `marveladatb`
--

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

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`film_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `film`
--
ALTER TABLE `film`
  MODIFY `film_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
