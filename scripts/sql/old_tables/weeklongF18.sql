-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 27, 2019 at 04:58 PM
-- Server version: 10.1.38-MariaDB-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cuhvmiwg_hvz`
--

-- --------------------------------------------------------

--
-- Table structure for table `weeklongF18`
--

CREATE TABLE `weeklongF18` (
  `user_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'human',
  `user_hex` varchar(5) NOT NULL,
  `kill_count` varchar(5) NOT NULL DEFAULT '0',
  `starve_date` timestamp NULL DEFAULT NULL,
  `points` int(5) DEFAULT '0',
  `waiver` tinyint(1) DEFAULT NULL,
  `bandanna` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weeklongF18`
--

INSERT INTO `weeklongF18` (`user_id`, `username`, `status`, `user_hex`, `kill_count`, `starve_date`, `points`, `waiver`, `bandanna`) VALUES
(69, 'Savvycappy', 'human', '5674b', '0', NULL, 0, NULL, NULL),
(67, 'claudiasellis', 'human', '967a5', '0', NULL, 0, 1, 1),
(113, 'magickayla', 'human', 'ffb6b', '0', NULL, 0, 1, 1),
(70, 'Zakdebaggis', 'human', 'f8ed0', '0', NULL, 0, NULL, NULL),
(71, 'Parone', 'human', '25e69', '0', NULL, 0, 1, 1),
(72, 'Xina5000', 'human', '7ae7a', '0', NULL, 0, 1, 1),
(75, 'sydchan', 'human', 'efee6', '0', NULL, 0, 1, 1),
(73, 'Krysten', 'human', 'f75b1', '0', NULL, 0, 1, 1),
(74, 'Rdubs', 'human', 'cf90d', '0', NULL, 0, 1, 1),
(80, 'aliden', 'human', '1bfd1', '0', NULL, 0, 1, 1),
(81, 'char7887', 'human', 'fd71f', '0', NULL, 0, NULL, NULL),
(83, 'janderson', 'zombie', '4e887', '1', '2018-09-29 22:55:00', 10, NULL, NULL),
(85, 'kriss', 'human', '84400', '0', NULL, 0, NULL, NULL),
(87, 'Tlex', 'human', '8067e', '0', NULL, 0, NULL, NULL),
(91, 'Liponiks', 'zombie', 'a6462', '3', '2018-09-30 16:40:19', 35, 1, 1),
(92, 'BattleCoder', 'zombie', '5fb5d', '0', '2018-09-29 01:10:41', 40, 1, 1),
(93, 'Pikesterz', 'zombie', 'd65d0', '0', '2018-09-29 01:09:42', 20, NULL, NULL),
(95, 'Vanessa', 'human', '1a0d8', '0', NULL, 0, 1, 1),
(101, 'TheRogue', 'zombie', '003f8', '4', '2018-09-30 14:56:50', 20, 1, 1),
(104, 'Soren', 'zombie', '176c4', '0', '2018-09-29 21:17:22', 20, 1, 1),
(105, 'hual0827', 'human', '81ede', '0', NULL, 0, NULL, NULL),
(99, 'TheUnexpectedBidet', 'human', 'c2760', '0', NULL, 0, 1, 1),
(1, 'LegendaryCrypt', 'zombie(OZ)', 'a88b4', '2', '2018-09-29 22:55:00', 10, 1, 1),
(110, 'Benjaminc037', 'human', 'b235a', '0', NULL, 0, NULL, NULL),
(111, 'poimaster', 'zombie', '0dc90', '1', '2018-09-29 21:43:41', 45, 1, 1),
(114, 'jasminelucky', 'human', 'd1b6b', '0', NULL, 0, 1, 1),
(115, 'Salavein', 'zombie', '7b7d4', '0', '2018-09-30 14:56:50', 0, 1, 1),
(116, 'chdu1446', 'human', '3eae9', '0', NULL, 0, 1, 1),
(118, 'karasel', 'human', '44de8', '0', NULL, 0, 1, 1),
(119, 'Zargen19', 'human', 'f7031', '0', NULL, 0, 1, 1),
(28, 'LilBisch', 'human', 'db77a', '0', NULL, 0, NULL, NULL),
(120, 'brockknechtel', 'human', '1a7a8', '0', NULL, 0, 1, 1),
(123, 'ancu2103', 'human', '825e5', '0', NULL, 0, 1, 1),
(124, 'RedCurlyFury', 'human', 'cce86', '0', NULL, 0, 1, 1),
(125, 'anniejo99', 'zombie', '6a1c8', '0', '2018-09-29 21:01:37', 0, 1, 1),
(126, 'Oceanxmyths', 'zombie', '164ea', '2', '2018-09-30 20:34:00', 10, 1, 1),
(127, 'Jastatic', 'zombie', '5bc04', '0', '2018-09-30 20:34:00', 0, 1, 1),
(121, 'GrandMasterChino', 'human', 'a5d72', '0', NULL, 0, 1, 1),
(128, 'dsowders', 'human', 'e3dcf', '0', NULL, 0, NULL, NULL),
(129, 'Mwillis25', 'human', '611b3', '0', NULL, 0, 1, 1),
(131, 'Yara', 'human', 'd72c2', '0', NULL, 0, 1, 1),
(132, 'MainSequenceStar', 'zombie', '9ec78', '0', '2018-09-30 18:15:31', 10, 1, 1),
(133, 'Amandaaeag', 'zombie', '80dd9', '2', '2018-09-30 18:15:31', 20, 1, 1),
(134, 'Kirstenk', 'human', '72794', '0', NULL, 0, 1, 1),
(96, 'Adam.Bender', 'human', '4bed2', '0', NULL, 0, 1, 1),
(135, 'Bellaallen1015', 'human', '4845a', '0', NULL, 0, 1, 1),
(136, 'lial3088', 'human', '8feff', '0', NULL, 0, 1, 1),
(137, 'abal6725', 'human', '574f5', '0', NULL, 0, 1, 1),
(130, 'Emely17', 'human', '9f839', '0', NULL, 0, 1, 1),
(140, 'r12v56kk', 'human', 'a0aa4', '0', NULL, 0, 1, 1),
(94, 'Jehe3586', 'human', 'a5575', '0', NULL, 0, 1, 1),
(106, 'SocialJustusWarrior', 'deceased', '10fb1', '1', '2018-09-26 17:14:16', 5, NULL, NULL),
(142, 'SeanDunk', 'human', '9b87e', '0', NULL, 0, 1, 1),
(147, 'Fake-Saffron', 'zombie', '649ff', '3', '2018-09-29 17:53:12', 45, 1, 1),
(148, 'dracoshooter187', 'human', '965c3', '0', NULL, 0, 1, 1),
(149, 'MsAssassinLexi', 'human', '9e3f4', '0', NULL, 0, NULL, NULL),
(108, 'legaer', 'human', '03644', '0', NULL, 0, 1, 1),
(151, 'drewdpham', 'human', 'cdd7b', '0', NULL, 0, NULL, NULL),
(90, 'GrayGhost666', 'zombie(OZ)', 'f379b', '6', '2018-09-29 17:53:12', 30, NULL, NULL),
(152, 'NicoArhcer', 'human', '68e11', '0', NULL, 0, 1, 1),
(153, 'timmellen', 'human', '0a7b8', '0', NULL, 0, NULL, NULL),
(155, 'Bberti', 'zombie', 'ec280', '1', '2018-09-30 19:35:27', 5, 1, 1),
(158, 'Elaukli', 'zombie', '1085d', '1', '2018-09-30 16:40:19', 5, 1, 1),
(162, 'MilaBergmannR', 'human', '85552', '0', NULL, 0, 1, 1),
(164, 'Eily5', 'zombie', 'e524f', '0', '2018-09-29 16:25:01', 0, NULL, NULL),
(165, 'Lunamintie', 'zombie', '01dc6', '0', '2018-09-29 21:52:32', 0, 1, 1),
(171, 'MrGinger', 'zombie', '37f6d', '0', '2018-09-30 16:17:58', 20, NULL, NULL),
(172, 'Swagatron', 'human', 'db707', '0', NULL, 0, NULL, NULL),
(174, 'Jeregami', 'zombie', '602ad', '0', '2018-09-29 17:58:44', 0, 1, 1),
(176, 'Bellelavery', 'zombie', '62dd0', '2', '2018-09-29 01:12:08', 10, 1, 1),
(177, 'Tez', 'human', '885c8', '0', NULL, 0, 1, 1),
(63, 'Boo-theGhost', 'zombie', '26e3d', '2', '2018-09-29 17:53:12', 30, 1, 1),
(88, 'Luci', 'human', '98778', '0', NULL, 0, 1, 1),
(178, 'aziz626', 'human', '8e04d', '0', NULL, 0, 1, 1),
(144, 'prescottjd', 'human', '3d601', '0', NULL, 0, NULL, NULL),
(179, 'ErinKugler7', 'human', 'b219c', '0', NULL, 0, 1, 1),
(157, 'Jake', 'zombie', '3579b', '0', '2018-09-30 16:40:19', 0, 1, 1),
(156, 'JaCl', 'zombie', 'a9fa2', '1', '2018-09-29 21:56:53', 15, 1, 1),
(180, 'meganborchardt', 'human', '3ecfe', '0', NULL, 0, 1, 1),
(181, 'sophben', 'human', '8c128', '0', NULL, 0, 1, 1),
(98, 'cammiep', 'human', '4379f', '0', NULL, 0, 1, 1),
(182, 'thebirdman', 'human', 'e9b21', '0', NULL, 0, NULL, NULL),
(183, 'borkymcgee', 'zombie', 'b3034', '0', '2018-09-29 01:12:08', 0, 1, 1),
(186, 'Faswlya', 'zombie', '141ff', '1', '2018-09-30 18:15:31', 15, 1, 1),
(188, 'Abelgeb123', 'human', '25ef0', '0', NULL, 0, 1, 1),
(190, 'Mancy', 'human', 'a8c2f', '0', NULL, 0, 1, 1),
(189, 'Gcominelli', 'human', 'c31da', '0', NULL, 0, 1, 1),
(191, 'shellulose', 'human', '7ce62', '0', NULL, 0, NULL, NULL),
(192, 'Thompson', 'human', '51cb5', '0', NULL, 0, 1, 1),
(163, 'berrybrown', 'human', 'b743d', '0', NULL, 0, 1, 1),
(193, 'olar6807', 'zombie', '885a3', '0', '2018-09-29 21:52:32', 0, 1, 1),
(194, 'phwu6529', 'human', 'c88b0', '0', NULL, 0, 1, 1),
(195, 'skrieger', 'human', 'db0a9', '0', NULL, 0, 1, 1),
(202, 'Luwe8329', 'human', 'f472a', '0', NULL, 0, 1, 1),
(200, 'Brucevalentine', 'human', '489b3', '0', NULL, 0, 1, 1),
(203, 'iceShelves', 'zombie', '1e969', '0', '2018-09-30 18:15:31', 0, 1, 1),
(204, 'shakz', 'zombie', 'd528e', '0', '2018-09-29 21:01:37', 56, 1, 1),
(112, 'Rhi', 'zombie', '08408', '0', '2018-09-29 21:52:32', 0, 1, 1),
(206, 'ajkaras', 'human', '90fcc', '0', NULL, 0, 1, 1),
(198, 'Kellenposacki', 'human', 'd6307', '0', NULL, 0, 1, 1),
(76, 'maca8117', 'human', '4df84', '0', NULL, 0, 1, 1),
(208, 'Chrisposacki', 'human', 'd9553', '0', NULL, 0, 1, 1),
(211, 'ZombieCadet25', 'human', 'fa72f', '0', NULL, 0, 1, 1),
(210, 'coren83', 'human', 'dc454', '0', NULL, 0, 1, 1),
(212, 'InvertedCrossfader', 'zombie', '9b8b5', '0', '2018-09-30 19:35:27', 0, 1, 1),
(209, 'Realdealkamiel', 'human', '2e71f', '0', NULL, 0, 1, 1),
(214, 'aazizh', 'human', '760f8', '0', NULL, 0, 1, 1),
(215, 'benaltschuler', 'human', 'e28c4', '0', NULL, 0, NULL, NULL),
(201, 'connorlacey1', 'human', '87d45', '0', NULL, 0, 1, 1),
(159, 'Anonymoosellama', 'zombie', '2adda', '0', '2018-09-30 16:17:58', 0, 1, 1),
(216, 'alantheman', 'human', '1e6db', '0', NULL, 0, NULL, NULL),
(217, 'scottray19', 'human', '5e4be', '0', NULL, 0, 1, 1),
(218, 'CUCLAM3', 'human', '9e835', '0', NULL, 0, 1, 1),
(219, 'yolodactyl', 'human', '80a5b', '0', NULL, 0, NULL, NULL),
(220, 'CreativeFeeling', 'human', '442a7', '0', NULL, 0, 1, 1),
(221, 'desc7849', 'zombie', '5f748', '0', '2018-09-29 17:53:12', 0, 1, 1),
(222, 'Saint', 'zombie(OZ)', 'd596e', '0', '2018-09-29 21:01:37', 0, 1, 1),
(223, 'Adam98', 'human', 'cefbd', '0', NULL, 0, 1, 1),
(224, 'joor228', 'human', '2bdc5', '0', NULL, 0, 1, 1),
(227, 'Mast7851', 'human', 'ce3c5', '0', NULL, 0, NULL, NULL),
(232, 'Evan', 'human', '5c597', '0', NULL, 0, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `weeklongF18`
--
ALTER TABLE `weeklongF18`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
