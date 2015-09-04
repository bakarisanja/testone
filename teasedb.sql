-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2015 at 03:08 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `teasedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `registrants`
--

CREATE TABLE IF NOT EXISTS `registrants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `date_of_birth` int(11) unsigned NOT NULL,
  `country` varchar(250) NOT NULL,
  `ip` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) DEFAULT NULL,
  `email` varchar(250) NOT NULL,
  `token` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=58 ;

--
-- Dumping data for table `registrants`
--

INSERT INTO `registrants` (`id`, `first_name`, `last_name`, `date_of_birth`, `country`, `ip`, `username`, `password`, `email`, `token`) VALUES
(29, 'milos', 'jovic', 573174000, 'serbia', '127.0.0.1', 'pera', '76d11b122320bc5f9bc7e5f889a76e13bbed8e2aab0418d4a6b82f319b6e2bd3', 'a@a.a', NULL),
(31, 'milos', 'jovic', 573174000, 'serbia', '127.0.0.1', 'jovica', '76d11b122320bc5f9bc7e5f889a76e13bbed8e2aab0418d4a6b82f319b6e2bd3', 'a@a.a', NULL),
(32, 'milos', 'jovic', 573174000, 'serbia', '127.0.0.1', 'bkii', 'd79c49e267f487a64fb30349f2f53ccdf54e7a0aa60b79c7fb959410fece8ab9', 'a@a.a', NULL),
(33, 'milos', 'jovic', 539218800, 'serbia', '127.0.0.1', 'djogani', '76d11b122320bc5f9bc7e5f889a76e13bbed8e2aab0418d4a6b82f319b6e2bd3', 'a@a.a', NULL),
(35, 'milos', 'babic', 567990000, 'serbia', '127.0.0.1', 'bakiiki', 'ed2456914e48c1e17b7bd922177291ef8b7f553edf1b1f66b6fc1a076524b22f', 'a@a.a', NULL),
(36, 'milos', 'babic', 567990000, 'serbia', '127.0.0.1', 'djokatore', 'ed2456914e48c1e17b7bd922177291ef8b7f553edf1b1f66b6fc1a076524b22f', 'a@a.a', NULL),
(37, 'ljuba', 'ljubic', 283993200, 'serbia', '127.0.0.1', 'ljubivoje', '0d1ea4c256cd50a2a7ccbfd22b3d9959f6fd30bd840b9ff3c7c65ee4e21df06d', 'm@m.m', NULL),
(38, 'milos', 'sdfsdf', 473382000, 'serbia', '127.0.0.1', 'bakarisanja', '6b8176b1a04344c359d5c6df489ead2a45bf0a1c2560030cdeffa55fbf421dc5', 'a@a.a', NULL),
(39, 'qweqwe', 'qweqwe', 283993200, 'serbia', '127.0.0.1', 'bakarisanjaa', '3cc849279ba298b587a34cabaeffc5ecb3a044bbf97c516fab7ede9d1af77cfa', 'a@a.a', NULL),
(40, 'qweqweqwe', 'qweqweqwe', 157762800, 'serbia', '127.0.0.1', 'bakiaiaiaia', '2413fb3709b05939f04cf2e92f7d0897fc2596f9ad0b8a9ea855c7bfebaae892', 'a@a.a', NULL),
(41, 'milos', 'jovic', 539218800, 'serbia', '127.0.0.1', 'fantastiko', '80115886315f10434d257b04238b82efcab98e8ec30ce86432b18f222af9e3f8', 'a@a.a', NULL),
(42, 'asdasd', 'asdasd', 0, '$country', '$ip', '$username', '$password', '$email', NULL),
(43, 'milos', 'jovic', 2, 'serbia', '127.0.0.1', 'mijatovic', 'milos1', 'a@a.a', NULL),
(46, 'milos', 'jovic', 539218800, 'serbia', '127.0.0.1', 'sdfsdfsdfsdfsdfsdf', '76d11b122320bc5f9bc7e5f889a76e13bbed8e2aab0418d4a6b82f319b6e2bd3', 'a@a.a', NULL),
(47, 'mikiq', 'mikika', 567990000, 'serbia', '127.0.0.1', 'bakajo', '3cc849279ba298b587a34cabaeffc5ecb3a044bbf97c516fab7ede9d1af77cfa', 'a@a.a', NULL),
(51, 'qwe', 'qwe', 567990000, 'serbia', '127.0.0.1', 'asdfasdfasdfasdf', '973124ffc4a03e66d6a4458e587d5d6146f71fc57f359c8d516e0b12a50ab0d9', 'a@a.a', NULL),
(52, 'asdasd', 'asdasd', 567990000, 'serbia', '127.0.0.1', 'milos', '3cc849279ba298b587a34cabaeffc5ecb3a044bbf97c516fab7ede9d1af77cfa', 'a@a.a', NULL),
(53, 'qweqwe', 'qweqwe', 567990000, 'serbia', '127.0.0.1', 'sdfsdfsdf', 'ed2456914e48c1e17b7bd922177291ef8b7f553edf1b1f66b6fc1a076524b22f', 'a@a.a', NULL),
(54, 'qweqwe', 'qweqwe', 567990000, 'serbia', '127.0.0.1', 'qweqwe', '0d1ea4c256cd50a2a7ccbfd22b3d9959f6fd30bd840b9ff3c7c65ee4e21df06d', 'a@a.a', NULL),
(55, 'robert', 'robert', 567990000, 'serbia', '127.0.0.1', 'robert', '3cc849279ba298b587a34cabaeffc5ecb3a044bbf97c516fab7ede9d1af77cfa', 'a@a.a', NULL),
(56, 'qweqwe', 'qweqwe', 567990000, 'serbia', '127.0.0.1', 'qweqew', '3cc849279ba298b587a34cabaeffc5ecb3a044bbf97c516fab7ede9d1af77cfa', 'a@a.a', NULL),
(57, 'sdfdsf', 'sdfdsf', 567990000, 'serbia', '127.0.0.1', 'qwefvcefefd', '36c10b7f090442c6366a4dd8dad20dddb11b5068e7fe6294a6d9ce9f1bbf7bca', 'a@a.a', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
