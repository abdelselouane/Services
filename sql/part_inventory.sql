-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 05, 2018 at 01:17 PM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `part_inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `PARTS_INV`
--

CREATE TABLE `PARTS_INV` (
  `LOC_NBR` varchar(4) NOT NULL,
  `PART_NBR` varchar(25) NOT NULL,
  `PART_DESC` varchar(255) NOT NULL,
  `BRAND_NBR` int(11) NOT NULL,
  `BRAND_NAME` varchar(60) NOT NULL,
  `LOCATION` varchar(25) NOT NULL,
  `AVAILABLE_QTY` int(11) NOT NULL,
  `ALLOCATED_QTY` int(11) NOT NULL,
  `CRT_TS` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CRT_USER_ID` varchar(25) NOT NULL,
  `LAST_UPD_TS` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LAST_UPD_USER_ID` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PARTS_INV`
--

INSERT INTO `PARTS_INV` (`LOC_NBR`, `PART_NBR`, `PART_DESC`, `BRAND_NBR`, `BRAND_NAME`, `LOCATION`, `AVAILABLE_QTY`, `ALLOCATED_QTY`, `CRT_TS`, `CRT_USER_ID`, `LAST_UPD_TS`, `LAST_UPD_USER_ID`) VALUES
('9710', '', '', 0, '', '', 0, 0, '2018-11-30 16:48:39', '', '2018-11-30 16:48:39', NULL),
('9710', ' Cl Friction	1066	Honda		', '', 0, '', '', 0, 0, '2018-11-30 16:48:39', '', '2018-11-30 16:48:39', NULL),
('9710', ' Cylinder Head	1001	MAKIT', '', 0, '', '', 0, 0, '2018-11-30 16:48:39', '', '2018-11-30 16:48:39', NULL),
('9710', '71352031', 'BLADE GAUGE', 1001, 'MAKITA', 'A10', 10, 4, '2018-08-14 06:02:20', 'TEST-USER', '2018-08-14 06:02:20', 'TEST-USER'),
('9710', '71352032', 'BLADE', 1002, 'ECHO', 'B10', 5, 1, '2018-08-14 06:02:20', 'TEST-USER', '2018-08-14 06:02:20', 'TEST-USER'),
('9718', '71352031', 'BLADE GAUGE', 1001, 'MAKITA', 'A10', 10, 4, '2018-08-14 06:02:20', 'TEST-USER', '2018-08-14 06:02:20', 'TEST-USER'),
('9723', '', '', 0, '', '', 0, 0, '2018-11-30 16:48:39', '', '2018-11-30 16:48:39', NULL),
('9751', '', '', 0, '', '', 0, 0, '2018-11-30 16:48:39', '', '2018-11-30 16:48:39', NULL),
('LOC_', '', '', 0, '', '', 0, 0, '2018-11-30 16:48:39', '', '2018-11-30 16:48:39', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `PARTS_INV`
--
ALTER TABLE `PARTS_INV`
  ADD PRIMARY KEY (`LOC_NBR`,`PART_NBR`,`BRAND_NBR`);
