-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2025 at 09:06 AM
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
-- Database: `chatapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(11) NOT NULL,
  `outgoing_msg_id` int(11) NOT NULL,
  `msg` varchar(1000) NOT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `msg_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`, `is_read`, `msg_time`) VALUES
(26, 1208375429, 1263166330, '🎉', 1, '2025-01-17 11:06:37'),
(27, 1208375429, 1263166330, '👍😢', 1, '2025-01-17 11:06:37'),
(28, 1208375429, 1263166330, '😀😍j', 1, '2025-01-17 11:06:37'),
(29, 210935271, 1263166330, '👍', 0, '2025-01-17 10:30:31'),
(30, 210935271, 1263166330, 's', 0, '2025-01-17 10:30:31'),
(31, 1208375429, 1263166330, 'sad', 1, '2025-01-17 11:06:37'),
(32, 210935271, 1208375429, '👍', 0, '2025-01-17 10:30:31'),
(33, 210935271, 1208375429, '😢', 0, '2025-01-17 10:30:31'),
(34, 210935271, 1208375429, 'a', 0, '2025-01-17 10:30:31'),
(35, 210935271, 1208375429, 'sdf', 0, '2025-01-17 10:30:31'),
(36, 210935271, 1208375429, 'sdf', 0, '2025-01-17 10:30:31'),
(37, 1208375429, 1263166330, 'ad', 1, '2025-01-17 11:06:37'),
(38, 1263166330, 1208375429, 'asd', 1, '2025-01-17 11:05:19'),
(39, 1263166330, 1208375429, 'asd', 1, '2025-01-17 11:05:19'),
(40, 1208375429, 1263166330, 'sad', 1, '2025-01-17 11:06:37'),
(41, 1263166330, 1208375429, 'asd', 1, '2025-01-17 11:05:19'),
(42, 1208375429, 1263166330, 'asdad', 1, '2025-01-17 11:06:37'),
(43, 1208375429, 1263166330, 'adsad', 1, '2025-01-17 11:06:37'),
(44, 1208375429, 1263166330, 'adad', 1, '2025-01-17 11:06:37'),
(45, 1208375429, 1263166330, 'adad', 1, '2025-01-17 11:06:37'),
(46, 1208375429, 1263166330, 'adads', 1, '2025-01-17 11:06:37'),
(47, 1208375429, 1263166330, 'asdsad', 1, '2025-01-17 11:06:37'),
(48, 1208375429, 1263166330, 'adad', 1, '2025-01-17 11:06:37'),
(49, 1208375429, 1263166330, 'asdsasdsassd', 1, '2025-01-17 11:06:37'),
(50, 1208375429, 1263166330, 'asdad', 1, '2025-01-17 11:06:37'),
(51, 1208375429, 1263166330, 'asdad', 1, '2025-01-17 11:06:37'),
(52, 1208375429, 1263166330, 'asdadad', 1, '2025-01-17 11:06:37'),
(53, 1208375429, 1263166330, 'asdadasd', 1, '2025-01-17 11:06:37'),
(54, 1208375429, 1263166330, 'asdasd', 1, '2025-01-17 11:06:37'),
(55, 1208375429, 1263166330, 'asdad', 1, '2025-01-17 11:06:37'),
(56, 1263166330, 1208375429, 'ads', 1, '2025-01-17 11:05:19'),
(57, 1263166330, 1208375429, 'asds', 1, '2025-01-17 11:05:19'),
(58, 210935271, 1208375429, 'sdf', 0, '2025-01-17 10:43:36'),
(59, 1208375429, 1263166330, 'da', 1, '2025-01-17 11:06:37'),
(60, 1263166330, 1208375429, '😢', 1, '2025-01-17 11:05:19'),
(61, 1263166330, 1208375429, 'ad', 1, '2025-01-17 11:05:19'),
(62, 210935271, 1208375429, 'asd', 0, '2025-01-17 11:06:51'),
(63, 1208375429, 1263166330, 'asd', 1, '2025-01-17 11:12:05'),
(64, 1263166330, 1208375429, 'asd', 1, '2025-01-20 05:33:05'),
(65, 548592546, 1263166330, 'j', 0, '2025-01-20 05:42:36'),
(66, 1208375429, 1263166330, 'ad', 1, '2025-01-20 16:03:39'),
(67, 1263166330, 1208375429, 'ads', 1, '2025-01-20 16:03:41'),
(68, 367210241, 1263166330, 'df', 0, '2025-01-22 15:49:33'),
(69, 367210241, 1263166330, '😢d', 0, '2025-01-22 15:49:40'),
(70, 1263166330, 1208375429, 'ajh', 1, '2025-01-23 03:23:30'),
(71, 1208375429, 1263166330, '👍', 1, '2025-01-23 03:24:15'),
(72, 1208375429, 1263166330, 'ad', 1, '2025-01-23 03:24:15'),
(73, 1208375429, 1263166330, 'ad', 1, '2025-01-23 03:24:15'),
(74, 1208375429, 1263166330, 'ada', 1, '2025-01-23 03:24:15'),
(75, 1638801563, 324632045, 'a', 0, '2025-04-21 07:00:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `img`, `status`) VALUES
(8, 1638801563, 'Moonsatul Islam', 'Moon', 'moon@gmail.com', '$2y$10$/I2eFJHZ5T1Hnn3iKLUHQuSaVk9D3NL72AcbLFzK.Wf.eI7s2cy1a', '1745218728_6805eca88a23d.jpg', 'Offline now'),
(9, 324632045, 'shuvo', 'das', 'shuvo@gmail.com', '$2y$10$qVzRK4Ok7t4lE0YM3PDmyO3q7buPyT5uAf/qPDeCq3mXC./ZhzkC.', '1745218798_6805ecee03f47.png', 'Offline now');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
