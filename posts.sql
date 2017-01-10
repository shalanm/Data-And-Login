-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2017 at 11:24 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `posts`
--

-- --------------------------------------------------------

--
-- Table structure for table `msg`
--

CREATE TABLE `msg` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `created_at` datetime NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `created_at`) VALUES
(2, 'ahmed', 'ahm123', 'ahmed@none.com', '2017-01-01 00:00:00'),
(3, 'sherif', 'sh123456', 'sherif@hotmail.com', '2017-01-11 00:00:00'),
(4, 'sherif', 'sh2345674', 'shery@hotmail.com', '2017-01-10 00:00:00'),
(6, 'ahmed', '12345qq', 'ahmed22@yahoo.com', '2017-01-01 00:00:00'),
(7, 'shalan', '1234512', 'shalan22@yahoo.com', '2017-01-10 00:00:00'),
(8, 'shalan', 'sh1sh212', 'shalan3@gmail.com', '2017-01-21 00:00:00'),
(10, 'shalan', '12345qw', 'shalan5@yahoo.com', '2017-01-10 00:00:00'),
(11, 'shalan', '123452wer', 'shalan1@gmail.com', '2017-01-01 00:00:00'),
(12, 'shalan', '12345aa', 'shalan6@gmail.com', '2017-01-01 00:00:00'),
(13, 'ahmed', '123451q', 'ahmed1@yahoo.com', '2017-01-11 00:00:00'),
(14, 'ahmed', '123452wer', 'ahmed2@yahoo.com', '2017-01-29 00:00:00'),
(15, 'ahmed', '123451q', 'adsa123', '2017-01-01 00:00:00'),
(16, 'muhamed', '12345345q', 'muhamed1@yahoo.com', '2017-01-10 00:00:00'),
(17, 'muhamed', '12345qwq', 'muhamed3@yahoo.com', '2017-01-11 00:00:00'),
(19, 'ibrahim ', '12345', 'ibrahim1@yahoo.com', '2017-01-01 00:00:00'),
(20, 'ibrahim ', '12345', 'ibrahim2@yahoo.com', '2017-01-01 00:00:00'),
(21, 'ibrahim ', '12345aa', 'ibrahim12@yahoo.com', '2017-01-10 00:00:00'),
(22, 'ibrahim ', '12345', 'ibrahim11@yahoo.com', '2017-01-01 00:00:00'),
(23, 'ibrahim ', '12345', 'ibrahim112@yahoo.com', '2017-01-01 00:00:00'),
(24, 'ibrahim ', '12345', 'ibrahim1121@yahoo.com', '2017-01-01 00:00:00'),
(25, 'ibrahim ', '12345', 'ibrahim11221@yahoo.com', '2017-01-01 00:00:00'),
(26, 'muhamed', '123453245q', 'muhamed11@yahoo.com', '2017-01-10 00:00:00'),
(27, 'muhamed', '12345345q', 'muhamed14@yahoo.com', '2017-01-10 00:00:00'),
(28, 'ibrahim ', '12345', 'ibrahim111@yahoo.com', '2017-01-01 00:00:00'),
(30, 'sherif', 'sh123456', 'sherif1@hotmail.com', '2017-01-11 00:00:00'),
(34, 'shalan', '12345aa', 'shalan611@gmail.com', '2017-01-01 00:00:00'),
(35, 'sherif', 'sh123456', 'sherif12@hotmail.com', '2017-01-11 00:00:00'),
(36, 'sherif', 'sh23123456', 'sherif1@hotmail.com', '2017-01-11 00:00:00'),
(37, 'sherif', 'sh123456', 'sherif1d@hotmail.com', '2017-01-11 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `msg`
--
ALTER TABLE `msg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `msg`
--
ALTER TABLE `msg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
