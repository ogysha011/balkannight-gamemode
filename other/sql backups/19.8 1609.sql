-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 19, 2022 at 04:09 PM
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
(0, 0),
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(11, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(18, 0),
(19, 0),
(20, 0),
(21, 0),
(22, 0),
(23, 0),
(24, 0),
(25, 0),
(26, 0),
(27, 0),
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(37, 0),
(38, 0),
(39, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(44, 0),
(45, 0),
(46, 0),
(47, 0),
(48, 0),
(49, 0),
(50, 0),
(51, 0),
(52, 0);

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
(1, 548.165, -1503.65, 14.077, 0, 0, -92.1, 0, 0, 60, 1),
(2, 1447.86, -1021.63, 24.677, 0, 0, 0, 0, 0, 0, 1),
(5, 1472.86, -1022.1, 24.416, 0, 0, 0, 0, 0, 0, 1),
(6, 1451.17, -1021.94, 24.547, 0, 0, 0, 0, 0, 0, 1),
(7, 1449.53, -1022.08, 24.367, 0, 0, 0, 0, 0, 0, 1);

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
(3, -1, 0, 'Drzava', 550000, 16, 0, 0, 561.196, -1506.05, 14.557, 563.182, -1506.13, 14.583, 0, 0, 0, 0, 'Electronic Shop', 5, 0, 0, 100),
(4, -1, 0, 'Drzava', 1000000, 9, 0, 0, 2166.83, -1786.41, 13.52, 315.763, -143.661, 999.602, 0, 0, 7, 1, 'Gun Shop', 10, 0, 0, 100);

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
(3, 0, 1, 0, 0, 0, 1953.42, -1941.05, 1859.26, -1982.33, 'FFA220', 1900.04, -1955.89, 13.555);

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

-- --------------------------------------------------------

--
-- Table structure for table `hm_hits`
--

CREATE TABLE `hm_hits` (
  `Target` varchar(24) NOT NULL,
  `Bounty` int(11) NOT NULL,
  `PlacedBy` varchar(24) NOT NULL,
  `PlacedOn` int(11) NOT NULL,
  `CompletedBy` varchar(24) NOT NULL,
  `CompletedOn` int(11) NOT NULL,
  `Status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hm_players`
--

CREATE TABLE `hm_players` (
  `ID` int(11) NOT NULL,
  `Player` varchar(24) NOT NULL,
  `TimesTargeted` int(11) NOT NULL,
  `HitsPlaced` int(11) NOT NULL,
  `HitsPlacedAmount` int(11) NOT NULL,
  `Claimed` int(11) NOT NULL,
  `ClaimedAmount` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hm_players`
--

INSERT INTO `hm_players` (`ID`, `Player`, `TimesTargeted`, `HitsPlaced`, `HitsPlacedAmount`, `Claimed`, `ClaimedAmount`) VALUES
(1, 'ogy', 0, 0, 0, 0, 0);

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
(1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1),
(2, 2, 1, 2, 1, 4, 1, 2, 1, 3, 1),
(3, 3, 1, 2, 1, 3, 1, 2, 1, 1, 1),
(4, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(5, 5, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(6, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `log-ban`
--

CREATE TABLE `log-ban` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-bandera`
--

CREATE TABLE `log-bandera` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log-bandera`
--

INSERT INTO `log-bandera` (`Time`, `Text`) VALUES
('2022-08-19 02:43:03', 'ogy je donirao $123333 parkicu srece.'),
('2022-08-19 02:43:16', 'sneaky1337 je donirao $100000 parkicu srece.'),
('2022-08-19 02:43:27', 'sneaky1337 je donirao $100000 parkicu srece.'),
('2022-08-19 02:43:37', 'ogy je donirao $123333 parkicu srece.');

-- --------------------------------------------------------

--
-- Table structure for table `log-chat`
--

CREATE TABLE `log-chat` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log-chat`
--

INSERT INTO `log-chat` (`Time`, `Text`) VALUES
('2022-08-05 01:55:01', 'CMD: /b > ogy:  /cc'),
('2022-08-16 01:12:03', 'CMD: /a > Admin Sneaky_Hollywood: cao ja sam seksi'),
('2022-08-16 01:12:05', 'CMD: /a > Admin ogy: caos'),
('2022-08-16 01:12:13', 'CMD: /a > Admin Sneaky_Hollywood: znas sta'),
('2022-08-16 01:12:17', 'CMD: /a > Admin ogy: sta'),
('2022-08-16 01:12:21', 'CMD: /a > Admin Sneaky_Hollywood: promeni ovo vlasnici skripteri i ovo sto pise ultimate'),
('2022-08-16 01:12:23', 'CMD: /a > Admin Sneaky_Hollywood: kad se reg'),
('2022-08-16 01:12:27', 'CMD: /a > Admin Sneaky_Hollywood: sace da udje don za 5min'),
('2022-08-16 01:12:30', 'CMD: /a > Admin Sneaky_Hollywood: pa da ne vide to sranje'),
('2022-08-16 01:12:33', 'CMD: /b > ogy: aham'),
('2022-08-16 01:12:36', 'CMD: /a > Admin ogy: aham'),
('2022-08-16 01:12:39', 'CMD: /a > Admin ogy: dobro hajde'),
('2022-08-16 01:12:43', 'CMD: /a > Admin ogy: neka udje kad kazem'),
('2022-08-16 01:12:45', 'CMD: /a > Admin ogy: da promenim'),
('2022-08-16 01:12:46', 'CMD: /a > Admin ogy: sve'),
('2022-08-16 01:12:48', 'CMD: /a > Admin ogy: moze ?'),
('2022-08-16 01:12:48', 'CMD: /a > Admin Sneaky_Hollywood: ajde'),
('2022-08-16 01:13:00', 'CMD: /a > Admin Sneaky_Hollywood: daj da vidim metro'),
('2022-08-16 01:18:37', 'CMD: /a > Admin sneaky1337: cao ja sam seksi'),
('2022-08-16 01:18:43', 'CMD: /a > Admin sneaky1337: opaa'),
('2022-08-16 01:18:45', 'CMD: /a > Admin sneaky1337: idemoo'),
('2022-08-16 01:18:48', 'CMD: /a > Admin sneaky1337: oboren rekord'),
('2022-08-16 01:18:56', 'CMD: /a > Admin sneaky1337: si stavio zuta boja na register'),
('2022-08-16 01:19:03', 'CMD: /o > Admin ogy: NA OBARANJE REKORDA SERVER IDE NA BALKAN SAMP'),
('2022-08-16 01:19:09', 'CMD: /o > Admin ogy: IDEMO OBARAMO REKORD'),
('2022-08-16 01:19:10', 'CMD: /o > Admin ogy: IDEMO OBARAMO REKORDE'),
('2022-08-16 01:19:12', 'CMD: /o > Admin ogy: XAXAX'),
('2022-08-16 01:19:19', 'CMD: /o > Admin sneaky1337: XD'),
('2022-08-16 01:19:21', 'CMD: /a > Admin ogy: gde je'),
('2022-08-16 01:19:22', 'CMD: /a > Admin ogy: be zuta'),
('2022-08-16 01:19:25', 'CMD: /a > Admin sneaky1337: ma nista'),
('2022-08-16 01:19:26', 'CMD: /a > Admin sneaky1337: glup si'),
('2022-08-16 01:19:33', 'CMD: /b > ogy: aj metro da vidis sta'),
('2022-08-16 01:19:51', 'CMD: /b > ogy: eto ti'),
('2022-08-16 01:19:54', 'CMD: /b > ogy: udji vidi'),
('2022-08-16 01:20:06', 'CMD: /a > Admin sneaky1337: jel kad udju vise ljudi'),
('2022-08-16 01:20:08', 'CMD: /a > Admin sneaky1337: jel se vidu'),
('2022-08-16 01:20:10', 'CMD: /a > Admin ogy: da'),
('2022-08-16 01:20:10', 'CMD: /a > Admin sneaky1337: zajedno'),
('2022-08-16 01:20:13', 'CMD: /a > Admin ogy: gde ces'),
('2022-08-16 01:20:15', 'CMD: /a > Admin ogy: u banku ?'),
('2022-08-16 01:20:17', 'CMD: /a > Admin sneaky1337: cek da dodje i don'),
('2022-08-16 01:20:18', 'CMD: /a > Admin ogy: aj zajedno'),
('2022-08-16 01:20:19', 'CMD: /b > ogy: aj'),
('2022-08-16 01:20:38', 'CMD: /b > ogy: eto vam'),
('2022-08-16 01:20:39', 'CMD: /b > ogy: 3'),
('2022-08-16 01:20:40', 'CMD: /b > ogy: xd'),
('2022-08-16 01:20:41', 'CMD: /b > ogy: rude'),
('2022-08-16 01:20:43', 'CMD: /b > ogy: rute'),
('2022-08-16 01:20:57', 'CMD: /b > ogy: izadje covek'),
('2022-08-16 01:21:05', 'CMD: /a > Admin sneaky1337: sace da udje'),
('2022-08-16 01:21:06', 'CMD: /a > Admin sneaky1337: opet'),
('2022-08-16 01:21:08', 'CMD: /a > Admin ogy: som'),
('2022-08-16 01:21:21', 'CMD: /a > Admin ogy: dodao sam /server>podesavanja ac'),
('2022-08-16 01:21:29', 'CMD: /a > Admin ogy: imas da podesavas preko sqla funkiconise'),
('2022-08-16 01:21:29', 'CMD: /a > Admin sneaky1337: to ceco'),
('2022-08-16 01:21:30', 'CMD: /a > Admin ogy: cuva se'),
('2022-08-16 01:21:32', 'CMD: /a > Admin ogy: i sve'),
('2022-08-16 01:21:51', 'CMD: /b > sneaky1337: ajde banka'),
('2022-08-16 01:21:54', 'CMD: /b > ogy: aj'),
('2022-08-16 01:22:27', 'CMD: /a > Admin sneaky1337: zar se ovo ne pomera'),
('2022-08-16 01:22:31', 'CMD: /a > Admin ogy: nije napravio'),
('2022-08-16 01:22:33', 'CMD: /a > Admin ogy: mjau'),
('2022-08-16 01:22:35', 'CMD: /a > Admin ogy: dexter je pravio'),
('2022-08-16 01:22:38', 'CMD: /a > Admin ogy: tcn zajedno smo'),
('2022-08-16 01:22:56', 'CMD: /a > Admin sneaky1337: recicu dexter'),
('2022-08-16 01:22:58', 'CMD: /a > Admin sneaky1337: da uradi'),
('2022-08-16 01:23:58', 'CMD: /b > ogy: i dalje nisam promenio pickup xd'),
('2022-08-16 01:24:01', 'CMD: /b > ogy: nisam se setio'),
('2022-08-16 01:24:07', 'CMD: /a > Admin sneaky1337: promeni some'),
('2022-08-16 01:26:34', 'CMD: /a > Admin sneaky1337: cresha coveku'),
('2022-08-16 01:27:08', 'CMD: /a > Admin sneaky1337: e'),
('2022-08-16 01:27:09', 'CMD: /a > Admin ogy: nisam jos podesio'),
('2022-08-16 01:27:12', 'CMD: /a > Admin ogy: vrv mu pise'),
('2022-08-16 01:27:13', 'CMD: /a > Admin ogy: banned'),
('2022-08-16 01:27:15', 'CMD: /a > Admin sneaky1337: i njemu pise da'),
('2022-08-16 01:27:18', 'CMD: /a > Admin ogy: neka izadje iz samp klienta'),
('2022-08-16 01:27:21', 'CMD: /a > Admin ogy: i opet da udje'),
('2022-08-16 01:27:26', 'CMD: /a > Admin ogy: nisam jos podesio array'),
('2022-08-16 01:27:28', 'CMD: /a > Admin ogy: za ac'),
('2022-08-16 01:29:28', 'CMD: /b > ogy: tjt od mapa'),
('2022-08-16 01:29:30', 'CMD: /b > ogy: sta imamo'),
('2022-08-16 01:29:40', 'CMD: /b > sneaky1337: gsf'),
('2022-08-16 01:29:52', 'CMD: /b > ogy: nmg port'),
('2022-08-16 01:29:54', 'CMD: /b > ogy: moram da vozim'),
('2022-08-16 01:29:56', 'CMD: /b > sneaky1337: vozi'),
('2022-08-16 01:30:03', 'CMD: /b > sneaky1337: cek'),
('2022-08-16 01:30:05', 'CMD: /b > sneaky1337: ovaj park'),
('2022-08-16 01:30:21', 'CMD: /b > sneaky1337: ajde teraj'),
('2022-08-16 01:31:35', 'CMD: /b > sneaky1337: idi do neki posao'),
('2022-08-16 01:31:36', 'CMD: /b > sneaky1337: da vidi'),
('2022-08-16 01:32:05', 'CMD: /a > Admin ogy: imate dole se ispisuje text'),
('2022-08-16 01:32:09', 'CMD: /a > Admin ogy: kao animirani textdraw'),
('2022-08-16 01:32:14', 'CMD: /a > Admin ogy: ove kao poruke'),
('2022-08-16 01:32:51', 'CMD: /a > Admin sneaky1337: ogi'),
('2022-08-16 01:32:53', 'CMD: /a > Admin ogy: ej'),
('2022-08-16 01:32:54', 'CMD: /a > Admin sneaky1337: sjebo si ovo'),
('2022-08-16 01:32:55', 'CMD: /a > Admin sneaky1337: /takejob'),
('2022-08-16 01:32:58', 'CMD: /a > Admin sneaky1337: nisi stavio kordinate'),
('2022-08-16 01:33:00', 'CMD: /a > Admin sneaky1337: na pickup'),
('2022-08-16 01:33:01', 'CMD: /a > Admin ogy: moguce'),
('2022-08-16 01:33:04', 'CMD: /a > Admin ogy: sta kaze'),
('2022-08-16 01:33:11', 'CMD: /a > Admin ogy: kao niste na pickupu'),
('2022-08-16 01:33:12', 'CMD: /a > Admin ogy: ?'),
('2022-08-16 01:33:13', 'CMD: /a > Admin sneaky1337: morate stajati na pockupu da bi uzeli psaoo'),
('2022-08-16 01:33:15', 'CMD: /a > Admin sneaky1337: na svaki posao'),
('2022-08-16 01:33:17', 'CMD: /a > Admin ogy: idi /setjob'),
('2022-08-16 01:33:19', 'CMD: /a > Admin ogy: pa setaj sebi'),
('2022-08-16 01:33:21', 'CMD: /a > Admin ogy: dok ne sredim'),
('2022-08-16 01:34:45', 'CMD: /a > Admin ogy: odradicemo par novih poslova'),
('2022-08-16 01:34:52', 'CMD: /a > Admin sneaky1337: treba udje umesto ude'),
('2022-08-16 01:34:53', 'CMD: /a > Admin ogy: samo ideje dok dobijem'),
('2022-08-16 01:34:55', 'CMD: /a > Admin sneaky1337: na uber'),
('2022-08-16 01:34:59', 'CMD: /a > Admin sneaky1337: pise putkit treba da ude'),
('2022-08-16 01:35:02', 'CMD: /a > Admin ogy: aham'),
('2022-08-16 01:35:19', 'CMD: /a > Admin ogy: op'),
('2022-08-16 01:35:20', 'CMD: /a > Admin ogy: drop '),
('2022-08-16 01:35:22', 'CMD: /a > Admin ogy: idemoo'),
('2022-08-16 01:35:28', 'CMD: /a > Admin ogy: odoh da uzmem'),
('2022-08-16 01:35:58', 'CMD: /a > Admin ogy: droga ima'),
('2022-08-16 01:36:19', 'CMD: /a > Admin ogy: 6g droge sam dobio'),
('2022-08-16 01:38:08', 'CMD: /b > ogy: kako ide'),
('2022-08-16 01:38:34', 'CMD: /a > Admin sneaky1337: ogy'),
('2022-08-16 01:38:36', 'CMD: /a > Admin ogy: a'),
('2022-08-16 01:38:40', 'CMD: /a > Admin sneaky1337: treba da se stavi animacija i da se freeza'),
('2022-08-16 01:38:43', 'CMD: /a > Admin sneaky1337: da ne moze da hoda'),
('2022-08-16 01:38:44', 'CMD: /a > Admin ogy: gde'),
('2022-08-16 01:38:47', 'CMD: /a > Admin sneaky1337: na posao'),
('2022-08-16 01:38:50', 'CMD: /a > Admin ogy: taj'),
('2022-08-16 01:38:52', 'CMD: /a > Admin sneaky1337: da'),
('2022-08-16 01:38:54', 'CMD: /a > Admin ogy: dobro'),
('2022-08-16 01:38:58', 'CMD: /a > Admin sneaky1337: i da se stavi vise checkpointa'),
('2022-08-16 01:39:03', 'CMD: /a > Admin sneaky1337: a ne samo jedan i odma pare da dobijes'),
('2022-08-16 01:39:06', 'CMD: /a > Admin sneaky1337: na drugi check point'),
('2022-08-16 01:39:14', 'CMD: /a > Admin ogy: namesticemo, kad dobijemo novu mapu'),
('2022-08-16 01:39:16', 'CMD: /a > Admin ogy: bice vise svega'),
('2022-08-16 01:39:22', 'CMD: /a > Admin sneaky1337: dada'),
('2022-08-16 01:44:51', 'CMD: /a > Admin sneaky1337: smrdo'),
('2022-08-16 01:44:53', 'CMD: /a > Admin sneaky1337: jel radis nesto'),
('2022-08-16 01:44:54', 'CMD: /a > Admin Don_Tatko: a'),
('2022-08-16 01:45:17', 'CMD: /a > Admin ogy: a'),
('2022-08-16 01:45:22', 'CMD: /a > Admin sneaky1337: aj gotaj se ako ne radis nista'),
('2022-08-16 01:45:38', 'CMD: /b > ogy: taman ideje da smisljam'),
('2022-08-16 01:46:44', 'CMD: /o > Admin sneaky1337: .'),
('2022-08-16 01:48:19', 'CMD: /g > sneaky1337: cao svima ja sam seksi'),
('2022-08-16 01:48:28', 'CMD: /a > Admin ogy: jel ti je ovaj poslao bolnicu ili lotto'),
('2022-08-16 01:48:30', 'CMD: /a > Admin ogy: sta je radio'),
('2022-08-16 01:48:30', 'CMD: /l > Don_Tatko: wq'),
('2022-08-16 01:48:38', 'CMD: /a > Admin sneaky1337: nije jebem ga offline je'),
('2022-08-16 01:48:41', 'CMD: /a > Admin ogy: som'),
('2022-08-16 01:49:29', 'CMD: /b > sneaky1337:  /podesavanja'),
('2022-08-16 01:50:18', 'CMD: /a > Admin sneaky1337: some'),
('2022-08-16 01:50:25', 'CMD: /a > Admin sneaky1337: jel ubacene ent za kuce'),
('2022-08-16 01:50:28', 'CMD: /a > Admin sneaky1337: jel imaju ent'),
('2022-08-16 01:50:39', 'CMD: /a > Admin ogy: nemam mapa da ubacim,ali imaju ent'),
('2022-08-16 01:50:54', 'CMD: /a > Admin ogy: to jos sa mog moda ostalo'),
('2022-08-16 01:51:01', 'CMD: /a > Admin ogy: ja nisam dobio nikakvu mapu za bilo kakav ent'),
('2022-08-16 01:51:39', 'CMD: /a > Admin ogy: gledaj stan'),
('2022-08-16 01:52:14', 'CMD: /a > Admin ogy: eto vam sve'),
('2022-08-16 01:52:17', 'CMD: /a > Admin ogy: pa proverite'),
('2022-08-16 01:52:21', 'CMD: /a > Admin ogy: izadjite somovi xd'),
('2022-08-16 01:53:57', 'CMD: /a > Admin ogy: najjaca je za srednju'),
('2022-08-16 01:55:13', 'CMD: /a > Admin sneaky1337: daj garazu'),
('2022-08-16 01:55:24', 'CMD: /a > Admin ogy: nema garaza'),
('2022-08-16 01:55:30', 'CMD: /b > ogy: AJMO PO'),
('2022-08-16 01:55:31', 'CMD: /b > ogy: DROP'),
('2022-08-16 01:55:38', 'CMD: /a > Admin ogy: sedaj'),
('2022-08-16 01:55:41', 'CMD: /a > Admin ogy: ja djiram'),
('2022-08-16 01:55:46', 'CMD: /a > Admin ogy: idemo po drop'),
('2022-08-16 01:56:19', 'CMD: /b > ogy: ZLATO'),
('2022-08-16 01:56:20', 'CMD: /b > ogy: 31 G'),
('2022-08-16 01:57:45', 'CMD: /a > Admin ogy: svakih 30min se gasi'),
('2022-08-16 01:57:47', 'CMD: /a > Admin ogy: smrdljivi host'),
('2022-08-16 01:57:50', 'CMD: /a > Admin ogy: jer je free'),
('2022-08-16 01:58:09', 'CMD: /a > Admin sneaky1337: uzecu ja'),
('2022-08-16 01:58:19', 'CMD: /a > Admin ogy: uzmi onaj sa vibe-a dobijamo i bazu i sve'),
('2022-08-16 01:58:21', 'CMD: /a > Admin ogy: za 1.5eur'),
('2022-08-16 01:58:23', 'CMD: /a > Admin sneaky1337: some'),
('2022-08-16 01:58:26', 'CMD: /a > Admin ogy: mesec dana testiramo'),
('2022-08-16 01:58:29', 'CMD: /a > Admin ogy: a'),
('2022-08-16 01:58:30', 'CMD: /a > Admin sneaky1337: da promenimo bh'),
('2022-08-16 01:58:34', 'CMD: /a > Admin sneaky1337: previse je sranje'),
('2022-08-16 01:58:39', 'CMD: /a > Admin sneaky1337: ne mozes ni da skocis vec te ukoci'),
('2022-08-16 01:58:41', 'CMD: /a > Admin ogy: da promenimo bh'),
('2022-08-16 01:58:44', 'CMD: /a > Admin sneaky1337: malo na veci timer da ga stavimo'),
('2022-08-16 01:58:45', 'CMD: /a > Admin ogy: bunnyhop ?'),
('2022-08-16 01:58:47', 'CMD: /a > Admin sneaky1337: da'),
('2022-08-16 01:58:48', 'CMD: /a > Admin ogy: to mislis'),
('2022-08-16 01:58:48', 'CMD: /a > Admin sneaky1337: da ima'),
('2022-08-16 01:58:50', 'CMD: /a > Admin ogy: sad cu da vidim'),
('2022-08-16 01:58:58', 'CMD: /a > Admin sneaky1337: da stavimo bh al da moze vise da se skace'),
('2022-08-16 02:00:04', 'CMD: /b > ogy: daj da probam'),
('2022-08-16 02:00:07', 'CMD: /b > ogy: da ti udjem u tvoj'),
('2022-08-16 02:00:08', 'CMD: /b > ogy: rent'),
('2022-08-16 02:00:13', 'CMD: /a > Admin ogy: daj da probam da udjem u vas rent'),
('2022-08-16 02:00:17', 'CMD: /a > Admin ogy: da vidim dal ce me izbaci'),
('2022-08-16 02:00:23', 'CMD: /a > Admin ogy: ili probajte vi u moj'),
('2022-08-16 02:00:30', 'CMD: /a > Admin sneaky1337: pa mogu kad sam vlasnik xd'),
('2022-08-16 02:00:43', 'CMD: /a > Admin ogy: bogami ne moze'),
('2022-08-16 02:00:44', 'CMD: /a > Admin ogy: xd'),
('2022-08-16 02:00:49', 'CMD: /a > Admin ogy: eto probaj'),
('2022-08-16 02:01:03', 'CMD: /a > Admin sneaky1337: xd'),
('2022-08-16 02:01:19', 'CMD: /a > Admin ogy: igrate li valoranta'),
('2022-08-16 02:02:18', 'CMD: /a > Admin Don_Tatko: ja ne'),
('2022-08-16 02:03:33', 'CMD: /a > Admin ogy: nista odoh da odradim jos nesto za ovog jednog lika i da spavam'),
('2022-08-16 02:03:35', 'CMD: /a > Admin ogy: cujemo se sutra'),
('2022-08-16 02:03:38', 'CMD: /a > Admin Don_Tatko: ajde'),
('2022-08-16 02:03:39', 'CMD: /a > Admin ogy: pozdravi ovom soma'),
('2022-08-16 02:03:44', 'CMD: /a > Admin Don_Tatko: vazi'),
('2022-08-16 02:05:34', 'CMD: /b > sneaky1337: w'),
('2022-08-16 02:05:39', 'IC: ogy > 1'),
('2022-08-16 02:05:49', 'CMD: /a > Admin ogy: gde ces'),
('2022-08-16 02:05:53', 'CMD: /a > Admin sneaky1337: ovde kod spawna'),
('2022-08-16 02:05:55', 'CMD: /a > Admin sneaky1337: il kod opstine'),
('2022-08-16 02:05:57', 'CMD: /a > Admin sneaky1337: sta kazes ti'),
('2022-08-16 02:05:58', 'CMD: /a > Admin ogy: spawn bolje'),
('2022-08-16 02:05:59', 'CMD: /a > Admin sneaky1337: gde je bolje'),
('2022-08-16 02:06:02', 'CMD: /a > Admin sneaky1337: ajde'),
('2022-08-16 02:06:04', 'CMD: /a > Admin ogy: gde'),
('2022-08-16 02:06:13', 'CMD: /a > Admin ogy: ne vidi se logo ovde'),
('2022-08-16 02:06:14', 'CMD: /a > Admin ogy: cek'),
('2022-08-16 02:06:26', 'CMD: /a > Admin ogy: ovde'),
('2022-08-16 02:06:27', 'CMD: /a > Admin ogy: goto'),
('2022-08-16 02:06:59', 'CMD: /b > ogy: ./anim crossarms1'),
('2022-08-16 02:07:29', 'CMD: /b > sneaky1337: ne pomerajte se dok ne slikam'),
('2022-08-16 02:09:06', 'CMD: /b > sneaky1337: tjt'),
('2022-08-16 02:21:37', 'CMD: /b > sneaky1337: .'),
('2022-08-16 02:21:40', 'CMD: /b > sneaky1337: .'),
('2022-08-16 02:21:40', 'CMD: /b > sneaky1337: .'),
('2022-08-17 00:50:24', 'CMD: /a > Admin ogy: pa da'),
('2022-08-17 00:50:27', 'CMD: /a > Admin ogy: ne ucitava se ni za kurac'),
('2022-08-17 00:50:32', 'CMD: /a > Admin ogy: top'),
('2022-08-17 00:50:36', 'CMD: /b > ogy: a'),
('2022-08-17 00:51:51', 'CMD: /a > Admin sneaky1337: og'),
('2022-08-17 00:51:55', 'CMD: /a > Admin sneaky1337: ogy'),
('2022-08-17 00:52:25', 'CMD: /a > Admin ogy: a'),
('2022-08-17 00:52:31', 'CMD: /a > Admin sneaky1337: opstina rip'),
('2022-08-17 00:52:35', 'CMD: /a > Admin ogy: naravno'),
('2022-08-17 00:52:43', 'CMD: /a > Admin sneaky1337: treba da se fix ovo'),
('2022-08-17 00:52:47', 'CMD: /a > Admin sneaky1337: da se optimizuje'),
('2022-08-17 00:53:10', 'CMD: /a > Admin sneaky1337: .'),
('2022-08-17 00:54:01', 'CMD: /a > Admin sneaky1337: konstantno izbacuje ono banned from the server'),
('2022-08-17 00:54:13', 'CMD: /a > Admin ogy: ne moze'),
('2022-08-17 00:54:22', 'CMD: /a > Admin ogy: nemojte se dzabe portati do mene'),
('2022-08-17 00:56:53', 'CMD: /a > Admin ogy: uzmi test server sad da ubacim mod da imamo online 24/7'),
('2022-08-17 00:57:02', 'CMD: /a > Admin ogy: a ne da ustajem iz kreveta da ga dizem ovo govno'),
('2022-08-17 00:57:06', 'CMD: /a > Admin ogy: jer se gasi svakih 30minuta'),
('2022-08-17 00:57:17', 'CMD: /a > Admin ogy: serem se i u server'),
('2022-08-17 00:57:22', 'CMD: /a > Admin sneaky1337: aj sacu'),
('2022-08-17 00:57:33', 'CMD: /a > Admin sneaky1337: sto ne biduje onaj na etrail '),
('2022-08-17 00:57:51', 'CMD: /a > Admin ogy: ne znam jer ne radi'),
('2022-08-17 00:58:01', 'CMD: /a > Admin ogy: zasto ne radi,ne znam ni ja'),
('2022-08-17 00:58:04', 'CMD: /a > Admin ogy: ali ne radi'),
('2022-08-17 00:58:14', 'CMD: /a > Admin sneaky1337: pa sta tacno ne radi'),
('2022-08-17 00:58:18', 'CMD: /a > Admin sneaky1337: da pitam sasu'),
('2022-08-17 00:58:49', 'CMD: /a > Admin ogy: joj jebote'),
('2022-08-17 00:58:54', 'CMD: /a > Admin sneaky1337: ovom cresha..'),
('2022-08-17 00:58:59', 'CMD: /a > Admin ogy: idi jebavaj se sa njim brate i opet ce reci da mora da radi'),
('2022-08-17 00:59:03', 'CMD: /a > Admin ogy: jebo te on'),
('2022-08-17 00:59:08', 'CMD: /a > Admin ogy: platicu ja sutra server 1.5eura'),
('2022-08-17 00:59:10', 'CMD: /a > Admin ogy: smrdljivih'),
('2022-08-17 00:59:12', 'CMD: /a > Admin ogy: da imam da testiram'),
('2022-08-17 00:59:18', 'CMD: /a > Admin ogy: serem se i u 200 dinara'),
('2022-08-17 00:59:22', 'CMD: /a > Admin ogy: majku im jebem'),
('2022-08-17 00:59:24', 'CMD: /a > Admin ogy: i serveru'),
('2022-08-17 00:59:31', 'CMD: /a > Admin sneaky1337: ne nego dzaba sam uzo na etrailu'),
('2022-08-17 00:59:33', 'CMD: /a > Admin sneaky1337: debilu'),
('2022-08-17 00:59:54', 'CMD: /a > Admin ogy: neka ga ugasi jebo ga etrail'),
('2022-08-17 00:59:58', 'CMD: /a > Admin ogy: serem se i u njega'),
('2022-08-17 01:00:06', 'CMD: /a > Admin ogy: kad nema sve verzija mysqla'),
('2022-08-17 01:00:08', 'CMD: /a > Admin ogy: vec samo najnoviju'),
('2022-08-17 01:00:43', 'CMD: /a > Admin ogy: eto ti pa vidi'),
('2022-08-17 01:00:46', 'CMD: /a > Admin ogy: nije ni za kurac'),
('2022-08-17 01:00:51', 'CMD: /a > Admin ogy: 626 objekata ima'),
('2022-08-17 01:00:53', 'CMD: /a > Admin ogy: opstina'),
('2022-08-17 01:00:55', 'CMD: /a > Admin ogy: sad sam proveri'),
('2022-08-17 01:00:56', 'CMD: /a > Admin ogy: o'),
('2022-08-17 01:01:00', 'CMD: /b > Ogisha_Matth: Pa kako '),
('2022-08-17 01:01:03', 'CMD: /a > Admin Ogisha_Matth: Pa kako '),
('2022-08-17 01:01:07', 'CMD: /a > Admin ogy: pa ne znam brate'),
('2022-08-17 01:01:17', 'CMD: /a > Admin ogy: server kad se portas ovamo, ne moze da ucita vise od 1k objekata'),
('2022-08-17 01:01:19', 'CMD: /a > Admin ogy: i crashuje'),
('2022-08-17 01:01:22', 'CMD: /a > Admin ogy: jer koliko znam'),
('2022-08-17 01:01:27', 'CMD: /a > Admin ogy: 600+ 800'),
('2022-08-17 01:01:30', 'CMD: /a > Admin ogy: nije manje od 1k'),
('2022-08-17 01:01:39', 'CMD: /a > Admin ogy: ucita sve objekte i igracu crashuje'),
('2022-08-17 01:01:42', 'CMD: /a > Admin ogy: jer je samp ogranicen'),
('2022-08-17 01:01:49', 'CMD: /a > Admin Ogisha_Matth: LSPD se odlicno ucitava'),
('2022-08-17 01:01:57', 'CMD: /a > Admin ogy: da kad je stavljen priority'),
('2022-08-17 01:01:59', 'CMD: /a > Admin ogy: na njega'),
('2022-08-17 01:02:09', 'CMD: /a > Admin ogy: da ugasim priority, isto bi bilo kao i sa opstinom'),
('2022-08-17 01:02:11', 'CMD: /a > Admin ogy: idencitno'),
('2022-08-17 01:02:17', 'CMD: /a > Admin Ogisha_Matth: Ajd daj mi ovu opstinu da smanjim '),
('2022-08-17 01:02:26', 'CMD: /a > Admin ogy: necu nista da smanjujem boli me kurac'),
('2022-08-17 01:02:36', 'CMD: /a > Admin ogy: kad mozete da pravite pd od 800 objekata kao da mapamo los santos'),
('2022-08-17 01:02:47', 'CMD: /a > Admin ogy: ne bude li mogao da se namesti pd normalno da se ucitava oba'),
('2022-08-17 01:02:51', 'CMD: /a > Admin ogy: necu ni da ubacujem'),
('2022-08-17 01:02:58', 'CMD: /a > Admin ogy: ubacicu svoj pd sa iga starog od 400 objekata'),
('2022-08-17 01:03:00', 'CMD: /a > Admin ogy: i bice 1k'),
('2022-08-17 01:03:02', 'CMD: /a > Admin ogy: i jebite se'),
('2022-08-17 01:03:10', 'CMD: /a > Admin Ogisha_Matth: Onaj sto smo pre radili ?'),
('2022-08-17 01:03:13', 'CMD: /o > Admin ogy: restart da testiramo'),
('2022-08-17 01:03:15', 'CMD: /a > Admin ogy: da'),
('2022-08-17 01:03:19', 'CMD: /a > Admin Ogisha_Matth: Pa on je i lepsi '),
('2022-08-17 01:04:47', 'CMD: /a > Admin ogy: isto je'),
('2022-08-17 01:04:52', 'CMD: /a > Admin ogy: vrh'),
('2022-08-17 01:04:54', 'CMD: /b > Ogisha_Matth: jpack'),
('2022-08-17 01:05:08', 'CMD: /b > Ogisha_Matth: Opstina je bas haos'),
('2022-08-17 01:05:43', 'CMD: /a > Admin sneaky1337: pa nije samo opstina'),
('2022-08-17 01:05:51', 'CMD: /a > Admin sneaky1337: vec i ovo za bandere srece se ne ucitava'),
('2022-08-17 01:05:56', 'CMD: /a > Admin sneaky1337: ..'),
('2022-08-17 01:06:00', 'CMD: /a > Admin ogy: kakva bandera srece'),
('2022-08-17 01:06:04', 'CMD: /a > Admin ogy: kakve to veze sa opstinom ima'),
('2022-08-17 01:06:14', 'CMD: /a > Admin sneaky1337: kazem da se i ovo ne ucitava '),
('2022-08-17 01:06:24', 'CMD: /a > Admin ogy: to je tako jer imas 4 prioritetnije mape'),
('2022-08-17 01:06:25', 'CMD: /a > Admin ogy: pored'),
('2022-08-17 01:06:28', 'CMD: /a > Admin ogy: pogledaj oko sebe'),
('2022-08-17 01:06:31', 'CMD: /a > Admin ogy: zlatara, banka, vw znak'),
('2022-08-17 01:06:36', 'CMD: /b > ogy: sve je radius od 50'),
('2022-08-17 01:06:40', 'CMD: /a > Admin ogy: sve je radius od 50'),
('2022-08-17 01:06:59', 'CMD: /a > Admin ogy: mislim ako zelis da se pre ucita bandera srece nego zlatara mozemo i to napraviti'),
('2022-08-17 01:07:09', 'CMD: /a > Admin ogy: pa onda da ljudi kroz pod padaju u zlatari'),
('2022-08-17 01:07:19', 'CMD: /a > Admin ogy: jer imamo 4 glavne lokacije jedna pored druge'),
('2022-08-17 01:07:20', 'CMD: /a > Admin ogy: nigde smisla'),
('2022-08-17 01:07:23', 'CMD: /a > Admin ogy: ali jbg'),
('2022-08-17 01:07:26', 'CMD: /a > Admin Ogisha_Matth: Ja imam jednu ideju'),
('2022-08-17 01:07:31', 'CMD: /a > Admin ogy: nije na meni da odlucujem'),
('2022-08-17 01:07:32', 'CMD: /a > Admin Ogisha_Matth: goto se sada'),
('2022-08-17 01:07:39', 'CMD: /a > Admin Ogisha_Matth: ovo da se obrise '),
('2022-08-17 01:08:24', 'CMD: /a > Admin Ogisha_Matth: Rambo'),
('2022-08-17 01:08:29', 'CMD: /a > Admin sneaky1337: a'),
('2022-08-17 01:08:29', 'CMD: /a > Admin Ogisha_Matth: Zasto ovo nebi ostavio'),
('2022-08-17 01:08:33', 'CMD: /a > Admin Ogisha_Matth: Ovo se lepo ocitava'),
('2022-08-17 01:08:42', 'CMD: /a > Admin Ogisha_Matth: A ono gore kod opstine banderu srece obrises'),
('2022-08-17 01:08:53', 'CMD: /a > Admin Ogisha_Matth: Stavis ovo da bude Bandera srece ili ti ga npr Parkic Srece tako nesto'),
('2022-08-17 01:09:00', 'CMD: /a > Admin Ogisha_Matth: Ovo je bolja opcija'),
('2022-08-17 01:09:04', 'CMD: /a > Admin Ogisha_Matth: Stace ti 2 parka'),
('2022-08-17 01:09:13', 'CMD: /a > Admin ogy: sad cu ceo ac da ugasim da vidim da me moj server banuje'),
('2022-08-17 01:09:16', 'CMD: /a > Admin ogy: majku mu jebem'),
('2022-08-17 01:09:17', 'CMD: /a > Admin ogy: mrtvu'),
('2022-08-17 01:09:57', 'CMD: /a > Admin Ogisha_Matth: Sta mislis Rambo ?'),
('2022-08-17 01:10:02', 'CMD: /a > Admin Ogisha_Matth: Mislim ja samo dajem ideju '),
('2022-08-17 01:10:10', 'CMD: /a > Admin sneaky1337: ma kako god'),
('2022-08-17 01:10:12', 'CMD: /a > Admin Ogisha_Matth: Jer ovaj parkic i nema neko znacenje'),
('2022-08-17 01:10:17', 'CMD: /a > Admin Ogisha_Matth: A iskr lepsi je nego onaj gore '),
('2022-08-17 01:10:55', 'CMD: /a > Admin ogy: aj me sad banuj majku ti jebem'),
('2022-08-17 01:11:05', 'CMD: /b > Ogisha_Matth: Jesi cuo predlog'),
('2022-08-17 01:11:07', 'CMD: /b > ogy: ne'),
('2022-08-17 01:11:09', 'CMD: /b > ogy: banovao me je srv'),
('2022-08-17 01:11:11', 'CMD: /b > Ogisha_Matth: Odi gore do zlatare '),
('2022-08-17 01:11:31', 'CMD: /b > Ogisha_Matth: Idi gore do parka'),
('2022-08-17 01:11:39', 'CMD: /b > Ogisha_Matth: Ovo da se obrise'),
('2022-08-17 01:11:44', 'CMD: /b > Ogisha_Matth: Zbog prenatrpanih stvari'),
('2022-08-17 01:11:48', 'CMD: /b > Ogisha_Matth: I da se ova Bandera srece'),
('2022-08-17 01:11:54', 'CMD: /b > Ogisha_Matth: Premesti u Parkic srece npr'),
('2022-08-17 01:12:00', 'CMD: /b > Ogisha_Matth: I da stoji tamo kod onoga drugog parkica'),
('2022-08-17 01:12:06', 'CMD: /b > Ogisha_Matth: Ovo ima oko 200 i nesto objekata'),
('2022-08-17 01:12:24', 'CMD: /b > ogy: to nista nece pomoci'),
('2022-08-17 01:12:27', 'CMD: /b > ogy: da mi resimo problem'),
('2022-08-17 01:12:29', 'CMD: /b > ogy: sa jebenim mapama'),
('2022-08-17 01:12:31', 'CMD: /b > ogy: ostalim'),
('2022-08-17 01:12:46', 'CMD: /b > ogy: gledaj ovo'),
('2022-08-17 01:12:48', 'CMD: /b > Ogisha_Matth: Pa ja nzm kako opstina ima 600 obj'),
('2022-08-17 01:12:58', 'CMD: /b > ogy: samo gledaj'),
('2022-08-17 01:13:02', 'CMD: /b > ogy: 80 objekata'),
('2022-08-17 01:13:03', 'CMD: /b > Ogisha_Matth: Pa ista ovakva opstina na Indigo ima oko 300 obj '),
('2022-08-17 01:13:14', 'CMD: /b > ogy: 100'),
('2022-08-17 01:13:17', 'CMD: /b > ogy: racunaj samo'),
('2022-08-17 01:13:19', 'CMD: /b > ogy: mzoe ?'),
('2022-08-17 01:13:22', 'CMD: /b > ogy: 100+80'),
('2022-08-17 01:13:26', 'CMD: /b > ogy: 600'),
('2022-08-17 01:13:33', 'CMD: /b > Ogisha_Matth: 780'),
('2022-08-17 01:13:36', 'CMD: /b > ogy: 800'),
('2022-08-17 01:13:40', 'CMD: /b > ogy: koliko smo dosli ?'),
('2022-08-17 01:13:44', 'CMD: /b > Ogisha_Matth: 1.5k'),
('2022-08-17 01:13:48', 'CMD: /b > Ogisha_Matth: Skroo 1.6k'),
('2022-08-17 01:13:49', 'CMD: /b > ogy: a limit sampa je ?'),
('2022-08-17 01:13:56', 'CMD: /b > Ogisha_Matth: 1k objekata'),
('2022-08-17 01:14:01', 'CMD: /b > ogy: cim predje preko 1k'),
('2022-08-17 01:14:03', 'CMD: /b > ogy: crashuje igraca'),
('2022-08-17 01:14:07', 'CMD: /a > Admin sneaky1337: dexter reko sam ti brt da obrises ovaj bilbord'),
('2022-08-17 01:14:09', 'CMD: /b > ogy: pa se ti portaj do opstine'),
('2022-08-17 01:14:14', 'CMD: /b > ogy: sa 1.6k objekata'),
('2022-08-17 01:14:16', 'CMD: /b > ogy: crashuje te odmah'),
('2022-08-17 01:14:19', 'CMD: /a > Admin Ogisha_Matth: To moram posebno covece'),
('2022-08-17 01:14:20', 'CMD: /b > ogy: pa vidi'),
('2022-08-17 01:14:24', 'CMD: /a > Admin Ogisha_Matth: To posebno saljem ogyu'),
('2022-08-17 01:14:29', 'CMD: /b > ogy: i onda ti '),
('2022-08-17 01:14:31', 'CMD: /b > ogy: uzmi i pravi'),
('2022-08-17 01:14:33', 'CMD: /b > ogy: mape od po'),
('2022-08-17 01:14:36', 'CMD: /b > ogy: 700 objekata'),
('2022-08-17 01:14:42', 'CMD: /b > ogy: nije rade lud sto ne dozvoljava vise od 700'),
('2022-08-17 01:14:45', 'CMD: /b > ogy: geta i neke druge mape pored'),
('2022-08-17 01:14:47', 'CMD: /b > ogy: i crashuje igrace'),
('2022-08-17 01:14:50', 'CMD: /b > ogy: random'),
('2022-08-17 01:15:04', 'CMD: /b > Ogisha_Matth: hahahah ti si smesan'),
('2022-08-17 01:15:10', 'CMD: /b > Ogisha_Matth: On exterijere do 500 ne daje preko'),
('2022-08-17 01:15:15', 'CMD: /b > Ogisha_Matth: A Enterijere do 700'),
('2022-08-17 01:15:18', 'CMD: /b > ogy: eto'),
('2022-08-17 01:15:19', 'CMD: /b > ogy: uparvo to'),
('2022-08-17 01:15:21', 'CMD: /b > ogy: a enterijere'),
('2022-08-17 01:15:23', 'CMD: /b > ogy: radi u vwu'),
('2022-08-17 01:15:26', 'CMD: /b > ogy: ima svoj rad'),
('2022-08-17 01:15:28', 'CMD: /b > ogy: i zna svoje limite'),
('2022-08-17 01:15:32', 'CMD: /b > ogy: svaki vw'),
('2022-08-17 01:15:34', 'CMD: /b > ogy: jedan enterijer'),
('2022-08-17 01:15:39', 'CMD: /b > ogy: i nema boga da te crashuje u enterijeru'),
('2022-08-17 01:15:41', 'CMD: /b > ogy: nema boa'),
('2022-08-17 01:15:43', 'CMD: /b > ogy: boga'),
('2022-08-17 01:15:53', 'CMD: /b > ogy: ne pamatim kad me je crashualo na SA'),
('2022-08-17 01:15:56', 'CMD: /b > ogy: u enterijeru'),
('2022-08-17 01:16:03', 'CMD: /b > ogy: igram vec 6 godina'),
('2022-08-17 01:16:04', 'CMD: /b > ogy: skoro'),
('2022-08-17 01:16:19', 'CMD: /b > Ogisha_Matth: Nece ti ni crash kada je optimizacija predobra '),
('2022-08-17 01:16:30', 'CMD: /b > ogy: jebiga'),
('2022-08-17 01:16:44', 'CMD: /b > ogy: pa posle da pravimo mape od'),
('2022-08-17 01:16:45', 'CMD: /b > Ogisha_Matth: LSPD i Opstina zajedno imaju 1.5k objekata a to nikako ne moze '),
('2022-08-17 01:16:45', 'CMD: /b > ogy: po'),
('2022-08-17 01:16:46', 'CMD: /b > ogy: 1k objekata'),
('2022-08-17 01:17:06', 'CMD: /b > Ogisha_Matth: Jebo te ovaj ac mrtvi '),
('2022-08-17 01:17:06', 'CMD: /b > ogy: i ova okolina'),
('2022-08-17 01:17:08', 'CMD: /b > ogy: trafika'),
('2022-08-17 01:17:10', 'CMD: /b > ogy: i sve'),
('2022-08-17 01:17:12', 'CMD: /b > ogy: 100+'),
('2022-08-17 01:17:14', 'CMD: /b > ogy: eto ti'),
('2022-08-17 01:17:15', 'CMD: /b > ogy: 1.6k'),
('2022-08-17 01:17:15', 'CMD: /b > Ogisha_Matth: Ma bezi '),
('2022-08-17 01:17:27', 'CMD: /b > ogy: a evo gledaj ovo'),
('2022-08-17 01:17:28', 'CMD: /b > ogy: ovde'),
('2022-08-17 01:17:30', 'CMD: /b > ogy: mozda 40'),
('2022-08-17 01:17:33', 'CMD: /b > ogy: tamo ona org'),
('2022-08-17 01:17:34', 'CMD: /b > ogy: 300'),
('2022-08-17 01:17:39', 'CMD: /b > ogy: ono vencanje tamo oko 150'),
('2022-08-17 01:17:42', 'CMD: /b > ogy: vidis kako se ucitava'),
('2022-08-17 01:17:46', 'CMD: /b > ogy: mozes da vidis ovo sa spawna'),
('2022-08-17 01:17:50', 'CMD: /b > ogy: ovo vencanje'),
('2022-08-17 01:17:53', 'CMD: /b > ogy: i onu tamo org'),
('2022-08-17 01:17:57', 'CMD: /b > ogy: ispred nas'),
('2022-08-17 01:18:03', 'CMD: /b > ogy: jer nema oko mapa'),
('2022-08-17 01:18:05', 'CMD: /b > ogy: da getaju'),
('2022-08-17 01:18:06', 'CMD: /b > ogy: objekte'),
('2022-08-17 01:18:17', 'CMD: /b > Ogisha_Matth: Ja nzm kako opstina ima onoliko objekata'),
('2022-08-17 01:18:23', 'CMD: /b > Ogisha_Matth: Evo jos mi ne ulazi u glavu '),
('2022-08-17 01:18:23', 'CMD: /b > ogy: 626 sam video'),
('2022-08-17 01:18:29', 'CMD: /b > ogy: prebrojao sam'),
('2022-08-17 01:18:32', 'CMD: /b > ogy: hoces da ti dam'),
('2022-08-17 01:18:34', 'CMD: /b > ogy: da loadujes'),
('2022-08-17 01:18:35', 'CMD: /b > ogy: da vidis'),
('2022-08-17 01:18:35', 'CMD: /b > Ogisha_Matth: To moze lagano na 300 obj da ide '),
('2022-08-17 01:18:37', 'CMD: /b > ogy: da te ne lazem'),
('2022-08-17 01:18:38', 'CMD: /b > Ogisha_Matth: ae '),
('2022-08-17 01:18:41', 'CMD: /b > ogy: eto '),
('2022-08-17 01:18:41', 'CMD: /b > Ogisha_Matth: Da fixamo to '),
('2022-08-17 01:18:43', 'CMD: /b > ogy: gledaj fejs'),
('2022-08-17 01:18:48', 'CMD: /b > Ogisha_Matth: ae ae '),
('2022-08-17 01:20:00', 'CMD: /a > Admin ogy: udji na map server'),
('2022-08-17 01:20:02', 'CMD: /a > Admin ogy: tamo smo'),
('2022-08-17 18:15:10', 'CMD: /a > Admin sneaky1337: smrdoo'),
('2022-08-17 18:15:15', 'CMD: /a > Admin sneaky1337: smrdooo'),
('2022-08-17 18:23:55', 'CMD: /a > Admin sneaky1337: cao ja sam seksi'),
('2022-08-17 18:24:01', 'CMD: /a > Admin ogy: zpo'),
('2022-08-17 18:24:08', 'CMD: /a > Admin sneaky1337: gde si smrdo'),
('2022-08-17 18:24:12', 'CMD: /a > Admin ogy: evo radim posao'),
('2022-08-17 18:24:46', 'CMD: /a > Admin sneaky1337: boli te kurac'),
('2022-08-17 18:24:51', 'CMD: /a > Admin sneaky1337: si fixo ono za banku'),
('2022-08-17 18:24:54', 'CMD: /a > Admin ogy: da'),
('2022-08-17 18:24:54', 'CMD: /a > Admin sneaky1337: one pislive aktore'),
('2022-08-17 18:24:59', 'CMD: /a > Admin ogy: da gledas fb video bi some'),
('2022-08-17 18:25:13', 'CMD: /a > Admin sneaky1337: ma pisi dct'),
('2022-08-17 18:25:16', 'CMD: /a > Admin sneaky1337: dc*'),
('2022-08-17 18:25:18', 'CMD: /a > Admin sneaky1337: nabijem te'),
('2022-08-17 18:25:39', 'CMD: /a > Admin sneaky1337: a za koga tacno si mislio ovo za tdove'),
('2022-08-17 18:25:41', 'CMD: /a > Admin sneaky1337: sto si napiso'),
('2022-08-17 18:25:43', 'CMD: /a > Admin sneaky1337: da ce uradit'),
('2022-08-17 18:25:45', 'CMD: /a > Admin ogy: fortebacci'),
('2022-08-17 18:25:48', 'CMD: /a > Admin ogy: tako nes'),
('2022-08-17 18:25:57', 'CMD: /a > Admin sneaky1337: a oke'),
('2022-08-17 18:26:02', 'CMD: /a > Admin sneaky1337: jer treba jos jedne da nam stignu'),
('2022-08-17 18:26:15', 'CMD: /a > Admin sneaky1337: pa zato ne znam vise ko radi tdove xd'),
('2022-08-17 18:26:17', 'CMD: /a > Admin sneaky1337: hahahaahaha'),
('2022-08-17 18:26:23', 'CMD: /a > Admin ogy: ko'),
('2022-08-17 18:26:25', 'CMD: /a > Admin ogy: sad radi'),
('2022-08-17 18:26:26', 'CMD: /a > Admin ogy: te'),
('2022-08-17 18:26:39', 'CMD: /a > Admin sneaky1337: ma jedan molly na fb'),
('2022-08-17 18:26:42', 'CMD: /a > Admin sneaky1337: ne znam dal ga znas'),
('2022-08-17 18:26:47', 'CMD: /a > Admin ogy: nmp'),
('2022-08-17 18:26:59', 'CMD: /a > Admin ogy: idi uzmi server na vibeu da prebacim sve dok sam tu'),
('2022-08-17 18:27:18', 'CMD: /a > Admin sneaky1337: a jel dobijamu mysql '),
('2022-08-17 18:27:20', 'CMD: /a > Admin ogy: da'),
('2022-08-17 18:27:21', 'CMD: /a > Admin sneaky1337: il treba i mysql'),
('2022-08-17 18:27:22', 'CMD: /a > Admin ogy: 5 baza'),
('2022-08-17 18:27:32', 'CMD: /a > Admin sneaky1337: aj uzecu za 5min'),
('2022-08-17 18:27:36', 'CMD: /a > Admin sneaky1337: daj pokazi'),
('2022-08-17 18:27:38', 'CMD: /a > Admin sneaky1337: ovo sto si odradio'),
('2022-08-17 18:27:41', 'CMD: /a > Admin sneaky1337: da vidim'),
('2022-08-17 18:28:21', 'CMD: /a > Admin sneaky1337: eeee'),
('2022-08-17 18:28:28', 'CMD: /a > Admin sneaky1337: daj dodaj ovo na desni klip da zaustavim animaciju'),
('2022-08-17 18:28:32', 'CMD: /b > ogy: ima vec'),
('2022-08-17 18:28:37', 'CMD: /a > Admin sneaky1337: pa nisam mogo'),
('2022-08-17 18:28:46', 'CMD: /a > Admin sneaky1337: kakav je ovo posao'),
('2022-08-17 18:28:50', 'CMD: /a > Admin ogy: sedaj'),
('2022-08-17 18:29:04', 'CMD: /b > ogy: ./call'),
('2022-08-17 18:29:12', 'CMD: /b > ogy: i pozovi herkula'),
('2022-08-17 18:29:16', 'CMD: /b > sneaky1337: nemam telefon xd'),
('2022-08-17 18:29:19', 'CMD: /b > sneaky1337: ja vlasnik a nemam telefon'),
('2022-08-17 18:29:21', 'CMD: /b > sneaky1337: jebem ti kurac'),
('2022-08-17 18:29:35', 'CMD: /b > ogy: ./buymobile'),
('2022-08-17 18:29:44', 'CMD: /a > Admin sneaky1337: si menjo komande'),
('2022-08-17 18:29:46', 'CMD: /a > Admin sneaky1337: da ne bude iste'),
('2022-08-17 18:29:48', 'CMD: /a > Admin sneaky1337: kao na ultimate'),
('2022-08-17 18:29:50', 'CMD: /a > Admin ogy: ne brini'),
('2022-08-17 18:29:54', 'CMD: /a > Admin ogy: si uzeo'),
('2022-08-17 18:29:56', 'CMD: /a > Admin sneaky1337: da'),
('2022-08-17 18:29:59', 'CMD: /b > ogy: sedaj'),
('2022-08-17 18:30:02', 'CMD: /a > Admin ogy: idemo da uzmemo'),
('2022-08-17 18:30:04', 'CMD: /a > Admin ogy: kredit'),
('2022-08-17 18:30:13', 'CMD: /a > Admin Ogisha_Matth: Evo me ogy'),
('2022-08-17 18:30:14', 'CMD: /b > ogy: uzmi'),
('2022-08-17 18:30:15', 'CMD: /a > Admin ogy: eto tebe'),
('2022-08-17 18:30:19', 'CMD: /a > Admin ogy: sad cemo samo da testiramo'),
('2022-08-17 18:30:23', 'CMD: /a > Admin ogy: system sto sam radio'),
('2022-08-17 18:30:26', 'CMD: /b > ogy: ./call'),
('2022-08-17 18:30:34', 'CMD: /a > Admin Ogisha_Matth: Ae taman cu ja malo da se vozam po serveru'),
('2022-08-17 18:30:38', 'CMD: /a > Admin ogy: aj sa nama'),
('2022-08-17 18:30:40', 'CMD: /a > Admin ogy: goto se'),
('2022-08-17 18:31:54', 'CMD: /a > Admin Ogisha_Matth: Net'),
('2022-08-17 18:32:00', 'CMD: /b > ogy: penji se'),
('2022-08-17 18:32:04', 'CMD: /b > ogy: i cekaj ovog soma xd'),
('2022-08-17 18:32:18', 'CMD: /b > sneaky1337: treba da stavis kameru na aktore'),
('2022-08-17 18:32:21', 'CMD: /b > ogy: da'),
('2022-08-17 18:32:23', 'CMD: /b > ogy: int da promenim'),
('2022-08-17 18:32:34', 'CMD: /b > sneaky1337: ispadne ovaj som'),
('2022-08-17 18:32:39', 'CMD: /a > Admin ogy: goto se sad'),
('2022-08-17 18:32:41', 'CMD: /a > Admin Ogisha_Matth: Specam '),
('2022-08-17 18:32:44', 'CMD: /a > Admin ogy: aha'),
('2022-08-17 18:32:52', 'CMD: /a > Admin Ogisha_Matth: Lakse nego da padam na kolima '),
('2022-08-17 18:33:50', 'CMD: /a > Admin Ogisha_Matth: Lele mafiaaaaaa'),
('2022-08-17 18:33:50', 'CMD: /a > Admin ogy: samo treba njima'),
('2022-08-17 18:33:55', 'CMD: /a > Admin ogy: da setam druagije animacije'),
('2022-08-17 18:34:08', 'CMD: /a > Admin ogy: sad imas busilicu'),
('2022-08-17 18:34:12', 'CMD: /a > Admin ogy: idemo vamo'),
('2022-08-17 18:34:28', 'CMD: /a > Admin Ogisha_Matth: Lele mafiaaaaaa'),
('2022-08-17 18:34:34', 'CMD: /b > sneaky1337: al stavi fazon ovaj actor da mozes da ga pozoves na neko odredjeno vreme'),
('2022-08-17 18:34:57', 'CMD: /a > Admin ogy: nema animacija za to'),
('2022-08-17 18:35:15', 'CMD: /a > Admin ogy: moram vrata da napravim u intu'),
('2022-08-17 18:35:28', 'CMD: /a > Admin Ogisha_Matth: Crash ovome '),
('2022-08-17 18:35:30', 'CMD: /a > Admin ogy: vidim'),
('2022-08-17 18:35:39', 'CMD: /a > Admin ogy: ovde vrata da napravim'),
('2022-08-17 18:35:52', 'CMD: /a > Admin Ogisha_Matth: ogy'),
('2022-08-17 18:35:54', 'CMD: /a > Admin ogy: a'),
('2022-08-17 18:36:15', 'CMD: /a > Admin Ogisha_Matth: Sta mislis malo da se baziramo na Ruske sisteme koji nisu vidjeni na Balkanu, zanimljivi su a laki su za napraviti '),
('2022-08-17 18:36:23', 'CMD: /a > Admin sneaky1337: serem se na server'),
('2022-08-17 18:36:26', 'CMD: /a > Admin sneaky1337: sto mene bana'),
('2022-08-17 18:36:36', 'CMD: /a > Admin ogy: previse akcija radis odjednom'),
('2022-08-17 18:36:38', 'CMD: /b > ogy: ./torba'),
('2022-08-17 18:36:40', 'CMD: /a > Admin ogy: gledaj ga'),
('2022-08-17 18:36:42', 'CMD: /a > Admin ogy: ide dole'),
('2022-08-17 18:36:50', 'CMD: /a > Admin sneaky1337: nemam buselicu'),
('2022-08-17 18:36:51', 'CMD: /a > Admin ogy: ovamo'),
('2022-08-17 18:36:55', 'CMD: /a > Admin ogy: /torba'),
('2022-08-17 18:37:01', 'CMD: /a > Admin sneaky1337: pa nemam ja'),
('2022-08-17 18:37:03', 'CMD: /a > Admin sneaky1337: u torbu'),
('2022-08-17 18:37:03', 'CMD: /a > Admin ogy: aham'),
('2022-08-17 18:37:05', 'CMD: /a > Admin ogy: dobro'),
('2022-08-17 18:37:05', 'CMD: /a > Admin sneaky1337: pise 0'),
('2022-08-17 18:37:07', 'CMD: /a > Admin Ogisha_Matth: Rambo '),
('2022-08-17 18:37:09', 'CMD: /a > Admin sneaky1337: a'),
('2022-08-17 18:37:13', 'CMD: /a > Admin ogy: moram ovde vrata da napravim'),
('2022-08-17 18:37:15', 'CMD: /a > Admin Ogisha_Matth: Sto vi niste koristili Vice City mod ?'),
('2022-08-17 18:37:16', 'CMD: /a > Admin ogy: i onda cekam tdove'),
('2022-08-17 18:37:24', 'CMD: /a > Admin sneaky1337: pa jesmo'),
('2022-08-17 18:37:32', 'CMD: /a > Admin Ogisha_Matth: Pa ovo nije VC mod '),
('2022-08-17 18:37:34', 'CMD: /a > Admin sneaky1337: samo sto pun kurac druge stvari je imalo'),
('2022-08-17 18:37:40', 'CMD: /a > Admin sneaky1337: pa znam'),
('2022-08-17 18:37:41', 'CMD: /a > Admin ogy: ja msm '),
('2022-08-17 18:37:45', 'CMD: /a > Admin ogy: da je trebex'),
('2022-08-17 18:37:52', 'CMD: /a > Admin ogy: ultimate = vc = ideal = bn'),
('2022-08-17 18:37:54', 'CMD: /a > Admin sneaky1337: zato sto tebrex ispo govno od coveka'),
('2022-08-17 18:37:57', 'CMD: /a > Admin ogy: da je radio vc mod'),
('2022-08-17 18:37:59', 'CMD: /a > Admin ogy: od ultimatea'),
('2022-08-17 18:38:08', 'CMD: /a > Admin ogy: ali to je ne vezano za sitoaciju sta je bilo'),
('2022-08-17 18:38:10', 'CMD: /a > Admin sneaky1337: platim mu prvi put kad otvaramo bn 300e'),
('2022-08-17 18:38:11', 'CMD: /a > Admin ogy: za taj mod'),
('2022-08-17 18:38:14', 'CMD: /a > Admin sneaky1337: i sad mi trazi jos 300'),
('2022-08-17 18:38:17', 'CMD: /a > Admin sneaky1337: kurac cu mu dat'),
('2022-08-17 18:38:18', 'CMD: /b > ogy: penjite se'),
('2022-08-17 18:38:22', 'CMD: /a > Admin Ogisha_Matth: HAHAHAHAHHAHA'),
('2022-08-17 18:38:27', 'CMD: /b > ogy: ogisa'),
('2022-08-17 18:38:28', 'CMD: /a > Admin sneaky1337: i to plus ne moj mod'),
('2022-08-17 18:38:31', 'CMD: /b > Ogisha_Matth: a'),
('2022-08-17 18:38:33', 'CMD: /a > Admin sneaky1337: nego samo da on skripta'),
('2022-08-17 18:38:34', 'CMD: /b > ogy: gle sad'),
('2022-08-17 18:38:36', 'CMD: /a > Admin sneaky1337: a ja da nemam mod'),
('2022-08-17 18:38:36', 'CMD: /b > ogy: sta mi treba'),
('2022-08-17 18:38:41', 'CMD: /a > Admin sneaky1337: nabijem ga na kurac scamersko'),
('2022-08-17 18:38:43', 'CMD: /a > Admin Ogisha_Matth: ahahahahah'),
('2022-08-17 18:38:59', 'CMD: /a > Admin Ogisha_Matth: Zato sto je vrv VC mod sada ideal Gaming '),
('2022-08-17 18:39:04', 'CMD: /a > Admin ogy: nije vrv'),
('2022-08-17 18:39:05', 'CMD: /a > Admin ogy: jeste'),
('2022-08-17 18:39:10', 'CMD: /a > Admin Ogisha_Matth: Zato ti i nece da '),
('2022-08-17 18:39:13', 'CMD: /a > Admin sneaky1337: ma boli me k od taj ideal nece bit ni 10 igraca brate moj'),
('2022-08-17 18:39:24', 'CMD: /a > Admin sneaky1337: a kad bude vedrox snimao ovde bojan ce da placet'),
('2022-08-17 18:39:24', 'CMD: /a > Admin ogy: ogisa'),
('2022-08-17 18:39:27', 'CMD: /a > Admin Ogisha_Matth: E '),
('2022-08-17 18:39:30', 'CMD: /a > Admin sneaky1337: pisao vedroxu da ne snima kod nas'),
('2022-08-17 18:39:30', 'CMD: /a > Admin ogy: treba nam '),
('2022-08-17 18:39:31', 'CMD: /a > Admin ogy: mapa'),
('2022-08-17 18:39:32', 'CMD: /a > Admin sneaky1337: kakav indijanac'),
('2022-08-17 18:39:35', 'CMD: /b > ogy: gledaj aj da posao odradis'),
('2022-08-17 18:39:35', 'CMD: /a > Admin sneaky1337: jebem mu sve'),
('2022-08-17 18:39:36', 'CMD: /b > ogy: vamo'),
('2022-08-17 18:39:56', 'CMD: /a > Admin ogy: uzmite auto'),
('2022-08-17 18:39:57', 'CMD: /a > Admin sneaky1337: zamisli dexter kakav drug imas'),
('2022-08-17 18:39:58', 'CMD: /a > Admin ogy: uniformu i auto'),
('2022-08-17 18:40:06', 'CMD: /a > Admin ogy: ovamo'),
('2022-08-17 18:40:16', 'CMD: /b > ogy: polako'),
('2022-08-17 18:40:21', 'CMD: /a > Admin ogy: veci cp cemo napraviti'),
('2022-08-17 18:40:27', 'CMD: /a > Admin ogy: e sad, ogisa'),
('2022-08-17 18:40:29', 'CMD: /a > Admin ogy: treba nam mapa'),
('2022-08-17 18:40:32', 'CMD: /a > Admin ogy: gde ce da bude kao ono '),
('2022-08-17 18:40:35', 'CMD: /a > Admin ogy: sto sam ti pokazivao'),
('2022-08-17 18:40:38', 'CMD: /a > Admin ogy: i da ima ovamo'),
('2022-08-17 18:40:40', 'CMD: /a > Admin ogy: otpad'),
('2022-08-17 18:40:45', 'CMD: /a > Admin Ogisha_Matth: aha '),
('2022-08-17 18:40:46', 'CMD: /a > Admin ogy: da mogu da napravim'),
('2022-08-17 18:40:48', 'CMD: /a > Admin ogy: da se kao'),
('2022-08-17 18:40:51', 'CMD: /a > Admin ogy: stavlja ovo cudo'),
('2022-08-17 18:40:53', 'CMD: /a > Admin ogy: na auto'),
('2022-08-17 18:40:55', 'CMD: /a > Admin ogy: tcn na kamion'),
('2022-08-17 18:41:08', 'CMD: /a > Admin Ogisha_Matth: A sta mislis da odradimo neki lepsi attach kola na ovome'),
('2022-08-17 18:41:09', 'CMD: /a > Admin ogy: to po mogucnosti'),
('2022-08-17 18:41:11', 'CMD: /a > Admin ogy: na dokovima'),
('2022-08-17 18:41:32', 'CMD: /a > Admin Ogisha_Matth: Jaoj ogy'),
('2022-08-17 18:41:34', 'CMD: /a > Admin ogy: za posao'),
('2022-08-17 18:41:36', 'CMD: /a > Admin ogy: cekam mapu'),
('2022-08-17 18:41:39', 'CMD: /a > Admin Ogisha_Matth: Znas sto ima mnogo obj LSPD'),
('2022-08-17 18:41:41', 'CMD: /a > Admin ogy: pa cemo prosiriti ceo posao'),
('2022-08-17 18:41:43', 'CMD: /a > Admin Ogisha_Matth: JAOJ JA CU SE UBITI HAHAHAHAHAHAH'),
('2022-08-17 18:41:45', 'CMD: /a > Admin ogy: sto'),
('2022-08-17 18:41:54', 'CMD: /a > Admin Ogisha_Matth: Goto'),
('2022-08-17 18:42:05', 'CMD: /a > Admin Ogisha_Matth: Rambo je isao /impotmap i ubacio ruski spawn'),
('2022-08-17 18:42:13', 'CMD: /a > Admin ogy: jel moguce'),
('2022-08-17 18:42:14', 'CMD: /a > Admin Ogisha_Matth: A ja ga nisam izbrisao'),
('2022-08-17 18:42:17', 'CMD: /a > Admin ogy: da ste to uradili'),
('2022-08-17 18:42:20', 'CMD: /a > Admin Ogisha_Matth: Dap '),
('2022-08-17 18:42:22', 'CMD: /a > Admin sneaky1337: AHAHAHAHAHAHAHAAHAHA'),
('2022-08-17 18:42:24', 'CMD: /a > Admin ogy: koliko ima'),
('2022-08-17 18:42:26', 'CMD: /a > Admin ogy: ovo govno'),
('2022-08-17 18:42:28', 'CMD: /a > Admin ogy: objekata'),
('2022-08-17 18:42:31', 'CMD: /a > Admin Ogisha_Matth: Oko 200 '),
('2022-08-17 18:42:34', 'CMD: /a > Admin ogy: jebem li vam'),
('2022-08-17 18:42:39', 'CMD: /a > Admin ogy: idi brisi'),
('2022-08-17 18:42:43', 'CMD: /a > Admin ogy: pa radimo mapu za posao'),
('2022-08-17 18:42:45', 'CMD: /a > Admin ogy: hajde da resimo sve'),
('2022-08-17 18:42:46', 'CMD: /a > Admin Ogisha_Matth: Ja jos kontam kako toliko obj ima '),
('2022-08-17 18:42:46', 'CMD: /a > Admin ogy: sad'),
('2022-08-17 18:42:48', 'CMD: /a > Admin sneaky1337: ja ti reko da sam importo'),
('2022-08-17 18:42:53', 'CMD: /a > Admin ogy: aj '),
('2022-08-17 18:42:55', 'CMD: /a > Admin ogy: idemo na map srv'),
('2022-08-17 18:42:56', 'CMD: /a > Admin Ogisha_Matth: Ja zaboravio da izbrisem'),
('2022-08-17 19:44:43', 'CMD: /b > Ogisha_Matth: 578'),
('2022-08-17 19:52:05', 'CMD: /b > ogy: a'),
('2022-08-17 19:52:57', 'CMD: /a > Admin Ogisha_Matth: Net'),
('2022-08-17 19:53:12', 'CMD: /a > Admin Ogisha_Matth: Kako se ucitava '),
('2022-08-17 19:53:17', 'CMD: /b > ogy: znak se ne vidi'),
('2022-08-17 19:53:19', 'CMD: /b > ogy: na 300 je'),
('2022-08-17 19:53:23', 'CMD: /b > ogy: ovo moze da bude 300'),
('2022-08-17 19:53:24', 'CMD: /b > ogy: odplk'),
('2022-08-17 19:53:31', 'CMD: /b > ogy: ali zgrada se vidi'),
('2022-08-17 19:53:32', 'CMD: /b > Ogisha_Matth: Ma ok je '),
('2022-08-17 19:53:42', 'CMD: /b > Ogisha_Matth: Kao da nekoga boli kurac za taj logo '),
('2022-08-17 19:53:49', 'CMD: /b > Ogisha_Matth: Oni ce da stanu odavde pa ce se slikaju'),
('2022-08-17 19:53:59', 'CMD: /b > ogy: pd normalno radi'),
('2022-08-17 19:54:05', 'CMD: /b > Ogisha_Matth: Dap '),
('2022-08-17 19:54:15', 'CMD: /b > ogy: da'),
('2022-08-17 19:54:18', 'CMD: /b > ogy: normalan je'),
('2022-08-17 19:54:23', 'CMD: /b > Ogisha_Matth: Dap '),
('2022-08-17 19:54:26', 'CMD: /b > ogy: moze da bude'),
('2022-08-17 19:54:27', 'CMD: /b > ogy: i do '),
('2022-08-17 19:54:29', 'CMD: /b > ogy: ako je'),
('2022-08-17 19:54:30', 'CMD: /b > ogy: opstina'),
('2022-08-17 19:54:34', 'CMD: /b > ogy: obican cdo'),
('2022-08-17 19:54:35', 'CMD: /b > ogy: a pd'),
('2022-08-17 19:54:37', 'CMD: /b > ogy: cdoex'),
('2022-08-17 19:54:40', 'CMD: /b > ogy: moze da bude i do toga'),
('2022-08-17 19:54:46', 'CMD: /b > ogy: jer je default za cdoex'),
('2022-08-17 19:54:47', 'CMD: /b > ogy: 300'),
('2022-08-17 19:54:51', 'CMD: /b > Ogisha_Matth: Sacu proverim '),
('2022-08-17 19:54:52', 'CMD: /b > Ogisha_Matth: samo sec'),
('2022-08-17 19:54:52', 'CMD: /b > ogy: dw i ds'),
('2022-08-17 19:54:56', 'CMD: /b > ogy: a za cdo'),
('2022-08-17 19:54:58', 'CMD: /b > ogy: je 600'),
('2022-08-17 19:55:00', 'CMD: /b > ogy: default'),
('2022-08-17 19:55:54', 'CMD: /b > Ogisha_Matth: U ex je '),
('2022-08-17 19:55:56', 'CMD: /b > Ogisha_Matth: Opstina '),
('2022-08-17 19:55:57', 'CMD: /b > ogy: aham'),
('2022-08-17 19:55:58', 'CMD: /b > ogy: ali'),
('2022-08-17 19:56:00', 'CMD: /b > ogy: ovaj veci deo'),
('2022-08-17 19:56:02', 'CMD: /b > ogy: je stavljen na 450'),
('2022-08-17 19:56:04', 'CMD: /b > ogy: sa prioritijem'),
('2022-08-17 19:56:05', 'CMD: /b > ogy: od 20'),
('2022-08-17 19:56:10', 'CMD: /b > ogy: 20 >> 1'),
('2022-08-17 19:56:11', 'CMD: /b > ogy: zar ne'),
('2022-08-17 19:56:20', 'CMD: /b > Ogisha_Matth: E sve si mi pojasnio'),
('2022-08-17 19:56:24', 'CMD: /b > ogy: 20 je'),
('2022-08-17 19:56:25', 'CMD: /b > Ogisha_Matth: Sve sam te razumeo'),
('2022-08-17 19:56:25', 'CMD: /b > ogy: vece od 1'),
('2022-08-17 19:56:28', 'CMD: /b > Ogisha_Matth: Dap '),
('2022-08-17 19:56:31', 'CMD: /b > ogy: onda'),
('2022-08-17 19:56:32', 'CMD: /b > ogy: po'),
('2022-08-17 19:56:34', 'CMD: /b > ogy: samp logici'),
('2022-08-17 19:56:36', 'CMD: /b > ogy: bi trebalo da se'),
('2022-08-17 19:56:37', 'CMD: /b > ogy: ucitava'),
('2022-08-17 19:56:39', 'CMD: /b > ogy: ova zgrada'),
('2022-08-17 19:56:42', 'CMD: /b > ogy: od opstine'),
('2022-08-17 19:56:46', 'CMD: /b > ogy: dosta daleko'),
('2022-08-17 19:56:49', 'CMD: /b > ogy: hajde to da vidimo'),
('2022-08-17 19:57:14', 'CMD: /a > Admin ogy: samo zgrada ne znak'),
('2022-08-17 19:57:21', 'CMD: /a > Admin ogy: evo'),
('2022-08-17 19:57:26', 'CMD: /a > Admin ogy: ovo sto sam ti objasnio radi'),
('2022-08-17 19:57:28', 'CMD: /a > Admin ogy: goto se'),
('2022-08-17 19:57:37', 'CMD: /b > ogy: uzmi jpack'),
('2022-08-17 19:57:40', 'CMD: /b > ogy: i pici skroz gore'),
('2022-08-17 19:57:40', 'CMD: /a > Admin Ogisha_Matth: Zgrada se ucitava skoro do bolnice'),
('2022-08-17 19:57:52', 'CMD: /a > Admin ogy: pd nije ucitan'),
('2022-08-17 19:57:55', 'CMD: /a > Admin ogy: dok je opstina'),
('2022-08-17 19:57:58', 'CMD: /a > Admin ogy: i dalje'),
('2022-08-17 19:58:30', 'CMD: /a > Admin ogy: pd nije ucitan'),
('2022-08-17 19:58:33', 'CMD: /a > Admin ogy: dok je opstina'),
('2022-08-17 19:58:35', 'CMD: /a > Admin ogy: i dalje'),
('2022-08-17 19:58:37', 'CMD: /a > Admin ogy: ucitana'),
('2022-08-17 19:58:38', 'CMD: /a > Admin ogy: goto se sad'),
('2022-08-17 19:59:09', 'CMD: /a > Admin ogy: prioritet cini svoje'),
('2022-08-17 19:59:12', 'CMD: /a > Admin ogy: i ds i dw'),
('2022-08-17 19:59:13', 'CMD: /a > Admin Ogisha_Matth: GOTO'),
('2022-08-17 19:59:21', 'CMD: /b > Ogisha_Matth: Bitno je da odavde ucitava pd'),
('2022-08-17 19:59:26', 'CMD: /b > Ogisha_Matth: nece niko da leti pa da gleda pd'),
('2022-08-17 19:59:34', 'CMD: /a > Admin ogy: povecacu jos malo ds i ds i staviti priority na 2'),
('2022-08-17 19:59:37', 'CMD: /a > Admin ogy: i bice bolje'),
('2022-08-17 19:59:42', 'CMD: /a > Admin ogy: sve u svemu, okej je ucitavanje'),
('2022-08-17 19:59:45', 'CMD: /b > Ogisha_Matth: dap'),
('2022-08-17 19:59:48', 'CMD: /a > Admin ogy: nemamo toliko problema sa objektima'),
('2022-08-17 19:59:50', 'CMD: /a > Admin ogy: kao sto smo imali'),
('2022-08-17 19:59:54', 'CMD: /a > Admin Ogisha_Matth: Dap '),
('2022-08-17 19:59:55', 'CMD: /a > Admin ogy: da odemo od opstine pola metra'),
('2022-08-17 19:59:59', 'CMD: /a > Admin ogy: i ona se ne ucita'),
('2022-08-17 20:00:32', 'CMD: /a > Admin ogy: dobro je'),
('2022-08-17 20:00:35', 'CMD: /a > Admin Ogisha_Matth: ovo sam sjebao'),
('2022-08-17 20:00:36', 'CMD: /a > Admin ogy: sad je okej'),
('2022-08-17 20:00:51', 'CMD: /a > Admin Ogisha_Matth: Gore boju sto trepce'),
('2022-08-17 20:00:58', 'CMD: /b > ogy: ne vidim'),
('2022-08-17 20:01:46', 'CMD: /a > Admin Ogisha_Matth: Ogy'),
('2022-08-17 20:01:49', 'CMD: /a > Admin Ogisha_Matth: Znas sta sam ja mislio'),
('2022-08-17 20:01:59', 'IC: Ogisha_Matth > a'),
('2022-08-17 20:02:02', 'IC: Ogisha_Matth > a'),
('2022-08-17 20:02:39', 'CMD: /a > Admin ogy: ej'),
('2022-08-17 20:02:42', 'CMD: /a > Admin ogy: sta'),
('2022-08-17 20:02:44', 'CMD: /a > Admin Ogisha_Matth: Ko je radio ovo?'),
('2022-08-17 20:02:46', 'CMD: /a > Admin ogy: nzm'),
('2022-08-17 20:02:51', 'CMD: /a > Admin Ogisha_Matth: Bas mi se ne svidja al ae '),
('2022-08-17 20:02:52', 'CMD: /a > Admin ogy: rekao mi je da ubacim'),
('2022-08-17 20:02:59', 'CMD: /a > Admin ogy: ma ostavi'),
('2022-08-17 20:03:01', 'CMD: /a > Admin ogy: koga jebe'),
('2022-08-17 20:03:05', 'CMD: /b > Ogisha_Matth: Ma to '),
('2022-08-17 20:03:09', 'CMD: /b > Ogisha_Matth: Slusaj '),
('2022-08-17 20:03:18', 'CMD: /b > Ogisha_Matth: Vidis ovako kada vozis'),
('2022-08-17 20:03:25', 'CMD: /b > Ogisha_Matth: I kontas jbg Los Santos je pust'),
('2022-08-17 20:03:26', 'CMD: /b > Ogisha_Matth: Jel da '),
('2022-08-17 20:03:29', 'CMD: /b > Ogisha_Matth: Sam po sebi '),
('2022-08-17 20:03:35', 'CMD: /b > ogy: malo'),
('2022-08-17 20:04:36', 'CMD: /b > Ogisha_Matth: Ja sam dosao na ideju '),
('2022-08-17 20:04:41', 'CMD: /b > Ogisha_Matth: Jednu '),
('2022-08-17 20:04:54', 'CMD: /b > Ogisha_Matth: Ovako'),
('2022-08-17 20:05:09', 'CMD: /b > Ogisha_Matth: Sta mislis da mi popunimo Los Santos nekim drvecima itd...');
INSERT INTO `log-chat` (`Time`, `Text`) VALUES
('2022-08-17 20:05:21', 'CMD: /b > Ogisha_Matth: A gde ne mogu da se popune drveca tu cemo stavimo neke mape nesto itd...'),
('2022-08-17 20:05:32', 'CMD: /b > Ogisha_Matth: Da napravimo da Los Santos bude bas onako malo osvezen'),
('2022-08-17 20:05:46', 'CMD: /b > ogy: to kad uradimo sve mape'),
('2022-08-17 20:05:52', 'CMD: /b > ogy: nemamo sad vremena da radimo drvece'),
('2022-08-17 20:05:57', 'CMD: /b > ogy: pored svih mapa koje moramo da uradimo'),
('2022-08-17 20:05:59', 'CMD: /b > ogy: zbog toga'),
('2022-08-17 20:06:23', 'CMD: /b > Ogisha_Matth: Moze '),
('2022-08-17 20:07:09', 'CMD: /b > ogy: oces da uradimo mape'),
('2022-08-17 20:07:10', 'CMD: /b > Ogisha_Matth: Gde si planirao org i to '),
('2022-08-17 20:07:11', 'CMD: /b > ogy: mapu'),
('2022-08-17 20:07:15', 'CMD: /b > ogy: evo jedno mesto'),
('2022-08-17 20:07:18', 'CMD: /b > ogy: imamo '),
('2022-08-17 20:07:22', 'CMD: /b > ogy: oko 4 mape za org'),
('2022-08-17 20:07:23', 'CMD: /b > ogy: za sad'),
('2022-08-17 20:07:25', 'CMD: /b > ogy: to je gsf'),
('2022-08-17 20:07:27', 'CMD: /b > ogy: vagos'),
('2022-08-17 20:07:30', 'CMD: /b > ogy: i 2 mafije'),
('2022-08-17 20:07:34', 'CMD: /b > ogy: kako god se zvale'),
('2022-08-17 20:07:34', 'CMD: /b > Ogisha_Matth: kk'),
('2022-08-17 20:07:37', 'CMD: /b > ogy: treba nam ballas'),
('2022-08-17 20:07:44', 'CMD: /b > ogy: ona moze ovde'),
('2022-08-17 20:07:46', 'CMD: /b > Ogisha_Matth: Ocemo mi prvo posao'),
('2022-08-17 20:07:50', 'CMD: /b > Ogisha_Matth: Onaj da zavrsimo '),
('2022-08-17 20:07:50', 'CMD: /b > ogy: hajde'),
('2022-08-17 20:07:52', 'CMD: /b > ogy: bolje posao'),
('2022-08-17 20:07:56', 'CMD: /b > Ogisha_Matth: E '),
('2022-08-17 20:07:56', 'CMD: /b > ogy: to na dokovima'),
('2022-08-17 20:07:57', 'CMD: /b > ogy: ako moze'),
('2022-08-17 20:08:01', 'CMD: /b > Ogisha_Matth: Ovo izbrisi '),
('2022-08-17 20:08:06', 'CMD: /a > Admin ogy: posle cemo to'),
('2022-08-17 20:08:17', 'CMD: /b > Ogisha_Matth: Ok'),
('2022-08-17 20:08:26', 'CMD: /b > Ogisha_Matth: Ja pitao ramba on je rekako kako hocete'),
('2022-08-17 20:08:42', 'CMD: /b > ogy: hm'),
('2022-08-17 20:08:48', 'CMD: /b > Ogisha_Matth: Remove objekti ...'),
('2022-08-17 20:08:52', 'CMD: /b > Ogisha_Matth: Nisi obrisao ona 3 remove objekta '),
('2022-08-17 20:08:54', 'CMD: /b > ogy: one sto sam brisao'),
('2022-08-17 20:08:57', 'CMD: /b > ogy: obrisao sam'),
('2022-08-17 20:08:58', 'CMD: /b > ogy: be'),
('2022-08-17 20:09:06', 'CMD: /b > Ogisha_Matth: Jaoj onda nzm'),
('2022-08-17 20:09:14', 'CMD: /b > Ogisha_Matth: ???????????????????????????????????????'),
('2022-08-17 20:09:17', 'CMD: /b > ogy: gle'),
('2022-08-17 20:09:18', 'CMD: /b > ogy: ima mape'),
('2022-08-17 20:09:19', 'CMD: /b > ogy: ovde'),
('2022-08-17 20:09:20', 'CMD: /b > ogy: neke'),
('2022-08-17 20:09:26', 'CMD: /b > Ogisha_Matth: ????????????????????????????????????????????????????????????????????????????????'),
('2022-08-17 20:09:48', 'CMD: /b > ogy: gle'),
('2022-08-17 20:09:49', 'CMD: /b > ogy: i iza'),
('2022-08-17 20:10:01', 'CMD: /b > Ogisha_Matth: WTF???????????????\\'),
('2022-08-17 20:10:11', 'CMD: /b > Ogisha_Matth: Ja nzm sta smo mi uradili '),
('2022-08-17 20:10:17', 'CMD: /b > Ogisha_Matth: Al samo znam da je to u sklopu sa LSPD '),
('2022-08-17 20:10:36', 'CMD: /b > ogy: nema veze'),
('2022-08-17 20:10:37', 'CMD: /b > ogy: haj'),
('2022-08-17 20:10:42', 'CMD: /b > ogy: videcemo moguce da je'),
('2022-08-17 20:10:43', 'CMD: /b > Ogisha_Matth: ae mapamo'),
('2022-08-17 20:10:43', 'CMD: /b > ogy: sa remove'),
('2022-08-17 20:10:52', 'CMD: /b > Ogisha_Matth: ae vamo na map server'),
('2022-08-17 20:10:54', 'CMD: /b > Ogisha_Matth: da radimo '),
('2022-08-17 20:10:56', 'CMD: /b > ogy: aj'),
('2022-08-17 21:58:48', 'CMD: /b > ogy: a'),
('2022-08-17 23:31:42', 'CMD: /a > Admin ogy: goto'),
('2022-08-17 23:31:48', 'CMD: /b > ogy: ot'),
('2022-08-17 23:31:49', 'CMD: /b > ogy: to'),
('2022-08-17 23:31:53', 'CMD: /b > Ogisha_Matth: Postavio sam to preveliko je '),
('2022-08-17 23:31:56', 'CMD: /b > Ogisha_Matth: sacu ti pokazem'),
('2022-08-17 23:31:57', 'CMD: /b > Ogisha_Matth: ae tamo '),
('2022-08-17 23:31:59', 'CMD: /b > ogy: ae'),
('2022-08-18 02:30:51', 'CMD: /a > Admin ogy: DRIP DRIPP'),
('2022-08-18 02:31:19', 'CMD: /b > ogy: DRIP DRIP DRIP'),
('2022-08-18 02:31:39', 'CMD: /a > Admin ogy: DRIP DRIP DRIP'),
('2022-08-18 02:32:12', 'CMD: /a > Admin ogy: mogao bi sad da namestim pd'),
('2022-08-18 02:32:16', 'CMD: /a > Admin ogy: sve u kurac'),
('2022-08-18 02:32:22', 'CMD: /a > Admin ogy: radim 3 sistema odjednom'),
('2022-08-18 02:32:23', 'CMD: /a > Admin sneaky1337: mogo bi'),
('2022-08-18 02:34:22', 'CMD: /a > Admin sneaky1337: sta si dodo'),
('2022-08-18 02:34:25', 'CMD: /a > Admin sneaky1337: pa si restarto'),
('2022-08-18 02:35:00', 'CMD: /a > Admin ogy: nista, rrao se sad'),
('2022-08-18 02:35:02', 'CMD: /a > Admin ogy: server'),
('2022-08-18 02:35:04', 'CMD: /a > Admin ogy: jer je free host'),
('2022-08-18 02:35:05', 'CMD: /a > Admin ogy: smrdljivi'),
('2022-08-18 02:35:08', 'CMD: /a > Admin sneaky1337: pa uzo sam hosting'),
('2022-08-18 02:35:08', 'CMD: /a > Admin ogy: vec 3 dana pricam to'),
('2022-08-18 02:35:11', 'CMD: /a > Admin sneaky1337: trebam ti send podatke'),
('2022-08-18 02:35:15', 'CMD: /a > Admin ogy: pa sreca pa si poslao bilo sta'),
('2022-08-18 02:43:25', 'CMD: /a > Admin ogy: salji na dc'),
('2022-08-18 02:43:27', 'CMD: /a > Admin ogy: some'),
('2022-08-18 02:43:32', 'CMD: /a > Admin sneaky1337: cek pokazujem vedroxu na live'),
('2022-08-18 02:43:36', 'CMD: /a > Admin sneaky1337: kod mene je na stream'),
('2022-08-18 02:45:38', 'CMD: /a > Admin ogy: aham'),
('2022-08-18 02:45:39', 'CMD: /a > Admin ogy: vazi'),
('2022-08-18 02:49:58', 'CMD: /b > ogy: odoh da radim garazu i ova cuda'),
('2022-08-18 02:49:59', 'CMD: /b > ogy: za pd'),
('2022-08-18 02:50:07', 'CMD: /a > Admin ogy: odoh da radim garazu i ova cuda'),
('2022-08-18 02:50:09', 'CMD: /a > Admin ogy: za pd'),
('2022-08-18 02:50:15', 'CMD: /a > Admin ogy: pisi na dc sve ono'),
('2022-08-18 02:50:17', 'CMD: /a > Admin sneaky1337: ajde pa ubaci da vidim'),
('2022-08-18 02:50:17', 'CMD: /a > Admin ogy: tu sam posle'),
('2022-08-18 02:50:21', 'CMD: /a > Admin ogy: aj'),
('2022-08-18 02:50:21', 'CMD: /a > Admin sneaky1337: taman i vedrxo da vdii'),
('2022-08-18 02:50:24', 'CMD: /a > Admin ogy: aj'),
('2022-08-18 02:50:24', 'CMD: /a > Admin sneaky1337: hoce da vidi covek'),
('2022-08-18 02:50:24', 'CMD: /b > ogy:  /q'),
('2022-08-18 02:50:27', 'CMD: /a > Admin sneaky1337: aj mrs sad'),
('2022-08-18 03:26:32', 'CMD: /a > Admin ogy: ubaceno vam je'),
('2022-08-18 03:26:35', 'CMD: /a > Admin ogy: garaza za pd'),
('2022-08-18 03:26:35', 'CMD: /a > Admin sneaky1337: sta'),
('2022-08-18 03:26:39', 'CMD: /a > Admin sneaky1337: aj da vidim'),
('2022-08-18 03:26:41', 'CMD: /a > Admin ogy: idi vidi'),
('2022-08-18 03:26:44', 'CMD: /a > Admin ogy: ja testiram nesto drugo'),
('2022-08-18 03:27:54', 'CMD: /a > Admin sneaky1337: nisi stavio da moze sa autom u garazu'),
('2022-08-18 03:29:33', 'CMD: /a > Admin sneaky1337: si vido sta sam ti napiso'),
('2022-08-18 03:32:30', 'CMD: /a > Admin sneaky1337: alo'),
('2022-08-18 03:40:28', 'CMD: /a > Admin ogy: oj'),
('2022-08-18 03:40:30', 'CMD: /a > Admin ogy: sta si hteo'),
('2022-08-18 03:40:32', 'CMD: /a > Admin sneaky1337: odi u metro samnom'),
('2022-08-18 03:40:35', 'CMD: /a > Admin ogy: aj'),
('2022-08-18 03:40:37', 'CMD: /a > Admin sneaky1337: aj burg'),
('2022-08-18 03:40:39', 'CMD: /a > Admin ogy: aj'),
('2022-08-18 03:40:59', 'CMD: /a > Admin ogy: dodao sam jos lokacija za dropove'),
('2022-08-18 03:41:17', 'CMD: /a > Admin sneaky1337: trebas sa autom da moze da se ulazi i izlazi sa garaze'),
('2022-08-18 03:41:18', 'CMD: /a > Admin sneaky1337: na pd'),
('2022-08-18 03:41:21', 'CMD: /a > Admin ogy: dada'),
('2022-08-18 03:41:24', 'CMD: /a > Admin ogy: to sam zaboravio'),
('2022-08-18 03:41:28', 'CMD: /a > Admin ogy: to cemo sad'),
('2022-08-18 03:41:30', 'CMD: /a > Admin ogy: 2minuta'),
('2022-08-18 03:41:31', 'CMD: /b > ogy: posla'),
('2022-08-18 03:41:32', 'CMD: /a > Admin ogy: posla'),
('2022-08-18 03:41:36', 'CMD: /a > Admin ogy: sta sa metroom'),
('2022-08-18 03:41:38', 'CMD: /a > Admin ogy: nije u redu'),
('2022-08-18 03:41:42', 'CMD: /a > Admin ogy: ili si random hteo da udjemo'),
('2022-08-18 03:41:52', 'CMD: /a > Admin sneaky1337: ma random da pokazem vedroxu'),
('2022-08-18 03:41:54', 'CMD: /a > Admin ogy: aham'),
('2022-08-18 03:41:59', 'CMD: /a > Admin ogy: odoh da radim ovaj sistem'),
('2022-08-18 03:42:01', 'CMD: /a > Admin ogy: tu sam posle'),
('2022-08-18 03:42:03', 'CMD: /a > Admin sneaky1337: aj mrs'),
('2022-08-18 03:45:06', 'CMD: /b > sneaky1337: briEMij'),
('2022-08-18 03:45:10', 'CMD: /b > sneaky1337: briEMLj'),
('2022-08-18 03:45:13', 'CMD: /b > sneaky1337: briEMlj'),
('2022-08-18 04:02:52', 'CMD: /b > sneaky1337: .'),
('2022-08-18 04:25:55', 'CMD: /a > Admin ogy: jebote'),
('2022-08-18 04:25:58', 'CMD: /a > Admin ogy: ja sta god da radim'),
('2022-08-18 04:25:59', 'CMD: /a > Admin ogy: ja ubagujem'),
('2022-08-18 04:26:02', 'CMD: /a > Admin ogy: majke mi'),
('2022-08-18 04:26:03', 'CMD: /a > Admin sneaky1337: HAHAAHAHAHAH'),
('2022-08-18 04:26:08', 'CMD: /a > Admin ogy: sta se smejes majmune'),
('2022-08-18 04:26:13', 'CMD: /a > Admin ogy: sad sam ubagovao stvar koja je ne moguce'),
('2022-08-18 04:26:15', 'CMD: /a > Admin ogy: ne moguca'),
('2022-08-18 04:26:17', 'CMD: /a > Admin ogy: da se ubaguje'),
('2022-08-18 04:26:19', 'CMD: /a > Admin ogy: majke mi  moje'),
('2022-08-18 04:26:24', 'CMD: /a > Admin sneaky1337: sta si sad ubagovo nesrecnice'),
('2022-08-18 04:26:27', 'CMD: /a > Admin ogy: sta nisam'),
('2022-08-18 04:26:29', 'CMD: /a > Admin ogy: bolje pitaj'),
('2022-08-18 04:26:39', 'CMD: /b > ogy: dobro radi mod'),
('2022-08-18 04:26:40', 'CMD: /b > ogy: cuti'),
('2022-08-18 04:26:42', 'CMD: /a > Admin ogy: dobro radi mod'),
('2022-08-18 04:26:43', 'CMD: /a > Admin ogy: cuti'),
('2022-08-18 04:26:45', 'CMD: /a > Admin ogy: idi u kurac'),
('2022-08-18 04:26:48', 'CMD: /a > Admin ogy: pored mene'),
('2022-08-18 04:26:51', 'CMD: /a > Admin sneaky1337: aahahahaaaahahaaha'),
('2022-08-18 04:26:52', 'CMD: /a > Admin ogy: sjebao bi i kliker'),
('2022-08-18 04:26:53', 'CMD: /a > Admin ogy: jebote'),
('2022-08-18 04:27:26', 'CMD: /a > Admin ogy: sta'),
('2022-08-18 04:27:27', 'CMD: /a > Admin ogy: da'),
('2022-08-18 04:27:29', 'CMD: /a > Admin ogy: radim'),
('2022-08-18 04:27:32', 'CMD: /a > Admin ogy: imam '),
('2022-08-18 04:27:34', 'CMD: /a > Admin ogy: 2 sistema'),
('2022-08-18 04:27:36', 'CMD: /a > Admin ogy: sto sam zamislio'),
('2022-08-18 04:27:39', 'CMD: /a > Admin sneaky1337: koja'),
('2022-08-18 04:27:42', 'CMD: /a > Admin ogy: EH SAD'),
('2022-08-18 04:27:44', 'CMD: /a > Admin ogy: mnogo trazis'),
('2022-08-18 04:27:47', 'CMD: /a > Admin sneaky1337: ckni'),
('2022-08-18 04:27:49', 'CMD: /a > Admin ogy: mars'),
('2022-08-18 04:27:51', 'CMD: /a > Admin ogy: majmune'),
('2022-08-18 04:27:54', 'CMD: /a > Admin ogy: ubagovacu ti mod'),
('2022-08-18 04:27:55', 'CMD: /a > Admin ogy: videces'),
('2022-08-18 04:28:01', 'CMD: /a > Admin ogy: ima da lete ljudi po serverotu'),
('2022-08-18 04:28:02', 'CMD: /a > Admin sneaky1337: da ga sisas'),
('2022-08-18 04:28:07', 'CMD: /a > Admin ogy: sa jetpackom'),
('2022-08-18 04:28:08', 'CMD: /a > Admin ogy: HAHAHAHAHAHA'),
('2022-08-18 04:28:18', 'CMD: /a > Admin sneaky1337: hahaahahahaha'),
('2022-08-18 04:28:26', 'CMD: /a > Admin ogy: salu na stranu'),
('2022-08-18 04:28:33', 'CMD: /a > Admin ogy: mogao bi da vidim da odradim pd'),
('2022-08-18 04:28:33', 'CMD: /a > Admin sneaky1337: sedi tu'),
('2022-08-18 04:28:37', 'CMD: /a > Admin ogy: bezi bre'),
('2022-08-18 04:28:38', 'CMD: /a > Admin sneaky1337: nisi za nigde drugde'),
('2022-08-18 04:28:46', 'CMD: /a > Admin ogy: odoh u kuracc'),
('2022-08-18 04:28:49', 'CMD: /a > Admin ogy: da bagujem  jos'),
('2022-08-18 19:41:15', 'CMD: /a > Admin sneaky1337: izbacili ste ovo afk'),
('2022-08-18 19:41:20', 'CMD: /a > Admin ogy: da'),
('2022-08-18 19:41:27', 'CMD: /a > Admin ogy: uzima 150 objekata'),
('2022-08-18 19:41:29', 'CMD: /a > Admin ogy: neka se jebe'),
('2022-08-18 19:41:55', 'CMD: /a > Admin ogy: hocu jedan posao da napravim'),
('2022-08-18 19:41:58', 'CMD: /a > Admin ogy: dobio sam ideju od rusa'),
('2022-08-18 19:42:39', 'CMD: /a > Admin sneaky1337: da ukrades'),
('2022-08-18 19:42:42', 'CMD: /a > Admin sneaky1337: khmm'),
('2022-08-18 19:42:43', 'CMD: /a > Admin ogy: da uradim xd'),
('2022-08-18 19:43:32', 'CMD: /a > Admin sneaky1337: promeni ovo org u zuta'),
('2022-08-18 19:43:51', 'CMD: /a > Admin sneaky1337: i promeni ove plave kurce nekoj drugi stavi'),
('2022-08-18 19:43:52', 'CMD: /a > Admin ogy: menjacu sve boje'),
('2022-08-18 19:43:53', 'CMD: /a > Admin sneaky1337: ako ima'),
('2022-08-18 19:43:58', 'CMD: /a > Admin ogy: koje'),
('2022-08-18 19:44:02', 'CMD: /a > Admin sneaky1337: ovo'),
('2022-08-18 19:44:03', 'CMD: /a > Admin ogy: aha pickup'),
('2022-08-18 19:44:10', 'CMD: /a > Admin ogy: ima crvena'),
('2022-08-18 19:44:11', 'CMD: /a > Admin ogy: zelena'),
('2022-08-18 19:44:12', 'CMD: /a > Admin ogy: plava'),
('2022-08-18 19:44:14', 'CMD: /a > Admin ogy: i tjt'),
('2022-08-18 19:44:19', 'CMD: /a > Admin sneaky1337: a drug objekat?'),
('2022-08-18 19:44:22', 'CMD: /a > Admin sneaky1337: nema li'),
('2022-08-18 19:44:23', 'CMD: /a > Admin ogy: ima'),
('2022-08-18 19:44:26', 'CMD: /a > Admin sneaky1337: onaj znas dole sto je kao drug'),
('2022-08-18 19:44:27', 'CMD: /a > Admin ogy: zuti neki '),
('2022-08-18 19:44:31', 'CMD: /a > Admin ogy: aham'),
('2022-08-18 19:44:32', 'CMD: /a > Admin ogy: to hoces'),
('2022-08-18 19:44:34', 'CMD: /a > Admin sneaky1337: da'),
('2022-08-18 19:44:36', 'CMD: /a > Admin ogy: kao u opstini sto ima'),
('2022-08-18 19:44:37', 'CMD: /a > Admin ogy: ono'),
('2022-08-18 19:44:38', 'CMD: /a > Admin ogy: dobro'),
('2022-08-18 19:46:57', 'CMD: /a > Admin ogy: resen pickup'),
('2022-08-18 19:54:27', 'CMD: /a > Admin ogy: sve pickupe'),
('2022-08-18 19:54:29', 'CMD: /a > Admin ogy: sam prebacio'),
('2022-08-18 19:54:32', 'CMD: /a > Admin ogy: u ono zuto kao dole'),
('2022-08-18 19:54:35', 'CMD: /a > Admin ogy: da bude sve lepo'),
('2022-08-18 19:54:40', 'CMD: /a > Admin sneaky1337: nene ti si lep'),
('2022-08-18 19:54:46', 'CMD: /a > Admin ogy: ubacio sam anticheat'),
('2022-08-18 19:54:51', 'CMD: /a > Admin ogy: provere za ac'),
('2022-08-18 19:54:55', 'CMD: /a > Admin ogy: i ostlao'),
('2022-08-18 19:54:59', 'CMD: /a > Admin ogy: staivo sam'),
('2022-08-18 19:55:02', 'CMD: /a > Admin ogy: ovaj label za org vozila'),
('2022-08-18 19:55:05', 'CMD: /a > Admin ogy: crveno'),
('2022-08-18 19:55:11', 'CMD: /a > Admin ogy: ORGANIZACIJSKO VOZILO'),
('2022-08-18 19:55:14', 'CMD: /a > Admin ogy: pa dole'),
('2022-08-18 19:55:16', 'CMD: /a > Admin ogy: ime org'),
('2022-08-18 19:57:25', 'CMD: /a > Admin ogy: aj da rramo srv'),
('2022-08-18 19:58:31', 'CMD: /a > Admin ogy: goto'),
('2022-08-18 19:58:39', 'CMD: /b > ogy: da povecam string'),
('2022-08-18 19:58:41', 'CMD: /b > ogy: samo'),
('2022-08-18 19:58:59', 'CMD: /a > Admin sneaky1337: unutra u interijeru'),
('2022-08-18 19:59:02', 'CMD: /a > Admin sneaky1337: nema picku'),
('2022-08-18 19:59:06', 'CMD: /a > Admin sneaky1337: pickup*'),
('2022-08-18 19:59:19', 'CMD: /a > Admin ogy: namestam sad'),
('2022-08-18 20:00:25', 'CMD: /a > Admin sneaky1337: zar ne bi bilo lepse da bude ovo u zuto isto'),
('2022-08-18 20:00:30', 'CMD: /a > Admin sneaky1337: il ovako je bolje nmp'),
('2022-08-18 20:00:35', 'CMD: /a > Admin ogy: koje zuto'),
('2022-08-18 20:00:37', 'CMD: /a > Admin ogy: koja tacno'),
('2022-08-18 20:00:45', 'CMD: /a > Admin sneaky1337: ovo crveno'),
('2022-08-18 20:00:48', 'CMD: /b > ogy: aham'),
('2022-08-18 20:00:54', 'CMD: /b > ogy: aj promenicu ti'),
('2022-08-18 20:00:55', 'CMD: /b > ogy: pa vidi'),
('2022-08-18 20:00:58', 'CMD: /a > Admin sneaky1337: aj'),
('2022-08-18 20:00:59', 'CMD: /b > ogy: dal crvena ili zuta'),
('2022-08-18 20:02:43', 'CMD: /o > Admin ogy: aj da rramo'),
('2022-08-18 20:03:59', 'CMD: /a > Admin ogy: sad imamo i port'),
('2022-08-18 20:04:01', 'CMD: /a > Admin ogy: za lspd'),
('2022-08-18 20:04:08', 'CMD: /a > Admin ogy: eto ti zuta'),
('2022-08-18 20:04:45', 'CMD: /a > Admin sneaky1337: ovako je bolje'),
('2022-08-18 20:05:05', 'CMD: /a > Admin sneaky1337: ovo treba za ovrepair'),
('2022-08-18 20:05:14', 'CMD: /a > Admin sneaky1337: da se doda pickup'),
('2022-08-18 20:05:23', 'CMD: /a > Admin sneaky1337: jer ima samo text'),
('2022-08-18 20:05:28', 'CMD: /a > Admin ogy: dada'),
('2022-08-18 20:05:31', 'CMD: /a > Admin ogy: radim sad to'),
('2022-08-18 20:05:51', 'CMD: /a > Admin ogy: bolja ti je zuta ?'),
('2022-08-18 20:05:59', 'CMD: /a > Admin sneaky1337: da'),
('2022-08-18 20:06:02', 'CMD: /a > Admin ogy: dobro'),
('2022-08-18 20:07:00', 'CMD: /a > Admin ogy: ne znam gde je dexter'),
('2022-08-18 20:07:09', 'CMD: /a > Admin ogy: vidi sa muayem jel mapa ili nece da mapa'),
('2022-08-18 20:07:11', 'CMD: /a > Admin ogy: da trazimo drugog'),
('2022-08-18 20:07:18', 'CMD: /a > Admin ogy: da ga cekam za mape 10 dana ne planiram'),
('2022-08-18 20:07:19', 'CMD: /a > Admin sneaky1337: reko da je kod babu ovaj muay'),
('2022-08-18 20:07:22', 'CMD: /a > Admin sneaky1337: docice sutra reko'),
('2022-08-18 20:07:25', 'CMD: /a > Admin ogy: aha'),
('2022-08-18 20:07:26', 'CMD: /a > Admin sneaky1337: i treba da ti posalje'),
('2022-08-18 20:07:29', 'CMD: /a > Admin sneaky1337: lotto i bolnicu'),
('2022-08-18 20:07:31', 'CMD: /a > Admin sneaky1337: odradio ih'),
('2022-08-18 20:07:34', 'CMD: /a > Admin ogy: to sutra ?'),
('2022-08-18 20:08:22', 'CMD: /a > Admin ogy: odoh da radim sistem'),
('2022-08-18 20:08:26', 'CMD: /a > Admin ogy: posle sam tu'),
('2022-08-18 20:53:31', 'IC: Seksias_Night > ah'),
('2022-08-18 20:59:08', 'CMD: /a > Admin Seksias_Night: Retardu ajde do mene '),
('2022-08-18 20:59:23', 'CMD: /a > Admin sneaky1337: unmute'),
('2022-08-18 21:02:36', 'CMD: /b > Seksias_Night: apopravi'),
('2022-08-18 21:12:22', 'IC: Annoying_Bitch > a'),
('2022-08-18 21:12:46', 'CMD: /b > sneaky1337: '),
('2022-08-18 21:13:29', 'CMD: /b > sneaky1337:  /anim crossarms2'),
('2022-08-18 21:14:04', 'CMD: /b > Annoying_Bitch: jebem ti boga'),
('2022-08-18 21:14:07', 'CMD: /b > Annoying_Bitch: u kratkom postupku'),
('2022-08-18 21:14:08', 'CMD: /b > sneaky1337:  /anim bj1'),
('2022-08-18 21:14:32', 'CMD: /b > sneaky1337:  /anim bj2'),
('2022-08-18 21:15:19', 'CMD: /b > sneaky1337:  /anim bj4'),
('2022-08-18 21:16:27', 'IC: Annoying_Bitch > moze admin'),
('2022-08-18 21:16:41', 'CMD: /a > Admin Annoying_Bitch: moze aup'),
('2022-08-18 21:16:50', 'CMD: /a > Admin Annoying_Bitch: moze aup'),
('2022-08-18 21:16:56', 'CMD: /a > Admin Annoying_Bitch: moze a4 pls'),
('2022-08-18 21:18:22', 'CMD: /b > Annoying_Bitch: /anim fuck2'),
('2022-08-18 21:19:18', 'CMD: /b > sneaky1337:  /call 884'),
('2022-08-18 21:19:44', 'CMD: /a > Admin Annoying_Bitch: ogy'),
('2022-08-18 21:19:48', 'CMD: /a > Admin ogy: kazi'),
('2022-08-18 21:19:55', 'CMD: /a > Admin Annoying_Bitch: samo da ti kazem'),
('2022-08-18 21:20:01', 'CMD: /a > Admin Annoying_Bitch: sagnes mi se '),
('2022-08-18 21:20:04', 'CMD: /a > Admin Annoying_Bitch: <3'),
('2022-08-18 21:20:18', 'CMD: /a > Admin ogy: oksi'),
('2022-08-18 21:29:25', 'CMD: /a > Admin Annoying_Bitch: zivot, zivor zivot je kazinoo'),
('2022-08-18 21:29:35', 'CMD: /b > Annoying_Bitch: aw'),
('2022-08-18 21:29:38', 'CMD: /b > Annoying_Bitch: a'),
('2022-08-18 21:29:40', 'CMD: /b > Annoying_Bitch: icw'),
('2022-08-18 21:38:17', 'CMD: /a > Admin sneaky1337: ogi smrdo'),
('2022-08-18 21:38:21', 'CMD: /a > Admin Annoying_Bitch: ogi smrdo'),
('2022-08-18 21:38:29', 'CMD: /a > Admin Seksias_Night: ogi smrdo'),
('2022-08-18 21:39:35', 'CMD: /b > Annoying_Bitch: r'),
('2022-08-18 21:39:58', 'CMD: /b > sneaky1337: SIUUUUUUUUUUUUUUUUUUUUUUUUU'),
('2022-08-18 21:42:49', 'CMD: /b > Annoying_Bitch: jebem alahcica'),
('2022-08-18 21:46:09', 'CMD: /b > Seksias_Night: yEn^3K6'),
('2022-08-18 21:52:08', 'CMD: /a > Admin ogy: dobro vece !'),
('2022-08-18 21:52:20', 'CMD: /a > Admin sneaky1337: vece'),
('2022-08-18 21:52:24', 'CMD: /a > Admin Seksias_Night: vece'),
('2022-08-18 21:53:40', 'CMD: /a > Admin sneaky1337: ogi'),
('2022-08-18 21:53:43', 'CMD: /a > Admin ogy: a'),
('2022-08-18 21:53:47', 'CMD: /a > Admin sneaky1337: oj probaj ovo'),
('2022-08-18 21:53:51', 'CMD: /a > Admin sneaky1337: ovaj ne moze da uspe xd'),
('2022-08-18 21:54:05', 'CMD: /b > sneaky1337: ahahaahahahahaha'),
('2022-08-18 21:54:19', 'CMD: /a > Admin sneaky1337: hahahaahahahahaha'),
('2022-08-18 21:54:29', 'CMD: /a > Admin sneaky1337: doca'),
('2022-08-18 21:54:35', 'CMD: /b > ogy: xd'),
('2022-08-18 21:54:42', 'CMD: /a > Admin sneaky1337: covek se preznoio'),
('2022-08-18 21:54:46', 'CMD: /a > Admin sneaky1337: pola sata pokusava'),
('2022-08-18 21:56:28', 'CMD: /b > sneaky1337: cekaj vozi lepo'),
('2022-08-18 21:56:31', 'CMD: /b > sneaky1337: da mi ga ispuse'),
('2022-08-18 21:57:04', 'CMD: /b > sneaky1337: ogi hoces da mu se pridruzis'),
('2022-08-18 21:57:13', 'CMD: /b > ogy: ako ces ti da klecis'),
('2022-08-18 21:57:14', 'CMD: /b > ogy: moze'),
('2022-08-18 21:57:19', 'CMD: /b > sneaky1337: jebem te u usta'),
('2022-08-18 21:57:22', 'CMD: /b > ogy: xaxaxx'),
('2022-08-18 21:57:26', 'CMD: /b > Seksias_Night: da nas kolena bole'),
('2022-08-18 21:58:44', 'CMD: /b > sneaky1337: ogiiii'),
('2022-08-18 21:58:51', 'CMD: /b > sneaky1337: moze da te cokim'),
('2022-08-18 21:58:52', 'CMD: /b > ogy: ha'),
('2022-08-18 21:59:07', 'CMD: /b > sneaky1337: jel tako'),
('2022-08-18 21:59:09', 'CMD: /b > sneaky1337: nismo se dog '),
('2022-08-18 21:59:10', 'CMD: /b > sneaky1337: tako'),
('2022-08-18 22:01:32', 'CMD: /b > sneaky1337: ogi'),
('2022-08-18 22:01:34', 'CMD: /b > ogy: a'),
('2022-08-18 22:01:36', 'CMD: /b > sneaky1337: jel bi jebo ciganku'),
('2022-08-18 22:01:43', 'CMD: /b > ogy: nju bi ostavio za tebe'),
('2022-08-18 22:01:52', 'CMD: /b > sneaky1337: ma ona ima tebi merak'),
('2022-08-18 22:02:00', 'CMD: /b > sneaky1337: kaze imas mali kurac'),
('2022-08-18 22:02:05', 'CMD: /b > sneaky1337: a ona voli male kurcine'),
('2022-08-18 22:02:10', 'CMD: /b > ogy: ona je pomesala s\'kim se jebala'),
('2022-08-18 22:02:14', 'CMD: /b > ogy: xaxaxa'),
('2022-08-18 22:02:15', 'CMD: /b > sneaky1337: BAHAHAHAAHAHAAHA'),
('2022-08-18 22:02:43', 'CMD: /a > Admin Annoying_Bitch: sagnete mi se'),
('2022-08-18 22:02:51', 'CMD: /b > Annoying_Bitch: \\w'),
('2022-08-18 22:04:57', 'CMD: /b > Seksias_Night: op opo'),
('2022-08-18 22:06:10', 'CMD: /b > ogy: JEBOTE'),
('2022-08-18 22:06:11', 'CMD: /b > ogy: LED'),
('2022-08-18 22:06:13', 'CMD: /b > ogy: IDI U KURAC'),
('2022-08-18 22:06:13', 'CMD: /a > Admin sneaky1337: tako vam treba'),
('2022-08-18 22:06:18', 'CMD: /a > Admin sneaky1337: hahahaahahahahaha'),
('2022-08-18 22:10:18', 'CMD: /b > Seksias_Night: Izvolite '),
('2022-08-18 22:10:21', 'CMD: /b > Seksias_Night: Gospodine'),
('2022-08-18 22:10:23', 'CMD: /b > sneaky1337: dje si brko'),
('2022-08-18 22:10:36', 'CMD: /b > Seksias_Night: Sta zelite da porucite'),
('2022-08-18 22:10:40', 'CMD: /b > sneaky1337: dje si nabijem ti ga'),
('2022-08-18 22:10:49', 'CMD: /b > sneaky1337: konjak jedan za mene'),
('2022-08-18 22:10:51', 'CMD: /b > sneaky1337: leden'),
('2022-08-18 22:10:55', 'CMD: /b > sneaky1337: sa led unutra'),
('2022-08-18 22:11:09', 'CMD: /b > Seksias_Night: Konjak nemamo na meniju'),
('2022-08-18 22:11:14', 'CMD: /b > Seksias_Night: Zelite li ladan '),
('2022-08-18 22:11:16', 'CMD: /b > sneaky1337: pu serem vam se u kafic'),
('2022-08-18 22:11:16', 'CMD: /b > Seksias_Night: Kurac '),
('2022-08-18 22:15:39', 'IC: Annoying_Bitch > cao'),
('2022-08-18 22:15:45', 'CMD: /a > Admin Annoying_Bitch: seksi zaboravio kod'),
('2022-08-18 22:15:47', 'CMD: /a > Admin Annoying_Bitch: retard'),
('2022-08-18 22:15:52', 'CMD: /a > Admin ogy: neka bleji u loginu'),
('2022-08-18 22:15:54', 'CMD: /a > Admin ogy: da mu setam'),
('2022-08-18 22:15:55', 'CMD: /a > Admin Seksias_Night: ne nego brzo kucao '),
('2022-08-18 22:15:55', 'CMD: /a > Admin ogy: kod'),
('2022-08-18 22:15:57', 'CMD: /a > Admin Annoying_Bitch: evo'),
('2022-08-18 22:15:59', 'CMD: /a > Admin Annoying_Bitch: dobio je '),
('2022-08-18 22:16:04', 'CMD: /a > Admin ogy: 1'),
('2022-08-18 22:16:06', 'CMD: /a > Admin ogy: mu je code'),
('2022-08-18 22:16:07', 'CMD: /a > Admin Annoying_Bitch: Seksi u vojsu sam da znate'),
('2022-08-18 22:16:11', 'CMD: /a > Admin Seksias_Night: Ajde 7'),
('2022-08-18 22:16:16', 'CMD: /a > Admin ogy: kod ?'),
('2022-08-18 22:16:19', 'CMD: /a > Admin Seksias_Night: da'),
('2022-08-18 22:16:20', 'CMD: /a > Admin ogy: eto ga'),
('2022-08-18 22:16:26', 'CMD: /a > Admin Seksias_Night: Hvalaa'),
('2022-08-18 22:16:28', 'CMD: /a > Admin ogy: nnc'),
('2022-08-18 22:16:42', 'CMD: /a > Admin Annoying_Bitch: seksi'),
('2022-08-18 22:16:45', 'CMD: /a > Admin Annoying_Bitch: izasao je iz bojssa'),
('2022-08-18 22:16:54', 'CMD: /a > Admin ogy: jel vam se svidja moja nova kucica'),
('2022-08-18 22:16:59', 'CMD: /a > Admin Seksias_Night: Koja'),
('2022-08-18 22:17:02', 'CMD: /a > Admin ogy: goto'),
('2022-08-18 22:17:07', 'CMD: /a > Admin Seksias_Night: Enterijeri vrhh su brate'),
('2022-08-18 22:17:33', 'CMD: /a > Admin Seksias_Night: ma mozee bolje...'),
('2022-08-18 22:17:38', 'CMD: /a > Admin ogy: moze uvek'),
('2022-08-18 22:17:44', 'CMD: /a > Admin ogy: ovo uzeo da se sprdam dok ne otvorimo srv'),
('2022-08-18 22:17:51', 'CMD: /a > Admin Seksias_Night: Da super je '),
('2022-08-18 22:18:24', 'CMD: /a > Admin Annoying_Bitch: opa ogy'),
('2022-08-18 22:18:32', 'CMD: /a > Admin Annoying_Bitch: moze meni kakva'),
('2022-08-18 22:18:38', 'CMD: /a > Admin ogy: moras platis'),
('2022-08-18 22:18:42', 'CMD: /a > Admin Annoying_Bitch: au'),
('2022-08-18 22:18:45', 'CMD: /a > Admin Seksias_Night: Enterijeri su vrhh Ogyyy'),
('2022-08-18 22:18:45', 'CMD: /a > Admin ogy: xaxax'),
('2022-08-18 22:18:53', 'CMD: /a > Admin Annoying_Bitch: ok'),
('2022-08-18 22:18:55', 'CMD: /a > Admin Annoying_Bitch: ogu'),
('2022-08-18 22:18:58', 'CMD: /a > Admin Annoying_Bitch: ni prijatelju'),
('2022-08-18 22:19:27', 'CMD: /a > Admin Seksias_Night: Ogii sta mislis kada bi se napravile donacije da mogu i putem '),
('2022-08-18 22:19:31', 'CMD: /a > Admin Seksias_Night: mobilnog kredita'),
('2022-08-18 22:19:34', 'CMD: /a > Admin Seksias_Night: ?'),
('2022-08-18 22:19:39', 'CMD: /a > Admin ogy: velika provozija'),
('2022-08-18 22:20:02', 'CMD: /a > Admin ogy: od 100dinara'),
('2022-08-18 22:20:05', 'CMD: /a > Admin ogy: ti dobijes 60'),
('2022-08-18 22:20:09', 'CMD: /a > Admin Seksias_Night: A da jebiga aa zna ono ne bi da reklamiram ali kao na SA'),
('2022-08-18 22:20:18', 'CMD: /a > Admin Seksias_Night: Sto imaju one coinse kao '),
('2022-08-18 22:20:31', 'CMD: /a > Admin ogy: dada'),
('2022-08-18 22:20:39', 'CMD: /a > Admin ogy: to kod njih prolazi jer imaju igace na izvoz'),
('2022-08-18 22:20:41', 'CMD: /a > Admin Seksias_Night: Pa sto se kupuju e da tako se nesto kao napravi'),
('2022-08-18 22:20:42', 'CMD: /a > Admin ogy: igrace*'),
('2022-08-18 22:20:49', 'CMD: /a > Admin Seksias_Night: A da i to...'),
('2022-08-18 22:21:51', 'CMD: /a > Admin Seksias_Night: Brate eto rekao sam i Rambu kada budete dodavali kuce stanove garaze i vikendice'),
('2022-08-18 22:21:53', 'CMD: /a > Admin Annoying_Bitch: ogi'),
('2022-08-18 22:21:55', 'CMD: /a > Admin ogy: e'),
('2022-08-18 22:21:56', 'CMD: /a > Admin Seksias_Night: slobodno zovite'),
('2022-08-18 22:21:59', 'CMD: /a > Admin Annoying_Bitch: osamarim te po guzici'),
('2022-08-18 22:22:02', 'CMD: /a > Admin Annoying_Bitch: s razlogom 1'),
('2022-08-18 22:22:05', 'CMD: /a > Admin ogy: xaxa'),
('2022-08-18 22:22:10', 'CMD: /a > Admin Annoying_Bitch: goto me'),
('2022-08-18 22:22:17', 'CMD: /b > ogy: a'),
('2022-08-18 22:22:22', 'CMD: /a > Admin Annoying_Bitch: koji retard'),
('2022-08-18 22:22:57', 'CMD: /b > ogy: jebo me crash'),
('2022-08-18 22:23:54', 'CMD: /a > Admin Seksias_Night: Aloo'),
('2022-08-18 22:24:06', 'CMD: /a > Admin Seksias_Night: pade skripta moram rr'),
('2022-08-18 22:24:14', 'CMD: /b > Annoying_Bitch: budala'),
('2022-08-18 22:24:21', 'CMD: /b > Annoying_Bitch: ni internet nemas'),
('2022-08-18 22:24:22', 'CMD: /b > Annoying_Bitch: pu'),
('2022-08-18 22:24:25', 'CMD: /b > Annoying_Bitch: cek'),
('2022-08-18 22:24:27', 'CMD: /b > Annoying_Bitch: sekund'),
('2022-08-18 22:24:37', 'CMD: /b > Annoying_Bitch: g'),
('2022-08-18 22:24:43', 'CMD: /b > Annoying_Bitch: o jebem ti sunce'),
('2022-08-18 22:24:59', 'CMD: /b > Annoying_Bitch: gdje si ti'),
('2022-08-18 22:25:18', 'CMD: /b > ogy: evo me'),
('2022-08-18 22:25:27', 'CMD: /b > Annoying_Bitch: kako si'),
('2022-08-18 22:25:30', 'CMD: /b > Seksias_Night: poz'),
('2022-08-18 22:25:35', 'CMD: /b > ogy: evo moze ibolje'),
('2022-08-18 22:25:39', 'CMD: /b > Annoying_Bitch: kako skriptanje'),
('2022-08-18 22:25:44', 'CMD: /b > Annoying_Bitch: jesi video onaj MW sto se otvorio'),
('2022-08-18 22:25:44', 'CMD: /b > ogy: mislis bagovanje'),
('2022-08-18 22:25:46', 'CMD: /b > Annoying_Bitch: ko to vodi'),
('2022-08-18 22:25:48', 'CMD: /b > Annoying_Bitch: ja to'),
('2022-08-18 22:25:55', 'CMD: /b > ogy: nzm ko vodi mw'),
('2022-08-18 22:25:58', 'CMD: /b > ogy: ima ih mnogo tamo'),
('2022-08-18 22:26:07', 'CMD: /b > Annoying_Bitch: znam video sam imaju fin broj igraca'),
('2022-08-18 22:26:36', 'CMD: /b > Annoying_Bitch: nisam aktivan na fb al  sad nesto uletim pa video nisam ni znao da se otvorio do neki dan'),
('2022-08-18 22:26:41', 'CMD: /b > ogy: kako ti je fb'),
('2022-08-18 22:26:45', 'CMD: /b > Annoying_Bitch: eh'),
('2022-08-18 22:26:50', 'CMD: /b > Annoying_Bitch: najjace sto me znas'),
('2022-08-18 22:26:51', 'CMD: /b > Annoying_Bitch: hahahah'),
('2022-08-18 22:26:57', 'CMD: /b > Annoying_Bitch: Monster Smitth '),
('2022-08-18 22:27:04', 'CMD: /b > Seksias_Night: sto lazeeee'),
('2022-08-18 22:27:07', 'CMD: /b > ogy: xaxa'),
('2022-08-18 22:27:07', 'CMD: /b > Annoying_Bitch: mamu ti '),
('2022-08-18 22:27:11', 'CMD: /b > Annoying_Bitch: slazem'),
('2022-08-18 22:27:27', 'CMD: /b > Annoying_Bitch: ginemooo'),
('2022-08-18 22:28:08', 'CMD: /b > Seksias_Night: au '),
('2022-08-18 22:28:09', 'CMD: /b > ogy: ovde cemo staviti'),
('2022-08-18 22:28:10', 'CMD: /b > ogy: vrv'),
('2022-08-18 22:28:16', 'CMD: /b > Seksias_Night: sta'),
('2022-08-18 22:28:17', 'CMD: /b > ogy: DROGU'),
('2022-08-18 22:28:21', 'CMD: /b > Seksias_Night: aha'),
('2022-08-18 22:28:34', 'CMD: /b > Seksias_Night: pa da bude ono kao i potraga'),
('2022-08-18 22:28:36', 'CMD: /b > Seksias_Night: za drogu '),
('2022-08-18 22:28:38', 'CMD: /b > Seksias_Night: mafija '),
('2022-08-18 22:29:12', 'CMD: /b > Annoying_Bitch: sigurno'),
('2022-08-18 22:29:28', 'CMD: /b > ogy: NE'),
('2022-08-18 22:29:30', 'CMD: /b > ogy: JEBEM TI'),
('2022-08-18 22:29:31', 'CMD: /b > ogy: MATER'),
('2022-08-18 22:30:09', 'CMD: /b > Annoying_Bitch: ogy'),
('2022-08-18 22:30:11', 'CMD: /b > ogy: A'),
('2022-08-18 22:30:23', 'CMD: /b > Annoying_Bitch: ajmo plackat nesto'),
('2022-08-18 22:30:35', 'CMD: /b > ogy: nista nije gotovoo'),
('2022-08-18 22:30:37', 'CMD: /b > ogy: sta da pljackamo'),
('2022-08-18 22:30:39', 'CMD: /b > ogy: krsta ti'),
('2022-08-18 22:31:11', 'CMD: /b > Seksias_Night: AHHAHAHAAHHAHAHA'),
('2022-08-18 22:31:26', 'CMD: /b > ogy: ovo top l okacija'),
('2022-08-18 22:31:27', 'CMD: /b > ogy: za'),
('2022-08-18 22:31:28', 'CMD: /b > ogy: ribara'),
('2022-08-18 22:31:38', 'CMD: /b > ogy: pici i levo i desno'),
('2022-08-18 22:31:39', 'CMD: /b > ogy: da peca'),
('2022-08-18 22:31:57', 'CMD: /b > ogy: e serem'),
('2022-08-18 22:31:58', 'CMD: /b > ogy: se '),
('2022-08-18 22:31:59', 'CMD: /b > ogy: u sultan'),
('2022-08-18 22:32:07', 'CMD: /b > Seksias_Night: AHHAHAHA'),
('2022-08-18 22:32:15', 'CMD: /b > Seksias_Night: a lokacija za ribara top'),
('2022-08-18 22:32:19', 'CMD: /b > Annoying_Bitch: ogy'),
('2022-08-18 22:32:22', 'CMD: /b > Annoying_Bitch: volis li ti ribare'),
('2022-08-18 22:32:41', 'CMD: /b > ogy: ne'),
('2022-08-18 22:32:52', 'CMD: /b > Annoying_Bitch: sta imas protiv ljudi poput mene'),
('2022-08-18 22:32:53', 'CMD: /b > Annoying_Bitch: sve ti'),
('2022-08-18 22:32:56', 'CMD: /b > ogy: cukam'),
('2022-08-18 22:33:22', 'CMD: /b > Seksias_Night: AHHAHAH'),
('2022-08-18 22:34:09', 'CMD: /b > Seksias_Night: ogy'),
('2022-08-18 22:34:13', 'CMD: /b > Seksias_Night: ti si fakultet'),
('2022-08-18 22:34:24', 'CMD: /b > ogy: kaki fakultet'),
('2022-08-18 22:34:28', 'CMD: /b > Annoying_Bitch: jajajaajajajaja'),
('2022-08-18 22:34:37', 'CMD: /b > Annoying_Bitch: Cek sta mi radimo sad'),
('2022-08-18 22:34:42', 'CMD: /b > ogy: jebemo radoznale'),
('2022-08-18 22:34:44', 'CMD: /b > Annoying_Bitch: Daj da testamo sta'),
('2022-08-18 22:34:54', 'CMD: /b > ogy: sta da testiramo'),
('2022-08-18 22:34:55', 'CMD: /b > Annoying_Bitch: da vidim sta si sve ubagovao'),
('2022-08-18 22:34:57', 'CMD: /b > ogy: jel imate citeve'),
('2022-08-18 22:34:58', 'CMD: /b > ogy: ajde'),
('2022-08-18 22:35:02', 'CMD: /b > Annoying_Bitch: Ne'),
('2022-08-18 22:35:04', 'CMD: /b > Annoying_Bitch: Sto ce mi'),
('2022-08-18 22:35:04', 'CMD: /b > ogy: skini'),
('2022-08-18 22:35:07', 'CMD: /b > Annoying_Bitch: AHAHAAHHA'),
('2022-08-18 22:35:09', 'CMD: /b > ogy: idi testiraj anticheat'),
('2022-08-18 22:35:12', 'CMD: /b > Annoying_Bitch: Juju'),
('2022-08-18 22:35:14', 'CMD: /b > ogy: to je jedino ne testirano'),
('2022-08-18 22:35:21', 'CMD: /b > Annoying_Bitch: daj da vidim kakav je ovo avion'),
('2022-08-18 22:35:27', 'CMD: /b > Annoying_Bitch: sto slece'),
('2022-08-18 22:35:29', 'CMD: /b > Seksias_Night: da ja probam ac hahaha'),
('2022-08-18 22:35:30', 'CMD: /b > ogy: idi '),
('2022-08-18 22:35:33', 'CMD: /b > ogy: probaj'),
('2022-08-18 22:35:36', 'CMD: /b > ogy: ako imas'),
('2022-08-18 22:35:37', 'CMD: /b > ogy: citeve'),
('2022-08-18 22:35:57', 'CMD: /b > Seksias_Night: Ma imao sam prije oko 40 citeva mozda i vise'),
('2022-08-18 22:35:57', 'CMD: /b > Annoying_Bitch: 16g samo'),
('2022-08-18 22:36:02', 'CMD: /b > Seksias_Night: a sada nemam'),
('2022-08-18 22:36:03', 'CMD: /b > Annoying_Bitch: jebem ti susu'),
('2022-08-18 22:36:14', 'CMD: /b > ogy: STA ME UPOZORAVA'),
('2022-08-18 22:36:15', 'CMD: /b > ogy: OVO SRANJE'),
('2022-08-18 22:36:16', 'CMD: /b > ogy: 2 PUTA'),
('2022-08-18 22:36:18', 'CMD: /b > Annoying_Bitch: AHAHAHHAHAHAH'),
('2022-08-18 22:36:19', 'CMD: /b > ogy: PA NISAM SLEP'),
('2022-08-18 22:36:20', 'CMD: /b > ogy: MAJKU TI EJBEM'),
('2022-08-18 22:36:34', 'CMD: /b > Annoying_Bitch: Jebem te u usta'),
('2022-08-18 22:36:43', 'CMD: /b > Annoying_Bitch: vidi kuce'),
('2022-08-18 22:36:45', 'CMD: /b > Annoying_Bitch: jebote'),
('2022-08-18 22:36:51', 'CMD: /b > ogy: KAKA KUCA'),
('2022-08-18 22:36:53', 'CMD: /b > Annoying_Bitch: hAHHAHAHHAHA'),
('2022-08-18 22:37:03', 'CMD: /b > Annoying_Bitch: PISE YAKUZA NA NJOJ'),
('2022-08-18 22:37:07', 'CMD: /b > ogy: I TEBI'),
('2022-08-18 22:37:07', 'CMD: /b > Annoying_Bitch: EVO JE '),
('2022-08-18 22:37:08', 'CMD: /b > ogy: TO KUCA'),
('2022-08-18 22:37:10', 'CMD: /b > ogy: MENTOLU'),
('2022-08-18 22:37:10', 'CMD: /b > Annoying_Bitch: HAHAHAHAH'),
('2022-08-18 22:37:13', 'CMD: /b > Annoying_Bitch: HAHAHHAHHAHAHA'),
('2022-08-18 22:37:15', 'CMD: /b > ogy: DA LEPA'),
('2022-08-18 22:37:16', 'CMD: /b > ogy: KUCA'),
('2022-08-18 22:37:17', 'CMD: /b > Annoying_Bitch: dobra kuca'),
('2022-08-18 22:37:19', 'CMD: /b > ogy: BAS LICI'),
('2022-08-18 22:37:20', 'CMD: /b > Annoying_Bitch: HAHAHAHAHHAHAHA'),
('2022-08-18 22:37:20', 'CMD: /b > ogy: NA KUCU'),
('2022-08-18 22:37:24', 'CMD: /b > Annoying_Bitch: lici'),
('2022-08-18 22:37:27', 'CMD: /b > Annoying_Bitch: sta joj fali'),
('2022-08-18 22:37:27', 'CMD: /b > Seksias_Night: Jel samo mogu pp donacije??'),
('2022-08-18 22:37:28', 'CMD: /b > ogy: lici na soma'),
('2022-08-18 22:37:30', 'CMD: /b > ogy: poput tebe'),
('2022-08-18 22:37:32', 'CMD: /b > Annoying_Bitch: TI JESI SOM'),
('2022-08-18 22:37:34', 'CMD: /b > Annoying_Bitch: SUNCE TI'),
('2022-08-18 22:37:42', 'CMD: /b > ogy: pp crypto, posta'),
('2022-08-18 22:37:44', 'CMD: /b > ogy: sta god'),
('2022-08-18 22:37:47', 'CMD: /b > Annoying_Bitch: odakle '),
('2022-08-18 22:37:48', 'CMD: /b > Annoying_Bitch: posta'),
('2022-08-18 22:37:51', 'CMD: /b > ogy: srb'),
('2022-08-18 22:37:54', 'CMD: /b > Annoying_Bitch: pu'),
('2022-08-18 22:37:55', 'CMD: /b > ogy: jok posta'),
('2022-08-18 22:37:56', 'CMD: /b > ogy: iz '),
('2022-08-18 22:37:56', 'CMD: /b > Seksias_Night: e kurac'),
('2022-08-18 22:37:58', 'CMD: /b > ogy: australije'),
('2022-08-18 22:38:01', 'CMD: /b > Annoying_Bitch: Moze'),
('2022-08-18 22:38:03', 'CMD: /b > Seksias_Night: moze bh '),
('2022-08-18 22:38:07', 'CMD: /b > ogy: western'),
('2022-08-18 22:38:15', 'CMD: /b > Annoying_Bitch: taman sam iz Beca'),
('2022-08-18 22:38:20', 'CMD: /b > ogy: ti iz beca'),
('2022-08-18 22:38:21', 'CMD: /b > Annoying_Bitch: HAAHHAHHAAHAHAHAAHAAHAA'),
('2022-08-18 22:38:23', 'CMD: /b > Annoying_Bitch: HAHAHAHAHAHAHA'),
('2022-08-18 22:38:24', 'CMD: /b > ogy: ti bec video samo na guglu'),
('2022-08-18 22:38:25', 'CMD: /b > ogy: some jedan'),
('2022-08-18 22:38:28', 'CMD: /b > Annoying_Bitch: HAHAHAHAHAAHAHAHAH'),
('2022-08-18 22:38:30', 'CMD: /b > Seksias_Night: HAHAHAHHAHAHAHA'),
('2022-08-18 22:38:31', 'CMD: /b > Seksias_Night: AHHAHAHA'),
('2022-08-18 22:38:53', 'CMD: /b > Seksias_Night: otisao AFK da gugla '),
('2022-08-18 22:38:55', 'CMD: /b > Seksias_Night: bec'),
('2022-08-18 22:38:59', 'CMD: /b > ogy: da vidi'),
('2022-08-18 22:39:00', 'CMD: /b > ogy: gde je'),
('2022-08-18 22:39:12', 'CMD: /b > Seksias_Night: da da'),
('2022-08-18 22:39:17', 'CMD: /b > Annoying_Bitch: Ovo sam skrinao'),
('2022-08-18 22:39:19', 'CMD: /b > Annoying_Bitch: iskrn'),
('2022-08-18 22:39:25', 'CMD: /b > Seksias_Night: ?'),
('2022-08-18 22:39:28', 'CMD: /b > Seksias_Night: sta to'),
('2022-08-18 22:39:32', 'CMD: /b > Seksias_Night: boli nas'),
('2022-08-18 22:39:34', 'CMD: /b > Annoying_Bitch: Tvoju mamu'),
('2022-08-18 22:39:36', 'CMD: /b > ogy: kurac'),
('2022-08-18 22:39:43', 'CMD: /b > Annoying_Bitch: Jel znaju ljudi da se ovo vraca'),
('2022-08-18 22:39:45', 'CMD: /b > Annoying_Bitch: or What'),
('2022-08-18 22:39:57', 'CMD: /b > ogy: od silnih bagova'),
('2022-08-18 22:40:00', 'CMD: /b > ogy: ne verujem da ce se vratiti'),
('2022-08-18 22:40:09', 'CMD: /b > Annoying_Bitch: pa popravi ih bageru'),
('2022-08-18 22:40:13', 'CMD: /b > ogy: PA JA IH PRAVIM'),
('2022-08-18 22:40:14', 'CMD: /b > ogy: SOME JEDAN'),
('2022-08-18 22:40:19', 'CMD: /b > Annoying_Bitch: KAD SI RETARD'),
('2022-08-18 22:40:27', 'CMD: /b > Seksias_Night: Oces ih moci sve fix ove bagove?'),
('2022-08-18 22:40:27', 'CMD: /b > Annoying_Bitch: UMJESTO DA IH PRAVIS PROBAJ IH RESIT'),
('2022-08-18 22:40:34', 'CMD: /b > ogy: zavisi'),
('2022-08-18 22:40:37', 'CMD: /b > ogy: koko platite da ih resim'),
('2022-08-18 22:40:44', 'CMD: /b > Seksias_Night: HAHAHHAHAHAHAHHAHAHA'),
('2022-08-18 22:40:45', 'CMD: /b > Annoying_Bitch: Platim ti kitu po glavi'),
('2022-08-18 22:40:48', 'CMD: /b > Annoying_Bitch: dovoljno'),
('2022-08-18 22:40:50', 'CMD: /b > ogy: BRAVO MAJMUNE'),
('2022-08-18 22:40:53', 'CMD: /b > Annoying_Bitch: da zadovoljim tvoje usluge\\'),
('2022-08-18 22:40:54', 'CMD: /b > ogy: AJ IZLAZI IZ KOLA SAD'),
('2022-08-18 22:40:57', 'CMD: /b > Annoying_Bitch: AAHHAHAHAHHAHAH'),
('2022-08-18 22:40:59', 'CMD: /b > ogy: MARS NAPOLJE'),
('2022-08-18 22:41:01', 'CMD: /b > Annoying_Bitch: necu'),
('2022-08-18 22:41:07', 'CMD: /b > Seksias_Night: Koji je najjgori bug sto ima '),
('2022-08-18 22:41:10', 'CMD: /b > Seksias_Night: trenutnoi'),
('2022-08-18 22:41:13', 'CMD: /b > ogy: JA'),
('2022-08-18 22:41:29', 'CMD: /a > Admin ogy: pucaj pucaj'),
('2022-08-18 22:41:29', 'CMD: /a > Admin Annoying_Bitch: ode jedan'),
('2022-08-18 22:41:31', 'CMD: /a > Admin ogy: puca mi kurac'),
('2022-08-18 22:41:40', 'CMD: /a > Admin ogy: xaxax'),
('2022-08-18 22:41:41', 'CMD: /a > Admin Annoying_Bitch: ode drugi'),
('2022-08-18 22:41:43', 'CMD: /a > Admin Annoying_Bitch: HAHAHAHHAHAHHA'),
('2022-08-18 22:41:44', 'CMD: /a > Admin ogy: a ovaj se gotoa'),
('2022-08-18 22:41:45', 'CMD: /a > Admin ogy: do mene'),
('2022-08-18 22:41:47', 'CMD: /a > Admin Annoying_Bitch: HAHAHHAHAHAH'),
('2022-08-18 22:41:51', 'CMD: /a > Admin Annoying_Bitch: hteo sam rpg'),
('2022-08-18 22:41:54', 'CMD: /a > Admin Annoying_Bitch: al jebga'),
('2022-08-18 22:42:01', 'CMD: /a > Admin Annoying_Bitch: cekam vas pickeee'),
('2022-08-18 22:42:01', 'CMD: /a > Admin ogy: odoh da vidim sta mozemo da testiramo'),
('2022-08-18 22:42:03', 'CMD: /a > Admin ogy: bez sprdnje sad'),
('2022-08-18 22:42:08', 'CMD: /a > Admin Annoying_Bitch: ajde'),
('2022-08-18 22:42:10', 'CMD: /a > Admin Seksias_Night: Ajj'),
('2022-08-18 22:43:14', 'CMD: /b > Seksias_Night: Burazz odo i ja '),
('2022-08-18 22:43:17', 'CMD: /b > Seksias_Night: pa se vidimo'),
('2022-08-18 22:43:17', 'CMD: /b > Annoying_Bitch: gdje ces'),
('2022-08-18 22:43:18', 'CMD: /a > Admin ogy: idemo da pravimo mape'),
('2022-08-18 22:43:21', 'CMD: /b > Annoying_Bitch: gdje ces'),
('2022-08-18 22:43:21', 'CMD: /a > Admin ogy: toe posao'),
('2022-08-18 22:43:25', 'CMD: /a > Admin Seksias_Night: Ajjjj '),
('2022-08-18 22:43:28', 'CMD: /a > Admin Annoying_Bitch: kako cu ja pravim mape sve ti'),
('2022-08-18 22:43:32', 'CMD: /a > Admin ogy: jel imate ip ?'),
('2022-08-18 22:43:34', 'CMD: /a > Admin Seksias_Night: HAHA'),
('2022-08-18 22:43:37', 'CMD: /a > Admin Annoying_Bitch: cega'),
('2022-08-18 22:43:37', 'CMD: /a > Admin ogy: ti ces da gledas'),
('2022-08-18 22:43:41', 'CMD: /a > Admin ogy: nego bog da ti pravis'),
('2022-08-18 22:43:43', 'CMD: /a > Admin Seksias_Night: e oGY '),
('2022-08-18 22:43:46', 'CMD: /a > Admin ogy: drz\'te'),
('2022-08-18 22:43:47', 'CMD: /a > Admin Annoying_Bitch: cega ip '),
('2022-08-18 22:43:49', 'CMD: /a > Admin Annoying_Bitch: retarde'),
('2022-08-18 22:44:03', 'CMD: /a > Admin ogy: 135.125.239.162:7779'),
('2022-08-18 22:44:06', 'CMD: /a > Admin ogy: sifra je txd'),
('2022-08-18 22:44:09', 'CMD: /a > Admin Seksias_Night: Ogy mi smo mogli kreirati kuce i stanove...'),
('2022-08-18 22:44:31', 'CMD: /a > Admin Annoying_Bitch: cuti bolan da gledam kako pravi mape'),
('2022-08-19 02:52:08', 'CMD: /a > Admin sneaky1337: Grove Street Family'),
('2022-08-19 03:04:01', 'CMD: /a > Admin sneaky1337: 482 481 492 518 567 566 468 471'),
('2022-08-19 03:05:25', 'CMD: /a > Admin sneaky1337: v'),
('2022-08-19 03:05:28', 'CMD: /a > Admin sneaky1337: 1)Soulja\n2)Thug\n3)Homeboy\n4)Gangsta\n5)O.G\nL)Top O.G'),
('2022-08-19 03:07:35', 'CMD: /b > ogy: 1)Police Cadet\r\n2)Police Officer\r\n3)Sergeant\r\n4)Lieutenant\r\n5)Commander\r\nL)Chief of Police'),
('2022-08-19 03:10:11', 'CMD: /b > ogy: 280,266,267,265,281,283'),
('2022-08-19 03:11:32', 'CMD: /b > ogy: a'),
('2022-08-19 03:19:24', 'CMD: /a > Admin sneaky1337: 1)Grunt\r\n2)Solider\r\n3)Senior Solider\r\n4)Warlord\r\n5)Right Hand\r\nL)Top O.G'),
('2022-08-19 03:21:03', 'CMD: /a > Admin sneaky1337: 1)Associates\n2)Soldiers\n3)Consigliere\n4)Underboss\n5)Boss\nL)Godfather'),
('2022-08-19 03:22:33', 'CMD: /a > Admin sneaky1337: 1)Shingiin\n2)Keikei\n3)Shategashira\n4)Saiko Komon\n5)Wakagashira\nL)Oyabun'),
('2022-08-19 03:25:03', 'CMD: /a > Admin sneaky1337: 1)Deputy Sheriff Generalist\n2)Deputy Sheriff\n3)Sergeant\n4)Lieutenant\n5)Undersheriff\nL)Sheriff'),
('2022-08-19 03:25:06', 'CMD: /a > Admin sneaky1337: 1)Deputy Sheriff Generalist\n2)Deputy Sheriff\n3)Sergeant\n4)Lieutenant\n5)Undersheriff\nL)Sheriff'),
('2022-08-19 03:25:07', 'CMD: /a > Admin sneaky1337: .'),
('2022-08-19 03:25:10', 'CMD: /b > sneaky1337: 1)Deputy Sheriff Generalist\n2)Deputy Sheriff\n3)Sergeant\n4)Lieutenant\n5)Undersheriff\nL)Sheriff'),
('2022-08-19 03:29:28', 'CMD: /a > Admin sneaky1337: 201 163 164 253 7 12'),
('2022-08-19 03:30:23', 'CMD: /a > Admin sneaky1337: 7 12'),
('2022-08-19 03:35:59', 'CMD: /a > Admin sneaky1337: 427 489 523 528 596 599'),
('2022-08-19 03:35:59', 'CMD: /a > Admin sneaky1337: 427 489 523 528 596 599'),
('2022-08-19 03:37:13', 'CMD: /a > Admin sneaky1337: 4 4'),
('2022-08-19 03:37:52', 'CMD: /a > Admin sneaky1337: si zavrsio da te move'),
('2022-08-19 03:37:56', 'CMD: /a > Admin ogy: nisam'),
('2022-08-19 03:37:58', 'CMD: /a > Admin ogy: samo sekund'),
('2022-08-19 03:38:03', 'CMD: /a > Admin sneaky1337: da kreiram u garazi vozila'),
('2022-08-19 03:38:04', 'CMD: /a > Admin sneaky1337: najbolje'),
('2022-08-19 03:38:07', 'CMD: /a > Admin ogy: mozes'),
('2022-08-19 03:38:14', 'CMD: /a > Admin sneaky1337: prebaci ti posle ove od napolje sto su'),
('2022-08-19 03:38:26', 'CMD: /a > Admin ogy: vazi'),
('2022-08-19 03:38:44', 'CMD: /a > Admin sneaky1337: 427 489 523 528 596 599'),
('2022-08-19 03:38:45', 'CMD: /a > Admin sneaky1337: 427 489 523 528 596 599'),
('2022-08-19 03:38:49', 'CMD: /a > Admin sneaky1337: 4 4'),
('2022-08-19 03:39:12', 'CMD: /a > Admin sneaky1337: ogi'),
('2022-08-19 03:40:08', 'CMD: /a > Admin sneaky1337: 427 489 523 528 596 599'),
('2022-08-19 03:42:07', 'CMD: /a > Admin sneaky1337: 596 599'),
('2022-08-19 03:46:34', 'CMD: /a > Admin sneaky1337: 466 468 471 474 481 492 567 482'),
('2022-08-19 03:46:37', 'CMD: /a > Admin sneaky1337: 128'),
('2022-08-19 03:50:58', 'CMD: /a > Admin ogy: muve'),
('2022-08-19 03:51:41', 'CMD: /a > Admin ogy: /goto 1'),
('2022-08-19 03:51:46', 'CMD: /b > ogy: move'),
('2022-08-19 03:51:46', 'CMD: /b > ogy: some'),
('2022-08-19 03:53:59', 'CMD: /b > ogy: a'),
('2022-08-19 04:33:35', 'CMD: /b > ogy: vf'),
('2022-08-19 04:33:38', 'CMD: /b > ogy: vf'),
('2022-08-19 04:34:13', 'CMD: /a > Admin sneaky1337: 575 492 482 474 471 468 404 481'),
('2022-08-19 04:34:32', 'CMD: /a > Admin sneaky1337: 126'),
('2022-08-19 04:36:12', 'CMD: /a > Admin sneaky1337: 575 492 482 474 471 468 404 481'),
('2022-08-19 04:36:13', 'CMD: /a > Admin sneaky1337: 575 492 482 474 471 468 404 481'),
('2022-08-19 04:36:13', 'CMD: /a > Admin sneaky1337: 575 492 482 474 471 468 404 481'),
('2022-08-19 04:36:13', 'CMD: /a > Admin sneaky1337: 575 492 482 474 471 468 404 481'),
('2022-08-19 04:37:12', 'CMD: /a > Admin sneaky1337: 575 492 482 474 471 468 404 481'),
('2022-08-19 04:45:03', 'CMD: /a > Admin ogy: 575 492 482 474 471 468 404 481'),
('2022-08-19 05:00:37', 'CMD: /a > Admin sneaky1337: 445 463 470 482 500 507 522 560'),
('2022-08-19 05:00:37', 'CMD: /a > Admin sneaky1337: 445 463 470 482 500 507 522 560'),
('2022-08-19 05:00:38', 'CMD: /a > Admin sneaky1337: 445 463 470 482 500 507 522 560'),
('2022-08-19 05:00:59', 'CMD: /a > Admin sneaky1337: 13'),
('2022-08-19 05:31:57', 'CMD: /b > ogy: a'),
('2022-08-19 05:36:11', 'CMD: /a > Admin sneaky1337: smrdo'),
('2022-08-19 05:36:16', 'CMD: /a > Admin ogy: goto'),
('2022-08-19 05:36:29', 'CMD: /a > Admin ogy: goto '),
('2022-08-19 05:36:57', 'CMD: /a > Admin sneaky1337: ovde sam trebo ja'),
('2022-08-19 05:36:59', 'CMD: /a > Admin sneaky1337: koj je ovaj'),
('2022-08-19 05:37:00', 'CMD: /a > Admin sneaky1337: smrdo'),
('2022-08-19 05:37:11', 'CMD: /a > Admin sneaky1337: top'),
('2022-08-19 05:37:12', 'CMD: /b > ogy: skin se updateuje'),
('2022-08-19 05:37:20', 'CMD: /a > Admin sneaky1337: pa ja bi te ljubio tebe'),
('2022-08-19 05:37:35', 'CMD: /a > Admin sneaky1337: kako kreiras actore ingame'),
('2022-08-19 05:37:37', 'CMD: /a > Admin sneaky1337: ?'),
('2022-08-19 05:37:43', 'CMD: /a > Admin ogy: ne mogu da se kreiraju ingame'),
('2022-08-19 05:37:54', 'CMD: /a > Admin sneaky1337: kreiraj u organizacijama'),
('2022-08-19 05:38:21', 'CMD: /a > Admin ogy: jel video vedrox ovo xd'),
('2022-08-19 05:38:24', 'CMD: /a > Admin sneaky1337: ne'),
('2022-08-19 05:38:28', 'CMD: /a > Admin ogy: najjaci je'),
('2022-08-19 05:38:28', 'CMD: /a > Admin sneaky1337: sutra cu mu pokazat'),
('2022-08-19 05:38:33', 'CMD: /a > Admin sneaky1337: otiso spavat'),
('2022-08-19 05:39:14', 'CMD: /a > Admin sneaky1337: idi vidi '),
('2022-08-19 05:39:18', 'CMD: /a > Admin sneaky1337: kako sam odradio org'),
('2022-08-19 05:39:56', 'CMD: /a > Admin ogy: dobra je yakuza'),
('2022-08-19 05:40:03', 'CMD: /a > Admin sneaky1337: si vido ballas'),
('2022-08-19 05:40:06', 'CMD: /a > Admin ogy: da'),
('2022-08-19 05:40:09', 'CMD: /a > Admin sneaky1337: kreiro sam i zone'),
('2022-08-19 05:40:15', 'CMD: /a > Admin ogy: kakve zone'),
('2022-08-19 05:40:25', 'CMD: /a > Admin ogy: najjaci si'),
('2022-08-19 05:40:29', 'CMD: /a > Admin ogy: ne znas ni kako se kreiraju'),
('2022-08-19 05:40:30', 'CMD: /a > Admin sneaky1337: nene ti si'),
('2022-08-19 05:40:40', 'CMD: /a > Admin ogy: ne mozes tako male da kreiras'),
('2022-08-19 05:40:54', 'CMD: /a > Admin sneaky1337: vidi tvog dilera'),
('2022-08-19 05:41:07', 'CMD: /a > Admin sneaky1337: promeni ovu u zutu'),
('2022-08-19 05:41:15', 'CMD: /a > Admin sneaky1337: i onu tamu sto si napravio onaj sistem'),
('2022-08-19 05:41:19', 'CMD: /a > Admin sneaky1337: promeni isto u zutu'),
('2022-08-19 05:42:19', 'CMD: /a > Admin ogy: otisao sam da spavam'),
('2022-08-19 05:42:23', 'CMD: /a > Admin ogy: sutra,tcn danas cu da nastavim'),
('2022-08-19 05:42:33', 'CMD: /a > Admin ogy: lkn'),
('2022-08-19 05:42:38', 'CMD: /a > Admin sneaky1337: aj lkn brt');

-- --------------------------------------------------------

--
-- Table structure for table `log-connect`
--

CREATE TABLE `log-connect` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log-connect`
--

INSERT INTO `log-connect` (`Time`, `Text`) VALUES
('2022-08-05 01:50:34', 'Igrac: Ogy_Smith | IP: 127.0.0.1'),
('2022-08-05 01:53:14', 'Igrac: Ogy_Smith | IP: 127.0.0.1'),
('2022-08-05 01:54:48', 'Igrac: ogy | IP: 127.0.0.1'),
('2022-08-05 02:01:20', 'Igrac: ogy | IP: 127.0.0.1'),
('2022-08-06 23:34:14', 'Igrac: ogy | IP: 127.0.0.1'),
('2022-08-06 23:42:04', 'Igrac: ogy | IP: 127.0.0.1'),
('2022-08-06 23:44:08', 'Igrac: ogy | IP: 127.0.0.1'),
('2022-08-06 23:48:55', 'Igrac: ogy | IP: 127.0.0.1'),
('2022-08-06 23:55:41', 'Igrac: ogy | IP: 127.0.0.1'),
('2022-08-07 00:02:51', 'Igrac: ogy | IP: 127.0.0.1'),
('2022-08-07 00:04:29', 'Igrac: ogy | IP: 127.0.0.1'),
('2022-08-09 23:23:16', 'Igrac: ogy | IP: 127.0.0.1'),
('2022-08-09 23:28:45', 'Igrac: ogy | IP: 127.0.0.1'),
('2022-08-12 01:03:21', 'Igrac: ogy | IP: 127.0.0.1'),
('2022-08-12 01:34:00', 'Igrac: ogy | IP: 127.0.0.1'),
('2022-08-12 01:56:44', 'Igrac: ogy | IP: 127.0.0.1'),
('2022-08-14 23:12:20', 'Igrac: ogy | IP: 127.0.0.1'),
('2022-08-14 23:20:12', 'Igrac: ogy | IP: 127.0.0.1'),
('2022-08-14 23:25:28', 'Igrac: ogy | IP: 127.0.0.1'),
('2022-08-14 23:28:18', 'Igrac: ogy | IP: 127.0.0.1'),
('2022-08-15 22:09:53', 'Igrac: ogy | IP: 127.0.0.1'),
('2022-08-15 22:19:20', 'Igrac: ogy | IP: 127.0.0.1'),
('2022-08-15 22:22:35', 'Igrac: ogy | IP: 127.0.0.1'),
('2022-08-15 23:55:35', 'Igrac: ogy | IP: 127.0.0.1'),
('2022-08-15 23:57:36', 'Igrac: ogy | IP: 127.0.0.1'),
('2022-08-16 00:07:29', 'Igrac: ogy | IP: 127.0.0.1'),
('2022-08-16 00:17:33', 'Igrac: ogy | IP: 127.0.0.1'),
('2022-08-16 00:20:21', 'Igrac: ogy | IP: 127.0.0.1'),
('2022-08-16 00:22:54', 'Igrac: ogy | IP: 127.0.0.1'),
('2022-08-16 00:32:11', 'Igrac: ogy | IP: 127.0.0.1'),
('2022-08-16 00:44:25', 'Igrac: ogy | IP: 127.0.0.1'),
('2022-08-16 01:10:19', 'Igrac: ogy | IP: 62.240.27.53'),
('2022-08-16 01:11:00', 'Igrac: Sneaky_Hollywood | IP: 89.246.96.74'),
('2022-08-16 01:16:40', 'Igrac: ogy | IP: 62.240.27.53'),
('2022-08-16 01:18:18', 'Igrac: sneaky1337 | IP: 89.246.96.74'),
('2022-08-16 01:18:38', 'Igrac: Don | IP: 109.121.86.3'),
('2022-08-16 01:19:20', 'Igrac: Don_Tatko | IP: 109.121.86.3'),
('2022-08-16 01:21:07', 'Igrac: Don_Tatko | IP: 109.121.86.3'),
('2022-08-16 01:27:17', 'Igrac: Don_Tatko | IP: 109.121.86.3'),
('2022-08-16 01:57:16', 'Igrac: ogy | IP: 62.240.27.53'),
('2022-08-16 01:57:20', 'Igrac: sneaky1337 | IP: 89.246.96.74'),
('2022-08-16 01:57:34', 'Igrac: Don_Tatko | IP: 109.121.86.3'),
('2022-08-16 02:03:55', 'Igrac: sneaky1337 | IP: 89.246.96.74'),
('2022-08-16 02:04:49', 'Igrac: ogy | IP: 62.240.27.53'),
('2022-08-16 02:19:45', 'Igrac: Don_Tatko | IP: 109.121.86.3'),
('2022-08-16 02:20:10', 'Igrac: Don_Tatko | IP: 109.121.86.3'),
('2022-08-16 02:20:55', 'Igrac: Don_Tatko | IP: 109.121.86.3'),
('2022-08-16 02:22:39', 'Igrac: Don_Tatko | IP: 109.121.86.3'),
('2022-08-16 21:33:24', 'Igrac: ogy | IP: 62.240.27.53'),
('2022-08-17 00:49:55', 'Igrac: ogy | IP: 62.240.27.53'),
('2022-08-17 00:49:57', 'Igrac: sneaky1337 | IP: 89.246.96.72'),
('2022-08-17 00:50:22', 'Igrac: Don_Tatko | IP: 109.121.86.3'),
('2022-08-17 00:51:37', 'Igrac: sneaky1337 | IP: 89.246.96.72'),
('2022-08-17 00:52:37', 'Igrac: Don_Tatko | IP: 109.121.86.3'),
('2022-08-17 00:53:41', 'Igrac: sneaky1337 | IP: 89.246.96.72'),
('2022-08-17 00:53:48', 'Igrac: ogy | IP: 62.240.27.53'),
('2022-08-17 00:54:00', 'Igrac: Don_Tatko | IP: 109.121.86.3'),
('2022-08-17 00:54:28', 'Igrac: Don_Tatko | IP: 109.121.86.3'),
('2022-08-17 00:55:13', 'Igrac: sneaky1337 | IP: 89.246.96.72'),
('2022-08-17 00:55:36', 'Igrac: sneaky1337 | IP: 89.246.96.72'),
('2022-08-17 00:57:21', 'Igrac: Ogisha_Matth | IP: 178.222.205.204'),
('2022-08-17 01:00:09', 'Igrac: Ogisha_Matth | IP: 178.222.205.204'),
('2022-08-17 01:03:36', 'Igrac: Ogisha_Matth | IP: 178.222.205.204'),
('2022-08-17 01:03:46', 'Igrac: sneaky1337 | IP: 89.246.96.72'),
('2022-08-17 01:03:47', 'Igrac: ogy | IP: 62.240.27.53'),
('2022-08-17 01:04:26', 'Igrac: Ogisha_Matth | IP: 178.222.205.204'),
('2022-08-17 01:08:45', 'Igrac: ogy | IP: 62.240.27.53'),
('2022-08-17 03:25:53', 'Igrac: ogy | IP: 127.0.0.1'),
('2022-08-17 18:09:45', 'Igrac: ogy | IP: 62.240.27.53'),
('2022-08-17 18:14:49', 'Igrac: sneaky1337 | IP: 89.246.96.88'),
('2022-08-17 18:17:09', 'Igrac: ogy | IP: 62.240.27.53'),
('2022-08-17 18:23:32', 'Igrac: sneaky1337 | IP: 89.246.96.88'),
('2022-08-17 18:29:47', 'Igrac: Ogisha_Matth | IP: 178.221.241.182'),
('2022-08-17 18:31:15', 'Igrac: Ogisha_Matth | IP: 178.221.241.182'),
('2022-08-17 18:36:12', 'Igrac: sneaky1337 | IP: 89.246.96.88'),
('2022-08-17 19:34:47', 'Igrac: Ogisha_Matth | IP: 178.221.241.182'),
('2022-08-17 19:38:55', 'Igrac: Ogisha_Matth | IP: 178.221.241.182'),
('2022-08-17 19:42:08', 'Igrac: Ogisha_Matth | IP: 178.221.241.182'),
('2022-08-17 19:42:34', 'Igrac: Ogisha_Matth | IP: 178.221.241.182'),
('2022-08-17 19:43:47', 'Igrac: Ogisha_Matth | IP: 178.221.241.182'),
('2022-08-17 19:46:11', 'Igrac: sneaky1337 | IP: 89.246.96.88'),
('2022-08-17 19:48:15', 'Igrac: Seksias_Night | IP: 109.175.99.129'),
('2022-08-17 19:50:33', 'Igrac: ogy | IP: 62.240.27.53'),
('2022-08-17 19:51:39', 'Igrac: Ogisha_Matth | IP: 178.221.241.182'),
('2022-08-17 19:52:41', 'Igrac: Ogisha_Matth | IP: 178.221.241.182'),
('2022-08-17 19:55:51', 'Igrac: sneaky1337 | IP: 89.246.96.88'),
('2022-08-17 19:58:15', 'Igrac: Ogisha_Matth | IP: 178.221.241.182'),
('2022-08-17 20:01:21', 'Igrac: Ogisha_Matth | IP: 178.221.241.182'),
('2022-08-17 21:56:11', 'Igrac: ogy | IP: 62.240.27.53'),
('2022-08-17 21:58:04', 'Igrac: ogy | IP: 62.240.27.53'),
('2022-08-17 21:59:51', 'Igrac: ogy | IP: 62.240.27.53'),
('2022-08-17 23:31:23', 'Igrac: ogy | IP: 62.240.27.53'),
('2022-08-17 23:31:24', 'Igrac: Ogisha_Matth | IP: 178.221.241.182'),
('2022-08-18 00:01:00', 'Igrac: ogy | IP: 62.240.27.53'),
('2022-08-18 01:46:49', 'Igrac: Baba_Test | IP: 89.246.96.88'),
('2022-08-18 01:48:13', 'Igrac: sneaky1337 | IP: 89.246.96.88'),
('2022-08-18 01:48:26', 'Igrac: Samp_Roleplay | IP: 94.250.60.40'),
('2022-08-18 01:48:36', 'Igrac: sneaky1337 | IP: 89.246.96.88'),
('2022-08-18 02:05:16', 'Igrac: ogy | IP: 127.0.0.1'),
('2022-08-18 02:30:40', 'Igrac: ogy | IP: 62.240.27.53'),
('2022-08-18 02:33:18', 'Igrac: sneaky1337 | IP: 89.246.96.88'),
('2022-08-18 02:33:52', 'Igrac: ogy | IP: 62.240.27.53'),
('2022-08-18 02:37:44', 'Igrac: Samp_Roleplay | IP: 94.250.60.40'),
('2022-08-18 02:42:55', 'Igrac: sneaky1337 | IP: 89.246.96.88'),
('2022-08-18 03:26:18', 'Igrac: sneaky1337 | IP: 89.246.96.88'),
('2022-08-18 03:26:20', 'Igrac: ogy | IP: 62.240.27.53'),
('2022-08-18 03:29:18', 'Igrac: sneaky1337 | IP: 89.246.96.88'),
('2022-08-18 04:25:44', 'Igrac: ogy | IP: 62.240.27.53'),
('2022-08-18 05:36:54', 'Igrac: ogy | IP: 62.240.27.53'),
('2022-08-18 18:31:38', 'Igrac: ogy | IP: 62.240.27.53'),
('2022-08-18 18:50:32', 'Igrac: ogy | IP: 62.240.27.53'),
('2022-08-18 19:38:26', 'Igrac: ogy | IP: 62.240.27.53'),
('2022-08-18 19:40:26', 'Igrac: sneaky1337 | IP: 89.246.96.88'),
('2022-08-18 19:47:57', 'Igrac: Seksias_Night | IP: 109.175.97.166'),
('2022-08-18 19:53:55', 'Igrac: Seksias_Night | IP: 109.175.97.166'),
('2022-08-18 19:57:50', 'Igrac: sneaky1337 | IP: 89.246.96.88'),
('2022-08-18 19:58:00', 'Igrac: ogy | IP: 62.240.27.53'),
('2022-08-18 20:03:03', 'Igrac: sneaky1337 | IP: 89.246.96.88'),
('2022-08-18 20:03:15', 'Igrac: ogy | IP: 62.240.27.53'),
('2022-08-18 20:03:26', 'Igrac: sneaky1337 | IP: 89.246.96.88'),
('2022-08-18 20:41:20', 'Igrac: Seksias_Night | IP: 109.175.96.192'),
('2022-08-18 20:43:01', 'Igrac: ogy | IP: 62.240.27.53'),
('2022-08-18 20:43:36', 'Igrac: Seksias_Night | IP: 109.175.96.192'),
('2022-08-18 21:04:02', 'Igrac: Monster_Smitth | IP: 109.175.100.167'),
('2022-08-18 21:06:32', 'Igrac: Smajli_Jebemtikevu | IP: 109.175.100.167'),
('2022-08-18 21:11:01', 'Igrac: Annoying_Bitch | IP: 109.175.100.167'),
('2022-08-18 21:19:04', 'Igrac: Seksias_Night | IP: 109.175.96.192'),
('2022-08-18 22:14:24', 'Igrac: sneaky1337 | IP: 89.246.96.88'),
('2022-08-18 22:14:28', 'Igrac: Seksias_Night | IP: 109.175.96.192'),
('2022-08-18 22:14:30', 'Igrac: ogy | IP: 62.240.27.53'),
('2022-08-18 22:15:19', 'Igrac: Seksias_Night | IP: 109.175.96.192'),
('2022-08-18 22:15:22', 'Igrac: Annoying_Bitch | IP: 109.175.100.167'),
('2022-08-18 22:22:41', 'Igrac: ogy | IP: 62.240.27.53'),
('2022-08-18 22:24:36', 'Igrac: Seksias_Night | IP: 109.175.96.192'),
('2022-08-19 01:13:13', 'Igrac: ogy | IP: 127.0.0.1'),
('2022-08-19 01:15:01', 'Igrac: ogy | IP: 127.0.0.1'),
('2022-08-19 01:16:35', 'Igrac: ogy | IP: 127.0.0.1'),
('2022-08-19 01:17:46', 'Igrac: ogy | IP: 127.0.0.1'),
('2022-08-19 01:31:18', 'Igrac: ogy | IP: 127.0.0.1'),
('2022-08-19 01:42:53', 'Igrac: ogy | IP: 127.0.0.1'),
('2022-08-19 01:50:23', 'Igrac: sneaky1337 | IP: 89.246.96.88'),
('2022-08-19 01:51:02', 'Igrac: Samp_Roleplay | IP: 94.250.60.40'),
('2022-08-19 02:00:22', 'Igrac: sneaky1337 | IP: 89.246.96.88'),
('2022-08-19 02:00:32', 'Igrac: ogy | IP: 62.240.27.53'),
('2022-08-19 02:08:23', 'Igrac: ogy | IP: 62.240.27.53'),
('2022-08-19 02:11:23', 'Igrac: sneaky1337 | IP: 89.246.96.88'),
('2022-08-19 02:11:31', 'Igrac: ogy | IP: 62.240.27.53'),
('2022-08-19 02:22:11', 'Igrac: sneaky1337 | IP: 89.246.96.88'),
('2022-08-19 02:22:13', 'Igrac: ogy | IP: 62.240.27.53'),
('2022-08-19 02:24:52', 'Igrac: sneaky1337 | IP: 89.246.96.88'),
('2022-08-19 02:24:59', 'Igrac: ogy | IP: 62.240.27.53'),
('2022-08-19 02:31:59', 'Igrac: sneaky1337 | IP: 89.246.96.88'),
('2022-08-19 02:35:32', 'Igrac: sneaky1337 | IP: 89.246.96.66'),
('2022-08-19 02:41:25', 'Igrac: sneaky1337 | IP: 89.246.96.66'),
('2022-08-19 02:41:35', 'Igrac: ogy | IP: 62.240.27.53'),
('2022-08-19 02:47:08', 'Igrac: ogy | IP: 62.240.27.53'),
('2022-08-19 02:48:12', 'Igrac: sneaky1337 | IP: 89.246.96.66'),
('2022-08-19 03:13:29', 'Igrac: ogy | IP: 62.240.27.53'),
('2022-08-19 03:58:50', 'Igrac: ogy | IP: 62.240.27.53'),
('2022-08-19 03:58:51', 'Igrac: sneaky1337 | IP: 89.246.96.66'),
('2022-08-19 04:12:17', 'Igrac: sneaky1337 | IP: 89.246.96.66'),
('2022-08-19 04:15:12', 'Igrac: sneaky1337 | IP: 89.246.96.66'),
('2022-08-19 04:22:57', 'Igrac: sneaky1337 | IP: 89.246.96.66'),
('2022-08-19 04:23:05', 'Igrac: ogy | IP: 62.240.27.53'),
('2022-08-19 04:35:17', 'Igrac: ogy | IP: 62.240.27.53'),
('2022-08-19 04:48:20', 'Igrac: sneaky1337 | IP: 89.246.96.66'),
('2022-08-19 04:48:30', 'Igrac: ogy | IP: 62.240.27.53'),
('2022-08-19 04:50:16', 'Igrac: sneaky1337 | IP: 89.246.96.66'),
('2022-08-19 04:52:24', 'Igrac: sneaky1337 | IP: 89.246.96.66'),
('2022-08-19 04:54:02', 'Igrac: sneaky1337 | IP: 89.246.96.66'),
('2022-08-19 05:25:18', 'Igrac: ogy | IP: 127.0.0.1'),
('2022-08-19 05:27:30', 'Igrac: ogy | IP: 127.0.0.1'),
('2022-08-19 05:30:29', 'Igrac: ogy | IP: 127.0.0.1'),
('2022-08-19 05:33:19', 'Igrac: ogy | IP: 127.0.0.1'),
('2022-08-19 05:35:47', 'Igrac: sneaky1337 | IP: 89.246.96.66'),
('2022-08-19 05:36:01', 'Igrac: ogy | IP: 62.240.27.53');

-- --------------------------------------------------------

--
-- Table structure for table `log-delete`
--

CREATE TABLE `log-delete` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-deleteacc`
--

CREATE TABLE `log-deleteacc` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-edit`
--

CREATE TABLE `log-edit` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-fakture`
--

CREATE TABLE `log-fakture` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-gift`
--

CREATE TABLE `log-gift` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-give`
--

CREATE TABLE `log-give` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log-give`
--

INSERT INTO `log-give` (`Time`, `Text`) VALUES
('2022-08-18 03:14:54', 'Admin sneaky1337 je dao $10000000 igracu sneaky1337.'),
('2022-08-18 21:21:37', 'Admin sneaky1337 je dao $10000 igracu Annoying_Bitch.'),
('2022-08-18 22:16:35', 'Admin ogy je dao $231321 igracu ogy.'),
('2022-08-18 22:16:39', 'Admin ogy je dao $2313213 igracu ogy.');

-- --------------------------------------------------------

--
-- Table structure for table `log-kick`
--

CREATE TABLE `log-kick` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-komande`
--

CREATE TABLE `log-komande` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-kredit`
--

CREATE TABLE `log-kredit` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-kupovina`
--

CREATE TABLE `log-kupovina` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log-kupovina`
--

INSERT INTO `log-kupovina` (`Time`, `Text`) VALUES
('2022-08-18 21:50:42', 'Igrac Annoying_Bitch je kupio vozilo Burrito u salonu');

-- --------------------------------------------------------

--
-- Table structure for table `log-make`
--

CREATE TABLE `log-make` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log-make`
--

INSERT INTO `log-make` (`Time`, `Text`) VALUES
('2022-08-05 01:51:28', 'Admin ogy | Igrac: ogy | Level Admin: 7'),
('2022-08-16 01:11:57', 'Admin ogy | Igrac: Sneaky_Hollywood | Level Admin: 7'),
('2022-08-16 01:21:47', 'Admin ogy | Igrac: Don_Tatko | Level Admin: 7'),
('2022-08-17 01:00:36', 'Admin ogy | Igrac: Ogisha_Matth | Level Admin: 7'),
('2022-08-18 20:53:14', 'Admin sneaky1337 | Igrac: Seksias_Night | Level Admin: 6'),
('2022-08-18 21:16:31', 'Admin sneaky1337 | Igrac: Annoying_Bitch | Level Admin: 1'),
('2022-08-18 21:17:00', 'Admin sneaky1337 | Igrac: Annoying_Bitch | Level Admin: 5'),
('2022-08-19 02:33:36', 'Admin sneaky1337 | Igrac: sneaky1337 | Organizacija: Los Santos Police Department'),
('2022-08-19 02:34:47', 'Admin sneaky1337 | Igrac: sneaky1337 | Skidanje lidera'),
('2022-08-19 03:08:52', 'Admin ogy | Igrac: ogy | Organizacija: Los Santos Police Department'),
('2022-08-19 03:10:16', 'Admin sneaky1337 | Igrac: sneaky1337 | Organizacija: Grove Street Family'),
('2022-08-19 03:11:01', 'Admin ogy | Igrac: ogy | Skidanje lidera'),
('2022-08-19 03:11:02', 'Admin ogy | Igrac: ogy | Organizacija: Los Santos Police Department'),
('2022-08-19 03:11:03', 'Admin ogy | Igrac: ogy | Skidanje lidera'),
('2022-08-19 03:12:32', 'Admin sneaky1337 | Igrac: sneaky1337 | Skidanje lidera'),
('2022-08-19 03:14:37', 'Admin sneaky1337 | Igrac: sneaky1337 | Organizacija: Federal Bureau of Investigation'),
('2022-08-19 03:14:44', 'Admin sneaky1337 | Igrac: sneaky1337 | Skidanje lidera'),
('2022-08-19 03:18:00', 'Admin sneaky1337 | Igrac: sneaky1337 | Organizacija: Ballas Family'),
('2022-08-19 03:18:03', 'Admin sneaky1337 | Igrac: sneaky1337 | Skidanje lidera'),
('2022-08-19 03:18:42', 'Admin ogy | Igrac: ogy | Organizacija: Yakuza'),
('2022-08-19 03:19:11', 'Admin ogy | Igrac: ogy | Skidanje lidera'),
('2022-08-19 04:16:21', 'Admin sneaky1337 | Igrac: sneaky1337 | Organizacija: Grove Street Family'),
('2022-08-19 04:31:43', 'Admin sneaky1337 | Igrac: sneaky1337 | Skidanje lidera'),
('2022-08-19 04:31:49', 'Admin sneaky1337 | Igrac: sneaky1337 | Organizacija: Ballas Family'),
('2022-08-19 04:57:52', 'Admin sneaky1337 | Igrac: sneaky1337 | Skidanje lidera'),
('2022-08-19 04:57:54', 'Admin sneaky1337 | Igrac: sneaky1337 | Organizacija: Yakuza'),
('2022-08-19 05:39:18', 'Admin ogy | Igrac: sneaky1337 | Skidanje lidera');

-- --------------------------------------------------------

--
-- Table structure for table `log-neaktivnost`
--

CREATE TABLE `log-neaktivnost` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-password`
--

CREATE TABLE `log-password` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-pay`
--

CREATE TABLE `log-pay` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-pm`
--

CREATE TABLE `log-pm` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-poeni`
--

CREATE TABLE `log-poeni` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-punishment`
--

CREATE TABLE `log-punishment` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log-punishment`
--

INSERT INTO `log-punishment` (`Time`, `Text`) VALUES
('2022-08-18 22:36:19', 'Admin Seksias_Night je mute igraca Annoying_Bitch | Razlog: 1');

-- --------------------------------------------------------

--
-- Table structure for table `log-rcon`
--

CREATE TABLE `log-rcon` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-rob`
--

CREATE TABLE `log-rob` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-sell`
--

CREATE TABLE `log-sell` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log-sell`
--

INSERT INTO `log-sell` (`Time`, `Text`) VALUES
('2022-08-18 03:15:45', 'Igrac sneaky1337 je prodao imovinu ID 4 na buy'),
('2022-08-18 03:16:42', 'Igrac sneaky1337 je prodao imovinu ID 3 na buy'),
('2022-08-18 03:17:58', 'Igrac sneaky1337 je prodao imovinu ID 2 na buy'),
('2022-08-18 03:18:56', 'Igrac sneaky1337 je prodao imovinu ID 1 na buy'),
('2022-08-18 03:20:31', 'Igrac sneaky1337 je prodao imovinu ID 0 na buy'),
('2022-08-18 22:08:33', 'Igrac sneaky1337 je prodao imovinu ID 2 na buy'),
('2022-08-18 22:11:30', 'Igrac sneaky1337 je prodao imovinu ID 1 na buy'),
('2022-08-18 22:13:34', 'Igrac sneaky1337 je prodao imovinu ID 0 na buy');

-- --------------------------------------------------------

--
-- Table structure for table `log-setstat`
--

CREATE TABLE `log-setstat` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log-setstat`
--

INSERT INTO `log-setstat` (`Time`, `Text`) VALUES
('2022-08-12 02:07:27', 'Admin ogy je postavio level 420 igracu ogy.'),
('2022-08-18 03:14:30', 'Admin sneaky1337 je postavio level 1337 igracu sneaky1337.'),
('2022-08-19 02:36:50', 'Admin sneaky1337 postavio je muski pol igracu sneaky1337.'),
('2022-08-19 02:36:52', 'Admin sneaky1337 je postavila zenski pol igracu sneaky1337.'),
('2022-08-19 02:37:06', 'Admin sneaky1337 postavio je muski pol igracu sneaky1337.');

-- --------------------------------------------------------

--
-- Table structure for table `log-smjenjivanja`
--

CREATE TABLE `log-smjenjivanja` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-sretniid`
--

CREATE TABLE `log-sretniid` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-tajna`
--

CREATE TABLE `log-tajna` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-transfer`
--

CREATE TABLE `log-transfer` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-unban`
--

CREATE TABLE `log-unban` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-unjail`
--

CREATE TABLE `log-unjail` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-vratistats`
--

CREATE TABLE `log-vratistats` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log-vratistats`
--

INSERT INTO `log-vratistats` (`Time`, `Text`) VALUES
('2022-08-18 21:49:24', 'Admin Annoying_Bitch je vratio o stats level 5 i $3000000 igracu Annoying_Bitch.'),
('2022-08-18 21:49:25', 'Admin Annoying_Bitch je vratio o stats level 5 i $3000000 igracu Annoying_Bitch.'),
('2022-08-18 21:49:30', 'Admin Annoying_Bitch je vratio o stats level 5 i $3000000 igracu Annoying_Bitch.');

-- --------------------------------------------------------

--
-- Table structure for table `log-warn`
--

CREATE TABLE `log-warn` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-xbon-kodovi`
--

CREATE TABLE `log-xbon-kodovi` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log-zamena`
--

CREATE TABLE `log-zamena` (
  `Time` datetime NOT NULL,
  `Text` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(1, 1469.03, -1724.45, 13.547, 0, 0, 2),
(2, 524.944, -1412.41, 15.961, 0, 0, 3),
(3, 520.536, -1408.24, 15.961, 0, 0, 1),
(4, 524.414, -1405.61, 15.953, 0, 0, 4),
(5, 1433.01, -1034.17, 23.656, 0, 0, 4),
(6, 1434.29, -1043.31, 23.832, 0, 0, 1),
(7, 1416.65, -1715.67, 13.552, 0, 0, 2);

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
(1, 'Los Santos Police Department', 'LSPD', NULL, 1, 0, 40, 280, 266, 267, 265, 281, 283, 1, 2, 3, 4, 5, 6, 'Police Cadet', 'Police Officer', 'Sergeant', 'Lieutenant', 'Commander', 'Chief of Police', 1551.87, -1651.83, 14.495, -1491.1, 325.334, 118.287, 0, 1, -1512.6, 336.877, 54.691, 0, 0, 0, 0, 500, 0, -1519.7, 339.475, 54.691, 0, 2, -1523.72, 310.896, 54.641, 0, 2, -1, -1493.18, 314.223, 54.641, 0, 0, 0, 1514.81, -1659.26, 13.539, 286.035, 0, 0),
(2, 'Federal Bureau of Investigation', 'FBI', NULL, 1, 0, 40, 282, 288, 311, 283, 310, 310, 1, 2, 3, 4, 5, 6, 'Deputy FBI Generalist', 'Deputy FBI ', 'Sergeant', 'Lieutenant', 'O.G Leader', 'Leader', 2729.35, -2451.5, 17.594, 390.77, 173.822, 1008.38, 3, 2, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 2699.94, -2395.52, 13.633, 251.933, 0, 0),
(3, 'Grove Street Family', 'GSF', NULL, 2, 0, 50, 105, 106, 107, 269, 271, 270, 1, 2, 3, 4, 5, 6, 'Soulja', 'Thug', 'Homeboy', 'Gangsta', 'O.G Leader', 'Leader', 2495.42, -1690.96, 14.766, 291.552, -141.117, 1161.28, 6, 3, 0, 0, 0, 2464.36, -1665.29, 13.472, 62.047, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 290.508, -154.966, 1164.74, 0, 0, 0, 2449.72, -1653.34, 13.359, 233.952, 0, 0),
(4, 'Ballas Family', 'Ball', NULL, 2, 0, 40, 103, 104, 102, 98, 124, 296, 1, 2, 3, 4, 5, 6, 'Grunt', 'Solider', 'Senior Solider', 'Warlord', 'O.G Leader', 'Leader', 2140.93, -1801.77, 16.147, 291.552, -141.117, 1161.28, 6, 4, 285.258, -149.524, 1164.74, 2153.51, -1803.08, 13.565, 295.855, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 290.354, -154.934, 1164.74, 0, 0, 0, 2177.74, -1749.14, 13.375, 202.015, 0, 0),
(5, 'Yakuza', 'Yaku', NULL, 3, 0, 50, 203, 204, 117, 136, 184, 186, 1, 2, 3, 4, 5, 6, 'Shingiin', 'Keikei', 'Shategashira', 'Saiko Komon', 'O.G Leader', 'Leader', 1218.4, -2386.57, 12.816, 1934.02, 280.123, 1371.42, 6, 5, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1961.47, 276.035, 1374.95, 0, 0, 0, 1212.87, -2439.93, 9.733, 309.024, 0, 0),
(6, 'La Cosa Nostra', 'LCN', NULL, 3, 0, 40, 292, 185, 223, 249, 250, 294, 1, 2, 3, 4, 5, 6, 'Associates', 'Soldiers', 'Consigliere', 'UnderBoss', 'O.G Leader', 'Leader', -11.855, -2501.26, 36.655, 1934.02, 280.123, 1371.42, 6, 6, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1961.47, 276, 1374.95, 0, 0, 0, -54.33, -2512.3, 35.738, 258.713, 0, 0);

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
(1, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1771.46, -994.155, 36.932, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland Intersection', 0, 0, 0),
(2, -1, -1, 0, 0, 'Drzava', 0, 2, 0, 1775.69, -1001.19, 36.87, 1281.03, -36.4, 1000.92, 350000, 3, 0, 0, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland Intersection', 0, 0, 0),
(3, -1, -1, 0, 0, 'Drzava', 0, 3, 0, 1783.59, -1002.9, 36.795, -407.353, -2086.5, 1501.1, 300000, 5, 0, 0, 7, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland Intersection', 0, 0, 0),
(4, 2, -1, 1, 0, 'sneaky1337', 0, 1, 1, 1789.35, -998.143, 36.742, -2169.97, -2135.96, 1501.1, 500000, 5, 0, 1, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland Intersection', 0, 0, 0),
(5, -1, -1, 0, 0, 'Drzava', 0, 1, 0, 1793.94, -1002.78, 36.682, 2180.95, -567.4, 1502.01, 750000, 5, 0, 2, 12, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mulholland Intersection', 0, 0, 0),
(6, 1, -1, 1, 0, 'ogy', 0, 1, 1, 2732.57, 728.014, 10.928, -1036.53, -2205.94, 1501.09, 1000000, 5, 0, 3, 7, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rockshore East', 0, 0, 0);

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
(1, 1799.14, -994.546, 36.811, 1802.26, -996.959, 36.776, 233.718),
(2, 385.986, -1481.92, 31.782, 399.127, -1472.14, 31.172, 315.454);

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
(1, 'ogy', 0, '255.255.255.255', 'D75CA686E1CD8E9D11E56EF1FB6DB6717DD52680D66D2A62860011A408469CE5', 1, 1, 19, 420, 15, 13, 1252229, 314141, 0, 0, 10, 0, 7, 0, 0, 0, 0, 0, 0, 1, 828, 0, 23, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 6, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1659657034, 0, 0, 0, 0, 0, 1, 0, 0, 3, 'dsa@gmail.com', 8, '2', '2', '2', 0, 'Niko', 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 1, 0, 0, 0, 'Niko', 0, 0, 85, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4, 0, 0, 0, 0, '2022-08-19 05:42:34', '2022-08-05 01:51:16'),
(2, 'sneaky1337', 0, '255.255.255.255', 'CA24B90798AEE55ED038D65A5AF38EDD7BAD88908A85CCCB73FAD2931164DD27', 1, 1, 23, 1337, 7, 7, 7026367, 424343, 19, 0, 7, 0, 7, 2020, 0, 0, 0, 0, 0, 0, 649, 0, 2, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 4, -1, -1, 0, 0, 1, 727654, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1660605060, 0, 0, 0, 0, 0, 1, 0, 0, 6, 'ff@gmail.com', 0, '2', '2', '2', 0, 'Niko', 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 19042, 0, 0, 0, 1, 0, 0, 0, 'Niko', 0, 0, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, '2022-08-19 05:43:34', '2022-08-16 01:11:51'),
(3, 'Don_Tatko', 0, '255.255.255.255', '2BA8DCA44C91F790DFAEF9EC54F5D71EF7F81269CE8B1AB2DA3ABCC1E5CBF2D7', 1, 1, 21, 1, 1, 1, 47500, 47987, 10, 0, 0, 0, 7, 1, 0, 0, 0, 0, 0, 0, 65, 0, 120, 1, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1660605560, 0, 0, 0, 0, 0, 1, 0, 0, 3, 'gagagwq@gmail.com', 0, '2', '2', '2', 0, 'Niko', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 'Niko', 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-08-17 01:00:23', '2022-08-16 01:20:30'),
(4, 'Ogisha_Matth', 0, '255.255.255.255', '1861712058B61FE677B5367E2F832EEB36C317FD376D88DACF45E4F6E7F34A07', 1, 1, 31, 1, 0, 0, 50000, 0, 0, 0, 51, 0, 7, 413, 0, 0, 0, 0, 0, 0, 52, 0, 21, 1, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1660690641, 0, 0, 0, 0, 0, 1, 0, 0, 3, 'dexterwalton132@gmail.com', 0, '2', '2', '2', 0, 'Niko', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 'Niko', 0, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-08-17 23:31:59', '2022-08-17 00:58:15'),
(5, 'Seksias_Night', 0, '255.255.255.255', '6CDC2CB74F1B2EA72D65E7E203484A82E6A5B03A0ADDF59CCD1EF3CDB4154A15', 1, 1, 25, 0, 1, 1, 0, 8400, 0, 0, 28, 0, 6, 7, 0, 0, 0, 0, 0, 0, 108, 0, 281, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1660848216, 0, 0, 0, 0, 0, 1, 0, 0, 5, 'seksias@gmail.com', 0, '2', '2', '2', 0, 'Niko', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 'Niko', 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-08-18 22:44:48', '2022-08-18 20:47:17'),
(6, 'Annoying_Bitch', 0, '255.255.255.255', '8E3F13AC35C2ECBE889C5F81FDE26D682386700C52DFEB04D0D99A961300B401', 1, 1, 22, 15, 1, 1, 8893398, 8735, 0, 0, 22, 0, 5, 147, 0, 0, 0, 0, 0, 0, 78, 0, 137, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 242722, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 6, 'farecare619@gmail.com', 0, '2', '2', '2', 0, 'Niko', 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 2, 0, 0, 0, 'Niko', 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-08-18 22:45:10', '2022-08-18 21:12:03');

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
(2, 2, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 3, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 4, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 5, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 6, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0);

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
(2, 6, 250000, 0, 527.437, -1288.69, 17.049, 359.679, 0, 0, 1, 0, 0, 0, 482, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 0, 0, 0, 1548.8, -1623.19, 13.347, 305.359, 0, 0, 2, 1, 4, 4, 596, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 0, 0, 0, 1563.73, -1616.27, 13.347, 283.466, 0, 0, 2, 1, 4, 4, 596, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 0, 0, 0, 1555.13, -1624.06, 13.347, 122.493, 0, 0, 2, 1, 4, 4, 596, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 0, 0, 0, 1549.61, -1611.75, 13.347, 267.519, 0, 0, 2, 1, 164, 164, 596, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 0, 0, 0, 1554.82, -1617.42, 13.347, 296.301, 0, 0, 2, 1, 4, 4, 427, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 0, 0, 0, 1559.12, -1610.86, 13.347, 324.897, 0, 0, 2, 1, 4, 4, 427, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 0, 0, 0, 1291.72, 2820.59, 66.648, 333.735, 0, 0, 2, 1, 4, 4, 596, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 0, 0, 0, 1293.7, 2822.41, 66.648, 246.821, 0, 0, 2, 1, 4, 4, 596, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 0, 0, 0, 1538.76, -1625.99, 13.383, 275.102, 0, 0, 2, 1, 4, 4, 427, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20, 0, 0, 0, 1560.58, -1627.21, 13.347, 282.565, 0, 0, 2, 1, 4, 4, 523, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(21, 0, 0, 0, 1562.42, -1625.51, 13.347, 270.301, 0, 0, 2, 1, 4, 4, 523, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(22, 0, 0, 0, 1566.26, -1626.1, 13.347, 180.301, 0, 0, 2, 1, 4, 4, 523, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(23, 0, 0, 0, 1563.99, -1628.15, 13.347, 279.555, 0, 0, 2, 1, 4, 4, 523, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(24, 0, 0, 0, 1564.78, -1626.21, 13.347, 232.902, 0, 0, 2, 1, 4, 4, 523, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25, 0, 0, 0, 1564.74, -1621.76, 13.347, 340.006, 0, 0, 2, 1, 4, 4, 528, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(26, 0, 0, 0, 1568.74, -1623.3, 13.347, 195.09, 0, 0, 2, 1, 4, 4, 528, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27, 0, 0, 0, 1571.75, -1614.7, 13.347, 357.042, 0, 0, 2, 1, 4, 4, 528, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(28, 0, 0, 0, 1566.04, -1610.52, 13.347, 26.471, 0, 0, 2, 1, 4, 4, 596, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(29, 0, 0, 0, 1555.2, -1605.7, 13.347, 111.318, 0, 0, 2, 1, 4, 4, 599, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30, 0, 0, 0, 1555.02, -1599.19, 13.547, 161.702, 0, 0, 2, 1, 4, 4, 599, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(31, 0, 0, 0, 1559.93, -1599.76, 13.547, 127.611, 0, 0, 2, 1, 4, 4, 599, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
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
(92, 0, 950000, 0, 1243.78, -2380.64, 20.175, 160.887, 0, 0, 2, 5, 13, 1, 487, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

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
(1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, '');

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
-- Indexes for table `hm_hits`
--
ALTER TABLE `hm_hits`
  ADD PRIMARY KEY (`Target`);

--
-- Indexes for table `hm_players`
--
ALTER TABLE `hm_players`
  ADD PRIMARY KEY (`ID`);

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
  MODIFY `atmSQLID` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `banned`
--
ALTER TABLE `banned`
  MODIFY `ban_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bussines`
--
ALTER TABLE `bussines`
  MODIFY `bussines_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `containers`
--
ALTER TABLE `containers`
  MODIFY `koSQLID` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gangzones`
--
ALTER TABLE `gangzones`
  MODIFY `gzone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gates`
--
ALTER TABLE `gates`
  MODIFY `gateid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gps`
--
ALTER TABLE `gps`
  MODIFY `gpsSQLID` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hm_players`
--
ALTER TABLE `hm_players`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `job_skills`
--
ALTER TABLE `job_skills`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `metros`
--
ALTER TABLE `metros`
  MODIFY `metro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `org_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `org_members`
--
ALTER TABLE `org_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `propertys`
--
ALTER TABLE `propertys`
  MODIFY `iSQLID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `punishments`
--
ALTER TABLE `punishments`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rents`
--
ALTER TABLE `rents`
  MODIFY `vrSQLID` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` mediumint(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_clothes`
--
ALTER TABLE `user_clothes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `veh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

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
