-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2020 at 11:49 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments_tb`
--

CREATE TABLE `comments_tb` (
  `id` char(10) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL,
  `postId` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments_tb`
--

INSERT INTO `comments_tb` (`id`, `comment`, `postId`) VALUES
('01', 'ayok semangat kamu pasti bisa', '01');

-- --------------------------------------------------------

--
-- Table structure for table `posts_tb`
--

CREATE TABLE `posts_tb` (
  `id` char(10) DEFAULT NULL,
  `title` char(50) DEFAULT NULL,
  `content` varchar(300) DEFAULT NULL,
  `createdBy` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts_tb`
--

INSERT INTO `posts_tb` (`id`, `title`, `content`, `createdBy`) VALUES
('01', 'ujian botkamp', 'ujian ini lumayan sulit tapi saya percaya saya akan lulus', '01');

-- --------------------------------------------------------

--
-- Table structure for table `user_tb`
--

CREATE TABLE `user_tb` (
  `id` char(10) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_tb`
--

INSERT INTO `user_tb` (`id`, `name`) VALUES
('01', 'jafar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments_tb`
--
ALTER TABLE `comments_tb`
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `postId` (`postId`);

--
-- Indexes for table `posts_tb`
--
ALTER TABLE `posts_tb`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `createdBy` (`createdBy`);

--
-- Indexes for table `user_tb`
--
ALTER TABLE `user_tb`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments_tb`
--
ALTER TABLE `comments_tb`
  ADD CONSTRAINT `comments_tb_ibfk_1` FOREIGN KEY (`postId`) REFERENCES `posts_tb` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_tb_ibfk_2` FOREIGN KEY (`postId`) REFERENCES `posts_tb` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts_tb`
--
ALTER TABLE `posts_tb`
  ADD CONSTRAINT `posts_tb_ibfk_1` FOREIGN KEY (`createdBy`) REFERENCES `user_tb` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
