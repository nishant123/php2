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
-- Database: `globaldschool`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblclass`
--

CREATE TABLE `tblclass` (
  `id` int(10) NOT NULL,
  `class_name` varchar(200) NOT NULL,
  `code` varchar(200) NOT NULL,
  `scode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblclass`
--

INSERT INTO `tblclass` (`id`, `class_name`, `code`, `scode`) VALUES
(1, 'First Class', '904JEM', 'gvm'),
(2, 'Second Class', '2RWX3E', 'gvm'),
(3, 'Fifth Class', 'GQM7SS', 'mss'),
(4, 'sixth Class', 'O2T32T', 'mss'),
(5, 'Fifth Class', 'EPOD06', 'gvm'),
(6, 'sixth Class', 'ZYFP4G', 'gvm'),
(7, 'First Class', '1XTZKL', 'youtube'),
(8, 'Second Class', 'PCLL1A', 'youtube'),
(9, 'Third Class', 'OGONEJ', 'youtube'),
(10, 'Fourth Class', '4HII97', 'youtube'),
(11, 'Fifth Class', '6O55TR', 'youtube'),
(12, 'Sixth Class', 'GIDASR', 'youtube'),
(13, 'Seventh Class', 'LOA21I', 'youtube'),
(14, 'Eight Class', '3AMBY0', 'youtube'),
(15, 'Ninth Class', 'E7XXUD', 'youtube'),
(16, 'Tenth Class', 'L3OCHA', 'youtube'),
(17, 'Eleventh Class', '2WOGGU', 'youtube'),
(18, 'Twelth Class', '4X9XJO', 'youtube');

-- --------------------------------------------------------

--
-- Table structure for table `tblquestions`
--

CREATE TABLE `tblquestions` (
  `id` int(10) NOT NULL,
  `question` varchar(500) NOT NULL,
  `ans1` varchar(500) NOT NULL,
  `ans2` varchar(500) NOT NULL,
  `ans3` varchar(500) NOT NULL,
  `ans4` varchar(500) NOT NULL,
  `rightans` varchar(100) NOT NULL,
  `orderby` int(10) NOT NULL,
  `code` varchar(200) NOT NULL,
  `vcode` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblquestions`
--

INSERT INTO `tblquestions` (`id`, `question`, `ans1`, `ans2`, `ans3`, `ans4`, `rightans`, `orderby`, `code`, `vcode`) VALUES
(1, 'what is 1+4', '3', '5', '7', '9', 'ans2', 1, 'M78BQ3', 'M78BQ3'),
(2, 'what is 2+3', '1', '6', '5', '7', 'ans3', 2, 'M78BQ3', 'M78BQ3'),
(4, 'what is 5+6', '2', '11', '3', '7', 'ans2', 4, 'NYNT2G', 'M78BQ3'),
(5, 'what is 7+8', '3', '15', '3', '5', 'ans2', 6, 'V8N8JW', 'M78BQ3');

-- --------------------------------------------------------

--
-- Table structure for table `tblquestionsresults`
--

CREATE TABLE `tblquestionsresults` (
  `id` int(10) NOT NULL,
  `vcode` varchar(200) NOT NULL,
  `result` int(10) NOT NULL,
  `studcode` varchar(100) NOT NULL,
  `maxnumber` int(10) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblquestionsresults`
--

INSERT INTO `tblquestionsresults` (`id`, `vcode`, `result`, `studcode`, `maxnumber`, `date_created`) VALUES
(8, 'M78BQ3', 1, '904JEM', 4, '2021-01-26 10:32:37'),
(9, 'M78BQ3', 3, '904JEM', 4, '2021-01-26 10:32:37'),
(10, 'M78BQ3', 2, '904JEM', 4, '2021-01-26 10:32:37'),
(11, 'M78BQ3', 4, '904JEM', 4, '2021-01-28 12:44:18');

-- --------------------------------------------------------

--
-- Table structure for table `tblschool`
--

CREATE TABLE `tblschool` (
  `id` int(10) NOT NULL,
  `school_name` varchar(200) NOT NULL,
  `code` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblschool`
--

INSERT INTO `tblschool` (`id`, `school_name`, `code`) VALUES
(1, 'gvm', 'C0N21V'),
(2, 'm.s.s', '9Z3I7K');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp(),
  `school` varchar(100) NOT NULL,
  `classcode` varchar(100) NOT NULL,
  `section` varchar(10) NOT NULL,
  `code` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`, `school`, `classcode`, `section`, `code`) VALUES
(2, 'Nishant', 'nishant', 9742478219, 'chawla.nishant@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '2021-01-16 16:56:51', 'gvm', '904JEM', 'A', '904JEM');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `ID` int(10) NOT NULL,
  `Subject` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `classcode` varchar(10) NOT NULL,
  `code` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`ID`, `Subject`, `CreationDate`, `classcode`, `code`) VALUES
(1, 'Mathmetics', '2019-10-07 06:11:06', '904JEM', '1EY61W'),
(5, 'Hindi', '2019-10-07 06:11:49', '904JEM', 'XXXE3W'),
(6, 'English', '2019-10-07 06:11:56', '904JEM', 'ZG996N'),
(13, 'Computer', '2019-10-13 19:00:22', '904JEM', 'TO7LCY');

-- --------------------------------------------------------

--
-- Table structure for table `tblteacher`
--

CREATE TABLE `tblteacher` (
  `ID` int(10) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `school` varchar(200) NOT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Picture` varchar(200) NOT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Qualifications` varchar(120) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `TeacherSub` varchar(120) DEFAULT NULL,
  `JoiningDate` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `code` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblteacher`
--

INSERT INTO `tblteacher` (`ID`, `username`, `password`, `school`, `Name`, `Picture`, `Email`, `MobileNumber`, `Qualifications`, `Address`, `TeacherSub`, `JoiningDate`, `RegDate`, `code`) VALUES
(5, 'nishant', '21232f297a57a5a743894a0e4a801fc3', 'gvm', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-24 12:03:10', 'B2REEQ');

-- --------------------------------------------------------

--
-- Table structure for table `tblvideourl`
--

CREATE TABLE `tblvideourl` (
  `ID` int(10) NOT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `url` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `categorycode` varchar(200) NOT NULL,
  `activityid` int(10) NOT NULL,
  `type` int(10) NOT NULL,
  `subjectcode` varchar(200) NOT NULL,
  `code` varchar(100) NOT NULL,
  `file_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvideourl`
--

INSERT INTO `tblvideourl` (`ID`, `Name`, `url`, `description`, `categorycode`, `activityid`, `type`, `subjectcode`, `code`, `file_name`) VALUES
(1, 'Mathematics 1', 'https://www.youtube.com/embed/GANr-0rqueo', '', 'MQQXTT', 0, 0, '1EY61W', 'M78BQ3', ''),
(2, 'Mathematics 2', 'https://www.youtube.com/embed/f8KrBW1-lrw', '', 'MQQXTT', 0, 0, '1EY61W', 'N687EL', ''),
(5, 'Mathematics 1', 'https://www.youtube.com/embed/lGfWirQASMA', '', 'MQQXTT', 0, 1, '0', 'PLVK4H', ''),
(6, 'Mathematics 2', 'https://www.youtube.com/embed/14uOL_dUcJ4', '', 'MQQXTT', 0, 1, '0', '0QM2PL', ''),
(7, 'Mathematics 3', 'https://www.youtube.com/embed/giC__5i5TaI', '', 'MQQXTT', 0, 1, '0', 'HD9XAB', ''),
(8, 'Mathematics 4', 'https://www.youtube.com/embed/Q5Wkma8JvX8', '', 'MQQXTT', 0, 1, '0', 'TUJGSP', ''),
(9, 'Mathematics 5', 'https://www.youtube.com/embed/CZlWBYDldno', '', 'MQQXTT', 0, 1, '0', 'UP6NFT', ''),
(10, 'English 1', 'https://www.youtube.com/embed/8lEUOs1cfnw', '', 'RJ7N19', 0, 1, '0', 'JXV9QF', ''),
(11, 'English 2', 'https://www.youtube.com/embed/j65pint7U34', '', 'RJ7N19', 0, 1, '0', 'SJT1T1', ''),
(12, 'English 3', 'https://www.youtube.com/embed/beyozG3VFUA', '', 'RJ7N19', 0, 1, '0', 'VK05YP', ''),
(13, 'English 4', 'https://www.youtube.com/embed/-FUuLv8PpgE', '', 'RJ7N19', 0, 1, '0', 'A5RJK8', ''),
(14, 'English 5', 'https://www.youtube.com/embed/SM4H1KdQzoA', '', 'RJ7N19', 0, 1, '0', 'MP01FI', ''),
(15, 'excel_info_part1', 'https://player.vimeo.com/video/507547718', '', 'CGI65X', 0, 1, '0', '8S02HP', ''),
(16, 'excel_info_part2', 'https://player.vimeo.com/video/507547943', '', 'CGI65X', 0, 1, '0', 'UP8PFL', '2_excel_info_part2.mp4'),
(17, 'excel_info_part3', 'https://player.vimeo.com/video/507548090', '', 'CGI65X', 0, 1, '0', '6BDFDB', '3_excel_info_part3.mp4'),
(18, 'excel_info_part4', 'https://player.vimeo.com/video/507548179', '', 'CGI65X', 0, 1, '0', 'XT829U', '4_excel_info_part4.mp4'),
(19, 'excel_info_part5', 'https://player.vimeo.com/video/507548306', '', 'CGI65X', 0, 1, '0', 'O32F09', '5_excel_info_part5.mp4'),
(20, 'excel_info_part6', 'https://player.vimeo.com/video/507548431', '', 'CGI65X', 0, 1, '0', 'WAKEDD', '6_excel_info_part6.mp4'),
(21, 'excel_info_part7', 'https://player.vimeo.com/video/507557201', '', 'CGI65X', 0, 1, '0', 'GEMJBR', '7_excel_info_part7.mp4'),
(22, 'excel_info_part8', 'https://player.vimeo.com/video/510133156', '', 'CGI65X', 0, 1, '0', '9YMRZ1', '8_excel_info_part8.mp4'),
(23, 'excel_info_part9', 'https://player.vimeo.com/video/510133272', '', 'CGI65X', 0, 1, '0', 'IYJEAB', '9_excel_info_part9.mp4'),
(24, 'excel_info_part10', 'https://player.vimeo.com/video/510133379', '', 'CGI65X', 0, 1, '0', 'JYN4RJ', '10_excel_info_part10.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `tblyoutubecategory`
--

CREATE TABLE `tblyoutubecategory` (
  `ID` int(10) NOT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `classid` int(10) NOT NULL,
  `code` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblyoutubecategory`
--

INSERT INTO `tblyoutubecategory` (`ID`, `Name`, `CreationDate`, `classid`, `code`) VALUES
(1, 'Mathmetics', '2019-10-07 06:11:06', 1, 'MQQXTT'),
(5, 'Hindi', '2019-10-07 06:11:49', 1, 'U5L6ET'),
(6, 'English', '2019-10-07 06:11:56', 1, 'RJ7N19'),
(14, 'Ms Excel', '2019-10-07 06:11:56', 1, 'CGI65X');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblclass`
--
ALTER TABLE `tblclass`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblquestions`
--
ALTER TABLE `tblquestions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblquestionsresults`
--
ALTER TABLE `tblquestionsresults`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblschool`
--
ALTER TABLE `tblschool`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblteacher`
--
ALTER TABLE `tblteacher`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblvideourl`
--
ALTER TABLE `tblvideourl`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblyoutubecategory`
--
ALTER TABLE `tblyoutubecategory`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblclass`
--
ALTER TABLE `tblclass`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblquestions`
--
ALTER TABLE `tblquestions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblquestionsresults`
--
ALTER TABLE `tblquestionsresults`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblschool`
--
ALTER TABLE `tblschool`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblteacher`
--
ALTER TABLE `tblteacher`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblvideourl`
--
ALTER TABLE `tblvideourl`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tblyoutubecategory`
--
ALTER TABLE `tblyoutubecategory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
