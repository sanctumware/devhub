-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2016 at 08:34 AM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sximo6`
--

-- --------------------------------------------------------

--
-- Table structure for table `sb_clients`
--

CREATE TABLE `sb_clients` (
  `ClientID` int(11) NOT NULL,
  `Company` varchar(100) DEFAULT NULL,
  `About` text,
  `Contact` varchar(100) DEFAULT NULL,
  `Logo` varchar(100) DEFAULT NULL,
  `UserID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sb_clients`
--

INSERT INTO `sb_clients` (`ClientID`, `Company`, `About`, `Contact`, `Logo`, `UserID`) VALUES
(1, 'Mangopik TM', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, yo', 'Mango', '1463770417-35809968.png', 1),
(2, 'Beset LTD', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, yo', 'Beset', NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `sb_projects`
--

CREATE TABLE `sb_projects` (
  `ProjectID` int(11) NOT NULL,
  `ProjectName` varchar(255) DEFAULT NULL,
  `Description` text,
  `ClientID` int(11) DEFAULT NULL,
  `Status` enum('open','cancel','close','suspend') DEFAULT 'open',
  `Progress` tinyint(100) DEFAULT NULL,
  `Teams` varchar(100) DEFAULT NULL,
  `Created` date DEFAULT NULL,
  `LastUpdate` date DEFAULT NULL,
  `DueDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sb_projects`
--

INSERT INTO `sb_projects` (`ProjectID`, `ProjectName`, `Description`, `ClientID`, `Status`, `Progress`, `Teams`, `Created`, `LastUpdate`, `DueDate`) VALUES
(1, 'Contract with Zender Company', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, yo ', 1, 'open', 80, '1,4', '2016-05-20', '2016-05-21', '2015-09-02'),
(2, 'Many desktop publishing packages and web', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, yo ', 2, 'close', 67, '1', '2016-05-20', '2016-05-21', '2015-09-02'),
(3, 'Letraset sheets containing', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, yo ', 1, 'open', 70, '1', '2016-05-20', '2016-05-21', '2015-09-03'),
(4, 'Contrary to popular belief', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, yo ', 2, 'cancel', 50, '4', '2016-05-20', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sb_tasks`
--

CREATE TABLE `sb_tasks` (
  `TaskID` int(11) NOT NULL,
  `UserIDs` varchar(20) DEFAULT NULL,
  `TaskName` varchar(255) DEFAULT NULL,
  `TaskNote` text,
  `TaskStatus` char(30) DEFAULT NULL,
  `Created` date DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `ProjectID` int(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sb_tasks`
--

INSERT INTO `sb_tasks` (`TaskID`, `UserIDs`, `TaskName`, `TaskNote`, `TaskStatus`, `Created`, `StartDate`, `EndDate`, `ProjectID`) VALUES
(1, '4', 'Create Design Concept', 'Please crate new design concept for this clients , should be done on next 3 days', 'open', NULL, '2016-05-21', '2016-05-19', 1),
(2, '1', 'Create Blue Print', 'Create Blue Print', 'active', NULL, '2016-05-24', '2016-05-28', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sb_clients`
--
ALTER TABLE `sb_clients`
  ADD PRIMARY KEY (`ClientID`);

--
-- Indexes for table `sb_projects`
--
ALTER TABLE `sb_projects`
  ADD PRIMARY KEY (`ProjectID`);

--
-- Indexes for table `sb_tasks`
--
ALTER TABLE `sb_tasks`
  ADD PRIMARY KEY (`TaskID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sb_clients`
--
ALTER TABLE `sb_clients`
  MODIFY `ClientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sb_projects`
--
ALTER TABLE `sb_projects`
  MODIFY `ProjectID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sb_tasks`
--
ALTER TABLE `sb_tasks`
  MODIFY `TaskID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
