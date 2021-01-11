-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 23, 2019 at 06:58 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Symptoms`
--

-- --------------------------------------------------------

--
-- Table structure for table `Access`
--

CREATE TABLE `Access` (
  `access_ID` int(11) NOT NULL,
  `ill_ID` int(2) NOT NULL,
  `accessed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Name` varchar(30) COLLATE utf8_bin NOT NULL,
  `sympt` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Access`
--

INSERT INTO `Access` (`access_ID`, `ill_ID`, `accessed`, `Name`, `sympt`) VALUES
(12, 2, '2019-05-22 06:49:39', 'The Red Death', ''),
(13, 2, '2019-05-22 06:49:54', 'The Red Death', ''),
(14, 1, '2019-05-22 06:49:57', 'Dragon Pox', ''),
(15, 3, '2019-05-22 06:50:00', 'Lamanla Virus', ''),
(16, 1, '2019-05-22 06:50:03', 'Dragon Pox', ''),
(17, 3, '2019-05-22 07:18:56', 'Lamanla Virus', ''),
(18, 1, '2019-05-22 07:19:27', 'Dragon Pox', ''),
(20, 1, '2019-05-22 08:17:40', 'Dragon Pox', ''),
(21, 1, '2019-05-22 08:19:19', 'Dragon Pox', ''),
(22, 2, '2019-05-22 13:55:28', 'The Red Death', ''),
(23, 3, '2019-05-22 13:55:41', 'Lamanla Virus', ''),
(24, 2, '2019-05-22 16:40:23', 'The Red Death', ''),
(25, 4, '2019-05-22 17:25:55', 'Atlantis Complex', ''),
(26, 5, '2019-05-22 17:26:01', 'Love Sickness', ''),
(27, 5, '2019-05-22 17:28:41', 'Love Sickness', ''),
(28, 6, '2019-05-22 17:29:13', 'MacGregor\'s Syndrome', ''),
(29, 7, '2019-05-22 17:29:38', 'Mad Zombie Disease', ''),
(30, 7, '2019-05-22 17:59:32', 'Mad Zombie Disease', ''),
(31, 7, '2019-05-22 18:00:37', 'Mad Zombie Disease', ''),
(32, 7, '2019-05-22 18:00:45', 'Mad Zombie Disease', ''),
(33, 7, '2019-05-22 18:01:44', 'Mad Zombie Disease', ''),
(34, 7, '2019-05-22 18:02:02', 'Mad Zombie Disease', ''),
(35, 7, '2019-05-22 18:02:09', 'Mad Zombie Disease', ''),
(36, 7, '2019-05-22 18:02:21', 'Mad Zombie Disease', ''),
(37, 7, '2019-05-22 18:02:51', 'Mad Zombie Disease', ''),
(38, 7, '2019-05-22 18:03:46', 'Mad Zombie Disease', ''),
(39, 7, '2019-05-22 18:07:40', 'Mad Zombie Disease', ''),
(40, 7, '2019-05-22 18:08:07', 'Mad Zombie Disease', ''),
(41, 7, '2019-05-22 18:08:16', 'Mad Zombie Disease', ''),
(42, 7, '2019-05-22 18:09:16', 'Mad Zombie Disease', ''),
(43, 2, '2019-05-22 18:09:22', 'The Red Death', ''),
(44, 1, '2019-05-22 18:09:30', 'Dragon Pox', ''),
(45, 1, '2019-05-22 18:13:46', 'Dragon Pox', ''),
(46, 1, '2019-05-22 18:14:26', 'Dragon Pox', ''),
(47, 1, '2019-05-22 18:15:05', 'Dragon Pox', ''),
(48, 1, '2019-05-22 18:15:34', 'Dragon Pox', ''),
(49, 1, '2019-05-22 18:16:31', 'Dragon Pox', ''),
(50, 2, '2019-05-22 18:16:38', 'The Red Death', ''),
(51, 3, '2019-05-22 18:16:43', 'Lamanla Virus', ''),
(52, 3, '2019-05-22 18:17:38', 'Lamanla Virus', ''),
(53, 1, '2019-05-22 18:17:48', 'Dragon Pox', ''),
(54, 5, '2019-05-22 18:18:02', 'Love Sickness', ''),
(55, 6, '2019-05-22 18:18:19', 'MacGregor\'s Syndrome', ''),
(56, 4, '2019-05-22 18:18:30', 'Atlantis Complex', ''),
(57, 7, '2019-05-22 18:18:36', 'Mad Zombie Disease', ''),
(58, 6, '2019-05-22 19:11:10', 'MacGregor\'s Syndrome', ''),
(59, 2, '2019-05-22 19:24:16', 'The Red Death', ''),
(60, 2, '2019-05-22 19:24:44', 'The Red Death', ''),
(61, 2, '2019-05-22 19:25:09', 'The Red Death', ''),
(62, 2, '2019-05-22 19:25:24', 'The Red Death', ''),
(63, 2, '2019-05-22 19:25:41', 'The Red Death', ''),
(64, 6, '2019-05-22 19:25:45', 'MacGregor\'s Syndrome', ''),
(65, 3, '2019-05-22 19:26:13', 'Lamanla Virus', ''),
(66, 7, '2019-05-22 19:26:18', 'Mad Zombie Disease', ''),
(67, 5, '2019-05-22 19:26:22', 'Love Sickness', ''),
(68, 2, '2019-05-22 19:37:10', 'The Red Death', ''),
(69, 1, '2019-05-22 19:37:34', 'Dragon Pox', ''),
(70, 1, '2019-05-22 20:21:35', 'Dragon Pox', ''),
(71, 1, '2019-05-22 20:25:56', 'Dragon Pox', ''),
(72, 2, '2019-05-22 20:26:11', 'The Red Death', ''),
(73, 7, '2019-05-22 20:26:14', 'Mad Zombie Disease', ''),
(74, 5, '2019-05-22 20:26:17', 'Love Sickness', ''),
(75, 1, '2019-05-22 20:29:30', 'Dragon Pox', ''),
(76, 2, '2019-05-22 20:30:29', 'The Red Death', ''),
(77, 4, '2019-05-22 20:30:35', 'Atlantis Complex', ''),
(78, 4, '2019-05-22 20:31:09', 'Atlantis Complex', ''),
(79, 4, '2019-05-22 20:32:42', 'Atlantis Complex', ''),
(80, 4, '2019-05-22 20:33:22', 'Atlantis Complex', ''),
(81, 1, '2019-05-22 20:33:33', 'Dragon Pox', ''),
(82, 3, '2019-05-22 20:33:38', 'Lamanla Virus', ''),
(83, 4, '2019-05-22 20:33:53', 'Atlantis Complex', ''),
(84, 6, '2019-05-22 20:33:58', 'MacGregor\'s Syndrome', ''),
(85, 7, '2019-05-22 20:34:07', 'Mad Zombie Disease', ''),
(86, 1, '2019-05-22 21:51:01', 'Dragon Pox', ''),
(87, 1, '2019-05-23 03:12:47', 'Dragon Pox', ''),
(88, 1, '2019-05-23 03:12:59', 'Dragon Pox', ''),
(89, 1, '2019-05-23 03:17:15', 'Dragon Pox', ''),
(90, 1, '2019-05-23 03:18:35', 'Dragon Pox', ''),
(91, 1, '2019-05-23 03:19:42', 'Dragon Pox', ''),
(92, 1, '2019-05-23 03:20:10', 'Dragon Pox', ''),
(93, 1, '2019-05-23 03:20:42', 'Dragon Pox', ''),
(94, 1, '2019-05-23 03:23:42', 'Dragon Pox', ''),
(95, 7, '2019-05-23 03:27:25', 'Mad Zombie Disease', ''),
(96, 7, '2019-05-23 03:31:11', 'Mad Zombie Disease', ''),
(97, 7, '2019-05-23 03:32:44', 'Mad Zombie Disease', ''),
(98, 7, '2019-05-23 03:33:12', 'Mad Zombie Disease', ''),
(99, 7, '2019-05-23 03:33:20', 'Mad Zombie Disease', ''),
(100, 7, '2019-05-23 03:33:21', 'Mad Zombie Disease', ''),
(101, 7, '2019-05-23 03:33:22', 'Mad Zombie Disease', ''),
(102, 7, '2019-05-23 03:33:43', 'Mad Zombie Disease', ''),
(103, 7, '2019-05-23 03:33:57', 'Mad Zombie Disease', ''),
(104, 7, '2019-05-23 03:34:16', 'Mad Zombie Disease', ''),
(105, 7, '2019-05-23 03:34:24', 'Mad Zombie Disease', ''),
(106, 7, '2019-05-23 03:35:26', 'Mad Zombie Disease', ''),
(107, 7, '2019-05-23 03:35:49', 'Mad Zombie Disease', ''),
(108, 7, '2019-05-23 03:37:55', 'Mad Zombie Disease', ''),
(109, 7, '2019-05-23 03:39:05', 'Mad Zombie Disease', ''),
(110, 7, '2019-05-23 03:40:30', 'Mad Zombie Disease', ''),
(111, 7, '2019-05-23 03:41:22', 'Mad Zombie Disease', ''),
(112, 7, '2019-05-23 03:41:49', 'Mad Zombie Disease', ''),
(113, 7, '2019-05-23 03:42:09', 'Mad Zombie Disease', ''),
(114, 7, '2019-05-23 03:42:50', 'Mad Zombie Disease', ''),
(115, 1, '2019-05-23 03:43:37', 'Dragon Pox', ''),
(116, 1, '2019-05-23 03:43:41', 'Dragon Pox', ''),
(117, 2, '2019-05-23 03:43:44', 'The Red Death', ''),
(118, 2, '2019-05-23 03:44:21', 'The Red Death', ''),
(119, 7, '2019-05-23 03:55:42', 'Mad Zombie Disease', ''),
(120, 7, '2019-05-23 03:55:56', 'Mad Zombie Disease', ''),
(121, 7, '2019-05-23 03:57:20', 'Mad Zombie Disease', ''),
(122, 7, '2019-05-23 03:58:28', 'Mad Zombie Disease', ''),
(123, 7, '2019-05-23 03:59:28', 'Mad Zombie Disease', ''),
(124, 2, '2019-05-23 03:59:43', 'The Red Death', ''),
(125, 1, '2019-05-23 03:59:47', 'Dragon Pox', ''),
(126, 7, '2019-05-23 03:59:52', 'Mad Zombie Disease', ''),
(127, 6, '2019-05-23 03:59:56', 'MacGregor\'s Syndrome', ''),
(128, 5, '2019-05-23 04:00:01', 'Love Sickness', ''),
(129, 7, '2019-05-23 04:01:05', 'Mad Zombie Disease', ''),
(130, 7, '2019-05-23 04:05:09', 'Mad Zombie Disease', ''),
(131, 7, '2019-05-23 04:08:30', 'Mad Zombie Disease', ''),
(132, 7, '2019-05-23 04:09:30', 'Mad Zombie Disease', ''),
(133, 7, '2019-05-23 04:09:59', 'Mad Zombie Disease', ''),
(134, 7, '2019-05-23 04:10:23', 'Mad Zombie Disease', ''),
(135, 4, '2019-05-23 04:10:51', 'Atlantis Complex', ''),
(136, 4, '2019-05-23 04:11:33', 'Atlantis Complex', ''),
(137, 1, '2019-05-23 04:11:55', 'Dragon Pox', ''),
(138, 1, '2019-05-23 04:17:19', 'Dragon Pox', ''),
(139, 6, '2019-05-23 04:17:36', 'MacGregor\'s Syndrome', ''),
(140, 6, '2019-05-23 04:20:42', 'MacGregor\'s Syndrome', ''),
(141, 6, '2019-05-23 04:20:42', 'MacGregor\'s Syndrome', ''),
(142, 6, '2019-05-23 04:23:57', 'MacGregor\'s Syndrome', '');

-- --------------------------------------------------------

--
-- Table structure for table `Illness`
--

CREATE TABLE `Illness` (
  `ill_ID` int(2) NOT NULL,
  `Name` varchar(90) COLLATE utf8_bin NOT NULL,
  `Descr` varchar(1000) COLLATE utf8_bin NOT NULL,
  `Cure` varchar(300) COLLATE utf8_bin NOT NULL,
  `Source` varchar(100) COLLATE utf8_bin NOT NULL,
  `Kind` varchar(30) COLLATE utf8_bin NOT NULL,
  `total` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Illness`
--

INSERT INTO `Illness` (`ill_ID`, `Name`, `Descr`, `Cure`, `Source`, `Kind`, `total`) VALUES
(1, 'Dragon Pox', 'Dragon pox is a potentially fatal contagious disease that occurs in wizards and witches. Its symptoms are presumably similar to Muggle illnesses like smallpox and chicken pox. However, in addition to leaving the victim\'s skin pockmarked, dragon pox causes a lasting greenish tinge. Simpler cases present with a green-and-purple rash between the toes and sparks coming out of the nostrils when the patient sneezes.', 'Magical Bugs Ward at St. Mungo\'s Hospital', 'Harry Potter', 'Book', 0),
(2, 'The Red Death', 'Victims bleed from their pores before eventually dying. Most likely a viral hemorrhagic fever.', 'There is no cure currently.', 'The Masque of the Red Death', 'Book', 0),
(3, 'Lamanla Virus', '\"Symptoms include the sudden onset fever, hallucinations, lesions, cold sweats. It is a fatal virus that\'s transmitted through direct human contact. Upon contraction, death strikes between four hours and five months.\"', 'There is no cure currently.', 'Wolf Warrior 2', 'Movie', 0),
(4, 'Atlantis Complex', 'A psychosis common in guilt ridden fairies, but is contracted by Artemis by his dabbling in fairy magic. The symptoms include obsessive compulsive behavior, paranoia, multiple personality disorder, and in his case professing his love to Holly Short.', 'No known cure', 'Artemis Fowl: The Atlantis Complex', 'Book', 0),
(5, 'Love Sickness', 'A mostly psychosomatic disease that can only be contracted by the empress of the Kuja Tribe if she falls in love with a man and denies the feeling. It causes weakness, pain, and eventually death from declining health. This disease has killed many previous empresses, and is currently a threat to Boa Hancock, who pursues Monkey D. Luffy to avoid the symptoms.', 'The only known cure is for the victim to accept the emotions and pursue the object of her desire.', 'One Piece', 'TV-Show', 0),
(6, 'MacGregor\'s Syndrome', 'A four-stage disease that Mr. Freeze\'s wife, Nora, was suffering from and was placed in cryogenic stasis for. The film also revealed that Batman\'s butler, Alfred Pennyworth, was also suffering from Stage-1 MacGregor\'s. ', 'Mr. Freeze successfully created the antidote for Stage-1 of the disease.', 'Batman & Robin', 'Movie', 0),
(7, 'Mad Zombie Disease', 'The disease which caused people, upon receiving a bite from one of the infected, to become zombies. The disease is a mutation of Mad Cow Disease, which became Mad Human Disease, and then mutated to form Mad Zombie Disease.', 'No Known Cure', 'Zombieland', 'Movie', 0),
(8, 'Say the Opposite of What You Mean Disease', 'A disease which causes the speaker to say the opposite of the correct answer to a question posed by another party. This disease was thought up on the spot by Ace after he realizes that the people in the bar think poorly of Ray Finkle.', 'No known cure.', 'Ace Ventura: Pet Detective', '', 0),
(9, 'Barclay\'s Protomorphosis Syndrome', 'A viral infection that causes an infected person to \"de-evolve\". Caused by a synthetic T-cell which mistakenly activated introns in one\'s DNA. Named for Lt. Reginald Barclay who first contracted the disease when he was administered the synthetic T-cell due to a genetic condition which when left on its own was inactive. Said synthetic T-cell caused all dormant introns to activate rather than the defective T-cell.', 'No known cure.', 'Star Trek: The Next Generation', '', 0),
(10, 'Bone-itis', 'In the Future Stock episode, \"80\'s Guy\" suffers from bone-itis and cryogenically freezes himself in order to sustain his life until a cure is found. Upon waking up, however, he neglects to have it cured, and dies suddenly as his bones contort horrifically. Not to be confused with osteitis.', 'There is a cure...or is there?', 'Futurama', '', 0),
(11, 'Bonerplasia', 'In the October 4, 2008 episode, Bonerplasia is a fictional condition which is allegedly a kind of chronic priapism. A man (played by Jason Sudeikis) used it as a fake explanation for why he constantly got erections around a woman, Amber (played by Anne Hathaway), he was secretly attracted to though claiming to be gay. However, she honestly believed him, because she \"read the Bonerplasia article on Wikipedia\", only for the man to then reveal \"I actually wrote that article\".', 'A fake illness, you do not have this.', 'Saturday Night Live', '', 0),
(12, 'Dermatemeculitis', 'A skin disease that causes the hands and feet of the body to turn a sickly green color. This can usually only be cured by a series of painful injections. A rumored alternate cure is to soak the hands and feet in buckets of a substance called zypholic acid, which can be found in lizard urine. The hands and feet must be soaked for no less than 45 minutes. Megan tricks Drake into thinking he has this disease because he ate a cookie that was hers, and later states, \"You know, there\'s another cure: Next time, don\'t eat my big cookie.\"', 'Soaking hands and feet in lizard urine for at least 45 minutes.', 'Drake & Josh', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Link`
--

CREATE TABLE `Link` (
  `ill_ID` int(2) NOT NULL,
  `Symp_ID` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Link`
--

INSERT INTO `Link` (`ill_ID`, `Symp_ID`) VALUES
(1, 1),
(1, 3),
(2, 2),
(2, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(4, 11),
(4, 12),
(4, 13),
(5, 2),
(5, 9),
(5, 10),
(6, 16),
(6, 17),
(7, 18),
(8, 19),
(9, 20),
(10, 21),
(11, 22),
(12, 23);

-- --------------------------------------------------------

--
-- Table structure for table `stalker`
--

CREATE TABLE `stalker` (
  `sympt` varchar(30) COLLATE utf8_bin NOT NULL,
  `id` int(2) NOT NULL,
  `tm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `stalker`
--

INSERT INTO `stalker` (`sympt`, `id`, `tm`) VALUES
('1', 16, '2019-05-22 08:15:28'),
('2', 17, '2019-05-22 08:15:28'),
('3', 18, '2019-05-22 08:15:28'),
('1', 19, '2019-05-22 13:56:03'),
('2', 20, '2019-05-22 13:56:03'),
('3', 21, '2019-05-22 13:56:03'),
('3', 22, '2019-05-22 13:56:19'),
('4', 23, '2019-05-22 13:56:19'),
('2', 24, '2019-05-22 20:50:55'),
('3', 25, '2019-05-22 20:50:55'),
('2', 26, '2019-05-22 20:53:45'),
('3', 27, '2019-05-22 20:53:45'),
('2', 28, '2019-05-22 20:54:43'),
('3', 29, '2019-05-22 20:54:43'),
('2', 30, '2019-05-22 20:57:17'),
('3', 31, '2019-05-22 20:57:17'),
('2', 32, '2019-05-22 20:59:01'),
('3', 33, '2019-05-22 20:59:01'),
('1', 34, '2019-05-22 20:59:12'),
('3', 35, '2019-05-22 20:59:12'),
('1', 36, '2019-05-22 21:18:47'),
('2', 37, '2019-05-22 21:18:47'),
('3', 38, '2019-05-22 21:20:01'),
('4', 39, '2019-05-22 21:20:01'),
('2', 40, '2019-05-22 21:34:16'),
('3', 41, '2019-05-22 21:34:16'),
('1', 42, '2019-05-22 21:36:21'),
('2', 43, '2019-05-22 21:36:21'),
('2', 44, '2019-05-22 21:49:28'),
('3', 45, '2019-05-22 21:49:28'),
('2', 46, '2019-05-22 21:52:32'),
('3', 47, '2019-05-22 21:52:32'),
('1', 48, '2019-05-22 21:58:16'),
('2', 49, '2019-05-22 21:58:16'),
('2', 50, '2019-05-22 21:59:14'),
('3', 51, '2019-05-22 21:59:14'),
('2', 52, '2019-05-22 22:03:26'),
('3', 53, '2019-05-22 22:03:26'),
('2', 54, '2019-05-22 22:27:06'),
('3', 55, '2019-05-22 22:27:06'),
('1', 56, '2019-05-22 22:27:59'),
('2', 57, '2019-05-22 22:27:59'),
('2', 58, '2019-05-22 22:31:58'),
('3', 59, '2019-05-22 22:31:58'),
('4', 60, '2019-05-22 22:31:58'),
('1', 61, '2019-05-22 22:32:24'),
('2', 62, '2019-05-22 22:32:24'),
('2', 63, '2019-05-22 22:32:59'),
('3', 64, '2019-05-22 22:32:59'),
('2', 65, '2019-05-22 22:35:44'),
('3', 66, '2019-05-22 22:35:44'),
('1', 67, '2019-05-22 22:36:49'),
('2', 68, '2019-05-22 22:36:49'),
('2', 69, '2019-05-22 22:39:34'),
('3', 70, '2019-05-22 22:39:34'),
('1', 71, '2019-05-22 22:41:30'),
('2', 72, '2019-05-22 22:41:30'),
('1', 73, '2019-05-22 22:43:48'),
('2', 74, '2019-05-22 22:43:48'),
('2', 75, '2019-05-22 22:45:58'),
('3', 76, '2019-05-22 22:45:58'),
('2', 77, '2019-05-22 22:57:19'),
('3', 78, '2019-05-22 22:57:19'),
('1', 79, '2019-05-22 22:57:29'),
('2', 80, '2019-05-22 22:57:29'),
('2', 81, '2019-05-22 22:58:04'),
('3', 82, '2019-05-22 22:58:04'),
('2', 83, '2019-05-22 22:58:21'),
('3', 84, '2019-05-22 22:58:21'),
('2', 85, '2019-05-22 23:01:11'),
('3', 86, '2019-05-22 23:01:11'),
('2', 87, '2019-05-22 23:05:05'),
('3', 88, '2019-05-22 23:05:05'),
('1', 89, '2019-05-22 23:05:12'),
('2', 90, '2019-05-22 23:05:12'),
('1', 91, '2019-05-22 23:06:02'),
('2', 92, '2019-05-22 23:06:02'),
('2', 93, '2019-05-22 23:07:40'),
('3', 94, '2019-05-22 23:07:40'),
('1', 95, '2019-05-22 23:08:03'),
('2', 96, '2019-05-22 23:08:03'),
('2', 97, '2019-05-22 23:09:18'),
('2', 98, '2019-05-22 23:14:31'),
('2', 99, '2019-05-22 23:16:37'),
('3', 100, '2019-05-22 23:16:37'),
('2', 101, '2019-05-22 23:17:48'),
('3', 102, '2019-05-22 23:17:48'),
('2', 103, '2019-05-22 23:21:36'),
('3', 104, '2019-05-22 23:21:36'),
('1', 105, '2019-05-22 23:22:48'),
('2', 106, '2019-05-22 23:22:48'),
('1', 107, '2019-05-22 23:23:01'),
('2', 108, '2019-05-22 23:23:01'),
('1', 109, '2019-05-22 23:23:25'),
('2', 110, '2019-05-22 23:23:25'),
('1', 111, '2019-05-22 23:24:28'),
('2', 112, '2019-05-22 23:24:28'),
('1', 113, '2019-05-22 23:27:27'),
('2', 114, '2019-05-22 23:27:27'),
('1', 115, '2019-05-22 23:27:57'),
('2', 116, '2019-05-22 23:27:57'),
('2', 117, '2019-05-22 23:28:14'),
('3', 118, '2019-05-22 23:28:14'),
('2', 119, '2019-05-22 23:29:24'),
('3', 120, '2019-05-22 23:29:24'),
('1', 121, '2019-05-22 23:33:15'),
('2', 122, '2019-05-22 23:33:15'),
('1', 123, '2019-05-22 23:34:15'),
('2', 124, '2019-05-22 23:34:15'),
('1', 125, '2019-05-22 23:34:54'),
('2', 126, '2019-05-22 23:34:54'),
('1', 127, '2019-05-22 23:35:08'),
('2', 128, '2019-05-22 23:35:08'),
('1', 129, '2019-05-22 23:36:59'),
('2', 130, '2019-05-22 23:36:59'),
('1', 131, '2019-05-22 23:37:05'),
('2', 132, '2019-05-22 23:37:05'),
('1', 133, '2019-05-22 23:39:41'),
('2', 134, '2019-05-22 23:39:41'),
('1', 135, '2019-05-22 23:40:05'),
('2', 136, '2019-05-22 23:40:05'),
('1', 137, '2019-05-22 23:49:05'),
('2', 138, '2019-05-22 23:49:05'),
('2', 139, '2019-05-22 23:50:28'),
('3', 140, '2019-05-22 23:50:28'),
('2', 141, '2019-05-22 23:51:18'),
('3', 142, '2019-05-22 23:51:18'),
('2', 143, '2019-05-22 23:51:53'),
('3', 144, '2019-05-22 23:51:53'),
('2', 145, '2019-05-22 23:52:23'),
('3', 146, '2019-05-22 23:52:23'),
('2', 147, '2019-05-22 23:53:13'),
('3', 148, '2019-05-22 23:53:13'),
('2', 149, '2019-05-23 01:20:59'),
('3', 150, '2019-05-23 01:20:59'),
('3', 151, '2019-05-23 01:21:11'),
('4', 152, '2019-05-23 01:21:11'),
('3', 153, '2019-05-23 01:22:33'),
('4', 154, '2019-05-23 01:22:33'),
('3', 155, '2019-05-23 01:35:28'),
('4', 156, '2019-05-23 01:35:28'),
('2', 157, '2019-05-23 01:35:37'),
('3', 158, '2019-05-23 01:35:37'),
('2', 159, '2019-05-23 01:36:10'),
('3', 160, '2019-05-23 01:36:10'),
('2', 161, '2019-05-23 01:36:48'),
('3', 162, '2019-05-23 01:36:48'),
('2', 163, '2019-05-23 01:38:23'),
('3', 164, '2019-05-23 01:38:23'),
('2', 165, '2019-05-23 01:39:09'),
('3', 166, '2019-05-23 01:39:09'),
('2', 167, '2019-05-23 01:39:47'),
('3', 168, '2019-05-23 01:39:47'),
('2', 169, '2019-05-23 01:40:44'),
('3', 170, '2019-05-23 01:40:44'),
('2', 171, '2019-05-23 01:41:20'),
('3', 172, '2019-05-23 01:41:20'),
('2', 173, '2019-05-23 01:42:02'),
('3', 174, '2019-05-23 01:42:02'),
('2', 175, '2019-05-23 01:42:52'),
('3', 176, '2019-05-23 01:42:52'),
('2', 177, '2019-05-23 01:45:52'),
('3', 178, '2019-05-23 01:45:52'),
('2', 179, '2019-05-23 01:48:01'),
('3', 180, '2019-05-23 01:48:01'),
('2', 181, '2019-05-23 01:48:21'),
('3', 182, '2019-05-23 01:48:21'),
('2', 183, '2019-05-23 01:49:43'),
('3', 184, '2019-05-23 01:49:43'),
('2', 185, '2019-05-23 01:52:18'),
('3', 186, '2019-05-23 01:52:18'),
('2', 187, '2019-05-23 01:53:06'),
('3', 188, '2019-05-23 01:53:06'),
('2', 189, '2019-05-23 01:53:34'),
('3', 190, '2019-05-23 01:53:34'),
('2', 191, '2019-05-23 01:54:05'),
('3', 192, '2019-05-23 01:54:05'),
('2', 193, '2019-05-23 01:54:54'),
('3', 194, '2019-05-23 01:54:54'),
('2', 195, '2019-05-23 02:00:20'),
('3', 196, '2019-05-23 02:00:20'),
('2', 197, '2019-05-23 02:01:23'),
('3', 198, '2019-05-23 02:01:23'),
('2', 199, '2019-05-23 02:02:12'),
('3', 200, '2019-05-23 02:02:12'),
('2', 201, '2019-05-23 02:03:43'),
('3', 202, '2019-05-23 02:03:43'),
('2', 203, '2019-05-23 02:08:57'),
('3', 204, '2019-05-23 02:08:57'),
('2', 205, '2019-05-23 02:09:27'),
('3', 206, '2019-05-23 02:09:27'),
('2', 207, '2019-05-23 02:10:12'),
('3', 208, '2019-05-23 02:10:12'),
('2', 209, '2019-05-23 02:10:39'),
('3', 210, '2019-05-23 02:10:39'),
('2', 211, '2019-05-23 02:11:54'),
('3', 212, '2019-05-23 02:11:54'),
('2', 213, '2019-05-23 02:12:06'),
('3', 214, '2019-05-23 02:12:06'),
('2', 215, '2019-05-23 02:13:53'),
('3', 216, '2019-05-23 02:13:53'),
('2', 217, '2019-05-23 02:14:14'),
('3', 218, '2019-05-23 02:14:14'),
('2', 219, '2019-05-23 02:14:26'),
('3', 220, '2019-05-23 02:14:26'),
('2', 221, '2019-05-23 02:15:39'),
('3', 222, '2019-05-23 02:15:39'),
('2', 223, '2019-05-23 02:17:58'),
('3', 224, '2019-05-23 02:17:58'),
('2', 225, '2019-05-23 02:18:08'),
('3', 226, '2019-05-23 02:18:08'),
('2', 227, '2019-05-23 02:18:38'),
('3', 228, '2019-05-23 02:18:38'),
('1', 229, '2019-05-23 02:19:17'),
('2', 230, '2019-05-23 02:19:17'),
('3', 231, '2019-05-23 02:19:17'),
('4', 232, '2019-05-23 02:19:17'),
('1', 233, '2019-05-23 02:20:22'),
('2', 234, '2019-05-23 02:20:22'),
('3', 235, '2019-05-23 02:20:22'),
('4', 236, '2019-05-23 02:20:22'),
('1', 237, '2019-05-23 02:25:49'),
('2', 238, '2019-05-23 02:25:49'),
('3', 239, '2019-05-23 02:25:49'),
('4', 240, '2019-05-23 02:25:49'),
('1', 241, '2019-05-23 02:27:06'),
('2', 242, '2019-05-23 02:27:06'),
('3', 243, '2019-05-23 02:27:06'),
('4', 244, '2019-05-23 02:27:06'),
('1', 245, '2019-05-23 02:29:20'),
('2', 246, '2019-05-23 02:29:20'),
('3', 247, '2019-05-23 02:29:20'),
('4', 248, '2019-05-23 02:29:20'),
('1', 249, '2019-05-23 02:32:28'),
('2', 250, '2019-05-23 02:32:28'),
('3', 251, '2019-05-23 02:32:28'),
('4', 252, '2019-05-23 02:32:28'),
('1', 253, '2019-05-23 02:32:53'),
('2', 254, '2019-05-23 02:32:53'),
('3', 255, '2019-05-23 02:32:53'),
('4', 256, '2019-05-23 02:32:53'),
('1', 257, '2019-05-23 02:33:20'),
('2', 258, '2019-05-23 02:33:20'),
('3', 259, '2019-05-23 02:33:20'),
('4', 260, '2019-05-23 02:33:20'),
('1', 261, '2019-05-23 02:34:10'),
('2', 262, '2019-05-23 02:34:10'),
('3', 263, '2019-05-23 02:34:10'),
('4', 264, '2019-05-23 02:34:10'),
('1', 265, '2019-05-23 02:34:55'),
('2', 266, '2019-05-23 02:34:55'),
('3', 267, '2019-05-23 02:34:55'),
('4', 268, '2019-05-23 02:34:55'),
('1', 269, '2019-05-23 02:35:40'),
('2', 270, '2019-05-23 02:35:40'),
('3', 271, '2019-05-23 02:35:40'),
('4', 272, '2019-05-23 02:35:40'),
('1', 273, '2019-05-23 02:36:16'),
('2', 274, '2019-05-23 02:36:16'),
('3', 275, '2019-05-23 02:36:16'),
('4', 276, '2019-05-23 02:36:16'),
('1', 277, '2019-05-23 02:36:52'),
('2', 278, '2019-05-23 02:36:52'),
('3', 279, '2019-05-23 02:36:52'),
('4', 280, '2019-05-23 02:36:52'),
('1', 281, '2019-05-23 02:37:03'),
('2', 282, '2019-05-23 02:37:03'),
('3', 283, '2019-05-23 02:37:03'),
('4', 284, '2019-05-23 02:37:03'),
('1', 285, '2019-05-23 02:37:53'),
('2', 286, '2019-05-23 02:37:53'),
('3', 287, '2019-05-23 02:37:53'),
('4', 288, '2019-05-23 02:37:53'),
('1', 289, '2019-05-23 02:38:07'),
('2', 290, '2019-05-23 02:38:07'),
('3', 291, '2019-05-23 02:38:07'),
('4', 292, '2019-05-23 02:38:07'),
('1', 293, '2019-05-23 02:38:39'),
('2', 294, '2019-05-23 02:38:39'),
('3', 295, '2019-05-23 02:38:39'),
('4', 296, '2019-05-23 02:38:39'),
('1', 297, '2019-05-23 02:38:51'),
('2', 298, '2019-05-23 02:38:51'),
('3', 299, '2019-05-23 02:38:51'),
('4', 300, '2019-05-23 02:38:51'),
('1', 301, '2019-05-23 02:43:19'),
('2', 302, '2019-05-23 02:43:19'),
('3', 303, '2019-05-23 02:43:19'),
('4', 304, '2019-05-23 02:43:19'),
('1', 305, '2019-05-23 02:43:56'),
('2', 306, '2019-05-23 02:43:56'),
('3', 307, '2019-05-23 02:43:56'),
('4', 308, '2019-05-23 02:43:56'),
('1', 309, '2019-05-23 02:44:04'),
('2', 310, '2019-05-23 02:44:04'),
('3', 311, '2019-05-23 02:44:04'),
('4', 312, '2019-05-23 02:44:04'),
('1', 313, '2019-05-23 02:45:08'),
('2', 314, '2019-05-23 02:45:08'),
('3', 315, '2019-05-23 02:45:08'),
('4', 316, '2019-05-23 02:45:08'),
('1', 317, '2019-05-23 02:45:51'),
('2', 318, '2019-05-23 02:45:51'),
('3', 319, '2019-05-23 02:45:51'),
('1', 320, '2019-05-23 02:48:20'),
('2', 321, '2019-05-23 02:48:20'),
('3', 322, '2019-05-23 02:48:20'),
('1', 323, '2019-05-23 02:49:15'),
('2', 324, '2019-05-23 02:49:15'),
('3', 325, '2019-05-23 02:49:15'),
('1', 326, '2019-05-23 02:50:02'),
('2', 327, '2019-05-23 02:50:02'),
('3', 328, '2019-05-23 02:50:02'),
('1', 329, '2019-05-23 02:52:48'),
('2', 330, '2019-05-23 02:52:48'),
('3', 331, '2019-05-23 02:52:48'),
('1', 332, '2019-05-23 02:53:49'),
('2', 333, '2019-05-23 02:53:49'),
('3', 334, '2019-05-23 02:53:49'),
('1', 335, '2019-05-23 02:54:17'),
('2', 336, '2019-05-23 02:54:17'),
('3', 337, '2019-05-23 02:54:17'),
('1', 338, '2019-05-23 02:55:09'),
('2', 339, '2019-05-23 02:55:09'),
('3', 340, '2019-05-23 02:55:09'),
('18', 341, '2019-05-23 03:20:42'),
('18', 342, '2019-05-23 03:23:42'),
('18', 343, '2019-05-23 03:23:56'),
('18', 344, '2019-05-23 03:27:25'),
('1', 345, '2019-05-23 04:10:23'),
('11', 346, '2019-05-23 04:10:51'),
('1', 347, '2019-05-23 04:11:33'),
('2', 348, '2019-05-23 04:11:33'),
('3', 349, '2019-05-23 04:11:33'),
('1', 350, '2019-05-23 04:11:55'),
('5', 351, '2019-05-23 04:11:55'),
('10', 352, '2019-05-23 04:11:55'),
('16', 353, '2019-05-23 04:11:55'),
('5', 354, '2019-05-23 04:17:19'),
('11', 355, '2019-05-23 04:17:19'),
('16', 356, '2019-05-23 04:17:19'),
('17', 357, '2019-05-23 04:17:19'),
('5', 358, '2019-05-23 04:17:36'),
('11', 359, '2019-05-23 04:17:36'),
('16', 360, '2019-05-23 04:17:36'),
('17', 361, '2019-05-23 04:17:36');

-- --------------------------------------------------------

--
-- Table structure for table `Symp`
--

CREATE TABLE `Symp` (
  `Symp_ID` int(2) NOT NULL,
  `Name` varchar(90) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Symp`
--

INSERT INTO `Symp` (`Symp_ID`, `Name`) VALUES
(1, 'Sparks when sneezing'),
(2, 'Death'),
(3, 'Skin Pockmarked'),
(4, 'Bleeding from pores'),
(5, 'Sudden Onset Fever'),
(6, 'Hallucinations'),
(7, 'Lesions'),
(8, 'Cold Sweats'),
(9, 'Weakness'),
(10, 'Pain When Falling In Love'),
(11, 'Obsessive Compulsive Behavior'),
(12, 'Paranoia '),
(13, 'Multiple Personalities '),
(16, 'Fluid Build Up In Lungs'),
(17, 'Oxygen Deprivation'),
(18, 'Zombified'),
(19, 'Saying the opposite of what you mean'),
(20, 'De-Evolving'),
(21, 'Bones contorting'),
(22, 'Constant erections around women'),
(23, 'Hands and feet a sickly green color');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Access`
--
ALTER TABLE `Access`
  ADD PRIMARY KEY (`access_ID`);

--
-- Indexes for table `Illness`
--
ALTER TABLE `Illness`
  ADD PRIMARY KEY (`ill_ID`);

--
-- Indexes for table `Link`
--
ALTER TABLE `Link`
  ADD PRIMARY KEY (`ill_ID`,`Symp_ID`),
  ADD KEY `ill_ID` (`ill_ID`,`Symp_ID`),
  ADD KEY `Symp_ID` (`Symp_ID`);

--
-- Indexes for table `stalker`
--
ALTER TABLE `stalker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Symp`
--
ALTER TABLE `Symp`
  ADD PRIMARY KEY (`Symp_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Access`
--
ALTER TABLE `Access`
  MODIFY `access_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `Illness`
--
ALTER TABLE `Illness`
  MODIFY `ill_ID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `stalker`
--
ALTER TABLE `stalker`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=362;

--
-- AUTO_INCREMENT for table `Symp`
--
ALTER TABLE `Symp`
  MODIFY `Symp_ID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Link`
--
ALTER TABLE `Link`
  ADD CONSTRAINT `link_ibfk_1` FOREIGN KEY (`ill_ID`) REFERENCES `Illness` (`ill_ID`),
  ADD CONSTRAINT `link_ibfk_2` FOREIGN KEY (`Symp_ID`) REFERENCES `Symp` (`Symp_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
