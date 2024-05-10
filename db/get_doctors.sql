-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2024 at 07:21 AM
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
-- Database: `get_doctors`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointment_id` int(10) NOT NULL,
  `patient_name` varchar(50) NOT NULL,
  `patient_email` varchar(30) NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_time` time NOT NULL,
  `appointment_status` varchar(50) NOT NULL DEFAULT '0',
  `additional_note` varchar(50) NOT NULL,
  `doctor_id` int(10) NOT NULL,
  `patient_id` int(10) NOT NULL,
  `disease` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointment_id`, `patient_name`, `patient_email`, `appointment_date`, `appointment_time`, `appointment_status`, `additional_note`, `doctor_id`, `patient_id`, `disease`) VALUES
(1, 'Nofal', 'nofalbasan@gmail.com', '2024-05-05', '05:12:10', '2', 'I have a Sick', 1, 1, 1),
(2, 'Arman Aghariya', 'basannofal4@gmail.com', '2024-05-05', '10:22:00', '2', 'Please check', 2, 2, 1),
(3, 'Arman Aghariya', 'arman@gmail.com', '2024-05-05', '10:22:00', '1', 'New', 1, 2, 2),
(4, 'Arman Aghariya', 'arman@gmail.com', '2024-05-05', '20:22:00', '1', 'Big Brother', 1, 2, 1),
(5, 'Nofal Basan', 'basannofal4@gmail.com', '2024-05-07', '10:22:00', '0', 'I have first level biopsy', 1, 3, 3),
(6, 'Nofal Basan', 'basannofal4@gmail.com', '2024-05-08', '10:22:00', '1', 'i have also one Problem', 1, 3, 2),
(7, 'Basan Nofal', 'basannofal4@gmail.com', '2024-05-10', '14:02:00', '2', 'Just checking ', 1, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `disease`
--

CREATE TABLE `disease` (
  `disease_id` int(10) NOT NULL,
  `disease_name` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `disease`
--

INSERT INTO `disease` (`disease_id`, `disease_name`, `status`) VALUES
(1, 'HIV', ''),
(2, 'Lupus', '0'),
(3, 'Biopsy', '0');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctor_id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `number` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `specialization` varchar(50) NOT NULL,
  `experience` int(10) NOT NULL,
  `qualification` varchar(50) NOT NULL,
  `profile_picture` varchar(200) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT '0',
  `gender` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctor_id`, `name`, `email`, `number`, `address`, `specialization`, `experience`, `qualification`, `profile_picture`, `status`, `gender`, `password`) VALUES
(1, 'nofal Basan', 'basannofal@gmail.com', '9999999999', 'Rajosana', 'Skill Specialist ', 19, 'MBBS', NULL, '1', 'male', '12345'),
(2, 'mjjj kk', 'basnanofal1@gmail.com', '0000000000', 'kkk', 'kk', 12, 'kk', NULL, '1', 'male', '111'),
(3, 'new doctor', 'doctor@gmail.com', '9999999999', 'Rajosana', 'Skill Specialist', 8, 'mbbs', NULL, '2', 'male', '12345'),
(4, 'Arman Aghariya', 'armanaghariya90@gmail.com', '9090909090', 'Sherpura', 'Skin Specialist', 10, 'MD', NULL, '0', 'male', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `review_id` int(10) NOT NULL,
  `rating` int(10) NOT NULL,
  `review_text` varchar(50) NOT NULL,
  `review_date_time` datetime NOT NULL,
  `doctor_id` int(10) NOT NULL,
  `patient_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`review_id`, `rating`, `review_text`, `review_date_time`, `doctor_id`, `patient_id`) VALUES
(1, 9, 'Best Doctor', '2024-05-04 20:47:22', 1, 1),
(2, 3, 'poor system', '2024-05-05 05:31:00', 2, 1),
(3, 7, 'Nice', '2024-05-05 10:22:00', 1, 3),
(4, 7, 'Nice', '2024-05-05 10:22:00', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `main_admin`
--

CREATE TABLE `main_admin` (
  `admin_id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_admin`
--

INSERT INTO `main_admin` (`admin_id`, `username`, `email`, `password`, `number`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin@123', '9090909090');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patient_id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `age` int(10) NOT NULL,
  `number` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_id`, `name`, `email`, `address`, `age`, `number`, `gender`, `password`) VALUES
(1, 'nofal Farhan', 'nofaol@gmaill.com', 'Rajosan', 90, '9099999999', 'male', '12345'),
(2, 'Arman', 'amarman@gmail.com', 'Sherpura', 89, '9090909090', 'male', '12345'),
(3, 'new patient', 'patient@gmail.com', 'Rajosana', 90, '9999999999', 'male', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(10) NOT NULL,
  `payment_amount` int(100) NOT NULL,
  `payment_date_time` datetime NOT NULL,
  `payment_status` varchar(50) NOT NULL,
  `doctor_id` int(10) NOT NULL,
  `patient_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `skill_id` int(10) NOT NULL,
  `skill_name` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `doctor_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`skill_id`, `skill_name`, `status`, `doctor_id`) VALUES
(1, 'Mohs surgery', '', 1),
(2, 'Biopsy', '1', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointment_id`),
  ADD KEY `doctor_id` (`doctor_id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `disease` (`disease`);

--
-- Indexes for table `disease`
--
ALTER TABLE `disease`
  ADD PRIMARY KEY (`disease_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `doctor_id` (`doctor_id`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `main_admin`
--
ALTER TABLE `main_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `doctor_id` (`doctor_id`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`skill_id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `disease`
--
ALTER TABLE `disease`
  MODIFY `disease_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doctor_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `review_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `main_admin`
--
ALTER TABLE `main_admin`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `patient_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `skill_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
