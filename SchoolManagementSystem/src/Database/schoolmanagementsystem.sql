-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2023 at 01:47 PM
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
-- Database: `schoolmanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'abel', 123);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `courseID` varchar(50) NOT NULL,
  `courseName` varchar(100) NOT NULL,
  `creditHour` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `courseCatagory` varchar(20) NOT NULL,
  `department` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `courseID`, `courseName`, `creditHour`, `year`, `courseCatagory`, `department`) VALUES
(2, 'GlTr15', 'Global Trends', 4, 2, 'Common Course', 'all'),
(3, 'ADB15', 'Advanced Database System', 5, 2, 'Major Course', 'cs'),
(3, 'Cp15', 'Computer Programming ', 5, 1, 'Common Course', 'cs'),
(4, 'DSA15', 'Data Structure and Algorithm', 5, 2, 'Major Course', 'cs'),
(5, 'Thd15', 'Thermodynamics', 7, 3, 'Major Course', 'engineering'),
(6, 'Ki15', 'Kinematics', 6, 2, 'Major Course', 'engineering'),
(7, 'COA15', 'Computer Organization and Architecture', 5, 2, 'Major Course', 'cs'),
(8, 'OS15', 'Operating Systems', 5, 3, 'Major Course', 'cs'),
(9, 'SA14', 'Structural Analysis', 4, 2, 'Major Course', 'engineering'),
(10, 'GE14', 'Geotechnical Engineering', 7, 3, 'Major Course', 'engineering'),
(11, 'DAC13', 'Dynamics and Controls', 5, 7, 'Major Course', 'engineering');

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `id` int(11) NOT NULL,
  `studentID` varchar(50) NOT NULL,
  `courseID` varchar(50) NOT NULL,
  `quizGrade` double NOT NULL,
  `testGrade` double NOT NULL,
  `assignmentGrade` double NOT NULL,
  `midGrade` double NOT NULL,
  `finalGrade` double NOT NULL,
  `totalGrade` double NOT NULL,
  `grade` varchar(5) DEFAULT NULL,
  `teacherID` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`id`, `studentID`, `courseID`, `quizGrade`, `testGrade`, `assignmentGrade`, `midGrade`, `finalGrade`, `totalGrade`, `grade`, `teacherID`) VALUES
(38, 'bdu1309027', 'ki15', 5, 10, 8, 20, 40, 83, 'A-', 'BDU133'),
(39, 'bdu13057', 'DSA15', 5, 8, 7, 20, 45, 85, 'A', 'bdu130'),
(40, 'bdu13058', 'DSA15', 5, 8, 7, 20, 40, 80, 'A-', 'bdu130'),
(46, 'bdu13056', 'CP15', 5, 8, 7, 18, 40, 78, 'B+', 'bdu130'),
(47, 'bdu1309026', 'DSA15', 5, 10, 7, 20, 44, 86, 'A', 'bdu130'),
(48, 'bdu1309029', 'Thd15', 5, 10, 8, 20, 45, 88, 'A', 'bdu133'),
(49, 'bdu1309028', 'Thd15', 5, 10, 8, 20, 35, 78, 'B+', 'bdu133');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `studentID` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `department` varchar(100) NOT NULL,
  `phoneNum` int(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `year` int(11) NOT NULL,
  `startSemester` varchar(20) NOT NULL,
  `endSemester` date NOT NULL,
  `price` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `password` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `studentID`, `name`, `gender`, `department`, `phoneNum`, `address`, `year`, `startSemester`, `endSemester`, `price`, `status`, `password`) VALUES
(1, 'bdu1309026', 'abel berhanu', 'Male', 'cs', 914423040, 'Dessie', 3, '2023-05-18', '2023-08-01', 2000, 'Paid', 123123),
(2, 'bdu13056', 'Beza mekonen', 'Female', 'cs', 9455455, 'Dessie', 5, '2023-05-26', '2023-09-03', 3600, 'Paid', NULL),
(3, 'bdu130554', 'mekonen', 'Female', 'se', 914423040, 'Dessie', 5, '2023-05-18', '2023-10-29', 6000, 'Unpaid', NULL),
(4, 'bdu1309027', 'abebe', 'Male', 'engineering', 914423040, 'Dessie', 4, '2022-05-09', '2023-08-01', 14000, 'Unpaid', 123),
(5, 'bdu1309028', 'abeba', 'Female', 'engineering', 914423040, 'Dessie', 3, '2023-05-18', '2023-08-01', 2000, 'Paid', NULL),
(6, 'bdu1309029', 'kebede', 'Male', 'engineering', 914423040, 'Dessie', 3, '2023-09-13', '2024-05-30', 8000, 'Paid', NULL),
(7, 'bdu13057', 'hana', 'Female', 'cs', 9455455, 'Dessie', 3, '2023-05-26', '2023-09-03', 3000, 'Paid', 123),
(8, 'bdu1309030', 'jhon', 'Female', 'engineering', 914423040, 'Dessie', 3, '2023-05-18', '2023-08-01', 2000, 'Paid', NULL),
(9, 'bdu1309031', 'almeu', 'Female', 'engineering', 914423040, 'Dessie', 3, '2023-05-18', '2023-08-01', 2000, 'Paid', NULL),
(10, 'bdu13058', 'heven', 'Female', 'cs', 9455455, 'Dessie', 3, '2023-05-26', '2023-09-03', 3000, 'Paid', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `teacherID` varchar(25) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `department` varchar(100) NOT NULL,
  `phoneNum` int(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  `password` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `teacherID`, `name`, `gender`, `department`, `phoneNum`, `address`, `status`, `password`) VALUES
(1, 'bdu130', 'abel', 'Male', 'cs', 914423040, 'dessie', 'Active', 123),
(2, 'bdu131', 'grma', 'Male', 'cs', 91442885, 'jimma', 'Active', 12345),
(3, 'bdu132', 'abaye', 'Male', 'se', 9852255, 'addis abeba', 'Active', 1122),
(5, 'bdu133', 'ngist', 'Female', 'engineering', 9852255, 'addis abeba', 'Active', 123);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`,`courseID`),
  ADD KEY `courseID` (`courseID`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Student` (`studentID`),
  ADD KEY `FK_Course` (`courseID`),
  ADD KEY `teacherID` (`teacherID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`,`studentID`),
  ADD KEY `studentID` (`studentID`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`,`teacherID`),
  ADD KEY `teacherID` (`teacherID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `grade`
--
ALTER TABLE `grade`
  ADD CONSTRAINT `FK_Course` FOREIGN KEY (`courseID`) REFERENCES `course` (`courseID`),
  ADD CONSTRAINT `FK_Student` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`),
  ADD CONSTRAINT `FK_TeacherID` FOREIGN KEY (`teacherID`) REFERENCES `teacher` (`teacherID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
