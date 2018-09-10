-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 10, 2018 at 01:14 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `croogothree_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `acos`
--

DROP TABLE IF EXISTS `acos`;
CREATE TABLE IF NOT EXISTS `acos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=362 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `acos`
--

INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, NULL, NULL, 'controllers', 1, 722),
(2, 1, NULL, NULL, 'Error', 2, 3),
(3, 1, NULL, NULL, 'Pages', 4, 7),
(4, 3, NULL, NULL, 'display', 5, 6),
(5, 1, NULL, NULL, 'Admin', 8, 9),
(6, 1, NULL, NULL, 'Acl', 10, 11),
(7, 1, NULL, NULL, 'BootstrapUI', 12, 13),
(8, 1, NULL, NULL, 'Croogo\\Acl', 14, 51),
(9, 8, NULL, NULL, 'Admin', 15, 50),
(10, 9, NULL, NULL, 'Actions', 16, 33),
(11, 10, NULL, NULL, 'index', 17, 18),
(12, 10, NULL, NULL, 'add', 19, 20),
(13, 10, NULL, NULL, 'edit', 21, 22),
(14, 10, NULL, NULL, 'delete', 23, 24),
(15, 10, NULL, NULL, 'move', 25, 26),
(16, 10, NULL, NULL, 'generate', 27, 28),
(17, 10, NULL, NULL, 'view', 29, 30),
(18, 10, NULL, NULL, 'getName', 31, 32),
(19, 9, NULL, NULL, 'Permissions', 34, 49),
(20, 19, NULL, NULL, 'index', 35, 36),
(21, 19, NULL, NULL, 'toggle', 37, 38),
(22, 19, NULL, NULL, 'view', 39, 40),
(23, 19, NULL, NULL, 'add', 41, 42),
(24, 19, NULL, NULL, 'edit', 43, 44),
(25, 19, NULL, NULL, 'delete', 45, 46),
(26, 19, NULL, NULL, 'getName', 47, 48),
(27, 1, NULL, NULL, 'Croogo\\Blocks', 52, 87),
(28, 27, NULL, NULL, 'Admin', 53, 86),
(29, 28, NULL, NULL, 'Blocks', 54, 71),
(30, 29, NULL, NULL, 'process', 55, 56),
(31, 29, NULL, NULL, 'toggle', 57, 58),
(32, 29, NULL, NULL, 'index', 59, 60),
(33, 29, NULL, NULL, 'view', 61, 62),
(34, 29, NULL, NULL, 'add', 63, 64),
(35, 29, NULL, NULL, 'edit', 65, 66),
(36, 29, NULL, NULL, 'delete', 67, 68),
(37, 29, NULL, NULL, 'getName', 69, 70),
(38, 28, NULL, NULL, 'Regions', 72, 85),
(39, 38, NULL, NULL, 'index', 73, 74),
(40, 38, NULL, NULL, 'view', 75, 76),
(41, 38, NULL, NULL, 'add', 77, 78),
(42, 38, NULL, NULL, 'edit', 79, 80),
(43, 38, NULL, NULL, 'delete', 81, 82),
(44, 38, NULL, NULL, 'getName', 83, 84),
(45, 1, NULL, NULL, 'Croogo\\Contacts', 88, 125),
(46, 45, NULL, NULL, 'Contacts', 89, 92),
(47, 46, NULL, NULL, 'view', 90, 91),
(48, 45, NULL, NULL, 'Admin', 93, 124),
(49, 48, NULL, NULL, 'Contacts', 94, 107),
(50, 49, NULL, NULL, 'index', 95, 96),
(51, 49, NULL, NULL, 'view', 97, 98),
(52, 49, NULL, NULL, 'add', 99, 100),
(53, 49, NULL, NULL, 'edit', 101, 102),
(54, 49, NULL, NULL, 'delete', 103, 104),
(55, 49, NULL, NULL, 'getName', 105, 106),
(56, 48, NULL, NULL, 'Messages', 108, 123),
(57, 56, NULL, NULL, 'process', 109, 110),
(58, 56, NULL, NULL, 'index', 111, 112),
(59, 56, NULL, NULL, 'view', 113, 114),
(60, 56, NULL, NULL, 'add', 115, 116),
(61, 56, NULL, NULL, 'edit', 117, 118),
(62, 56, NULL, NULL, 'delete', 119, 120),
(63, 56, NULL, NULL, 'getName', 121, 122),
(64, 1, NULL, NULL, 'Croogo\\Core', 126, 147),
(65, 64, NULL, NULL, 'Error', 127, 128),
(66, 64, NULL, NULL, 'Admin', 129, 146),
(67, 66, NULL, NULL, 'LinkChooser', 130, 145),
(68, 67, NULL, NULL, 'linkChooser', 131, 132),
(69, 67, NULL, NULL, 'index', 133, 134),
(70, 67, NULL, NULL, 'view', 135, 136),
(71, 67, NULL, NULL, 'add', 137, 138),
(72, 67, NULL, NULL, 'edit', 139, 140),
(73, 67, NULL, NULL, 'delete', 141, 142),
(74, 67, NULL, NULL, 'getName', 143, 144),
(75, 1, NULL, NULL, 'Croogo\\Dashboards', 148, 175),
(76, 75, NULL, NULL, 'Admin', 149, 174),
(77, 76, NULL, NULL, 'Dashboards', 150, 173),
(78, 77, NULL, NULL, 'index', 151, 152),
(79, 77, NULL, NULL, 'dashboard', 153, 154),
(80, 77, NULL, NULL, 'save', 155, 156),
(81, 77, NULL, NULL, 'delete', 157, 158),
(82, 77, NULL, NULL, 'toggle', 159, 160),
(83, 77, NULL, NULL, 'moveup', 161, 162),
(84, 77, NULL, NULL, 'movedown', 163, 164),
(85, 77, NULL, NULL, 'view', 165, 166),
(86, 77, NULL, NULL, 'add', 167, 168),
(87, 77, NULL, NULL, 'edit', 169, 170),
(88, 77, NULL, NULL, 'getName', 171, 172),
(89, 1, NULL, NULL, 'Croogo\\Extensions', 176, 239),
(90, 89, NULL, NULL, 'Admin', 177, 238),
(91, 90, NULL, NULL, 'Locales', 178, 195),
(92, 91, NULL, NULL, 'index', 179, 180),
(93, 91, NULL, NULL, 'activate', 181, 182),
(94, 91, NULL, NULL, 'deactivate', 183, 184),
(95, 91, NULL, NULL, 'add', 185, 186),
(96, 91, NULL, NULL, 'edit', 187, 188),
(97, 91, NULL, NULL, 'delete', 189, 190),
(98, 91, NULL, NULL, 'view', 191, 192),
(99, 91, NULL, NULL, 'getName', 193, 194),
(100, 90, NULL, NULL, 'Plugins', 196, 217),
(101, 100, NULL, NULL, 'index', 197, 198),
(102, 100, NULL, NULL, 'add', 199, 200),
(103, 100, NULL, NULL, 'delete', 201, 202),
(104, 100, NULL, NULL, 'toggle', 203, 204),
(105, 100, NULL, NULL, 'migrate', 205, 206),
(106, 100, NULL, NULL, 'moveup', 207, 208),
(107, 100, NULL, NULL, 'movedown', 209, 210),
(108, 100, NULL, NULL, 'view', 211, 212),
(109, 100, NULL, NULL, 'edit', 213, 214),
(110, 100, NULL, NULL, 'getName', 215, 216),
(111, 90, NULL, NULL, 'Themes', 218, 237),
(112, 111, NULL, NULL, 'index', 219, 220),
(113, 111, NULL, NULL, 'activate', 221, 222),
(114, 111, NULL, NULL, 'add', 223, 224),
(115, 111, NULL, NULL, 'editor', 225, 226),
(116, 111, NULL, NULL, 'save', 227, 228),
(117, 111, NULL, NULL, 'delete', 229, 230),
(118, 111, NULL, NULL, 'view', 231, 232),
(119, 111, NULL, NULL, 'edit', 233, 234),
(120, 111, NULL, NULL, 'getName', 235, 236),
(121, 1, NULL, NULL, 'Croogo\\FileManager', 240, 293),
(122, 121, NULL, NULL, 'Admin', 241, 292),
(123, 122, NULL, NULL, 'Attachments', 242, 259),
(124, 123, NULL, NULL, 'browse', 243, 244),
(125, 123, NULL, NULL, 'add', 245, 246),
(126, 123, NULL, NULL, 'process', 247, 248),
(127, 123, NULL, NULL, 'index', 249, 250),
(128, 123, NULL, NULL, 'view', 251, 252),
(129, 123, NULL, NULL, 'edit', 253, 254),
(130, 123, NULL, NULL, 'delete', 255, 256),
(131, 123, NULL, NULL, 'getName', 257, 258),
(132, 122, NULL, NULL, 'FileManager', 260, 291),
(133, 132, NULL, NULL, 'index', 261, 262),
(134, 132, NULL, NULL, 'browse', 263, 264),
(135, 132, NULL, NULL, 'editFile', 265, 266),
(136, 132, NULL, NULL, 'upload', 267, 268),
(137, 132, NULL, NULL, 'deleteFile', 269, 270),
(138, 132, NULL, NULL, 'deleteDirectory', 271, 272),
(139, 132, NULL, NULL, 'rename', 273, 274),
(140, 132, NULL, NULL, 'createDirectory', 275, 276),
(141, 132, NULL, NULL, 'createFile', 277, 278),
(142, 132, NULL, NULL, 'chmod', 279, 280),
(143, 132, NULL, NULL, 'view', 281, 282),
(144, 132, NULL, NULL, 'add', 283, 284),
(145, 132, NULL, NULL, 'edit', 285, 286),
(146, 132, NULL, NULL, 'delete', 287, 288),
(147, 132, NULL, NULL, 'getName', 289, 290),
(148, 1, NULL, NULL, 'Croogo\\Install', 294, 311),
(149, 148, NULL, NULL, 'Install', 295, 310),
(150, 149, NULL, NULL, 'index', 296, 297),
(151, 149, NULL, NULL, 'database', 298, 299),
(152, 149, NULL, NULL, 'data', 300, 301),
(153, 149, NULL, NULL, 'acl', 302, 303),
(154, 149, NULL, NULL, 'undo', 304, 305),
(155, 149, NULL, NULL, 'adminUser', 306, 307),
(156, 149, NULL, NULL, 'finish', 308, 309),
(157, 1, NULL, NULL, 'Croogo\\Menus', 312, 349),
(158, 157, NULL, NULL, 'Admin', 313, 348),
(159, 158, NULL, NULL, 'Links', 314, 333),
(160, 159, NULL, NULL, 'index', 315, 316),
(161, 159, NULL, NULL, 'delete', 317, 318),
(162, 159, NULL, NULL, 'moveup', 319, 320),
(163, 159, NULL, NULL, 'movedown', 321, 322),
(164, 159, NULL, NULL, 'process', 323, 324),
(165, 159, NULL, NULL, 'view', 325, 326),
(166, 159, NULL, NULL, 'add', 327, 328),
(167, 159, NULL, NULL, 'edit', 329, 330),
(168, 159, NULL, NULL, 'getName', 331, 332),
(169, 158, NULL, NULL, 'Menus', 334, 347),
(170, 169, NULL, NULL, 'index', 335, 336),
(171, 169, NULL, NULL, 'view', 337, 338),
(172, 169, NULL, NULL, 'add', 339, 340),
(173, 169, NULL, NULL, 'edit', 341, 342),
(174, 169, NULL, NULL, 'delete', 343, 344),
(175, 169, NULL, NULL, 'getName', 345, 346),
(176, 1, NULL, NULL, 'Croogo\\Meta', 350, 371),
(177, 176, NULL, NULL, 'Admin', 351, 370),
(178, 177, NULL, NULL, 'Meta', 352, 369),
(179, 178, NULL, NULL, 'deleteMeta', 353, 354),
(180, 178, NULL, NULL, 'addMeta', 355, 356),
(181, 178, NULL, NULL, 'index', 357, 358),
(182, 178, NULL, NULL, 'view', 359, 360),
(183, 178, NULL, NULL, 'add', 361, 362),
(184, 178, NULL, NULL, 'edit', 363, 364),
(185, 178, NULL, NULL, 'delete', 365, 366),
(186, 178, NULL, NULL, 'getName', 367, 368),
(187, 1, NULL, NULL, 'Croogo\\Nodes', 372, 423),
(188, 187, NULL, NULL, 'Nodes', 373, 384),
(189, 188, NULL, NULL, 'index', 374, 375),
(190, 188, NULL, NULL, 'term', 376, 377),
(191, 188, NULL, NULL, 'promoted', 378, 379),
(192, 188, NULL, NULL, 'search', 380, 381),
(193, 188, NULL, NULL, 'view', 382, 383),
(194, 187, NULL, NULL, 'Admin', 385, 414),
(195, 194, NULL, NULL, 'Nodes', 386, 413),
(196, 195, NULL, NULL, 'create', 387, 388),
(197, 195, NULL, NULL, 'update_paths', 389, 390),
(198, 195, NULL, NULL, 'delete_meta', 391, 392),
(199, 195, NULL, NULL, 'add_meta', 393, 394),
(200, 195, NULL, NULL, 'process', 395, 396),
(201, 195, NULL, NULL, 'toggle', 397, 398),
(202, 195, NULL, NULL, 'move', 399, 400),
(203, 195, NULL, NULL, 'index', 401, 402),
(204, 195, NULL, NULL, 'view', 403, 404),
(205, 195, NULL, NULL, 'add', 405, 406),
(206, 195, NULL, NULL, 'edit', 407, 408),
(207, 195, NULL, NULL, 'delete', 409, 410),
(208, 195, NULL, NULL, 'getName', 411, 412),
(209, 187, NULL, NULL, 'Api', 415, 422),
(210, 209, NULL, NULL, 'V10', 416, 421),
(211, 210, NULL, NULL, 'Nodes', 417, 420),
(212, 211, NULL, NULL, 'lookup', 418, 419),
(213, 1, NULL, NULL, 'Croogo\\Settings', 424, 479),
(214, 213, NULL, NULL, 'Admin', 425, 478),
(215, 214, NULL, NULL, 'Caches', 426, 441),
(216, 215, NULL, NULL, 'index', 427, 428),
(217, 215, NULL, NULL, 'clear', 429, 430),
(218, 215, NULL, NULL, 'view', 431, 432),
(219, 215, NULL, NULL, 'add', 433, 434),
(220, 215, NULL, NULL, 'edit', 435, 436),
(221, 215, NULL, NULL, 'delete', 437, 438),
(222, 215, NULL, NULL, 'getName', 439, 440),
(223, 214, NULL, NULL, 'Languages', 442, 457),
(224, 223, NULL, NULL, 'select', 443, 444),
(225, 223, NULL, NULL, 'index', 445, 446),
(226, 223, NULL, NULL, 'view', 447, 448),
(227, 223, NULL, NULL, 'add', 449, 450),
(228, 223, NULL, NULL, 'edit', 451, 452),
(229, 223, NULL, NULL, 'delete', 453, 454),
(230, 223, NULL, NULL, 'getName', 455, 456),
(231, 214, NULL, NULL, 'Settings', 458, 477),
(232, 231, NULL, NULL, 'prefix', 459, 460),
(233, 231, NULL, NULL, 'moveup', 461, 462),
(234, 231, NULL, NULL, 'movedown', 463, 464),
(235, 231, NULL, NULL, 'index', 465, 466),
(236, 231, NULL, NULL, 'view', 467, 468),
(237, 231, NULL, NULL, 'add', 469, 470),
(238, 231, NULL, NULL, 'edit', 471, 472),
(239, 231, NULL, NULL, 'delete', 473, 474),
(240, 231, NULL, NULL, 'getName', 475, 476),
(241, 1, NULL, NULL, 'Croogo\\Taxonomy', 480, 529),
(242, 241, NULL, NULL, 'Admin', 481, 528),
(243, 242, NULL, NULL, 'Terms', 482, 499),
(244, 243, NULL, NULL, 'index', 483, 484),
(245, 243, NULL, NULL, 'delete', 485, 486),
(246, 243, NULL, NULL, 'moveup', 487, 488),
(247, 243, NULL, NULL, 'movedown', 489, 490),
(248, 243, NULL, NULL, 'view', 491, 492),
(249, 243, NULL, NULL, 'add', 493, 494),
(250, 243, NULL, NULL, 'edit', 495, 496),
(251, 243, NULL, NULL, 'getName', 497, 498),
(252, 242, NULL, NULL, 'Types', 500, 513),
(253, 252, NULL, NULL, 'index', 501, 502),
(254, 252, NULL, NULL, 'view', 503, 504),
(255, 252, NULL, NULL, 'add', 505, 506),
(256, 252, NULL, NULL, 'edit', 507, 508),
(257, 252, NULL, NULL, 'delete', 509, 510),
(258, 252, NULL, NULL, 'getName', 511, 512),
(259, 242, NULL, NULL, 'Vocabularies', 514, 527),
(260, 259, NULL, NULL, 'index', 515, 516),
(261, 259, NULL, NULL, 'view', 517, 518),
(262, 259, NULL, NULL, 'add', 519, 520),
(263, 259, NULL, NULL, 'edit', 521, 522),
(264, 259, NULL, NULL, 'delete', 523, 524),
(265, 259, NULL, NULL, 'getName', 525, 526),
(266, 1, NULL, NULL, 'Croogo\\Users', 530, 603),
(267, 266, NULL, NULL, 'Users', 531, 550),
(268, 267, NULL, NULL, 'index', 532, 533),
(269, 267, NULL, NULL, 'add', 534, 535),
(270, 267, NULL, NULL, 'activate', 536, 537),
(271, 267, NULL, NULL, 'edit', 538, 539),
(272, 267, NULL, NULL, 'forgot', 540, 541),
(273, 267, NULL, NULL, 'reset', 542, 543),
(274, 267, NULL, NULL, 'login', 544, 545),
(275, 267, NULL, NULL, 'logout', 546, 547),
(276, 267, NULL, NULL, 'view', 548, 549),
(277, 266, NULL, NULL, 'Admin', 551, 592),
(278, 277, NULL, NULL, 'Roles', 552, 565),
(279, 278, NULL, NULL, 'index', 553, 554),
(280, 278, NULL, NULL, 'view', 555, 556),
(281, 278, NULL, NULL, 'add', 557, 558),
(282, 278, NULL, NULL, 'edit', 559, 560),
(283, 278, NULL, NULL, 'delete', 561, 562),
(284, 278, NULL, NULL, 'getName', 563, 564),
(285, 277, NULL, NULL, 'Users', 566, 591),
(286, 285, NULL, NULL, 'resetPassword', 567, 568),
(287, 285, NULL, NULL, 'login', 569, 570),
(288, 285, NULL, NULL, 'logout', 571, 572),
(289, 285, NULL, NULL, 'register', 573, 574),
(290, 285, NULL, NULL, 'forgot', 575, 576),
(291, 285, NULL, NULL, 'reset', 577, 578),
(292, 285, NULL, NULL, 'index', 579, 580),
(293, 285, NULL, NULL, 'view', 581, 582),
(294, 285, NULL, NULL, 'add', 583, 584),
(295, 285, NULL, NULL, 'edit', 585, 586),
(296, 285, NULL, NULL, 'delete', 587, 588),
(297, 285, NULL, NULL, 'getName', 589, 590),
(298, 266, NULL, NULL, 'Api', 593, 602),
(299, 298, NULL, NULL, 'V10', 594, 601),
(300, 299, NULL, NULL, 'Users', 595, 600),
(301, 300, NULL, NULL, 'lookup', 596, 597),
(302, 300, NULL, NULL, 'token', 598, 599),
(303, 1, NULL, NULL, 'Croogo\\Wysiwyg', 604, 605),
(304, 1, NULL, NULL, 'Migrations', 606, 607),
(305, 1, NULL, NULL, 'Search', 608, 609),
(306, 1, NULL, NULL, 'Assets', 610, 633),
(307, 306, NULL, NULL, 'Admin', 611, 632),
(308, 307, NULL, NULL, 'Assets', 612, 631),
(309, 308, NULL, NULL, 'index', 613, 614),
(310, 308, NULL, NULL, 'ajax', 615, 616),
(311, 308, NULL, NULL, 'file', 617, 618),
(312, 308, NULL, NULL, 'view', 619, 620),
(313, 308, NULL, NULL, 'add', 621, 622),
(314, 308, NULL, NULL, 'edit', 623, 624),
(315, 308, NULL, NULL, 'remove', 625, 626),
(316, 308, NULL, NULL, 'delete', 627, 628),
(317, 308, NULL, NULL, 'getName', 629, 630),
(318, 1, NULL, NULL, 'Croogo\\Ckeditor', 634, 635),
(319, 1, NULL, NULL, 'DebugKit', 636, 663),
(320, 319, NULL, NULL, 'Composer', 637, 640),
(321, 320, NULL, NULL, 'checkDependencies', 638, 639),
(322, 319, NULL, NULL, 'MailPreview', 641, 648),
(323, 322, NULL, NULL, 'index', 642, 643),
(324, 322, NULL, NULL, 'sent', 644, 645),
(325, 322, NULL, NULL, 'email', 646, 647),
(326, 319, NULL, NULL, 'Panels', 649, 654),
(327, 326, NULL, NULL, 'index', 650, 651),
(328, 326, NULL, NULL, 'view', 652, 653),
(329, 319, NULL, NULL, 'Requests', 655, 658),
(330, 329, NULL, NULL, 'view', 656, 657),
(331, 319, NULL, NULL, 'Toolbar', 659, 662),
(332, 331, NULL, NULL, 'clearCache', 660, 661),
(333, 1, NULL, NULL, 'Projects', 664, 719),
(334, 333, NULL, NULL, 'Categories', 665, 666),
(335, 333, NULL, NULL, 'Projects', 667, 672),
(336, 335, NULL, NULL, 'index', 668, 669),
(337, 335, NULL, NULL, 'view', 670, 671),
(338, 333, NULL, NULL, 'Tags', 673, 674),
(339, 333, NULL, NULL, 'Admin', 675, 718),
(340, 339, NULL, NULL, 'Categories', 676, 689),
(341, 340, NULL, NULL, 'index', 677, 678),
(342, 340, NULL, NULL, 'view', 679, 680),
(343, 340, NULL, NULL, 'add', 681, 682),
(344, 340, NULL, NULL, 'edit', 683, 684),
(345, 340, NULL, NULL, 'delete', 685, 686),
(346, 340, NULL, NULL, 'getName', 687, 688),
(347, 339, NULL, NULL, 'Projects', 690, 703),
(348, 347, NULL, NULL, 'index', 691, 692),
(349, 347, NULL, NULL, 'view', 693, 694),
(350, 347, NULL, NULL, 'add', 695, 696),
(351, 347, NULL, NULL, 'edit', 697, 698),
(352, 347, NULL, NULL, 'delete', 699, 700),
(353, 347, NULL, NULL, 'getName', 701, 702),
(354, 339, NULL, NULL, 'Tags', 704, 717),
(355, 354, NULL, NULL, 'index', 705, 706),
(356, 354, NULL, NULL, 'view', 707, 708),
(357, 354, NULL, NULL, 'add', 709, 710),
(358, 354, NULL, NULL, 'edit', 711, 712),
(359, 354, NULL, NULL, 'delete', 713, 714),
(360, 354, NULL, NULL, 'getName', 715, 716),
(361, 1, NULL, NULL, 'Sevag', 720, 721);

-- --------------------------------------------------------

--
-- Table structure for table `aros`
--

DROP TABLE IF EXISTS `aros`;
CREATE TABLE IF NOT EXISTS `aros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aros`
--

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, 'Roles', 1, 'Role-superadmin', 1, 4),
(2, NULL, 'Roles', 2, 'Role-registered', 5, 10),
(3, NULL, 'Roles', 3, 'Role-public', 11, 12),
(4, 2, 'Roles', 4, 'Role-admin', 6, 9),
(5, 4, 'Roles', 5, 'Role-publisher', 7, 8),
(6, 1, 'Users', 1, 'admin', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `aros_acos`
--

DROP TABLE IF EXISTS `aros_acos`;
CREATE TABLE IF NOT EXISTS `aros_acos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `_read` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `_update` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `_delete` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aros_acos`
--

INSERT INTO `aros_acos` (`id`, `aro_id`, `aco_id`, `_create`, `_read`, `_update`, `_delete`) VALUES
(1, 3, 47, '1', '1', '1', '1'),
(2, 3, 189, '1', '1', '1', '1'),
(3, 3, 190, '1', '1', '1', '1'),
(4, 3, 191, '1', '1', '1', '1'),
(5, 3, 192, '1', '1', '1', '1'),
(6, 3, 193, '1', '1', '1', '1'),
(7, 2, 268, '1', '1', '1', '1'),
(8, 3, 269, '1', '1', '1', '1'),
(9, 3, 270, '1', '1', '1', '1'),
(10, 2, 271, '1', '1', '1', '1'),
(11, 3, 272, '1', '1', '1', '1'),
(12, 3, 273, '1', '1', '1', '1'),
(13, 3, 274, '1', '1', '1', '1'),
(14, 2, 275, '1', '1', '1', '1'),
(15, 2, 288, '1', '1', '1', '1'),
(16, 2, 276, '1', '1', '1', '1'),
(17, 4, 77, '1', '1', '1', '1'),
(18, 5, 195, '1', '1', '1', '1'),
(19, 5, 169, '1', '1', '1', '1'),
(20, 5, 159, '1', '1', '1', '1'),
(21, 5, 29, '1', '1', '1', '1'),
(22, 5, 123, '1', '1', '1', '1'),
(23, 5, 132, '1', '1', '1', '1'),
(24, 5, 49, '1', '1', '1', '1'),
(25, 5, 56, '1', '1', '1', '1'),
(26, 4, 293, '1', '1', '1', '1'),
(27, 2, 336, '1', '1', '1', '1'),
(28, 2, 337, '1', '1', '1', '1'),
(29, 3, 337, '1', '1', '1', '1'),
(30, 3, 336, '1', '1', '1', '1'),
(31, 4, 336, '1', '1', '1', '1'),
(32, 4, 337, '1', '1', '1', '1'),
(33, 5, 337, '1', '1', '1', '1'),
(34, 5, 336, '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
CREATE TABLE IF NOT EXISTS `assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caption` text COLLATE utf8_unicode_ci,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rowid` int(11) DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mime_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `weight` int(11) DEFAULT '11',
  `updated` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `name`, `caption`, `model`, `rowid`, `attachment`, `mime_type`, `size`, `status`, `weight`, `updated`, `created`) VALUES
(1, 'red image', 'this is the caption', 'Projects.Projects', 5, 'assets/5b9615c99d8f4.jpg', 'image/jpeg', '67013', 1, 2, NULL, '2018-09-10 06:57:13'),
(2, 'dummy-375x500-mosque', NULL, 'Projects.Projects', 5, 'assets/5b9615c9cfd15.jpg', 'image/jpeg', '135903', 1, 1, NULL, '2018-09-10 06:57:13'),
(3, 'dummy-480x270-comb', NULL, 'Projects.Projects', 5, 'assets/5b9615cad65ea.jpg', 'image/jpeg', '47605', 1, 3, NULL, '2018-09-10 06:57:14'),
(4, 'dummy-540x960-rope', NULL, 'Projects.Projects', 5, 'assets/5b9615cb736da.jpg', 'image/jpeg', '263751', 1, 4, NULL, '2018-09-10 06:57:15'),
(5, 'dummy-683x1024-stones', NULL, 'Projects.Projects', 5, 'assets/5b9615cba4dcc.jpg', 'image/jpeg', '282002', 1, 5, NULL, '2018-09-10 06:57:15');

-- --------------------------------------------------------

--
-- Table structure for table `assets_phinxlog`
--

DROP TABLE IF EXISTS `assets_phinxlog`;
CREATE TABLE IF NOT EXISTS `assets_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

DROP TABLE IF EXISTS `blocks`;
CREATE TABLE IF NOT EXISTS `blocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `region_id` int(20) DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_title` tinyint(1) NOT NULL DEFAULT '1',
  `class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `element` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visibility_roles` text COLLATE utf8mb4_unicode_ci,
  `visibility_paths` text COLLATE utf8mb4_unicode_ci,
  `visibility_php` text COLLATE utf8mb4_unicode_ci,
  `params` text COLLATE utf8mb4_unicode_ci,
  `publish_start` datetime DEFAULT NULL,
  `publish_end` datetime DEFAULT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`id`, `region_id`, `title`, `alias`, `body`, `show_title`, `class`, `status`, `weight`, `element`, `visibility_roles`, `visibility_paths`, `visibility_php`, `params`, `publish_start`, `publish_end`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(3, 4, 'About', 'about', 'This is the content of your block. Can be modified in admin panel.', 1, '', 1, 2, '', '', '', '', '', NULL, NULL, '2009-12-20 03:07:39', NULL, '2009-07-26 17:13:14', NULL),
(5, 4, 'Meta', 'meta', '[menu:meta]', 1, '', 1, 6, '', '', '', '', '', NULL, NULL, '2009-12-22 05:17:39', NULL, '2009-09-12 06:36:22', NULL),
(6, 4, 'Blogroll', 'blogroll', '[menu:blogroll]', 1, '', 1, 4, '', '', '', '', '', NULL, NULL, '2009-12-20 03:07:33', NULL, '2009-09-12 23:33:27', NULL),
(7, 4, 'Categories', 'categories', '[vocabulary:categories type=\"blog\"]', 1, '', 1, 3, '', '', '', '', '', NULL, NULL, '2009-12-20 03:07:36', NULL, '2009-10-03 16:52:50', NULL),
(8, 4, 'Search', 'search', '', 0, '', 1, 1, 'Croogo/Nodes.search', '', '', '', '', NULL, NULL, '2009-12-20 03:07:39', NULL, '2009-12-20 03:07:27', NULL),
(9, 4, 'Recent Posts', 'recent_posts', '[node:recent_posts conditions=\"Nodes.type:blog\" order=\"Nodes.id DESC\" limit=\"5\"]', 1, '', 1, 5, '', '', '', '', '', NULL, NULL, '2010-04-08 21:09:31', NULL, '2009-12-22 05:17:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `slug`, `status`, `weight`, `created`, `modified`, `name`) VALUES
(1, 'cars', 1, 1, '2018-08-29 13:37:47', '2018-08-29 13:38:19', 'Cars'),
(2, 'motorcycles', 1, 2, '2018-08-29 13:38:08', '2018-08-29 13:38:26', 'Motorcycles'),
(3, 'trains', 1, 3, '2018-08-30 11:37:53', '2018-08-30 11:38:18', 'Trains');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(20) DEFAULT NULL,
  `model` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Node',
  `foreign_key` int(20) NOT NULL,
  `user_id` int(20) NOT NULL DEFAULT '0',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `model` (`model`,`foreign_key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `parent_id`, `model`, `foreign_key`, `user_id`, `name`, `email`, `website`, `ip`, `title`, `body`, `rating`, `status`, `notify`, `type`, `comment_type`, `lft`, `rght`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(1, NULL, 'Croogo/Nodes.Nodes', 1, 0, 'Mr Croogo', 'email@example.com', 'http://www.croogo.org', '127.0.0.1', '', 'Hi, this is the first comment.', NULL, 1, 0, 'blog', 'comment', 1, 2, '2009-12-25 12:00:00', NULL, '2009-12-25 12:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `address2` text COLLATE utf8mb4_unicode_ci,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_status` tinyint(1) NOT NULL DEFAULT '1',
  `message_archive` tinyint(1) NOT NULL DEFAULT '1',
  `message_count` int(11) NOT NULL DEFAULT '0',
  `message_spam_protection` tinyint(1) NOT NULL DEFAULT '0',
  `message_captcha` tinyint(1) NOT NULL DEFAULT '0',
  `message_notify` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `title`, `alias`, `body`, `name`, `position`, `address`, `address2`, `state`, `country`, `postcode`, `phone`, `fax`, `email`, `message_status`, `message_archive`, `message_count`, `message_spam_protection`, `message_captcha`, `message_notify`, `status`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(1, 'Contact', 'contact', '', '', '', '', '', '', '', '', '', '', 'you@your-site.com', 1, 0, 0, 0, 0, 1, 1, '2009-10-07 22:07:49', NULL, '2009-09-16 01:45:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `croogo_acl_phinxlog`
--

DROP TABLE IF EXISTS `croogo_acl_phinxlog`;
CREATE TABLE IF NOT EXISTS `croogo_acl_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `croogo_acl_phinxlog`
--

INSERT INTO `croogo_acl_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20160807104926, 'AclInitialMigration', '2018-09-10 03:50:13', '2018-09-10 03:50:14', 0);

-- --------------------------------------------------------

--
-- Table structure for table `croogo_blocks_phinxlog`
--

DROP TABLE IF EXISTS `croogo_blocks_phinxlog`;
CREATE TABLE IF NOT EXISTS `croogo_blocks_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `croogo_blocks_phinxlog`
--

INSERT INTO `croogo_blocks_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20160807104952, 'BlocksInitialMigration', '2018-09-10 03:50:14', '2018-09-10 03:50:15', 0);

-- --------------------------------------------------------

--
-- Table structure for table `croogo_ckeditor_phinxlog`
--

DROP TABLE IF EXISTS `croogo_ckeditor_phinxlog`;
CREATE TABLE IF NOT EXISTS `croogo_ckeditor_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `croogo_comments_phinxlog`
--

DROP TABLE IF EXISTS `croogo_comments_phinxlog`;
CREATE TABLE IF NOT EXISTS `croogo_comments_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `croogo_comments_phinxlog`
--

INSERT INTO `croogo_comments_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20160807105013, 'CommentsInitialMigration', '2018-09-10 03:50:20', '2018-09-10 03:50:21', 0);

-- --------------------------------------------------------

--
-- Table structure for table `croogo_contacts_phinxlog`
--

DROP TABLE IF EXISTS `croogo_contacts_phinxlog`;
CREATE TABLE IF NOT EXISTS `croogo_contacts_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `croogo_contacts_phinxlog`
--

INSERT INTO `croogo_contacts_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20160807105032, 'ContactsInitialMigration', '2018-09-10 03:50:21', '2018-09-10 03:50:22', 0);

-- --------------------------------------------------------

--
-- Table structure for table `croogo_dashboards_phinxlog`
--

DROP TABLE IF EXISTS `croogo_dashboards_phinxlog`;
CREATE TABLE IF NOT EXISTS `croogo_dashboards_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `croogo_dashboards_phinxlog`
--

INSERT INTO `croogo_dashboards_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20160807105058, 'DashboardsInitialMigration', '2018-09-10 03:50:26', '2018-09-10 03:50:26', 0);

-- --------------------------------------------------------

--
-- Table structure for table `croogo_extensions_phinxlog`
--

DROP TABLE IF EXISTS `croogo_extensions_phinxlog`;
CREATE TABLE IF NOT EXISTS `croogo_extensions_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `croogo_file_manager_phinxlog`
--

DROP TABLE IF EXISTS `croogo_file_manager_phinxlog`;
CREATE TABLE IF NOT EXISTS `croogo_file_manager_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `croogo_menus_phinxlog`
--

DROP TABLE IF EXISTS `croogo_menus_phinxlog`;
CREATE TABLE IF NOT EXISTS `croogo_menus_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `croogo_menus_phinxlog`
--

INSERT INTO `croogo_menus_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20160807105149, 'MenusInitialMigration', '2018-09-10 03:50:22', '2018-09-10 03:50:24', 0),
(20160807131950, 'UpgradeMenus', '2018-09-10 03:50:24', '2018-09-10 03:50:25', 0);

-- --------------------------------------------------------

--
-- Table structure for table `croogo_meta_phinxlog`
--

DROP TABLE IF EXISTS `croogo_meta_phinxlog`;
CREATE TABLE IF NOT EXISTS `croogo_meta_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `croogo_meta_phinxlog`
--

INSERT INTO `croogo_meta_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20160807105202, 'MetaInitialMigration', '2018-09-10 03:50:18', '2018-09-10 03:50:19', 0),
(20171120095100, 'MoveSiteMeta', '2018-09-10 03:50:19', '2018-09-10 03:50:19', 0);

-- --------------------------------------------------------

--
-- Table structure for table `croogo_nodes_phinxlog`
--

DROP TABLE IF EXISTS `croogo_nodes_phinxlog`;
CREATE TABLE IF NOT EXISTS `croogo_nodes_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `croogo_nodes_phinxlog`
--

INSERT INTO `croogo_nodes_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20160807105214, 'NodesInitialMigration', '2018-09-10 03:50:20', '2018-09-10 03:50:20', 0);

-- --------------------------------------------------------

--
-- Table structure for table `croogo_settings_phinxlog`
--

DROP TABLE IF EXISTS `croogo_settings_phinxlog`;
CREATE TABLE IF NOT EXISTS `croogo_settings_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `croogo_settings_phinxlog`
--

INSERT INTO `croogo_settings_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20160807105227, 'SettingsInitialMigration', '2018-09-10 03:50:27', '2018-09-10 03:50:28', 0),
(20171206045454, 'EnlargeLanguagesFields', '2018-09-10 03:50:28', '2018-09-10 03:50:28', 0);

-- --------------------------------------------------------

--
-- Table structure for table `croogo_taxonomy_phinxlog`
--

DROP TABLE IF EXISTS `croogo_taxonomy_phinxlog`;
CREATE TABLE IF NOT EXISTS `croogo_taxonomy_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `croogo_taxonomy_phinxlog`
--

INSERT INTO `croogo_taxonomy_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20160807105245, 'TaxonomyInitialMigration', '2018-09-10 03:50:15', '2018-09-10 03:50:17', 0);

-- --------------------------------------------------------

--
-- Table structure for table `croogo_users_phinxlog`
--

DROP TABLE IF EXISTS `croogo_users_phinxlog`;
CREATE TABLE IF NOT EXISTS `croogo_users_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `croogo_users_phinxlog`
--

INSERT INTO `croogo_users_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20160807105314, 'UsersInitialMigration', '2018-09-10 03:50:11', '2018-09-10 03:50:13', 0);

-- --------------------------------------------------------

--
-- Table structure for table `croogo_wysiwyg_phinxlog`
--

DROP TABLE IF EXISTS `croogo_wysiwyg_phinxlog`;
CREATE TABLE IF NOT EXISTS `croogo_wysiwyg_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dashboards`
--

DROP TABLE IF EXISTS `dashboards`;
CREATE TABLE IF NOT EXISTS `dashboards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(20) NOT NULL DEFAULT '0',
  `column` int(20) NOT NULL DEFAULT '0',
  `weight` int(20) NOT NULL DEFAULT '0',
  `collapsed` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `updated` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboards`
--

INSERT INTO `dashboards` (`id`, `alias`, `user_id`, `column`, `weight`, `collapsed`, `status`, `updated`, `created`) VALUES
(1, 'dashboards-blogfeed', 1, 2, 0, 1, 1, NULL, '2018-09-10 08:01:00');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `native` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `weight` int(11) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_languages_locale` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=698 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `title`, `native`, `alias`, `locale`, `status`, `weight`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(1, 'Afrikaans', '', 'af', 'af', 0, 1, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(2, 'Afrikaans (Namibia)', 'Namibië', 'af', 'af_NA', 0, 2, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(3, 'Afrikaans (South Africa)', 'Suid-Afrika', 'af', 'af_ZA', 0, 3, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(4, 'Aghem', '', 'agq', 'agq', 0, 4, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(5, 'Aghem (Cameroon)', 'Kàmàlûŋ', 'agq', 'agq_CM', 0, 5, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(6, 'Akan', '', 'ak', 'ak', 0, 6, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(7, 'Akan (Ghana)', 'Gaana', 'ak', 'ak_GH', 0, 7, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(8, 'Amharic', '', 'am', 'am', 0, 8, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(9, 'Amharic (Ethiopia)', 'ኢትዮጵያ', 'am', 'am_ET', 0, 9, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(10, 'Arabic', '', 'ar', 'ar', 1, 10, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(11, 'Arabic (World)', 'العالم', 'ar', 'ar_001', 0, 11, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(12, 'Arabic (United Arab Emirates)', 'الإمارات العربية المتحدة', 'ar', 'ar_AE', 0, 12, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(13, 'Arabic (Bahrain)', 'البحرين', 'ar', 'ar_BH', 0, 13, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(14, 'Arabic (Djibouti)', 'جيبوتي', 'ar', 'ar_DJ', 0, 14, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(15, 'Arabic (Algeria)', 'الجزائر', 'ar', 'ar_DZ', 0, 15, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(16, 'Arabic (Egypt)', 'مصر', 'ar', 'ar_EG', 0, 16, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(17, 'Arabic (Western Sahara)', 'الصحراء الغربية', 'ar', 'ar_EH', 0, 17, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(18, 'Arabic (Eritrea)', 'إريتريا', 'ar', 'ar_ER', 0, 18, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(19, 'Arabic (Israel)', 'إسرائيل', 'ar', 'ar_IL', 0, 19, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(20, 'Arabic (Iraq)', 'العراق', 'ar', 'ar_IQ', 0, 20, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(21, 'Arabic (Jordan)', 'الأردن', 'ar', 'ar_JO', 0, 21, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(22, 'Arabic (Comoros)', 'جزر القمر', 'ar', 'ar_KM', 0, 22, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(23, 'Arabic (Kuwait)', 'الكويت', 'ar', 'ar_KW', 0, 23, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(24, 'Arabic (Lebanon)', 'لبنان', 'ar', 'ar_LB', 0, 24, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(25, 'Arabic (Libya)', 'ليبيا', 'ar', 'ar_LY', 0, 25, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(26, 'Arabic (Morocco)', 'المغرب', 'ar', 'ar_MA', 0, 26, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(27, 'Arabic (Mauritania)', 'موريتانيا', 'ar', 'ar_MR', 0, 27, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(28, 'Arabic (Oman)', 'عُمان', 'ar', 'ar_OM', 0, 28, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(29, 'Arabic (Palestinian Territories)', 'الأراضي الفلسطينية', 'ar', 'ar_PS', 0, 29, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(30, 'Arabic (Qatar)', 'قطر', 'ar', 'ar_QA', 0, 30, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(31, 'Arabic (Saudi Arabia)', 'المملكة العربية السعودية', 'ar', 'ar_SA', 0, 31, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(32, 'Arabic (Sudan)', 'السودان', 'ar', 'ar_SD', 0, 32, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(33, 'Arabic (Somalia)', 'الصومال', 'ar', 'ar_SO', 0, 33, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(34, 'Arabic (South Sudan)', 'جنوب السودان', 'ar', 'ar_SS', 0, 34, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(35, 'Arabic (Syria)', 'سوريا', 'ar', 'ar_SY', 0, 35, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(36, 'Arabic (Chad)', 'تشاد', 'ar', 'ar_TD', 0, 36, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(37, 'Arabic (Tunisia)', 'تونس', 'ar', 'ar_TN', 0, 37, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(38, 'Arabic (Yemen)', 'اليمن', 'ar', 'ar_YE', 0, 38, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(39, 'Assamese', '', 'as', 'as', 0, 39, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(40, 'Assamese (India)', 'ভাৰত', 'as', 'as_IN', 0, 40, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(41, 'Asu', '', 'asa', 'asa', 0, 41, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(42, 'Asu (Tanzania)', 'Tadhania', 'asa', 'asa_TZ', 0, 42, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(43, 'Asturian', '', 'ast', 'ast', 0, 43, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(44, 'Asturian (Spain)', 'España', 'ast', 'ast_ES', 0, 44, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(45, 'Azerbaijani', '', 'az', 'az', 0, 45, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(46, 'Azerbaijani (Cyrillic)', '', 'az', 'az_Cyrl', 0, 46, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(47, 'Azerbaijani (Cyrillic, Azerbaijan)', 'Азәрбајҹан', 'az', 'az_Cyrl_AZ', 0, 47, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(48, 'Azerbaijani (Latin)', '', 'az', 'az_Latn', 0, 48, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(49, 'Azerbaijani (Latin, Azerbaijan)', 'Azərbaycan', 'az', 'az_Latn_AZ', 0, 49, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(50, 'Basaa', '', 'bas', 'bas', 0, 50, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(51, 'Basaa (Cameroon)', 'Kàmɛ̀rûn', 'bas', 'bas_CM', 0, 51, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(52, 'Belarusian', '', 'be', 'be', 0, 52, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(53, 'Belarusian (Belarus)', 'Беларусь', 'be', 'be_BY', 0, 53, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(54, 'Bemba', '', 'bem', 'bem', 0, 54, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(55, 'Bemba (Zambia)', 'Zambia', 'bem', 'bem_ZM', 0, 55, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(56, 'Bena', '', 'bez', 'bez', 0, 56, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(57, 'Bena (Tanzania)', 'Hutanzania', 'bez', 'bez_TZ', 0, 57, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(58, 'Bulgarian', '', 'bg', 'bg', 1, 58, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(59, 'Bulgarian (Bulgaria)', 'България', 'bg', 'bg_BG', 0, 59, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(60, 'Bambara', '', 'bm', 'bm', 0, 60, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(61, 'Bambara (Mali)', 'Mali', 'bm', 'bm_ML', 0, 61, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(62, 'Bengali', '', 'bn', 'bn', 0, 62, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(63, 'Bengali (Bangladesh)', 'বাংলাদেশ', 'bn', 'bn_BD', 0, 63, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(64, 'Bengali (India)', 'ভারত', 'bn', 'bn_IN', 0, 64, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(65, 'Tibetan', '', 'bo', 'bo', 0, 65, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(66, 'Tibetan (China)', 'རྒྱ་ནག', 'bo', 'bo_CN', 0, 66, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(67, 'Tibetan (India)', 'རྒྱ་གར་', 'bo', 'bo_IN', 0, 67, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(68, 'Breton', '', 'br', 'br', 0, 68, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(69, 'Breton (France)', 'Frañs', 'br', 'br_FR', 0, 69, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(70, 'Bodo', '', 'brx', 'brx', 0, 70, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(71, 'Bodo (India)', 'भारत', 'brx', 'brx_IN', 0, 71, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(72, 'Bosnian', '', 'bs', 'bs', 0, 72, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(73, 'Bosnian (Cyrillic)', '', 'bs', 'bs_Cyrl', 0, 73, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(74, 'Bosnian (Cyrillic, Bosnia & Herzegovina)', 'Босна и Херцеговина', 'bs', 'bs_Cyrl_BA', 0, 74, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(75, 'Bosnian (Latin)', '', 'bs', 'bs_Latn', 0, 75, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(76, 'Bosnian (Latin, Bosnia & Herzegovina)', 'Bosna i Hercegovina', 'bs', 'bs_Latn_BA', 0, 76, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(77, 'Catalan', '', 'ca', 'ca', 0, 77, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(78, 'Catalan (Andorra)', 'Andorra', 'ca', 'ca_AD', 0, 78, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(79, 'Catalan (Spain)', 'Espanya', 'ca', 'ca_ES', 0, 79, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(80, 'Catalan (France)', 'França', 'ca', 'ca_FR', 0, 80, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(81, 'Catalan (Italy)', 'Itàlia', 'ca', 'ca_IT', 0, 81, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(82, 'Chechen', '', 'ce', 'ce', 0, 82, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(83, 'Chechen (Russia)', 'Росси', 'ce', 'ce_RU', 0, 83, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(84, 'Chiga', '', 'cgg', 'cgg', 0, 84, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(85, 'Chiga (Uganda)', 'Uganda', 'cgg', 'cgg_UG', 0, 85, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(86, 'Cherokee', '', 'chr', 'chr', 0, 86, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(87, 'Cherokee (United States)', 'ᎠᎹᏰᏟ', 'chr', 'chr_US', 0, 87, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(88, 'Czech', '', 'cs', 'cs', 1, 88, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(89, 'Czech (Czech Republic)', 'Česká republika', 'cs', 'cs_CZ', 0, 89, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(90, 'Welsh', '', 'cy', 'cy', 0, 90, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(91, 'Welsh (United Kingdom)', 'Y Deyrnas Unedig', 'cy', 'cy_GB', 0, 91, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(92, 'Danish', '', 'da', 'da', 0, 92, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(93, 'Danish (Denmark)', 'Danmark', 'da', 'da_DK', 0, 93, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(94, 'Danish (Greenland)', 'Grønland', 'da', 'da_GL', 0, 94, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(95, 'Taita', '', 'dav', 'dav', 0, 95, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(96, 'Taita (Kenya)', 'Kenya', 'dav', 'dav_KE', 0, 96, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(97, 'German', '', 'de', 'de', 1, 97, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(98, 'German (Austria)', 'Österreich', 'de', 'de_AT', 0, 98, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(99, 'German (Belgium)', 'Belgien', 'de', 'de_BE', 0, 99, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(100, 'German (Switzerland)', 'Schweiz', 'de', 'de_CH', 0, 100, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(101, 'German (Germany)', 'Deutschland', 'de', 'de_DE', 0, 101, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(102, 'German (Liechtenstein)', 'Liechtenstein', 'de', 'de_LI', 0, 102, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(103, 'German (Luxembourg)', 'Luxemburg', 'de', 'de_LU', 0, 103, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(104, 'Zarma', '', 'dje', 'dje', 0, 104, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(105, 'Zarma (Niger)', 'Nižer', 'dje', 'dje_NE', 0, 105, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(106, 'Lower Sorbian', '', 'dsb', 'dsb', 0, 106, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(107, 'Lower Sorbian (Germany)', 'Nimska', 'dsb', 'dsb_DE', 0, 107, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(108, 'Duala', '', 'dua', 'dua', 0, 108, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(109, 'Duala (Cameroon)', 'Cameroun', 'dua', 'dua_CM', 0, 109, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(110, 'Jola-Fonyi', '', 'dyo', 'dyo', 0, 110, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(111, 'Jola-Fonyi (Senegal)', 'Senegal', 'dyo', 'dyo_SN', 0, 111, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(112, 'Dzongkha', '', 'dz', 'dz', 0, 112, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(113, 'Dzongkha (Bhutan)', 'འབྲུག', 'dz', 'dz_BT', 0, 113, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(114, 'Embu', '', 'ebu', 'ebu', 0, 114, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(115, 'Embu (Kenya)', 'Kenya', 'ebu', 'ebu_KE', 0, 115, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(116, 'Ewe', '', 'ee', 'ee', 0, 116, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(117, 'Ewe (Ghana)', 'Ghana nutome', 'ee', 'ee_GH', 0, 117, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(118, 'Ewe (Togo)', 'Togo nutome', 'ee', 'ee_TG', 0, 118, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(119, 'Greek', '', 'el', 'el', 1, 119, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(120, 'Greek (Cyprus)', 'Κύπρος', 'el', 'el_CY', 0, 120, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(121, 'Greek (Greece)', 'Ελλάδα', 'el', 'el_GR', 0, 121, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(122, 'English', '', 'en', 'en', 1, 122, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(123, 'English (World)', 'World', 'en', 'en_001', 0, 123, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(124, 'English (Europe)', 'Europe', 'en', 'en_150', 0, 124, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(125, 'English (Antigua & Barbuda)', 'Antigua & Barbuda', 'en', 'en_AG', 0, 125, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(126, 'English (Anguilla)', 'Anguilla', 'en', 'en_AI', 0, 126, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(127, 'English (American Samoa)', 'American Samoa', 'en', 'en_AS', 0, 127, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(128, 'English (Austria)', 'Austria', 'en', 'en_AT', 0, 128, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(129, 'English (Australia)', 'Australia', 'en', 'en_AU', 0, 129, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(130, 'English (Barbados)', 'Barbados', 'en', 'en_BB', 0, 130, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(131, 'English (Belgium)', 'Belgium', 'en', 'en_BE', 0, 131, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(132, 'English (Burundi)', 'Burundi', 'en', 'en_BI', 0, 132, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(133, 'English (Bermuda)', 'Bermuda', 'en', 'en_BM', 0, 133, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(134, 'English (Bahamas)', 'Bahamas', 'en', 'en_BS', 0, 134, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(135, 'English (Botswana)', 'Botswana', 'en', 'en_BW', 0, 135, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(136, 'English (Belize)', 'Belize', 'en', 'en_BZ', 0, 136, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(137, 'English (Canada)', 'Canada', 'en', 'en_CA', 0, 137, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(138, 'English (Cocos [Keeling] Islands)', 'Cocos (Keeling) Islands', 'en', 'en_CC', 0, 138, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(139, 'English (Switzerland)', 'Switzerland', 'en', 'en_CH', 0, 139, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(140, 'English (Cook Islands)', 'Cook Islands', 'en', 'en_CK', 0, 140, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(141, 'English (Cameroon)', 'Cameroon', 'en', 'en_CM', 0, 141, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(142, 'English (Christmas Island)', 'Christmas Island', 'en', 'en_CX', 0, 142, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(143, 'English (Cyprus)', 'Cyprus', 'en', 'en_CY', 0, 143, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(144, 'English (Germany)', 'Germany', 'en', 'en_DE', 0, 144, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(145, 'English (Diego Garcia)', 'Diego Garcia', 'en', 'en_DG', 0, 145, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(146, 'English (Denmark)', 'Denmark', 'en', 'en_DK', 0, 146, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(147, 'English (Dominica)', 'Dominica', 'en', 'en_DM', 0, 147, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(148, 'English (Eritrea)', 'Eritrea', 'en', 'en_ER', 0, 148, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(149, 'English (Finland)', 'Finland', 'en', 'en_FI', 0, 149, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(150, 'English (Fiji)', 'Fiji', 'en', 'en_FJ', 0, 150, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(151, 'English (Falkland Islands)', 'Falkland Islands', 'en', 'en_FK', 0, 151, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(152, 'English (Micronesia)', 'Micronesia', 'en', 'en_FM', 0, 152, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(153, 'English (United Kingdom)', 'United Kingdom', 'en', 'en_GB', 0, 153, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(154, 'English (Grenada)', 'Grenada', 'en', 'en_GD', 0, 154, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(155, 'English (Guernsey)', 'Guernsey', 'en', 'en_GG', 0, 155, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(156, 'English (Ghana)', 'Ghana', 'en', 'en_GH', 0, 156, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(157, 'English (Gibraltar)', 'Gibraltar', 'en', 'en_GI', 0, 157, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(158, 'English (Gambia)', 'Gambia', 'en', 'en_GM', 0, 158, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(159, 'English (Guam)', 'Guam', 'en', 'en_GU', 0, 159, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(160, 'English (Guyana)', 'Guyana', 'en', 'en_GY', 0, 160, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(161, 'English (Hong Kong SAR China)', 'Hong Kong SAR China', 'en', 'en_HK', 0, 161, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(162, 'English (Ireland)', 'Ireland', 'en', 'en_IE', 0, 162, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(163, 'English (Israel)', 'Israel', 'en', 'en_IL', 0, 163, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(164, 'English (Isle of Man)', 'Isle of Man', 'en', 'en_IM', 0, 164, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(165, 'English (India)', 'India', 'en', 'en_IN', 0, 165, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(166, 'English (British Indian Ocean Territory)', 'British Indian Ocean Territory', 'en', 'en_IO', 0, 166, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(167, 'English (Jersey)', 'Jersey', 'en', 'en_JE', 0, 167, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(168, 'English (Jamaica)', 'Jamaica', 'en', 'en_JM', 0, 168, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(169, 'English (Kenya)', 'Kenya', 'en', 'en_KE', 0, 169, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(170, 'English (Kiribati)', 'Kiribati', 'en', 'en_KI', 0, 170, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(171, 'English (St. Kitts & Nevis)', 'St. Kitts & Nevis', 'en', 'en_KN', 0, 171, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(172, 'English (Cayman Islands)', 'Cayman Islands', 'en', 'en_KY', 0, 172, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(173, 'English (St. Lucia)', 'St. Lucia', 'en', 'en_LC', 0, 173, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(174, 'English (Liberia)', 'Liberia', 'en', 'en_LR', 0, 174, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(175, 'English (Lesotho)', 'Lesotho', 'en', 'en_LS', 0, 175, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(176, 'English (Madagascar)', 'Madagascar', 'en', 'en_MG', 0, 176, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(177, 'English (Marshall Islands)', 'Marshall Islands', 'en', 'en_MH', 0, 177, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(178, 'English (Macau SAR China)', 'Macau SAR China', 'en', 'en_MO', 0, 178, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(179, 'English (Northern Mariana Islands)', 'Northern Mariana Islands', 'en', 'en_MP', 0, 179, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(180, 'English (Montserrat)', 'Montserrat', 'en', 'en_MS', 0, 180, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(181, 'English (Malta)', 'Malta', 'en', 'en_MT', 0, 181, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(182, 'English (Mauritius)', 'Mauritius', 'en', 'en_MU', 0, 182, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(183, 'English (Malawi)', 'Malawi', 'en', 'en_MW', 0, 183, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(184, 'English (Malaysia)', 'Malaysia', 'en', 'en_MY', 0, 184, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(185, 'English (Namibia)', 'Namibia', 'en', 'en_NA', 0, 185, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(186, 'English (Norfolk Island)', 'Norfolk Island', 'en', 'en_NF', 0, 186, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(187, 'English (Nigeria)', 'Nigeria', 'en', 'en_NG', 0, 187, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(188, 'English (Netherlands)', 'Netherlands', 'en', 'en_NL', 0, 188, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(189, 'English (Nauru)', 'Nauru', 'en', 'en_NR', 0, 189, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(190, 'English (Niue)', 'Niue', 'en', 'en_NU', 0, 190, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(191, 'English (New Zealand)', 'New Zealand', 'en', 'en_NZ', 0, 191, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(192, 'English (Papua New Guinea)', 'Papua New Guinea', 'en', 'en_PG', 0, 192, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(193, 'English (Philippines)', 'Philippines', 'en', 'en_PH', 0, 193, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(194, 'English (Pakistan)', 'Pakistan', 'en', 'en_PK', 0, 194, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(195, 'English (Pitcairn Islands)', 'Pitcairn Islands', 'en', 'en_PN', 0, 195, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(196, 'English (Puerto Rico)', 'Puerto Rico', 'en', 'en_PR', 0, 196, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(197, 'English (Palau)', 'Palau', 'en', 'en_PW', 0, 197, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(198, 'English (Rwanda)', 'Rwanda', 'en', 'en_RW', 0, 198, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(199, 'English (Solomon Islands)', 'Solomon Islands', 'en', 'en_SB', 0, 199, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(200, 'English (Seychelles)', 'Seychelles', 'en', 'en_SC', 0, 200, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(201, 'English (Sudan)', 'Sudan', 'en', 'en_SD', 0, 201, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(202, 'English (Sweden)', 'Sweden', 'en', 'en_SE', 0, 202, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(203, 'English (Singapore)', 'Singapore', 'en', 'en_SG', 0, 203, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(204, 'English (St. Helena)', 'St. Helena', 'en', 'en_SH', 0, 204, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(205, 'English (Slovenia)', 'Slovenia', 'en', 'en_SI', 0, 205, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(206, 'English (Sierra Leone)', 'Sierra Leone', 'en', 'en_SL', 0, 206, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(207, 'English (South Sudan)', 'South Sudan', 'en', 'en_SS', 0, 207, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(208, 'English (Sint Maarten)', 'Sint Maarten', 'en', 'en_SX', 0, 208, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(209, 'English (Swaziland)', 'Swaziland', 'en', 'en_SZ', 0, 209, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(210, 'English (Turks & Caicos Islands)', 'Turks & Caicos Islands', 'en', 'en_TC', 0, 210, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(211, 'English (Tokelau)', 'Tokelau', 'en', 'en_TK', 0, 211, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(212, 'English (Tonga)', 'Tonga', 'en', 'en_TO', 0, 212, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(213, 'English (Trinidad & Tobago)', 'Trinidad & Tobago', 'en', 'en_TT', 0, 213, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(214, 'English (Tuvalu)', 'Tuvalu', 'en', 'en_TV', 0, 214, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(215, 'English (Tanzania)', 'Tanzania', 'en', 'en_TZ', 0, 215, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(216, 'English (Uganda)', 'Uganda', 'en', 'en_UG', 0, 216, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(217, 'English (U.S. Outlying Islands)', 'U.S. Outlying Islands', 'en', 'en_UM', 0, 217, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(218, 'English (United States)', 'United States', 'en', 'en_US', 0, 218, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(219, 'English (United States, Computer)', 'United States', 'en', 'en_US_POSIX', 0, 219, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(220, 'English (St. Vincent & Grenadines)', 'St. Vincent & Grenadines', 'en', 'en_VC', 0, 220, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(221, 'English (British Virgin Islands)', 'British Virgin Islands', 'en', 'en_VG', 0, 221, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(222, 'English (U.S. Virgin Islands)', 'U.S. Virgin Islands', 'en', 'en_VI', 0, 222, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(223, 'English (Vanuatu)', 'Vanuatu', 'en', 'en_VU', 0, 223, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(224, 'English (Samoa)', 'Samoa', 'en', 'en_WS', 0, 224, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(225, 'English (South Africa)', 'South Africa', 'en', 'en_ZA', 0, 225, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(226, 'English (Zambia)', 'Zambia', 'en', 'en_ZM', 0, 226, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(227, 'English (Zimbabwe)', 'Zimbabwe', 'en', 'en_ZW', 0, 227, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(228, 'Esperanto', '', 'eo', 'eo', 0, 228, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(229, 'Spanish', '', 'es', 'es', 1, 229, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(230, 'Spanish (Latin America)', 'Latinoamérica', 'es', 'es_419', 0, 230, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(231, 'Spanish (Argentina)', 'Argentina', 'es', 'es_AR', 0, 231, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(232, 'Spanish (Bolivia)', 'Bolivia', 'es', 'es_BO', 0, 232, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(233, 'Spanish (Chile)', 'Chile', 'es', 'es_CL', 0, 233, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(234, 'Spanish (Colombia)', 'Colombia', 'es', 'es_CO', 0, 234, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(235, 'Spanish (Costa Rica)', 'Costa Rica', 'es', 'es_CR', 0, 235, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(236, 'Spanish (Cuba)', 'Cuba', 'es', 'es_CU', 0, 236, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(237, 'Spanish (Dominican Republic)', 'República Dominicana', 'es', 'es_DO', 0, 237, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(238, 'Spanish (Ceuta & Melilla)', 'Ceuta y Melilla', 'es', 'es_EA', 0, 238, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(239, 'Spanish (Ecuador)', 'Ecuador', 'es', 'es_EC', 0, 239, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(240, 'Spanish (Spain)', 'España', 'es', 'es_ES', 0, 240, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(241, 'Spanish (Equatorial Guinea)', 'Guinea Ecuatorial', 'es', 'es_GQ', 0, 241, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(242, 'Spanish (Guatemala)', 'Guatemala', 'es', 'es_GT', 0, 242, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(243, 'Spanish (Honduras)', 'Honduras', 'es', 'es_HN', 0, 243, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(244, 'Spanish (Canary Islands)', 'Canarias', 'es', 'es_IC', 0, 244, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(245, 'Spanish (Mexico)', 'México', 'es', 'es_MX', 0, 245, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(246, 'Spanish (Nicaragua)', 'Nicaragua', 'es', 'es_NI', 0, 246, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(247, 'Spanish (Panama)', 'Panamá', 'es', 'es_PA', 0, 247, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(248, 'Spanish (Peru)', 'Perú', 'es', 'es_PE', 0, 248, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(249, 'Spanish (Philippines)', 'Filipinas', 'es', 'es_PH', 0, 249, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(250, 'Spanish (Puerto Rico)', 'Puerto Rico', 'es', 'es_PR', 0, 250, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(251, 'Spanish (Paraguay)', 'Paraguay', 'es', 'es_PY', 0, 251, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(252, 'Spanish (El Salvador)', 'El Salvador', 'es', 'es_SV', 0, 252, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(253, 'Spanish (United States)', 'Estados Unidos', 'es', 'es_US', 0, 253, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(254, 'Spanish (Uruguay)', 'Uruguay', 'es', 'es_UY', 0, 254, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(255, 'Spanish (Venezuela)', 'Venezuela', 'es', 'es_VE', 0, 255, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(256, 'Estonian', '', 'et', 'et', 0, 256, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(257, 'Estonian (Estonia)', 'Eesti', 'et', 'et_EE', 0, 257, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(258, 'Basque', '', 'eu', 'eu', 0, 258, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(259, 'Basque (Spain)', 'Espainia', 'eu', 'eu_ES', 0, 259, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(260, 'Ewondo', '', 'ewo', 'ewo', 0, 260, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(261, 'Ewondo (Cameroon)', 'Kamərún', 'ewo', 'ewo_CM', 0, 261, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(262, 'Persian', '', 'fa', 'fa', 1, 262, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(263, 'Persian (Afghanistan)', 'افغانستان', 'fa', 'fa_AF', 0, 263, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(264, 'Persian (Iran)', 'ایران', 'fa', 'fa_IR', 0, 264, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(265, 'Fulah', '', 'ff', 'ff', 0, 265, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(266, 'Fulah (Cameroon)', 'Kameruun', 'ff', 'ff_CM', 0, 266, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(267, 'Fulah (Guinea)', 'Gine', 'ff', 'ff_GN', 0, 267, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(268, 'Fulah (Mauritania)', 'Muritani', 'ff', 'ff_MR', 0, 268, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(269, 'Fulah (Senegal)', 'Senegaal', 'ff', 'ff_SN', 0, 269, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(270, 'Finnish', '', 'fi', 'fi', 0, 270, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(271, 'Finnish (Finland)', 'Suomi', 'fi', 'fi_FI', 0, 271, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(272, 'Filipino', '', 'fil', 'fil', 0, 272, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(273, 'Filipino (Philippines)', 'Pilipinas', 'fil', 'fil_PH', 0, 273, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(274, 'Faroese', '', 'fo', 'fo', 0, 274, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(275, 'Faroese (Denmark)', 'Danmark', 'fo', 'fo_DK', 0, 275, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(276, 'Faroese (Faroe Islands)', 'Føroyar', 'fo', 'fo_FO', 0, 276, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(277, 'French', '', 'fr', 'fr', 1, 277, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(278, 'French (Belgium)', 'Belgique', 'fr', 'fr_BE', 0, 278, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(279, 'French (Burkina Faso)', 'Burkina Faso', 'fr', 'fr_BF', 0, 279, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(280, 'French (Burundi)', 'Burundi', 'fr', 'fr_BI', 0, 280, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(281, 'French (Benin)', 'Bénin', 'fr', 'fr_BJ', 0, 281, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(282, 'French (St. Barthélemy)', 'Saint-Barthélemy', 'fr', 'fr_BL', 0, 282, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(283, 'French (Canada)', 'Canada', 'fr', 'fr_CA', 0, 283, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(284, 'French (Congo - Kinshasa)', 'Congo-Kinshasa', 'fr', 'fr_CD', 0, 284, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(285, 'French (Central African Republic)', 'République centrafricaine', 'fr', 'fr_CF', 0, 285, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(286, 'French (Congo - Brazzaville)', 'Congo-Brazzaville', 'fr', 'fr_CG', 0, 286, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(287, 'French (Switzerland)', 'Suisse', 'fr', 'fr_CH', 0, 287, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(288, 'French (Côte d’Ivoire)', 'Côte d’Ivoire', 'fr', 'fr_CI', 0, 288, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(289, 'French (Cameroon)', 'Cameroun', 'fr', 'fr_CM', 0, 289, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(290, 'French (Djibouti)', 'Djibouti', 'fr', 'fr_DJ', 0, 290, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(291, 'French (Algeria)', 'Algérie', 'fr', 'fr_DZ', 0, 291, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(292, 'French (France)', 'France', 'fr', 'fr_FR', 0, 292, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(293, 'French (Gabon)', 'Gabon', 'fr', 'fr_GA', 0, 293, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(294, 'French (French Guiana)', 'Guyane française', 'fr', 'fr_GF', 0, 294, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(295, 'French (Guinea)', 'Guinée', 'fr', 'fr_GN', 0, 295, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(296, 'French (Guadeloupe)', 'Guadeloupe', 'fr', 'fr_GP', 0, 296, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(297, 'French (Equatorial Guinea)', 'Guinée équatoriale', 'fr', 'fr_GQ', 0, 297, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(298, 'French (Haiti)', 'Haïti', 'fr', 'fr_HT', 0, 298, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(299, 'French (Comoros)', 'Comores', 'fr', 'fr_KM', 0, 299, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(300, 'French (Luxembourg)', 'Luxembourg', 'fr', 'fr_LU', 0, 300, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(301, 'French (Morocco)', 'Maroc', 'fr', 'fr_MA', 0, 301, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(302, 'French (Monaco)', 'Monaco', 'fr', 'fr_MC', 0, 302, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(303, 'French (St. Martin)', 'Saint-Martin', 'fr', 'fr_MF', 0, 303, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(304, 'French (Madagascar)', 'Madagascar', 'fr', 'fr_MG', 0, 304, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(305, 'French (Mali)', 'Mali', 'fr', 'fr_ML', 0, 305, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(306, 'French (Martinique)', 'Martinique', 'fr', 'fr_MQ', 0, 306, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(307, 'French (Mauritania)', 'Mauritanie', 'fr', 'fr_MR', 0, 307, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(308, 'French (Mauritius)', 'Maurice', 'fr', 'fr_MU', 0, 308, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(309, 'French (New Caledonia)', 'Nouvelle-Calédonie', 'fr', 'fr_NC', 0, 309, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(310, 'French (Niger)', 'Niger', 'fr', 'fr_NE', 0, 310, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(311, 'French (French Polynesia)', 'Polynésie française', 'fr', 'fr_PF', 0, 311, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(312, 'French (St. Pierre & Miquelon)', 'Saint-Pierre-et-Miquelon', 'fr', 'fr_PM', 0, 312, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(313, 'French (Réunion)', 'La Réunion', 'fr', 'fr_RE', 0, 313, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(314, 'French (Rwanda)', 'Rwanda', 'fr', 'fr_RW', 0, 314, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(315, 'French (Seychelles)', 'Seychelles', 'fr', 'fr_SC', 0, 315, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(316, 'French (Senegal)', 'Sénégal', 'fr', 'fr_SN', 0, 316, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(317, 'French (Syria)', 'Syrie', 'fr', 'fr_SY', 0, 317, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(318, 'French (Chad)', 'Tchad', 'fr', 'fr_TD', 0, 318, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(319, 'French (Togo)', 'Togo', 'fr', 'fr_TG', 0, 319, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(320, 'French (Tunisia)', 'Tunisie', 'fr', 'fr_TN', 0, 320, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(321, 'French (Vanuatu)', 'Vanuatu', 'fr', 'fr_VU', 0, 321, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(322, 'French (Wallis & Futuna)', 'Wallis-et-Futuna', 'fr', 'fr_WF', 0, 322, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(323, 'French (Mayotte)', 'Mayotte', 'fr', 'fr_YT', 0, 323, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(324, 'Friulian', '', 'fur', 'fur', 0, 324, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(325, 'Friulian (Italy)', 'Italie', 'fur', 'fur_IT', 0, 325, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(326, 'Western Frisian', '', 'fy', 'fy', 0, 326, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(327, 'Western Frisian (Netherlands)', 'Nederlân', 'fy', 'fy_NL', 0, 327, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(328, 'Irish', '', 'ga', 'ga', 0, 328, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(329, 'Irish (Ireland)', 'Éire', 'ga', 'ga_IE', 0, 329, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(330, 'Scottish Gaelic', '', 'gd', 'gd', 0, 330, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(331, 'Scottish Gaelic (United Kingdom)', 'An Rìoghachd Aonaichte', 'gd', 'gd_GB', 0, 331, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(332, 'Galician', '', 'gl', 'gl', 0, 332, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(333, 'Galician (Spain)', 'España', 'gl', 'gl_ES', 0, 333, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(334, 'Swiss German', '', 'gsw', 'gsw', 0, 334, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(335, 'Swiss German (Switzerland)', 'Schwiiz', 'gsw', 'gsw_CH', 0, 335, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(336, 'Swiss German (France)', 'Frankriich', 'gsw', 'gsw_FR', 0, 336, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(337, 'Swiss German (Liechtenstein)', 'Liächteschtäi', 'gsw', 'gsw_LI', 0, 337, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(338, 'Gujarati', '', 'gu', 'gu', 0, 338, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(339, 'Gujarati (India)', 'ભારત', 'gu', 'gu_IN', 0, 339, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(340, 'Gusii', '', 'guz', 'guz', 0, 340, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(341, 'Gusii (Kenya)', 'Kenya', 'guz', 'guz_KE', 0, 341, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(342, 'Manx', '', 'gv', 'gv', 0, 342, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(343, 'Manx (Isle of Man)', 'Ellan Vannin', 'gv', 'gv_IM', 0, 343, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(344, 'Hausa', '', 'ha', 'ha', 0, 344, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(345, 'Hausa (Ghana)', 'Gana', 'ha', 'ha_GH', 0, 345, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(346, 'Hausa (Niger)', 'Nijar', 'ha', 'ha_NE', 0, 346, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(347, 'Hausa (Nigeria)', 'Najeriya', 'ha', 'ha_NG', 0, 347, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(348, 'Hawaiian', '', 'haw', 'haw', 0, 348, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(349, 'Hawaiian (United States)', 'ʻAmelika Hui Pū ʻIa', 'haw', 'haw_US', 0, 349, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(350, 'Hebrew', '', 'he', 'he', 0, 350, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(351, 'Hebrew (Israel)', 'ישראל', 'he', 'he_IL', 0, 351, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(352, 'Hindi', '', 'hi', 'hi', 0, 352, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(353, 'Hindi (India)', 'भारत', 'hi', 'hi_IN', 0, 353, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(354, 'Croatian', '', 'hr', 'hr', 0, 354, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(355, 'Croatian (Bosnia & Herzegovina)', 'Bosna i Hercegovina', 'hr', 'hr_BA', 0, 355, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(356, 'Croatian (Croatia)', 'Hrvatska', 'hr', 'hr_HR', 0, 356, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(357, 'Upper Sorbian', '', 'hsb', 'hsb', 0, 357, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(358, 'Upper Sorbian (Germany)', 'Němska', 'hsb', 'hsb_DE', 0, 358, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(359, 'Hungarian', '', 'hu', 'hu', 1, 359, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(360, 'Hungarian (Hungary)', 'Magyarország', 'hu', 'hu_HU', 0, 360, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(361, 'Armenian', '', 'hy', 'hy', 0, 361, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(362, 'Armenian (Armenia)', 'Հայաստան', 'hy', 'hy_AM', 0, 362, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(363, 'Indonesian', '', 'id', 'id', 1, 363, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(364, 'Indonesian (Indonesia)', 'Indonesia', 'id', 'id_ID', 0, 364, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(365, 'Igbo', '', 'ig', 'ig', 0, 365, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(366, 'Igbo (Nigeria)', 'Nigeria', 'ig', 'ig_NG', 0, 366, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(367, 'Sichuan Yi', '', 'ii', 'ii', 0, 367, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(368, 'Sichuan Yi (China)', 'ꍏꇩ', 'ii', 'ii_CN', 0, 368, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(369, 'Icelandic', '', 'is', 'is', 0, 369, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(370, 'Icelandic (Iceland)', 'Ísland', 'is', 'is_IS', 0, 370, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(371, 'Italian', '', 'it', 'it', 1, 371, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(372, 'Italian (Switzerland)', 'Svizzera', 'it', 'it_CH', 0, 372, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(373, 'Italian (Italy)', 'Italia', 'it', 'it_IT', 0, 373, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(374, 'Italian (San Marino)', 'San Marino', 'it', 'it_SM', 0, 374, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(375, 'Japanese', '', 'ja', 'ja', 1, 375, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(376, 'Japanese (Japan)', '日本', 'ja', 'ja_JP', 0, 376, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(377, 'Ngomba', '', 'jgo', 'jgo', 0, 377, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(378, 'Ngomba (Cameroon)', 'Kamɛlûn', 'jgo', 'jgo_CM', 0, 378, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(379, 'Machame', '', 'jmc', 'jmc', 0, 379, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(380, 'Machame (Tanzania)', 'Tanzania', 'jmc', 'jmc_TZ', 0, 380, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(381, 'Georgian', '', 'ka', 'ka', 0, 381, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(382, 'Georgian (Georgia)', 'საქართველო', 'ka', 'ka_GE', 0, 382, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(383, 'Kabyle', '', 'kab', 'kab', 0, 383, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(384, 'Kabyle (Algeria)', 'Lezzayer', 'kab', 'kab_DZ', 0, 384, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(385, 'Kamba', '', 'kam', 'kam', 0, 385, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(386, 'Kamba (Kenya)', 'Kenya', 'kam', 'kam_KE', 0, 386, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(387, 'Makonde', '', 'kde', 'kde', 0, 387, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(388, 'Makonde (Tanzania)', 'Tanzania', 'kde', 'kde_TZ', 0, 388, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(389, 'Kabuverdianu', '', 'kea', 'kea', 0, 389, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(390, 'Kabuverdianu (Cape Verde)', 'Kabu Verdi', 'kea', 'kea_CV', 0, 390, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(391, 'Koyra Chiini', '', 'khq', 'khq', 0, 391, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(392, 'Koyra Chiini (Mali)', 'Maali', 'khq', 'khq_ML', 0, 392, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(393, 'Kikuyu', '', 'ki', 'ki', 0, 393, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(394, 'Kikuyu (Kenya)', 'Kenya', 'ki', 'ki_KE', 0, 394, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(395, 'Kazakh', '', 'kk', 'kk', 0, 395, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(396, 'Kazakh (Kazakhstan)', 'Қазақстан', 'kk', 'kk_KZ', 0, 396, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(397, 'Kako', '', 'kkj', 'kkj', 0, 397, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(398, 'Kako (Cameroon)', 'Kamɛrun', 'kkj', 'kkj_CM', 0, 398, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(399, 'Kalaallisut', '', 'kl', 'kl', 0, 399, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(400, 'Kalaallisut (Greenland)', 'Kalaallit Nunaat', 'kl', 'kl_GL', 0, 400, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(401, 'Kalenjin', '', 'kln', 'kln', 0, 401, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(402, 'Kalenjin (Kenya)', 'Emetab Kenya', 'kln', 'kln_KE', 0, 402, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(403, 'Khmer', '', 'km', 'km', 0, 403, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(404, 'Khmer (Cambodia)', 'កម្ពុជា', 'km', 'km_KH', 0, 404, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(405, 'Kannada', '', 'kn', 'kn', 0, 405, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(406, 'Kannada (India)', 'ಭಾರತ', 'kn', 'kn_IN', 0, 406, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(407, 'Korean', '', 'ko', 'ko', 0, 407, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(408, 'Korean (North Korea)', '조선민주주의인민공화국', 'ko', 'ko_KP', 0, 408, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(409, 'Korean (South Korea)', '대한민국', 'ko', 'ko_KR', 0, 409, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(410, 'Konkani', '', 'kok', 'kok', 0, 410, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(411, 'Konkani (India)', 'भारत', 'kok', 'kok_IN', 0, 411, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(412, 'Kashmiri', '', 'ks', 'ks', 0, 412, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(413, 'Kashmiri (India)', 'ہِنٛدوستان', 'ks', 'ks_IN', 0, 413, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(414, 'Shambala', '', 'ksb', 'ksb', 0, 414, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(415, 'Shambala (Tanzania)', 'Tanzania', 'ksb', 'ksb_TZ', 0, 415, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(416, 'Bafia', '', 'ksf', 'ksf', 0, 416, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(417, 'Bafia (Cameroon)', 'kamɛrún', 'ksf', 'ksf_CM', 0, 417, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(418, 'Colognian', '', 'ksh', 'ksh', 0, 418, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(419, 'Colognian (Germany)', 'Doütschland', 'ksh', 'ksh_DE', 0, 419, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(420, 'Cornish', '', 'kw', 'kw', 0, 420, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(421, 'Cornish (United Kingdom)', 'Rywvaneth Unys', 'kw', 'kw_GB', 0, 421, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(422, 'Kyrgyz', '', 'ky', 'ky', 0, 422, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(423, 'Kyrgyz (Kyrgyzstan)', 'Кыргызстан', 'ky', 'ky_KG', 0, 423, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(424, 'Langi', '', 'lag', 'lag', 0, 424, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(425, 'Langi (Tanzania)', 'Taansanía', 'lag', 'lag_TZ', 0, 425, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(426, 'Luxembourgish', '', 'lb', 'lb', 0, 426, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(427, 'Luxembourgish (Luxembourg)', 'Lëtzebuerg', 'lb', 'lb_LU', 0, 427, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(428, 'Ganda', '', 'lg', 'lg', 0, 428, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL);
INSERT INTO `languages` (`id`, `title`, `native`, `alias`, `locale`, `status`, `weight`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(429, 'Ganda (Uganda)', 'Yuganda', 'lg', 'lg_UG', 0, 429, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(430, 'Lakota', '', 'lkt', 'lkt', 0, 430, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(431, 'Lakota (United States)', 'Mílahaŋska Tȟamákȟočhe', 'lkt', 'lkt_US', 0, 431, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(432, 'Lingala', '', 'ln', 'ln', 0, 432, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(433, 'Lingala (Angola)', 'Angóla', 'ln', 'ln_AO', 0, 433, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(434, 'Lingala (Congo - Kinshasa)', 'Repibiki demokratiki ya Kongó', 'ln', 'ln_CD', 0, 434, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(435, 'Lingala (Central African Republic)', 'Repibiki ya Afríka ya Káti', 'ln', 'ln_CF', 0, 435, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(436, 'Lingala (Congo - Brazzaville)', 'Kongo', 'ln', 'ln_CG', 0, 436, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(437, 'Lao', '', 'lo', 'lo', 0, 437, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(438, 'Lao (Laos)', 'ລາວ', 'lo', 'lo_LA', 0, 438, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(439, 'Northern Luri', '', 'lrc', 'lrc', 0, 439, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(440, 'Northern Luri (Iraq)', 'IQ', 'lrc', 'lrc_IQ', 0, 440, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(441, 'Northern Luri (Iran)', 'IR', 'lrc', 'lrc_IR', 0, 441, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(442, 'Lithuanian', '', 'lt', 'lt', 0, 442, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(443, 'Lithuanian (Lithuania)', 'Lietuva', 'lt', 'lt_LT', 0, 443, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(444, 'Luba-Katanga', '', 'lu', 'lu', 0, 444, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(445, 'Luba-Katanga (Congo - Kinshasa)', 'Ditunga wa Kongu', 'lu', 'lu_CD', 0, 445, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(446, 'Luo', '', 'luo', 'luo', 0, 446, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(447, 'Luo (Kenya)', 'Kenya', 'luo', 'luo_KE', 0, 447, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(448, 'Luyia', '', 'luy', 'luy', 0, 448, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(449, 'Luyia (Kenya)', 'Kenya', 'luy', 'luy_KE', 0, 449, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(450, 'Latvian', '', 'lv', 'lv', 0, 450, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(451, 'Latvian (Latvia)', 'Latvija', 'lv', 'lv_LV', 0, 451, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(452, 'Masai', '', 'mas', 'mas', 0, 452, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(453, 'Masai (Kenya)', 'Kenya', 'mas', 'mas_KE', 0, 453, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(454, 'Masai (Tanzania)', 'Tansania', 'mas', 'mas_TZ', 0, 454, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(455, 'Meru', '', 'mer', 'mer', 0, 455, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(456, 'Meru (Kenya)', 'Kenya', 'mer', 'mer_KE', 0, 456, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(457, 'Morisyen', '', 'mfe', 'mfe', 0, 457, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(458, 'Morisyen (Mauritius)', 'Moris', 'mfe', 'mfe_MU', 0, 458, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(459, 'Malagasy', '', 'mg', 'mg', 0, 459, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(460, 'Malagasy (Madagascar)', 'Madagasikara', 'mg', 'mg_MG', 0, 460, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(461, 'Makhuwa-Meetto', '', 'mgh', 'mgh', 0, 461, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(462, 'Makhuwa-Meetto (Mozambique)', 'Umozambiki', 'mgh', 'mgh_MZ', 0, 462, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(463, 'Metaʼ', '', 'mgo', 'mgo', 0, 463, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(464, 'Metaʼ (Cameroon)', 'Kamalun', 'mgo', 'mgo_CM', 0, 464, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(465, 'Macedonian', '', 'mk', 'mk', 0, 465, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(466, 'Macedonian (Macedonia)', 'Македонија', 'mk', 'mk_MK', 0, 466, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(467, 'Malayalam', '', 'ml', 'ml', 0, 467, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(468, 'Malayalam (India)', 'ഇന്ത്യ', 'ml', 'ml_IN', 0, 468, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(469, 'Mongolian', '', 'mn', 'mn', 0, 469, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(470, 'Mongolian (Mongolia)', 'Монгол', 'mn', 'mn_MN', 0, 470, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(471, 'Marathi', '', 'mr', 'mr', 0, 471, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(472, 'Marathi (India)', 'भारत', 'mr', 'mr_IN', 0, 472, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(473, 'Malay', '', 'ms', 'ms', 0, 473, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(474, 'Malay (Brunei)', 'Brunei', 'ms', 'ms_BN', 0, 474, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(475, 'Malay (Malaysia)', 'Malaysia', 'ms', 'ms_MY', 0, 475, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(476, 'Malay (Singapore)', 'Singapura', 'ms', 'ms_SG', 0, 476, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(477, 'Maltese', '', 'mt', 'mt', 0, 477, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(478, 'Maltese (Malta)', 'Malta', 'mt', 'mt_MT', 0, 478, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(479, 'Mundang', '', 'mua', 'mua', 0, 479, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(480, 'Mundang (Cameroon)', 'kameruŋ', 'mua', 'mua_CM', 0, 480, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(481, 'Burmese', '', 'my', 'my', 0, 481, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(482, 'Burmese (Myanmar [Burma])', 'မြန်မာ', 'my', 'my_MM', 0, 482, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(483, 'Mazanderani', '', 'mzn', 'mzn', 0, 483, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(484, 'Mazanderani (Iran)', 'ایران', 'mzn', 'mzn_IR', 0, 484, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(485, 'Nama', '', 'naq', 'naq', 0, 485, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(486, 'Nama (Namibia)', 'Namibiab', 'naq', 'naq_NA', 0, 486, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(487, 'Norwegian Bokmål', '', 'nb', 'nb', 0, 487, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(488, 'Norwegian Bokmål (Norway)', 'Norge', 'nb', 'nb_NO', 0, 488, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(489, 'Norwegian Bokmål (Svalbard & Jan Mayen)', 'Svalbard og Jan Mayen', 'nb', 'nb_SJ', 0, 489, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(490, 'North Ndebele', '', 'nd', 'nd', 0, 490, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(491, 'North Ndebele (Zimbabwe)', 'Zimbabwe', 'nd', 'nd_ZW', 0, 491, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(492, 'Nepali', '', 'ne', 'ne', 0, 492, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(493, 'Nepali (India)', 'भारत', 'ne', 'ne_IN', 0, 493, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(494, 'Nepali (Nepal)', 'नेपाल', 'ne', 'ne_NP', 0, 494, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(495, 'Dutch', '', 'nl', 'nl', 1, 495, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(496, 'Dutch (Aruba)', 'Aruba', 'nl', 'nl_AW', 0, 496, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(497, 'Dutch (Belgium)', 'België', 'nl', 'nl_BE', 0, 497, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(498, 'Dutch (Caribbean Netherlands)', 'Caribisch Nederland', 'nl', 'nl_BQ', 0, 498, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(499, 'Dutch (Curaçao)', 'Curaçao', 'nl', 'nl_CW', 0, 499, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(500, 'Dutch (Netherlands)', 'Nederland', 'nl', 'nl_NL', 0, 500, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(501, 'Dutch (Suriname)', 'Suriname', 'nl', 'nl_SR', 0, 501, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(502, 'Dutch (Sint Maarten)', 'Sint-Maarten', 'nl', 'nl_SX', 0, 502, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(503, 'Kwasio', '', 'nmg', 'nmg', 0, 503, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(504, 'Kwasio (Cameroon)', 'Kamerun', 'nmg', 'nmg_CM', 0, 504, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(505, 'Norwegian Nynorsk', '', 'nn', 'nn', 0, 505, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(506, 'Norwegian Nynorsk (Norway)', 'Noreg', 'nn', 'nn_NO', 0, 506, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(507, 'Ngiemboon', '', 'nnh', 'nnh', 0, 507, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(508, 'Ngiemboon (Cameroon)', 'Kàmalûm', 'nnh', 'nnh_CM', 0, 508, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(509, 'Nuer', '', 'nus', 'nus', 0, 509, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(510, 'Nuer (South Sudan)', 'SS', 'nus', 'nus_SS', 0, 510, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(511, 'Nyankole', '', 'nyn', 'nyn', 0, 511, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(512, 'Nyankole (Uganda)', 'Uganda', 'nyn', 'nyn_UG', 0, 512, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(513, 'Oromo', '', 'om', 'om', 0, 513, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(514, 'Oromo (Ethiopia)', 'Itoophiyaa', 'om', 'om_ET', 0, 514, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(515, 'Oromo (Kenya)', 'Keeniyaa', 'om', 'om_KE', 0, 515, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(516, 'Oriya', '', 'or', 'or', 0, 516, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(517, 'Oriya (India)', 'ଭାରତ', 'or', 'or_IN', 0, 517, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(518, 'Ossetic', '', 'os', 'os', 0, 518, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(519, 'Ossetic (Georgia)', 'Гуырдзыстон', 'os', 'os_GE', 0, 519, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(520, 'Ossetic (Russia)', 'Уӕрӕсе', 'os', 'os_RU', 0, 520, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(521, 'Punjabi', '', 'pa', 'pa', 0, 521, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(522, 'Punjabi (Arabic)', '', 'pa', 'pa_Arab', 0, 522, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(523, 'Punjabi (Arabic, Pakistan)', 'پکستان', 'pa', 'pa_Arab_PK', 0, 523, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(524, 'Punjabi (Gurmukhi)', '', 'pa', 'pa_Guru', 0, 524, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(525, 'Punjabi (Gurmukhi, India)', 'ਭਾਰਤ', 'pa', 'pa_Guru_IN', 0, 525, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(526, 'Polish', '', 'pl', 'pl', 1, 526, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(527, 'Polish (Poland)', 'Polska', 'pl', 'pl_PL', 0, 527, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(528, 'Pashto', '', 'ps', 'ps', 0, 528, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(529, 'Pashto (Afghanistan)', 'افغانستان', 'ps', 'ps_AF', 0, 529, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(530, 'Portuguese', '', 'pt', 'pt', 1, 530, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(531, 'Portuguese (Angola)', 'Angola', 'pt', 'pt_AO', 0, 531, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(532, 'Portuguese (Brazil)', 'Brasil', 'pt', 'pt_BR', 0, 532, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(533, 'Portuguese (Cape Verde)', 'Cabo Verde', 'pt', 'pt_CV', 0, 533, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(534, 'Portuguese (Guinea-Bissau)', 'Guiné-Bissau', 'pt', 'pt_GW', 0, 534, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(535, 'Portuguese (Macau SAR China)', 'Macau, RAE da China', 'pt', 'pt_MO', 0, 535, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(536, 'Portuguese (Mozambique)', 'Moçambique', 'pt', 'pt_MZ', 0, 536, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(537, 'Portuguese (Portugal)', 'Portugal', 'pt', 'pt_PT', 0, 537, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(538, 'Portuguese (São Tomé & Príncipe)', 'São Tomé e Príncipe', 'pt', 'pt_ST', 0, 538, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(539, 'Portuguese (Timor-Leste)', 'Timor-Leste', 'pt', 'pt_TL', 0, 539, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(540, 'Quechua', '', 'qu', 'qu', 0, 540, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(541, 'Quechua (Bolivia)', 'Bolivia', 'qu', 'qu_BO', 0, 541, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(542, 'Quechua (Ecuador)', 'Ecuador', 'qu', 'qu_EC', 0, 542, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(543, 'Quechua (Peru)', 'Perú', 'qu', 'qu_PE', 0, 543, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(544, 'Romansh', '', 'rm', 'rm', 0, 544, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(545, 'Romansh (Switzerland)', 'Svizra', 'rm', 'rm_CH', 0, 545, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(546, 'Rundi', '', 'rn', 'rn', 0, 546, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(547, 'Rundi (Burundi)', 'Uburundi', 'rn', 'rn_BI', 0, 547, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(548, 'Romanian', '', 'ro', 'ro', 0, 548, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(549, 'Romanian (Moldova)', 'Republica Moldova', 'ro', 'ro_MD', 0, 549, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(550, 'Romanian (Romania)', 'România', 'ro', 'ro_RO', 0, 550, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(551, 'Rombo', '', 'rof', 'rof', 0, 551, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(552, 'Rombo (Tanzania)', 'Tanzania', 'rof', 'rof_TZ', 0, 552, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(553, 'Russian', '', 'ru', 'ru', 1, 553, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(554, 'Russian (Belarus)', 'Беларусь', 'ru', 'ru_BY', 0, 554, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(555, 'Russian (Kyrgyzstan)', 'Киргизия', 'ru', 'ru_KG', 0, 555, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(556, 'Russian (Kazakhstan)', 'Казахстан', 'ru', 'ru_KZ', 0, 556, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(557, 'Russian (Moldova)', 'Молдова', 'ru', 'ru_MD', 0, 557, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(558, 'Russian (Russia)', 'Россия', 'ru', 'ru_RU', 0, 558, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(559, 'Russian (Ukraine)', 'Украина', 'ru', 'ru_UA', 0, 559, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(560, 'Kinyarwanda', '', 'rw', 'rw', 0, 560, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(561, 'Kinyarwanda (Rwanda)', 'Rwanda', 'rw', 'rw_RW', 0, 561, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(562, 'Rwa', '', 'rwk', 'rwk', 0, 562, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(563, 'Rwa (Tanzania)', 'Tanzania', 'rwk', 'rwk_TZ', 0, 563, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(564, 'Sakha', '', 'sah', 'sah', 0, 564, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(565, 'Sakha (Russia)', 'Арассыыйа', 'sah', 'sah_RU', 0, 565, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(566, 'Samburu', '', 'saq', 'saq', 0, 566, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(567, 'Samburu (Kenya)', 'Kenya', 'saq', 'saq_KE', 0, 567, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(568, 'Sangu', '', 'sbp', 'sbp', 0, 568, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(569, 'Sangu (Tanzania)', 'Tansaniya', 'sbp', 'sbp_TZ', 0, 569, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(570, 'Northern Sami', '', 'se', 'se', 0, 570, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(571, 'Northern Sami (Finland)', 'Suopma', 'se', 'se_FI', 0, 571, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(572, 'Northern Sami (Norway)', 'Norga', 'se', 'se_NO', 0, 572, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(573, 'Northern Sami (Sweden)', 'Ruoŧŧa', 'se', 'se_SE', 0, 573, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(574, 'Sena', '', 'seh', 'seh', 0, 574, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(575, 'Sena (Mozambique)', 'Moçambique', 'seh', 'seh_MZ', 0, 575, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(576, 'Koyraboro Senni', '', 'ses', 'ses', 0, 576, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(577, 'Koyraboro Senni (Mali)', 'Maali', 'ses', 'ses_ML', 0, 577, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(578, 'Sango', '', 'sg', 'sg', 0, 578, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(579, 'Sango (Central African Republic)', 'Ködörösêse tî Bêafrîka', 'sg', 'sg_CF', 0, 579, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(580, 'Tachelhit', '', 'shi', 'shi', 0, 580, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(581, 'Tachelhit (Latin)', '', 'shi', 'shi_Latn', 0, 581, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(582, 'Tachelhit (Latin, Morocco)', 'lmɣrib', 'shi', 'shi_Latn_MA', 0, 582, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(583, 'Tachelhit (Tifinagh)', '', 'shi', 'shi_Tfng', 0, 583, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(584, 'Tachelhit (Tifinagh, Morocco)', 'ⵍⵎⵖⵔⵉⴱ', 'shi', 'shi_Tfng_MA', 0, 584, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(585, 'Sinhala', '', 'si', 'si', 0, 585, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(586, 'Sinhala (Sri Lanka)', 'ශ්‍රී ලංකාව', 'si', 'si_LK', 0, 586, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(587, 'Slovak', '', 'sk', 'sk', 1, 587, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(588, 'Slovak (Slovakia)', 'Slovensko', 'sk', 'sk_SK', 0, 588, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(589, 'Slovenian', '', 'sl', 'sl', 0, 589, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(590, 'Slovenian (Slovenia)', 'Slovenija', 'sl', 'sl_SI', 0, 590, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(591, 'Inari Sami', '', 'smn', 'smn', 0, 591, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(592, 'Inari Sami (Finland)', 'Suomâ', 'smn', 'smn_FI', 0, 592, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(593, 'Shona', '', 'sn', 'sn', 0, 593, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(594, 'Shona (Zimbabwe)', 'Zimbabwe', 'sn', 'sn_ZW', 0, 594, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(595, 'Somali', '', 'so', 'so', 0, 595, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(596, 'Somali (Djibouti)', 'Jabuuti', 'so', 'so_DJ', 0, 596, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(597, 'Somali (Ethiopia)', 'Itoobiya', 'so', 'so_ET', 0, 597, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(598, 'Somali (Kenya)', 'Kiiniya', 'so', 'so_KE', 0, 598, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(599, 'Somali (Somalia)', 'Soomaaliya', 'so', 'so_SO', 0, 599, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(600, 'Albanian', '', 'sq', 'sq', 0, 600, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(601, 'Albanian (Albania)', 'Shqipëri', 'sq', 'sq_AL', 0, 601, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(602, 'Albanian (Macedonia)', 'Maqedoni', 'sq', 'sq_MK', 0, 602, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(603, 'Albanian (Kosovo)', 'Kosovë', 'sq', 'sq_XK', 0, 603, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(604, 'Serbian', '', 'sr', 'sr', 0, 604, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(605, 'Serbian (Cyrillic)', '', 'sr', 'sr_Cyrl', 0, 605, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(606, 'Serbian (Cyrillic, Bosnia & Herzegovina)', 'Босна и Херцеговина', 'sr', 'sr_Cyrl_BA', 0, 606, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(607, 'Serbian (Cyrillic, Montenegro)', 'Црна Гора', 'sr', 'sr_Cyrl_ME', 0, 607, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(608, 'Serbian (Cyrillic, Serbia)', 'Србија', 'sr', 'sr_Cyrl_RS', 0, 608, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(609, 'Serbian (Cyrillic, Kosovo)', 'Косово', 'sr', 'sr_Cyrl_XK', 0, 609, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(610, 'Serbian (Latin)', '', 'sr', 'sr_Latn', 0, 610, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(611, 'Serbian (Latin, Bosnia & Herzegovina)', 'Bosna i Hercegovina', 'sr', 'sr_Latn_BA', 0, 611, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(612, 'Serbian (Latin, Montenegro)', 'Crna Gora', 'sr', 'sr_Latn_ME', 0, 612, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(613, 'Serbian (Latin, Serbia)', 'Srbija', 'sr', 'sr_Latn_RS', 0, 613, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(614, 'Serbian (Latin, Kosovo)', 'Kosovo', 'sr', 'sr_Latn_XK', 0, 614, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(615, 'Swedish', '', 'sv', 'sv', 0, 615, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(616, 'Swedish (Åland Islands)', 'Åland', 'sv', 'sv_AX', 0, 616, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(617, 'Swedish (Finland)', 'Finland', 'sv', 'sv_FI', 0, 617, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(618, 'Swedish (Sweden)', 'Sverige', 'sv', 'sv_SE', 0, 618, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(619, 'Swahili', '', 'sw', 'sw', 0, 619, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(620, 'Swahili (Congo - Kinshasa)', 'Jamhuri ya Kidemokrasia ya Kongo', 'sw', 'sw_CD', 0, 620, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(621, 'Swahili (Kenya)', 'Kenya', 'sw', 'sw_KE', 0, 621, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(622, 'Swahili (Tanzania)', 'Tanzania', 'sw', 'sw_TZ', 0, 622, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(623, 'Swahili (Uganda)', 'Uganda', 'sw', 'sw_UG', 0, 623, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(624, 'Tamil', '', 'ta', 'ta', 0, 624, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(625, 'Tamil (India)', 'இந்தியா', 'ta', 'ta_IN', 0, 625, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(626, 'Tamil (Sri Lanka)', 'இலங்கை', 'ta', 'ta_LK', 0, 626, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(627, 'Tamil (Malaysia)', 'மலேசியா', 'ta', 'ta_MY', 0, 627, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(628, 'Tamil (Singapore)', 'சிங்கப்பூர்', 'ta', 'ta_SG', 0, 628, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(629, 'Telugu', '', 'te', 'te', 0, 629, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(630, 'Telugu (India)', 'భారత దేశం', 'te', 'te_IN', 0, 630, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(631, 'Teso', '', 'teo', 'teo', 0, 631, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(632, 'Teso (Kenya)', 'Kenia', 'teo', 'teo_KE', 0, 632, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(633, 'Teso (Uganda)', 'Uganda', 'teo', 'teo_UG', 0, 633, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(634, 'Thai', '', 'th', 'th', 0, 634, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(635, 'Thai (Thailand)', 'ไทย', 'th', 'th_TH', 0, 635, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(636, 'Tigrinya', '', 'ti', 'ti', 0, 636, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(637, 'Tigrinya (Eritrea)', 'ER', 'ti', 'ti_ER', 0, 637, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(638, 'Tigrinya (Ethiopia)', 'ET', 'ti', 'ti_ET', 0, 638, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(639, 'Tongan', '', 'to', 'to', 0, 639, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(640, 'Tongan (Tonga)', 'Tonga', 'to', 'to_TO', 0, 640, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(641, 'Turkish', '', 'tr', 'tr', 0, 641, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(642, 'Turkish (Cyprus)', 'Kıbrıs', 'tr', 'tr_CY', 0, 642, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(643, 'Turkish (Turkey)', 'Türkiye', 'tr', 'tr_TR', 0, 643, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(644, 'Tasawaq', '', 'twq', 'twq', 0, 644, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(645, 'Tasawaq (Niger)', 'Nižer', 'twq', 'twq_NE', 0, 645, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(646, 'Central Atlas Tamazight', '', 'tzm', 'tzm', 0, 646, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(647, 'Central Atlas Tamazight (Morocco)', 'Meṛṛuk', 'tzm', 'tzm_MA', 0, 647, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(648, 'Uyghur', '', 'ug', 'ug', 0, 648, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(649, 'Uyghur (China)', 'جۇڭگو', 'ug', 'ug_CN', 0, 649, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(650, 'Ukrainian', '', 'uk', 'uk', 0, 650, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(651, 'Ukrainian (Ukraine)', 'Україна', 'uk', 'uk_UA', 0, 651, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(652, 'Urdu', '', 'ur', 'ur', 0, 652, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(653, 'Urdu (India)', 'بھارت', 'ur', 'ur_IN', 0, 653, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(654, 'Urdu (Pakistan)', 'پاکستان', 'ur', 'ur_PK', 0, 654, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(655, 'Uzbek', '', 'uz', 'uz', 0, 655, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(656, 'Uzbek (Arabic)', '', 'uz', 'uz_Arab', 0, 656, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(657, 'Uzbek (Arabic, Afghanistan)', 'افغانستان', 'uz', 'uz_Arab_AF', 0, 657, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(658, 'Uzbek (Cyrillic)', '', 'uz', 'uz_Cyrl', 0, 658, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(659, 'Uzbek (Cyrillic, Uzbekistan)', 'Ўзбекистон', 'uz', 'uz_Cyrl_UZ', 0, 659, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(660, 'Uzbek (Latin)', '', 'uz', 'uz_Latn', 0, 660, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(661, 'Uzbek (Latin, Uzbekistan)', 'Oʻzbekiston', 'uz', 'uz_Latn_UZ', 0, 661, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(662, 'Vai', '', 'vai', 'vai', 0, 662, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(663, 'Vai (Latin)', '', 'vai', 'vai_Latn', 0, 663, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(664, 'Vai (Latin, Liberia)', 'Laibhiya', 'vai', 'vai_Latn_LR', 0, 664, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(665, 'Vai (Vai)', '', 'vai', 'vai_Vaii', 0, 665, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(666, 'Vai (Vai, Liberia)', 'ꕞꔤꔫꕩ', 'vai', 'vai_Vaii_LR', 0, 666, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(667, 'Vietnamese', '', 'vi', 'vi', 0, 667, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(668, 'Vietnamese (Vietnam)', 'Việt Nam', 'vi', 'vi_VN', 0, 668, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(669, 'Vunjo', '', 'vun', 'vun', 0, 669, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(670, 'Vunjo (Tanzania)', 'Tanzania', 'vun', 'vun_TZ', 0, 670, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(671, 'Walser', '', 'wae', 'wae', 0, 671, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(672, 'Walser (Switzerland)', 'Schwiz', 'wae', 'wae_CH', 0, 672, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(673, 'Soga', '', 'xog', 'xog', 0, 673, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(674, 'Soga (Uganda)', 'Yuganda', 'xog', 'xog_UG', 0, 674, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(675, 'Yangben', '', 'yav', 'yav', 0, 675, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(676, 'Yangben (Cameroon)', 'Kemelún', 'yav', 'yav_CM', 0, 676, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(677, 'Yiddish', '', 'yi', 'yi', 0, 677, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(678, 'Yiddish (World)', 'וועלט', 'yi', 'yi_001', 0, 678, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(679, 'Yoruba', '', 'yo', 'yo', 0, 679, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(680, 'Yoruba (Benin)', 'Orílɛ́ède Bɛ̀nɛ̀', 'yo', 'yo_BJ', 0, 680, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(681, 'Yoruba (Nigeria)', 'Orílẹ́ède Nàìjíríà', 'yo', 'yo_NG', 0, 681, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(682, 'Cantonese', '', 'yue', 'yue', 0, 682, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(683, 'Cantonese (Hong Kong SAR China)', '中華人民共和國香港特別行政區', 'yue', 'yue_HK', 0, 683, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(684, 'Standard Moroccan Tamazight', '', 'zgh', 'zgh', 0, 684, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(685, 'Standard Moroccan Tamazight (Morocco)', 'ⵍⵎⵖⵔⵉⴱ', 'zgh', 'zgh_MA', 0, 685, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(686, 'Chinese', '', 'zh', 'zh', 1, 686, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(687, 'Chinese (Simplified)', '', 'zh', 'zh_Hans', 0, 687, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(688, 'Chinese (Simplified, China)', '中国', 'zh', 'zh_Hans_CN', 0, 688, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(689, 'Chinese (Simplified, Hong Kong SAR China)', '中国香港特别行政区', 'zh', 'zh_Hans_HK', 0, 689, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(690, 'Chinese (Simplified, Macau SAR China)', '中国澳门特别行政区', 'zh', 'zh_Hans_MO', 0, 690, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(691, 'Chinese (Simplified, Singapore)', '新加坡', 'zh', 'zh_Hans_SG', 0, 691, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(692, 'Chinese (Traditional)', '', 'zh', 'zh_Hant', 0, 692, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(693, 'Chinese (Traditional, Hong Kong SAR China)', '中華人民共和國香港特別行政區', 'zh', 'zh_Hant_HK', 0, 693, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(694, 'Chinese (Traditional, Macau SAR China)', '中華人民共和國澳門特別行政區', 'zh', 'zh_Hant_MO', 0, 694, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(695, 'Chinese (Traditional, Taiwan)', '台灣', 'zh', 'zh_Hant_TW', 0, 695, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(696, 'Zulu', '', 'zu', 'zu', 0, 696, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL),
(697, 'Zulu (South Africa)', 'i-South Africa', 'zu', 'zu_ZA', 0, 697, '2018-09-10 06:50:32', NULL, '2018-09-10 06:50:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
CREATE TABLE IF NOT EXISTS `links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(20) DEFAULT NULL,
  `menu_id` int(20) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `visibility_roles` text COLLATE utf8mb4_unicode_ci,
  `params` text COLLATE utf8mb4_unicode_ci,
  `publish_start` datetime DEFAULT NULL,
  `publish_end` datetime DEFAULT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `parent_id`, `menu_id`, `title`, `class`, `description`, `link`, `target`, `rel`, `status`, `lft`, `rght`, `visibility_roles`, `params`, `publish_start`, `publish_end`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(5, NULL, 4, 'About', 'about', '', 'plugin:Croogo%2fNodes/controller:Nodes/action:view/type:page/slug:about', '', '', 1, 3, 4, '', '', NULL, NULL, '2009-10-06 23:14:21', NULL, '2009-08-19 12:23:33', NULL),
(6, NULL, 4, 'Contact', 'contact', '', 'plugin:Croogo%2fContacts/controller:Contacts/action:view/contact', '', '', 1, 5, 6, '', '', NULL, NULL, '2009-10-06 23:14:45', NULL, '2009-08-19 12:34:56', NULL),
(7, NULL, 3, 'Home', 'home', '', 'plugin:Croogo%2fNodes/controller:Nodes/action:promoted', '', '', 1, 5, 6, '', '', NULL, NULL, '2009-10-06 21:17:06', NULL, '2009-09-06 21:32:54', NULL),
(8, NULL, 3, 'About', 'about', '', 'plugin:Croogo%2fNodes/controller:Nodes/action:view/type:page/slug:about', '', '', 1, 7, 10, '', '', NULL, NULL, '2009-09-12 03:45:53', NULL, '2009-09-06 21:34:57', NULL),
(9, 8, 3, 'Child link', 'child-link', '', '#', '', '', 0, 8, 9, '', '', NULL, NULL, '2009-10-06 23:13:06', NULL, '2009-09-12 03:52:23', NULL),
(10, NULL, 5, 'Site Admin', 'site-admin', '', '/admin', '', '', 1, 1, 2, '', '', NULL, NULL, '2009-09-12 06:34:09', NULL, '2009-09-12 06:34:09', NULL),
(11, NULL, 5, 'Log out', 'log-out', '', '/plugin:Croogo%2fUsers/controller:Users/action:logout', '', '', 1, 7, 8, '[\"1\",\"2\"]', '', NULL, NULL, '2009-09-12 06:35:22', NULL, '2009-09-12 06:34:41', NULL),
(12, NULL, 6, 'Croogo', 'croogo', '', 'http://www.croogo.org', '', '', 1, 3, 4, '', '', NULL, NULL, '2009-09-12 23:31:59', NULL, '2009-09-12 23:31:59', NULL),
(14, NULL, 6, 'CakePHP', 'cakephp', '', 'http://www.cakephp.org', '', '', 1, 1, 2, '', '', NULL, NULL, '2009-10-07 03:25:25', NULL, '2009-09-12 23:38:43', NULL),
(15, NULL, 3, 'Contact', 'contact', '', '/plugin:Croogo%2fContacts/controller:Contacts/action:view/contact', '', '', 1, 11, 12, '', '', NULL, NULL, '2009-09-16 07:54:13', NULL, '2009-09-16 07:53:33', NULL),
(16, NULL, 5, 'Entries (RSS)', 'entries-rss', '', 'plugin:Croogo%2fNodes/controller:Nodes/action:promoted/_ext:rss', '', '', 1, 3, 4, '', '', NULL, NULL, '2009-10-27 17:46:22', NULL, '2009-10-27 17:46:22', NULL),
(17, NULL, 5, 'Comments (RSS)', 'comments-rss', '', 'plugin:Croogo%2fComments/controller:Comments/action:index/_ext:rss', '', '', 0, 5, 6, '', '', NULL, NULL, '2009-10-27 17:46:54', NULL, '2009-10-27 17:46:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` int(1) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `link_count` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci,
  `publish_start` datetime DEFAULT NULL,
  `publish_end` datetime DEFAULT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `title`, `alias`, `class`, `description`, `status`, `weight`, `link_count`, `params`, `publish_start`, `publish_end`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(3, 'Main Menu', 'main', '', '', 1, NULL, 4, '', NULL, NULL, '2009-08-19 12:21:06', NULL, '2009-07-22 01:49:53', NULL),
(4, 'Footer', 'footer', '', '', 1, NULL, 2, '', NULL, NULL, '2009-08-19 12:22:42', NULL, '2009-08-19 12:22:42', NULL),
(5, 'Meta', 'meta', '', '', 1, NULL, 4, '', NULL, NULL, '2009-09-12 06:33:29', NULL, '2009-09-12 06:33:29', NULL),
(6, 'Blogroll', 'blogroll', '', '', 1, NULL, 2, '', NULL, NULL, '2009-09-12 23:30:24', NULL, '2009-09-12 23:30:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `message_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meta`
--

DROP TABLE IF EXISTS `meta`;
CREATE TABLE IF NOT EXISTS `meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Node',
  `foreign_key` int(20) DEFAULT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `weight` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updated_by` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta`
--

INSERT INTO `meta` (`id`, `model`, `foreign_key`, `key`, `value`, `weight`, `created`, `created_by`, `updated`, `updated_by`) VALUES
(2, 'Croogo/Nodes.Nodes', 2, 'subtitle', 'this is the subtitle of the about page', NULL, '2018-09-10 07:10:14', 1, NULL, 1),
(3, 'Croogo/Nodes.Nodes', 2, 'ourish', 'ourish panme', NULL, '2018-09-10 07:11:22', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_taxonomies`
--

DROP TABLE IF EXISTS `model_taxonomies`;
CREATE TABLE IF NOT EXISTS `model_taxonomies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(20) NOT NULL,
  `taxonomy_id` int(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `model` (`model`,`foreign_key`,`taxonomy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_taxonomies`
--

INSERT INTO `model_taxonomies` (`id`, `model`, `foreign_key`, `taxonomy_id`) VALUES
(1, 'Croogo/Nodes.Nodes', 1, 1),
(2, 'Croogo/Nodes.Nodes', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `nodes`
--

DROP TABLE IF EXISTS `nodes`;
CREATE TABLE IF NOT EXISTS `nodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(20) DEFAULT NULL,
  `user_id` int(20) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `status` int(1) DEFAULT NULL,
  `mime_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_status` int(1) NOT NULL DEFAULT '1',
  `comment_count` int(11) DEFAULT '0',
  `promote` tinyint(1) NOT NULL DEFAULT '0',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `terms` text COLLATE utf8mb4_unicode_ci,
  `sticky` tinyint(1) NOT NULL DEFAULT '0',
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `visibility_roles` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'node',
  `publish_start` datetime DEFAULT NULL,
  `publish_end` datetime DEFAULT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nodes`
--

INSERT INTO `nodes` (`id`, `parent_id`, `user_id`, `title`, `slug`, `body`, `excerpt`, `status`, `mime_type`, `comment_status`, `comment_count`, `promote`, `path`, `terms`, `sticky`, `lft`, `rght`, `visibility_roles`, `type`, `publish_start`, `publish_end`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(1, NULL, 1, 'Hello World', 'hello-world', '<p>Welcome to Croogo. This is your first post. You can edit or delete it from the admin panel.</p>\r\n', '', 1, '', 2, 1, 1, '/blog/hello-world', '{\"1\":\"uncategorized\"}', 0, 1, 2, NULL, 'blog', NULL, NULL, '2018-09-10 07:13:34', 1, '2009-12-25 11:00:00', NULL),
(2, NULL, 1, 'About', 'about', '<p>This is an example of a Croogo page, you could edit this to put information about yourself or your site.</p>\r\n', '', 1, '', 0, 0, 0, '/about', '', 0, 1, 2, NULL, 'page', NULL, NULL, '2018-09-10 07:29:34', 1, '2009-12-25 22:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `phinxlog`
--

DROP TABLE IF EXISTS `phinxlog`;
CREATE TABLE IF NOT EXISTS `phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phinxlog`
--

INSERT INTO `phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20180910100442, 'Initial', '2018-09-10 07:04:44', '2018-09-10 07:04:44', 0);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
CREATE TABLE IF NOT EXISTS `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` int(1) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `description`, `status`, `weight`, `created`, `modified`, `category_id`) VALUES
(5, 'Project 2', '<p>This is the description of project 2</p>\r\n', 1, 2, '2018-08-29 10:17:32', '2018-08-30 08:14:47', 2),
(6, 'Project 3', '<p>This is the description of project 3</p>\r\n', 1, 1, '2018-08-29 10:18:09', '2018-08-30 11:49:33', 2),
(7, 'Project 4', '<p>This is the description of project 4</p>\r\n', 0, 3, '2018-08-29 13:10:21', '2018-08-29 13:10:28', NULL),
(8, 'Project 5', '<p>This is the description of project 5</p>\r\n', 1, 4, '2018-08-30 08:11:28', '2018-08-30 11:38:43', 1),
(9, 'Project 10', '<p>This is the description of project 10</p>\r\n', 1, 5, '2018-08-30 11:53:33', '2018-08-30 11:53:33', 3);

-- --------------------------------------------------------

--
-- Table structure for table `projects_phinxlog`
--

DROP TABLE IF EXISTS `projects_phinxlog`;
CREATE TABLE IF NOT EXISTS `projects_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projects_phinxlog`
--

INSERT INTO `projects_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20180829120038, 'CreateProjects', '2018-09-10 03:54:04', '2018-09-10 03:54:05', 0),
(20180829131506, 'CreateCategories', '2018-09-10 03:54:05', '2018-09-10 03:54:05', 0),
(20180829131737, 'AddCategoryIdToProjects', '2018-09-10 03:54:05', '2018-09-10 03:54:06', 0),
(20180829132624, 'AddNameToCategories', '2018-09-10 03:54:06', '2018-09-10 03:54:07', 0),
(20180830082253, 'CreateTags', '2018-09-10 03:54:07', '2018-09-10 03:54:07', 0),
(20180830083912, 'CreateProjectsTags', '2018-09-10 03:54:07', '2018-09-10 03:54:07', 0);

-- --------------------------------------------------------

--
-- Table structure for table `projects_tags`
--

DROP TABLE IF EXISTS `projects_tags`;
CREATE TABLE IF NOT EXISTS `projects_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects_tags`
--

INSERT INTO `projects_tags` (`id`, `project_id`, `tag_id`) VALUES
(4, 6, 3),
(5, 6, 2),
(6, 6, 4),
(7, 8, 1),
(8, 9, 1),
(9, 9, 2);

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

DROP TABLE IF EXISTS `regions`;
CREATE TABLE IF NOT EXISTS `regions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `block_count` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updated_by` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `title`, `alias`, `description`, `block_count`, `created`, `created_by`, `updated`, `updated_by`) VALUES
(3, 'none', 'none', '', 0, NULL, NULL, NULL, NULL),
(4, 'right', 'right', '', 6, NULL, NULL, NULL, NULL),
(6, 'left', 'left', '', 0, NULL, NULL, NULL, NULL),
(7, 'header', 'header', '', 0, NULL, NULL, NULL, NULL),
(8, 'footer', 'footer', '', 0, NULL, NULL, NULL, NULL),
(9, 'region1', 'region1', '', 0, NULL, NULL, NULL, NULL),
(10, 'region2', 'region2', '', 0, NULL, NULL, NULL, NULL),
(11, 'region3', 'region3', '', 0, NULL, NULL, NULL, NULL),
(12, 'region4', 'region4', '', 0, NULL, NULL, NULL, NULL),
(13, 'region5', 'region5', '', 0, NULL, NULL, NULL, NULL),
(14, 'region6', 'region6', '', 0, NULL, NULL, NULL, NULL),
(15, 'region7', 'region7', '', 0, NULL, NULL, NULL, NULL),
(16, 'region8', 'region8', '', 0, NULL, NULL, NULL, NULL),
(17, 'region9', 'region9', '', 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updated_by` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `alias`, `created`, `created_by`, `updated`, `updated_by`) VALUES
(1, 'SuperAdmin', 'superadmin', '2009-04-05 00:10:34', NULL, '2009-04-05 00:10:34', NULL),
(2, 'Registered', 'registered', '2009-04-05 00:10:50', NULL, '2009-04-06 05:20:38', NULL),
(3, 'Public', 'public', '2009-04-05 00:12:38', NULL, '2009-04-07 01:41:45', NULL),
(4, 'Admin', 'admin', '2017-01-18 01:39:00', NULL, '2017-01-18 01:39:00', NULL),
(5, 'Publisher', 'publisher', '2017-01-18 01:39:00', NULL, '2017-01-18 01:39:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
CREATE TABLE IF NOT EXISTS `roles_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `granted_by` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `editable` tinyint(1) NOT NULL DEFAULT '1',
  `weight` int(11) DEFAULT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updated_by` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `title`, `description`, `input_type`, `editable`, `weight`, `params`, `created`, `created_by`, `updated`, `updated_by`) VALUES
(6, 'Site.title', 'Croogo', '', '', '', 1, 1, '', NULL, NULL, NULL, NULL),
(7, 'Site.tagline', 'A CakePHP powered Content Management System.', '', '', 'textarea', 1, 2, '', NULL, NULL, NULL, NULL),
(8, 'Site.email', 'you@your-site.com', '', '', '', 1, 3, '', NULL, NULL, NULL, NULL),
(9, 'Site.status', '1', '', '', 'checkbox', 1, 6, '', NULL, NULL, NULL, NULL),
(12, 'Meta.robots', 'index, follow', '', '', '', 1, 6, '', NULL, NULL, NULL, NULL),
(13, 'Meta.keywords', 'croogo, Croogo', '', '', 'textarea', 1, 7, '', NULL, NULL, NULL, NULL),
(14, 'Meta.description', 'Croogo - A CakePHP powered Content Management System', '', '', 'textarea', 1, 8, '', NULL, NULL, NULL, NULL),
(15, 'Meta.generator', 'Croogo - Content Management System', '', '', '', 0, 9, '', NULL, NULL, NULL, NULL),
(16, 'Service.akismet_key', 'your-key', '', '', '', 1, 11, '', NULL, NULL, NULL, NULL),
(17, 'Service.recaptcha_public_key', 'your-public-key', '', '', '', 1, 12, '', NULL, NULL, NULL, NULL),
(18, 'Service.recaptcha_private_key', 'your-private-key', '', '', '', 1, 13, '', NULL, NULL, NULL, NULL),
(19, 'Service.akismet_url', 'http://your-blog.com', '', '', '', 1, 10, '', NULL, NULL, NULL, NULL),
(20, 'Site.theme', 'Sevag', '', '', '', 0, 14, '', NULL, NULL, NULL, 1),
(21, 'Site.feed_url', '', '', '', '', 0, 15, '', NULL, NULL, NULL, NULL),
(22, 'Reading.nodes_per_page', '5', '', '', '', 1, 16, '', NULL, NULL, NULL, NULL),
(23, 'Writing.wysiwyg', '1', 'Enable WYSIWYG editor', '', 'checkbox', 1, 17, '', NULL, NULL, NULL, NULL),
(24, 'Comment.level', '1', '', 'levels deep (threaded comments)', '', 1, 18, '', NULL, NULL, NULL, NULL),
(25, 'Comment.feed_limit', '10', '', 'number of comments to show in feed', '', 1, 19, '', NULL, NULL, NULL, NULL),
(26, 'Site.locale', 'en_US', '', '', 'text', 1, 20, '', NULL, NULL, NULL, NULL),
(27, 'Reading.date_time_format', 'EEE, MMM dd yyyy HH:mm:ss', '', '', '', 1, 21, '', NULL, NULL, NULL, NULL),
(28, 'Comment.date_time_format', 'MMM dd, yyyy', '', '', '', 1, 22, '', NULL, NULL, NULL, NULL),
(29, 'Site.timezone', 'UTC', '', 'Provide a valid timezone identifier as specified in https://php.net/manual/en/timezones.php', 'select', 1, 4, 'optionClass=Croogo/Settings.Timezones', NULL, NULL, NULL, NULL),
(32, 'Hook.bootstraps', 'Croogo/Settings,Croogo/Contacts,Croogo/Nodes,Croogo/Meta,Croogo/Menus,Croogo/Users,Croogo/Blocks,Croogo/Taxonomy,Croogo/FileManager,Croogo/Wysiwyg,Croogo/Dashboards,Projects,Assets,Croogo/Ckeditor', '', '', '', 0, 23, '', NULL, NULL, NULL, 1),
(33, 'Comment.email_notification', '1', 'Enable email notification', '', 'checkbox', 1, 24, '', NULL, NULL, NULL, NULL),
(34, 'Access Control.multiRole', '0', 'Enable Multiple Roles', '', 'checkbox', 1, 25, '', NULL, NULL, NULL, NULL),
(35, 'Access Control.rowLevel', '0', 'Row Level Access Control', '', 'checkbox', 1, 26, '', NULL, NULL, NULL, NULL),
(36, 'Access Control.autoLoginDuration', '+1 week', '\"Remember Me\" Duration', 'Eg: +1 day, +1 week. Leave empty to disable.', 'text', 1, 27, '', NULL, NULL, NULL, NULL),
(37, 'Access Control.models', '', 'Models with Row Level Acl', 'Select models to activate Row Level Access Control on', 'multiple', 1, 26, 'multiple=checkbox\noptions={\"Croogo/Nodes.Nodes\": \"Nodes\", \"Croogo/Blocks.Blocks\": \"Blocks\", \"Croogo/Menus.Menus\": \"Menus\", \"Croogo/Menus.Links\": \"Links\"}', NULL, NULL, NULL, NULL),
(38, 'Site.ipWhitelist', '127.0.0.1', 'Whitelisted IP Addresses', 'Separate multiple IP addresses with comma', 'text', 1, 27, '', NULL, NULL, NULL, NULL),
(39, 'Site.asset_timestamp', 'force', 'Asset timestamp', 'Appends a timestamp which is last modified time of the particular file at the end of asset files URLs (CSS, JavaScript, Image). Useful to prevent visitors to visit the site with an outdated version of these files in their browser cache.', 'radio', 1, 28, 'options={\"0\": \"Disabled\", \"1\": \"Enabled in debug mode only\", \"force\": \"Always enabled\"}', NULL, NULL, NULL, NULL),
(40, 'Site.admin_theme', 'Croogo/Core', 'Administration Theme', '', 'text', 1, 29, '', NULL, NULL, NULL, NULL),
(41, 'Site.home_url', '', 'Home Url', 'Default action for home page in link string format.', 'text', 1, 30, '', NULL, NULL, NULL, NULL),
(42, 'Croogo.version', '', 'Croogo Version', '', 'text', 0, 31, '', NULL, NULL, NULL, NULL),
(43, 'Croogo.appVersion', '', 'App Version', '', 'text', 0, 31, '', NULL, NULL, NULL, NULL),
(44, 'Theme.bgImagePath', '', 'Background Image', '', 'file', 1, 32, '', NULL, NULL, NULL, NULL),
(45, 'Access Control.splitSession', '', 'Separate front-end and admin session', '', 'checkbox', 1, 32, '', NULL, NULL, NULL, NULL),
(46, 'Croogo.installed', '1', '', '', '', 0, 0, '', NULL, NULL, NULL, NULL),
(47, 'Assets.pages', 'Croogo/Nodes.Admin/Nodes/index;Croogo/Nodes.Nodes,\r\nProjects.Admin/Projects/index;Projects.Projects', '', '(ex: Plugin.Prefix/Controller/action;Plugin.Table) Comma Separated', 'textarea', 1, 0, '', NULL, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `status`, `weight`, `created`, `modified`) VALUES
(1, 'Food', 'food', 1, 1, '2018-08-30 08:29:05', '2018-08-30 08:32:19'),
(2, 'Blue', 'blue', 1, 3, '2018-08-30 08:29:34', '2018-08-30 08:32:23'),
(3, 'Automatic', 'automatic', 1, 2, '2018-08-30 08:29:54', '2018-08-30 08:32:38'),
(4, 'Pizza', 'pizza', 1, 4, '2018-08-30 08:34:43', '2018-08-30 08:34:43');

-- --------------------------------------------------------

--
-- Table structure for table `taxonomies`
--

DROP TABLE IF EXISTS `taxonomies`;
CREATE TABLE IF NOT EXISTS `taxonomies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(20) DEFAULT NULL,
  `term_id` int(10) NOT NULL,
  `vocabulary_id` int(10) NOT NULL,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxonomies`
--

INSERT INTO `taxonomies` (`id`, `parent_id`, `term_id`, `vocabulary_id`, `lft`, `rght`) VALUES
(1, NULL, 1, 1, 1, 2),
(2, NULL, 2, 1, 3, 4),
(3, NULL, 3, 2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

DROP TABLE IF EXISTS `terms`;
CREATE TABLE IF NOT EXISTS `terms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `title`, `slug`, `description`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(1, 'Uncategorized', 'uncategorized', '', '2009-07-22 03:38:43', NULL, '2009-07-22 03:34:56', NULL),
(2, 'Announcements', 'announcements', '', '2010-05-16 23:57:06', NULL, '2009-07-22 03:45:37', NULL),
(3, 'mytag', 'mytag', '', '2009-08-26 14:42:43', NULL, '2009-08-26 14:42:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
CREATE TABLE IF NOT EXISTS `types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `format_show_author` tinyint(1) NOT NULL DEFAULT '1',
  `format_show_date` tinyint(1) NOT NULL DEFAULT '1',
  `format_use_wysiwyg` tinyint(1) NOT NULL DEFAULT '1',
  `comment_status` int(1) NOT NULL DEFAULT '1',
  `comment_approve` tinyint(1) NOT NULL DEFAULT '1',
  `comment_spam_protection` tinyint(1) NOT NULL DEFAULT '0',
  `comment_captcha` tinyint(1) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci,
  `plugin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `title`, `alias`, `description`, `format_show_author`, `format_show_date`, `format_use_wysiwyg`, `comment_status`, `comment_approve`, `comment_spam_protection`, `comment_captcha`, `params`, `plugin`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(1, 'Page', 'page', 'A page is a simple method for creating and displaying information that rarely changes, such as an \"About us\" section of a website. By default, a page entry does not allow visitor comments.', 0, 0, 1, 0, 1, 0, 0, 'routes=true', NULL, '2009-09-09 00:23:24', NULL, '2009-09-02 18:06:27', NULL),
(2, 'Blog', 'blog', 'A blog entry is a single post to an online journal, or blog.', 1, 1, 1, 2, 1, 0, 0, 'routes=true', NULL, '2009-09-15 12:15:43', NULL, '2009-09-02 18:20:44', NULL),
(3, 'Attachment', 'attachment', NULL, 1, 1, 1, 1, 1, 0, 0, NULL, 'Croogo/FileManager', '2018-09-10 00:00:00', NULL, '2018-09-10 00:00:00', NULL),
(4, 'Node', 'node', 'Default content type.', 1, 1, 1, 2, 1, 0, 0, 'routes=true', NULL, '2009-10-06 21:53:15', NULL, '2009-09-05 23:51:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `types_vocabularies`
--

DROP TABLE IF EXISTS `types_vocabularies`;
CREATE TABLE IF NOT EXISTS `types_vocabularies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(20) NOT NULL,
  `vocabulary_id` int(20) NOT NULL,
  `weight` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type_id` (`type_id`,`vocabulary_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types_vocabularies`
--

INSERT INTO `types_vocabularies` (`id`, `type_id`, `vocabulary_id`, `weight`) VALUES
(32, 1, 1, NULL),
(33, 1, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activation_key` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `timezone` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'UTC',
  `created_by` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `username`, `password`, `name`, `email`, `website`, `activation_key`, `image`, `bio`, `status`, `updated`, `updated_by`, `created`, `timezone`, `created_by`) VALUES
(1, 1, 'admin', '$2y$10$Zd87U1SixY7pmQAc06nbY.sPBoABUXmis8DjyMBA0oPwodsoWHHlW', 'admin', '', NULL, '493a2153c1c341944dcd00eeba933e4e', NULL, NULL, 1, '2018-09-10 06:51:12', NULL, '2018-09-10 06:51:12', 'UTC', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vocabularies`
--

DROP TABLE IF EXISTS `vocabularies`;
CREATE TABLE IF NOT EXISTS `vocabularies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `multiple` tinyint(1) NOT NULL DEFAULT '0',
  `tags` tinyint(1) NOT NULL DEFAULT '0',
  `plugin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vocabularies`
--

INSERT INTO `vocabularies` (`id`, `title`, `alias`, `description`, `required`, `multiple`, `tags`, `plugin`, `weight`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(1, 'Categories', 'categories', '', 0, 1, 0, NULL, 1, '2018-09-10 07:28:56', NULL, '2009-07-22 02:16:21', NULL),
(2, 'Tags', 'tags', '', 0, 1, 1, NULL, 2, '2018-09-10 07:31:15', NULL, '2009-07-22 02:16:34', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
