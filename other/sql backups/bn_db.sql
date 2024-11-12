-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2022 at 01:05 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bn_db`
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
(6, 1),
(7, 2),
(8, 1),
(9, 2),
(10, 1),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 1),
(20, 1),
(21, 2),
(22, 2),
(23, 2),
(24, 1),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 2),
(37, 2),
(38, 1),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2);

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
  `atmPreseceneZice` tinyint(1) NOT NULL DEFAULT 0,
  `atmProbijenBios` tinyint(1) NOT NULL DEFAULT 0,
  `atmVremeDoRoba` tinyint(1) NOT NULL DEFAULT 0,
  `atmExists` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `atms`
--

INSERT INTO `atms` (`atmSQLID`, `atmPos1`, `atmPos2`, `atmPos3`, `atmPos4`, `atmPos5`, `atmPos6`, `atmPreseceneZice`, `atmProbijenBios`, `atmVremeDoRoba`, `atmExists`) VALUES
(1, 548.165, -1503.65, 14.077, 0, 0, -92.1, 0, 0, 60, 1);

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
  `b_owner_sqlID` int(11) DEFAULT -1,
  `bOnAuction` tinyint(1) NOT NULL DEFAULT 0,
  `bOwner` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Drzava',
  `b_price` int(11) NOT NULL,
  `b_type` smallint(3) NOT NULL,
  `b_locked` tinyint(4) DEFAULT 0,
  `b_money` int(11) DEFAULT 0,
  `b_enter_x` float NOT NULL,
  `b_enter_y` float NOT NULL,
  `b_enter_z` float NOT NULL,
  `b_exit_x` float DEFAULT 0,
  `b_exit_y` float DEFAULT 0,
  `b_exit_z` float DEFAULT 0,
  `b_enter_int` int(11) DEFAULT 0,
  `b_enter_vw` int(11) DEFAULT 0,
  `b_exit_int` int(11) DEFAULT 0,
  `b_exit_vw` int(11) DEFAULT 0,
  `b_name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `b_level` int(11) NOT NULL,
  `b_jobID` smallint(2) DEFAULT 0,
  `b_neaktivnost` int(11) DEFAULT 0,
  `b_facture` int(11) DEFAULT 100
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bussines`
--

INSERT INTO `bussines` (`bussines_id`, `b_owner_sqlID`, `bOnAuction`, `bOwner`, `b_price`, `b_type`, `b_locked`, `b_money`, `b_enter_x`, `b_enter_y`, `b_enter_z`, `b_exit_x`, `b_exit_y`, `b_exit_z`, `b_enter_int`, `b_enter_vw`, `b_exit_int`, `b_exit_vw`, `b_name`, `b_level`, `b_jobID`, `b_neaktivnost`, `b_facture`) VALUES
(1, -1, 0, 'Drzava', 550000, 16, 0, 0, 554.972, -1504.84, 14.543, 563.182, -1506.13, 14.583, 0, 0, 0, 0, 'Electronic Shop', 5, 0, 0, 100);

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
  `is_special` tinyint(1) NOT NULL DEFAULT 0,
  `max_x` float NOT NULL DEFAULT 0,
  `max_y` float NOT NULL DEFAULT 0,
  `min_x` float NOT NULL DEFAULT 0,
  `min_y` float NOT NULL DEFAULT 0,
  `color` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pickup_pos_x` float DEFAULT NULL,
  `pickup_pos_y` float DEFAULT NULL,
  `pickup_pos_z` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `skill_mehanicar` tinyint(3) DEFAULT 1,
  `skill_pmunicije` tinyint(3) NOT NULL DEFAULT 1,
  `skill_pilot` tinyint(3) DEFAULT 1,
  `skill_rudar` tinyint(3) DEFAULT 1,
  `skill_pnovca` tinyint(3) DEFAULT 1,
  `skill_uber` tinyint(3) DEFAULT 1,
  `skill_pnamjestaja` tinyint(3) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_skills`
--

INSERT INTO `job_skills` (`id`, `user_id`, `skill_mehanicar`, `skill_pmunicije`, `skill_pilot`, `skill_rudar`, `skill_pnovca`, `skill_uber`, `skill_pnamjestaja`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1);

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
('2022-08-05 01:55:01', 'CMD: /b > ogy:  /cc');

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
('2022-08-16 00:44:25', 'Igrac: ogy | IP: 127.0.0.1');

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
('2022-08-05 01:51:28', 'Admin ogy | Igrac: ogy | Level Admin: 7');

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
('2022-08-12 02:07:27', 'Admin ogy je postavio level 420 igracu ogy.');

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
  `metro_int` tinyint(3) NOT NULL DEFAULT 0,
  `metro_vw` tinyint(3) NOT NULL DEFAULT 0,
  `metro_zona` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `metros`
--

INSERT INTO `metros` (`metro_id`, `metro_posx`, `metro_posy`, `metro_posz`, `metro_int`, `metro_vw`, `metro_zona`) VALUES
(1, 1469.03, -1724.45, 13.547, 0, 0, 2);

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
  `suspended` tinyint(4) DEFAULT 0,
  `max_members` smallint(2) DEFAULT 30,
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
  `interior` int(11) DEFAULT 0,
  `virtualw` int(11) DEFAULT 0,
  `spawn_point_x` float DEFAULT 0,
  `spawn_point_y` float DEFAULT 0,
  `spawn_point_z` float DEFAULT 0,
  `oDilerX` float NOT NULL DEFAULT 0,
  `oDilerY` float NOT NULL DEFAULT 0,
  `oDilerZ` float NOT NULL DEFAULT 0,
  `oDilerA` float NOT NULL DEFAULT 0,
  `oDilerCena` smallint(6) NOT NULL DEFAULT 500,
  `oDilerRadi` tinyint(1) NOT NULL DEFAULT 0,
  `duty_point_pos_x` float DEFAULT 0,
  `duty_point_pos_y` float DEFAULT 0,
  `duty_point_pos_z` float DEFAULT 0,
  `duty_point_int` smallint(6) DEFAULT 0,
  `duty_point_vw` smallint(6) DEFAULT 0,
  `equip_point_pos_x` float DEFAULT 0,
  `equip_point_pos_y` float DEFAULT 0,
  `equip_point_pos_z` float DEFAULT 0,
  `equip_point_int` smallint(6) DEFAULT 0,
  `equip_point_vw` smallint(6) DEFAULT 0,
  `savez` smallint(6) DEFAULT -1,
  `safe_pos_x` float DEFAULT 0,
  `safe_pos_y` float DEFAULT 0,
  `safe_pos_z` float DEFAULT 0,
  `safe_money` int(11) DEFAULT 0,
  `safe_drug_amount` smallint(6) DEFAULT 0,
  `safe_mats` int(11) NOT NULL DEFAULT 0,
  `oPortX` float NOT NULL DEFAULT 0,
  `oPortY` float NOT NULL DEFAULT 0,
  `oPortZ` float NOT NULL DEFAULT 3,
  `oPortA` float NOT NULL DEFAULT 0,
  `ent_bussines` smallint(6) DEFAULT 0,
  `owned_business` smallint(6) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `org_members`
--

CREATE TABLE `org_members` (
  `id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `memb_rank` smallint(1) NOT NULL,
  `memb_type` smallint(1) NOT NULL DEFAULT 0,
  `memb_sqlID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `propertys`
--

CREATE TABLE `propertys` (
  `iSQLID` mediumint(9) NOT NULL,
  `iOwnerSQLID` mediumint(9) NOT NULL DEFAULT -1,
  `iGarageSqlID` mediumint(9) NOT NULL DEFAULT -1,
  `iOwned` tinyint(4) NOT NULL DEFAULT 0,
  `iOnAuction` tinyint(1) NOT NULL DEFAULT 0,
  `iOwner` varchar(25) NOT NULL DEFAULT 'Drzava',
  `iMoney` int(11) NOT NULL DEFAULT 0,
  `iUsage` tinyint(4) NOT NULL,
  `iNeaktivnost` smallint(3) NOT NULL DEFAULT 0,
  `iEnter1` float NOT NULL,
  `iEnter2` float NOT NULL,
  `iEnter3` float NOT NULL,
  `iExit1` float NOT NULL,
  `iExit2` float NOT NULL,
  `iExit3` float NOT NULL,
  `iPrice` int(11) NOT NULL,
  `iLevel` smallint(6) NOT NULL,
  `iLocked` tinyint(4) NOT NULL DEFAULT 1,
  `iVrsta` tinyint(4) NOT NULL,
  `iInterior` int(11) NOT NULL,
  `iVW` int(11) NOT NULL,
  `iOruzje1` tinyint(4) NOT NULL DEFAULT 0,
  `iOruzje2` tinyint(4) NOT NULL DEFAULT 0,
  `iOruzje3` tinyint(4) NOT NULL DEFAULT 0,
  `iOruzje4` tinyint(4) NOT NULL DEFAULT 0,
  `iMunicija1` smallint(6) NOT NULL DEFAULT 0,
  `iMunicija2` smallint(6) NOT NULL DEFAULT 0,
  `iMunicija3` smallint(6) NOT NULL DEFAULT 0,
  `iMunicija4` smallint(6) NOT NULL DEFAULT 0,
  `iDrugAmmount` smallint(6) NOT NULL DEFAULT 0,
  `iMats` mediumint(9) NOT NULL DEFAULT 0,
  `iAlarm` tinyint(1) NOT NULL DEFAULT 0,
  `iDoorLevel` tinyint(4) NOT NULL DEFAULT 0,
  `iLockLevel` tinyint(1) NOT NULL DEFAULT 0,
  `iTime` smallint(6) NOT NULL DEFAULT 0,
  `iAdress` varchar(50) NOT NULL DEFAULT '',
  `iRentable` tinyint(1) NOT NULL DEFAULT 0,
  `iRentPrice` smallint(6) NOT NULL DEFAULT 0,
  `iRentovano` smallint(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `tiki`
--

CREATE TABLE `tiki` (
  `tID` smallint(6) NOT NULL,
  `tPosX` float NOT NULL,
  `tPosY` float NOT NULL,
  `tPosZ` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` mediumint(7) NOT NULL,
  `p_name` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `isonline` tinyint(1) DEFAULT 0,
  `user_ip` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `registered` tinyint(1) DEFAULT 0,
  `sex` tinyint(1) NOT NULL,
  `age` tinyint(2) NOT NULL,
  `level` smallint(5) DEFAULT 1,
  `exp` smallint(6) DEFAULT 0,
  `xOnlineSati` smallint(6) DEFAULT 0,
  `money` int(11) DEFAULT 0,
  `xBRacun` int(11) DEFAULT 0,
  `xZlato` mediumint(9) DEFAULT 0,
  `xPlatiRacun` mediumint(9) DEFAULT 0,
  `payday` tinyint(2) DEFAULT 0,
  `upgrades` tinyint(3) DEFAULT 0,
  `admin_lvl` tinyint(1) DEFAULT 0,
  `admin_code` int(4) DEFAULT 0,
  `xSpecAdmin` tinyint(1) DEFAULT 0,
  `helper_level` tinyint(1) DEFAULT 0,
  `vip_level` tinyint(1) DEFAULT 0,
  `promoter_level` tinyint(1) NOT NULL DEFAULT 0,
  `xYouTuber` tinyint(1) NOT NULL DEFAULT 0,
  `spec_rank` tinyint(2) DEFAULT 0,
  `staff_min` smallint(6) DEFAULT 0,
  `vip_time` float DEFAULT 0,
  `skin_id` smallint(5) DEFAULT 0,
  `spawn` tinyint(1) DEFAULT 0,
  `lider` tinyint(2) NOT NULL DEFAULT 0,
  `clan` tinyint(2) NOT NULL DEFAULT 0,
  `rank` tinyint(2) NOT NULL DEFAULT 0,
  `materials` mediumint(9) DEFAULT 0,
  `job_id` tinyint(2) DEFAULT 0,
  `fight_style` tinyint(1) DEFAULT 0,
  `spawn_hp` float DEFAULT 0,
  `vehicle_license` tinyint(1) DEFAULT 0,
  `boat_license` tinyint(1) DEFAULT 0,
  `air_license` tinyint(1) DEFAULT 0,
  `gun_license` tinyint(1) DEFAULT 0,
  `toolkit` tinyint(1) DEFAULT 0,
  `property_id_1` smallint(4) DEFAULT -1,
  `property_id_2` smallint(4) DEFAULT -1,
  `property_id_3` smallint(4) DEFAULT -1,
  `bussines_id` smallint(4) DEFAULT 0,
  `garage_id` smallint(4) DEFAULT 0,
  `xTelefon` tinyint(1) NOT NULL DEFAULT 0,
  `phone_number` mediumint(9) DEFAULT 0,
  `phone_credit` mediumint(9) DEFAULT 0,
  `strenght` smallint(3) DEFAULT 0,
  `jail_type` tinyint(1) DEFAULT 0,
  `jail_time` smallint(4) DEFAULT 0,
  `wanted_level` tinyint(2) DEFAULT 0,
  `arrested` smallint(6) DEFAULT 0,
  `xPDUhapsio` mediumint(9) NOT NULL DEFAULT 0,
  `xPDStatsTicket` mediumint(9) NOT NULL DEFAULT 0,
  `xPDStatsTicketMoney` mediumint(9) NOT NULL DEFAULT 0,
  `xTakenWeps` mediumint(9) NOT NULL DEFAULT 0,
  `xTakenDrugs` mediumint(9) NOT NULL DEFAULT 0,
  `credit_rest` mediumint(9) DEFAULT 0,
  `credit_amount` mediumint(9) DEFAULT 0,
  `credit_installment` smallint(5) DEFAULT 0,
  `warn` tinyint(1) DEFAULT 0,
  `mute` int(11) DEFAULT 0,
  `mask_id` mediumint(9) DEFAULT 0,
  `rp_learn` tinyint(1) DEFAULT 0,
  `marker_p1` float DEFAULT 0,
  `marker_p2` float DEFAULT 0,
  `marker_p3` float DEFAULT 0,
  `gps_level` tinyint(1) DEFAULT 1,
  `org_contract` smallint(5) DEFAULT 0,
  `hitman_price` mediumint(9) DEFAULT 0,
  `country` tinyint(2) DEFAULT 0,
  `email` varchar(128) CHARACTER SET utf8 NOT NULL,
  `org_punishment` tinyint(3) DEFAULT 0,
  `offpjail` varchar(64) CHARACTER SET utf8 DEFAULT '2',
  `offpprison` varchar(64) CHARACTER SET utf8 DEFAULT '2',
  `offpmute` varchar(64) CHARACTER SET utf8 DEFAULT '2',
  `married` tinyint(1) DEFAULT 0,
  `married_to` varchar(64) CHARACTER SET utf8 DEFAULT 'Niko',
  `xBingoNumber` smallint(3) DEFAULT 0,
  `xBingoMoney` mediumint(9) DEFAULT 0,
  `xDiamond` mediumint(9) NOT NULL DEFAULT 0,
  `vehicle_slots` smallint(4) DEFAULT 1,
  `rob_time` tinyint(3) DEFAULT 0,
  `leave_jail` tinyint(1) DEFAULT 0,
  `hangar_time` tinyint(3) DEFAULT 0,
  `event_first_place` smallint(5) DEFAULT 0,
  `event_second_place` smallint(5) DEFAULT 0,
  `event_third_place` smallint(5) DEFAULT 0,
  `dm_event_kills` mediumint(9) DEFAULT 0,
  `cstdm_score` mediumint(9) DEFAULT 0,
  `rent_id` smallint(4) DEFAULT -1,
  `reserve_keys` int(11) DEFAULT -1,
  `watch` smallint(5) DEFAULT 0,
  `dbo` tinyint(1) DEFAULT 0,
  `dbo_color` tinyint(2) DEFAULT 0,
  `xUPoen` smallint(3) DEFAULT 0,
  `xPaysPotvrda` mediumint(11) NOT NULL DEFAULT 0,
  `xTiki` tinyint(3) NOT NULL DEFAULT 0,
  `reaction_poen` smallint(3) DEFAULT 0,
  `taking_time` tinyint(3) DEFAULT 0,
  `gift` smallint(6) DEFAULT 0,
  `xPaketic` tinyint(1) DEFAULT 0,
  `gate_key` varchar(64) CHARACTER SET utf8 DEFAULT 'Niko',
  `mats_smugl` tinyint(1) DEFAULT 0,
  `robp_time` tinyint(3) DEFAULT 0,
  `xAGMStats` smallint(8) NOT NULL DEFAULT 0,
  `xBoombox` tinyint(1) NOT NULL DEFAULT 0,
  `xTorba_Pizza` smallint(6) NOT NULL DEFAULT 0,
  `xTorba_Sok` smallint(6) NOT NULL DEFAULT 0,
  `xTorba_Pivo` smallint(6) NOT NULL DEFAULT 0,
  `xTorba_Hambi` smallint(6) NOT NULL DEFAULT 0,
  `xTorba_Riba` smallint(6) NOT NULL DEFAULT 0,
  `xTorba_Laptop` tinyint(1) NOT NULL DEFAULT 0,
  `xTorba_Droga` mediumint(9) NOT NULL DEFAULT 0,
  `xTorba_Kantica` mediumint(9) NOT NULL DEFAULT 0,
  `xTorba_Oruzje_1` smallint(3) NOT NULL DEFAULT 0,
  `xTorba_Oruzje_2` smallint(3) NOT NULL DEFAULT 0,
  `xTorba_Oruzje_3` smallint(3) NOT NULL DEFAULT 0,
  `xTorba_OruzjeM_1` smallint(6) NOT NULL DEFAULT 0,
  `xTorba_OruzjeM_2` smallint(6) NOT NULL DEFAULT 0,
  `xTorba_OruzjeM_3` smallint(6) NOT NULL DEFAULT 0,
  `xTDColor` tinyint(2) NOT NULL DEFAULT 0,
  `xFirework` tinyint(2) DEFAULT 0,
  `xAktivnaIgra` tinyint(2) NOT NULL DEFAULT 0,
  `xBonPotvrda` int(11) NOT NULL DEFAULT 0,
  `xVIPWarn` tinyint(1) NOT NULL DEFAULT 0,
  `xOglasWarn` tinyint(1) NOT NULL DEFAULT 0,
  `xTogLabel` tinyint(1) NOT NULL DEFAULT 0,
  `last_login` varchar(64) CHARACTER SET utf8 DEFAULT '2',
  `reg_date` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `p_name`, `isonline`, `user_ip`, `password`, `registered`, `sex`, `age`, `level`, `exp`, `xOnlineSati`, `money`, `xBRacun`, `xZlato`, `xPlatiRacun`, `payday`, `upgrades`, `admin_lvl`, `admin_code`, `xSpecAdmin`, `helper_level`, `vip_level`, `promoter_level`, `xYouTuber`, `spec_rank`, `staff_min`, `vip_time`, `skin_id`, `spawn`, `lider`, `clan`, `rank`, `materials`, `job_id`, `fight_style`, `spawn_hp`, `vehicle_license`, `boat_license`, `air_license`, `gun_license`, `toolkit`, `property_id_1`, `property_id_2`, `property_id_3`, `bussines_id`, `garage_id`, `xTelefon`, `phone_number`, `phone_credit`, `strenght`, `jail_type`, `jail_time`, `wanted_level`, `arrested`, `xPDUhapsio`, `xPDStatsTicket`, `xPDStatsTicketMoney`, `xTakenWeps`, `xTakenDrugs`, `credit_rest`, `credit_amount`, `credit_installment`, `warn`, `mute`, `mask_id`, `rp_learn`, `marker_p1`, `marker_p2`, `marker_p3`, `gps_level`, `org_contract`, `hitman_price`, `country`, `email`, `org_punishment`, `offpjail`, `offpprison`, `offpmute`, `married`, `married_to`, `xBingoNumber`, `xBingoMoney`, `xDiamond`, `vehicle_slots`, `rob_time`, `leave_jail`, `hangar_time`, `event_first_place`, `event_second_place`, `event_third_place`, `dm_event_kills`, `cstdm_score`, `rent_id`, `reserve_keys`, `watch`, `dbo`, `dbo_color`, `xUPoen`, `xPaysPotvrda`, `xTiki`, `reaction_poen`, `taking_time`, `gift`, `xPaketic`, `gate_key`, `mats_smugl`, `robp_time`, `xAGMStats`, `xBoombox`, `xTorba_Pizza`, `xTorba_Sok`, `xTorba_Pivo`, `xTorba_Hambi`, `xTorba_Riba`, `xTorba_Laptop`, `xTorba_Droga`, `xTorba_Kantica`, `xTorba_Oruzje_1`, `xTorba_Oruzje_2`, `xTorba_Oruzje_3`, `xTorba_OruzjeM_1`, `xTorba_OruzjeM_2`, `xTorba_OruzjeM_3`, `xTDColor`, `xFirework`, `xAktivnaIgra`, `xBonPotvrda`, `xVIPWarn`, `xOglasWarn`, `xTogLabel`, `last_login`, `reg_date`) VALUES
(1, 'ogy', 0, '255.255.255.255', 'D75CA686E1CD8E9D11E56EF1FB6DB6717DD52680D66D2A62860011A408469CE5', 1, 1, 19, 420, 5, 3, 16915, 46236, 0, 0, 51, 0, 7, 0, 0, 0, 0, 0, 0, 0, 231, 0, 23, 1, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1659657034, 0, 0, 0, 0, 0, 1, 0, 0, 3, 'dsa@gmail.com', 0, '2', '2', '2', 0, 'Niko', 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Niko', 0, 0, 30, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '2022-08-16 00:55:15', '2022-08-05 01:51:16');

-- --------------------------------------------------------

--
-- Table structure for table `user_clothes`
--

CREATE TABLE `user_clothes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cloth_slot_1` int(11) DEFAULT -1,
  `cloth_slot_1_p1` float DEFAULT 0,
  `cloth_slot_1_p2` float DEFAULT 0,
  `cloth_slot_1_p3` float DEFAULT 0,
  `cloth_slot_1_p4` float DEFAULT 0,
  `cloth_slot_1_p5` float DEFAULT 0,
  `cloth_slot_1_p6` float DEFAULT 0,
  `cloth_slot_1_p7` float DEFAULT 0,
  `cloth_slot_1_p8` float DEFAULT 0,
  `cloth_slot_1_p9` float DEFAULT 0,
  `cloth_slot_2` int(11) DEFAULT -1,
  `cloth_slot_2_p1` float DEFAULT 0,
  `cloth_slot_2_p2` float DEFAULT 0,
  `cloth_slot_2_p3` float DEFAULT 0,
  `cloth_slot_2_p4` float DEFAULT 0,
  `cloth_slot_2_p5` float DEFAULT 0,
  `cloth_slot_2_p6` float DEFAULT 0,
  `cloth_slot_2_p7` float DEFAULT 0,
  `cloth_slot_2_p8` float DEFAULT 0,
  `cloth_slot_2_p9` float DEFAULT 0,
  `cloth_slot_3` int(11) DEFAULT -1,
  `cloth_slot_3_p1` float DEFAULT 0,
  `cloth_slot_3_p2` float DEFAULT 0,
  `cloth_slot_3_p3` float DEFAULT 0,
  `cloth_slot_3_p4` float DEFAULT 0,
  `cloth_slot_3_p5` float DEFAULT 0,
  `cloth_slot_3_p6` float DEFAULT 0,
  `cloth_slot_3_p7` float DEFAULT 0,
  `cloth_slot_3_p8` float DEFAULT 0,
  `cloth_slot_3_p9` float DEFAULT 0,
  `cloth_slot_4` int(11) DEFAULT -1,
  `cloth_slot_4_p1` float DEFAULT 0,
  `cloth_slot_4_p2` float DEFAULT 0,
  `cloth_slot_4_p3` float DEFAULT 0,
  `cloth_slot_4_p4` float DEFAULT 0,
  `cloth_slot_4_p5` float DEFAULT 0,
  `cloth_slot_4_p6` float DEFAULT 0,
  `cloth_slot_4_p7` float DEFAULT NULL,
  `cloth_slot_4_p8` float DEFAULT 0,
  `cloth_slot_4_p9` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_clothes`
--

INSERT INTO `user_clothes` (`id`, `user_id`, `cloth_slot_1`, `cloth_slot_1_p1`, `cloth_slot_1_p2`, `cloth_slot_1_p3`, `cloth_slot_1_p4`, `cloth_slot_1_p5`, `cloth_slot_1_p6`, `cloth_slot_1_p7`, `cloth_slot_1_p8`, `cloth_slot_1_p9`, `cloth_slot_2`, `cloth_slot_2_p1`, `cloth_slot_2_p2`, `cloth_slot_2_p3`, `cloth_slot_2_p4`, `cloth_slot_2_p5`, `cloth_slot_2_p6`, `cloth_slot_2_p7`, `cloth_slot_2_p8`, `cloth_slot_2_p9`, `cloth_slot_3`, `cloth_slot_3_p1`, `cloth_slot_3_p2`, `cloth_slot_3_p3`, `cloth_slot_3_p4`, `cloth_slot_3_p5`, `cloth_slot_3_p6`, `cloth_slot_3_p7`, `cloth_slot_3_p8`, `cloth_slot_3_p9`, `cloth_slot_4`, `cloth_slot_4_p1`, `cloth_slot_4_p2`, `cloth_slot_4_p3`, `cloth_slot_4_p4`, `cloth_slot_4_p5`, `cloth_slot_4_p6`, `cloth_slot_4_p7`, `cloth_slot_4_p8`, `cloth_slot_4_p9`) VALUES
(1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `veh_id` int(11) NOT NULL,
  `owner_sqlID` int(11) DEFAULT 0,
  `v_price` int(11) NOT NULL,
  `v_locked` tinyint(1) DEFAULT 0,
  `v_pos_x` float NOT NULL,
  `v_pos_y` float NOT NULL,
  `v_pos_z` float NOT NULL,
  `v_pos_a` float NOT NULL,
  `v_virtualw` int(11) NOT NULL,
  `v_interior` int(11) NOT NULL,
  `v_usage` smallint(2) NOT NULL,
  `v_organization` smallint(2) DEFAULT 0,
  `v_color_1` int(11) NOT NULL,
  `v_color_2` int(11) NOT NULL,
  `v_model` int(11) NOT NULL,
  `v_teh` smallint(2) DEFAULT 0,
  `v_reg` smallint(2) DEFAULT 0,
  `v_reg_vreme` smallint(3) DEFAULT 0,
  `v_tablice` varchar(24) COLLATE utf8_unicode_ci DEFAULT 'NEMA',
  `v_insurance` smallint(2) DEFAULT 0,
  `v_lock` smallint(2) DEFAULT 0,
  `v_alarm` smallint(2) DEFAULT 0,
  `v_neon` int(11) DEFAULT 0,
  `v_tuned` tinyint(1) DEFAULT 0,
  `v_imobilizator` int(11) DEFAULT 0,
  `v_spoiler` int(11) DEFAULT 0,
  `v_hood` int(11) DEFAULT 0,
  `v_roof` int(11) DEFAULT 0,
  `v_skirt` int(11) DEFAULT 0,
  `v_lamps` int(11) DEFAULT 0,
  `v_nitro` int(11) DEFAULT 0,
  `v_exhaust` int(11) DEFAULT 0,
  `v_wheels` int(11) DEFAULT 0,
  `v_stereo` int(11) DEFAULT 0,
  `v_hydraulics` int(11) DEFAULT 0,
  `v_front_bumper` int(11) DEFAULT 0,
  `v_rear_bumper` int(11) DEFAULT 0,
  `v_vents` int(11) DEFAULT 0,
  `v_paintjob` int(11) DEFAULT 255,
  `v_drug_ammount` int(11) DEFAULT 0,
  `v_mats` int(11) DEFAULT 0,
  `v_weapon_melee` int(11) DEFAULT 0,
  `v_weapon_slot_1` int(11) DEFAULT 0,
  `v_weapon_ammo_1` int(11) DEFAULT 0,
  `v_weapon_slot_2` int(11) DEFAULT 0,
  `v_weapon_ammo_2` int(11) DEFAULT 0,
  `v_neaktivnost` int(11) DEFAULT 0,
  `v_kilometri` int(11) DEFAULT 0,
  `v_metri` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xmas_presents`
--

CREATE TABLE `xmas_presents` (
  `presSQLID` smallint(6) NOT NULL,
  `presTaken` tinyint(1) NOT NULL DEFAULT 0,
  `presPlaced` tinyint(1) NOT NULL DEFAULT 1,
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
  `ctPlaced` tinyint(1) NOT NULL DEFAULT 1,
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
  `RegistrovanihKorisnika` mediumint(9) NOT NULL DEFAULT 0,
  `BanovanihKorisnika` mediumint(9) NOT NULL DEFAULT 0,
  `KikovanihKorisnika` mediumint(9) NOT NULL DEFAULT 0,
  `BrojWarnova` mediumint(9) NOT NULL DEFAULT 0,
  `BrojPosetaServeru` mediumint(9) NOT NULL DEFAULT 0,
  `HappyHours` tinyint(1) NOT NULL DEFAULT 0,
  `HappyHoursLvl` tinyint(2) NOT NULL DEFAULT 0,
  `HappyJobs` tinyint(1) NOT NULL DEFAULT 0,
  `PocetniLevel` tinyint(1) NOT NULL DEFAULT 1,
  `PocetniNovaca` mediumint(9) NOT NULL DEFAULT 35000,
  `BankaNovac` mediumint(7) NOT NULL DEFAULT 0,
  `KupovinaVozila` tinyint(4) NOT NULL DEFAULT 1,
  `Report` tinyint(1) NOT NULL DEFAULT 1,
  `Pitanja` tinyint(1) NOT NULL DEFAULT 1,
  `RekordServera` smallint(5) NOT NULL DEFAULT 0,
  `Oglasi` tinyint(1) NOT NULL DEFAULT 1,
  `Registracija` tinyint(1) NOT NULL DEFAULT 1,
  `ReactTime` mediumint(9) NOT NULL DEFAULT 7500,
  `ReactName` varchar(25) NOT NULL DEFAULT 'No-one'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_stats`
--

INSERT INTO `_stats` (`ssSQLID`, `RegistrovanihKorisnika`, `BanovanihKorisnika`, `KikovanihKorisnika`, `BrojWarnova`, `BrojPosetaServeru`, `HappyHours`, `HappyHoursLvl`, `HappyJobs`, `PocetniLevel`, `PocetniNovaca`, `BankaNovac`, `KupovinaVozila`, `Report`, `Pitanja`, `RekordServera`, `Oglasi`, `Registracija`, `ReactTime`, `ReactName`) VALUES
(1, 3, 0, 0, 0, 201, 2, 10, 3, 1, 50000, 50000, 1, 1, 1, 2, 1, 1, 7500, 'No-one');

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
-- Indexes for table `tiki`
--
ALTER TABLE `tiki`
  ADD PRIMARY KEY (`tID`);

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
  MODIFY `atmSQLID` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banned`
--
ALTER TABLE `banned`
  MODIFY `ban_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bussines`
--
ALTER TABLE `bussines`
  MODIFY `bussines_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `containers`
--
ALTER TABLE `containers`
  MODIFY `koSQLID` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gangzones`
--
ALTER TABLE `gangzones`
  MODIFY `gzone_id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `metros`
--
ALTER TABLE `metros`
  MODIFY `metro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `org_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `org_members`
--
ALTER TABLE `org_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `propertys`
--
ALTER TABLE `propertys`
  MODIFY `iSQLID` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `punishments`
--
ALTER TABLE `punishments`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rents`
--
ALTER TABLE `rents`
  MODIFY `vrSQLID` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tiki`
--
ALTER TABLE `tiki`
  MODIFY `tID` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` mediumint(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_clothes`
--
ALTER TABLE `user_clothes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `veh_id` int(11) NOT NULL AUTO_INCREMENT;

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
