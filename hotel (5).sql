-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2019 at 04:38 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `date` date NOT NULL,
  `build_code` varchar(10) NOT NULL,
  `room_type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `regestration`
--

CREATE TABLE `regestration` (
  `username` varchar(30) NOT NULL,
  `Id` int(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `room_fk` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `regestration`
--

INSERT INTO `regestration` (`username`, `Id`, `email`, `room_fk`) VALUES
('ahmed', 1, 'ahmed@yahoo', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` varchar(100) NOT NULL,
  `floor_number` varchar(100) NOT NULL,
  `building_code` varchar(50) NOT NULL,
  `fees` varchar(11) NOT NULL,
  `is_booked` tinyint(1) NOT NULL,
  `room_size` int(50) NOT NULL,
  `number_of_days` int(50) NOT NULL,
  `room_class` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `floor_number`, `building_code`, `fees`, `is_booked`, `room_size`, `number_of_days`, `room_class`) VALUES
('FC-A-ff105195', 'First floor', 'A', '0 $', 0, 4, 0, 'First class'),
('FC-A-ff326854', 'First floor', 'A', '0 $', 0, 2, 0, 'First class'),
('FC-A-ff340676', 'First floor', 'A', '0 $', 0, 5, 0, 'First class'),
('FC-A-ff438915', 'First floor', 'A', '0 $', 0, 5, 0, 'First class'),
('FC-A-ff494927', 'First floor', 'A', '0 $', 0, 1, 0, 'First class'),
('FC-A-ff620683', 'First floor', 'A', '0 $', 0, 3, 0, 'First class'),
('FC-A-ff795611', 'First floor', 'A', '0 $', 0, 1, 0, 'First class'),
('FC-A-ff865994', 'First floor', 'A', '0 $', 0, 2, 0, 'First class'),
('FC-A-ff92929', 'First floor', 'A', '0 $', 0, 1, 0, 'First class'),
('FC-A-sf275723', 'Second floor', 'A', '0 $', 0, 3, 0, 'First class'),
('FC-A-sf308873', 'Second floor', 'A', '0 $', 0, 5, 0, 'First class'),
('FC-A-sf353458', 'Second floor', 'A', '0 $', 0, 4, 0, 'First class'),
('FC-A-sf510488', 'Second floor', 'A', '0 $', 0, 5, 0, 'First class'),
('FC-A-sf54039', 'Second floor', 'A', '0 $', 0, 4, 0, 'First class'),
('FC-A-sf636236', 'Second floor', 'A', '0 $', 0, 5, 0, 'First class'),
('FC-A-sf796066', 'Second floor', 'A', '0 $', 0, 4, 0, 'First class'),
('FC-A-sf921416', 'Second floor', 'A', '0 $', 0, 4, 0, 'First class'),
('FC-A-sf934089', 'Second floor', 'A', '0 $', 0, 4, 0, 'First class'),
('FC-A-tf104097', 'Third floor', 'A', '0 $', 0, 3, 0, 'First class'),
('FC-A-tf176376', 'Third floor', 'A', '0 $', 0, 3, 0, 'First class'),
('FC-A-tf30461', 'Third floor', 'A', '0 $', 0, 1, 0, 'First class'),
('FC-A-tf34439', 'Third floor', 'A', '0 $', 0, 2, 0, 'First class'),
('FC-A-tf526595', 'Third floor', 'A', '0 $', 0, 4, 0, 'First class'),
('FC-A-tf604969', 'Third floor', 'A', '0 $', 0, 2, 0, 'First class'),
('FC-A-tf810652', 'Third floor', 'A', '0 $', 0, 4, 0, 'First class'),
('FC-A-tf857971', 'Third floor', 'A', '0 $', 0, 4, 0, 'First class'),
('FC-A-tf911322', 'Third floor', 'A', '0 $', 0, 1, 0, 'First class'),
('FC-A-tf988468', 'Third floor', 'A', '0 $', 0, 3, 0, 'First class'),
('FC-B-ff11411', 'First floor', 'B', '0 $', 0, 5, 0, 'First class'),
('FC-B-ff145795', 'First floor', 'B', '0 $', 0, 5, 0, 'First class'),
('FC-B-ff16313', 'First floor', 'B', '0 $', 0, 4, 0, 'First class'),
('FC-B-ff166532', 'First floor', 'B', '0 $', 0, 5, 0, 'First class'),
('FC-B-ff2636', 'First floor', 'B', '0 $', 0, 4, 0, 'First class'),
('FC-B-ff264719', 'First floor', 'B', '0 $', 0, 4, 0, 'First class'),
('FC-B-ff334591', 'First floor', 'B', '0 $', 0, 5, 0, 'First class'),
('FC-B-ff370436', 'First floor', 'B', '0 $', 0, 1, 0, 'First class'),
('FC-B-ff551910', 'First floor', 'B', '0 $', 0, 2, 0, 'First class'),
('FC-B-ff569353', 'First floor', 'B', '0 $', 0, 3, 0, 'First class'),
('FC-B-ff685055', 'First floor', 'B', '0 $', 0, 5, 0, 'First class'),
('FC-B-ff782532', 'First floor', 'B', '0 $', 0, 5, 0, 'First class'),
('FC-B-ff898874', 'First floor', 'B', '0 $', 0, 4, 0, 'First class'),
('FC-B-ff942877', 'First floor', 'B', '0 $', 0, 5, 0, 'First class'),
('FC-B-ff96455', 'First floor', 'B', '0 $', 0, 2, 0, 'First class'),
('FC-B-ff99408', 'First floor', 'B', '0 $', 0, 4, 0, 'First class'),
('FC-B-sf219372', 'Second floor', 'B', '0 $', 0, 4, 0, 'First class'),
('FC-B-sf343903', 'Second floor', 'B', '0 $', 0, 4, 0, 'First class'),
('FC-B-sf56108', 'Second floor', 'B', '0 $', 0, 5, 0, 'First class'),
('FC-B-sf569347', 'Second floor', 'B', '0 $', 0, 3, 0, 'First class'),
('FC-B-sf606245', 'Second floor', 'B', '0 $', 0, 5, 0, 'First class'),
('FC-B-sf725425', 'Second floor', 'B', '0 $', 0, 3, 0, 'First class'),
('FC-B-sf740956', 'Second floor', 'B', '0 $', 0, 3, 0, 'First class'),
('FC-B-sf95430', 'Second floor', 'B', '0 $', 0, 4, 0, 'First class'),
('FC-B-tf226712', 'Third floor', 'B', '0 $', 0, 4, 0, 'First class'),
('FC-B-tf272794', 'Third floor', 'B', '0 $', 0, 3, 0, 'First class'),
('FC-B-tf45319', 'Third floor', 'B', '0 $', 0, 5, 0, 'First class'),
('FC-B-tf500073', 'Third floor', 'B', '0 $', 0, 4, 0, 'First class'),
('FC-B-tf500405', 'Third floor', 'B', '0 $', 0, 2, 0, 'First class'),
('FC-B-tf528371', 'Third floor', 'B', '0 $', 0, 2, 0, 'First class'),
('FC-B-tf542329', 'Third floor', 'B', '0 $', 0, 3, 0, 'First class'),
('FC-B-tf546773', 'Third floor', 'B', '0 $', 0, 2, 0, 'First class'),
('FC-B-tf546826', 'Third floor', 'B', '0 $', 0, 5, 0, 'First class'),
('FC-B-tf600444', 'Third floor', 'B', '0 $', 0, 4, 0, 'First class'),
('FC-B-tf727501', 'Third floor', 'B', '0 $', 0, 4, 0, 'First class'),
('FC-B-tf845243', 'Third floor', 'B', '0 $', 0, 3, 0, 'First class'),
('FC-C-ff232560', 'First floor', 'C', '0 $', 0, 1, 0, 'First class'),
('FC-C-ff250759', 'First floor', 'C', '0 $', 0, 4, 0, 'First class'),
('FC-C-ff53077', 'First floor', 'C', '0 $', 0, 1, 0, 'First class'),
('FC-C-ff552678', 'First floor', 'C', '0 $', 0, 2, 0, 'First class'),
('FC-C-ff624923', 'First floor', 'C', '0 $', 0, 3, 0, 'First class'),
('FC-C-ff736431', 'First floor', 'C', '0 $', 0, 1, 0, 'First class'),
('FC-C-ff744661', 'First floor', 'C', '0 $', 0, 3, 0, 'First class'),
('FC-C-ff76985', 'First floor', 'C', '0 $', 0, 2, 0, 'First class'),
('FC-C-ff876810', 'First floor', 'C', '0 $', 0, 1, 0, 'First class'),
('FC-C-ff886153', 'First floor', 'C', '0 $', 0, 4, 0, 'First class'),
('FC-C-sf184513', 'Second floor', 'C', '0 $', 0, 4, 0, 'First class'),
('FC-C-sf291985', 'Second floor', 'C', '0 $', 0, 2, 0, 'First class'),
('FC-C-sf335788', 'Second floor', 'C', '0 $', 0, 3, 0, 'First class'),
('FC-C-sf463766', 'Second floor', 'C', '0 $', 0, 4, 0, 'First class'),
('FC-C-sf535226', 'Second floor', 'C', '0 $', 0, 3, 0, 'First class'),
('FC-C-sf55203', 'Second floor', 'C', '0 $', 0, 1, 0, 'First class'),
('FC-C-sf601869', 'Second floor', 'C', '0 $', 0, 3, 0, 'First class'),
('FC-C-sf631537', 'Second floor', 'C', '0 $', 0, 3, 0, 'First class'),
('FC-C-sf680889', 'Second floor', 'C', '0 $', 0, 4, 0, 'First class'),
('FC-C-sf719901', 'Second floor', 'C', '0 $', 0, 2, 0, 'First class'),
('FC-C-sf735273', 'Second floor', 'C', '0 $', 0, 3, 0, 'First class'),
('FC-C-sf790120', 'Second floor', 'C', '0 $', 0, 5, 0, 'First class'),
('FC-C-sf907956', 'Second floor', 'C', '0 $', 0, 4, 0, 'First class'),
('FC-C-sf986086', 'Second floor', 'C', '0 $', 0, 5, 0, 'First class'),
('FC-C-tf126943', 'Third floor', 'C', '0 $', 0, 1, 0, 'First class'),
('FC-C-tf137797', 'Third floor', 'C', '0 $', 0, 4, 0, 'First class'),
('FC-C-tf138069', 'Third floor', 'C', '0 $', 0, 4, 0, 'First class'),
('FC-C-tf144238', 'Third floor', 'C', '0 $', 0, 4, 0, 'First class'),
('FC-C-tf275314', 'Third floor', 'C', '0 $', 0, 4, 0, 'First class'),
('FC-C-tf391505', 'Third floor', 'C', '0 $', 0, 3, 0, 'First class'),
('FC-C-tf467926', 'Third floor', 'C', '0 $', 0, 2, 0, 'First class'),
('FC-C-tf548463', 'Third floor', 'C', '0 $', 0, 3, 0, 'First class'),
('FC-C-tf610412', 'Third floor', 'C', '0 $', 0, 4, 0, 'First class'),
('FC-C-tf641267', 'Third floor', 'C', '0 $', 0, 3, 0, 'First class'),
('FC-C-tf641827', 'Third floor', 'C', '0 $', 0, 4, 0, 'First class'),
('FC-C-tf990566', 'Third floor', 'C', '0 $', 0, 3, 0, 'First class'),
('SC-A-ff140975', 'First floor', 'A', '0 $', 0, 2, 0, 'Second class'),
('SC-A-ff225422', 'First floor', 'A', '0 $', 0, 5, 0, 'Second class'),
('SC-A-ff254845', 'First floor', 'A', '0 $', 0, 3, 0, 'Second class'),
('SC-A-ff335170', 'First floor', 'A', '0 $', 0, 4, 0, 'Second class'),
('SC-A-ff355310', 'First floor', 'A', '0 $', 0, 5, 0, 'Second class'),
('SC-A-ff423380', 'First floor', 'A', '0 $', 0, 2, 0, 'Second class'),
('SC-A-ff505690', 'First floor', 'A', '0 $', 0, 5, 0, 'Second class'),
('SC-A-ff50604', 'First floor', 'A', '0 $', 0, 1, 0, 'Second class'),
('SC-A-ff668371', 'First floor', 'A', '0 $', 0, 3, 0, 'Second class'),
('SC-A-ff673471', 'First floor', 'A', '0 $', 0, 1, 0, 'Second class'),
('SC-A-ff677226', 'First floor', 'A', '0 $', 0, 2, 0, 'Second class'),
('SC-A-ff985720', 'First floor', 'A', '0 $', 0, 1, 0, 'Second class'),
('SC-A-sf260833', 'Second floor', 'A', '0 $', 0, 3, 0, 'Second class'),
('SC-A-sf272618', 'Second floor', 'A', '0 $', 0, 1, 0, 'Second class'),
('SC-A-sf321210', 'Second floor', 'A', '0 $', 0, 4, 0, 'Second class'),
('SC-A-sf352564', 'Second floor', 'A', '0 $', 0, 3, 0, 'Second class'),
('SC-A-sf359119', 'Second floor', 'A', '0 $', 0, 2, 0, 'Second class'),
('SC-A-sf379076', 'Second floor', 'A', '0 $', 0, 3, 0, 'Second class'),
('SC-A-sf428686', 'Second floor', 'A', '0 $', 0, 3, 0, 'Second class'),
('SC-A-sf488154', 'Second floor', 'A', '0 $', 0, 4, 0, 'Second class'),
('SC-A-sf593763', 'Second floor', 'A', '0 $', 0, 3, 0, 'Second class'),
('SC-A-sf746002', 'Second floor', 'A', '0 $', 0, 3, 0, 'Second class'),
('SC-A-sf74946', 'Second floor', 'A', '0 $', 0, 1, 0, 'Second class'),
('SC-A-sf86900', 'Second floor', 'A', '0 $', 0, 1, 0, 'Second class'),
('SC-A-sf874419', 'Second floor', 'A', '0 $', 0, 4, 0, 'Second class'),
('SC-A-tf150552', 'Third floor', 'A', '0 $', 0, 1, 0, 'Second class'),
('SC-A-tf219403', 'Third floor', 'A', '0 $', 0, 5, 0, 'Second class'),
('SC-A-tf231168', 'Third floor', 'A', '0 $', 0, 2, 0, 'Second class'),
('SC-A-tf241033', 'Third floor', 'A', '0 $', 0, 3, 0, 'Second class'),
('SC-A-tf261780', 'Third floor', 'A', '0 $', 0, 5, 0, 'Second class'),
('SC-A-tf436740', 'Third floor', 'A', '0 $', 0, 3, 0, 'Second class'),
('SC-A-tf496704', 'Third floor', 'A', '0 $', 0, 5, 0, 'Second class'),
('SC-A-tf610528', 'Third floor', 'A', '0 $', 0, 2, 0, 'Second class'),
('SC-A-tf619873', 'Third floor', 'A', '0 $', 0, 4, 0, 'Second class'),
('SC-A-tf684228', 'Third floor', 'A', '0 $', 0, 1, 0, 'Second class'),
('SC-A-tf697974', 'Third floor', 'A', '0 $', 0, 2, 0, 'Second class'),
('SC-A-tf7292', 'Third floor', 'A', '0 $', 0, 5, 0, 'Second class'),
('SC-B-ff128369', 'First floor', 'B', '0 $', 0, 5, 0, 'Second class'),
('SC-B-ff205504', 'First floor', 'B', '0 $', 0, 5, 0, 'Second class'),
('SC-B-ff238570', 'First floor', 'B', '0 $', 0, 1, 0, 'Second class'),
('SC-B-ff353402', 'First floor', 'B', '0 $', 0, 4, 0, 'Second class'),
('SC-B-ff620944', 'First floor', 'B', '0 $', 0, 3, 0, 'Second class'),
('SC-B-ff687805', 'First floor', 'B', '0 $', 0, 1, 0, 'Second class'),
('SC-B-ff754202', 'First floor', 'B', '0 $', 0, 3, 0, 'Second class'),
('SC-B-ff902171', 'First floor', 'B', '0 $', 0, 4, 0, 'Second class'),
('SC-B-sf136927', 'Second floor', 'B', '0 $', 0, 4, 0, 'Second class'),
('SC-B-sf174142', 'Second floor', 'B', '0 $', 0, 1, 0, 'Second class'),
('SC-B-sf321386', 'Second floor', 'B', '0 $', 0, 3, 0, 'Second class'),
('SC-B-sf38264', 'Second floor', 'B', '0 $', 0, 3, 0, 'Second class'),
('SC-B-sf458051', 'Second floor', 'B', '0 $', 0, 4, 0, 'Second class'),
('SC-B-sf483991', 'Second floor', 'B', '0 $', 0, 1, 0, 'Second class'),
('SC-B-sf558710', 'Second floor', 'B', '0 $', 0, 2, 0, 'Second class'),
('SC-B-sf60845', 'Second floor', 'B', '0 $', 0, 4, 0, 'Second class'),
('SC-B-sf7427', 'Second floor', 'B', '0 $', 0, 3, 0, 'Second class'),
('SC-B-sf802934', 'Second floor', 'B', '0 $', 0, 3, 0, 'Second class'),
('SC-B-sf836311', 'Second floor', 'B', '0 $', 0, 1, 0, 'Second class'),
('SC-B-sf90770', 'Second floor', 'B', '0 $', 0, 5, 0, 'Second class'),
('SC-B-sf981343', 'Second floor', 'B', '0 $', 0, 1, 0, 'Second class'),
('SC-B-tf191768', 'Third floor', 'B', '0 $', 0, 3, 0, 'Second class'),
('SC-B-tf230279', 'Third floor', 'B', '0 $', 0, 5, 0, 'Second class'),
('SC-B-tf247748', 'Third floor', 'B', '0 $', 0, 3, 0, 'Second class'),
('SC-B-tf298790', 'Third floor', 'B', '0 $', 0, 3, 0, 'Second class'),
('SC-B-tf340945', 'Third floor', 'B', '0 $', 0, 1, 0, 'Second class'),
('SC-B-tf427092', 'Third floor', 'B', '0 $', 0, 4, 0, 'Second class'),
('SC-B-tf448319', 'Third floor', 'B', '0 $', 0, 1, 0, 'Second class'),
('SC-B-tf499506', 'Third floor', 'B', '0 $', 0, 2, 0, 'Second class'),
('SC-C-ff131338', 'First floor', 'C', '0 $', 0, 2, 0, 'Second class'),
('SC-C-ff310280', 'First floor', 'C', '0 $', 0, 4, 0, 'Second class'),
('SC-C-ff330166', 'First floor', 'C', '0 $', 0, 5, 0, 'Second class'),
('SC-C-ff358240', 'First floor', 'C', '0 $', 0, 4, 0, 'Second class'),
('SC-C-ff427589', 'First floor', 'C', '0 $', 0, 5, 0, 'Second class'),
('SC-C-ff520096', 'First floor', 'C', '0 $', 0, 3, 0, 'Second class'),
('SC-C-ff909639', 'First floor', 'C', '0 $', 0, 1, 0, 'Second class'),
('SC-C-ff934116', 'First floor', 'C', '0 $', 0, 4, 0, 'Second class'),
('SC-C-ff94102', 'First floor', 'C', '0 $', 0, 3, 0, 'Second class'),
('SC-C-ff991393', 'First floor', 'C', '0 $', 0, 2, 0, 'Second class'),
('SC-C-sf185967', 'Second floor', 'C', '0 $', 0, 3, 0, 'Second class'),
('SC-C-sf289912', 'Second floor', 'C', '0 $', 0, 2, 0, 'Second class'),
('SC-C-sf344103', 'Second floor', 'C', '0 $', 0, 3, 0, 'Second class'),
('SC-C-sf413171', 'Second floor', 'C', '0 $', 0, 1, 0, 'Second class'),
('SC-C-sf514376', 'Second floor', 'C', '0 $', 0, 5, 0, 'Second class'),
('SC-C-sf538700', 'Second floor', 'C', '0 $', 0, 4, 0, 'Second class'),
('SC-C-sf55178', 'Second floor', 'C', '0 $', 0, 4, 0, 'Second class'),
('SC-C-sf664256', 'Second floor', 'C', '0 $', 0, 4, 0, 'Second class'),
('SC-C-tf180708', 'Third floor', 'C', '0 $', 0, 5, 0, 'Second class'),
('SC-C-tf315754', 'Third floor', 'C', '0 $', 0, 3, 0, 'Second class'),
('SC-C-tf331041', 'Third floor', 'C', '0 $', 0, 1, 0, 'Second class'),
('SC-C-tf345181', 'Third floor', 'C', '0 $', 0, 4, 0, 'Second class'),
('SC-C-tf364058', 'Third floor', 'C', '0 $', 0, 4, 0, 'Second class'),
('SC-C-tf382024', 'Third floor', 'C', '0 $', 0, 1, 0, 'Second class'),
('SC-C-tf598910', 'Third floor', 'C', '0 $', 0, 5, 0, 'Second class'),
('SC-C-tf688529', 'Third floor', 'C', '0 $', 0, 5, 0, 'Second class'),
('SC-C-tf767337', 'Third floor', 'C', '0 $', 0, 4, 0, 'Second class'),
('SC-C-tf776420', 'Third floor', 'C', '0 $', 0, 3, 0, 'Second class'),
('SC-C-tf780534', 'Third floor', 'C', '0 $', 0, 4, 0, 'Second class'),
('SC-C-tf829283', 'Third floor', 'C', '0 $', 0, 5, 0, 'Second class'),
('SC-C-tf876346', 'Third floor', 'C', '0 $', 0, 4, 0, 'Second class'),
('SC-C-tf908068', 'Third floor', 'C', '0 $', 0, 2, 0, 'Second class'),
('SC-C-tf926276', 'Third floor', 'C', '0 $', 0, 1, 0, 'Second class'),
('SC-C-tf933918', 'Third floor', 'C', '0 $', 0, 3, 0, 'Second class'),
('TC-A-ff116498', 'First floor', 'A', '0 $', 0, 1, 0, 'Third class'),
('TC-A-ff12652', 'First floor', 'A', '0 $', 0, 4, 0, 'Third class'),
('TC-A-ff228790', 'First floor', 'A', '0 $', 0, 4, 0, 'Third class'),
('TC-A-ff262157', 'First floor', 'A', '0 $', 0, 4, 0, 'Third class'),
('TC-A-ff301779', 'First floor', 'A', '0 $', 0, 3, 0, 'Third class'),
('TC-A-ff6046', 'First floor', 'A', '0 $', 0, 2, 0, 'Third class'),
('TC-A-ff619568', 'First floor', 'A', '0 $', 0, 5, 0, 'Third class'),
('TC-A-ff642045', 'First floor', 'A', '0 $', 0, 3, 0, 'Third class'),
('TC-A-ff822788', 'First floor', 'A', '0 $', 0, 4, 0, 'Third class'),
('TC-A-ff919878', 'First floor', 'A', '0 $', 0, 1, 0, 'Third class'),
('TC-A-ff946394', 'First floor', 'A', '0 $', 0, 3, 0, 'Third class'),
('TC-A-ff963056', 'First floor', 'A', '0 $', 0, 3, 0, 'Third class'),
('TC-A-sf340178', 'Second floor', 'A', '0 $', 0, 5, 0, 'Third class'),
('TC-A-sf409345', 'Second floor', 'A', '0 $', 0, 3, 0, 'Third class'),
('TC-A-sf487484', 'Second floor', 'A', '0 $', 0, 5, 0, 'Third class'),
('TC-A-sf539940', 'Second floor', 'A', '0 $', 0, 1, 0, 'Third class'),
('TC-A-sf760890', 'Second floor', 'A', '0 $', 0, 1, 0, 'Third class'),
('TC-A-sf809705', 'Second floor', 'A', '0 $', 0, 4, 0, 'Third class'),
('TC-A-sf875073', 'Second floor', 'A', '0 $', 0, 3, 0, 'Third class'),
('TC-A-tf121706', 'Third floor', 'A', '0 $', 0, 2, 0, 'Third class'),
('TC-A-tf197431', 'Third floor', 'A', '0 $', 0, 3, 0, 'Third class'),
('TC-A-tf235756', 'Third floor', 'A', '0 $', 0, 2, 0, 'Third class'),
('TC-A-tf462129', 'Third floor', 'A', '0 $', 0, 5, 0, 'Third class'),
('TC-A-tf485820', 'Third floor', 'A', '0 $', 0, 3, 0, 'Third class'),
('TC-A-tf629628', 'Third floor', 'A', '0 $', 0, 1, 0, 'Third class'),
('TC-A-tf656256', 'Third floor', 'A', '0 $', 0, 5, 0, 'Third class'),
('TC-A-tf827624', 'Third floor', 'A', '0 $', 0, 4, 0, 'Third class'),
('TC-A-tf912797', 'Third floor', 'A', '0 $', 0, 5, 0, 'Third class'),
('TC-A-tf945413', 'Third floor', 'A', '0 $', 0, 1, 0, 'Third class'),
('TC-A-tf985804', 'Third floor', 'A', '0 $', 0, 2, 0, 'Third class'),
('TC-B-ff18831', 'First floor', 'B', '0 $', 0, 3, 0, 'Third class'),
('TC-B-ff382130', 'First floor', 'B', '0 $', 0, 3, 0, 'Third class'),
('TC-B-ff45153', 'First floor', 'B', '0 $', 0, 2, 0, 'Third class'),
('TC-B-ff471730', 'First floor', 'B', '0 $', 0, 5, 0, 'Third class'),
('TC-B-ff475595', 'First floor', 'B', '0 $', 0, 5, 0, 'Third class'),
('TC-B-ff720153', 'First floor', 'B', '0 $', 0, 1, 0, 'Third class'),
('TC-B-ff961364', 'First floor', 'B', '0 $', 0, 1, 0, 'Third class'),
('TC-B-sf136014', 'Second floor', 'B', '0 $', 0, 4, 0, 'Third class'),
('TC-B-sf167247', 'Second floor', 'B', '0 $', 0, 5, 0, 'Third class'),
('TC-B-sf405783', 'Second floor', 'B', '0 $', 0, 3, 0, 'Third class'),
('TC-B-sf512600', 'Second floor', 'B', '0 $', 0, 4, 0, 'Third class'),
('TC-B-sf554088', 'Second floor', 'B', '0 $', 0, 3, 0, 'Third class'),
('TC-B-sf666910', 'Second floor', 'B', '0 $', 0, 3, 0, 'Third class'),
('TC-B-sf793313', 'Second floor', 'B', '0 $', 0, 2, 0, 'Third class'),
('TC-B-sf797000', 'Second floor', 'B', '0 $', 0, 4, 0, 'Third class'),
('TC-B-sf899905', 'Second floor', 'B', '0 $', 0, 1, 0, 'Third class'),
('TC-B-sf942299', 'Second floor', 'B', '0 $', 0, 5, 0, 'Third class'),
('TC-B-sf997842', 'Second floor', 'B', '0 $', 0, 2, 0, 'Third class'),
('TC-B-tf14272', 'Third floor', 'B', '0 $', 0, 4, 0, 'Third class'),
('TC-B-tf161986', 'Third floor', 'B', '0 $', 0, 5, 0, 'Third class'),
('TC-B-tf207983', 'Third floor', 'B', '0 $', 0, 3, 0, 'Third class'),
('TC-B-tf3272', 'Third floor', 'B', '0 $', 0, 5, 0, 'Third class'),
('TC-B-tf460765', 'Third floor', 'B', '0 $', 0, 1, 0, 'Third class'),
('TC-B-tf581259', 'Third floor', 'B', '0 $', 0, 2, 0, 'Third class'),
('TC-B-tf606953', 'Third floor', 'B', '0 $', 0, 5, 0, 'Third class'),
('TC-B-tf651592', 'Third floor', 'B', '0 $', 0, 4, 0, 'Third class'),
('TC-B-tf652899', 'Third floor', 'B', '0 $', 0, 5, 0, 'Third class'),
('TC-B-tf694908', 'Third floor', 'B', '0 $', 0, 4, 0, 'Third class'),
('TC-B-tf714575', 'Third floor', 'B', '0 $', 0, 3, 0, 'Third class'),
('TC-B-tf837419', 'Third floor', 'B', '0 $', 0, 1, 0, 'Third class'),
('TC-B-tf843796', 'Third floor', 'B', '0 $', 0, 4, 0, 'Third class'),
('TC-B-tf96423', 'Third floor', 'B', '0 $', 0, 3, 0, 'Third class'),
('TC-B-tf977074', 'Third floor', 'B', '0 $', 0, 4, 0, 'Third class'),
('TC-B-tf992283', 'Third floor', 'B', '0 $', 0, 4, 0, 'Third class'),
('TC-C-ff11398', 'First floor', 'C', '0 $', 0, 3, 0, 'Third class'),
('TC-C-ff152562', 'First floor', 'C', '0 $', 0, 2, 0, 'Third class'),
('TC-C-ff364428', 'First floor', 'C', '0 $', 0, 2, 0, 'Third class'),
('TC-C-ff480164', 'First floor', 'C', '0 $', 0, 5, 0, 'Third class'),
('TC-C-ff662504', 'First floor', 'C', '0 $', 0, 1, 0, 'Third class'),
('TC-C-ff843708', 'First floor', 'C', '0 $', 0, 1, 0, 'Third class'),
('TC-C-ff851346', 'First floor', 'C', '0 $', 0, 1, 0, 'Third class'),
('TC-C-ff879581', 'First floor', 'C', '0 $', 0, 1, 0, 'Third class'),
('TC-C-ff887482', 'First floor', 'C', '0 $', 0, 4, 0, 'Third class'),
('TC-C-ff94372', 'First floor', 'C', '0 $', 0, 3, 0, 'Third class'),
('TC-C-ff977481', 'First floor', 'C', '0 $', 0, 1, 0, 'Third class'),
('TC-C-sf188269', 'Second floor', 'C', '0 $', 0, 1, 0, 'Third class'),
('TC-C-sf30348', 'Second floor', 'C', '0 $', 0, 3, 0, 'Third class'),
('TC-C-sf306999', 'Second floor', 'C', '0 $', 0, 2, 0, 'Third class'),
('TC-C-sf311100', 'Second floor', 'C', '0 $', 0, 2, 0, 'Third class'),
('TC-C-sf463117', 'Second floor', 'C', '0 $', 0, 2, 0, 'Third class'),
('TC-C-sf48796', 'Second floor', 'C', '0 $', 0, 1, 0, 'Third class'),
('TC-C-sf527144', 'Second floor', 'C', '0 $', 0, 2, 0, 'Third class'),
('TC-C-sf666215', 'Second floor', 'C', '0 $', 0, 4, 0, 'Third class'),
('TC-C-sf67553', 'Second floor', 'C', '0 $', 0, 3, 0, 'Third class'),
('TC-C-sf760561', 'Second floor', 'C', '0 $', 0, 2, 0, 'Third class'),
('TC-C-sf85285', 'Second floor', 'C', '0 $', 0, 2, 0, 'Third class'),
('TC-C-tf135666', 'Third floor', 'C', '0 $', 0, 4, 0, 'Third class'),
('TC-C-tf152632', 'Third floor', 'C', '0 $', 0, 1, 0, 'Third class'),
('TC-C-tf429299', 'Third floor', 'C', '0 $', 0, 4, 0, 'Third class'),
('TC-C-tf515519', 'Third floor', 'C', '0 $', 0, 5, 0, 'Third class'),
('TC-C-tf544366', 'Third floor', 'C', '0 $', 0, 2, 0, 'Third class'),
('TC-C-tf600734', 'Third floor', 'C', '0 $', 0, 5, 0, 'Third class'),
('TC-C-tf604265', 'Third floor', 'C', '0 $', 0, 3, 0, 'Third class'),
('TC-C-tf751044', 'Third floor', 'C', '0 $', 0, 3, 0, 'Third class'),
('TC-C-tf788943', 'Third floor', 'C', '0 $', 0, 1, 0, 'Third class'),
('TC-C-tf800265', 'Third floor', 'C', '0 $', 0, 2, 0, 'Third class'),
('TC-C-tf862006', 'Third floor', 'C', '0 $', 0, 4, 0, 'Third class'),
('TC-C-tf950776', 'Third floor', 'C', '0 $', 0, 2, 0, 'Third class'),
('TC-C-tf960969', 'Third floor', 'C', '0 $', 0, 1, 0, 'Third class'),
('TC-C-tf968356', 'Third floor', 'C', '0 $', 0, 5, 0, 'Third class');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `regestration`
--
ALTER TABLE `regestration`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `room_fk` (`room_fk`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `regestration`
--
ALTER TABLE `regestration`
  ADD CONSTRAINT `regestration_ibfk_1` FOREIGN KEY (`room_fk`) REFERENCES `room` (`room_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
