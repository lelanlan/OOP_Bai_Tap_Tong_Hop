-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2021 at 09:56 PM
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
(54, 'anh', 2, '2021-11-23 03:50:54'),
(55, 'lan', 3, '2021-11-23 03:51:01'),
(56, 'anh', 4, '2021-11-23 03:51:07'),
(57, 'minh', 5, '2021-11-23 03:51:15'),
(58, 'anh', 6, '2021-11-23 03:54:47');

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
  `time` datetime DEFAULT NULL,
  `lanchoi` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `game_id`, `player`, `cards`, `point`, `biggest_card`, `time`, `lanchoi`) VALUES
(159, 1, '1', '1', 1, '1', '2021-11-22 21:49:20', 1),
(161, 0, 'lan', '8♦6♣3♥', 7, '8♦', NULL, 2),
(162, 1, 'hoa', '4♣4♥1♦', 9, '4♥', NULL, 2),
(163, 2, 'anh', '6♦1♥2♥', 9, '6♦', NULL, 2),
(164, 3, 'minh', '9♥4♦5♠', 8, '9♥', NULL, 2),
(165, 0, 'lan', '7♠9♥2♥', 8, '9♥', NULL, 3),
(166, 1, 'hoa', '7♦9♦1♠', 7, '9♦', NULL, 3),
(167, 2, 'anh', '8♦1♦6♣', 5, '8♦', NULL, 3),
(168, 3, 'minh', '4♠6♥2♣', 2, '6♥', NULL, 3),
(169, 0, 'lan', '8♦2♦5♠', 5, '8♦', NULL, 4),
(170, 1, 'hoa', '1♥6♦5♣', 2, '6♦', NULL, 4),
(171, 2, 'anh', '3♣7♠9♣', 9, '9♣', NULL, 4),
(172, 3, 'minh', '8♣5♦3♥', 6, '8♣', NULL, 4),
(173, 0, 'lan', '5♦1♦6♣', 2, '6♣', NULL, 5),
(174, 1, 'hoa', '4♣7♥6♥', 7, '7♥', NULL, 5),
(175, 2, 'anh', '3♠9♥1♠', 3, '9♥', NULL, 5),
(176, 3, 'minh', '3♣8♦7♠', 8, '8♦', NULL, 5),
(177, 0, 'lan', '7♦6♦8♠', 1, '8♠', NULL, 6),
(178, 1, 'hoa ', '2♦5♠7♥', 4, '7♥', NULL, 6),
(179, 2, 'anh', '5♦2♠3♣', 10, '5♦', NULL, 6);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
