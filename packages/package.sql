
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
-- Database: `package`
--

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `packages` (
  `pak_id` int(30) NOT NULL,
  `pak_name` varchar(300) NOT NULL,
  `pak_amount` int(30) NOT NULL,
  `pak_type` varchar(200) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `package`
--
INSERT INTO `packages` (`pak_id`, `pak_name`,  `pak_amount`, `pak_type`) VALUES
  (001,'Taj Mahal',29000,'6N/7D'),
  (002,'Munnar',35000,'3N/4D'),
  (003,'Kashmir',20000,'8N/9D'),
  (004,'Pondicherry',21000,'3N/4D'),
  (005,'Ladakh',32000,'6N/7D'),
  (006,'Varnasi',27000,'5N/6D'),
  (007,'Kedrnath',26000,'5N/6D'),
  (008,'Mangalore',15000,'3N/4D');
  