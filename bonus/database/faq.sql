-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2016 at 08:32 AM
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
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `faqID` int(6) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` text,
  `status` enum('0','1') DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`faqID`, `name`, `content`, `status`) VALUES
(2, 'Sample FAQs', 'Simple note here', '1');

-- --------------------------------------------------------

--
-- Table structure for table `faqitems`
--

CREATE TABLE `faqitems` (
  `id` int(11) NOT NULL,
  `sectionID` int(6) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` text,
  `ordering` smallint(3) DEFAULT '0',
  `hint` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faqitems`
--

INSERT INTO `faqitems` (`id`, `sectionID`, `question`, `answer`, `ordering`, `hint`) VALUES
(6, 3, 'How To use Form Generator', 'n id neque vel tellus rhoncus molestie. Nulla interdum semper magna, eu gravida lorem mollis eget. In sed viverra velit. Morbi rutrum ante hendrerit, vehicula dolor at, suscipit elit. Vestibulum a mauris tristique, fermentum est nec, rutrum nibh. Duis in semper metus. \r\n\r\nn id neque vel tellus rhoncus molestie. Nulla interdum semper magna, eu gravida lorem mollis eget. In sed viverra velit. Morbi rutrum ante hendrerit, vehicula dolor at, suscipit elit. Vestibulum a mauris tristique, fermentum est nec, rutrum nibh. Duis in semper metus. ', 0, 0),
(7, 3, 'Double FAQS', 'n id neque vel tellus rhoncus molestie. Nulla interdum semper magna, eu gravida lorem mollis eget. In sed viverra velit. Morbi rutrum ante hendrerit, vehicula dolor at, suscipit elit. Vestibulum a mauris tristique, fermentum est nec, rutrum nibh. Duis in semper metus. \r\n\r\nn id neque vel tellus rhoncus molestie. Nulla interdum semper magna, eu gravida lorem mollis eget. In sed viverra velit. Morbi rutrum ante hendrerit, vehicula dolor at, suscipit elit. Vestibulum a mauris tristique, fermentum est nec, rutrum nibh. Duis in semper metus. ', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `faqsection`
--

CREATE TABLE `faqsection` (
  `sectionID` int(6) NOT NULL,
  `faqID` int(6) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `orderID` int(6) DEFAULT NULL,
  `default` enum('0','1') DEFAULT NULL,
  `note` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faqsection`
--

INSERT INTO `faqsection` (`sectionID`, `faqID`, `title`, `orderID`, `default`, `note`) VALUES
(3, 2, 'section I', 0, NULL, ''),
(4, 2, 'Section II', 1, NULL, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`faqID`);

--
-- Indexes for table `faqitems`
--
ALTER TABLE `faqitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqsection`
--
ALTER TABLE `faqsection`
  ADD PRIMARY KEY (`sectionID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `faqID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `faqitems`
--
ALTER TABLE `faqitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `faqsection`
--
ALTER TABLE `faqsection`
  MODIFY `sectionID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
