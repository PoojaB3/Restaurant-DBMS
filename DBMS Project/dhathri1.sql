-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 18, 2023 at 06:09 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dhathri`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `CPh` bigint(10) NOT NULL,
  `Amount` int(5) NOT NULL,
  `BillNo` int(5) NOT NULL,
  `Date` date NOT NULL,
  `OID` int(5) NOT NULL,
  `num` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EID` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `DOB` date NOT NULL,
  `Salary` int(7) NOT NULL,
  `Contact` bigint(10) NOT NULL,
  `Gender` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EID`, `Name`, `DOB`, `Salary`, `Contact`, `Gender`) VALUES
('E001', 'Kumar', '1991-12-01', 20000, 9900923001, 'Male'),
('E002', 'Rashmi', '1995-09-20', 21000, 9900923002, 'Female'),
('E003', 'Sunil', '1994-11-10', 24000, 9900923004, 'Male'),
('E004', 'Narayan', '1993-12-08', 25000, 9900923005, 'Male'),
('E005', 'Kumari', '1991-12-01', 20000, 9900923005, 'Female'),
('E006', 'Hima', '1995-06-07', 30000, 8529637413, 'Female'),
('E007', 'Abhinaya', '1999-12-15', 25000, 9900221133, 'Female'),
('M001', 'Anil', '1986-10-06', 50000, 9900923003, 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `Fname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Price` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`Fname`, `Type`, `Price`) VALUES
('Aloo gobi masala', 'Curries', 120),
('Aloo Parota', 'Roti', 50),
('Apple juice', 'Juices & Shakes', 70),
('Baby corn kadai', 'Curries', 120),
('Butter Naan', 'Roti', 35),
('Butterscotch Milkshake', 'Juices & Shakes', 70),
('Chikoo Milkshake', 'Juices & Shakes', 50),
('Chocolate Milkshake', 'Juices & Shakes', 50),
('Cold Coffee', 'Juices & Shakes', 60),
('Curd Rice', 'Popular', 50),
('Dal kolhapuri', 'Curries', 120),
('Gobi Manchurian', 'Popular', 120),
('Green peas masala', 'Curries', 130),
('Green salad', 'Salad & Raita', 60),
('Kankada salad', 'Salad & Raita', 40),
('Lassi', 'Juices & Shakes', 50),
('Mango juice', 'Juices & Shakes', 70),
('Masala Dosa', 'Popular', 60),
('Masala Naan', 'Roti', 50),
('Masala Papad', 'Popular', 40),
('Methi Parata', 'Popular', 100),
('Methi parata', 'Roti', 100),
('Methi roti', 'Roti', 50),
('Mixed Raita', 'Salad & Raita', 45),
('Mushroom kadai', 'Curries', 150),
('Mushroom masala', 'Curries', 100),
('Naan', 'Roti', 60),
('Neer dose', 'Dosa', 50),
('North Indian Meals', 'Meals', 150),
('North Indian Meals', 'Popular', 140),
('Onion Raita', 'Salad & Raita', 40),
('Paneer kadai', 'Curries', 150),
('Paneer masala', 'Curries', 150),
('Paneer Masala', 'Popular', 150),
('Paneer parota', 'Roti', 60),
('Patrode', 'Popular', 60),
('Pineapple juice', 'Juices & Shakes', 50),
('Pudina parata', 'Roti', 50),
('Rava Idli', 'Popular', 60),
('South Indian Meals', 'Meals', 100),
('Stuffed Parota', 'Roti', 60),
('Tomato Raita', 'Salad & Raita', 50),
('Tomato Salad', 'Salad & Raita', 40),
('Tomato Soup', 'Popular', 90),
('Veg Biriyani', 'Popular', 120),
('Veg butter masala', 'Curries', 140),
('Veg curry', 'Curries', 100),
('Venilla Milkshake', 'Juices & Shakes', 100),
('Watermelon juice', 'Juices & Shakes', 60);

-- --------------------------------------------------------

--
-- Table structure for table `new`
--

CREATE TABLE `new` (
  `id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ord`
--

CREATE TABLE `ord` (
  `Fname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Qty` int(5) NOT NULL,
  `CPh` bigint(10) NOT NULL,
  `EID` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OID` int(5) NOT NULL,
  `num` int(5) NOT NULL,
  `Tr_No` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tabl`
--

CREATE TABLE `tabl` (
  `No_of_seats` int(5) NOT NULL,
  `num` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tabl`
--

INSERT INTO `tabl` (`No_of_seats`, `num`) VALUES
(4, 1),
(4, 2),
(6, 3),
(6, 4),
(4, 5),
(8, 6),
(8, 7),
(4, 8),
(2, 9),
(2, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`BillNo`),
  ADD KEY `OID` (`OID`),
  ADD KEY `num` (`num`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EID`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`Fname`,`Type`);

--
-- Indexes for table `new`
--
ALTER TABLE `new`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ord`
--
ALTER TABLE `ord`
  ADD PRIMARY KEY (`Tr_No`),
  ADD KEY `Fname` (`Fname`),
  ADD KEY `num` (`num`),
  ADD KEY `EID` (`EID`);

--
-- Indexes for table `tabl`
--
ALTER TABLE `tabl`
  ADD PRIMARY KEY (`num`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `BillNo` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `new`
--
ALTER TABLE `new`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ord`
--
ALTER TABLE `ord`
  MODIFY `Tr_No` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`num`) REFERENCES `tabl` (`num`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ord`
--
ALTER TABLE `ord`
  ADD CONSTRAINT `ord_ibfk_1` FOREIGN KEY (`Fname`) REFERENCES `menu` (`Fname`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ord_ibfk_2` FOREIGN KEY (`num`) REFERENCES `tabl` (`num`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ord_ibfk_3` FOREIGN KEY (`EID`) REFERENCES `employee` (`EID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
