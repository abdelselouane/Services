-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 05, 2018 at 01:16 PM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `parts_order`
--

-- --------------------------------------------------------

--
-- Table structure for table `PARTS_ORDER`
--

CREATE TABLE `PARTS_ORDER` (
  `PARTS_ORD_ID` int(11) NOT NULL,
  `LOC_NBR` varchar(4) NOT NULL,
  `ORD_CRT_DT` date NOT NULL,
  `ORD_SRC` varchar(10) DEFAULT NULL,
  `WORK_ORD_NBR` varchar(25) DEFAULT NULL,
  `REQUEST_USER_ID` varchar(25) DEFAULT NULL,
  `CRT_TS` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CRT_USER_ID` varchar(25) NOT NULL,
  `LAST_UPD_TS` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LAST_UPD_USER_ID` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PARTS_ORDER`
--

INSERT INTO `PARTS_ORDER` (`PARTS_ORD_ID`, `LOC_NBR`, `ORD_CRT_DT`, `ORD_SRC`, `WORK_ORD_NBR`, `REQUEST_USER_ID`, `CRT_TS`, `CRT_USER_ID`, `LAST_UPD_TS`, `LAST_UPD_USER_ID`) VALUES
(1, '123', '2018-07-25', 'STRING', '1234', 'Admin', '2018-07-25 17:15:02', 'PARTS-PO', '2018-07-25 17:15:02', 'PARTS-PO');

-- --------------------------------------------------------

--
-- Table structure for table `PARTS_ORDER_DTL`
--

CREATE TABLE `PARTS_ORDER_DTL` (
  `PARTS_ORD_DTL_ID` int(11) NOT NULL,
  `PARTS_ORD_ID` int(11) NOT NULL,
  `PART_NBR` varchar(25) NOT NULL,
  `PART_DESC` varchar(255) NOT NULL,
  `SUPPLIER_NBR` int(11) NOT NULL,
  `SUPPLIER_ACCT_NBR` varchar(60) NOT NULL,
  `BRAND_NBR` int(11) NOT NULL,
  `BRAND_NAME` varchar(60) NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `UNIT_COST` decimal(10,2) NOT NULL,
  `PO_NBR` varchar(10) DEFAULT NULL,
  `PO_STAT_CD` int(11) DEFAULT NULL,
  `EXPCTD_ARR_DT` date NOT NULL,
  `CRT_TS` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CRT_USER_ID` varchar(25) NOT NULL,
  `LAST_UPD_TS` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LAST_UPD_USER_ID` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PARTS_ORDER_DTL`
--

INSERT INTO `PARTS_ORDER_DTL` (`PARTS_ORD_DTL_ID`, `PARTS_ORD_ID`, `PART_NBR`, `PART_DESC`, `SUPPLIER_NBR`, `SUPPLIER_ACCT_NBR`, `BRAND_NBR`, `BRAND_NAME`, `QUANTITY`, `UNIT_COST`, `PO_NBR`, `PO_STAT_CD`, `EXPCTD_ARR_DT`, `CRT_TS`, `CRT_USER_ID`, `LAST_UPD_TS`, `LAST_UPD_USER_ID`) VALUES
(1, 1, '00-048', 'desc', 919, '71394649', 1082, 'string', 1, '8.64', NULL, NULL, '2018-07-25', '2018-07-25 17:15:03', 'PARTS-PO', '2018-07-25 17:15:03', 'PARTS-PO');

-- --------------------------------------------------------

--
-- Table structure for table `PURCHASE_ORDER_STAT`
--

CREATE TABLE `PURCHASE_ORDER_STAT` (
  `PO_STAT_CD` int(11) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `LAST_UPD_TS` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LAST_UPD_USER` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PURCHASE_ORDER_STAT`
--

INSERT INTO `PURCHASE_ORDER_STAT` (`PO_STAT_CD`, `DESCRIPTION`, `LAST_UPD_TS`, `LAST_UPD_USER`) VALUES
(100, 'INITIATED', '2018-07-24 14:20:41', 'REPAIR'),
(200, 'SUBMITTED', '2018-07-24 14:20:41', 'REPAIR'),
(300, 'VENDOR_NOTIFIED', '2018-07-24 14:20:41', 'REPAIR'),
(400, 'PARTIAL_RECEIVED', '2018-07-24 14:20:41', 'REPAIR'),
(500, 'INVOICED', '2018-07-24 14:20:41', 'REPAIR'),
(600, 'CLOSED', '2018-07-24 14:20:41', 'REPAIR');

-- --------------------------------------------------------

--
-- Table structure for table `schema_version_parts_order`
--

CREATE TABLE `schema_version_parts_order` (
  `installed_rank` int(11) NOT NULL,
  `version` varchar(50) DEFAULT NULL,
  `description` varchar(200) NOT NULL,
  `type` varchar(20) NOT NULL,
  `script` varchar(1000) NOT NULL,
  `checksum` int(11) DEFAULT NULL,
  `installed_by` varchar(100) NOT NULL,
  `installed_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `execution_time` int(11) NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schema_version_parts_order`
--

INSERT INTO `schema_version_parts_order` (`installed_rank`, `version`, `description`, `type`, `script`, `checksum`, `installed_by`, `installed_on`, `execution_time`, `success`) VALUES
(1, '1.1', 'add table PARTS ORDER', 'SQL', 'V1.1__add_table_PARTS_ORDER.sql', 2026774084, 'admin', '2018-07-24 14:20:41', 21, 1),
(2, '1.2', 'add table PARTS ORDER DTL', 'SQL', 'V1.2__add_table_PARTS_ORDER_DTL.sql', -2128860953, 'admin', '2018-07-24 14:20:41', 48, 1),
(3, '1.3', 'add table PURCHASE ORDER STAT', 'SQL', 'V1.3__add_table_PURCHASE_ORDER_STAT.sql', -1972629678, 'admin', '2018-07-24 14:20:41', 43, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `PARTS_ORDER`
--
ALTER TABLE `PARTS_ORDER`
  ADD PRIMARY KEY (`PARTS_ORD_ID`);

--
-- Indexes for table `PARTS_ORDER_DTL`
--
ALTER TABLE `PARTS_ORDER_DTL`
  ADD PRIMARY KEY (`PARTS_ORD_DTL_ID`),
  ADD UNIQUE KEY `PARTS_ORDER_DTL_INDEX` (`PARTS_ORD_ID`,`PART_NBR`);

--
-- Indexes for table `PURCHASE_ORDER_STAT`
--
ALTER TABLE `PURCHASE_ORDER_STAT`
  ADD PRIMARY KEY (`PO_STAT_CD`),
  ADD UNIQUE KEY `PURCHASE_ORDER_STAT_INDEX` (`PO_STAT_CD`);

--
-- Indexes for table `schema_version_parts_order`
--
ALTER TABLE `schema_version_parts_order`
  ADD PRIMARY KEY (`installed_rank`),
  ADD KEY `schema_version_parts_order_s_idx` (`success`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `PARTS_ORDER`
--
ALTER TABLE `PARTS_ORDER`
  MODIFY `PARTS_ORD_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `PARTS_ORDER_DTL`
--
ALTER TABLE `PARTS_ORDER_DTL`
  MODIFY `PARTS_ORD_DTL_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `PARTS_ORDER_DTL`
--
ALTER TABLE `PARTS_ORDER_DTL`
  ADD CONSTRAINT `parts_order_dtl_ibfk_1` FOREIGN KEY (`PARTS_ORD_ID`) REFERENCES `PARTS_ORDER` (`PARTS_ORD_ID`);
