-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 24, 2022 at 12:08 AM
-- Server version: 5.7.35-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `s1013121_my-db1660604731`
--

-- --------------------------------------------------------

--
-- Table structure for table `anticheat_settings`
--

CREATE TABLE `anticheat_settings` (
  `ac_code` int(2) NOT NULL,
  `ac_code_trigger_type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `anticheat_settings`
--

INSERT INTO `anticheat_settings` (`ac_code`, `ac_code_trigger_type`) VALUES
(0, 1),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 0),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1);

-- --------------------------------------------------------

--
-- Table structure for table `atms`
--

CREATE TABLE `atms` (
  `atmSQLID` smallint(6) NOT NULL,
  `atmPos1` float NOT NULL,
  `atmPos2` float NOT NULL,
  `atmPos3` float NOT NULL,
  `atmPos4` float NOT NULL,
  `atmPos5` float NOT NULL,
  `atmPos6` float NOT NULL,
  `atmPreseceneZice` tinyint(1) NOT NULL DEFAULT '0',
  `atmProbijenBios` tinyint(1) NOT NULL DEFAULT '0',
  `atmVremeDoRoba` tinyint(1) NOT NULL DEFAULT '0',
  `atmExists` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `atms`
--

INSERT INTO `atms` (`atmSQLID`, `atmPos1`, `atmPos2`, `atmPos3`, `atmPos4`, `atmPos5`, `atmPos6`, `atmPreseceneZice`, `atmProbijenBios`, `atmVremeDoRoba`, `atmExists`) VALUES
(1, 1472.82, -1021.98, 24.537, 0, 0, 0, 0, 1, 60, 1),
(2, 1451.17, -1022.08, 24.217, 0, 0, 0, 1, 0, 60, 1),
(3, 1449.45, -1022.13, 24.247, 0, 0, 0, 0, 0, 0, 1),
(4, 1447.91, -1022.12, 24.247, 0, 0, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `banned`
--

CREATE TABLE `banned` (
  `ban_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ban_type` smallint(1) DEFAULT NULL,
  `ban_time` int(11) DEFAULT NULL,
  `ban_reason` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ban_admin` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ban_date` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_name` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blacklist`
--

CREATE TABLE `blacklist` (
  `Time` varchar(22) NOT NULL,
  `Name` varchar(24) NOT NULL,
  `Admin` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bussines`
--

CREATE TABLE `bussines` (
  `bussines_id` int(11) NOT NULL,
  `b_owner_sqlID` int(11) DEFAULT '-1',
  `bOnAuction` tinyint(1) NOT NULL DEFAULT '0',
  `bOwner` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Drzava',
  `b_price` int(11) NOT NULL,
  `b_type` smallint(3) NOT NULL,
  `b_locked` tinyint(4) DEFAULT '0',
  `b_money` int(11) DEFAULT '0',
  `b_enter_x` float NOT NULL,
  `b_enter_y` float NOT NULL,
  `b_enter_z` float NOT NULL,
  `b_exit_x` float DEFAULT '0',
  `b_exit_y` float DEFAULT '0',
  `b_exit_z` float DEFAULT '0',
  `b_enter_int` int(11) DEFAULT '0',
  `b_enter_vw` int(11) DEFAULT '0',
  `b_exit_int` int(11) DEFAULT '0',
  `b_exit_vw` int(11) DEFAULT '0',
  `b_name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `b_level` int(11) NOT NULL,
  `b_jobID` smallint(2) DEFAULT '0',
  `b_neaktivnost` int(11) DEFAULT '0',
  `b_facture` int(11) DEFAULT '100'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bussines`
--

INSERT INTO `bussines` (`bussines_id`, `b_owner_sqlID`, `bOnAuction`, `bOwner`, `b_price`, `b_type`, `b_locked`, `b_money`, `b_enter_x`, `b_enter_y`, `b_enter_z`, `b_exit_x`, `b_exit_y`, `b_exit_z`, `b_enter_int`, `b_enter_vw`, `b_exit_int`, `b_exit_vw`, `b_name`, `b_level`, `b_jobID`, `b_neaktivnost`, `b_facture`) VALUES
(1, -1, 0, 'Drzava', 3000000, 18, 0, 7350, 2489.64, -1957.46, 13.589, 0, 0, 0, 0, 0, 0, 0, 'Firma - Mehanicar', 5, 1, 0, 100),
(5, -1, 0, 'Drzava', 450000, 5, 0, 0, 2244.31, -1665.55, 15.477, 207.72, -110.546, 1005.13, 0, 0, 15, 1, 'Binco', 5, 0, 0, 100),
(7, -1, 0, 'Drzava', 150000, 11, 0, 0, 2309.98, -1643.42, 14.827, 501.871, -67.582, 998.758, 0, 0, 11, 3, 'Bar', 5, 0, 0, 100),
(8, -1, 0, 'Drzava', 500000, 1, 0, 0, 2354.49, -1511.46, 24, -30.908, -92.01, 1003.55, 0, 0, 18, 4, 'Prodavnica 24/7', 5, 0, 0, 100),
(9, -1, 0, 'Drzava', 350000, 4, 0, 0, 2419.7, -1509.14, 24, 365.005, -11.839, 1001.85, 0, 0, 9, 5, 'Cluckin Bell', 5, 0, 0, 100),
(10, -1, 0, 'Drzava', 150000, 11, 0, 0, 2348.67, -1372.68, 24.398, 501.871, -67.582, 998.758, 0, 0, 11, 6, 'Bar', 5, 0, 0, 100),
(11, -1, 0, 'Drzava', 450000, 6, 0, 0, 1456.51, -1137.58, 23.948, 161.41, -96.687, 1001.8, 0, 0, 18, 2, 'Zip', 5, 0, 0, 100),
(12, -1, 0, 'Drzava', 350000, 3, 0, 0, 1199.04, -918.787, 42.687, 363.148, -75.17, 1001.51, 0, 0, 10, 7, 'Burg', 5, 0, 0, 100),
(13, -1, 0, 'Drzava', 1000000, 9, 0, 0, 1209.94, -956.748, 42.945, 315.763, -143.661, 999.602, 0, 0, 7, 8, 'Gun Shop', 10, 0, 0, 100),
(14, -1, 0, 'Drzava', 500000, 1, 0, 0, 1315.57, -897.847, 39.578, -30.908, -92.01, 1003.55, 0, 0, 18, 9, 'Prodavnica 24/7', 5, 0, 0, 100),
(15, -1, 0, 'Drzava', 1000000, 9, 0, 0, 1369, -1279.69, 13.547, 315.763, -143.661, 999.602, 0, 0, 7, 10, 'Gun Shop', 10, 0, 0, 100),
(16, -1, 0, 'Drzava', 1000000, 9, 0, 0, 1884.17, -1272.39, 13.547, 315.763, -143.661, 999.602, 0, 0, 7, 11, 'Gun Shop', 10, 0, 0, 100),
(17, -1, 0, 'Drzava', 500000, 1, 0, 0, -78.383, -1169.92, 2.135, -30.908, -92.01, 1003.55, 0, 0, 18, 12, 'Prodavnica 24/7', 5, 0, 0, 100),
(18, -1, 0, 'Drzava', 200000, 14, 0, 0, 2421.55, -1219.24, 25.562, -2636.58, 1402.79, 906.461, 0, 0, 3, 13, 'Nocni klub', 5, 0, 0, 100),
(19, -1, 0, 'Drzava', 1000000, 9, 0, 0, 2561.38, -1329.83, 39.705, 315.763, -143.661, 999.602, 0, 0, 7, 14, 'Gun Shop', 10, 0, 0, 100),
(20, -1, 0, 'Drzava', 300000, 12, 0, 0, 2521.37, -1272.87, 34.892, 460.265, -88.612, 999.555, 0, 0, 4, 15, 'Mali Restoran', 5, 0, 0, 100),
(21, -1, 0, 'Drzava', 1000000, 9, 0, 0, 2454.86, -1707.66, 13.622, 315.763, -143.661, 999.602, 0, 0, 7, 16, 'Gun Shop', 10, 0, 0, 100),
(22, -1, 0, 'Drzava', 1000000, 9, 0, 0, 2166.67, -1786.57, 13.52, 315.763, -143.661, 999.602, 0, 0, 7, 17, 'Gun Shop', 10, 0, 0, 100),
(23, -1, 0, 'Drzava', 1000000, 9, 0, 0, 1238.28, -2385.66, 12.79, 315.763, -143.661, 999.602, 0, 0, 7, 18, 'Gun Shop', 10, 0, 0, 100),
(24, -1, 0, 'Drzava', 1000000, 9, 0, 0, -3.199, -2507.13, 36.655, 315.763, -143.661, 999.602, 0, 0, 7, 19, 'Gun Shop', 10, 0, 0, 100),
(25, -1, 0, 'Drzava', 1000000, 9, 0, 0, 2600.9, -1238.08, 48.685, 315.763, -143.661, 999.602, 0, 0, 7, 20, 'Gun Shop', 10, 0, 0, 100),
(26, -1, 0, 'Drzava', 1000000, 9, 0, 0, 1227.64, 181.808, 20.391, 315.763, -143.661, 999.602, 0, 0, 7, 21, 'Gun Shop', 10, 0, 0, 100),
(34, -1, 0, 'Drzava', 350000, 12, 0, 0, 1567.95, -1897.86, 13.561, -794.85, 489.28, 1376.19, 0, 0, 1, 22, 'Veliki Restoran', 5, 0, 0, 100),
(35, -1, 0, 'Drzava', 150000, 11, 0, 0, 1720.4, -1741, 13.547, 501.871, -67.582, 998.758, 0, 0, 11, 23, 'Bar', 5, 0, 0, 100),
(36, -1, 0, 'Drzava', 200000, 14, 0, 0, 1837.04, -1682.39, 13.323, -2636.58, 1402.79, 906.461, 0, 0, 3, 24, 'Nocni klub', 5, 0, 0, 100),
(37, -1, 0, 'Drzava', 450000, 7, 0, 0, 1794.74, -1720.84, 13.537, 227.343, -8.244, 1002.21, 0, 0, 5, 25, 'Victim', 5, 0, 0, 100),
(38, -1, 0, 'Drzava', 500000, 1, 0, 0, 1928.58, -1776.16, 13.547, -30.908, -92.01, 1003.55, 0, 0, 18, 26, 'Prodavnica 24/7', 5, 0, 0, 100),
(39, -1, 0, 'Drzava', 750000, 13, 0, 0, 2105.49, -1806.5, 13.555, 372.268, -133.511, 1001.49, 0, 0, 5, 27, 'Well stacked pizza', 5, 0, 0, 100),
(40, -1, 0, 'Drzava', 450000, 8, 0, 0, 2068.75, -1779.76, 13.56, 203.895, -50.657, 1001.8, 0, 0, 1, 28, 'Suburban', 5, 0, 0, 100),
(41, -1, 0, 'Drzava', 250000, 10, 0, 0, 2229.93, -1721.28, 13.562, 772.359, -5.516, 1000.73, 0, 0, 5, 29, 'Gym', 5, 0, 0, 100),
(42, -1, 0, 'Drzava', 1000000, 9, 0, 0, 2822.88, -1597.38, 11.095, 315.763, -143.661, 999.602, 0, 0, 7, 30, 'Gun Shop', 10, 0, 0, 100),
(43, -1, 0, 'Drzava', 300000, 12, 0, 0, 2818.16, -1609.1, 10.987, 460.265, -88.612, 999.555, 0, 0, 4, 31, 'Mali Restoran', 5, 0, 0, 100),
(44, -1, 0, 'Drzava', 1500000, 22, 0, 0, 1673.46, -1171.21, 23.967, 834.667, 7.388, 1004.19, 0, 0, 3, 32, 'Kladionica', 5, 0, 0, 100),
(45, -1, 0, 'Drzava', 450000, 5, 0, 0, 1079.96, -1158.96, 23.828, 207.72, -110.546, 1005.13, 0, 0, 15, 33, 'Binco', 5, 0, 0, 100),
(46, -1, 0, 'Drzava', 500000, 1, 0, 0, 752.631, -1791.44, 13.023, -30.908, -92.01, 1003.55, 0, 0, 18, 34, 'Prodavnica 24/7', 5, 0, 0, 100),
(47, -1, 0, 'Drzava', 1000000, 9, 0, 0, 400.67, -1806.06, 7.828, 315.763, -143.661, 999.602, 0, 0, 7, 35, 'Gun Shop', 10, 0, 0, 100),
(48, -1, 0, 'Drzava', 350000, 3, 0, 0, 810.485, -1616.24, 13.547, 363.148, -75.17, 1001.51, 0, 0, 10, 36, 'Burg', 5, 0, 0, 100),
(49, -1, 0, 'Drzava', 450000, 6, 0, 0, 419.628, -1428.52, 32.491, 161.41, -96.687, 1001.8, 0, 0, 18, 37, 'Zip', 5, 0, 0, 100),
(50, -1, 0, 'Drzava', 750000, 13, 0, 0, 461.542, -1500.75, 31.05, 372.268, -133.511, 1001.49, 0, 0, 5, 38, 'Well stacked pizza', 5, 0, 0, 100),
(51, -1, 0, 'Drzava', 500000, 1, 0, 0, 1634.25, -1450.56, 13.547, -30.908, -92.01, 1003.55, 0, 0, 18, 39, 'Prodavnica 24/7', 5, 0, 0, 100),
(52, -1, 0, 'Drzava', 1000000, 9, 0, 0, 1836.68, -1442.31, 13.596, 315.763, -143.661, 999.602, 0, 0, 7, 40, 'Gun Shop', 10, 0, 0, 100),
(53, -1, 0, 'Drzava', 200000, 15, 0, 0, 1726.96, -1636.99, 20.217, 493.439, -24.917, 1000.67, 0, 0, 17, 41, 'Diskoteka', 5, 0, 0, 100),
(57, -1, 0, 'Drzava', 500000, 1, 0, 0, 667.245, -1770.07, 13.639, -30.908, -92.01, 1003.55, 0, 0, 18, 42, 'Prodavnica 24/7', 5, 0, 0, 100),
(58, -1, 0, 'Drzava', 350000, 12, 0, 0, 1498.53, -1580.69, 13.55, -794.85, 489.28, 1376.19, 0, 0, 1, 43, 'Veliki Restoran', 5, 0, 0, 100),
(59, -1, 0, 'Drzava', 350000, 12, 0, 0, 1038.22, -1340.58, 13.743, -794.85, 489.28, 1376.19, 0, 0, 1, 44, 'Veliki Restoran', 5, 0, 0, 100),
(60, -1, 0, 'Drzava', 450000, 7, 0, 0, 1102.58, -1446.43, 15.797, 227.343, -8.244, 1002.21, 0, 0, 5, 45, 'Victim', 5, 0, 0, 100),
(61, -1, 0, 'Drzava', 500000, 1, 0, 0, 1833.78, -1842.47, 13.578, -30.908, -92.01, 1003.55, 0, 0, 18, 46, 'Prodavnica 24/7', 5, 0, 0, 100),
(62, -1, 0, 'Drzava', 1000000, 9, 0, 0, 2091.14, -1905.61, 13.547, 315.763, -143.661, 999.602, 0, 0, 7, 47, 'Gun Shop', 10, 0, 0, 100),
(63, -1, 0, 'Drzava', 200000, 14, 0, 0, 2233.29, -1159.86, 25.891, -2636.58, 1402.79, 906.461, 0, 0, 3, 48, 'Nocni klub', 5, 0, 0, 100),
(64, -1, 0, 'Drzava', 500000, 1, 0, 0, 1307.67, -1159.1, 23.828, -30.908, -92.01, 1003.55, 0, 0, 18, 49, 'Prodavnica 24/7', 5, 0, 0, 100),
(66, -1, 0, 'Drzava', 500000, 1, 0, 0, 2303.83, -16.208, 26.484, -30.908, -92.01, 1003.55, 0, 0, 18, 50, 'Prodavnica 24/7', 5, 0, 0, 100),
(67, -1, 0, 'Drzava', 1000000, 9, 0, 0, 648.872, -519.265, 16.554, 315.763, -143.661, 999.602, 0, 0, 7, 51, 'Gun Shop', 10, 0, 0, 100),
(68, -1, 0, 'Drzava', 500000, 1, 0, 0, 661.363, -573.451, 16.336, -30.908, -92.01, 1003.55, 0, 0, 18, 52, 'Prodavnica 24/7', 5, 0, 0, 100),
(69, -1, 1, 'Drzava', 550000, 16, 0, 0, 561.555, -1506.15, 14.558, 563.182, -1506.13, 14.583, 0, 0, 0, 53, 'Electronic Shop', 5, 0, 0, 100),
(72, -1, 0, 'Drzava', 3000000, 18, 0, 0, 33.51, -1089.82, 4.402, 0, 0, 0, 0, 0, 0, 54, 'Firma - Ribar', 5, 9, 0, 100),
(73, -1, 0, 'Drzava', 3000000, 18, 0, 0, 2604.65, -2212.99, 13.539, 0, 0, 0, 0, 0, 0, 55, 'Firma - Prevoznik Vozila', 5, 8, 0, 100),
(74, -1, 0, 'Drzava', 3000000, 18, 0, 0, -25.541, -275, 1532.96, 0, 0, 0, 6, 6, 0, 56, 'Firma - Proizvodjac Namjestaja', 5, 7, 0, 100),
(75, -1, 0, 'Drzava', 3000000, 18, 0, 0, 1519.77, -1020.14, 24.102, 0, 0, 0, 0, 0, 0, 57, 'Firma - Prevoznik Novca', 5, 5, 0, 100),
(76, -1, 0, 'Drzava', 3000000, 18, 0, 0, 621.926, 840.098, -42.961, 0, 0, 0, 0, 0, 0, 58, 'Firma - Rudar', 5, 4, 0, 100),
(77, -1, 0, 'Drzava', 3000000, 18, 0, 0, 1887.99, -2317.43, 13.547, 0, 0, 0, 0, 0, 0, 59, 'Firma - Pilot', 5, 3, 0, 100),
(79, -1, 0, 'Drzava', 250000, 10, 0, 0, 2729.12, 745.235, 10.932, 772.359, -5.516, 1000.73, 0, 0, 5, 60, 'Gym', 5, 0, 0, 100);

-- --------------------------------------------------------

--
-- Table structure for table `containers`
--

CREATE TABLE `containers` (
  `koSQLID` smallint(6) NOT NULL,
  `koObjPos1` float NOT NULL,
  `koObjPos2` float NOT NULL,
  `koObjPos3` float NOT NULL,
  `koObjRot1` float NOT NULL,
  `koObjRot2` float NOT NULL,
  `koObjRot3` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gangzones`
--

CREATE TABLE `gangzones` (
  `gzone_id` int(11) NOT NULL,
  `taken` tinyint(4) DEFAULT NULL,
  `takeable` tinyint(4) DEFAULT NULL,
  `gang_id` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `is_special` tinyint(1) NOT NULL DEFAULT '0',
  `max_x` float NOT NULL DEFAULT '0',
  `max_y` float NOT NULL DEFAULT '0',
  `min_x` float NOT NULL DEFAULT '0',
  `min_y` float NOT NULL DEFAULT '0',
  `color` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pickup_pos_x` float DEFAULT NULL,
  `pickup_pos_y` float DEFAULT NULL,
  `pickup_pos_z` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gangzones`
--

INSERT INTO `gangzones` (`gzone_id`, `taken`, `takeable`, `gang_id`, `time`, `is_special`, `max_x`, `max_y`, `min_x`, `min_y`, `color`, `pickup_pos_x`, `pickup_pos_y`, `pickup_pos_z`) VALUES
(2, 0, 1, 0, 0, 0, 2517.85, -1656.49, 2463.79, -1668.64, 'FF2244', 2485.36, -1668.12, 13.344),
(3, 0, 1, 0, 0, 0, 1953.42, -1941.05, 1859.26, -1982.33, 'FFA220', 1900.04, -1955.89, 13.555),
(4, 1, 1, 5, 0, 0, -2012.32, -104.331, -2095.31, -279.816, 'FF0000', -2076.22, -237.09, 35.32),
(5, 0, 1, 0, 0, 0, 2336.66, -1497.39, 2264.94, -1555.68, 'FF2244', 2309.81, -1528.07, 25.344),
(6, 0, 1, 0, 0, 0, 1976.13, -1351.85, 1862.81, -1449.78, 'FF2244', 1912.46, -1425.28, 10.359),
(7, 0, 1, 0, 0, 0, -185.299, -1472.02, -194.524, -1585.38, 'FF2244', -191.904, -1541.39, 6.883),
(8, 0, 1, 0, 0, 0, 1178.14, -567.455, 1111.68, -597.799, 'FF2244', 1146.84, -583.776, 104.914),
(9, 0, 1, 0, 0, 0, 1327.43, 190.847, 1257.43, 145.451, 'FF2244', 1290.86, 178.928, 20.461),
(10, 0, 1, 0, 0, 0, 2265.81, -2219.72, 2192.25, -2345.26, '0086e3', 2212.2, -2312.3, 13.646);

-- --------------------------------------------------------

--
-- Table structure for table `gates`
--

CREATE TABLE `gates` (
  `gateid` int(11) NOT NULL,
  `gateowner` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gatemodel` int(11) NOT NULL,
  `gatefor` int(11) NOT NULL,
  `gateorg` int(11) DEFAULT NULL,
  `gatespeed` float NOT NULL,
  `gateradius` float NOT NULL,
  `gatetime` int(11) NOT NULL,
  `gatepos_1` float NOT NULL,
  `gatepos_2` float NOT NULL,
  `gatepos_3` float NOT NULL,
  `gatepos_4` float NOT NULL,
  `gatepos_5` float NOT NULL,
  `gatepos_6` float NOT NULL,
  `gateint` int(11) DEFAULT NULL,
  `gatevw` int(11) DEFAULT NULL,
  `gatemove_1` float NOT NULL,
  `gatemove_2` float NOT NULL,
  `gatemove_3` float NOT NULL,
  `gatemove_4` float NOT NULL,
  `gatemove_5` float NOT NULL,
  `gatemove_6` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gates`
--

INSERT INTO `gates` (`gateid`, `gateowner`, `gatemodel`, `gatefor`, `gateorg`, `gatespeed`, `gateradius`, `gatetime`, `gatepos_1`, `gatepos_2`, `gatepos_3`, `gatepos_4`, `gatepos_5`, `gatepos_6`, `gateint`, `gatevw`, `gatemove_1`, `gatemove_2`, `gatemove_3`, `gatemove_4`, `gatemove_5`, `gatemove_6`) VALUES
(1, '', 19912, 1, 2, 10, 8, 10000, 2720.23, -2411.29, 13.521, 0, 0, -90.106, 0, 0, 2720.23, -2411.29, 9.721, 0, 0, -90.106),
(8, 'sneaky1337', 966, 2, -1, 20, 8, 15000, 1540.01, -1624.06, 12.273, 0, 0, 91.024, 0, 0, 1540.01, -1624.06, 12.273, 0, 0, 91.024),
(9, '', 968, 1, 1, 17, 8, 5000, 1540.01, -1624.06, 13.173, 1.6, 90.5, -89.003, 0, 0, 1540.01, -1624.06, 13.173, 1.6, 34.7, -88.903),
(15, '', 968, 1, 1, 17, 8, 5000, 1559.87, -1602.75, 13.19, 0.9, -90.5, 1.529, 0, 0, 1559.87, -1602.75, 13.19, 0.9, -31.7, 1.529),
(16, 'Niko', 19121, 2, -1, 17, 8, 5000, 1551.47, -1602.81, 12.857, 0, 0, 359.511, 0, 0, 1551.47, -1602.81, 12.857, 0, 0, 359.511),
(20, '', 19912, 1, 5, 17, 8, 5000, 1230.3, -2414.95, 14.085, 0, 0, 344.251, 0, 0, 1230.3, -2414.95, 8.914, 0, 0, 344.251),
(21, '', 19912, 1, 6, 17, 8, 5000, -31.374, -2519.92, 37.588, 0, 0, 302.085, 0, 0, -31.374, -2519.92, 32.328, 0, 0, 302.085),
(22, 'Annoying_Bitch', 986, 2, -1, 3, 8, 3000, 1.929, -1152.42, 8.035, 0, 0, 270.929, 0, 0, 1.929, -1152.42, 1.375, 0, 0, 270.929);

-- --------------------------------------------------------

--
-- Table structure for table `gps`
--

CREATE TABLE `gps` (
  `gpsSQLID` smallint(6) NOT NULL,
  `gpsName` varchar(50) NOT NULL,
  `gpsPos1` float NOT NULL,
  `gpsPos2` float NOT NULL,
  `gpsPos3` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gps`
--

INSERT INTO `gps` (`gpsSQLID`, `gpsName`, `gpsPos1`, `gpsPos2`, `gpsPos3`) VALUES
(1, 'Test', 2708.6, 736.174, 10.972);

-- --------------------------------------------------------

--
-- Table structure for table `job_skills`
--

CREATE TABLE `job_skills` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `skill_mehanicar` tinyint(3) DEFAULT '1',
  `skill_pmunicije` tinyint(3) NOT NULL DEFAULT '1',
  `skill_pilot` tinyint(3) DEFAULT '1',
  `skill_rudar` tinyint(3) DEFAULT '1',
  `skill_pnovca` tinyint(3) DEFAULT '1',
  `skill_uber` tinyint(3) DEFAULT '1',
  `skill_pnamjestaja` tinyint(3) DEFAULT '1',
  `skill_prevoznikvozila` tinyint(2) DEFAULT '1',
  `skill_ribar` smallint(3) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_skills`
--

INSERT INTO `job_skills` (`id`, `user_id`, `skill_mehanicar`, `skill_pmunicije`, `skill_pilot`, `skill_rudar`, `skill_pnovca`, `skill_uber`, `skill_pnamjestaja`, `skill_prevoznikvozila`, `skill_ribar`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2),
(2, 2, 2, 5, 1, 4, 2, 2, 1, 4, 1),
(3, 3, 1, 2, 1, 3, 1, 2, 1, 2, 1),
(4, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(5, 5, 1, 1, 1, 1, 1, 1, 1, 2, 2),
(6, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `metros`
--

CREATE TABLE `metros` (
  `metro_id` int(11) NOT NULL,
  `metro_posx` float NOT NULL,
  `metro_posy` float NOT NULL,
  `metro_posz` float NOT NULL,
  `metro_int` tinyint(3) NOT NULL DEFAULT '0',
  `metro_vw` tinyint(3) NOT NULL DEFAULT '0',
  `metro_zona` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `metros`
--

INSERT INTO `metros` (`metro_id`, `metro_posx`, `metro_posy`, `metro_posz`, `metro_int`, `metro_vw`, `metro_zona`) VALUES
(2, 1417.57, -1716.05, 13.552, 0, 0, 1),
(3, 1434.36, -1042.19, 23.832, 0, 0, 2),
(4, 391.313, -1522.77, 32.279, 0, 0, 4),
(5, 1220.73, -951.698, 42.947, 0, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE `organizations` (
  `org_id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `prefix` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(24) CHARACTER SET utf8 DEFAULT NULL,
  `type` int(11) NOT NULL,
  `suspended` tinyint(4) DEFAULT '0',
  `max_members` smallint(2) DEFAULT '30',
  `male_skin_1` smallint(3) NOT NULL,
  `male_skin_2` smallint(3) NOT NULL,
  `male_skin_3` smallint(3) NOT NULL,
  `male_skin_4` smallint(3) NOT NULL,
  `male_skin_5` smallint(3) NOT NULL,
  `male_skin_6` smallint(3) NOT NULL,
  `female_skin_1` smallint(3) NOT NULL,
  `female_skin_2` smallint(3) NOT NULL,
  `female_skin_3` smallint(3) NOT NULL,
  `female_skin_4` smallint(3) NOT NULL,
  `female_skin_5` smallint(3) NOT NULL,
  `female_skin_6` smallint(3) NOT NULL,
  `rank_1` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `rank_2` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `rank_3` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `rank_4` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `rank_5` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `rank_6` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `enter_pos_x` float NOT NULL,
  `enter_pos_y` float NOT NULL,
  `enter_pos_z` float NOT NULL,
  `exit_pos_x` float NOT NULL,
  `exit_pos_y` float NOT NULL,
  `exit_pos_z` float NOT NULL,
  `interior` int(11) DEFAULT '0',
  `virtualw` int(11) DEFAULT '0',
  `spawn_point_x` float DEFAULT '0',
  `spawn_point_y` float DEFAULT '0',
  `spawn_point_z` float DEFAULT '0',
  `oDilerX` float NOT NULL DEFAULT '0',
  `oDilerY` float NOT NULL DEFAULT '0',
  `oDilerZ` float NOT NULL DEFAULT '0',
  `oDilerA` float NOT NULL DEFAULT '0',
  `oDilerCena` smallint(6) NOT NULL DEFAULT '500',
  `oDilerRadi` tinyint(1) NOT NULL DEFAULT '0',
  `duty_point_pos_x` float DEFAULT '0',
  `duty_point_pos_y` float DEFAULT '0',
  `duty_point_pos_z` float DEFAULT '0',
  `duty_point_int` smallint(6) DEFAULT '0',
  `duty_point_vw` smallint(6) DEFAULT '0',
  `equip_point_pos_x` float DEFAULT '0',
  `equip_point_pos_y` float DEFAULT '0',
  `equip_point_pos_z` float DEFAULT '0',
  `equip_point_int` smallint(6) DEFAULT '0',
  `equip_point_vw` smallint(6) DEFAULT '0',
  `savez` smallint(6) DEFAULT '-1',
  `safe_pos_x` float DEFAULT '0',
  `safe_pos_y` float DEFAULT '0',
  `safe_pos_z` float DEFAULT '0',
  `safe_money` int(11) DEFAULT '0',
  `safe_drug_amount` smallint(6) DEFAULT '0',
  `safe_mats` int(11) NOT NULL DEFAULT '0',
  `oPortX` float NOT NULL DEFAULT '0',
  `oPortY` float NOT NULL DEFAULT '0',
  `oPortZ` float NOT NULL DEFAULT '3',
  `oPortA` float NOT NULL DEFAULT '0',
  `ent_bussines` smallint(6) DEFAULT '0',
  `owned_business` smallint(6) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`org_id`, `name`, `prefix`, `color`, `type`, `suspended`, `max_members`, `male_skin_1`, `male_skin_2`, `male_skin_3`, `male_skin_4`, `male_skin_5`, `male_skin_6`, `female_skin_1`, `female_skin_2`, `female_skin_3`, `female_skin_4`, `female_skin_5`, `female_skin_6`, `rank_1`, `rank_2`, `rank_3`, `rank_4`, `rank_5`, `rank_6`, `enter_pos_x`, `enter_pos_y`, `enter_pos_z`, `exit_pos_x`, `exit_pos_y`, `exit_pos_z`, `interior`, `virtualw`, `spawn_point_x`, `spawn_point_y`, `spawn_point_z`, `oDilerX`, `oDilerY`, `oDilerZ`, `oDilerA`, `oDilerCena`, `oDilerRadi`, `duty_point_pos_x`, `duty_point_pos_y`, `duty_point_pos_z`, `duty_point_int`, `duty_point_vw`, `equip_point_pos_x`, `equip_point_pos_y`, `equip_point_pos_z`, `equip_point_int`, `equip_point_vw`, `savez`, `safe_pos_x`, `safe_pos_y`, `safe_pos_z`, `safe_money`, `safe_drug_amount`, `safe_mats`, `oPortX`, `oPortY`, `oPortZ`, `oPortA`, `ent_bussines`, `owned_business`) VALUES
(1, 'Los Santos Police Department', 'LSPD', NULL, 1, 0, 40, 280, 266, 267, 265, 281, 283, 1, 2, 3, 4, 5, 6, 'Police Cadet', 'Police Officer', 'Sergeant', 'Lieutenant', 'Commander', 'Chief of Police', 1551.87, -1651.83, 14.495, -1491.1, 325.334, 118.287, 0, 1, -1511.73, 328.322, 54.641, 0, 0, 0, 0, 500, 0, -1519.7, 339.475, 54.691, 0, 2, -1523.72, 310.896, 54.641, 0, 2, -1, -1493.18, 314.223, 54.641, 0, 0, 0, 1514.81, -1659.26, 13.539, 286.035, 0, 0),
(2, 'Federal Bureau of Investigation', 'FBI', NULL, 1, 0, 40, 282, 288, 311, 283, 310, 310, 1, 2, 3, 4, 5, 6, 'Deputy FBI Generalist', 'Deputy FBI ', 'Sergeant', 'Lieutenant', 'O.G Leader', 'Leader', 2729.35, -2451.5, 17.594, 403.924, 2532.08, -20.098, 0, 2, 0, 0, 0, 0, 0, 0, 0, 500, 0, 420.508, 2500, -20.068, 0, 2, 414.831, 2502.9, -20.068, 0, 2, -1, 0, 0, 0, 0, 0, 0, 2699.94, -2395.52, 13.633, 251.933, 0, 0),
(3, 'Grove Street Family', 'GSF', '1BE335', 2, 0, 50, 105, 106, 107, 269, 271, 270, 1, 2, 3, 4, 5, 6, 'Soulja', 'Thug', 'Homeboy', 'Gangsta', 'O.G Leader', 'Leader', 2495.42, -1690.96, 14.766, 291.552, -141.117, 1161.28, 6, 3, 0, 0, 0, 2464.36, -1665.29, 13.472, 62.047, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 290.508, -154.966, 1164.74, 0, 0, 0, 2449.72, -1653.34, 13.359, 233.952, 0, 70),
(4, 'Ballas Family', 'Ball', '6D1E94', 2, 0, 40, 103, 104, 102, 98, 124, 296, 1, 2, 3, 4, 5, 6, 'Grunt', 'Solider', 'Senior Solider', 'Warlord', 'O.G Leader', 'Leader', 2140.93, -1801.77, 16.147, 291.552, -141.117, 1161.28, 6, 4, 285.258, -149.524, 1164.74, 2153.51, -1803.08, 13.565, 295.855, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 290.354, -154.934, 1164.74, 0, 0, 0, 2177.74, -1749.14, 13.375, 202.015, 0, 71),
(5, 'Yakuza', 'Yaku', 'FF0000', 3, 0, 50, 203, 204, 117, 136, 184, 186, 1, 2, 3, 4, 5, 6, 'Shingiin', 'Keikei', 'Shategashira', 'Saiko Komon', 'O.G Leader', 'Leader', 1218.4, -2386.57, 12.816, 1557.81, -1367.72, 226.485, 0, 5, 1557.81, -1367.72, 226.485, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1563.35, -1339.64, 226.485, 130000, 0, 0, 1212.87, -2439.93, 9.733, 309.024, 0, 0),
(6, 'La Cosa Nostra', 'LCN', '0086E3', 3, 0, 40, 292, 185, 223, 249, 250, 294, 1, 2, 3, 4, 5, 6, 'Associates', 'Soldiers', 'Consigliere', 'UnderBoss', 'O.G Leader', 'Leader', -11.855, -2501.26, 36.655, 1557.81, -1367.72, 226.485, 0, 6, 1557.84, -1367.72, 226.485, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1563.35, -1339.63, 226.485, 0, 0, 0, -54.33, -2512.3, 35.738, 258.713, 0, 0),
(7, 'Los Santos Vagos', 'Vago', NULL, 2, 0, 50, 110, 110, 109, 109, 109, 108, 110, 110, 109, 109, 109, 108, 'Lil Ese', 'Soldado', 'Hermano', 'Corner Boss', 'O.G Leader', 'Leader', 2601.05, -1220.58, 53.921, 291.552, -141.117, 1161.28, 6, 7, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 290.507, -154.95, 1164.74, 12000, 0, 0, 2562.44, -1191.74, 61.862, 223.302, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `org_members`
--

CREATE TABLE `org_members` (
  `id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `memb_rank` smallint(1) NOT NULL,
  `memb_type` smallint(1) NOT NULL DEFAULT '0',
  `memb_sqlID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `org_members`
--

INSERT INTO `org_members` (`id`, `org_id`, `memb_rank`, `memb_type`, `memb_sqlID`) VALUES
(31, 3, 6, 1, 13);

-- --------------------------------------------------------

--
-- Table structure for table `propertys`
--

CREATE TABLE `propertys` (
  `iSQLID` mediumint(9) NOT NULL,
  `iOwnerSQLID` mediumint(9) NOT NULL DEFAULT '-1',
  `iGarageSqlID` mediumint(9) NOT NULL DEFAULT '-1',
  `iOwned` tinyint(4) NOT NULL DEFAULT '0',
  `iOnAuction` tinyint(1) NOT NULL DEFAULT '0',
  `iOwner` varchar(25) NOT NULL DEFAULT 'Drzava',
  `iMoney` int(11) NOT NULL DEFAULT '0',
  `iUsage` tinyint(4) NOT NULL,
  `iNeaktivnost` smallint(3) NOT NULL DEFAULT '0',
  `iEnter1` float NOT NULL,
  `iEnter2` float NOT NULL,
  `iEnter3` float NOT NULL,
  `iExit1` float NOT NULL,
  `iExit2` float NOT NULL,
  `iExit3` float NOT NULL,
  `iPrice` int(11) NOT NULL,
  `iLevel` smallint(6) NOT NULL,
  `iLocked` tinyint(4) NOT NULL DEFAULT '1',
  `iVrsta` tinyint(4) NOT NULL,
  `iInterior` int(11) NOT NULL,
  `iVW` int(11) NOT NULL,
  `iOruzje1` tinyint(4) NOT NULL DEFAULT '0',
  `iOruzje2` tinyint(4) NOT NULL DEFAULT '0',
  `iOruzje3` tinyint(4) NOT NULL DEFAULT '0',
  `iOruzje4` tinyint(4) NOT NULL DEFAULT '0',
  `iMunicija1` smallint(6) NOT NULL DEFAULT '0',
  `iMunicija2` smallint(6) NOT NULL DEFAULT '0',
  `iMunicija3` smallint(6) NOT NULL DEFAULT '0',
  `iMunicija4` smallint(6) NOT NULL DEFAULT '0',
  `iDrugAmmount` smallint(6) NOT NULL DEFAULT '0',
  `iMats` mediumint(9) NOT NULL DEFAULT '0',
  `iAlarm` tinyint(1) NOT NULL DEFAULT '0',
  `iDoorLevel` tinyint(4) NOT NULL DEFAULT '0',
  `iLockLevel` tinyint(1) NOT NULL DEFAULT '0',
  `iTime` smallint(6) NOT NULL DEFAULT '0',
  `iAdress` varchar(50) NOT NULL DEFAULT '',
  `iRentable` tinyint(1) NOT NULL DEFAULT '0',
  `iRentPrice` smallint(6) NOT NULL DEFAULT '0',
  `iRentovano` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `propertys`
--

INSERT INTO `propertys` (`iSQLID`, `iOwnerSQLID`, `iGarageSqlID`, `iOwned`, `iOnAuction`, `iOwner`, `iMoney`, `iUsage`, `iNeaktivnost`, `iEnter1`, `iEnter2`, `iEnter3`, `iExit1`, `iExit2`, `iExit3`, `iPrice`, `iLevel`, `iLocked`, `iVrsta`, `iInterior`, `iVW`, `iOruzje1`, `iOruzje2`, `iOruzje3`, `iOruzje4`, `iMunicija1`, `iMunicija2`, `iMunicija3`, `iMunicija4`, `iDrugAmmount`, `iMats`, `iAlarm`, `iDoorLevel`, `iLockLevel`, `iTime`, `iAdress`, `iRentable`, `iRentPrice`, `iRentovano`) VALUES
(1, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2465.37, -2020.79, 14.124, -2169.97, -2135.96, 1501.1, 500000, 5, 1, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Willowfield', 0, 0, 0),
(2, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2437.9, -2020.85, 13.903, -2169.97, -2135.96, 1501.1, 500000, 5, 1, 1, 8, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Willowfield', 0, 0, 0),
(3, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2486.48, -2021.55, 13.999, -2169.97, -2135.96, 1501.1, 500000, 5, 1, 1, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Willowfield', 0, 0, 0),
(4, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2507.89, -2020.9, 14.21, -2169.97, -2135.96, 1501.1, 500000, 5, 1, 1, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Willowfield', 0, 0, 0),
(5, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2522.82, -2018.73, 14.074, -2169.97, -2135.96, 1501.1, 500000, 5, 1, 1, 8, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Willowfield', 0, 0, 0),
(6, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2524.23, -1998.19, 14.113, -2169.97, -2135.96, 1501.1, 500000, 5, 1, 1, 8, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Willowfield', 0, 0, 0),
(7, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2508.29, -1998.36, 13.903, -2169.97, -2135.96, 1501.1, 500000, 5, 1, 1, 8, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Willowfield', 0, 0, 0),
(8, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2483.4, -1995.52, 13.834, -2169.97, -2135.96, 1501.1, 500000, 5, 1, 1, 8, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Willowfield', 0, 0, 0),
(9, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2465.1, -1996.14, 13.689, -2169.97, -2135.96, 1501.1, 500000, 5, 1, 1, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Willowfield', 0, 0, 0),
(10, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2394.96, -1795.88, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ganton', 0, 0, 0),
(11, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2380.53, -1785.66, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ganton', 0, 0, 0),
(12, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2359.86, -1795.98, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ganton', 0, 0, 0),
(13, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2345.43, -1785.63, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ganton', 0, 0, 0),
(14, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2322.11, -1796.11, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ganton', 0, 0, 0),
(15, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2307.53, -1785.75, 13.557, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ganton', 0, 0, 0),
(16, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2290.29, -1796.23, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ganton', 0, 0, 0),
(17, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2275.7, -1785.39, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ganton', 0, 0, 0),
(18, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2247.24, -1796.01, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ganton', 0, 0, 0),
(19, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2232.79, -1785.67, 13.56, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ganton', 0, 0, 0),
(20, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2308.89, -1714.33, 14.98, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ganton', 0, 0, 0),
(21, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2326.72, -1716.7, 14.238, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ganton', 0, 0, 0),
(22, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2385.36, -1711.66, 14.242, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ganton', 0, 0, 0),
(23, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2402.45, -1714.98, 14.133, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ganton', 0, 0, 0),
(24, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2326.88, -1681.97, 14.93, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ganton', 0, 0, 0),
(25, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2306.95, -1679.2, 14.332, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ganton', 0, 0, 0),
(26, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2282.33, -1641.21, 15.89, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ganton', 0, 0, 0),
(27, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2257.14, -1643.94, 15.808, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ganton', 0, 0, 0),
(28, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2244.47, -1637.61, 16.238, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ganton', 0, 0, 0),
(29, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2368.2, -1675.19, 14.168, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ganton', 0, 0, 0),
(30, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2384.63, -1675.47, 14.915, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ganton', 0, 0, 0),
(31, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2408.97, -1674.78, 14.375, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ganton', 0, 0, 0),
(32, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2413.87, -1646.95, 14.012, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ganton', 0, 0, 0),
(33, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2393.2, -1646.03, 13.905, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ganton', 0, 0, 0),
(34, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2362.79, -1643.14, 14.352, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ganton', 0, 0, 0),
(35, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2451.92, -1641.41, 14.066, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ganton', 0, 0, 0),
(36, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2469.49, -1646.35, 13.78, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ganton', 0, 0, 0),
(37, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2486.44, -1644.53, 14.077, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ganton', 0, 0, 0),
(38, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1422.32, -886.226, 50.687, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(39, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2498.46, -1642.25, 14.113, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ganton', 0, 0, 0),
(40, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2513.73, -1650.27, 14.356, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ganton', 0, 0, 0),
(41, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2524.71, -1658.62, 15.824, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ganton', 0, 0, 0),
(42, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1468.7, -906.183, 54.836, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland Intersection', 0, 0, 0),
(43, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2523.27, -1679.32, 15.497, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ganton', 0, 0, 0),
(44, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2514.16, -1691.58, 14.046, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ganton', 0, 0, 0),
(45, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1535.73, -885.254, 57.657, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland Intersection', 0, 0, 0),
(46, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2459.49, -1691.66, 13.545, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ganton', 0, 0, 0),
(47, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2383.54, -1366.22, 24.491, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(48, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2389.73, -1346.16, 25.077, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(49, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2387.69, -1328.56, 25.124, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(50, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1540.47, -851.458, 64.336, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland Intersection', 0, 0, 0),
(51, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2388.42, -1279.72, 25.129, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(52, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1535.03, -800.103, 72.849, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland Intersection', 0, 0, 0),
(54, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1527.85, -772.616, 80.578, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland Intersection', 0, 0, 0),
(55, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1227.24, -1017.17, 36.336, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temple', 0, 0, 0),
(56, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1234.56, -1016.12, 36.336, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 54, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temple', 0, 0, 0),
(57, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1226.43, -1010.95, 36.328, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temple', 0, 0, 0),
(58, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1233.75, -1010, 36.328, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temple', 0, 0, 0),
(59, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1226.61, -1010.98, 32.602, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temple', 0, 0, 0),
(60, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1233.93, -1010.03, 32.602, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temple', 0, 0, 0),
(61, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1227.25, -1017.22, 32.602, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temple', 0, 0, 0),
(62, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1234.74, -1016.24, 32.607, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temple', 0, 0, 0),
(63, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1189.01, -1018.1, 36.234, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temple', 0, 0, 0),
(64, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1196.5, -1017.14, 36.234, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temple', 0, 0, 0),
(65, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1188.36, -1011.94, 36.227, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temple', 0, 0, 0),
(66, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1195.58, -1010.88, 36.227, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temple', 0, 0, 0),
(68, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1506.04, -1061.18, 25.063, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland Intersection', 0, 0, 0),
(69, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1510.36, -1061.18, 25.063, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland Intersection', 0, 0, 0),
(70, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1514.67, -1061.02, 25.063, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 67, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland Intersection', 0, 0, 0),
(71, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1546.26, -1097.7, 25.063, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland Intersection', 0, 0, 0),
(72, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1492.3, -1126.06, 24.078, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland Intersection', 0, 0, 0),
(73, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1492.3, -1131.01, 24.078, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland Intersection', 0, 0, 0),
(74, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1492.3, -1136.15, 24.078, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland Intersection', 0, 0, 0),
(75, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1492.14, -1141.19, 24.078, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland Intersection', 0, 0, 0),
(76, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1196.49, -1017.01, 32.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 73, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temple', 0, 0, 0),
(77, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1189.01, -1018.07, 32.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temple', 0, 0, 0),
(78, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1195.52, -1010.93, 32.553, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temple', 0, 0, 0),
(79, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1188.37, -1012.03, 32.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temple', 0, 0, 0),
(80, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1246.21, -908.975, 46.602, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 77, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(81, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1253.55, -908.116, 46.602, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(82, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1249.62, -877.321, 42.883, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(83, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1252.88, -901.794, 46.594, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(84, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1245.56, -902.851, 46.594, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(85, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1245.39, -902.761, 42.883, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 82, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(86, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1252.75, -901.897, 42.883, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(87, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1242.12, -878.242, 42.875, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 84, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(88, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1246.34, -908.947, 42.883, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(89, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1253.54, -907.973, 42.883, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 86, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(90, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1241.31, -872.1, 42.883, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 87, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(91, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1248.8, -871.13, 42.883, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(92, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1249.61, -877.313, 46.641, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 89, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(93, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1242.12, -878.266, 46.641, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(94, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1241.31, -872.108, 46.633, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 91, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(95, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1248.8, -871.134, 46.633, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(96, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1288.35, -873.879, 43.066, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 93, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(97, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1280.86, -874.866, 42.94, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(98, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1287.54, -867.702, 43.149, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(99, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1280.05, -868.679, 42.923, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(100, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1284.35, -904.059, 46.633, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 97, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(101, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1288.32, -873.902, 46.844, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(102, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1283.71, -897.827, 46.625, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(103, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1290.9, -897.056, 46.625, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(104, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1280.86, -874.866, 46.844, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(105, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1291.83, -902.975, 46.633, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 102, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(106, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1291.7, -903.275, 42.883, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 103, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(107, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1280.05, -868.669, 46.836, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(108, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1284.35, -904.032, 42.883, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(109, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1287.54, -867.738, 46.836, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 106, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(110, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1291.03, -896.895, 42.883, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(111, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1283.69, -897.845, 42.875, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(112, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1410.97, -920.993, 38.422, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 109, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(113, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1440.52, -926.284, 39.648, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 110, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(114, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2324.44, -1281.12, 27.982, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(115, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2324.24, -1249.66, 27.977, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(116, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2334.6, -1234.66, 27.977, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(117, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2334.66, -1266.12, 27.969, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 114, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(118, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2323.98, -1219, 27.977, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(119, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2334.64, -1203.85, 27.977, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 116, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(120, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2352.03, -1170.5, 28.067, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 117, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(121, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2373.97, -1138.92, 29.059, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 118, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(122, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2394.86, -1133.54, 30.719, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 119, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(123, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2250.3, -1280.05, 25.477, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(124, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2427.39, -1135.77, 34.711, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 121, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(125, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2230.05, -1280.06, 25.629, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 122, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(126, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2488.05, -1135.24, 39.586, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(127, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2207.93, -1280.82, 25.121, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 124, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(128, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2191.58, -1275.6, 25.156, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 125, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(129, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2510.57, -1132.64, 41.621, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 126, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(130, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2150.12, -1285.04, 24.527, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 127, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(131, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2132.28, -1280.05, 25.891, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(132, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2111.11, -1278.98, 25.836, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 129, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(133, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2407.88, -1106.97, 40.296, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 130, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(134, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2090.83, -1277.83, 26.18, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 131, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(135, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2438.65, -1105.79, 43.082, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 132, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(136, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2100.97, -1321.89, 25.953, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(137, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2126.69, -1320.87, 26.624, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 134, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(138, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2457.06, -1102.5, 43.867, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(139, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2148.55, -1320.08, 26.074, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(140, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2470.67, -1105.32, 44.488, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 137, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(141, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2202.72, -1364.05, 25.861, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 138, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(142, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2519.03, -1112.98, 56.593, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 139, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(143, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2184.99, -1364.09, 25.829, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(144, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2572.34, -1091.81, 67.226, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 141, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(145, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2230.61, -1396.87, 24.243, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 142, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(146, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2243.47, -1397.24, 24.574, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 143, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(147, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2256.43, -1396.87, 24.243, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(148, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2576.68, -1070.7, 69.832, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(149, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2263.96, -1469.7, 24.04, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(150, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2247.65, -1469.73, 24.15, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 147, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(151, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2232.63, -1469.71, 24.251, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 148, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(152, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2190.59, -1470.51, 25.914, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 149, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(153, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2190.69, -1487.6, 25.775, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(154, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2191.26, -1455.98, 26, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 151, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(155, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2194.72, -1443.21, 25.743, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(156, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2188.54, -1419.43, 26.156, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 153, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(157, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2196.21, -1404.25, 25.949, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 154, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(158, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2534.48, -1063.43, 69.565, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 155, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(159, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2526.09, -1060.77, 69.971, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 156, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(160, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2499.75, -1065.52, 70.236, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(161, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2579.66, -1033.2, 69.58, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 158, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(162, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2479.54, -1063.94, 66.998, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 159, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(163, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2562.11, -1034.35, 69.869, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 160, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(164, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2457.76, -1054.68, 59.959, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 161, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(165, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2549.2, -1032.22, 69.579, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 162, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(166, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2462.3, -1011.11, 60.114, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 163, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(167, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2526.83, -1033.52, 69.579, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(168, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2439.93, -1011, 54.344, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 165, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(169, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2512.8, -1027.16, 70.086, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 166, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(170, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2389.37, -1037.18, 53.552, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 167, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(171, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2373.01, -1051.33, 54.133, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 168, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(172, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2370.17, -1034.56, 54.411, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(173, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2355.64, -1038.87, 54.148, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 170, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(174, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2347.94, -1047.45, 53.844, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 171, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(175, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2440.57, -1057.34, 54.739, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 172, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(176, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2335.28, -1045.86, 52.553, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(177, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2330.22, -1060.62, 52.352, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 174, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(178, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2325.55, -1060.69, 52.352, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 175, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(179, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2319.73, -1053.14, 52.461, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 176, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(180, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2297.5, -1052.98, 49.934, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 177, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(181, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2284.02, -1046.18, 49.887, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 178, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(182, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2362.64, -1046.44, 54.273, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 179, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(183, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2355.83, -1058.79, 54.078, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(184, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2287.53, -1080.94, 48.138, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 181, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(185, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2278.81, -1077.44, 48.24, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 182, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(186, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2249.32, -1060.31, 55.969, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 183, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(187, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2259.39, -1019.15, 59.297, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 184, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(188, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2208.09, -1026.59, 61.351, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 185, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(189, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2219.02, -1031.74, 60.147, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 186, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(190, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2186.45, -997.314, 66.469, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 187, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(191, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2139.93, -1008.47, 61.986, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 188, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(192, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2154.13, -979.856, 63.293, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 189, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(193, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2142.68, -978.195, 61.379, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(194, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2122.04, -970.36, 58.207, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 191, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(195, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2131.95, -974.001, 59.786, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(196, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2089.44, -996.229, 53.063, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 193, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(197, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2090.63, -972.361, 51.859, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 194, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(198, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2073.38, -965.279, 49.271, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 195, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(199, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2049.12, -987.279, 44.98, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 196, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(200, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2051.27, -954.792, 48.033, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 197, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(201, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2108.94, -1000.78, 60.508, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 198, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(202, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2045.07, -965.842, 44.45, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 199, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(203, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2044.78, -991.3, 43.271, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(204, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2015.24, -978.158, 36.769, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(205, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2007.52, -984.904, 34.258, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 202, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(206, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2000.29, -991.567, 32.131, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 203, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(207, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2066.18, -993.195, 48.8, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 204, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(208, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2023.01, -1052.96, 25.596, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 205, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(209, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2035.86, -1059.22, 25.651, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 206, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(211, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2075.22, -1081.87, 25.682, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 207, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(212, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2129.44, -1361.69, 26.136, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 208, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(213, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2147.43, -1366.12, 25.972, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 209, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(214, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2082.47, -1085.16, 25.687, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 210, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(216, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1179.89, -1261.06, 18.898, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 211, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(217, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2108.77, -1082.31, 25.492, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 212, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(218, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1187.44, -1260.95, 18.898, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 213, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(219, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1187.36, -1254.69, 18.891, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 214, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(220, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2101.63, -1075.87, 25.931, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 215, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(221, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1179.9, -1254.85, 18.891, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 216, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(222, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2050.77, -1065.69, 25.784, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 217, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(223, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1179.81, -1254.75, 15.18, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 218, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(224, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1187.36, -1254.77, 15.18, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 219, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(225, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1180.02, -1260.75, 15.18, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(226, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1187.44, -1260.97, 15.18, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 221, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(227, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2157.18, -1072.37, 40.496, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 222, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(228, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1180.04, -1233.49, 22.141, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 223, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(229, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1187.43, -1233.18, 22.141, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(231, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1187.21, -1227.09, 22.133, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 225, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(232, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1179.81, -1227.15, 22.133, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 226, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(233, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1179.81, -1227.07, 18.555, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 227, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(234, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1187.33, -1227.18, 18.555, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(235, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2140.6, -1082.51, 25.036, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 229, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(236, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1187.4, -1233.42, 18.555, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 230, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(237, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2061.04, -1075.35, 25.683, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 231, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(238, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2145.29, -1084.69, 25.037, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 232, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(239, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1179.9, -1233.16, 18.555, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 233, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(240, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2091.59, -1068.21, 28.085, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(241, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2045.5, -1116.63, 26.362, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 235, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Glen Park', 0, 0, 0),
(242, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2105.55, -1056.09, 27.142, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 236, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(243, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2022.88, -1120.27, 26.421, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Glen Park', 0, 0, 0),
(244, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2099.87, -1051.78, 28.816, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 238, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(245, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2093.86, -1047.39, 30.108, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(246, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1999.99, -1114.07, 27.125, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Glen Park', 0, 0, 0),
(247, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2077.31, -1057, 31.346, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 241, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(248, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2083.11, -1039.7, 32.21, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 242, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(249, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1955.13, -1115.38, 27.83, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 243, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Glen Park', 0, 0, 0),
(250, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1939.03, -1114.49, 27.452, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 244, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Glen Park', 0, 0, 0),
(251, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1921.31, -1115.17, 27.088, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 245, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Glen Park', 0, 0, 0),
(252, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1906.09, -1112.95, 26.664, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 246, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Glen Park', 0, 0, 0),
(253, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1885.88, -1113.65, 26.276, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 247, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Glen Park', 0, 0, 0),
(254, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2094.02, -1122.67, 27.69, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 248, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(255, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2095.36, -1145.2, 26.593, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 249, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(256, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2092.24, -1166.48, 26.586, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(257, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2091.6, -1184.3, 27.057, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 251, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(258, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2153.82, -1243.81, 25.367, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 252, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(259, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2133.39, -1233, 24.422, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 253, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(260, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2110.95, -1244.4, 25.852, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 254, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(261, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2090.8, -1235.18, 26.019, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(262, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2191.83, -1239.23, 24.488, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(263, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2209.75, -1240.25, 24.48, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 257, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(264, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2229.64, -1241.61, 25.656, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 258, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(265, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2151.17, -1400.6, 26.129, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 259, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(266, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2249.97, -1238.92, 25.898, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 260, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(267, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2150.92, -1418.99, 25.922, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 261, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(268, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2149.85, -1433.66, 26.07, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 262, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(269, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2152.21, -1446.4, 26.105, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 263, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(270, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2146.8, -1470.4, 26.043, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 264, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(271, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2148.93, -1484.86, 26.624, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 265, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jefferson', 0, 0, 0),
(272, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2067.7, -1628.87, 14.207, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 266, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(273, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2067.56, -1643.77, 14.136, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 267, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(274, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2066.74, -1656.53, 14.133, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 268, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(276, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2188.72, -1081.58, 43.835, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 269, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(277, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1496.98, -687.893, 95.563, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 270, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(279, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1093.92, -807.14, 107.419, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(280, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1112.64, -742.104, 100.133, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(281, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1034.86, -813.166, 101.852, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 273, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0);
INSERT INTO `propertys` (`iSQLID`, `iOwnerSQLID`, `iGarageSqlID`, `iOwned`, `iOnAuction`, `iOwner`, `iMoney`, `iUsage`, `iNeaktivnost`, `iEnter1`, `iEnter2`, `iEnter3`, `iExit1`, `iExit2`, `iExit3`, `iPrice`, `iLevel`, `iLocked`, `iVrsta`, `iInterior`, `iVW`, `iOruzje1`, `iOruzje2`, `iOruzje3`, `iOruzje4`, `iMunicija1`, `iMunicija2`, `iMunicija3`, `iMunicija4`, `iDrugAmmount`, `iMats`, `iAlarm`, `iDoorLevel`, `iLockLevel`, `iTime`, `iAdress`, `iRentable`, `iRentPrice`, `iRentovano`) VALUES
(282, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2207.39, -1100.51, 31.555, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 274, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(283, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 989.811, -828.65, 95.469, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 275, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(284, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2221.15, -1083.03, 41.78, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 276, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(285, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 977.406, -771.718, 112.203, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 277, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(286, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 937.877, -848.71, 93.577, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 278, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(287, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 923.885, -853.37, 93.457, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 279, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(288, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2433.62, -1275.06, 24.757, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 280, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(289, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2434.84, -1289.22, 25.348, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 281, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(290, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 827.787, -857.992, 70.331, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 282, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(292, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 835.938, -894.843, 68.769, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 283, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(293, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2433.93, -1320.73, 25.323, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 284, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(294, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 724.761, -999.411, 52.734, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 285, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Richman', 0, 0, 0),
(295, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2433.93, -1303.37, 25.323, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 286, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(296, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 700.287, -1060.29, 49.422, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 287, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Richman', 0, 0, 0),
(298, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 470.882, -1163.53, 67.218, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 288, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Richman', 0, 0, 0),
(299, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 416.708, -1154.08, 76.688, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 289, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Richman', 0, 0, 0),
(300, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 300.274, -1154.48, 81.391, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 290, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Richman', 0, 0, 0),
(301, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 352.326, -1197.87, 76.516, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Richman', 0, 0, 0),
(302, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 251.452, -1220.2, 76.102, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 292, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Richman', 0, 0, 0),
(303, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1325.95, -1067.74, 31.555, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 293, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temple', 0, 0, 0),
(304, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1326.26, -1090.71, 27.977, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 294, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temple', 0, 0, 0),
(305, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 253.148, -1270.04, 74.431, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 295, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Richman', 0, 0, 0),
(306, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 219.223, -1249.81, 78.337, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 296, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Richman', 0, 0, 0),
(308, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 254.381, -1367.13, 53.109, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 297, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Richman', 0, 0, 0),
(309, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 298.831, -1338.52, 53.442, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 298, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Richman', 0, 0, 0),
(310, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1016.86, -763.361, 112.563, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 299, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(311, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 355.11, -1281.17, 53.704, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Richman', 0, 0, 0),
(312, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 910.475, -817.497, 103.126, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 301, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(313, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 398.113, -1271.39, 50.02, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 302, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Richman', 0, 0, 0),
(314, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 432.095, -1253.94, 51.581, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 303, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Richman', 0, 0, 0),
(315, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 808.291, -759.469, 76.531, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 304, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(317, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 848.103, -745.623, 94.969, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 305, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(318, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 878.391, -725.718, 106.448, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 306, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(319, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 897.855, -677.221, 116.89, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 307, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(320, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 552.969, -1200.27, 44.832, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 308, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Richman', 0, 0, 0),
(321, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 946.279, -710.716, 122.62, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 309, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(322, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 980.429, -677.296, 121.976, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 310, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(323, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1045.23, -642.926, 120.117, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 311, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(324, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1094.98, -647.906, 113.648, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 312, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(325, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1442.58, -628.831, 95.719, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 313, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(326, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1285.26, -1067.34, 31.679, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 314, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temple', 0, 0, 0),
(327, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1285.26, -1090.19, 28.258, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temple', 0, 0, 0),
(328, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1332.18, -633.479, 109.135, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 316, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(329, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 891.229, -783.141, 101.314, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 317, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(330, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 785.941, -828.586, 70.29, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 318, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland', 0, 0, 0),
(331, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1103.4, -1092.46, 28.469, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 319, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temple', 0, 0, 0),
(332, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1103.37, -1069.63, 31.89, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 320, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temple', 0, 0, 0),
(333, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1118.09, -1021.17, 34.992, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 321, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temple', 0, 0, 0),
(334, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1128.13, -1021.47, 34.992, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 322, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temple', 0, 0, 0),
(335, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 559.153, -1076.39, 72.922, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 323, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Richman', 0, 0, 0),
(336, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1241.95, -1076.52, 31.555, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 324, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temple', 0, 0, 0),
(337, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1242.27, -1099.57, 27.977, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 325, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temple', 0, 0, 0),
(338, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 497.412, -1095.07, 82.359, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 326, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Richman', 0, 0, 0),
(339, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1068.42, -1081.36, 27.536, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 327, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temple', 0, 0, 0),
(340, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1059.33, -1105.2, 28.045, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 328, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temple', 0, 0, 0),
(341, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 993.641, -1058.82, 33.7, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 329, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temple', 0, 0, 0),
(342, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1051.07, -1059.3, 34.797, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 330, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temple', 0, 0, 0),
(343, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 315.888, -1769.43, 4.623, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 331, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Santa Maria Beach', 0, 0, 0),
(344, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 305.408, -1770.22, 4.538, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 332, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Santa Maria Beach', 0, 0, 0),
(345, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 295.153, -1764.12, 4.868, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 333, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Santa Maria Beach', 0, 0, 0),
(346, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 280.904, -1767.08, 4.547, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 334, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Santa Maria Beach', 0, 0, 0),
(347, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 192.79, -1769.4, 4.329, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 335, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Santa Maria Beach', 0, 0, 0),
(348, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 167.548, -1759.02, 6.797, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 336, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Santa Maria Beach', 0, 0, 0),
(349, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 207.01, -1768.89, 4.37, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 337, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Santa Maria Beach', 0, 0, 0),
(350, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 802.702, -1810.78, 13.03, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 338, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(351, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 794.261, -1810.77, 13.03, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 339, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(352, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 902.818, -1815.44, 13.303, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 340, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(353, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 905.002, -1815.69, 13.301, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 341, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(354, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 908.734, -1816.1, 13.301, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 342, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(355, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 914.539, -1816.74, 13.308, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 343, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(356, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 916.924, -1816.99, 13.308, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 344, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(357, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 920.341, -1817.38, 13.307, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 345, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(358, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 922.434, -1817.61, 13.306, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 346, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(359, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 926.199, -1818.04, 13.325, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 347, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(360, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 928.463, -1818.29, 13.323, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 348, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(361, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 932.144, -1818.73, 13.322, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 349, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(362, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 934.073, -1818.93, 13.321, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(363, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 961.071, -1823.98, 13.327, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 351, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(364, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 963.456, -1824.56, 13.326, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(365, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 966.851, -1825.39, 13.323, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 353, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(366, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 969.116, -1825.95, 13.324, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 354, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(367, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 972.476, -1826.78, 13.333, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 355, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(368, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 975.04, -1827.41, 13.332, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 356, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(369, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 978.053, -1828.14, 13.33, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 357, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(370, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 983.745, -1829.55, 13.33, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 358, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(371, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 986.031, -1830.11, 13.332, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 359, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(372, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 989.467, -1830.94, 13.336, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 360, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(373, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 992.612, -1817.63, 13.894, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 361, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(374, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 980.993, -1814.83, 13.889, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 362, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(375, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 969.492, -1812, 13.884, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 363, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(376, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 958.1, -1809.18, 13.881, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 364, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(377, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 933.589, -1805.19, 13.843, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 365, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(378, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 922.049, -1803.88, 13.837, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 366, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(379, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 910.376, -1802.68, 13.8, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 367, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(380, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 636.24, -1776.38, 14.08, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 368, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Santa Maria Beach', 0, 0, 0),
(381, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 627.653, -1775.09, 14.166, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 369, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Santa Maria Beach', 0, 0, 0),
(382, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 633.501, -1775.81, 14.107, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 370, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Santa Maria Beach', 0, 0, 0),
(383, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 624.679, -1774.41, 14.196, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 371, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Santa Maria Beach', 0, 0, 0),
(384, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 630.875, -1775.27, 14.133, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 372, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Santa Maria Beach', 0, 0, 0),
(385, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 620.773, -1773.19, 14.242, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 373, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Santa Maria Beach', 0, 0, 0),
(386, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 617.986, -1772.61, 14.269, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 374, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Santa Maria Beach', 0, 0, 0),
(387, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 614.833, -1772.09, 14.3, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 375, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Santa Maria Beach', 0, 0, 0),
(388, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 609.144, -1771, 14.356, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 376, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Santa Maria Beach', 0, 0, 0),
(389, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 612.196, -1771.43, 14.327, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 377, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Santa Maria Beach', 0, 0, 0),
(390, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 605.928, -1770.11, 14.381, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 378, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Santa Maria Beach', 0, 0, 0),
(391, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 534.653, -1760.22, 14.299, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 379, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Santa Maria Beach', 0, 0, 0),
(392, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 538.272, -1760.43, 14.313, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 380, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Santa Maria Beach', 0, 0, 0),
(393, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2582.96, -953.071, 81.388, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 381, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(394, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2581.49, -969.218, 81.365, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 382, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(395, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2552.17, -958.291, 82.625, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 383, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(396, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2518.07, -965.498, 82.329, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 384, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(397, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 282.076, -1600.63, 32.942, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 385, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rodeo', 0, 0, 0),
(398, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 284.841, -1601.2, 32.862, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 386, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rodeo', 0, 0, 0),
(399, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2499.39, -947.158, 82.471, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 387, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(400, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2492.11, -965.641, 82.549, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 388, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(401, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2472.54, -962.046, 80.525, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 389, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(402, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2454.16, -964.278, 80.073, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 390, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(403, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2459.36, -947.7, 80.083, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 391, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(404, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2472.93, -1238.12, 32.569, -2169.97, -2135.96, 1501.1, 500000, 5, 1, 1, 8, 392, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(405, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2492.2, -1239.16, 37.905, -2169.97, -2135.96, 1501.1, 500000, 5, 1, 1, 8, 393, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(406, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2537.05, -1235.61, 43.722, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 394, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(407, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2550.95, -1233.79, 49.332, -2169.97, -2135.96, 1501.1, 500000, 5, 1, 1, 8, 395, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(408, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2615.11, -1238.12, 49.984, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 396, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Los Flores', 0, 0, 0),
(409, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2615.11, -1229.25, 52.609, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 397, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Los Flores', 0, 0, 0),
(410, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2614.96, -1220.55, 55.188, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 398, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Los Flores', 0, 0, 0),
(411, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2615.11, -1211.81, 57.938, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 399, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Los Flores', 0, 0, 0),
(412, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2615.11, -1203.08, 60, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Los Flores', 0, 0, 0),
(413, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2608.16, -1199.98, 60.993, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 401, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Los Flores', 0, 0, 0),
(414, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2608.5, -1207.62, 59.07, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 402, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Los Flores', 0, 0, 0),
(415, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2608.47, -1216.14, 56.566, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 403, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Los Flores', 0, 0, 0),
(416, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2608.49, -1224.57, 53.898, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 404, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Los Flores', 0, 0, 0),
(417, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2608.15, -1233.66, 51.603, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 405, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Los Flores', 0, 0, 0),
(418, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2608.51, -1237.94, 49.984, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 406, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Los Flores', 0, 0, 0),
(419, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2662.86, -1238.02, 55.568, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 407, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Los Flores', 0, 0, 0),
(420, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2663.03, -1229.27, 58.3, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 408, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Los Flores', 0, 0, 0),
(421, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2663.18, -1220.5, 60.875, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 409, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Los Flores', 0, 0, 0),
(422, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2663.18, -1211.8, 63.624, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 410, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Los Flores', 0, 0, 0),
(423, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2663.03, -1203.14, 65.685, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 411, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Los Flores', 0, 0, 0),
(424, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2683.29, -1200, 66.775, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 412, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Los Flores', 0, 0, 0),
(425, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2683.21, -1207.76, 65.016, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 413, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Los Flores', 0, 0, 0),
(426, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2683.44, -1216.24, 62.575, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 414, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Los Flores', 0, 0, 0),
(427, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2683.44, -1224.63, 59.932, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 415, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Los Flores', 0, 0, 0),
(428, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2683.44, -1233.57, 57.417, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 416, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Los Flores', 0, 0, 0),
(429, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2700.06, -1238.02, 58.153, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 417, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Los Flores', 0, 0, 0),
(430, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2700.21, -1229.22, 60.811, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 418, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Los Flores', 0, 0, 0),
(431, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2700.2, -1220.57, 63.389, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 419, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Los Flores', 0, 0, 0),
(432, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2700.05, -1211.79, 66.096, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 420, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Los Flores', 0, 0, 0),
(433, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2700.05, -1202.87, 68.164, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 421, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Los Flores', 0, 0, 0),
(434, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2550.22, -1209.09, 54.541, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 422, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(435, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2520.61, -1209.63, 50.294, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 423, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(436, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2520.87, -1197.85, 56.59, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 424, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(437, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2550.31, -1197.53, 60.843, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 425, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(438, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2467.79, -1200.41, 36.812, -2169.97, -2135.96, 1501.1, 500000, 5, 1, 1, 8, 426, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(439, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2469.05, -1278.3, 30.366, -2169.97, -2135.96, 1501.1, 500000, 5, 1, 1, 8, 427, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(440, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2470.37, -1295.4, 30.233, -2169.97, -2135.96, 1501.1, 500000, 5, 1, 1, 8, 428, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(441, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2481.77, -1344.99, 27.659, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 429, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(442, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2481.77, -1332.01, 28.301, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 430, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(443, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2468.28, -1376.27, 29.313, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 431, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(444, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2468.24, -1366.62, 28.828, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(445, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2476.26, -1366.2, 29.313, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 433, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(446, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2473.31, -1376.27, 29.313, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 434, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(447, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2476.13, -1375.84, 28.835, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 435, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(448, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2487.34, -1366.62, 28.837, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 436, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(449, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2492.04, -1366.2, 29.313, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 437, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(450, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2495.53, -1366.2, 29.313, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 438, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(451, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2487.28, -1376.1, 29.313, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 439, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(452, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2492.01, -1375.83, 28.839, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(453, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2495.14, -1375.91, 29.065, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 441, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(454, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2495.5, -1383.71, 29.032, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 442, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(455, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2491.91, -1383.64, 28.839, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 443, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(456, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2487.28, -1383.66, 28.837, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 444, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(457, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2476.36, -1383.8, 28.835, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 445, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(458, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2473.05, -1383.65, 28.834, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 446, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(459, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2468.36, -1383.82, 28.828, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 447, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(460, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2468.38, -1391.22, 28.828, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 448, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(461, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2473.24, -1391.24, 28.834, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 449, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(462, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2476.33, -1391.39, 28.835, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 450, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(463, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2487.38, -1391.25, 28.837, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 451, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(464, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2492.45, -1391.26, 28.839, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 452, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(465, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2495.51, -1391.41, 28.839, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 453, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(466, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2495.37, -1399.07, 28.839, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 454, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(467, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2492.01, -1399.24, 28.839, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 455, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(468, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2487.29, -1399.22, 28.837, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(469, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2476.43, -1399.24, 28.835, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 457, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(470, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2473.08, -1399.28, 28.834, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 458, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(471, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2468.25, -1399.1, 28.836, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 459, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(472, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2468.27, -1410.02, 28.838, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 460, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(473, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2473.34, -1410.02, 28.834, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 461, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(474, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2476.3, -1410.03, 28.834, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 462, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(475, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2487.4, -1409.88, 28.837, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 463, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(476, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2492.22, -1410.03, 28.839, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 464, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(477, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2495.26, -1410.03, 28.839, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 465, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(478, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2495.26, -1417.88, 28.838, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 466, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(479, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2492.31, -1417.87, 28.838, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 467, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(480, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2487.24, -1417.73, 28.838, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 468, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(481, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2476.14, -1417.73, 28.838, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 469, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(482, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2473.04, -1417.73, 28.838, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 470, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(483, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2468.34, -1417.72, 28.838, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 471, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(484, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2468.56, -1424.27, 28.841, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 472, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(485, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2473.17, -1424.1, 28.841, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 473, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(486, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2476.6, -1424.18, 28.841, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 474, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(487, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2487.38, -1424.39, 29.016, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 475, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(488, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2492.09, -1424.58, 29.016, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 476, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(489, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2495.44, -1424.58, 29.016, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 477, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(490, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2522.97, -1343.61, 31.048, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 478, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(491, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2522.95, -1324.06, 34.16, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 479, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(492, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2521.4, -1281.8, 34.852, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 480, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Los Santos', 0, 0, 0),
(493, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2775.94, -1245.5, 49.494, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 481, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Beach', 0, 0, 0),
(494, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2797.96, -1245.37, 47.385, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 482, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Beach', 0, 0, 0),
(495, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2809.53, -1281.09, 43.898, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 483, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Beach', 0, 0, 0),
(496, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2809.52, -1302.77, 38.929, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 484, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Beach', 0, 0, 0),
(497, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2809.53, -1324.76, 33.875, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 485, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Beach', 0, 0, 0),
(498, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2807.95, -1354.1, 27.213, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 486, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Beach', 0, 0, 0),
(499, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2807.99, -1369.72, 23.583, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 487, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Beach', 0, 0, 0),
(500, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2781.94, -1358.46, 26.37, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 488, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Beach', 0, 0, 0),
(501, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2781.95, -1333.44, 32.392, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 489, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Beach', 0, 0, 0),
(502, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2782.5, -1306.52, 38.695, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 490, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Beach', 0, 0, 0),
(503, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2782.15, -1281.46, 44.376, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 491, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Beach', 0, 0, 0),
(504, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2757.59, -1572.51, 18.929, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 492, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Beach', 0, 0, 0),
(505, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2758.56, -1540.6, 25.611, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 493, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Beach', 0, 0, 0),
(506, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2759.9, -1506.93, 29.056, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 494, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Beach', 0, 0, 0),
(507, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2759.9, -1511.08, 28.657, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 495, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Beach', 0, 0, 0),
(508, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1516.23, -1881.85, 13.539, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verdant Bluffs', 0, 0, 0),
(509, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1508.95, -1881.85, 13.539, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 497, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verdant Bluffs', 0, 0, 0),
(510, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1501.54, -1881.85, 13.539, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 498, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verdant Bluffs', 0, 0, 0),
(511, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1494.19, -1881.85, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 499, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verdant Bluffs', 0, 0, 0),
(512, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1486.78, -1881.85, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verdant Bluffs', 0, 0, 0),
(513, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1478.93, -1881.85, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 501, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verdant Bluffs', 0, 0, 0),
(514, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1471.16, -1881.85, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 502, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verdant Bluffs', 0, 0, 0),
(515, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1463.38, -1881.85, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 503, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verdant Bluffs', 0, 0, 0),
(516, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1455.84, -1881.85, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 504, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verdant Bluffs', 0, 0, 0),
(517, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1448.13, -1881.85, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verdant Bluffs', 0, 0, 0),
(518, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1440.22, -1881.85, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 506, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verdant Bluffs', 0, 0, 0),
(519, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1579.86, -1800.2, 13.247, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 507, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(520, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1580.01, -1797.17, 13.23, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 508, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(521, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1580.02, -1793.25, 13.208, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 509, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(522, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1580.02, -1788.8, 13.204, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(523, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1580.02, -1785.63, 13.19, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 511, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(524, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1580.02, -1782.72, 13.177, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(525, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1580.02, -1779.79, 13.161, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 513, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(526, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1580.02, -1776.08, 13.142, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 514, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(527, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1621.14, -1582.7, 13.719, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 515, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(528, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1616.87, -1582.83, 13.719, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 516, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(529, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1625.06, -1582.67, 13.719, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 517, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(530, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1629.55, -1582.77, 13.703, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 518, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(531, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1675.49, -1629.21, 14.227, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 519, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(532, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1675.41, -1632.68, 14.227, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 520, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(533, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1675.41, -1636.26, 14.227, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 521, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(534, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1675.41, -1639.88, 14.227, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 522, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(535, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1699.98, -1636.07, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 523, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(536, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1700.02, -1640.6, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(537, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1700.04, -1646.32, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 525, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(538, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1700.09, -1651.43, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 526, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(539, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1700.11, -1656.12, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 527, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(540, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1700.12, -1661.26, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 528, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(541, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1700.14, -1665.9, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 529, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(542, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1700.14, -1670.96, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 530, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(543, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1700.15, -1676.71, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 531, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(544, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1700.21, -1681.3, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 532, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(545, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1699.73, -1667.83, 20.208, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 533, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(546, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1738.77, -1669.5, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 534, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(547, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1738.66, -1665, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 535, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(548, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1738.72, -1659.07, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 536, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(549, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1738.74, -1654.67, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 537, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(550, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1738.8, -1648.97, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 538, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(551, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1738.82, -1644.83, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 539, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(552, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1738.84, -1639.12, 13.555, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 540, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(553, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1738.84, -1634.85, 13.555, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 541, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(554, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1704.13, -1578.67, 13.888, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 542, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(555, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1733.01, -1582.02, 14.155, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 543, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(556, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1739.81, -1582.02, 14.152, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 544, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0);
INSERT INTO `propertys` (`iSQLID`, `iOwnerSQLID`, `iGarageSqlID`, `iOwned`, `iOnAuction`, `iOwner`, `iMoney`, `iUsage`, `iNeaktivnost`, `iEnter1`, `iEnter2`, `iEnter3`, `iExit1`, `iExit2`, `iExit3`, `iPrice`, `iLevel`, `iLocked`, `iVrsta`, `iInterior`, `iVW`, `iOruzje1`, `iOruzje2`, `iOruzje3`, `iOruzje4`, `iMunicija1`, `iMunicija2`, `iMunicija3`, `iMunicija4`, `iDrugAmmount`, `iMats`, `iAlarm`, `iDoorLevel`, `iLockLevel`, `iTime`, `iAdress`, `iRentable`, `iRentPrice`, `iRentovano`) VALUES
(557, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1781.56, -1720.74, 13.548, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 545, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Little Mexico', 0, 0, 0),
(558, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1773.92, -1720.74, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 546, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Little Mexico', 0, 0, 0),
(559, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2067.42, -1731.37, 13.876, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 547, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(560, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2066.24, -1717.09, 14.136, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 548, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(561, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2065.1, -1703.7, 14.148, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 549, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(562, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2151.41, -1672.26, 15.086, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 550, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(563, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2143.78, -1662.92, 15.086, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 551, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(564, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2156.07, -1651.88, 15.078, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 552, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(565, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2163.72, -1661.24, 15.086, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 553, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(566, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2178.44, -1660.13, 14.978, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 554, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(567, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2165.88, -1671.26, 15.073, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 555, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(568, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2157.13, -1709.07, 15.086, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 556, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(569, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2155.61, -1698.52, 15.086, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 557, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(570, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2140.81, -1708.31, 15.086, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 558, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(571, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2139.16, -1697.56, 15.086, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 559, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(572, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2151.86, -1717.84, 15.086, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 560, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(573, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2168.13, -1718.85, 15.154, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 561, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(574, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2127.82, -1687.99, 15.086, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 562, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(575, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2144.72, -1688.89, 15.086, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 563, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(576, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2185.47, -1608.21, 14.359, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 564, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(577, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2191.99, -1592.81, 14.352, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 565, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(578, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2172.59, -1615.3, 14.281, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 566, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(579, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2179.11, -1599.99, 14.346, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 567, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(580, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2165.18, -1590.4, 14.345, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 568, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(581, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2150.2, -1583.89, 14.336, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 569, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(582, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2136.19, -1592.04, 14.352, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 570, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(583, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2150.96, -1598.32, 14.346, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 571, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(584, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2158.26, -1611.28, 14.351, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 572, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(585, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2143.24, -1604.77, 14.352, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 573, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(586, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2235.7, -1882.11, 14.234, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 574, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Willowfield', 0, 0, 0),
(587, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2241.78, -1882.07, 14.234, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 575, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Willowfield', 0, 0, 0),
(588, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2248.3, -1882.02, 14.234, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Willowfield', 0, 0, 0),
(589, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2251, -1882.14, 14.234, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 577, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Willowfield', 0, 0, 0),
(590, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2260.14, -1882.01, 14.234, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 578, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Willowfield', 0, 0, 0),
(591, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2262.88, -1882.02, 14.234, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 579, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Willowfield', 0, 0, 0),
(592, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2268.62, -1882.01, 14.234, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 580, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Willowfield', 0, 0, 0),
(593, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2269.89, -1882.01, 14.234, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 581, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Willowfield', 0, 0, 0),
(594, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2275.59, -1882.09, 14.234, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 582, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Willowfield', 0, 0, 0),
(595, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2278.34, -1882.01, 14.234, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 583, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Willowfield', 0, 0, 0),
(596, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2287.43, -1882.01, 14.234, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 584, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Willowfield', 0, 0, 0),
(597, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2290.14, -1882.01, 14.234, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 585, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Willowfield', 0, 0, 0),
(598, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2295.84, -1882.01, 14.234, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 586, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Willowfield', 0, 0, 0),
(599, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2297.14, -1882.01, 14.234, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 587, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Willowfield', 0, 0, 0),
(600, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2302.9, -1882.17, 14.234, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Willowfield', 0, 0, 0),
(601, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2305.8, -1882.02, 14.234, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 589, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Willowfield', 0, 0, 0),
(602, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2284.72, -1906.6, 14.93, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 590, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Willowfield', 0, 0, 0),
(603, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2261.3, -1906.62, 14.938, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 591, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Willowfield', 0, 0, 0),
(604, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2238.07, -1906.79, 14.938, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 592, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Willowfield', 0, 0, 0),
(605, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2333.27, -1943.23, 14.969, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 593, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Willowfield', 0, 0, 0),
(606, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2696.33, -1990.36, 14.223, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Willowfield', 0, 0, 0),
(607, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2672.6, -1989.47, 14.324, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 595, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Willowfield', 0, 0, 0),
(608, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2652.81, -1989.46, 13.999, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 596, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Willowfield', 0, 0, 0),
(609, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2637.07, -1991.76, 14.324, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 597, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Willowfield', 0, 0, 0),
(610, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2635.66, -2012.92, 14.144, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 598, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Willowfield', 0, 0, 0),
(611, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2650.7, -2021.72, 14.177, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 599, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Willowfield', 0, 0, 0),
(612, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2673.04, -2020.17, 14.168, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Willowfield', 0, 0, 0),
(613, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2695.25, -2020.46, 14.022, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 601, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Willowfield', 0, 0, 0),
(614, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2736.48, -1926.18, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 602, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Playa del Seville', 0, 0, 0),
(615, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2736.58, -1952.69, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 603, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Playa del Seville', 0, 0, 0),
(616, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2751.57, -1962.83, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 604, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Playa del Seville', 0, 0, 0),
(617, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2751.54, -1936.54, 13.539, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 605, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Playa del Seville', 0, 0, 0),
(618, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2787.07, -1953.01, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 606, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Playa del Seville', 0, 0, 0),
(619, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2786.92, -1926.39, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 607, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Playa del Seville', 0, 0, 0),
(620, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2801.97, -1962.97, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 608, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Playa del Seville', 0, 0, 0),
(621, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2801.93, -1936.55, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 609, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Playa del Seville', 0, 0, 0),
(622, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2820.65, -1603.12, 11.044, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 610, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Beach', 0, 0, 0),
(623, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2814.33, -1618.02, 10.937, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 611, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Beach', 0, 0, 0),
(624, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2812.6, -1624.97, 11.068, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 612, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Beach', 0, 0, 0),
(625, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2812.06, -1631.03, 11.013, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 613, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Beach', 0, 0, 0),
(626, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2811.48, -1637.42, 10.953, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 614, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Beach', 0, 0, 0),
(627, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 2810.89, -1643.96, 10.883, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 615, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'East Beach', 0, 0, 0),
(628, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2625.94, -1112.61, 67.995, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(629, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2626, -1098.77, 69.355, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 617, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(630, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2627.81, -1084.94, 69.616, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 618, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(631, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2628.11, -1067.84, 69.716, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 619, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(632, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2613.37, -1065.89, 69.966, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 620, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(633, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2612.91, -1083.17, 69.966, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 621, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(634, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2611.16, -1097.35, 69.605, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 622, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(635, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2611.24, -1110.97, 68.245, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 623, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(636, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 2591.48, -1072.72, 69.832, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 624, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', 0, 0, 0),
(637, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 653.074, -1619.98, 15, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(638, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 655.922, -1635.87, 15.862, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 626, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(639, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 657.229, -1652.83, 15.406, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 627, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(640, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 652.664, -1694.03, 14.55, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 628, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(641, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 653.553, -1714.25, 14.765, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 629, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(642, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 693.237, -1602.77, 15.047, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 630, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(643, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 766.919, -1605.7, 13.804, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 631, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(644, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 768.045, -1655.8, 5.609, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 632, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(645, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 769.218, -1696.59, 5.155, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 633, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(646, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 769.223, -1745.82, 13.077, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 634, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(648, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 901.472, -1514.66, 14.364, -1036.53, -2205.94, 1501.09, 1000000, 5, 1, 3, 7, 635, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(649, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 903.564, -1512.94, 14.363, -1036.53, -2205.94, 1501.09, 1000000, 5, 1, 3, 7, 636, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(650, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 878.065, -1514.69, 14.344, -1036.53, -2205.94, 1501.09, 1000000, 5, 1, 3, 7, 637, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(651, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 876.21, -1512.59, 14.35, -1036.53, -2205.94, 1501.09, 1000000, 5, 1, 3, 7, 638, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(652, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 849.581, -1520.09, 14.348, -1036.53, -2205.94, 1501.09, 1000000, 5, 1, 3, 7, 639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(653, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 900.386, -1470.69, 14.351, -1036.53, -2205.94, 1501.09, 1000000, 5, 1, 3, 7, 640, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(654, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 898.658, -1473, 14.349, -1036.53, -2205.94, 1501.09, 1000000, 5, 1, 3, 7, 641, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(655, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 822.471, -1505.52, 14.397, -1036.53, -2205.94, 1501.09, 1000000, 5, 1, 3, 7, 642, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(656, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 807.079, -1554.04, 13.634, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 643, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(657, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 829.403, -1554.19, 13.485, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 644, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(658, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 761.241, -1564.04, 13.929, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 645, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(659, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 771.161, -1510.69, 13.547, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 646, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(660, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 782.859, -1463.84, 13.547, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 647, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(661, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 739.165, -1418.5, 13.523, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 648, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(663, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 725.659, -1440.45, 13.532, -1036.53, -2205.94, 1501.09, 1000000, 5, 1, 3, 7, 649, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(664, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 675.139, -1430.47, 14.852, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(665, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 662.436, -1440.24, 14.852, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 651, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(666, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 662.448, -1466.92, 14.852, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 652, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(667, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 662.467, -1487.33, 14.852, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 653, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(668, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 662.458, -1513.49, 14.852, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 654, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(669, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 662.456, -1535.23, 14.852, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 655, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(670, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 657.26, -1528.44, 14.852, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 656, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(671, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 648.808, -1536.41, 14.944, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 657, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(672, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 611.112, -1640.22, 16.36, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 658, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rodeo', 0, 0, 0),
(673, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 617.433, -1634.92, 16.565, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rodeo', 0, 0, 0),
(674, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 619.036, -1626.5, 16.762, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 660, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rodeo', 0, 0, 0),
(675, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 614.642, -1619.32, 16.635, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 661, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rodeo', 0, 0, 0),
(676, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 606.714, -1616.56, 16.398, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 662, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rodeo', 0, 0, 0),
(677, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1051.86, -1562.63, 13.539, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 663, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(678, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1055.04, -1562.63, 13.539, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 664, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(679, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1061.46, -1562.65, 13.539, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 665, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(680, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1064.7, -1562.72, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 666, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(681, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1077.55, -1562.66, 13.539, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 667, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(682, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1090.1, -1562.67, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 668, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(683, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1093.29, -1562.62, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 669, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(684, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1099.62, -1562.69, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 670, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(685, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1103.02, -1562.76, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 671, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(686, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1109.27, -1562.78, 13.539, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 672, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(687, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1112.54, -1562.62, 13.537, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 673, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(688, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1141.02, -1562.68, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 674, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(689, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1144.21, -1562.62, 13.546, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 675, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(690, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1150.45, -1562.63, 13.545, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 676, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(691, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1153.6, -1562.68, 13.544, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 677, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(692, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1160.2, -1562.64, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 678, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(693, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1163.34, -1562.77, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 679, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(694, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1168.87, -1562.78, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 680, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(695, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1172.99, -1562.65, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 681, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(696, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1178.41, -1562.77, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 682, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(697, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1181.62, -1562.62, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 683, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(698, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1186.65, -1549.71, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 684, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(699, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1186.62, -1539.85, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 685, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(700, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1186.48, -1529.68, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 686, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(701, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1186.64, -1516.11, 13.545, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 687, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(702, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1186.64, -1513.03, 13.541, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 688, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(703, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1186.63, -1505.58, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 689, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(704, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1186.47, -1502.8, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(705, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1186.51, -1475.98, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 691, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(706, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1186.51, -1473.02, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 692, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(707, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1186.56, -1465.94, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 693, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(708, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1186.55, -1463.03, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 694, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(709, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1186.75, -1456.11, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 695, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(710, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1186.58, -1452.64, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 696, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(711, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1186.6, -1445.75, 13.524, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 697, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(712, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1186.64, -1442.86, 13.502, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 698, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(713, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1186.79, -1435.28, 13.461, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 699, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(714, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1186.64, -1432.35, 13.453, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(715, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1265.16, -1424.84, 14.953, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 701, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(716, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1272.94, -1424.85, 14.953, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 702, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(717, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1280.8, -1424.85, 14.953, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 703, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(718, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1288.43, -1424.86, 14.953, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 704, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(719, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1296.28, -1424.73, 14.953, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 705, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(720, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1304.34, -1424.63, 14.953, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 706, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(721, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1311.7, -1424.73, 14.953, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 707, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(722, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1320, -1424.73, 14.972, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 708, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(723, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1323.91, -1428.41, 14.981, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 709, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(724, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1323.83, -1435, 14.967, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 710, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(725, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1310.27, -1438.49, 14.958, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 711, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(726, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1300.53, -1438.49, 14.958, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 712, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(727, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1289.94, -1438.49, 14.958, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 713, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(728, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1279.96, -1438.49, 14.958, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 714, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(729, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1308.14, -1468.55, 10.047, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 715, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(730, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1300.04, -1471.79, 10.047, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 716, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(731, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1279.32, -1471.79, 10.047, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 717, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(732, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1271.33, -1468.56, 10.047, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 718, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(733, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1284.7, -1464.88, 10.047, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 719, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(734, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1299.83, -1464.88, 10.047, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 720, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(735, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1279.43, -1501.33, 10.047, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 721, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(736, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1269.41, -1501.16, 10.047, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 722, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(737, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1268.89, -1508.28, 10.047, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 723, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(738, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1279.06, -1508.24, 10.047, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 724, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Market', 0, 0, 0),
(739, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1322.07, -1583.63, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 725, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(740, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1322.11, -1586.04, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 726, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(741, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1322.11, -1588.41, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 727, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(742, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1322.11, -1590.93, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 728, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(743, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1322.11, -1593.42, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 729, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(744, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1322.11, -1595.94, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 730, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(745, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1322.11, -1598.35, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 731, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(746, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1322.11, -1600.69, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 732, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(747, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1322.11, -1603.34, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 733, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(748, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1322.11, -1605.24, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 734, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(749, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1322.11, -1607.1, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 735, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(750, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1322.11, -1608.81, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 736, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(751, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1322.11, -1610.63, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 737, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(752, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1322.11, -1613.24, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 738, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(753, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1322.11, -1615.55, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 739, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(754, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1322.11, -1617.89, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 740, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(755, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1322.11, -1620.23, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 741, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(756, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1322.11, -1622.96, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(757, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1322.11, -1628.81, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 743, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(758, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1218.9, -1745.53, 13.596, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 744, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Conference Center', 0, 0, 0),
(759, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1216.27, -1746.93, 13.595, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 745, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Conference Center', 0, 0, 0),
(760, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1214.17, -1748.27, 13.595, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 746, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Conference Center', 0, 0, 0),
(761, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1211.65, -1750.19, 13.594, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 747, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Conference Center', 0, 0, 0),
(762, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1209.36, -1752.56, 13.594, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 748, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Conference Center', 0, 0, 0),
(763, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1207.56, -1754.81, 13.588, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 749, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Conference Center', 0, 0, 0),
(764, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1206.01, -1757.32, 13.583, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Conference Center', 0, 0, 0),
(765, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1204.83, -1759.85, 13.588, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 751, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Conference Center', 0, 0, 0),
(766, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1156.32, -1772.68, 16.599, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 752, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Conference Center', 0, 0, 0),
(767, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1153.99, -1772.68, 16.599, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 753, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Conference Center', 0, 0, 0),
(768, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1151.99, -1772.68, 16.599, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 754, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Conference Center', 0, 0, 0),
(769, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1111.92, -1792.66, 16.594, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 755, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Conference Center', 0, 0, 0),
(770, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1111.92, -1795.69, 16.594, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 756, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Conference Center', 0, 0, 0),
(771, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1111.92, -1798.45, 16.594, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 757, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Conference Center', 0, 0, 0),
(772, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1111.92, -1800.83, 16.594, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 758, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Conference Center', 0, 0, 0),
(773, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 943.052, -1742.74, 13.555, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 759, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(774, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 941.094, -1731.51, 13.966, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 760, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(775, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 987.373, -1704.3, 14.93, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 761, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(776, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 987.49, -1624.3, 14.93, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 762, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(777, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 893.483, -1635.88, 14.93, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 763, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(778, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 865.18, -1633.85, 14.93, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 764, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verona Beach', 0, 0, 0),
(779, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1419.33, -1623.92, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 765, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(780, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1419.35, -1607.31, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 766, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(781, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1419.18, -1640.42, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 767, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(782, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1416.12, -1672.53, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(783, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1416.08, -1677.84, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 769, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(784, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1416.11, -1682.36, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 770, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(785, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1416.23, -1686.79, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 771, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(786, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1411.51, -1699.59, 13.539, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 772, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(787, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1872.47, -2132.9, 15.482, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 773, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'El Corona', 0, 0, 0),
(788, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1851.83, -2134.83, 15.388, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 774, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'El Corona', 0, 0, 0),
(789, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1894.04, -2133.2, 15.466, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 775, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'El Corona', 0, 0, 0),
(790, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1873.25, -2070.76, 15.497, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 776, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'El Corona', 0, 0, 0),
(791, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1851.97, -2070.46, 15.481, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 777, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'El Corona', 0, 0, 0),
(792, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1895.19, -2068.91, 15.669, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 778, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'El Corona', 0, 0, 0),
(793, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1804.15, -2124.9, 13.942, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 779, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'El Corona', 0, 0, 0),
(794, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1801.64, -2098.94, 14.021, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 780, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'El Corona', 0, 0, 0),
(795, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1781.4, -2101.42, 14.057, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 781, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'El Corona', 0, 0, 0),
(796, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1781.85, -2126.51, 14.068, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 782, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'El Corona', 0, 0, 0),
(797, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1762.35, -2102.05, 13.857, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 783, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'El Corona', 0, 0, 0),
(798, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1761.22, -2125.45, 14.057, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 784, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'El Corona', 0, 0, 0),
(799, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1734.05, -2097.98, 14.037, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 785, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'El Corona', 0, 0, 0),
(800, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1734.6, -2130.36, 14.021, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 786, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'El Corona', 0, 0, 0),
(801, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1711.68, -2101.33, 14.021, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 787, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'El Corona', 0, 0, 0),
(802, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1684.9, -2098.33, 13.834, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 788, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verdant Bluffs', 0, 0, 0),
(803, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1714.8, -2125.45, 14.057, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 789, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'El Corona', 0, 0, 0),
(804, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1673.62, -2122.4, 14.146, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 790, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verdant Bluffs', 0, 0, 0),
(805, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1695.51, -2125.84, 13.81, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 791, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'El Corona', 0, 0, 0),
(806, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1667.56, -2107.02, 14.072, 2180.95, -567.4, 1502.01, 750000, 5, 1, 2, 12, 792, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verdant Bluffs', 0, 0, 0),
(807, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1543.17, -1262.19, 17.406, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 793, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Downtown Los Santos', 0, 0, 0),
(808, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1544.7, -1265.69, 17.405, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 794, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Downtown Los Santos', 0, 0, 0),
(809, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1546.58, -1268.53, 17.406, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 795, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Downtown Los Santos', 0, 0, 0),
(810, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1549.22, -1271.01, 17.406, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 796, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Downtown Los Santos', 0, 0, 0),
(811, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1552.19, -1272.73, 17.406, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 797, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Downtown Los Santos', 0, 0, 0),
(812, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1556.13, -1273.83, 17.406, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 798, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Downtown Los Santos', 0, 0, 0),
(813, 1, -1, 1, 0, 'ogy', 0, 1, 0, 2732.36, 728.392, 10.928, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 799, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 5, 4, 0, 'Rockshore East', 0, 0, 0),
(814, 1, -1, 1, 0, 'ogy', 0, 2, 0, 2719.6, 722.835, 14.798, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rockshore East', 0, 0, 0),
(815, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1475.79, -1352.84, 11.883, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 801, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Downtown Los Santos', 0, 0, 0),
(816, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1475.8, -1367.6, 11.883, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 802, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Downtown Los Santos', 0, 0, 0),
(817, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1475.8, -1359.91, 11.883, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 803, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Downtown Los Santos', 0, 0, 0),
(818, 1, -1, 1, 0, 'ogy', 0, 3, 0, 2719.6, 747.497, 14.798, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 804, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rockshore East', 0, 0, 0),
(819, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1692.41, -1458.75, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 805, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(820, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1685.14, -1464.56, 13.672, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 806, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(821, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1675.62, -1462.26, 13.672, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 807, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Commerce', 0, 0, 0),
(823, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 790.819, -1661.15, 13.484, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 808, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(824, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 794.86, -1692.09, 14.463, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 809, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(825, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 794.001, -1707.53, 14.038, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 810, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(826, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 797.634, -1729.26, 13.547, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 811, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(827, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 791.418, -1753.21, 13.461, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 812, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(828, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 768.979, -1726.23, 13.432, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 813, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(829, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 693.547, -1705.79, 3.819, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 814, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(830, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 694.808, -1690.73, 4.346, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 815, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(831, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1382.03, -1088.86, 28.089, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Downtown Los Santos', 0, 0, 0),
(832, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 648.822, -1489.53, 14.84, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 817, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(833, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 648.854, -1442.41, 14.728, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 818, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(834, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 657.259, -1434.11, 14.852, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 819, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0);
INSERT INTO `propertys` (`iSQLID`, `iOwnerSQLID`, `iGarageSqlID`, `iOwned`, `iOnAuction`, `iOwner`, `iMoney`, `iUsage`, `iNeaktivnost`, `iEnter1`, `iEnter2`, `iEnter3`, `iExit1`, `iExit2`, `iExit3`, `iPrice`, `iLevel`, `iLocked`, `iVrsta`, `iInterior`, `iVW`, `iOruzje1`, `iOruzje2`, `iOruzje3`, `iOruzje4`, `iMunicija1`, `iMunicija2`, `iMunicija3`, `iMunicija4`, `iDrugAmmount`, `iMats`, `iAlarm`, `iDoorLevel`, `iLockLevel`, `iTime`, `iAdress`, `iRentable`, `iRentPrice`, `iRentovano`) VALUES
(835, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 813.687, -1456.69, 14.227, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 820, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(836, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 784.598, -1436.04, 13.547, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 821, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(837, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 248.181, -1456.77, 13.91, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 822, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rodeo', 0, 0, 0),
(838, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 251.239, -1454.37, 13.968, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 823, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rodeo', 0, 0, 0),
(839, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 262.788, -1447.04, 13.874, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 824, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rodeo', 0, 0, 0),
(840, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 270.191, -1441.69, 13.962, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 825, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rodeo', 0, 0, 0),
(841, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1425.56, -1180.18, 25.992, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 826, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Downtown Los Santos', 0, 0, 0),
(842, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1422.42, -1180.18, 25.992, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 827, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Downtown Los Santos', 0, 0, 0),
(843, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1418.53, -1180.18, 25.992, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 828, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Downtown Los Santos', 0, 0, 0),
(844, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 279.584, -1435.42, 13.981, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 829, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rodeo', 0, 0, 0),
(845, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 283.055, -1433.65, 13.996, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 830, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rodeo', 0, 0, 0),
(846, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 293.179, -1429.82, 14, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 831, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rodeo', 0, 0, 0),
(847, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 336.732, -1359.07, 14.508, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 832, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rodeo', 0, 0, 0),
(848, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 334.417, -1354.86, 14.508, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 833, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Richman', 0, 0, 0),
(849, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 332.06, -1350.53, 14.508, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 834, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Richman', 0, 0, 0),
(850, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 335.298, -1361.57, 17.96, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 835, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rodeo', 0, 0, 0),
(851, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 334.419, -1360.07, 17.96, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 836, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Richman', 0, 0, 0),
(852, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 333.81, -1358.15, 17.958, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 837, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Richman', 0, 0, 0),
(853, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 332.779, -1356.24, 17.957, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 838, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Richman', 0, 0, 0),
(854, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 331.516, -1354.26, 17.957, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 839, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Richman', 0, 0, 0),
(855, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 330.289, -1352.49, 17.957, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 840, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Richman', 0, 0, 0),
(856, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 329.535, -1351.12, 17.956, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 841, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Richman', 0, 0, 0),
(858, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1284.57, -1861.62, 13.539, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 842, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verdant Bluffs', 0, 0, 0),
(859, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1279.65, -1861.62, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 843, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verdant Bluffs', 0, 0, 0),
(860, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1274.79, -1861.62, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 844, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verdant Bluffs', 0, 0, 0),
(861, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 327.696, -1347.73, 17.955, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 845, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Richman', 0, 0, 0),
(862, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 326.981, -1346.34, 17.954, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 846, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Richman', 0, 0, 0),
(863, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1269.63, -1861.48, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 847, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verdant Bluffs', 0, 0, 0),
(864, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1235.28, -1861.62, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 848, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verdant Bluffs', 0, 0, 0),
(865, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1230.69, -1861.62, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 849, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verdant Bluffs', 0, 0, 0),
(866, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 328.734, -1349.66, 17.956, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 850, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Richman', 0, 0, 0),
(867, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1222.06, -1811.87, 16.594, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 851, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Conference Center', 0, 0, 0),
(868, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1219.27, -1811.7, 16.594, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 852, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Conference Center', 0, 0, 0),
(869, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1216.45, -1811.71, 16.594, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 853, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Conference Center', 0, 0, 0),
(870, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1240.92, -1861.62, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 854, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verdant Bluffs', 0, 0, 0),
(871, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1245.97, -1861.62, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 855, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verdant Bluffs', 0, 0, 0),
(872, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 349.55, -1342.16, 17.959, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 856, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rodeo', 0, 0, 0),
(873, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1250.17, -1861.62, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 857, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verdant Bluffs', 0, 0, 0),
(874, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1253.26, -1861.56, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 858, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verdant Bluffs', 0, 0, 0),
(875, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 348.48, -1340.19, 17.958, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 859, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rodeo', 0, 0, 0),
(876, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1256.44, -1861.62, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 860, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verdant Bluffs', 0, 0, 0),
(877, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1260.55, -1861.62, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 861, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verdant Bluffs', 0, 0, 0),
(878, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 347.339, -1338.25, 17.957, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 862, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rodeo', 0, 0, 0),
(879, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1265.18, -1861.62, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 863, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verdant Bluffs', 0, 0, 0),
(880, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 346.286, -1336.42, 17.957, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 864, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rodeo', 0, 0, 0),
(881, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1188.45, -1861.12, 13.545, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 865, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verdant Bluffs', 0, 0, 0),
(882, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1183.32, -1861.12, 13.545, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 866, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verdant Bluffs', 0, 0, 0),
(883, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1178.49, -1861.12, 13.545, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 867, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verdant Bluffs', 0, 0, 0),
(884, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1173.46, -1861.12, 13.545, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 868, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Verdant Bluffs', 0, 0, 0),
(885, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 329.743, -1346.28, 14.508, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 869, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Richman', 0, 0, 0),
(886, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 331.946, -1337.54, 14.508, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 870, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Richman', 0, 0, 0),
(887, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 335.87, -1335.4, 14.508, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 871, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rodeo', 0, 0, 0),
(888, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 339.806, -1333.25, 14.508, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 872, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rodeo', 0, 0, 0),
(889, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 342.146, -1333.86, 14.508, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 873, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rodeo', 0, 0, 0),
(890, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 344.468, -1338.05, 14.512, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 874, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rodeo', 0, 0, 0),
(891, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 346.863, -1342.44, 14.508, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 875, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rodeo', 0, 0, 0),
(892, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 349.017, -1346.65, 14.508, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 876, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rodeo', 0, 0, 0),
(893, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 351.468, -1350.89, 14.508, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 877, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rodeo', 0, 0, 0),
(894, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 673.078, -1020.14, 55.76, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 878, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Richman', 0, 0, 0),
(895, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 648.354, -1058.65, 52.58, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 879, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Richman', 0, 0, 0),
(896, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 646.076, -1117.33, 44.207, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 880, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Richman', 0, 0, 0),
(897, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 612.004, -1086.04, 58.827, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 881, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Richman', 0, 0, 0),
(898, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 558.773, -1161.06, 54.43, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 882, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Richman', 0, 0, 0),
(899, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1853.95, -1914.27, 15.257, -2169.97, -2135.96, 1501.1, 500000, 5, 1, 1, 8, 883, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'El Corona', 0, 0, 0),
(900, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1872.15, -1911.8, 15.257, -2169.97, -2135.96, 1501.1, 500000, 5, 1, 1, 8, 884, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'El Corona', 0, 0, 0),
(901, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1891.92, -1914.4, 15.257, -2169.97, -2135.96, 1501.1, 500000, 5, 1, 1, 8, 885, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'El Corona', 0, 0, 0),
(902, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1913.54, -1911.92, 15.257, -2169.97, -2135.96, 1501.1, 500000, 5, 1, 1, 8, 886, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'El Corona', 0, 0, 0),
(903, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1928.61, -1915.91, 15.257, -2169.97, -2135.96, 1501.1, 500000, 5, 1, 1, 8, 887, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'El Corona', 0, 0, 0),
(904, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1938.54, -1911.28, 15.257, -2169.97, -2135.96, 1501.1, 500000, 5, 1, 1, 8, 888, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'El Corona', 0, 0, 0),
(905, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2203.11, -89.195, 28.154, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 889, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(906, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2197.27, -60.745, 28.154, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 890, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(907, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2199.95, -37.402, 28.154, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 891, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(908, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2245.42, -1.661, 28.154, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 892, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(909, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2253.89, -1.66, 28.154, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 893, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(910, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2270.45, -7.501, 28.154, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 894, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(911, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2313.91, -124.964, 28.154, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 895, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(912, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2322.36, -124.965, 28.154, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 896, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(913, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2293.87, -124.961, 28.154, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 897, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(914, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2272.34, -119.134, 28.154, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 898, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(915, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2245.54, -122.291, 28.154, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 899, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(916, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2367.41, -49.127, 28.154, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(917, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2384.06, -54.964, 28.154, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 901, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(918, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2392.38, -54.965, 28.154, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 902, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(919, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2415.5, -52.284, 28.154, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 903, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(920, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2438.91, -54.965, 28.154, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 904, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(921, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2448.45, -11.02, 27.683, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 905, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(922, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2484.52, -28.404, 28.442, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 906, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(923, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2513.38, -28.404, 28.442, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 907, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(924, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2509.42, 11.763, 28.442, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 908, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(925, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2488.35, 11.763, 28.442, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 909, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(926, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2446.63, 18.872, 27.683, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 910, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(927, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2439.57, 24.505, 27.683, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 911, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(928, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2411.22, 21.851, 27.683, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 912, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(929, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2417.01, 17.957, 27.683, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 913, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(930, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2411.22, -5.531, 27.683, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 914, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(931, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2373.85, -8.636, 28.442, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 915, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(932, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2373.85, 22.066, 28.442, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 916, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(933, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2373.85, 42.23, 28.442, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 917, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(934, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2373.85, 71.193, 28.442, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 918, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(935, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2398.3, 111.763, 28.442, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 919, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(936, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2364, 116.169, 28.442, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 920, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(937, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2364, 142.061, 28.442, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 921, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(938, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2323.85, 116.189, 28.442, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 922, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(939, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2323.85, 136.37, 28.442, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 923, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(940, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2323.85, 162.28, 28.442, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 924, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(941, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2364, 166.172, 28.442, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 925, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(942, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2363.85, 187.254, 28.442, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 926, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(943, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2323.85, 191.094, 28.442, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 927, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(944, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2443.85, 92.159, 28.442, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 928, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(945, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2458.82, 128.988, 27.676, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 929, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(946, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2480.68, 126.995, 27.676, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 930, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(947, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2518.43, 128.988, 27.676, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 931, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(948, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2536.3, 128.988, 27.683, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 932, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(949, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2514.02, 94.395, 27.683, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 933, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(950, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2551.22, 91.831, 27.676, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 934, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(951, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2551.22, 57.144, 27.676, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 935, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(952, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2518.62, 58.364, 27.683, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 936, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(953, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2481.22, 64.331, 27.683, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 937, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(954, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2479.57, 94.395, 27.683, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 938, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(955, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2509.42, 18.463, 28.442, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 939, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(956, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2488.42, 18.464, 28.442, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 940, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(957, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2549.23, 25.144, 27.676, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 941, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(958, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 2551.22, -5.346, 27.676, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 942, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Palomino Creek', 0, 0, 0),
(959, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 743.268, -509.318, 18.013, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 943, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dillimore', 0, 0, 0),
(960, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 745.216, -556.785, 18.013, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 944, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dillimore', 0, 0, 0),
(961, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 766.563, -556.785, 18.013, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 945, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dillimore', 0, 0, 0),
(962, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 768.332, -503.481, 18.013, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 946, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dillimore', 0, 0, 0),
(963, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 742.314, -495.619, 18.013, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 947, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dillimore', 0, 0, 0),
(964, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 776.621, -503.481, 18.013, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 948, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dillimore', 0, 0, 0),
(965, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 795.125, -506.148, 18.013, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 949, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dillimore', 0, 0, 0),
(966, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 818.178, -509.318, 18.013, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 950, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dillimore', 0, 0, 0),
(967, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 745.675, -591.043, 18.013, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 951, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dillimore', 0, 0, 0),
(968, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 746.106, -570.54, 18.013, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 952, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dillimore', 0, 0, 0),
(969, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 736.633, -556.784, 18.013, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 953, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dillimore', 0, 0, 0),
(970, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 672.064, -646.889, 16.336, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 954, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dillimore', 0, 0, 0),
(971, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 672.063, -635.123, 16.336, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 955, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dillimore', 0, 0, 0),
(972, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 672.063, -631.974, 16.336, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 956, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dillimore', 0, 0, 0),
(973, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 672.063, -627.914, 16.336, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 957, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dillimore', 0, 0, 0),
(974, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 691.363, -640.485, 16.322, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 958, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dillimore', 0, 0, 0),
(975, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 691.363, -636.354, 16.322, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 959, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dillimore', 0, 0, 0),
(976, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 691.363, -633.113, 16.336, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 960, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dillimore', 0, 0, 0),
(977, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 691.363, -625.704, 16.336, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 961, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dillimore', 0, 0, 0),
(978, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 691.363, -621.523, 16.336, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 962, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dillimore', 0, 0, 0),
(979, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 691.363, -614.291, 16.336, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 963, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dillimore', 0, 0, 0),
(980, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 701.717, -609.749, 16.336, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 964, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dillimore', 0, 0, 0),
(981, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 661.694, -651.142, 16.388, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 965, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dillimore', 0, 0, 0),
(984, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1967.45, -1633.71, 18.569, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 966, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 1000, 0),
(985, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1972.18, -1633.71, 18.569, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 967, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(986, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1976.21, -1633.86, 18.569, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 968, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(987, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1967.42, -1633.71, 15.969, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 969, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(988, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1972.32, -1633.71, 15.969, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 970, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(989, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1976.21, -1633.96, 16.211, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 971, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(990, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1973.4, -1654.67, 15.969, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 972, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(991, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1969.48, -1654.67, 15.969, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 973, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(992, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1970.05, -1671.19, 18.546, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 974, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(993, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1974.8, -1671.19, 18.546, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 975, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(994, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1978.77, -1671.54, 18.546, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 976, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(995, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1969.99, -1671.19, 15.969, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 977, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(996, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1974.79, -1671.19, 15.969, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 978, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(997, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1978.77, -1671.39, 16.188, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 979, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(998, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1980.99, -1682.93, 17.054, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 980, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(999, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1980.38, -1719.11, 17.031, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 981, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(1000, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1973.39, -1705.14, 15.969, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 982, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(1001, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1969.3, -1705.14, 15.969, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 983, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Idlewood', 0, 0, 0),
(1005, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 976.584, -1070.57, 27.082, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 984, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temple', 0, 0, 0),
(1006, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 985.852, -1094.39, 27.604, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 985, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temple', 0, 0, 0),
(1007, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1141.81, -1069.97, 31.766, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 986, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temple', 0, 0, 0),
(1008, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1142.12, -1092.88, 28.188, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 987, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temple', 0, 0, 0),
(1009, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1183.47, -1098.96, 28.258, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 988, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temple', 0, 0, 0),
(1010, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1183.47, -1076.21, 31.679, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 989, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temple', 0, 0, 0),
(1011, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1857.02, -2040.86, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 990, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'El Corona', 0, 0, 0),
(1012, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1858.7, -2040.86, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 991, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'El Corona', 0, 0, 0),
(1013, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1906.01, -2040.85, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 992, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'El Corona', 0, 0, 0),
(1014, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1907.95, -2040.92, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 993, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'El Corona', 0, 0, 0),
(1015, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1895.52, -2019.6, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 994, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'El Corona', 0, 0, 0),
(1016, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1895.53, -2021.48, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 995, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'El Corona', 0, 0, 0),
(1017, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1870.91, -2021.22, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 996, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'El Corona', 0, 0, 0),
(1018, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1870.76, -2019.58, 13.547, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 997, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'El Corona', 0, 0, 0),
(1019, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 697.279, -1627.01, 3.749, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 998, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(1020, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 693.756, -1645.87, 4.094, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', 0, 0, 0),
(1021, 2, -1, 1, 0, 'sneaky1337', 0, 1, 8, 24.742, -1173.65, 10.745, -1036.53, -2205.94, 1501.09, 1000000, 5, 1, 3, 7, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Flint County', 0, 0, 0),
(1022, 5, -1, 1, 0, 'Seksias_Night', 0, 1, 1, 33.067, -1174.81, 10.745, -1036.53, -2205.94, 1501.09, 1000000, 5, 1, 3, 7, 1001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Flint County', 0, 0, 0),
(1023, 2, -1, 1, 0, 'sneaky1337', 0, 2, 8, 32.758, -1166.42, 10.745, 1281.03, -36.4, 1000.92, 350000, 3, 1, 0, 5, 1002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Flint County', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `punishments`
--

CREATE TABLE `punishments` (
  `p_id` int(11) NOT NULL,
  `p_user_id` int(11) NOT NULL,
  `p_admin` int(11) NOT NULL,
  `p_reason` varchar(64) NOT NULL,
  `p_jail_min` int(11) NOT NULL,
  `p_money_fine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rents`
--

CREATE TABLE `rents` (
  `vrSQLID` smallint(6) NOT NULL,
  `vrLiP_Pos_X` float NOT NULL,
  `vrLiP_Pos_Y` float NOT NULL,
  `vrLiP_Pos_Z` float NOT NULL,
  `vrSpawn_Pos_X` float NOT NULL,
  `vrSpawn_Pos_Y` float NOT NULL,
  `vrSpawn_Pos_Z` float NOT NULL,
  `vrSpawn_Pos_A` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rents`
--

INSERT INTO `rents` (`vrSQLID`, `vrLiP_Pos_X`, `vrLiP_Pos_Y`, `vrLiP_Pos_Z`, `vrSpawn_Pos_X`, `vrSpawn_Pos_Y`, `vrSpawn_Pos_Z`, `vrSpawn_Pos_A`) VALUES
(1, 399.756, -1501.86, 31.844, 411.241, -1490.45, 31.064, 308.07),
(2, -76.99, -1136.62, 1.078, -67.397, -1120.45, 1.078, 67.375),
(3, 2451.47, -1941.44, 13.539, 2455.57, -1937.6, 13.539, 87.697),
(4, 912.657, -1235, 17.211, 937.535, -1237.22, 16.442, 358.731),
(5, 1956.73, -2183.6, 13.547, 1942.54, -2171.33, 13.39, 266.505),
(6, 594.56, 865.147, -43.354, 585.979, 897.521, -44.229, 92.925),
(7, 1465.1, -1051.42, 24.016, 1476.98, -1055.75, 23.826, 0.232),
(8, 2573.54, -2219.68, 13.547, 2565.6, -2231.83, 13.547, 90.901),
(9, 24.256, -1093.93, 4.402, -91.623, -1195.57, 2.29, 339.401),
(10, 1413.47, -1696.84, 13.539, 1434.61, -1696.29, 13.547, 178.559),
(11, 1409.56, -1702.34, 13.539, 1434.61, -1713.3, 13.547, 178.849),
(12, 1163.19, -1585.23, 13.547, 1171.53, -1567.17, 13.547, 268.776);

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `seat_ID` int(11) NOT NULL,
  `seat_x` float NOT NULL,
  `seat_y` float NOT NULL,
  `seat_z` float NOT NULL,
  `seat_a` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seats`
--

INSERT INTO `seats` (`seat_ID`, `seat_x`, `seat_y`, `seat_z`, `seat_a`) VALUES
(1, 364.536, -1512.42, 32.803, 29.599),
(2, 350.74, -1528.55, 33.23, 54.665),
(3, 340.112, -1543.54, 33.193, 52.91),
(4, 383.191, -1497.78, 32.16, 32.857),
(5, 404.509, -1481.74, 31.108, 36.578),
(6, 1538.46, -1639.96, 13.547, 84.54),
(7, 1469.78, -1713.57, 14.047, 270.036),
(8, 1487.94, -1713.85, 14.047, 91.481),
(9, 1488.01, -1704.51, 14.047, 88.222),
(10, 1469.85, -1704.52, 14.047, 268.704),
(11, 1586.55, -1716.47, 13.573, 272.925),
(12, 1586.36, -1704.27, 13.573, 269.666),
(13, 1609.93, -1705.84, 13.573, 87.641),
(14, 1609.93, -1716.31, 13.573, 87.641),
(15, 1482.22, -1023.47, 23.852, 178.251),
(16, 1445.49, -1023.07, 24.957, 177.961),
(17, 1440.47, -1023.07, 24.957, 178.964),
(18, 1435.91, -1023.07, 24.957, 180.969),
(20, 394.688, -1530.58, 32.275, 132.859),
(21, 396.439, -1529.23, 32.275, 309.621),
(22, 401.295, -1534.21, 32.275, 306.863),
(23, 399.939, -1535.71, 32.275, 128.348),
(24, 404.811, -1540.58, 32.275, 131.857),
(25, 405.925, -1538.55, 32.275, 308.578),
(26, 422.175, -1542.95, 27.579, 202.756),
(27, 426.041, -1542.51, 27.579, 149.865),
(28, 410.64, -1555.06, 27.579, 229.327),
(29, 408.916, -1558.88, 27.579, 246.372),
(30, 407.504, -1563.79, 27.579, 262.164),
(31, 2726.08, 746.003, 10.938, 10.352),
(32, 2728.13, 747.403, 10.932, 90.173);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` mediumint(7) NOT NULL,
  `p_name` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `isonline` tinyint(1) DEFAULT '0',
  `user_ip` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `registered` tinyint(1) DEFAULT '0',
  `sex` tinyint(1) NOT NULL,
  `age` tinyint(2) NOT NULL,
  `level` smallint(5) DEFAULT '1',
  `exp` smallint(6) DEFAULT '0',
  `xOnlineSati` smallint(6) DEFAULT '0',
  `money` int(11) DEFAULT '0',
  `xBRacun` int(11) DEFAULT '0',
  `xZlato` mediumint(9) DEFAULT '0',
  `xPlatiRacun` mediumint(9) DEFAULT '0',
  `payday` tinyint(2) DEFAULT '0',
  `upgrades` tinyint(3) DEFAULT '0',
  `admin_lvl` tinyint(1) DEFAULT '0',
  `admin_code` int(4) DEFAULT '0',
  `xSpecAdmin` tinyint(1) DEFAULT '0',
  `helper_level` tinyint(1) DEFAULT '0',
  `vip_level` tinyint(1) DEFAULT '0',
  `promoter_level` tinyint(1) NOT NULL DEFAULT '0',
  `xYouTuber` tinyint(1) NOT NULL DEFAULT '0',
  `spec_rank` tinyint(2) DEFAULT '0',
  `staff_min` smallint(6) DEFAULT '0',
  `vip_time` float DEFAULT '0',
  `skin_id` smallint(5) DEFAULT '0',
  `spawn` tinyint(1) DEFAULT '0',
  `lider` tinyint(2) NOT NULL DEFAULT '0',
  `clan` tinyint(2) NOT NULL DEFAULT '0',
  `rank` tinyint(2) NOT NULL DEFAULT '0',
  `materials` mediumint(9) DEFAULT '0',
  `job_id` tinyint(2) DEFAULT '0',
  `fight_style` tinyint(1) DEFAULT '0',
  `spawn_hp` float DEFAULT '0',
  `vehicle_license` tinyint(1) DEFAULT '0',
  `boat_license` tinyint(1) DEFAULT '0',
  `air_license` tinyint(1) DEFAULT '0',
  `gun_license` tinyint(1) DEFAULT '0',
  `toolkit` tinyint(1) DEFAULT '0',
  `property_id_1` smallint(4) DEFAULT '-1',
  `property_id_2` smallint(4) DEFAULT '-1',
  `property_id_3` smallint(4) DEFAULT '-1',
  `bussines_id` smallint(4) DEFAULT '0',
  `garage_id` smallint(4) DEFAULT '0',
  `xTelefon` tinyint(1) NOT NULL DEFAULT '0',
  `phone_number` mediumint(9) DEFAULT '0',
  `phone_credit` mediumint(9) DEFAULT '0',
  `strenght` smallint(3) DEFAULT '0',
  `jail_type` tinyint(1) DEFAULT '0',
  `jail_time` smallint(4) DEFAULT '0',
  `wanted_level` tinyint(2) DEFAULT '0',
  `arrested` smallint(6) DEFAULT '0',
  `xPDUhapsio` mediumint(9) NOT NULL DEFAULT '0',
  `xPDStatsTicket` mediumint(9) NOT NULL DEFAULT '0',
  `xPDStatsTicketMoney` mediumint(9) NOT NULL DEFAULT '0',
  `xTakenWeps` mediumint(9) NOT NULL DEFAULT '0',
  `xTakenDrugs` mediumint(9) NOT NULL DEFAULT '0',
  `credit_rest` mediumint(9) DEFAULT '0',
  `credit_amount` mediumint(9) DEFAULT '0',
  `credit_installment` smallint(5) DEFAULT '0',
  `warn` tinyint(1) DEFAULT '0',
  `mute` int(11) DEFAULT '0',
  `mask_id` mediumint(9) DEFAULT '0',
  `rp_learn` tinyint(1) DEFAULT '0',
  `marker_p1` float DEFAULT '0',
  `marker_p2` float DEFAULT '0',
  `marker_p3` float DEFAULT '0',
  `gps_level` tinyint(1) DEFAULT '1',
  `org_contract` smallint(5) DEFAULT '0',
  `hitman_price` mediumint(9) DEFAULT '0',
  `country` tinyint(2) DEFAULT '0',
  `email` varchar(128) CHARACTER SET utf8 NOT NULL,
  `org_punishment` tinyint(3) DEFAULT '0',
  `offpjail` varchar(64) CHARACTER SET utf8 DEFAULT '2',
  `offpprison` varchar(64) CHARACTER SET utf8 DEFAULT '2',
  `offpmute` varchar(64) CHARACTER SET utf8 DEFAULT '2',
  `married` tinyint(1) DEFAULT '0',
  `married_to` varchar(64) CHARACTER SET utf8 DEFAULT 'Niko',
  `xBingoNumber` smallint(3) DEFAULT '0',
  `xBingoMoney` mediumint(9) DEFAULT '0',
  `xDiamond` mediumint(9) NOT NULL DEFAULT '0',
  `vehicle_slots` smallint(4) DEFAULT '1',
  `rob_time` tinyint(3) DEFAULT '0',
  `leave_jail` tinyint(1) DEFAULT '0',
  `hangar_time` tinyint(3) DEFAULT '0',
  `event_first_place` smallint(5) DEFAULT '0',
  `event_second_place` smallint(5) DEFAULT '0',
  `event_third_place` smallint(5) DEFAULT '0',
  `dm_event_kills` mediumint(9) DEFAULT '0',
  `cstdm_score` mediumint(9) DEFAULT '0',
  `rent_id` smallint(4) DEFAULT '-1',
  `reserve_keys` int(11) DEFAULT '-1',
  `watch` smallint(5) DEFAULT '0',
  `dbo` tinyint(1) DEFAULT '0',
  `dbo_color` tinyint(2) DEFAULT '0',
  `xPaysPotvrda` mediumint(11) NOT NULL DEFAULT '0',
  `reaction_poen` smallint(3) DEFAULT '0',
  `taking_time` tinyint(3) DEFAULT '0',
  `gift` smallint(6) DEFAULT '0',
  `xPaketic` tinyint(1) DEFAULT '0',
  `gate_key` varchar(64) CHARACTER SET utf8 DEFAULT 'Niko',
  `mats_smugl` tinyint(1) DEFAULT '0',
  `robp_time` tinyint(3) DEFAULT '0',
  `xAGMStats` smallint(8) NOT NULL DEFAULT '0',
  `xBoombox` tinyint(1) NOT NULL DEFAULT '0',
  `xTorba_Pizza` smallint(6) NOT NULL DEFAULT '0',
  `xTorba_Sok` smallint(6) NOT NULL DEFAULT '0',
  `xTorba_Pivo` smallint(6) NOT NULL DEFAULT '0',
  `xTorba_Hambi` smallint(6) NOT NULL DEFAULT '0',
  `xTorba_Riba` smallint(6) NOT NULL DEFAULT '0',
  `xTorba_Laptop` tinyint(1) NOT NULL DEFAULT '0',
  `xTorba_Droga` mediumint(9) NOT NULL DEFAULT '0',
  `xTorba_Kantica` mediumint(9) NOT NULL DEFAULT '0',
  `xTorba_Oruzje_1` smallint(3) NOT NULL DEFAULT '0',
  `xTorba_Oruzje_2` smallint(3) NOT NULL DEFAULT '0',
  `xTorba_Oruzje_3` smallint(3) NOT NULL DEFAULT '0',
  `xTorba_OruzjeM_1` smallint(6) NOT NULL DEFAULT '0',
  `xTorba_OruzjeM_2` smallint(6) NOT NULL DEFAULT '0',
  `xTorba_OruzjeM_3` smallint(6) NOT NULL DEFAULT '0',
  `xTorba_Busilica` tinyint(4) NOT NULL DEFAULT '0',
  `xTDColor` tinyint(2) NOT NULL DEFAULT '0',
  `xFirework` tinyint(2) DEFAULT '0',
  `xAktivnaIgra` tinyint(2) NOT NULL DEFAULT '0',
  `xBonPotvrda` int(11) NOT NULL DEFAULT '0',
  `xVIPWarn` tinyint(1) NOT NULL DEFAULT '0',
  `xOglasWarn` tinyint(1) NOT NULL DEFAULT '0',
  `xTogLabel` tinyint(1) NOT NULL DEFAULT '0',
  `last_login` varchar(64) CHARACTER SET utf8 DEFAULT '2',
  `reg_date` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `p_name`, `isonline`, `user_ip`, `password`, `registered`, `sex`, `age`, `level`, `exp`, `xOnlineSati`, `money`, `xBRacun`, `xZlato`, `xPlatiRacun`, `payday`, `upgrades`, `admin_lvl`, `admin_code`, `xSpecAdmin`, `helper_level`, `vip_level`, `promoter_level`, `xYouTuber`, `spec_rank`, `staff_min`, `vip_time`, `skin_id`, `spawn`, `lider`, `clan`, `rank`, `materials`, `job_id`, `fight_style`, `spawn_hp`, `vehicle_license`, `boat_license`, `air_license`, `gun_license`, `toolkit`, `property_id_1`, `property_id_2`, `property_id_3`, `bussines_id`, `garage_id`, `xTelefon`, `phone_number`, `phone_credit`, `strenght`, `jail_type`, `jail_time`, `wanted_level`, `arrested`, `xPDUhapsio`, `xPDStatsTicket`, `xPDStatsTicketMoney`, `xTakenWeps`, `xTakenDrugs`, `credit_rest`, `credit_amount`, `credit_installment`, `warn`, `mute`, `mask_id`, `rp_learn`, `marker_p1`, `marker_p2`, `marker_p3`, `gps_level`, `org_contract`, `hitman_price`, `country`, `email`, `org_punishment`, `offpjail`, `offpprison`, `offpmute`, `married`, `married_to`, `xBingoNumber`, `xBingoMoney`, `xDiamond`, `vehicle_slots`, `rob_time`, `leave_jail`, `hangar_time`, `event_first_place`, `event_second_place`, `event_third_place`, `dm_event_kills`, `cstdm_score`, `rent_id`, `reserve_keys`, `watch`, `dbo`, `dbo_color`, `xPaysPotvrda`, `reaction_poen`, `taking_time`, `gift`, `xPaketic`, `gate_key`, `mats_smugl`, `robp_time`, `xAGMStats`, `xBoombox`, `xTorba_Pizza`, `xTorba_Sok`, `xTorba_Pivo`, `xTorba_Hambi`, `xTorba_Riba`, `xTorba_Laptop`, `xTorba_Droga`, `xTorba_Kantica`, `xTorba_Oruzje_1`, `xTorba_Oruzje_2`, `xTorba_Oruzje_3`, `xTorba_OruzjeM_1`, `xTorba_OruzjeM_2`, `xTorba_OruzjeM_3`, `xTorba_Busilica`, `xTDColor`, `xFirework`, `xAktivnaIgra`, `xBonPotvrda`, `xVIPWarn`, `xOglasWarn`, `xTogLabel`, `last_login`, `reg_date`) VALUES
(1, 'ogy', 1, '62.240.24.93', 'D75CA686E1CD8E9D11E56EF1FB6DB6717DD52680D66D2A62860011A408469CE5', 1, 1, 19, 421, 41, 37, 1930527, 801260, 98, 0, 29, 0, 7, 0, 0, 0, 0, 0, 0, 1, 2369, 0, 308, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 1, 0, 818, 814, 813, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 3, 'dsa@gmail.com', 0, '2', '2', '2', 0, 'Niko', 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 1, 0, 0, 0, 'Niko', 0, 0, 203, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, '2022-08-23 23:42:45', '2022-08-05 01:51:16'),
(2, 'sneaky1337', 0, '255.255.255.255', 'CA24B90798AEE55ED038D65A5AF38EDD7BAD88908A85CCCB73FAD2931164DD27', 1, 1, 23, 1337, 35, 31, 9280353, 2151633, 193, 0, 7, 0, 7, 2020, 0, 0, 0, 0, 0, 0, 2422, 0, 115, 3, 0, 0, 0, 0, 8, 2, 0, 1, 0, 0, 1, 0, 1023, 1021, -1, 0, 0, 1, 727654, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 6, 'ff@gmail.com', 0, '2', '2', '2', 0, 'Niko', 0, 0, 0, 3, 0, 0, 0, 4, 1, 0, 0, 0, -1, -1, 19042, 0, 0, 0, 2, 0, 0, 0, 'Niko', 0, 0, 131, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 1, 0, 0, 0, 0, 0, '2022-08-23 06:11:27', '2022-08-16 01:11:51'),
(3, 'Don', 1, '109.121.86.3', '1B0F9E22736DE25933F41DAC337A2D16C0680BC5C503310C63FBDB09B18313F7', 1, 1, 21, 69, 7, 7, 70815, 125911, 10, 0, 49, 0, 7, 1, 0, 0, 0, 0, 0, 0, 526, 0, 270, 1, 0, 0, 0, 0, 8, 2, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 1, 493369, 96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 3, 'gagagwq@gmail.com', 0, '2', '2', '2', 0, 'Niko', 0, 0, 0, 3, 0, 0, 0, 2, 0, 0, 0, 0, -1, -1, 0, 1, 10, 0, 0, 0, 0, 0, 'Niko', 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, '2022-08-24 00:07:50', '2022-08-16 01:20:30'),
(4, 'Ogisha_Matth', 0, '255.255.255.255', '1861712058B61FE677B5367E2F832EEB36C317FD376D88DACF45E4F6E7F34A07', 1, 1, 31, 1, 0, 0, 50000, 0, 0, 0, 51, 0, 7, 413, 0, 0, 0, 0, 0, 0, 52, 0, 21, 1, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1660690641, 0, 0, 0, 0, 0, 1, 0, 0, 3, 'dexterwalton132@gmail.com', 0, '2', '2', '2', 0, 'Niko', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 'Niko', 0, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-08-17 23:31:59', '2022-08-17 00:58:15'),
(5, 'Seksias_Night', 0, '255.255.255.255', '6CDC2CB74F1B2EA72D65E7E203484A82E6A5B03A0ADDF59CCD1EF3CDB4154A15', 1, 1, 25, 10, 15, 14, 1040331, 133980, 50, 0, 19, 0, 7, 7, 0, 0, 0, 0, 0, 0, 997, 0, 177, 3, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 0, 1022, 0, 0, 0, 0, 1, 356262, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1660848216, 0, 0, 0, 0, 0, 1, 0, 0, 5, 'seksias@gmail.com', 0, '2', '2', '2', 0, 'Niko', 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 1, 0, 0, 0, 'Niko', 0, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-08-23 21:20:46', '2022-08-18 20:47:17'),
(7, 'Toni_Moto', 0, '255.255.255.255', '5E918C1A148C65CBED9DCD8989CDAF272BC68758AB3157004A79477FBA8C4124', 1, 1, 26, 0, 0, 0, 90000, 8533, 0, 0, 48, 0, 1, 464, 0, 0, 0, 0, 0, 0, 22, 0, 29, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 797007, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1660943127, 0, 0, 0, 0, 0, 1, 0, 0, 3, 'dajlocar007@gmail.com', 0, '2', '2', '2', 0, 'Niko', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 'Niko', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 0, 0, 0, 0, 0, 0, '2022-08-19 23:54:01', '2022-08-19 23:06:30'),
(8, 'Howard_Ig', 0, '46.125.249.31', '40CEDB2AA78CB168DE53BD6907169B97E7AA586B4A1B6333E367EEFF333F0285', 1, 1, 19, 0, 1, 1, 40000, 36440, 0, 0, 55, 0, 1, 1, 0, 0, 0, 0, 0, 0, 89, 0, 18, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 228437, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1660943133, 0, 0, 0, 0, 0, 2, 0, 0, 6, 'asdasd@gmail.com', 0, '2', '2', '2', 0, 'Niko', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 'Niko', 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, 0, '2022-08-20 06:55:27', '2022-08-19 23:06:32'),
(9, 'Canee_Canovic', 0, '255.255.255.255', 'FF480D7002CADC41251B9C5935E8A5A15BB67AF6249CEFD8480683F9A524E0ED', 1, 1, 32, 3, 1, 1, 89950, 33428, 0, 0, 2, 0, 1, 146, 0, 0, 0, 0, 0, 0, 48, 0, 26, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 355027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1660943774, 0, 0, 0, 0, 0, 1, 0, 0, 5, 'ruzmirmemo@gmail.com', 0, '2', '2', '2', 0, 'Niko', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 'Niko', 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-08-20 00:19:52', '2022-08-19 23:18:23'),
(10, 'Oggy_Smith', 0, '62.240.27.53', '1291CDC6E59CAE97C029C49A25F4C1133083C473E1238A44A55AD9D003DC2CA2', 1, 1, 19, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1660962768, 0, 0, 0, 0, 0, 1, 0, 0, 3, 'dsa@gmail.com', 0, '2', '2', '2', 0, 'Niko', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 'Niko', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-08-20 04:42:07', '2022-08-20 04:33:31'),
(11, 'Matija_Smithz', 0, '255.255.255.255', 'FACA257E34E25E5181C5193157E24729ABDC1DFB8078EF690DEAF81583E3E338', 1, 1, 19, 1, 1, 1, 50011, 8445, 0, 0, 49, 0, 0, 267, 1, 0, 0, 0, 0, 0, 118, 0, 23, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 3, 'kurac@kurac.kurac', 0, '2', '2', '2', 0, 'Niko', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 'Niko', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-08-22 23:08:54', '2022-08-21 17:46:30'),
(12, 'Kocic_Dev', 0, '255.255.255.255', '6AC90F5ACE29C843F8812B4071BDCCC751EAFEE1846F9E73A0D08236209D7A1C', 1, 1, 16, 1, 0, 0, 1, 0, 0, 0, 49, 0, 6, 637, 0, 0, 0, 0, 0, 0, 55, 0, 292, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1661107567, 0, 0, 0, 0, 0, 1, 0, 0, 3, 's@gmail.com', 0, '2', '2', '2', 0, 'Niko', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 'Niko', 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-08-22 00:16:28', '2022-08-21 20:47:04'),
(13, 'Vedrox_Capone', 0, '255.255.255.255', '804EEFB8BD3D817D382B1C97EFDA2CC5EC0AB75B8DAD89571B30204CE40576BF', 1, 1, 21, 5, 2, 2, 95010, 6840, 0, 0, 41, 0, 0, 205, 0, 0, 0, 0, 0, 0, 12, 0, 270, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 5, 'samp@gmail.com', 0, '2', '2', '2', 0, 'Niko', 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 'Niko', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-08-23 01:11:45', '2022-08-22 22:02:42');

-- --------------------------------------------------------

--
-- Table structure for table `user_clothes`
--

CREATE TABLE `user_clothes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cloth_slot_1` int(11) DEFAULT '-1',
  `cloth_slot_1_p1` float DEFAULT '0',
  `cloth_slot_1_p2` float DEFAULT '0',
  `cloth_slot_1_p3` float DEFAULT '0',
  `cloth_slot_1_p4` float DEFAULT '0',
  `cloth_slot_1_p5` float DEFAULT '0',
  `cloth_slot_1_p6` float DEFAULT '0',
  `cloth_slot_1_p7` float DEFAULT '0',
  `cloth_slot_1_p8` float DEFAULT '0',
  `cloth_slot_1_p9` float DEFAULT '0',
  `cloth_slot_2` int(11) DEFAULT '-1',
  `cloth_slot_2_p1` float DEFAULT '0',
  `cloth_slot_2_p2` float DEFAULT '0',
  `cloth_slot_2_p3` float DEFAULT '0',
  `cloth_slot_2_p4` float DEFAULT '0',
  `cloth_slot_2_p5` float DEFAULT '0',
  `cloth_slot_2_p6` float DEFAULT '0',
  `cloth_slot_2_p7` float DEFAULT '0',
  `cloth_slot_2_p8` float DEFAULT '0',
  `cloth_slot_2_p9` float DEFAULT '0',
  `cloth_slot_3` int(11) DEFAULT '-1',
  `cloth_slot_3_p1` float DEFAULT '0',
  `cloth_slot_3_p2` float DEFAULT '0',
  `cloth_slot_3_p3` float DEFAULT '0',
  `cloth_slot_3_p4` float DEFAULT '0',
  `cloth_slot_3_p5` float DEFAULT '0',
  `cloth_slot_3_p6` float DEFAULT '0',
  `cloth_slot_3_p7` float DEFAULT '0',
  `cloth_slot_3_p8` float DEFAULT '0',
  `cloth_slot_3_p9` float DEFAULT '0',
  `cloth_slot_4` int(11) DEFAULT '-1',
  `cloth_slot_4_p1` float DEFAULT '0',
  `cloth_slot_4_p2` float DEFAULT '0',
  `cloth_slot_4_p3` float DEFAULT '0',
  `cloth_slot_4_p4` float DEFAULT '0',
  `cloth_slot_4_p5` float DEFAULT '0',
  `cloth_slot_4_p6` float DEFAULT '0',
  `cloth_slot_4_p7` float DEFAULT NULL,
  `cloth_slot_4_p8` float DEFAULT '0',
  `cloth_slot_4_p9` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_clothes`
--

INSERT INTO `user_clothes` (`id`, `user_id`, `cloth_slot_1`, `cloth_slot_1_p1`, `cloth_slot_1_p2`, `cloth_slot_1_p3`, `cloth_slot_1_p4`, `cloth_slot_1_p5`, `cloth_slot_1_p6`, `cloth_slot_1_p7`, `cloth_slot_1_p8`, `cloth_slot_1_p9`, `cloth_slot_2`, `cloth_slot_2_p1`, `cloth_slot_2_p2`, `cloth_slot_2_p3`, `cloth_slot_2_p4`, `cloth_slot_2_p5`, `cloth_slot_2_p6`, `cloth_slot_2_p7`, `cloth_slot_2_p8`, `cloth_slot_2_p9`, `cloth_slot_3`, `cloth_slot_3_p1`, `cloth_slot_3_p2`, `cloth_slot_3_p3`, `cloth_slot_3_p4`, `cloth_slot_3_p5`, `cloth_slot_3_p6`, `cloth_slot_3_p7`, `cloth_slot_3_p8`, `cloth_slot_3_p9`, `cloth_slot_4`, `cloth_slot_4_p1`, `cloth_slot_4_p2`, `cloth_slot_4_p3`, `cloth_slot_4_p4`, `cloth_slot_4_p5`, `cloth_slot_4_p6`, `cloth_slot_4_p7`, `cloth_slot_4_p8`, `cloth_slot_4_p9`) VALUES
(1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 2, 18947, 0.14, 0.01, -0.009, 0, 0, 0, 1.2, 1.163, 1.2, 11704, 0.12, 0.01, 0, -90.5, 134.7, -86.4, 0.548, 1.892, 0.69, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 3, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 4, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 5, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 6, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 7, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 8, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 9, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 10, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 11, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 12, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 13, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `veh_id` int(11) NOT NULL,
  `owner_sqlID` int(11) DEFAULT '0',
  `v_price` int(11) NOT NULL,
  `v_locked` tinyint(1) DEFAULT '0',
  `v_pos_x` float NOT NULL,
  `v_pos_y` float NOT NULL,
  `v_pos_z` float NOT NULL,
  `v_pos_a` float NOT NULL,
  `v_virtualw` int(11) NOT NULL,
  `v_interior` int(11) NOT NULL,
  `v_usage` smallint(2) NOT NULL,
  `v_organization` smallint(2) DEFAULT '0',
  `v_color_1` int(11) NOT NULL,
  `v_color_2` int(11) NOT NULL,
  `v_model` int(11) NOT NULL,
  `v_teh` smallint(2) DEFAULT '0',
  `v_reg` smallint(2) DEFAULT '0',
  `v_reg_vreme` smallint(3) DEFAULT '0',
  `v_tablice` varchar(24) COLLATE utf8_unicode_ci DEFAULT 'NEMA',
  `v_insurance` smallint(2) DEFAULT '0',
  `v_lock` smallint(2) DEFAULT '0',
  `v_alarm` smallint(2) DEFAULT '0',
  `v_neon` int(11) DEFAULT '0',
  `v_tuned` tinyint(1) DEFAULT '0',
  `v_imobilizator` int(11) DEFAULT '0',
  `v_spoiler` int(11) DEFAULT '0',
  `v_hood` int(11) DEFAULT '0',
  `v_roof` int(11) DEFAULT '0',
  `v_skirt` int(11) DEFAULT '0',
  `v_lamps` int(11) DEFAULT '0',
  `v_nitro` int(11) DEFAULT '0',
  `v_exhaust` int(11) DEFAULT '0',
  `v_wheels` int(11) DEFAULT '0',
  `v_stereo` int(11) DEFAULT '0',
  `v_hydraulics` int(11) DEFAULT '0',
  `v_front_bumper` int(11) DEFAULT '0',
  `v_rear_bumper` int(11) DEFAULT '0',
  `v_vents` int(11) DEFAULT '0',
  `v_paintjob` int(11) DEFAULT '255',
  `v_drug_ammount` int(11) DEFAULT '0',
  `v_mats` int(11) DEFAULT '0',
  `v_weapon_melee` int(11) DEFAULT '0',
  `v_weapon_slot_1` int(11) DEFAULT '0',
  `v_weapon_ammo_1` int(11) DEFAULT '0',
  `v_weapon_slot_2` int(11) DEFAULT '0',
  `v_weapon_ammo_2` int(11) DEFAULT '0',
  `v_neaktivnost` int(11) DEFAULT '0',
  `v_kilometri` int(11) DEFAULT '0',
  `v_metri` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`veh_id`, `owner_sqlID`, `v_price`, `v_locked`, `v_pos_x`, `v_pos_y`, `v_pos_z`, `v_pos_a`, `v_virtualw`, `v_interior`, `v_usage`, `v_organization`, `v_color_1`, `v_color_2`, `v_model`, `v_teh`, `v_reg`, `v_reg_vreme`, `v_tablice`, `v_insurance`, `v_lock`, `v_alarm`, `v_neon`, `v_tuned`, `v_imobilizator`, `v_spoiler`, `v_hood`, `v_roof`, `v_skirt`, `v_lamps`, `v_nitro`, `v_exhaust`, `v_wheels`, `v_stereo`, `v_hydraulics`, `v_front_bumper`, `v_rear_bumper`, `v_vents`, `v_paintjob`, `v_drug_ammount`, `v_mats`, `v_weapon_melee`, `v_weapon_slot_1`, `v_weapon_ammo_1`, `v_weapon_slot_2`, `v_weapon_ammo_2`, `v_neaktivnost`, `v_kilometri`, `v_metri`) VALUES
(1, 0, 0, 0, 1547.41, -1617.8, 13.067, 271.548, 0, 0, 2, 1, 4, 4, 596, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 6, 250000, 0, 5.393, -1167.79, 9.236, 268.079, 0, 0, 1, 0, 3, 3, 482, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 3, 134),
(4, 0, 0, 0, 1547.41, -1613.36, 13.061, 272.394, 0, 0, 2, 1, 4, 4, 596, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 0, 0, 0, 1270.9, 2849.52, 66.362, 90.228, 2, 0, 2, 1, 4, 4, 596, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 0, 0, 0, 1271.48, 2841.42, 66.368, 90.094, 2, 0, 2, 1, 164, 164, 596, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 0, 0, 0, 1255.07, 2837.69, 66.895, 269.853, 2, 0, 2, 1, 4, 4, 427, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 0, 0, 0, 1255.14, 2850.47, 66.894, 267.069, 2, 0, 2, 1, 4, 4, 427, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 0, 0, 0, 1270.83, 2862.77, 66.369, 90.174, 2, 0, 2, 1, 4, 4, 596, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 0, 0, 0, 1271.34, 2858.06, 66.369, 89.584, 2, 0, 2, 1, 4, 4, 596, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 0, 0, 0, 1255.26, 2842.12, 66.781, 270.285, 2, 0, 2, 1, 4, 4, 427, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20, 0, 0, 0, 1266.21, 2820.99, 66.218, 304.169, 2, 0, 2, 1, 4, 4, 523, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(21, 0, 0, 0, 1566.68, -1609.46, 12.916, 182.456, 0, 0, 2, 1, 4, 4, 523, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(22, 0, 0, 0, 1267.21, 2819.31, 66.238, 305.932, 2, 0, 2, 1, 4, 4, 523, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(23, 0, 0, 0, 1264.02, 2823.65, 66.214, 302.49, 2, 0, 2, 1, 4, 4, 523, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(24, 0, 0, 0, 1265.06, 2821.71, 66.238, 307.086, 2, 0, 2, 1, 4, 4, 523, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25, 0, 0, 0, 1284.35, 2814.54, 66.692, 0.27, 2, 0, 2, 1, 4, 4, 528, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(26, 0, 0, 0, 1291.95, 2814.76, 66.695, 1.544, 2, 0, 2, 1, 4, 4, 528, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27, 0, 0, 0, 1289.1, 2814.16, 66.691, 358.382, 2, 0, 2, 1, 4, 4, 528, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(28, 0, 0, 0, 1271.01, 2853.58, 66.361, 89.18, 2, 0, 2, 1, 4, 4, 596, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(29, 0, 0, 0, 1255.96, 2881.76, 66.832, 179.766, 2, 0, 2, 1, 4, 4, 599, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30, 0, 0, 0, 1260.35, 2881.69, 66.84, 180.381, 2, 0, 2, 1, 4, 4, 599, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(31, 0, 0, 0, 1264.1, 2881.58, 66.722, 179.72, 2, 0, 2, 1, 4, 4, 599, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(32, 0, 100000, 0, 2469.38, -1670.04, 13.135, 9.767, 0, 0, 2, 3, 128, 128, 466, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33, 0, 100000, 0, 2472.08, -1677.78, 13.127, 35.001, 0, 0, 2, 3, 128, 128, 466, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36, 0, 800000, 0, 2499.69, -1686.58, 13.157, 349.485, 0, 0, 2, 3, 128, 128, 468, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(38, 0, 290000, 0, 2489.4, -1686.55, 12.994, 5.957, 0, 0, 2, 3, 128, 128, 471, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(39, 0, 290000, 0, 2491.5, -1686.48, 12.995, 4.137, 0, 0, 2, 3, 128, 128, 471, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40, 0, 110000, 0, 2480.96, -1653.91, 13.151, 91.269, 0, 0, 2, 3, 128, 128, 474, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(41, 0, 110000, 0, 2470.89, -1654.11, 13.166, 92.107, 0, 0, 2, 3, 128, 128, 474, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(42, 0, 30000, 0, 2528.67, -1665.09, 14.681, 176.089, 0, 0, 2, 3, 128, 128, 481, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(43, 0, 30000, 0, 2525.69, -1664.74, 14.643, 163.341, 0, 0, 2, 3, 128, 128, 481, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(44, 0, 30000, 0, 2527.3, -1665.02, 14.529, 161.687, 0, 0, 2, 3, 128, 128, 481, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45, 0, 205000, 0, 2508.51, -1674.82, 13.211, 342.675, 0, 0, 2, 3, 128, 128, 492, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(46, 0, 205000, 0, 2509.52, -1667.6, 13.245, 4.138, 0, 0, 2, 3, 128, 128, 492, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(47, 0, 205000, 0, 2503.77, -1680.92, 13.238, 309.604, 0, 0, 2, 3, 128, 128, 492, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(48, 0, 225000, 0, 2477.9, -1682.41, 13.256, 70.07, 0, 0, 2, 3, 128, 128, 567, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(49, 0, 225000, 0, 2484.69, -1684.02, 13.287, 86.402, 0, 0, 2, 3, 128, 128, 567, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(50, 0, 250000, 0, 2505.83, -1695.64, 13.675, 0.171, 0, 0, 2, 3, 128, 128, 482, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(52, 0, 800000, 0, 2497.92, -1686.83, 13.15, 348.022, 0, 0, 2, 3, 128, 128, 468, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53, 0, 800000, 0, 2500.99, -1686.56, 13.171, 352.332, 0, 0, 2, 3, 128, 128, 468, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(54, 0, 385000, 0, 2502.27, -1655.62, 13.068, 60.782, 0, 0, 2, 3, 128, 128, 575, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(57, 0, 385000, 0, 2178.44, -1810.78, 13.06, 88.002, 0, 0, 2, 4, 171, 171, 575, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(58, 0, 385000, 0, 2171.4, -1810.47, 13.062, 88.391, 0, 0, 2, 4, 171, 171, 575, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(59, 0, 385000, 0, 2165.02, -1810.78, 13.061, 89.853, 0, 0, 2, 4, 171, 171, 575, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(60, 0, 205000, 0, 2189.66, -1800.07, 13.241, 177.749, 0, 0, 2, 4, 171, 171, 492, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(61, 0, 205000, 0, 2189.89, -1806.69, 13.238, 179.018, 0, 0, 2, 4, 171, 171, 492, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(62, 0, 250000, 0, 2179.97, -1777.9, 13.565, 181.215, 0, 0, 2, 4, 171, 171, 482, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(63, 0, 110000, 0, 2166.05, -1790.81, 13.198, 89.057, 0, 0, 2, 4, 171, 171, 474, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(64, 0, 110000, 0, 2172.96, -1790.87, 13.199, 90.952, 0, 0, 2, 4, 171, 171, 474, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(65, 0, 290000, 0, 2153.12, -1813.83, 13.028, 291.125, 0, 0, 2, 4, 171, 171, 471, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(66, 0, 290000, 0, 2152.54, -1811.79, 13.03, 289.567, 0, 0, 2, 4, 171, 171, 471, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(67, 0, 290000, 0, 2152.37, -1809.79, 13.029, 287.846, 0, 0, 2, 4, 171, 171, 471, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(68, 0, 800000, 0, 2156.01, -1788.08, 13.185, 209.175, 0, 0, 2, 4, 171, 171, 468, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(69, 0, 800000, 0, 2157.26, -1787.7, 13.186, 204.938, 0, 0, 2, 4, 171, 171, 468, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(70, 0, 800000, 0, 2158.41, -1787.65, 13.186, 202.128, 0, 0, 2, 4, 171, 171, 468, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(71, 0, 110000, 0, 2190.04, -1781.92, 13.192, 181.285, 0, 0, 2, 4, 171, 171, 404, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(72, 0, 110000, 0, 2189.74, -1789.22, 13.193, 179.592, 0, 0, 2, 4, 171, 171, 404, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(73, 0, 30000, 0, 2152.42, -1797.38, 13.082, 267.67, 0, 0, 2, 4, 171, 171, 481, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(74, 0, 30000, 0, 2152.54, -1798.29, 13.086, 279.623, 0, 0, 2, 4, 171, 171, 481, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(75, 0, 30000, 0, 2152.52, -1795.98, 13.07, 265.364, 0, 0, 2, 4, 171, 171, 481, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(76, 0, 310000, 0, 1235.38, -2413.54, 12.665, 76.006, 0, 0, 2, 5, 13, 13, 445, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(77, 0, 310000, 0, 1236.19, -2410.03, 12.665, 75.13, 0, 0, 2, 5, 13, 13, 445, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(79, 0, 350000, 0, 1245.67, -2377.67, 12.33, 164.615, 0, 0, 2, 5, 13, 13, 463, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(80, 0, 350000, 0, 1243.8, -2377.33, 12.33, 167.582, 0, 0, 2, 5, 13, 13, 463, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(81, 0, 440000, 0, 1226.88, -2406.84, 12.783, 256.126, 0, 0, 2, 5, 13, 13, 470, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(82, 0, 250000, 0, 1230.69, -2388.54, 12.941, 165.786, 0, 0, 2, 5, 13, 13, 482, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(83, 0, 315000, 0, 1252.23, -2391.55, 12.895, 75.254, 0, 0, 2, 5, 13, 13, 500, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(84, 0, 315000, 0, 1251.46, -2395.37, 12.893, 74.642, 0, 0, 2, 5, 13, 13, 500, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(85, 0, 280000, 0, 1228.08, -2403.06, 12.615, 257.815, 0, 0, 2, 5, 13, 13, 507, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(86, 0, 280000, 0, 1228.26, -2399.4, 12.615, 256.178, 0, 0, 2, 5, 13, 13, 507, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(87, 0, 2500000, 0, 1242.14, -2376.71, 12.36, 174.629, 0, 0, 2, 5, 13, 13, 522, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(88, 0, 2500000, 0, 1240.77, -2376.22, 12.361, 175.289, 0, 0, 2, 5, 13, 13, 522, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(89, 0, 1700000, 0, 1238.75, -2405.06, 12.495, 75.003, 0, 0, 2, 5, 13, 13, 560, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(90, 0, 1700000, 0, 1239.65, -2401.77, 12.495, 75.579, 0, 0, 2, 5, 13, 13, 560, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(92, 0, 950000, 0, 1243.78, -2380.64, 20.175, 160.887, 0, 0, 2, 5, 13, 1, 487, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(93, 1, 310000, 0, 2710.29, 728.93, 10.847, 176.439, 0, 0, 1, 0, 6, 6, 445, 0, 0, 0, 'NEMA', 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 85, 259),
(94, 0, 0, 0, 1252.18, 2881.44, 66.837, 179.628, 2, 0, 2, 1, 4, 4, 599, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(95, 0, 1700000, 0, 1271.18, 2866.84, 66.353, 90.134, 2, 0, 2, 1, 4, 4, 560, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(96, 0, 1700000, 0, 1271.44, 2875.04, 66.353, 89.088, 2, 0, 2, 1, 4, 4, 560, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(97, 0, 1700000, 0, 1271.02, 2870.71, 66.358, 89.75, 2, 0, 2, 1, 4, 4, 560, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98, 0, 0, 0, 1295.67, 2814.96, 66.692, 0.824, 2, 0, 2, 1, 4, 4, 528, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(99, 0, 0, 0, 1299.78, 2815.31, 66.827, 359.752, 2, 0, 2, 1, 4, 4, 528, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(100, 0, 0, 0, 1547.36, -1609.18, 13.061, 272.395, 0, 0, 2, 1, 4, 4, 596, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(101, 0, 0, 0, 1571.16, -1609.57, 12.917, 167.013, 0, 0, 2, 1, 4, 4, 523, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(102, 0, 0, 0, 1568.83, -1609.34, 12.913, 173.535, 0, 0, 2, 1, 4, 4, 523, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(103, 0, 0, 0, 1564.98, -1609.32, 12.937, 179.396, 0, 0, 2, 1, 4, 4, 523, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(104, 0, 1300000, 0, -39.152, -2488.06, 37, 214.33, 0, 0, 2, 6, 117, 117, 495, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(105, 0, 1300000, 0, -35.087, -2485.51, 36.998, 214.004, 0, 0, 2, 6, 117, 117, 495, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(107, 0, 245000, 0, -16.716, -2532.5, 36.368, 29.509, 0, 0, 2, 6, 117, 117, 496, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(108, 0, 245000, 0, -21.03, -2535.06, 36.365, 28.397, 0, 0, 2, 6, 117, 117, 496, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(109, 0, 1300000, 0, -43.156, -2490.74, 37, 215.363, 0, 0, 2, 6, 117, 117, 495, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(110, 0, 2500000, 0, -9.596, -2508.28, 36.219, 89.299, 0, 0, 2, 6, 117, 117, 522, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(111, 0, 2500000, 0, -10.481, -2506.54, 36.226, 80.117, 0, 0, 2, 6, 117, 117, 522, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(112, 0, 2500000, 0, -11.344, -2504.79, 36.225, 79.394, 0, 0, 2, 6, 117, 117, 522, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(113, 0, 1700000, 0, -8.124, -2528.21, 36.355, 28.941, 0, 0, 2, 6, 117, 117, 560, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(114, 0, 1700000, 0, -12.305, -2530.72, 36.357, 29.52, 0, 0, 2, 6, 117, 117, 560, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(115, 0, 700000, 0, -25.66, -2524.24, 36.222, 299.65, 0, 0, 2, 6, 117, 117, 589, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(116, 0, 700000, 0, -23.904, -2527.75, 36.292, 297.381, 0, 0, 2, 6, 117, 117, 589, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(117, 0, 420000, 0, -38.298, -2503.5, 36.259, 301.91, 0, 0, 2, 6, 117, 117, 540, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(118, 0, 420000, 0, -41.439, -2499.53, 36.179, 308.615, 0, 0, 2, 6, 117, 117, 540, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(119, 0, 310000, 0, -19.101, -2496.38, 36.523, 120.268, 0, 0, 2, 6, 117, 117, 445, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(120, 0, 310000, 0, -17.382, -2499.36, 36.523, 119.221, 0, 0, 2, 6, 117, 117, 445, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(121, 0, 950000, 0, -21.751, -2482.57, 36.825, 123.778, 0, 0, 2, 6, 117, 117, 487, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(122, 0, 950000, 0, 0.034, -2517.51, 36.673, 115.666, 0, 0, 2, 6, 117, 117, 487, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(128, 0, 0, 0, 2795.02, -2417.69, 13.391, 90.637, 0, 0, 2, 2, 116, 116, 601, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(129, 0, 0, 0, 2779.46, -2417.94, 13.394, 90.496, 0, 0, 2, 2, 116, 116, 601, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(130, 0, 0, 0, 2787.24, -2417.85, 13.393, 89.539, 0, 0, 2, 2, 116, 116, 601, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(131, 0, 0, 0, 2753.28, -2403.24, 13.569, 63.637, 0, 0, 2, 2, 116, 116, 528, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(132, 0, 0, 0, 2737.58, -2400.56, 13.585, 90.433, 0, 0, 2, 2, 116, 116, 528, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(133, 0, 0, 0, 2745.12, -2400.64, 13.581, 89.284, 0, 0, 2, 2, 116, 116, 528, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(134, 0, 0, 0, 2735.36, -2469.12, 13.218, 271.588, 0, 0, 2, 2, 116, 116, 523, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(135, 0, 0, 0, 2735.3, -2465.89, 13.218, 267.756, 0, 0, 2, 2, 116, 116, 523, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(136, 0, 0, 0, 2735.34, -2467.51, 13.218, 273.32, 0, 0, 2, 2, 116, 116, 523, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(137, 0, 0, 0, 2735.18, -2464.16, 13.217, 266.135, 0, 0, 2, 2, 116, 116, 523, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(138, 0, 0, 0, 2756.07, -2431.98, 13.682, 179.375, 0, 0, 2, 2, 116, 116, 490, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(139, 0, 0, 0, 2756.12, -2440.21, 13.686, 179.591, 0, 0, 2, 2, 116, 116, 490, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(140, 0, 0, 0, 2756.11, -2448.88, 13.688, 180.063, 0, 0, 2, 2, 116, 116, 490, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(143, 0, 1700000, 0, 2756.23, -2468.84, 13.239, 180.588, 0, 0, 2, 2, 201, 201, 560, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(145, 0, 1700000, 0, 2756.18, -2462, 13.251, 180.308, 0, 0, 2, 2, 201, 201, 560, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(146, 0, 440000, 0, 2733.36, -2410.68, 13.521, 91.62, 0, 0, 2, 2, 116, 116, 470, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(147, 0, 440000, 0, 2726.81, -2410.99, 13.529, 90.958, 0, 0, 2, 2, 116, 116, 470, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(148, 0, 440000, 0, 2740.54, -2410.56, 13.51, 89.641, 0, 0, 2, 2, 116, 116, 470, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(149, 0, 800000, 0, 2731.87, -2509.36, 13.413, 89.968, 0, 0, 2, 2, 116, 116, 603, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(150, 0, 1700000, 0, 2756.37, -2475.52, 13.24, 180.288, 0, 0, 2, 2, 201, 201, 560, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(151, 0, 800000, 0, 2748.18, -2507.83, 13.401, 105.01, 0, 0, 2, 2, 116, 116, 603, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(152, 0, 800000, 0, 2738.85, -2509.3, 13.413, 92.048, 0, 0, 2, 2, 116, 116, 603, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(155, 0, 0, 0, 2783.96, -2475.25, 13.635, 86.526, 0, 0, 2, 2, 116, 116, 497, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(156, 0, 0, 0, 2785.63, -2436.8, 13.634, 90.669, 0, 0, 2, 2, 116, 116, 497, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(157, 0, 0, 0, 2785.75, -2456.46, 13.766, 88.064, 0, 0, 2, 2, 201, 201, 427, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(158, 0, 0, 0, 2788.29, -2494.98, 13.782, 89.646, 0, 0, 2, 2, 116, 116, 427, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(159, 0, 120000, 0, 2592.28, -1248.7, 46.832, 267.71, 0, 0, 2, 7, 6, 6, 412, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(160, 0, 120000, 0, 2584.18, -1248.4, 46.229, 268.848, 0, 0, 2, 7, 6, 6, 412, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(161, 0, 120000, 0, 2583.97, -1192.17, 61.8, 269.87, 0, 0, 2, 7, 6, 6, 419, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(162, 0, 120000, 0, 2590.4, -1192.2, 62.125, 269.911, 0, 0, 2, 7, 6, 6, 419, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(163, 0, 100000, 0, 2557.22, -1220.11, 53.041, 270.685, 0, 0, 2, 7, 6, 6, 466, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(164, 0, 100000, 0, 2608.63, -1248.69, 47.959, 269.998, 0, 0, 2, 7, 6, 6, 466, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(165, 0, 800000, 0, 2578.6, -1213.36, 55.932, 74.986, 0, 0, 2, 7, 6, 6, 468, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(166, 0, 800000, 0, 2578.63, -1216.18, 54.929, 115.114, 0, 0, 2, 7, 6, 6, 468, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(167, 0, 600000, 0, 2615.69, -1248.74, 48.542, 271.477, 0, 0, 2, 7, 6, 6, 475, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(168, 0, 110000, 0, 2557.09, -1216.71, 53.842, 264.88, 0, 0, 2, 7, 6, 6, 474, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(169, 0, 30000, 0, 2579.11, -1230.39, 49.982, 92.769, 0, 0, 2, 7, 6, 6, 481, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(170, 0, 30000, 0, 2578.56, -1229.22, 50.372, 91.537, 0, 0, 2, 7, 6, 6, 481, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(171, 0, 30000, 0, 2579.67, -1232.01, 49.448, 119.604, 0, 0, 2, 7, 6, 6, 481, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(172, 0, 250000, 0, 2597.46, -1203.66, 58.474, 94.816, 0, 0, 2, 7, 6, 6, 482, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(173, 0, 30000, 0, 2586.54, -1243.82, 46.504, 314.259, 0, 0, 2, 7, 6, 6, 509, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(174, 0, 30000, 0, 2587.46, -1244.67, 46.327, 309.122, 0, 0, 2, 7, 6, 6, 509, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(176, 0, 800000, 0, 2578.63, -1210.88, 56.812, 72.691, 0, 0, 2, 7, 6, 6, 468, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(177, 0, 800000, 0, 2578.45, -1208.26, 57.745, 67.212, 0, 0, 2, 7, 6, 6, 468, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(179, 2, 245000, 0, 22.709, -1160.9, 9.02, 111.324, 0, 0, 1, 0, 6, 0, 496, 0, 2, 500, '1337', 0, 0, 1, 18650, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 57, 46),
(180, 6, 700000, 0, 527.437, -1288.69, 17.049, 359.679, 0, 0, 1, 0, 0, 0, 402, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14),
(181, 6, 1700000, 0, 4.633, -1191.96, 9.023, 2.902, 0, 0, 1, 0, 3, 3, 411, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16),
(182, 6, 310000, 0, 5.289, -1164.6, 9.002, 272.059, 0, 0, 1, 0, 3, 3, 445, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47),
(183, 6, 1400000, 0, 4.94, -1160.95, 9.062, 269.959, 0, 0, 1, 0, 3, 3, 451, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40),
(184, 6, 3000000, 0, 2070.75, -2542.33, 13.353, 2.23, 0, 0, 1, 0, 0, 0, 519, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 5, 144),
(185, 6, 950000, 0, 18.575, -1189.78, 12.91, 4.58, 0, 0, 1, 0, 3, 0, 487, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(186, 6, 800000, 0, 241.059, -1910.9, -0.545, 184.892, 0, 0, 1, 0, 0, 0, 454, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(187, 6, 315000, 0, 26.102, -1162.17, 9.286, 93.577, 0, 0, 1, 0, 3, 3, 500, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31),
(188, 6, 1500000, 0, 17.221, -1166.67, 8.927, 56.65, 0, 0, 1, 0, 3, 3, 541, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 8, 335),
(189, 6, 205000, 0, 24.462, -1159.08, 9.047, 94.301, 0, 0, 1, 0, 3, 3, 542, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 86),
(190, 6, 370000, 0, 10.395, -1192.09, 8.938, 1.769, 0, 0, 1, 0, 3, 3, 555, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51),
(191, 6, 2000000, 0, 16.998, -1170.92, 8.547, 65.673, 0, 0, 1, 0, 3, 3, 579, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 2, 145);

-- --------------------------------------------------------

--
-- Table structure for table `xmas_presents`
--

CREATE TABLE `xmas_presents` (
  `presSQLID` smallint(6) NOT NULL,
  `presTaken` tinyint(1) NOT NULL DEFAULT '0',
  `presPlaced` tinyint(1) NOT NULL DEFAULT '1',
  `presPos1` float NOT NULL,
  `presPos2` float NOT NULL,
  `presPos3` float NOT NULL,
  `presPos4` float NOT NULL,
  `presPos5` float NOT NULL,
  `presPos6` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `xmas_trees`
--

CREATE TABLE `xmas_trees` (
  `ctSQLID` smallint(6) NOT NULL,
  `ctPlaced` tinyint(1) NOT NULL DEFAULT '1',
  `ctPos1` float NOT NULL,
  `ctPos2` float NOT NULL,
  `ctPos3` float NOT NULL,
  `ctPos4` float NOT NULL,
  `ctPos5` float NOT NULL,
  `ctPos6` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `_stats`
--

CREATE TABLE `_stats` (
  `ssSQLID` tinyint(1) NOT NULL,
  `RegistrovanihKorisnika` mediumint(9) NOT NULL DEFAULT '0',
  `BanovanihKorisnika` mediumint(9) NOT NULL DEFAULT '0',
  `KikovanihKorisnika` mediumint(9) NOT NULL DEFAULT '0',
  `BrojWarnova` mediumint(9) NOT NULL DEFAULT '0',
  `BrojPosetaServeru` mediumint(9) NOT NULL DEFAULT '0',
  `HappyHours` tinyint(1) NOT NULL DEFAULT '0',
  `HappyHoursLvl` tinyint(2) NOT NULL DEFAULT '0',
  `HappyJobs` tinyint(1) NOT NULL DEFAULT '0',
  `PocetniLevel` tinyint(1) NOT NULL DEFAULT '1',
  `PocetniNovaca` mediumint(9) NOT NULL DEFAULT '35000',
  `BankaNovac` mediumint(7) NOT NULL DEFAULT '0',
  `KupovinaVozila` tinyint(4) NOT NULL DEFAULT '1',
  `Report` tinyint(1) NOT NULL DEFAULT '1',
  `Pitanja` tinyint(1) NOT NULL DEFAULT '1',
  `RekordServera` smallint(5) NOT NULL DEFAULT '0',
  `Oglasi` tinyint(1) NOT NULL DEFAULT '1',
  `Registracija` tinyint(1) NOT NULL DEFAULT '1',
  `ReactTime` mediumint(9) NOT NULL DEFAULT '7500',
  `ReactName` varchar(25) NOT NULL DEFAULT 'No-one'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_stats`
--

INSERT INTO `_stats` (`ssSQLID`, `RegistrovanihKorisnika`, `BanovanihKorisnika`, `KikovanihKorisnika`, `BrojWarnova`, `BrojPosetaServeru`, `HappyHours`, `HappyHoursLvl`, `HappyJobs`, `PocetniLevel`, `PocetniNovaca`, `BankaNovac`, `KupovinaVozila`, `Report`, `Pitanja`, `RekordServera`, `Oglasi`, `Registracija`, `ReactTime`, `ReactName`) VALUES
(1, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anticheat_settings`
--
ALTER TABLE `anticheat_settings`
  ADD UNIQUE KEY `ac_code` (`ac_code`);

--
-- Indexes for table `atms`
--
ALTER TABLE `atms`
  ADD PRIMARY KEY (`atmSQLID`),
  ADD UNIQUE KEY `atmSQLID` (`atmSQLID`);

--
-- Indexes for table `banned`
--
ALTER TABLE `banned`
  ADD PRIMARY KEY (`ban_id`),
  ADD UNIQUE KEY `ban_id` (`ban_id`);

--
-- Indexes for table `bussines`
--
ALTER TABLE `bussines`
  ADD PRIMARY KEY (`bussines_id`);

--
-- Indexes for table `containers`
--
ALTER TABLE `containers`
  ADD PRIMARY KEY (`koSQLID`);

--
-- Indexes for table `gangzones`
--
ALTER TABLE `gangzones`
  ADD PRIMARY KEY (`gzone_id`);

--
-- Indexes for table `gates`
--
ALTER TABLE `gates`
  ADD PRIMARY KEY (`gateid`);

--
-- Indexes for table `gps`
--
ALTER TABLE `gps`
  ADD PRIMARY KEY (`gpsSQLID`);

--
-- Indexes for table `job_skills`
--
ALTER TABLE `job_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `metros`
--
ALTER TABLE `metros`
  ADD PRIMARY KEY (`metro_id`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`org_id`);

--
-- Indexes for table `org_members`
--
ALTER TABLE `org_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `propertys`
--
ALTER TABLE `propertys`
  ADD PRIMARY KEY (`iSQLID`);

--
-- Indexes for table `punishments`
--
ALTER TABLE `punishments`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `rents`
--
ALTER TABLE `rents`
  ADD PRIMARY KEY (`vrSQLID`);

--
-- Indexes for table `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`seat_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_clothes`
--
ALTER TABLE `user_clothes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`veh_id`);

--
-- Indexes for table `xmas_presents`
--
ALTER TABLE `xmas_presents`
  ADD PRIMARY KEY (`presSQLID`);

--
-- Indexes for table `xmas_trees`
--
ALTER TABLE `xmas_trees`
  ADD PRIMARY KEY (`ctSQLID`);

--
-- Indexes for table `_stats`
--
ALTER TABLE `_stats`
  ADD PRIMARY KEY (`ssSQLID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `atms`
--
ALTER TABLE `atms`
  MODIFY `atmSQLID` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `banned`
--
ALTER TABLE `banned`
  MODIFY `ban_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bussines`
--
ALTER TABLE `bussines`
  MODIFY `bussines_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `containers`
--
ALTER TABLE `containers`
  MODIFY `koSQLID` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gangzones`
--
ALTER TABLE `gangzones`
  MODIFY `gzone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `gates`
--
ALTER TABLE `gates`
  MODIFY `gateid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `gps`
--
ALTER TABLE `gps`
  MODIFY `gpsSQLID` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `job_skills`
--
ALTER TABLE `job_skills`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `metros`
--
ALTER TABLE `metros`
  MODIFY `metro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `org_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `org_members`
--
ALTER TABLE `org_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `propertys`
--
ALTER TABLE `propertys`
  MODIFY `iSQLID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1024;

--
-- AUTO_INCREMENT for table `punishments`
--
ALTER TABLE `punishments`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rents`
--
ALTER TABLE `rents`
  MODIFY `vrSQLID` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `seats`
--
ALTER TABLE `seats`
  MODIFY `seat_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` mediumint(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_clothes`
--
ALTER TABLE `user_clothes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `veh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `xmas_presents`
--
ALTER TABLE `xmas_presents`
  MODIFY `presSQLID` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xmas_trees`
--
ALTER TABLE `xmas_trees`
  MODIFY `ctSQLID` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `_stats`
--
ALTER TABLE `_stats`
  MODIFY `ssSQLID` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
