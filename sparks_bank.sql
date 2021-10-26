-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2021 at 08:06 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sparks_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(11) NOT NULL,
  `sender` text DEFAULT NULL,
  `receiver` text DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'MONALISHA MISHRA', 'TAPASWANI BEHERA', 1000000, '2021-10-25 05:14:46'),
(2, 'TAPASWANI BEHERA', 'SANDHYA PRADHAN', 10000, '2021-10-25 05:14:46'),
(3, 'Suprava Sahu', 'MONALISA MISHRA', 100, '2021-10-25 05:16:48'),
(4, 'SIVANCY SUBHANYA', 'Suprava Sahu', 1000, '2021-10-25 05:18:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `balance` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'TAPASWANI BEHERA', 'meera@gmail.com', 2190000),
(2, 'MONALISHA MISHRA', 'monalishamishra18@gmail.com', 4000000),
(3, 'SUBHASHREE PANDA', 'subha27@gmail.com', 12000000),
(4, 'MONALISA MISHRA', 'monalisamishra18@gmail.com', 5100),
(5, 'SANDHYA PRADHAN', 'sandhyapradhan25@gmail.com', 12100),
(6, 'Suprava Sahu', 'supravasahu21@gmail.com', 2900),
(7, 'SIVANCY SUBHANYA', 'sivancysubhanya14@gmail.com', 99000);

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
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
