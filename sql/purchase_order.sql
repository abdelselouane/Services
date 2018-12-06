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
-- Database: `purchase_order`
--

-- --------------------------------------------------------

--
-- Table structure for table `last_po_nbr_ent`
--

CREATE TABLE `last_po_nbr_ent` (
  `elm_nm` varchar(20) NOT NULL,
  `loc_nbr` varchar(4) NOT NULL,
  `acct_po_typ_cd` int(11) NOT NULL,
  `last_genr_nbr` int(11) NOT NULL,
  `max_genr_nbr` int(11) NOT NULL DEFAULT '99999',
  `min_genr_nbr` int(11) NOT NULL DEFAULT '1',
  `last_upd_ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_upd_user_id` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order`
--

CREATE TABLE `purchase_order` (
  `po_nbr` varchar(10) NOT NULL,
  `loc_nbr` varchar(4) NOT NULL,
  `acct_po_typ_cd` int(11) NOT NULL,
  `po_crt_dt` date DEFAULT NULL,
  `po_stat_cd` int(11) DEFAULT NULL,
  `ord_req_nbr` varchar(10) DEFAULT NULL,
  `ord_crt_dt` date DEFAULT NULL,
  `ord_expctd_arvl_dt` date DEFAULT NULL,
  `ord_src_cd` int(11) DEFAULT NULL,
  `supplier_nbr` int(11) DEFAULT NULL,
  `supplier_acct_nbr` varchar(60) DEFAULT NULL,
  `client_id` varchar(10) DEFAULT NULL,
  `co_nbr` varchar(4) DEFAULT NULL,
  `curnc_typ_cd` varchar(4) DEFAULT NULL,
  `crt_ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `crt_user_id` varchar(15) DEFAULT NULL,
  `last_upd_ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_upd_user_id` varchar(15) DEFAULT NULL,
  `po_file_name` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_dtl`
--

CREATE TABLE `purchase_order_dtl` (
  `po_dtl_id` int(11) NOT NULL,
  `po_nbr` varchar(10) NOT NULL,
  `seq_nbr` int(11) NOT NULL,
  `ord_qty` int(11) NOT NULL,
  `ord_cost_amt` decimal(10,2) DEFAULT NULL,
  `vendor_item_nbr` varchar(20) DEFAULT NULL,
  `vendor_item_desc` varchar(255) DEFAULT NULL,
  `item_asset_nbr` varchar(20) DEFAULT NULL,
  `asset_typ_cd` int(11) DEFAULT NULL,
  `inv_typ_cd` int(11) DEFAULT NULL,
  `crt_ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `crt_user_id` varchar(15) DEFAULT NULL,
  `last_upd_ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_upd_user_id` varchar(15) DEFAULT NULL,
  `category_cd` varchar(3) DEFAULT NULL,
  `sub_category_cd` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `schema_version`
--

CREATE TABLE `schema_version` (
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
-- Dumping data for table `schema_version`
--

INSERT INTO `schema_version` (`installed_rank`, `version`, `description`, `type`, `script`, `checksum`, `installed_by`, `installed_on`, `execution_time`, `success`) VALUES
(1, '1.1', 'add table PURCHASE ORDER', 'SQL', 'V1.1__add_table_PURCHASE_ORDER.sql', -1772310106, 'root', '2018-07-24 15:30:19', 26, 1),
(2, '1.2', 'add table PURCHASE ORDER DTL', 'SQL', 'V1.2__add_table_PURCHASE_ORDER_DTL.sql', -1222645153, 'root', '2018-07-24 15:30:19', 36, 1),
(3, '1.3', 'add table LAST PO NBR ENT', 'SQL', 'V1.3__add_table_LAST_PO_NBR_ENT.sql', 126396563, 'root', '2018-07-24 15:30:19', 35, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `last_po_nbr_ent`
--
ALTER TABLE `last_po_nbr_ent`
  ADD PRIMARY KEY (`elm_nm`,`loc_nbr`,`acct_po_typ_cd`),
  ADD UNIQUE KEY `last_po_nbr_ent_index` (`elm_nm`,`loc_nbr`,`acct_po_typ_cd`);

--
-- Indexes for table `purchase_order`
--
ALTER TABLE `purchase_order`
  ADD PRIMARY KEY (`po_nbr`);

--
-- Indexes for table `purchase_order_dtl`
--
ALTER TABLE `purchase_order_dtl`
  ADD PRIMARY KEY (`po_dtl_id`),
  ADD UNIQUE KEY `purchase_order_dtl_index` (`po_nbr`,`seq_nbr`);

--
-- Indexes for table `schema_version`
--
ALTER TABLE `schema_version`
  ADD PRIMARY KEY (`installed_rank`),
  ADD KEY `schema_version_s_idx` (`success`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `purchase_order_dtl`
--
ALTER TABLE `purchase_order_dtl`
  MODIFY `po_dtl_id` int(11) NOT NULL AUTO_INCREMENT;
