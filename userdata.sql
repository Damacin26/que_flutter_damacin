-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2022 at 08:36 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `userdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `count`
--

CREATE TABLE `count` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `count`
--

INSERT INTO `count` (`id`, `transaction_id`, `count`) VALUES
(1, 1, 2),
(2, 2, 2),
(3, 3, 1),
(4, 4, 1),
(5, 5, 32),
(6, 6, 4),
(7, 7, 1),
(8, 8, 1),
(9, 9, 2);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `name`, `department`) VALUES
(1, 'Clearance SIgning', 'Registrar '),
(2, 'Claim Permit', 'Registrar'),
(3, 'Claim Grades', 'Registrar'),
(4, 'Claim Documents', 'Registrar'),
(5, 'Accounts Payment', 'Accounting'),
(6, 'Clearance Fee', 'Accounting'),
(7, 'Enrolment Fee', 'Accounting'),
(8, 'Renewal Fee', 'Accounting'),
(9, 'Graduation Fee', 'Accounting');

-- --------------------------------------------------------

--
-- Table structure for table `transactions_users`
--

CREATE TABLE `transactions_users` (
  `id` int(10) NOT NULL,
  `user_id` varchar(45) DEFAULT NULL,
  `transaction_id` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `number` varchar(45) DEFAULT NULL,
  `employee_id` varchar(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions_users`
--

INSERT INTO `transactions_users` (`id`, `user_id`, `transaction_id`, `status`, `number`, `employee_id`, `created_at`) VALUES
(128, '00029944', '5', 'ongoing', '32', '00029945', '0000-00-00 00:00:00.000000'),
(0, '00029119', '6', 'ongoing', '4', NULL, '0000-00-00 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` varchar(10) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `firstname` varchar(30) DEFAULT NULL,
  `middlename` varchar(30) DEFAULT NULL,
  `lastname` varchar(30) DEFAULT NULL,
  `program` varchar(30) DEFAULT NULL,
  `yearlevel` varchar(30) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `window_no` varchar(30) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL,
  `user_role` varchar(45) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `id`, `firstname`, `middlename`, `lastname`, `program`, `yearlevel`, `status`, `window_no`, `department`, `user_role`, `password`) VALUES
('00029119', 2, 'stef', 'dv', 'damacin', 'BSIT', '4th', 'true', '1', NULL, 'student', 'password'),
('ada', 47, 'ads', 'dadadad', 'aa', 'Not Applicable', 'Not Applicable', 'unactivated', NULL, 'dad', 'employee', '#o]]}c(ig%m'),
('dada', 48, 'dasd', 'daddadad', 'adadad', 'Not Applicable', 'Not Applicable', 'unactivated', '2', 'add', 'employee', '$&eMR}clyg1'),
('00029118', 49, 'stefanny', 'de vera', 'damacin', 'Not Applicable', 'Not Applicable', 'false', '1', 'accounting', 'employee', 'kabayo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
