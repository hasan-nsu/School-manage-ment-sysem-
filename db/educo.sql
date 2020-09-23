-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2019 at 04:10 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `educo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin` varchar(100) NOT NULL,
  `passw` varchar(100) NOT NULL,
  `adm` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin`, `passw`, `adm`) VALUES
('admin', '12345', ''),
('admin', '1234', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `main_salary` int(11) NOT NULL,
  `number_of_classes` int(11) NOT NULL,
  `paid_salary` int(11) NOT NULL,
  `still_not_paid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `user_name`, `full_name`, `password`, `main_salary`, `number_of_classes`, `paid_salary`, `still_not_paid`) VALUES
(1, 'arnab', 'nayeem al tamzid bhuiyan', 'ar018323', 2500, 8, 1500, 1000),
(2, 'nayeem', 'nayeem bhuiyan', 'na018323', 2000, 15, 1500, 500),
(3, 'tamzid', 'tamzid', '1234', 1000, 10, 500, 500);

-- --------------------------------------------------------

--
-- Table structure for table `uname`
--

CREATE TABLE `uname` (
  `usname` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uname`
--

INSERT INTO `uname` (`usname`, `pass`) VALUES
('sazal', '12345'),
('molom', '3456'),
('SAMIYA', '789'),
('sazal', '12345'),
('wer', '789'),
('kamal', '123'),
('kamal', '789'),
('sazal', '789'),
('urmi', '12345'),
('navid', '1232'),
('kamal', '123'),
('urmi', '12345');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
