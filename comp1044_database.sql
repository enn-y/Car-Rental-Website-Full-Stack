-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2023 at 04:12 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `comp1044_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `staff_id` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`staff_id`, `username`, `password`, `name`, `role`) VALUES
('S0001', 'admin', '123', 'Leong TIN JET', 'Manager'),
('S0002', 'en', '123', 'Lua Chong en', 'HR');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` varchar(255) NOT NULL,
  `First_name` varchar(255) NOT NULL,
  `Last_name` varchar(255) NOT NULL,
  `IC_NO` varchar(255) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `Birthdate` date NOT NULL,
  `Phone_Number` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `First_name`, `Last_name`, `IC_NO`, `Gender`, `Birthdate`, `Phone_Number`, `Email`, `Address`) VALUES
('C0001', 'Leong', 'Tin Jet', '031016-13-1251', 'Female', '2003-10-16', '016-447-1621', 'tinjet1016@gmail.com', 'Lot 1299,Jalan bario,semenyih,selangor'),
('C0003', 'weikang', 'Lim', '971111-13-3422', 'Male', '1997-11-11', '016-312-1661', 'tinjet@live.com.my', 'lot 999'),
('C0005', 'Yu', 'xin tong', '060324-13-4234', 'Female', '2006-03-24', '019-858-1878', 'hcytl1@nottingham.edu.my', 'lot 6432, jalan permy'),
('C0007', 'King', 'Teck Huai', '030425-13-9532', 'Male', '2003-04-25', '014-272-9303', 'king@gmail.com', 'Lot 59H, Jalan Wong Chai.98000 Miri, Sarawak'),
('C0008', ' Klay', 'Thompson', '921203-13-2313', 'Male', '1992-12-03', '016-111-1661', 'klay11@gmail.com', 'san fransico'),
('C0009', 'LEONG', 'JET', '060314-13-4234', 'Female', '2006-03-14', '014-232-5678', 'tin1@ds.com', 'LOT 9913 ,JALAN BARIO'),
('C0010', 'LEONG', 'JET', '060324-13-4232', 'Male', '2006-03-24', '016-442-1622', 'kingth000@gmail.com', 'LOT 9913 ,JALAN BARIO,KMAPUNG PENGKALAN LUTONG'),
('C0011', 'sadsfdgh', 'dsfgfhjk', '030516-13-1111', 'Other', '2003-05-16', '016-312-1661', 'daniel@gmail.com', '3124356tyhascdsvfdgf'),
('C0012', 'qewr', 'JET', '760513-13-2211', 'Female', '1976-05-13', '016-122-1121', 'test@gamil.com', 'LOt 45657, jalan bario'),
('C0015', 'Lua ', 'Chong En', '941013-13-4212', 'Male', '1994-10-13', '016-811-1651', 'en@gmail.com', 'lot 352, jalan nottingham'),
('C0016', 'King', 'Teck Huai', '030425-13-4211', 'Male', '2003-04-25', '013-312-1661', 'kingth000@gmail.com', 'lot 1345,jalan jhfdisf'),
('C0017', ' Samuel', 'Joshua', '041022-12-4520', 'Male', '2004-10-22', '016-447-1661', 'tin1@ds', 'lot 134d');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `reservation_id` varchar(255) NOT NULL,
  `vehicle_id` varchar(255) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `staff_id` varchar(255) NOT NULL,
  `pickup_datetime` datetime NOT NULL,
  `duration` int(11) NOT NULL,
  `return_datetime` datetime NOT NULL,
  `exact_return_datetime` datetime DEFAULT NULL,
  `exact_pickup_datetime` datetime DEFAULT NULL,
  `reservation_datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`reservation_id`, `vehicle_id`, `customer_id`, `staff_id`, `pickup_datetime`, `duration`, `return_datetime`, `exact_return_datetime`, `exact_pickup_datetime`, `reservation_datetime`) VALUES
('R0006', 'V0001', 'C0003', 'S0001', '2023-04-01 14:51:00', 2, '2023-04-03 18:00:00', '2023-04-03 17:06:08', '2023-04-01 13:05:58', '2023-03-29 16:35:08'),
('R0012', 'V0002', 'C0005', 'S0001', '2023-04-05 15:54:00', 2, '2023-04-07 18:00:00', '2023-04-07 16:30:50', '2023-04-05 16:01:10', '2023-04-01 16:35:08'),
('R0015', 'V0002', 'C0001', 'S0001', '2023-04-02 16:13:00', 2, '2023-04-04 18:00:00', '2023-04-04 17:30:10', '2023-04-02 15:13:00', '2023-03-26 16:35:08'),
('R0018', 'V0002', 'C0005', 'S0001', '2023-04-26 23:22:00', 2, '2023-04-28 18:00:00', NULL, NULL, '2023-04-11 16:35:08'),
('R0019', 'V0001', 'C0001', 'S0002', '2023-04-26 23:21:00', 2, '2023-04-28 18:00:00', NULL, NULL, '2023-04-03 16:35:08'),
('R0020', 'V0001', 'C0007', 'S0001', '2023-07-11 16:07:00', 4, '2023-07-15 18:00:00', NULL, NULL, '2023-04-03 16:35:08'),
('R0022', 'V0002', 'C0005', 'S0001', '2023-06-28 18:39:00', 2, '2023-06-30 18:00:00', NULL, NULL, '2023-04-03 16:35:08'),
('R0023', 'V0002', 'C0005', 'S0001', '2023-03-31 09:57:00', 2, '2023-04-02 12:00:00', '2023-03-31 09:31:22', '2023-04-02 11:21:32', '2023-03-25 16:35:08'),
('R0024', 'V0005', 'C0001', 'S0001', '2023-04-26 09:39:00', 1, '2023-04-27 12:00:00', NULL, NULL, '2023-04-03 16:35:08'),
('R0027', 'V0003', 'C0001', 'S0001', '2023-04-19 15:47:00', 2, '2023-04-21 18:00:00', NULL, NULL, '2023-04-06 15:47:41'),
('R0028', 'V0009', 'C0009', 'S0001', '2023-04-18 10:17:00', 2, '2023-04-20 12:00:00', NULL, NULL, '2023-04-07 22:18:46'),
('R0029', 'V0003', 'C0005', 'S0001', '2023-04-13 10:25:00', 2, '2023-04-15 12:00:00', '2023-04-12 18:26:38', '2023-04-12 18:26:27', '2023-04-07 13:25:26'),
('R0030', 'V0004', 'C0010', 'S0001', '2023-04-26 10:25:00', 2, '2023-04-28 12:00:00', NULL, NULL, '2023-04-07 22:26:22'),
('R0031', 'V0003', 'C0011', 'S0001', '2023-05-01 10:26:00', 2, '2023-05-03 12:00:00', NULL, NULL, '2023-04-07 22:27:34'),
('R0032', 'V0001', 'C0005', 'S0001', '2023-04-10 11:27:00', 2, '2023-04-12 12:00:00', '2023-04-12 11:52:00', '2023-04-10 10:21:00', '2023-04-09 11:27:47'),
('R0033', 'V0002', 'C0005', 'S0001', '2023-04-17 14:56:00', 2, '2023-04-19 18:00:00', '2023-04-13 16:13:59', '2023-04-13 16:13:53', '2023-04-11 14:58:45'),
('R0036', 'V0006', 'C0001', 'S0001', '2023-04-19 17:44:00', 1, '2023-04-20 18:00:00', NULL, NULL, '2023-04-11 17:44:37'),
('R0037', 'V0008', 'C0012', 'S0001', '2023-04-17 18:11:00', 2, '2023-04-19 18:00:00', NULL, NULL, '2023-04-11 18:30:39'),
('R0038', 'V0008', 'C0005', 'S0002', '2023-04-13 09:30:00', 2, '2023-04-15 12:00:00', NULL, NULL, '2023-04-12 18:32:23'),
('R0039', 'V0002', 'C0015', 'S0001', '2023-04-13 08:14:00', 3, '2023-04-16 12:00:00', NULL, NULL, '2023-04-12 20:18:03');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `vehicle_id` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vehicle_id`, `model`, `color`, `type`, `price`) VALUES
('V0001', 'Rolls Royce Phantom', 'Blue', 'Luxurious Car', 9800),
('V0002', 'Bentley Continental', 'White', 'Luxurious Car', 4800),
('V0003', 'Mercedes Benz CLS 350 ', 'Silver', 'Luxurious Car', 1350),
('V0004', 'Jaguar S Type', 'Champagne', 'Luxurious Car', 1350),
('V0005', 'Ferrari F430 Scuderia', 'Red', 'Sports Car', 6000),
('V0006', 'Lamborghini Murcielago LP640', 'Matte Black', 'Sports Car', 7000),
('V0007', 'Porsche Boxster', 'White', 'Sports Car', 2800),
('V0008', 'Lexus SC430', 'Black', 'Sports Car', 1600),
('V0009', 'Jaguar MK 2', 'White', 'Classics Car', 2200),
('V0010', 'Rolls Royce Silver Spirit Limousine', 'Georgian Silver', 'Classics Car', 3200),
('V0011', 'MG TD', 'Red', 'Luxurious Car', 2500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`reservation_id`),
  ADD KEY `vehicle_id` (`vehicle_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`vehicle_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`vehicle_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `admin` (`staff_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `reservation_ibfk_3` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
