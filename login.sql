-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 29, 2019 at 11:43 AM
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
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
CREATE TABLE IF NOT EXISTS `tasks` (
  `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `task` varchar(50) DEFAULT NULL,
  `duedate` varchar(50) DEFAULT NULL,
  `active` varchar(50) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `task`, `duedate`, `active`, `userid`) VALUES
(11, 'smile', '2019-05-30', NULL, 1),
(2, 'Does this still work?', '2019-05-31', NULL, NULL),
(1, 'wash my dog', '2019-09-09', NULL, NULL),
(12, 'Does this still work?', '2019-05-30', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'AraBellaYuki', '$2y$10$u/x5uS.CHBMteGQ3GIWwM.KnYlOgNkeBjHy/lBIyVn7w1yBZ.Yzoe', '2019-05-23 15:53:32'),
(2, 'kelly', '$2y$10$t0SDTdsd3yWoxn/6utNwHuqkv0ZXKQIevDdenDkFJIAXPDTAJHB9i', '2019-05-23 17:52:59'),
(3, '', '$2y$10$T8zvsxqyRXxMS5RkO0NMWei7Nej3hGOZo2VmqJ.edkD5Xf3ZOrp8a', '2019-05-28 14:48:16'),
(4, 'chris', '$2y$10$kjYDe1rIdvTj9OA.1IbT8.WWYU4JxoINBdOasjM6jUmdYqq7Y1T2m', '2019-05-28 14:52:02'),
(5, 'tammi', '$2y$10$IteLpJEc/3yK3NesAw57nOZyGHr/uTR727n0zHi.opkd24Z6kyQkK', '2019-05-28 14:58:21');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
