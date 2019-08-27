-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 21, 2019 at 03:11 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jtc`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `Name` varchar(25) NOT NULL,
  `Aadhar` bigint(12) DEFAULT NULL,
  `Mobile` bigint(10) DEFAULT NULL,
  `Email` varchar(25) DEFAULT NULL,
  `PAN` varchar(10) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `GST` varchar(15) DEFAULT NULL,
  `Type` varchar(15) DEFAULT NULL,
  `Company` varchar(25) DEFAULT NULL,
  `Address` text NOT NULL,
  `Description` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`Name`, `Aadhar`, `Mobile`, `Email`, `PAN`, `DOB`, `GST`, `Type`, `Company`, `Address`, `Description`) VALUES
('Elon Musk', 123456789124, 9876543210, 'elon.musk@gmail.com', 'FVIK787878', '2019-01-04', '87QWQ78454512S5', 'Individual', 'Tesla', 'USA', 'CEO, Founder of Tesla cars, Solar City, SpaceX');

-- --------------------------------------------------------

--
-- Table structure for table `pendingwork`
--

DROP TABLE IF EXISTS `pendingwork`;
CREATE TABLE IF NOT EXISTS `pendingwork` (
  `WorkName` varchar(25) NOT NULL,
  `DueDate` date NOT NULL,
  `ClientName` varchar(25) NOT NULL,
  `Complete` varchar(5) DEFAULT NULL,
  `Invoiced` varchar(3) DEFAULT NULL,
  `Description` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pendingwork`
--

INSERT INTO `pendingwork` (`WorkName`, `DueDate`, `ClientName`, `Complete`, `Invoiced`, `Description`) VALUES
('Return Filing', '2018-12-31', 'Varkey', NULL, NULL, NULL),
('Income tax', '2019-11-12', 'akku', 'Yes', NULL, 'Nil'),
('Something', '2019-04-01', 'SId', NULL, 'Yes', 'Nil'),
('Return tax', '2019-02-17', 'SId', NULL, NULL, 'Nil'),
('Return tax', '2019-01-20', 'akku', 'Yes', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `workupdate`
--

DROP TABLE IF EXISTS `workupdate`;
CREATE TABLE IF NOT EXISTS `workupdate` (
  `WorkName` varchar(25) NOT NULL,
  `ClientName` varchar(25) NOT NULL,
  `DOU` date NOT NULL,
  `DescriptionW` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `workupdate`
--

INSERT INTO `workupdate` (`WorkName`, `ClientName`, `DOU`, `DescriptionW`) VALUES
('Income tax', 'akku', '2019-01-01', 'Just random thing'),
('Return Filing', 'akku', '2019-01-10', 'Correction over');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
