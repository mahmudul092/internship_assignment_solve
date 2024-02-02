-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2024 at 10:25 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(30) NOT NULL,
  `carType` varchar(15) NOT NULL,
  `name` varchar(20) NOT NULL,
  `model` varchar(10) NOT NULL,
  `year` int(10) NOT NULL,
  `batteryCapacity` double NOT NULL,
  `fuelEfficiency` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `carType`, `name`, `model`, `year`, `batteryCapacity`, `fuelEfficiency`) VALUES
(1, 'tt', 'tt', 'tj', 5775, 0, 0),
(2, 'tt', 'tt', 'tj', 5775, 0, 0),
(3, 'Gas', 'ss', 'ad', 2345, 0, 122),
(4, 'Gas', 'ss', 'ad', 2345, 0, 122),
(5, 'Electric', 'Tesla', 'model s', 3022, 123, 0),
(6, 'Gas', 'Mahmudul Azad Sajol', 'jjh', 789, 0, 88),
(7, 'Gas', 'Mahmudul Azad Sajol', 'jjh', 789, 0, 88),
(8, 'Gas', 'Mahmudul Azad Sajol', 'jjh', 789, 0, 88),
(9, 'Gas', 'kk', 'kh', 76, 0, 456),
(10, 'Electric', 'Teslass', ' Model S', 2023, 105, 0),
(11, 'Gas', 'Toyota', 'Camry', 2022, 0, 30),
(12, 'Electric', 'Teslas', ' Model S', 2022, 100, 0),
(13, 'Gas', 'Toyota', 'Camry', 2020, 0, 50),
(14, 'Electric', 'Tesla', 'Model S', 2019, 100, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
