-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 23, 2019 at 07:38 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinevoting`
--

-- --------------------------------------------------------

--
-- Table structure for table `regester`
--

DROP TABLE IF EXISTS `regester`;
CREATE TABLE IF NOT EXISTS `regester` (
  `id` bigint(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile number` bigint(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `Date` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `regester`
--

INSERT INTO `regester` (`id`, `username`, `password`, `address`, `mobile number`, `email`, `gender`, `Date`) VALUES
(123456789102, 'swati', '1234', 'saravali', 9766611203, 'swati@gmail.com', 'Female', '2019/04/14 11:01:05'),
(204638692847, 'jyoti', '1997', 'keshav nagar', 8459879079, 'jyotib3266@gmail.com', 'Female', '2019/04/13 12:44:31'),
(859632145896, 'suraj', '3266', 'palghar', 9156167236, 'suraj@gmail.com', 'Male', '2019/04/14 17:46:23');

-- --------------------------------------------------------

--
-- Table structure for table `vote`
--

DROP TABLE IF EXISTS `vote`;
CREATE TABLE IF NOT EXISTS `vote` (
  `id` bigint(50) NOT NULL,
  `party` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vote`
--

INSERT INTO `vote` (`id`, `party`) VALUES
(123456987456, 'BJP'),
(123456789102, 'BJP'),
(234567654345, 'CONGRESS'),
(678764537897, 'SHIV SENA'),
(678923675423, 'OTHER'),
(589647856321, 'CONGRESS'),
(856975365415, 'CONGRESS'),
(589647852365, 'OTHER'),
(558962457896, 'SAMAJWADI'),
(856497853215, 'SAMAJWADI'),
(689789654125, 'BJP'),
(547896569784, 'BJP'),
(569874563215, 'SHIV SENA');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
