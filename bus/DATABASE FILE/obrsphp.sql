-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2022 at 07:41 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `obrsphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `booked`
--

CREATE TABLE `booked` (
  `id` int(30) NOT NULL,
  `schedule_id` int(30) NOT NULL,
  `ref_no` text NOT NULL,
  `name` varchar(250) NOT NULL,
  `qty` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '1=Paid, 0- Unpaid',
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booked`
--

INSERT INTO `booked` (`id`, `schedule_id`, `ref_no`, `name`, `qty`, `status`, `date_updated`) VALUES
(1, 1, '202206248407', 'Leala', 2, 1, '2022-06-25 21:43:13'),
(2, 4, '202206252673', 'Ram', 2, 0, '2022-06-25 17:10:27'),
(3, 2, '202206251496', 'Varun', 3, 1, '2022-06-25 23:21:55'),
(4, 4, '202206254769', 'Vinay', 1, 1, '2022-06-25 20:02:23'),
(5, 7, '202206257753', 'Chris', 34, 0, '2022-06-25 20:04:20'),
(6, 5, '20220625746', 'Sam', 3, 1, '2022-06-25 23:19:45'),
(7, 9, '202206252201', 'Test Name', 1, 0, '2022-06-25 23:23:51');

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `id` int(30) NOT NULL,
  `name` varchar(250) NOT NULL,
  `bus_number` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = inactive, 1 = active',
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`id`, `name`, `bus_number`, `status`, `date_updated`) VALUES
(1, 'Airavat', 'ADG4455', 1, '2022-08-15 18:59:55'),
(2, 'Airavat', 'ADG7782', 1, '2022-08-15 19:00:21'),
(3, 'Airavat', 'ADG6657', 1, '2022-08-16 19:00:37'),
(4, 'Airavat', 'ADG1769', 1, '2022-08-16 19:00:51'),
(5, 'Rajahamsa ', 'SFH2587', 1, '2022-08-17 19:01:13'),
(6, 'Rajahamsa ', 'SFH7777', 1, '2022-08-19 19:01:18'),
(7, 'Redbus', 'QWE8787', 1, '2022-08-19 19:01:38'),
(8, 'Rajahamsa ', 'ERE2585', 1, '2022-08-19 19:01:54'),
(9, 'Vajra', 'TWE8969', 1, '2022-08-20 19:02:14'),
(10, 'Rajahamsa ', 'TTY5874', 1, '2022-08-20 19:02:38'),
(11, 'Vajra', 'TWE1258', 1, '2022-08-21 19:02:54');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(30) NOT NULL,
  `terminal_name` text NOT NULL,
  `city` varchar(250) NOT NULL,
  `state` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0= inactive , 1= active',
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `terminal_name`, `city`, `state`, `status`, `date_updated`) VALUES
(1, 'Majestic', 'Bengaluru', 'P One', 1, '2022-08-15 19:10:58'),
(2, 'Shivaji', 'Bengaluru', 'P Two', 1, '2022-08-15 19:12:12'),
(3, 'Yeshvantpur', 'Bengaluru', 'P Four', 1, '2022-08-16 19:13:08'),
(4, 'Majestic', 'Bengaluru', 'P One', 1, '2022-08-16 19:13:35'),
(5, 'Shivaji', 'Bengaluru', 'P Two', 1, '2022-08-17 19:12:49'),
(6, 'Yeshvantpur', 'Bengaluru', 'P Three', 1, '2022-08-19 19:14:05'),
(7, 'Majestic', 'Bengaluru', 'P Three', 1, '2022-08-19 19:13:51'),
(8, 'Yeshvantpur', 'Bengaluru', 'P Three', 1, '2022-08-19 19:13:18'),
(9, 'Yeshvantpur', 'Bengaluru', 'P Four', 1, '2022-08-19 19:09:37'),
(10, 'Shivaji', 'Bengaluru', 'P Five', 1, '2022-08-20 19:14:25'),
(11, 'Majestic', 'Bengaluru', 'P Six', 1, '2022-08-21 22:05:24'),
(12, 'Majestic', 'Bengaluru', 'P Six', 1, '2022-08-21 22:06:11');

-- --------------------------------------------------------

--
-- Table structure for table `schedule_list`
--

CREATE TABLE `schedule_list` (
  `id` int(30) NOT NULL,
  `bus_id` int(30) NOT NULL,
  `from_location` int(30) NOT NULL,
  `to_location` int(30) NOT NULL,
  `departure_time` datetime NOT NULL,
  `eta` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `availability` int(11) NOT NULL,
  `price` text NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedule_list`
--

INSERT INTO `schedule_list` (`id`, `bus_id`, `from_location`, `to_location`, `departure_time`, `eta`, `status`, `availability`, `price`, `date_updated`) VALUES
(1, 11, 1, 5, '2022-08-15 15:00:00', '2022-08-15 20:00:00', 1, 25, '50', '2022-06-25 17:27:08'),
(2, 6, 1, 4, '2022-08-15 20:00:00', '2022-08-15 01:00:00', 1, 30, '26', '2022-06-25 09:09:20'),
(3, 1, 3, 9, '2022-08-16 10:00:00', '2022-08-16 16:00:00', 1, 32, '33', '2022-06-25 09:10:46'),
(4, 9, 4, 1, '2022-08-16 08:00:00', '2022-08-16 19:00:00', 1, 30, '65', '2022-06-25 09:11:55'),
(5, 7, 8, 10, '2022-08-17 10:00:00', '2022-08-17 19:00:00', 1, 33, '80', '2022-06-25 09:13:02'),
(6, 4, 7, 6, '2022-08-19 11:00:00', '2022-08-19 13:00:00', 1, 35, '43', '2022-06-25 09:17:10'),
(7, 8, 9, 4, '2022-08-20 15:00:00', '2022-08-20 23:00:00', 1, 34, '75', '2022-06-25 09:18:08'),
(8, 3, 6, 2, '2022-08-21 12:00:00', '2022-08-21 17:00:00', 1, 31, '68', '2022-06-25 09:20:35'),
(9, 10, 11, 12, '2022-08-22 10:00:00', '2022-08-22 13:00:00', 1, 38, '65', '2022-06-25 17:36:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` varchar(150) NOT NULL,
  `user_type` tinyint(1) NOT NULL DEFAULT '1',
  `username` varchar(25) NOT NULL,
  `password` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT ' 0 = incative , 1 = active',
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_type`, `username`, `password`, `status`, `date_updated`) VALUES
(1, 'Administrator', 1, 'admin', 'admin', 1, '2022-06-25 20:13:42'),
(3, 'AdminWilly', 2, 'willy', 'user', 1, '2022-06-25 20:14:01'),
(4, 'AdminLea', 1, 'leadmin', 'user', 1, '2022-06-25 20:14:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booked`
--
ALTER TABLE `booked`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule_list`
--
ALTER TABLE `schedule_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booked`
--
ALTER TABLE `booked`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `schedule_list`
--
ALTER TABLE `schedule_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
