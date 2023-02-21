-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2023 at 05:36 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banksysphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Krishnaprasad Iyer', 'Siddhi Gorde', 1250, '2023-02-21 00:44:56'),
(2, 'Aryan Patil', 'Ayush Giri', 1520, '2023-02-21 00:50:27'),
(3, 'Siddhi Gorde', 'Rutuja Gurav', 4450, '2023-02-21 00:50:38'),
(4, 'Sahil Sarvankar', 'Akash Gupta', 510, '2023-02-21 00:50:50'),
(5, 'Smita Kathar', 'Krishnaprasad Iyer', 540, '2023-02-21 00:51:00'),
(6, 'Aryan Patil', 'Gauri Badade', 5540, '2023-02-21 00:51:11'),
(7, 'Sahil Sarvankar', 'Aryan Patil', 5454, '2023-02-21 00:51:25'),
(8, 'Ayush Giri', 'Sakshi Singhs', 584, '2023-02-21 00:51:43'),
(9, 'Sahil Sarvankar', 'Rutul Jadhav', 1120, '2023-02-21 00:52:21'),
(10, 'Aryan Patil', 'Smita Kathar', 1450, '2023-02-21 00:52:41'),
(11, 'Smita Kathar', 'Siddhi Gorde', 4500, '2023-02-21 00:52:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `gender` varchar(155) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `gender`, `balance`) VALUES
(1, 'Siddhi Gorde', 'siddhig2011@gmail.com', 'Female', 46300),
(2, 'Krishnaprasad Iyer', 'krishnaiyer0912@gmail.com', 'Male', 50290),
(3, 'Rutuja Gurav', 'rgurav@gmail.com', 'Female', 18950),
(4, 'Sahil Sarvankar', 'ssarvankar@gmail.com', 'Male', 37916),
(5, 'Gauri Badade', 'gbadade@gmail.com', 'Female', 59540),
(6, 'Aryan Patil', 'apatil@gmail.com', 'Male', 18944),
(7, 'Ayush Giri', 'agiri@gmail.com', 'Male', 54936),
(8, 'Akash Gupta', 'agupta@gmail.com', 'Male', 55510),
(9, 'Sakshi Singhs', 'ssingh@gmail.com', 'Female', 33584),
(10, 'Smita Kathar', 'skathar@gmail.com', 'Female', 70410),
(11, 'Rutul Jadhav', 'rjadhav@gmail.com', 'Female', 26120);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
