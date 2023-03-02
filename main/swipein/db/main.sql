-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2022 at 12:36 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `main`
--

-- --------------------------------------------------------

--
-- Table structure for table `at_swipein`
--

CREATE TABLE `at_swipein` (
  `id` int(10) NOT NULL,
  `swipein` timestamp NULL DEFAULT NULL,
  `swipeout` timestamp NULL DEFAULT NULL,
  `hashcode` varchar(20) NOT NULL,
  `calculation` timestamp NULL DEFAULT NULL,
  `reason` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `at_swipein`
--

INSERT INTO `at_swipein` (`id`, `swipein`, `swipeout`, `hashcode`, `calculation`, `reason`) VALUES
(91, '2022-05-18 18:37:54', NULL, 'ADFDHD', NULL, 'test swipe');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `at_swipein`
--
ALTER TABLE `at_swipein`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `at_swipein`
--
ALTER TABLE `at_swipein`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
