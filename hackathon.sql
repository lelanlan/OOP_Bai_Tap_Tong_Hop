-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2021 at 07:42 PM
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
(69, 'nga', 1, '2021-11-25 01:10:47'),
(70, 'lan', 2, '2021-11-25 01:11:11'),
(71, 'nga', 3, '2021-11-25 01:33:39'),
(72, 'nga', 4, '2021-11-25 01:34:13'),
(73, 'la', 5, '2021-11-25 01:36:33'),
(74, 'lan', 6, '2021-11-25 01:39:49');

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
(204, 0, 'lan', '4♥4♠2♠', 10, '4♥', 1),
(205, 1, 'nga', '7♠7♥6♥', 10, '7♥', 1),
(206, 0, 'lan', '1♥8♣4♥', 3, '8♣', 2),
(207, 1, 'nga', '1♦2♥9♠', 2, '9♠', 2),
(208, 0, 'lan', '7♠9♦3♥', 9, '9♦', 3),
(209, 1, 'nga', '2♦6♦2♠', 10, '6♦', 3),
(210, 2, 'mi', '4♣8♣3♠', 5, '8♣', 3),
(211, 0, 'lan', '7♥9♥8♣', 4, '9♥', 4),
(212, 1, 'nga', '5♥7♦3♥', 5, '7♦', 4),
(213, 2, 'mi', '3♦3♣5♣', 1, '5♣', 4),
(214, 0, 'la', '1♥9♦9♣', 9, '9♦', 5),
(215, 1, 'li', '4♥4♣5♠', 3, '5♠', 5),
(216, 2, 'mi', '8♠1♣8♥', 7, '8♥', 5),
(217, 0, 'lan', '1♠3♣4♣', 8, '4♣', 6),
(218, 1, 'hồng', '1♦9♥7♠', 7, '9♥', 6),
(219, 2, 'mi', '3♦8♦6♥', 7, '8♦', 6);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
