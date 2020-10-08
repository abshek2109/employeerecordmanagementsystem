-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2020 at 02:57 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ermsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `empeducation`
--

CREATE TABLE `empeducation` (
  `Id` int(11) NOT NULL,
  `EmpID` int(10) DEFAULT NULL,
  `CoursePG` varchar(45) DEFAULT NULL,
  `SchoolCollegePG` varchar(45) DEFAULT NULL,
  `YearPassingPG` varchar(45) DEFAULT NULL,
  `PercentagePG` varchar(4) DEFAULT NULL,
  `CourseGra` varchar(45) DEFAULT NULL,
  `SchoolCollegeGra` varchar(45) DEFAULT NULL,
  `YearPassingGra` varchar(45) DEFAULT NULL,
  `PercentageGra` varchar(4) DEFAULT NULL,
  `CourseSSC` varchar(45) DEFAULT NULL,
  `SchoolCollegeSSC` varchar(45) DEFAULT NULL,
  `YearPassingSSC` varchar(45) DEFAULT NULL,
  `PercentageSSC` varchar(4) DEFAULT NULL,
  `CourseHSC` varchar(45) DEFAULT NULL,
  `SchoolCollegeHSC` varchar(45) DEFAULT NULL,
  `YearPassingHSC` varchar(45) DEFAULT NULL,
  `PercentageHSC` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empeducation`
--

INSERT INTO `empeducation` (`Id`, `EmpID`, `CoursePG`, `SchoolCollegePG`, `YearPassingPG`, `PercentagePG`, `CourseGra`, `SchoolCollegeGra`, `YearPassingGra`, `PercentageGra`, `CourseSSC`, `SchoolCollegeSSC`, `YearPassingSSC`, `PercentageSSC`, `CourseHSC`, `SchoolCollegeHSC`, `YearPassingHSC`, `PercentageHSC`) VALUES
(7, 14, 'it', 'tcet', '2022', '75', 'it', 'tcet', '2022', '75', 'science', 'govt', '2018', '75', 'science', 'vishwa', '2016', '82'),
(8, 15, 'na', 'na', 'na', '00', 'it', 'tcet', '2022', '85', 'science', 'fsfds', '2018', '75', 'science', 'dgfd', '2016', '85'),
(9, 17, 'it', 'tcet', '2022', '75', 'it', 'tcet', '2022', '75', 'science', 'govt', '2018', '75', 'science', 'vishwa', '2016', '82');

-- --------------------------------------------------------

--
-- Table structure for table `empexpireince`
--

CREATE TABLE `empexpireince` (
  `ID` int(11) NOT NULL,
  `EmpID` varchar(5) DEFAULT NULL,
  `Employer1Name` varchar(75) DEFAULT NULL,
  `Employer1Designation` varchar(50) DEFAULT NULL,
  `Employer1CTC` varchar(50) DEFAULT NULL,
  `Employer1WorkDuration` varchar(11) DEFAULT NULL,
  `Employer2Name` varchar(75) DEFAULT NULL,
  `Employer2Designation` varchar(50) DEFAULT NULL,
  `Employer2CTC` varchar(50) DEFAULT NULL,
  `Employer2WorkDuration` varchar(11) DEFAULT NULL,
  `Employer3Name` varchar(75) DEFAULT NULL,
  `Employer3Designation` varchar(50) DEFAULT NULL,
  `Employer3CTC` varchar(50) DEFAULT NULL,
  `Employer3WorkDuration` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empexpireince`
--

INSERT INTO `empexpireince` (`ID`, `EmpID`, `Employer1Name`, `Employer1Designation`, `Employer1CTC`, `Employer1WorkDuration`, `Employer2Name`, `Employer2Designation`, `Employer2CTC`, `Employer2WorkDuration`, `Employer3Name`, `Employer3Designation`, `Employer3CTC`, `Employer3WorkDuration`) VALUES
(12, '14', 'TCET', 'Student', '30000', '4year', 'vishwa bharati', 'student', '40000', '10years', 'govt mixed hr sec', 'student', '50000', '2years'),
(13, '15', 'Saaho industry', 'intern', '5000', '6months', 'TCET', 'Intern', '00', '1month', 'TCET', 'student', '0', '4year'),
(14, '17', 'TCET', 'Student', '30000', '4year', 'TCET', 'student', '40000', '10years', 'govt mixed hr sec', 'student', '50000', '2years');

-- --------------------------------------------------------

--
-- Table structure for table `employeedetail`
--

CREATE TABLE `employeedetail` (
  `ID` int(11) NOT NULL,
  `EmpFname` varchar(50) DEFAULT NULL,
  `EmpLName` varchar(50) NOT NULL,
  `EmpCode` varchar(50) DEFAULT NULL,
  `EmpDept` varchar(120) DEFAULT NULL,
  `EmpDesignation` varchar(120) DEFAULT NULL,
  `EmpContactNo` bigint(10) DEFAULT NULL,
  `EmpGender` enum('Male','Female') DEFAULT NULL,
  `EmpEmail` varchar(200) DEFAULT NULL,
  `EmpPassword` varchar(100) DEFAULT NULL,
  `EmpJoingdate` date DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeedetail`
--

INSERT INTO `employeedetail` (`ID`, `EmpFname`, `EmpLName`, `EmpCode`, `EmpDept`, `EmpDesignation`, `EmpContactNo`, `EmpGender`, `EmpEmail`, `EmpPassword`, `EmpJoingdate`, `PostingDate`) VALUES
(14, 'ABHISHEK', 'PANDITA', '1032180149', 'IT', 'CEO', 6005010021, 'Male', 'abshek2109@gmail.com', 'abshek12', '2000-09-21', '2020-07-26 07:42:42'),
(15, 'Deeksha', 'Rai', '1032180846', 'IT', 'CEO', 9869858787, 'Female', 'raideeksha809@gmail.com', 'abshek12', '2000-09-08', '2020-07-29 07:43:22'),
(16, 'Abhi', 'Pandita', '180149111', NULL, NULL, NULL, NULL, 'abhishekpandita18@gmail.com', 'abshek12', NULL, '2020-07-30 18:59:45'),
(17, 'abhijeet', 'pawar', '10801251', 'IT', 'CEO', 9869858787, 'Male', 'aaspawar@gmail.com', 'abshek12', '2000-09-21', '2020-07-31 05:01:52');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(50) DEFAULT NULL,
  `AdminuserName` varchar(50) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `AdminuserName`, `Password`, `AdminRegdate`) VALUES
(2, 'Abhishek', 'Admin', 'Test@123', '2020-07-28 16:52:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `empeducation`
--
ALTER TABLE `empeducation`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `empexpireince`
--
ALTER TABLE `empexpireince`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `employeedetail`
--
ALTER TABLE `employeedetail`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `EmpCode` (`EmpCode`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `empeducation`
--
ALTER TABLE `empeducation`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `empexpireince`
--
ALTER TABLE `empexpireince`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `employeedetail`
--
ALTER TABLE `employeedetail`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
