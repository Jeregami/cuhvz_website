-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 27, 2019 at 04:33 PM
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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `activated` varchar(255) NOT NULL,
  `admin` tinyint(1) DEFAULT '0',
  `subscribed` tinyint(1) DEFAULT '1',
  `resetToken` varchar(255) DEFAULT NULL,
  `resetComplete` varchar(3) DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `password`, `phone`, `activated`, `admin`, `subscribed`, `resetToken`, `resetComplete`) VALUES
(1, 'LegendaryCrypt', 'Josh', 'Brown', 'jobr3255@colorado.edu', '$2y$10$I8/LQM3KB7190xHKYWTaKemyj7UY/RVNK77PMVmX7L.kIY4H1.yMq', '3038191330', 'Yes', 1, 1, NULL, 'No'),
(28, 'LilBisch', 'Devon', 'Ricken', 'devonr363@gmail.com', '$2y$10$GmkbWv6xdfEGjHM15vFXDON9qy4fpVK/azdx9DN/mdOLwXASyh4q2', '7202997200', 'Yes', 0, 1, NULL, 'No'),
(29, 'ghost', 'Scarlett', 'Harris', 'scarley.harris@gmail.com', '$2y$10$FuwGzxZzBOF4j7QxFzt7/eU6KP8I3jaJp4.6rNqLNVSSo2LuGmiGC', '7192170839', 'Yes', 0, 1, NULL, 'No'),
(31, 'NerdyDruid', 'Colleen', 'Feuerborn', 'colleenrfeuerborn@gmail.com', '$2y$10$1B1g2xTsVW.ljmXdBLexfeg23aT/KY8tSwJ4a8yIZpqt8LW2TiFc6', '7203276770', 'Yes', 0, 1, NULL, 'No'),
(32, 'lucasmcmahon', 'Lucas', 'McMahon', 'lucas.mcmahon@live.com', '$2y$10$ANrLIOPzla4x4pscPZQBn.tDLZCx2NNr9q6ag5d.7vUaTT7osC1XK', NULL, 'Yes', 0, 1, NULL, 'No'),
(33, 'BSnow', 'Ben', 'Cialone', 'cialonebenjamin@gmail.com', '$2y$10$Wqepp4I0D1epqJ3lNcNZu.pnLjXTkC.D7rvRaCI0RZfBezaCX.3PO', '7203121951', 'Yes', 0, 1, NULL, 'No'),
(34, 'Xray009', 'Christian ', 'Wills', 'xray009@live.com', '$2y$10$77rN/D2kHmHJpxFfF4YyLu4WL0KODr7UYKmdI4dCVa4phLJqcqX5y', '7203843510', 'Yes', 0, 1, NULL, 'No'),
(35, 'MCRN-Combat-Epidemiologist', 'Michael', 'Martinson', 'michael.martinson@colorado.edu', '$2y$10$Oc6zkm8hzQ335JWinyHDUehCG/CzP4EQqpNmeG8EO/pehaMoiLAwy', '8058361018', 'Yes', 0, 1, NULL, 'No'),
(36, 'JoelCourtney', 'Joel', 'Courtney', 'joel.e.courtney@gmail.com', '$2y$10$0d9XR8U/UaTo/w0X.M88feFhjOQ8pbAhflxpd.ykqnqGpQ.OKqkHK', '7205396135', 'Yes', 0, 1, NULL, 'No'),
(37, 'elco3300', 'Elizabeth', 'Cohn', 'elco3300@colorado.edu', '$2y$10$0IUZUAhfLDz2NpZP3yT22eNxAefnKLlPnJFRmSsOHVchizW8hdSXu', '7133677675', 'Yes', 0, 1, NULL, 'No'),
(38, 'Arete13', 'Zane', 'Brink', 'zabr8997@colorado.edu', '$2y$10$yWHGciGRf2abY.skY1wCS.1WLDmwqNxDzwT1m99ocl.uGq8r31Z/C', '7195881624', 'Yes', 0, 1, NULL, 'No'),
(39, 'natkosacki', 'nat', 'kosacki', 'kosacki12@gmail.com', '$2y$10$.YJ8e0mJDUpirCq5cuUL6uiTMZToxIHW0K/deL2sbHKKwFzPZEvbO', '7196443621', 'Yes', 0, 1, NULL, 'No'),
(40, 'lilbitch', 'yash', 'kothamdi', 'yako4377@colorado.edu', '$2y$10$O2o6VtKmirRJFgHaFcS9COLKowlSeF50HXOUJ5B5zjyaTH.dNzEQi', '9708897290', 'Yes', 0, 1, NULL, 'No'),
(41, 'bryce.renner', 'Bryce', 'Renner', 'Bryce.Renner@Colorado.edu', '$2y$10$EKul/aU0XXJcfgCtYv5xmOY/D0b7U5sOPaRMQRptSgN4Tz6eBwhwS', '7193376800', 'Yes', 0, 1, NULL, 'No'),
(42, 'Saotorii', 'Matthew', 'MacKenna', 'albatross245@gmail.com', '$2y$10$e68gVLeHupGYeHbM9fmJYe4GBLnU48OYaBlOfOiDU7b0Hf9OlgUYa', '9704029483', 'Yes', 0, 1, NULL, 'No'),
(43, 'AustinA24', 'Austin', 'Anderson', 'auan4697@colorado.edu', '$2y$10$blOUBt/bUhepZPvlHV5BYO/5uFhdLEvBL/qX3yE13bPBSWVfhSvUa', '7029941308', 'Yes', 0, 1, NULL, 'No'),
(44, 'rast1447', 'Callan', 'Stone', 'rast1447@colorado.edu', '$2y$10$uve9AbLyfsz0oUKZcGZdp.Eo7eBJ2j5jzs2QTwo333YPJ3LE2gc7.', '7202095351', 'Yes', 0, 1, NULL, 'No'),
(45, 'RikuDarkWielder', 'MATTHEW', 'BRAND', 'mklb492@gmail.com', '$2y$10$D88F4m/H2HxP2XtuIvZpLeYsCVEBUycDcmh1dGYsy8cfiJRvNfCc.', '8165185131', 'Yes', 0, 1, NULL, 'No'),
(46, 'A-dingus', 'Adam', 'Bloom', 'Adam.bloom3@gmail.com', '$2y$10$svEyMgd92YFXrEIUzQeW.eKh0mJTCU93OBcS/P5JY9mWv88jlAXLO', '3038182106', 'Yes', 0, 1, NULL, 'No'),
(47, 'arkatheia', 'Jennifer', 'Alexia', 'jahy3427@colorado.edu', '$2y$10$azvjV.hlSJAW.HK6dwA/g.Z3dxDqVhp19JAG4rqrdddKkgT7VPMBe', '4107087636', 'Yes', 0, 1, NULL, 'No'),
(48, 'Nobody', 'AKASH', 'GAONKAR', 'akashgaonkar@gmail.com', '$2y$10$bqRUlGQ/q7Gig4GV591aCeGG.ghubPsTFbPqz/yguMNItYm4Kwlhq', '7208771505', 'Yes', 0, 1, NULL, 'No'),
(49, 'BrandonSantori', 'Brandon', 'Santori', 'brsa7220@colorado.edu', '$2y$10$1sI5faQknH605GvVivT2U.m8NPizAW3xZPUusCpJqsllnznyoaVM.', '5124349234', 'Yes', 0, 1, NULL, 'No'),
(50, 'elar5353', 'Liz', 'Arthur', 'elizabeth.arthur@colorado.edu', '$2y$10$3nXuBB5R3nAbCGaCQUNXtOPHaCHqV.RYAjRgtYPjcg/ko1JSyPveW', '3176278633', 'Yes', 0, 1, NULL, 'No'),
(51, 'Zoolouie', 'Zander', 'Louie', 'allo1877@colorado.edu', '$2y$10$fz2QkFBHfFo21pn4gJM4/e0WXSI17/fvguhSP4qn5TJ/YyWn0viGq', '7203019572', 'Yes', 0, 1, NULL, 'No'),
(52, 'Fairouz', 'Al', 'Fairouz', 'alfa1081@colorado.edu', '$2y$10$DB4AqCLhW.a6ic2aGMdABe4hGBfj2KP8s22WB3ktum4hwq6UoCyv6', '7203008636', 'Yes', 0, 1, NULL, 'No'),
(53, 'Bluetayman85', 'Taylor', 'Atkinson', 'Bluetayman85@gmail.com', '$2y$10$yK6TPnlScPt3xHp4k84F2e5OjiMdJfJWPzeXPbJEywuS/mbaanq72', '9702016183', 'Yes', 0, 1, NULL, 'No'),
(54, 'Birchjuice', 'Paige', 'Paulsen ', 'm.paige.paulsen@gmail.com', '$2y$10$u0HDwRcf221FqZ8l8RWvFeZwBu107CbTJ0KXMoQRfqlVjLt6A7MH2', '7203764721', 'Yes', 0, 1, NULL, 'No'),
(55, 'KurtRomberg', 'Kurt', 'Romberg', 'mongolhoarde@gmail.com', '$2y$10$4s5Z04su5L0whBtM8CdFn.d7UUsrM7jOj9nHAag3K4K4TjYsXASy.', '7206757604', 'Yes', 0, 1, NULL, 'No'),
(56, 'eightbitbuenos', 'Josh', 'Munoz', 'eightbitbuenos@hotmail.com', '$2y$10$RYSaN7aKbqeaJFPZZu6SOupOogJa4g.f8/U7Y61skhieHMV35l6oS', '3126109262', 'Yes', 0, 1, NULL, 'No'),
(57, 'joch13', 'Joyce', 'Chu', 'chuj1377@gmail.com', '$2y$10$/hjsKMViqA8rE4AqFZy6c.U3vf0aVNFB/5eK6zUFMC4JPyQ97Bcgu', '7204747492', 'Yes', 0, 1, NULL, 'No'),
(58, 'knottoo', 'Oonagh', 'Knott', 'ookn9353@colorado.edu', '$2y$10$/WbtK1k/Wpk6nul.Z6Zth.K6H9hGKOCo992CokRVp1idWgAWmhLq.', '6315594171', 'Yes', 0, 1, NULL, 'No'),
(59, 'aidanhartnett', 'Aidan', 'Hartnett', 'aidan.hartnett@colorado.edu', '$2y$10$b/aoz6DZ1tyXVN4o60rTJO5NpDYWhO81keLFucMRMoRj2pgs8ogBW', '7203943662', 'Yes', 0, 1, NULL, 'No'),
(60, 'Nadiv', 'Nadiv', 'Edelstein', 'nadivge@gmail.com', '$2y$10$S9Rje9jPPkDoR8MdZpQLuepO3dBxh9KQeM4NqBZaWVpZyIslmjKLS', '7202357772', 'Yes', 0, 1, NULL, 'No'),
(61, 'JuciaPucia', 'Julia', 'Bierylo', 'jubi8194@colorado.edu', '$2y$10$YVq69AczjRnJA4z9SeKqRee7zbgE3D3cpy3jrg3DvxS0aocZKH6zG', '7209174562', 'Yes', 0, 1, NULL, 'No'),
(62, 'darthvid1', 'David', 'Wells', 'david.wells@colorado.edu', '$2y$10$C1saCbypyoh38Spu8klTTudznBYSdGYoxONVa.7Zdk8sb4eGJuLca', '7203691334', 'Yes', 0, 1, NULL, 'No'),
(63, 'Boo-theGhost', 'Aubrey', 'MacDougall', 'auma7178@colorado.edu', '$2y$10$1TBYoKMzFfT8ZSxr3se.xOvByjl8W1sZRMdbMi7A.vS.eGdoJs6dm', '3034751685', 'Yes', 1, 1, NULL, 'No'),
(64, 'Drnotdoctor', 'Sam', 'Raizman', 'sara9982@colorado.edu', '$2y$10$5nuAVyFJKW43xxs0vd2AyOpIaNokIhcAm9z5HE6IF1I8QA.HsZLuy', '7208918416', 'Yes', 0, 1, NULL, 'No'),
(65, 'thayer', 'Thayer', 'Cornell', 'thco9672@colorado.edu', '$2y$10$oWZbeky20vFzsJRwxaGoG.dDelC0IONifeXYjSwcxax2zH5YsU456', '6179470666', 'Yes', 0, 1, NULL, 'No'),
(66, 'Lawllipop', 'Ben', 'Hesser', 'behe0929@colorado.edu', '$2y$10$es/G2lSILx2/Imy36pIdDeuCRwP5TLPCAMLaVCTYrpZ1bHprkj34.', '3039063720', 'Yes', 0, 1, NULL, 'No'),
(67, 'claudiasellis', 'Claudia', 'Davis', 'claudia.e.davis@colorado.edu', '$2y$10$7qq0Jowl60HP9cKLzRtFCua8o909O/3fUFZ5rtryZOMWCdLWOlziu', '3342353222', 'Yes', 0, 1, NULL, 'No'),
(68, 'jesswoodhead', 'Jessica', 'Woodhead', 'jesswoodie@gmail.com', '$2y$10$vMQDirdzQkMKApt5gU/V/eReQ.4zzYHLk7ROZCrWH/oxs2lHgo2nC', '3036676296', 'Yes', 0, 1, NULL, 'No'),
(69, 'Savvycappy', 'Savannah', 'Capdevila', 'saca1856@colorado.edu', '$2y$10$ma3x84OhF12AwdviUPvZUeT5YCXCmYsl5RhA.ODA1bg5T/LOgUVQa', '9496379429', 'Yes', 0, 1, NULL, 'No'),
(70, 'Zakdebaggis', 'Zak', 'DeBaggis', 'zakdebaggis@comcast.net', '$2y$10$HItsfnZMOPvGvy60xND31u6bDM7oFR27u8ibj5eUhD7CQCKWdnP5i', '7203847705', 'Yes', 0, 1, NULL, 'No'),
(71, 'Parone', 'Matthew', 'Parone', 'mparone@gmail.com', '$2y$10$AVSeXv6Un8jdydd/gPVrQeJlMDTJNNXALUyTCv9O.GWNiCFsInotK', '3032649636', 'Yes', 0, 1, NULL, 'No'),
(72, 'Xina5000', 'Christina', 'Thompson ', 'chth2581@colorado.edu', '$2y$10$KytVBwqfI0mLs/gYJXkMcu13obC4Xu2Y1XLZIqTAOcEpeslIBCdq.', '8283353665', 'Yes', 0, 1, NULL, 'No'),
(73, 'Krysten', 'Krysten', 'Gard', 'krysten.gard@colorado.edu', '$2y$10$xcOp5cwtW/e/SlZkf19TJevi9FPfLoWmKVECfoHu.Z8v/1ToUZQz.', '7193301350', 'Yes', 0, 1, NULL, 'No'),
(74, 'Rdubs', 'Rowan', 'Woodbury', 'Rowan.Woodbury@colorado.edu', '$2y$10$BLz5k1ZGjtJgEYHulY2v4egH9LKeZRnE/msoYiex7064qEh8uQVvy', '7209178961', 'Yes', 0, 1, NULL, 'No'),
(75, 'sydchan', 'Sydney', 'Chandler', 'sydneygchandler@yahoo.com', '$2y$10$AQ/sFqiJtQGruAZEosJOqOqy6XSnqLVd9tgR1o7t1lT5aoxTgkdXO', '7143902124', 'Yes', 0, 1, NULL, 'No'),
(76, 'maca8117', 'Matias', 'Capli', 'maca8117@colorado.edu', '$2y$10$ccK4L6J9lt2/4jq0RAOXi.Jo44Kj0I6svETYjIlbACi/m/KnT9vaW', '7206212671', 'Yes', 0, 1, NULL, 'No'),
(77, 'Mare2072', 'Mason', 'Reichert', 'mare2072@colorado.edu', '$2y$10$xY8iH/HNMKDW/UlkboiPcuG4z/i9A0m57O4kHdCsVJrn.80z5UU1u', '7207088571', 'Yes', 0, 1, NULL, 'No'),
(78, 'Andrewstiller', 'Andrew', 'Stiller ', 'andrewstiller101@gmail.com', '$2y$10$YXQUHjuxhMHEgNKVJsVjmOKyW6OnmUdBHUUIR3C6kvBhuzbG1J7LW', '3035235830', 'Yes', 0, 1, NULL, 'No'),
(79, 'chriskirschh', 'Christopher', 'Kirsch', 'christophertkirsch@gmail.com', '$2y$10$sKgVktyt13vHh3xgbBtUs.Ir5iHZFTqnDRG46kREGfJPo1tJTEO/u', '9043474825', 'Yes', 0, 1, NULL, 'No'),
(80, 'aliden', 'Amy', 'Liden', 'lidenamy@gmail.com', '$2y$10$mEj84B6PNWlU0N/nnjNJZOYVoc6L5fwmcsN40Lr/cior0N4MJzUCa', '9702611332', 'Yes', 0, 1, NULL, 'No'),
(81, 'char7887', 'Fern', 'Aroonnithi', 'char7887@colorado.edu', '$2y$10$6XVxmWOpqUdVGNfj8G5Gf./uBnjv1tfhWfFd8MUD7wUbK0CdXnILK', '7209195268', 'Yes', 0, 1, NULL, 'No'),
(82, 'rebeccaopiela', 'Rebecca', 'Opiela', 'reop0775@colorado.edu', '$2y$10$GkTeQD9ZjwO0vaOeoC5iGuf/APV9Rs.4DBF5jbWCbZgnIH5IO8GeC', '2817701965', 'Yes', 0, 1, NULL, 'No'),
(83, 'janderson', 'Jennifer', 'Anderson', 'jenniferhorses@gmail.com', '$2y$10$5WJ8Hde62PA7KUZ7aBwhfeRNPitChWiuCWRvdya8fvbGJzmjaO2pq', '7209383122', 'Yes', 1, 1, NULL, 'No'),
(85, 'kriss', 'kristin', 'bogar', 'kebuniv@gmail.com', '$2y$10$llxxni85DIQZp.dGhAsOru2WLyKcGor7YJZB9A8WqGMsEDw0ybQ4.', '3036566892', 'Yes', 0, 1, NULL, 'No'),
(86, 'JoshThewild', 'Josh', 'Wild', 'jowi6757@colorado.edu', '$2y$10$5eb/tqclLbkvAJhTZGo/U.UrKfqZzsdRdthX7vTOq0Et82J1cYG5K', '4108687526', 'Yes', 0, 1, NULL, 'No'),
(87, 'Tlex', 'Lexie', 'Birren', 'abirren96@gmail.com', '$2y$10$4eyWqfoBH.etuBuIqfwRnOPsJy3BN4CqPfXMhGK8sL67MdMqrsxz6', '3037463995', 'Yes', 0, 1, NULL, 'No'),
(88, 'Luci', 'Luci', 'Sherriff', 'sherriffla@yahoo.com', '$2y$10$3taXIGCEv3MxhGD0wMJBG.rWTqemAKw0QFEDiJAZkg8rYZNYoy8.a', '9703661979', 'Yes', 0, 1, NULL, 'No'),
(89, 'ocollette', 'Olivia', 'Cornejo', 'olco0540@colorado.edu', '$2y$10$.NWRiL4Gy4taClCHqJnD4.ifKltcvRXam/JKCCawdYhpjeA0ReBNG', '3037048785', 'Yes', 0, 1, NULL, 'No'),
(90, 'GrayGhost666', 'Angel', 'Florencio', 'angelflorencio13@gmail.com', '$2y$10$0zelkdonJw.SzoF573NC4.nAqLksarEHBiYGdhdO3WhpD96HyQ0zq', '3038597434', 'Yes', 1, 1, NULL, 'No'),
(91, 'Liponiks', 'Nick', 'Lopinski', 'nilo1307@colorado.edu', '$2y$10$NjlGrrc4zYxd6odPksFU7uzievQUXAWRPGDGBJacSzs2P3H8R3mpa', '8479091345', 'Yes', 0, 1, NULL, 'No'),
(92, 'BattleCoder', 'Tristan', 'Palmero', 'trpa7630@colorado.edu', '$2y$10$V0JNrsY/Os3tzU7foqlGLOEwvWsYSMHPKeDYlAp8eHDVufApKePxG', '7148737626', 'Yes', 0, 1, NULL, 'No'),
(93, 'Pikesterz', 'Andrew', 'Pike', 'anpi4252@colorado.edu', '$2y$10$kQMNfojHGb6PAlMIw1fFPeOu4OSMZNrtNOs5qwmWnPldt3UbBec4O', '5105070945', 'Yes', 0, 1, NULL, 'No'),
(94, 'Jehe3586', 'Jesse', 'Helser', 'jehe3586@colorado.edu', '$2y$10$7J2MZZjIG73OoGectMDMy.6fIc8npTrN3piy2C2FJOeNL.vCvGXGO', '9704563171', 'Yes', 0, 1, NULL, 'No'),
(95, 'Vanessa', 'Vanessa', 'Cornejo', 'Vjc.cornejo@gmail.com', '$2y$10$qAbRX/1Z9vOeIEOyx0PubeDVBLvhHePoxfYgNDBCLaY0UNpQIMHlS', '3035887447', 'Yes', 0, 1, NULL, 'No'),
(96, 'Adam.Bender', 'Adam', 'Bender', 'adbe1633@colorado.edu', '$2y$10$BGImSSNBV6plSjzPuZcDleUTId8scVIce9kD8eOSazGFcX7vCBsX6', '3034510240', 'Yes', 0, 1, NULL, 'No'),
(97, 'bostongal161', 'Elizabeth', 'Cohn', 'elizabethemilycohn@gmail.com', '$2y$10$NgIMLr.YCWEqnMPM84G/O.QgeNimxkDlDseeH/CFDDrzMglLqtCIy', '7133677675', 'Yes', 0, 1, NULL, 'No'),
(98, 'cammiep', 'Cameron ', 'Pittman', 'capi8817@colorado.edu', '$2y$10$q3KbjDCIF1.0Ef96vCrwN.VqFjyjy9atpNNtqMlNutzhMVQ1g9eb6', '2105630670', 'Yes', 0, 1, NULL, 'No'),
(99, 'TheUnexpectedBidet', 'Jackson', 'Whitley', 'jawh3661@colorado.edu', '$2y$10$eB.d5jT8ulMt0YO0EFxgM.t4fji3JwyQAa6uCrKcSTSwzmZ7ALXny', '2529952443', 'Yes', 0, 1, NULL, 'No'),
(100, 'alla4384', 'Alyssa', 'Landi', 'alla4384@colorado.edu', '$2y$10$NVBjZYHydxpGN7AHR69f/uvOlzfTE06fNnHBQ5H7Chc2SRTmbLaPa', '9739670187', 'Yes', 0, 1, NULL, 'No'),
(101, 'TheRogue', 'AJ', 'Spencer', 'ansp1208@colorado.edu', '$2y$10$9MrdlzBnNG6v4AOXNlRtaeGxn.Myym5QOMp8qwUJ2sBB.UtRPDDPG', '2089997231', 'Yes', 0, 1, NULL, 'No'),
(102, 'YourMom', 'Juan', 'Lomeli', 'juanlomeli12@icloud.com', '$2y$10$EctaO18IjjxM9HyW8nRBiO04DdZQEg65Jb.EGc260jSj08PxazkN2', '7193314965', 'Yes', 0, 1, NULL, 'No'),
(103, 'JamesHere', 'kakam', 'chen', 'kach6345@colorado.edu', '$2y$10$MqJLlO2x6spuKDde20j.3e55hKqgFZCGH/6bpb6a8MmGRzMp2w3w.', '3038197450', 'Yes', 0, 1, NULL, 'No'),
(104, 'Soren', 'Soren', 'Heinz', 'soren.heinz@colorado.edu', '$2y$10$WUAjmzlUZXf7/Mx4cYmsFeHpD433jwsUUeFnhEfQaXURZr3PEWM3y', '2156881461', 'Yes', 0, 1, NULL, 'No'),
(105, 'hual0827', 'Hunter', 'Allen', 'hual0827@colorado.edu', '$2y$10$eACqWB7pAoYMISfUEtwVt.9kA5rCpzX.C2WAgaM8/.5Mb17qhKf9C', '7203249299', 'Yes', 0, 1, NULL, 'No'),
(106, 'SocialJustusWarrior', 'Justus', 'Leben', 'justus_leben@me.com', '$2y$10$RA0Aiu8ZQZrnwQ5BYhSVgOfCEBvaS0RJyB0HsuM7he/cm58u4ISCu', '7202548275', 'Yes', 0, 1, NULL, 'No'),
(107, 'Kirsten', 'Kirsten', 'Kollar', 'kiko8499@colorado.edu', '$2y$10$cE33KrZ5ndTMnkAyRrNAZOS2.ugdkvJ0kiOAFMSRPMDK4mJZDZJsa', '9704566628', 'Yes', 0, 1, NULL, 'No'),
(108, 'legaer', 'Luke', 'Eberwein', 'luke.eber@yahoo.com', '$2y$10$ed.R2a.uWFfGdVyyZIAWqOo15p0Ht3KIlfO/GvuF5ndSlMGBcGU0O', '4846021717', 'Yes', 0, 1, NULL, 'No'),
(109, 'Bech9120', 'Benjamin', 'Chilton', 'bech9120@colorado.edu', '$2y$10$rLIrM16KfOLB0HDYaG6EB.zeOamD2265jJ49NujNDWD5QhZLNiNu2', '3038687985', 'Yes', 0, 1, NULL, 'No'),
(110, 'Benjaminc037', 'Ben', 'Chilton', 'Benjaminc037@outlook.com', '$2y$10$G2nlYynwh3vWJ61C865NeOpTQffaJkYLMrxhxIsblsp7qkqXWR6Ci', '3038687985', 'Yes', 0, 1, NULL, 'No'),
(111, 'poimaster', 'Z', 'MacLean', 'isma0101@colorado.edu', '$2y$10$.rDZzzEPUkom85WhC9Mu1uAEQ1JDgulQnM0LmhQNJeGxr1MhExT5m', '7205055605', 'Yes', 0, 1, NULL, 'No'),
(112, 'Rhi', 'Rhiannon', 'McKee-Gresham', 'everydaymagic17@gmail.com', '$2y$10$mk5adAr8BLXu1S7xoIIOI.LG2Wf2QJhDSBNS.hXoP3B3px727wj0q', '3037759484', 'Yes', 0, 1, NULL, 'No'),
(113, 'magickayla', 'Kayla', 'Hoang', 'kmhoang17@gmail.com', '$2y$10$0ddsRG45WKx9jgjzEjLDjuMQ0HtrD/EBGq0v0t/a3LBCZu.vbBi7e', '7206489696', 'Yes', 0, 1, NULL, 'No'),
(114, 'jasminelucky', 'jasmine', 'lopez', 'jasmine_lopez_00@hotmail.com', '$2y$10$T0cBQVBaUQtrH/g/bfq3iO5zsuHXcT0Bi7jF/e23ojDcp4WNiaEey', '2028098453', 'Yes', 0, 1, NULL, 'No'),
(115, 'Salavein', 'Geoff', 'Keeton', 'geoffrey.keeton@colorado.edu', '$2y$10$onaieGyV5Oy/aypFqcrqn.yCmSfZD0IUxzh8g1NfYB2ATx6NpLVni', '2032168870', 'Yes', 0, 1, NULL, 'No'),
(116, 'chdu1446', 'Chris', 'Dusbabek', 'chdu1446@colorado.edu', '$2y$10$Vqey2PRyp0TNJwHX4/gFoecZhc1zmvmMfGxmgnh8odn89SvwqQA1O', '9706921380', 'Yes', 0, 1, NULL, 'No'),
(117, 'chba9443', 'christian', 'bauer', 'christhezombiehunter@gmail.com', '$2y$10$8EtSAT0K27AlK472uN.xt.C.3eBibAJBszXkIW808ELeVcbM5Hbta', '3039172759', 'Yes', 0, 1, NULL, 'No'),
(118, 'karasel', 'Kara', 'Metcalfe', 'kame0575@colorado.edu', '$2y$10$VyLkIPPSpmxANG20NQ3AyejR5LioBevSg9KXtXWAZIy/CqEF9StN.', '7203838201', 'Yes', 0, 1, NULL, 'No'),
(119, 'Zargen19', 'Zach', 'Elsass', 'zael2453@colorado.edu', '$2y$10$NpYZv13AL.1aGmdSy3zI9ORxe/dPB16jPtfhwXYGe/Dx60dZytvWm', '9704850531', 'Yes', 0, 1, NULL, 'No'),
(120, 'brockknechtel', 'brock', 'knechtel', 'brockknechtel@gmail.com', '$2y$10$o2su8sF5cLAkIXhiEXZ0wuA1r1ZEaoqJnev0jeN38B3eBmEY8vU7q', '7207450550', 'Yes', 0, 1, NULL, 'No'),
(121, 'GrandMasterChino', 'Leo', 'Torres', 'torresleo548@gmail.com', '$2y$10$K0m9n5B/faqVE6UHXU162.TIwApN2tepivPzD3mgvtsCH4G.7h0Qa', '7196844521', 'Yes', 0, 1, NULL, 'No'),
(122, 'Idontlikesand47', 'Devon', 'Ricken', 'deri9928@colorado.edu', '$2y$10$q3M5p/Ck/Xe1iNyavfyuAOn9sfdRTRtZjix5UEjABLyLnPWKWyghK', '7202997200', 'Yes', 0, 1, NULL, 'No'),
(123, 'ancu2103', 'Anthony', 'Cuff', 'anthony.cuff@colorado.edu', '$2y$10$GqNzrLO25sATXWIocq9DhODx7GKQYZkFLFih5IYxSTcGjyhNf8mRu', '3033744084', 'Yes', 0, 1, NULL, 'No'),
(124, 'RedCurlyFury', 'Nicholas', 'Piotrowski', 'project21124@gmail.com', '$2y$10$jgCeO38herNs9unl3hQWueitUcwH4GClLSj22D3Sx5XvA6/B6CikS', '5202629330', 'Yes', 0, 1, NULL, 'No'),
(125, 'anniejo99', 'Anna', 'Haynes', 'anha2504@colorado.edu', '$2y$10$GWQ5XZv1EYyGueVPqTz/l.mwowaEC0BR7LIMb88wjnoPjgDig55ni', '3038037051', 'Yes', 0, 1, NULL, 'No'),
(126, 'Oceanxmyths', 'Brayan', 'Villegas ', 'brvi8053@colorado.edu', '$2y$10$YJORWj5kV1Mme2oE//ZeV.acg3C0kiRrJndHgxo9PvzVOfuivgTtS', '7207715810', 'Yes', 0, 1, NULL, 'No'),
(127, 'Jastatic', 'Jasmin', 'Godinez', 'jago5210@colorado.edu', '$2y$10$SvWOSPmrE7V2rHq.MOZQh.ApnXoWPa7nWJ75cENT0H/LhxDAICaOS', '7203548394', 'Yes', 0, 1, NULL, 'No'),
(128, 'dsowders', 'Derick', 'Sowders', 'deso7541@colorado.edu', '$2y$10$L/FZaLjIj72BsDjzqqEaS.NX8uMc4I2Cs8neRTGS8QcX63FSNZawy', '6098744302', 'Yes', 0, 1, NULL, 'No'),
(129, 'Mwillis25', 'Mikey', 'Willis', 'miwi0161@colorado.edu', '$2y$10$cGTxWz8OY6QuzuQML2zAse1CYrSsmU2uA5ZH49lICj.cOZKc2iadq', '9706181382', 'Yes', 0, 1, NULL, 'No'),
(130, 'Emely17', 'Emely', 'Dominguez', 'emdo3345@colorado.edu', '$2y$10$dH/unD8X.jzvBGB5dNyKWeP4OBNJSuFEzEFVgFv/fXW6bx7rWCaFu', '9126959671', 'Yes', 0, 1, NULL, 'No'),
(131, 'Yara', 'Odbayar', 'Bumaa', 'Odbu8119@colorado.edu', '$2y$10$0iRU5iOgdRrdXeHYZV8/suOZIjCvaRhvFqjFsNX081XpklcKk33Ma', '3039087572', 'Yes', 0, 1, NULL, 'No'),
(132, 'MainSequenceStar', 'Caelan', 'Burke-Kaiser', 'cabu5273@colorado.edu', '$2y$10$y3p1tIGC7XZCUHZKxz3cR.6LlgZSBv1phcata3u9hfOiPoypZ2U.6', '4147199224', 'Yes', 0, 1, NULL, 'No'),
(133, 'Amandaaeag', 'Amanda', 'Gerritsen', 'amandaaeag@gmail.com', '$2y$10$mBDgFIly3FvHKEv24GafnuvG3Tj928DImmGEMamiVvGPu03SCzaXW', '8473475787', 'Yes', 1, 1, NULL, 'No'),
(134, 'Kirstenk', 'Kirsten ', 'Kollar', 'kollarkirsten@gmail.com', '$2y$10$Fp/kRMhl7il5Gfk5U/zgtu92Nqe5uG.YuKu0eTdf5UM1jv0vXsTyi', '9704566628', 'Yes', 0, 1, NULL, 'No'),
(135, 'Bellaallen1015', 'Bella', 'Allen', 'isal9976@colorado.edu', '$2y$10$YhUgZTAIBz.2JR1OGGJoTezIGFb3aIVAvcVGKNpfo2RN4leKRBM2S', '7202292949', 'Yes', 0, 1, NULL, 'No'),
(136, 'lial3088', 'Lily', 'Allen', 'lial3088@colorado.edu', '$2y$10$ByhPA6PxjD40zBZXzZqOgO9Poa01Miih30.lKOsYDvnDh8YR64Xcu', '7202294539', 'Yes', 0, 1, NULL, 'No'),
(137, 'abal6725', 'Abeer', 'Ali', 'abal6725@colorado.edu', '$2y$10$o3Per34SAqkzw.cQXj303OheuhndjOmrLbi5NI/p.Cwdn/1tlzWlm', '3033569214', 'Yes', 0, 1, NULL, 'No'),
(138, 'jackdapogo', 'Jack', 'Davis', 'jada6520@colorado.edu', '$2y$10$dn2ZM.BcWjzk.roGY2IWje8ZJ6No3Bkw.7HZ0oMKl2B29Npiw1EX6', '7202916776', 'Yes', 0, 1, NULL, 'No'),
(139, 'r12v56k', 'ryan', 'Berger', 'rybe5499@gmail.com', '$2y$10$AJKSNsj4wCXUmMFF0Qe2iOx7gjBh4Z6I6RLXS/tm6nD.b66DVmh36', '3033787486', 'Yes', 0, 1, NULL, 'No'),
(140, 'r12v56kk', 'ryan', 'berger', 'gaaem1234@gmail.com', '$2y$10$2PyD8XiNtBGg7rpnDEeiduh4oZSodKzeDoibvRoOO.q.7W5K/toxm', '3033787486', 'Yes', 0, 1, NULL, 'No'),
(141, 'MalloryP', 'Mallory', 'Perschke', 'mape6980@colorado.edu', '$2y$10$btEPlLidNSZ4iFtxFJiiMObqXVaS9TiSs4HFApNpp07tva.HJRyWS', '8477676255', 'Yes', 0, 1, NULL, 'No'),
(142, 'SeanDunk', 'Sean', 'Dunkelman', 'sean.dunkelman@colorado.edu', '$2y$10$K6s96Fy9N2XYDMhqMbMQSOeiciUUMKBkaX384uD4goGcl836U2/ou', '7757811401', 'Yes', 0, 1, NULL, 'No'),
(143, 'GPB', 'G. Paul', 'Bailey', 'geba2669@colorado.edu', '$2y$10$U1Bx3X.BJoU7kd8XnrJsjOlcJ4tFKtwpQtlHnUdj11W6yQ5jDZe2C', '3035200200', 'Yes', 0, 1, NULL, 'No'),
(144, 'prescottjd', 'Jackson', 'Prescott', 'japr9997@colorado.edu', '$2y$10$PAbSt7qiHEtTPu38QWDN9Of6aeedqL/7abzBq7eRFaCjdafMj2vW2', '7205195375', 'Yes', 0, 1, NULL, 'No'),
(145, 'jessfree23', 'Jessica', 'Freeman', 'jefr6993@colorado.edu', '$2y$10$8EZusrzFw9qLeioqymqXoubiEcURhdqWRTZOh/lJMYm4hdbucltZy', '6144063645', 'Yes', 0, 1, NULL, 'No'),
(146, 'FakeSaffron', 'Jack', 'Carter', 'joca6705@gmail.com', '$2y$10$/TnP6rkXIZ2lDuOeGZcaiOHlRrieDALOo512TU9jNvj5RKWxDmh6G', '4086803591', 'Yes', 0, 1, NULL, 'No'),
(147, 'Fake-Saffron', 'Jack', 'Carter', 'joca6705@colorado.edu', '$2y$10$Jgdh2tWacQo7DuaLWZtn0.56A6a/ppIYsc6PYK61AlN6Uq8oATUGW', '4086803591', 'Yes', 0, 1, NULL, 'No'),
(148, 'dracoshooter187', 'jose', 'martinez', 'josemartinezt.o.b@gmail.com', '$2y$10$eg.RZbu/OVC8Nxfmn9smCeL1QgUUm2vS3Favha0fsjaZ.RWTG.yA6', '7204865745', 'Yes', 0, 1, NULL, 'No'),
(149, 'MsAssassinLexi', 'Alexis', 'Morehouse', 'almo1622@colorado.edu', '$2y$10$arl/IyXB0tRIIetdK.HfyuoAVfIsdbsoyO526GfC.iJ3kSe.JfjT6', '7202097721', 'Yes', 0, 1, NULL, 'No'),
(150, 'Mego4489', 'Mercedes', 'Gonzales-wagner', 'Mercedes.Gonzaleswagner@Colorado.EDU', '$2y$10$8IhUoXEKvp6M19KNl12Ac.6KWjKzGlX/pkskr3zt2iiYktg4Pi816', '7206290355', 'Yes', 0, 1, NULL, 'No'),
(151, 'drewdpham', 'Andrew', 'Pham', 'drewdpham@gmail.com', '$2y$10$gkQL5zlCBfxnlvhZQlyyL.IdbOt3dNJbSDp3z18C/.9wShf.zDuXm', '3039138918', 'Yes', 0, 1, NULL, 'No'),
(152, 'NicoArhcer', 'Nico', 'Archer', 'archer.nicoemerson@gmail.com', '$2y$10$BicHpfY3ix/B8EVcFDZxWO6eKQ3i7DPbOGHvNP6.3Xcz7vgZfhSkK', '7209515529', 'Yes', 0, 1, NULL, 'No'),
(153, 'timmellen', 'Tim', 'Mellen', 'skobuffs1018@gmail.com', '$2y$10$cyjpr7/G9BM4Xqd24Qu3KO2nakYpTOtwVex4Ybt8ge083qOm7k3G6', '3032424484', 'Yes', 0, 1, NULL, 'No'),
(154, 'Jud', 'Judson', 'Wells', 'juwe7869@colorado.edu', '$2y$10$yoYLMtXpxyCioaiGobNUHuFm8myslZe8nPfPdq9dVJjWYJWwqR2wW', '9494828122', 'Yes', 0, 1, NULL, 'No'),
(155, 'Bberti', 'Brennan', 'Berti', 'brbe5789@colorado.edu', '$2y$10$f.Rqo.uOg3k6BHkCxLZFjuv3fCoqyrrUS7YbbyntD7L5TxsTHCMda', '7029011304', 'Yes', 0, 1, NULL, 'No'),
(156, 'JaCl', 'Jacob', 'Clark', 'j.clark@colorado.edu', '$2y$10$lQEILVvBUyNMvuperuU0Ler1U5ceN4fa5QuxU6VfNvpibbjaK2Ft2', '3196319200', 'Yes', 0, 1, NULL, 'No'),
(157, 'Jake', 'Jake', 'Pirnack', 'japi8981@colorado.edu', '$2y$10$CCzHKk4sreen0adb35NTOOg9A1.uol5DBUDnHoBZvDR5Vy7s7s55W', '3039603805', 'Yes', 0, 1, NULL, 'No'),
(158, 'Elaukli', 'Even', 'Laukli', 'even.laukli@colorado.edu', '$2y$10$npwtln7aigJrQGQnABWvy.Xet21zKCEFwlNesTAFh4Q4RkUZwIPI6', '2078380396', 'Yes', 0, 1, NULL, 'No'),
(159, 'Anonymoosellama', 'Elvin', 'Chateauvert', 'elvin.chateauvert@colorado.edu', '$2y$10$BBUbClh9J8Oit.dCZy2eN.DTpktEKaYLPduNlfe79NnkQ9PiI1Y1e', '8433240396', 'Yes', 0, 1, NULL, 'No'),
(160, 'Ricardo420p', 'Richard', 'Terrile', 'rite5632@colorado.edu', '$2y$10$jJhGfBY.BdVqnYoifsrIvOzmpvdJj8vdhusGLn5gPxX2Yrzuh9fTy', '6264877006', 'Yes', 0, 1, NULL, 'No'),
(161, 'MilaBergmann', 'Mila', 'Bergmann-Ruzicka', 'mibe0968@colorado.edu', '$2y$10$sIhb8nRZCe8P5zsHD50rG.0d34GIQ4Qe1XYHtr/bRdDX6itJOxvD2', '8083432759', 'Yes', 0, 1, NULL, 'No'),
(162, 'MilaBergmannR', 'Mila', 'Bergmann-Ruzicka', 'HypnoticTorch@gmail.com', '$2y$10$2qCw4fjAH921aUlM/pe9a.TcbH5lZyxJ.PZlxZqBVzlhpKkhB9UyO', '8083432759', 'Yes', 0, 1, NULL, 'No'),
(163, 'berrybrown', 'Mikey', 'Brown', 'mibr8352@colorado.edu', '$2y$10$J5F6HWI8amaK4QocIOZPrOzyiFjQqSWlxNdYyFdYvroKgovMbB1Oe', '7202536660', 'Yes', 0, 1, NULL, 'No'),
(164, 'Eily5', 'Eileen', 'Reh', 'eire0970@colorado.edu', '$2y$10$l3u.gmYzpaHltml4dVZQ.e.wYqP3Idy9DCpuhJxEwxJpSpRwMWbjK', '8582046261', 'Yes', 0, 1, NULL, 'No'),
(165, 'Lunamintie', 'Luna', 'Kander', 'kathryn.kander@colorado.edu', '$2y$10$P/y8TqcJBaeZSwrLzlQ5FukjkCt4bVu0w7pfvJC5yPCqC1Fi5jNSS', '7194591493', 'Yes', 0, 1, NULL, 'No'),
(166, 'ikarki', 'Isha', 'Karki', 'iska6979@colorado.edu', '$2y$10$t7Elh30zIxn/3lSoF2dCJejV5rMdbNpS8trfpXN/KdPfzaBcH7Ze2', '7202104510', 'Yes', 0, 1, NULL, 'No'),
(167, 'Nataliescheele', 'natalie', 'Scheele', 'nasc9623@colorado.edu', '$2y$10$2jZU37B2.K43zn3EMP/.weluPlJE9cl3Yu.AYFPhUGeuknB4j9RIW', '4155298842', 'Yes', 0, 1, NULL, 'No'),
(168, 'alexnichols67', 'Alex', 'Nichols', 'alni9764@colorado.edu', '$2y$10$mv4ejs903vtoef3iEQ99VucxuO6wd53Y6oSgCHYdSeeSmIp2F.Igy', '9732231442', 'Yes', 0, 1, NULL, 'No'),
(169, 'WutangAndy', 'Anderson', 'Mun', 'anmu8159@colorado.edu', '$2y$10$iQvYR8H3VS2tknkPnZQKHeDIMKY7MkPYyCULuWq4HES52fBXdMLuW', '3037201903', 'Yes', 0, 1, NULL, 'No'),
(170, 'Else9805', 'Elijah ', 'Sensibar ', 'else9805@colorado.edu', '$2y$10$tiJKC4N9Tp8eaWrZ9W.34empBYZGuhuHMpQ67HbYTdoZ2GaxwSVze', '5206645870', 'Yes', 0, 1, NULL, 'No'),
(171, 'MrGinger', 'Isaac', 'Dickerson', 'isdi9319@colorado.edu', '$2y$10$rM3kl1kyB2JihUZ.VifmGeUEAWBgacoxGXAKSQ9lOeKxB7V.CIA.u', '3037755134', 'Yes', 0, 1, NULL, 'No'),
(172, 'Swagatron', 'Seani', 'Anderson', 'seanianderson03@gmail.com', '$2y$10$FCJDv3fTqBgDkuE6hvJqG.Gb4lJjBPLt9fPymkDPsXImqvdG6OXnW', '7203913487', 'Yes', 0, 1, NULL, 'No'),
(173, 'Zikra', 'Zikra', 'Hashmi', 'ziha1747@colorado.edu', '$2y$10$vk3qbBlkDyYKTUkgXxYtg.kjT6H0Yh5QLI7jHOO8MgC4ILfA00Fbu', '7209398116', 'Yes', 0, 1, NULL, 'No'),
(174, 'Jeregami', 'Jeremy', 'Brown', 'Jebr7127@colorado.edu', '$2y$10$rDJKiqSqfPqTI9u2s8IvnOB9QbLRdghOvQ80aksHizDqcpFtA1I52', '7205524358', 'Yes', 1, 1, NULL, 'No'),
(175, 'cocomcalpine', 'Coco', 'McAlpine', 'comc2569@colorado.edu', '$2y$10$upaIdxii1ErNRsLly3NYFOyLf.kPHen3EoainSj3HJQXJlPI9fTyi', '4159394695', 'Yes', 0, 1, NULL, 'No'),
(176, 'Bellelavery', 'Belle', 'Lavery', 'isla3747@colorado.com', '$2y$10$zpV05ngHiQBuxqGOlli1Hu1hh1LESuk9fSY5rziVNzzEuRW2ItTYq', '6507409244', 'Yes', 0, 1, NULL, 'No'),
(177, 'Tez', 'Elise', 'Bloom', 'elisedancingqueen@yahoo.com', '$2y$10$iTisucpJjYi6SxtO8N3JZ./0qp/LiN90jyaawB1gSDvZsKHkr5sTi', NULL, 'Yes', 0, 1, NULL, 'No'),
(178, 'aziz626', 'Abdulaziz', 'Alabdulrazzaq', 'azizalabdulrazzaq@gmail.com', '$2y$10$rP/nTjlYnyQqt5bV5i6XHuYN5k017raaudpz27ItmILEBkPVuYr6G', '7202073213', 'Yes', 0, 1, NULL, 'No'),
(179, 'ErinKugler7', 'Erin', 'Kugler', 'erku1213@colorado.edu', '$2y$10$auC6HnuHru44tW.6mdWWOe9iEdhsVo66v/dvfRozWrMkfnra1K4Hm', '2157913138', 'Yes', 0, 1, NULL, 'No'),
(180, 'meganborchardt', 'Megan', 'Borchardt', 'mebo9701@colorado.edu', '$2y$10$0KLMYGYB80JRw82xTKqNLeittHiHaSjkiyz.y9lZ6/eZwIj/warOm', '3038294669', 'Yes', 0, 1, NULL, 'No'),
(181, 'sophben', 'Sophie', 'Benecick', 'sobe1438@colorado.edu', '$2y$10$tTVkIHKsAL5Qv4ebHdyzhO1QXav9x25zs3J2xR7L9Xm.b92eemndO', '2015190290', 'Yes', 0, 1, NULL, 'No'),
(182, 'thebirdman', 'Logan', 'Wagner', 'logandwagner@gmail.com', '$2y$10$uuexg4sbmAHKhARxG.FUtuMOWr9C0CtHdVBtxMnGkHU2ayX1SEjYy', '7203461498', 'Yes', 0, 1, NULL, 'No'),
(183, 'borkymcgee', 'Juno', 'Presken', 'juno.presken@gmail.com', '$2y$10$gorhasVA6.l2LqgQmx55lOTyzC4zdZHBBtjQWBNq787jeVg9TP/BO', '3035515356', 'Yes', 0, 1, NULL, 'No'),
(184, 'Gaga', 'Gaby', 'Garcia', 'gaga0997@gmail.com', '$2y$10$yNrJBgCyMM/wjOx/ZSacXuSreHNYUn3U4/EQHWIrfbOOKFQ5bhdy2', '7209036661', 'Yes', 0, 1, NULL, 'No'),
(185, 'Gaga0997', 'Gaby', 'Garcia', 'gaga0997@colorado.edu', '$2y$10$Pg0hULXkNyt6kLXB00htsuxqw1e0u.D7ztFoZ6gVS0/pIH45yd9ta', '7209036661', 'Yes', 0, 1, NULL, 'No'),
(186, 'Faswlya', 'Emily', 'Lee', 'emle7585@colorado.edu', '$2y$10$QZPuNpah5AI5fHekF.7l0eGgGz7fnodOUTS8ta/drVkMOy4yjcuKq', '7204124892', 'Yes', 0, 1, NULL, 'No'),
(187, 'xxmichellemtzxx', 'Michelle', 'Sanchez', 'eisa3025@colorado.edu', '$2y$10$zDyblBiDSUaVAgfBqJFUt.cmAnMpgzyquF6nDUHd/gYIWX6ErGeiq', '7193526021', 'Yes', 0, 1, NULL, 'No'),
(188, 'Abelgeb123', 'Abel', 'Gebretsadik', 'abelgebretsadik1996@gmail.com', '$2y$10$/QnYFWXUaILERUPAVofx4ueT7xYw2jCcooImRj0OEzzZMcQ8AI6bG', '7206022871', 'Yes', 0, 1, NULL, 'No'),
(189, 'Gcominelli', 'Giulia', 'Cominelli', 'gico2439@colorado.edu', '$2y$10$hMK9m6sFXXhLMmdoYP3PBO7BdqB3p18H.ZTFqbuUi4wHMDfPkJyrm', '7207238887', 'Yes', 0, 1, NULL, 'No'),
(190, 'Mancy', 'Mancy', 'Shah', 'mash7825@colorado.edu', '$2y$10$BHaiM9vQH8yxYnZhHZXI0OLdCoVbg10hNI5CKSzQxXykHUEBYe2wO', '7202172270', 'Yes', 0, 1, NULL, 'No'),
(191, 'shellulose', 'hai', 'li', 'hayu7527@colorado.edu', '$2y$10$U3Lm/TT9.xaOVDkt70dtAej1R5UopgCDs4HQvSt1ae9aOUyTy3OoO', '9705184718', 'Yes', 0, 1, NULL, 'No'),
(192, 'Thompson', 'Alex', 'Thompson', 'alth5662@colorado.edu', '$2y$10$.tDFPpAh40BIf/tM3gOL0eYBok.4ipGCe1Q8jzY78TGR./O1H.TCC', '2247171145', 'Yes', 0, 1, NULL, 'No'),
(193, 'olar6807', 'Olivia', 'Arjona', 'drammagoose098@gmail.com', '$2y$10$HPlEKBjeLRWq8fPZdiQZwuWkFT0wkX9LNK7tvydplT5TC20Y26fna', '3037201469', 'Yes', 0, 1, NULL, 'No'),
(194, 'phwu6529', 'Phillip', 'Wu', 'PHWU6529@GMAIL.COM', '$2y$10$AoRN3hcEcZc62pzRbyesc.4VWRuHcCH/dHyVX.fFOn0dFNmkEtbjW', '9737673636', 'Yes', 0, 1, NULL, 'No'),
(195, 'skrieger', 'Samantha', 'Krieger', 'skrieger.2015@gmail.com', '$2y$10$EkmbcvVdncW3owwUyvXK8OM8uDM1214LZGXj6y/7GbqLINPeol5Q6', '8157193455', 'Yes', 0, 1, NULL, 'No'),
(196, 'PapaGeorgio423', 'GEORGE', 'HUGHES', 'gehu3453@COLORADO.EDU', '$2y$10$yPM1f6vyfXcaDdDmbgBelO/NCcd5Fj3thEAU4FjURER5XF4tBEPEK', '9157066394', 'Yes', 0, 1, NULL, 'No'),
(197, 'sbarrette', 'Sam', 'Barrette', 'saba2244@colorado.edu', '$2y$10$czGhrcEt9rhBaQX8qvMhGeV6wmwlFYIxJVR5/KmvipSO1pUNa5y8G', '9789895510', 'Yes', 0, 1, NULL, 'No'),
(198, 'Kellenposacki', 'Kellen', 'Posacki', 'posackikellen@gmail.com', '$2y$10$nLJC.pF7Z9yTt/0P3d/KHe4FcA2H6VkTbQbOzi6AthSk2lAEiwnia', '3366094888', 'Yes', 0, 1, NULL, 'No'),
(199, 'connorlacey', 'Connor', 'Lacey', 'cola2087@colorado.edu', '$2y$10$JXGD3T68RK8Yg0WDYDa0IOhw.0eUS1GLYvqBQ2/IKP408wh9lGNkC', '6143151773', 'Yes', 0, 1, NULL, 'No'),
(200, 'Brucevalentine', 'Bruce', 'Valentine', 'brucevalentine123@icloud.com', '$2y$10$q0CHZYUw6y.gUtsYRfwfwO/SNmdbGYoLdlPWC2Ub1x8RujEK.N3GC', '3033304735', 'Yes', 0, 1, NULL, 'No'),
(201, 'connorlacey1', 'Connor', 'Lacey', 'laceyconnor@icloud.com', '$2y$10$Sc.H9.lIemSrJXEt5OpbTu7HP7DI8yRYV9XX0zvZAlxlvBHeDjM1e', '6143151773', 'Yes', 0, 1, NULL, 'No'),
(202, 'Luwe8329', 'lucy', 'weld', 'luwe8329@colorado.edu', '$2y$10$EXkDPJc5oqqjG3lBAgs89.brJoZfz.ZLu/mE127mYWI4V4/3hLTpq', '9148604545', 'Yes', 0, 1, NULL, 'No'),
(203, 'iceShelves', 'Pim', 'Maydhisudhiwongs', 'pima0202@colorado.edu', '$2y$10$0VMUfYgFDHyqlMTgt86E8.wbwGt9jRXtZwdvER.229uaU7rfl4DQO', '7203296239', 'Yes', 0, 1, NULL, 'No'),
(204, 'shakz', 'James', 'Dao', 'jada4845@colorado.edu', '$2y$10$zZTEH1CC18fyaxlPa4/ZHOI5kQLIeXQFSvUKsAz/TniAbJk9IDFaK', '3235474785', 'Yes', 0, 1, NULL, 'No'),
(205, 'jimbo50', 'Alexander', 'Karas', 'alexander.karas@colorado.edu', '$2y$10$d//jOQKDSzzt0ScTx9db7u5RcOU/eWMAkIAwJGlZpHbpgViMk9zn2', '3033495341', 'Yes', 0, 1, NULL, 'No'),
(206, 'ajkaras', 'Alexander', 'Karas', 'ajkaras@comcast.net', '$2y$10$I8btJwYKPZnuS9mPW0bCjen.R6atF6HlYwqYdt8PEmj6bAtRokXIa', '3033495341', 'Yes', 0, 1, NULL, 'No'),
(207, 'Ckamiel10', 'Casey', 'Kamiel', 'caka0065@colorado.edu', '$2y$10$RRU/grTiYXm0QUTnF/FPLe7LPJKi13pRdSfA8GSGlbxFzqIOgQvTC', '9739548804', 'Yes', 0, 1, NULL, 'No'),
(208, 'Chrisposacki', 'Chris', 'Posacki', 'christopher.posacki@colorado.edu', '$2y$10$bUG/YBDvitIox1YW0AIMT.eYhRVIcCw5pb7umn/oYeBI9/WP0tNLC', '3366094887', 'Yes', 0, 1, NULL, 'No'),
(209, 'Realdealkamiel', 'Casey', 'Kamiel', 'cticket61099@aol.com', '$2y$10$p/9171tl6xpu/kQt3fWcVupAW9d3q3jF0v9pPpG8v784aNBi/4pvm', '9739548804', 'Yes', 0, 1, NULL, 'No'),
(210, 'coren83', 'Coren', 'Lam', 'corenlam8@gmail.com', '$2y$10$/ThX9iucn44TBFtxyoLMP.8tuaGW32GM0ewwhL6fbNsU3DkGnKLMK', '3035499967', 'Yes', 0, 1, NULL, 'No'),
(211, 'ZombieCadet25', 'Andrew', 'Nguyen', 'anng7621@colorado.edu', '$2y$10$WZRFCYqSCxd5M02m469Tj.9D9m87qwgoauYZr.bpBVVlThv0Ymq5G', '7202809801', 'Yes', 0, 1, NULL, 'No'),
(212, 'InvertedCrossfader', 'Tristan', 'Ricci', 'trri8648@colorado.edu', '$2y$10$C1XjfKg3qa6njh4VI58W7.fTgGwu/eB1bvo0P3Ea1elrNQ.SHyqou', '7192211066', 'Yes', 0, 1, NULL, 'No'),
(213, 'baltschuler', 'Ben', 'Altschuler', 'beal3203@colorado.edu', '$2y$10$ur.SEkH46RCfx2GapXJtFOPgpgCJlXoFwd/KxurOY7d2ppWoZbhB2', '7204984605', 'Yes', 0, 1, NULL, 'No'),
(214, 'aazizh', 'Abdullah', 'Alhumaid', 'a.alhumaid99@gmail.com', '$2y$10$rcsYtlxcnUenueXlIyVBQuRCgkTHYLY9E.NPutwdeLVAuu7NF4iFC', '9703933555', 'Yes', 0, 1, NULL, 'No'),
(215, 'benaltschuler', 'Ben', 'Altschuler', 'baltschuler2000@gmail.com', '$2y$10$.guYQCzcYOP8LL/Y16dhjuoPRpfOhbu8hiDFgkwflzOL0GAaXOFmS', '7204984605', 'Yes', 0, 1, NULL, 'No'),
(216, 'alantheman', 'Alan ', 'Vaghedi', 'alva0349@colorado.edu', '$2y$10$1S3OwpBQJrY2LAN5/RQy/.j3KQplMp1hHPMzsJcHm9NzLCF40nxwq', '5713938667', 'Yes', 0, 1, NULL, 'No'),
(217, 'scottray19', 'scott', 'ray', 'scottyr19@hotmail.com', '$2y$10$G/uZQdkQvBPaqEY9kqIRY.nJ/d8QFl2ULM5eNSg9bRUI.XeU0yB6O', '4254638468', 'Yes', 0, 1, NULL, 'No'),
(218, 'CUCLAM3', 'Corey', 'Lam', 'clam382200@gmail.com', '$2y$10$cfZLPjVinxA/gL/gd8FPbeSJPHogMatnAi/LDlElvbLspKwGZRDUO', '3035502059', 'Yes', 0, 1, NULL, 'No'),
(219, 'yolodactyl', 'Aaron', 'Lombardi', 'aalo7987@colorado.edu', '$2y$10$4y57Oe5HItYbLdwKA3NQsOG1defKFEZqC3/halXKDPkC3SR/F9lIy', '7192256290', 'Yes', 0, 1, NULL, 'No'),
(220, 'CreativeFeeling', 'Kelsey', 'Adams', 'kead1599@colorado.edu', '$2y$10$TgwEq/s8y9xrk5sXI5bZeuZJTrPv33Rt1SBb02.g2KWdKkRn4hulu', '7039397554', 'Yes', 0, 1, NULL, 'No'),
(221, 'desc7849', 'Denny', 'Schaedig', 'desc7849@colorado.edu', '$2y$10$VsEZfA6Z6QH4v76puV2KDOuJxB3.eoxBJpJUzYCn3EohV9DnVIiuK', '3035072815', 'Yes', 0, 1, NULL, 'No'),
(222, 'Saint', 'Will', 'Bishop', 'bisa0401@colorado.edu', '$2y$10$15VMOXNFHrW93bY1JNoa/eVw2GU9LcI2b9MSD9YdoNJZAA66Rj.SS', '7202262328', 'Yes', 0, 1, NULL, 'No'),
(223, 'Adam98', 'Adam', 'Vega', 'adve3509@colorado.edu', '$2y$10$CQmjpuFtQ/PcDl4IS2EZauDMYxqai7JHb4GaPszMqpNNpdzBIvG3S', '9704155287', 'Yes', 0, 1, NULL, 'No'),
(224, 'joor228', 'Jorge', 'Ortiz', 'joor2163@colorado.edu', '$2y$10$T4jYZXUPMHzapewH655n1u01IPuNJLUniO1277ysjhxd5RlQu1naO', '7205570422', 'Yes', 0, 1, NULL, 'No'),
(225, 'Phoenixflash', 'Kimberly', 'Fung', 'kifu0187@colorado.edu', '$2y$10$cA4atf9T5fs0j6vDqv7uCO.JqLmqulHE.RY4RocHLQiKLI6nLtNqe', '3035624476', 'cd559fedaec523991e2d8d06ec75078a', 0, 1, NULL, 'No'),
(226, 'Trinityp', 'Trinity', 'Padilla', 'trinity.padilla@colorado.edu', '$2y$10$YGlOxnMvdB0mYsUhQMUyrOUOlfhfn0IZ1ochjvCujmWSuIQupSGyy', '9703192155', 'Yes', 0, 1, NULL, 'No'),
(227, 'Mast7851', 'Madison', 'Stratton', 'mast7851@colorado.edu', '$2y$10$PLBMUzHTxzlvhqUMCcPzGORBWL.9qGMlN4U0BH1/S3FbZbBsu/IlS', '8019001018', 'Yes', 0, 1, NULL, 'No'),
(228, 'Thyme', 'Thyme', 'Zuschlag', 'thyme.zuschlag@colorad.edu', '$2y$10$Vke4B4swdFn7/9l1Ox1X1uiYmgmRgFr13GOwIPho29Y1oniG/1Vm.', '9708462715', 'd7d4dc1bfe0c9f63eaf7871ff54334ef', 0, 1, NULL, 'No'),
(229, 'Hcallipari', 'Hayden', 'Callipari', 'blackbelthayden@me.com', '$2y$10$RTA4pxhGflxGDJER3BPFhuzgQNimcdpYLNcSm.qjtnjBqTDtGmHCy', '7205197400', 'Yes', 0, 1, NULL, 'No'),
(230, 'adda1846', 'Addie', 'Damron', 'adda1846@colorado.edu', '$2y$10$SQ4vCoX9B7bYHDSpx2lw..WWcMhlvVDqw.RagZvCY0rjiiLeXZMz6', '4146884281', 'Yes', 0, 1, NULL, 'No'),
(231, 'annaben777', 'Anna', 'Benson', 'annalisabenson01@gmail.com', '$2y$10$RsnmwSuS3RXjVOtpja/xV.nLO4SrOoOqDAVkkeVOC2SB0b5xxamIS', '3038566139', 'Yes', 0, 1, NULL, 'No'),
(232, 'Evan', 'Evan', 'Hanson', 'evha0005@colorado.edu', '$2y$10$.smRFJ7KqDv2f2IPbgdXS.oZzmGOznPigdfMzOdtU9hpKAQ4gW2ci', '7204800062', 'Yes', 0, 1, NULL, 'No'),
(233, 'jackjohnh00', 'Jack', 'Harless', 'jack.johnharless00@gmail.com', '$2y$10$31xAN7OCvnGIjAqoZNJXuu7Ai1vGK/IK0T0zydTXhQu/S5jOLVUTK', '7205458091', 'Yes', 0, 1, NULL, 'No'),
(234, 'jstone', 'Justin', 'Stone', 'just1749@colorado.edu', '$2y$10$AZdv.TpGa9l6ERp8HTijDeBlCr4V0l6OjozXMTio6WtXi93FrmLzy', '8086990795', 'Yes', 0, 1, NULL, 'No'),
(235, 'Jomi3845', 'Jonathan', 'Michou', 'jomi3845@colorado.edu', '$2y$10$Ph.6DVvk4YOE3gP1dfRdZuV8/EasnzXXFRCR8f0p4QAb7xtdzgXXm', '9072238302', 'Yes', 0, 1, NULL, 'No'),
(236, 'Shehila.Carter', 'Shehila', 'Carter', 'shehila.carter13@gmail.com', '$2y$10$gOhw.IW54n8fQmry5Tlt9OUdznStP7Zjmyqjs4Iv3uipMH8bmDyh.', '3038093999', 'Yes', 0, 1, NULL, 'No'),
(237, 'MarisaC21', 'Marisa', 'Cruz', 'marisa.cruz@colorado.edu', '$2y$10$9IF5sK3lDwTH8yRhL6E1iuYDt8m0ehkHHVcZB9Juhov5O63QvFnKi', '7192525332', 'Yes', 0, 1, NULL, 'No'),
(238, 'Xectus', 'Stephen', 'Gerwig', 's.gerwig24@gmail.com', '$2y$10$v8isK9bM8/heVwN6t47xkO/s7uxSammvxOb3ho9Xog8g4KSyaRQ5q', '7203006770', 'e74b2711940fa6a5a20f6bf8c7a418f1', 0, 1, NULL, 'No'),
(239, 'UnrealisticX', 'Ian', 'Quinn', 'ian.w.quinn2@gmail.com', '$2y$10$teLhAdYuNDrv.NIQbWybHu7L2tyI1TyAgkLVcjzvCOHaFWkIgpv/m', '3144359058', '494839451d102223ea12d46a4e7791ac', 0, 1, NULL, 'No'),
(240, 'Iane23', 'Ian', 'Ehlers', 'iaeh1777@colorado.edu', '$2y$10$f9DEPdEC0yucc6Jre.ewKO1iG4z9WUdVs1pLIBvlGtHWYsVOwSvmS', '9785056148', '281bfdebbeef94f8f6af2e5a4b58689d', 0, 1, NULL, 'No'),
(241, 'AceMcFlop', 'Mike', 'Linz', 'simpleshoe@gmail.com', '$2y$10$U8G4qs2ZV9pD2OvZdcrEUOus6MIAkTRomK1FKzcXYX3bRTphoH5/S', '7196412279', 'Yes', 0, 1, NULL, 'No'),
(242, 'Samrel556', 'Thomas', 'Sigler', 'thomas.sigler@colorado.edu', '$2y$10$YMx3Wb/Lp0i.d6dAJkTDd.tRbdkFRu9lapNaHA7VZaiMf9RqmStdC', '7202338965', '7bfc6ac8cca4d96c6c2087823c411d61', 0, 1, NULL, 'No'),
(243, 'shaanp', 'Shaan', 'Patel', 'shonoe18@gmail.com', '$2y$10$Oqj3vdY8ofXHHj9H/uG/ie.OBHT/fQX8yMs2U23LhA8MAhdOYZDH.', '8478002037', 'aba3bef6b8c8c1fca50b134564caba00', 0, 1, NULL, 'No'),
(244, 'camikburke', 'cameron', 'burke', 'cabu4385@colorado.edu', '$2y$10$DteaKKQJYw245rGkFLuvl.YFvTtMO/h0H46RtR8qC9UMBWwN2kvna', '6039210661', '6734830f859369f78ab0c41c3ee8ab27', 0, 1, NULL, 'No'),
(245, 'isabelmlo', 'Isabel', 'Lopez', 'islo0450@colorado.edu', '$2y$10$Fk5XYGwxP5y8jqEa59WntuHdQX5YeLL/ckcU7iWoVm/wBkHyqktBm', '7208545634', '0709c6143c0f40741648b7410eb6c535', 0, 1, NULL, 'No'),
(246, 'tiffanylee', 'Tiffany', 'Lee', 'tile5880@colorado.edu', '$2y$10$v0.RJHKHquFpOIymml9aCOibBIB1bQbRQGZSHxEJA8NxanLtUDD96', '9704492217', '812f1f9b4012eae55ef4bc4bc38fe23b', 0, 1, NULL, 'No'),
(247, 'rili5381', 'Rita', 'Livits', 'rili5381@colorado.edu', '$2y$10$sTs1X.GVF5gWY.kpjPY2w.2iv2ccR.hZk7sUGElJbvGLsTV7E3oiu', '7202988878', '3b745b3f645b09f3547907097740dcec', 0, 1, NULL, 'No'),
(248, 'Dannaconda', 'Danny', 'Viboch', 'dannyviboch@aol.com', '$2y$10$VoRU0II9IiIb/looSlWS0u57dlH85syAjYyX6I65wsI369z4HV44K', '8584725114', '234dc21e15255c45e1d25082b769815d', 0, 1, NULL, 'No'),
(249, 'ryyyyantaylor', 'Ryan', 'Taylor', 'ryan4125taylor@gmail.com', '$2y$10$FCzsTM6qUCeK/0kHNaU/ROcYRngbkJBar5NEi9Mo7mUyq.7wDw64y', '5624772165', 'Yes', 0, 1, NULL, 'No'),
(250, 'Toryblysik', 'Tory', 'Lysik', 'Toly1886@colorado.edu', '$2y$10$AgqsDS.KlHpEDrov/pRC5.fPhQ7uWtHhebcg.Ip1hZdQ.4WeLc3l.', '9107427134', 'b8971bd0c23a3a6a13be778c1258f437', 0, 1, NULL, 'No'),
(251, 'Oden', 'Caleb', 'Imboden', 'crawleb.ci@gmail.com', '$2y$10$ZUzQxeTZeLIX/TKMoJrF6e6jrPEWF.wR4UEGY3tnWC99Rzt9PhhSC', '8708347794', 'e70604ab29011eb9a57f451ca82c22d4', 0, 1, NULL, 'No'),
(252, 'wima5559', 'William', 'Maloney', 'wima5559@colorado.edu', '$2y$10$LUUWLB7Ymn2pXpoTfj1YtO7EtbKyY6ZZLtH.vi87nEQuH8lb7QBQK', '7205601637', '931f18f9c66f7bac6750354a30f59927', 0, 1, NULL, 'No'),
(253, 'paca7559', 'Patrick', 'Campbell', 'paca7559@colorado.edu', '$2y$10$wZP4mYEmOF/lKM2Gy33vquV1aVHgx42mK3tYy6NfcF/zKDn4G8qd.', '3039904038', 'f1eceda9be65a0f9eded5275ed933694', 0, 1, NULL, 'No'),
(254, 'ShreaG', 'Shrea', 'Ghosh', 'shgh8771@colorado.edu', '$2y$10$aVKN7ONEsE0SkchavWRvO.QBJuB6QEC/hZhYJ9TgY1.J6avaScXAy', '7203381319', '199d02e2c07a023f2ff9ceb4421839a8', 0, 1, NULL, 'No'),
(255, 'ShreaGhosh', 'Shrea', 'Ghosh', 'shreaghosh99@gmail.com', '$2y$10$ByBakHUFVKvXQtnnjy/wQu.dtlE8PYDjHhGmLELsZTs6/xN.ZtKAW', '7203381319', 'e9902f792bd1b581d066000e3e717e1a', 0, 1, NULL, 'No'),
(256, 'CasuallyCausal', 'Jamie', 'Warren', 'jawa8653@colorado.edu', '$2y$10$GuLDB08u92CciNxaU7G9oOiIKAzPK.LcHHtb.DzpklYaUnPWjqXCa', '3032148188', 'f38892287c7e5a5116739b5f0f304859', 0, 1, NULL, 'No'),
(257, 'Davydave00', 'Delvecchio', 'Wilson', 'dewi2605@colorado.edu', '$2y$10$fI2GauHewIYsG5wqnRDaQeiaiFlJOJv3yliLoY/V/sDdD8Ofa4sz6', '5053863449', 'c5df767980f4135877a584cd47022487', 0, 1, NULL, 'No'),
(258, 'dewi2605', 'Delvecchio', 'Wilson', 'davy.davew@gmail.com', '$2y$10$vjQB0.Ag0u/Scmi.cFplNuszRjRpuDniMh1PiXDKYuarw54yvNxEu', '5053863449', '6d370bf76ef3c8e652b4dd02887ab4b4', 0, 1, NULL, 'No'),
(259, 'Bufftin', 'Justin', 'Reeves', 'jure0127@colorado.edu', '$2y$10$NJegg1TIPTeZzRl6vOZa2uKzBlu.lHeXLxyrScNv5MRGw1E1JzKLm', '3038864362', 'ca3fabc3c94906f459e14b0762620ec2', 0, 1, NULL, 'No'),
(260, 'LHayes', 'Larsen', 'Hayes', 'laha5544@colorado.edu', '$2y$10$U27usXKMJv57fWpiHcqNEeZ9A0JxEa0sjZLzqLEFkQPdNix3RFAS.', '6199932782', '795d6a62caf477be8183ddddb4513150', 0, 1, NULL, 'No'),
(261, 'RanaTheunicorn', 'Rana ', 'Marghalani ', 'rmarrghalani@me.com', '$2y$10$UuBzExMSUyS2r/6s/u22H.ztMrwYdRy5CiYHr8PY1Cz12yX98BAVS', '7204277058', '724d3c7895c6f0dda4f393e1b257f4ae', 0, 1, NULL, 'No'),
(262, 'Ethan', 'Ethan', 'Herrold', 'ethan.herrold@colorado.edu', '$2y$10$TpCGrB3aEk3.D2MrURz1SuFtSb35yPZXHCYWxcd88.mJpLbA.M1R6', '3035656987', '38bab8bc11742b9f8058d9fb43304abe', 0, 1, NULL, 'No'),
(263, 'Ktburds', 'Kyle', 'Burds', 'ktburds@hotmail.com', '$2y$10$fKRP5GmlzWRvB3Skx8mQBeyG7BSQuNElwlqCa7Fr/ll0PuRG/U/y2', '3039031753', '08d554529148a3c8205681cc00ae54d1', 0, 1, NULL, 'No'),
(264, 'nohe', 'nohe', 'revelo', 'nohegeno@hotmail.com', '$2y$10$bR.XZLuunwK7revJ12NofOZu9tFOrw7/5WJB7HU85Us2iEiKNQMeu', '6124443252', '9476026f9a0cf63106a8acc7814c2170', 0, 1, NULL, 'No'),
(265, 'pjwarrior12', 'Ryan', 'Taylor', 'ryta4737@colorado.edu', '$2y$10$EN7pUvkLH/3oBzmrNlpvzuGwTeYL2GK4zIXOszb/xF.X8ALAL8tR.', '5624772165', 'Yes', 0, 1, NULL, 'No'),
(266, 'Clairewilcox', 'Claire', 'Wilcox', 'clairefwilcox@gmail.com', '$2y$10$XS.MzWrJIrEkhdrbvwnmt.IgC4zqgCVKgawKAJgmFBNDOMQi/hKzG', '6184209737', '82fc12ee6c56c038f32c531a65c6a884', 0, 1, NULL, 'No'),
(269, 'Tester', 'Test', 'User', 'josh.brown.3255@gmail.com', '$2y$10$ZOS372jb2TIAldvJo/JRZunYuiRrSI17FoLQtCOJBEuKlCrJUO90q', NULL, '72195b20868a796a66df194156cb315a', 0, 1, NULL, 'No'),
(270, 'Gary', 'Gary', 'Baines', 'champ.baines@gmail.com', '$2y$10$RXVfpoetlxDe2Fa7Y8sA/us3mpiPuUQFIpJ9YprN/z8.Qp8PqSDZa', '9014284074', '1302f607b6fd8cccb08ed70c43b9a072', 0, 1, NULL, 'No'),
(271, 'xXNerfan11Xx', 'Trent', 'Richardson', 'tmr710@gmail.com', '$2y$10$5tOn7kZWr1H0eNMvcyZFyOzvevWqcDfbo2gasF1wJOvahRmQIgdbC', '7195517040', 'Yes', 0, 1, NULL, 'No'),
(273, 'TestGuy', 'Test', 'Guy', 'golfinjosh@yahoo.com', '$2y$10$u10byIUGj0Yv/yUm0bNv0ebGkagni6EER04iamEd2nNUm/3xHcCDq', NULL, 'Yes', 0, 1, NULL, 'No');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
