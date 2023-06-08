-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2022 at 04:02 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pessdb`
--
CREATE DATABASE IF NOT EXISTS `pessdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pessdb`;

-- --------------------------------------------------------

--
-- Table structure for table `dispatch`
--

CREATE TABLE `dispatch` (
  `incident_id` int(11) NOT NULL,
  `patrolcar_id` varchar(10) NOT NULL,
  `time_dispatched` datetime NOT NULL,
  `time_arrived` datetime DEFAULT NULL,
  `time_completed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dispatch`
--

INSERT INTO `dispatch` (`incident_id`, `patrolcar_id`, `time_dispatched`, `time_arrived`, `time_completed`) VALUES
(12, 'QX2222G', '2014-05-29 10:51:15', NULL, '2014-05-29 10:53:43'),
(13, 'QX2222G', '2014-05-29 10:59:42', NULL, NULL),
(14, 'QX4444P', '2014-05-29 11:10:57', NULL, '2022-05-10 20:39:53'),
(15, 'QX1234', '2022-03-10 13:46:00', NULL, '2022-03-10 14:08:00'),
(16, 'QX1234', '2022-04-22 13:59:32', NULL, '2022-05-10 20:30:57'),
(17, 'QX1234', '2022-05-05 12:21:28', NULL, '2022-05-10 20:30:57'),
(18, 'QX4321R', '2022-05-05 16:44:23', '2022-05-10 20:50:47', '2022-05-10 20:53:06'),
(18, 'QX4444P', '2022-05-05 16:44:23', NULL, '2022-05-10 20:39:53'),
(21, 'QX1234', '2022-05-05 18:11:57', NULL, '2022-05-10 20:30:57'),
(21, 'QX4444P', '2022-05-05 18:11:57', NULL, '2022-05-10 20:39:53'),
(23, 'QX1234', '2022-05-06 09:13:14', NULL, '2022-05-10 20:30:57'),
(24, 'QX1234', '2022-05-06 09:14:23', NULL, '2022-05-10 20:30:57'),
(24, 'QX45545', '2022-05-06 09:14:23', NULL, NULL),
(25, 'QX1234', '2022-05-10 20:46:50', NULL, '2022-05-10 20:47:02'),
(26, 'QX4444P', '2022-05-10 20:47:42', NULL, '2022-05-10 20:49:59'),
(27, 'QX1234', '2022-05-10 20:54:38', NULL, '2022-05-12 12:53:15'),
(27, 'QX4321R', '2022-05-10 20:54:38', NULL, '2022-05-12 14:20:13'),
(27, 'QX4444P', '2022-05-10 20:54:38', NULL, '2022-05-12 14:20:36'),
(27, 'QX9999H', '2022-05-10 20:54:38', NULL, NULL),
(34, 'QX1234', '2022-05-12 13:21:07', NULL, '2022-05-12 21:55:07'),
(34, 'QX4321R', '2022-05-12 13:21:07', NULL, '2022-05-12 14:20:13'),
(34, 'QX4444P', '2022-05-12 13:21:07', NULL, '2022-05-12 14:20:36'),
(34, 'QX45545', '2022-05-12 13:21:07', NULL, NULL),
(34, 'QX9999H', '2022-05-12 13:21:07', NULL, NULL),
(36, 'QX4444P', '2022-05-12 13:31:50', NULL, '2022-05-12 14:20:36'),
(38, 'QX4321R', '2022-05-12 14:22:06', NULL, NULL),
(38, 'QX4444P', '2022-05-12 14:22:06', NULL, NULL),
(39, 'QX1234', '2022-05-12 21:34:14', NULL, '2022-05-12 21:55:07'),
(39, 'QX4444P', '2022-05-12 21:34:14', NULL, NULL),
(40, 'QX1234', '2022-05-12 21:40:42', NULL, '2022-05-12 21:55:07'),
(40, 'QX4444P', '2022-05-12 21:40:42', NULL, NULL),
(41, 'QX1234', '2022-05-12 21:55:21', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `incident`
--

CREATE TABLE `incident` (
  `incident_id` int(11) NOT NULL,
  `caller_name` varchar(30) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `incident_type_id` varchar(3) NOT NULL,
  `incident_location` varchar(50) NOT NULL,
  `incident_desc` varchar(100) NOT NULL,
  `incident_status_id` varchar(1) NOT NULL,
  `time_called` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `incident`
--

INSERT INTO `incident` (`incident_id`, `caller_name`, `phone_number`, `incident_type_id`, `incident_location`, `incident_desc`, `incident_status_id`, `time_called`) VALUES
(9, 'Peter Leow', '81234567', '', 'Junction of North Bridge Road and Middle Road', 'A bus collided with a taxi, 2 injuries', '3', '2022-03-10 14:14:03'),
(12, 'PETER LEOW', '81234567', '010', 'Junction of North Bridge Rd and Middle Rd', 'A bus collided with a Taxi. 2 injuries', '1', '2022-04-21 13:36:04'),
(13, 'qwerty', '12345678', '030', 'cck', 'qwerty', '3', '2022-04-21 13:37:14'),
(14, 'Ben Henderson', '46835848', '030', 'Jurong Point', 'qwerty1', '3', '2022-04-21 13:43:35'),
(15, 'Joe Henry', '58864835', '010', 'Bukit Batok West Ave', 'There was a fire at bukit batok.', '2', '2022-04-22 13:55:38'),
(16, 'Joe Henry', '58864835', '010', 'Bukit Batok West Ave', 'there was a fire at bukit batok.', '2', '2022-04-22 13:59:32'),
(17, 'Joe Henry', '58864835', '010', 'Bukit Batok West Ave', 'there was a fire', '2', '2022-05-05 12:21:28'),
(18, 'Joe Henry', '58864835', '010', 'Bukit Batok West Ave', 'there was a fire.', '3', '2022-05-10 20:53:06'),
(19, 'Joe Henry', '58864835', '010', 'Bukit Batok West Ave', 'there was a fire.', '1', '2022-05-05 18:09:40'),
(20, 'Joe Henry', '58864835', '010', 'Bukit Batok West Ave', 'there was a fire.', '1', '2022-05-05 18:09:53'),
(21, 'Joe Henry', '58864835', '010', 'Bukit Batok West Ave', 'there was fire', '3', '2022-05-10 20:39:53'),
(22, 'Joe Henry', '58864835', '010', 'Bukit Batok West Ave', 'there was a fire', '1', '2022-05-05 18:15:03'),
(23, 'Joe Henry', '58864835', '010', 'Bukit Batok West Ave', 'there was a fire at ?blk.', '2', '2022-05-06 09:13:14'),
(24, 'Joe Henry', '58864835', '010', 'Bukit Batok West Ave', 'there was a fire at blk?', '3', '2022-05-06 09:16:33'),
(25, 'Joe Henry', '58864835', '010', 'Bukit Batok West Ave', 'there was a fire ', '3', '2022-05-10 20:47:02'),
(36, 'Joe Henry', '58864835', '010', 'Bukit Batok West Ave', 'there was a fire.', '3', '2022-05-12 14:20:36'),
(37, 'Joe Henry', '58864835', '010', 'Bukit Batok West Ave', 'there is a fire.', '1', '2022-05-12 13:54:27'),
(38, 'Joe Henry', '58864835', '010', 'Bukit Batok West Ave', 'there was a fire.', '2', '2022-05-12 14:22:06'),
(39, 'Joe Henry', '58864835', '010', 'Bukit Batok West Ave', 'there was a fire.', '2', '2022-05-12 21:34:14'),
(40, 'Joe Henry', '58864835', '010', 'Bukit Batok West Ave', 'thhdhfthrehshcfhthrehsxhcftrewhs', '2', '2022-05-12 21:40:42'),
(41, 'Joe Henry', '58864835', '010', 'Bukit Batok West Ave', 'there was a fire.', '2', '2022-05-12 21:55:21');

-- --------------------------------------------------------

--
-- Table structure for table `incident_status`
--

CREATE TABLE `incident_status` (
  `incident_status_id` varchar(1) NOT NULL,
  `incident_status_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `incident_status`
--

INSERT INTO `incident_status` (`incident_status_id`, `incident_status_desc`) VALUES
('1', 'Pending'),
('2', 'Dispatched'),
('3', 'Completed'),
('4', 'Duplicate');

-- --------------------------------------------------------

--
-- Table structure for table `incident_type`
--

CREATE TABLE `incident_type` (
  `incident_type_id` varchar(3) NOT NULL,
  `incident_type_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `incident_type`
--

INSERT INTO `incident_type` (`incident_type_id`, `incident_type_desc`) VALUES
('010', 'Fire'),
('020', 'Riot'),
('030', 'Burglary'),
('040', 'Domestic Violent'),
('050', 'Fallen Tree'),
('060', 'Traffic Accident'),
('070', 'Loan Shark'),
('999', 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `patrolcar`
--

CREATE TABLE `patrolcar` (
  `patrolcar_id` varchar(10) NOT NULL,
  `patrolcar_status_id` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patrolcar`
--

INSERT INTO `patrolcar` (`patrolcar_id`, `patrolcar_status_id`) VALUES
('QX1234', '1'),
('QX4321R', '1'),
('QX4444P', '1'),
('QX45545', '1'),
('QX9999H', '1');

-- --------------------------------------------------------

--
-- Table structure for table `patrolcar_status`
--

CREATE TABLE `patrolcar_status` (
  `patrolcar_status_id` varchar(1) NOT NULL,
  `patrolcar_status_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patrolcar_status`
--

INSERT INTO `patrolcar_status` (`patrolcar_status_id`, `patrolcar_status_desc`) VALUES
('1', 'Dispatched'),
('2', 'Patrol'),
('3', 'Free'),
('4', 'On-site'),
('5', 'NA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dispatch`
--
ALTER TABLE `dispatch`
  ADD PRIMARY KEY (`incident_id`,`patrolcar_id`);

--
-- Indexes for table `incident`
--
ALTER TABLE `incident`
  ADD PRIMARY KEY (`incident_id`);

--
-- Indexes for table `incident_status`
--
ALTER TABLE `incident_status`
  ADD PRIMARY KEY (`incident_status_id`);

--
-- Indexes for table `incident_type`
--
ALTER TABLE `incident_type`
  ADD PRIMARY KEY (`incident_type_id`);

--
-- Indexes for table `patrolcar`
--
ALTER TABLE `patrolcar`
  ADD PRIMARY KEY (`patrolcar_id`);

--
-- Indexes for table `patrolcar_status`
--
ALTER TABLE `patrolcar_status`
  ADD PRIMARY KEY (`patrolcar_status_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dispatch`
--
ALTER TABLE `dispatch`
  MODIFY `incident_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `incident`
--
ALTER TABLE `incident`
  MODIFY `incident_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
