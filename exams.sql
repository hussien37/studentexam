-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 10, 2021 at 01:55 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `students`
--

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

DROP TABLE IF EXISTS `exams`;
CREATE TABLE IF NOT EXISTS `exams` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `degree` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `question`, `answer`, `degree`) VALUES
(1, 'ما هو الغاز الأساسي الذي يساعدنا حتى نتمكن من التنفس؟', 'الأوكسيجين', 20),
(2, 'ما هو اقرب كوكب الى الشمس؟', 'كوكب عطارد', 20),
(3, 'كم عدد أسنان الإنسان البالغ؟', '32', 20),
(4, 'ما هو أكبر كوكب في المجموعة الشمسية؟', 'كوكب المشتري', 20),
(5, 'ماذا يجمع النحل ويستخدم لصنع العسل؟', 'جمع الرحيق من النباتات المزهرة', 20),
(6, 'ما هو الكوكب الاكثر حرارة في المجموعة الشمسية؟', 'كوكب الزهرة', 20),
(7, 'ما هي أندر فصيلة دم؟', 'AB سلبي', 20),
(8, 'على أي جزء من جسمك ستجد الصيوان؟', 'الأذن', 20),
(9, 'ما هي نقطة غليان الماء؟', '100 درجة مئوية', 20),
(10, 'ما هو أكبر حيوان بري معروف؟', 'الفيل', 20),
(11, 'ما هو أكبر حيوان معروف؟', 'الحوث الأزرق', 20),
(12, 'ما هي الأنسجة التي تربط العضلات بالعظام؟', 'الأوتار', 20),
(13, 'من كان العالم الذي اقترح قوانين الحركة الثلاثة؟', 'اسحاق نيوتن', 20),
(14, 'نبات الأرض محاط بطبقات مختلفة من الغاز ، والتي عند جمعها معًا ، تسمي …؟', 'الغلاف الجوي', 20),
(15, 'أي من قوانين نيوتن ينص على أنه “لكل فعل رد فعل مساوٍ ومعاكس؟', 'قانون الحركة الثالث', 20);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
