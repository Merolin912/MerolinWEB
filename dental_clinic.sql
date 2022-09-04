-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 01, 2021 at 10:11 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dental_clinic`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

DROP TABLE IF EXISTS `admin_login`;
CREATE TABLE IF NOT EXISTS `admin_login` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`a_id`, `username`, `password`) VALUES
(1, 'admin', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE IF NOT EXISTS `appointment` (
  `appointment_id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `cause` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Confirmed',
  `c_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`appointment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointment_id`, `doctor_id`, `patient_id`, `date`, `cause`, `status`, `c_date`) VALUES
(3, 5, 15, '2020-06-04', 'General checkup', 'Confirmed', NULL),
(4, 9, 20, '2020-08-17', 'General checkup', 'Confirmed', NULL),
(7, 14, 22, '2020-09-02', 'General checkup', 'Confirmed', NULL),
(8, 13, 23, '2020-09-11', 'Root canals', 'pending !', NULL),
(10, 16, 24, '2020-09-12', 'Checkups and cleaning', 'Confirmed', NULL),
(11, 14, 24, '2020-09-13', 'Filling', 'Confirmed', NULL),
(12, 20, 26, '2021-09-23', 'Checkups and cleaning', 'Confirmed', NULL),
(13, 20, 25, '2021-09-23', 'Checkups and cleaning', 'pending !', NULL),
(14, 18, 21, '2020-09-15', 'Filling', 'Confirmed', NULL),
(15, 18, 22, '2020-09-15', 'Filling', 'Confirmed', NULL),
(17, 18, 27, '2020-09-15', 'Root canals', 'Confirmed', NULL),
(18, 20, 28, '2021-09-23', 'Filling', 'Canceled', NULL),
(21, 20, 26, '2021-09-23', 'General checkup', 'Confirmed', NULL),
(23, 20, 26, '2021-09-23', 'General checkup', 'Confirmed', NULL),
(24, 20, 25, '2021-09-23', 'General checkup', 'pending !', NULL),
(25, 20, 25, '2021-09-23', 'General checkup', 'pending !', NULL),
(26, 19, 28, '2021-10-02', 'General checkup', 'DONE', '2021-10-01 02:32:15'),
(27, 19, 28, '2021-10-02', 'General checkup', 'pending !', '2021-10-01 04:15:26'),
(28, 20, 28, '2021-10-02', 'General checkup', 'Canceled', '2021-10-01 04:39:37'),
(29, 20, 28, '2021-10-02', 'General checkup', 'Canceled', '2021-10-01 04:40:10'),
(30, 20, 28, '2021-10-02', 'General checkup', 'Confirmed', '2021-10-01 04:41:17');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE IF NOT EXISTS `doctor` (
  `doctor_id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_name` varchar(20) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `age` int(11) NOT NULL,
  `phone_no` bigint(10) NOT NULL,
  `email` varchar(25) NOT NULL,
  `qualification` varchar(10) NOT NULL,
  `specialisation` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  `image` blob NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'ACTIVE',
  PRIMARY KEY (`doctor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctor_id`, `doctor_name`, `gender`, `age`, `phone_no`, `email`, `qualification`, `specialisation`, `password`, `image`, `status`) VALUES
(18, 'veena', 'female', 29, 9972033158, 'veena@gmail.com', 'BDS', 'Surgeon', 'Veenaujire@123', 0x617661746172322e706e67, 'LEAVE'),
(19, 'anu', 'female', 34, 9972033158, 'anu', 'BDS', 'Surgeon', '123', 0x617661746172332e706e67, 'ACTIVE'),
(20, 'soujanya', 'female', 28, 8277021603, 'soujanya@gmail.com', 'BDS', 'Prothodontist', 'Soujanya@123', 0x617661746172322e706e67, 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `phoneno` bigint(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `message` varchar(100) NOT NULL,
  `dateandtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_id`, `name`, `phoneno`, `email`, `message`, `dateandtime`) VALUES
(10, 'Samay', 1111111111, 'samay@yahoomail.com', 'Liked the treatment facility', '2021-09-15 10:16:30'),
(11, 'Bhargav', 8197465907, 'barghva@gmail.com', 'Facility was not upto the mark as i expected', '2021-09-15 10:16:30'),
(12, 'suraksha', 9972033158, 'surakshasalian@gmail', 'helpfull', '2021-09-15 10:16:30');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
CREATE TABLE IF NOT EXISTS `notification` (
  `n_id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `d_description` varchar(500) NOT NULL,
  `p_description` varchar(500) NOT NULL,
  PRIMARY KEY (`n_id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`n_id`, `patient_id`, `doctor_id`, `d_description`, `p_description`) VALUES
(63, 24, 16, ' Helo veena this is the remainder that Patient chandan\'s appointment is confirmed with you on 11/9/2020   at   1:00', 'Helo chandan this is the remainder that your appointment is confirmed with Doctor veena is on 11/9/2020  at 1:00'),
(64, 24, 16, ' Helo veena this is the remainder that Patient chandan\'s appointment is confirmed with you on 12/9/2020   at    2:00', 'Helo chandan this is the remainder that your appointment is confirmed with Doctor veena is on 12/09/2020  at 2:00'),
(65, 24, 16, ' Helo veena this is the remainder that Patient chandan\'s appointment is confirmed with you on 13/9/2020   at    3:00', 'Helo chandan this is the remainder that your appointment is confirmed with Doctor veena is on  13/09/2020 at 3:00'),
(66, 24, 16, ' Helo veena this is the remainder that Patient chandan\'s appointment is confirmed with you on  15/9/ 2020 at    12:00', 'Helo chandan this is the remainder that your appointment is confirmed with Doctor veena is on  15/9/2020 at 12:00'),
(67, 24, 16, ' Helo veena this is the remainder that Patient chandan\'s appointment is confirmed with you on  14/9/2020 at    12:00', 'Helo chandan this is the remainder that your appointment is confirmed with Doctor veena is on 14/9/2020   at 12:00'),
(68, 26, 18, ' Helo veena this is the remainder that Patient ramya\'s appointment is confirmed with you on 15/9/2020   at   1:00', 'Helo ramya this is the remainder that your appointment is confirmed with Doctor veena is on 15/9/2020  at 1:00'),
(69, 24, 18, ' Helo veena this is the remainder that Patient chandan\'s appointment is confirmed with you on   at   ', 'Helo chandan this is the remainder that your appointment is confirmed with Doctor veena is on   at'),
(70, 24, 20, ' Helo soujanya this is the remainder that Patient chandan\'s appointment is confirmed with you on   at   ', 'Helo chandan this is the remainder that your appointment is confirmed with Doctor soujanya is on   at'),
(71, 24, 20, ' Helo soujanya this is the remainder that Patient chandan\'s appointment is confirmed with you on   at   ', 'Helo chandan this is the remainder that your appointment is confirmed with Doctor soujanya is on   at'),
(72, 21, 18, 'Helo veena this is the remainder that Patient keerthan LB\'s appointment is confirmed.', 'Helokeerthan LB this is the remainder that your appointment is confirmed with Doctor veena.'),
(73, 24, 19, 'Helo anu this is the remainder that Patient chandan\'s appointment is confirmed.', 'Helochandan this is the remainder that your appointment is confirmed with Doctor anu.'),
(74, 24, 19, ' Helo anu this is the remainder that Patient chandan\'s appointment is confirmed with you on   at   ', 'Helo chandan this is the remainder that your appointment is confirmed with Doctor anu is on   at'),
(75, 24, 19, 'Helo anu this is the remainder that Patient chandan\'s appointment is confirmed.', 'Helochandan this is the remainder that your appointment is confirmed with Doctor anu.'),
(76, 28, 19, 'Helo anu this is the remainder that Patient meena\'s appointment is confirmed with you on 2021-10-02', 'Helomeena this is the remainder that your appointment is confirmed with Doctor anu .'),
(77, 28, 20, 'Helo soujanya this is the remainder that Patient \'s appointment is confirmed with you on 2021-10-02', 'Helo this is the remainder that your appointment is confirmed with Doctor  is on2021-10-02'),
(78, 28, 20, 'Helo soujanya this is the remainder that Patient \'s appointment is confirmed with you on 2021-10-02', 'Helo this is the remainder that your appointment is confirmed with Doctor  is on2021-10-02'),
(79, 28, 20, 'Helo soujanya this is the remainder that Patient meena\'s appointment is confirmed with you on 2021-10-02', 'Helo meenathis is the remainder that your appointment is confirmed with Doctor soujanya is on2021-10-02');

-- --------------------------------------------------------

--
-- Table structure for table `offappointment`
--

DROP TABLE IF EXISTS `offappointment`;
CREATE TABLE IF NOT EXISTS `offappointment` (
  `appointment_id` int(20) NOT NULL AUTO_INCREMENT,
  `patient_name` varchar(15) NOT NULL,
  `date` date NOT NULL,
  `cause` varchar(20) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  PRIMARY KEY (`appointment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offappointment`
--

INSERT INTO `offappointment` (`appointment_id`, `patient_name`, `date`, `cause`, `doctor_id`, `patient_id`) VALUES
(11, 'Vinay', '2020-09-09', 'Filling', 13, 9),
(13, 'Arvind', '2020-09-12', 'Root canals', 16, 12),
(15, 'neeriksha', '2020-09-13', 'Checkups and cleanin', 18, 13),
(16, 'ramu', '2020-09-15', 'Checkups and cleanin', 18, 14),
(17, 'Gowthami', '2021-09-24', 'Dentures', 19, 8),
(18, 'neeriksha', '2021-09-24', 'General checkup', 19, 13),
(19, 'ramu', '2021-09-24', 'General checkup', 18, 14),
(20, 'Arvind', '2021-09-24', 'General checkup', 20, 12),
(21, 'Gowthami', '2021-09-23', 'General checkup', 18, 8),
(22, 'soujanya', '2021-09-23', 'General checkup', 18, 11),
(23, 'Arvind', '2021-09-23', 'General checkup', 18, 12),
(24, 'neeriksha', '2021-09-23', 'General checkup', 18, 13),
(25, 'ramu', '2021-09-23', 'General checkup', 18, 14);

-- --------------------------------------------------------

--
-- Table structure for table `offnotification`
--

DROP TABLE IF EXISTS `offnotification`;
CREATE TABLE IF NOT EXISTS `offnotification` (
  `n_id` int(10) NOT NULL AUTO_INCREMENT,
  `patient_id` int(10) NOT NULL,
  `doctor_id` int(10) NOT NULL,
  `description` varchar(113) NOT NULL,
  PRIMARY KEY (`n_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offnotification`
--

INSERT INTO `offnotification` (`n_id`, `patient_id`, `doctor_id`, `description`) VALUES
(1, 12, 20, 'Helo soujanya this is the remainder that Patient Arvind\'s appointment is confirmed with you on 2021-09-24'),
(2, 8, 18, 'Helo veena this is the remainder that Patient Gowthami\'s appointment is confirmed with you on 2021-09-23'),
(3, 11, 18, 'Helo veena this is the remainder that Patient soujanya\'s appointment is confirmed with you on 2021-09-23'),
(4, 12, 18, 'Helo veena this is the remainder that Patient Arvind\'s appointment is confirmed with you on 2021-09-23'),
(5, 13, 18, 'Helo veena this is the remainder that Patient neeriksha\'s appointment is confirmed with you on 2021-09-23'),
(6, 14, 18, 'Helo veena this is the remainder that Patient ramu\'s appointment is confirmed with you on 2021-09-23');

-- --------------------------------------------------------

--
-- Table structure for table `offpatient`
--

DROP TABLE IF EXISTS `offpatient`;
CREATE TABLE IF NOT EXISTS `offpatient` (
  `patient_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int(5) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `address` varchar(25) NOT NULL,
  `dates` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offpatient`
--

INSERT INTO `offpatient` (`patient_id`, `name`, `age`, `gender`, `phone`, `address`, `dates`) VALUES
(8, 'Gowthami', 25, 'female', 8974568245, 'Ujire', '2021-09-23 01:59:24'),
(11, 'soujanya', 30, 'female', 8277021603, 'Dharwad', '2021-09-23 01:59:24'),
(12, 'Arvind', 31, 'male', 9481582499, 'bhatkal', '2021-09-23 01:59:24'),
(13, 'neeriksha', 12, 'female', 9481582488, 'manglore', '2021-09-20 01:59:24'),
(14, 'ramu', 30, 'male', 9972033158, 'manglore', '2021-09-23 01:59:24'),
(15, 'Kusuma', 45, 'female', 9876543210, 'puttur', '2021-09-22 01:59:22');

-- --------------------------------------------------------

--
-- Table structure for table `offtreatment`
--

DROP TABLE IF EXISTS `offtreatment`;
CREATE TABLE IF NOT EXISTS `offtreatment` (
  `treat_id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `treatment_details` varchar(123) NOT NULL,
  `medicine` varchar(123) NOT NULL,
  PRIMARY KEY (`treat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offtreatment`
--

INSERT INTO `offtreatment` (`treat_id`, `doctor_id`, `patient_id`, `treatment_details`, `medicine`) VALUES
(1, 5, 5, 'asasasasas', 'dd'),
(2, 5, 5, 'gxcvb', ''),
(3, 9, 5, 'gambit', 'as,s,sa'),
(4, 9, 6, 'vhashdbasasa', 'asasa'),
(5, 9, 6, 'xg', 'gds'),
(6, 13, 0, 'root canal', 'inject'),
(8, 13, 8, 'root canal', 'inject'),
(9, 16, 12, 'root canal', 'inject'),
(10, 16, 12, 'root canal', 'crosin'),
(11, 18, 13, 'Extraction', 'inject');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `patient_id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_name` varchar(20) NOT NULL,
  `age` varchar(5) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phone_no` bigint(10) NOT NULL,
  `email` varchar(25) NOT NULL,
  `address` varchar(25) NOT NULL,
  `sqsn` int(111) NOT NULL,
  `sans` varchar(111) NOT NULL,
  `password` varchar(20) NOT NULL,
  `dates` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_id`, `patient_name`, `age`, `gender`, `phone_no`, `email`, `address`, `sqsn`, `sans`, `password`, `dates`) VALUES
(21, 'keerthan LB', '22', 'male', 9888383833, 'keerthan@gmail.com', 'Dharmasthala', 4, 'black', 'keerthan@123', '2021-09-23 01:58:44'),
(22, 'Bhavit', '25', 'male', 8197465907, 'bhavit@gmail.com', 'Sirsi', 1, 'brodha', 'Bhavit@123', '2021-09-23 01:58:44'),
(24, 'chandan', '21', 'male', 7412589630, 'chandan@gmail.com', 'ujire', 1, 'chandu', 'Chan@123', '2021-09-23 01:58:44'),
(26, 'ramya', '12', 'female', 9972033158, 'ramya@gmail.com', 'ujire', 1, 'ramya', 'Ramya@123', '2021-09-23 01:58:44'),
(27, 'anusha', '12', 'female', 9972033158, 'anusha@gmail.com', 'chikkmanglore', 1, 'anu', 'Anusha@123', '2021-09-23 01:58:44'),
(28, 'meena', '34', 'female', 9972033158, 'meena@gmail.com', 'manglore', 1, 'meena', '123', '2021-09-24 01:58:44');

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

DROP TABLE IF EXISTS `treatment`;
CREATE TABLE IF NOT EXISTS `treatment` (
  `treat_id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `treatment_details` varchar(40) NOT NULL,
  `medicine` varchar(50) NOT NULL,
  PRIMARY KEY (`treat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`treat_id`, `doctor_id`, `patient_id`, `treatment_details`, `medicine`) VALUES
(4, 4, 16, 'Therapy', 'Cippla,bhoa, djnadsd, sdjnasnd'),
(6, 2, 15, 'asasasasas', 'aa,bb,cc'),
(7, 5, 17, 'Therapy', 'as, bd, ff'),
(11, 10, 20, 'kaspoaro', 'as,dd,ff'),
(15, 13, 0, 'filling', 'inject'),
(17, 13, 0, 'root canal', 'inject'),
(18, 13, 23, 'Extraction', 'crosin'),
(19, 18, 24, 'root canal', 'inject'),
(20, 18, 27, 'root canal', 'crosin'),
(21, 18, 21, 'root canal', 'corsin'),
(22, 19, 24, 'inject', 'para');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
