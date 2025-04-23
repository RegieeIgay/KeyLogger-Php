-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2025 at 05:40 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `keylogger`
--

-- --------------------------------------------------------

--
-- Table structure for table `keylogs`
--

CREATE TABLE `keylogs` (
  `id` int(11) NOT NULL,
  `key_pressed` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `keylogs`
--

INSERT INTO `keylogs` (`id`, `key_pressed`, `created_at`) VALUES
(29, 'q', '2025-04-23 03:39:13'),
(30, 'w', '2025-04-23 03:39:13'),
(31, 'e', '2025-04-23 03:39:14'),
(32, 'r', '2025-04-23 03:39:14'),
(33, 't', '2025-04-23 03:39:14'),
(34, 'y', '2025-04-23 03:39:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `keylogs`
--
ALTER TABLE `keylogs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `keylogs`
--
ALTER TABLE `keylogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
