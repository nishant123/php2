-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2023 at 07:40 AM
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
-- Database: `homedocsshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `shop_admin`
--

CREATE TABLE `shop_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_admin`
--

INSERT INTO `shop_admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '5ed3434c490c58475c65f7990eabf1e5', '2017-01-24 16:21:18', '17-01-2023 07:18:57 PM');

-- --------------------------------------------------------

--
-- Table structure for table `shop_category`
--

CREATE TABLE `shop_category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_category`
--

INSERT INTO `shop_category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(9, 'education docs', '', '2023-01-18 13:31:25', NULL),
(10, 'identity docs', '', '2023-01-18 13:31:38', NULL),
(11, 'durvang', '', '2023-02-02 17:28:51', NULL),
(12, 'property', '', '2023-02-02 17:34:39', NULL),
(13, 'songs', '', '2023-02-02 17:53:11', NULL),
(14, 'snap', 'snap', '2023-02-02 18:14:53', NULL),
(15, 'php', 'php', '2023-02-06 10:52:46', NULL),
(16, 'aarti', '', '2023-02-06 11:38:25', NULL),
(17, 'Not defined', 'Not defined', '2023-02-13 01:54:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shop_orders`
--

CREATE TABLE `shop_orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_orders`
--

INSERT INTO `shop_orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(14, 6, '21', 2, '2023-01-02 14:38:26', 'COD', NULL),
(15, 6, '23', 1, '2023-01-02 14:38:26', 'COD', NULL),
(16, 6, '23', 1, '2023-01-02 14:40:30', 'COD', NULL),
(17, 6, '21', 1, '2023-01-02 14:43:46', 'COD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shop_ordertrackhistory`
--

CREATE TABLE `shop_ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shop_productreviews`
--

CREATE TABLE `shop_productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_productreviews`
--

INSERT INTO `shop_productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:59:19');

-- --------------------------------------------------------

--
-- Table structure for table `shop_products`
--

CREATE TABLE `shop_products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_products`
--

INSERT INTO `shop_products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 10, 16, 'himank aadhar', 'cmp', 200, 200, '<br>', 'himankAadhaar.pdf', 'himankAadhaar.pdf', 'himankAadhaar.pdf', 0, 'In Stock', '2023-02-02 12:32:20', NULL),
(25, 9, 15, 'education certificate snap', '0', 0, 0, 'snap', 'educational certificate.zip', 'educational certificate.zip', 'educational certificate.zip', 0, 'In Stock', '2023-02-02 12:41:46', NULL),
(26, 10, 16, 'aadhar everyone zip', 'aaa', 3, 3, '<br>', 'aadhar.zip', 'aadhar.zip', 'aadhar.zip', 3, 'In Stock', '2023-02-02 12:46:08', NULL),
(27, 10, 16, 'family id', 'f', 5, 5, '<br>', 'familyid.jpg', 'familyid.jpg', 'familyid.jpg', 9, 'In Stock', '2023-02-02 12:50:01', NULL),
(28, 12, 18, 'property', 'prop', 2, 2, '2', 'propertypapers.zip', 'propertypapers.zip', 'propertypapers.zip', 0, 'In Stock', '2023-02-02 17:38:03', NULL),
(29, 11, 17, 'ladoo videos', 'ladoo videos', 0, 0, '<br>', 'ladoo videos.zip', 'ladoo videos.zip', 'ladoo videos.zip', 0, 'In Stock', '2023-02-02 17:39:21', NULL),
(30, 13, 19, 'dance songs', '0', 0, 0, 'dance songs<div>listening songs</div><div>dance classes</div>', 'songs.zip', 'songs.zip', 'songs.zip', 0, 'In Stock', '2023-02-02 17:55:03', NULL),
(31, 14, 20, '19-2-2021mobile', '19-2-2021mobile', 0, 0, 'D:old5_nishant\nishant19-2-2021mobile<br>', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 0, 'In Stock', '2023-02-02 18:17:52', NULL),
(32, 15, 21, 'php projects', 'php prj', 0, 0, 'D:old7_nishant -nishant- php -php gurukul prj<br>', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 0, 'In Stock', '2023-02-06 10:53:40', NULL),
(33, 16, 22, 'aarti', 'aarti', 0, 0, 'D:\\old7_nishant-nishant-aarti', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 0, 'In Stock', '2023-02-06 10:53:40', NULL),
(37, 17, 23, 'undefined product', '0', 0, 0, 'dfgfd', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 0, 'In Stock', '2023-02-13 02:17:02', NULL),
(38, 15, 21, 'online backup perfectrgs', '0', 0, 0, 'D:-old7_nishant_pending-nishant-online-backupperfectrgs14-2-2023', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 0, 'In Stock', '2023-02-14 13:20:04', NULL),
(39, 10, 16, 'himank aadhar', '0', 0, 0, 'D:-old7_nishant_pending-nishant-docs-himank aadhar<br>', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 0, 'In Stock', '2023-02-14 13:41:09', NULL),
(40, 13, 19, 'bhakti song', '0', 0, 0, 'D:-old7_nishant_pending-nishant-songs-bakti songs<br>', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 0, 'In Stock', '2023-02-14 14:40:01', NULL),
(41, 17, 23, 'gvm showcase', '0', 0, 0, 'D:-old7_nishant_pending-nishant-notes-gvm', 'noimage.jpg', 'noimage.jpg', 'noimage.jpg', 0, 'In Stock', '2023-02-13 02:17:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shop_subcategory`
--

CREATE TABLE `shop_subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_subcategory`
--

INSERT INTO `shop_subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(15, 9, 'gen education', '2023-01-18 13:31:55', '02-02-2023 05:59:13 PM'),
(16, 10, 'gen identity', '2023-01-18 13:32:03', '02-02-2023 05:59:29 PM'),
(17, 11, 'durvang study', '2023-02-02 17:29:03', NULL),
(18, 12, '690 mohalla kalan', '2023-02-02 17:35:00', NULL),
(19, 13, 'song', '2023-02-02 17:53:23', NULL),
(20, 14, 'snap', '2023-02-02 18:15:01', NULL),
(21, 15, 'php', '2023-02-06 10:52:57', NULL),
(22, 16, 'aarti', '2023-02-06 11:38:38', NULL),
(23, 17, 'not defined', '2023-02-13 01:54:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shop_subcategory1`
--

CREATE TABLE `shop_subcategory1` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_subcategory1`
--

INSERT INTO `shop_subcategory1` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(2, 4, 'Led Television', '2017-01-26 16:24:52', '26-01-2017 11:03:40 PM'),
(3, 4, 'Television', '2017-01-26 16:29:09', ''),
(4, 4, 'Mobiles', '2017-01-30 16:55:48', ''),
(5, 4, 'Mobile Accessories', '2017-02-04 04:12:40', ''),
(6, 4, 'Laptops', '2017-02-04 04:13:00', ''),
(7, 4, 'Computers', '2017-02-04 04:13:27', ''),
(8, 3, 'Comics', '2017-02-04 04:13:54', ''),
(9, 5, 'Beds', '2017-02-04 04:36:45', ''),
(10, 5, 'Sofas', '2017-02-04 04:37:02', ''),
(11, 5, 'Dining Tables', '2017-02-04 04:37:51', ''),
(12, 6, 'Men Footwears', '2017-03-10 20:12:59', ''),
(13, 7, 'Suits', '2017-03-10 20:12:59', ''),
(14, 8, 'Cleaning', '2017-03-10 20:12:59', '');

-- --------------------------------------------------------

--
-- Table structure for table `shop_userlog`
--

CREATE TABLE `shop_userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_userlog`
--

INSERT INTO `shop_userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'chawla.nishant@gmail.com', 0x3a3a3100000000000000000000000000, '2023-01-02 14:37:33', NULL, 0),
(2, 'chawla.nishant@gmail.com', 0x3a3a3100000000000000000000000000, '2023-01-02 14:38:22', NULL, 1),
(3, 'chawla.nishant@gmail.com', 0x3a3a3100000000000000000000000000, '2023-01-06 09:06:48', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shop_users`
--

CREATE TABLE `shop_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL,
  `balance` varchar(200) NOT NULL DEFAULT '100'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_users`
--

INSERT INTO `shop_users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`, `balance`) VALUES
(1, 'Anuj Kumar', 'anuj.lpu1@gmail.com', 9009857868, 'f925916e2754e5e03f75dd58a5733251', 'CS New Delhi', 'New Delhi', 'Delhi', 110001, 'New Delhi', 'New Delhi', 'Delhi', 110092, '2017-02-04 19:30:50', '', ''),
(6, 'nishant', 'chawla.nishant@gmail.com', 9742478219, '5ed3434c490c58475c65f7990eabf1e5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-02 14:37:50', NULL, '100');

-- --------------------------------------------------------

--
-- Table structure for table `shop_wishlist`
--

CREATE TABLE `shop_wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_wishlist`
--

INSERT INTO `shop_wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `shop_admin`
--
ALTER TABLE `shop_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_category`
--
ALTER TABLE `shop_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_orders`
--
ALTER TABLE `shop_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_ordertrackhistory`
--
ALTER TABLE `shop_ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_productreviews`
--
ALTER TABLE `shop_productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_products`
--
ALTER TABLE `shop_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_subcategory`
--
ALTER TABLE `shop_subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_subcategory1`
--
ALTER TABLE `shop_subcategory1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_userlog`
--
ALTER TABLE `shop_userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_users`
--
ALTER TABLE `shop_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_wishlist`
--
ALTER TABLE `shop_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `shop_admin`
--
ALTER TABLE `shop_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shop_category`
--
ALTER TABLE `shop_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `shop_orders`
--
ALTER TABLE `shop_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `shop_ordertrackhistory`
--
ALTER TABLE `shop_ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `shop_productreviews`
--
ALTER TABLE `shop_productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shop_products`
--
ALTER TABLE `shop_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `shop_subcategory`
--
ALTER TABLE `shop_subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `shop_subcategory1`
--
ALTER TABLE `shop_subcategory1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `shop_userlog`
--
ALTER TABLE `shop_userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shop_users`
--
ALTER TABLE `shop_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `shop_wishlist`
--
ALTER TABLE `shop_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
