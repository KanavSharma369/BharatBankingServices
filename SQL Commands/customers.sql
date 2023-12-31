-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2023 at 08:10 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bharat_banking_services`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `curr_balance` double UNSIGNED NOT NULL DEFAULT 0,
  `gender` varchar(10) NOT NULL,
  `phone_no` bigint(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `first_name`, `last_name`, `email`, `curr_balance`, `gender`, `phone_no`, `created_at`) VALUES
(1, 'Kanav', 'Sharma', 'kanavsharma@basicneedsbank.com', 30405000, 'Male', 6614536589, '2022-07-10 10:13:50'),
(2, 'Kevin', 'Smith', 'kevinsmith@gmail.com', 55000, 'Male', 6633245633, '2022-07-10 10:22:57'),
(3, 'Rahul', 'Goyal', 'rahulgoyal@gmail.com', 26520, 'Male', 7714126580, '2022-07-10 10:23:53'),
(4, 'Mehak', 'Khanna', 'mehak023khanna@gmail.com', 125058, 'Female', 9834452988, '2022-07-10 10:25:49'),
(5, 'Jatin', 'Singh', 'jatin012singh@gmail.com', 15500, 'Male', 9834150188, '2022-07-10 10:27:26'),
(6, 'Divyanshu', 'Rana', 'divyanshurana001@gmail.com', 5900000, 'Male', 9876223509, '2022-07-10 10:51:06'),
(7, 'Radhika', 'Sharma', 'radhika.sharma00@gmail.com', 9004500, 'Female', 6288456890, '2022-07-10 10:53:32'),
(8, 'Anurag', 'Yadav', 'yadav337anurag@gmail.com', 56500, 'Male', 8324577909, '2022-07-10 10:54:51'),
(9, 'Jagriti', 'Bhardwaj', 'jagritibhardwaj@gmail.com', 990450, 'Female', 7732774965, '2022-07-10 12:49:06'),
(10, 'Sharda', 'Trivedi', 'trivedi.sharda@gmail.com', 580500, 'Female', 6784430021, '2022-07-10 12:51:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
