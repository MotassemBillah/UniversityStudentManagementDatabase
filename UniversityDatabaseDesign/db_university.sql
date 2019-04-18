-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2018 at 07:27 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_university`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `degree_id` int(11) DEFAULT NULL,
  `class_name` varchar(30) DEFAULT NULL,
  `_key` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `course_name` varchar(50) DEFAULT NULL,
  `course_code` varchar(20) DEFAULT NULL,
  `practical_credit_hour` double DEFAULT NULL,
  `theory_credit_hour` double DEFAULT NULL,
  `others_credit_hour` double DEFAULT NULL,
  `total_credit_hour` double DEFAULT NULL,
  `per_credit_marks` double DEFAULT NULL,
  `total_marks` double DEFAULT NULL,
  `_key` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `course_setting`
--

CREATE TABLE `course_setting` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `degree_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `semester_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `instructor` int(11) DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `_key` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `degree`
--

CREATE TABLE `degree` (
  `id` int(11) NOT NULL,
  `degree_name` varchar(50) DEFAULT NULL,
  `degree_code` varchar(20) DEFAULT NULL,
  `_key` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `department_name` varchar(50) DEFAULT NULL,
  `department_code` varchar(20) DEFAULT NULL,
  `office_phone` int(20) DEFAULT NULL,
  `office_number` int(20) DEFAULT NULL,
  `college_name` varchar(50) DEFAULT NULL,
  `_key` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employee_info`
--

CREATE TABLE `employee_info` (
  `id` int(20) NOT NULL,
  `employee_code` varchar(20) DEFAULT NULL,
  `department_id` int(20) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `father_name` varchar(50) DEFAULT NULL,
  `mother_name` varchar(50) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `religion` varchar(50) DEFAULT NULL,
  `marital_status` varchar(20) DEFAULT NULL,
  `spouse_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `driving_licence` varchar(40) DEFAULT NULL,
  `quota` varchar(20) DEFAULT NULL,
  `national_id_no` int(50) DEFAULT NULL,
  `blood_group` varchar(10) DEFAULT NULL,
  `passport_no` varchar(50) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `_key` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee_locations`
--

CREATE TABLE `employee_locations` (
  `id` int(20) NOT NULL,
  `employee_id` int(20) DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  `house_no` varchar(20) DEFAULT NULL,
  `street_no` varchar(20) DEFAULT NULL,
  `thana` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `district` varchar(30) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `_key` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `grade_report`
--

CREATE TABLE `grade_report` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `numeric_grade` double DEFAULT NULL,
  `letter_grade` double DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `_key` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `permanent_address`
--

CREATE TABLE `permanent_address` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `state` varchar(40) DEFAULT NULL,
  `zipcode` int(11) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `phone` int(11) NOT NULL,
  `_key` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `qualifications`
--

CREATE TABLE `qualifications` (
  `id` int(20) NOT NULL,
  `employee_id` int(20) DEFAULT NULL,
  `degree` varchar(20) DEFAULT NULL,
  `board` varchar(30) DEFAULT NULL,
  `department` varchar(40) DEFAULT NULL,
  `major` varchar(50) DEFAULT NULL,
  `passing_year` varchar(15) DEFAULT NULL,
  `result` varchar(35) DEFAULT NULL,
  `_key` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `semester_id` int(11) DEFAULT NULL,
  `section_name` varchar(30) DEFAULT NULL,
  `section_number` int(11) DEFAULT NULL,
  `_key` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `id` int(10) NOT NULL,
  `degree_id` int(10) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `semester_name` varchar(50) DEFAULT NULL,
  `semester_hour` double DEFAULT NULL,
  `_key` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `degree_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `semester_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `student_id` int(20) DEFAULT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `ss_number` varchar(50) DEFAULT NULL,
  `phone` int(20) DEFAULT NULL,
  `permanent_address_id` int(20) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `sex` varchar(30) DEFAULT NULL,
  `major_department` int(11) DEFAULT NULL,
  `minor_department` int(11) DEFAULT NULL,
  `session` year(4) DEFAULT NULL,
  `_key` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`),
  ADD KEY `degree_id` (`degree_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `course_setting`
--
ALTER TABLE `course_setting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `degree_id` (`degree_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `semester_id` (`semester_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `instructor` (`instructor`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `section_id` (`section_id`);

--
-- Indexes for table `degree`
--
ALTER TABLE `degree`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_info`
--
ALTER TABLE `employee_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `employee_locations`
--
ALTER TABLE `employee_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `grade_report`
--
ALTER TABLE `grade_report`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `section_id` (`section_id`);

--
-- Indexes for table `permanent_address`
--
ALTER TABLE `permanent_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `qualifications`
--
ALTER TABLE `qualifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `semester_id` (`semester_id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id`),
  ADD KEY `degree_id` (`degree_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `degree_id` (`degree_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `semester_id` (`semester_id`),
  ADD KEY `section_id` (`section_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `course_setting`
--
ALTER TABLE `course_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `degree`
--
ALTER TABLE `degree`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employee_info`
--
ALTER TABLE `employee_info`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employee_locations`
--
ALTER TABLE `employee_locations`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `grade_report`
--
ALTER TABLE `grade_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `permanent_address`
--
ALTER TABLE `permanent_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `qualifications`
--
ALTER TABLE `qualifications`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_ibfk_1` FOREIGN KEY (`degree_id`) REFERENCES `degree` (`id`);

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`);

--
-- Constraints for table `course_setting`
--
ALTER TABLE `course_setting`
  ADD CONSTRAINT `course_setting_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `course_setting_ibfk_2` FOREIGN KEY (`degree_id`) REFERENCES `degree` (`id`),
  ADD CONSTRAINT `course_setting_ibfk_3` FOREIGN KEY (`class_id`) REFERENCES `class` (`id`),
  ADD CONSTRAINT `course_setting_ibfk_4` FOREIGN KEY (`semester_id`) REFERENCES `semester` (`id`),
  ADD CONSTRAINT `course_setting_ibfk_5` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  ADD CONSTRAINT `course_setting_ibfk_6` FOREIGN KEY (`instructor`) REFERENCES `employee_info` (`id`),
  ADD CONSTRAINT `course_setting_ibfk_7` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`),
  ADD CONSTRAINT `course_setting_ibfk_8` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`);

--
-- Constraints for table `employee_info`
--
ALTER TABLE `employee_info`
  ADD CONSTRAINT `employee_info_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`);

--
-- Constraints for table `employee_locations`
--
ALTER TABLE `employee_locations`
  ADD CONSTRAINT `employee_locations_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee_info` (`id`);

--
-- Constraints for table `grade_report`
--
ALTER TABLE `grade_report`
  ADD CONSTRAINT `grade_report_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `grade_report_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  ADD CONSTRAINT `grade_report_ibfk_3` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`);

--
-- Constraints for table `permanent_address`
--
ALTER TABLE `permanent_address`
  ADD CONSTRAINT `permanent_address_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `qualifications`
--
ALTER TABLE `qualifications`
  ADD CONSTRAINT `qualifications_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee_info` (`id`);

--
-- Constraints for table `section`
--
ALTER TABLE `section`
  ADD CONSTRAINT `section_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `class` (`id`),
  ADD CONSTRAINT `section_ibfk_2` FOREIGN KEY (`semester_id`) REFERENCES `semester` (`id`);

--
-- Constraints for table `semester`
--
ALTER TABLE `semester`
  ADD CONSTRAINT `semester_ibfk_1` FOREIGN KEY (`degree_id`) REFERENCES `degree` (`id`),
  ADD CONSTRAINT `semester_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `class` (`id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`degree_id`) REFERENCES `degree` (`id`),
  ADD CONSTRAINT `students_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `class` (`id`),
  ADD CONSTRAINT `students_ibfk_3` FOREIGN KEY (`semester_id`) REFERENCES `semester` (`id`),
  ADD CONSTRAINT `students_ibfk_4` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
