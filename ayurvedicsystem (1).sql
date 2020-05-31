-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2020 at 04:51 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ayurvedicsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctordetails`
--

CREATE TABLE `doctordetails` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(255) NOT NULL,
  `employee_name` varchar(255) NOT NULL,
  `address_line_1` varchar(255) NOT NULL,
  `address_line_2` varchar(255) NOT NULL,
  `address_line_3` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `doctor_reg_no` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctordetails`
--

INSERT INTO `doctordetails` (`id`, `employee_id`, `employee_name`, `address_line_1`, `address_line_2`, `address_line_3`, `sex`, `type`, `doctor_reg_no`, `mobile`, `email`, `created_by`, `created_date`) VALUES
(0, 'das', 'asd', 'ad', 'asd', 'asd', 'asda', 'dsad', 'dasd', 'das', 'asd', 'dsfsd', '2020-05-30 21:22:14');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_items`
--

CREATE TABLE `medicine_items` (
  `id` int(11) NOT NULL,
  `item_id` varchar(255) NOT NULL,
  `item_code` varchar(255) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `uom` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `expDate` varchar(100) NOT NULL,
  `expMonth` varchar(100) NOT NULL,
  `expYear` varchar(100) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `supplier_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine_items`
--

INSERT INTO `medicine_items` (`id`, `item_id`, `item_code`, `item_name`, `uom`, `created_by`, `expDate`, `expMonth`, `expYear`, `create_date`, `supplier_id`) VALUES
(0, 'dsa', 'sad', 'asd', 'das', 'asd', 'das', 'das', 'as', '2020-05-31 13:39:14', ''),
(3, 'ITEM1', '1', 's', 's', '', '31', '05', '2020', '2020-05-31 14:47:03', ''),
(4, 'ITEM4', '4', 'grd', 'hdhd', '', '31', '05', '2020', '2020-05-31 14:49:32', 'ad');

-- --------------------------------------------------------

--
-- Table structure for table `patientdetails`
--

CREATE TABLE `patientdetails` (
  `id` int(11) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `address_line_1` varchar(255) NOT NULL,
  `address_line_2` varchar(255) NOT NULL,
  `address_line_3` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patientdetails`
--

INSERT INTO `patientdetails` (`id`, `patient_id`, `patient_name`, `address_line_1`, `address_line_2`, `address_line_3`, `age`, `sex`, `mobile`, `email`, `created_by`, `timestamp`) VALUES
(0, 'sdf', 'sdf', 'sdf', 'sdf', 'sd', 'sdf', 'fsd', 'sd', 'sdf', 'sd', '2020-05-30 21:24:28');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `suplier_id` varchar(255) NOT NULL,
  `suplier_name` varchar(255) NOT NULL,
  `adress_line_1` varchar(255) NOT NULL,
  `adress_line_2` varchar(255) NOT NULL,
  `adress_line_3` varchar(255) NOT NULL,
  `contact_person` varchar(255) NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `suplier_id`, `suplier_name`, `adress_line_1`, `adress_line_2`, `adress_line_3`, `contact_person`, `mobile_no`, `email`, `created_by`, `created_date`) VALUES
(1, 'ad', 'asd', 'asd', 'as', 'asd', 'asd', 'ad', 'ad', 'ad', '2020-05-31 13:16:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `pword` varchar(255) NOT NULL,
  `privilages` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `uname`, `pword`, `privilages`) VALUES
(1, 'test', 't', 't', '1'),
(2, 'guest', 'g', 'g', '2'),
(3, 'ABC', 'ABC', 'ABC', '4'),
(4, 'AD', 'ASDA', 'ggg', 'p');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctordetails`
--
ALTER TABLE `doctordetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine_items`
--
ALTER TABLE `medicine_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patientdetails`
--
ALTER TABLE `patientdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctordetails`
--
ALTER TABLE `doctordetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `medicine_items`
--
ALTER TABLE `medicine_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `patientdetails`
--
ALTER TABLE `patientdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
