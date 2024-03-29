-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2023 at 08:19 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `T_ID` int(11) NOT NULL,
  `sender_name` varchar(500) NOT NULL,
  `sender_email` varchar(500) NOT NULL,
  `receiver_name` varchar(500) NOT NULL,
  `receiver_email` varchar(500) NOT NULL,
  `amount` double UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`T_ID`, `sender_name`, `sender_email`, `receiver_name`, `receiver_email`, `amount`, `created_at`) VALUES
(1, 'Kanav Sharma', 'kanavsharma@basicneedsbank.com', 'Radhika Sharma', 'radhika.sharma00@gmail.com', 5000, '2022-07-12 18:40:59'),
(4, 'Kanav Sharma', 'kanavsharma@basicneedsbank.com', 'Divyanshu Rana', 'divyanshurana001@gmail.com', 5000, '2022-07-12 19:14:24'),
(5, 'Anurag Yadav', 'yadav337anurag@gmail.com', 'Jatin Singh', 'jatin012singh@gmail.com', 500, '2022-07-14 08:13:29'),
(20, 'Divyanshu Rana', 'divyanshurana001@gmail.com', 'Jagriti Bhardwaj', 'jagritibhardwaj@gmail.com', 5000, '2022-07-14 09:16:19'),
(21, 'Rahul Goyal', 'rahulgoyal@gmail.com', 'Anurag Yadav', 'yadav337anurag@gmail.com', 200, '2022-07-14 09:22:10'),
(34, 'Rahul Goyal', 'rahulgoyal@gmail.com', 'Divyanshu Rana', 'divyanshurana001@gmail.com', 5000, '2022-07-14 10:26:28'),
(38, 'Kevin Smith', 'kevinsmith@gmail.com', 'Jatin Singh', 'jatin012singh@gmail.com', 5000, '2022-07-14 11:16:48'),
(40, 'Kanav Sharma', 'kanavsharma@basicneedsbank.com', 'Rahul Goyal', 'rahulgoyal@gmail.com', 111, '2022-07-15 19:08:47'),
(41, 'Mehak Khanna', 'mehak023khanna@gmail.com', 'Kanav Sharma', 'kanavsharma@basicneedsbank.com', 6500, '2022-07-17 08:19:30'),
(42, 'Kanav Sharma', 'kanavsharma@basicneedsbank.com', 'Divyanshu Rana', 'divyanshurana001@gmail.com', 25000, '2022-07-18 08:22:11'),
(43, 'Divyanshu Rana', 'divyanshurana001@gmail.com', 'Radhika Sharma', 'radhika.sharma00@gmail.com', 5900, '2022-07-18 11:12:50'),
(44, 'Kanav Sharma', 'kanavsharma@basicneedsbank.com', 'Radhika Sharma', 'radhika.sharma00@gmail.com', 89000, '2022-09-14 10:53:34'),
(45, 'Mehak Khanna', 'mehak023khanna@gmail.com', 'Sharda Trivedi', 'trivedi.sharda@gmail.com', 499, '2022-09-14 10:56:14'),
(46, 'Kanav Sharma', 'kanavsharma@basicneedsbank.com', 'Rahul Goyal', 'rahulgoyal@gmail.com', 500, '2023-05-10 07:28:25'),
(47, 'Radhika Sharma', 'radhika.sharma00@gmail.com', 'Kanav Sharma', 'kanavsharma@basicneedsbank.com', 450000, '2023-05-11 08:27:14'),
(48, 'Kevin Smith', 'kevinsmith@gmail.com', 'Jatin Singh', 'jatin012singh@gmail.com', 8000, '2023-05-15 06:10:32'),
(49, 'Jatin Singh', 'jatin012singh@gmail.com', 'Kanav Sharma', 'kanavsharma@basicneedsbank.com', 4500, '2023-10-06 06:16:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`T_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `T_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
