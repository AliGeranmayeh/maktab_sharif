-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2023 at 08:49 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chain_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrative_unit`
--

CREATE TABLE `administrative_unit` (
  `id` int(11) NOT NULL,
  `unit_code` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `duties` varchar(255) DEFAULT NULL,
  `branch_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `administrative_unit`
--

INSERT INTO `administrative_unit` (`id`, `unit_code`, `name`, `duties`, `branch_code`) VALUES
(1, 1, 'esfahan 1', 'blah blah 1', 1),
(2, 2, 'esfahan 2', 'blah blah 2', 1),
(3, 3, 'esfahan 3', 'blah blah 3', 1),
(4, 4, 'esfahan 4', 'blah blah 4', 1),
(5, 5, 'tehran 1', 'blah blah 1', 2),
(6, 6, 'tehran 2', 'blah blah 2', 2),
(7, 7, 'ahvaz 1', 'blah blah 1', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrative_unit`
--
ALTER TABLE `administrative_unit`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unit_code` (`unit_code`),
  ADD KEY `branch_code` (`branch_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrative_unit`
--
ALTER TABLE `administrative_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `administrative_unit`
--
ALTER TABLE `administrative_unit`
  ADD CONSTRAINT `administrative_unit_ibfk_1` FOREIGN KEY (`branch_code`) REFERENCES `branch` (`branch_code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
