-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2022 at 04:19 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coffeecafe`
--

-- --------------------------------------------------------

--
-- Table structure for table `beverages`
--

CREATE TABLE `beverages` (
  `b_id` int(255) NOT NULL,
  `menu_type` varchar(255) NOT NULL DEFAULT '',
  `product` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `price` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beverages`
--

INSERT INTO `beverages` (`b_id`, `menu_type`, `product`, `image`, `price`) VALUES
(2, '1', 'VANILLA CAPPUCCINO', 'b1.PNG', '110'),
(3, '1', 'CAPPUCCINO', 'b2.PNG', '140'),
(4, '1', 'CAFE MOCHA', 'b3.PNG', '180'),
(5, '1', 'MACCHIA TO', 'b4.PNG', '80'),
(6, '2', 'DEVIS OWN', 'b5.PNG', '250'),
(7, '2', 'ICED ESKIMO', 'b6.PNG', '200'),
(8, '2', 'KAPPI NIRVANA', 'b7.PNG', '300'),
(9, '2', 'VEGAN SHAKE', 'b8.PNG', '130'),
(10, '3', 'CRUNCHY VANILLA FRAPE', 'b9.PNG', '180'),
(11, '3', 'CRUNCHY FRAPPE', 'b10.PNG', '160'),
(12, '3', 'BLUSHBERRY FRAPPE', 'b11.PNG', '190'),
(13, '3', 'CHOCO FRAPPE', 'b12.PNG', '220'),
(14, '4', 'PROMEGRANATE LEMON', 'b13.PNG', '130'),
(15, '4', 'CUCUMBER LEMON', 'b14.PNG', '170');

-- --------------------------------------------------------

--
-- Table structure for table `combo`
--

CREATE TABLE `combo` (
  `c_id` int(255) NOT NULL,
  `menu_type` varchar(255) NOT NULL DEFAULT '',
  `product` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `price` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `combo`
--

INSERT INTO `combo` (`c_id`, `menu_type`, `product`, `image`, `price`) VALUES
(2, '1', 'COMBO-CHOCO DONUT', 'c51.PNG', '350'),
(3, '1', 'COMBO-EGG WRAP', 'c52.PNG', '400'),
(4, '1', 'COMBOCHILLI CHESE TOASTIZZA', 'c53.PNG', '250'),
(5, '1', 'CUP SLICE COMBO', 'c54.PNG', '380'),
(6, '1', 'CLASSIC VEG', 'c55.PNG', '290'),
(7, '1', 'CHILLER VEG', 'c56.PNG', '320'),
(8, '1', 'combowrap', '50.PNG', '400');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `cid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `mail` varchar(255) NOT NULL DEFAULT '',
  `phn` varchar(255) NOT NULL DEFAULT '',
  `msg` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`cid`, `name`, `mail`, `phn`, `msg`) VALUES
(1, 'ajay120', '01723214', '14343', '0'),
(2, 'ajay120', '01723214', '14343', '0'),
(3, 'ajay120', '01723214', '14343', '0'),
(4, 'ajay120', '01723214', '14343', '0');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `f_id` int(11) NOT NULL,
  `menu_type` varchar(255) NOT NULL DEFAULT '',
  `product` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`f_id`, `menu_type`, `product`, `image`, `price`) VALUES
(32, '1', 'EGG WRAP', 'c14.PNG', 100),
(33, '1', 'FRENCH CROISSANT', 'c15.PNG', 45),
(34, '1', 'CREAMY CHOCO DONUT', 'c16.PNG', 65),
(35, '1', 'CHILLI CHEESE TOASTIZZA', 'c18.PNG', 150),
(36, '1', 'VEG SAMOSA', 'c19.PNG', 30),
(37, '1', 'HOT \"N\" SPICY VEG PUFF', 'c20.PNG', 35),
(38, '2', 'CHESSY VEG CROISSANT', 'c26.PNG', 100),
(40, '2', 'SMOKED CHICKEN SANDWIH', 'c28.PNG', 70),
(41, '2', 'CHICKEN 65 SANDWICH', 'c24.PNG', 65),
(42, '2', 'TANDOORI CHICKEN SANDWICH', 'c29.PNG', 80),
(43, '2', 'TANDOORI PANEER SANDWICH', 'c32.PNG', 95),
(44, '2', 'TEX-MEX- VEG CHESSE SANDWICH', 'c31.PNG', 65),
(45, '3', 'CHOC-HOLA', 'c38.PNG', 150),
(46, '3', 'DARK PASSION', 'c39.PNG', 130),
(48, '3', 'VANILLA ICE CREAM', 'c41.PNG', 120),
(49, '3', 'CHOCOLATE ICE CREAM', 'c44.PNG', 135),
(50, '3', 'SIZZLE DAZZLE BROWNIE', 'c40.PNG', 200),
(51, '4', 'CHOCOLATE FANTASY CAKE', 'c45.PNG', 300),
(52, '4', 'HEZELNUT KARAT CELEBRATION CAKE', 'c46.PNG', 450),
(53, '4', 'CHOCO INDULGENCE CELBRATION CAKE', 'c47.PNG', 500),
(54, '5', 'MANGO SHOT', 'C48.PNG', 250),
(55, '5', 'BELGIAN CHOCO SHOT', 'C49.PNG', 250);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `user` varchar(100) NOT NULL,
  `pwd` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `user`, `pwd`) VALUES
(16, 'disha', 'a@gmail.com', 'adc'),
(29, 'chhavi', 'c@gmail.com', 'disha'),
(30, 'Amit Dewangan', 'amit@gmail.com', 'qwerty12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beverages`
--
ALTER TABLE `beverages`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `combo`
--
ALTER TABLE `combo`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beverages`
--
ALTER TABLE `beverages`
  MODIFY `b_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `combo`
--
ALTER TABLE `combo`
  MODIFY `c_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
