-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2024 at 01:53 PM
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
-- Database: `kiziguro`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `submission_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `contact`, `description`, `submission_time`) VALUES
(7, 'Gashema game', '0786516772', 'hy', '2024-11-21 11:38:29'),
(8, 'Gashema game', '0786516772', 'hy', '2024-11-21 11:39:27'),
(9, 'Gashema game', '0786516772', 'hy', '2024-11-21 12:08:01'),
(27, 'bebe', '0791631343', 'hhh happy now', '2024-11-25 08:17:19'),
(29, 'johnson', '078990033', 'ndababaye kk', '2024-11-25 08:46:00'),
(30, 'mukamana', '078899', 'umunye', '2024-11-25 12:46:36'),
(31, 'gash11', 'gash@gmail.com', 'im still', '2024-12-16 08:59:10');

-- --------------------------------------------------------

--
-- Table structure for table `news_pages`
--

CREATE TABLE `news_pages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `published_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `author_name` varchar(100) DEFAULT NULL,
  `status` enum('draft','published','archived') DEFAULT 'draft'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news_pages`
--

INSERT INTO `news_pages` (`id`, `title`, `content`, `image_url`, `published_date`, `author_name`, `status`) VALUES
(1, 'New Library Opening', 'We are excited to announce the opening of our new library with modern resources.', 'https://example.com/image.jpg', '2024-12-16 09:30:22', 'Gashema Francis', 'published'),
(2, 'amandazi', 'zdfxghjkljgdfzdxgvbj\r\ndcfvbcdvfdvgz\r\nfdgzhjngbfvc', 'https://ibb.co/DWkTrr4/image1.jpeg', '2024-12-16 09:35:03', 'gash', 'archived'),
(3, 'gash real', 'tfghujkl;lkjhcgfhjbklm', 'https://ibb.co/DWkTrr4/image1.jpeg', '2024-12-16 09:41:19', 'gash', 'published'),
(4, 'human being', 'setyuigcxfyuigcfghukvhjvhjvhj', '', '2024-12-19 08:13:45', 'ndugu', 'draft');

-- --------------------------------------------------------

--
-- Table structure for table `new_student_registration`
--

CREATE TABLE `new_student_registration` (
  `id` int(11) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `student_gender` enum('Male','Female') NOT NULL,
  `family_name` varchar(100) NOT NULL,
  `family_id` varchar(16) NOT NULL,
  `family_number` varchar(15) NOT NULL,
  `student_level` varchar(50) NOT NULL,
  `registration_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `new_student_registration`
--

INSERT INTO `new_student_registration` (`id`, `student_name`, `student_gender`, `family_name`, `family_id`, `family_number`, `student_level`, `registration_date`) VALUES
(2, 'gashema francis', 'Male', 'mute', '123456', '1234567', 'l5', '2024-11-21 13:05:36'),
(3, 'isabelle', 'Female', 'mukantambara', '123456789', '09876543', 'nursary', '2024-11-21 13:06:38'),
(4, 'gashema francis', 'Male', 'mute', '12345672345', '123456', '1234567', '2024-11-21 13:09:42'),
(5, 'nserime', 'Male', 'kagabo', '7654321345', '1234565', 'p5', '2024-11-21 13:13:31'),
(6, 'nserime', 'Male', 'kagabo', '7654321345', '1234565', 'p5', '2024-11-21 13:15:11'),
(7, 'bebe', 'Male', 'ntambara', '1234567890', '123456789', 'p3', '2024-11-21 13:16:42'),
(8, 'bebe', 'Male', 'ntambara', '1234567890', '123456789', 'p3', '2024-11-21 13:19:44'),
(9, 'gashema francis', 'Male', 'mute', '1234567890', '1234567890', 's2', '2024-11-21 13:20:48');

-- --------------------------------------------------------

--
-- Table structure for table `student_registration`
--

CREATE TABLE `student_registration` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `family_name` varchar(255) NOT NULL,
  `student_gender` varchar(50) NOT NULL,
  `family_id` bigint(20) NOT NULL,
  `family_phone` varchar(20) NOT NULL,
  `student_level` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_registration`
--

INSERT INTO `student_registration` (`id`, `student_name`, `family_name`, `student_gender`, `family_id`, `family_phone`, `student_level`, `created_at`) VALUES
(2, 'bebe byiringiro', 'nsengiyumva', 'male', 1234567890876543456, '123456789876543', 'p5 dos', '2024-11-25 09:29:00'),
(3, 'gashema francis', 'musirikare', 'male', 1234567890123456, '1234567890', 'p5 dos', '2024-11-25 09:38:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_pages`
--
ALTER TABLE `news_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_student_registration`
--
ALTER TABLE `new_student_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_registration`
--
ALTER TABLE `student_registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `news_pages`
--
ALTER TABLE `news_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `new_student_registration`
--
ALTER TABLE `new_student_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `student_registration`
--
ALTER TABLE `student_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
