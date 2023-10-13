-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2023 at 11:23 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epvate`
--

-- --------------------------------------------------------

--
-- Table structure for table `task_table`
--

CREATE TABLE `task_table` (
  `id` int(255) NOT NULL,
  `task_date` varchar(255) NOT NULL,
  `task_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task_table`
--

INSERT INTO `task_table` (`id`, `task_date`, `task_name`) VALUES
(1, '2023-Oct-Fri', 'adb'),
(2, '2023-Oct-Fri', 'adb'),
(3, '2023-Oct-Fri', 'adb'),
(4, '2023-Oct-Fri', 'adb'),
(5, '2023-Oct-Fri', 'adb'),
(6, '2023-Oct-Fri', 'adb'),
(7, '2023-Oct-Fri', 'adb'),
(8, '2023-Oct-Fri', 'adb'),
(9, '2023-Oct-Fri', 'adb'),
(10, '2023-Oct-Fri', 'adb'),
(11, '2023-Oct-Fri', 'adb'),
(12, '2023-Oct-Fri', 'adb'),
(13, '2023-Oct-Fri', 'adb'),
(14, '2023-Oct-Fri', 'adb'),
(15, '2023-Oct-Fri', 'adb'),
(16, '2023-Oct-Fri', 'adb'),
(17, '2023-Oct-Fri', 'adb'),
(18, '2023-Oct-Fri', 'adb');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `task_table`
--
ALTER TABLE `task_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `task_table`
--
ALTER TABLE `task_table`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
