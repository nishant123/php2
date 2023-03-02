-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2023 at 03:31 PM
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
  `reason` varchar(200) DEFAULT NULL,
  `reasonswipeout` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `at_swipein`
--

INSERT INTO `at_swipein` (`id`, `swipein`, `swipeout`, `hashcode`, `calculation`, `reason`, `reasonswipeout`) VALUES
(91, '2022-05-18 18:37:54', '2022-08-09 10:15:44', 'ADFDHD', NULL, '', ''),
(92, '2022-08-09 10:17:42', '2022-08-10 07:49:01', 'ADFDHD', NULL, 'dfds', ''),
(93, '2022-08-10 07:49:03', '2022-08-10 07:49:04', 'ADFDHD', NULL, '', ''),
(94, '2022-08-10 07:49:18', '2022-08-10 08:03:53', 'ADFDHD', NULL, 'sdfds', '');

-- --------------------------------------------------------

--
-- Table structure for table `at_users`
--

CREATE TABLE `at_users` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `code` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `at_users`
--

INSERT INTO `at_users` (`id`, `name`, `code`) VALUES
(1, 'neha', 'ADFDHD');

-- --------------------------------------------------------

--
-- Table structure for table `gen_studentinfo`
--

CREATE TABLE `gen_studentinfo` (
  `id` int(10) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phno` varchar(200) NOT NULL,
  `identity_doc1` varchar(200) NOT NULL,
  `identity_doc2` varchar(200) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `register_date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gen_studentinfo`
--

INSERT INTO `gen_studentinfo` (`id`, `fullname`, `email`, `phno`, `identity_doc1`, `identity_doc2`, `photo`, `register_date`) VALUES
(1, 'nishant chawla', 'chawla.nishant@gmail.com', '974221111', '', '', '', ''),
(2, 'nishna', 'chawla.nishant@gmail.com', '8388844', '', '', '', '2022-07-17 15:41:40'),
(3, 'nishna', 'chawla.nishant@gmail.com', '8388844', '', '', '', '2022-07-17 15:43:22'),
(5, 'nish', 'chawla.nisha@gmail.com', '9888892222', '', '', '', '2022-12-30 00:52:51'),
(6, 'dgf', 'fdg', 'fgg', '', '', '', '2022-12-30 02:05:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `at_swipein`
--
ALTER TABLE `at_swipein`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `at_users`
--
ALTER TABLE `at_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gen_studentinfo`
--
ALTER TABLE `gen_studentinfo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `at_swipein`
--
ALTER TABLE `at_swipein`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `at_users`
--
ALTER TABLE `at_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gen_studentinfo`
--
ALTER TABLE `gen_studentinfo`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
