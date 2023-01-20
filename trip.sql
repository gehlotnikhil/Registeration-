-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2023 at 02:18 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trip`
--

-- --------------------------------------------------------

--
-- Table structure for table `rj`
--

CREATE TABLE `rj` (
  `sr.no` int(3) NOT NULL,
  `name` text NOT NULL,
  `age` int(3) NOT NULL,
  `gender` text NOT NULL,
  `rollno` int(3) NOT NULL,
  `dept` text NOT NULL,
  `bio` text NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rj`
--

INSERT INTO `rj` (`sr.no`, `name`, `age`, `gender`, `rollno`, `dept`, `bio`, `time`) VALUES
(1, 'nikhil', 18, 'male', 101, 'IT', 'Hello World', '2023-01-01 16:36:53'),
(2, '', 0, '', 0, '', '', '2023-01-01 18:17:28'),
(3, '', 0, '', 0, '', '', '2023-01-01 18:17:31'),
(4, '', 0, '', 0, '', '', '2023-01-01 18:17:46'),
(5, 'Nikhil', 0, '', 0, '', '', '2023-01-01 18:17:53'),
(6, 'Nikhil', 0, '', 0, '', '', '2023-01-01 18:20:17'),
(7, 'Nikhil', 0, '', 0, '', '', '2023-01-01 18:20:28'),
(8, 'Nikhil', 0, '', 0, '', '', '2023-01-01 18:21:22'),
(9, 'Nikhil', 0, '', 0, '', '', '2023-01-01 18:24:22'),
(10, 'Nikhil', 0, '', 0, '', '', '2023-01-01 18:27:28'),
(11, 'Nikhil', 0, '', 0, '', '', '2023-01-01 18:29:14'),
(12, 'Nikhil', 0, '', 0, '', '', '2023-01-01 18:29:47');

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

CREATE TABLE `trip` (
  `sr.no` int(3) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `email` varchar(25) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `desc` text NOT NULL,
  `Date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trip`
--

INSERT INTO `trip` (`sr.no`, `name`, `age`, `gender`, `email`, `phone`, `desc`, `Date`) VALUES
(1, 'nikhil', 18, 'male', 'gehlotnikhil38@gmail.com', '1234567890', 'Hello Buddy', '2022-12-24 21:05:03'),
(2, 'nikhil gehlot', 12, 'ytgu', 'gehlotnikhil38@gmail.com', '0987654321', 'hi', '2022-12-25 10:25:38'),
(3, 'nikhil gehlot', 12, 'ytgu', 'gehlotnikhil38@gmail.com', '0987654321', 'hi', '2022-12-25 10:25:57'),
(4, 'nikhil gehlot', 12, 'ytgu', 'gehlotnikhil38@gmail.com', '0987654321', 'hi', '2022-12-25 10:26:29'),
(5, 'nikhil gehlot', 12, 'ytgu', 'gehlotnikhil38@gmail.com', '0987654321', 'hi', '2022-12-25 10:27:14'),
(6, 'Nikhil Gehlot', 18, 'Male', 'gehlotnikhil38@gmail.com', '7039495319', 'My Name is Nikhil', '2022-12-25 10:28:42'),
(7, 'Nikhil Gehlot', 18, 'Male', 'gehlotnikhil38@gmail.com', '7039495319', 'My Name is Nikhil', '2022-12-25 10:37:54'),
(8, 'Nikhil Gehlot', 18, 'Male', 'gehlotnikhil38@gmail.com', '7039495319', 'My Name is Nikhil', '2022-12-25 10:43:23'),
(9, '', 0, '', '', '', '', '2022-12-25 10:43:27'),
(10, '', 0, '', '', '', '', '2022-12-25 10:50:35'),
(11, '', 0, '', '', '', '', '2022-12-25 10:52:07'),
(12, '', 0, '', '', '', '', '2022-12-25 10:52:52'),
(13, '', 0, '', '', '', '', '2022-12-25 10:55:48'),
(14, 'Sohil Tamboli', 18, 'Male', 'gehlotnikhil38@gmail.com', '7039495319', 'Hello Buddy', '2022-12-25 10:56:39'),
(15, 'Sohil Tamboli', 18, 'Male', 'gehlotnikhil38@gmail.com', '7039495319', 'Hello Buddy', '2022-12-25 10:57:07'),
(16, 'Alfaz', 18, 'Male', 'gehlotnikhil38@gmail.com', '1234567890', 'Hello Buddy', '2022-12-25 12:49:44'),
(17, 'nikhil gehlot', 0, '', 'gehlotnikhil38@gmail.com', '0987654321', '', '2022-12-25 13:13:25'),
(18, 'nikhil gehlot', -18, 'Male', '', '', '', '2023-01-01 16:40:47'),
(19, 'nikhil gehlot', 6, 'Male', 'gehlotnikhil38@gmail.com', '0987654321', 'hello', '2023-01-01 18:14:51'),
(20, 'nikhil gehlot', 6, 'Male', 'gehlotnikhil38@gmail.com', '0987654321', 'hello', '2023-01-01 18:15:26'),
(21, 'nikhil gehlot', 6, 'Male', 'gehlotnikhil38@gmail.com', '0987654321', 'hello', '2023-01-01 18:16:22'),
(22, 'nikhil gehlot', 0, '', 'gehlotnikhil38@gmail.com', '0987654321', '', '2023-01-01 18:16:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rj`
--
ALTER TABLE `rj`
  ADD PRIMARY KEY (`sr.no`);

--
-- Indexes for table `trip`
--
ALTER TABLE `trip`
  ADD PRIMARY KEY (`sr.no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rj`
--
ALTER TABLE `rj`
  MODIFY `sr.no` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `trip`
--
ALTER TABLE `trip`
  MODIFY `sr.no` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
