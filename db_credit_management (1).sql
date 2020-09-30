-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Sep 30, 2020 at 04:07 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_credit_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE `transfer` (
  `t_id` int(30) NOT NULL,
  `from_u_id` int(30) NOT NULL,
  `to_u_id` int(30) NOT NULL,
  `credits` decimal(30,0) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transfer`
--

INSERT INTO `transfer` (`t_id`, `from_u_id`, `to_u_id`, `credits`) VALUES
(1, 3, 1, '1000'),
(2, 1, 2, '500'),
(3, 2, 7, '500'),
(4, 6, 2, '5000'),
(5, 1, 8, '500'),
(6, 9, 1, '500');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `credits` decimal(50,0) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `name`, `email`, `credits`) VALUES
(1, 'Adam', 'adam01@gmail.com', '7000'),
(2, 'eve', 'eve02@yahoo.com', '8000'),
(3, 'Ajay', 'ajay81@gmail.com', '10000'),
(4, 'Martha', 'martha03@gmail.com', '7000'),
(5, 'Nairobi', 'nairobi04@gmail.com', '10000'),
(6, 'Akshay', 'akshay786@gmail.com', '6000'),
(7, 'John', ' john16@gmail.com', '11000'),
(8, 'Mohammad', 'mohammad53@gmail.com', '10000'),
(9, 'Jack', 'jack21@gmail.com', '6000'),
(10, 'Abbas', 'abbas10@gmail.com', '11500');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`t_id`),
  ADD KEY `transfer_fk0` (`from_u_id`),
  ADD KEY `transfer_fk1` (`to_u_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transfer`
--
ALTER TABLE `transfer`
  MODIFY `t_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
