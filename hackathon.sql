-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2021 at 09:10 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hackathon`
--

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `id` int(11) NOT NULL,
  `name_win` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lanchoi` int(10) NOT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`id`, `name_win`, `lanchoi`, `time`) VALUES
(77, 'hoa ', 1, '2021-11-27 13:24:03'),
(78, 'lan', 2, '2021-11-27 13:24:06'),
(79, 'lan', 3, '2021-11-27 13:24:08'),
(80, 'lan', 4, '2021-11-27 13:39:57'),
(81, 'hoa', 5, '2021-11-27 14:48:30'),
(82, 'hoa', 6, '2021-11-27 14:48:35'),
(83, 'mi', 7, '2021-11-27 14:57:52'),
(84, 'lan', 8, '2021-11-27 15:09:23');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `player` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cards` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `point` int(11) NOT NULL,
  `biggest_card` char(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lanchoi` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `game_id`, `player`, `cards`, `point`, `biggest_card`, `lanchoi`) VALUES
(227, 0, 'lan', '5♥6♣5♠', 6, '6♣', 1),
(228, 1, 'hoa ', '5♣9♦3♥', 7, '9♦', 1),
(229, 2, 'cuc', '1♥3♠1♣', 5, '3♠', 1),
(230, 0, 'lan', '1♦1♠6♣', 8, '6♣', 2),
(231, 1, 'hoa ', '8♦2♦3♦', 3, '8♦', 2),
(232, 2, 'cuc', '6♠3♠6♦', 5, '6♦', 2),
(233, 0, 'lan', '5♥9♠2♦', 6, '9♠', 3),
(234, 1, 'hoa ', '2♥9♦1♣', 2, '9♦', 3),
(235, 2, 'cuc', '7♥3♥4♥', 4, '7♥', 3),
(236, 0, 'lan', '2♣4♠3♠', 9, '4♠', 4),
(237, 1, 'hoa', '8♥1♦2♦', 1, '8♥', 4),
(238, 2, 'nga', '7♦3♣8♦', 8, '8♦', 4),
(239, 0, 'lan', '9♦7♥3♣', 9, '9♦', 5),
(240, 1, 'hoa', '1♥2♣7♣', 10, '7♣', 5),
(241, 2, 'mi', '8♥2♦3♦', 3, '8♥', 5),
(242, 0, 'lan', '7♣6♥2♣', 5, '7♣', 6),
(243, 1, 'hoa', '3♦1♠6♦', 10, '6♦', 6),
(244, 2, 'mi', '4♦1♥7♦', 2, '7♦', 6),
(245, 0, 'lan ', '3♦5♠6♥', 4, '6♥', 7),
(246, 1, 'mi', '2♣7♥8♦', 7, '8♦', 7),
(247, 0, 'lan ', '5♦3♣5♠', 3, '5♦', 8),
(248, 1, 'lan', '7♥4♠3♥', 4, '7♥', 8),
(249, 2, 'lan', '2♠2♣9♠', 3, '9♠', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
