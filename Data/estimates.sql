-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.5.8-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table test.estimates
CREATE TABLE IF NOT EXISTS `estimates` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `State` int(11) DEFAULT NULL,
  `Districts` int(11) DEFAULT NULL,
  `EstimatesPopulation` int(11) DEFAULT NULL,
  `EstimatesHouseholds` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=511 DEFAULT CHARSET=latin1;

-- Dumping data for table test.estimates: ~510 rows (approximately)
/*!40000 ALTER TABLE `estimates` DISABLE KEYS */;
INSERT INTO `estimates` (`Id`, `State`, `Districts`, `EstimatesPopulation`, `EstimatesHouseholds`) VALUES
	(1, 1, 2010, 2147429, 812112),
	(2, 2, 2010, 282121, 97868),
	(3, 3, 2010, 1207663, 453784),
	(4, 4, 2010, 1286314, 501787),
	(5, 5, 2010, 6424083, 2209806),
	(6, 6, 2010, 1415042, 550254),
	(7, 7, 2010, 999739, 381253),
	(8, 8, 2010, 232876, 88845),
	(9, 9, 2010, 91397, 36572),
	(10, 10, 2010, 4340656, 1647612),
	(11, 11, 2010, 3200904, 1157337),
	(12, 12, 2010, 310621, 98981),
	(13, 13, 2010, 619414, 231228),
	(14, 14, 2010, 3588513, 1353635),
	(15, 15, 2010, 2360689, 878804),
	(16, 16, 2010, 1488084, 589080),
	(17, 17, 2010, 1173174, 457614),
	(18, 18, 2010, 1703099, 647893),
	(19, 19, 2010, 1519673, 554252),
	(20, 20, 2010, 844278, 349755),
	(21, 21, 2010, 1500041, 538544),
	(22, 22, 2010, 2087609, 795981),
	(23, 23, 2010, 2955629, 1125242),
	(24, 24, 2010, 1939481, 770673),
	(25, 25, 2010, 1408322, 512090),
	(26, 26, 2010, 2280657, 888285),
	(27, 27, 2010, 463561, 186085),
	(28, 28, 2010, 722422, 284268),
	(29, 29, 2010, 469209, 178528),
	(30, 30, 2010, 727070, 283242),
	(31, 31, 2010, 2457022, 904727),
	(32, 32, 2010, 630836, 229556),
	(33, 33, 2010, 4620263, 1748343),
	(34, 34, 2010, 3050713, 1175512),
	(35, 35, 2010, 334494, 136232),
	(36, 36, 2010, 3535324, 1346145),
	(37, 37, 2010, 1450233, 549137),
	(38, 38, 2010, 1192255, 473253),
	(39, 39, 2010, 4297942, 1663957),
	(40, 40, 2010, 278044, 105193),
	(41, 41, 2010, 1531526, 573559),
	(42, 42, 2010, 444796, 171805),
	(43, 43, 2010, 2146316, 829860),
	(44, 44, 2010, 6624549, 2342698),
	(45, 45, 2010, 693696, 220886),
	(46, 46, 2010, 412249, 166448),
	(47, 47, 2010, 2733083, 1030221),
	(48, 48, 2010, 1723878, 675787),
	(49, 49, 2010, 1098210, 433652),
	(50, 50, 2010, 2143451, 855917),
	(51, 51, 2010, 244551, 96334),
	(52, 1, 2011, 2166768, 818402),
	(53, 2, 2011, 286092, 100484),
	(54, 3, 2011, 1241969, 458914),
	(55, 4, 2011, 1294582, 502332),
	(56, 5, 2011, 6496095, 2224687),
	(57, 6, 2011, 1440953, 556980),
	(58, 7, 2011, 1002054, 382252),
	(59, 8, 2011, 235069, 89280),
	(60, 9, 2011, 91270, 36560),
	(61, 10, 2011, 4396067, 1655523),
	(62, 11, 2011, 3253739, 1167322),
	(63, 12, 2011, 311369, 100019),
	(64, 13, 2011, 629259, 234084),
	(65, 14, 2011, 3604073, 1355577),
	(66, 15, 2011, 2373301, 883164),
	(67, 16, 2011, 1499535, 593423),
	(68, 17, 2011, 1183240, 457765),
	(69, 18, 2011, 1709829, 649130),
	(70, 19, 2011, 1536278, 562821),
	(71, 20, 2011, 846308, 350798),
	(72, 21, 2011, 1508126, 540439),
	(73, 22, 2011, 2100650, 801899),
	(74, 23, 2011, 2949458, 1121439),
	(75, 24, 2011, 1955827, 775109),
	(76, 25, 2011, 1418253, 515191),
	(77, 26, 2011, 2292173, 889735),
	(78, 27, 2011, 467574, 187454),
	(79, 28, 2011, 724440, 284701),
	(80, 29, 2011, 489291, 183651),
	(81, 30, 2011, 726910, 284290),
	(82, 31, 2011, 2470272, 907271),
	(83, 32, 2011, 635285, 230429),
	(84, 33, 2011, 4632962, 1753298),
	(85, 34, 2011, 3093797, 1187648),
	(86, 35, 2011, 335085, 136897),
	(87, 36, 2011, 3542575, 1347253),
	(88, 37, 2011, 1468324, 554429),
	(89, 38, 2011, 1203788, 476670),
	(90, 39, 2011, 4311409, 1670602),
	(91, 40, 2011, 277164, 105147),
	(92, 41, 2011, 1545303, 579384),
	(93, 42, 2011, 448161, 173498),
	(94, 43, 2011, 2161496, 832941),
	(95, 44, 2011, 6762660, 2380832),
	(96, 45, 2011, 711864, 225420),
	(97, 46, 2011, 412218, 167051),
	(98, 47, 2011, 2756846, 1035194),
	(99, 48, 2011, 1756802, 684360),
	(100, 49, 2011, 1102987, 434166),
	(101, 50, 2011, 2154746, 857689),
	(102, 51, 2011, 248149, 97830),
	(103, 1, 2012, 2181795, 821825),
	(104, 2, 2012, 290849, 100525),
	(105, 3, 2012, 1265581, 464865),
	(106, 4, 2012, 1301934, 505775),
	(107, 5, 2012, 6543941, 2232961),
	(108, 6, 2012, 1462698, 563998),
	(109, 7, 2012, 1006261, 382849),
	(110, 8, 2012, 237767, 89269),
	(111, 9, 2012, 92909, 36658),
	(112, 10, 2012, 4453602, 1663713),
	(113, 11, 2012, 3291662, 1174398),
	(114, 12, 2012, 315664, 101054),
	(115, 13, 2012, 636057, 235054),
	(116, 14, 2012, 3621341, 1360506),
	(117, 15, 2012, 2387972, 885939),
	(118, 16, 2012, 1504554, 595469),
	(119, 17, 2012, 1186342, 460085),
	(120, 18, 2012, 1716988, 653634),
	(121, 19, 2012, 1549146, 568399),
	(122, 20, 2012, 846187, 350630),
	(123, 21, 2012, 1523102, 543448),
	(124, 22, 2012, 2117222, 805595),
	(125, 23, 2012, 2944737, 1120426),
	(126, 24, 2012, 1960935, 776984),
	(127, 25, 2012, 1421121, 516943),
	(128, 26, 2012, 2304664, 890798),
	(129, 27, 2012, 471330, 189530),
	(130, 28, 2012, 726387, 285880),
	(131, 29, 2012, 498480, 187108),
	(132, 30, 2012, 727547, 285892),
	(133, 31, 2012, 2485880, 909739),
	(134, 32, 2012, 644756, 230965),
	(135, 33, 2012, 4645662, 1758327),
	(136, 34, 2012, 3134981, 1195806),
	(137, 35, 2012, 339111, 138606),
	(138, 36, 2012, 3543656, 1348852),
	(139, 37, 2012, 1478848, 555911),
	(140, 38, 2012, 1215580, 479142),
	(141, 39, 2012, 4322391, 1673800),
	(142, 40, 2012, 277706, 105322),
	(143, 41, 2012, 1566367, 584565),
	(144, 42, 2012, 452773, 174595),
	(145, 43, 2012, 2174672, 835378),
	(146, 44, 2012, 6882014, 2412519),
	(147, 45, 2012, 725589, 228693),
	(148, 46, 2012, 412727, 167358),
	(149, 47, 2012, 2783027, 1041875),
	(150, 48, 2012, 1781979, 690314),
	(151, 49, 2012, 1103534, 434997),
	(152, 50, 2012, 2165681, 859462),
	(153, 51, 2012, 252168, 99208),
	(154, 1, 2013, 2181030, 820891),
	(155, 2, 2013, 294654, 100141),
	(156, 3, 2013, 1282582, 469354),
	(157, 4, 2013, 1307882, 506075),
	(158, 5, 2013, 6590859, 2247788),
	(159, 6, 2013, 1479638, 568463),
	(160, 7, 2013, 1009084, 381619),
	(161, 8, 2013, 240624, 90095),
	(162, 9, 2013, 94230, 36831),
	(163, 10, 2013, 4519857, 1675083),
	(164, 11, 2013, 3309342, 1176004),
	(165, 12, 2013, 323289, 102449),
	(166, 13, 2013, 641482, 235922),
	(167, 14, 2013, 3635435, 1361577),
	(168, 15, 2013, 2393881, 887765),
	(169, 16, 2013, 1508612, 596499),
	(170, 17, 2013, 1192038, 460150),
	(171, 18, 2013, 1719999, 654635),
	(172, 19, 2013, 1561011, 572215),
	(173, 20, 2013, 844291, 351464),
	(174, 21, 2013, 1532934, 546612),
	(175, 22, 2013, 2126763, 807478),
	(176, 23, 2013, 2938917, 1122776),
	(177, 24, 2013, 1971783, 778004),
	(178, 25, 2013, 1419945, 514722),
	(179, 26, 2013, 2315627, 891998),
	(180, 27, 2013, 475508, 189233),
	(181, 28, 2013, 728406, 287273),
	(182, 29, 2013, 503283, 188684),
	(183, 30, 2013, 730387, 287787),
	(184, 31, 2013, 2498387, 911653),
	(185, 32, 2013, 647591, 230657),
	(186, 33, 2013, 4653742, 1756201),
	(187, 34, 2013, 3172208, 1204513),
	(188, 35, 2013, 345479, 140671),
	(189, 36, 2013, 3545126, 1349140),
	(190, 37, 2013, 1490308, 558874),
	(191, 38, 2013, 1218670, 480582),
	(192, 39, 2013, 4330617, 1672851),
	(193, 40, 2013, 278183, 105715),
	(194, 41, 2013, 1579027, 588977),
	(195, 42, 2013, 455597, 175763),
	(196, 43, 2013, 2185675, 837031),
	(197, 44, 2013, 7010254, 2440787),
	(198, 45, 2013, 733813, 229312),
	(199, 46, 2013, 412651, 167194),
	(200, 47, 2013, 2800813, 1045923),
	(201, 48, 2013, 1804989, 694594),
	(202, 49, 2013, 1103656, 433698),
	(203, 50, 2013, 2173453, 860434),
	(204, 51, 2013, 255983, 99975),
	(205, 1, 2014, 2184371, 819854),
	(206, 2, 2014, 296428, 100035),
	(207, 3, 2014, 1308280, 475287),
	(208, 4, 2014, 1309693, 506010),
	(209, 5, 2014, 6654395, 2262916),
	(210, 6, 2014, 1497330, 571893),
	(211, 7, 2014, 1013581, 383070),
	(212, 8, 2014, 243545, 90822),
	(213, 9, 2014, 95175, 37148),
	(214, 10, 2014, 4578154, 1689831),
	(215, 11, 2014, 3330543, 1182095),
	(216, 12, 2014, 330039, 103278),
	(217, 13, 2014, 646970, 237288),
	(218, 14, 2014, 3638992, 1363407),
	(219, 15, 2014, 2408100, 892416),
	(220, 16, 2014, 1516321, 600097),
	(221, 17, 2014, 1196358, 461064),
	(222, 18, 2014, 1720214, 656030),
	(223, 19, 2014, 1569228, 575548),
	(224, 20, 2014, 843564, 350746),
	(225, 21, 2014, 1543368, 548380),
	(226, 22, 2014, 2140505, 809595),
	(227, 23, 2014, 2938583, 1126496),
	(228, 24, 2014, 1982537, 779743),
	(229, 25, 2014, 1424460, 517415),
	(230, 26, 2014, 2319342, 890312),
	(231, 27, 2014, 478862, 190234),
	(232, 28, 2014, 729967, 287810),
	(233, 29, 2014, 509514, 190158),
	(234, 30, 2014, 730703, 289614),
	(235, 31, 2014, 2511463, 912146),
	(236, 32, 2014, 649425, 231129),
	(237, 33, 2014, 4667843, 1756910),
	(238, 34, 2014, 3191333, 1208953),
	(239, 35, 2014, 350473, 142570),
	(240, 36, 2014, 3547881, 1351116),
	(241, 37, 2014, 1503762, 560593),
	(242, 38, 2014, 1230354, 481989),
	(243, 39, 2014, 4337398, 1675584),
	(244, 40, 2014, 277365, 104917),
	(245, 41, 2014, 1595511, 594253),
	(246, 42, 2014, 460881, 177817),
	(247, 43, 2014, 2202541, 839483),
	(248, 44, 2014, 7121296, 2473690),
	(249, 45, 2014, 746150, 232475),
	(250, 46, 2014, 412201, 167308),
	(251, 47, 2014, 2819832, 1049874),
	(252, 48, 2014, 1828295, 699681),
	(253, 49, 2014, 1102004, 435279),
	(254, 50, 2014, 2176771, 861288),
	(255, 51, 2014, 258580, 101422),
	(256, 1, 2015, 2188640, 823282),
	(257, 2, 2015, 297232, 99339),
	(258, 3, 2015, 1325928, 480137),
	(259, 4, 2015, 1313984, 506878),
	(260, 5, 2015, 6712962, 2280040),
	(261, 6, 2015, 1524501, 579232),
	(262, 7, 2015, 1013011, 381367),
	(263, 8, 2015, 244904, 92224),
	(264, 9, 2015, 97503, 37890),
	(265, 10, 2015, 4645003, 1711998),
	(266, 11, 2015, 3355428, 1191968),
	(267, 12, 2015, 333546, 103202),
	(268, 13, 2015, 652882, 238545),
	(269, 14, 2015, 3637604, 1362992),
	(270, 15, 2015, 2417974, 895913),
	(271, 16, 2015, 1523806, 603350),
	(272, 17, 2015, 1196680, 460803),
	(273, 18, 2015, 1718513, 656490),
	(274, 19, 2015, 1573402, 577538),
	(275, 20, 2015, 843125, 350849),
	(276, 21, 2015, 1549676, 550357),
	(277, 22, 2015, 2156478, 814374),
	(278, 23, 2015, 2944573, 1131412),
	(279, 24, 2015, 1994228, 781567),
	(280, 25, 2015, 1423773, 517855),
	(281, 26, 2015, 2324284, 888516),
	(282, 27, 2015, 478578, 189761),
	(283, 28, 2015, 731716, 289580),
	(284, 29, 2015, 515584, 192667),
	(285, 30, 2015, 732706, 290184),
	(286, 31, 2015, 2521121, 912506),
	(287, 32, 2015, 649883, 231092),
	(288, 33, 2015, 4675165, 1756171),
	(289, 34, 2015, 3211804, 1214948),
	(290, 35, 2015, 355604, 144556),
	(291, 36, 2015, 3556132, 1356756),
	(292, 37, 2015, 1513497, 561693),
	(293, 38, 2015, 1239040, 483261),
	(294, 39, 2015, 4345156, 1675691),
	(295, 40, 2015, 278852, 105746),
	(296, 41, 2015, 1610310, 600031),
	(297, 42, 2015, 464593, 179144),
	(298, 43, 2015, 2208569, 843448),
	(299, 44, 2015, 7232044, 2503852),
	(300, 45, 2015, 754106, 234808),
	(301, 46, 2015, 412043, 167374),
	(302, 47, 2015, 2835487, 1053750),
	(303, 48, 2015, 1850926, 705968),
	(304, 49, 2015, 1098367, 433741),
	(305, 50, 2015, 2183295, 863489),
	(306, 51, 2015, 260631, 102246),
	(307, 1, 2016, 2194328, 823564),
	(308, 2, 2016, 296869, 99060),
	(309, 3, 2016, 1347501, 489966),
	(310, 4, 2016, 1317948, 509507),
	(311, 5, 2016, 6752528, 2292603),
	(312, 6, 2016, 1551041, 589160),
	(313, 7, 2016, 1013760, 382719),
	(314, 8, 2016, 250318, 94209),
	(315, 9, 2016, 99969, 38507),
	(316, 10, 2016, 4730432, 1736370),
	(317, 11, 2016, 3382128, 1201836),
	(318, 12, 2016, 336031, 103686),
	(319, 13, 2016, 659346, 241140),
	(320, 14, 2016, 3635006, 1369560),
	(321, 15, 2016, 2423868, 899917),
	(322, 16, 2016, 1530061, 607097),
	(323, 17, 2016, 1199976, 461771),
	(324, 18, 2016, 1720470, 658595),
	(325, 19, 2016, 1576738, 578165),
	(326, 20, 2016, 842729, 348537),
	(327, 21, 2016, 1554403, 552638),
	(328, 22, 2016, 2163824, 817306),
	(329, 23, 2016, 2947471, 1138043),
	(330, 24, 2016, 2003763, 783553),
	(331, 25, 2016, 1423320, 516980),
	(332, 26, 2016, 2329872, 888419),
	(333, 27, 2016, 481217, 190387),
	(334, 28, 2016, 734617, 290466),
	(335, 29, 2016, 524286, 194611),
	(336, 30, 2016, 734534, 290307),
	(337, 31, 2016, 2526366, 913551),
	(338, 32, 2016, 650808, 230778),
	(339, 33, 2016, 4678985, 1754769),
	(340, 34, 2016, 3224381, 1224696),
	(341, 35, 2016, 363248, 147190),
	(342, 36, 2016, 3551847, 1358795),
	(343, 37, 2016, 1524896, 563522),
	(344, 38, 2016, 1251229, 487486),
	(345, 39, 2016, 4342022, 1674633),
	(346, 40, 2016, 278941, 105471),
	(347, 41, 2016, 1631899, 607706),
	(348, 42, 2016, 467157, 179930),
	(349, 43, 2016, 2222420, 847445),
	(350, 44, 2016, 7335767, 2536067),
	(351, 45, 2016, 763995, 236939),
	(352, 46, 2016, 411518, 167184),
	(353, 47, 2016, 2845524, 1060322),
	(354, 48, 2016, 1870923, 712470),
	(355, 49, 2016, 1095915, 432858),
	(356, 50, 2016, 2186416, 867410),
	(357, 51, 2016, 263158, 102195),
	(358, 1, 2017, 2251824, 869033),
	(359, 2, 2017, 311809, 110632),
	(360, 3, 2017, 1438219, 536703),
	(361, 4, 2017, 1359759, 537220),
	(362, 5, 2017, 6931018, 2411586),
	(363, 6, 2017, 1652512, 640232),
	(364, 7, 2017, 1022621, 392043),
	(365, 8, 2017, 260207, 100829),
	(366, 9, 2017, 103197, 43013),
	(367, 10, 2017, 5016338, 1951628),
	(368, 11, 2017, 3509532, 1288591),
	(369, 12, 2017, 342167, 113306),
	(370, 13, 2017, 710719, 262321),
	(371, 14, 2017, 3679375, 1394482),
	(372, 15, 2017, 2475761, 925329),
	(373, 16, 2017, 1582115, 625155),
	(374, 17, 2017, 1230253, 474901),
	(375, 18, 2017, 1742029, 678245),
	(376, 19, 2017, 1599759, 598037),
	(377, 20, 2017, 868088, 364663),
	(378, 21, 2017, 1598123, 579352),
	(379, 22, 2017, 2200085, 850054),
	(380, 23, 2017, 3001109, 1162155),
	(381, 24, 2017, 2064528, 809879),
	(382, 25, 2017, 1447657, 539212),
	(383, 26, 2017, 2378356, 925311),
	(384, 27, 2017, 508854, 206622),
	(385, 28, 2017, 753483, 296687),
	(386, 29, 2017, 562062, 215553),
	(387, 30, 2017, 755739, 300302),
	(388, 31, 2017, 2543715, 937232),
	(389, 32, 2017, 674604, 254119),
	(390, 33, 2017, 4734487, 1809847),
	(391, 34, 2017, 3322812, 1296365),
	(392, 35, 2017, 382977, 156629),
	(393, 36, 2017, 3608249, 1388238),
	(394, 37, 2017, 1552811, 592195),
	(395, 38, 2017, 1308148, 521208),
	(396, 39, 2017, 4379134, 1710509),
	(397, 40, 2017, 279908, 107580),
	(398, 41, 2017, 1699636, 648989),
	(399, 42, 2017, 469923, 183834),
	(400, 43, 2017, 2288797, 891165),
	(401, 44, 2017, 7812354, 2793581),
	(402, 45, 2017, 820976, 257510),
	(403, 46, 2017, 422303, 170695),
	(404, 47, 2017, 2926179, 1112193),
	(405, 48, 2017, 1953843, 763327),
	(406, 49, 2017, 1097684, 443862),
	(407, 50, 2017, 2230560, 880821),
	(408, 51, 2017, 268998, 107666),
	(409, 1, 2022, 2320138, 895154),
	(410, 2, 2022, 326504, 115547),
	(411, 3, 2022, 1586017, 592470),
	(412, 4, 2022, 1428236, 563412),
	(413, 5, 2022, 7312621, 2550389),
	(414, 6, 2022, 1829028, 709185),
	(415, 7, 2022, 1036651, 398202),
	(416, 8, 2022, 273027, 105773),
	(417, 9, 2022, 104890, 43814),
	(418, 10, 2022, 5425330, 2111418),
	(419, 11, 2022, 3768926, 1385396),
	(420, 12, 2022, 360370, 120116),
	(421, 13, 2022, 763793, 281390),
	(422, 14, 2022, 3737171, 1415296),
	(423, 15, 2022, 2535720, 947483),
	(424, 16, 2022, 1628974, 643240),
	(425, 17, 2022, 1253534, 482757),
	(426, 18, 2022, 1781986, 693396),
	(427, 19, 2022, 1635289, 611024),
	(428, 20, 2022, 867756, 364249),
	(429, 21, 2022, 1677668, 608271),
	(430, 22, 2022, 2233452, 864380),
	(431, 23, 2022, 3025945, 1171108),
	(432, 24, 2022, 2146752, 841321),
	(433, 25, 2022, 1477659, 550375),
	(434, 26, 2022, 2431854, 946544),
	(435, 27, 2022, 530621, 215558),
	(436, 28, 2022, 773345, 303833),
	(437, 29, 2022, 611625, 233927),
	(438, 30, 2022, 772155, 306898),
	(439, 31, 2022, 2603575, 960200),
	(440, 32, 2022, 709100, 267095),
	(441, 33, 2022, 4741954, 1813703),
	(442, 34, 2022, 3466724, 1354107),
	(443, 35, 2022, 413577, 168950),
	(444, 36, 2022, 3622022, 1393090),
	(445, 37, 2022, 1608113, 613153),
	(446, 38, 2022, 1387484, 553760),
	(447, 39, 2022, 4456131, 1741523),
	(448, 40, 2022, 283360, 109068),
	(449, 41, 2022, 1764651, 674103),
	(450, 42, 2022, 481853, 188159),
	(451, 43, 2022, 2384069, 928602),
	(452, 44, 2022, 8411304, 3008614),
	(453, 45, 2022, 903554, 283126),
	(454, 46, 2022, 426289, 172319),
	(455, 47, 2022, 3053349, 1159391),
	(456, 48, 2022, 2053310, 805497),
	(457, 49, 2022, 1102724, 445443),
	(458, 50, 2022, 2299337, 907980),
	(459, 51, 2022, 281246, 112540),
	(460, 1, 2027, 2385704, 920395),
	(461, 2, 2027, 340310, 120386),
	(462, 3, 2027, 1737440, 650131),
	(463, 4, 2027, 1506311, 593149),
	(464, 5, 2027, 7693919, 2686939),
	(465, 6, 2027, 2008776, 779602),
	(466, 7, 2027, 1049802, 403743),
	(467, 8, 2027, 284814, 110362),
	(468, 9, 2027, 107410, 45063),
	(469, 10, 2027, 5841414, 2274871),
	(470, 11, 2027, 4045638, 1487784),
	(471, 12, 2027, 380094, 127337),
	(472, 13, 2027, 820648, 302004),
	(473, 14, 2027, 3794943, 1435368),
	(474, 15, 2027, 2591502, 968112),
	(475, 16, 2027, 1675535, 661202),
	(476, 17, 2027, 1276863, 490939),
	(477, 18, 2027, 1820429, 708138),
	(478, 19, 2027, 1674201, 625431),
	(479, 20, 2027, 865493, 363102),
	(480, 21, 2027, 1752051, 635484),
	(481, 22, 2027, 2258364, 874976),
	(482, 23, 2027, 3050535, 1179996),
	(483, 24, 2027, 2227285, 872005),
	(484, 25, 2027, 1506040, 561082),
	(485, 26, 2027, 2489388, 968817),
	(486, 27, 2027, 548935, 223123),
	(487, 28, 2027, 795374, 312017),
	(488, 29, 2027, 655952, 250596),
	(489, 30, 2027, 788185, 313349),
	(490, 31, 2027, 2664607, 983353),
	(491, 32, 2027, 743485, 280022),
	(492, 33, 2027, 4742292, 1814039),
	(493, 34, 2027, 3613922, 1413505),
	(494, 35, 2027, 442926, 180853),
	(495, 36, 2027, 3633962, 1397113),
	(496, 37, 2027, 1662368, 634011),
	(497, 38, 2027, 1469296, 586968),
	(498, 39, 2027, 4533612, 1772464),
	(499, 40, 2027, 286953, 110587),
	(500, 41, 2027, 1831839, 700375),
	(501, 42, 2027, 495595, 193298),
	(502, 43, 2027, 2480979, 966314),
	(503, 44, 2027, 9027313, 3229203),
	(504, 45, 2027, 991155, 310441),
	(505, 46, 2027, 428947, 173390),
	(506, 47, 2027, 3182788, 1207808),
	(507, 48, 2027, 2156846, 847465),
	(508, 49, 2027, 1105422, 446148),
	(509, 50, 2027, 2372937, 937156),
	(510, 51, 2027, 292933, 117229);
/*!40000 ALTER TABLE `estimates` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;