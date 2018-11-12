-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 12, 2018 at 06:12 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tweet`
--

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE IF NOT EXISTS `userdetails` (
  `UserName` varchar(100) NOT NULL,
  `Tweet` varchar(10000) NOT NULL,
  `Category` varchar(100) NOT NULL,
  PRIMARY KEY (`UserName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`UserName`, `Tweet`, `Category`) VALUES
('buffer', 'We are the best in #socialmediamarketing', 'Brand'),
('crowdfire', '#socialmediamarketing What a work Superbb', 'Brand'),
('hootsuite', 'Making #socialmediamarketing', 'Brand'),
('HP', 'Test #test', 'Brand'),
('jainarayana', 'Working in #socialmediamarketing', 'User'),
('Rahul', 'Test #test', 'User'),
('santoshthota', '#socialmediamarketing is increasing ', 'User'),
('smatsocial', 'Starting #socialmediamarketing from today', 'Brand'),
('souvikdas', 'Did #socialmediamarketing is good to work', 'User'),
('sproutsocial', 'with #socialmediamarketing', 'Brand'),
('vamsikrishna', 'Does #socialmediamarketing is important ', 'User'),
('zinnakhan', '#socialmediamarketing becoming vast', 'User');
