-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2019 at 02:11 PM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vehicless`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_add_car` (IN `name` VARCHAR(40), IN `carno` VARCHAR(20), IN `capcity` VARCHAR(20), IN `cost` VARCHAR(30), IN `address` VARCHAR(30), IN `owner_name` VARCHAR(30), IN `mobile` VARCHAR(30), IN `availibilty` INT(30))  MODIFIES SQL DATA
    COMMENT 'Adds a new customer'
BEGIN
	INSERT INTO vehicle (name, carno, capcity, cost,address, owner_name,mobile,availibilty) VALUES (name, carno, capcity, cost,address, owner_name,mobile,availibilty);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_add_customer` (IN `fname` VARCHAR(40), IN `mname` VARCHAR(20), IN `lname` VARCHAR(20), IN `pnum` VARCHAR(30), IN `eid` VARCHAR(30))  MODIFIES SQL DATA
    COMMENT 'Adds a new customer'
BEGIN
	INSERT INTO Customer (first_name, middle_name, last_name, phone_number, email_id) VALUES (fname, mname, lname, pnum, eid);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_add_feedback` (IN `vehicle_name` VARCHAR(30), IN `vehicle_no` VARCHAR(30), IN `feedback` VARCHAR(40))  NO SQL
BEGIN
	INSERT INTO feedback (vehicle_name, vehicle_no, feedback) VALUES (vehicle_name, vehicle_no, feedback);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_add_registered_customer` (IN `eid` VARCHAR(30), IN `pwd` VARCHAR(20))  MODIFIES SQL DATA
    COMMENT 'Adds a new registered customer'
BEGIN
	INSERT INTO RegisteredCustomer (email_id, password) VALUES (eid, pwd);
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `approved`
--

CREATE TABLE `approved` (
  `vehicle_id` int(10) DEFAULT NULL,
  `customer_name` varchar(50) DEFAULT NULL,
  `vehicle_name` varchar(50) NOT NULL,
  `owner_name` varchar(50) DEFAULT NULL,
  `owner_contact` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `cost` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth`
--

CREATE TABLE `auth` (
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth`
--

INSERT INTO `auth` (`email`, `password`) VALUES
('vehical_admin', 'admin'),
('vehical_admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `email_id` varchar(30) NOT NULL DEFAULT '',
  `first_name` varchar(40) NOT NULL,
  `middle_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) NOT NULL,
  `phone_number` char(10) NOT NULL,
  `registration_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`email_id`, `first_name`, `middle_name`, `last_name`, `phone_number`, `registration_time`) VALUES
('akshay@gmail.com', 'Akshay', 'Rahul', 'Mashere', '8412925599', '2019-11-04 16:48:49'),
('ashu877@gmail.com', 'Ashish', 'Vijay', 'Choudhari', '9096309955', '2019-10-14 18:34:05'),
('harshal@gmail.com', 'Harshal', 'ABC', 'Bhosale', '2019-09-30', '2019-10-15 05:57:17'),
('karan@gmail.com', 'Karan', 'Bhau', 'Choudhari', '9087654321', '2019-10-15 00:13:01'),
('mashererahul0@gmail.com', 'Rahul', 'Dilip', 'Mashere', '8412925599', '2019-09-23 08:41:00'),
('navedqureshi007@yahoo.com', 'Naved', 'Iqbal', 'Qureshi', '9890611786', '2019-10-15 05:32:54'),
('r@g.com', 'rahul', 'dilip', 'mashere', '8412925599', '2019-10-01 06:46:21'),
('sagar@gmail.com', 'sagar', 'suresh', 'mashere', '90978654', '2019-11-04 16:59:38'),
('sakshikshatriya99@gmail.com', 'sakshi', 'rajesh', 'kshatriya', '8379972333', '2019-09-29 09:58:06'),
('sanketjori1999@gmail.com', 'sanket', 'dnyandev', 'jori', '7875291358', '2019-10-13 11:03:25'),
('sarawadeh@gmail.com', 'Rushikesh', 'Baburao', 'Sarawade', '9637167076', '2019-10-01 05:02:31'),
('suraj@gmail.com', 'Suraj', 'Rahul', 'Mashere', '909876500', '2019-11-04 16:53:13');

--
-- Triggers `customer`
--
DELIMITER $$
CREATE TRIGGER `add_time` BEFORE INSERT ON `customer` FOR EACH ROW INSERT INTO reg_time VALUES(NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(20) NOT NULL,
  `vehicle_name` varchar(20) NOT NULL,
  `vehicle_no` varchar(30) NOT NULL,
  `feedback` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `vehicle_name`, `vehicle_no`, `feedback`) VALUES
(0, 'Swift', 'mh78', 'good ');

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `contact` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`id`, `name`, `email`, `password`, `contact`) VALUES
(1001, 'sameer verma', 'sameerverma12@gmail.com', 'sam1111', '9325172555'),
(1002, 'rajesh gupta', 'raj_g007@gmail.com', 'raj007', '9373024222'),
(1003, 'varun chaturvedi', 'varun_c1999@gmail.com', 'varun1999', '9226878505');

-- --------------------------------------------------------

--
-- Table structure for table `registeredcustomer`
--

CREATE TABLE `registeredcustomer` (
  `membership_id` int(4) UNSIGNED NOT NULL,
  `email_id` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `num_rentals` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registeredcustomer`
--

INSERT INTO `registeredcustomer` (`membership_id`, `email_id`, `password`, `num_rentals`) VALUES
(1, 'mashererahul0@gmail.com', 'MH14FG3399', 0),
(2, 'sakshikshatriya99@gmail.com', 'saku2222', 0),
(16, 'sarawadeh@gmail.com', '1234567890', 0),
(17, 'r@g.com', '123', 0),
(18, 'sanketjori1999@gmail.com', 'sanket@99', 0),
(19, 'ashu877@gmail.com', '123', 0),
(20, 'karan@gmail.com', '12345', 0),
(21, 'navedqureshi007@yahoo.com', 'naved', 0),
(22, 'harshal@gmail.com', 'harshal@123', 0),
(23, 'sagar@gmail.com', '123', 0);

--
-- Triggers `registeredcustomer`
--
DELIMITER $$
CREATE TRIGGER `details` BEFORE INSERT ON `registeredcustomer` FOR EACH ROW INSERT INTO reg_time VALUES (NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `reg_time`
--

CREATE TABLE `reg_time` (
  `time_r` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_time`
--

INSERT INTO `reg_time` (`time_r`) VALUES
('2019-11-04 22:18:49.421699'),
('2019-11-04 22:29:38'),
('2019-11-04 22:29:38');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `customer_name` varchar(50) DEFAULT NULL,
  `vehicle_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`customer_name`, `vehicle_name`) VALUES
('mashererahul0@gmail.com', 'Ertiga');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(10) NOT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `vehicle_name` varchar(100) NOT NULL,
  `owner_contact` varchar(30) NOT NULL,
  `cost` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `return`
--

CREATE TABLE `return` (
  `vehicle_id` int(11) NOT NULL,
  `customer_name` int(11) NOT NULL,
  `vehicle_name` int(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `return_req`
--

CREATE TABLE `return_req` (
  `vehicle_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `vehicle_name` varchar(100) DEFAULT NULL,
  `cost` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `id` int(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `carno` varchar(20) NOT NULL,
  `capcity` varchar(40) NOT NULL,
  `cost` varchar(20) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `owner_name` varchar(30) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `availibilty` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`id`, `name`, `carno`, `capcity`, `cost`, `address`, `owner_name`, `mobile`, `availibilty`) VALUES
(1, 'Bullet', 'MH14FG3399', '2', '2000', 'Pune-38', 'Chetan Patil', '9096309955', 0),
(2, 'Ertiga', 'MH14FG3399', '7', '7000', 'Kothrud Pune', 'Rahul Mashere', '8412925599', 0),
(3, 'Swift', 'MH13HF5643', '4', '5000', 'Nashik, Maharashtra', 'Sakshi Kshtriya', '876543210', 0),
(4, 'i20 sportz', 'MH12JK9080', '4', '5000', 'Koregoan Park, Pune', 'Naveed Q', '9890611786', 0),
(5, 'i10 grand', 'MH13HF5642', '4', '9000', 'Koregoan Park, Pune', 'Naveed Q', '9890611786', 0),
(6, 'Swift', 'MH13HF5643', '4', '4000', 'Nashik, Maharashtra', 'Avi', '876543210', 0),
(7, 'Pulser', 'MH02HD3432', '5', '900', 'mUMBAI', 'Adesh', '907654389', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`email_id`),
  ADD KEY `index_customer_email` (`email_id`),
  ADD KEY `index_customer_phone` (`phone_number`),
  ADD KEY `index_customer_name` (`last_name`,`first_name`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registeredcustomer`
--
ALTER TABLE `registeredcustomer`
  ADD PRIMARY KEY (`membership_id`),
  ADD UNIQUE KEY `email_id` (`email_id`),
  ADD UNIQUE KEY `uc_member` (`email_id`,`membership_id`),
  ADD UNIQUE KEY `uc_login` (`email_id`,`password`),
  ADD KEY `index_registeredcustomer_membership` (`membership_id`),
  ADD KEY `index_registeredcustomer_email` (`email_id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `owner`
--
ALTER TABLE `owner`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1004;
--
-- AUTO_INCREMENT for table `registeredcustomer`
--
ALTER TABLE `registeredcustomer`
  MODIFY `membership_id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `registeredcustomer`
--
ALTER TABLE `registeredcustomer`
  ADD CONSTRAINT `registeredcustomer_ibfk_1` FOREIGN KEY (`email_id`) REFERENCES `customer` (`email_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
