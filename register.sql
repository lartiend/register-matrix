-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2018 at 11:47 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `register`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_02_08_151754_create_node_evens_table', 1),
(2, '2018_02_08_151806_create_node_odds_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `node_evens`
--

CREATE TABLE `node_evens` (
  `id` int(10) UNSIGNED NOT NULL,
  `child` int(11) NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `node_evens`
--

INSERT INTO `node_evens` (`id`, `child`, `position`, `created_at`, `updated_at`) VALUES
(1, 2, 'L', NULL, NULL),
(2, 4, 'L', NULL, NULL),
(3, 6, 'M', NULL, NULL),
(4, 8, 'R', NULL, NULL),
(5, 10, 'L', NULL, NULL),
(6, 12, 'M', NULL, NULL),
(7, 14, 'R', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `node_odds`
--

CREATE TABLE `node_odds` (
  `id` int(10) UNSIGNED NOT NULL,
  `child` int(11) NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `node_odds`
--

INSERT INTO `node_odds` (`id`, `child`, `position`, `created_at`, `updated_at`) VALUES
(1, 3, 'R', NULL, NULL),
(2, 5, 'L', NULL, NULL),
(3, 7, 'M', NULL, NULL),
(4, 9, 'R', NULL, NULL),
(5, 11, 'L', NULL, NULL),
(6, 13, 'M', NULL, NULL),
(7, 15, 'R', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `node_evens`
--
ALTER TABLE `node_evens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `node_odds`
--
ALTER TABLE `node_odds`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `node_evens`
--
ALTER TABLE `node_evens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `node_odds`
--
ALTER TABLE `node_odds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
