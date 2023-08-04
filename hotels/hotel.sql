-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1

-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotels`
--

-- --------------------------------------------------------

--
-- Table structure for table `hotel`


CREATE TABLE `hotel` (
  `ho_id` int(30) NOT NULL,
  `ho_name` varchar(300) NOT NULL,
  `ho_amount` int(30) NOT NULL,
  `ho_address` varchar(300) NOT NULL,
  `ho_checkin`  date NOT NULL DEFAULT '2022-07-27' ,
  `ho_checkout` date NOT NULL DEFAULT '2022-07-27' ,
  `ho_type` varchar(20) NOT NULL DEFAULT 'NONAC'
);

--
-- Dumping data for table `hotel`
--
INSERT INTO `hotel` ('ho_id', 'ho_name', 'ho_amount', 'ho_address', 'ho_checkin' , 'ho_checkout','ho_type') VALUES
  (001,'TAJ HOTEL',29000,'DELHI','2022-07-25','2022-06-26','AC'),
  (002,'UMAID BHAWAN ',10000,'MANALI','2022-07-25','2022-06-27','NONAC'),
  (003,'WELCOME',15000,'MANALI','2022-07-27','2022-06-28','AC'),
  (004,'THE LEELA',15000,'GOA','2022-07-25','2022-06-26','AC'),
  (005,'TAJ HOTEL',29000,'MUNNAR','2022-07-28','2022-06-29','NONAC'),
  (006,'RADISSON',10000,'KASHMIR','2022-07-29','2022-06-30','AC'),
  (006,'TAJ ARAVALI RESORT',12000,'PONDICHERRY','2022-07-25','2022-06-26','AC'),
  (007,'RAMBAGH PALACE',10000,'GOA','2022-07-28 ','2022-06-29','NONAC'),
  (008,'OBEROI RAJVILAS',29000,'MUNNAR','2022-07-21','2022-06-22','AC'),
  (009,'THE ST. REGIS',30000,'PONDICHERRY','2022-07-25','2022-06-26','AC'),
  (0010,'AMAN-I-KHAS',15000,'KASHMIR','2022-07-29','2022-06-30','NONAC'),
  (011,'SUJAN SHER BAGH',25000,'GOA','2022-07-19','2022-06-20','AC');
  